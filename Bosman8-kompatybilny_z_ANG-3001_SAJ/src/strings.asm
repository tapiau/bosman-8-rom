; =============================================================================
; strings.asm — Stringi i komunikaty CPM-R
; =============================================================================
; Stringi w ROM używają mieszanego kodowania:
;   - ASCII dla znaków podstawowych
;   - 0x80 jako terminator (nie '$' jak w standardowym CP/M!)
;   - 0x0D 0x0A (CR LF) dla nowej linii
;   - ESC (0x1B) dla sekwencji sterujących terminalem
;   - Polskie znaki prawdopodobnie w Mazovii (do zweryfikowania)
;
; Format: wiele stringów ma prefiks .j (0x2E 0x6A) = ".j"
; co może być kodem wewnętrznym CP/M dla "error prefix".
; =============================================================================

; =============================================================================
; Komunikaty startowe / boot (0x0128-0x0254)
; =============================================================================
	org	00128h

	; Nagłówek systemu (poprzedzony sekwencjami ESC)
	DEFB 01Bh,03Eh,01Bh,025h,01Ah	; ESC sekwencje formatujące
	DEFB 01Bh,054h,01Bh,04Fh,01Bh,040h,01Bh,047h,01Bh,058h
	DEFB 020h,01Ah
SYS_BOOT_BANNER:
	DEFB 01Bh,03Dh,023h,02Ch	; ESC =#,
	DEFB 'Mikrokomputer'
	DEFB 01Bh,03Dh,026h,02Bh	; ESC =&+
	DEFB 01Bh,060h,042h		; ESC `B
	DEFB 01Bh,03Dh,026h,02Dh	; ESC =&-
	DEFB 01Bh,060h,04Fh		; ESC `O
	DEFB 01Bh,03Dh,026h,02Fh	; ESC =&/
	DEFB 01Bh,060h,053h		; ESC `S
	DEFB 01Bh,03Dh,026h,031h	; ESC =&1
	DEFB 01Bh,060h,04Dh		; ESC `M
	DEFB 01Bh,03Dh,026h,033h	; ESC =&3
	DEFB 01Bh,060h,041h		; ESC `A
	DEFB 01Bh,03Dh,026h,035h	; ESC =&5
	DEFB 01Bh,060h,04Eh		; ESC `N
	DEFB 01Bh,03Dh,026h,037h	; ESC =&7
	DEFB 01Bh,060h,020h		; ESC `
	DEFB 01Bh,03Dh,026h,039h	; ESC =&9
	DEFB 01Bh,060h,038h		; ESC `8
	DEFB 01Bh,03Dh,028h,02Eh	; ESC =(.
	DEFB 'RAM=512 KB'
	DEFB 01Bh,03Dh,02Ah,02Eh	; ESC =*.
	DEFB 'Z80A  4MHz'
	DEFB 01Bh,03Dh,023h,054h	; ESC =#T
	DEFB 'System operacyjny'
	DEFB 01Bh,03Dh,026h,055h	; ESC =&U
	DEFB 01Bh,060h,043h		; ESC `C
	; ... dalsze formatowanie
	DEFB 01Bh,03Dh,026h,05Fh,020h,076h,020h,032h,02Eh,035h
	DEFB 01Bh,03Dh,028h,058h	; ESC =(X
	DEFB 'TPA=60 KB'
	DEFB 01Bh,03Dh,02Ah,055h	; ESC =*U
	DEFB 'RAMDYSK  408 KB'
	DEFB 080h			; terminator

; =============================================================================
; Komunikaty błędów bootu
; =============================================================================
	DEFB 01Bh,03Dh,02Dh,020h,080h	; ESC =-, terminator
MSG_RAMDYSK_ERR:
	DEFB 'RAMDYSK uszkodzony', 00Dh, 00Ah, 080h
	DEFB 01Ah				; separator
MSG_ROM_ERR:
	DEFB 'ROM uszkodzony', 00Dh, 00Ah, 080h
	DEFB 01Ah				; separator
MSG_RAM_ERR:
	DEFB 'RAM uszkodzony', 00Dh, 00Ah, 080h

; =============================================================================
; Komunikaty systemowe / CCP
; =============================================================================
	; "Odwołanie do dysku w D E F - docelowy (D) rezygnuj (R) ?"
	DEFB 020h, 'Odwo', 0B8h, 'anie do dysk', 0B8h
	DEFB ' w D E F - do'
	DEFB 'cz (D)  rezygnuj (R)  ? '

	; "Brak komunikacji z drugim komputerem"
	DEFB 020h,020h, 'Brak komunikacji z drugim komputerem'

	; Błędy dyskietki
	DEFB ' Dyskietka zabezpieczona przed zapisem - powt'
	DEFB 0B3h, 'rz (P)  rezygnuj (R)  ? '

	DEFB ' B', 0B8h, 'd odczytu - powt'
	DEFB 0B3h, 'rz (P)  ignoruj (I)  utrzymaj (U)  rezygnuj (R)  ? '

	DEFB ' B', 0B8h, 'd zapisu - powt'
	DEFB 0B3h, 'rz (P)  ignoruj (I)  utrzymaj (U)  rezygnuj (R)  ? '

	DEFB 020h, 'Sprawd', 0BAh, ' czy jest dyskietka - rezygnuj (R)  ? '

	; "H-ERROR - mikrosystem (M) ignoruj (I) ?"
	DEFB 'H-ERROR - mikrosystem (M) ignoruj (I) ? '

	; "Bank 1 zajęty ( )"
	DEFB 020h, 'Bank 1 zaj', 0B9h, 'ty  ( )'

	; Komunikaty drukarki
	DEFB ' Drukarka drukuje - przerwij (P)  kontynuuj (K)  ? '
	DEFB ' Drukarka'
	DEFB 'niegotowa - wy'
	DEFB 0B8h, 'cz (W)  powt'
	DEFB 0B3h, 'rz (P)  zmie'
	DEFB 0C4h, ' (Z)  ? '

	; "Przerwanie operatora"
	DEFB 'Przerwanie operatora'

	; Interfejsy
	DEFB 'Program. V-24 LO'		; Program V-24 Line Out
	DEFB 'Program. V-24 PO'		; Program V-24 Print Out

	; Baza danych / pliki
	DEFB 'Baza danych'

	; Konfiguracja V.24
	DEFB 'Parzysto', 0BDh, 0C6h	; "Parzystość"
	DEFB 'Bity stop'
	DEFB 'Dzielnik'
	DEFB 'Odbiornik odblokowany'
	DEFB 'Nadajnik odblokowany'
	DEFB 'Automatyczne odblokowanie'
	DEFB '-DTR'
	DEFB 'wysoki'
	DEFB 'niski'
	DEFB '-RTS'
	DEFB ' Szybko', 0BDh, 0C6h, ' transmisji        bod'

	; Ekran
	DEFB 'Kopia ekranu'
	DEFB ' nazwa nap'
	DEFB 0B9h				; "ę"?

	; Błędy plików
	DEFB 'Wieloznaczny znak ? w nazwie pliku'
	DEFB 'Pusta nazwa pliku'
	DEFB 'Brak miejsca na dysku '
	DEFB 'Kopiowanie ekranu zako', 0C4h, 'czone '

	; CCP — znak zachęty
	DEFB 00Dh, 00Ah
	DEFB 'Podaj nazw', 0B9h, ' pliku:'		; "Podaj nazwę pliku:"
	DEFB 00Dh, 00Ah

	; Komunikaty BDOS
	DEFB '.jNie istnieje plik ', 027h, 'SUB', 027h, 024h
	DEFB '.jB', 0B8h, 'dny znak za CTRL', 024h
	DEFB '.jB', 0B8h, 'd parametru', 024h
	DEFB '.jB', 0B8h, 'd zapisu na dysku', 024h
	DEFB '.jBrak miejsca w katalogu', 024h
	DEFB '.jB', 0B8h, 'd zamkni', 0B9h, 'cia pliku', 024h
	DEFB '.jPrzekroczony bufor polece', 0C4h, 024h
	DEFB '.jPolecenie za d', 0B8h, 'ugie', 024h
	DEFB '.j - linia', 024h

	; AUTOEXEC / SUBMIT
	DEFB 00Dh, 00Ah, 'B:AUTOEXEC', 000h

	; Komunikaty archiwizacji/kompresji
	DEFB '.jju', 0BFh, ' jest ', 0BDh, 'ci', 0BDh, 'ni', 0B9h, 'ty', 024h
	DEFB '.j B', 0B8h, 'd dekompresji', 024h
	DEFB '.jBrak miejsca', 024h
	DEFB '.j skopiowany', 024h

	; Komunikaty RAM-dysku
	DEFB '.jCzy zwolni', 0C6h, ' bank 1', 024h

	; Drukowanie w tle
	DEFB 'W', 0B8h, 'czone drukowanie w tle,', 024h

; =============================================================================
; Uwagi o kodowaniu polskich znaków
; =============================================================================
; Zaobserwowane bajty dla polskich liter:
;   0x0B8h = 'ł'  (L slash)?
;   0x0B9h = 'ę'  (E ogonek)?
;   0x0BAh = 'ś'? (S acute)?
;   0x0BDh = 'ś'  (S acute — wersja 2)?
;   0x0B3h = 'ó'  (O acute)?
;   0x0C4h = 'ń'  (N acute)?
;   0x0C6h = 'ć'  (C acute)?
;   0x0BFh = 'ż'  (Z dot)?
;
; To NIE jest standardowe Mazovia (gdzie polskie znaki są w zakresie 0x80-0x9F).
; Wygląda na własne kodowanie producenta (DZM-180) lub wariant
; dopasowany do możliwości wyświetlacza.
;
; W dokumentacji doc/wiki/strings.md należy to dokładniej przeanalizować.

	END
