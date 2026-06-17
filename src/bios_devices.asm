; =============================================================================
; bios_devices.asm — Menu konfiguracji urządzeń (0x1BFC-0x266C)
; =============================================================================
; Zawiera menu i programy obsługi:
;   1. Kopia ekranu — zrzut bufora terminala do pliku (0x1CC8)
;   2. Test V-24 LO — test nadajnika SIO-B (0x203B)
;   3. Test V-24 PO — test odbiornika SIO-B (0x205F)
;   4. Interfejs drukarki — konfiguracja Centronics (0x22F4)
;   5. Znaki do drukarki — interaktywne wysyłanie znaków (0x23C6)
;   6. Program Drukarki — konfiguracja parametrów (0x2411-0x266C)
; =============================================================================

; =============================================================================
; KOPIA EKRANU (0x1CC8)
; =============================================================================
; Przechwytuje zawartość bufora terminala (0x8800+) i zapisuje do pliku.
; Opcje: zmiana granic obrazu, wybór pliku docelowego.
	org	01CC8h

SCREEN_COPY:
	DEFB 'Kopia ekranu', 000h	; 1CC8  nazwa w menu
	call DSP_OPTION		; 1CD7  291Ah — wyświetl opcje

.sc_menu:
	ld iy,SC_MENU_MAIN	; 1CDA  1FF6h — menu główne kopii
	call DSP_MODE		; 1CDE  298Dh — wyświetl
	ret c			; 1CE1  ESC → wyjście
	or a			; 1CE2
	jr z,.do_copy		; 1CE3  opcja 1: wykonaj kopię
	; Podmenu
	ld iy,SC_MENU_BOUNDS	; 1CE5  1D3Fh — "zmień granice obrazu"
	call DSP_MODE		; 1CE9
	jr .sc_menu		; 1CEC

	ld iy,SC_MENU_FILE	; 1CEE  1D15h — "podaj nazwę pliku"
	call DSP_MODE		; 1CF2
	jr .sc_menu		; 1CF5

	ld iy,SC_MENU_OBR	; 1CF7  1D58h — "OBR" (format?)
	call DSP_MODE		; 1CFB
	jr .sc_menu		; 1CFE

.do_copy:
	; Wykonaj kopię ekranu do pliku
	; "Kopiowanie ekranu zakończone" przy sukcesie
	DEFB 'Kopiowanie ekranu zako', 0EEh, 'czone ', 000h	; 1FAE
	DEFB 'Podaj nazw', 0E5h, ' pliku:', 000h		; 1FD0
	DEFB '        OBR', 000h				; 1FE5
	DEFB 'Mo', 0FBh, 'esz zmieni', 0E3h, ' granice obrazu', 000h ; 2003

; Struktury IY dla podmenu kopii ekranu
SC_MENU_MAIN:	equ 01FF6h
SC_MENU_BOUNDS:	equ 01D3Fh
SC_MENU_FILE:	equ 01D15h
SC_MENU_OBR:	equ 01D58h

; =============================================================================
; TEST V-24 LO (0x203B) — test nadajnika SIO-B
; =============================================================================
; Używa konfiguracji SIO-B z F365 (SIOB_CFG_2).
; Wysyła znaki testowe przez SIO-B.
	org	0203Bh

TEST_V24_LO:
	ld hl,SIOB_FLAG		; 203B  F35Fh
	ld (hl),002h		; 203E  tryb LO (nadajnik)
	push hl			; 2040
	ld hl,SIOB_CFG_2	; 2041  F365h — konfiguracja LO
	call SIOB_INIT		; 2044  1487h — załaduj do SIO-B
	pop hl			; 2047
	ld de,00006h		; 2048
	add hl,de		; 204B  HL = F36B
	jr V24_TEST_COMMON	; 204C

; =============================================================================
; TEST V-24 PO (0x205F) — test odbiornika SIO-B
; =============================================================================
; Używa konfiguracji SIO-B z F360 (SIOB_CFG_1).
; Odbiera znaki z SIO-B i wyświetla na terminalu.
	org	0205Fh

TEST_V24_PO:
	ld hl,SIOB_FLAG		; 205F  F35Fh
	ld (hl),001h		; 2062  tryb PO (odbiornik)
	push hl			; 2064
	ld hl,SIOB_CFG_1	; 2065  F360h — konfiguracja PO
	call SIOB_INIT		; 2068  1487h — załaduj do SIO-B
	pop hl			; 206B
	inc hl			; 206C  HL = F360

; =============================================================================
; V24_TEST_COMMON (0x206D) — wspólny kod testowy
; =============================================================================
V24_TEST_COMMON:
	ld iy,V24_TEST_MENU	; 206D  220Ch — menu testowe
	; Wyświetlanie znaków, obsługa ESC
	ld (08804h),hl		; 2071  zapisz wskaźnik konfiguracji

.test_loop:
	call DSP_MODE		; 2074  298Dh
	; --- SIO-B status check ---
	ld a,010h		; 2077  WR10 = reset
	out (083h),a		; 2079
	in a,(083h)		; 207B  status SIO-B
	bit 7,a			; 207D  break detected?
	jr nz,.break		; 207F
	in a,(083h)		; 2081
	and 001h		; 2083  Rx char ready?
	jr z,.no_char		; 2085
	ld hl,.rx_msg		; 2087  komunikat odebrania
	call DSP_STRING		; 208A  28E2h
	jr .no_char		; 208D

.rx_msg:
	DEFB 0DDh, 0D3h, 03Fh	; znacznik odebranego znaku
	DEFB 0D3h, 054h, 008h	;
	DEFB 000h
.no_char:
	call CON_CHECK		; 2096  2CE7h — klawisz?
	jr z,.test_loop		; 2099  nie — sprawdzaj dalej
	call CON_IN		; 209B  2CF4h — odczytaj znak
	cp 00Ah			; 209E  LF?
	jp z,.send_char		; 20A0
	cp 01Bh			; 20A3  ESC?
	ld b,001h		; 20A5
	jp z,V24_MENU_ENTRY	; 20A7  ESC → powrót do menu
	cp 00Dh			; 20AA  CR?
	jp z,.send_cr		; 20AC
	ld c,a			; 20AF  wyślij znak przez SIO-B
	call CHAR_OUT		; 20B0  2C4Eh
	jp c,.error		; 20B3
	; (dalsza obsługa testu)

V24_TEST_MENU	equ 0220Ch	; struktura menu testowego

; =============================================================================
; INTERFEJS DRUKARKI (0x22F4)
; =============================================================================
; Menu konfiguracji drukarki Centronics.
; Podmenu: "Interfejs drukarki", "Znaki do drukarki", "Program Drukarki"
	org	022F4h

PRINTER_MENU:
	DEFB 'Interfejs drukarki', 000h	; 22F4
	ld iy,PRN_MENU_MAIN	; 2303  2335h
	call PRN_DISPATCH	; 2306  14A9h
	ld b,0C3h		; 2309
	call DSP_FIELD		; 230B  2697h
	ld c,06Fh		; 230E
	call CHAR_OUT2		; 2310  2C2Fh
	ld b,03Fh		; 2313
	call DISP_HELPER	; 2315  14B2h
	ld b,002h		; 2318
	jp V24_MENU_ENTRY	; 231A  powrót

	DEFB 'Interfejs drukarki', 000h	; 231E (drugie wystąpienie)

PRN_MENU_MAIN	equ 02335h	; główna struktura menu drukarki
PRN_MENU_OPTS	equ 0231Eh	; opcje "Interfejs drukarki"
PRN_MENU_ALT	equ 02344h	; alternatywne opcje

	; Etykiety sprzętowe
	DEFB 'DZM-180', 000h		; 234C
	DEFB 'is. V-24', 000h		; 2354
	DEFB 'CENTRONICS', 000h		; 235C
	DEFB 'Interfejs PO', 000h	; 2368

; =============================================================================
; ZNAKI DO DRUKARKI (0x23C6)
; =============================================================================
; Interaktywny tryb: znaki wpisywane z klawiatury są wysyłane na drukarkę.
; Ctrl+Z = koniec, Ctrl+C = przerwij.
	org	023C6h

PRINTER_CHARS:
	DEFB 'Znaki do drukarki', 000h	; 23C6
	ld iy,PRN_CHARS_MENU	; 23D6  244Fh
	call DSP_MODE		; 23DA  298Dh
.chars_loop:
	call CON_CHECK_WAIT	; 23DD  2CECh — czekaj na znak
	cp 01Ah			; 23E0  Ctrl+Z?
	ld b,001h		; 23E2
	jp z,V24_MENU_ENTRY	; 23E4  tak → koniec
	ld c,a			; 23E7
	cp 020h			; 23E8  spacja lub więcej?
	jr c,.control		; 23EA  znak sterujący
	call CHAR_OUT		; 23EC  2CD9h — wyślij na terminal
	call SEND_TO_PRINTER	; 23EF  0FF0h — wyślij na drukarkę
	jr .chars_loop		; 23F2
.control:
	cp 00Dh			; 23F4  CR?
	jr z,.chars_loop	; 23F6
	cp 00Ah			; 23F8  LF?
	jr z,.chars_loop	; 23FA
	; (obsługa innych znaków sterujących)
	jr .chars_loop

PRN_CHARS_MENU	equ 0244Fh

; =============================================================================
; PISZ ZNAKI DO DRUKARKI (0x2411)
; =============================================================================
; Podobny tryb z dodatkowymi opcjami formatowania.
	org	02411h

PRINTER_WRITE:
	DEFB 'Pisz znaki do drukarki    znak (ctrl)Z - koniec polecenia', 000h

; =============================================================================
; Program Drukarki — opcje konfiguracji (0x247E-0x266C)
; =============================================================================
; "Czy drukarka drukuje    `@^~]}{[|\  jako   "
; "Czy zerować bit podczas drukowania"
; "Czy wysyłać znak TAB do drukarki"
; "Wyjście do systemu"

PRINTER_CFG_OPTS:
	DEFB 'Czy drukarka drukuje    ', 060h, '@^', 07Eh, ']}{[|\\  jako   ', 000h
	DEFB 'Czy zerowa', 0C6h, ' bit podczas drukowania', 000h
	DEFB 'Czy wysy', 0B8h, 'a znak TAB do drukarki', 000h
	DEFB 'Wyj', 0BDh, 'cie do systemu', 000h

; =============================================================================
; Adresy i procedury
; =============================================================================

SIOB_FLAG	equ 0F35Fh	; flaga trybu SIO-B (1=PO, 2=LO)
SIOB_CFG_1	equ 0F360h	; konfiguracja SIO-B — PO (WR3/WR4/WR5/ctr2)
SIOB_CFG_2	equ 0F365h	; konfiguracja SIO-B — LO
SIOB_CFG_3	equ 0F36Ah	; konfiguracja SIO-B — default

SIOB_INIT	equ 01487h	; inicjalizacja SIO-B z (HL)
V24_MENU_ENTRY	equ 018EFh	; dispatcher menu V.24
DSP_FIELD	equ 02697h	; wyświetlenie pola menu
DSP_OPTION	equ 0291Ah	; wyświetlenie opcji
DSP_MODE	equ 0298Dh	; wyświetlenie menu/modu
DSP_STRING	equ 028E2h	; wyświetlenie stringu
CHAR_OUT	equ 02CD9h	; wyjście znaku
CHAR_OUT2	equ 02C2Fh	; wyjście znaku v2
CON_CHECK	equ 02CE7h	; sprawdzenie klawisza
CON_CHECK_WAIT	equ 02CECh	; oczekiwanie na klawisz
CON_IN		equ 02CF4h	; odczyt znaku
DISP_HELPER	equ 014B2h	; pomocnicza procedura wyświetlania
PRN_DISPATCH	equ 014A9h	; dispatcher menu (IOBYTE?)
SEND_TO_PRINTER	equ 00FF0h	; wyślij bajt do drukarki

	END
