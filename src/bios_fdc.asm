; =============================================================================
; bios_fdc.asm — BIOS stacji dyskietek (WD1770) i H-ERROR handler
; =============================================================================
; Zakres: 0x0670-0x0E80
;
; Zawiera:
;   1. FDC Write Sector — wysyłka sektora przez WD1770 (0x067C-0x06A9)
;   2. FDC Command Setup — przygotowanie rozkazu (0x06AA-0x06D3)
;   3. Disk Dispatch — odczyt/zapis lokalny vs D/E/F (0x06E2-0x0729)
;   4. WD1770 Operacje — step, seek, read, write, force interrupt (0x0D00-0x0D86)
;   5. H-ERROR Handler — timeout FDC, pytanie M/I (0x0DF7-0x0E2E)
;   6. FDC Init — RESTORE głowicy (0x0E07-0x0E17)
;
; Porty WD1770:
;   0x88 = rozkazy/status
;   0x89 = ścieżka (track)
;   0x8A = sektor
;   0x8B = dane
;
; Porty sterowania napędem:
;   0xF2 = silnik / step?
;   0xF3 = kierunek / control?
;   0xF4 = timeout error signal
;   0xF5 = timeout error signal 2
;   0xF8 = device select?
;   0xFE = device control?
; =============================================================================

	org	00670h

; =============================================================================
; RECV_CHECK — sprawdzenie odbioru bloku (0x0670)
; =============================================================================
; Czeka na zakończenie transmisji, weryfikuje sumę kontrolną.
RECV_CHECK:
	call RECV_BYTE		; 0670  060Ch — odbierz bajt z timeoutem
	jr c,.error		; 0673  timeout → błąd
	add a,b			; 0675  dodaj do checksum
	or a			; 0676
	jr nz,RECV_CHECK	; 0677  jeszcze nie koniec
	ret			; 0679
.error:
	xor a			; 067A  wyczyść
	ret			; 067B

; =============================================================================
; FDC_WRITE_SECTOR — zapis sektora przez WD1770 (0x067C)
; =============================================================================
; Wysyła 128 bajtów z bufora DMA przez WD1770 (lub SIO-B dla D/E/F).
; Wejście: C = kod operacji (0xF3 = write)
FDC_WRITE_SECTOR:
	ld a,c			; 067C
	ld (CMD_CODE),a		; 067D  FA18h — zapamiętaj kod
	call FDC_CMD_SETUP	; 0680  06AAh — wyślij rozkaz

.write_retry:
	ld c,0F3h		; 0683  kod write
	ld b,c			; 0685  checksum init
	call WAIT_RESP		; 0686  0637h — wyślij, czekaj na ACK
	ld a,(CMD_CODE)		; 0689
	call SEND_CHECKSUM	; 068C  0634h — wyślij sumę kontrolną

	; Wyślij 128 bajtów danych
	ld hl,(DMA_ADDR)	; 068F  F351h — adres bufora DMA
	ld e,080h		; 0692  128 bajtów (sektor CP/M)
.write_loop:
	call FN_F458		; 0694  odczytaj bajt z bufora
	call SEND_CHECKSUM	; 0697  wyślij z sumowaniem
	inc hl			; 069A  następny bajt
	dec e			; 069B
	jr nz,.write_loop	; 069C  powtórz 128 razy

	; Ustaw timeout i czekaj na potwierdzenie
	ld hl,0FF00h		; 069E  timeout = 65280 (~65 sekund)
	ld (TIMEOUT_CNT),hl	; 06A1  FA19h
	call CHECKSUM_NEG	; 06A4  063Fh — wyślij negację sumy
	jr nz,.write_retry	; 06A7  błąd → ponów
	ret			; 06A9  sukces

; =============================================================================
; FDC_CMD_SETUP — przygotowanie i wysłanie rozkazu FDC (0x06AA)
; =============================================================================
; Wysyła sekwencję inicjalizacyjną przed operacją dyskową:
;   kod F1 → status → track → sector → drive
FDC_CMD_SETUP:
	ld c,0F1h		; 06AA  kod rozkazu
	ld b,c			; 06AC
	call WAIT_RESP		; 06AD  0637h

	; Wyślij parametry
	ld a,(FDC_STATUS)	; 06B0  F438h — status operacji
	call SEND_CHECKSUM	; 06B3  0634h
	xor a			; 06B6
	ld (FDC_STATUS),a	; 06B7  wyczyść status

	ld a,(CUR_TRACK)	; 06BA  F34Eh — aktualna ścieżka
	call SEND_CHECKSUM	; 06BD

	ld a,(CUR_SECTOR)	; 06C0  F350h — aktualny sektor
	call SEND_CHECKSUM	; 06C3

	ld a,(CUR_DRIVE)	; 06C6  F34Dh — numer napędu
	sub 003h		; 06C9  dla D/E/F: odejmij 3
	call SEND_CHECKSUM	; 06CB

	call CHECKSUM_NEG	; 06CE  063Fh — wyślij negację sumy
	jr nz,FDC_CMD_SETUP	; 06D1  błąd → ponów całość
	ret			; 06D3

; =============================================================================
; FDC_ERROR — ustawienie kodu błędu (0x06D4)
; =============================================================================
FDC_ERROR:
	ld a,0FFh		; 06D4
	ld (FDC_STATUS),a	; 06D6  F438h = FF (błąd)
	ld a,(F356)		; 06D9
	or a			; 06DC
	ret nz			; 06DD  już był błąd
	ld (F355),a		; 06DE  wyczyść flagę
	ret			; 06E1

; =============================================================================
; DISK_DISPATCH_2 — drugi poziom dyspozytora dysku (0x06E2)
; =============================================================================
; Podejmuje decyzję: lokalny odczyt/zapis vs przekierowanie D/E/F.
DISK_DISPATCH_2:
	ld a,(CUR_DRIVE)	; 06E2  F34Dh
	or a			; 06E5
	jp z,DRIVE_A_HANDLER	; 06E6  napęd A: → specjalna obsługa
	cp 003h			; 06E9  D/E/F?
	jp nc,FDC_WRITE_SECTOR	; 06EB  tak → przekierowanie przez SIO

	; --- Napędy lokalne (B:, C:) ---
	xor a			; 06EE
	ld (F35D),a		; 06EF
	ld hl,(CUR_DPB)		; 06F2  F353h — Disk Parameter Block
	ld de,00013h		; 06F5  offset do flag w DPB
	add hl,de		; 06F8
	bit 3,(hl)		; 06F9  sprawdź flagę
	ld a,c			; 06FB
	jr z,.rw_ok		; 06FC
	cp 002h			; 06FE  operacja write?
	jr nz,.rw_ok		; 0700
	xor a			; 0702  write na R/O → blokada
.rw_ok:
	ld (F35E),a		; 0703  zapisz typ operacji
	cp 002h			; 0706  write?
	jr nz,.do_operation	; 0708

	; --- Operacja write: przygotowanie ---
	ld hl,(CUR_DPB)		; 070A
	inc hl			; 070D
	inc hl			; 070E
	ld b,(hl)		; 070F  block shift
	ld a,001h		; 0710
.bsh_loop:
	rlca			; 0712  oblicz maskę bloku
	djnz .bsh_loop		; 0713
	ld (F357),a		; 0715
	ld a,(CUR_DRIVE)	; 0718
	ld (F358),a		; 071B
	ld a,(CUR_TRACK)	; 071E
	ld (F359),a		; 0721
	ld a,(CUR_SECTOR)	; 0724
	ld (F35A),a		; 0727

.do_operation:
	; (dalsze przetwarzanie sektora...)
	ret

; =============================================================================
; WD1770: STEP — krok głowicy (0x0D00)
; =============================================================================
; Wykonuje krok głowicy WD1770 do zadanej ścieżki.
; Port 0xF7/0xF6 = kierunek? Port 0x8A = sektor.
WD1770_STEP:
	; (przygotowanie parametrów)
	out (08Ah),a		; 0D13  WD1770 — rejestr sektora
	ld de,WD1770_CALLBACK	; 0D15  0D6Fh — adres powrotu
	ld (F342),de		; 0D18  zapisz callback
	ld a,(F33D)		; 0D1C  konfiguracja
	and 003h		; 0D1F  step rate
	or 010h			; 0D21  WD1770 STEP command (0x10)
	out (088h),a		; 0D23  wyślij rozkaz do FDC
	ld (F340),a		; 0D25  zapamiętaj

	; Pętla kroku silnika (porty 0xF2/0xF3)
	ld bc,0FA02h		; 0D28  B=250 prób, C=02?
.step_loop:
	out (0F2h),a		; 0D2B  krok silnika
	ld a,010h		; 0D2D
	call DELAY		; 0D2F  ~16ms
	out (0F3h),a		; 0D32  impuls kierunku
	djnz .step_loop		; 0D34

	; --- Sprawdzenie błędu ---
.error_check:
	ld hl,MSG_STEP_ERR	; 0D36  0D87h — komunikat błędu kroku
	out (0F2h),a		; 0D39
	ld (F340),a		; 0D3B
	call RST1_OUT		; 0D3E  wyświetl, czekaj na odpowiedź
	out (0F3h),a		; 0D41

.retry_loop:
	ld b,0FAh		; 0D43  250 prób
.wait_key:
	out (0F2h),a		; 0D45
	call CON_CHECK		; 0D47  2CE7h — czy klawisz?
	jr z,.no_key		; 0D4A
	call CON_IN		; 0D4C  2CF4h — odczytaj znak
	cp 052h			; 0D4F  'R' = rezygnuj?
	jr z,.abort		; 0D51
.no_key:
	ld a,004h		; 0D53
	call DELAY		; 0D55  ~4ms
	out (0F3h),a		; 0D58
	djnz .wait_key		; 0D5A
	ld hl,01482h		; 0D5C  komunikat timeout
	out (0F2h),a		; 0D5F
	call STR_OUT		; 0D61  2CCFh
	out (0F3h),a		; 0D64
	jr .error_check		; 0D66

.abort:
	ld a,0D0h		; 0D68  WD1770 FORCE INTERRUPT
	out (088h),a		; 0D6A  przerwij operację FDC
	jp 00AE1h		; 0D6C  wyjście z błędem

; =============================================================================
; WD1770_CALLBACK — obsługa po zakończeniu komendy FDC (0x0D6F)
; =============================================================================
WD1770_CALLBACK:
	out (0F2h),a		; 0D6F
	inc sp			; 0D71  usuń adres powrotu
	inc sp
	ld a,(F33E)		; 0D73  numer ścieżki
	out (089h),a		; 0D76  WD1770 — rejestr ścieżki
	ld a,(F340)		; 0D78  zapamiętany rozkaz
	or a			; 0D7B
	push hl			; 0D7C
	ld hl,0147Dh		; 0D7D  komunikat?
	call z,STR_OUT		; 0D80  wyświetl jeśli błąd
	pop hl			; 0D83
	in a,(088h)		; 0D84  odczytaj status WD1770
	ret			; 0D86

; =============================================================================
; H-ERROR Handler (0x0DF7-0x0E2E)
; =============================================================================
; Wywoływany po ~10 sekundach timeoutu FDC.
; Wyświetla "H-ERROR - mikrosystem (M) ignoruj (I) ?"
H_ERROR_TIMEOUT:
	out (0F4h),a		; 0DF7  sygnał timeout na 0xF4
	ld a,005h
	call DELAY		; 0DFB  ~5ms
	out (0F5h),a		; 0DFE  sygnał timeout na 0xF5
	ret			; 0E00

	; --- Device ready ---
H_ERROR_READY:
	ld hl,FB7E		; 0E01
	set 1,(hl)		; 0E04  oznacz gotowość w flagach
	ret			; 0E06

; =============================================================================
; FDC_INIT — inicjalizacja WD1770, RESTORE głowicy (0x0E07)
; =============================================================================
; Wywoływane z HW_INIT_1 (0x0DB7) podczas bootu.
; Wysyła rozkaz RESTORE do WD1770 i czeka ~10 sekund na wykonanie.
; Jeśli timeout: H-ERROR.
FDC_INIT:
	ld a,(F33D)		; 0E07
	and 003h		; 0E0A  step rate
	or 008h			; 0E0C  WD1770 RESTORE command (0x08)
	out (088h),a		; 0E0E  wyślij do FDC

	ld de,H_ERROR_MSG	; 0E10  0E5Dh — callback po timeout
	ld (F342),de		; 0E13

	ld b,0C8h		; 0E17  200 iteracji
.spin_loop:
	out (0F2h),a		; 0E19  impuls silnika
	ld a,032h		; 0E1B
	call DELAY		; 0E1D  ~50ms
	out (0F3h),a		; 0E20
	djnz .spin_loop		; 0E22  ~10 sekund łącznie

	; --- Timeout ~10s: zgłoś H-ERROR ---
	out (0F2h),a		; 0E24
	ld hl,MSG_H_ERROR	; 0E26  "H-ERROR - mikrosystem (M) ignoruj (I) ?"
	call RST1_OUT		; 0E29  wyświetl, czekaj na wybór
	or a			; 0E2C  (R)ezygnuj?
	ret z			; 0E2D  tak → powrót z błędem
	jp H_ERROR_RETRY	; 0E2E  1564h — (M)ikrosystem → ponów

; Komunikat H-ERROR (0x0E31, string zakończony 0x80)
MSG_H_ERROR:
	DEFB 'H-ERROR - mikrosystem (M) ignoruj (I) ? ', 080h
MSG_IM:
	DEFB 'IM', 080h		; 0E5B

; Callback — wyświetla "IM" i kontynuuje
H_ERROR_MSG:
	DEFB 0D3h, 0F2h		; 0E5D  OUT (F2h), A
	DEFB 033h, 033h		; 0E5F  INC SP / INC SP
	DEFB 0DBh, 088h		; 0E61  IN A, (088h) — status WD1770
	DEFB 0E6h, 004h		; 0E63  AND 04h — sprawdź bit
	DEFB 0C9h		; 0E65  RET

; =============================================================================
; Adresy i stałe
; =============================================================================

; Porty WD1770
FDC_CMD		equ 088h	; rejestr rozkazów/statusu
FDC_TRACK	equ 089h	; rejestr ścieżki
FDC_SECTOR	equ 08Ah	; rejestr sektora
FDC_DATA	equ 08Bh	; rejestr danych

; Porty sterowania
PORT_F2		equ 0F2h	; silnik krokowy / step
PORT_F3		equ 0F3h	; kierunek / control
PORT_F4		equ 0F4h	; timeout signal
PORT_F5		equ 0F5h	; timeout signal 2
PORT_F8		equ 0F8h	; device select
PORT_FE		equ 0FEh	; device control

; Zmienne systemowe
FDC_STATUS	equ 0F438h	; status operacji FDC
CUR_DRIVE	equ 0F34Dh	; aktualny napęd (0=A, 1=B, 2=C, 3=D...)
CUR_TRACK	equ 0F34Eh	; aktualna ścieżka
CUR_SECTOR	equ 0F350h	; aktualny sektor
DMA_ADDR	equ 0F351h	; adres bufora DMA
CUR_DPB		equ 0F353h	; adres DPB
CMD_CODE	equ 0FA18h	; kod rozkazu
TIMEOUT_CNT	equ 0FA19h	; licznik timeoutu
F33D		equ 0F33Dh	; konfiguracja step rate
F33E		equ 0F33Eh	; numer ścieżki docelowej
F340		equ 0F340h	; zapamiętany rozkaz FDC
F342		equ 0F342h	; adres callbacku FDC
F355		equ 0F355h	; flaga błędu
F356		equ 0F356h	; flaga błędu 2
F357		equ 0F357h	; maska bloku write
F358		equ 0F358h	; backup napędu
F359		equ 0F359h	; backup ścieżki
F35A		equ 0F35Ah	; backup sektora
F35D		equ 0F35Dh	; flaga lokalna
F35E		equ 0F35Eh	; typ operacji (0=read, 2=write)
FB7E		equ 0FB7Eh	; flagi systemowe

; Procedury zewnętrzne
RECV_BYTE	equ 0060Ch	; odbiór bajtu z timeoutem
WAIT_RESP	equ 00637h	; wyślij komendę i czekaj
SEND_CHECKSUM	equ 00634h	; wyślij z sumą kontrolną
CHECKSUM_NEG	equ 0063Fh	; wyślij negację sumy
FN_F458		equ 0F458h	; odczyt z bufora (RAM)
DELAY		equ 02C67h	; opóźnienie
RST1_OUT	equ 013B3h	; wyjście z promptem
STR_OUT		equ 02CCFh	; wyjście stringu
CON_CHECK	equ 02CE7h	; sprawdzenie klawisza
CON_IN		equ 02CF4h	; odczyt znaku
H_ERROR_RETRY	equ 01564h	; ponowienie po H-ERROR
DRIVE_A_HANDLER	equ 0084Eh	; specjalna obsługa napędu A:

	END
