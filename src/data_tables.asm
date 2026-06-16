; =============================================================================
; data_tables.asm — Tablice danych i konfiguracji CPM-R
; =============================================================================
; Zawiera struktury danych rozsiane po ROM:
;   - Parametry dysków (DPB — Disk Parameter Block)
;   - Tablice konfiguracji wyświetlacza
;   - Tablice przekodowań znaków (Mazovia ↔ ASCII?)
;   - Inne dane systemowe
; =============================================================================

; =============================================================================
; Tablice konfiguracji wyświetlacza (0x0077-0x00F0)
; =============================================================================
; Trzy warianty po 40 bajtów, wybierane podczas bootu zależnie od
; stanu portu 0x98 (klawisze na terminalu).
;
; Struktura każdej tablicy (40 bajtów):
;   +0:  tryb (0x28 = 40-kolumnowy?)
;   +1:  szerokość znaku?
;   +2:  ...
;   +16: druga kopia (backup?)

	org	00077h

DSP_CFG_TABLE:
	DEFB 0DDh, 000h		; 0077  nagłówek
	DEFW 00028h		; 0079  rozmiar tablicy = 40 bajtów

; --- Tryb A (bit 3 portu 0x98): "!!@" ---
DSP_CFG_A:
	DEFB 028h,000h,004h,00Fh,001h,0C7h,000h,07Fh
	DEFB 000h,0C0h,000h,020h,000h,000h,000h,003h
	DEFB 007h,021h,021h,040h			; znacznik "!!@"
	; Druga kopia:
	DEFB 028h,000h,004h,00Fh,001h,0C7h,000h,07Fh
	DEFB 000h,0C0h,000h,020h,000h,000h,000h,003h
	DEFB 007h,021h,021h,040h

; --- Tryb B (bit 5 portu 0x98): "11`" ---
DSP_CFG_B:
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,060h			; znacznik "11`"
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,060h

; --- Tryb domyślny: "11c" ---
DSP_CFG_DEFAULT:
	DEFB 028h,000h,004h,00Fh,000h,08Fh,001h,0BFh
	DEFB 000h,0E0h,000h,030h,000h,000h,000h,003h
	DEFB 007h,031h,031h,063h			; znacznik "11c"
	DEFB 028h,000h,003h,007h,000h,0C7h,000h,03Fh
	DEFB 000h,0C0h,000h,010h,000h,000h,000h,003h
	DEFB 007h,011h,011h,003h

; =============================================================================
; Parametry dyskowe — DPB (Disk Parameter Block)
; =============================================================================
; Standardowe CP/M przechowuje DPB w BIOS.
; CPM-R ma je prawdopodobnie w ROM (stałe dla znanych formatów).
;
; Struktura DPB (standard CP/M 2.2, 15 bajtów):
;   +0:  SPT — sectors per track (2B)
;   +2:  BSH — block shift
;   +3:  BLM — block mask
;   +4:  EXM — extent mask
;   +5:  DSM — disk size max (2B)
;   +7:  DRM — directory max (2B)
;   +9:  AL0 — alloc vector byte 0
;   +10: AL1 — alloc vector byte 1
;   +11: CKS — checksum vector size (2B)
;   +13: OFF — reserved tracks (2B)

; =============================================================================
; Tablica przekodowania znaków (Mazovia?)
; =============================================================================
; Polskie znaki w CP/M nie miały standardu — często używano
; kodowania Mazovia (zmodyfikowany ASCII z polskimi literami
; w miejsce niektórych znaków specjalnych).
;
; Tablica prawdopodobnie zawiera mapowanie:
;   CP/M (Mazovia) → znaki wyświetlacza DZM-180
; lub odwrotnie.

; =============================================================================
; Tablica funkcji BDOS (0x30E0)
; =============================================================================
; Zawarta w bdos.asm.

; =============================================================================
; Tablica skoków BIOS w RAM (0xF200)
; =============================================================================
; Zawarta w ram_code.asm.

; =============================================================================
; Dane konfiguracji sprzętowej w RAM
; =============================================================================
; F266: główne flagi systemowe (bit 7 = tryb pracy)
; F267: konfiguracja urządzeń (0 = brak, !=0 = skonfigurowane)
; F268: status dysków (bity 7-6 = flagi)
; F26B: flagi konsoli (bit 0, 2, 3, 6, 7)
; F2B0: wersja konfiguracji wyświetlacza
; F355, F357: flagi robocze (zerowane przy boot)
; F437: wersja konfiguracji sprzętowej (<5 = zimny start, >=5 = ciepły)
; FB7A: status RAM-dysku (0=OK)
; FB7B: aktualna wersja konfiguracji
; FB7C: flagi wyświetlacza (bit 0, bit 7)
; FB7D: flaga systemowa
; FB7E: flaga pierwszego uruchomienia

	END
