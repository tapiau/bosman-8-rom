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

Trzykanałowy licznik/timer taktowany 2 MHz.

| Licznik | Port | Wartość | Tryb | Przeznaczenie |
|---------|------|---------|------|---------------|
| 0 | 0x84 | 0x9999 (39321) | Mode 2, BCD | Timing dla FDC |
| 1 | 0x85 | 20 | Mode 3, bin | SIO-A clock: 2MHz/20 = 100 kHz (terminal synchr.) |
| 2 | 0x86 | 13 (domyślnie) | Mode 3, bin | **SIO-B clock**: 2MHz/13 = 153.8 kHz (→ ~9600 baud async) |

Counter 1 (SIO-A, terminal): 2 000 000 / 20 = 100 000 Hz — tryb synchroniczny.\
Counter 2 (SIO-B, łącze międzykomputerowe/PUNCH): 2 000 000 / 13 / 16 = ~9615 baud — tryb asynchroniczny, x16.\
Wartość countera 2 jest konfigurowalna przez programy V.24 LO/PO (przechowywana w RAM F360+).

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
| `0x8800-0x8801` | Sygnatura 0x55AA (ciepły/zimny start) |
| `0x8802-0x8803` | Atrybuty terminala (reverse, bold, underline) |
| `0x8804-0x8805` | Wskaźnik do danych SIO-B (używane przez V.24) |
| `0x8806-0x8809` | Zapis HL/BC (DSP_MODE) |
| `0x8810` | Kursor X (kolumna) — zerowany przy init |
| `0x8811` | Kursor Y (wiersz) — ustawiany z napędu |
| `0x8812` | Dodatkowe flagi stanu terminala |
| `0x8814` | Aktywna strona / tryb |
| `0x8816` | Rejestr konfiguracyjny (IX-0x4E) |
| `0x8818` | Wskaźnik do nazwy pliku (parser CCP) |
| `0x881A` | Wskaźnik bufora wejścia (linia komend) |
| `0x881C-0x8825` | Bufor znaków konsoli + FCB |
| `0x8840` | Bufor roboczy |
| `0x8864` | Bazowy adres struktur terminala (IX) |
| `0x88B8-0x88C0` | Bufor AUTOEXEC (BDOS fn 10) |

Kod w 0x266C ("display attribute handler") obsługuje **sekwencje escape**
terminala (kursor, atrybuty), a nie sprzętowy kontroler wyświetlacza.

## Drukarka (Centronics)

Dokładne numery portów do ustalenia — komunikaty wskazują
na obsługę standardowego interfejsu Centronics.

## Napędy — struktury DPH/DPB

Trzy napędy skonfigurowane w ROM:

| DPH | Adres | XLT | DPB | Rozmiar | Typ |
|-----|-------|-----|-----|---------|-----|
| 0 | F27B | 0 | F2AB | 420KB (2KB bloki) | RAM-dysk |
| 1 | F28B | F2E7 | F2BF | 200KB (1KB bloki) | Floppy 5.25" |
| 2 | F29B | 0 | F2D3 | 200KB (1KB bloki) | Floppy 5.25" |

- **Współdzielony DIRBUF**: wszystkie 3 napędy używają F180 (standard CP/M)
- **CSV/ALV**: osobne dla każdego napędu (checksum i allocation vectors)
- **DPH 2** ma XLT = F2E7: tablica translacji sektorów 0..31 **bez skew** (sekwencyjna)
  - 4MHz Z80 + WD1770 DMA jest wystarczająco szybki na sektory bez przeplotu
- **DPH 1 i 3** nie mają XLT (XLT=0)

## Mapa pamięci

512 KB RAM, zarządzane przez bank switching (porty 0x04, 0x05, 0x06):

| Zakres | Zawartość |
|--------|-----------|
| `0x0000-0x00FF` | Page Zero (wektory, IOBYTE, parametry) |
| `0x0100-0xBFFF`? | TPA — do 60 KB (z bankowaniem?) |
| `0x8000-0xEFFF` | Okno RAM-dysku — 408 KB przez bank switching |
| `0xF000-0xF1FF` | Trampoliny + bufory systemowe |
| `0xF200-0xF538` | BIOS runtime (skopiowane z ROM) |
| `0xF300-0xFFFF` | Stos (top=0xF0B8), zmienne systemowe |

### Mechanizm bank switching (F30F)
- Porty: 0x04, 0x05, 0x06 (3 bity adresu → 8 kombinacji)
- 512KB / 32KB = 16 banków (4 bity?) — prawdopodobnie podział na strefy
- `RRCA / RL C / OUT (C),A` — rozkłada bity A na porty 0x04-0x06
- A=FF: specjalny tryb — odczytuje F26B dla domyślnego banku
- BIOS_SELMEM (F3DC): wybór banku dla RAM-dysku
- BIOS_SETBNK (F3E6): ustawienie numeru banku

## CPU i timing

| Element | Specyfikacja |
|---------|-------------|
| CPU | Zilog Z80A @ 4 MHz |
| ROM | 27256 EPROM (32 KB) |
| RAM | 512 KB (408 KB RAM-dysk, 60 KB TPA) |
| Przerwania | NMI (0x0066) → RAM (F341), RST 0-7 |
| Stos | 0xF0B8 (rośnie w dół) |
