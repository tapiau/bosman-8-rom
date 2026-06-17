; =============================================================================
; ccp.asm — CCP (Console Command Processor) CPM-R
; =============================================================================
; Zakres: 0x3E64-0x4A00 (część ROM)
;
; CCP to interpreter poleceń CP/M — wyświetla znak zachęty, odczytuje
; komendy użytkownika i wykonuje je (wbudowane lub ładuje .COM).
;
; Zawiera:
;   1. CCP_INIT — inicjalizacja (0x3E64)
;   2. Ładowanie .COM do TPA (0x3FDB-0x406B)
;   3. Parser znaków — spacja, CR, Ctrl+Z, $, ^ (0x4072)
;   4. Parser nazw plików — drive:[nazwa].[typ] (0x4320-0x43A1)
;   5. Tablica komend — DIR, ERA, TYPE, SAVE, REN, USER, DEBUG (0x442F)
;   6. Dispatcher komend — porównanie, skok do handlera
;   7. AUTOEXEC — B:AUTOEXEC handler (0x473D)
; =============================================================================

	org	03E64h

; =============================================================================
; CCP_INIT — inicjalizacja procesora komend (0x3E64)
; =============================================================================
; Wywoływana z bootu po inicjalizacji systemu.
; Wyświetla znak zachęty (A>, B>, ...) i wchodzi w pętlę komend.
CCP_INIT:
	ld sp,STACK_TOP		; 3E64  F0B8h
	ld ix,TERM_BASE		; 3E67  8864h — baza danych terminala

	; --- Konfiguracja flag ---
	ld hl,F26B		; 3E6B
	set 6,(hl)		; 3E6E  tryb CCP aktywny
	res 3,(hl)		; 3E70

	; --- Pobierz aktualny napęd ---
	ld hl,00004h		; 3E72  CUR_DISK
	call GET_DISK_INFO	; 3E75  0FD1h
	ld c,a			; 3E78  C = numer napędu

	; --- Konfiguracja wyświetlania ---
	ld (ix-04Eh),010h	; 3E79  ustaw tryb
	push bc			; 3E7D
	ld a,c			; 3E7E
	rra			; 3E7F
	rra			; 3E80
	rra			; 3E81
	rra			; 3E82  górny nibble
	and 00Fh		; 3E83
	ld e,a			; 3E85
	call DISP_SETUP		; 3E86  6655h
	call GET_TERM_COLS	; 3E89  647Eh
	ld (08811h),a		; 3E8C  zapisz szerokość terminala
	pop bc			; 3E8F

	ld a,c			; 3E90
	and 00Fh		; 3E91  dolny nibble
	ld (08814h),a		; 3E93  aktywna strona
	xor a			; 3E96
	ld (08812h),a		; 3E97

	; --- Sprawdź flagi pierwszego uruchomienia ---
	ld hl,FB7E		; 3E9A
	bit 0,(hl)		; 3E9D  pierwsze uruchomienie?
	jr z,.skip_banner	; 3E9F
	push hl			; 3EA1
	call SHOW_BANNER	; 3EA2  3F72h — wyświetl logo
	pop hl			; 3EA5
	bit 1,(hl)		; 3EA6  dodatkowa flaga?
	jr z,.skip_banner	; 3EA8
	push hl			; 3EAA
	ld a,001h		; 3EAB
	call TERM_CMD		; 3EAD  6478h
	ld a,h			; 3EB0
	ld (08812h),a		; 3EB1
	pop hl			; 3EB4
.skip_banner:
	res 0,(hl)		; 3EB5  wyczyść flagi
	res 1,(hl)		; 3EB7

	; --- Wyświetl znak zachęty ---
	ld a,(08814h)		; 3EB9
	call TERM_CMD		; 3EBC  6478h
	call SHOW_PROMPT	; 3EBF  69EAh — "A>" itp.
	xor a			; 3EC2
	ld (08810h),a		; 3EC3

	; --- Pętla główna CCP ---
	ld sp,STACK_TOP		; 3EC6
	set 4,(ix-04Eh)		; 3EC9
	call READ_LINE		; 3ECD  69E6h — czytaj linię
	call GET_DRIVE		; 3ED0  6483h — pobierz napęd
	add a,041h		; 3ED3  numer → litera (0→'A')
	call DISP_CHAR		; 3ED5  69B6h — wyświetl
	call PARSE_CMD		; 3ED8  6653h — parsuj
	and 01Fh		; 3EDB
	; ... dispatch do komendy ...

	; --- Ładowanie programu .COM ---
	; Jeśli komenda nie jest wbudowana: ładuj jako .COM
	jp LOAD_COM		; po dispatchu

; =============================================================================
; Parser znaków komendy (0x4072)
; =============================================================================
; Interpretuje znaki wpisane przez użytkownika:
;   LF (0Ah)   → ignoruj
;   CR (0Dh)   → wykonaj komendę
;   Ctrl+Z(1Ah)→ koniec pliku
;   $ (24h)    → początek stringu?
;   ^ (5Eh)    → prefix dla Ctrl-znaków
;   spacja     → separator argumentów
CMD_PARSER:
	call GET_CHAR		; 4072  41CEh
	cp 00Ah			; 4075  LF — ignoruj
	jr z,CMD_PARSER		; 4077
	cp 00Dh			; 4079  CR — wykonaj
	jp z,EXEC_CMD		; 407B  412Ch
	cp 01Ah			; 407E  Ctrl+Z — EOF
	jp z,CMD_EOF		; 4080  413Bh
	cp 024h			; 4083  '$' — string
	jr z,.string		; 4085
	cp 05Eh			; 4087  '^' — prefix
	jr z,.prefix		; 4089
.normal:
	call STORE_CHAR		; 408B  41E5h
	jr CMD_PARSER		; 408E

.prefix:
	call GET_CHAR		; 4090
	cp 05Eh			; 4093  '^' ponownie?
	jr z,.normal		; 4095  '^^' → literal '^'
	sub 040h		; 4097  konwertuj na Ctrl-znak
	cp 01Ah			; 4099
	jr c,.normal		; 409B  poza zakresem
	; ... obsługa Ctrl-znaku ...
.string:
	; ... obsługa stringu ...

; =============================================================================
; Parser nazw plików (0x4320-0x43A1)
; =============================================================================
; Parsuje nazwę pliku w formacie: [napęd:][nazwa].[typ]
;   napęd: A-P (litera + ':')
;   nazwa: 1-8 znaków
;   typ:   1-3 znaki (po kropce)
;   wildcards: '*' (dowolny ciąg), '?' (dowolny znak)
; Wynik w buforze terminala (0x8818/0x881A).
PARSE_FILENAME:
	ld (08818h),hl		; 4321  zapisz wskaźnik
	ret z			; 4324  koniec linii

	; --- Sprawdź prefix napędu ---
	ld a,(hl)		; 4325
	call CHAR_UPPER		; 4326  2CF7h — upper case
	sub 040h		; 4329  '@' → 1..26 (A=1, P=16)
	ld b,a			; 432B
	inc hl			; 432C
	ld a,(hl)		; 432D
	cp 03Ah			; 432E  ':'?
	jr z,.have_drive	; 4330  tak → zapisz numer napędu
	dec hl			; 4332  nie → cofnij
	jr .parse_name		; 4333

.have_drive:
	ld a,b			; 4335  numer napędu
	ld (de),a		; 4336  zapisz w FCB
	inc hl			; 4337

	; --- Parsuj nazwę (max 8 znaków) ---
.parse_name:
	ld b,008h		; 4338  max 8 znaków
	call .parse_field	; 433A  4344h
	ret c			; 433D  błąd
	cp 02Eh			; 433E  '.'?
	ret nz			; 4340  nie → koniec (brak rozszerzenia)

	; --- Parsuj rozszerzenie (max 3 znaki) ---
	ld b,003h		; 4341  max 3 znaki
	inc hl			; 4343  pomiń kropkę

.parse_field:
	call .check_char	; 4344  4387h — sprawdź znak
	jr c,.field_done	; 4347  koniec
	jr z,.fill_space	; 4349  spacja → wypełnij
	inc de			; 434B
	call CHAR_UPPER		; 434C  2CF7h
	cp 02Ah			; 434F  '*'?
	jr nz,.store		; 4351  nie → zapisz
	inc c			; 4353  zaznacz wildcard
	ld a,03Fh		; 4354  zamień '*' na '?'
	dec hl			; 4356
.store:
	ld (de),a		; 4357  zapisz znak
	inc hl			; 4358
	djnz .parse_field	; 4359  następny znak

.skip_rest:
	call .check_char	; 435B
	jr c,.field_done	; 435E
	jr z,.field_done	; 4360
	inc hl			; 4362  pomiń nadmiarowe znaki
	jr .skip_rest		; 4363

.fill_space:
	inc de			; 4365
	djnz .fill_space	; 4366  wypełnij spacjami
.field_done:
	ld (0881Ah),hl		; 4368  zapisz wskaźnik końca
	ret			; 436B

	; --- Inicjalizacja bufora FCB ---
INIT_FCB:
	ld (hl),000h		; 436C
	inc hl			; 436E
	ld b,00Bh		; 436F  11 bajtów
	ld a,020h		; 4371  spacja
	call FILL_BUF		; 4373  4379h
	ld b,004h		; 4376  4 dodatkowe
	xor a			; 4378
	; fall-through

FILL_BUF:
	ld (hl),a		; 4379
	inc hl			; 437A
	djnz FILL_BUF		; 437B
	ret			; 437D

	; --- Pomijanie białych znaków ---
SKIP_SPACES:
	ld a,(hl)		; 437E
	or a			; 437F  koniec stringu?
	ret z			; 4380
	cp 020h			; 4381  spacja?
	ret nz			; 4383  nie → koniec
	inc hl			; 4384
	jr SKIP_SPACES		; 4385

	; --- Sprawdzenie poprawności znaku ---
.check_char:
	ld a,(hl)		; 4387
	cp 03Fh			; 4388  '?' — wildcard
	jr nz,.not_wild		; 438A
	inc c			; 438C  zaznacz wildcard
.not_wild:
	or a			; 438D  koniec stringu?
	scf			; 438E
	ret z			; 438F  tak → CY=1
	cp 03Dh			; 4390  '=' — separator
	ret z			; 4392
	cp 05Fh			; 4393  '_' — separator
	ret z			; 4395
	cp 02Eh			; 4396  '.' — kropka
	ret z			; 4398
	cp 03Ah			; 4399  ':' — dwukropek
	ret z			; 439B
	cp 03Bh			; 439C  ';' — średnik
	ret z			; 439E
	cp 03Ch			; 439F  '<' — przekierowanie?
	ret z			; 43A1
	or a			; 43A2  CY=0 → poprawny znak
	ret			; 43A3

; =============================================================================
; Tablica wbudowanych komend CCP (0x442F)
; =============================================================================
; 7 komend, każda: 5 bajtów nazwy + 3 bajty adresu handlera
CCP_CMD_TABLE:
	DEFB 'sBDIR'		; 442D  prefix 'sB'
	DEFB 'DIR  '		; 442F  DIR — lista plików
	DEFB 052h,020h,020h	; handler flags
	DEFB 'ERA  '		; 4437  ERA — usuń plik
	DEFB 054h,059h,050h	; handler flags
	DEFB 'TYPE '		; 443F  TYPE — wyświetl plik
	DEFB 045h,020h,052h	; handler flags
	DEFB 'SAVE '		; 4447  SAVE — zapisz pamięć
	DEFB 045h,04Eh,020h	; handler flags
	DEFB 'REN  '		; 444F  REN — zmień nazwę
	DEFB 055h,053h,045h	; handler flags
	DEFB 'USER '		; 4457  USER — zmień użytkownika
	DEFB 044h,045h,042h	; handler flags
	DEFB 'DEBUG'		; 445F  DEBUG — narzędzia/menu
	DEFB 044h,020h,020h	; handler flags

; =============================================================================
; AUTOEXEC handler (0x473D-0x4776)
; =============================================================================
; Sprawdza obecność pliku B:AUTOEXEC i wykonuje go.
; Używane przy starcie systemu.
AUTOEXEC:
	DEFB 00Ah		; 473A  LF
	DEFB 'B:AUTOEXEC', 000h	; 473D  nazwa pliku

	call SETUP_FCB		; 4748  3F72h
	call OPEN_FCB		; 474B  43B4h
	ld c,00Ah		; 474E  BDOS fn 10 (C_READSTR)
	ld de,088B8h		; 4750  bufor w RAM terminala
	ld a,07Fh		; 4753  max długość bufora
	ld (de),a		; 4755
	call BDOS_ENTRY		; 4756  0005h — wykonaj!
	call CLOSE_FCB		; 4759  43C1h

	; Przetwarzanie odczytanej linii
	ld hl,088B9h		; 475C  początek danych
	ld b,(hl)		; 475F  długość
.exec_loop:
	inc hl			; 4760
	ld a,b			; 4761
	or a			; 4762  koniec?
	jr z,.done		; 4763
	ld a,(hl)		; 4765  pobierz znak
	res 7,a			; 4766  wyczyść bit 7 (ASCII)
	call CHAR_EXEC		; 4768  2CF7h — wykonaj/wyślij
	dec b			; 476C
	jr .exec_loop		; 476D
.done:
	ld (hl),a		; 476F  zapisz terminator
	ld hl,088BAh		; 4770
	ld (0881Ah),hl		; 4773  ustaw wskaźnik bufora
	ret			; 4776

; =============================================================================
; Ładowanie programu .COM (0x3FDB-0x406B)
; =============================================================================
; Ładuje transientny program do TPA (0x0100) i wykonuje go.
; Komunikat: "Program 0100-$+"
LOAD_COM:
	DEFB 'Program 0100-$+'	; 400E
	; ... kod ładujący .COM ...
	; Otwiera plik .COM, ładuje do 0x0100, skacze do 0x0100
	; Po powrocie (RET lub JP 0x0000): wraca do CCP

; =============================================================================
; Adresy
; =============================================================================

STACK_TOP	equ 0F0B8h	; szczyt stosu
TERM_BASE	equ 08864h	; baza danych terminala (IX)
F26B		equ 0F26Bh	; flagi systemowe
FB7E		equ 0FB7Eh	; flagi pierwszego uruchomienia
BDOS_ENTRY	equ 00005h	; punkt wejścia BDOS

; Procedury
GET_DISK_INFO	equ 00FD1h	; pobierz info o napędzie
DISP_SETUP	equ 06655h	; konfiguracja wyświetlania
GET_TERM_COLS	equ 0647Eh	; szerokość terminala
SHOW_BANNER	equ 03F72h	; wyświetl logo systemu
SHOW_PROMPT	equ 069EAh	; wyświetl "A>" itp.
READ_LINE	equ 069E6h	; czytaj linię z klawiatury
GET_DRIVE	equ 06483h	; pobierz numer napędu
DISP_CHAR	equ 069B6h	; wyświetl znak
PARSE_CMD	equ 06653h	; parsuj komendę
TERM_CMD	equ 06478h	; komenda terminala
GET_CHAR	equ 041CEh	; pobierz znak
STORE_CHAR	equ 041E5h	; zapisz znak
CHAR_UPPER	equ 02CF7h	; konwersja na upper case
CHAR_EXEC	equ 02CF7h	; wykonaj/wyślij znak
EXEC_CMD	equ 0412Ch	; wykonaj komendę
CMD_EOF		equ 0413Bh	; Ctrl+Z — koniec
SETUP_FCB	equ 03F72h	; przygotuj FCB
OPEN_FCB	equ 043B4h	; otwórz plik
CLOSE_FCB	equ 043C1h	; zamknij plik

	END
