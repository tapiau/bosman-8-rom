# Komunikacja między komputerami — napędy D/E/F

## Sprzęt

Z80-SIO ma dwa kanały:
- **Kanał A** (porty 0x80/0x82): terminal operatorski
- **Kanał B** (porty 0x81/0x83): łącze do drugiego komputera (V.24/RS-232)

## Mapowanie napędów

| Litera | Indeks | Typ |
|--------|--------|-----|
| A: | 0 | Stacja fizyczna (WD1770) |
| B: | 1 | Stacja fizyczna (WD1770) |
| C: | 2 | RAM-dysk (lokalny) |
| D: | 3 | **Przekierowanie przez SIO-B** |
| E: | 4 | **Przekierowanie przez SIO-B** |
| F: | 5 | **Przekierowanie przez SIO-B** |

## Procedura dostępu do D/E/F

Kod w `boot.asm` (0x0476-0x0560), wywoływany przy każdej operacji dyskowej:

### 1. Klasyfikacja napędu
```asm
    ld a, c            ; C = numer napędu
    cp 6               ; max 6
    jp nc, error       ; nieprawidłowy
    cp 3               ; < 3?
    jp c, local_disk   ; A/B/C → obsługa lokalna
```

### 2. Sprawdzenie dostępności łącza
```asm
    ld a, (F267)       ; flaga: V.24 skonfigurowane?
    or a
    jp z, local_disk   ; jeśli nie → fallback lokalny

    ld a, (F268)       ; status łącza
    and 0C0h           ; bity 7-6: zajętość
    jp nz, err_busy    ; łącze zajęte → błąd
```

### 3. Pytanie do operatora
Wyświetla komunikat: **"Odwołanie do dysku w D E F - docelowy (D) rezygnuj (R) ?"**

- **(D)ocelowy** — przekieruj operację na drugi komputer
- **(R)ezygnuj** — anuluj operację

### 4. Wykonanie przekierowania
```asm
    ; Oznacz łącze jako zajęte
    ld a, (F268)
    or 0C0h
    ld (F268), a

    ; Przygotuj bufor komendy w F35F
    ld hl, F35F
    ld (hl), 0         ; wyczyść
    ...
    ld (hl), 0Dh       ; kod rozkazu dyskowego

    ; Wyślij przez SIO-B
    call SIO_SEND

    ; Czekaj na odpowiedź z timeoutem
    ld hl, 1000h       ; timeout
    ld (FA19), hl
    call WAIT_RESP
```

### 5. Obsługa błędów
- **Timeout** → "Brak komunikacji z drugim komputerem"
- **Błąd transmisji** → czyści bity 7-6 F268, ustawia kod błędu 0x1A w F267

## Protokół transmisji SIO-B

### Wysyłanie znaku (0x1260)
```asm
tx_wait:
    ld a, 1
    out (083h), a      ; selektuj rejestr statusu SIO-B
    in a, (083h)       ; odczytaj status
    and 001h           ; Tx buffer empty?
    jr z, tx_wait      ; nie — czekaj
    ld a, c            ; znak
    out (081h), a      ; wyślij dane
    ret
```

### Odbiór znaku (0x12E0)
```asm
rx_wait:
    in a, (083h)       ; status SIO-B
    and 001h           ; Rx char available?
    jr z, rx_wait      ; nie — czekaj
    in a, (081h)       ; odbierz dane
    ret
```

### Transfer blokowy (0x064B-0x0670)
- Wysyła komendę (1 bajt)
- Odbiera 128 bajtów danych (sektor CP/M)
- Każdy bajt dodawany do sumy kontrolnej (`ADD A, B; LD B, A`)
- Ostatni bajt to checksum — weryfikacja
- Timeout: licznik 0xFF00 (≈65 sekund przy ~1ms na iterację)

## Konfiguracja V.24

ROM zawiera program konfiguracji łącza szeregowego (okolice 0x1B30-0x1C50):

| Parametr | Opcje |
|----------|-------|
| Parzystość | brak, PE (even) |
| Bity stopu | 1, 1.5, 2 |
| Dzielnik | :1, :16, :32, :64 |
| DTR | wysoki, niski |
| RTS | (konfigurowalny) |
| Szybkość (bod) | zależna od dzielnika i 8253 |
| Automatyczne odblokowanie | włącz/wyłącz |

Funkcje testowe:
- **"Test V-24 LO"** — test nadajnika (Line Out)
- **"Test V-24 PO"** — test odbiornika (Print Out)

## Zmienne systemowe

| Adres | Znaczenie |
|-------|-----------|
| F267 | Flaga dostępności V.24 (0=brak, !=0=skonfigurowane) |
| F268 | Status łącza (bity 7-6: zajętość) |
| F35F | Bufor komendy dla SIO-B |
| F370 | Maska dostępnych urządzeń |
| FA19 | Licznik timeoutu |
| F34D | Numer aktualnego napędu |

## Scenariusz użycia

1. Dwa komputery Bosman-8 połączone kablem RS-232 (SIO-B ↔ SIO-B)
2. Komputer A ma fizyczne stacje A: i B:, oraz RAM-dysk C:
3. Komputer B udostępnia swoje napędy jako zdalne
4. Gdy użytkownik na A: odwołuje się do D:, E: lub F::
   - System wykrywa że to napęd zdalny
   - Pyta operatora o potwierdzenie
   - Wysyła komendę dyskową do komputera B przez SIO-B
   - Komputer B wykonuje operację na swoim lokalnym napędzie
   - Odsyła dane przez SIO-B
5. Przy braku odpowiedzi: komunikat "Brak komunikacji z drugim komputerem"

Jest to prymitywna forma **sieciowego dostępu do dysku** przez łącze szeregowe.
