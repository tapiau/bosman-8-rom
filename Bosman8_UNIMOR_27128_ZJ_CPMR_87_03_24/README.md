# Bosman-8 / UNIMOR — CPM/R v2.5 (1987-03-24)

Dokumentacja obrazu EPROM **27128, 16 KB**: [Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN](../Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN).
Nazwa katalogu odpowiada nazwie BIN bez rozszerzenia; oryginał pozostaje w katalogu głównym repozytorium.

## Identyfikacja

- Rozmiar: **16384 bajtów**, offsety `0000h–3FFFh`.
- SHA-256: `f3a8d202f76266023a238380c76c34d721ed85ce88d6a223995dce52e60b6a0b`.
- Początek: `25 00`; wektor pod `0002h` prowadzi do `01B2h`.
- Banner pod `00F3h` zawiera `CPM/R v2.5` i deklaruje TPA 60 KB.
- Data w nazwie pliku: **1987-03-24**. Bajty `0021h–0024h`: `19 87 03 24` — zgodne z zapisem roku, miesiąca i dnia w BCD; interpretacja daty jest wnioskiem.
- Suma wszystkich bajtów modulo 256: **00h**.
- Banner zawiera identyfikator `v Z80/1`.

## Zawartość katalogu

- [Mapa ROM i wektory](doc/wiki/rom_map.md)
- [Proces startu](doc/wiki/boot_process.md)
- [Sprzęt i transmisja szeregowa](doc/wiki/hardware.md)
- [Dyspozytor i tablica BDOS](doc/wiki/bdos_functions.md)
- [Polecenia i narzędzia](doc/wiki/system_tools.md)
- [Porównanie wersji](doc/wiki/versions.md)
- [Odtwarzanie analizy i emulacja](doc/wiki/emulation.md)
- [Notatki i zakres weryfikacji](NOTES.md)
- [Surowa dezasemblacja Z80](src/rom.asm)
- [Ciągi ASCII z offsetami](src/strings.tsv)

## Zakres analizy

Adresy i bajty opisane jako potwierdzone odczytano z tego obrazu. Dokumentacja
32 KB SAJ jest materiałem porównawczym; jej adresów procedur nie należy tutaj
stosować. Listing jest liniową dezasemblacją, zawiera również dane interpretowane
jako instrukcje i nie jest gotowym źródłem do ponownego złożenia ROM.
Nie przeprowadzono uruchomienia na sprzęcie ani testu pełnej emulacji.
