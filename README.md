# Bosman-8 / CPM-R — analiza EPROM

Analiza EPROM 27256 (32KB) z komputera **Bosman-8 (DZM-180)** — polskiego mikrokomputera
opartego na **Z80A @ 4MHz**, 512KB RAM, pracującego pod systemem **CPM-R v2.5**.

CPM-R to zmodyfikowany CP/M 2.2 uruchamiany z EPROM (zamiast z dyskietki).

## Sprzęt

| Element | Specyfikacja |
|---------|-------------|
| CPU | Zilog Z80A @ 4 MHz |
| RAM | 512 KB (408 KB RAM-dysk, 60 KB TPA) |
| ROM | 27256 EPROM (32 KB) |
| Terminal | Szeregowy przez Z80-SIO kanał A (porty 0x80/0x82) |
| Interfejsy | Centronics (drukarka), V.24 — SIO-B (drugi komputer), stacje dyskietek (WD1770) |
| System | CPM-R v2.5 (zmodyfikowany CP/M 2.2) |

## Struktura projektu

```
rom/
├── Bosman8-kompatybilny_z_ANG-3001_SAJ.BIN  # plik EPROM
├── README.md                                  # ten plik
├── NOTES.md                                   # robocze notatki
├── doc/wiki/                                  # formalne znaleziska
│   ├── memory_map.md
│   ├── boot_process.md
│   ├── bdos_functions.md
│   ├── hardware.md
│   ├── disk_interlink.md
│   ├── rom_map.md
│   ├── command_d.md
│   ├── system_tools.md
│   └── emulation.md
└── src/                                       # podzielony kod asm
    ├── vectors.asm
    ├── boot.asm
    ├── bdos.asm
    ├── bios_console.asm
    ├── ccp.asm
    ├── bios_disk.asm
    ├── bios_devices.asm
    ├── bios_display.asm
    ├── bios_fdc.asm
    ├── bios_serial.asm
    ├── ram_code.asm
    ├── data_tables.asm
    └── strings.asm
```

## Narzędzia

- `z80dasm 1.1.6` — dezasembler Z80
- `yaze-ag 2.51.3` — emulator Z80/CPM
- `z88dk` — toolchain Z80 (z80asm, z80nm, itd.)
- `runcpm 6.9` — emulator CP/M

## Postęp analizy

- [x] Wstępne rozpoznanie (sygnatura, tablice skoków)
- [x] Podział ROM na 10 plików src/*.asm z adnotacjami
- [x] Opis procesu bootowania (10 faz, warianty, komunikaty)
- [x] Identyfikacja 42 funkcji BDOS (w tym 4 rozszerzenia CPM-R)
- [x] Identyfikacja układów I/O (Z80-SIO, 8253, WD1770, DIP-switch)
- [x] Terminal UI Framework (DSP_FIELD, DSP_BOX, menu konfiguracyjne)
- [x] Komunikacja między komputerami (D/E/F przez SIO-B)
- [x] Konfiguracja V.24 (Program V-24 LO/PO, tablice opcji)
- [x] Test emulacji (yaze ładuje ROM, potrzeba custom hardware)
- [x] Ekstrakcja stringów systemowych

## Główne znaleziska

### Rozszerzenia CPM-R vs CP/M 2.2
- **3 dodatkowe wektory** w Page Zero (0x0017, 0x001A, 0x001D)
- **4 rozszerzone funkcje BDOS** (38-41): stub CP/M 3 + funkcje własne
- **Terminal UI Framework** (0x266C) — silnik menu konfiguracyjnych na terminal przez ESC sekwencje (DSP_FIELD, DSP_BOX, DSP_OPTION). NIE sprzętowy wyświetlacz — Bosman-8 używa terminala szeregowego na SIO-A
- **RAM-dysk 408 KB** z własnym BIOS (SELMEM, SETBNK)
- **Polskie znaki** we własnym kodowaniu
- **AUTOEXEC z B:** (odpowiednik AUTOEXEC.SUB)
- **NMI handler** (standardowe CP/M ignoruje NMI)
- **3 warianty terminala** wybierane przez DIP-switch (port 0x98) podczas bootu

### Układy I/O
| Porty | Układ | Funkcja |
|-------|-------|---------|
| 0x80-0x83 | Z80-SIO | Szeregowy: kanał A = terminal, kanał B = łącze między komputerami |
| 0x84-0x87 | 8253 | Timer — generowanie Baud rate i timing dla FDC |
| 0x88-0x8B | WD 1770 | Kontroler stacji dyskietek |
| 0x98 | — | DIP-switch konfiguracji sprzętowej + wyjście równoległe |

### Komunikacja między komputerami (D/E/F)
- Napędy A/B = fizyczne (WD1770), C = RAM-dysk, D/E/F = zdalne przez SIO-B
- Konfiguracja V.24 przez programy w ROM: "Program. V-24 LO" (0x1979), "Program. V-24 PO" (0x1994)
- Flaga V24_READY (F267) musi być ustawiona przez program z dysku — serwer NIE jest w ROM
- Protokół: bloki 128B + checksum, timeout ~65s
- Szczegóły: `doc/wiki/disk_interlink.md`

### Jak wywołać menu konfiguracyjne
Menu V.24 i innych urządzeń jest w ROM jako podprogramy, ale **punkt startowy wymaga programu z dysku** (np. SETUP.COM). Dyspozytor menu to `0x18EF` — wywołanie: `LD B, <indeks>; LD IY, <tablica>; CALL 18EFh`. Podprogramy: V.24 LO (0x1979), V.24 PO (0x1994).
