# Komenda "D" — Directory Lister

Wbudowana komenda CCP (nie program .COM), handler pod adresem **0x446C**.

## Działanie

Wyświetla listę plików na dysku w formacie 4-kolumnowym.

### Składnia

```
D [wzorzec]
```

- **Bez argumentu**: wyświetla wszystkie pliki (wypełnia bufor wildcardami `?`)
- **Z wzorcem**: filtruje według podanego wzorca, np. `D *.COM`

### Przykład wyjścia

```
A: NAZWA   COM  B: PLIK    TXT  A: PROGRAM COM  A: DANE    DAT
```

Format: 4 pliki na wiersz, każdy pokazany jako `NAPĘD: NAZWA.TYP`.

## Algorytm

1. **PARSE_ARGS (0x430A)** — parsuje linię komend z bufora terminala
   - Sprawdza prefix napędu (litera + `:`)
   - Konwertuje nazwę na uppercase (0x2CF7)
   
2. **Brak argumentów** → SHOW_HELP (0x550E)
   - Wypełnia 11 bajtów znakiem `?` (0x3F) — wildcard "wszystkie pliki"

3. **SEARCH_LOOP**:
   - `F_SFIRST` (BDOS fn 11h) przez 0x64F9 — znajdź pierwszy pasujący plik
   - Wynik zapisywany w 0x8813 (atrybuty/flagi)

4. **DISPLAY** (4 kolumny):
   - Litera napędu (z 0x6483) + `:`
   - Nazwa pliku (max 8 znaków, z 0x47A6 przez bufor 0x8A80)
   - Na pozycji 9: separator (kropka przy rozszerzeniu)
   - Rozszerzenie (max 3 znaki)
   - Licznik E mod 4 = 0 → nowa linia

5. **KEYBOARD CHECK** (0x47B0):
   - `C_STAT` (BDOS fn 0Bh) — sprawdza czy klawisz wciśnięty
   - **Każdy klawisz PRZERYWA listowanie!** → powrót do CCP

6. **NEXT FILE**:
   - `F_SNEXT` (BDOS fn 12h, C=12h) przez 0x64E9
   - Jeśli brak więcej plików → komunikat "Brak pliku" (0x450A)
   - Powrót do CCP (JP 3F37h)

## Procedury

| Adres | Nazwa | Opis |
|-------|-------|------|
| 0x446C | D_CMD | Entry point |
| 0x430A | PARSE_ARGS | Parsowanie argumentów (drive:name.type) |
| 0x550E | FILL_WILDCARD | Wypełnienie 11 bajtów '?' (0x3F) |
| 0x64F9 | SEARCH_FIRST | BDOS fn 11h (F_SFIRST) |
| 0x64E9 | BDOS_WRAPPER | CALL 0005h, zapisanie wyniku do 0x8813 |
| 0x47A6 | GET_FNAME_CHAR | Odczyt znaku nazwy z bufora 0x8A80 |
| 0x47B0 | CHECK_KEY | Sprawdzenie klawisza (C_STAT → C_DIRIO) |
| 0x69B6 | DISP_CHAR | Wyświetlenie znaku na terminalu |
| 0x69B4 | DISP_SPACE | Wyświetlenie spacji |
| 0x450A | SHOW_NOFILE | Komunikat "Brak pliku" |

## Tryb interaktywny — SUB-MODE

Naciśnięcie klawisza podczas listowania **nie przerywa** programu — wchodzi w **tryb interaktywny** (SUB-MODE):

1. Kod klawisza zapisywany w `F416` (flaga trybu)
2. Stan systemu zachowywany: flagi (F26B → F417), bank (F30F), stos (893Bh)
3. Wywoływany dispatcher **0x5B5F** — przetwarza komendę
4. Po wykonaniu: przywracanie stanu, powrót do listowania

### Obszar statusu
Sub-komendy używają dolnych linii terminala (wiersze 21-22, współrzędne `ESC = Y X`):
- Wiersz 21 (0x1500): informacje o pliku
- Wiersz 22 (0x1602): linia komend / status

### Dostępne operacje (komendy literowe A-Z)

Dispatcher klawiszy w 0x5660 filtruje znaki: `CP 'A' / CP 'Z'+1` → tylko litery A-Z.
Każda litera wywołuje inną funkcję przez `CALL 5C67h`.

Zidentyfikowane w kodzie:
- **Litery A-Z**: operacje na plikach (kopiowanie, kasowanie, weryfikacja, etc.)
- **ESC (1Bh)**: wyjście z SUB-MODE, powrót do listowania (JP 4ECFh)
- **Inne klawisze**: ignorowane (XOR A)

Dodatkowe mechanizmy:
- **Nawigacja** po liście plików (klawisze kursora?)
- **Zaznaczanie** plików (marking przez spację?)
- **Kopiowanie** plików (litera 'K'?)
- **Weryfikacja** plików (checksum, litera 'W'?)
- **Ustawienia drukarki** (dostępne podczas przeglądania)
- **Kasowanie** plików
- Wyświetlanie informacji o pliku (rozmiar, atrybuty, 0x5B5F)
- Wyświetlanie wolnego miejsca na dysku (BDOS fn 1Bh, 0x5BD4)

### Struktura danych — lista plików

D przechowuje listę plików w RAM-owej tablicy:

- **0x8C00**: baza tablicy wpisów
- **Każdy wpis**: 20 bajtów (0x14) — obliczane przez `HL = 8C00h + index * 20` (0x5C79)
- **0x886C**: indeks aktualnie wybranego pliku (kursor)
- **0x8868**: całkowita liczba plików
- **0x8874**: dodatkowa flaga

Format wpisu (20 bajtów):
- +0..+10: nazwa pliku (8+3, prawdopodobnie zakończone atrybutem)
- +11..+19: rozmiar, atrybuty, numer pierwszego bloku

## Zmienne SUB-MODE
| Adres | Znaczenie |
|-------|-----------|
| F416 | Flaga trybu (0=listing, !=0=sub-mode, kod klawisza) |
| F417 | Kopia flag systemowych (F26B) |
| 8868 | Liczba plików / pozycja kursora |
| 886C | Aktualna pozycja na liście |
| 886F | Maksymalna pozycja |
| 8878-887A | Zmienne robocze (zerowane przy wejściu) |
| 893Bh | Zapisany stos |
| 8A80 | Bufor nazwy pliku |

## Cechy

- **Interactive SUB-MODE**: klawisze nie przerywają — wykonują operację i wracają
- **4-kolumnowy format**: oszczędza miejsce na ekranie
- **Wildcard support**: `?` jako znak wieloznaczny
- **Drive prefix**: pokazuje z którego napędu jest plik
- **Wbudowane w ROM**: nie wymaga pliku .COM, działa natychmiast
- **Wielofunkcyjny**: nawigacja, kopiowanie, weryfikacja, drukowanie

## Porównanie z DIR

CPM-R ma DWIE komendy do listowania plików:
- **DIR** — standardowe CP/M (prosty listing)
- **D** — rozbudowany file manager (listing + sub-operacje)

Obie są wbudowane w CCP (tablica komend 0x4432). "D" to prawdopodobnie najbardziej rozbudowana wbudowana komenda CPM-R.
