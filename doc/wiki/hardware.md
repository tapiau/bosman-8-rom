# Sprzęt — mapa portów I/O i peryferia Bosman-8 (DZM-180)

## Układy scalone I/O

### Z80-SIO (Serial Input/Output) — porty 0x80-0x83

Dwukanałowy kontroler transmisji szeregowej (RS-232 / V.24).

| Port | Kierunek | Opis |
|------|----------|------|
| `0x80` | R/W | Kanał A — rejestr danych |
| `0x81` | R/W | Kanał B — rejestr danych |
| `0x82` | R/W | Kanał A — rejestr rozkazów/statusu |
| `0x83` | R/W | Kanał B — rejestr rozkazów/statusu |

Podczas bootu SIO jest inicjalizowane sekwencją przez port 0x82:
```
Rejestr 3: 0xE1
Rejestr 4: 0x0C
Rejestr 5: 0xE8
```
Komunikaty: "Program. V-24 LO" (nadawanie), "Program. V-24 PO" (odbieranie).
Obsługuje parametry: parzystość, bity stopu, dzielnik, DTR, RTS, prędkość (bod).

### 8253 Programmable Interval Timer — porty 0x84-0x87

Trzykanałowy licznik/timer, używany do generowania częstotliwości
(Baud rate dla SIO, timing dla FDC, odświeżanie wyświetlacza?).

| Port | Kierunek | Opis |
|------|----------|------|
| `0x84` | R/W | Licznik 0 |
| `0x85` | R/W | Licznik 1 |
| `0x86` | R/W | Licznik 2 |
| `0x87` | OUT | Słowo kontrolne (rejestr rozkazów) |

Podczas bootu (zegar wejściowy: 2 MHz):
```
OUT (87h), 0x35  — słowo kontrolne: konfiguracja liczników
OUT (87h), 0x76  — słowo kontrolne
OUT (87h), 0xB6  — słowo kontrolne
OUT (85h), 0x14  — licznik 1: młodszy bajt
OUT (85h), 0x00  — licznik 1: starszy bajt → wartość = 0x0014 = 20
→ 2 000 000 / 20 = 100 000 Hz dla SIO
```

**Tryb transmisji:** synchroniczny, 100 000 bod (potwierdzone schematem).

### WD 1770 Floppy Disk Controller — porty 0x88-0x8B

Kontroler stacji dyskietek.

| Port | Kierunek | Opis |
|------|----------|------|
| `0x88` | R/W | Rejestr rozkazów (WR) / statusu (RD) |
| `0x89` | R/W | Rejestr ścieżek |
| `0x8A` | R/W | Rejestr sektorów |
| `0x8B` | R/W | Rejestr danych |

Podczas bootu OUT (88h), 0xD0 może być komendą RESTORE lub FORCE INTERRUPT.

### Port konfiguracyjny — 0x98

| Port | Kierunek | Opis |
|------|----------|------|
| `0x98` | IN | "Zaszyte" informacje o konfiguracji komputera (DIP-switch/zworki) |
| `0x98` | OUT | Bufor wyjścia równoległego |

Bity odczytywane podczas bootu (maska `AND 0x28`, `AND 0x40`):
- Bit 3 (0x08): wybór trybu wyświetlacza A
- Bit 5 (0x20): wybór trybu wyświetlacza B
- Bit 6 (0x40): dodatkowa inicjalizacja sprzętowa

**To nie jest port klawiatury** — to hardwired konfiguracja sprzętowa
(zworki na płycie głównej określające wariant komputera).

## Bank-switching / kontrola ROM

| Port | Kierunek | Opis |
|------|----------|------|
| `0x06` | OUT | Sygnalizacja błędu RAM (podczas bootu) |
| `0x07` | OUT | Wybór banku ROM |
| `0x0C` | OUT | Wyjście znaku do terminala |
| `0x0E` | OUT | Bank-switching — odmapowanie ROM? (trampolina w RAM F060) |
| `0x0F` | OUT | Bank-switching — mapowanie ROM? (trampolina w RAM F060) |

## Terminal szeregowy (przez Z80-SIO)

Bosman-8 **nie ma wbudowanego wyświetlacza**. Komunikacja z użytkownikiem
odbywa się przez **terminal szeregowy** podłączony do Z80-SIO kanał A
(port 0x80 = dane, 0x82 = rozkazy/status).

**Tryb transmisji:** **synchroniczny**, 100 000 bod.
Zegar 8253: 2 MHz / 20 = 100 kHz → SIO clock.
Jest to nietypowa prędkość — standardowe UART-y nie obsługują tego trybu,
co sugeruje dedykowany terminal produkcji DZM-180.

Adresy `0x8800+` to **bufory terminala w RAM** (nie RAM video):
przechowują stan emulacji terminala — pozycję kursora, atrybuty,
zawartość ekranu w pamięci.

| Adres | Opis |
|-------|------|
| `0x8800-0x8801` | Sygnatura 0x55AA (ciepły/zimny start — zachowanie bufora) |
| `0x8802-0x8803` | Atrybuty terminala (reverse, bold, underline) |
| `0x8810` | Kursor X (kolumna) |
| `0x8811` | Kursor Y (wiersz) |
| `0x8812` | Dodatkowe flagi stanu terminala |
| `0x8814` | Aktywna strona ekranu w buforze |
| `0x8816` | Konfiguracja terminala (IX-0x4E) |
| `0x881A` | Wskaźnik bufora wejścia |
| `0x881C-0x881D` | Bufor znaków konsoli |
| `0x8864` | Bazowy adres struktur terminala (IX) |

Kod w 0x266C ("display attribute handler") obsługuje **sekwencje escape**
terminala (kursor, atrybuty), a nie sprzętowy kontroler wyświetlacza.

## Drukarka (Centronics)

Dokładne numery portów do ustalenia — komunikaty wskazują
na obsługę standardowego interfejsu Centronics.

## Mapa pamięci

| Zakres adresów | Zawartość | Uwagi |
|----------------|-----------|-------|
| `0x0000-0x00FF` | Page Zero | Wektory, IOBYTE, parametry |
| `0x0100-0x7FFF` | TPA (ok. 32KB) | Programy użytkownika |
| `0x8000-0xEFFF` | RAM-dysk / banki | 408 KB RAM-dysku |
| `0xF000-0xF1FF` | Trampoliny + bufory | Kopiowane z ROM podczas bootu |
| `0xF200-0xF538` | BIOS runtime | Skopiowane z ROM 0x2D00 |
| `0xF300-0xFFFF` | Stos i zmienne systemowe | Stack top = 0xF0B8 |

ROM (0x0000-0x7FFF) jest mapowany przy starcie, następnie przełączany
na RAM przez procedurę `SWITCH_TO_RAM` (0x044F).

## CPU i timing

| Element | Specyfikacja |
|---------|-------------|
| CPU | Zilog Z80A @ 4 MHz |
| ROM | 27256 EPROM (32 KB) |
| RAM | 512 KB (408 KB RAM-dysk, 60 KB TPA) |
| Przerwania | NMI (0x0066) → RAM (F341), RST 0-7 |
| Stos | 0xF0B8 (rośnie w dół) |
