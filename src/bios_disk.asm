; =============================================================================
; bios_disk.asm — Obsługa napędów i przekierowanie D/E/F przez SIO-B
; =============================================================================
; Zawiera:
;   1. Dyskretny dyspozytor napędów (0x0476-0x0562)
;   2. Protokół komunikacji między komputerami przez SIO-B (0x0563-0x0670)
;   3. Prymitywy SIO-B: wysyłanie i odbiór znaku (0x1260, 0x12E0)
;
; Mapowanie napędów:
;   0 = A: — stacja fizyczna (WD1770)
;   1 = B: — stacja fizyczna (WD1770)
;   2 = C: — RAM-dysk (lokalny)
;   3 = D: — zdalny przez SIO-B (drugi komputer)
;   4 = E: — zdalny przez SIO-B
;   5 = F: — zdalny przez SIO-B
;
; Sprzęt:
;   SIO kanał A (0x80/0x82) = terminal operatora
;   SIO kanał B (0x81/0x83) = łącze do drugiego komputera (V.24/RS-232)
; =============================================================================

; =============================================================================
; SEKCJA 1: Dyspozytor napędów (0x0476-0x0562)
; =============================================================================
; Wejście: C = numer napędu (0-5), pozostałe rejestry zależne od operacji
; Wyjście: zależne od operacji (dane sektora, status)

	org	00476h

DISK_DISPATCH:
	; --- Klasyfikacja napędu ---
	ld a,c			; 0476  numer napędu
	cp 006h			; 0477  >= 6?
	jp nc,.invalid		; 0479  tak → nieprawidłowy napęd
	cp 003h			; 047C  < 3?
	jp c,.local_disk	; 047E  tak → A/B/C — obsługa lokalna

	; --- Napędy D/E/F (3-5): przekierowanie na drugi komputer ---
	; UWAGA: V24_READY (F267) nie jest ustawiane nigdzie w ROM!
	; Musi być ustawione przez zewnętrzny program konfiguracyjny (z dysku),
	; który konfiguruje SIO-B i testuje łącze. Bez tego D/E/F = fallback lokalny.
	; Sprawdź czy łącze V.24 jest skonfigurowane
	ld a,(V24_READY)	; 0481  F267 — flaga dostępności (0=brak, !=0=gotowe)
	or a			; 0484
	jp z,.local_disk	; 0485  brak → fallback lokalny

	; Sprawdź czy łącze nie jest zajęte
	ld a,(V24_STATUS)	; 0488  F268 — status łącza
	and 0C0h		; 048B  bity 7-6: zajętość
	jp nz,.err_busy		; 048D  łącze zajęte → błąd

	; --- Pytanie do operatora ---
	; "Odwołanie do dysku w D E F - docelowy (D) rezygnuj (R) ?"
	ld hl,MSG_DISK_REDIR	; 0490  0587h
	call RST1_OUT		; 0493  wyświetl prompt, czekaj na odpowiedź
	or a			; 0496
	jp nz,.err_busy		; 0497  (R)ezygnuj → przerwij

	; --- Oznacz łącze jako zajęte ---
	ld a,(V24_STATUS)	; 049A
	or 0C0h			; 049D  ustaw bity 7-6
	ld (V24_STATUS),a	; 049F

	; --- Przygotuj bufor komendy w F35F ---
	push bc			; 04A2
	ld hl,CMD_BUF		; 04A3  F35Fh
	ld (hl),000h		; 04A6  wyczyść pierwszy bajt
	ld de,00004h		; 04A8
	add hl,de		; 04AB  HL = F363
	ld (hl),00Dh		; 04AC  kod rozkazu = 0x0D (?)
	inc hl			; 04AE
	ld (hl),000h		; 04AF  null terminator

	; Wyślij komendę przez SIO-B
	call SIOB_SEND_CMD	; 04B1  1349h — wyślij zawartość bufora

	; --- Oczekiwanie na odpowiedź ---
	xor a			; 04B4
	ld (V24_READY),a	; 04B5  tymczasowo wyczyść flagę
	ld hl,01000h		; 04B8  timeout = 4096 iteracji
	ld (TIMEOUT_CNT),hl	; 04BB  FA19h
	ld c,05Dh		; 04BE
	call WAIT_RESP		; 04C0  0637h

	; --- Pętla odbioru odpowiedzi ---
.resp_loop:
	call RECV_BYTE		; 04C3  060Ch — odbierz bajt z timeoutem
	jp c,.no_comm		; 04C6  timeout → brak komunikacji
	cp 088h			; 04C9  znacznik początku bloku?
	jr nz,.resp_loop	; 04CB  nie — czekaj dalej

	; Odbierz blok danych konfiguracyjnych
	in a,(SIOB_CMD)		; 04CD  083h — status SIO-B
	ld hl,DPB_DRIVE0	; 04CF  F2ABh
	call SIOB_READ_BLOCK	; 04D2  05EDh

	; Odbierz dane sektora (60 bajtów?)
	ld hl,BUF_FA00		; 04D5  F9A0h
	ld b,03Ch		; 04D8  60 bajtów
.data_loop:
	call SIOB_RECV_BYTE	; 04DA  0607h
	ld (hl),a		; 04DD  zapisz w buforze
	inc hl			; 04DE
	djnz .data_loop		; 04DF

	; Aktualizuj maskę urządzeń
	ld hl,DEV_MASK		; 04E1  F370h
	call SIOB_READ_BLOCK	; 04E4
	call SIOB_RECV_BYTE	; 04E7
	add a,a			; 04EA  ×2
	add a,a			; 04EB  ×4
	add a,a			; 04EC  ×8
	or (hl)			; 04ED  sumuj z maską
	ld (hl),a		; 04EE  zapisz nową maskę

	ld a,(V24_READY)	; 04EF
	or a			; 04F2
	jp nz,.no_comm		; 04F3  błąd w trakcie odbioru

	; Wyślij potwierdzenie
	ld c,060h		; 04F6
	call WAIT_RESP		; 04F8
	ld c,000h		; 04FB
	call WAIT_RESP		; 04FD

	; Wyczyść bufor komendy
	ld hl,CMD_BUF		; 0500  F35Fh
	ld (hl),000h		; 0503
	ld de,00004h		; 0505
	add hl,de		; 0508
	ld (hl),006h		; 0509
	inc hl			; 050B
	ld (hl),000h		; 050C
	pop bc			; 050E

	; --- Powrót do normalnej obsługi dysku ---
.local_disk:
	; Sprawdź czy napęd jest dostępny w masce urządzeń
	ld l,c			; 050F
	inc l			; 0510
	ld a,(DEV_MASK)		; 0511  F370h
.bit_shift:
	rrca			; 0514  przesuń maskę
	dec l			; 0515
	jr nz,.bit_shift	; 0516
	ld hl,00000h		; 0518
	jr nc,.done		; 051B  napęd nieaktywny

	; Oblicz adres DPH dla napędu
	ld a,c			; 051D
	ld (CUR_DISK_NUM),a	; 051E  F34Dh
	rlca			; 0521
	rlca			; 0522
	rlca			; 0523
	rlca			; 0524  ×16 (rozmiar DPH)
	ld l,a			; 0525
	ld h,000h		; 0526
	ld de,DPH_TABLE		; 0528  F27Bh
	cp 030h			; 052B  >= 48 (czyli >= 3 × 16)?
	jr c,.use_dph_table	; 052D
	ld de,DPH_ALT		; 052F  F4A0h — alternatywna tablica DPH
.use_dph_table:
	add hl,de		; 0532  HL = adres DPH dla napędu
	push hl			; 0533
	ld de,0000Ah		; 0534  offset do DPB w DPH
	add hl,de		; 0537
	ld a,(hl)		; 0538  młodszy bajt DPB
	inc hl			; 0539
	ld h,(hl)		; 053A  starszy bajt
	ld l,a			; 053B  HL = adres DPB
	ld (CUR_DPB),hl		; 053C  F353h — zapisz dla późniejszego użycia
	pop hl			; 053F
.done:
	ld (DPH_ALT),hl		; 0540  F4A0h
	ret			; 0543

	; --- Obsługa błędów komunikacji ---
.no_comm:
	pop bc			; 0544
	ld hl,MSG_NO_COMM	; 0545  05C4h "Brak komunikacji z drugim komputerem"
	call RST1_OUT		; 0548  wyświetl komunikat

.err_busy:
	; Wyczyść status łącza
	ld a,(V24_STATUS)	; 054B
	and 03Fh		; 054E  wyczyść bity 7-6
	ld (V24_STATUS),a	; 0550
	ld a,(DEV_MASK)		; 0553
	and 0C7h		; 0556  wyczyść bity 5-3
	ld (DEV_MASK),a		; 0558
	ld a,01Ah		; 055B  kod błędu
	ld (V24_READY),a	; 055D  ustaw błąd w fladze
	jp .local_disk		; 0560  spróbuj lokalnie

	; --- Nieprawidłowy numer napędu (>= 6) ---
.invalid:
	ld c,0F0h		; 0563
	call WAIT_RESP		; 0565
	ld hl,CMD_BUF		; 0568
	ld (hl),000h		; 056B
	ld de,00004h		; 056D
	add hl,de		; 0570
	ld (hl),00Dh		; 0571
	ld a,003h		; 0573
	call DELAY		; 0575
	ld hl,0FF00h		; 0578  długi timeout
	ld (TIMEOUT_CNT),hl	; 057B
	ld c,000h		; 057E
	call WAIT_RESP		; 0580
	ld c,007h		; 0583
	jr .err_busy		; 0585

; =============================================================================
; Komunikaty — osadzone po kodzie (0x0587-0x05C3, 0x05C4-0x05EC)
; =============================================================================

MSG_DISK_REDIR:
	DEFB ' Odwo', 008h, 'anie do dysk', 007h, 'u w D E F - do'
	DEFB 006h, 'cz (D)  rezygnuj (R)  ? '
	DEFB 080h			; terminator (0x80)

MSG_NO_COMM:
	DEFB '  Brak komunikacji z drugim komputerem'
	DEFB 080h

; =============================================================================
; SEKCJA 2: Procedury pomocnicze SIO-B (0x05ED-0x0670)
; =============================================================================

; --- SIOB_READ_BLOCK: odczytaj blok bajtów przez SIO-B ---
; Wywołuje WAIT_RESP z kolejnymi kodami: V, L, X, H, Z
SIOB_READ_BLOCK:
	ld c,056h		; 05ED  'V'
	call WAIT_RESP		; 05EF
	ld c,l			; 05F2  młodszy bajt HL
	call WAIT_RESP		; 05F3
	ld c,058h		; 05F6  'X'
	call WAIT_RESP		; 05F8
	ld c,h			; 05FB  starszy bajt HL
	jr WAIT_RESP		; 05FC

	push bc			; 05FE
	ld c,05Ah		; 05FF  'Z'
	call WAIT_RESP		; 0601
	pop bc			; 0604
	jr WAIT_RESP		; 0605

; --- SIOB_RECV_BYTE: odbierz pojedynczy bajt z SIO-B ---
SIOB_RECV_BYTE:
	ld c,05Bh		; 0607  '['
	call WAIT_RESP		; 0609

; --- RECV_BYTE: odbierz bajt z timeoutem ---
; Out: A = bajt, CY=1 jeśli timeout
RECV_BYTE:
	ld a,(V24_READY)	; 060C
	or a			; 060F
	scf			; 0610
	ret nz			; 0611  błąd → powrót z CY
	push hl			; 0612
	ld hl,(TIMEOUT_CNT)	; 0613  FA19h
.timeout_loop:
	call SIOB_POLL		; 0616  1349h — sprawdź status SIO-B
	jr nz,.byte_ready	; 0619  znak gotowy
	dec hl			; 061B
	ld a,h			; 061C
	or l			; 061D
	jr nz,.timeout_loop	; 061E  jeszcze nie timeout
	; Timeout!
	ld a,01Ah		; 0620
	ld (V24_READY),a	; 0622  ustaw kod błędu
	scf			; 0625
	pop hl			; 0626
	ret			; 0627
.byte_ready:
	ld hl,01000h		; 0628  zresetuj timeout
	ld (TIMEOUT_CNT),hl	; 062B
	pop hl			; 062E
	call SIOB_RECV		; 062F  12E0h — odbierz znak z SIO-B
	or a			; 0632
	ret			; 0633
	ld c,a			; 0634  zapamiętaj odebrany bajt
	add a,b			; 0635  dodaj do sumy kontrolnej
	ld b,a			; 0636  aktualizuj checksum

; --- WAIT_RESP: wyślij komendę i czekaj na odpowiedź ---
; Wejście: C = kod komendy
WAIT_RESP:
	ld a,(V24_READY)	; 0637
	or a			; 063A
	ret nz			; 063B  błąd → nic nie rób
	jp SIOB_SEND		; 063C  1247h — wyślij C przez SIO-B

; --- CHECKSUM: neguj sumę kontrolną ---
CHECKSUM_NEG:
	ld a,b			; 063F
	cpl			; 0640  negacja bitowa
	inc a			; 0641  +1 (uzupełnienie do 2)
	ld c,a			; 0642
	call SIOB_RECV_BYTE	; 0643  0609h — wyślij checksum
	jr nc,.verify_ok	; 0646
	xor a			; 0648
.verify_ok:
	or a			; 0649
	ret			; 064A

; --- BLOCK_READ: odczytaj pełny blok 128 bajtów z SIO-B ---
; Wywołuje CHECKSUM_NEG, potem czyta 128 bajtów + sumę kontrolną
	call 006AAh		; 064B  (pomocnicza inicjalizacja)
.block_wait:
	ld c,0F2h		; 064E
	ld b,c			; 0650
	call WAIT_RESP		; 0651
	call CHECKSUM_NEG	; 0654
	jr nz,.block_wait	; 0657  powtarzaj aż OK
	ld hl,0FF00h		; 0659  timeout = 65280
	ld (TIMEOUT_CNT),hl	; 065C
	ld hl,(CUR_DMA)		; 065F  F351h — adres DMA
	ld c,080h		; 0662  128 bajtów (sektor CP/M)
	ld b,000h		; 0664  checksum = 0
.read_loop:
	call RECV_BYTE		; 0666  odbierz bajt
	ld (hl),a		; 0669  zapisz w buforze DMA
	inc hl			; 066A
	add a,b			; 066B  dodaj do checksum
	ld b,a			; 066C
	dec c			; 066D
	jr nz,.read_loop	; 066E  powtórz 128 razy
	call RECV_BYTE		; 0670  odbierz checksum
	; (dalsza weryfikacja...)

; =============================================================================
; SEKCJA 3: Prymitywy SIO-B (0x1260-0x1283, 0x12E0-0x12FC)
; =============================================================================

	org	01260h

; --- SIOB_SEND_BYTE: wyślij bajt przez SIO-B ---
; Wejście: C = bajt do wysłania
; Czeka aż Tx buffer empty (bit 0 statusu SIO-B = 1)
SIOB_SEND_BYTE:
	ld a,(SIOB_FLAG)	; 1262  F35Fh — flaga inicjalizacji
	bit 0,a			; 1265
	jr nz,.tx_ready		; 1267  już zainicjalizowany
	ld a,001h		; 1269
	ld (SIOB_FLAG),a	; 126B  oznacz jako zainicjalizowany
	push hl			; 126E
	ld hl,SIOB_BANNER	; 126F  F360h
	call RST3_DISPLAY	; 1272  1487h — wyświetl info
	pop hl			; 1275
.tx_ready:
	ld a,001h		; 1276  selektuj rejestr statusu SIO-B
	out (SIOB_CMD),a	; 1278  083h
	in a,(SIOB_CMD)		; 127A  odczytaj status
	and 001h		; 127C  Tx buffer empty?
	jr z,.tx_ready		; 127E  nie — czekaj
	ld a,c			; 1280  bajt do wysłania
	out (SIOB_DATA),a	; 1281  081h — wyślij!
	ret			; 1283

; =============================================================================

	org	012E0h

; --- SIOB_RECV: odbierz bajt z SIO-B ---
; Out: A = odebrany bajt
; Czeka aż Rx character available (bit 0 statusu SIO-B = 1)
SIOB_RECV:
	ld a,(SIOB_FLAG)	; 12E0  F35Fh
	bit 0,a			; 12E3
	jr nz,.rx_ready		; 12E5  już zainicjalizowany
	ld a,001h		; 12E7
	ld (SIOB_FLAG),a	; 12E9
	push hl			; 12EC
	ld hl,SIOB_BANNER	; 12ED  F360h
	call RST3_DISPLAY	; 12F0  1487h
	pop hl			; 12F3
.rx_ready:
	in a,(SIOB_CMD)		; 12F4  083h — status SIO-B
	and 001h		; 12F6  Rx character available?
	jr z,.rx_ready		; 12F8  nie — czekaj
	in a,(SIOB_DATA)	; 12FA  081h — odbierz!
	ret			; 12FC

; --- SIOB_POLL: sprawdź czy znak gotowy (bez blokowania) ---
SIOB_POLL:
	in a,(SIOB_CMD)		; 1349  083h
	and 001h		; 134B  bit 0 = Rx ready
	ret z			; 134D  brak znaku
	ld a,0FFh		; 134E  znak gotowy
	ret			; 1350

; =============================================================================
; Adresy i stałe
; =============================================================================

; Porty SIO
SIOB_DATA	equ 081h	; SIO kanał B — dane
SIOB_CMD	equ 083h	; SIO kanał B — rozkazy/status

; Zmienne systemowe (RAM)
V24_READY	equ 0F267h	; flaga dostępności V.24 (0=brak, !=0=skonfigurowane)
V24_STATUS	equ 0F268h	; status łącza (bity 7-6: zajętość)
DEV_MASK	equ 0F370h	; maska dostępnych napędów (1 bit na napęd)
CMD_BUF		equ 0F35Fh	; bufor komendy dla SIO-B
TIMEOUT_CNT	equ 0FA19h	; licznik timeoutu
CUR_DISK_NUM	equ 0F34Dh	; numer aktualnego napędu
CUR_DPB		equ 0F353h	; wskaźnik do DPB aktualnego napędu
CUR_DMA		equ 0F351h	; adres DMA
SIOB_FLAG	equ 0F35Fh	; flaga inicjalizacji SIO-B
SIOB_BANNER	equ 0F360h	; banner/info SIO-B

; Tablice
DPH_TABLE	equ 0F27Bh	; tablica DPH (3 wpisy po 16 bajtów)
DPH_ALT		equ 0F4A0h	; alternatywna tablica DPH
DPB_DRIVE0	equ 0F2ABh	; DPB dla napędu 0
BUF_FA00	equ 0F9A0h	; bufor roboczy

; Procedury zewnętrzne
RST1_OUT	equ 013B3h	; wyjście stringu z promptem
RST3_DISPLAY	equ 01487h	; wyświetlenie stringu
DELAY		equ 02C67h	; opóźnienie
SIOB_SEND	equ 01247h	; wyślij bajt przez SIO-B
SIOB_SEND_CMD	equ 01349h	; wyślij bufor komendy

	END
