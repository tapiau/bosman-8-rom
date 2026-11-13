# Mapa ROM — 1987-10-20

Wszystkie adresy ROM są offsetami w pliku przy założeniu mapowania od `0000h`.
Adresy `Fxxxh` wskazują RAM, a nie offsety w BIN.

## Główna tablica skoków

`0000h–0001h`: `25 00`. Tablica rozpoczyna się pod `0002h`.

| Offset | Bajty | Cel JP | Znaczenie |
|---|---|---|---|
| `0002h` | `C3 E4 01` | `01E4h` | start / boot |
| `0005h` | `C3 00 15` | `1500h` | BDOS |
| `0008h` | `C3 A9 0C` | `0CA9h` | rozszerzona obsługa I/O (do dalszej analizy) |
| `000Bh` | `C3 DE 03` | `03DEh` | przełączenie wektorów do RAM |
| `000Eh` | `C3 BC 09` | `09BCh` | inicjalizacja SIO-B |
| `0011h` | `C3 1C F4` | `F41Ch` | wektor do RAM |
| `0014h` | `C3 22 F4` | `F422h` | wektor do RAM |
| `0017h` | `C3 A4 0D` | `0DA4h` | obsługa konsoli |
| `001Ah` | `C3 00 00` | `0000h` | skok do 0000h |
| `001Dh` | `C3 00 00` | `0000h` | skok do 0000h |

Dodatkowe skoki: `0030h → F275h`, `0038h → F272h`, `0066h → F341h` (wektor NMI).
Pod `0025h` znajduje się pętla opóźniająca; `001Ah` i `001Dh` nie wskazują
procedur znanych z wersji SAJ, lecz `0000h`.

## Obszary

| Zakres | Zawartość |
|---|---|
| 0000h–0068h | Nagłówek, wektory, identyfikatory urządzeń |
| 0069h–01E3h | Dane terminala, banner i komunikaty startowe |
| 01E4h–10FFh | Start, obsługa sprzętu i I/O; zakres zawiera również dane |
| 1100h–14CBh | Obraz 03CCh bajtów kopiowany do F200h–F5CBh |
| 14CCh–14FFh | Obszar przed BDOS; wymaga osobnego rozpoznania |
| 1500h–224Fh | BDOS: dyspozytor, tablica funkcji i obsługa systemu plików |
| 2250h–3FFFh | Procesor poleceń, narzędzia, komunikaty i dane |

Granice funkcji poza zweryfikowanymi punktami wejścia wymagają dalszej analizy.
`2260h` (marzec) lub `2250h` (październik) jest celem skoku z końcowej ścieżki startu.
Tablica nazw komend zaczyna się pod `24AFh`; napis SUBMIT/AUTOEXEC pod `2785h`.
