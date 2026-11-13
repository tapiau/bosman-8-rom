# Notatki z analizy — 1987-03-24

## Metoda

Analiza statyczna oryginalnego BIN: rozmiar, SHA-256, suma addytywna,
wektory JP, liniowa dezasemblacja Z80, ekstrakcja ASCII i porównanie bajtów.
Pomiary i adresy odnoszą się do tego pliku, nie do wcześniejszej dokumentacji SAJ.

## Potwierdzone

- Obraz 16 KB i suma modulo 256 równa zero.
- Wektory startu, BDOS, inicjalizacji SIO-B i konsoli.
- Kopia ROM `1100h–14CBh` do RAM `F200h–F5CBh`.
- Trzy zestawy SIO-B `E1 4C EA 0D 00`.
- Tablica 41 wskaźników BDOS pod `15B1h` i limit 29h w dyspozytorze dyskowym.
- Osiem nazw poleceń oraz teksty SUBMIT/AUTOEXEC.
- Wspólny obszar BDOS obu obrazów UNIMOR.

## Do dalszej analizy

- Pełny przebieg zimnego i ciepłego startu oraz przełączanie banków.
- Znaczenie rozszerzeń BDOS 38–40 i wszystkich dodatkowych wektorów.
- Mapowanie liter napędów i parametry dysków w tym wariancie.
- Protokoły V.24 oraz ewentualna obsługa dysków zdalnych.
- Menu terminala, DEBUG, D i narzędzia plikowe.
- Kodowanie znaków i podział listingu na kod, dane oraz procedury.
- Test na sprzęcie lub emulatorze z urządzeniami Bosmana.

Adresy i opisy procedur z AGENTS.md odnoszą się głównie do SAJ; każdorazowo
należy je porównać z odpowiednim BIN UNIMOR.
