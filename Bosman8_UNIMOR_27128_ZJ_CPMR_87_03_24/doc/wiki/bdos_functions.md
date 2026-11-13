# BDOS — 1987-03-24

Wektor `0005h` zawiera `JP 1500h`. Numer funkcji podaje się w C,
parametr w DE zgodnie z konwencją CP/M. Nazwy funkcji 0–37 poniżej są nazwami
standardowymi; tablicę celów odczytano bezpośrednio z ROM.

Dyspozytor rozdziela funkcje poniżej 13 i funkcje dyskowe. Zapisuje SP
pod `F05Eh` lub `F054h`, używa stosów `F160h` i `F180h`.
Ścieżka dyskowa pod `1581h` sprawdza `CP 29h; RET NC`, dopuszczając numery
0–40. Tablica pod `15B1h` zawiera 41 wskaźników little-endian.
Nie należy przenosić liczby funkcji ani tablicy `30E0h` z wersji SAJ.

| Funkcja dec / hex | Nazwa / status | Offset wskaźnika | Cel |
|---|---|---|---|
| 0 / 00h | P_TERMCPM | 15B1h | F203h |
| 1 / 01h | C_READ | 15B3h | 1603h |
| 2 / 02h | C_WRITE | 15B5h | 161Fh |
| 3 / 03h | C_RAWIO / reader | 15B7h | 16A1h |
| 4 / 04h | C_PUNCH | 15B9h | F212h |
| 5 / 05h | C_LIST | 15BBh | F20Fh |
| 6 / 06h | C_DIRIO | 15BDh | 16A7h |
| 7 / 07h | C_GETIOBYTE | 15BFh | 16D5h |
| 8 / 08h | C_SETIOBYTE | 15C1h | 16DEh |
| 9 / 09h | C_WRITSTR | 15C3h | 16E3h |
| 10 / 0Ah | C_READSTR | 15C5h | 16F3h |
| 11 / 0Bh | C_STAT | 15C7h | 1802h |
| 12 / 0Ch | C_VER | 15C9h | 1809h |
| 13 / 0Dh | DRV_RESET | 15CBh | 180Dh |
| 14 / 0Eh | DRV_SELECT | 15CDh | 1825h |
| 15 / 0Fh | F_OPEN | 15CFh | 1906h |
| 16 / 10h | F_CLOSE | 15D1h | 194Ah |
| 17 / 11h | F_SFIRST | 15D3h | 19EEh |
| 18 / 12h | F_SNEXT | 15D5h | 1A0Dh |
| 19 / 13h | F_DELETE | 15D7h | 1A26h |
| 20 / 14h | F_READ | 15D9h | 1A52h |
| 21 / 15h | F_WRITE | 15DBh | 1A97h |
| 22 / 16h | F_MAKE | 15DDh | 1BDCh |
| 23 / 17h | F_RENAME | 15DFh | 1C1Eh |
| 24 / 18h | DRV_LOGVEC | 15E1h | 1C49h |
| 25 / 19h | DRV_CUR | 15E3h | 1C4Eh |
| 26 / 1Ah | F_DMA | 15E5h | 1C54h |
| 27 / 1Bh | DRV_ALLOC | 15E7h | 1C65h |
| 28 / 1Ch | DRV_SETRO | 15E9h | 1C6Ah |
| 29 / 1Dh | DRV_ROVEC | 15EBh | 1C80h |
| 30 / 1Eh | F_ATTR | 15EDh | 1C85h |
| 31 / 1Fh | DRV_DPB | 15EFh | 1C9Fh |
| 32 / 20h | F_USERNUM | 15F1h | 1CA6h |
| 33 / 21h | F_RNDREAD | 15F3h | 1CB9h |
| 34 / 22h | F_RNDWRITE | 15F5h | 1CC6h |
| 35 / 23h | F_SIZE | 15F7h | 1CD3h |
| 36 / 24h | F_RNDREC | 15F9h | 1D1Bh |
| 37 / 25h | DRV_RESET2 | 15FBh | 1D2Eh |
| 38 / 26h | rozszerzenie / do analizy | 15FDh | 1D4Eh |
| 39 / 27h | rozszerzenie / do analizy | 15FFh | 1D4Eh |
| 40 / 28h | rozszerzenie / do analizy | 1601h | 1D4Fh |

Adresy `Fxxxh` odwołują się do kopii BIOS w RAM. Sama pozycja w tablicy
nie potwierdza pełnej zgodności implementacji ze standardem CP/M.
Znaczenie rozszerzeń 38–40 wymaga osobnej analizy ich kodu.
