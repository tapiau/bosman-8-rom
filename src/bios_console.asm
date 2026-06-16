; =============================================================================
; bios_console.asm — BIOS obsługi konsoli (0x0E80+)
; =============================================================================
; Główna procedura obsługi konsoli CPM-R.
; Punkt wejścia: 0x0E80 (przez wektor 0x0017 w Page Zero).
;
; Parametry:
;   A = 0 → inicjalizacja (warm start konsoli)
;   A = 1 → status (czy znak gotowy)
;   A = inne → kod znaku do wysłania lub funkcja specjalna
;
; Używa flag w F26B i FB7C do zarządzania stanem konsoli.
; Komunikuje się z terminalem przez port 0x0C (szeregowy?).
; =============================================================================

	org	00E80h

CONSOLE:
	; --- Sprawdzenie podfunkcji ---
	ld hl,FB7C		; 0E80  flagi wyświetlacza/konsoli
	inc a			; 0E83  A=0? → A=1
	jp z,.init		; 0E84  A było 0 → inicjalizacja
	dec a			; 0E87  przywróć A
	jp nz,.output		; 0E88  A!=1 → wyjście znaku

	; --- Status (A=1): sprawdź czy znak gotowy ---
	bit 7,(hl)		; 0E8B  bit 7 FB7C?
	jr z,.status_off	; 0E8D
	; Tryb status ON
	ld hl,F26B		; 0E8F  flagi konsoli
	bit 7,(hl)		; 0E92
	jr z,.status_ok		; 0E94
	res 7,(hl)		; 0E96  wyłącz flagę
	ld hl,MSG_STATUS1	; 0E98
	call STR_PROC		; 0E9B
	call SUB_F82		; 0E9E
	ld hl,MSG_STATUS2	; 0EA1
	call STR_PROC		; 0EA4
.status_ok:
	ld hl,FB7C		; 0EA7
	bit 0,(hl)		; 0EAA
	call z,.init_proc	; 0EAC  init jeśli trzeba
	jr .done		; 0EAF

.status_off:
	res 0,(hl)		; 0EB1
	ld hl,F26B		; 0EB3
	res 7,(hl)		; 0EB6
	ld hl,F376		; 0EB8  adres init BIOS
	ld (F273),hl		; 0EBB  ustaw wektor

.done:
	out (00Ch),a		; 0EBE  wyślij do portu konsoli
	or a			; 0EC0
	ret			; 0EC1

	; --- Wyjście znaku (A = kod znaku) ---
.output:
	bit 7,(hl)		; 0EC2
	jp nz,.output_ext	; 0EC4  rozszerzone wyjście
	res 0,(hl)		; 0EC7
	call SUB_FC2		; 0EC9
	cp 0D1h			; 0ECC  czy kod ESC/POP?
	jp nz,.check_special	; 0ECE

	; --- Obliczanie pozycji kursora (dla 0xD1) ---
	ld a,00Ch		; 0ED1  12 kolumn?
	sub c			; 0ED3
	ld c,a			; 0ED4
	jp c,.special		; 0ED5
	jp z,.special		; 0ED8
	add a,a			; 0EDB
	add a,a			; 0EDC
	add a,a			; 0EDD
	add a,a			; 0EDE  ×16
	sub c			; 0EDF
	ld hl,TAB_FA40		; 0EE0  tablica fontów/atrybutów
.col_loop:
	sub 008h		; 0EE3
	jr c,.col_found		; 0EE5
	inc hl			; 0EE7
	jr .col_loop		; 0EE8
.col_found:
	add a,008h		; 0EEA
	xor 007h		; 0EEC
	inc a			; 0EEE
	ld b,a			; 0EEF
	ld a,01Eh		; 0EF0
	sub b			; 0EF2
	ld c,a			; 0EF3
	xor a			; 0EF4
.bit_loop:
	scf			; 0EF5
	rla			; 0EF6
	djnz .bit_loop		; 0EF7
	and (hl)		; 0EF9
	jp nz,.special		; 0EFA
	; (dalsza obróbka pozycji kursora)

; =============================================================================
; Podprogramy pomocnicze
; =============================================================================

.init:
	; Inicjalizacja konsoli (A było 0)
	; (kod od 0x0F3C)
	ret

.init_proc:
	; Pomocnicza inicjalizacja
	; (kod od 0x0F3C)
	ret

.output_ext:
	; Rozszerzone wyjście
	; (kod od 0x0F20)
	ret

.check_special:
.special:
	; Obsługa znaków specjalnych
	; (kod od 0x0F64)
	ret

; =============================================================================
; Procedury zewnętrzne
; =============================================================================
STR_PROC	equ 00F91h	; przetwarzanie stringu
SUB_F82		equ 00F82h	; podprogram pomocniczy
SUB_FC2		equ 00FC2h	; podprogram konsoli

; =============================================================================
; Dane
; =============================================================================
FB7C		equ 0FB7Ch	; flagi wyświetlacza/konsoli
F26B		equ 0F26Bh	; flagi urządzeń I/O
F273		equ 0F273h	; wektor procedury
F376		equ 0F376h	; adres init BIOS

MSG_STATUS1	equ 00FAEh	; string statusu
MSG_STATUS2	equ 00F9Ah	; string statusu 2

TAB_FA40	equ 0FA40h	; tablica atrybutów/fontów (w RAM)

	END
