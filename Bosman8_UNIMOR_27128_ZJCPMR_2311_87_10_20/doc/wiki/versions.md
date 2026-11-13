# Porównanie obrazów

Porównano oba pliki UNIMOR po 16384 bajty oraz obraz SAJ o rozmiarze 32768 bajtów.

| Cecha | UNIMOR 1987-03-24 | UNIMOR 1987-10-20 | SAJ |
|---|---|---|---|
| Rozmiar | 4000h | 4000h | 8000h |
| Start (wektor 0002h) | 01B2h | 01E4h | 0255h |
| BDOS (wektor 0005h) | 1500h | 1500h | 3038h |
| Przełączenie wektorów (000Bh) | 03A7h | 03DEh | 044Fh |
| Init SIO-B (000Eh) | 0985h | 09BCh | 1487h |
| Konsola (0017h) | 0D12h | 0DA4h | 0E80h |
| Wektor 001Ah | JP 0000h | JP 0000h | JP 00F1h |
| Wektor 001Dh | JP 0000h | JP 0000h | JP 266Ch |
| Źródło obrazu BIOS | 1100h | 1100h | 2D00h |


## Różnice UNIMOR

Przy porównaniu tych samych offsetów różni się **11577 bajtów**.
To liczba różnic pozycyjnych, nie liczba zmienionych instrukcji: przesunięcia
kodu zwiększają ten wynik.

Obszar `14E9h–224Fh` (3431 bajtów, w tym BDOS) jest identyczny bajt w bajt.
Jednak wcześniejszy kod I/O i późniejsze narzędzia mają różnice i przesunięcia.
Wersja marcowa inicjalizuje SIO-B z `F36Ah`, październikowa z `F360h`;
domyślne dane obu slotów są identyczne.

Banner marcowy zawiera `v Z80/1`, październikowy `BOSMAN 8 - 2311`.
Oba deklarują CPM/R v2.5 oraz TPA 60 KB. Deklaracja w bannerze nie stanowi
pomiaru rzeczywiście dostępnej pamięci programu.

ROM SAJ nie jest prostym obrazem 16 KB z dodatkowym wypełnieniem.
Odrębne adresy BIOS, BDOS i wektory wymagają analizy każdej wersji osobno.
