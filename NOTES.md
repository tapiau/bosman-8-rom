# NOTES.md — robocze notatki z analizy EPROM Bosman-8

## 2026-06-16 — Wstępne rozpoznanie

### Sygnatura ROM
- 0x0000-0x0001: `25 00` — magic number CPM-R
- Tablica skoków od 0x0002 (offset +2 vs standard CP/M)
- Standard CP/M ma JP BOOT na 0x0000; CPM-R używa pierwszych 2 bajtów jako sygnaturę

### Tablice skoków
- **Główna (0x0002-0x003A):** 10 wektorów (vs 7 w standardowym CP/M)
- **Druga (0x0100-0x0127):** dodatkowe wektory systemowe, potem stringi

### Boot
- OUT (07h) na początku warm boot — przełączanie banków pamięci
- Test RAM: suma kontrolna 0x0000-0x7FFF
- Kopiowanie 0x338 bajtów z ROM 0x2D00 → RAM 0xF200
- Konfiguracja wyświetlacza przez porty 0x82, 0x85, 0x87, 0x84
- Detekcja klawiszy przez port 0x98 (bity 3, 5, 6)
- Sygnatura 0x55AA w RAM wyświetlacza (0x8800) odróżnia zimny/ciepły start
- Procedura 0x044F przełącza wektory 0x0000 na kopie RAM-owe
- Trampoliny sprzętowe (bank-switching) kopiowane z 0x7FE6→0xF060, 0x7FF0→0xF000

### BDOS
- Dispatcher 0x3038: funkcje 0-42 (0x2A), 43 funkcje
- Funkcje <13: szybka ścieżka (SP=F0E0)
- Funkcje >=13: ścieżka z obsługą plików (SP=F100)
- Tablica skoków w 0x30E0

### Rozszerzenia CPM-R
- Funkcje BDOS 40-42 — do zidentyfikowania
- Obsługa display (porty 0x88xx) — atrybuty, pozycjonowanie
- RAM-dysk 408KB
- Polskie znaki (prawdopodobnie Mazovia)
- AUTOEXEC z dysku B:

## 2026-06-16 — Podsumowanie po podziale ROM i dokumentacji

### Utworzone pliki
- `src/vectors.asm` — Page Zero: sygnatura, 10 wektorów, stringi ID, tablice display
- `src/boot.asm` — Warm boot (10 faz), detekcja klawiszy, przełącznik ROM→RAM
- `src/bdos.asm` — BDOS dispatcher, 42 funkcje (w tym 4 rozszerzenia)
- `src/ram_code.asm` — BIOS runtime (20+ wektorów kopiowanych do RAM)
- `src/bios_console.asm` — Obsługa konsoli (port 0x0C, ESC sequence)
- `src/bios_display.asm` — Wyświetlacz DZM-180 (porty 0x88xx, atrybuty)
- `src/data_tables.asm` — DPB, konfiguracja display, flagi systemowe
- `src/strings.asm` — Wszystkie stringi z kodowaniem polskich znaków
- `doc/wiki/boot_process.md` — Pełny opis procesu bootowania
- `doc/wiki/hardware.md` — Mapa portów, pamięć, CPU
- `doc/wiki/emulation.md` — Stan emulacji, wymagania

### Rozszerzenia CPM-R
- 3 dodatkowe wektory Page Zero (0x0017, 0x001A, 0x001D)
- Funkcje BDOS 38-41 (38/39 = stub, 40-41 = rozszerzenia)
- BIOS: SCRN, SELMEM, SETBNK + ext1/ext2/ext3
- Obsługa wyświetlacza (atrybuty, pozycjonowanie)
- NMI handler (→RAM F341)
- Polskie znaki (własne kodowanie DZM-180)
- AUTOEXEC z B:

## 2026-06-16 — Korekta: terminal szeregowy, nie wyświetlacz

Bosman-8 **nie ma wbudowanego wyświetlacza**. Komunikacja przez terminal
szeregowy podłączony do Z80-SIO kanał A (port 0x80/0x82).

To wyjaśnia:
- "Tryby wyświetlacza" = typy terminali (różne prędkości/ESC sequences)
- 0x8800+ = bufory terminala w RAM (pozycja kursora, atrybuty, bufor ekranu)
- Kod 0x266C = obsługa ESC sequence terminala, nie sprzętowego wyświetlacza
- Sygnatura 0x55AA = zachowanie bufora terminala między restartami
- Port 0x98 = DIP-switch określający typ terminala, nie "klawisze"

## 2026-06-16 — Korekta: rzeczywista mapa portów I/O

Dzięki informacji od użytkownika poprawiono identyfikację układów:

| Porty | Układ | Funkcja |
|-------|-------|---------|
| 0x80-0x83 | Z80-SIO | Transmisja szeregowa (2 kanały: dane+rozkazy) |
| 0x84-0x87 | 8253 | Timer/licznik (3 kanały + słowo kontrolne) |
| 0x88-0x8B | WD 1770 | Kontroler stacji dyskietek (rozkazy/ścieżka/sektor/dane) |
| 0x98 | — | Konfiguracja sprzętowa (DIP-switch) + wyjście równoległe |

**Ważne:** 0x8800+ w kodzie to memory-mapped RAM video (adresy pamięci),
NIE porty I/O. Adresy 0x88xx nie mają nic wspólnego z portem I/O 0x88 (WD1770).

Zweryfikowana inicjalizacja SIO (port 0x82):
- WR3=0xE1: 8 bit, auto enable, Rx enable
- WR4=0x0C: x16 clock, 1 stop bit, no parity
- WR5=0xE8: DTR, Tx 8 bit, Tx enable

Zweryfikowana inicjalizacja 8253 (port 0x87):
- Licznik 1: 0x0014 = 20 (generator Baud rate)

### Do dalszej analizy
- [ ] Rozkodowanie polskich znaków (zweryfikować czy Mazovia czy własne)
- [ ] Pełna analiza BDOS (42 funkcje, 3.4 KB kodu w luce 0x3136-0x3E64)
- [ ] Pełna analiza CCP (tablica komend, parser, ~1.8 KB)
- [ ] Szczegółowa analiza archiwizatora/kompresji (0x4E00-0x5200, 0x6000-0x6700)
- [ ] Emulacja — albo przez modyfikację yaze, albo własny emulator
- [x] ~~Sygnatura ROM (25 00)~~ — zidentyfikowana
- [x] ~~Tablice skoków~~ — 10 wektorów głównych + 20 w RAM
- [x] ~~Proces bootowania~~ — 10 faz, udokumentowany
- [x] ~~Porty I/O~~ — zmapowane
- [x] ~~AUTOEXEC~~ — znaleziony i przeanalizowany (handler 0x4748)
- [x] ~~Komunikacja między komputerami (D/E/F przez SIO-B)~~ → doc/wiki/disk_interlink.md
- [x] ~~Funkcje CPM-R BDOS 38-41~~ — FN38/39 to stuby (RET), FN40 ustawia flagę+write, FN41 sprawdza miejsce na dysku
- [x] ~~Domyślna prędkość V.24~~ — 9600 baud, counter 8253=20, F_CLK≈192kHz
- [x] ~~Struktura menu konfiguracyjnego V.24~~ — 10 pól (parzystość→bity→dzielnik→DTR→odbiornik→nadajnik→auto→DTR→RTS→prędkość)
## 2026-06-17 — Analiza nieudokumentowanych obszarów

### Archiwizator/kompresja (0x4E00-0x5200, 0x6000-0x6700)
Własny format kompresji plików CPM-R:
- "ściśnięty plik" — nazwa skompresowanego pliku
- Walidacja nagłówka: "to nie jest 'ściśnięty' plik" przy błędzie
- "Błędna tablica dekodująca" — uszkodzone dane słownika
- "Plik jest pusty" — plik wejściowy bez danych
- "Brakuje danych na pliku" — niekompletny plik
- Fazy: "analiza" → "^ciskanie" (kompresja) / dekompresja
- "skopiowany" — sukces
- ".jrandom$" — możliwe że używa randomizacji/entropii
- Kod głównie w 0x53E0-0x5450 (dekompresja) i 0x6200-0x6400 (walidacja)

### Kopia ekranu (0x1CC8)
- Menu "Kopia ekranu" w obszarze konfiguracji urządzeń
- Przechwytuje zawartość bufora terminala (0x8800+) do pliku
- "Kopiowanie ekranu zakończone" — sukces
- " granice obrazu" — możliwość zmiany zakresu kopiowania
- "kopia na plik :" — wybór pliku docelowego
- Kod w 0x1CC8-0x1DCF

### Drukowanie w tle (0x4989-0x4A40, 0x5740-0x5800)
- "Włączone drukowanie w tle" — flaga w F26B bit 2
- Plik LO#.PRN — bufor wydruku
- ".jZ = zakończ plik LO#.PRN" — zamknięcie bufora
- "Drukarka wyłączona" — status
- Menu konfiguracji: "Interfejs drukarki" (0x22F4)
- Opcje: TAB do drukarki, zerowanie bitu, znaki `@^~]}{[|\`
- Prawdopodobnie działa jako TSR (Terminate and Stay Resident) pod CP/M

### SIO-B — użycie przez PUNCH
- `PIP PUN:=PLIK.TXT` wysyła dane przez SIO-B
- C_PUNCH (0x1247) → SIO-B async
- **8253 counter 2 = 13** (domyślnie): 2MHz/13/16 = **9615 baud** x16 async
- Konfiguracja w RAM F360/F365/F36A: WR3=E1h, WR4=4Ch, WR5=EAh, ctr2=13
- SIOB_INIT (0x1487): ładuje 5 bajtów z (HL) do SIO-B + 8253 ctr2
- Działa od razu po boot, bez dodatkowej konfiguracji
- Trzy sloty (F360 LO, F365 PO, F36A default) — wszystkie domyślnie identyczne

### CCP — Command Processor (0x3E64-0x4A00)
- **CCP_INIT** (0x3E64): LD SP,F0B8h; LD IX,8864h; init display; sprawdza FB7E
- **Parser znaków** (0x4072): LF(0Ah)=ignoruj, CR(0Dh)=wykonaj, Ctrl+Z(1Ah)=koniec,
  $(24h)=string, ^(5Eh)=prefix, spacja=separator
- **Ładowanie .COM** (0x400E-0x406B): otwiera plik, ładuje do TPA (0x0100),
  ustawia stos, skacze do 0x0100
- **Tablica komend** (0x442F): DIR, ERA, TYPE, SAVE, REN, USER, DEBUG
  Format: 5 bajtów nazwa + 3 bajty adres handlera
- **AUTOEXEC** (0x473D): sprawdza B:AUTOEXEC, wykonuje przez BDOS fn 10
- Komunikaty: "Program 0100-$+", ".jPolecenie za długie", "Brak pliku",
  "Plik istnieje", "Błędne polecenie - (ESC)"
