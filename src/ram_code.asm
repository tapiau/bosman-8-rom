; =============================================================================
; ram_code.asm — Kod rezydentny w RAM (kopiowany z ROM podczas bootu)
; =============================================================================
; Lokalizacja: ROM 0x2D00-0x3037 → RAM 0xF200-0xF538 (0x0338 bajtów)
;
; Ten blok zawiera:
;   1. Tablicę skoków BIOS (20 wektorów po 3 bajty) — 0xF200-0xF23B
;   2. Slot rezerwowe (RET+NOP) — 0xF23C-0xF25F
;   3. Pojedyncze skoki — 0xF251, 0xF254, 0xF260, 0xF263
;   4. Dane konfiguracyjne — 0xF266-0xF2FF
;   5. Procedury BIOS — 0xF300+
; =============================================================================

	org	0F200h

; =============================================================================
; BIOS Jump Table (0xF200-0xF23B) — 20 wektorów
; =============================================================================
; Ta tablica jest używana po przełączeniu na RAM (SWITCH_TO_RAM).
; Wektor warm boot (F203) zastępuje ROM-owy adres 0x0002.
BIOS_WARM_BOOT:
	jp BIOS_INIT		; F200  warm boot entry 1
RAM_WARM_BOOT:
	jp BIOS_INIT		; F203  warm boot entry 2 (→F376)
BIOS_BDOS:
	jp BIOS_CONST		; F206  BDOS redirect? (→F3B3)
BIOS_CONIN:
	jp BIOS_CONIN_IMPL	; F209  console input (→F3AB)
BIOS_CONOUT:
	jp BIOS_CONOUT_IMPL	; F20C  console output (→F3CE)
BIOS_LIST:
	jp BIOS_LIST_IMPL	; F20F  list output (→F3F0)
BIOS_PUNCH:
	jp BIOS_PUNCH_IMPL	; F212  punch output (→F3EB)
BIOS_READER:
	jp BIOS_READER_IMPL	; F215  reader input (→F3E1)
BIOS_HOME:
	jp BIOS_HOME_IMPL	; F218  home disk (→F37D)
BIOS_SELDSK:
	jp BIOS_SELDSK_IMPL	; F21B  select disk (→F371)
BIOS_SETTRK:
	jp BIOS_SETTRK_IMPL	; F21E  set track (→F382)
BIOS_SETSEC:
	jp BIOS_SETSEC_IMPL	; F221  set sector (→F387)
BIOS_SETDMA:
	jp BIOS_SETDMA_IMPL	; F224  set DMA address (→F38C)
BIOS_READ:
	jp BIOS_READ_IMPL	; F227  read sector (→F3A1)
BIOS_WRITE:
	jp BIOS_WRITE_IMPL	; F22A  write sector (→F39C)
BIOS_LISTST:
	jp BIOS_LISTST_IMPL	; F22D  list status (→F3F5)
BIOS_SECTRN:
	jp BIOS_SECTRN_IMPL	; F230  sector translate (→F392)
BIOS_SCRN:
	jp BIOS_SCRN_IMPL	; F233  screen output (→F3C1) **ROZSZERZENIE CPM-R**
BIOS_SELMEM:
	jp BIOS_SELMEM_IMPL	; F236  select memory (→F3DC) **ROZSZERZENIE CPM-R**
BIOS_SETBNK:
	jp BIOS_SETBNK_IMPL	; F239  set bank (→F3E6) **ROZSZERZENIE CPM-R**

; =============================================================================
; Slot rezerwowe (0xF23C-0xF25F) — prawdopodobnie do patchowania
; =============================================================================
; Każdy slot: 2×NOP + RET. Pojedyncze skoki wstawione między slotami.
	DEFS 16, 000h		; F23C-F24B (część jest RET+NOP)
	; (szczegółowe sloty: RET+NOP w F23E, F241, F244, F247, F24A, F24D, F250)
BIOS_EXT1:
	jp BIOS_EXT1_IMPL	; F251  dodatkowy skok (→F481) **ROZSZERZENIE**
BIOS_BANKSW:
	jp BIOS_BANKSW_IMPL	; F254  bank switch (→F30F)
	DEFS 8, 000h		; F257-F25E (część RET+NOP)
BIOS_EXT2:
	jp BIOS_EXT2_IMPL	; F260  dodatkowy skok (→F423) **ROZSZERZENIE**
BIOS_EXT3:
	jp BIOS_EXT3_IMPL	; F263  dodatkowy skok (→F3A6) **ROZSZERZENIE**

; =============================================================================
; Dane konfiguracyjne (0xF266-0xF2AF)
; =============================================================================
; Flagi systemowe, konfiguracja banków pamięci, bufory.
; F266: główne flagi systemowe
; F26B: flagi konsoli/urządzeń (bit 7 = Console, bit 6 = ?)
; F267-F268: konfiguracja dyskowa
; F27B+: tablice parametrów dysków
; F2B0: wersja konfiguracji wyświetlacza
; F2BF: kopia tablicy konfiguracji wyświetlacza (40 bajtów)

; =============================================================================
; Trampoliny z końca ROM
; =============================================================================
; ROM 0x7FE6 → RAM 0xF060 (10 bajtów) — trampolina bank-switch
; ROM 0x7FF0 → RAM 0xF000 (16 bajtów) — trampolina RST

; =============================================================================
; Wektory RST w RAM
; =============================================================================
RAM_RST7:
	jp BIOS_INIT		; F272  RST7 → warm boot
RAM_RST6:
	jp BIOS_DEBUG		; F275  RST6 → debugger/breakpoint
RAM_PAGE0_RESET:
	jp 00000h		; F278  skok do 0x0000 (ROM) — zimny restart

; =============================================================================
; Etykiety
; =============================================================================
BIOS_INIT	equ 0F376h
BIOS_CONST	equ 0F3B3h
BIOS_CONIN_IMPL	equ 0F3ABh
BIOS_CONOUT_IMPL equ 0F3CEh
BIOS_LIST_IMPL	equ 0F3F0h
BIOS_PUNCH_IMPL	equ 0F3EBh
BIOS_READER_IMPL equ 0F3E1h
BIOS_HOME_IMPL	equ 0F37Dh
BIOS_SELDSK_IMPL equ 0F371h
BIOS_SETTRK_IMPL equ 0F382h
BIOS_SETSEC_IMPL equ 0F387h
BIOS_SETDMA_IMPL equ 0F38Ch
BIOS_READ_IMPL	equ 0F3A1h
BIOS_WRITE_IMPL	equ 0F39Ch
BIOS_LISTST_IMPL equ 0F3F5h
BIOS_SECTRN_IMPL equ 0F392h
BIOS_SCRN_IMPL	equ 0F3C1h	; CPM-R extension: screen output
BIOS_SELMEM_IMPL equ 0F3DCh	; CPM-R extension: memory select
BIOS_SETBNK_IMPL equ 0F3E6h	; CPM-R extension: bank set
BIOS_EXT1_IMPL	equ 0F481h	; CPM-R extension
BIOS_EXT2_IMPL	equ 0F423h	; CPM-R extension
BIOS_EXT3_IMPL	equ 0F3A6h	; CPM-R extension
BIOS_BANKSW_IMPL equ 0F30Fh	; bank switch function
BIOS_DEBUG	equ 0F4C3h	; debugger entry (RST6)

	END
