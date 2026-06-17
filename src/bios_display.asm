; =============================================================================
; bios_display.asm — Terminal UI Framework (0x266C-0x2921+)
; =============================================================================
; Punkt wejścia: 0x266C (przez wektor 0x001D w Page Zero)
;
; NIE jest to kontroler wyświetlacza sprzętowego — Bosman-8 używa terminala
; szeregowego. To FRAMEWORK DO RENDEROWANIA MENU na terminalu przez ESC sekwencje.
; Używany przez wszystkie programy konfiguracyjne (V.24, drukarka, dyski).
;
; Parametry:
;   C = bitmapa operacji:
;     bit 7: DSP_FIELD (set/reset atrybutu pola menu)
;     bit 6: DSP_FIELD_ALT
;     bit 5: operacja na ekranie (box/ramka)
;     bit 4: pozycjonowanie kursora
;     bit 3: wyjście znaku
;     bit 2: przewijanie
;     bit 1: tryb terminala
;     bit 0: czyszczenie ekranu
;   A, B = dodatkowe parametry
;   IY = wskaźnik do struktury pola menu:
;     +0,+1: początek zakresu (x1,y1)
;     +2,+3: koniec zakresu (x2,y2)
;     +4,+5: etykieta (wskaźnik do stringu)
;     +8:     maksymalna wartość
;
; Główne podprogramy (używane przez bios_serial.asm i inne):
;   DSP_FIELD  (0x2697) — renderowanie pola menu z opcjami
;   DSP_STRING (0x28E2) — wyjście stringu z terminal-safe znakami
;   DSP_BOX    (0x28EE) — rysowanie ramki/pola
;   DSP_OPTION (0x291A) — wybór opcji w menu
;   DSP_CURSOR (0x290C) — przesuwanie kursora
;   DSP_INIT   (0x2922) — inicjalizacja wyświetlania (używane przy boot)
; =============================================================================

	org	0266Ch

DSP_ATTR:
	; --- Demultipleksacja operacji na podstawie bitów C ---
	bit 7,c			; 266C  operacja set/reset?
	jp nz,.set_attr		; 266E  (→2697)
	bit 6,c			; 2671
	jp nz,.res_attr		; 2673  (→269B)
	bit 5,c			; 2676
	jp nz,.display_op	; 2678  (→28EE) — operacja na ekranie
	bit 4,c			; 267B
	jp nz,.cursor_op	; 267D  (→291A) — kursor
	bit 3,c			; 2680
	jp nz,.char_op		; 2682  (→2922) — znak
	bit 2,c			; 2685
	jp nz,.scroll_op	; 2687  (→290C) — przewijanie
	bit 1,c			; 268A
	jp nz,.mode_op		; 268C  (→298D) — tryb wyświetlania
	bit 0,c			; 268F
	jp nz,.clear_op		; 2691  (→2C07) — czyszczenie
	jp .default_op		; 2694  (→2BF4) — operacja domyślna

	; --- DSP_FIELD — renderowanie pola menu (bit 7/6 C) ---
.set_attr:
	set 7,c			; 2697  flaga: SET
	jr .field_common	; 2699
.res_attr:
	res 7,c			; 269B  flaga: RESET

.field_common:
	; Struktura IY: +0=x1, +1=y1, +2=x2, +3=y2, +4+5=label, +8=max
	push de			; 269D
	ld e,c			; 269E  E = maska bitowa operacji
	ld c,a			; 269F  C = wartość
	ld a,b			; 26A0  A = indeks pola / parametr
	; Obliczanie maski bitowej dla wartości pola
	; B zawiera pozycję bitu — przesuwamy maskę
.shift_loop:
	sub 020h		; 26A1  odejmij 32
	jr c,.shift_done	; 26A3
	rrc c			; 26A5
	jr .shift_loop		; 26A7
.shift_done:
	add a,020h		; 26A9  przywróć
	and c			; 26AB
	cp (iy+008h)		; 26AC  porównaj z maksimum
	jr c,.value_ok		; 26AF
	xor a			; 26B1  poza zakresem → 0
.value_ok:
	; Zapisz atrybut w buforze terminala (0x8802/0x8803)
	ld (08802h),a		; 26B2  atrybut znaku (inwersja dla zaznaczenia)
	ld (08803h),a		; 26B5  atrybut pomocniczy
	ld a,b			; 26B8
	and 01Fh		; 26B9  tylko 5 bitów
	cpl			; 26BB  negacja
	and c			; 26BC
	ld c,a			; 26BD  nowa maska
	push bc			; 26BE
	bit 7,e			; 26BF  SET czy RESET?
	jr z,.field_done	; 26C1  RESET → pomiń rysowanie

	; --- Rysowanie pola menu ---
	; Odczytaj współrzędne z IY
	ld l,(iy+000h)		; 26C3  x1
	ld h,(iy+001h)		; 26C6  y1
	ld e,(iy+002h)		; 26C9  x2
	ld d,(iy+003h)		; 26CC  y2
	call DSP_BOX		; 26CF  28EEh — narysuj ramkę pola
	ld c,03Fh		; 26D2  znak '?'
	call CHAR_OUT		; 26D4  2C2Fh — wyświetl znak zachęty

	; Wyświetl etykietę pola
	ld l,(iy+004h)		; 26D7  adres stringu (młodszy)
	ld h,(iy+005h)		; 26DA  adres stringu (starszy)
	call DSP_STRING		; 26DD  28E2h — wyświetl etykietę

	; Oblicz szerokość pola (x2 - x1 - 1)
	ld a,(iy+002h)		; 26E0  x2
	sub (iy+000h)		; 26E3  x2 - x1
	dec a			; 26E6  -1
	ld b,a			; 26E7  B = liczba opcji do wyświetlenia

	; Wyświetl listę opcji (wskaźnik w (HL))
.option_loop:
	ld c,(hl)		; 26E8  kod opcji
	inc hl			; 26E9
	ld a,c			; 26EA
	or a			; 26EB  koniec listy?
	jr z,.field_done	; 26EC
	push hl			; 26EE
	ld h,(hl)		; 26EF  adres stringu opcji
	ld l,000h		; 26F0
	ld a,h			; 26F2
	or a			; 26F3
	jr z,.option_next	; 26F4  pusta opcja
	push bc			; 26F6
	call DSP_OPTION_IMPL	; 26F7  2BF4h — wyświetl pojedynczą opcję
	; (dalszy kod renderowania opcji...)

.field_done:
	pop bc
	pop de
	ret

	; --- DSP_BOX: rysowanie ramki/pola na terminalu (0x28EE) ---
.display_op:
	ld c,028h		; 28EE  '(' — lewy górny róg
	call BOX_CHAR		; 28F0  290Eh
	ld c,01Ah		; 28F3  kod poziomej linii
	call CHAR_OUT		; 28F5  2CD9h
	push hl			; 28F8
	push de			; 28F9
	; Oblicz wymiary: D-H = wysokość, E-L = szerokość
	ld a,d			; 28FA
	sub h			; 28FB
	ld d,a			; 28FC  wysokość
	ld a,e			; 28FD
	sub l			; 28FE
	ld e,a			; 28FF  szerokość
	ld hl,00000h		; 2900
	call DSP_INIT		; 2903  2922h — inicjalizacja wyświetlania
	pop de			; 2906
	pop hl			; 2907
	inc h			; 2908
	inc l			; 2909
	dec d			; 290A
	dec e			; 290B

	; --- DSP_CURSOR: przesuwanie kursora (0x290C) ---
.scroll_op:
	ld c,04Ch		; 290C  'L' — kod pozycjonowania

BOX_CHAR:
	call CHAR_OUT2		; 290E  2C2Fh
	call CUR_SET		; 2911  2BF9h
	ex de,hl		; 2914
	call CUR_SET		; 2915  2BF9h
	ex de,hl		; 2918
	ret			; 2919

	; --- DSP_OPTION: wybór opcji w menu (0x291A) ---
.cursor_op:
	push af			; 291A
	ld c,029h		; 291B  ')' — znacznik opcji
	call CHAR_OUT2		; 291D  2C2Fh
	pop af			; 2920
	ret			; 2921

	; --- DSP_INIT: inicjalizacja wyświetlania (0x2922) ---
.char_op:
	call DSP_DEFAULT	; 2922  2BF4h — operacja domyślna
	ld c,013h		; 2925  kod inicjalizacji
	call CHAR_OUT		; 2927  2CD9h
	call DSP_MODE		; 292A  2981h — ustaw tryb terminala
	ld c,014h		; 292D
	call CHAR_OUT		; 292F  2CD9h
	; (dalsza inicjalizacja terminala...)
	ret

.mode_op:
	; DSP_MODE (0x298D) — wyświetlenie menu/trybu
	; Zapisuje HL i BC do bufora terminala (0x8806/0x8808)
	; Odczytuje współrzędne z IY-4..IY-1: x1,y1,x2,y2
	ld (08806h),hl		; 298D
	ld (08808h),bc		; 2990
	ld l,(iy-004h)		; 2994
	ld h,(iy-003h)		; 2997
	ld e,(iy-002h)		; 299A
	ld d,(iy-001h)		; 299D
	; ... wyświetla strukturę menu
	ret

	; --- CURSOR_SET (0x2BF4) — ustawienie kursora ---
.default_op:
	ld c,03Dh		; 2BF4  '=' — kod pozycjonowania
	call CHAR_OUT2		; 2BF6  ESC + '='
	ld a,h			; 2BF9  wiersz (Y)
	add a,020h		; 2BFA  +32 (konwersja na ASCII)
	ld c,a			; 2BFC
	call CHAR_OUT		; 2BFD  wyślij Y
	ld a,l			; 2C00  kolumna (X)
	add a,020h		; 2C01  +32
	ld c,a			; 2C03
	jp CHAR_OUT		; 2C04  wyślij X

	; --- CLEAR_SCREEN? (0x2C07) — czyszczenie ---
.clear_op:
	ld a,07Ah		; 2C07  'z'?
	add a,h			; 2C09
	ld c,a			; 2C0A
	call CHAR_OUT2		; 2C0B
	ld c,l			; 2C0E
	call CHAR_OUT		; 2C0F
	ld c,b			; 2C12
	jp CHAR_OUT		; 2C13

	; --- CHAR_OUT2 (0x2C2F) — wyjście znaku z prefiksem ESC ---
	push bc			; 2C2F
	ld c,01Bh		; 2C30  ESC
	call CHAR_OUT		; 2C32  2CD9h
	pop bc			; 2C35
	jp CHAR_OUT		; 2C36

	; --- BS_SPACE (0x2C39) — backspace+spacja ---
	call .bs		; 2C39  2C3Fh
	call .space		; 2C3C  2C44h
.bs:	ld c,008h		; 2C3F  BS
	jp CHAR_OUT		; 2C41
.space:	ld c,020h		; 2C44  spacja
	jp CHAR_OUT		; 2C46
	; BEL (0x2C49): LD C, 07h; JP CHAR_OUT

	; --- IS_DIGIT? (0x2C4E) — sprawdzenie czy cyfra ---
	sub 030h		; 2C4E
	ret c			; 2C50  < '0'
	add a,0E9h		; 2C51
	ret c			; 2C53
	add a,006h		; 2C54
	jp p,.is_hex		; 2C56
	add a,007h		; 2C59
	ret c			; 2C5B
.is_hex:
	add a,00Ah		; 2C5C
	or a			; 2C5E
	ret			; 2C5F

	; --- CHAR_OUT (0x2CD9) — wyjście znaku na SIO-A ---
	; (wysyła bajt przez port szeregowy)
	; --- DELAY (0x2C67) — opóźnienie ~A*1ms ---
	; (pętla czasowa)

	; --- CON_CHECK (0x2CE7) — sprawdzenie czy znak gotowy ---
	; IN A,(082h); AND 001h; RET  → sprawdza SIO-A Rx ready

	; --- CON_IN (0x2CEC) — odczyt znaku z SIO-A ---
	; Czeka na Rx ready, potem IN A,(080h)

	; --- CHAR_UPPER (0x2CF7) — konwersja a-z → A-Z ---
	; CP 061h; RET C; CP 07Bh; RET NC; AND 05Fh; RET

; =============================================================================
; BIOS Jump Table (0x2D00-0x2D0F) — alternatywne wejścia
; =============================================================================
	JP BIOS_WARM		; 2D00  F376h — warm boot
	JP BIOS_WARM		; 2D03  F376h
	JP BIOS_CONST		; 2D06  F3B3h — console status
	JP BIOS_CONIN		; 2D09  F3ABh — console input
	JP BIOS_CONOUT		; 2D0C  F3CEh — console output

BIOS_WARM	equ 0F376h
BIOS_CONST	equ 0F3B3h
BIOS_CONIN	equ 0F3ABh
BIOS_CONOUT	equ 0F3CEh

; =============================================================================
; Bufory terminala (memory-mapped, NIE porty I/O)
; =============================================================================
; Adresy 0x8800+ w przestrzeni adresowej pamięci (nie I/O):
; Przechowują stan terminala: pozycję kursora, atrybuty, zawartość ekranu.
;   0x8800-0x8801: sygnatura 0x55AA (ciepły/zimny start)
;   0x8802: rejestr atrybutu znaku
;   0x8803: rejestr kontrolny atrybutów
;   0x8810: kursor X?
;   0x8811: kursor Y?
;   0x8812: dodatkowe flagi
;   0x8814: aktywna strona?
;   0x881C-0x881D: bufor konsoli (we/wy)
;   0x881A: wskaźnik bufora
;   0x8864: rejestry konfiguracyjne (IX-4E = 0x8816)
;
; =============================================================================
; Porty I/O systemu
; =============================================================================
;   Z80-SIO:    0x80 (dane A), 0x81 (dane B), 0x82 (rozkazy A), 0x83 (rozkazy B)
;   8253 timer: 0x84 (licznik 0), 0x85 (licznik 1), 0x86 (licznik 2), 0x87 (kontrolny)
;   WD1770 FDC: 0x88 (rozkazy/status), 0x89 (ścieżka), 0x8A (sektor), 0x8B (dane)
;   0x98: konfiguracja sprzętowa (DIP-switch) + bufor wyjścia równoległego

	END
