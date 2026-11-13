; =============================================================================
; bios_serial.asm — Programy konfiguracyjne V.24 (SIO-B)
; =============================================================================
; Zakres: 0x18EF-0x19EE (menu V.24) + dane konfiguracyjne 0x1AFC-0x1C50
;
; Zawiera:
;   1. Menu konfiguracji V.24 — wybór parametrów przez użytkownika
;   2. "Program. V-24 LO" — konfiguracja nadajnika (Line Out)
;   3. "Program. V-24 PO" — konfiguracja odbiornika (Print Out)
;   4. Tablice danych z opcjami dla każdego parametru
;
; UWAGA: To są tylko programy KONFIGURACYJNE, nie serwer dyskowy.
; Serwer udostępniający napędy przez SIO-B musi być załadowany z dysku.
; Te programy jedynie ustawiają parametry łącza (prędkość, parzystość,
; bity stopu, DTR, RTS) i ewentualnie ustawiają flagę V24_READY (F267).
; =============================================================================

	org	018EFh

; =============================================================================
; V24_MENU — wspólny mechanizm menu konfiguracyjnego
; =============================================================================
; Wejście: B = indeks pola (0-based), IY = adres tablicy opcji
; Wyjście: DE = adres konfiguracji (F266 + offset)
;
; Działa jako sterownik menu: dla każdego pola konfiguracyjnego wywołuje
; procedurę wyświetlania opcji (0x2697) i czeka na wybór użytkownika.
; ESC (0x1B) przerywa i wraca do poprzedniego menu.
; =============================================================================

V24_MENU_ENTRY:
	ld a,b			; 18EF  indeks pola
	or a			; 18F0  B=0?
	jr z,.init		; 18F1  tak → inicjalizacja
.field_loop:
	call DSP_OPTION		; 18F3  291Ah — wyświetl opcję dla pola B
	djnz .field_loop	; 18F6  następne pole
.init:
	ld iy,V24_MENU_TABLE	; 18F8  192Ah — główna tablica menu
	ld de,V24_CFG_BASE	; 18FC  F266h — adres bazowy konfiguracji
	ld a,(de)		; 18FF  odczytaj aktualną wartość
	ld b,01Fh		; 1900  maska?
	call DSP_FIELD		; 1902  269Bh — wyświetl pole
	jr V24_DISPATCH		; 1905

; Adres 0x1907-0x1924: dane tekstowe pomiędzy kodem
; "Baza danych" — etykieta sekcji danych
	DEFB 'Baza danych', 000h
	DEFB 0C3h, 01Ah		; JP ... (kod rozkazowy?)

; =============================================================================
; V24_MENU_TABLE (0x192A) — tablica wskaźników do pól menu
; =============================================================================
; Struktura: każdy wpis to prawdopodobnie (typ, rozmiar, adres_danych)
V24_MENU_TABLE:
	DEFB 004h, 002h, 043h, 00Fh, 007h, 019h, 03Bh, 019h
	DEFB 00Fh, 005h, 003h, 007h, 001h, 003h, 013h, 027h
	DEFB 03Bh, 059h, 019h, 068h, 019h, 084h, 019h, 0CAh
	DEFB 01Ch, 02Ah, 020h, 04Eh, 020h, 044h, 022h, 04Dh
	DEFB 022h, 0C6h, 023h, 056h, 024h, 07Ah, 024h, 056h
	DEFB 026h, 06Ch, 0F2h, 06Eh, 0F2h, 070h, 0F2h
	DEFB 'Baza danych', 000h	; "Baza danych" (zakotwiczenie stringu)
	DEFB 0C3h, 01Ah

; =============================================================================
; V24_DISPATCH — skok do wybranej akcji
; =============================================================================
V24_DISPATCH:
	jp 0291Ah		; 1965  wspólny dispatcher akcji menu

; =============================================================================
; "Program. V-24 LO" — konfiguracja nadajnika (0x1979)
; =============================================================================
; Ustawia parametry transmisji dla SIO-B (Tx).
; F35F = 0 (flaga trybu), HL = F365 (bufor dla LO)
V24_PROG_LO:
	DEFB 'Program. V-24 LO', 000h	; 1968  nazwa programu

	ld hl,SIOB_FLAG		; 1979  F35Fh
	ld (hl),000h		; 197C  tryb = 0 (LO)
	ld de,00006h		; 197E
	add hl,de		; 1981  HL = F365 (bufor LO)
	jr V24_CFG_COMMON	; 1982

; String "Program. V-24 PO" (0x1984-0x1993):
	DEFB 'Program. V-24 PO', 000h

; =============================================================================
; "Program. V-24 PO" — konfiguracja odbiornika (0x1994)
; =============================================================================
; Ustawia parametry odbioru dla SIO-B (Rx).
; F360 = 0 (flaga trybu), HL = F360 (bufor dla PO)
V24_PROG_PO:
	ld hl,SIOB_FLAG		; 1995  F35Fh
	ld (hl),000h		; 1998  flaga = 0
	inc hl			; 199A  HL = F360 (bufor PO)

; =============================================================================
; V24_CFG_COMMON — wspólny kod konfiguracji (0x199B)
; =============================================================================
; Dla każdego parametru (B=1,2,3...):
;   - Ładuje IY = adres tablicy opcji dla danego parametru
;   - Wywołuje DSP_FIELD (0x2697) by wyświetlić i edytować pole
;   - ESC → powrót do V24_MENU_ENTRY
; =============================================================================
V24_CFG_COMMON:
	; --- Pole 1: Parzystość (IY = 1AFCh) ---
	ld iy,CFG_PARITY	; 199B  1AFCh
	ex de,hl		; 199F
	ld a,(de)		; 19A0
	ld b,0C3h		; 19A1
	call DSP_FIELD		; 19A3  2697h
	ld b,001h		; 19A6
	jp c,V24_MENU_ENTRY	; 19A8  ESC → powrót
	ld (de),a		; 19AB  zapisz wartość

	; --- Pole 2: Bity stopu (IY = 1B2Ch) ---
	ld iy,CFG_STOPBITS	; 19AC  1B2Ch
	inc de			; 19B0
	inc de			; 19B1
	ld a,(de)		; 19B2
	ld b,0A3h		; 19B3
	call DSP_FIELD		; 19B5  2697h
	ld b,002h		; 19B8
	jp c,V24_MENU_ENTRY	; 19BA  ESC → powrót
	ld (de),a		; 19BD

	; --- Pole 3: Dzielnik (IY = 1B4Ch) ---
	ld iy,CFG_DIVIDER	; 19BE  1B4Ch
	dec de			; 19C2
	ld a,(de)		; 19C3  odczytaj aktualną wartość
	and 003h		; 19C4  tylko 2 młodsze bity
	jr nz,.div_ok		; 19C6
	set 1,a			; 19C8  wartość domyślna = 2
.div_ok:
	dec a			; 19CA  indeks od 0
	ld b,003h		; 19CB
	call DSP_FIELD		; 19CD  2697h
	ld b,003h		; 19D0
	jp c,V24_MENU_ENTRY	; 19D2  ESC → powrót
	inc a			; 19D5
	cp 002h			; 19D6
	jr nz,.div_store	; 19D8
	res 1,a			; 19DA
.div_store:
	ld c,a			; 19DC
	ld a,(de)		; 19DD
	and 0FCh		; 19DE  wyczyść bity 1-0
	or c			; 19E0  ustaw nową wartość
	ld (de),a		; 19E1

	; --- Pole 4: DTR/RTS (IY = 1B7Ah) ---
	ld iy,CFG_DTR		; 19E2  1B7Ah
	ld a,(de)		; 19E6
	rrca			; 19E7
	rrca			; 19E8  przesuń bity DTR/RTS
	and 003h		; 19E9
	dec a			; 19EB  indeks od 0
	ld b,003h		; 19EC
	call DSP_FIELD		; 19EE  2697h
	ld b,004h		; 19F1
	jp c,V24_MENU_ENTRY	; 19F3  ESC -> powrot
	inc a			; 19F6

	; --- Pole 5: Odbiornik odblokowany (IY = 1BA9h) ---
	rlca			; 19F7
	rlca			; 19F8
	ld c,a			; 19F9
	ld a,(de)		; 19FA
	and 0F3h		; 19FB
	or c			; 19FD
	ld (de),a		; 19FE
	ld iy,CFG_RX_UNLOCK	; 19FF  1BA9h
	ld a,(de)		; 1A03
	ld b,0C3h		; 1A04
	call DSP_FIELD		; 1A06  2697h
	ld b,005h		; 1A09
	jp c,V24_MENU_ENTRY	; 1A0B  ESC -> powrot
	ld (de),a		; 1A0E

	; --- Pole 6: Nadajnik odblokowany (IY = 1BEBh) ---
	ld iy,CFG_TX_UNLOCK	; 1A0F  1BEBh
	dec de			; 1A13
	ld a,(de)		; 1A14
	ld b,001h		; 1A15
	call DSP_FIELD		; 1A17  2697h
	ld b,006h		; 1A1A
	jp c,V24_MENU_ENTRY	; 1A1C  ESC -> powrot
	ld (de),a		; 1A1F

	; --- Pole 7: Automatyczne odblokowanie (IY = 1C1Fh) ---
	ld iy,CFG_AUTO_UNLOCK	; 1A20  1C1Fh
	inc de			; 1A24
	inc de			; 1A25
	ld a,(de)		; 1A26
	ld b,061h		; 1A27
	call DSP_FIELD		; 1A29  2697h
	ld b,007h		; 1A2C
	jp c,V24_MENU_ENTRY	; 1A2E  ESC -> powrot
	ld (de),a		; 1A31

	; --- Pole 8: -DTR poziom (IY = 1C4Ch) ---
	ld iy,CFG_DTR_LEVEL	; 1A32  1C4Ch
	dec de			; 1A36
	dec de			; 1A37
	ld a,(de)		; 1A38
	ld b,0A1h		; 1A39
	call DSP_FIELD		; 1A3B  2697h
	ld b,008h		; 1A3E
	jp c,V24_MENU_ENTRY	; 1A40  ESC -> powrot
	ld (de),a		; 1A43

	; --- Pole 9: -RTS poziom (IY = 1C64h) ---
	ld iy,CFG_RTS_LEVEL	; 1A44  1C64h
	inc de			; 1A48
	inc de			; 1A49
	ld a,(de)		; 1A4A
	ld b,0E1h		; 1A4B
	call DSP_FIELD		; 1A4D  2697h
	ld b,009h		; 1A50
	jp c,V24_MENU_ENTRY	; 1A52  ESC -> powrot
	ld (de),a		; 1A55

	; --- Pole 10: Szybkosc transmisji (IY = 1C8Dh) ---
	; Handler numeryczny (0x1748) - uzytkownik wpisuje wartosc countera
	ld iy,CFG_SPEED		; 1A56  1C8Dh
	ld a,(de)		; 1A5A
	ld b,021h		; 1A5B
	call DSP_FIELD		; 1A5D  2697h
	ld b,00Ah		; 1A60
	jp c,V24_MENU_ENTRY	; 1A62  ESC -> powrot
	ld (de),a		; 1A65

; =============================================================================
; Tablice konfiguracyjne V.24 (0x1AFC-0x1C50)
; =============================================================================
; Każda tablica opisuje jedno pole menu:
;   +0: wskaźnik do listy opcji (stringi)
;   +2: wskaźnik do etykiety pola
;   +4: wartość minimalna
;   +5: wartość maksymalna
;   +7: wartość bieżąca
;   +8+: lista stringów zakończona 0xFF

	org	01AFCh

; --- Parzystość ---
CFG_PARITY:
	DEFW CFG_PARITY_OPTS	; 1AFCh  lista opcji
	DEFW MSG_PARITY		; 1AFEh  "Parzystość"
	DEFB 000h, 000h		; 1B00  min=0
	DEFB 0FFh, 002h		; 1B02  max=255, ?
	DEFB 00Fh, 025h, 011h	; 1B04  ?
	DEFW MSG_PARITY_NONE	; 1B07  "bez"
	DEFW MSG_PARITY_PE	; 1B09  "PE"

MSG_PARITY:	DEFB 'Parzysto', 0F3h, 0E3h, 000h	; "Parzystość"
MSG_PARITY_NONE: DEFB 'bez', 000h
MSG_PARITY_PE:	DEFB 'PE', 000h

	org	01B2Ch

; --- Bity stopu ---
CFG_STOPBITS:
	DEFW CFG_STOP_OPTS	; 1B2Ch
	DEFW MSG_STOPBITS	; 1B2Eh  "Bity stop"
	DEFB 000h, 000h		; 1B30  min=0
	DEFB 0FFh, 002h		; 1B32  max=255
	DEFB 011h, 025h, 013h	; 1B34
	DEFW MSG_STOP_1		; 1B37  "1.0"
	DEFW MSG_STOP_1_5	; 1B39  "1.5"
	DEFW MSG_STOP_2		; 1B3B  "2.0"

MSG_STOPBITS:	DEFB 'Bity stop', 000h
MSG_STOP_1:	DEFB '1.0', 000h
MSG_STOP_1_5:	DEFB '1.5', 000h
MSG_STOP_2:	DEFB '2.0', 000h

	org	01B4Ch

; --- Dzielnik ---
CFG_DIVIDER:
	DEFW CFG_DIV_OPTS	; 1B4Ch
	DEFW MSG_DIVIDER	; 1B4Eh  "Dzielnik"
	DEFB 000h, 000h		; 1B50
	DEFB 0FFh, 002h		; 1B52
	DEFB 013h, 025h, 015h	; 1B54
	DEFW MSG_DIV_1		; 1B57  ":1"
	DEFW MSG_DIV_16		; 1B59  ":16"
	DEFW MSG_DIV_32		; 1B5B  ":32"
	DEFW MSG_DIV_64		; 1B5D  ":64"

MSG_DIVIDER:	DEFB 'Dzielnik', 000h
MSG_DIV_1:	DEFB ':1', 000h
MSG_DIV_16:	DEFB ':16', 000h
MSG_DIV_32:	DEFB ':32', 000h
MSG_DIV_64:	DEFB ':64', 000h

	org	01B7Ah

; --- DTR ---
CFG_DTR:
	DEFW CFG_DTR_OPTS	; 1B7Ah
	DEFW MSG_DTR		; 1B7Ch  "-DTR"
	DEFB 000h, 000h
	DEFB 0FFh, 025h, 00Bh, 04Dh, 00Dh

; =============================================================================
; Pozostałe stringi konfiguracyjne (różne adresy)
; =============================================================================

	org	01BA9h
; --- Odbiornik odblokowany (NIE/TAK) ---
CFG_RX_UNLOCK:
	DEFW CFG_YESNO_OPTS	; 1BA9h
	DEFW MSG_RX_UNLOCKED	; 1BABh  "Odbiornik odblokowany"
	DEFB 000h,000h,0FFh,025h,00Bh,04Dh,00Dh	; header

	org	01BEBh
; --- Nadajnik odblokowany (NIE/TAK) ---
CFG_TX_UNLOCK:
	DEFW CFG_YESNO_OPTS	; 1BEBh
	DEFW MSG_TX_UNLOCKED	; 1BEDh  "Nadajnik odblokowany"
	DEFB 000h,000h,0FFh,025h,00Dh,04Dh,00Fh	; header

	org	01C1Fh
; --- Automatyczne odblokowanie ---
CFG_AUTO_UNLOCK:
	DEFW CFG_YESNO_OPTS	; 1C1Fh
	DEFW MSG_AUTO_UNLOCK	; 1C21h  "%Automatyczne odblokowanie"

	org	01C4Ch
; --- -DTR poziom (wysoki/niski) ---
CFG_DTR_LEVEL:
	DEFW CFG_HILO_OPTS	; 1C4Ch  "wysoki\0niski\0"
	DEFW MSG_DTR_LABEL	; 1C4Eh  "%-DTR"

	org	01C64h
; --- -RTS poziom (wysoki/niski) ---
CFG_RTS_LEVEL:
	DEFW CFG_HILO_OPTS	; 1C64h
	DEFW MSG_RTS_LABEL	; 1C66h  "-RTS"

	org	01C8Dh
; --- Szybkosc transmisji (pole numeryczne) ---
CFG_SPEED:
	DEFW 01C85h		; 1C8Dh  opcje (wspoldzielone z DTR)
	DEFW MSG_SPEED_LABEL	; 1C8Fh  "Szybkosc transmisji"
	; handler numeryczny pod 0x1748 (uzytkownik wpisuje counter)

; Stringi
MSG_DTR:	DEFB ' %-DTR', 000h
MSG_DTR_HIGH:	DEFB 'wysoki', 000h
MSG_DTR_LOW:	DEFB 'niski', 000h
MSG_RTS:	DEFB '-RTS', 000h
MSG_DTR_LABEL:	DEFB ' %-DTR', 000h
MSG_RTS_LABEL:	DEFB '-RTS', 000h
MSG_SPEED_LABEL: DEFB ' Szybko', 0BDh, 0C6h, ' transmisji        bod', 000h
MSG_RX_UNLOCKED: DEFB 'Odbiornik odblokowany', 000h
MSG_TX_UNLOCKED: DEFB 'Nadajnik odblokowany', 000h
MSG_TX_LOCKED:	DEFB 'Nadajnik zablokowany ', 000h
MSG_AUTO_UNLOCK: DEFB ' %Automatyczne odblokowanie', 000h

CFG_YESNO_OPTS:	DEFB 'NIE', 000h, 'TAK', 000h
CFG_HILO_OPTS:	DEFB 'wysoki', 000h, 'niski', 000h

; =============================================================================
; Adresy
; =============================================================================

SIOB_FLAG	equ 0F35Fh	; flaga trybu SIO-B (0=LO, !=0=PO?)
V24_CFG_BASE	equ 0F266h	; adres bazowy konfiguracji V.24
V24_READY	equ 0F267h	; flaga gotowości łącza

; Procedury zewnętrzne
DSP_FIELD	equ 02697h	; wyświetlenie pola menu
DSP_OPTION	equ 0291Ah	; wyświetlenie opcji / dispatcher akcji

	END
