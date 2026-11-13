# Sprzęt i I/O — 1987-10-20

Nazwy układów pochodzą z referencji sprzętowej repozytorium. Użycie portów
`82h`, `85h`, `87h`, `98h` oraz `88h` w starcie potwierdza listing tego ROM.

| Porty | Układ | Rola |
|---|---|---|
| 80h / 82h | Z80-SIO A | Dane / sterowanie terminala |
| 81h / 83h | Z80-SIO B | Dane / sterowanie V.24 |
| 84h–87h | 8253 | Liczniki i rejestr sterujący |
| 88h–8Bh | WD1770 | Sterowanie stacją dyskietek |
| 98h | Port konfiguracji / równoległy | Odczyt DIP-switch w starcie |


## SIO-B

Wektor `000Eh` prowadzi do inicjalizacji pod `09BCh`. Procedura zapisuje
rejestry SIO-B i licznik 2 przez port `86h`.

Trzy zestawy danych pod ROM `1260h`, `1265h`, `126Ah` są identyczne:

```text
E1 4C EA 0D 00
```

Po skopiowaniu obrazu BIOS trafiają odpowiednio pod `F360h`, `F365h`, `F36Ah`.
Format: WR3, WR4, WR5, młodszy i starszy bajt licznika 2.
WR4=`4Ch` oznacza dzielnik ×16, dwa bity stopu, bez parzystości.
Przy zegarze 2 MHz i liczniku 13 szybkość wynosi około 9615 bodów.
Zegar 2 MHz jest założeniem sprzętowym z referencji, nie pomiarem obrazu ROM.

Kanał A ma w starcie WR4=`0Ch` (tryb ×1), a licznik 1 wartość 20.
Nie należy interpretować `0Ch` jako ×16.
Obsługa konsoli wskazana wektorem `0017h` zaczyna się pod `0DA4h`.
Identyfikatory `DZM-180`, `is. V24`, `CENTRONICS` są obecne w nagłówku;
`ANC-4512` pod `132Bh`, `R1152 - V24` pod `1406h`.
