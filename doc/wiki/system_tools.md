# Narzędzia systemowe CPM-R (0x4A00-0x7000)

Obszar ~10 KB zawierający dodatkowe programy i narzędzia.

## Archiwizator/kompresja (0x4E00-0x5200, 0x5380-0x5450, 0x6000-0x6700)

Własny format kompresji plików. Wielofazowy pipeline:

### Fazy przetwarzania
1. **analiza** (0x538D) — analiza pliku wejściowego, budowa słownika
   - Wywołuje podprocedury: 0x5EF0, 0x5F3B, 0x6025, 0x607B, 0x60F2
2. **^ciskanie** (0x53B2) — właściwa kompresja
3. **skopiowany** (0x54A3) — plik wynikowy gotowy

### Algorytm dekompresji LZSS (0x63C6)
- **Sliding window**: 0xA800-0xABFF (~1KB)
- **LDDR** (0x6413): kopiowanie z overlapem (backwards copy = safe dla sliding window)
- **Token dispatch** (0x5CF9): 16 typów tokenów, tablica skoków w 0x5D15
  - Literały: `bit 2,h; jr nz; ld a,(hl); inc hl` — kopiowanie bajt po bajcie
  - Referencje: odczytuje (offset, length) → kopiuje z okna przez `add hl,bc`
  - Specjalne: EOF, reset słownika, itp.
- **Slide** (0x63FE): gdy okno pełne, przesuwa dane przez LDDR
- Bufory robocze: B71C (wskaźnik okna), B71E (flaga), 8880h (typ tokenu)
- Format pliku: nagłówek + tablica dekodująca + dane + checksum

### Walidacja (0x6200-0x6400)
- Sprawdzenie nagłówka: "to nie jest 'ściśnięty' plik"
- Weryfikacja tablicy dekodującej: "Błędna tablica dekodująca"
- "Plik jest pusty" — plik wejściowy bez danych
- "Brakuje danych na pliku" — niekompletny plik
- Suma kontrolna bloków (ADD A,B → LD B,A)

### Format pliku
- Nagłówek z sygnaturą (weryfikowany przed dekompresją)
- Tablica dekodująca (słownik/wzorce)
- Dane skompresowane
- Suma kontrolna na końcu

### Użycie
Prawdopodobnie wywoływane przez program .COM (ARCH.COM? CRUNCH.COM?)
lub z linii poleceń CCP.

## Zarządzanie plikami (0x6700-0x6A00)

### Zmiana nazwy (0x6764)
- "Nowa nazwa :" — nowa nazwa pliku
- "Podaj nazwę :" — wybór pliku

### Klucz / szyfrowanie (0x6786)
- "Podaj klucz :" — wpisanie klucza szyfrowania
- Prawdopodobnie XOR lub proste szyfrowanie plików
- Klucz może być używany też przez archiwizator

### Kopia pliku (0x67CC)
- "kopia na plik :" — plik docelowy
- Kopiowanie z buforowaniem

## Użytkownicy (0x6881)
- "użytkownik :" (CP/M USER — numery 0-15)
- Walidacja: 0-9 (CP/M standard)
- Wywołuje BDOS fn 32 (F_USERNUM)

## Opcje dyskowe (0x67F2)
- "opcja (R, S, U) lub napęd:" — R=odczyt, S=zapis?, U=użytkownik?
- "opcja (U) lub napęd:" — wybór napędu

## SUBMIT / COMSUB (0x428D-0x429A)
- Komenda "COMSUB" — wbudowany handler CCP
- Wzorzec pliku: `$$$     SUB` (0x4724)
- Przetwarza batch file: kopiuje blok 0x0C00 bajtów, wykonuje linie
- Po zakończeniu: `JP 0x3EBF` (powrót do pętli CCP)
- Komunikat błędu: ".jNie istnieje plik 'SUB'$" (0x4051)

## RAM-dysk — zarządzanie (0x5BA0-0x5C00)
- "Plik{w: $" — wyświetla nazwę pliku
- "Pozosta|o: $" — wyświetla wolne miejsce
- Odczytuje dane z 0x8868 (nazwa?) i 0x8899 (liczniki?)
- Wywołuje BDOS fn 1B (DRV_ALLOC) do sprawdzenia alokacji

### DPB RAM-dysku (F2AB):
- Bloki 2KB (BSH=4, BLM=0x0F, EXM=1)
- DSM=209 → 210 bloków = **420KB** brutto (~408KB netto deklarowane)
- DRM=127 → max 128 wpisów katalogu
- SPT=240 (nieużywane — RAM-dysk nie ma fizycznej geometrii)

### DPB stacji fizycznej (F2BF):
- Bloki 1KB (BSH=3, BLM=0x07, EXM=0)
- SPT=40, ~40 ścieżek → **200KB** (5.25" DS/DD? lub SS/DD)
- DSM=199 → 200 bloków, DRM=63 → 64 wpisy katalogu

### Zwolnienie banku RAM (0x554F):
- ".jCzy zwolnić bank 1$" — pyta użytkownika (T/N)
- 'T' → `LD A,FFh; CALL CONSOLE; CALL 0647Eh; JP 4E55h`
- Zwalnia pamięć RAM-dysku, przywraca do puli systemowej
- Używane gdy RAM-dysk nie jest potrzebny (więcej TPA)

## Drukowanie w tle — szczegóły (0x4989-0x4A40, 0x5740-0x5800)
- Flaga w F26B bit 2: "Włączone drukowanie w tle"
- Bufor: plik LO#.PRN (0x4A0A — ".jZ = zakończ plik LO#.PRN")
- Program Drukarki (0x247E-0x266C) — 7 opcji:
  1. "Czy zatrzymać drukowanie w tle" (IY=251Fh)
  2. "Drukarka wyłączona" (IY=2545h)  
  3. "Czy w tekście używa się `@^~]}{[|\`" — polskie znaki (IY=2612h)
  4. "Czy zerować bit podczas drukowania" — HIGH bit stripping
  5. "Czy wysyłać znak TAB do drukarki"
  6. "Wyjście do systemu" — exit
- "Znaki do drukarki" (0x23C6): tryb interaktywny, Ctrl+Z=koniec
- "Pisz znaki do drukarni" (0x2411): z formatowaniem

## Zwolnienie dysków D E F (0x6910)
- ".j Zwolnienie dysków D E F $" — komunikat
- Procedura 0x69A0: zwalnia/odmontowuje napędy zdalne
- Używane przy przełączaniu konfiguracji łącza V.24
- Po zwolnieniu: napędy D/E/F niedostępne do ponownej konfiguracji

## Kopia ekranu — szczegóły (0x1CC8-0x1E2C)

Interaktywne narzędzie do przechwytywania zawartości terminala do pliku.

### Sterowanie:
| Klawisz | Funkcja |
|---------|---------|
| Ctrl+E (05h) | Przesuń obszar w górę |
| Ctrl+X (18h) | Przesuń obszar w dół |
| Ctrl+S (13h) | Przesuń obszar w lewo |
| Ctrl+D (04h) | Przesuń obszar w prawo |
| Enter (0Dh) | Zatwierdź i zapisz do pliku |
| ESC (1Bh) | Anuluj |

### Algorytm:
1. Wyświetla ramkę z '?' wokół obszaru
2. Rotacja buforów co 200ms dla migającego kursora
3. B112-B114: współrzędne obszaru (X, Y, szerokość?)
4. Krok przesunięcia: ±8 jednostek
5. Po zatwierdzeniu: zapisuje bufor terminala (0x8800+) do pliku

## Inne narzędzia
- ".jrandom$" (0x52E5) — generowanie losowych nazw/danych
- "RND$" (0x6AB0) — RANDOM/procedura losowa
- "koniec" (0x6997) — znacznik końca listy/pętli
- "Nowa nazwa :" / "Podaj nazwę :" — rename (0x6764/0x67A9)
- "kopia na plik :" — copy to file (0x67CC)
