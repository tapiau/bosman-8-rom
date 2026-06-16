; =============================================================================
; bios_display.asm — Obsługa wyświetlacza DZM-180 (ROZSZERZENIE CPM-R)
; =============================================================================
; Punkt wejścia: 0x266C (przez wektor 0x001D w Page Zero)
;
; Obsługuje atrybuty i sterowanie wyświetlaczem przez RAM video (0x8800+).
; UWAGA: 0x8800+ to memory-mapped video RAM, NIE porty I/O!
; Porty I/O 0x88-0x8B to WD1770 FDC (inne adresowanie).
; W standardowym CP/M nie ma odpowiednika — to funkcja specyficzna
; dla komputera DZM-180/Bosman-8.
;
; Parametry:
;   C = bitmapa operacji do wykonania:
;     bit 7: set/reset atrybutu
;     bit 6: dodatkowa flaga
;     bit 5: operacja na wyświetlaczu
;     bit 4: pozycjonowanie kursora
;     bit 3: odczyt/zapis znaku
;     bit 2: przewijanie
;     bit 1: tryb wyświetlania
;     bit 0: czyszczenie ekranu
;   A, B = dodatkowe parametry zależne od operacji
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

	; --- Operacje na atrybutach ---
.set_attr:
	set 7,c			; 2697
	jr .attr_common		; 2699
.res_attr:
	res 7,c			; 269B

.attr_common:
	; Ustawienie atrybutów wyświetlacza (kolor, odwrócenie, migotanie)
	push de			; 269D
	ld e,c			; 269E  zachowaj maskę
	ld c,a			; 269F
	ld a,b			; 26A0

	; Obliczanie maski bitowej dla atrybutów
	; B = numer atrybutu (0-31), C = wartość
.attr_shift:
	sub 020h		; 26A1
	jr c,.attr_done		; 26A3
	rrc c			; 26A5
	jr .attr_shift		; 26A7
.attr_done:
	add a,020h		; 26A9
	and c			; 26AB
	cp (iy+008h)		; 26AC  porównaj z konfiguracją
	jr c,.attr_ok		; 26AF
	xor a			; 26B1  wyczyść
.attr_ok:
	; Zapis do portów kontrolera wyświetlacza (0x8802, 0x8803)
	ld (08802h),a		; 26B2  port atrybutu
	ld (08803h),a		; 26B5  port kontrolny
	ld a,b			; 26B8
	and 01Fh		; 26B9
	cpl			; 26BB
	and c			; 26BC
	ld c,a			; 26BD
	push bc			; 26BE
	bit 7,e			; 26BF
	jr z,.attr_exit		; 26C1
	; Operacja z indeksem (IY)
	ld l,(iy+000h)		; 26C3
	ld h,(iy+001h)		; 26C6
	; (dalsza obróbka z IY+D)

.attr_exit:
	; Sprzątanie i powrót
	pop bc
	pop de
	ret

	; --- Operacje na ekranie ---
.display_op:
	; Od 0x28EE
	ret

.cursor_op:
	; Od 0x291A
	ret

.char_op:
	; Od 0x2922 — używane też przez boot
	ret

.scroll_op:
	; Od 0x290C
	ret

.mode_op:
	; Od 0x298D
	ret

.clear_op:
	; Od 0x2C07
	ret

.default_op:
	; Od 0x2BF4
	ret

; =============================================================================
; RAM video DZM-180 (memory-mapped, NIE porty I/O)
; =============================================================================
; Adresy 0x8800+ w przestrzeni adresowej pamięci (nie I/O):
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
