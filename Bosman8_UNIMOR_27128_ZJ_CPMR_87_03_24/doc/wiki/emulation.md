# Odtwarzanie analizy i emulacja

## Listing

Z katalogu głównego repozytorium, z zainstalowanym `z80dasm`:

```sh
z80dasm -a -t -g 0 Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN > Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24/src/rom.asm
sha256sum Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN
```

Dołączony listing wygenerowano z80dasm 1.1.6. Komentarze zawierają offsety
i bajty wejściowe. Narzędzie ostrzega o możliwej niezgodności z 8080;
obraz zawiera instrukcje Z80, m.in. LDIR i operacje indeksowane.
Dane również są dezasemblowane jako kod. Przed reassemblacją należy rozdzielić
kod i dane oraz uwzględnić relokację BIOS do RAM.

## Weryfikacja sumy

```sh
python3 -c "from pathlib import Path; b=Path('Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN').read_bytes(); print(len(b), hex(sum(b) & 255))"
```

Oczekiwany wynik: `16384 0x0`. Suma addytywna to kontrola zgodna z pętlą
startową; do identyfikacji pliku służy SHA-256 podany w README.

## Uruchomienie

Nie wykonano próby uruchomienia tego wariantu. Sam emulator CPU Z80 lub
standardowy emulator CP/M nie odtwarza automatycznie sprzętu Bosmana.
Pełny start wymaga obsługi mapowania ROM/RAM, przełączania banków, SIO,
8253, terminala oraz WD1770. Skopiowany BIOS musi być wykonywalny pod `F200h`.
Nie ma podstaw, by przenosić wynik testu emulatora dla SAJ na ten obraz.
