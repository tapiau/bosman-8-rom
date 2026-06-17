; =============================================================================
; boot.asm — Warm Boot i Cold Boot CPM-R
; =============================================================================
; Proces bootowania systemu z EPROM.
;
; Fazy:
;   1. Inicjalizacja sprzętowa (banki pamięci, SIO, 8253, FDC)
;   2. Test RAM (suma kontrolna 0x0000–0x7FFF)
;   3. Kopiowanie bloku ROM→RAM (0x2D00→0xF200, 0x338 bajtów)
;   4. Inicjalizacja SIO (porty 0x82) i 8253 (porty 0x85/0x87)
;      oraz kontrolera dysków WD1770 (port 0x88)
;   5. Odczyt konfiguracji sprzętowej (port 0x98 — DIP-switch/zworki)
;   6. Wybór konfiguracji terminala (3 warianty wg DIP-switch)
;   7. Sprawdzenie bufora terminala w RAM (sygnatura 0x55AA w 0x8800)
;   8. Przełączenie wektorów na RAM (SWITCH_TO_RAM)
;   9. Inicjalizacja CCP
;  10. AUTOEXEC z dysku B: (jeśli istnieje)
;
; Warianty bootu zależne od konfiguracji sprzętowej (port 0x98):
;   AND 0x28 = 0x00 → tryb domyślny    (tablica DSP_CFG_MODE_DEFAULT)
;   AND 0x28 = 0x08 → tryb altern. A   (tablica DSP_CFG_MODE_A, bit 3)
;   AND 0x28 = 0x20 → tryb altern. B   (tablica DSP_CFG_MODE_B, bit 5)
;   AND 0x40 != 0  → pomija dodatkową inicjalizację (call 0x0DB7)
;
; UWAGA: Port 0x98 to NIE klawiatura — to hardwired konfiguracja
; (DIP-switch/zworki na płycie głównej), odczytywana tylko przy starcie.
;
; Błędy bootu:
;   "ROM uszkodzony"  — błąd sumy kontrolnej ROM
;   "RAM uszkodzony"  — błąd testu RAM
;   "RAMDYSK uszkodzony" — błąd RAM-dysku
; =============================================================================

	org	00255h

; =============================================================================
; WARM_BOOT — główna procedura startowa
; =============================================================================
; Wywoływana przy restarcie systemu (także soft-reset przez BDOS funkcja 0).
; Zachowuje zawartość RAM wyświetlacza jeśli to miękki restart (sygn. 0x55AA).
; =============================================================================

WARM_BOOT:
	; --- Faza 1: Inicjalizacja sprzętowa ---
	out (007h),a		; 0255  bank switch: wybór ROM (port 0x07)
	ld sp,STACK_TOP		; 0257  SP = F0B8h (szczyt stosu w górnym RAM)

	; --- Faza 2: Test RAM ---
	; Suma kontrolna obszaru 0x0000–0x7FFF.
	; Jeśli suma != 0 → błąd RAM, sygnalizacja na porcie 0x06.
	ld hl,00000h		; 025A  początek RAM
	xor a			; 025D  A = 0 (akumulator sumy)
.ram_test_loop:
	add a,(hl)		; 025E  dodaj bajt do sumy
	inc hl			; 025F
	bit 7,h			; 0260  czy HL >= 0x8000?
	jr z,.ram_test_loop	; 0262  nie — kontynuuj pętlę
	or a			; 0264  suma == 0?
	jr nz,.ram_error	; 0265  nie — błąd RAM
	out (006h),a		; 0267  sygnalizacja OK na porcie 0x06
.ram_error:
	; wynik testu w AF' — użyty później do komunikatu

	; --- Faza 3: Kopiowanie ROM → RAM ---
	; Blok 0x338 bajtów z ROM 0x2D00 do RAM 0xF200.
	; Zawiera tablicę skoków BIOS i procedury rezydentne.
	ex af,af'		; 0269  zachowaj wynik testu RAM
	ld hl,RAM_CODE_ROM	; 026A  źródło: 0x2D00 (ROM)
	ld de,RAM_CODE_RAM	; 026D  cel:    0xF200 (RAM)
	ld bc,RAM_CODE_SIZE	; 0270  rozmiar: 0x0338
	ldir			; 0273  kopiuj

	; --- Faza 4: Inicjalizacja układów I/O ---
	; 8253 Control Word (port 0x87) — konfiguracja 3 liczników
	ld a,035h		; 0275  CW: licznik 0, tryb 2, LSB+MSB, BCD
	out (087h),a		; 0277
	ld a,076h		; 0279  CW: licznik 1, tryb 3, LSB+MSB, bin
	out (087h),a		; 027B
	ld a,0B6h		; 027D  CW: licznik 2, tryb 3, LSB+MSB, bin
	out (087h),a		; 027F

	; Z80-SIO kanał A — rejestr rozkazów (port 0x82)
	; Tryb SYNCHRONICZNY (nie asynchroniczny!), 100 000 bod - do współpracy z terminalem
	; Zegar 8253: 2 MHz / 20 = 100 kHz → SIO clock
	; Sekwencja inicjalizacyjna SIO: wpis do rejestrów WR3, WR4, WR5
	ld a,003h		; 0281  wybór rejestru WR3
	out (082h),a		; 0283
	ld a,0E1h		; 0285  WR3: 8 bit/znak, sync, Rx enable
	out (082h),a		; 0287
	ld a,004h		; 0289  wybór rejestru WR4
	out (082h),a		; 028B
	ld a,00Ch		; 028D  WR4: tryb sync, 2 stop?/flags
	out (082h),a		; 028F
	ld a,005h		; 0291  wybór rejestru WR5
	out (082h),a		; 0293
	ld a,0E8h		; 0295  WR5: DTR, Tx 8 bit, Tx enable
	out (082h),a		; 0297

	; 8253 licznik 1 (port 0x85) — generator clock dla SIO (2 MHz / 20 = 100 kHz)
	ld a,014h		; 0299  młodszy bajt = 20
	out (085h),a		; 029B
	ld a,000h		; 029D  starszy bajt = 0 → wartość 20
	out (085h),a		; 029F  → 2 000 000 / 20 = 100 000 bod (synchronicznie)

	; SIO kanał A — odczyt danych (port 0x80)
	in a,(080h)		; 02A1  odczyt bufora Rx
	ld a,001h		; 02A3
	call DELAY		; 02A5  opóźnienie ~1ms

	in a,(080h)		; 02A8  ponowny odczyt
	; 8253 licznik 0 (port 0x84) — inicjalizacja
	ld a,099h		; 02AA  młodszy bajt = 0x99
	out (084h),a		; 02AC
	ld a,099h		; 02AE  starszy bajt = 0x99 → wartość 0x9999
	out (084h),a		; 02B0

	; Wyświetl znak zachęty / logo systemu
	ld hl,SYS_BANNER	; 02B2  F360h (RAM — banner systemu)
	call RST3_DISPLAY	; 02B5  wyświetl string

	; --- Ustawienia CP/M Page Zero ---
	ld a,0D5h		; 02B8  IOBYTE = D5h
	ld (IOBYTE),a		; 02BA  (0003h)
	xor a			; 02BD
	ld (CUR_DISK),a		; 02BE  current disk = A: (0004h)
	ld (FB7D),a		; 02C1  flag = 0

	; Wyczyść obszar roboczy F000–F0FF
	ld hl,0F000h		; 02C4
	ld b,000h		; 02C7  256 bajtów
.clear_loop:
	ld (hl),a		; 02C9
	inc hl			; 02CA
	djnz .clear_loop	; 02CB

	ld a,001h		; 02CD
	ld (FB7E),a		; 02CF  flaga: pierwsze uruchomienie

	; --- Faza 8: Przełączenie wektorów na RAM ---
	; Kopiuje trampoliny sprzętowe i nadpisuje Page Zero.
	call SWITCH_TO_RAM	; 02D2

	; --- Faza 5: Odczyt konfiguracji sprzętowej ---
	; Port 0x98 = hardwired konfiguracja (DIP-switch/zworki)
	; NIE klawiatura — to "zaszyte" bity konfiguracji komputera.
	ld a,(00037h)		; 02D5  flaga systemowa
	bit 7,a			; 02D8
	jr nz,.skip_key		; 02DA  bit 7=1 → pomiń odczyt klawiszy
	in a,(098h)		; 02DC  odczyt klawiszy
.skip_key:
	and 028h		; 02DE  maska bitów 3 i 5
	jr z,.dsp_default	; 02E0  0 → konfiguracja domyślna
	cp 008h			; 02E2  bit 3?
	jr nz,.check_bit5	; 02E4
	ld hl,DSP_CFG_MODE_A	; 02E6  0079h — tryb "!!@"
	jr .copy_dsp_cfg	; 02E9
.check_bit5:
	cp 020h			; 02EB  bit 5?
	ld hl,DSP_CFG_MODE_DEFAULT ; 02ED  fallback: tryb domyślny
	jp nz,.copy_dsp_cfg	; 02F0
	ld hl,DSP_CFG_MODE_B	; 02F3  00A1h — tryb "11`"

	; --- Faza 6: Kopiowanie konfiguracji wyświetlacza do RAM ---
.copy_dsp_cfg:
	ld de,DSP_CFG_RAM	; 02F6  F2BFh (RAM)
	ld bc,00028h		; 02F9  40 bajtów
	ldir			; 02FC
.dsp_default:
	out (0F5h),a		; 02FE  wyjście na port 0xF5
	xor a			; 0300
	ld (F355),a		; 0301  zerowanie flag
	ld (F357),a		; 0304
	ld a,01Eh		; 0307
	call DELAY		; 0309  opóźnienie ~30ms

	; --- Faza 4b: Inicjalizacja WD1770 FDC ---
	ld a,0D0h		; 030C  komenda RESTORE (powrót na ścieżkę 0)
	out (088h),a		; 030E  WD1770 — rejestr rozkazów

	; Drugie sprawdzenie konfiguracji (bit 6 portu 0x98)
	ld a,(00037h)		; 0310
	bit 7,a			; 0313
	jr nz,.skip_key2	; 0315
	in a,(098h)		; 0317  odczyt klawiszy
.skip_key2:
	and 040h		; 0319  bit 6?
	ld a,001h		; 031B
	call z,HW_INIT_1	; 031D  jeśli bit 6=0: dodatkowa init (0x0DB7)
	ld a,000h		; 0320
	call HW_INIT_1		; 0322  init z A=0

	; Init sprzętowych portów F8/FF
	out (0F8h),a		; 0325
	out (0FFh),a		; 0327

	; --- Odczyt konfiguracji sprzętowej ---
	; Sprawdza 4 banki/liczniki, wynik → F437
	ld b,004h		; 0329  4 iteracje
	call READ_CONFIG	; 032B  sub_03FF
	add a,a			; 032E  ×2
	push af			; 032F
	ld b,000h		; 0330
	call READ_CONFIG	; 0332
	dec a			; 0335
	pop bc			; 0336
	add a,b			; 0337  wynik konfiguracji
	ld (F437),a		; 0338  zapamiętaj wersję konfiguracji

	; --- Inicjalizacja pamięci dyskowej / RAM-dysku ---
	ld c,000h		; 033B
	ld a,(F2B6)		; 033D
	ld b,a			; 0340
	ld hl,07800h		; 0341  obszar roboczy
	ld de,0FA20h		; 0344
	push bc			; 0347
	ld a,007h		; 0348
	call FN_F30F		; 034A  funkcja RAM (bank select)
	pop bc			; 034D
	push hl			; 034E
	push bc			; 034F

	; Sprawdzenie/zaznaczenie używanych banków
.bank_check_loop:
	push bc			; 0350
	call FN_F447		; 0351  odczyt statusu banku
	ld c,a			; 0354
	ld a,(de)		; 0355
	inc de			; 0356
	cp c			; 0357
	pop bc			; 0358
	jr z,.bank_ok		; 0359
	inc c			; 035B
.bank_ok:
	djnz .bank_check_loop	; 035C
	ld a,c			; 035E
	ld (FB7A),a		; 035F  zapisz status banków
	pop bc			; 0362
	pop hl			; 0363

	; --- Faza 7: Sprawdzenie bufora terminala w RAM ---
	; Sygnatura 0x55AA w 0x8800 oznacza zachowany bufor terminala (miękki restart).
	; Bosman-8 nie ma wyświetlacza — używa terminala szeregowego przez SIO-A.
	; Jeśli brak sygnatury — pełna inicjalizacja (zimny start).
	ld a,(08800h)		; 0364
	cp 055h			; 0367
	jr nz,.cold_init	; 0369  brak sygnatury → zimny start
	ld a,(08801h)		; 036B
	cp 0AAh			; 036E
	jr z,.warm_display	; 0370  sygnatura OK → zachowaj RAM wyśw.

	; --- Zimny start — czyszczenie bufora terminala ---
.cold_init:
	ld c,080h		; 0372  licznik: 128 bloków
	ld a,040h		; 0374
	call DELAY		; 0376
.cold_fill:
	ld (hl),0E5h		; 0379  wypełnij znakiem 0xE5 (pusty ekran terminala)
	inc hl			; 037B
	dec c			; 037C
	jr nz,.cold_fill	; 037D
	djnz .cold_init		; 037F  następny blok
	ld hl,0AA55h		; 0381  sygnatura
	ld (08800h),hl		; 0384  zapisz sygnaturę
	xor a			; 0387
	ld (FB7A),a		; 0388
	ld (FB7C),a		; 038B
	jr .display_done	; 038E

	; --- Ciepły start — zachowanie bufora terminala ---
.warm_display:
	ld a,(F2B0)		; 0390  wersja konfiguracji w RAM
	ld b,a			; 0393
	ld a,(FB7B)		; 0394  aktualna wersja
	cp b			; 0397
	jr nc,.display_done	; 0398  aktualna >= zapisana → OK
	ld (F2B0),a		; 039A  zapisz nowszą wersję

.display_done:
	xor a			; 039D
	call FN_F30F		; 039E  wybór banku 0
	ex af,af'		; 03A1  przywróć wynik testu RAM
	ld hl,MSG_ROM_BAD	; 03A2  021Ah "ROM uszkodzony"
	jr nz,.show_error	; 03A5  test RAM != 0 → błąd

	; --- Faza 9a: Wybór ścieżki startu CCP ---
	; Jeśli F437 >= 5 → specjalna ścieżka (miękki restart z zachowaniem ekranu)
	ld a,(F437)		; 03A7
	cp 005h			; 03AA
	ld hl,MSG_RAM_BAD	; 03AC  022Ch "RAM uszkodzony"
	jr nz,.show_error	; 03AF  wersja < 5 → standardowe CCP

	; --- Ścieżka miękka (wersja >= 5) ---
	; Wyświetla banner systemu, odtwarza stan wyświetlacza
	ld hl,BOOT_BANNER	; 03B1  0123h — nagłówek "Mikrokomputer..."
	call STR_OUT		; 03B4  (0x2CCF)
	ld hl,00100h		; 03B7
	ld de,00C4Fh		; 03BA
	call DSP_INIT		; 03BD  (0x2922) init display
	ld hl,00200h		; 03C0
	call STR_OUT		; 03C3
	ld hl,MSG_RAMDYSK_BAD	; 03C6  0205h "RAMDYSK uszkodzony"
	ld a,(FB7A)		; 03C9  status RAM-dysku
	or a			; 03CC
	call nz,STR_OUT		; 03CD  wyświetl tylko jeśli błąd
	jr .continue_boot	; 03D0

	; --- Ścieżka standardowa (zimny start lub wersja < 5) ---
.show_error:
	call STR_OUT		; 03D2  wyświetl komunikat błędu
	ld a,025h		; 03D5
	call FN_1564		; 03D7  dodatkowe formatowanie
	ld sp,STACK_TOP		; 03DA  reset stosu
	xor a			; 03DD
	call FN_F30F		; 03DE  bank 0
	ld a,(F266)		; 03E1
	res 7,a			; 03E4
	ld (F266),a		; 03E6
	xor a			; 03E9
	call CONSOLE		; 03EA  init konsoli (0x0E80)
	call SWITCH_TO_RAM	; 03ED

.continue_boot:
	; Zapisz wersję konfiguracji
	ld a,(F2B0)		; 03F0
	ld (FB7B),a		; 03F3
	ld hl,MSG_BOOT_PROMPT	; 03F6  023Eh — znak zachęty/system prompt
	call STR_OUT		; 03F9

	; --- Faza 9b: Skok do CCP ---
	jp CCP_INIT		; 03FC  3E64h — inicjalizacja i pętla CCP

; =============================================================================
; READ_CONFIG — odczyt konfiguracji sprzętowej
; =============================================================================
; Wejście: B = numer iteracji
; Wyjście: A = kod konfiguracji (0, 1, lub 2)
; Używa sygnatury 0x55/0xAA do detekcji sprzętu.
; =============================================================================
READ_CONFIG:
	ld a,b			; 03FF
	call FN_F30F		; 0400  wybór banku
	ld hl,00000h		; 0403
	call FN_F458		; 0406  odczyt
	ld d,a			; 0409
	ld (hl),055h		; 040A  zapisz marker 55h
	ld a,b			; 040C
	inc a			; 040D
	call FN_F30F		; 040E  następny bank
	call FN_F458		; 0411
	ld e,a			; 0414
	ld (hl),0AAh		; 0415  zapisz marker AAh
	ld a,b			; 0417
	call FN_F30F		; 0418  powrót do banku
	call FN_F458		; 041B
	cp 055h			; 041E
	jr z,.type_2		; 0420  55h → typ 2
	cp 0AAh			; 0422  AAh?
	ld a,000h		; 0424  typ 0
	ret nz			; 0426  ani 55 ani AA → typ 0
	ld (hl),d		; 0427  przywróć wartość
	ld a,001h		; 0428  typ 1
	ret			; 042A
.type_2:
	ld a,b			; 042B
	inc a			; 042C
	call FN_F30F		; 042D
	ld (hl),e		; 0430
	ld a,b			; 0431
	call FN_F30F		; 0432
	ld (hl),d		; 0435
	ld a,002h		; 0436  typ 2
	ret			; 0438

; =============================================================================
; SWITCH_TO_RAM — przełączenie wektorów Page Zero na RAM
; =============================================================================
; 1. Kopiuje trampoliny sprzętowe z końca ROM do RAM:
;    - ROM 0x7FE6 → RAM 0xF060 (10 bajtów) — trampolina bank-switch
;    - ROM 0x7FF0 → RAM 0xF000 (16 bajtów) — trampolina RST
; 2. Nadpisuje bajty w Page Zero instrukcjami JP:
;    - 0x0000: JP F203  (warm boot w RAM)
;    - 0x0005: JP F006  (BDOS w RAM)
;    - 0x0030: JP F275  (RST6 w RAM)
;    - 0x0038: JP F272  (RST7 w RAM)
; =============================================================================
SWITCH_TO_RAM:
	; Kopiuj trampolinę bank-switch (ROM 0x7FE6 → RAM 0xF060, 10B)
	ld hl,TRAMPOLINE_1	; 0439  7FE6h
	ld de,TRAMP1_RAM	; 043C  F060h
	ld bc,0000Ah		; 043F
	ldir			; 0442

	; Kopiuj trampolinę RST (ROM 0x7FF0 → RAM 0xF000, 16B)
	ld hl,TRAMPOLINE_2	; 0444  7FF0h
	ld de,TRAMP2_RAM	; 0447  F000h
	ld bc,00010h		; 044A
	ldir			; 044D

	; Nadpisz Page Zero: wstaw opcode JP (C3) i adresy RAM
	ld a,0C3h		; 044F  opcode JP
	ld (00000h),a		; 0451  0x0000 → JP (warm boot)
	ld (00005h),a		; 0454  0x0005 → JP (BDOS)
	ld (00030h),a		; 0457  0x0030 → JP (RST6)
	ld (00038h),a		; 045A  0x0038 → JP (RST7)

	; Adresy docelowe w RAM
	ld hl,RAM_WARM_BOOT	; 045D  F203h
	ld (00001h),hl		; 0460  warm boot → RAM
	ld hl,RAM_BDOS		; 0463  F006h
	ld (00006h),hl		; 0466  BDOS → RAM
	ld hl,RAM_RST6		; 0469  F275h
	ld (00031h),hl		; 046C  RST6 → RAM
	ld hl,RAM_RST7		; 046F  F272h
	ld (00039h),hl		; 0472  RST7 → RAM
	ret			; 0475

; =============================================================================
; Obsługa dysków — procedury konfiguracji stacji (0x0476+)
; =============================================================================
; Ta sekcja obsługuje wybór i konfigurację napędów dyskowych.
; Wywoływana z numerem funkcji w rejestrze C.
; =============================================================================

; (dalszy kod od 0x0476 do 0x05EC — procedury obsługi stacji dysków,
;  inicjalizacja DMA, odczyt/zapis sektorów. Do szczegółowej analizy
;  w bios_disk.asm)

; =============================================================================
; Stałe i adresy
; =============================================================================

STACK_TOP	equ 0F0B8h	; szczyt stosu
IOBYTE		equ 00003h	; CP/M IOBYTE
CUR_DISK	equ 00004h	; CP/M current disk

; Adresy w RAM (runtime)
RAM_CODE_ROM	equ 02D00h	; źródło w ROM
RAM_CODE_RAM	equ 0F200h	; cel w RAM
RAM_CODE_SIZE	equ 00338h	; rozmiar bloku do skopiowania

F266		equ 0F266h	; flagi systemowe
F2B0		equ 0F2B0h	; wersja konfiguracji (RAM)
F2B6		equ 0F2B6h	; liczba banków RAM
F355		equ 0F355h	; flagi robocze
F357		equ 0F357h	; flagi robocze
F437		equ 0F437h	; wersja konfiguracji sprzętowej (<5 = zimny start, >=5 = ciepły)

FB7A		equ 0FB7Ah	; status RAM-dysku (0=OK)
FB7B		equ 0FB7Bh	; aktualna wersja konfiguracji
FB7C		equ 0FB7Ch	; flagi wyświetlacza
FB7D		equ 0FB7Dh	; flaga systemowa
FB7E		equ 0FB7Eh	; flaga pierwszego uruchomienia

DSP_CFG_RAM	equ 0F2BFh	; kopia konfiguracji wyświetlacza w RAM

; Trampoliny
TRAMPOLINE_1	equ 07FE6h	; trampolina bank-switch (ROM)
TRAMP1_RAM	equ 0F060h	; trampolina bank-switch (RAM)
TRAMPOLINE_2	equ 07FF0h	; trampolina RST (ROM)
TRAMP2_RAM	equ 0F000h	; trampolina RST (RAM)

; Wektory RAM
RAM_WARM_BOOT	equ 0F203h
RAM_BDOS	equ 0F006h
RAM_RST6	equ 0F275h
RAM_RST7	equ 0F272h

; Zewnętrzne punkty wejścia
DELAY		equ 02C67h	; procedura opóźnienia
STR_OUT		equ 02CCFh	; wyjście stringu
CONSOLE		equ 00E80h	; BIOS konsola
RST3_DISPLAY	equ 01487h	; RST3 — wyświetlanie
FN_F30F		equ 0F30Fh	; funkcja RAM (bank select)
FN_F447		equ 0F447h	; funkcja RAM (status banku)
FN_F458		equ 0F458h	; funkcja RAM (odczyt)
FN_1564		equ 01564h	; procedura formatowania
HW_INIT_1	equ 00DB7h	; dodatkowa inicjalizacja sprzętowa
DSP_INIT	equ 02922h	; inicjalizacja wyświetlacza
CCP_INIT	equ 03E64h	; wejście CCP

; Tablice konfiguracji wyświetlacza (w ROM)
DSP_CFG_MODE_A		equ 00079h	; tryb "!!@" (bit 3)
DSP_CFG_MODE_B		equ 000A1h	; tryb "11`" (bit 5)
DSP_CFG_MODE_DEFAULT	equ 000C9h	; tryb "11c" (domyślny)

; Komunikaty
MSG_ROM_BAD	equ 0021Ah	; "ROM uszkodzony"
MSG_RAM_BAD	equ 0022Ch	; "RAM uszkodzony"
MSG_RAMDYSK_BAD	equ 00205h	; "RAMDYSK uszkodzony"
BOOT_BANNER	equ 00123h	; nagłówek systemu
SYS_BANNER	equ 0F360h	; banner w RAM
MSG_BOOT_PROMPT	equ 0023Eh	; znak zachęty

	END
