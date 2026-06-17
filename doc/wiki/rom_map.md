# Pełna mapa ROM (32 KB)

Stan na 2026-06-17. Pokrycie: ~12% szczegółowo, ~88% zmapowane.

## 0x0000-0x0100 — Page Zero (✓ vectors.asm)
- 0x0000: sygnatura `25 00`
- 0x0002-0x003A: 10 wektorów (warm boot, BDOS, RST1-7, 3 dodatkowe CPM-R)
- 0x003B-0x005D: stringi ID systemu (DZM-180, is. V24, CENTRONICS)
- 0x005E-0x0064: HW_BLOCK_OUT (LDIR przez port 0x01)
- 0x0066: NMI handler → JP F341 (zimny reset)
- 0x0069-0x0076: dane dyskowe?
- 0x0077-0x00F0: 3 tablice konfiguracji terminala (po 40B)
- 0x00F1: BLOCK_IO — procedura pomocnicza

## 0x0100-0x0255 — Druga tablica + banner (✓ strings.asm, częściowo)
- 0x0100-0x0127: druga tablica skoków (dodatkowe wektory)
- 0x0128-0x0254: banner systemu + komunikaty boot (Mikrokomputer, RAM=, Z80A, CPM/R, XTPA=, RAMDYSK)

## 0x0255-0x0670 — Boot + dyski (✓ boot.asm, bios_disk.asm)
- 0x0255-0x044E: warm boot (fazy 1-3, 8)
- 0x044F-0x0475: SWITCH_TO_RAM
- 0x0476-0x0562: dyspozytor napędów + D/E/F interlink
- 0x0563-0x0586: obsługa błędów napędów
- 0x0587-0x05EC: komunikaty (odwołanie do dysku, brak komunikacji)
- 0x05ED-0x0670: protokół SIO-B (odbiór bajtu, timeout, blok 128B+checksum)

## 0x0670-0x0E80 — BIOS FDC + drukarka (✗ brak pliku)
- Sektorowe read/write przez WD1770
- Handler H-ERROR
- Obsługa drukarki Centronics

## 0x0E80-0x1000 — Konsola (✓ bios_console.asm, częściowo)
- CONSOLE: init, status, output
- Procedury wyjścia znaku (SIO-A)

## 0x1000-0x1260 — Serial + SUBMIT (✗)
- Pomocnicze procedury szeregowe
- Prawdopodobnie handler COMSUB/SUBMIT

## 0x1260-0x12FD — SIO-B prymitywy (✓ bios_disk.asm)
- 0x1260: SIOB_SEND_BYTE
- 0x12E0: SIOB_RECV

## 0x12FD-0x18EF — Protokół V.24 + menu dyskowe (✗)
- Handler protokołu transmisji
- Struktury menu "Interfejs RI LO PO"
- Dane konfiguracyjne dla pól menu

## 0x18EF-0x1BFC — V.24 menu + tablice (✓ bios_serial.asm)
- 0x18EF: V24_MENU_ENTRY (główny dispatcher)
- 0x1979: "Program. V-24 LO"
- 0x1994: "Program. V-24 PO"
- 0x199B: V24_CFG_COMMON (pętla konfiguracji)
- 0x1AFC: tablica parzystości
- 0x1B2C: tablica bitów stopu
- 0x1B4C: tablica dzielnika
- 0x1B7A: tablica DTR
- 0x1BA9: tablica odbiornika
- 0x1BEB: tablica nadajnika

## 0x1BFC-0x266C — Menu urządzeń (✗ brak pliku)
- "Automatyczne odblokowanie"
- "-DTR", "-RTS", "Szybkość transmisji"
- "Kopia ekranu" — zrzut ekranu terminala
- "Plik" — operacje na plikach
- "Interfejs drukarki" — konfiguracja Centronics
- "Interfejs RI" — konfiguracja RS-232
- "Test V-24" — test łącza
- "Nadajnik zablokowany" — komunikaty testowe

## 0x266C-0x2922 — Terminal UI Framework (✓ bios_display.asm)
- DSP_FIELD, DSP_STRING, DSP_BOX, DSP_OPTION, DSP_INIT
- Silnik renderowania menu na terminalu

## 0x2922-0x2D00 — Terminal helpers + dyski (✗)
- Procedury pomocnicze terminala
- Narzędzia dyskowe

## 0x2D00-0x3038 — BIOS runtime w RAM (✓ ram_code.asm)
- 0x2D00: tablica skoków BIOS (20 wektorów)
- 0x2D60: dane konfiguracyjne
- 0x2E41: NMI handler (JP 0000h — zimny reset!)
- 0x2E71+: procedury BIOS (SELDSK, SETTRK, SETSEC, SETDMA, READ, WRITE, CONIN, CONOUT...)

## 0x3038-0x3136 — BDOS dispatcher (✓ bdos.asm)
- 0x3038: BDOS_ENTRY — dyspozytor (2 ścieżki)
- 0x30E0: BDOS_FN_TABLE — tablica 42 funkcji

## 0x3136-0x3E64 — BDOS: implementacje funkcji (✗, zmapowane)
- Ciała 42 funkcji BDOS
- Obsługa błędów, stringi komunikatów BDOS

## 0x3E64-0x4430 — CCP: inicjalizacja + pętla główna (✗, zmapowane)
- 0x3E64: CCP_INIT (skok z bootu)
- Ładowanie i uruchamianie programów .COM

## 0x4430-0x473D — CCP: tablica komend (✗, zmapowane)
- DIR, ERA, TYPE, SAVE, REN, USER, DEBUG
- Parsowanie i dispatch komend

## 0x473D-0x4A00 — AUTOEXEC + operacje plikowe (✗)
- 0x473D: "B:AUTOEXEC" + handler (BDOS fn 10, wykonanie)
- Atrybuty plików, R/O, kasowanie

## 0x4A00-0x5600 — Narzędzia systemowe (✗)
- Kompresja/dekompresja ("ściśnięty plik")
- Weryfikacja sum kontrolnych
- Kopiowanie plików
- Drukowanie w tle
- RI (czytanie z interfejsu szeregowego)

## 0x5600-0x7000 — RAM-dysk + archiwizator + narzędzia (✗)
- Zarządzanie RAM-dyskiem
- Kompresja (ciąg dalszy)
- Zmiana nazwy, klucz, kopia
- Użytkownicy i uprawnienia
- Operacje na napędach

## 0x7000-0x7FE6 — Padding (· puste)
- Wypełnione 0x00

## 0x7FE6-0x8000 — Trampoliny sprzętowe (✓ boot.asm)
- 0x7FE6: trampolina bank-switch (10B)
- 0x7FF0: trampolina RST (16B)
