; =============================================================================
; bdos.asm — BDOS CPM-R (Basic Disk Operating System)
; =============================================================================
; Adres wejścia: 0x3038 (zgodny ze standardem CP/M 0x0005)
;
; CPM-R implementuje 42 funkcje BDOS (0-41), podczas gdy standardowe
; CP/M 2.2 ma ich 40 (0-39).
;
; Różnice vs CP/M 2.2:
;   - Funkcje 0-37: standardowe CP/M 2.2
;   - Funkcje 38-39: stub (wspólny handler 0x387A, prawdopodobnie CP/M 3 compat)
;   - Funkcje 40-41: **ROZSZERZENIA CPM-R** (RAM-dysk, dodatkowe operacje)
;
; Dyspozytor BDOS używa dwóch ścieżek:
;   - Funkcje < 13:  szybka ścieżka (SP=F0E0, handler sub_3082)
;   - Funkcje >= 13: ścieżka plikowa (SP=F100, handler sub_3098)
; =============================================================================

	org	03038h

; =============================================================================
; BDOS_ENTRY — główny dyspozytor funkcji
; =============================================================================
; Wejście: C = numer funkcji BDOS, DE = parametr
; Wyjście: zależy od funkcji (zwykle A=wynik, HL=wartość)
; =============================================================================

BDOS_ENTRY:
	; --- Sprawdzenie zakresu funkcji ---
	ld a,c			; 3038  numer funkcji
	cp 00Dh			; 3039  funkcja < 13?
	jr c,.fast_path		; 303B  tak → szybka ścieżka

	; --- Ścieżka plikowa (funkcje 13-41) ---
	; Używa stosu w F100 (powyżej buforów systemowych)
	ld (STK_SAVE1),sp	; 303D  zachowaj SP
	ld sp,STK_FILE		; 3041  SP = F100h
	call BDOS_FILE_FN	; 3044  handler plikowy
	ld sp,(STK_SAVE1)	; 3047  przywróć SP
	ret			; 304B

	; --- Szybka ścieżka (funkcje 0-12) ---
	; Używa stosu w F0E0 (niższy obszar roboczy)
.fast_path:
	ld (STK_SAVE2),sp	; 304C  zachowaj SP
	ld sp,STK_FAST		; 3050  SP = F0E0h
	call BDOS_FAST_FN	; 3053  handler szybki
	ld sp,(STK_SAVE2)	; 3056  przywróć SP
	ret			; 305A

; =============================================================================
; Alternatywny punkt wejścia (0x305B) — rozszerzona ścieżka
; =============================================================================
; Używana gdy wywołanie wymaga dodatkowego sprzątania po BDOS.
BDOS_ALT_ENTRY:
	ld a,c			; 305B
	cp 00Dh			; 305C
	jr c,.alt_fast		; 305E
	ld (STK_SAVE1),sp	; 3060
	ld sp,STK_FILE		; 3064
	call BDOS_FILE_FN	; 3067
	ld sp,(STK_SAVE1)	; 306A
	jp F00B			; 306E  dodatkowe sprzątanie w RAM
.alt_fast:
	ld (STK_SAVE2),sp	; 3071
	ld sp,STK_FAST		; 3075
	call BDOS_FAST_FN	; 3078
	ld sp,(STK_SAVE2)	; 307B
	jp F00B			; 307F  dodatkowe sprzątanie w RAM

; =============================================================================
; BDOS_FAST_FN — handler szybkiej ścieżki (funkcje 0-12)
; =============================================================================
; Wejście: C=numer funkcji, DE=parametr
; Wyjście: HL, A (zależnie od funkcji)
BDOS_FAST_FN:
	ld (FAST_DE),de		; 3082  zachowaj DE
	ld hl,00000h		; 3086
	ld (FAST_HL),hl		; 3089  wyczyść HL
	ld hl,.fast_return	; 308C  adres powrotu
	push hl			; 308F
	jr DISPATCH		; 3090
.fast_return:
	ld hl,(FAST_HL)		; 3092  pobierz wynik HL
	ld b,h			; 3095
	ld a,l			; 3096  A = L (kod powrotu)
	ret			; 3097

; =============================================================================
; BDOS_FILE_FN — handler ścieżki plikowej (funkcje 13-41)
; =============================================================================
BDOS_FILE_FN:
	ld (FILE_DE),de		; 3098  zachowaj DE
	ld a,e			; 309C
	ld (FILE_A),a		; 309D  zachowaj A
	ld hl,00000h		; 30A0
	ld (FILE_HL),hl		; 30A3  wyczyść HL
	ld (FILE_FLAGS),hl	; 30A6  wyczyść flagi
	ld hl,.file_return	; 30A9  adres powrotu
	push hl			; 30AC

	; --- Sprawdzenie maksymalnego numeru funkcji ---
	ld a,c			; 30AD
	cp 02Ah			; 30AE  funkcja > 41?
	ret nc			; 30B0  tak → błąd (powrót)

; =============================================================================
; DISPATCH — wspólny dispatcher
; =============================================================================
; Indeksuje tablicę skoków BDOS_FN_TABLE i skacze do wybranej funkcji.
; Wejście: C = numer funkcji, tablica = 0x30E0
DISPATCH:
	ld hl,BDOS_FN_TABLE	; 30B1  30E0h — tablica funkcji
	ld b,000h		; 30B4
	add hl,bc		; 30B6  HL = tab + fn*2
	add hl,bc		; 30B7
	ld a,(hl)		; 30B8  młodszy bajt adresu
	inc hl			; 30B9
	ld h,(hl)		; 30BA  starszy bajt
	ld l,a			; 30BB  HL = adres funkcji
	ld c,e			; 30BC  parametr do C
	jp (hl)			; 30BD  skok do funkcji!

	; --- Obsługa powrotu z funkcji plikowej ---
.file_return:
	ld a,(FILE_FLAGS)	; 30BE
	bit 7,a			; 30C1
	jr z,.done		; 30C3  bit 7 = 0 → OK
	; Błąd: wyczyść wynik
	ld hl,(FILE_DE)		; 30C5
	ld (hl),000h		; 30C8
	ld a,(FILE_A2)		; 30CA
	or a			; 30CD
	jr z,.done		; 30CE
	ld (hl),a		; 30D0  zwróć kod błędu
	ld a,(FILE_A3)		; 30D1
	ld (FILE_A),a		; 30D4
	call FN_3378		; 30D7  operacja dyskowa
.done:
	ld hl,(FILE_HL)		; 30DA  wynik
	ld a,l			; 30DD
	ld b,h			; 30DE
	ret			; 30DF

; =============================================================================
; BDOS_FN_TABLE — tablica funkcji BDOS (0x30E0)
; =============================================================================
; 43 wpisy (funkcje 0-42), każdy 2 bajty (little-endian).
; Funkcje 0-37: standard CP/M 2.2
; Funkcje 38-39: stub (CP/M 3 compat?)
; Funkcje 40-41: **ROZSZERZENIA CPM-R**
BDOS_FN_TABLE:
	DEFW RAM_P_TERMCPM	; 00 - System Reset (→RAM)
	DEFW C_READ		; 01 - Console Input
	DEFW C_WRITE		; 02 - Console Output
	DEFW C_RAWIO		; 03 - Reader Input
	DEFW C_PUNCH		; 04 - Punch Output
	DEFW C_LIST		; 05 - List Output
	DEFW C_DIRIO		; 06 - Direct Console I/O
	DEFW GET_IOBYTE		; 07 - Get I/O Byte
	DEFW SET_IOBYTE		; 08 - Set I/O Byte
	DEFW C_WRITSTR		; 09 - Print String ($-terminated)
	DEFW C_READSTR		; 0A - Read Console Buffer
	DEFW C_STAT		; 0B - Get Console Status
	DEFW C_VER		; 0C - Return Version Number
	DEFW DRV_RESET		; 0D - Reset Disk System
	DEFW DRV_SELECT		; 0E - Select Disk
	DEFW F_OPEN		; 0F - Open File
	DEFW F_CLOSE		; 10 - Close File
	DEFW F_SFIRST		; 11 - Search for First
	DEFW F_SNEXT		; 12 - Search for Next
	DEFW F_DELETE		; 13 - Delete File
	DEFW F_READ		; 14 - Read Sequential
	DEFW F_WRITE		; 15 - Write Sequential
	DEFW F_MAKE		; 16 - Make File
	DEFW F_RENAME		; 17 - Rename File
	DEFW DRV_LOGVEC		; 18 - Return Login Vector
	DEFW DRV_CUR		; 19 - Return Current Disk
	DEFW F_DMA		; 1A - Set DMA Address
	DEFW DRV_ALLOC		; 1B - Get Allocation Address
	DEFW DRV_ROVEC_WP	; 1C - Write Protect Disk
	DEFW DRV_ROVEC		; 1D - Get R/O Vector
	DEFW F_ATTR		; 1E - Set File Attributes
	DEFW DRV_DPB		; 1F - Get Disk Parameter Address
	DEFW F_USERNUM		; 20 - Set/Get User Code
	DEFW F_RNDREAD		; 21 - Read Random
	DEFW F_RNDWRITE		; 22 - Write Random
	DEFW F_SIZE		; 23 - Compute File Size
	DEFW F_RNDREC		; 24 - Set Random Record
	DEFW DRV_RESET2		; 25 - Reset Drive
	DEFW CPMR_FN38		; 26 - CPM-R extension (stub CP/M 3?)
	DEFW CPMR_FN39		; 27 - CPM-R extension (stub, same handler)
	DEFW CPMR_FN40		; 28 - **ROZSZERZENIE CPM-R**
	DEFW CPMR_FN41		; 29 - **ROZSZERZENIE CPM-R**

; =============================================================================
; Adresy funkcji BDOS (w ROM, chyba że zaznaczono inaczej)
; =============================================================================

; --- Funkcje konsoli (1-11) ---
C_READ		equ 03134h	; 01 - Console Input
C_WRITE		equ 03150h	; 02 - Console Output
C_RAWIO		equ 031D2h	; 03 - Reader Input
C_PUNCH		equ 01247h	; 04 - Punch Output
C_LIST		equ 00FFBh	; 05 - List Output
C_DIRIO		equ 031D7h	; 06 - Direct Console I/O
GET_IOBYTE	equ 03203h	; 07 - Get I/O Byte
SET_IOBYTE	equ 0320Bh	; 08 - Set I/O Byte
C_WRITSTR	equ 03212h	; 09 - Print String
C_READSTR	equ 03222h	; 0A - Read Console Buffer
C_STAT		equ 03355h	; 0B - Get Console Status
C_VER		equ 0335Ch	; 0C - Return Version (CPM-R v2.5 = 025h?)

; --- Funkcje dyskowe (13-14) ---
DRV_RESET	equ 03360h	; 0D - Reset Disk System
DRV_SELECT	equ 03378h	; 0E - Select Disk

; --- Funkcje plikowe (15-24) ---
F_OPEN		equ 0344Ch	; 0F - Open File
F_CLOSE		equ 03490h	; 10 - Close File
F_SFIRST	equ 03534h	; 11 - Search First
F_SNEXT		equ 03553h	; 12 - Search Next
F_DELETE	equ 0356Ch	; 13 - Delete File
F_READ		equ 03598h	; 14 - Read Sequential
F_WRITE		equ 035D8h	; 15 - Write Sequential
F_MAKE		equ 03708h	; 16 - Make File
F_RENAME	equ 0374Eh	; 17 - Rename File

; --- Funkcje systemowe (18-37) ---
DRV_LOGVEC	equ 03779h	; 18 - Login Vector
DRV_CUR		equ 0377Eh	; 19 - Current Disk
F_DMA		equ 03784h	; 1A - Set DMA Address
DRV_ALLOC	equ 03795h	; 1B - Allocation Vector
DRV_ROVEC_WP	equ 0379Ah	; 1C - Write Protect Disk
DRV_ROVEC	equ 037B0h	; 1D - Get R/O Vector
F_ATTR		equ 037B5h	; 1E - Set File Attributes
DRV_DPB		equ 037CFh	; 1F - Get DPB Address
F_USERNUM	equ 037D6h	; 20 - Set/Get User Code
F_RNDREAD	equ 037E7h	; 21 - Read Random
F_RNDWRITE	equ 037F8h	; 22 - Write Random
F_SIZE		equ 03804h	; 23 - Compute File Size
F_RNDREC	equ 0384Bh	; 24 - Set Random Record
DRV_RESET2	equ 0385Ch	; 25 - Reset Drive

; --- Rozszerzenia CPM-R (38-41) ---
CPMR_FN38	equ 0387Ah	; 26 - stub (współdzielony z FN39)
CPMR_FN39	equ 0387Ah	; 27 - stub (ten sam handler co FN38)
CPMR_FN40	equ 037F3h	; 28 - **ROZSZERZENIE CPM-R** (RAM-dysk?)
CPMR_FN41	equ 0387Bh	; 29 - **ROZSZERZENIE CPM-R**

; Funkcja 0 — w RAM (kopiowana podczas bootu)
RAM_P_TERMCPM	equ 0F203h

; =============================================================================
; Implementacje funkcji BDOS (szczegóły)
; =============================================================================

; --- Funkcje konsoli (0x31xx) ---
; C_READ   (0x3134): czeka na znak, zapisuje do F05C, obsługuje ^prefix (0x5E)
; C_WRITE  (0x3150): TAB→spacje co 8 kolumn, filtruje CR/LF/BS, wywołuje 0x319C
; C_RAWIO  (0x31D2): reader input — czyta z SIO-A lub SIO-B wg IOBYTE
; C_PUNCH  (0x1247): sprawdza IOBYTE, routuje na SIO-B lub port równoległy 0x98
; C_LIST   (0x0FFB): drukarka — sprawdza flagę F26B bit 3, timeout 0x2500
; C_DIRIO  (0x31D7): direct I/O — znak bez echa
; GET_IOBYTE (0x3203): LD A,(0003h); RET
; SET_IOBYTE (0x320B): LD (0003h),C; RET
; C_WRITSTR (0x3212): pętla: pobiera znak z (HL), jeśli '$'→koniec, C_WRITE
; C_READSTR (0x3222): czyta linię do bufora, edycja (BS, Ctrl+C)
; C_STAT   (0x3355): sprawdza czy znak gotowy (SIO-A status)
; C_VER    (0x335C): LD A, 025h; RET  → wersja CPM-R = 2.5

; --- Funkcje dyskowe (0x33xx) ---
; DRV_RESET  (0x3360): resetuje wszystkie napędy, czyści bufory
; DRV_SELECT (0x3378): wybiera napęd (0=A..5=F), ustawia DPB

; --- Funkcje plikowe (0x34xx-0x37xx) ---
; F_OPEN   (0x344C): szuka pliku w katalogu, kopiuje FCB, zwraca nr rekordu
; F_CLOSE  (0x3490): zapisuje FCB do katalogu, aktualizuje allocation
; F_SFIRST (0x3534): szuka pierwszego pasującego pliku (wildcards)
; F_SNEXT  (0x3553): szuka następnego (po F_SFIRST)
; F_DELETE (0x356C): usuwa plik, czyści wpisy katalogowe
; F_READ   (0x3598): czyta 128B sektor, obsługa sequential access
; F_WRITE  (0x35D8): zapisuje 128B sektor, alokacja bloków
; F_MAKE   (0x3708): tworzy nowy plik, wpis do katalogu
; F_RENAME (0x374E): zmienia nazwę, kopiuje FCB

; --- Funkcje systemowe (0x37xx-0x38xx) ---
; DRV_LOGVEC  (0x3779): zwraca wektor zalogowanych napędów
; DRV_CUR     (0x377E): LD A,(0004h); RET  → aktualny napęd
; F_DMA       (0x3784): ustawia adres DMA (F351)
; DRV_ALLOC   (0x3795): zwraca adres wektora alokacji
; DRV_ROVEC_WP (0x379A): ustawia R/O dla napędu
; DRV_ROVEC   (0x37B0): zwraca wektor R/O
; F_ATTR     (0x37B5): ustawia atrybuty pliku (R/O, SYS, ARCH)
; DRV_DPB    (0x37CF): zwraca adres DPB dla napędu
; F_USERNUM  (0x37D6): get/set user number (0-15)
; F_RNDREAD  (0x37E7): random read — pozycjonuje i czyta
; F_RNDWRITE (0x37F8): random write — pozycjonuje i zapisuje
; F_SIZE     (0x3804): oblicza rozmiar pliku (random mode)
; F_RNDREC   (0x384B): ustawia random record na podstawie FCB
; DRV_RESET2 (0x385C): reset konkretnego napędu

; --- Rozszerzenia CPM-R (0x387A-0x387B) ---
; CPMR_FN38 (0x387A): RET — stub, nic nie robi
; CPMR_FN39 (0x387A): RET — stub, ten sam co FN38
; CPMR_FN40 (0x37F3): ustawia bit 5 flag (F03C), write-through RAM-dysku?
; CPMR_FN41 (0x387B): sprawdza miejsce na dysku, porównuje HL z DE

; =============================================================================
; BDOS — wewnętrzne procedury pomocnicze
; =============================================================================
; Te procedury są wywoływane przez wiele funkcji BDOS.

; BDOS_SETUP (0x3B33) — przygotowanie operacji plikowej
; Ustawia bit 7 flag (F03C), odczytuje numer napędu z FCB,
; waliduje (max 30/0x1E), zapisuje do F037/F03E.
; Wejście: F050 = adres FCB

; BDOS_FCB_INIT (0x3D16) — zerowanie bajtu w FCB
; Wywołuje 0x3D0D (odczyt z FCB+0x0E), zeruje bajt, zwraca.

; BDOS_FCB_OFFSET (0x3CFC) — adres pola w FCB
; Wejście: DE = offset. Dodaje DE do (F050). Wyjście: HL = FCB+offset.
; Używane z DE=0x0C (extent?), DE=0x0E, DE=0x0F.

; BDOS_CHECK_SPACE (0x3D1C) — sprawdzenie miejsca na dysku
; Porównuje DE z wartościami z F048 i F016 (rozmiar dysku?).
; Używane przez F_WRITE i F_MAKE do sprawdzenia czy jest miejsce.
; Jeśli DE <= (HL): CY=0 (OK). Jeśli DE > (HL): CY=1 (brak miejsca).

; BDOS_ALLOC (0x3A9D) — alokacja bloku dyskowego
; Odczytuje allocation vector z FCB+0x21 (F04C/F04D).
; Manipuluje bitami by znaleźć wolny blok.
; Używane przez F_WRITE do przydzielania nowych bloków.

; BDOS_DIR_SCAN (0x3CF0) — skanowanie katalogu
; Ładuje bufor katalogu z F01C, numer napędu z F047,
; skacze do 0x2BD1 — pętla skanowania wpisów katalogowych.
; Używane przez F_OPEN, F_SFIRST, F_SNEXT.

; BDOS_DIR_NEXT (0x3D70) — następny wpis w katalogu
; Używane w pętlach przez F_SFIRST/F_SNEXT/F_DELETE.

; F_DELETE — algorytm (0x356C):
;   1. BDOS_SETUP (0x3B33)
;   2. Przygotowanie katalogu (0x3CE7, 0x3942)
;   3. Pętla: BDOS_DIR_NEXT (0x3D70) — znajdź pasujący wpis
;   4. BDOS_DIR_SCAN (0x3CF0) — pobierz bufor
;   5. LD (HL), 0E5h — OZNACZ JAKO USUNIĘTY (0xE5 = CP/M deleted marker)
;   6. Zapisz katalog (0x3DECh), aktualizuj alokację (0x3B7Bh), flush (0x3957)
;   7. Powtarzaj aż brak dopasowań

; Adresy pomocnicze
FN_3378		equ 03378h	; pomocnicza operacja dyskowa

; --- Zmienne systemowe (w górnym RAM) ---
STK_SAVE1	equ 0F054h	; zapis SP dla ścieżki plikowej
STK_SAVE2	equ 0F05Eh	; zapis SP dla szybkiej ścieżki
STK_FILE	equ 0F100h	; stos ścieżki plikowej
STK_FAST	equ 0F0E0h	; stos szybkiej ścieżki
FAST_DE		equ 0F05Ah	; DE dla szybkiej ścieżki
FAST_HL		equ 0F05Ch	; HL dla szybkiej ścieżki
FILE_DE		equ 0F050h	; DE dla ścieżki plikowej
FILE_HL		equ 0F052h	; HL dla ścieżki plikowej
FILE_A		equ 0F037h	; A dla ścieżki plikowej
FILE_A2		equ 0F03Dh
FILE_A3		equ 0F03Eh
FILE_FLAGS	equ 0F03Ch	; flagi statusu

	END
