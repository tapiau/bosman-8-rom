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
| Wyświetlacz | DZM-180 (kontroler przez porty 0x88xx) |
| Interfejsy | Centronics (drukarka), V.24 (szeregowy), stacje dyskietek |
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
│   └── emulation.md
└── src/                                       # podzielony kod asm
    ├── vectors.asm
    ├── boot.asm
    ├── bdos.asm
    ├── bios_console.asm
    ├── bios_disk.asm
    ├── bios_display.asm
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
- [x] Podział ROM na 8 plików src/*.asm z adnotacjami
- [x] Opis procesu bootowania (10 faz, warianty, komunikaty)
- [x] Identyfikacja 42 funkcji BDOS (w tym 4 rozszerzenia CPM-R)
- [x] Identyfikacja rozszerzeń CPM-R (display, RAM-dysk, dodatkowe BIOS)
- [x] Test emulacji (yaze ładuje ROM, potrzeba custom hardware)
- [x] Dokumentacja portów I/O i sprzętu
- [x] Ekstrakcja stringów systemowych

## Główne znaleziska

### Rozszerzenia CPM-R vs CP/M 2.2
- **3 dodatkowe wektory** w Page Zero (0x0017, 0x001A, 0x001D)
- **4 rozszerzone funkcje BDOS** (38-41): stub CP/M 3 + funkcje własne
- **Obsługa wyświetlacza DZM-180** (atrybuty, pozycjonowanie, porty 0x88xx)
- **RAM-dysk 408 KB** z własnym BIOS (SELMEM, SETBNK)
- **Polskie znaki** we własnym kodowaniu
- **AUTOEXEC z B:** (odpowiednik AUTOEXEC.SUB)
- **NMI handler** (standardowe CP/M ignoruje NMI)
- **3 tryby wyświetlacza** wybierane klawiszami podczas bootu
