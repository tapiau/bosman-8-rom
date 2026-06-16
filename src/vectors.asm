; =============================================================================
; vectors.asm — Page Zero (0x0000-0x00FF)
; =============================================================================
; Główna tablica skoków CPM-R i parametry systemowe.
;
; CPM-R różni się od standardowego CP/M 2.2:
;  - Bajty 0x0000-0x0001 to sygnatura ROM (25 00), nie JP BOOT
;  - Tablica skoków zaczyna się od 0x0002 (offset +2 vs CP/M)
;  - Ma 3 dodatkowe wektory (vec8–vec10) w porównaniu do CP/M
;  - NMI (0x0066) jest obsłużone (standardowe CP/M ignoruje)
;  - Zawiera 3 tablice konfiguracji wyświetlacza (od 0x0077)
;
; Legenda adresów:
;   Adresy w ROM (0x0000-0x7FFF) — kod wykonywany bezpośrednio z EPROM
;   Adresy w RAM (0xF000-0xFFFF) — kod skopiowany z ROM podczas bootu
; =============================================================================

	org	00000h

; -----------------------------------------------------------------------------
; Sygnatura ROM (2 bajty)
; -----------------------------------------------------------------------------
; Wykonywane jako DEC H / NOP przy restarcie — nieszkodliwe.
; Przed przełączeniem na RAM, procedura 0x044F nadpisze te bajty przez C3 (JP).
	dec h			; 0000  25     ROM signature byte 1
	nop			; 0001  00     ROM signature byte 2

; -----------------------------------------------------------------------------
; Główna tablica skoków (10 wektorów × 3 bajty)
; -----------------------------------------------------------------------------
; Standard CP/M 2.2 ma 7 wektorów (warm boot, BDOS, RST1–RST5).
; CPM-R dodaje 3 wektory: 0017, 001A, 001D.

; --- Wektor 0: Warm Boot ---
; Odpowiednik CP/M JP BOOT na 0x0000.
; Inicjalizuje sprzęt, testuje RAM, kopiuje ROM→RAM, uruchamia CCP.
WARM_BOOT:
	jp BOOT			; 0002  C3 55 02

; --- Wektor 1: BDOS Entry (CP/M: 0x0005) ---
; Główny punkt wejścia do BDOS. Numer funkcji w rejestrze C.
; Standardowa lokalizacja w CP/M. CPM-R zachowuje ten adres!
BDOS_ENTRY:
	jp BDOS			; 0005  C3 38 30

; --- Wektor 2: RST 1 (0x0008) — rozszerzone wyjście znakowe ---
; Używane do formatowanego wyjścia z obsługą kursorów, atrybutów.
; W standardowym CP/M to zwykle prosty skok do BIOS console output.
RST1_EXT:
	jp EXT_OUT		; 0008  C3 B3 13

; --- Wektor 3: RST 2 (0x000B) — przełącznik ROM→RAM ---
; Aktywuje tryb pracy z RAM: nadpisuje wektory 0x0000–0x003A
; by wskazywały na kopie w górnym RAM (Fxxx).
RST2_SWITCH:
	jp SWITCH_TO_RAM	; 000B  C3 4F 04

; --- Wektor 4: RST 3 (0x000E) — procedura pomocnicza ---
RST3_HELPER:
	jp $1487		; 000E  C3 87 14

; --- Wektor 5: RST 4 (0x0011) → RAM ---
; Wskazuje na kod w RAM (kopię skopiowaną podczas bootu).
RST4_RAM:
	jp $F458		; 0011  C3 58 F4

; --- Wektor 6: RST 5 (0x0014) → RAM ---
RST5_RAM:
	jp $F45D		; 0014  C3 5D F4

; --- Wektor 7 (0x0017): BIOS Console I/O — ROZSZERZENIE CPM-R ---
; Główna procedura obsługi konsoli (znakowe we/wy, escape sequence).
; W standardowym CP/M nie ma odpowiednika — dostęp przez BDOS lub BIOS.
BIOS_CONSOLE:
	jp CONSOLE		; 0017  C3 80 0E

; --- Wektor 8 (0x001A): Procedura pomocnicza — ROZSZERZENIE CPM-R ---
; Sprawdza bit 7 rejestru H i wykonuje operację blokową I/O.
SERVICE_01A:
	jp BLOCK_IO		; 001A  C3 F1 00

; --- Wektor 9 (0x001D): Display Attribute Handler — ROZSZERZENIE CPM-R ---
; Obsługa atrybutów wyświetlacza DZM-180 (porty 0x88xx).
; Bitmapa w rejestrze C wybiera konkretną operację.
DISPLAY_ATTR:
	jp DSP_ATTR		; 001D  C3 6C 26

; -----------------------------------------------------------------------------
; Dane systemowe (0x0020–0x002F)
; -----------------------------------------------------------------------------
; Wygląda na numer seryjny / datę / wersję sprzętu.
; 44 19 = może być datą (19.44? numer tygodnia/roku?)
; 91 06 = ?
; 20 00 = ?
	DEFB 044h, 019h, 091h, 006h, 020h, 000h, 000h, 000h
	DEFB 000h, 000h, 000h, 000h, 000h, 000h, 000h, 000h

; -----------------------------------------------------------------------------
; RST 6 (0x0030) → RAM
; -----------------------------------------------------------------------------
; W CP/M 2.2 RST 6 nie jest używane przez system.
; CPM-R kieruje je do RAM — prawdopodobnie do debuggera.
	DEFB 0C3h			; JP opcode (przywracane przez switch_to_ram)
RST6_RAM:
	jp $F275		; 0030  C3 75 F2
	DEFS 5, 000h			; 0033–0037: padding NOPs

; -----------------------------------------------------------------------------
; RST 7 (0x0038) → RAM
; -----------------------------------------------------------------------------
; W CP/M 2.2 RST 7 to standardowy debugger (DBG) lub przerwanie.
; CPM-R kieruje je do RAM.
RST7_RAM:
	jp $F272		; 0038  C3 72 F2

; -----------------------------------------------------------------------------
; Stringi identyfikacyjne systemu (0x003B–0x005D)
; -----------------------------------------------------------------------------
; Format: ciągi znaków ASCII zakończone 0x80 (bit 7 = 1 na ostatnim znaku)
; lub 0x00 (NUL) dla krótkich pól.
SYS_ID:
	DEFB 'C', 000h		; 003B  "C"
	DEFB 'K', 000h		; 003D  "K"
	DEFB 006h, 0F5h		; 003F  (dane konfiguracyjne?)
	DEFB 'S', 000h		; 0041  "S"
	DEFB 'D','Z','M','-','1','8','0'	; 0043  "DZM-180"
	DEFB 080h				; terminator (bit 7 set)
	DEFB 'i','s','.',' ','V','2','4'	; 004B  "is. V24"
	DEFB 080h				; terminator
	DEFB 'C','E','N','T','R','O','N','I','C','S' ; 0053 "CENTRONICS"
	DEFB 080h				; 005D  terminator

; -----------------------------------------------------------------------------
; Hardware I/O — blokowe OUT (0x005E–0x0064)
; -----------------------------------------------------------------------------
; Sekwencja: wybór urządzenia przez port 0x01, transfer blokowy,
; zwolnienie urządzenia przez port 0x00.
; Używane przez procedurę BLOCK_IO (0x00F1).
HW_BLOCK_OUT:
	out (001h),a		; 005E  D3 01   select device
	ldir			; 0060  ED B0   block transfer (HL→DE, BC bytes)
	out (000h),a		; 0062  D3 00   deselect device
	ret			; 0064  C9

; -----------------------------------------------------------------------------
; NMI Handler (0x0066)
; -----------------------------------------------------------------------------
; Z80 Non-Maskable Interrupt. Standardowe CP/M 2.2 nie używa NMI.
; CPM-R przekierowuje do RAM (0xF341) — możliwe wykorzystanie
; przez sprzętowe przerwanie (klawisz STOP, watchdog, itp.)
	DEFB 000h			; 0065  00 padding
NMI_HANDLER:
	jp $F341		; 0066  C3 41 F3

; -----------------------------------------------------------------------------
; Obszar danych 0x0069–0x0076 — parametry dysku?
; -----------------------------------------------------------------------------
; Wygląda na tabelę parametrów (rozmiary sektorów? liczba ścieżek?)
	DEFB 0BFh, 02Dh, 0D3h, 02Dh, 079h, 000h, 08Dh, 000h
	DEFB 0A1h, 000h, 0B5h, 000h, 0C9h, 000h

; -----------------------------------------------------------------------------
; Tablice konfiguracji wyświetlacza (0x0077–0x00F0)
; -----------------------------------------------------------------------------
; Trzy warianty konfiguracji, każdy po 40 (0x28) bajtów.
; Wybierane podczas bootu na podstawie stanu portu 0x98.
; Kopiowane do RAM (0xF2BF) przez warm boot.

; Nagłówek tablicy
DSP_CFG_HEADER:
	DEFB 0DDh, 000h, 028h, 000h	; 0DDh=marker, 0028h=rozmiar tabeli (40B)

; --- Tablica 1 (0x0079): tryb "!!@" (bit 3 portu 0x98) ---
DSP_CFG_MODE_A:			; "!!@"
	DEFB 028h,000h,004h,00Fh,001h,0C7h,000h,07Fh
	DEFB 000h,0C0h,000h,020h,000h,000h,000h,003h
	DEFB 007h,021h,021h,040h
	DEFB 028h,000h,004h,00Fh,001h,0C7h,000h,07Fh
	DEFB 000h,0C0h,000h,020h,000h,000h,000h,003h
	DEFB 007h,021h,021h,040h

; --- Tablica 2 (0x00A1): tryb "11`" (bit 5 portu 0x98) ---
DSP_CFG_MODE_B:			; "11`"
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,060h
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,060h

; --- Tablica 3 (0x00C9): tryb domyślny "11c" ---
DSP_CFG_MODE_DEFAULT:		; "11c" (boot bez klawiszy)
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,063h
	DEFB 028h,000h,003h,007h,000h,0C7h,000h,03Fh
	DEFB 000h,0C0h,000h,010h,000h,000h,000h,003h
	DEFB 007h,011h,011h,003h

; -----------------------------------------------------------------------------
; BLOCK_IO (0x00F1) — Procedura pomocnicza wektora 0x001A
; -----------------------------------------------------------------------------
; Sprawdza bit 7 rejestru H:
;   bit 7 = 0 → skok do HW_BLOCK_OUT+2 (LDIR → OUT 00h → RET)
;   bit 7 = 1 → reset bitu 7, skok do HW_BLOCK_OUT
BLOCK_IO:
	bit 7,h			; 00F1  CB 7C   check direction flag
	jp z,HW_BLOCK_OUT+2	; 00F3  CA 60 00 skip device select
	res 7,h			; 00F6  CB BC   clear direction flag
	jp HW_BLOCK_OUT		; 00F8  C3 5E 00 full block out sequence

	DEFS 3, 000h			; 00FB–00FD padding
	DEFB 000h			; 00FE
	DEFB 000h			; 00FF

; =============================================================================
; Koniec Page Zero (0x0100 — początek drugiej tablicy skoków)
; =============================================================================
