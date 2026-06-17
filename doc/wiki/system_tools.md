# Narzędzia systemowe CPM-R (0x4A00-0x7000)

Obszar ~10 KB zawierający dodatkowe programy i narzędzia.

## Archiwizator/kompresja (0x4E00-0x5200, 0x5380-0x5450, 0x6000-0x6700)

Własny format kompresji plików. Wielofazowy pipeline:

### Fazy przetwarzania
1. **analiza** (0x538D) — analiza pliku wejściowego, budowa słownika
   - Wywołuje podprocedury: 0x5EF0, 0x5F3B, 0x6025, 0x607B, 0x60F2
2. **^ciskanie** (0x53B2) — właściwa kompresja
3. **skopiowany** (0x54A3) — plik wynikowy gotowy

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

## Inne narzędzia
- ".jrandom$" (0x52E5) — generowanie losowych nazw/danych
- "Zakończ plik LO#.PRN" (0x4A0A) — zamknięcie bufora wydruku
- "Zwolnienie dysków D E F" (0x6910) — zarządzanie napędami zdalnymi
- "RND$" (0x6AB0) — prawdopodobnie RANDOM/procedura losowa
- "koniec" (0x6997) — znacznik końca listy/pętli
