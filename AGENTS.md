# AGENTS.md — Programmer's Reference for Bosman-8 / CPM-R

Quick reference for coding on the Bosman-8 platform. All addresses in hex.

## Hardware

| Chip | Ports | Function |
|------|-------|----------|
| Z80-SIO A | 80h (data), 82h (cmd) | Terminal — synchronous, 100k baud (8253 ctr1=20, 2MHz/20) |
| Z80-SIO B | 81h (data), 83h (cmd) | Serial link — async, ~9600 baud (8253 ctr2=13, 2MHz/13/16) |
| 8253 timer | 84h (ctr0), 85h (ctr1), 86h (ctr2), 87h (ctrl) | Clocked @ 2 MHz |
| WD1770 FDC | 88h (cmd/status), 89h (track), 8Ah (sector), 8Bh (data) | Floppy controller |
| Config port | 98h | DIP-switch (IN), parallel output (OUT) |
| Bank switch | 04h, 05h, 06h | Memory bank selection (RRCA/RL C pattern) |
| Motor ctrl | F2h, F3h | Floppy step/direction |
| Error sig | F4h, F5h | Timeout error signals |

## BDOS Entry Points (call via `CALL 0005h`)

All standard CP/M 2.2 functions + CPM-R extensions:

| Fn | Name | Description |
|----|------|-------------|
| 00 | P_TERMCPM | System reset (warm boot) |
| 01 | C_READ | Console input (wait for char) |
| 02 | C_WRITE | Console output |
| 03 | C_RAWIO | Reader input (IOBYTE-routed) |
| 04 | C_PUNCH | Punch output → **SIO-B!** (IOBYTE=01) |
| 05 | C_LIST | Printer output |
| 06 | C_DIRIO | Direct console I/O (FF=status, FE=input) |
| 09 | C_WRITSTR | Print $-terminated string |
| 0A | C_READSTR | Buffered line input with editing |
| 0B | C_STAT | Console status (0=none, FF=ready) |
| 0C | C_VER | Return version → **0x25 = CPM-R v2.5** |
| 0D | DRV_RESET | Reset disk system |
| 0E | DRV_SELECT | Select drive (0=A..5=F) |
| 0F | F_OPEN | Open file |
| 10 | F_CLOSE | Close file |
| 11 | F_SFIRST | Search first (wildcards) |
| 12 | F_SNEXT | Search next |
| 13 | F_DELETE | Delete file (marks E5h) |
| 14 | F_READ | Read sequential (128B) |
| 15 | F_WRITE | Write sequential (128B) |
| 16 | F_MAKE | Create file |
| 17 | F_RENAME | Rename file |
| 1E | F_ATTR | Set file attributes |
| 20 | F_USERNUM | Get/set user (0-31, mask 1Fh) |
| 21 | F_RNDREAD | Random read |
| 22 | F_RNDWRITE | Random write |
| 23 | F_SIZE | Compute file size |
| **28** | **CPMR_FN40** | **Write-through? (SET 5, F03C → F_WRITE)** |
| **29** | **CPMR_FN41** | **Check disk space (SBC HL,DE)** |

## ROM Routine Entry Points (CALL directly)

### Console I/O
| Address | Name | Description |
|---------|------|-------------|
| 0E80h | CONSOLE | Console init/status/output (A=0 init, A=1 status, A>1 output char) |
| 2CE7h | CON_CHECK | Check if char ready: `IN A,(82h); AND 01h; RET` |
| 2CECH | CON_IN | Wait and read char from SIO-A |
| 2CD9h | CHAR_OUT | Output char to terminal (via escape sequences) |
| 2CCFh | STR_OUT | Output string (0x80-terminated) |
| 2CF7h | CHAR_UPPER | Convert a-z to A-Z |
| 2C67h | DELAY | Delay ~A×1ms |

### SIO-B / Serial
| Address | Name | Description |
|---------|------|-------------|
| 1260h | SIOB_SEND_BYTE | Send byte (C) via SIO-B (waits for Tx empty) |
| 12E0h | SIOB_RECV | Receive byte from SIO-B (waits for Rx ready) |
| 1487h | SIOB_INIT | Init SIO-B + 8253 ctr2 from 5 bytes at (HL): WR3,WR4,WR5,ctr2_L,ctr2_H |
| 0FFBh | C_LIST | Printer output (IOBYTE-routed, timeout 0x2500) |
| 1247h | C_PUNCH | Punch output (IOBYTE-routed → SIO-B or parallel 98h) |

### Terminal UI Framework (menu rendering)
| Address | Name | Description |
|---------|------|-------------|
| 266Ch | DSP_ATTR | Main entry: bitmask in C selects operation |
| 2697h | DSP_FIELD | **Render menu field**: IY=field structure, B=field index, A=value |
| 28E2h | DSP_STRING | Output string (bit 7 stripped) |
| 28EEh | DSP_BOX | Draw box at H,L (top-left) to D,E (bottom-right) |
| 291Ah | DSP_OPTION | Show option cursor |
| 2922h | DSP_INIT | Initialize display area |
| 290Ch | DSP_CURSOR | Move cursor |
| 298Dh | DSP_MODE | Display menu mode (HL,BC saved to 8806h/8808h) |

**Field structure (pointed by IY):**
```
+0,+1: x1, y1 (top-left)
+2,+3: x2, y2 (bottom-right)  
+4,+5: pointer to label string
+8:    max value
```

### 8253 Baud Rate Configuration (SIO-B)

8253 counter 2 (port 86h) provides clock for SIO-B. The SIO's internal
divider (WR4 bits 7-6) further divides this. Formula:

```
baud = 2_000_000 / ctr2 / sio_divider
```

Where `sio_divider` is 1, 16, 32, or 64 (set in SIO WR4 bits 7-6).

**Default**: ctr2=13, divider=x16 → 2MHz/13/16 = **9615 baud** (~9600).

#### Speed Table (×16 divider only, ROM default)

```
baud = 2_000_000 / ctr2 / 16
```

| Baud | ctr2 | Actual | Error |
|------|------|--------|-------|
| 110 | 1136 | 110 | 0.0% |
| 150 | 833 | 150 | 0.0% |
| 300 | 417 | 300 | 0.1% |
| 600 | 208 | 601 | 0.2% |
| 1200 | 104 | 1202 | 0.2% |
| 2400 | 52 | 2404 | 0.2% |
| 4800 | 26 | 4808 | 0.2% |
| **9600** | **13** | **9615** | **0.2%** ← default |
| 19200 | 7 | 17857 | 7.0% ⚠ |
| 38400 | 3 | 41667 | 8.5% ⚠ |
| 57600 | 2 | 62500 | 8.5% ⚠ |
| 115200 | 1 | 125000 | 8.5% ⚠ |

⚠ Error >3% — unreliable with standard PC UARTs. Speeds ≥19200 require
changing WR4 from ×16 to ×1 for usable error rates.

#### SIO-B Config Structure (5 bytes at F360h/F365h/F36Ah)

```
Offset  Register   Default  Description
+0      WR3         E1h     8-bit, auto enable, Rx enable
+1      WR4         4Ch     x16 clock (bits 7-6=01), 2 stop bits, no parity
+2      WR5         EAh     DTR=1, Tx 8-bit, Tx enable, RTS=1
+3,+4   8253 ctr2   000Dh   13 (little-endian 0D 00)
```

To change baud rate: write new counter value to F360+3 (LSB) and F360+4 (MSB),
then call SIOB_INIT (1487h) with HL=F360h.

To change clock divider: modify the WR4 byte (bits 7-6):
- 00 = ×1, 01 = ×16, 10 = ×32, 11 = ×64

### V.24 Configuration Menu
| Address | Name | Description |
|---------|------|-------------|
| 18EFh | V24_MENU_ENTRY | **Main menu dispatcher**: B=field index, IY=options table, ESC goes back |
| 1979h | V24_PROG_LO | Configure SIO-B transmitter (Line Out) |
| 1994h | V24_PROG_PO | Configure SIO-B receiver (Print Out) |

**V.24 config tables (IY values for V24_MENU_ENTRY):**
| IY | Field |
|----|-------|
| 1AFCh | Parity (bez / PE) |
| 1B2Ch | Stop bits (1.0 / 1.5 / 2.0) |
| 1B4Ch | Divider (:1 / :16 / :32 / :64) |
| 1B7Ah | DTR (wysoki / niski) |
| 1BA9h | Rx unlock (NIE / TAK) |
| 1BEBh | Tx unlock (NIE / TAK) |
| 1C1Fh | Auto unlock |
| 1C4Ch | DTR level |
| 1C64h | RTS level |
| 1C8Dh | Speed (numeric input, handler 1748h) |

### Disk/FDC
| Address | Name | Description |
|---------|------|-------------|
| 0476h | DISK_DISPATCH | Drive dispatch (C=drive 0-5) |
| 0E07h | FDC_INIT | WD1770 RESTORE (~10s timeout, H-ERROR on fail) |
| 0D00h | WD1770_STEP | Step head to track |
| 0DB7h | HW_INIT_1 | Hardware init (A=param: 0=FDC only, 1=set flag, >1=wait) |
| 0E5Dh | H_ERROR_CB | WD1770 timeout callback (pops return, reads status) |

### Device Menus (call via DSP_MODE)
| Address | Name | Description |
|---------|------|-------------|
| 1CC8h | SCREEN_COPY | Interactive screen capture (Ctrl+E/X/S/D, Enter, ESC) |
| 203Bh | TEST_V24_LO | Test SIO-B transmitter |
| 205Fh | TEST_V24_PO | Test SIO-B receiver |
| 22F4h | PRINTER_MENU | Printer interface configuration |
| 23C6h | PRINTER_CHARS | Interactive printer output (Ctrl+Z=end) |

### Bank Switching / Memory
| Address | Name | Description |
|---------|------|-------------|
| F30Fh | BANK_SWITCH | Select memory bank (A=bank number, FF=default) |
| 0FD1h | BANK_READ | Read byte from (HL) with bank switching (F26B bit 6) |
| 0FE5h | BANK_WRITE | Write A to (HL) with bank switching |
| 14A9h | IOBYTE_ROUTING | Read IOBYTE (0003h) with bank switching |
| 14B2h | SET_IOBYTE | Modify IOBYTE (AND B, OR C) with bank switching |

### CCP / Command Processor
| Address | Name | Description |
|---------|------|-------------|
| 3E64h | CCP_INIT | Initialize CCP (set SP, IX, display prompt) |
| 3F37h | CCP_LOOP | Return to CCP main loop |
| 4072h | CMD_PARSER | Parse command line characters |
| 442Fh | CCP_CMD_TABLE | Table of 8 built-in commands |
| 473Dh | AUTOEXEC | Execute B:AUTOEXEC |

## Memory Map

```
0000-00FF   Page Zero (vectors, IOBYTE at 0003h, CUR_DISK at 0004h)
0100-7FFF   TPA (~32KB, programs load at 0100h)
8000-EFFF   RAM disk window (bank-switched, 408KB)
F000-F1FF   Trampolines + buffers
F200-F538   BIOS runtime (copied from ROM 2D00h)
F360/F365/F36A  SIO-B config (5 bytes each: WR3,WR4,WR5,ctr2)
F500-F51F   IOBYTE jump table + LO#.PRN FCB
8800-88FF   Terminal buffer (8800h: 55AA signature)
8864h       Terminal data base (IX)
8C00h       D command: file entry array (20 bytes/entry)
A800-ABFF   LZSS sliding window (1KB)
F0B8h       Stack top
```

## Key System Variables

| Address | Name | Description |
|---------|------|-------------|
| 0003h | IOBYTE | Device routing (CONSOLE:1-0, READER:3-2, PUNCH:5-4, LIST:7-6) |
| 0004h | CUR_DISK | Current drive (0=A..5=F) |
| F26Bh | SYS_FLAGS | bit 2=bg print, bit 3=paused, bit 6=CCP mode |
| F267h | V24_READY | V.24 link configured (0=no, !=0=yes) |
| F268h | V24_STATUS | Link status (bits 7-6 = busy) |
| F34Dh | CUR_DRIVE | BIOS current drive |
| F34Eh | CUR_TRACK | Current track |
| F350h | CUR_SECTOR | Current sector |
| F351h | DMA_ADDR | DMA buffer address |
| F35Fh | SIOB_FLAG | SIO-B init flag (1=PO, 2=LO) |
| F370h | DEV_MASK | Available device mask |
| F416h | D_CMD_FLAG | D command sub-mode flag (0=listing, key=sub-command) |
| F437h | HW_VERSION | Hardware config version (<5=cold boot, >=5=warm boot) |
| FB7Dh | CTRL_FLAGS | bit 6=pre-filled input, bit 7=printer echo (Ctrl+P) |
| FB7Eh | BOOT_FLAGS | bit 0=first boot, bit 1=device ready |

## SIO-B Default Config (at F360h/F365h/F36Ah)

```
E1h  — WR3: 8-bit, auto enable, Rx enable
4Ch  — WR4: x16 clock, 2 stop bits, no parity (async)
EAh  — WR5: DTR=1, Tx 8-bit, Tx enable, RTS=1
0D 00 — Counter 2 = 13 → 2MHz/13/16 = 9615 baud
```

## Writing .COM Programs for Bosman-8

### Minimal "Hello World" template
```asm
    org 0100h              ; CP/M TPA start

    ld de, msg
    ld c, 09h              ; BDOS fn 09 = C_WRITSTR
    call 0005h
    ret                    ; return to CCP

msg:
    defb 'Hello, Bosman-8!$'
    end
```

### Calling ROM routines from .COM
ROM routines are always accessible (ROM is mapped during BDOS calls via
bank switching). Addresses above 8000h may require bank switching.

Safe to call from .COM:
- `CALL 0005h` — BDOS (always available)
- `CALL 2CD9h` — CHAR_OUT (requires terminal init)
- `CALL 2CCFh` — STR_OUT (0x80-terminated)
- `CALL 2C67h` — DELAY (A ms)

Require bank switching setup (use BANK_READ/BANK_WRITE):
- `CALL F30Fh` — BANK_SWITCH (need to restore before returning to CCP)

### Memory banks (512KB RAM)
```
Bank 0: 0000-7FFF (TPA, Page Zero)
Bank 1-?: 8000-FFFF (RAM disk, switched via ports 04h/05h/06h)
```

To access high memory from a .COM program:
```asm
    ld a, bank_number
    call BANK_SWITCH       ; F30Fh
    ; now 8000-FFFF maps to selected bank
    ; ... do work ...
    ld a, 0FFh
    call BANK_SWITCH       ; restore default
```

### File I/O via BDOS (standard CP/M pattern)
```asm
    ; Open file
    ld de, fcb
    ld c, 0Fh              ; F_OPEN
    call 0005h
    inc a                  ; FF=error
    jr z, error

    ; Set DMA address
    ld de, buffer          ; 128-byte buffer
    ld c, 1Ah              ; F_DMA
    call 0005h

    ; Read 128-byte sector
    ld de, fcb
    ld c, 14h              ; F_READ
    call 0005h
    or a                   ; 0=OK
    jr nz, eof

fcb:
    defb 0                 ; drive (0=default)
    defb 'FILENAME'        ; 8 chars
    defb 'TXT'             ; 3 chars
    defs 24, 0             ; rest of FCB

buffer:
    defs 128
```

### Printing to console (escape sequences)
Terminal uses ESC sequences for cursor control:
```asm
    ; Clear screen
    ld c, 1Bh              ; ESC
    call CHAR_OUT
    ld c, 'E'              ; clear screen command
    call CHAR_OUT

    ; Move cursor to (row, col)
    ld h, 10               ; row 10
    ld l, 20               ; col 20
    call 2BF4h             ; CURSOR_SET: ESC = Y+32 X+32
```

## Programming Tips

### Output to serial (SIO-B / PUNCH)
```asm
; Simple byte send:
    ld c, 'A'
    call SIOB_SEND_BYTE   ; 1260h

; Or via BDOS (uses IOBYTE routing):
    ld c, 'A'
    ld e, 04h             ; fn 04 = C_PUNCH
    call 0005h
```

### Display menu with options
```asm
    ld iy, MY_FIELD       ; field structure
    ld b, 0               ; field index
    ld a, current_value   ; initial value
    call DSP_FIELD        ; 2697h
    ; Returns with CY if ESC pressed
```

### Change SIO-B baud rate programmatically
```asm
    ; Change SIO-B to 4800 baud (ctr2=26, divider x16)
    ld hl, SIOB_CFG_1      ; F360h — config slot 1
    ld (hl), 0E1h          ; WR3: 8-bit, auto, Rx enable
    inc hl
    ld (hl), 4Ch           ; WR4: x16 clock, 2 stop, no parity
    inc hl
    ld (hl), 0EAh          ; WR5: DTR, Tx 8-bit, Tx enable
    inc hl
    ld (hl), 26            ; ctr2 LSB (26 for 4800 baud)
    inc hl
    ld (hl), 00h           ; ctr2 MSB
    ld hl, SIOB_CFG_1      ; F360h — point to config
    call SIOB_INIT         ; 1487h — apply!
    ; SIO-B now at 4800 baud
```

### Configure V.24 from your program
```asm
    ; Enter V.24 menu at specific field:
    ld iy, CFG_DIVIDER    ; 1B4Ch (or any other table)
    ld b, 3               ; field index
    call V24_MENU_ENTRY   ; 18EFh
    ; User navigates with ESC to go back
```

### Read/write with bank switching
```asm
    ld hl, target_address
    call BANK_READ        ; 0FD1h — returns byte in A
    ; or
    ld hl, target_address
    ld a, value
    call BANK_WRITE       ; 0FE5h
```

### Terminal cursor positioning
```asm
    ld h, row             ; 0-based
    ld l, col             ; 0-based
    call 2BF4h            ; CURSOR_SET: sends ESC = Y+32 X+32
```

### Input form field
```asm
    ; Display a prompt and read input
    ld hl, prompt_string  ; $-terminated
    call STR_OUT          ; 2CCFh
    ; Read line with editing:
    ld de, buffer         ; [max_len][curr_len][data...]
    ld c, 0Ah             ; fn 0A = C_READSTR
    call 0005h
```

## Drive Mapping

| Letter | Index | Type | DPB |
|--------|-------|------|-----|
| A: | 0 | RAM disk (420KB) | F2ABh |
| B: | 1 | Floppy 5.25" (200KB) | F2BFh |
| C: | 2 | Floppy 5.25" (200KB) | F2D3h |
| D-F: | 3-5 | Remote via SIO-B | (requires V24_READY!=0) |
