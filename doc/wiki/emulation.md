# Emulacja CPM-R

## Stan obecny

ROM ładuje się w yaze-ag (`yaze_bin -b ROM.BIN -l 0000`), ale nie
kończy bootowania — yaze przechodzi do swojego wbudowanego CP/M 3.1.

### Przyczyna
CPM-R jest ściśle związany ze sprzętem DZM-180:
- Kontroler wyświetlacza na portach `0x82-0x88` i `0x88xx`
- Własny mechanizm bank-switchingu (porty `0x06`, `0x07`, `0x0E`, `0x0F`)
- Klawiatura na porcie `0x98`
- RAM wyświetlacza mapowany w przestrzeń I/O

Yaze emuluje inny sprzęt (własny MMU, inne porty), więc kod ROM
nie może poprawnie zainicjalizować "swojego" sprzętu.

## Test ładowania ROM

```bash
# ROM ładuje się, ale boot nie kończy się:
yaze_bin -b Bosman8-kompatybilny_z_ANG-3001_SAJ.BIN -l 0000 -v

# Wynik: yaze ładuje ROM pod 0x0000, uruchamia,
# ale po nieudanym bootcie przechodzi do wbudowanego CP/M 3.1:
#   RAM: 1024 KByte, 4 KByte YAZEPAGESIZE, 256 PAGES
#   bootfile: Bosman8-kompatybilny_z_ANG-3001_SAJ.BIN
#   loadadr: 0
#   $>
```

## Co jest potrzebne do pełnej emulacji

1. **Emulator Z80 z mapowaniem pamięci:**
   - Dolne 32KB: ROM przy starcie, przełączane na RAM
   - Górne 32KB: zawsze RAM
   - Dodatkowe banki RAM (512KB) przez porty bank-switch

2. **Emulacja wyświetlacza DZM-180:**
   - Porty CRTC (0x82, 0x84, 0x85, 0x87)
   - RAM wyświetlacza (0x8800+)
   - Atrybuty znaków (0x8802, 0x8803)

3. **Emulacja klawiatury (port 0x98):**
   - Mapowanie klawiszy terminala na bity portu
   - Obsługa klawiszy konfiguracyjnych (bity 3, 5, 6)

4. **Emulacja drukarki Centronics i V.24:**
   - Wyjście na stdout lub plik

5. **Emulacja stacji dyskietek:**
   - Obrazy dysków w formacie CP/M
   - Obsługa sektorów

## Alternatywne podejścia

### Podejście 1: Modyfikacja yaze-ag
- Yaze ma modułową architekturę (MMU, key translation, window size)
- Można dodać własny moduł sprzętowy DZM-180
- Wymaga znajomości kodu yaze (cdm.c, ~40000 linii)

### Podejście 2: Uruchomienie na runcpm
- `runcpm` emuluje Z80 + CP/M na poziomie BIOS
- Można napisać własny BIOS zgodny z CPM-R
- Podstawić nasz ROM jako bazę
- Łatwiejsze niż pełna emulacja sprzętu

### Podejście 3: Analiza statyczna + testy jednostkowe
- Kontynuować analizę disasemblera
- Testować poszczególne funkcje (BDOS, BIOS) osobno
- Użyć `z80asm` do asemblacji wycinków i testowania logiki

### Podejście 4: Pełny emulator DZM-180 (np. w Pythonie)
- Napisać minimalny emulator Z80 + hardware DZM-180
- Użyć istniejącej biblioteki Z80 (np. pyz80)
- Dodać obsługę specyficznych portów

## Rekomendacja

Na tym etapie najbardziej wartościowa jest **analiza statyczna** (podejście 3).
Mamy już:
- Pełną dezasemblację podzieloną na logiczne pliki
- Zidentyfikowane funkcje CP/M i rozszerzenia CPM-R
- Udokumentowany proces bootowania
- Mapę portów I/O

Kolejnym krokiem byłoby **podejście 2** (runcpm z własnym BIOS)
lub **podejście 4** (minimalny emulator), jeśli potrzebujemy
interaktywnego uruchomienia systemu.
