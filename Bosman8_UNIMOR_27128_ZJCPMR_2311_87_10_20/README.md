# Bosman-8 / UNIMOR — CPM/R v2.5 (1987-10-20)

Dokumentacja obrazu EPROM **27128, 16 KB**: [Bosman8_UNIMOR_27128_ZJCPMR_2311_87_10_20.BIN](../Bosman8_UNIMOR_27128_ZJCPMR_2311_87_10_20.BIN).
Nazwa katalogu odpowiada nazwie BIN bez rozszerzenia; oryginał pozostaje w katalogu głównym repozytorium.

## Identyfikacja

- Rozmiar: **16384 bajtów**, offsety `0000h–3FFFh`.
- SHA-256: `fb087b31ae942f8664a307a07cd70d05e9a121c8f83047afdb982efd94b7965e`.
- Początek: `25 00`; wektor pod `0002h` prowadzi do `01E4h`.
- Banner pod `0103h` zawiera `CPM/R v2.5` i deklaruje TPA 60 KB.
- Data w nazwie pliku: **1987-10-20**. Bajty `0021h–0024h`: `19 87 09 30` — zgodne z zapisem roku, miesiąca i dnia w BCD; interpretacja daty jest wnioskiem.
- Suma wszystkich bajtów modulo 256: **00h**.
- Banner zawiera identyfikator `BOSMAN 8 - 2311`.

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
