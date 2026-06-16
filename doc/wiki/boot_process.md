# Proces bootowania CPM-R

## Fazy bootowania

### Faza 1: Inicjalizacja sprzętowa
- OUT (07h) — przełączenie banku pamięci na ROM
- Ustawienie stosu na `0xF0B8` (szczyt górnego RAM)

### Faza 2: Test RAM
- Suma kontrolna obszaru `0x0000–0x7FFF` (pierwsze 32KB RAM)
- Jeśli suma ≠ 0: sygnalizacja błędu na porcie 0x06, komunikat **"RAM uszkodzony"**
- Wynik testu zachowany w `AF'` dla późniejszego użycia

### Faza 3: Kopiowanie ROM → RAM
- Blok 0x338 bajtów z ROM `0x2D00` → RAM `0xF200`
- Zawiera tablicę skoków BIOS i procedury rezydentne

### Faza 4: Inicjalizacja układów I/O (SIO, 8253)
- **8253 Control Word** (port 0x87): konfiguracja 3 liczników (0x35, 0x76, 0xB6)
- **Z80-SIO kanał A** (port 0x82 — rejestr rozkazów):
  - WR3 = 0xE1 (8 bit, auto enable, Rx enable)
  - WR4 = 0x0C (x16 clock, 1 stop bit, no parity)
  - WR5 = 0xE8 (DTR, Tx 8 bit, Tx enable)
- **8253 licznik 1** (port 0x85): wartość 0x0014 = 20 (generator Baud rate)
- **8253 licznik 0** (port 0x84): wartość 0x9999 (timing dla FDC)
- **SIO kanał A** (port 0x80): odczyt bufora Rx

### Faza 5: Inicjalizacja IOBYTE i Page Zero
- IOBYTE (`0x0003`) = `0xD5` (konfiguracja urządzeń CP/M)
- Current disk (`0x0004`) = `0x00` (napęd A:)
- Czyszczenie obszaru roboczego `0xF000–0xF0FF`

### Faza 6: Odczyt konfiguracji sprzętowej (port 0x98)
Port 0x98 to **hardwired konfiguracja** (DIP-switch/zworki na płycie),
NIE klawiatura. Bity określają wariant sprzętowy komputera.

Odczyt maski bitów 3 i 5 (`AND 0x28`):

| Wartość | Znaczenie | Wybrana tablica | Tryb |
|---------|-----------|-----------------|------|
| 0x00 | Brak klawiszy | `DSP_CFG_DEFAULT` (0x00C9) | "11c" |
| 0x08 | Bit 3 aktywny | `DSP_CFG_MODE_A` (0x0079) | "!!@" |
| 0x20 | Bit 5 aktywny | `DSP_CFG_MODE_B` (0x00A1) | "11`" |

**Drugie sprawdzenie** — bit 6 portu 0x98 (`AND 0x40`):
- Jeśli bit 6 = 0: wykonuje dodatkową inicjalizację (`call 0x0DB7`)
- Jeśli bit 6 = 1: pomija dodatkową inicjalizację

Wybrana tablica (40 bajtów) jest kopiowana do `0xF2BF` w RAM.

### Faza 7: Sprawdzenie bufora terminala (RAM 0x8800)
Odczyt sygnatury z `0x8800–0x8801` (bufory terminala w RAM,
NIE sprzętowy RAM video — Bosman-8 używa terminala szeregowego):

**Sygnatura 0x55AA obecna → ciepły start:**
- Zachowuje zawartość buforów terminala w RAM
- Sprawdza wersję konfiguracji (`FB7B` vs `F2B0`)
- Odtwarza poprzedni stan ekranu terminala

**Brak sygnatury → zimny start:**
- Wypełnia bufory terminala znakiem `0xE5` (sigma — pusty ekran)
- Zapisuje sygnaturę `0xAA55` w `0x8800`
- Czyści flagi `FB7A`, `FB7C`

### Faza 8: Przełączenie na wektory RAM (0x044F)
Procedura `SWITCH_TO_RAM`:
1. Kopiuje trampolinę bank-switch (`ROM 0x7FE6` → `RAM 0xF060`, 10B)
2. Kopiuje trampolinę RST (`ROM 0x7FF0` → `RAM 0xF000`, 16B)
3. Nadpisuje Page Zero:
   - `0x0000`: `JP F203` (warm boot w RAM)
   - `0x0005`: `JP F006` (BDOS w RAM)
   - `0x0030`: `JP F275` (RST6 w RAM)
   - `0x0038`: `JP F272` (RST7 w RAM)

Od tego momentu system działa z RAM-owych kopii wektorów.

### Faza 9: Wybór ścieżki startu CCP
Na podstawie wartości `F437` (wynik konfiguracji sprzętowej):

**F437 < 5 — ścieżka standardowa:**
1. Wyświetla komunikat błędu RAM (jeśli test nieudany)
2. Wyświetla znak zachęty
3. Skacze do `CCP_INIT` (0x3E64)

**F437 >= 5 — ścieżka miękka (zachowanie ekranu):**
1. Wyświetla banner systemu (nagłówek "Mikrokomputer...")
2. Inicjalizuje wyświetlacz z zachowaniem kontekstu
3. Sprawdza status RAM-dysku — jeśli błąd: "RAMDYSK uszkodzony"
4. Skacze do `CCP_INIT`

### Faza 10: CCP i AUTOEXEC
Po inicjalizacji CCP (0x3E64):
- System sprawdza obecność pliku `B:AUTOEXEC`
- Jeśli plik istnieje: wykonuje go przez `CALL 0x0005` (BDOS)
- Jeśli nie: standardowy znak zachęty CP/M (`A>`)

## Warianty bootu

### Zimny start (power-on)
- RAM wyświetlacza bez sygnatury 0x55AA
- Pełne czyszczenie ekranu (wypełnienie 0xE5)
- `F437` = odczytane z hardware (< 5 dla nowego sprzętu)

### Ciepły start (reset / ^C / BDOS fn 0)
- RAM wyświetlacza zachowuje sygnaturę 0x55AA
- Ekran odtwarzany z RAM
- `F437` może być >= 5
- Szybszy boot (pomija pełną inicjalizację wyświetlacza)

### Boot z konfiguracją sprzętową (wybór typu terminala)
- DIP-switch/zworki na porcie 0x98 określają typ podłączonego terminala
- Odczyt portu 0x98 określa wybrany wariant konfiguracji
- Tryby różnią się parametrami terminala (prędkość, sekwencje ESC, wymiary)

### Boot z AUTOEXEC (dysk B:)
- Po inicjalizacji CCP system szuka `B:AUTOEXEC`
- Odpowiednik `AUTOEXEC.SUB` / `PROFILE.SUB` w innych systemach CP/M
- Automatyczne wykonanie skryptu startowego

## Komunikaty błędów bootu

| Komunikat | Adres ROM | Przyczyna |
|-----------|-----------|-----------|
| "ROM uszkodzony" | 0x021A | Błąd sumy kontrolnej EPROM |
| "RAM uszkodzony" | 0x022C | Błąd testu RAM (0x0000–0x7FFF) |
| "RAMDYSK uszkodzony" | 0x0205 | Błąd konfiguracji RAM-dysku |

## Porty używane podczas bootu

| Port | Kierunek | Opis |
|------|----------|------|
| 0x06 | OUT | Sygnalizacja błędu RAM |
| 0x07 | OUT | Wybór banku ROM |
| 0x0C | OUT | Port konsoli (szeregowej) |
| 0x0E | OUT | Bank-switching (trampolina) |
| 0x0F | OUT | Bank-switching (trampolina) |
| 0x80 | R/W | Z80-SIO — kanał A, dane |
| 0x82 | R/W | Z80-SIO — kanał A, rozkazy/status |
| 0x84 | R/W | 8253 — licznik 0 |
| 0x85 | R/W | 8253 — licznik 1 (Baud rate) |
| 0x87 | OUT | 8253 — słowo kontrolne |
| 0x88 | R/W | WD1770 FDC — rozkazy/status |
| 0x98 | IN | Konfiguracja sprzętowa (DIP-switch/zworki) |
| 0xF5 | OUT | Dodatkowy port sprzętowy |
| 0xF8 | OUT | Inicjalizacja sprzętu |
| 0xFF | OUT | Inicjalizacja sprzętu |
