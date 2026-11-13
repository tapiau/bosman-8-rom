# Procesor poleceń i narzędzia — 1987-03-24

Start przekazuje sterowanie do `2260h`. W obszarze procesora poleceń
widać obsługę promptu, wywołania procedur plikowych i komunikaty błędów.

## Polecenia

Pod `24BFh` znajduje się osiem kolejnych nazw po pięć bajtów:

```text
DIR  ERA  TYPE SAVE REN  USER DEBUGD    
```

Są to DIR, ERA, TYPE, SAVE, REN, USER, DEBUG oraz D.
To tablica nazw; adresów handlerów nie należy wyprowadzać z samego tekstu.
Funkcje DIR/ERA/TYPE/SAVE/REN/USER odpowiadają nazwom znanym z CP/M;
szczegółowe zachowanie DEBUG i D wymaga analizy wywołań.

Pod `2781h` znajduje się `B:SUBMIT B:AUTOEXEC`. Potwierdza to obecność
nazw plików w ROM; szczegółowa kolejność ich otwierania i wykonywania pozostaje
do zweryfikowania.

## Pozostałe ślady funkcjonalności

W [ekstrakcji tekstów](../../src/strings.tsv) występują komunikaty operacji
na atrybutach i plikach: `Atrybuty:`, `Plik R/O`, `Brak miejsca`, `skopiowany`,
a także tekst dotyczący drukowania. Są to wskazówki do analizy narzędzi,
nie dowód pełnej zgodności z narzędziami wersji SAJ.

Kodowanie polskich znaków nie zostało rozpoznane. Ekstrakcja zachowuje wyłącznie
ciągi drukowalnego ASCII (co najmniej osiem znaków), więc część polskich słów
jest podzielona, a niektóre znaki graficzne mogą występować zamiast liter.
