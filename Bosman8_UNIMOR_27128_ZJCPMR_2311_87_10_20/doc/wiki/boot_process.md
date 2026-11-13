# Proces startu — 1987-10-20

Punktem wejścia jest `JP 01E4h` pod `0002h`.
Poniższy opis wynika z instrukcji listingu, bez testu wykonania.

1. Kod startowy wykonuje `OUT (07h),A`, ustawia stos na `F200h` i sumuje
   bajty `0000h–3FFFh` w akumulatorze. Pętla kończy się po ustawieniu bitu 6 H.
   Gdy suma jest zerowa, wykonuje `OUT (06h),A`. Suma badanego pliku wynosi zero.
2. Kopiuje `03CCh` bajtów z ROM `1100h` do RAM `F200h` instrukcją `LDIR`.
   Ostatni kopiowany bajt to `14CBh → F5CBh`.
3. Programuje 8253 przez port `87h` (wartości `35h`, `76h`, `B6h`) i kanał A
   Z80-SIO przez `82h`: WR3=`E1h`, WR4=`0Ch`, WR5=`EAh`.
   Do licznika 1 (`85h`) zapisuje `14 00`.
4. Inicjalizuje SIO-B przez `CALL 09BCh`, z HL=
   `F360h`. To konkretna różnica pomiędzy wersjami.
5. Ustawia IOBYTE (`0003h`) na `D5h`, bieżący dysk (`0004h`) na zero,
   czyści 256 bajtów od `F000h` i zapisuje `01h` pod `F13Ah`.
6. Odczytuje konfigurację z portu `98h`, wybiera dane terminala i przygotowuje
   obsługę dysków. Kod używa także portów WD1770 i procedur w skopiowanym RAM.
7. Wyświetla banner i komunikaty diagnostyczne. Końcowa ścieżka startu
   przechodzi do procesora poleceń pod `2250h`.

Procedura pod `03DEh` jest celem wektora `000Bh`. Nie należy podmieniać
jej adresem `044Fh` z ROM SAJ. Rozróżnienie wszystkich ścieżek zimnego/ciepłego
startu, wybór banków oraz zachowanie po błędach wymagają prześledzenia wykonania.
