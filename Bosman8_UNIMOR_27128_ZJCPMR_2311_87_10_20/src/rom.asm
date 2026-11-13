; z80dasm 1.1.6
; command line: z80dasm -a -t -g 0 Bosman8_UNIMOR_27128_ZJCPMR_2311_87_10_20.BIN

	org	00000h

	dec h			;0000	25 	% 
	nop			;0001	00 	. 
	jp 001e4h		;0002	c3 e4 01 	. . . 
	jp 01500h		;0005	c3 00 15 	. . . 
	jp 00ca9h		;0008	c3 a9 0c 	. . . 
	jp 003deh		;000b	c3 de 03 	. . . 
	jp 009bch		;000e	c3 bc 09 	. . . 
	jp 0f41ch		;0011	c3 1c f4 	. . . 
	jp 0f422h		;0014	c3 22 f4 	. " . 
	jp 00da4h		;0017	c3 a4 0d 	. . . 
	jp 00000h		;001a	c3 00 00 	. . . 
	jp 00000h		;001d	c3 00 00 	. . . 
	or a			;0020	b7 	. 
	add hl,de			;0021	19 	. 
	add a,a			;0022	87 	. 
	add hl,bc			;0023	09 	. 
	jr nc,$-57		;0024	30 c5 	0 . 
	ld b,0f4h		;0026	06 f4 	. . 
	dec b			;0028	05 	. 
	jr nz,$-1		;0029	20 fd 	  . 
	dec a			;002b	3d 	= 
	jr nz,$-6		;002c	20 f8 	  . 
	pop bc			;002e	c1 	. 
	ret			;002f	c9 	. 
	jp 0f275h		;0030	c3 75 f2 	. u . 
	nop			;0033	00 	. 
	nop			;0034	00 	. 
	nop			;0035	00 	. 
	nop			;0036	00 	. 
	nop			;0037	00 	. 
	jp 0f272h		;0038	c3 72 f2 	. r . 
	ld b,e			;003b	43 	C 
	nop			;003c	00 	. 
	ld c,e			;003d	4b 	K 
	nop			;003e	00 	. 
	ld b,0f5h		;003f	06 f5 	. . 
	ld d,e			;0041	53 	S 
	nop			;0042	00 	. 
	ld b,h			;0043	44 	D 
	ld e,d			;0044	5a 	Z 
	ld c,l			;0045	4d 	M 
	dec l			;0046	2d 	- 
	ld sp,03038h		;0047	31 38 30 	1 8 0 
	add a,b			;004a	80 	. 
	ld l,c			;004b	69 	i 
	ld (hl),e			;004c	73 	s 
	ld l,020h		;004d	2e 20 	.   
	ld d,(hl)			;004f	56 	V 
	ld (08034h),a		;0050	32 34 80 	2 4 . 
	ld b,e			;0053	43 	C 
	ld b,l			;0054	45 	E 
	ld c,(hl)			;0055	4e 	N 
	ld d,h			;0056	54 	T 
	ld d,d			;0057	52 	R 
	ld c,a			;0058	4f 	O 
	ld c,(hl)			;0059	4e 	N 
	ld c,c			;005a	49 	I 
	ld b,e			;005b	43 	C 
	ld d,e			;005c	53 	S 
	add a,b			;005d	80 	. 
	nop			;005e	00 	. 
	nop			;005f	00 	. 
	nop			;0060	00 	. 
	nop			;0061	00 	. 
	nop			;0062	00 	. 
	nop			;0063	00 	. 
	nop			;0064	00 	. 
	nop			;0065	00 	. 
	jp 0f341h		;0066	c3 41 f3 	. A . 
	cp a			;0069	bf 	. 
	ld de,011d3h		;006a	11 d3 11 	. . . 
	ld a,c			;006d	79 	y 
	nop			;006e	00 	. 
	adc a,l			;006f	8d 	. 
	nop			;0070	00 	. 
	and c			;0071	a1 	. 
	nop			;0072	00 	. 
	or l			;0073	b5 	. 
	nop			;0074	00 	. 
	ret			;0075	c9 	. 
	nop			;0076	00 	. 
	defb 0ddh,000h,028h	;illegal sequence		;0077	dd 00 28 	. . ( 
	nop			;007a	00 	. 
	inc b			;007b	04 	. 
	rrca			;007c	0f 	. 
	ld bc,000c7h		;007d	01 c7 00 	. . . 
	ld a,a			;0080	7f 	 
	nop			;0081	00 	. 
	ret nz			;0082	c0 	. 
	nop			;0083	00 	. 
	jr nz,$+2		;0084	20 00 	  . 
	nop			;0086	00 	. 
	nop			;0087	00 	. 
	inc bc			;0088	03 	. 
	rlca			;0089	07 	. 
	ld hl,04021h		;008a	21 21 40 	! ! @ 
	jr z,$+2		;008d	28 00 	( . 
	inc b			;008f	04 	. 
	rrca			;0090	0f 	. 
	ld bc,000c7h		;0091	01 c7 00 	. . . 
	ld a,a			;0094	7f 	 
	nop			;0095	00 	. 
	ret nz			;0096	c0 	. 
	nop			;0097	00 	. 
	jr nz,$+2		;0098	20 00 	  . 
	nop			;009a	00 	. 
	nop			;009b	00 	. 
	inc bc			;009c	03 	. 
	rlca			;009d	07 	. 
	ld hl,04021h		;009e	21 21 40 	! ! @ 
	jr z,$+2		;00a1	28 00 	( . 
	inc b			;00a3	04 	. 
	rrca			;00a4	0f 	. 
	nop			;00a5	00 	. 
	adc a,a			;00a6	8f 	. 
	ld bc,000bfh		;00a7	01 bf 00 	. . . 
	ret po			;00aa	e0 	. 
	nop			;00ab	00 	. 
	jr nc,$+2		;00ac	30 00 	0 . 
	nop			;00ae	00 	. 
	nop			;00af	00 	. 
	inc bc			;00b0	03 	. 
	rlca			;00b1	07 	. 
	ld sp,06031h		;00b2	31 31 60 	1 1 ` 
	jr z,$+2		;00b5	28 00 	( . 
	inc b			;00b7	04 	. 
	rrca			;00b8	0f 	. 
	nop			;00b9	00 	. 
	adc a,a			;00ba	8f 	. 
	ld bc,000bfh		;00bb	01 bf 00 	. . . 
	ret po			;00be	e0 	. 
	nop			;00bf	00 	. 
	jr nc,$+2		;00c0	30 00 	0 . 
	nop			;00c2	00 	. 
	nop			;00c3	00 	. 
	inc bc			;00c4	03 	. 
	rlca			;00c5	07 	. 
	ld sp,06031h		;00c6	31 31 60 	1 1 ` 
	jr z,$+2		;00c9	28 00 	( . 
	inc b			;00cb	04 	. 
	rrca			;00cc	0f 	. 
	nop			;00cd	00 	. 
	adc a,a			;00ce	8f 	. 
	ld bc,000bfh		;00cf	01 bf 00 	. . . 
	ret po			;00d2	e0 	. 
	nop			;00d3	00 	. 
	jr nc,$+2		;00d4	30 00 	0 . 
	nop			;00d6	00 	. 
	nop			;00d7	00 	. 
	inc bc			;00d8	03 	. 
	rlca			;00d9	07 	. 
	ld sp,06331h		;00da	31 31 63 	1 1 c 
	jr z,$+2		;00dd	28 00 	( . 
	inc bc			;00df	03 	. 
	rlca			;00e0	07 	. 
	nop			;00e1	00 	. 
	rst 0			;00e2	c7 	. 
	nop			;00e3	00 	. 
	ccf			;00e4	3f 	? 
	nop			;00e5	00 	. 
	ret nz			;00e6	c0 	. 
	nop			;00e7	00 	. 
	djnz $+2		;00e8	10 00 	. . 
	nop			;00ea	00 	. 
	nop			;00eb	00 	. 
	inc bc			;00ec	03 	. 
	rlca			;00ed	07 	. 
	ld de,00311h		;00ee	11 11 03 	. . . 
	jr nz,$+34		;00f1	20 20 	    
	jr nz,$+28		;00f3	20 1a 	  . 
	dec de			;00f5	1b 	. 
	ld d,h			;00f6	54 	T 
	dec de			;00f7	1b 	. 
	ld c,a			;00f8	4f 	O 
	dec de			;00f9	1b 	. 
	ld b,b			;00fa	40 	@ 
	dec de			;00fb	1b 	. 
	ld a,01bh		;00fc	3e 1b 	> . 
	ld b,a			;00fe	47 	G 
	dec de			;00ff	1b 	. 
	ld e,b			;0100	58 	X 
	jr nz,$+28		;0101	20 1a 	  . 
	ld c,l			;0103	4d 	M 
	ld l,c			;0104	69 	i 
	ld l,e			;0105	6b 	k 
	ld (hl),d			;0106	72 	r 
	ld l,a			;0107	6f 	o 
	ld l,e			;0108	6b 	k 
	ld l,a			;0109	6f 	o 
	ld l,l			;010a	6d 	m 
	ld (hl),b			;010b	70 	p 
	ld (hl),l			;010c	75 	u 
	ld (hl),h			;010d	74 	t 
	ld h,l			;010e	65 	e 
	ld (hl),d			;010f	72 	r 
	jr nz,$+34		;0110	20 20 	    
	dec de			;0112	1b 	. 
	ld d,e			;0113	53 	S 
	jr nz,$+68		;0114	20 42 	  B 
	ld c,a			;0116	4f 	O 
	ld d,e			;0117	53 	S 
	ld c,l			;0118	4d 	M 
	ld b,c			;0119	41 	A 
	ld c,(hl)			;011a	4e 	N 
	jr nz,$+58		;011b	20 38 	  8 
	jr nz,$+47		;011d	20 2d 	  - 
	jr nz,$+52		;011f	20 32 	  2 
	inc sp			;0121	33 	3 
	ld sp,02031h		;0122	31 31 20 	1 1   
	dec de			;0125	1b 	. 
	ld d,h			;0126	54 	T 
	add a,b			;0127	80 	. 
	nop			;0128	00 	. 
	nop			;0129	00 	. 
	nop			;012a	00 	. 
	add a,c			;012b	81 	. 
	jr nz,$+34		;012c	20 20 	    
	jr nz,$+34		;012e	20 20 	    
	jr nz,$+34		;0130	20 20 	    
	jr nz,$+69		;0132	20 43 	  C 
	ld d,b			;0134	50 	P 
	ld d,l			;0135	55 	U 
	dec l			;0136	2d 	- 
	ld e,d			;0137	5a 	Z 
	jr c,$+50		;0138	38 30 	8 0 
	ld b,c			;013a	41 	A 
	dec c			;013b	0d 	. 
	ld a,(bc)			;013c	0a 	. 
	ld a,(bc)			;013d	0a 	. 
	ld b,h			;013e	44 	D 
	ld a,c			;013f	79 	y 
	ld (hl),e			;0140	73 	s 
	ld l,e			;0141	6b 	k 
	ld l,a			;0142	6f 	o 
	ld (hl),a			;0143	77 	w 
	ld a,c			;0144	79 	y 
	jr nz,$+117		;0145	20 73 	  s 
	ld a,c			;0147	79 	y 
	ld (hl),e			;0148	73 	s 
	ld (hl),h			;0149	74 	t 
	ld h,l			;014a	65 	e 
	ld l,l			;014b	6d 	m 
	jr nz,$+113		;014c	20 6f 	  o 
	ld (hl),b			;014e	70 	p 
	ld h,l			;014f	65 	e 
	ld (hl),d			;0150	72 	r 
	ld h,c			;0151	61 	a 
	ld h,e			;0152	63 	c 
	ld a,c			;0153	79 	y 
	ld l,d			;0154	6a 	j 
	ld l,(hl)			;0155	6e 	n 
	ld a,c			;0156	79 	y 
	jr nz,$+34		;0157	20 20 	    
	ld b,e			;0159	43 	C 
	ld d,b			;015a	50 	P 
	ld c,l			;015b	4d 	M 
	cpl			;015c	2f 	/ 
	ld d,d			;015d	52 	R 
	jr nz,$+120		;015e	20 76 	  v 
	ld (0352eh),a		;0160	32 2e 35 	2 . 5 
	jr nz,$+34		;0163	20 20 	    
	jr nz,$+34		;0165	20 20 	    
	ld d,h			;0167	54 	T 
	ld d,b			;0168	50 	P 
	ld b,c			;0169	41 	A 
	dec a			;016a	3d 	= 
	ld (hl),030h		;016b	36 30 	6 0 
	ld c,e			;016d	4b 	K 
	ld b,d			;016e	42 	B 
	jr nz,$+34		;016f	20 20 	    
	dec c			;0171	0d 	. 
	ld a,(bc)			;0172	0a 	. 
	ld a,(bc)			;0173	0a 	. 
	ld a,(bc)			;0174	0a 	. 
	add a,b			;0175	80 	. 
	nop			;0176	00 	. 
	nop			;0177	00 	. 
	nop			;0178	00 	. 
	nop			;0179	00 	. 
	nop			;017a	00 	. 
	nop			;017b	00 	. 
	nop			;017c	00 	. 
	nop			;017d	00 	. 
	nop			;017e	00 	. 
	nop			;017f	00 	. 
	nop			;0180	00 	. 
	nop			;0181	00 	. 
	nop			;0182	00 	. 
	nop			;0183	00 	. 
	nop			;0184	00 	. 
	nop			;0185	00 	. 
	ld d,d			;0186	52 	R 
	ld b,c			;0187	41 	A 
	ld c,l			;0188	4d 	M 
	ld b,h			;0189	44 	D 
	ld e,c			;018a	59 	Y 
	ld d,e			;018b	53 	S 
	ld c,e			;018c	4b 	K 
	jr nz,$+119		;018d	20 75 	  u 
	ld (hl),e			;018f	73 	s 
	ld a,d			;0190	7a 	z 
	ld l,e			;0191	6b 	k 
	ld l,a			;0192	6f 	o 
	ld h,h			;0193	64 	d 
	ld a,d			;0194	7a 	z 
	ld l,a			;0195	6f 	o 
	ld l,(hl)			;0196	6e 	n 
	ld a,c			;0197	79 	y 
	dec c			;0198	0d 	. 
	ld a,(bc)			;0199	0a 	. 
	add a,b			;019a	80 	. 
	ld a,(de)			;019b	1a 	. 
	ld d,d			;019c	52 	R 
	ld c,a			;019d	4f 	O 
	ld c,l			;019e	4d 	M 
	jr nz,$+119		;019f	20 75 	  u 
	ld (hl),e			;01a1	73 	s 
	ld a,d			;01a2	7a 	z 
	ld l,e			;01a3	6b 	k 
	ld l,a			;01a4	6f 	o 
	ld h,h			;01a5	64 	d 
	ld a,d			;01a6	7a 	z 
	ld l,a			;01a7	6f 	o 
	ld l,(hl)			;01a8	6e 	n 
	ld a,c			;01a9	79 	y 
	dec c			;01aa	0d 	. 
	ld a,(bc)			;01ab	0a 	. 
	add a,b			;01ac	80 	. 
	dec c			;01ad	0d 	. 
	dec c			;01ae	0d 	. 
	dec de			;01af	1b 	. 
	ld d,h			;01b0	54 	T 
	dec de			;01b1	1b 	. 
	ld c,a			;01b2	4f 	O 
	dec de			;01b3	1b 	. 
	ld b,b			;01b4	40 	@ 
	dec de			;01b5	1b 	. 
	ld a,01bh		;01b6	3e 1b 	> . 
	ld b,a			;01b8	47 	G 
	dec de			;01b9	1b 	. 
	ld e,b			;01ba	58 	X 
	jr nz,$+28		;01bb	20 1a 	  . 
	dec c			;01bd	0d 	. 
	ld a,(bc)			;01be	0a 	. 
	add a,b			;01bf	80 	. 
	nop			;01c0	00 	. 
	nop			;01c1	00 	. 
	jr nc,$+56		;01c2	30 36 	0 6 
	inc (hl)			;01c4	34 	4 
	add a,b			;01c5	80 	. 
	ex af,af'			;01c6	08 	. 
	ld e,c			;01c7	59 	Y 
	ld (03635h),a		;01c8	32 35 36 	2 5 6 
	add a,b			;01cb	80 	. 
	ld b,01dh		;01cc	06 1d 	. . 
	ld sp,03832h		;01ce	31 32 38 	1 2 8 
	add a,b			;01d1	80 	. 
	ld b,077h		;01d2	06 77 	. w 
	inc sp			;01d4	33 	3 
	ld (08030h),a		;01d5	32 30 80 	2 0 . 
	nop			;01d8	00 	. 
	ld (hl),a			;01d9	77 	w 
	inc sp			;01da	33 	3 
	ld (08030h),a		;01db	32 30 80 	2 0 . 
	nop			;01de	00 	. 
	pop de			;01df	d1 	. 
	dec (hl)			;01e0	35 	5 
	ld sp,08032h		;01e1	31 32 80 	1 2 . 
	out (007h),a		;01e4	d3 07 	. . 
	ld sp,0f200h		;01e6	31 00 f2 	1 . . 
	ld hl,00000h		;01e9	21 00 00 	! . . 
	xor a			;01ec	af 	. 
	add a,(hl)			;01ed	86 	. 
	inc hl			;01ee	23 	# 
	bit 6,h		;01ef	cb 74 	. t 
	jr z,$-4		;01f1	28 fa 	( . 
	or a			;01f3	b7 	. 
	jr nz,$+4		;01f4	20 02 	  . 
	out (006h),a		;01f6	d3 06 	. . 
	ex af,af'			;01f8	08 	. 
	ld hl,01100h		;01f9	21 00 11 	! . . 
	ld de,0f200h		;01fc	11 00 f2 	. . . 
	ld bc,003cch		;01ff	01 cc 03 	. . . 
	ldir		;0202	ed b0 	. . 
	ld a,035h		;0204	3e 35 	> 5 
	out (087h),a		;0206	d3 87 	. . 
	ld a,076h		;0208	3e 76 	> v 
	out (087h),a		;020a	d3 87 	. . 
	ld a,0b6h		;020c	3e b6 	> . 
	out (087h),a		;020e	d3 87 	. . 
	ld a,003h		;0210	3e 03 	> . 
	out (082h),a		;0212	d3 82 	. . 
	ld a,0e1h		;0214	3e e1 	> . 
	out (082h),a		;0216	d3 82 	. . 
	ld a,004h		;0218	3e 04 	> . 
	out (082h),a		;021a	d3 82 	. . 
	ld a,00ch		;021c	3e 0c 	> . 
	out (082h),a		;021e	d3 82 	. . 
	ld a,005h		;0220	3e 05 	> . 
	out (082h),a		;0222	d3 82 	. . 
	ld a,0eah		;0224	3e ea 	> . 
	out (082h),a		;0226	d3 82 	. . 
	ld a,014h		;0228	3e 14 	> . 
	out (085h),a		;022a	d3 85 	. . 
	ld a,000h		;022c	3e 00 	> . 
	out (085h),a		;022e	d3 85 	. . 
	in a,(080h)		;0230	db 80 	. . 
	ld a,001h		;0232	3e 01 	> . 
	call 00025h		;0234	cd 25 00 	. % . 
	in a,(080h)		;0237	db 80 	. . 
	ld a,099h		;0239	3e 99 	> . 
	out (084h),a		;023b	d3 84 	. . 
	ld a,099h		;023d	3e 99 	> . 
	out (084h),a		;023f	d3 84 	. . 
	ld hl,0f360h		;0241	21 60 f3 	! ` . 
	call 009bch		;0244	cd bc 09 	. . . 
	ld a,0d5h		;0247	3e d5 	> . 
	ld (00003h),a		;0249	32 03 00 	2 . . 
	xor a			;024c	af 	. 
	ld (00004h),a		;024d	32 04 00 	2 . . 
	ld hl,0f000h		;0250	21 00 f0 	! . . 
	ld b,000h		;0253	06 00 	. . 
	ld (hl),a			;0255	77 	w 
	inc hl			;0256	23 	# 
	djnz $-2		;0257	10 fc 	. . 
	ld a,001h		;0259	3e 01 	> . 
	ld (0f13ah),a		;025b	32 3a f1 	2 : . 
	call 003c8h		;025e	cd c8 03 	. . . 
	in a,(098h)		;0261	db 98 	. . 
	and 028h		;0263	e6 28 	. ( 
	jr z,$+30		;0265	28 1c 	( . 
	cp 008h		;0267	fe 08 	. . 
	jr nz,$+7		;0269	20 05 	  . 
	ld hl,00079h		;026b	21 79 00 	! y . 
	jr $+13		;026e	18 0b 	. . 
	cp 020h		;0270	fe 20 	.   
	ld hl,000c9h		;0272	21 c9 00 	! . . 
	jp nz,0027bh		;0275	c2 7b 02 	. { . 
	ld hl,000a1h		;0278	21 a1 00 	! . . 
	ld de,0f2bfh		;027b	11 bf f2 	. . . 
	ld bc,00028h		;027e	01 28 00 	. ( . 
	ldir		;0281	ed b0 	. . 
	out (0f5h),a		;0283	d3 f5 	. . 
	xor a			;0285	af 	. 
	ld (0f355h),a		;0286	32 55 f3 	2 U . 
	ld (0f357h),a		;0289	32 57 f3 	2 W . 
	ld a,01eh		;028c	3e 1e 	> . 
	call 00025h		;028e	cd 25 00 	. % . 
	ld a,0d0h		;0291	3e d0 	> . 
	out (088h),a		;0293	d3 88 	. . 
	in a,(098h)		;0295	db 98 	. . 
	and 040h		;0297	e6 40 	. @ 
	ld a,001h		;0299	3e 01 	> . 
	call z,008eeh		;029b	cc ee 08 	. . . 
	ld a,000h		;029e	3e 00 	> . 
	call 008eeh		;02a0	cd ee 08 	. . . 
	out (0f8h),a		;02a3	d3 f8 	. . 
	out (0ffh),a		;02a5	d3 ff 	. . 
	ld b,004h		;02a7	06 04 	. . 
	call 0038eh		;02a9	cd 8e 03 	. . . 
	add a,a			;02ac	87 	. 
	push af			;02ad	f5 	. 
	ld b,000h		;02ae	06 00 	. . 
	call 0038eh		;02b0	cd 8e 03 	. . . 
	dec a			;02b3	3d 	= 
	pop bc			;02b4	c1 	. 
	add a,b			;02b5	80 	. 
	add a,a			;02b6	87 	. 
	ld c,a			;02b7	4f 	O 
	ld b,000h		;02b8	06 00 	. . 
	ld hl,001c0h		;02ba	21 c0 01 	! . . 
	add hl,bc			;02bd	09 	. 
	add hl,bc			;02be	09 	. 
	add hl,bc			;02bf	09 	. 
	ld d,(hl)			;02c0	56 	V 
	inc hl			;02c1	23 	# 
	ld e,(hl)			;02c2	5e 	^ 
	inc hl			;02c3	23 	# 
	push hl			;02c4	e5 	. 
	ld a,(0f2b8h)		;02c5	3a b8 f2 	: . . 
	ld b,a			;02c8	47 	G 
	add a,d			;02c9	82 	. 
	ld (0f2b8h),a		;02ca	32 b8 f2 	2 . . 
	ld a,b			;02cd	78 	x 
	add a,a			;02ce	87 	. 
	add a,a			;02cf	87 	. 
	add a,a			;02d0	87 	. 
	add a,a			;02d1	87 	. 
	sub b			;02d2	90 	. 
	sub e			;02d3	93 	. 
	jr c,$+3		;02d4	38 01 	8 . 
	xor a			;02d6	af 	. 
	neg		;02d7	ed 44 	. D 
	ld (0f2b0h),a		;02d9	32 b0 f2 	2 . . 
	ld c,000h		;02dc	0e 00 	. . 
	ld a,(0f2b6h)		;02de	3a b6 f2 	: . . 
	ld b,a			;02e1	47 	G 
	ld a,(0f2b8h)		;02e2	3a b8 f2 	: . . 
	xor 00eh		;02e5	ee 0e 	. . 
	ld hl,00000h		;02e7	21 00 00 	! . . 
	or a			;02ea	b7 	. 
	rra			;02eb	1f 	. 
	jr nc,$+5		;02ec	30 03 	0 . 
	ld hl,07800h		;02ee	21 00 78 	! . x 
	ld de,0fa20h		;02f1	11 20 fa 	.   . 
	push bc			;02f4	c5 	. 
	call 0f3e3h		;02f5	cd e3 f3 	. . . 
	pop bc			;02f8	c1 	. 
	push hl			;02f9	e5 	. 
	push bc			;02fa	c5 	. 
	push bc			;02fb	c5 	. 
	call 0f410h		;02fc	cd 10 f4 	. . . 
	ld c,a			;02ff	4f 	O 
	ld a,(de)			;0300	1a 	. 
	inc de			;0301	13 	. 
	cp c			;0302	b9 	. 
	pop bc			;0303	c1 	. 
	jr z,$+3		;0304	28 01 	( . 
	inc c			;0306	0c 	. 
	djnz $-12		;0307	10 f2 	. . 
	ld a,c			;0309	79 	y 
	ld (0fb7ah),a		;030a	32 7a fb 	2 z . 
	pop bc			;030d	c1 	. 
	pop hl			;030e	e1 	. 
	cp 004h		;030f	fe 04 	. . 
	jr c,$+26		;0311	38 18 	8 . 
	ld c,080h		;0313	0e 80 	. . 
	ld a,040h		;0315	3e 40 	> @ 
	call 00025h		;0317	cd 25 00 	. % . 
	ld (hl),0e5h		;031a	36 e5 	6 . 
	inc hl			;031c	23 	# 
	dec c			;031d	0d 	. 
	jr nz,$-4		;031e	20 fa 	  . 
	djnz $-13		;0320	10 f1 	. . 
	xor a			;0322	af 	. 
	ld (0fb7ah),a		;0323	32 7a fb 	2 z . 
	ld (0fb7ch),a		;0326	32 7c fb 	2 | . 
	jr $+15		;0329	18 0d 	. . 
	ld a,(0f2b0h)		;032b	3a b0 f2 	: . . 
	ld b,a			;032e	47 	G 
	ld a,(0fb7bh)		;032f	3a 7b fb 	: { . 
	cp b			;0332	b8 	. 
	jr nc,$+5		;0333	30 03 	0 . 
	ld (0f2b0h),a		;0335	32 b0 f2 	2 . . 
	xor a			;0338	af 	. 
	call 0f3e3h		;0339	cd e3 f3 	. . . 
	ex af,af'			;033c	08 	. 
	jr nz,$+35		;033d	20 21 	  ! 
	ld hl,000f1h		;033f	21 f1 00 	! . . 
	call 00d7dh		;0342	cd 7d 0d 	. } . 
	pop hl			;0345	e1 	. 
	ld a,(0012bh)		;0346	3a 2b 01 	: + . 
	bit 0,a		;0349	cb 47 	. G 
	call z,00d7dh		;034b	cc 7d 0d 	. } . 
	ld hl,0012ch		;034e	21 2c 01 	! , . 
	call 00d7dh		;0351	cd 7d 0d 	. } . 
	ld hl,00186h		;0354	21 86 01 	! . . 
	ld a,(0fb7ah)		;0357	3a 7a fb 	: z . 
	or a			;035a	b7 	. 
	call nz,00d7dh		;035b	c4 7d 0d 	. } . 
	jr $+21		;035e	18 13 	. . 
	ld hl,0019bh		;0360	21 9b 01 	! . . 
	call 00d7dh		;0363	cd 7d 0d 	. } . 
	jp 0f443h		;0366	c3 43 f4 	. C . 
	ld sp,0f200h		;0369	31 00 f2 	1 . . 
	xor a			;036c	af 	. 
	call 00da4h		;036d	cd a4 0d 	. . . 
	call 003c8h		;0370	cd c8 03 	. . . 
	ld a,(0f2b0h)		;0373	3a b0 f2 	: . . 
	ld (0fb7bh),a		;0376	32 7b fb 	2 { . 
	ld hl,001adh		;0379	21 ad 01 	! . . 
	call 00d7dh		;037c	cd 7d 0d 	. } . 
	ld hl,0f26bh		;037f	21 6b f2 	! k . 
	res 3,(hl)		;0382	cb 9e 	. . 
	ld hl,00004h		;0384	21 04 00 	! . . 
	call 0f41ch		;0387	cd 1c f4 	. . . 
	ld c,a			;038a	4f 	O 
	jp 02250h		;038b	c3 50 22 	. P " 
	ld a,b			;038e	78 	x 
	call 0f3e3h		;038f	cd e3 f3 	. . . 
	ld hl,00000h		;0392	21 00 00 	! . . 
	call 0f41ch		;0395	cd 1c f4 	. . . 
	ld d,a			;0398	57 	W 
	ld (hl),055h		;0399	36 55 	6 U 
	ld a,b			;039b	78 	x 
	inc a			;039c	3c 	< 
	call 0f3e3h		;039d	cd e3 f3 	. . . 
	call 0f41ch		;03a0	cd 1c f4 	. . . 
	ld e,a			;03a3	5f 	_ 
	ld (hl),0aah		;03a4	36 aa 	6 . 
	ld a,b			;03a6	78 	x 
	call 0f3e3h		;03a7	cd e3 f3 	. . . 
	call 0f41ch		;03aa	cd 1c f4 	. . . 
	cp 055h		;03ad	fe 55 	. U 
	jr z,$+11		;03af	28 09 	( . 
	cp 0aah		;03b1	fe aa 	. . 
	ld a,000h		;03b3	3e 00 	> . 
	ret nz			;03b5	c0 	. 
	ld (hl),d			;03b6	72 	r 
	ld a,001h		;03b7	3e 01 	> . 
	ret			;03b9	c9 	. 
	ld a,b			;03ba	78 	x 
	inc a			;03bb	3c 	< 
	call 0f3e3h		;03bc	cd e3 f3 	. . . 
	ld (hl),e			;03bf	73 	s 
	ld a,b			;03c0	78 	x 
	call 0f3e3h		;03c1	cd e3 f3 	. . . 
	ld (hl),d			;03c4	72 	r 
	ld a,002h		;03c5	3e 02 	> . 
	ret			;03c7	c9 	. 
	ld hl,014e0h		;03c8	21 e0 14 	! . . 
	ld de,0f060h		;03cb	11 60 f0 	. ` . 
	ld bc,00010h		;03ce	01 10 00 	. . . 
	ldir		;03d1	ed b0 	. . 
	ld hl,014f0h		;03d3	21 f0 14 	! . . 
	ld de,0f000h		;03d6	11 00 f0 	. . . 
	ld bc,00010h		;03d9	01 10 00 	. . . 
	ldir		;03dc	ed b0 	. . 
	ld a,0c3h		;03de	3e c3 	> . 
	ld (00000h),a		;03e0	32 00 00 	2 . . 
	ld (00005h),a		;03e3	32 05 00 	2 . . 
	ld (00030h),a		;03e6	32 30 00 	2 0 . 
	ld (00038h),a		;03e9	32 38 00 	2 8 . 
	ld hl,0f203h		;03ec	21 03 f2 	! . . 
	ld (00001h),hl		;03ef	22 01 00 	" . . 
	ld hl,0f006h		;03f2	21 06 f0 	! . . 
	ld (00006h),hl		;03f5	22 06 00 	" . . 
	ld hl,0f275h		;03f8	21 75 f2 	! u . 
	ld (00031h),hl		;03fb	22 31 00 	" 1 . 
	ld hl,0f272h		;03fe	21 72 f2 	! r . 
	ld (00039h),hl		;0401	22 39 00 	" 9 . 
	ret			;0404	c9 	. 
	ld a,c			;0405	79 	y 
	cp 004h		;0406	fe 04 	. . 
	jr nc,$+42		;0408	30 28 	0 ( 
	ld l,c			;040a	69 	i 
	inc l			;040b	2c 	, 
	ld a,(0f370h)		;040c	3a 70 f3 	: p . 
	rrca			;040f	0f 	. 
	dec l			;0410	2d 	- 
	jr nz,$-2		;0411	20 fc 	  . 
	jr nc,$+31		;0413	30 1d 	0 . 
	ld a,c			;0415	79 	y 
	ld (0f34dh),a		;0416	32 4d f3 	2 M . 
	rlca			;0419	07 	. 
	rlca			;041a	07 	. 
	rlca			;041b	07 	. 
	rlca			;041c	07 	. 
	ld l,a			;041d	6f 	o 
	ld h,000h		;041e	26 00 	& . 
	ld de,0f27bh		;0420	11 7b f2 	. { . 
	add hl,de			;0423	19 	. 
	push hl			;0424	e5 	. 
	ld de,0000ah		;0425	11 0a 00 	. . . 
	add hl,de			;0428	19 	. 
	ld a,(hl)			;0429	7e 	~ 
	inc hl			;042a	23 	# 
	ld h,(hl)			;042b	66 	f 
	ld l,a			;042c	6f 	o 
	ld (0f353h),hl		;042d	22 53 f3 	" S . 
	pop hl			;0430	e1 	. 
	ret			;0431	c9 	. 
	ld hl,00000h		;0432	21 00 00 	! . . 
	xor a			;0435	af 	. 
	ld (00004h),a		;0436	32 04 00 	2 . . 
	ret			;0439	c9 	. 
	ld a,(0f34dh)		;043a	3a 4d f3 	: M . 
	or a			;043d	b7 	. 
	jp z,00595h		;043e	ca 95 05 	. . . 
	xor a			;0441	af 	. 
	ld (0f35dh),a		;0442	32 5d f3 	2 ] . 
	ld hl,(0f353h)		;0445	2a 53 f3 	* S . 
	ld de,00013h		;0448	11 13 00 	. . . 
	add hl,de			;044b	19 	. 
	bit 3,(hl)		;044c	cb 5e 	. ^ 
	ld a,c			;044e	79 	y 
	jr z,$+7		;044f	28 05 	( . 
	cp 002h		;0451	fe 02 	. . 
	jr nz,$+3		;0453	20 01 	  . 
	xor a			;0455	af 	. 
	ld (0f35eh),a		;0456	32 5e f3 	2 ^ . 
	cp 002h		;0459	fe 02 	. . 
	jr nz,$+33		;045b	20 1f 	  . 
	ld hl,(0f353h)		;045d	2a 53 f3 	* S . 
	inc hl			;0460	23 	# 
	ld b,(hl)			;0461	46 	F 
	ld a,001h		;0462	3e 01 	> . 
	rlca			;0464	07 	. 
	djnz $-1		;0465	10 fd 	. . 
	ld (0f357h),a		;0467	32 57 f3 	2 W . 
	ld a,(0f34dh)		;046a	3a 4d f3 	: M . 
	ld (0f358h),a		;046d	32 58 f3 	2 X . 
	ld a,(0f34eh)		;0470	3a 4e f3 	: N . 
	ld (0f359h),a		;0473	32 59 f3 	2 Y . 
	ld a,(0f350h)		;0476	3a 50 f3 	: P . 
	ld (0f35ah),a		;0479	32 5a f3 	2 Z . 
	ld a,(0f357h)		;047c	3a 57 f3 	: W . 
	or a			;047f	b7 	. 
	jr z,$+58		;0480	28 38 	( 8 
	dec a			;0482	3d 	= 
	ld (0f357h),a		;0483	32 57 f3 	2 W . 
	ld a,(0f34dh)		;0486	3a 4d f3 	: M . 
	ld hl,0f358h		;0489	21 58 f3 	! X . 
	cp (hl)			;048c	be 	. 
	jr nz,$+45		;048d	20 2b 	  + 
	ld a,(0f359h)		;048f	3a 59 f3 	: Y . 
	ld hl,0f34eh		;0492	21 4e f3 	! N . 
	cp (hl)			;0495	be 	. 
	jr nz,$+36		;0496	20 22 	  " 
	ld a,(0f350h)		;0498	3a 50 f3 	: P . 
	ld hl,0f35ah		;049b	21 5a f3 	! Z . 
	cp (hl)			;049e	be 	. 
	jr nz,$+27		;049f	20 19 	  . 
	inc (hl)			;04a1	34 	4 
	ld a,(hl)			;04a2	7e 	~ 
	push hl			;04a3	e5 	. 
	ld hl,(0f353h)		;04a4	2a 53 f3 	* S . 
	cp (hl)			;04a7	be 	. 
	pop hl			;04a8	e1 	. 
	jr c,$+11		;04a9	38 09 	8 . 
	ld (hl),000h		;04ab	36 00 	6 . 
	ld a,(0f359h)		;04ad	3a 59 f3 	: Y . 
	inc a			;04b0	3c 	< 
	ld (0f359h),a		;04b1	32 59 f3 	2 Y . 
	xor a			;04b4	af 	. 
	ld (0f35ch),a		;04b5	32 5c f3 	2 \ . 
	jr $+36		;04b8	18 22 	. " 
	xor a			;04ba	af 	. 
	ld (0f357h),a		;04bb	32 57 f3 	2 W . 
	inc a			;04be	3c 	< 
	ld (0f35ch),a		;04bf	32 5c f3 	2 \ . 
	jr $+26		;04c2	18 18 	. . 
	ld a,(0f34dh)		;04c4	3a 4d f3 	: M . 
	or a			;04c7	b7 	. 
	jp z,005b7h		;04c8	ca b7 05 	. . . 
	xor a			;04cb	af 	. 
	ld (0f357h),a		;04cc	32 57 f3 	2 W . 
	ld a,001h		;04cf	3e 01 	> . 
	ld (0f35dh),a		;04d1	32 5d f3 	2 ] . 
	ld (0f35ch),a		;04d4	32 5c f3 	2 \ . 
	ld a,002h		;04d7	3e 02 	> . 
	ld (0f35eh),a		;04d9	32 5e f3 	2 ^ . 
	xor a			;04dc	af 	. 
	ld (0f35bh),a		;04dd	32 5b f3 	2 [ . 
	ld hl,(0f353h)		;04e0	2a 53 f3 	* S . 
	ld de,0000fh		;04e3	11 0f 00 	. . . 
	add hl,de			;04e6	19 	. 
	ld b,(hl)			;04e7	46 	F 
	ld a,b			;04e8	78 	x 
	or a			;04e9	b7 	. 
	ld a,(0f350h)		;04ea	3a 50 f3 	: P . 
	jr z,$+6		;04ed	28 04 	( . 
	or a			;04ef	b7 	. 
	rra			;04f0	1f 	. 
	djnz $-2		;04f1	10 fc 	. . 
	ld (0f34fh),a		;04f3	32 4f f3 	2 O . 
	ld hl,0f355h		;04f6	21 55 f3 	! U . 
	ld a,(hl)			;04f9	7e 	~ 
	ld (hl),001h		;04fa	36 01 	6 . 
	or a			;04fc	b7 	. 
	jr z,$+36		;04fd	28 22 	( " 
	ld a,(0f34dh)		;04ff	3a 4d f3 	: M . 
	ld hl,0f344h		;0502	21 44 f3 	! D . 
	cp (hl)			;0505	be 	. 
	jr nz,$+20		;0506	20 12 	  . 
	ld a,(0f347h)		;0508	3a 47 f3 	: G . 
	ld hl,0f34eh		;050b	21 4e f3 	! N . 
	cp (hl)			;050e	be 	. 
	jr nz,$+11		;050f	20 09 	  . 
	ld a,(0f34fh)		;0511	3a 4f f3 	: O . 
	ld hl,0f348h		;0514	21 48 f3 	! H . 
	cp (hl)			;0517	be 	. 
	jr z,$+44		;0518	28 2a 	( * 
	ld a,(0f356h)		;051a	3a 56 f3 	: V . 
	or a			;051d	b7 	. 
	call nz,0058ah		;051e	c4 8a 05 	. . . 
	ld a,(0f34dh)		;0521	3a 4d f3 	: M . 
	ld (0f344h),a		;0524	32 44 f3 	2 D . 
	ld a,(0f34eh)		;0527	3a 4e f3 	: N . 
	ld (0f347h),a		;052a	32 47 f3 	2 G . 
	ld a,(0f34fh)		;052d	3a 4f f3 	: O . 
	ld (0f348h),a		;0530	32 48 f3 	2 H . 
	ld hl,(0f353h)		;0533	2a 53 f3 	* S . 
	ld (0f34bh),hl		;0536	22 4b f3 	" K . 
	ld a,(0f35ch)		;0539	3a 5c f3 	: \ . 
	or a			;053c	b7 	. 
	call nz,0058dh		;053d	c4 8d 05 	. . . 
	xor a			;0540	af 	. 
	ld (0f356h),a		;0541	32 56 f3 	2 V . 
	ld hl,(0f353h)		;0544	2a 53 f3 	* S . 
	ld de,00010h		;0547	11 10 00 	. . . 
	add hl,de			;054a	19 	. 
	ld l,(hl)			;054b	6e 	n 
	ld a,(0f350h)		;054c	3a 50 f3 	: P . 
	and l			;054f	a5 	. 
	ld l,a			;0550	6f 	o 
	ld h,000h		;0551	26 00 	& . 
	add hl,hl			;0553	29 	) 
	add hl,hl			;0554	29 	) 
	add hl,hl			;0555	29 	) 
	add hl,hl			;0556	29 	) 
	add hl,hl			;0557	29 	) 
	add hl,hl			;0558	29 	) 
	add hl,hl			;0559	29 	) 
	ld de,0fc00h		;055a	11 00 fc 	. . . 
	add hl,de			;055d	19 	. 
	ld de,(0f351h)		;055e	ed 5b 51 f3 	. [ Q . 
	ld bc,00080h		;0562	01 80 00 	. . . 
	ld a,(0f35dh)		;0565	3a 5d f3 	: ] . 
	or a			;0568	b7 	. 
	jr nz,$+8		;0569	20 06 	  . 
	ld a,001h		;056b	3e 01 	> . 
	ld (0f356h),a		;056d	32 56 f3 	2 V . 
	ex de,hl			;0570	eb 	. 
	call 0f409h		;0571	cd 09 f4 	. . . 
	ld a,(0f35eh)		;0574	3a 5e f3 	: ^ . 
	cp 001h		;0577	fe 01 	. . 
	ld a,(0f35bh)		;0579	3a 5b f3 	: [ . 
	ret nz			;057c	c0 	. 
	or a			;057d	b7 	. 
	ret nz			;057e	c0 	. 
	xor a			;057f	af 	. 
	ld (0f356h),a		;0580	32 56 f3 	2 V . 
	call 0058ah		;0583	cd 8a 05 	. . . 
	ld a,(0f35bh)		;0586	3a 5b f3 	: [ . 
	ret			;0589	c9 	. 
	ld a,006h		;058a	3e 06 	> . 
	ld de,0043eh		;058c	11 3e 04 	. > . 
	ld (0f345h),a		;058f	32 45 f3 	2 E . 
	jp 005eeh		;0592	c3 ee 05 	. . . 
	ld hl,(0f351h)		;0595	2a 51 f3 	* Q . 
	ld de,0f9a0h		;0598	11 a0 f9 	. . . 
	ld bc,00080h		;059b	01 80 00 	. . . 
	call 0f409h		;059e	cd 09 f4 	. . . 
	call 005d9h		;05a1	cd d9 05 	. . . 
	call 0f3e3h		;05a4	cd e3 f3 	. . . 
	ex de,hl			;05a7	eb 	. 
	ld hl,0f9a0h		;05a8	21 a0 f9 	! . . 
	ld bc,00080h		;05ab	01 80 00 	. . . 
	ldir		;05ae	ed b0 	. . 
	ld a,0ffh		;05b0	3e ff 	> . 
	call 0f3e3h		;05b2	cd e3 f3 	. . . 
	xor a			;05b5	af 	. 
	ret			;05b6	c9 	. 
	call 005d9h		;05b7	cd d9 05 	. . . 
	call 0f3e3h		;05ba	cd e3 f3 	. . . 
	ld de,0f9a0h		;05bd	11 a0 f9 	. . . 
	ld bc,00080h		;05c0	01 80 00 	. . . 
	call 0f409h		;05c3	cd 09 f4 	. . . 
	ld a,0ffh		;05c6	3e ff 	> . 
	call 0f3e3h		;05c8	cd e3 f3 	. . . 
	ld hl,(0f351h)		;05cb	2a 51 f3 	* Q . 
	ex de,hl			;05ce	eb 	. 
	ld hl,0f9a0h		;05cf	21 a0 f9 	! . . 
	ld bc,00080h		;05d2	01 80 00 	. . . 
	ldir		;05d5	ed b0 	. . 
	xor a			;05d7	af 	. 
	ret			;05d8	c9 	. 
	ld hl,(0f34fh)		;05d9	2a 4f f3 	* O . 
	ld l,000h		;05dc	2e 00 	. . 
	srl h		;05de	cb 3c 	. < 
	rr l		;05e0	cb 1d 	. . 
	ld de,07800h		;05e2	11 00 78 	. . x 
	ld a,(0f34eh)		;05e5	3a 4e f3 	: N . 
	xor 00eh		;05e8	ee 0e 	. . 
	rrca			;05ea	0f 	. 
	ret nc			;05eb	d0 	. 
	add hl,de			;05ec	19 	. 
	ret			;05ed	c9 	. 
	ld hl,(0f34bh)		;05ee	2a 4b f3 	* K . 
	ld bc,00011h		;05f1	01 11 00 	. . . 
	add hl,bc			;05f4	09 	. 
	ld de,0f33bh		;05f5	11 3b f3 	. ; . 
	ld bc,00003h		;05f8	01 03 00 	. . . 
	ldir		;05fb	ed b0 	. . 
	ld a,080h		;05fd	3e 80 	> . 
	ld (0f33fh),a		;05ff	32 3f f3 	2 ? . 
	call 007f1h		;0602	cd f1 07 	. . . 
	in a,(098h)		;0605	db 98 	. . 
	and 004h		;0607	e6 04 	. . 
	jr nz,$+90		;0609	20 58 	  X 
	ld b,000h		;060b	06 00 	. . 
	in a,(098h)		;060d	db 98 	. . 
	and 004h		;060f	e6 04 	. . 
	jr nz,$+82		;0611	20 50 	  P 
	ld a,005h		;0613	3e 05 	> . 
	call 00025h		;0615	cd 25 00 	. % . 
	djnz $-11		;0618	10 f3 	. . 
	ld hl,008beh		;061a	21 be 08 	! . . 
	call 00ca9h		;061d	cd a9 0c 	. . . 
	ld b,0fah		;0620	06 fa 	. . 
	in a,(098h)		;0622	db 98 	. . 
	and 004h		;0624	e6 04 	. . 
	jr nz,$+55		;0626	20 35 	  5 
	call 00d8fh		;0628	cd 8f 0d 	. . . 
	jr z,$+35		;062b	28 21 	( ! 
	call 00d94h		;062d	cd 94 0d 	. . . 
	cp 052h		;0630	fe 52 	. R 
	jr nz,$+28		;0632	20 1a 	  . 
	ld hl,00d73h		;0634	21 73 0d 	! s . 
	call 00d7dh		;0637	cd 7d 0d 	. } . 
	call 0092eh		;063a	cd 2e 09 	. . . 
	ld hl,0f13ah		;063d	21 3a f1 	! : . 
	res 1,(hl)		;0640	cb 8e 	. . 
	ld hl,00004h		;0642	21 04 00 	! . . 
	call 0f41ch		;0645	cd 1c f4 	. . . 
	and 0f0h		;0648	e6 f0 	. . 
	ld (hl),a			;064a	77 	w 
	jp 0f203h		;064b	c3 03 f2 	. . . 
	ld a,004h		;064e	3e 04 	> . 
	call 00025h		;0650	cd 25 00 	. % . 
	djnz $-49		;0653	10 cd 	. . 
	ld hl,00d78h		;0655	21 78 0d 	! x . 
	call 00d7dh		;0658	cd 7d 0d 	. } . 
	jr $-59		;065b	18 c3 	. . 
	ld hl,00d73h		;065d	21 73 0d 	! s . 
	call 00d7dh		;0660	cd 7d 0d 	. } . 
	ld de,0069ch		;0663	11 9c 06 	. . . 
	ld (0f342h),de		;0666	ed 53 42 f3 	. S B . 
	out (0f3h),a		;066a	d3 f3 	. . 
	ld hl,0fc00h		;066c	21 00 fc 	! . . 
	ld b,000h		;066f	06 00 	. . 
	ld c,08bh		;0671	0e 8b 	. . 
	ld a,(0f345h)		;0673	3a 45 f3 	: E . 
	cp 006h		;0676	fe 06 	. . 
	jr z,$+21		;0678	28 13 	( . 
	sub 004h		;067a	d6 04 	. . 
	jr nz,$+116		;067c	20 72 	  r 
	ld a,080h		;067e	3e 80 	> . 
	out (088h),a		;0680	d3 88 	. . 
	in a,(098h)		;0682	db 98 	. . 
	rra			;0684	1f 	. 
	jp c,00682h		;0685	da 82 06 	. . . 
	ini		;0688	ed a2 	. . 
	jp 00682h		;068a	c3 82 06 	. . . 
	ld a,0a4h		;068d	3e a4 	> . 
	out (088h),a		;068f	d3 88 	. . 
	in a,(098h)		;0691	db 98 	. . 
	rra			;0693	1f 	. 
	jp c,00691h		;0694	da 91 06 	. . . 
	outi		;0697	ed a3 	. . 
	jp 00691h		;0699	c3 91 06 	. . . 
	inc sp			;069c	33 	3 
	inc sp			;069d	33 	3 
	in a,(088h)		;069e	db 88 	. . 
	and 07fh		;06a0	e6 7f 	.  
	ld (0f35bh),a		;06a2	32 5b f3 	2 [ . 
	ld c,a			;06a5	4f 	O 
	out (0f2h),a		;06a6	d3 f2 	. . 
	ld a,c			;06a8	79 	y 
	and 01fh		;06a9	e6 1f 	. . 
	jr z,$+75		;06ab	28 49 	( I 
	ld a,(0f33fh)		;06ad	3a 3f f3 	: ? . 
	bit 4,c		;06b0	cb 61 	. a 
	jr nz,$+4		;06b2	20 02 	  . 
	and 07fh		;06b4	e6 7f 	.  
	inc a			;06b6	3c 	< 
	ld (0f33fh),a		;06b7	32 3f f3 	2 ? . 
	bit 7,a		;06ba	cb 7f 	.  
	jr z,$+32		;06bc	28 1e 	( . 
	and 07fh		;06be	e6 7f 	.  
	cp 003h		;06c0	fe 03 	. . 
	jp c,00602h		;06c2	da 02 06 	. . . 
	cp 005h		;06c5	fe 05 	. . 
	jr nc,$+71		;06c7	30 45 	0 E 
	call 0093eh		;06c9	cd 3e 09 	. > . 
	ld hl,0f337h		;06cc	21 37 f3 	! 7 . 
	ld a,(0f344h)		;06cf	3a 44 f3 	: D . 
	dec a			;06d2	3d 	= 
	rrca			;06d3	0f 	. 
	jr nc,$+3		;06d4	30 01 	0 . 
	inc hl			;06d6	23 	# 
	ld (hl),000h		;06d7	36 00 	6 . 
	jp 00602h		;06d9	c3 02 06 	. . . 
	and 07fh		;06dc	e6 7f 	.  
	cp 00ch		;06de	fe 0c 	. . 
	jp c,00602h		;06e0	da 02 06 	. . . 
	cp 00fh		;06e3	fe 0f 	. . 
	jr nc,$+41		;06e5	30 27 	0 ' 
	call 009a2h		;06e7	cd a2 09 	. . . 
	call 009a6h		;06ea	cd a6 09 	. . . 
	jp 00602h		;06ed	c3 02 06 	. . . 
	ld (0f35bh),a		;06f0	32 5b f3 	2 [ . 
	out (0f2h),a		;06f3	d3 f2 	. . 
	ret			;06f5	c9 	. 
	ld a,(0f345h)		;06f6	3a 45 f3 	: E . 
	cp 004h		;06f9	fe 04 	. . 
	ret z			;06fb	c8 	. 
	ld a,(0f35bh)		;06fc	3a 5b f3 	: [ . 
	or a			;06ff	b7 	. 
	ret z			;0700	c8 	. 
	ld hl,0072ah		;0701	21 2a 07 	! * . 
	call 00ca9h		;0704	cd a9 0c 	. . . 
	or a			;0707	b7 	. 
	jp z,00602h		;0708	ca 02 06 	. . . 
	jp 0f203h		;070b	c3 03 f2 	. . . 
	ld a,(0f345h)		;070e	3a 45 f3 	: E . 
	cp 004h		;0711	fe 04 	. . 
	ld hl,00774h		;0713	21 74 07 	! t . 
	jr z,$+5		;0716	28 03 	( . 
	ld hl,007b3h		;0718	21 b3 07 	! . . 
	call 00ca9h		;071b	cd a9 0c 	. . . 
	or a			;071e	b7 	. 
	jp z,00602h		;071f	ca 02 06 	. . . 
	dec a			;0722	3d 	= 
	jp nz,0f203h		;0723	c2 03 f2 	. . . 
	ld (0f35bh),a		;0726	32 5b f3 	2 [ . 
	ret			;0729	c9 	. 
	jr nz,$+70		;072a	20 44 	  D 
	ld a,c			;072c	79 	y 
	ld (hl),e			;072d	73 	s 
	ld l,e			;072e	6b 	k 
	ld l,c			;072f	69 	i 
	ld h,l			;0730	65 	e 
	ld (hl),h			;0731	74 	t 
	ld l,e			;0732	6b 	k 
	ld h,c			;0733	61 	a 
	jr nz,$+124		;0734	20 7a 	  z 
	ld h,c			;0736	61 	a 
	ld h,d			;0737	62 	b 
	ld h,l			;0738	65 	e 
	ld a,d			;0739	7a 	z 
	ld (hl),b			;073a	70 	p 
	ld l,c			;073b	69 	i 
	ld h,l			;073c	65 	e 
	ld h,e			;073d	63 	c 
	ld a,d			;073e	7a 	z 
	ld l,a			;073f	6f 	o 
	ld l,(hl)			;0740	6e 	n 
	ld h,c			;0741	61 	a 
	jr nz,$+114		;0742	20 70 	  p 
	ld (hl),d			;0744	72 	r 
	ld a,d			;0745	7a 	z 
	ld h,l			;0746	65 	e 
	ld h,h			;0747	64 	d 
	jr nz,$+124		;0748	20 7a 	  z 
	ld h,c			;074a	61 	a 
	ld (hl),b			;074b	70 	p 
	ld l,c			;074c	69 	i 
	ld (hl),e			;074d	73 	s 
	ld h,l			;074e	65 	e 
	ld l,l			;074f	6d 	m 
	jr nz,$+47		;0750	20 2d 	  - 
	jr nz,$+114		;0752	20 70 	  p 
	ld l,a			;0754	6f 	o 
	ld (hl),a			;0755	77 	w 
	ld (hl),h			;0756	74 	t 
	rlca			;0757	07 	. 
	ld (hl),d			;0758	72 	r 
	ld a,d			;0759	7a 	z 
	jr nz,$+42		;075a	20 28 	  ( 
	ld d,b			;075c	50 	P 
	add hl,hl			;075d	29 	) 
	jr nz,$+34		;075e	20 20 	    
	ld (hl),d			;0760	72 	r 
	ld h,l			;0761	65 	e 
	ld a,d			;0762	7a 	z 
	ld a,c			;0763	79 	y 
	ld h,a			;0764	67 	g 
	ld l,(hl)			;0765	6e 	n 
	ld (hl),l			;0766	75 	u 
	ld l,d			;0767	6a 	j 
	jr nz,$+42		;0768	20 28 	  ( 
	ld d,d			;076a	52 	R 
	add hl,hl			;076b	29 	) 
	jr nz,$+34		;076c	20 20 	    
	ccf			;076e	3f 	? 
	jr nz,$-126		;076f	20 80 	  . 
	ld d,b			;0771	50 	P 
	ld d,d			;0772	52 	R 
	add a,b			;0773	80 	. 
	jr nz,$+68		;0774	20 42 	  B 
	ex af,af'			;0776	08 	. 
	ld b,064h		;0777	06 64 	. d 
	jr nz,$+113		;0779	20 6f 	  o 
	ld h,h			;077b	64 	d 
	ld h,e			;077c	63 	c 
	ld a,d			;077d	7a 	z 
	ld a,c			;077e	79 	y 
	ld (hl),h			;077f	74 	t 
	ld (hl),l			;0780	75 	u 
	jr nz,$+47		;0781	20 2d 	  - 
	jr nz,$+114		;0783	20 70 	  p 
	ld l,a			;0785	6f 	o 
	ld (hl),a			;0786	77 	w 
	ld (hl),h			;0787	74 	t 
	rlca			;0788	07 	. 
	ld (hl),d			;0789	72 	r 
	ld a,d			;078a	7a 	z 
	jr nz,$+42		;078b	20 28 	  ( 
	ld d,b			;078d	50 	P 
	add hl,hl			;078e	29 	) 
	jr nz,$+34		;078f	20 20 	    
	ld l,c			;0791	69 	i 
	ld h,a			;0792	67 	g 
	ld l,(hl)			;0793	6e 	n 
	ld l,a			;0794	6f 	o 
	ld (hl),d			;0795	72 	r 
	ld (hl),l			;0796	75 	u 
	ld l,d			;0797	6a 	j 
	jr nz,$+42		;0798	20 28 	  ( 
	ld c,c			;079a	49 	I 
	add hl,hl			;079b	29 	) 
	jr nz,$+34		;079c	20 20 	    
	ld (hl),d			;079e	72 	r 
	ld h,l			;079f	65 	e 
	ld a,d			;07a0	7a 	z 
	ld a,c			;07a1	79 	y 
	ld h,a			;07a2	67 	g 
	ld l,(hl)			;07a3	6e 	n 
	ld (hl),l			;07a4	75 	u 
	ld l,d			;07a5	6a 	j 
	jr nz,$+42		;07a6	20 28 	  ( 
	ld d,d			;07a8	52 	R 
	add hl,hl			;07a9	29 	) 
	jr nz,$+34		;07aa	20 20 	    
	ccf			;07ac	3f 	? 
	jr nz,$-126		;07ad	20 80 	  . 
	ld d,b			;07af	50 	P 
	ld c,c			;07b0	49 	I 
	ld d,d			;07b1	52 	R 
	add a,b			;07b2	80 	. 
	jr nz,$+68		;07b3	20 42 	  B 
	ex af,af'			;07b5	08 	. 
	ld b,064h		;07b6	06 64 	. d 
	jr nz,$+124		;07b8	20 7a 	  z 
	ld h,c			;07ba	61 	a 
	ld (hl),b			;07bb	70 	p 
	ld l,c			;07bc	69 	i 
	ld (hl),e			;07bd	73 	s 
	ld (hl),l			;07be	75 	u 
	jr nz,$+47		;07bf	20 2d 	  - 
	jr nz,$+114		;07c1	20 70 	  p 
	ld l,a			;07c3	6f 	o 
	ld (hl),a			;07c4	77 	w 
	ld (hl),h			;07c5	74 	t 
	rlca			;07c6	07 	. 
	ld (hl),d			;07c7	72 	r 
	ld a,d			;07c8	7a 	z 
	jr nz,$+42		;07c9	20 28 	  ( 
	ld d,b			;07cb	50 	P 
	add hl,hl			;07cc	29 	) 
	jr nz,$+34		;07cd	20 20 	    
	ld l,c			;07cf	69 	i 
	ld h,a			;07d0	67 	g 
	ld l,(hl)			;07d1	6e 	n 
	ld l,a			;07d2	6f 	o 
	ld (hl),d			;07d3	72 	r 
	ld (hl),l			;07d4	75 	u 
	ld l,d			;07d5	6a 	j 
	jr nz,$+42		;07d6	20 28 	  ( 
	ld c,c			;07d8	49 	I 
	add hl,hl			;07d9	29 	) 
	jr nz,$+34		;07da	20 20 	    
	ld (hl),d			;07dc	72 	r 
	ld h,l			;07dd	65 	e 
	ld a,d			;07de	7a 	z 
	ld a,c			;07df	79 	y 
	ld h,a			;07e0	67 	g 
	ld l,(hl)			;07e1	6e 	n 
	ld (hl),l			;07e2	75 	u 
	ld l,d			;07e3	6a 	j 
	jr nz,$+42		;07e4	20 28 	  ( 
	ld d,d			;07e6	52 	R 
	add hl,hl			;07e7	29 	) 
	jr nz,$+34		;07e8	20 20 	    
	ccf			;07ea	3f 	? 
	jr nz,$-126		;07eb	20 80 	  . 
	ld d,b			;07ed	50 	P 
	ld c,c			;07ee	49 	I 
	ld d,d			;07ef	52 	R 
	add a,b			;07f0	80 	. 
	ld a,(0f344h)		;07f1	3a 44 f3 	: D . 
	out (0f8h),a		;07f4	d3 f8 	. . 
	out (0feh),a		;07f6	d3 fe 	. . 
	ld hl,0f339h		;07f8	21 39 f3 	! 9 . 
	dec a			;07fb	3d 	= 
	jr z,$+3		;07fc	28 01 	( . 
	inc hl			;07fe	23 	# 
	ld c,(hl)			;07ff	4e 	N 
	out (c),a		;0800	ed 79 	. y 
	dec hl			;0802	2b 	+ 
	dec hl			;0803	2b 	+ 
	ld a,(hl)			;0804	7e 	~ 
	push hl			;0805	e5 	. 
	ld hl,0f33dh		;0806	21 3d f3 	! = . 
	bit 7,(hl)		;0809	cb 7e 	. ~ 
	jr z,$+3		;080b	28 01 	( . 
	add a,a			;080d	87 	. 
	out (089h),a		;080e	d3 89 	. . 
	ld bc,00028h		;0810	01 28 00 	. ( . 
	bit 5,(hl)		;0813	cb 6e 	. n 
	jr z,$+4		;0815	28 02 	( . 
	ld c,050h		;0817	0e 50 	. P 
	ld a,(hl)			;0819	7e 	~ 
	and 050h		;081a	e6 50 	. P 
	cp 040h		;081c	fe 40 	. @ 
	ld a,(0f347h)		;081e	3a 47 f3 	: G . 
	jr nz,$+7		;0821	20 05 	  . 
	rra			;0823	1f 	. 
	jr nc,$+4		;0824	30 02 	0 . 
	ld b,080h		;0826	06 80 	. . 
	cp c			;0828	b9 	. 
	jr c,$+5		;0829	38 03 	8 . 
	sub c			;082b	91 	. 
	ld b,080h		;082c	06 80 	. . 
	ex (sp),hl			;082e	e3 	. 
	ld (hl),a			;082f	77 	w 
	ld (0f33eh),a		;0830	32 3e f3 	2 > . 
	ex (sp),hl			;0833	e3 	. 
	bit 7,(hl)		;0834	cb 7e 	. ~ 
	jr z,$+3		;0836	28 01 	( . 
	add a,a			;0838	87 	. 
	out (08bh),a		;0839	d3 8b 	. . 
	ld a,(0f348h)		;083b	3a 48 f3 	: H . 
	dec hl			;083e	2b 	+ 
	bit 7,b		;083f	cb 78 	. x 
	out (0f7h),a		;0841	d3 f7 	. . 
	jr nz,$+5		;0843	20 03 	  . 
	out (0f6h),a		;0845	d3 f6 	. . 
	dec hl			;0847	2b 	+ 
	add a,(hl)			;0848	86 	. 
	pop hl			;0849	e1 	. 
	out (08ah),a		;084a	d3 8a 	. . 
	ld de,008a6h		;084c	11 a6 08 	. . . 
	ld (0f342h),de		;084f	ed 53 42 f3 	. S B . 
	ld a,(0f33dh)		;0853	3a 3d f3 	: = . 
	and 003h		;0856	e6 03 	. . 
	or 010h		;0858	f6 10 	. . 
	out (088h),a		;085a	d3 88 	. . 
	ld (0f340h),a		;085c	32 40 f3 	2 @ . 
	ld bc,0fa02h		;085f	01 02 fa 	. . . 
	out (0f2h),a		;0862	d3 f2 	. . 
	ld a,010h		;0864	3e 10 	> . 
	call 00025h		;0866	cd 25 00 	. % . 
	out (0f3h),a		;0869	d3 f3 	. . 
	djnz $-9		;086b	10 f5 	. . 
	ld hl,008beh		;086d	21 be 08 	! . . 
	out (0f2h),a		;0870	d3 f2 	. . 
	ld (0f340h),a		;0872	32 40 f3 	2 @ . 
	call 00ca9h		;0875	cd a9 0c 	. . . 
	out (0f3h),a		;0878	d3 f3 	. . 
	ld b,0fah		;087a	06 fa 	. . 
	out (0f2h),a		;087c	d3 f2 	. . 
	call 00d8fh		;087e	cd 8f 0d 	. . . 
	jr z,$+9		;0881	28 07 	( . 
	call 00d94h		;0883	cd 94 0d 	. . . 
	cp 052h		;0886	fe 52 	. R 
	jr z,$+23		;0888	28 15 	( . 
	ld a,004h		;088a	3e 04 	> . 
	call 00025h		;088c	cd 25 00 	. % . 
	out (0f3h),a		;088f	d3 f3 	. . 
	djnz $-21		;0891	10 e9 	. . 
	ld hl,00d78h		;0893	21 78 0d 	! x . 
	out (0f2h),a		;0896	d3 f2 	. . 
	call 00d7dh		;0898	cd 7d 0d 	. } . 
	out (0f3h),a		;089b	d3 f3 	. . 
	jr $-35		;089d	18 db 	. . 
	ld a,0d0h		;089f	3e d0 	> . 
	out (088h),a		;08a1	d3 88 	. . 
	jp 00634h		;08a3	c3 34 06 	. 4 . 
	out (0f2h),a		;08a6	d3 f2 	. . 
	inc sp			;08a8	33 	3 
	inc sp			;08a9	33 	3 
	ld a,(0f33eh)		;08aa	3a 3e f3 	: > . 
	out (089h),a		;08ad	d3 89 	. . 
	ld a,(0f340h)		;08af	3a 40 f3 	: @ . 
	or a			;08b2	b7 	. 
	push hl			;08b3	e5 	. 
	ld hl,00d73h		;08b4	21 73 0d 	! s . 
	call z,00d7dh		;08b7	cc 7d 0d 	. } . 
	pop hl			;08ba	e1 	. 
	in a,(088h)		;08bb	db 88 	. . 
	ret			;08bd	c9 	. 
	jr nz,$+85		;08be	20 53 	  S 
	ld (hl),b			;08c0	70 	p 
	ld (hl),d			;08c1	72 	r 
	ld h,c			;08c2	61 	a 
	ld (hl),a			;08c3	77 	w 
	ld h,h			;08c4	64 	d 
	ld (bc),a			;08c5	02 	. 
	jr nz,$+101		;08c6	20 63 	  c 
	ld a,d			;08c8	7a 	z 
	ld a,c			;08c9	79 	y 
	jr nz,$+108		;08ca	20 6a 	  j 
	ld h,l			;08cc	65 	e 
	ld (hl),e			;08cd	73 	s 
	ld (hl),h			;08ce	74 	t 
	jr nz,$+102		;08cf	20 64 	  d 
	ld a,c			;08d1	79 	y 
	ld (hl),e			;08d2	73 	s 
	ld l,e			;08d3	6b 	k 
	ld l,c			;08d4	69 	i 
	ld h,l			;08d5	65 	e 
	ld (hl),h			;08d6	74 	t 
	ld l,e			;08d7	6b 	k 
	ld h,c			;08d8	61 	a 
	jr nz,$+47		;08d9	20 2d 	  - 
	jr nz,$+116		;08db	20 72 	  r 
	ld h,l			;08dd	65 	e 
	ld a,d			;08de	7a 	z 
	ld a,c			;08df	79 	y 
	ld h,a			;08e0	67 	g 
	ld l,(hl)			;08e1	6e 	n 
	ld (hl),l			;08e2	75 	u 
	ld l,d			;08e3	6a 	j 
	jr nz,$+42		;08e4	20 28 	  ( 
	ld d,d			;08e6	52 	R 
	add hl,hl			;08e7	29 	) 
	jr nz,$+34		;08e8	20 20 	    
	ccf			;08ea	3f 	? 
	jr nz,$-126		;08eb	20 80 	  . 
	add a,b			;08ed	80 	. 
	push af			;08ee	f5 	. 
	out (0feh),a		;08ef	d3 fe 	. . 
	out (0f8h),a		;08f1	d3 f8 	. . 
	ld hl,0f337h		;08f3	21 37 f3 	! 7 . 
	rra			;08f6	1f 	. 
	ld a,(0f2d2h)		;08f7	3a d2 f2 	: . . 
	jr nc,$+6		;08fa	30 04 	0 . 
	ld a,(0f2e6h)		;08fc	3a e6 f2 	: . . 
	inc hl			;08ff	23 	# 
	ld (0f33dh),a		;0900	32 3d f3 	2 = . 
	ld (hl),000h		;0903	36 00 	6 . 
	inc hl			;0905	23 	# 
	inc hl			;0906	23 	# 
	ld c,(hl)			;0907	4e 	N 
	out (c),a		;0908	ed 79 	. y 
	call 0093eh		;090a	cd 3e 09 	. > . 
	ld hl,0f370h		;090d	21 70 f3 	! p . 
	pop bc			;0910	c1 	. 
	ret z			;0911	c8 	. 
	djnz $+5		;0912	10 03 	. . 
	set 2,(hl)		;0914	cb d6 	. . 
	ret			;0916	c9 	. 
	set 1,(hl)		;0917	cb ce 	. . 
	ld bc,009c4h		;0919	01 c4 09 	. . . 
	ld a,001h		;091c	3e 01 	> . 
	call 00025h		;091e	cd 25 00 	. % . 
	in a,(098h)		;0921	db 98 	. . 
	and 004h		;0923	e6 04 	. . 
	jr nz,$+19		;0925	20 11 	  . 
	dec bc			;0927	0b 	. 
	ld a,b			;0928	78 	x 
	or c			;0929	b1 	. 
	jr nz,$-14		;092a	20 f0 	  . 
	jr $+2		;092c	18 00 	. . 
	out (0f4h),a		;092e	d3 f4 	. . 
	ld a,005h		;0930	3e 05 	> . 
	call 00025h		;0932	cd 25 00 	. % . 
	out (0f5h),a		;0935	d3 f5 	. . 
	ret			;0937	c9 	. 
	ld hl,0f13ah		;0938	21 3a f1 	! : . 
	set 1,(hl)		;093b	cb ce 	. . 
	ret			;093d	c9 	. 
	ld a,(0f33dh)		;093e	3a 3d f3 	: = . 
	and 003h		;0941	e6 03 	. . 
	or 008h		;0943	f6 08 	. . 
	out (088h),a		;0945	d3 88 	. . 
	ld de,00999h		;0947	11 99 09 	. . . 
	ld (0f342h),de		;094a	ed 53 42 f3 	. S B . 
	ld b,0c8h		;094e	06 c8 	. . 
	out (0f2h),a		;0950	d3 f2 	. . 
	ld a,032h		;0952	3e 32 	> 2 
	call 00025h		;0954	cd 25 00 	. % . 
	out (0f3h),a		;0957	d3 f3 	. . 
	djnz $-9		;0959	10 f5 	. . 
	out (0f2h),a		;095b	d3 f2 	. . 
	ld hl,00968h		;095d	21 68 09 	! h . 
	call 00ca9h		;0960	cd a9 0c 	. . . 
	or a			;0963	b7 	. 
	ret z			;0964	c8 	. 
	jp 0f443h		;0965	c3 43 f4 	. C . 
	ld c,b			;0968	48 	H 
	jr nz,$+47		;0969	20 2d 	  - 
	jr nz,$+71		;096b	20 45 	  E 
	ld d,d			;096d	52 	R 
	ld d,d			;096e	52 	R 
	ld c,a			;096f	4f 	O 
	ld d,d			;0970	52 	R 
	jr nz,$+34		;0971	20 20 	    
	dec l			;0973	2d 	- 
	jr nz,$+111		;0974	20 6d 	  m 
	ld l,c			;0976	69 	i 
	ld l,e			;0977	6b 	k 
	ld (hl),d			;0978	72 	r 
	ld l,a			;0979	6f 	o 
	ld (hl),e			;097a	73 	s 
	ld a,c			;097b	79 	y 
	ld (hl),e			;097c	73 	s 
	ld (hl),h			;097d	74 	t 
	ld h,l			;097e	65 	e 
	ld l,l			;097f	6d 	m 
	jr nz,$+42		;0980	20 28 	  ( 
	ld c,l			;0982	4d 	M 
	add hl,hl			;0983	29 	) 
	jr nz,$+34		;0984	20 20 	    
	ld l,c			;0986	69 	i 
	ld h,a			;0987	67 	g 
	ld l,(hl)			;0988	6e 	n 
	ld l,a			;0989	6f 	o 
	ld (hl),d			;098a	72 	r 
	ld (hl),l			;098b	75 	u 
	ld l,d			;098c	6a 	j 
	jr nz,$+42		;098d	20 28 	  ( 
	ld c,c			;098f	49 	I 
	add hl,hl			;0990	29 	) 
	jr nz,$+34		;0991	20 20 	    
	ccf			;0993	3f 	? 
	jr nz,$-126		;0994	20 80 	  . 
	ld c,c			;0996	49 	I 
	ld c,l			;0997	4d 	M 
	add a,b			;0998	80 	. 
	out (0f2h),a		;0999	d3 f2 	. . 
	inc sp			;099b	33 	3 
	inc sp			;099c	33 	3 
	in a,(088h)		;099d	db 88 	. . 
	and 004h		;099f	e6 04 	. . 
	ret			;09a1	c9 	. 
	ld c,040h		;09a2	0e 40 	. @ 
	jr $+4		;09a4	18 02 	. . 
	ld c,060h		;09a6	0e 60 	. ` 
	ld a,(0f33dh)		;09a8	3a 3d f3 	: = . 
	and 003h		;09ab	e6 03 	. . 
	or c			;09ad	b1 	. 
	out (088h),a		;09ae	d3 88 	. . 
	ld a,001h		;09b0	3e 01 	> . 
	call 00025h		;09b2	cd 25 00 	. % . 
	in a,(088h)		;09b5	db 88 	. . 
	and 001h		;09b7	e6 01 	. . 
	jr nz,$-4		;09b9	20 fa 	  . 
	ret			;09bb	c9 	. 
	push bc			;09bc	c5 	. 
	ld a,003h		;09bd	3e 03 	> . 
	ld bc,00383h		;09bf	01 83 03 	. . . 
	out (c),a		;09c2	ed 79 	. y 
	inc a			;09c4	3c 	< 
	outi		;09c5	ed a3 	. . 
	jr nz,$-5		;09c7	20 f9 	  . 
	ld a,000h		;09c9	3e 00 	> . 
	out (c),a		;09cb	ed 79 	. y 
	ld c,086h		;09cd	0e 86 	. . 
	outi		;09cf	ed a3 	. . 
	outi		;09d1	ed a3 	. . 
	in a,(081h)		;09d3	db 81 	. . 
	ld a,002h		;09d5	3e 02 	> . 
	call 00025h		;09d7	cd 25 00 	. % . 
	in a,(081h)		;09da	db 81 	. . 
	pop bc			;09dc	c1 	. 
	ret			;09dd	c9 	. 
	push hl			;09de	e5 	. 
	ld hl,00003h		;09df	21 03 00 	! . . 
	call 0f41ch		;09e2	cd 1c f4 	. . . 
	pop hl			;09e5	e1 	. 
	ret			;09e6	c9 	. 
	call 009deh		;09e7	cd de 09 	. . . 
	and b			;09ea	a0 	. 
	or c			;09eb	b1 	. 
	ld (00003h),a		;09ec	32 03 00 	2 . . 
	ret			;09ef	c9 	. 
	jr nz,$+70		;09f0	20 44 	  D 
	ld (hl),d			;09f2	72 	r 
	ld (hl),l			;09f3	75 	u 
	ld l,e			;09f4	6b 	k 
	ld h,c			;09f5	61 	a 
	ld (hl),d			;09f6	72 	r 
	ld l,e			;09f7	6b 	k 
	ld h,c			;09f8	61 	a 
	jr nz,$+102		;09f9	20 64 	  d 
	ld (hl),d			;09fb	72 	r 
	ld (hl),l			;09fc	75 	u 
	ld l,e			;09fd	6b 	k 
	ld (hl),l			;09fe	75 	u 
	ld l,d			;09ff	6a 	j 
	ld h,l			;0a00	65 	e 
	jr nz,$+47		;0a01	20 2d 	  - 
	jr nz,$+114		;0a03	20 70 	  p 
	ld (hl),d			;0a05	72 	r 
	ld a,d			;0a06	7a 	z 
	ld h,l			;0a07	65 	e 
	ld (hl),d			;0a08	72 	r 
	ld (hl),a			;0a09	77 	w 
	ld l,c			;0a0a	69 	i 
	ld l,d			;0a0b	6a 	j 
	jr nz,$+42		;0a0c	20 28 	  ( 
	ld d,b			;0a0e	50 	P 
	add hl,hl			;0a0f	29 	) 
	jr nz,$+34		;0a10	20 20 	    
	ld l,e			;0a12	6b 	k 
	ld l,a			;0a13	6f 	o 
	ld l,(hl)			;0a14	6e 	n 
	ld (hl),h			;0a15	74 	t 
	ld a,c			;0a16	79 	y 
	ld l,(hl)			;0a17	6e 	n 
	ld (hl),l			;0a18	75 	u 
	ld (hl),l			;0a19	75 	u 
	ld l,d			;0a1a	6a 	j 
	jr nz,$+42		;0a1b	20 28 	  ( 
	ld c,e			;0a1d	4b 	K 
	add hl,hl			;0a1e	29 	) 
	jr nz,$+34		;0a1f	20 20 	    
	ccf			;0a21	3f 	? 
	jr nz,$-126		;0a22	20 80 	  . 
	ld c,e			;0a24	4b 	K 
	ld d,b			;0a25	50 	P 
	add a,b			;0a26	80 	. 
	jr nz,$+70		;0a27	20 44 	  D 
	ld (hl),d			;0a29	72 	r 
	ld (hl),l			;0a2a	75 	u 
	ld l,e			;0a2b	6b 	k 
	ld h,c			;0a2c	61 	a 
	ld (hl),d			;0a2d	72 	r 
	ld l,e			;0a2e	6b 	k 
	ld h,c			;0a2f	61 	a 
	nop			;0a30	00 	. 
	ld l,(hl)			;0a31	6e 	n 
	ld l,c			;0a32	69 	i 
	ld h,l			;0a33	65 	e 
	ld h,a			;0a34	67 	g 
	ld l,a			;0a35	6f 	o 
	ld (hl),h			;0a36	74 	t 
	ld l,a			;0a37	6f 	o 
	ld (hl),a			;0a38	77 	w 
	ld h,c			;0a39	61 	a 
	jr nz,$+47		;0a3a	20 2d 	  - 
	jr nz,$+121		;0a3c	20 77 	  w 
	ld a,c			;0a3e	79 	y 
	ex af,af'			;0a3f	08 	. 
	ld b,063h		;0a40	06 63 	. c 
	ld a,d			;0a42	7a 	z 
	jr nz,$+42		;0a43	20 28 	  ( 
	ld d,a			;0a45	57 	W 
	add hl,hl			;0a46	29 	) 
	jr nz,$+34		;0a47	20 20 	    
	ld (hl),b			;0a49	70 	p 
	ld l,a			;0a4a	6f 	o 
	ld (hl),a			;0a4b	77 	w 
	ld (hl),h			;0a4c	74 	t 
	rlca			;0a4d	07 	. 
	ld (hl),d			;0a4e	72 	r 
	ld a,d			;0a4f	7a 	z 
	jr nz,$+42		;0a50	20 28 	  ( 
	ld d,b			;0a52	50 	P 
	add hl,hl			;0a53	29 	) 
	jr nz,$+34		;0a54	20 20 	    
	ld a,d			;0a56	7a 	z 
	ld l,l			;0a57	6d 	m 
	ld l,c			;0a58	69 	i 
	ld h,l			;0a59	65 	e 
	inc b			;0a5a	04 	. 
	jr nz,$+42		;0a5b	20 28 	  ( 
	ld e,d			;0a5d	5a 	Z 
	add hl,hl			;0a5e	29 	) 
	jr nz,$+34		;0a5f	20 20 	    
	ccf			;0a61	3f 	? 
	jr nz,$-126		;0a62	20 80 	  . 
	ld d,a			;0a64	57 	W 
	ld d,b			;0a65	50 	P 
	ld d,b			;0a66	50 	P 
	ld e,d			;0a67	5a 	Z 
	add a,b			;0a68	80 	. 
	ld a,(0f26bh)		;0a69	3a 6b f2 	: k . 
	bit 2,a		;0a6c	cb 57 	. W 
	jr z,$+17		;0a6e	28 0f 	( . 
	ld hl,009f0h		;0a70	21 f0 09 	! . . 
	call 00ca9h		;0a73	cd a9 0c 	. . . 
	ld hl,0f26bh		;0a76	21 6b f2 	! k . 
	or a			;0a79	b7 	. 
	jp z,00b77h		;0a7a	ca 77 0b 	. w . 
	res 2,(hl)		;0a7d	cb 96 	. . 
	push bc			;0a7f	c5 	. 
	ld bc,02500h		;0a80	01 00 25 	. . % 
	call 00b85h		;0a83	cd 85 0b 	. . . 
	jr nz,$+28		;0a86	20 1a 	  . 
	ld a,001h		;0a88	3e 01 	> . 
	call 00025h		;0a8a	cd 25 00 	. % . 
	dec bc			;0a8d	0b 	. 
	ld a,b			;0a8e	78 	x 
	or c			;0a8f	b1 	. 
	jr nz,$-13		;0a90	20 f1 	  . 
	pop bc			;0a92	c1 	. 
	ld hl,00a27h		;0a93	21 27 0a 	! ' . 
	call 00ca9h		;0a96	cd a9 0c 	. . . 
	ld hl,0f26bh		;0a99	21 6b f2 	! k . 
	or a			;0a9c	b7 	. 
	jp z,00b77h		;0a9d	ca 77 0b 	. w . 
	jr $-33		;0aa0	18 dd 	. . 
	pop bc			;0aa2	c1 	. 
	ld a,c			;0aa3	79 	y 
	cp 020h		;0aa4	fe 20 	.   
	ld a,000h		;0aa6	3e 00 	> . 
	jr c,$+6		;0aa8	38 04 	8 . 
	ld a,(0f36fh)		;0aaa	3a 6f f3 	: o . 
	inc a			;0aad	3c 	< 
	ld (0f36fh),a		;0aae	32 6f f3 	2 o . 
	ld a,(0f26bh)		;0ab1	3a 6b f2 	: k . 
	bit 1,a		;0ab4	cb 4f 	. O 
	jr z,$+4		;0ab6	28 02 	( . 
	res 7,c		;0ab8	cb b9 	. . 
	call 009deh		;0aba	cd de 09 	. . . 
	bit 7,a		;0abd	cb 7f 	.  
	jp z,00ad4h		;0abf	ca d4 0a 	. . . 
	bit 6,a		;0ac2	cb 77 	. w 
	jp z,0f500h		;0ac4	ca 00 f5 	. . . 
	in a,(098h)		;0ac7	db 98 	. . 
	rlca			;0ac9	07 	. 
	jr nc,$-3		;0aca	30 fb 	0 . 
	call 00b2dh		;0acc	cd 2d 0b 	. - . 
	ld a,c			;0acf	79 	y 
	nop			;0ad0	00 	. 
	out (098h),a		;0ad1	d3 98 	. . 
	ret			;0ad3	c9 	. 
	bit 6,a		;0ad4	cb 77 	. w 
	jp nz,00ae6h		;0ad6	c2 e6 0a 	. . . 
	in a,(098h)		;0ad9	db 98 	. . 
	rlca			;0adb	07 	. 
	jr c,$-3		;0adc	38 fb 	8 . 
	call 00b2dh		;0ade	cd 2d 0b 	. - . 
	ld a,c			;0ae1	79 	y 
	cpl			;0ae2	2f 	/ 
	out (098h),a		;0ae3	d3 98 	. . 
	ret			;0ae5	c9 	. 
	ld a,(0f35fh)		;0ae6	3a 5f f3 	: _ . 
	bit 1,a		;0ae9	cb 4f 	. O 
	jr nz,$+15		;0aeb	20 0d 	  . 
	ld a,002h		;0aed	3e 02 	> . 
	ld (0f35fh),a		;0aef	32 5f f3 	2 _ . 
	push hl			;0af2	e5 	. 
	ld hl,0f365h		;0af3	21 65 f3 	! e . 
	call 009bch		;0af6	cd bc 09 	. . . 
	pop hl			;0af9	e1 	. 
	ld a,001h		;0afa	3e 01 	> . 
	out (083h),a		;0afc	d3 83 	. . 
	in a,(083h)		;0afe	db 83 	. . 
	and 001h		;0b00	e6 01 	. . 
	jr z,$-8		;0b02	28 f6 	( . 
	call 00b2dh		;0b04	cd 2d 0b 	. - . 
	ld a,c			;0b07	79 	y 
	out (081h),a		;0b08	d3 81 	. . 
	ret			;0b0a	c9 	. 
	ld a,(0f35fh)		;0b0b	3a 5f f3 	: _ . 
	bit 0,a		;0b0e	cb 47 	. G 
	jr nz,$+15		;0b10	20 0d 	  . 
	ld a,001h		;0b12	3e 01 	> . 
	ld (0f35fh),a		;0b14	32 5f f3 	2 _ . 
	push hl			;0b17	e5 	. 
	ld hl,0f360h		;0b18	21 60 f3 	! ` . 
	call 009bch		;0b1b	cd bc 09 	. . . 
	pop hl			;0b1e	e1 	. 
	ld a,001h		;0b1f	3e 01 	> . 
	out (083h),a		;0b21	d3 83 	. . 
	in a,(083h)		;0b23	db 83 	. . 
	and 001h		;0b25	e6 01 	. . 
	jr z,$-8		;0b27	28 f6 	( . 
	ld a,c			;0b29	79 	y 
	out (081h),a		;0b2a	d3 81 	. . 
	ret			;0b2c	c9 	. 
	ld a,(0f26bh)		;0b2d	3a 6b f2 	: k . 
	bit 4,a		;0b30	cb 67 	. g 
	jr z,$+19		;0b32	28 11 	( . 
	bit 5,a		;0b34	cb 6f 	. o 
	ret nz			;0b36	c0 	. 
	ld hl,00b4dh		;0b37	21 4d 0b 	! M . 
	ld a,(hl)			;0b3a	7e 	~ 
	or a			;0b3b	b7 	. 
	ret z			;0b3c	c8 	. 
	cp c			;0b3d	b9 	. 
	inc hl			;0b3e	23 	# 
	ld a,(hl)			;0b3f	7e 	~ 
	inc hl			;0b40	23 	# 
	jr nz,$-7		;0b41	20 f7 	  . 
	ld c,a			;0b43	4f 	O 
	ret			;0b44	c9 	. 
	bit 5,a		;0b45	cb 6f 	. o 
	ret z			;0b47	c8 	. 
	ld hl,00b62h		;0b48	21 62 0b 	! b . 
	jr $-17		;0b4b	18 ed 	. . 
	ld h,b			;0b4d	60 	` 
	ld h,c			;0b4e	61 	a 
	ld b,b			;0b4f	40 	@ 
	ld h,l			;0b50	65 	e 
	ld a,(hl)			;0b51	7e 	~ 
	ld h,e			;0b52	63 	c 
	ld e,(hl)			;0b53	5e 	^ 
	ld (hl),e			;0b54	73 	s 
	ld a,l			;0b55	7d 	} 
	ld a,d			;0b56	7a 	z 
	ld e,l			;0b57	5d 	] 
	ld l,(hl)			;0b58	6e 	n 
	ld a,e			;0b59	7b 	{ 
	ld l,a			;0b5a	6f 	o 
	ld e,e			;0b5b	5b 	[ 
	ld a,d			;0b5c	7a 	z 
	ld a,h			;0b5d	7c 	| 
	ld l,h			;0b5e	6c 	l 
	ld e,h			;0b5f	5c 	\ 
	ld c,h			;0b60	4c 	L 
	nop			;0b61	00 	. 
	ld h,b			;0b62	60 	` 
	jr nz,$+66		;0b63	20 40 	  @ 
	jr nz,$+128		;0b65	20 7e 	  ~ 
	jr nz,$+96		;0b67	20 5e 	  ^ 
	jr nz,$+127		;0b69	20 7d 	  } 
	jr nz,$+95		;0b6b	20 5d 	  ] 
	jr nz,$+125		;0b6d	20 7b 	  { 
	jr nz,$+93		;0b6f	20 5b 	  [ 
	jr nz,$+126		;0b71	20 7c 	  | 
	jr nz,$+94		;0b73	20 5c 	  \ 
	jr nz,$+2		;0b75	20 00 	  . 
	set 3,(hl)		;0b77	cb de 	. . 
	res 6,(hl)		;0b79	cb b6 	. . 
	ret			;0b7b	c9 	. 
	ld a,(0f26bh)		;0b7c	3a 6b f2 	: k . 
	bit 2,a		;0b7f	cb 57 	. W 
	jr z,$+4		;0b81	28 02 	( . 
	xor a			;0b83	af 	. 
	ret			;0b84	c9 	. 
	call 009deh		;0b85	cd de 09 	. . . 
	bit 7,a		;0b88	cb 7f 	.  
	jr z,$+12		;0b8a	28 0a 	( . 
	bit 6,a		;0b8c	cb 77 	. w 
	jp z,0f503h		;0b8e	ca 03 f5 	. . . 
	in a,(098h)		;0b91	db 98 	. . 
	rlca			;0b93	07 	. 
	sbc a,a			;0b94	9f 	. 
	ret			;0b95	c9 	. 
	bit 6,a		;0b96	cb 77 	. w 
	jr nz,$+9		;0b98	20 07 	  . 
	in a,(098h)		;0b9a	db 98 	. . 
	rlca			;0b9c	07 	. 
	sbc a,a			;0b9d	9f 	. 
	cpl			;0b9e	2f 	/ 
	or a			;0b9f	b7 	. 
	ret			;0ba0	c9 	. 
	ld a,(0f35fh)		;0ba1	3a 5f f3 	: _ . 
	bit 1,a		;0ba4	cb 4f 	. O 
	jr nz,$+13		;0ba6	20 0b 	  . 
	ld a,002h		;0ba8	3e 02 	> . 
	ld (0f35fh),a		;0baa	32 5f f3 	2 _ . 
	ld hl,0f365h		;0bad	21 65 f3 	! e . 
	call 009bch		;0bb0	cd bc 09 	. . . 
	ld a,001h		;0bb3	3e 01 	> . 
	out (083h),a		;0bb5	d3 83 	. . 
	in a,(083h)		;0bb7	db 83 	. . 
	and 001h		;0bb9	e6 01 	. . 
	ret z			;0bbb	c8 	. 
	ld a,0ffh		;0bbc	3e ff 	> . 
	ret			;0bbe	c9 	. 
	ld a,(0f35fh)		;0bbf	3a 5f f3 	: _ . 
	bit 0,a		;0bc2	cb 47 	. G 
	jr nz,$+13		;0bc4	20 0b 	  . 
	ld a,001h		;0bc6	3e 01 	> . 
	ld (0f35fh),a		;0bc8	32 5f f3 	2 _ . 
	ld hl,0f360h		;0bcb	21 60 f3 	! ` . 
	call 009bch		;0bce	cd bc 09 	. . . 
	ld a,001h		;0bd1	3e 01 	> . 
	out (083h),a		;0bd3	d3 83 	. . 
	in a,(083h)		;0bd5	db 83 	. . 
	and 001h		;0bd7	e6 01 	. . 
	ret z			;0bd9	c8 	. 
	ld a,0ffh		;0bda	3e ff 	> . 
	ret			;0bdc	c9 	. 
	ld a,(0f35fh)		;0bdd	3a 5f f3 	: _ . 
	bit 0,a		;0be0	cb 47 	. G 
	jr nz,$+13		;0be2	20 0b 	  . 
	ld a,001h		;0be4	3e 01 	> . 
	ld (0f35fh),a		;0be6	32 5f f3 	2 _ . 
	ld hl,0f360h		;0be9	21 60 f3 	! ` . 
	call 009bch		;0bec	cd bc 09 	. . . 
	in a,(083h)		;0bef	db 83 	. . 
	and 001h		;0bf1	e6 01 	. . 
	ret z			;0bf3	c8 	. 
	ld a,0ffh		;0bf4	3e ff 	> . 
	ret			;0bf6	c9 	. 
	ld a,(0f35fh)		;0bf7	3a 5f f3 	: _ . 
	bit 0,a		;0bfa	cb 47 	. G 
	jr nz,$+13		;0bfc	20 0b 	  . 
	ld a,001h		;0bfe	3e 01 	> . 
	ld (0f35fh),a		;0c00	32 5f f3 	2 _ . 
	ld hl,0f360h		;0c03	21 60 f3 	! ` . 
	call 009bch		;0c06	cd bc 09 	. . . 
	in a,(083h)		;0c09	db 83 	. . 
	and 001h		;0c0b	e6 01 	. . 
	jr z,$-4		;0c0d	28 fa 	( . 
	in a,(081h)		;0c0f	db 81 	. . 
	ret			;0c11	c9 	. 
	call 00b85h		;0c12	cd 85 0b 	. . . 
	ret z			;0c15	c8 	. 
	ld hl,(0fbfeh)		;0c16	2a fe fb 	* . . 
	ld a,l			;0c19	7d 	} 
	or h			;0c1a	b4 	. 
	jr z,$+86		;0c1b	28 54 	( T 
	dec hl			;0c1d	2b 	+ 
	ld (0fbfeh),hl		;0c1e	22 fe fb 	" . . 
	ld hl,(0fbfbh)		;0c21	2a fb fb 	* . . 
	inc hl			;0c24	23 	# 
	ld (0fbfbh),hl		;0c25	22 fb fb 	" . . 
	dec hl			;0c28	2b 	+ 
	ld a,(0fbfdh)		;0c29	3a fd fb 	: . . 
	call 0f3e3h		;0c2c	cd e3 f3 	. . . 
	call 0f41ch		;0c2f	cd 1c f4 	. . . 
	push af			;0c32	f5 	. 
	ld a,0ffh		;0c33	3e ff 	> . 
	call 0f3e3h		;0c35	cd e3 f3 	. . . 
	pop af			;0c38	f1 	. 
	ld c,a			;0c39	4f 	O 
	cp 01ah		;0c3a	fe 1a 	. . 
	jr z,$+44		;0c3c	28 2a 	( * 
	cp 009h		;0c3e	fe 09 	. . 
	jp nz,00aa3h		;0c40	c2 a3 0a 	. . . 
	ld a,(0f26bh)		;0c43	3a 6b f2 	: k . 
	bit 0,a		;0c46	cb 47 	. G 
	jp nz,00aa3h		;0c48	c2 a3 0a 	. . . 
	ld c,020h		;0c4b	0e 20 	.   
	ld a,(0f36fh)		;0c4d	3a 6f f3 	: o . 
	and 007h		;0c50	e6 07 	. . 
	cp 007h		;0c52	fe 07 	. . 
	jp z,00aa3h		;0c54	ca a3 0a 	. . . 
	ld hl,(0fbfeh)		;0c57	2a fe fb 	* . . 
	inc hl			;0c5a	23 	# 
	ld (0fbfeh),hl		;0c5b	22 fe fb 	" . . 
	ld hl,(0fbfbh)		;0c5e	2a fb fb 	* . . 
	dec hl			;0c61	2b 	+ 
	ld (0fbfbh),hl		;0c62	22 fb fb 	" . . 
	jp 00aa3h		;0c65	c3 a3 0a 	. . . 
	ld a,(0f26bh)		;0c68	3a 6b f2 	: k . 
	res 2,a		;0c6b	cb 97 	. . 
	ld (0f26bh),a		;0c6d	32 6b f2 	2 k . 
	ret			;0c70	c9 	. 
	ld hl,0fb7fh		;0c71	21 7f fb 	!  . 
	ld a,(0fbf9h)		;0c74	3a f9 fb 	: . . 
	inc a			;0c77	3c 	< 
	inc a			;0c78	3c 	< 
	ld (0fbf9h),a		;0c79	32 f9 fb 	2 . . 
	add a,l			;0c7c	85 	. 
	ld l,a			;0c7d	6f 	o 
	ld b,(hl)			;0c7e	46 	F 
	dec hl			;0c7f	2b 	+ 
	ld a,(hl)			;0c80	7e 	~ 
	or a			;0c81	b7 	. 
	jp z,00c68h		;0c82	ca 68 0c 	. h . 
	and 007h		;0c85	e6 07 	. . 
	ld (0fbfdh),a		;0c87	32 fd fb 	2 . . 
	ld a,(hl)			;0c8a	7e 	~ 
	and 0f8h		;0c8b	e6 f8 	. . 
	ld h,a			;0c8d	67 	g 
	ld l,000h		;0c8e	2e 00 	. . 
	ld (0fbfbh),hl		;0c90	22 fb fb 	" . . 
	or a			;0c93	b7 	. 
	ld h,b			;0c94	60 	` 
	rr h		;0c95	cb 1c 	. . 
	rr l		;0c97	cb 1d 	. . 
	ld (0fbfeh),hl		;0c99	22 fe fb 	" . . 
	ld a,(0fbf9h)		;0c9c	3a f9 fb 	: . . 
	cp 002h		;0c9f	fe 02 	. . 
	jp nz,00c16h		;0ca1	c2 16 0c 	. . . 
	ld c,00dh		;0ca4	0e 0d 	. . 
	jp 00aa3h		;0ca6	c3 a3 0a 	. . . 
	push hl			;0ca9	e5 	. 
	push bc			;0caa	c5 	. 
	push hl			;0cab	e5 	. 
	ld hl,00d73h		;0cac	21 73 0d 	! s . 
	call 00d7dh		;0caf	cd 7d 0d 	. } . 
	pop hl			;0cb2	e1 	. 
	ld c,007h		;0cb3	0e 07 	. . 
	call 00d87h		;0cb5	cd 87 0d 	. . . 
	ld b,020h		;0cb8	06 20 	.   
	call 00d10h		;0cba	cd 10 0d 	. . . 
	ld c,(hl)			;0cbd	4e 	N 
	ld a,c			;0cbe	79 	y 
	or a			;0cbf	b7 	. 
	jr z,$+20		;0cc0	28 12 	( . 
	cp 07eh		;0cc2	fe 7e 	. ~ 
	jr nz,$+5		;0cc4	20 03 	  . 
	ex (sp),hl			;0cc6	e3 	. 
	ld c,l			;0cc7	4d 	M 
	ex (sp),hl			;0cc8	e3 	. 
	inc hl			;0cc9	23 	# 
	bit 7,c		;0cca	cb 79 	. y 
	jr nz,$+82		;0ccc	20 50 	  P 
	call 00d87h		;0cce	cd 87 0d 	. . . 
	inc b			;0cd1	04 	. 
	jr $-24		;0cd2	18 e6 	. . 
	ld c,020h		;0cd4	0e 20 	.   
	call 00d87h		;0cd6	cd 87 0d 	. . . 
	inc hl			;0cd9	23 	# 
	inc b			;0cda	04 	. 
	push hl			;0cdb	e5 	. 
	ld hl,00003h		;0cdc	21 03 00 	! . . 
	call 0f41ch		;0cdf	cd 1c f4 	. . . 
	rlca			;0ce2	07 	. 
	rlca			;0ce3	07 	. 
	rlca			;0ce4	07 	. 
	and 006h		;0ce5	e6 06 	. . 
	ld hl,0003bh		;0ce7	21 3b 00 	! ; . 
	add a,l			;0cea	85 	. 
	ld l,a			;0ceb	6f 	o 
	ld a,(hl)			;0cec	7e 	~ 
	inc hl			;0ced	23 	# 
	ld h,(hl)			;0cee	66 	f 
	ld l,a			;0cef	6f 	o 
	push de			;0cf0	d5 	. 
	ld e,00ch		;0cf1	1e 0c 	. . 
	call 00d10h		;0cf3	cd 10 0d 	. . . 
	ld c,(hl)			;0cf6	4e 	N 
	inc hl			;0cf7	23 	# 
	bit 7,c		;0cf8	cb 79 	. y 
	jr nz,$+12		;0cfa	20 0a 	  . 
	call 00d87h		;0cfc	cd 87 0d 	. . . 
	inc b			;0cff	04 	. 
	dec e			;0d00	1d 	. 
	jr nz,$-14		;0d01	20 f0 	  . 
	call 00d10h		;0d03	cd 10 0d 	. . . 
	ld c,020h		;0d06	0e 20 	.   
	call 00d87h		;0d08	cd 87 0d 	. . . 
	inc b			;0d0b	04 	. 
	pop de			;0d0c	d1 	. 
	pop hl			;0d0d	e1 	. 
	jr $-84		;0d0e	18 aa 	. . 
	ld c,01bh		;0d10	0e 1b 	. . 
	call 00d87h		;0d12	cd 87 0d 	. . . 
	ld c,058h		;0d15	0e 58 	. X 
	call 00d87h		;0d17	cd 87 0d 	. . . 
	ld c,b			;0d1a	48 	H 
	jp 00d87h		;0d1b	c3 87 0d 	. . . 
	ld c,020h		;0d1e	0e 20 	.   
	call 00d87h		;0d20	cd 87 0d 	. . . 
	xor a			;0d23	af 	. 
	bit 7,(hl)		;0d24	cb 7e 	. ~ 
	jr nz,$+58		;0d26	20 38 	  8 
	ld b,0fah		;0d28	06 fa 	. . 
	call 00d8fh		;0d2a	cd 8f 0d 	. . . 
	jr nz,$+19		;0d2d	20 11 	  . 
	ld a,004h		;0d2f	3e 04 	> . 
	call 00025h		;0d31	cd 25 00 	. % . 
	djnz $-10		;0d34	10 f4 	. . 
	push hl			;0d36	e5 	. 
	ld hl,00d78h		;0d37	21 78 0d 	! x . 
	call 00d7dh		;0d3a	cd 7d 0d 	. } . 
	pop hl			;0d3d	e1 	. 
	jr $-22		;0d3e	18 e8 	. . 
	call 00d94h		;0d40	cd 94 0d 	. . . 
	ld c,a			;0d43	4f 	O 
	ld b,000h		;0d44	06 00 	. . 
	push hl			;0d46	e5 	. 
	ld a,(hl)			;0d47	7e 	~ 
	cp c			;0d48	b9 	. 
	jr z,$+15		;0d49	28 0d 	( . 
	cp 07eh		;0d4b	fe 7e 	. ~ 
	jr z,$+11		;0d4d	28 09 	( . 
	inc b			;0d4f	04 	. 
	inc hl			;0d50	23 	# 
	bit 7,(hl)		;0d51	cb 7e 	. ~ 
	jr z,$-12		;0d53	28 f2 	( . 
	pop hl			;0d55	e1 	. 
	jr $-46		;0d56	18 d0 	. . 
	pop hl			;0d58	e1 	. 
	ld hl,00d73h		;0d59	21 73 0d 	! s . 
	call 00d7dh		;0d5c	cd 7d 0d 	. } . 
	ld a,b			;0d5f	78 	x 
	pop bc			;0d60	c1 	. 
	pop hl			;0d61	e1 	. 
	cp 003h		;0d62	fe 03 	. . 
	ret c			;0d64	d8 	. 
	push hl			;0d65	e5 	. 
	ld hl,00003h		;0d66	21 03 00 	! . . 
	call 0f41ch		;0d69	cd 1c f4 	. . . 
	add a,040h		;0d6c	c6 40 	. @ 
	ld (hl),a			;0d6e	77 	w 
	pop hl			;0d6f	e1 	. 
	jp 00ca9h		;0d70	c3 a9 0c 	. . . 
	dec de			;0d73	1b 	. 
	ld e,b			;0d74	58 	X 
	jr nz,$+28		;0d75	20 1a 	  . 
	add a,b			;0d77	80 	. 
	dec de			;0d78	1b 	. 
	ld e,b			;0d79	58 	X 
	ld a,d			;0d7a	7a 	z 
	jr nz,$-126		;0d7b	20 80 	  . 
	ld c,(hl)			;0d7d	4e 	N 
	bit 7,c		;0d7e	cb 79 	. y 
	ret nz			;0d80	c0 	. 
	inc hl			;0d81	23 	# 
	call 00d87h		;0d82	cd 87 0d 	. . . 
	jr $-8		;0d85	18 f6 	. . 
	call 0f46ch		;0d87	cd 6c f4 	. l . 
	jr z,$-3		;0d8a	28 fb 	( . 
	jp 0f483h		;0d8c	c3 83 f4 	. . . 
	in a,(082h)		;0d8f	db 82 	. . 
	and 001h		;0d91	e6 01 	. . 
	ret			;0d93	c9 	. 
	call 00d8fh		;0d94	cd 8f 0d 	. . . 
	jr z,$-3		;0d97	28 fb 	( . 
	in a,(080h)		;0d99	db 80 	. . 
	cp 061h		;0d9b	fe 61 	. a 
	ret c			;0d9d	d8 	. 
	cp 07bh		;0d9e	fe 7b 	. { 
	ret nc			;0da0	d0 	. 
	and 05fh		;0da1	e6 5f 	. _ 
	ret			;0da3	c9 	. 
	ld hl,0fb7ch		;0da4	21 7c fb 	! | . 
	inc a			;0da7	3c 	< 
	jp z,00e60h		;0da8	ca 60 0e 	. ` . 
	dec a			;0dab	3d 	= 
	jp nz,00de6h		;0dac	c2 e6 0d 	. . . 
	bit 7,(hl)		;0daf	cb 7e 	. ~ 
	jr z,$+36		;0db1	28 22 	( " 
	ld hl,0f26bh		;0db3	21 6b f2 	! k . 
	bit 7,(hl)		;0db6	cb 7e 	. ~ 
	jr z,$+19		;0db8	28 11 	( . 
	res 7,(hl)		;0dba	cb be 	. . 
	ld hl,00ed2h		;0dbc	21 d2 0e 	! . . 
	call 00eb5h		;0dbf	cd b5 0e 	. . . 
	call 00ea6h		;0dc2	cd a6 0e 	. . . 
	ld hl,00ebeh		;0dc5	21 be 0e 	! . . 
	call 00eb5h		;0dc8	cd b5 0e 	. . . 
	ld hl,0fb7ch		;0dcb	21 7c fb 	! | . 
	bit 0,(hl)		;0dce	cb 46 	. F 
	call z,00e60h		;0dd0	cc 60 0e 	. ` . 
	jr $+15		;0dd3	18 0d 	. . 
	res 0,(hl)		;0dd5	cb 86 	. . 
	ld hl,0f26bh		;0dd7	21 6b f2 	! k . 
	res 7,(hl)		;0dda	cb be 	. . 
	ld hl,0f3a0h		;0ddc	21 a0 f3 	! . . 
	ld (0f273h),hl		;0ddf	22 73 f2 	" s . 
	out (00ch),a		;0de2	d3 0c 	. . 
	or a			;0de4	b7 	. 
	ret			;0de5	c9 	. 
	bit 7,(hl)		;0de6	cb 7e 	. ~ 
	jp nz,00e44h		;0de8	c2 44 0e 	. D . 
	res 0,(hl)		;0deb	cb 86 	. . 
	call 00ee6h		;0ded	cd e6 0e 	. . . 
	cp 0d1h		;0df0	fe d1 	. . 
	jp nz,00e88h		;0df2	c2 88 0e 	. . . 
	ld a,00ch		;0df5	3e 0c 	> . 
	sub c			;0df7	91 	. 
	ld c,a			;0df8	4f 	O 
	jp c,00e88h		;0df9	da 88 0e 	. . . 
	jp z,00e88h		;0dfc	ca 88 0e 	. . . 
	add a,a			;0dff	87 	. 
	add a,a			;0e00	87 	. 
	add a,a			;0e01	87 	. 
	add a,a			;0e02	87 	. 
	sub c			;0e03	91 	. 
	ld hl,0fa40h		;0e04	21 40 fa 	! @ . 
	sub 008h		;0e07	d6 08 	. . 
	jr c,$+5		;0e09	38 03 	8 . 
	inc hl			;0e0b	23 	# 
	jr $-5		;0e0c	18 f9 	. . 
	add a,008h		;0e0e	c6 08 	. . 
	xor 007h		;0e10	ee 07 	. . 
	inc a			;0e12	3c 	< 
	ld b,a			;0e13	47 	G 
	ld a,01eh		;0e14	3e 1e 	> . 
	sub b			;0e16	90 	. 
	ld c,a			;0e17	4f 	O 
	xor a			;0e18	af 	. 
	scf			;0e19	37 	7 
	rla			;0e1a	17 	. 
	djnz $-2		;0e1b	10 fc 	. . 
	and (hl)			;0e1d	a6 	. 
	jp nz,00e88h		;0e1e	c2 88 0e 	. . . 
	inc hl			;0e21	23 	# 
	ld a,c			;0e22	79 	y 
	or a			;0e23	b7 	. 
	jr z,$+14		;0e24	28 0c 	( . 
	ld a,(hl)			;0e26	7e 	~ 
	or a			;0e27	b7 	. 
	jp nz,00e88h		;0e28	c2 88 0e 	. . . 
	inc hl			;0e2b	23 	# 
	ld a,c			;0e2c	79 	y 
	sub 008h		;0e2d	d6 08 	. . 
	ld c,a			;0e2f	4f 	O 
	jr nc,$-14		;0e30	30 f0 	0 . 
	ld a,(0f2b0h)		;0e32	3a b0 f2 	: . . 
	sub 01eh		;0e35	d6 1e 	. . 
	ld (0f2b0h),a		;0e37	32 b0 f2 	2 . . 
	ld (0fb7bh),a		;0e3a	32 7b fb 	2 { . 
	ld hl,0fb7ch		;0e3d	21 7c fb 	! | . 
	set 7,(hl)		;0e40	cb fe 	. . 
	res 0,(hl)		;0e42	cb 86 	. . 
	ld hl,0f26bh		;0e44	21 6b f2 	! k . 
	bit 7,(hl)		;0e47	cb 7e 	. ~ 
	jr nz,$+13		;0e49	20 0b 	  . 
	set 7,(hl)		;0e4b	cb fe 	. . 
	ld hl,00ebeh		;0e4d	21 be 0e 	! . . 
	call 00eb5h		;0e50	cd b5 0e 	. . . 
	call 00ea6h		;0e53	cd a6 0e 	. . . 
	ld hl,00ed2h		;0e56	21 d2 0e 	! . . 
	call 00eb5h		;0e59	cd b5 0e 	. . . 
	out (00dh),a		;0e5c	d3 0d 	. . 
	or a			;0e5e	b7 	. 
	ret			;0e5f	c9 	. 
	bit 7,(hl)		;0e60	cb 7e 	. ~ 
	ret z			;0e62	c8 	. 
	res 7,(hl)		;0e63	cb be 	. . 
	call 00dd5h		;0e65	cd d5 0d 	. . . 
	ld hl,00ebeh		;0e68	21 be 0e 	! . . 
	call 00eb5h		;0e6b	cd b5 0e 	. . . 
	call 00ee6h		;0e6e	cd e6 0e 	. . . 
	ld b,01eh		;0e71	06 1e 	. . 
	cp 0b3h		;0e73	fe b3 	. . 
	jr z,$+8		;0e75	28 06 	( . 
	ret c			;0e77	d8 	. 
	ld b,a			;0e78	47 	G 
	ld a,0d1h		;0e79	3e d1 	> . 
	sub b			;0e7b	90 	. 
	ld b,a			;0e7c	47 	G 
	ld a,(0f2b0h)		;0e7d	3a b0 f2 	: . . 
	add a,b			;0e80	80 	. 
	ld (0f2b0h),a		;0e81	32 b0 f2 	2 . . 
	ld (0fb7bh),a		;0e84	32 7b fb 	2 { . 
	ret			;0e87	c9 	. 
	ld hl,00e90h		;0e88	21 90 0e 	! . . 
	call 00ca9h		;0e8b	cd a9 0c 	. . . 
	scf			;0e8e	37 	7 
	ret			;0e8f	c9 	. 
	jr nz,$+68		;0e90	20 42 	  B 
	ld h,c			;0e92	61 	a 
	ld l,(hl)			;0e93	6e 	n 
	ld l,e			;0e94	6b 	k 
	jr nz,$+51		;0e95	20 31 	  1 
	jr nz,$+124		;0e97	20 7a 	  z 
	ld h,c			;0e99	61 	a 
	ld l,d			;0e9a	6a 	j 
	ld bc,07974h		;0e9b	01 74 79 	. t y 
	jr nz,$+34		;0e9e	20 20 	    
	jr z,$+34		;0ea0	28 20 	(   
	add hl,hl			;0ea2	29 	) 
	add a,b			;0ea3	80 	. 
	ld a,(hl)			;0ea4	7e 	~ 
	add a,b			;0ea5	80 	. 
	ld hl,00000h		;0ea6	21 00 00 	! . . 
	ld b,000h		;0ea9	06 00 	. . 
	call 0f41ch		;0eab	cd 1c f4 	. . . 
	call 0f98ch		;0eae	cd 8c f9 	. . . 
	inc hl			;0eb1	23 	# 
	djnz $-7		;0eb2	10 f7 	. . 
	ret			;0eb4	c9 	. 
	ld de,0f98ch		;0eb5	11 8c f9 	. . . 
	ld bc,00014h		;0eb8	01 14 00 	. . . 
	ldir		;0ebb	ed b0 	. . 
	ret			;0ebd	c9 	. 
	out (00dh),a		;0ebe	d3 0d 	. . 
	ld (hl),a			;0ec0	77 	w 
	jr $+5		;0ec1	18 03 	. . 
	out (00dh),a		;0ec3	d3 0d 	. . 
	ld a,(hl)			;0ec5	7e 	~ 
	out (00ch),a		;0ec6	d3 0c 	. . 
	ret			;0ec8	c9 	. 
	out (00fh),a		;0ec9	d3 0f 	. . 
	call 0f99fh		;0ecb	cd 9f f9 	. . . 
	out (00eh),a		;0ece	d3 0e 	. . 
	ret			;0ed0	c9 	. 
	jp (hl)			;0ed1	e9 	. 
	out (00ch),a		;0ed2	d3 0c 	. . 
	ld (hl),a			;0ed4	77 	w 
	jr $+5		;0ed5	18 03 	. . 
	out (00ch),a		;0ed7	d3 0c 	. . 
	ld a,(hl)			;0ed9	7e 	~ 
	out (00dh),a		;0eda	d3 0d 	. . 
	ret			;0edc	c9 	. 
	out (00fh),a		;0edd	d3 0f 	. . 
	call 0f99fh		;0edf	cd 9f f9 	. . . 
	out (00eh),a		;0ee2	d3 0e 	. . 
	ret			;0ee4	c9 	. 
	jp (hl)			;0ee5	e9 	. 
	ld a,(0f2b0h)		;0ee6	3a b0 f2 	: . . 
	ld b,a			;0ee9	47 	G 
	ld a,(0f2b8h)		;0eea	3a b8 f2 	: . . 
	ld c,a			;0eed	4f 	O 
	add a,a			;0eee	87 	. 
	add a,a			;0eef	87 	. 
	add a,a			;0ef0	87 	. 
	add a,a			;0ef1	87 	. 
	sub c			;0ef2	91 	. 
	add a,b			;0ef3	80 	. 
	ret			;0ef4	c9 	. 
	nop			;0ef5	00 	. 
	nop			;0ef6	00 	. 
	nop			;0ef7	00 	. 
	nop			;0ef8	00 	. 
	nop			;0ef9	00 	. 
	nop			;0efa	00 	. 
	nop			;0efb	00 	. 
	nop			;0efc	00 	. 
	nop			;0efd	00 	. 
	nop			;0efe	00 	. 
	nop			;0eff	00 	. 
	nop			;0f00	00 	. 
	nop			;0f01	00 	. 
	nop			;0f02	00 	. 
	nop			;0f03	00 	. 
	nop			;0f04	00 	. 
	nop			;0f05	00 	. 
	nop			;0f06	00 	. 
	and b			;0f07	a0 	. 
	ei			;0f08	fb 	. 
	ld a,(0fbf4h)		;0f09	3a f4 fb 	: . . 
	ld i,a		;0f0c	ed 47 	. G 
	ld a,(0fbf5h)		;0f0e	3a f5 fb 	: . . 
	ld r,a		;0f11	ed 4f 	. O 
	pop ix		;0f13	dd e1 	. . 
	pop iy		;0f15	fd e1 	. . 
	pop hl			;0f17	e1 	. 
	pop de			;0f18	d1 	. 
	pop bc			;0f19	c1 	. 
	pop af			;0f1a	f1 	. 
	exx			;0f1b	d9 	. 
	ex af,af'			;0f1c	08 	. 
	pop de			;0f1d	d1 	. 
	pop bc			;0f1e	c1 	. 
	pop af			;0f1f	f1 	. 
	pop hl			;0f20	e1 	. 
	ld sp,hl			;0f21	f9 	. 
	ld hl,00000h		;0f22	21 00 00 	! . . 
	di			;0f25	f3 	. 
	jp 00000h		;0f26	c3 00 00 	. . . 
	nop			;0f29	00 	. 
	nop			;0f2a	00 	. 
	nop			;0f2b	00 	. 
	jp 0105ah		;0f2c	c3 5a 10 	. Z . 
	ld a,080h		;0f2f	3e 80 	> . 
	out (081h),a		;0f31	d3 81 	. . 
	djnz $-4		;0f33	10 fa 	. . 
	ret			;0f35	c9 	. 
	di			;0f36	f3 	. 
	ld sp,0fbc0h		;0f37	31 c0 fb 	1 . . 
	ld hl,0f26bh		;0f3a	21 6b f2 	! k . 
	res 2,(hl)		;0f3d	cb 96 	. . 
	ld hl,0f36ah		;0f3f	21 6a f3 	! j . 
	call 009bch		;0f42	cd bc 09 	. . . 
	xor a			;0f45	af 	. 
	ld (0f35fh),a		;0f46	32 5f f3 	2 _ . 
	ld hl,00ef5h		;0f49	21 f5 0e 	! . . 
	ld de,0fbc0h		;0f4c	11 c0 fb 	. . . 
	ld bc,00037h		;0f4f	01 37 00 	. 7 . 
	ldir		;0f52	ed b0 	. . 
	ld de,0f440h		;0f54	11 40 f4 	. @ . 
	ld bc,00003h		;0f57	01 03 00 	. . . 
	ldir		;0f5a	ed b0 	. . 
	ld b,001h		;0f5c	06 01 	. . 
	call 00f2fh		;0f5e	cd 2f 0f 	. / . 
	ld c,088h		;0f61	0e 88 	. . 
	call 00b1fh		;0f63	cd 1f 0b 	. . . 
	ld sp,0fbc0h		;0f66	31 c0 fb 	1 . . 
	call 0f4c2h		;0f69	cd c2 f4 	. . . 
	ld b,a			;0f6c	47 	G 
	and 0f1h		;0f6d	e6 f1 	. . 
	cp 051h		;0f6f	fe 51 	. Q 
	ld hl,00f66h		;0f71	21 66 0f 	! f . 
	push hl			;0f74	e5 	. 
	jr z,$+24		;0f75	28 16 	( . 
	cp 050h		;0f77	fe 50 	. P 
	ret nz			;0f79	c0 	. 
	call 0f4c2h		;0f7a	cd c2 f4 	. . . 
	ld c,a			;0f7d	4f 	O 
	ld a,b			;0f7e	78 	x 
	and 00eh		;0f7f	e6 0e 	. . 
	ld hl,00f92h		;0f81	21 92 0f 	! . . 
	ld e,a			;0f84	5f 	_ 
	ld d,000h		;0f85	16 00 	. . 
	add hl,de			;0f87	19 	. 
	ld a,(hl)			;0f88	7e 	~ 
	inc hl			;0f89	23 	# 
	ld h,(hl)			;0f8a	66 	f 
	ld l,a			;0f8b	6f 	o 
	jp (hl)			;0f8c	e9 	. 
	ld a,b			;0f8d	78 	x 
	and 01eh		;0f8e	e6 1e 	. . 
	jr $-15		;0f90	18 ef 	. . 
	or d			;0f92	b2 	. 
	rrca			;0f93	0f 	. 
	jr nz,$+18		;0f94	20 10 	  . 
	rrc a		;0f96	cb 0f 	. . 
	push af			;0f98	f5 	. 
	rrca			;0f99	0f 	. 
	ld b,010h		;0f9a	06 10 	. . 
	rla			;0f9c	17 	. 
	djnz $+34		;0f9d	10 20 	.   
	djnz $+34		;0f9f	10 20 	.   
	djnz $+35		;0fa1	10 21 	. ! 
	djnz $+44		;0fa3	10 2a 	. * 
	djnz $+51		;0fa5	10 31 	. 1 
	djnz $+62		;0fa7	10 3c 	. < 
	djnz $+74		;0fa9	10 48 	. H 
	call p,01085h		;0fab	f4 85 10 	. . . 
	ld e,h			;0fae	5c 	\ 
	rrca			;0faf	0f 	. 
	sub e			;0fb0	93 	. 
	djnz $+60		;0fb1	10 3a 	. : 
	jp m,0fefbh		;0fb3	fa fb fe 	. . . 
	rrca			;0fb6	0f 	. 
	jr z,$+11		;0fb7	28 09 	( . 
	cp 00eh		;0fb9	fe 0e 	. . 
	jr z,$+12		;0fbb	28 0a 	( . 
	ld b,c			;0fbd	41 	A 
	ld c,a			;0fbe	4f 	O 
	out (c),b		;0fbf	ed 41 	. A 
	ret			;0fc1	c9 	. 
	xor a			;0fc2	af 	. 
	ld (0fbf6h),a		;0fc3	32 f6 fb 	2 . . 
	ret			;0fc6	c9 	. 
	ld (0fbf6h),a		;0fc7	32 f6 fb 	2 . . 
	ret			;0fca	c9 	. 
	ld hl,(0fbfah)		;0fcb	2a fa fb 	* . . 
	ex de,hl			;0fce	eb 	. 
	ld hl,(0fbfch)		;0fcf	2a fc fb 	* . . 
	inc hl			;0fd2	23 	# 
	call 00fe6h		;0fd3	cd e6 0f 	. . . 
	jr $+5		;0fd6	18 03 	. . 
	call 00fe1h		;0fd8	cd e1 0f 	. . . 
	jp c,010d3h		;0fdb	da d3 10 	. . . 
	ld (hl),c			;0fde	71 	q 
	jr $-7		;0fdf	18 f7 	. . 
	inc hl			;0fe1	23 	# 
	ld a,h			;0fe2	7c 	| 
	or l			;0fe3	b5 	. 
	scf			;0fe4	37 	7 
	ret z			;0fe5	c8 	. 
	ld a,e			;0fe6	7b 	{ 
	sub l			;0fe7	95 	. 
	ld a,d			;0fe8	7a 	z 
	sbc a,h			;0fe9	9c 	. 
	ret			;0fea	c9 	. 
	ld a,h			;0feb	7c 	| 
	or l			;0fec	b5 	. 
	scf			;0fed	37 	7 
	ret z			;0fee	c8 	. 
	dec hl			;0fef	2b 	+ 
	ld a,l			;0ff0	7d 	} 
	sub e			;0ff1	93 	. 
	ld a,h			;0ff2	7c 	| 
	sbc a,d			;0ff3	9a 	. 
	ret			;0ff4	c9 	. 
	ld a,(0fbfch)		;0ff5	3a fc fb 	: . . 
	ld (0fbfeh),a		;0ff8	32 fe fb 	2 . . 
	ld a,(0fbfah)		;0ffb	3a fa fb 	: . . 
	ld (0fbfch),a		;0ffe	32 fc fb 	2 . . 
	ld a,c			;1001	79 	y 
	ld (0fbfah),a		;1002	32 fa fb 	2 . . 
	ret			;1005	c9 	. 
	ld a,(0fbfdh)		;1006	3a fd fb 	: . . 
	ld (0fbffh),a		;1009	32 ff fb 	2 . . 
	ld a,(0fbfbh)		;100c	3a fb fb 	: . . 
	ld (0fbfdh),a		;100f	32 fd fb 	2 . . 
	ld a,c			;1012	79 	y 
	ld (0fbfbh),a		;1013	32 fb fb 	2 . . 
	ret			;1016	c9 	. 
	ld hl,(0fbfah)		;1017	2a fa fb 	* . . 
	ld (hl),c			;101a	71 	q 
	inc hl			;101b	23 	# 
	ld (0fbfah),hl		;101c	22 fa fb 	" . . 
	ret			;101f	c9 	. 
	ret			;1020	c9 	. 
	ld a,(0fbfah)		;1021	3a fa fb 	: . . 
	ld c,a			;1024	4f 	O 
	in c,(c)		;1025	ed 48 	. H 
	jp 00b1fh		;1027	c3 1f 0b 	. . . 
	ld a,(0fbf9h)		;102a	3a f9 fb 	: . . 
	ld c,a			;102d	4f 	O 
	jp 00b1fh		;102e	c3 1f 0b 	. . . 
	ld hl,0f428h		;1031	21 28 f4 	! ( . 
	ld c,(hl)			;1034	4e 	N 
	inc hl			;1035	23 	# 
	ld (0fbfah),hl		;1036	22 fa fb 	" . . 
	jp 00b1fh		;1039	c3 1f 0b 	. . . 
	ld hl,(0fbfah)		;103c	2a fa fb 	* . . 
	ex de,hl			;103f	eb 	. 
	ld hl,(0fbfch)		;1040	2a fc fb 	* . . 
	xor a			;1043	af 	. 
	ld c,a			;1044	4f 	O 
	ld b,a			;1045	47 	G 
	call 0f44eh		;1046	cd 4e f4 	. N . 
	add a,c			;1049	81 	. 
	jr nc,$+3		;104a	30 01 	0 . 
	inc b			;104c	04 	. 
	ld c,a			;104d	4f 	O 
	call 00fe1h		;104e	cd e1 0f 	. . . 
	jr nc,$-11		;1051	30 f3 	0 . 
	ld a,b			;1053	78 	x 
	ld (0fbf9h),a		;1054	32 f9 fb 	2 . . 
	jp 00b1fh		;1057	c3 1f 0b 	. . . 
	ld (0fbd0h),hl		;105a	22 d0 fb 	" . . 
	ld hl,00002h		;105d	21 02 00 	! . . 
	add hl,sp			;1060	39 	9 
	ld (0fbd2h),hl		;1061	22 d2 fb 	" . . 
	ld sp,0fbd0h		;1064	31 d0 fb 	1 . . 
	push bc			;1067	c5 	. 
	push de			;1068	d5 	. 
	exx			;1069	d9 	. 
	ex af,af'			;106a	08 	. 
	push af			;106b	f5 	. 
	push bc			;106c	c5 	. 
	push de			;106d	d5 	. 
	push hl			;106e	e5 	. 
	push iy		;106f	fd e5 	. . 
	push ix		;1071	dd e5 	. . 
	ld a,i		;1073	ed 57 	. W 
	ld (0fbf4h),a		;1075	32 f4 fb 	2 . . 
	ld a,r		;1078	ed 5f 	. _ 
	ld (0fbf5h),a		;107a	32 f5 fb 	2 . . 
	ld c,081h		;107d	0e 81 	. . 
	call 00b1fh		;107f	cd 1f 0b 	. . . 
	jp 00f66h		;1082	c3 66 0f 	. f . 
	ld hl,(0fbfah)		;1085	2a fa fb 	* . . 
	call 0f44eh		;1088	cd 4e f4 	. N . 
	ld c,a			;108b	4f 	O 
	inc hl			;108c	23 	# 
	ld (0fbfah),hl		;108d	22 fa fb 	" . . 
	jp 00b1fh		;1090	c3 1f 0b 	. . . 
	ld hl,(0fbfah)		;1093	2a fa fb 	* . . 
	ld b,h			;1096	44 	D 
	ld c,l			;1097	4d 	M 
	ld hl,(0fbfch)		;1098	2a fc fb 	* . . 
	ex de,hl			;109b	eb 	. 
	ld hl,(0fbfeh)		;109c	2a fe fb 	* . . 
	call 00fe6h		;109f	cd e6 0f 	. . . 
	jp c,01020h		;10a2	da 20 10 	.   . 
	ld a,l			;10a5	7d 	} 
	sub c			;10a6	91 	. 
	ld a,h			;10a7	7c 	| 
	sbc a,b			;10a8	98 	. 
	jr c,$+15		;10a9	38 0d 	8 . 
	call 0f44eh		;10ab	cd 4e f4 	. N . 
	ld (bc),a			;10ae	02 	. 
	inc bc			;10af	03 	. 
	call 00fe1h		;10b0	cd e1 0f 	. . . 
	jr nc,$-8		;10b3	30 f6 	0 . 
	jp 010d3h		;10b5	c3 d3 10 	. . . 
	push hl			;10b8	e5 	. 
	push de			;10b9	d5 	. 
	ex de,hl			;10ba	eb 	. 
	ld a,l			;10bb	7d 	} 
	sub e			;10bc	93 	. 
	ld l,a			;10bd	6f 	o 
	ld a,h			;10be	7c 	| 
	sbc a,d			;10bf	9a 	. 
	ld h,a			;10c0	67 	g 
	add hl,bc			;10c1	09 	. 
	ld c,l			;10c2	4d 	M 
	ld b,h			;10c3	44 	D 
	jp c,01020h		;10c4	da 20 10 	.   . 
	pop hl			;10c7	e1 	. 
	pop de			;10c8	d1 	. 
	call 0f44eh		;10c9	cd 4e f4 	. N . 
	ld (bc),a			;10cc	02 	. 
	dec bc			;10cd	0b 	. 
	call 00febh		;10ce	cd eb 0f 	. . . 
	jr nc,$-8		;10d1	30 f6 	0 . 
	ld c,055h		;10d3	0e 55 	. U 
	jp 00b1fh		;10d5	c3 1f 0b 	. . . 
	nop			;10d8	00 	. 
	nop			;10d9	00 	. 
	nop			;10da	00 	. 
	nop			;10db	00 	. 
	nop			;10dc	00 	. 
	nop			;10dd	00 	. 
	nop			;10de	00 	. 
	nop			;10df	00 	. 
	nop			;10e0	00 	. 
	nop			;10e1	00 	. 
	nop			;10e2	00 	. 
	nop			;10e3	00 	. 
	nop			;10e4	00 	. 
	nop			;10e5	00 	. 
	nop			;10e6	00 	. 
	nop			;10e7	00 	. 
	nop			;10e8	00 	. 
	nop			;10e9	00 	. 
	nop			;10ea	00 	. 
	nop			;10eb	00 	. 
	nop			;10ec	00 	. 
	nop			;10ed	00 	. 
	nop			;10ee	00 	. 
	nop			;10ef	00 	. 
	nop			;10f0	00 	. 
	nop			;10f1	00 	. 
	nop			;10f2	00 	. 
	nop			;10f3	00 	. 
	nop			;10f4	00 	. 
	nop			;10f5	00 	. 
	nop			;10f6	00 	. 
	nop			;10f7	00 	. 
	nop			;10f8	00 	. 
	nop			;10f9	00 	. 
	nop			;10fa	00 	. 
	nop			;10fb	00 	. 
	nop			;10fc	00 	. 
	nop			;10fd	00 	. 
	nop			;10fe	00 	. 
	nop			;10ff	00 	. 
	jp 0f3a0h		;1100	c3 a0 f3 	. . . 
	jp 0f3a0h		;1103	c3 a0 f3 	. . . 
	jp 0f45eh		;1106	c3 5e f4 	. ^ . 
	jp 0f456h		;1109	c3 56 f4 	. V . 
	jp 0f479h		;110c	c3 79 f4 	. y . 
	jp 0f4ddh		;110f	c3 dd f4 	. . . 
	jp 0f4d4h		;1112	c3 d4 f4 	. . . 
	jp 0f4c2h		;1115	c3 c2 f4 	. . . 
	jp 0f3a5h		;1118	c3 a5 f3 	. . . 
	jp 0f371h		;111b	c3 71 f3 	. q . 
	jp 0f3aeh		;111e	c3 ae f3 	. . . 
	jp 0f3b3h		;1121	c3 b3 f3 	. . . 
	jp 0f3b8h		;1124	c3 b8 f3 	. . . 
	jp 0f3d1h		;1127	c3 d1 f3 	. . . 
	jp 0f3c8h		;112a	c3 c8 f3 	. . . 
	jp 0f4ech		;112d	c3 ec f4 	. . . 
	jp 0f3beh		;1130	c3 be f3 	. . . 
	jp 0f46ch		;1133	c3 6c f4 	. l . 
	jp 0f4b9h		;1136	c3 b9 f4 	. . . 
	jp 0f4cbh		;1139	c3 cb f4 	. . . 
	nop			;113c	00 	. 
	nop			;113d	00 	. 
	ret			;113e	c9 	. 
	nop			;113f	00 	. 
	nop			;1140	00 	. 
	ret			;1141	c9 	. 
	nop			;1142	00 	. 
	nop			;1143	00 	. 
	ret			;1144	c9 	. 
	nop			;1145	00 	. 
	nop			;1146	00 	. 
	ret			;1147	c9 	. 
	nop			;1148	00 	. 
	nop			;1149	00 	. 
	ret			;114a	c9 	. 
	nop			;114b	00 	. 
	nop			;114c	00 	. 
	ret			;114d	c9 	. 
	nop			;114e	00 	. 
	nop			;114f	00 	. 
	ret			;1150	c9 	. 
	nop			;1151	00 	. 
	nop			;1152	00 	. 
	ret			;1153	c9 	. 
	jp 0f3e3h		;1154	c3 e3 f3 	. . . 
	nop			;1157	00 	. 
	nop			;1158	00 	. 
	ret			;1159	c9 	. 
	nop			;115a	00 	. 
	nop			;115b	00 	. 
	ret			;115c	c9 	. 
	nop			;115d	00 	. 
	nop			;115e	00 	. 
	ret			;115f	c9 	. 
	nop			;1160	00 	. 
	nop			;1161	00 	. 
	ret			;1162	c9 	. 
	jp 0f3dah		;1163	c3 da f3 	. . . 
	nop			;1166	00 	. 
	nop			;1167	00 	. 
	ld bc,0f35fh		;1168	01 5f f3 	. _ . 
	ld (bc),a			;116b	02 	. 
	nop			;116c	00 	. 
	nop			;116d	00 	. 
	ret			;116e	c9 	. 
	nop			;116f	00 	. 
	nop			;1170	00 	. 
	ret			;1171	c9 	. 
	jp 0f3a0h		;1172	c3 a0 f3 	. . . 
	jp 0f434h		;1175	c3 34 f4 	. 4 . 
	jp 0f443h		;1178	c3 43 f4 	. C . 
	nop			;117b	00 	. 
	nop			;117c	00 	. 
	nop			;117d	00 	. 
	nop			;117e	00 	. 
	nop			;117f	00 	. 
	nop			;1180	00 	. 
	nop			;1181	00 	. 
	nop			;1182	00 	. 
	add a,b			;1183	80 	. 
	pop af			;1184	f1 	. 
	xor e			;1185	ab 	. 
	jp p,0fa20h		;1186	f2 20 fa 	.   . 
	ld b,b			;1189	40 	@ 
	jp m,0f2e7h		;118a	fa e7 f2 	. . . 
	nop			;118d	00 	. 
	nop			;118e	00 	. 
	nop			;118f	00 	. 
	nop			;1190	00 	. 
	nop			;1191	00 	. 
	nop			;1192	00 	. 
	add a,b			;1193	80 	. 
	pop af			;1194	f1 	. 
	cp a			;1195	bf 	. 
	jp p,0fa5ch		;1196	f2 5c fa 	. \ . 
	sbc a,h			;1199	9c 	. 
	jp m,0f30fh		;119a	fa 0f f3 	. . . 
	nop			;119d	00 	. 
	nop			;119e	00 	. 
	nop			;119f	00 	. 
	nop			;11a0	00 	. 
	nop			;11a1	00 	. 
	nop			;11a2	00 	. 
	add a,b			;11a3	80 	. 
	pop af			;11a4	f1 	. 
	out (0f2h),a		;11a5	d3 f2 	. . 
	adc a,0fah		;11a7	ce fa 	. . 
	ld c,0fbh		;11a9	0e fb 	. . 
	ret p			;11ab	f0 	. 
	nop			;11ac	00 	. 
	inc b			;11ad	04 	. 
	rrca			;11ae	0f 	. 
	ld bc,000d1h		;11af	01 d1 00 	. . . 
	ld a,a			;11b2	7f 	 
	nop			;11b3	00 	. 
	ret nz			;11b4	c0 	. 
	nop			;11b5	00 	. 
	jr nz,$+2		;11b6	20 00 	  . 
	nop			;11b8	00 	. 
	nop			;11b9	00 	. 
	ld bc,00001h		;11ba	01 01 00 	. . . 
	nop			;11bd	00 	. 
	nop			;11be	00 	. 
	jr z,$+2		;11bf	28 00 	( . 
	inc bc			;11c1	03 	. 
	rlca			;11c2	07 	. 
	nop			;11c3	00 	. 
	rst 0			;11c4	c7 	. 
	nop			;11c5	00 	. 
	ccf			;11c6	3f 	? 
	nop			;11c7	00 	. 
	ret nz			;11c8	c0 	. 
	nop			;11c9	00 	. 
	djnz $+2		;11ca	10 00 	. . 
	nop			;11cc	00 	. 
	nop			;11cd	00 	. 
	inc bc			;11ce	03 	. 
	rlca			;11cf	07 	. 
	ld de,00011h		;11d0	11 11 00 	. . . 
	jr z,$+2		;11d3	28 00 	( . 
	inc bc			;11d5	03 	. 
	rlca			;11d6	07 	. 
	nop			;11d7	00 	. 
	rst 0			;11d8	c7 	. 
	nop			;11d9	00 	. 
	ccf			;11da	3f 	? 
	nop			;11db	00 	. 
	ret nz			;11dc	c0 	. 
	nop			;11dd	00 	. 
	djnz $+2		;11de	10 00 	. . 
	nop			;11e0	00 	. 
	nop			;11e1	00 	. 
	inc bc			;11e2	03 	. 
	rlca			;11e3	07 	. 
	ld de,00011h		;11e4	11 11 00 	. . . 
	nop			;11e7	00 	. 
	ld bc,00302h		;11e8	01 02 03 	. . . 
	inc b			;11eb	04 	. 
	dec b			;11ec	05 	. 
	ld b,007h		;11ed	06 07 	. . 
	ex af,af'			;11ef	08 	. 
	add hl,bc			;11f0	09 	. 
	ld a,(bc)			;11f1	0a 	. 
	dec bc			;11f2	0b 	. 
	inc c			;11f3	0c 	. 
	dec c			;11f4	0d 	. 
	ld c,00fh		;11f5	0e 0f 	. . 
	djnz $+19		;11f7	10 11 	. . 
	ld (de),a			;11f9	12 	. 
	inc de			;11fa	13 	. 
	inc d			;11fb	14 	. 
	dec d			;11fc	15 	. 
	ld d,017h		;11fd	16 17 	. . 
	jr $+27		;11ff	18 19 	. . 
	ld a,(de)			;1201	1a 	. 
	dec de			;1202	1b 	. 
	inc e			;1203	1c 	. 
	dec e			;1204	1d 	. 
	ld e,01fh		;1205	1e 1f 	. . 
	jr nz,$+35		;1207	20 21 	  ! 
	ld (02423h),hl		;1209	22 23 24 	" # $ 
	dec h			;120c	25 	% 
	ld h,027h		;120d	26 27 	& ' 
	nop			;120f	00 	. 
	ld bc,00302h		;1210	01 02 03 	. . . 
	inc b			;1213	04 	. 
	dec b			;1214	05 	. 
	ld b,007h		;1215	06 07 	. . 
	ex af,af'			;1217	08 	. 
	add hl,bc			;1218	09 	. 
	ld a,(bc)			;1219	0a 	. 
	dec bc			;121a	0b 	. 
	inc c			;121b	0c 	. 
	dec c			;121c	0d 	. 
	ld c,00fh		;121d	0e 0f 	. . 
	djnz $+19		;121f	10 11 	. . 
	ld (de),a			;1221	12 	. 
	inc de			;1222	13 	. 
	inc d			;1223	14 	. 
	dec d			;1224	15 	. 
	ld d,017h		;1225	16 17 	. . 
	jr $+27		;1227	18 19 	. . 
	ld a,(de)			;1229	1a 	. 
	dec de			;122a	1b 	. 
	inc e			;122b	1c 	. 
	dec e			;122c	1d 	. 
	ld e,01fh		;122d	1e 1f 	. . 
	jr nz,$+35		;122f	20 21 	  ! 
	ld (02423h),hl		;1231	22 23 24 	" # $ 
	dec h			;1234	25 	% 
	ld h,027h		;1235	26 27 	& ' 
	nop			;1237	00 	. 
	nop			;1238	00 	. 
	rst 38h			;1239	ff 	. 
	ld sp,hl			;123a	f9 	. 
	nop			;123b	00 	. 
	nop			;123c	00 	. 
	nop			;123d	00 	. 
	nop			;123e	00 	. 
	nop			;123f	00 	. 
	nop			;1240	00 	. 
	jp 00000h		;1241	c3 00 00 	. . . 
	nop			;1244	00 	. 
	nop			;1245	00 	. 
	ld bc,00000h		;1246	01 00 00 	. . . 
	nop			;1249	00 	. 
	call m,0f2abh		;124a	fc ab f2 	. . . 
	nop			;124d	00 	. 
	nop			;124e	00 	. 
	nop			;124f	00 	. 
	nop			;1250	00 	. 
	nop			;1251	00 	. 
	nop			;1252	00 	. 
	xor e			;1253	ab 	. 
	jp p,00000h		;1254	f2 00 00 	. . . 
	nop			;1257	00 	. 
	nop			;1258	00 	. 
	nop			;1259	00 	. 
	nop			;125a	00 	. 
	nop			;125b	00 	. 
	nop			;125c	00 	. 
	nop			;125d	00 	. 
	nop			;125e	00 	. 
	ld bc,04ce1h		;125f	01 e1 4c 	. . L 
	jp pe,0000dh		;1262	ea 0d 00 	. . . 
	pop hl			;1265	e1 	. 
	ld c,h			;1266	4c 	L 
	jp pe,0000dh		;1267	ea 0d 00 	. . . 
	pop hl			;126a	e1 	. 
	ld c,h			;126b	4c 	L 
	jp pe,0000dh		;126c	ea 0d 00 	. . . 
	nop			;126f	00 	. 
	ld bc,08fcdh		;1270	01 cd 8f 	. . . 
	di			;1273	f3 	. 
	call 00405h		;1274	cd 05 04 	. . . 
	ex de,hl			;1277	eb 	. 
	ld hl,(0fb78h)		;1278	2a 78 fb 	* x . 
	ld (hl),e			;127b	73 	s 
	inc hl			;127c	23 	# 
	ld (hl),d			;127d	72 	r 
	push af			;127e	f5 	. 
	ld a,(0fb7ah)		;127f	3a 7a fb 	: z . 
	cp 025h		;1282	fe 25 	. % 
	jr z,$+4		;1284	28 02 	( . 
	out (00fh),a		;1286	d3 0f 	. . 
	pop af			;1288	f1 	. 
	ld sp,(0fb78h)		;1289	ed 7b 78 fb 	. { x . 
	pop hl			;128d	e1 	. 
	ret			;128e	c9 	. 
	ex (sp),hl			;128f	e3 	. 
	ld a,(00000h)		;1290	3a 00 00 	: . . 
	ld (0fb7ah),a		;1293	32 7a fb 	2 z . 
	ld (0fb78h),sp		;1296	ed 73 78 fb 	. s x . 
	ld sp,0fb78h		;129a	31 78 fb 	1 x . 
	out (00eh),a		;129d	d3 0e 	. . 
	jp (hl)			;129f	e9 	. 
	out (00eh),a		;12a0	d3 0e 	. . 
	jp 00369h		;12a2	c3 69 03 	. i . 
	ld a,(0f356h)		;12a5	3a 56 f3 	: V . 
	or a			;12a8	b7 	. 
	ret nz			;12a9	c0 	. 
	ld (0f355h),a		;12aa	32 55 f3 	2 U . 
	ret			;12ad	c9 	. 
	ld a,c			;12ae	79 	y 
	ld (0f34eh),a		;12af	32 4e f3 	2 N . 
	ret			;12b2	c9 	. 
	ld a,c			;12b3	79 	y 
	ld (0f350h),a		;12b4	32 50 f3 	2 P . 
	ret			;12b7	c9 	. 
	ld l,c			;12b8	69 	i 
	ld h,b			;12b9	60 	` 
	ld (0f351h),hl		;12ba	22 51 f3 	" Q . 
	ret			;12bd	c9 	. 
	ld l,c			;12be	69 	i 
	ld h,b			;12bf	60 	` 
	ld a,d			;12c0	7a 	z 
	or e			;12c1	b3 	. 
	ret z			;12c2	c8 	. 
	add hl,de			;12c3	19 	. 
	ld l,(hl)			;12c4	6e 	n 
	ld h,000h		;12c5	26 00 	& . 
	ret			;12c7	c9 	. 
	call 0f38fh		;12c8	cd 8f f3 	. . . 
	call 0043ah		;12cb	cd 3a 04 	. : . 
	jp 0f37eh		;12ce	c3 7e f3 	. ~ . 
	call 0f38fh		;12d1	cd 8f f3 	. . . 
	call 004c4h		;12d4	cd c4 04 	. . . 
	jp 0f37eh		;12d7	c3 7e f3 	. ~ . 
	call 0f38fh		;12da	cd 8f f3 	. . . 
	call 005eeh		;12dd	cd ee 05 	. . . 
	jp 0f37eh		;12e0	c3 7e f3 	. ~ . 
	inc a			;12e3	3c 	< 
	jr z,$+25		;12e4	28 17 	( . 
	dec a			;12e6	3d 	= 
	ld c,006h		;12e7	0e 06 	. . 
	rrca			;12e9	0f 	. 
	rl c		;12ea	cb 11 	. . 
	out (c),a		;12ec	ed 79 	. y 
	ld c,004h		;12ee	0e 04 	. . 
	rrca			;12f0	0f 	. 
	rl c		;12f1	cb 11 	. . 
	out (c),a		;12f3	ed 79 	. y 
	ld c,005h		;12f5	0e 05 	. . 
	rrca			;12f7	0f 	. 
	rl c		;12f8	cb 11 	. . 
	out (c),a		;12fa	ed 79 	. y 
	ret			;12fc	c9 	. 
	out (008h),a		;12fd	d3 08 	. . 
	out (00ah),a		;12ff	d3 0a 	. . 
	ld c,006h		;1301	0e 06 	. . 
	ld a,(0f26bh)		;1303	3a 6b f2 	: k . 
	rlca			;1306	07 	. 
	jr $-15		;1307	18 ef 	. . 
	out (00fh),a		;1309	d3 0f 	. . 
	ldir		;130b	ed b0 	. . 
	out (00eh),a		;130d	d3 0e 	. . 
	ret			;130f	c9 	. 
	xor a			;1310	af 	. 
	ld b,080h		;1311	06 80 	. . 
	out (00fh),a		;1313	d3 0f 	. . 
	add a,(hl)			;1315	86 	. 
	inc hl			;1316	23 	# 
	djnz $-2		;1317	10 fc 	. . 
	out (00eh),a		;1319	d3 0e 	. . 
	ret			;131b	c9 	. 
	out (00fh),a		;131c	d3 0f 	. . 
	ld a,(hl)			;131e	7e 	~ 
	out (00eh),a		;131f	d3 0e 	. . 
	ret			;1321	c9 	. 
	out (00fh),a		;1322	d3 0f 	. . 
	ld a,(de)			;1324	1a 	. 
	out (00eh),a		;1325	d3 0e 	. . 
	ret			;1327	c9 	. 
	rst 38h			;1328	ff 	. 
	rst 38h			;1329	ff 	. 
	ei			;132a	fb 	. 
	ld b,c			;132b	41 	A 
	ld c,(hl)			;132c	4e 	N 
	ld b,e			;132d	43 	C 
	dec l			;132e	2d 	- 
	inc (hl)			;132f	34 	4 
	dec (hl)			;1330	35 	5 
	ld sp,00032h		;1331	31 32 00 	1 2 . 
	di			;1334	f3 	. 
	ld (0fbeeh),hl		;1335	22 ee fb 	" . . 
	ex (sp),hl			;1338	e3 	. 
	ld (0fbf2h),hl		;1339	22 f2 fb 	" . . 
	push af			;133c	f5 	. 
	pop hl			;133d	e1 	. 
	out (00eh),a		;133e	d3 0e 	. . 
	nop			;1340	00 	. 
	nop			;1341	00 	. 
	nop			;1342	00 	. 
	out (00eh),a		;1343	d3 0e 	. . 
	jp 00f36h		;1345	c3 36 0f 	. 6 . 
	out (00fh),a		;1348	d3 0f 	. . 
	pop hl			;134a	e1 	. 
	jp 0fbd4h		;134b	c3 d4 fb 	. . . 
	ld a,(0fbf6h)		;134e	3a f6 fb 	: . . 
	or a			;1351	b7 	. 
	jr z,$-54		;1352	28 c8 	( . 
	ld a,(hl)			;1354	7e 	~ 
	ret			;1355	c9 	. 
	call 0f45eh		;1356	cd 5e f4 	. ^ . 
	jr z,$-3		;1359	28 fb 	( . 
	in a,(080h)		;135b	db 80 	. . 
	ret			;135d	c9 	. 
	call 0f4a8h		;135e	cd a8 f4 	. . . 
	call 0f487h		;1361	cd 87 f4 	. . . 
	in a,(082h)		;1364	db 82 	. . 
	and 001h		;1366	e6 01 	. . 
	ret z			;1368	c8 	. 
	ld a,0ffh		;1369	3e ff 	> . 
	ret			;136b	c9 	. 
	call 0f487h		;136c	cd 87 f4 	. . . 
	ld a,001h		;136f	3e 01 	> . 
	out (082h),a		;1371	d3 82 	. . 
	in a,(082h)		;1373	db 82 	. . 
	and 001h		;1375	e6 01 	. . 
	jr $-15		;1377	18 ef 	. . 
	call 0f46ch		;1379	cd 6c f4 	. l . 
	jr nz,$+7		;137c	20 05 	  . 
	call 0f4a8h		;137e	cd a8 f4 	. . . 
	jr $-8		;1381	18 f6 	. . 
	ld a,c			;1383	79 	y 
	out (080h),a		;1384	d3 80 	. . 
	ret			;1386	c9 	. 
	ld a,010h		;1387	3e 10 	> . 
	out (082h),a		;1389	d3 82 	. . 
	in a,(082h)		;138b	db 82 	. . 
	bit 7,a		;138d	cb 7f 	.  
	ret z			;138f	c8 	. 
	ld a,010h		;1390	3e 10 	> . 
	out (082h),a		;1392	d3 82 	. . 
	in a,(082h)		;1394	db 82 	. . 
	bit 7,a		;1396	cb 7f 	.  
	jr nz,$-8		;1398	20 f6 	  . 
	in a,(080h)		;139a	db 80 	. . 
	ld a,(00000h)		;139c	3a 00 00 	: . . 
	out (00fh),a		;139f	d3 0f 	. . 
	rst 38h			;13a1	ff 	. 
	sub 025h		;13a2	d6 25 	. % 
	ret nz			;13a4	c0 	. 
	out (00eh),a		;13a5	d3 0e 	. . 
	ret			;13a7	c9 	. 
	ld a,(0f26bh)		;13a8	3a 6b f2 	: k . 
	bit 2,a		;13ab	cb 57 	. W 
	ret z			;13ad	c8 	. 
	call 0f38fh		;13ae	cd 8f f3 	. . . 
	push bc			;13b1	c5 	. 
	call 00c12h		;13b2	cd 12 0c 	. . . 
	pop bc			;13b5	c1 	. 
	jp 0f37eh		;13b6	c3 7e f3 	. ~ . 
	call 0f38fh		;13b9	cd 8f f3 	. . . 
	call 00bddh		;13bc	cd dd 0b 	. . . 
	jp 0f37eh		;13bf	c3 7e f3 	. ~ . 
	call 0f38fh		;13c2	cd 8f f3 	. . . 
	call 00bf7h		;13c5	cd f7 0b 	. . . 
	jp 0f37eh		;13c8	c3 7e f3 	. ~ . 
	call 0f38fh		;13cb	cd 8f f3 	. . . 
	call 00bbfh		;13ce	cd bf 0b 	. . . 
	jp 0f37eh		;13d1	c3 7e f3 	. ~ . 
	call 0f38fh		;13d4	cd 8f f3 	. . . 
	call 00b0bh		;13d7	cd 0b 0b 	. . . 
	jp 0f37eh		;13da	c3 7e f3 	. ~ . 
	ld a,(0f26bh)		;13dd	3a 6b f2 	: k . 
	bit 3,a		;13e0	cb 5f 	. _ 
	ret nz			;13e2	c0 	. 
	call 0f38fh		;13e3	cd 8f f3 	. . . 
	call 00a69h		;13e6	cd 69 0a 	. i . 
	jp 0f37eh		;13e9	c3 7e f3 	. ~ . 
	ld a,(0f26bh)		;13ec	3a 6b f2 	: k . 
	bit 3,a		;13ef	cb 5f 	. _ 
	ld a,0ffh		;13f1	3e ff 	> . 
	ret nz			;13f3	c0 	. 
	call 0f38fh		;13f4	cd 8f f3 	. . . 
	call 00b7ch		;13f7	cd 7c 0b 	. | . 
	jp 0f37eh		;13fa	c3 7e f3 	. ~ . 
	nop			;13fd	00 	. 
	nop			;13fe	00 	. 
	nop			;13ff	00 	. 
	jp 0f517h		;1400	c3 17 f5 	. . . 
	jp 0f5afh		;1403	c3 af f5 	. . . 
	ld d,d			;1406	52 	R 
	ld sp,03531h		;1407	31 31 35 	1 1 5 
	ld (02d20h),a		;140a	32 20 2d 	2   - 
	jr nz,$+88		;140d	20 56 	  V 
	ld (08034h),a		;140f	32 34 80 	2 4 . 
	ld b,c			;1412	41 	A 
	ld c,l			;1413	4d 	M 
	xor d			;1414	aa 	. 
	dec c			;1415	0d 	. 
	nop			;1416	00 	. 
	ld a,(0f35fh)		;1417	3a 5f f3 	: _ . 
	bit 2,a		;141a	cb 57 	. W 
	jr nz,$+13		;141c	20 0b 	  . 
	ld a,004h		;141e	3e 04 	> . 
	ld (0f35fh),a		;1420	32 5f f3 	2 _ . 
	ld hl,0f512h		;1423	21 12 f5 	! . . 
	call 009bch		;1426	cd bc 09 	. . . 
	in a,(083h)		;1429	db 83 	. . 
	and 001h		;142b	e6 01 	. . 
	jr z,$-4		;142d	28 fa 	( . 
	in a,(081h)		;142f	db 81 	. . 
	in a,(083h)		;1431	db 83 	. . 
	and 004h		;1433	e6 04 	. . 
	jr z,$-4		;1435	28 fa 	( . 
	call 0f548h		;1437	cd 48 f5 	. H . 
	ld a,c			;143a	79 	y 
	out (081h),a		;143b	d3 81 	. . 
	in a,(083h)		;143d	db 83 	. . 
	and 004h		;143f	e6 04 	. . 
	jr z,$-4		;1441	28 fa 	( . 
	ld a,003h		;1443	3e 03 	> . 
	out (081h),a		;1445	d3 81 	. . 
	ret			;1447	c9 	. 
	ld a,(0f26bh)		;1448	3a 6b f2 	: k . 
	bit 4,a		;144b	cb 67 	. g 
	jr z,$+14		;144d	28 0c 	( . 
	bit 5,a		;144f	cb 6f 	. o 
	ld hl,0f585h		;1451	21 85 f5 	! . . 
	jr z,$+13		;1454	28 0b 	( . 
	ld hl,0f56ch		;1456	21 6c f5 	! l . 
	jr $+8		;1459	18 06 	. . 
	bit 5,a		;145b	cb 6f 	. o 
	ret z			;145d	c8 	. 
	ld hl,0f59ah		;145e	21 9a f5 	! . . 
	ld a,(hl)			;1461	7e 	~ 
	or a			;1462	b7 	. 
	ret z			;1463	c8 	. 
	cp c			;1464	b9 	. 
	inc hl			;1465	23 	# 
	ld a,(hl)			;1466	7e 	~ 
	inc hl			;1467	23 	# 
	jr nz,$-7		;1468	20 f7 	  . 
	ld c,a			;146a	4f 	O 
	ret			;146b	c9 	. 
	ld h,b			;146c	60 	` 
	ld e,l			;146d	5d 	] 
	ld b,b			;146e	40 	@ 
	ld a,l			;146f	7d 	} 
	ld a,(hl)			;1470	7e 	~ 
	ccf			;1471	3f 	? 
	ld e,(hl)			;1472	5e 	^ 
	inc a			;1473	3c 	< 
	ld e,e			;1474	5b 	[ 
	ld a,07dh		;1475	3e 7d 	> } 
	ld a,e			;1477	7b 	{ 
	ld e,l			;1478	5d 	] 
	ld a,(hl)			;1479	7e 	~ 
	ld a,e			;147a	7b 	{ 
	ld b,b			;147b	40 	@ 
	ld a,029h		;147c	3e 29 	> ) 
	inc a			;147e	3c 	< 
	jr z,$+41		;147f	28 27 	( ' 
	ld h,b			;1481	60 	` 
	ccf			;1482	3f 	? 
	ld (06000h),a		;1483	32 00 60 	2 . ` 
	ld h,c			;1486	61 	a 
	ld b,b			;1487	40 	@ 
	ld h,l			;1488	65 	e 
	ld a,(hl)			;1489	7e 	~ 
	ld h,e			;148a	63 	c 
	ld e,(hl)			;148b	5e 	^ 
	ld (hl),e			;148c	73 	s 
	ld a,l			;148d	7d 	} 
	ld a,d			;148e	7a 	z 
	ld e,l			;148f	5d 	] 
	ld l,(hl)			;1490	6e 	n 
	ld a,e			;1491	7b 	{ 
	ld l,a			;1492	6f 	o 
	ld e,e			;1493	5b 	[ 
	ld a,d			;1494	7a 	z 
	ld a,h			;1495	7c 	| 
	ld l,h			;1496	6c 	l 
	ld e,h			;1497	5c 	\ 
	ld c,h			;1498	4c 	L 
	nop			;1499	00 	. 
	ld h,b			;149a	60 	` 
	jr nz,$+66		;149b	20 40 	  @ 
	jr nz,$+128		;149d	20 7e 	  ~ 
	jr nz,$+96		;149f	20 5e 	  ^ 
	jr nz,$+127		;14a1	20 7d 	  } 
	jr nz,$+95		;14a3	20 5d 	  ] 
	jr nz,$+125		;14a5	20 7b 	  { 
	jr nz,$+93		;14a7	20 5b 	  [ 
	jr nz,$+126		;14a9	20 7c 	  | 
	jr nz,$+94		;14ab	20 5c 	  \ 
	jr nz,$+2		;14ad	20 00 	  . 
	ld a,(0f35fh)		;14af	3a 5f f3 	: _ . 
	bit 2,a		;14b2	cb 57 	. W 
	jr nz,$+13		;14b4	20 0b 	  . 
	ld a,004h		;14b6	3e 04 	> . 
	ld (0f35fh),a		;14b8	32 5f f3 	2 _ . 
	ld hl,0f512h		;14bb	21 12 f5 	! . . 
	call 009bch		;14be	cd bc 09 	. . . 
	in a,(083h)		;14c1	db 83 	. . 
	bit 2,a		;14c3	cb 57 	. W 
	jr z,$+5		;14c5	28 03 	( . 
	rrca			;14c7	0f 	. 
	sbc a,a			;14c8	9f 	. 
	ret			;14c9	c9 	. 
	xor a			;14ca	af 	. 
	ret			;14cb	c9 	. 
	nop			;14cc	00 	. 
	nop			;14cd	00 	. 
	nop			;14ce	00 	. 
	nop			;14cf	00 	. 
	nop			;14d0	00 	. 
	nop			;14d1	00 	. 
	nop			;14d2	00 	. 
	nop			;14d3	00 	. 
	nop			;14d4	00 	. 
	nop			;14d5	00 	. 
	nop			;14d6	00 	. 
	nop			;14d7	00 	. 
	nop			;14d8	00 	. 
	nop			;14d9	00 	. 
	nop			;14da	00 	. 
	nop			;14db	00 	. 
	nop			;14dc	00 	. 
	nop			;14dd	00 	. 
	nop			;14de	00 	. 
	nop			;14df	00 	. 
	out (00fh),a		;14e0	d3 0f 	. . 
	call 00100h		;14e2	cd 00 01 	. . . 
	out (00eh),a		;14e5	d3 0e 	. . 
	jp 023c0h		;14e7	c3 c0 23 	. . # 
	nop			;14ea	00 	. 
	nop			;14eb	00 	. 
	nop			;14ec	00 	. 
	nop			;14ed	00 	. 
	nop			;14ee	00 	. 
	nop			;14ef	00 	. 
	nop			;14f0	00 	. 
	ld d,000h		;14f1	16 00 	. . 
	nop			;14f3	00 	. 
	nop			;14f4	00 	. 
	add hl,bc			;14f5	09 	. 
	out (00eh),a		;14f6	d3 0e 	. . 
	jp 01523h		;14f8	c3 23 15 	. # . 
	out (00fh),a		;14fb	d3 0f 	. . 
	ret			;14fd	c9 	. 
	push hl			;14fe	e5 	. 
	nop			;14ff	00 	. 
	ld a,c			;1500	79 	y 
	cp 00dh		;1501	fe 0d 	. . 
	jr c,$+17		;1503	38 0f 	8 . 
	ld (0f054h),sp		;1505	ed 73 54 f0 	. s T . 
	ld sp,0f180h		;1509	31 80 f1 	1 . . 
	call 0156bh		;150c	cd 6b 15 	. k . 
	ld sp,(0f054h)		;150f	ed 7b 54 f0 	. { T . 
	ret			;1513	c9 	. 
	ld (0f05eh),sp		;1514	ed 73 5e f0 	. s ^ . 
	ld sp,0f160h		;1518	31 60 f1 	1 ` . 
	call 0154ah		;151b	cd 4a 15 	. J . 
	ld sp,(0f05eh)		;151e	ed 7b 5e f0 	. { ^ . 
	ret			;1522	c9 	. 
	ld a,c			;1523	79 	y 
	cp 00dh		;1524	fe 0d 	. . 
	jr c,$+19		;1526	38 11 	8 . 
	ld (0f054h),sp		;1528	ed 73 54 f0 	. s T . 
	ld sp,0f180h		;152c	31 80 f1 	1 . . 
	call 0156bh		;152f	cd 6b 15 	. k . 
	ld sp,(0f054h)		;1532	ed 7b 54 f0 	. { T . 
	jp 0f00bh		;1536	c3 0b f0 	. . . 
	ld (0f05eh),sp		;1539	ed 73 5e f0 	. s ^ . 
	ld sp,0f160h		;153d	31 60 f1 	1 ` . 
	call 0154ah		;1540	cd 4a 15 	. J . 
	ld sp,(0f05eh)		;1543	ed 7b 5e f0 	. { ^ . 
	jp 0f00bh		;1547	c3 0b f0 	. . . 
	ld (0f05ah),de		;154a	ed 53 5a f0 	. S Z . 
	ld hl,00000h		;154e	21 00 00 	! . . 
	ld (0f05ch),hl		;1551	22 5c f0 	" \ . 
	ld hl,01565h		;1554	21 65 15 	! e . 
	push hl			;1557	e5 	. 
	ld hl,015b1h		;1558	21 b1 15 	! . . 
	ld b,000h		;155b	06 00 	. . 
	add hl,bc			;155d	09 	. 
	add hl,bc			;155e	09 	. 
	ld a,(hl)			;155f	7e 	~ 
	inc hl			;1560	23 	# 
	ld h,(hl)			;1561	66 	f 
	ld l,a			;1562	6f 	o 
	ld c,e			;1563	4b 	K 
	jp (hl)			;1564	e9 	. 
	ld hl,(0f05ch)		;1565	2a 5c f0 	* \ . 
	ld b,h			;1568	44 	D 
	ld a,l			;1569	7d 	} 
	ret			;156a	c9 	. 
	ld (0f050h),de		;156b	ed 53 50 f0 	. S P . 
	ld a,e			;156f	7b 	{ 
	ld (0f039h),a		;1570	32 39 f0 	2 9 . 
	ld hl,00000h		;1573	21 00 00 	! . . 
	ld (0f052h),hl		;1576	22 52 f0 	" R . 
	ld (0f03eh),hl		;1579	22 3e f0 	" > . 
	ld b,h			;157c	44 	D 
	ld hl,01590h		;157d	21 90 15 	! . . 
	push hl			;1580	e5 	. 
	ld a,c			;1581	79 	y 
	cp 029h		;1582	fe 29 	. ) 
	ret nc			;1584	d0 	. 
	ld hl,015b1h		;1585	21 b1 15 	! . . 
	add hl,bc			;1588	09 	. 
	add hl,bc			;1589	09 	. 
	ld a,(hl)			;158a	7e 	~ 
	inc hl			;158b	23 	# 
	ld h,(hl)			;158c	66 	f 
	ld l,a			;158d	6f 	o 
	ld c,e			;158e	4b 	K 
	jp (hl)			;158f	e9 	. 
	ld a,(0f03eh)		;1590	3a 3e f0 	: > . 
	or a			;1593	b7 	. 
	jr z,$+23		;1594	28 15 	( . 
	ld hl,(0f050h)		;1596	2a 50 f0 	* P . 
	ld (hl),000h		;1599	36 00 	6 . 
	ld a,(0f03fh)		;159b	3a 3f f0 	: ? . 
	or a			;159e	b7 	. 
	jr z,$+12		;159f	28 0a 	( . 
	ld (hl),a			;15a1	77 	w 
	ld a,(0f040h)		;15a2	3a 40 f0 	: @ . 
	ld (0f039h),a		;15a5	32 39 f0 	2 9 . 
	call 01825h		;15a8	cd 25 18 	. % . 
	ld hl,(0f052h)		;15ab	2a 52 f0 	* R . 
	ld a,l			;15ae	7d 	} 
	ld b,h			;15af	44 	D 
	ret			;15b0	c9 	. 
	inc bc			;15b1	03 	. 
	jp p,01603h		;15b2	f2 03 16 	. . . 
	rra			;15b5	1f 	. 
	ld d,0a1h		;15b6	16 a1 	. . 
	ld d,012h		;15b8	16 12 	. . 
	jp p,0f20fh		;15ba	f2 0f f2 	. . . 
	and a			;15bd	a7 	. 
	ld d,0d5h		;15be	16 d5 	. . 
	ld d,0deh		;15c0	16 de 	. . 
	ld d,0e3h		;15c2	16 e3 	. . 
	ld d,0f3h		;15c4	16 f3 	. . 
	ld d,002h		;15c6	16 02 	. . 
	jr $+11		;15c8	18 09 	. . 
	jr $+15		;15ca	18 0d 	. . 
	jr $+39		;15cc	18 25 	. % 
	jr $+8		;15ce	18 06 	. . 
	add hl,de			;15d0	19 	. 
	ld c,d			;15d1	4a 	J 
	add hl,de			;15d2	19 	. 
	xor 019h		;15d3	ee 19 	. . 
	dec c			;15d5	0d 	. 
	ld a,(de)			;15d6	1a 	. 
	ld h,01ah		;15d7	26 1a 	& . 
	ld d,d			;15d9	52 	R 
	ld a,(de)			;15da	1a 	. 
	sub a			;15db	97 	. 
	ld a,(de)			;15dc	1a 	. 
	call c,01e1bh		;15dd	dc 1b 1e 	. . . 
	inc e			;15e0	1c 	. 
	ld c,c			;15e1	49 	I 
	inc e			;15e2	1c 	. 
	ld c,(hl)			;15e3	4e 	N 
	inc e			;15e4	1c 	. 
	ld d,h			;15e5	54 	T 
	inc e			;15e6	1c 	. 
	ld h,l			;15e7	65 	e 
	inc e			;15e8	1c 	. 
	ld l,d			;15e9	6a 	j 
	inc e			;15ea	1c 	. 
	add a,b			;15eb	80 	. 
	inc e			;15ec	1c 	. 
	add a,l			;15ed	85 	. 
	inc e			;15ee	1c 	. 
	sbc a,a			;15ef	9f 	. 
	inc e			;15f0	1c 	. 
	and (hl)			;15f1	a6 	. 
	inc e			;15f2	1c 	. 
	cp c			;15f3	b9 	. 
	inc e			;15f4	1c 	. 
	add a,01ch		;15f5	c6 1c 	. . 
	out (01ch),a		;15f7	d3 1c 	. . 
	dec de			;15f9	1b 	. 
	dec e			;15fa	1d 	. 
	ld l,01dh		;15fb	2e 1d 	. . 
	ld c,(hl)			;15fd	4e 	N 
	dec e			;15fe	1d 	. 
	ld c,(hl)			;15ff	4e 	N 
	dec e			;1600	1d 	. 
	ld c,a			;1601	4f 	O 
	dec e			;1602	1d 	. 
	call 016cah		;1603	cd ca 16 	. . . 
	call 01632h		;1606	cd 32 16 	. 2 . 
	ld (0f05ch),a		;1609	32 5c f0 	2 \ . 
	ld c,a			;160c	4f 	O 
	jr nc,$+18		;160d	30 10 	0 . 
	ret			;160f	c9 	. 
	ld a,c			;1610	79 	y 
	call 01632h		;1611	cd 32 16 	. 2 . 
	jr nc,$+11		;1614	30 09 	0 . 
	push bc			;1616	c5 	. 
	ld c,05eh		;1617	0e 5e 	. ^ 
	call 0166bh		;1619	cd 6b 16 	. k . 
	pop bc			;161c	c1 	. 
	set 6,c		;161d	cb f1 	. . 
	ld a,c			;161f	79 	y 
	cp 009h		;1620	fe 09 	. . 
	jp nz,0166bh		;1622	c2 6b 16 	. k . 
	ld c,020h		;1625	0e 20 	.   
	call 0166bh		;1627	cd 6b 16 	. k . 
	ld a,(0f058h)		;162a	3a 58 f0 	: X . 
	and 007h		;162d	e6 07 	. . 
	jr nz,$-10		;162f	20 f4 	  . 
	ret			;1631	c9 	. 
	cp 00dh		;1632	fe 0d 	. . 
	ret z			;1634	c8 	. 
	cp 00ah		;1635	fe 0a 	. . 
	ret z			;1637	c8 	. 
	cp 009h		;1638	fe 09 	. . 
	ret z			;163a	c8 	. 
	cp 008h		;163b	fe 08 	. . 
	ret z			;163d	c8 	. 
	cp 020h		;163e	fe 20 	.   
	ret			;1640	c9 	. 
	ld a,(0f059h)		;1641	3a 59 f0 	: Y . 
	or a			;1644	b7 	. 
	jr nz,$+28		;1645	20 1a 	  . 
	call 0f206h		;1647	cd 06 f2 	. . . 
	and 001h		;164a	e6 01 	. . 
	ret z			;164c	c8 	. 
	call 0f209h		;164d	cd 09 f2 	. . . 
	cp 013h		;1650	fe 13 	. . 
	jr nz,$+12		;1652	20 0a 	  . 
	call 0f209h		;1654	cd 09 f2 	. . . 
	cp 003h		;1657	fe 03 	. . 
	jp z,0f203h		;1659	ca 03 f2 	. . . 
	xor a			;165c	af 	. 
	ret			;165d	c9 	. 
	ld (0f059h),a		;165e	32 59 f0 	2 Y . 
	ld a,001h		;1661	3e 01 	> . 
	ret			;1663	c9 	. 
	ld c,00dh		;1664	0e 0d 	. . 
	call 0166bh		;1666	cd 6b 16 	. k . 
	ld c,00ah		;1669	0e 0a 	. . 
	ld a,(0f056h)		;166b	3a 56 f0 	: V . 
	or a			;166e	b7 	. 
	jr nz,$+22		;166f	20 14 	  . 
	push bc			;1671	c5 	. 
	call 01641h		;1672	cd 41 16 	. A . 
	pop bc			;1675	c1 	. 
	push bc			;1676	c5 	. 
	call 0f20ch		;1677	cd 0c f2 	. . . 
	pop bc			;167a	c1 	. 
	push bc			;167b	c5 	. 
	ld a,(0f26bh)		;167c	3a 6b f2 	: k . 
	bit 6,a		;167f	cb 77 	. w 
	call nz,0f20fh		;1681	c4 0f f2 	. . . 
	pop bc			;1684	c1 	. 
	ld a,c			;1685	79 	y 
	ld hl,0f058h		;1686	21 58 f0 	! X . 
	cp 07fh		;1689	fe 7f 	.  
	ret z			;168b	c8 	. 
	inc (hl)			;168c	34 	4 
	cp 020h		;168d	fe 20 	.   
	ret nc			;168f	d0 	. 
	dec (hl)			;1690	35 	5 
	ld a,(hl)			;1691	7e 	~ 
	or a			;1692	b7 	. 
	ret z			;1693	c8 	. 
	ld a,c			;1694	79 	y 
	cp 008h		;1695	fe 08 	. . 
	jr nz,$+4		;1697	20 02 	  . 
	dec (hl)			;1699	35 	5 
	ret			;169a	c9 	. 
	cp 00ah		;169b	fe 0a 	. . 
	ret nz			;169d	c0 	. 
	ld (hl),000h		;169e	36 00 	6 . 
	ret			;16a0	c9 	. 
	call 0f215h		;16a1	cd 15 f2 	. . . 
	jp 01805h		;16a4	c3 05 18 	. . . 
	ld a,c			;16a7	79 	y 
	inc a			;16a8	3c 	< 
	jr z,$+12		;16a9	28 0a 	( . 
	inc a			;16ab	3c 	< 
	jp nz,0f20ch		;16ac	c2 0c f2 	. . . 
	call 016c2h		;16af	cd c2 16 	. . . 
	jp 01805h		;16b2	c3 05 18 	. . . 
	call 016c2h		;16b5	cd c2 16 	. . . 
	or a			;16b8	b7 	. 
	jp z,01805h		;16b9	ca 05 18 	. . . 
	call 016cah		;16bc	cd ca 16 	. . . 
	jp 01805h		;16bf	c3 05 18 	. . . 
	ld a,(0f059h)		;16c2	3a 59 f0 	: Y . 
	or a			;16c5	b7 	. 
	ret nz			;16c6	c0 	. 
	jp 0f206h		;16c7	c3 06 f2 	. . . 
	ld hl,0f059h		;16ca	21 59 f0 	! Y . 
	ld a,(hl)			;16cd	7e 	~ 
	ld (hl),000h		;16ce	36 00 	6 . 
	or a			;16d0	b7 	. 
	ret nz			;16d1	c0 	. 
	jp 0f209h		;16d2	c3 09 f2 	. . . 
	ld hl,00003h		;16d5	21 03 00 	! . . 
	call 00011h		;16d8	cd 11 00 	. . . 
	jp 01805h		;16db	c3 05 18 	. . . 
	ld hl,00003h		;16de	21 03 00 	! . . 
	ld (hl),c			;16e1	71 	q 
	ret			;16e2	c9 	. 
	ex de,hl			;16e3	eb 	. 
	call 00011h		;16e4	cd 11 00 	. . . 
	cp 024h		;16e7	fe 24 	. $ 
	ret z			;16e9	c8 	. 
	inc hl			;16ea	23 	# 
	push hl			;16eb	e5 	. 
	ld c,a			;16ec	4f 	O 
	call 0161fh		;16ed	cd 1f 16 	. . . 
	pop hl			;16f0	e1 	. 
	jr $-13		;16f1	18 f1 	. . 
	ld a,(0f058h)		;16f3	3a 58 f0 	: X . 
	ld (0f057h),a		;16f6	32 57 f0 	2 W . 
	ld hl,(0f05ah)		;16f9	2a 5a f0 	* Z . 
	call 00011h		;16fc	cd 11 00 	. . . 
	ld c,a			;16ff	4f 	O 
	inc hl			;1700	23 	# 
	push hl			;1701	e5 	. 
	ld b,000h		;1702	06 00 	. . 
	push bc			;1704	c5 	. 
	push hl			;1705	e5 	. 
	call 016cah		;1706	cd ca 16 	. . . 
	nop			;1709	00 	. 
	nop			;170a	00 	. 
	pop hl			;170b	e1 	. 
	pop bc			;170c	c1 	. 
	cp 00dh		;170d	fe 0d 	. . 
	jr z,$+61		;170f	28 3b 	( ; 
	cp 00ah		;1711	fe 0a 	. . 
	jr z,$+57		;1713	28 37 	( 7 
	cp 008h		;1715	fe 08 	. . 
	jr z,$+121		;1717	28 77 	( w 
	cp 07fh		;1719	fe 7f 	.  
	jr z,$+117		;171b	28 73 	( s 
	cp 005h		;171d	fe 05 	. . 
	jr z,$+52		;171f	28 32 	( 2 
	cp 010h		;1721	fe 10 	. . 
	jr z,$+59		;1723	28 39 	( 9 
	cp 018h		;1725	fe 18 	. . 
	jr z,$+81		;1727	28 4f 	( O 
	cp 015h		;1729	fe 15 	. . 
	jr z,$+94		;172b	28 5c 	( \ 
	cp 012h		;172d	fe 12 	. . 
	jr z,$+109		;172f	28 6b 	( k 
	inc hl			;1731	23 	# 
	ld (hl),a			;1732	77 	w 
	inc b			;1733	04 	. 
	push bc			;1734	c5 	. 
	push hl			;1735	e5 	. 
	ld c,a			;1736	4f 	O 
	call 01610h		;1737	cd 10 16 	. . . 
	pop hl			;173a	e1 	. 
	pop bc			;173b	c1 	. 
	call 00011h		;173c	cd 11 00 	. . . 
	cp 003h		;173f	fe 03 	. . 
	ld a,b			;1741	78 	x 
	jr nz,$+7		;1742	20 05 	  . 
	cp 001h		;1744	fe 01 	. . 
	jp z,0f203h		;1746	ca 03 f2 	. . . 
	cp c			;1749	b9 	. 
	jr c,$-70		;174a	38 b8 	8 . 
	pop hl			;174c	e1 	. 
	ld (hl),b			;174d	70 	p 
	ld c,00dh		;174e	0e 0d 	. . 
	jp 0166bh		;1750	c3 6b 16 	. k . 
	push bc			;1753	c5 	. 
	push hl			;1754	e5 	. 
	call 01664h		;1755	cd 64 16 	. d . 
	xor a			;1758	af 	. 
	ld (0f057h),a		;1759	32 57 f0 	2 W . 
	jr $-86		;175c	18 a8 	. . 
	ld a,(0f26bh)		;175e	3a 6b f2 	: k . 
	xor 040h		;1761	ee 40 	. @ 
	ld (0f26bh),a		;1763	32 6b f2 	2 k . 
	bit 6,a		;1766	cb 77 	. w 
	jr z,$-100		;1768	28 9a 	( . 
	res 3,a		;176a	cb 9f 	. . 
	ld (0f26bh),a		;176c	32 6b f2 	2 k . 
	push bc			;176f	c5 	. 
	ld c,007h		;1770	0e 07 	. . 
	call 0f20ch		;1772	cd 0c f2 	. . . 
	pop bc			;1775	c1 	. 
	jr $-114		;1776	18 8c 	. . 
	pop hl			;1778	e1 	. 
	ld a,(0f057h)		;1779	3a 57 f0 	: W . 
	ld hl,0f058h		;177c	21 58 f0 	! X . 
	cp (hl)			;177f	be 	. 
	jp nc,016f3h		;1780	d2 f3 16 	. . . 
	dec (hl)			;1783	35 	5 
	call 017f5h		;1784	cd f5 17 	. . . 
	jr $-14		;1787	18 f0 	. . 
	call 017deh		;1789	cd de 17 	. . . 
	pop hl			;178c	e1 	. 
	jp 016f3h		;178d	c3 f3 16 	. . . 
	ld a,b			;1790	78 	x 
	or a			;1791	b7 	. 
	jp z,01704h		;1792	ca 04 17 	. . . 
	dec b			;1795	05 	. 
	ld a,(0f058h)		;1796	3a 58 f0 	: X . 
	ld (0f056h),a		;1799	32 56 f0 	2 V . 
	push bc			;179c	c5 	. 
	call 017deh		;179d	cd de 17 	. . . 
	pop bc			;17a0	c1 	. 
	pop hl			;17a1	e1 	. 
	push hl			;17a2	e5 	. 
	push bc			;17a3	c5 	. 
	ld a,b			;17a4	78 	x 
	or a			;17a5	b7 	. 
	jr z,$+17		;17a6	28 0f 	( . 
	inc hl			;17a8	23 	# 
	call 00011h		;17a9	cd 11 00 	. . . 
	ld c,a			;17ac	4f 	O 
	dec b			;17ad	05 	. 
	push bc			;17ae	c5 	. 
	push hl			;17af	e5 	. 
	call 01610h		;17b0	cd 10 16 	. . . 
	pop hl			;17b3	e1 	. 
	pop bc			;17b4	c1 	. 
	jr $-17		;17b5	18 ed 	. . 
	push hl			;17b7	e5 	. 
	ld a,(0f056h)		;17b8	3a 56 f0 	: V . 
	or a			;17bb	b7 	. 
	jp z,01706h		;17bc	ca 06 17 	. . . 
	ld hl,0f058h		;17bf	21 58 f0 	! X . 
	sub (hl)			;17c2	96 	. 
	jr c,$+19		;17c3	38 11 	8 . 
	jr z,$+17		;17c5	28 0f 	( . 
	ld (0f056h),a		;17c7	32 56 f0 	2 V . 
	call 017f5h		;17ca	cd f5 17 	. . . 
	ld hl,0f056h		;17cd	21 56 f0 	! V . 
	dec (hl)			;17d0	35 	5 
	jr nz,$-7		;17d1	20 f7 	  . 
	jp 01706h		;17d3	c3 06 17 	. . . 
	pop hl			;17d6	e1 	. 
	pop bc			;17d7	c1 	. 
	xor a			;17d8	af 	. 
	ld (0f056h),a		;17d9	32 56 f0 	2 V . 
	jr $-64		;17dc	18 be 	. . 
	ld c,023h		;17de	0e 23 	. # 
	call 0166bh		;17e0	cd 6b 16 	. k . 
	call 01664h		;17e3	cd 64 16 	. d . 
	ld a,(0f058h)		;17e6	3a 58 f0 	: X . 
	ld hl,0f057h		;17e9	21 57 f0 	! W . 
	cp (hl)			;17ec	be 	. 
	ret nc			;17ed	d0 	. 
	ld c,020h		;17ee	0e 20 	.   
	call 0166bh		;17f0	cd 6b 16 	. k . 
	jr $-13		;17f3	18 f1 	. . 
	call 017fdh		;17f5	cd fd 17 	. . . 
	ld c,020h		;17f8	0e 20 	.   
	call 0f20ch		;17fa	cd 0c f2 	. . . 
	ld c,008h		;17fd	0e 08 	. . 
	jp 0f20ch		;17ff	c3 0c f2 	. . . 
	call 01641h		;1802	cd 41 16 	. A . 
	ld (0f05ch),a		;1805	32 5c f0 	2 \ . 
	ret			;1808	c9 	. 
	ld a,025h		;1809	3e 25 	> % 
	jr $-6		;180b	18 f8 	. . 
	ld hl,00000h		;180d	21 00 00 	! . . 
	ld (0f010h),hl		;1810	22 10 f0 	" . . 
	ld (0f012h),hl		;1813	22 12 f0 	" . . 
	xor a			;1816	af 	. 
	ld (0f04fh),a		;1817	32 4f f0 	2 O . 
	ld hl,00080h		;181a	21 80 00 	! . . 
	ld (0f014h),hl		;181d	22 14 f0 	" . . 
	call 01c58h		;1820	cd 58 1c 	. X . 
	jr $+11		;1823	18 09 	. . 
	ld a,(0f039h)		;1825	3a 39 f0 	: 9 . 
	ld hl,0f04fh		;1828	21 4f f0 	! O . 
	cp (hl)			;182b	be 	. 
	ret z			;182c	c8 	. 
	ld (hl),a			;182d	77 	w 
	ld hl,(0f012h)		;182e	2a 12 f0 	* . . 
	ld a,(0f04fh)		;1831	3a 4f f0 	: O . 
	ld c,a			;1834	4f 	O 
	call 02015h		;1835	cd 15 20 	. .   
	push hl			;1838	e5 	. 
	ld c,a			;1839	4f 	O 
	call 0f21bh		;183a	cd 1b f2 	. . . 
	ld a,h			;183d	7c 	| 
	or l			;183e	b5 	. 
	jp z,018e8h		;183f	ca e8 18 	. . . 
	ld e,(hl)			;1842	5e 	^ 
	inc hl			;1843	23 	# 
	ld d,(hl)			;1844	56 	V 
	inc hl			;1845	23 	# 
	ld (0f033h),de		;1846	ed 53 33 f0 	. S 3 . 
	ld (0f016h),hl		;184a	22 16 f0 	" . . 
	inc hl			;184d	23 	# 
	inc hl			;184e	23 	# 
	ld (0f018h),hl		;184f	22 18 f0 	" . . 
	inc hl			;1852	23 	# 
	inc hl			;1853	23 	# 
	ld (0f01ah),hl		;1854	22 1a f0 	" . . 
	inc hl			;1857	23 	# 
	inc hl			;1858	23 	# 
	ld de,0f01ch		;1859	11 1c f0 	. . . 
	ld bc,00008h		;185c	01 08 00 	. . . 
	ldir		;185f	ed b0 	. . 
	ld hl,(0f01eh)		;1861	2a 1e f0 	* . . 
	ld de,0f024h		;1864	11 24 f0 	. $ . 
	ld bc,0000fh		;1867	01 0f 00 	. . . 
	ldir		;186a	ed b0 	. . 
	pop hl			;186c	e1 	. 
	ld a,l			;186d	7d 	} 
	rra			;186e	1f 	. 
	ret c			;186f	d8 	. 
	ld bc,(0f012h)		;1870	ed 4b 12 f0 	. K . . 
	call 02024h		;1874	cd 24 20 	. $   
	ld (0f012h),hl		;1877	22 12 f0 	" . . 
	ld hl,(0f029h)		;187a	2a 29 f0 	* ) . 
	ld c,003h		;187d	0e 03 	. . 
	call 02015h		;187f	cd 15 20 	. .   
	inc hl			;1882	23 	# 
	ld b,h			;1883	44 	D 
	ld c,l			;1884	4d 	M 
	ld hl,(0f022h)		;1885	2a 22 f0 	* " . 
	ld (hl),000h		;1888	36 00 	6 . 
	inc hl			;188a	23 	# 
	dec bc			;188b	0b 	. 
	ld a,b			;188c	78 	x 
	or c			;188d	b1 	. 
	jr nz,$-6		;188e	20 f8 	  . 
	ld de,(0f02dh)		;1890	ed 5b 2d f0 	. [ - . 
	ld hl,(0f022h)		;1894	2a 22 f0 	* " . 
	ld (hl),e			;1897	73 	s 
	inc hl			;1898	23 	# 
	ld (hl),d			;1899	72 	r 
	call 0220eh		;189a	cd 0e 22 	. . " 
	ld hl,(0f016h)		;189d	2a 16 f0 	* . . 
	ld (hl),003h		;18a0	36 03 	6 . 
	inc hl			;18a2	23 	# 
	ld (hl),000h		;18a3	36 00 	6 . 
	call 02103h		;18a5	cd 03 21 	. . ! 
	ld c,0ffh		;18a8	0e ff 	. . 
	call 020f3h		;18aa	cd f3 20 	. .   
	call 0212ah		;18ad	cd 2a 21 	. * ! 
	ret z			;18b0	c8 	. 
	call 020a6h		;18b1	cd a6 20 	. .   
	ld a,0e5h		;18b4	3e e5 	> . 
	cp (hl)			;18b6	be 	. 
	jr z,$-15		;18b7	28 ef 	( . 
	ld a,(0f04eh)		;18b9	3a 4e f0 	: N . 
	cp (hl)			;18bc	be 	. 
	jr nz,$+33		;18bd	20 1f 	  . 
	inc hl			;18bf	23 	# 
	ld a,(hl)			;18c0	7e 	~ 
	sub 024h		;18c1	d6 24 	. $ 
	jr nz,$+6		;18c3	20 04 	  . 
	dec a			;18c5	3d 	= 
	ld (0f052h),a		;18c6	32 52 f0 	2 R . 
	ld a,(hl)			;18c9	7e 	~ 
	sub 041h		;18ca	d6 41 	. A 
	jr nz,$+18		;18cc	20 10 	  . 
	ld b,00bh		;18ce	06 0b 	. . 
	ld a,0b8h		;18d0	3e b8 	> . 
	add a,(hl)			;18d2	86 	. 
	inc hl			;18d3	23 	# 
	djnz $-2		;18d4	10 fc 	. . 
	and 07fh		;18d6	e6 7f 	.  
	jr nz,$+6		;18d8	20 04 	  . 
	dec a			;18da	3d 	= 
	ld (0f053h),a		;18db	32 53 f0 	2 S . 
	ld c,001h		;18de	0e 01 	. . 
	call 021cch		;18e0	cd cc 21 	. . ! 
	call 020e3h		;18e3	cd e3 20 	. .   
	jr $-62		;18e6	18 c0 	. . 
	pop hl			;18e8	e1 	. 
	ld hl,018efh		;18e9	21 ef 18 	! . . 
	jp 02053h		;18ec	c3 53 20 	. S   
	jr nz,$+128		;18ef	20 7e 	  ~ 
	ld a,(06220h)		;18f1	3a 20 62 	:   b 
	ld (hl),d			;18f4	72 	r 
	ld h,c			;18f5	61 	a 
	ld l,e			;18f6	6b 	k 
	jr nz,$+112		;18f7	20 6e 	  n 
	ld h,c			;18f9	61 	a 
	ld (hl),b			;18fa	70 	p 
	ld bc,07564h		;18fb	01 64 75 	. d u 
	jr nz,$+34		;18fe	20 20 	    
	jr z,$+34		;1900	28 20 	(   
	add hl,hl			;1902	29 	) 
	add a,b			;1903	80 	. 
	ld a,(hl)			;1904	7e 	~ 
	add a,b			;1905	80 	. 
	call 020d0h		;1906	cd d0 20 	. .   
	call 01f0ah		;1909	cd 0a 1f 	. . . 
	ld c,00fh		;190c	0e 0f 	. . 
	call 01d57h		;190e	cd 57 1d 	. W . 
	call 0212ah		;1911	cd 2a 21 	. * ! 
	ret z			;1914	c8 	. 
	call 020b1h		;1915	cd b1 20 	. .   
	call 00011h		;1918	cd 11 00 	. . . 
	push af			;191b	f5 	. 
	push hl			;191c	e5 	. 
	call 020a6h		;191d	cd a6 20 	. .   
	ld de,(0f050h)		;1920	ed 5b 50 f0 	. [ P . 
	ld bc,00020h		;1924	01 20 00 	.   . 
	push hl			;1927	e5 	. 
	ldir		;1928	ed b0 	. . 
	call 01c17h		;192a	cd 17 1c 	. . . 
	pop de			;192d	d1 	. 
	ld hl,0000ch		;192e	21 0c 00 	! . . 
	add hl,de			;1931	19 	. 
	ld c,(hl)			;1932	4e 	N 
	ld hl,0000fh		;1933	21 0f 00 	! . . 
	add hl,de			;1936	19 	. 
	ld b,(hl)			;1937	46 	F 
	pop hl			;1938	e1 	. 
	pop af			;1939	f1 	. 
	ld (hl),a			;193a	77 	w 
	cp c			;193b	b9 	. 
	ld a,b			;193c	78 	x 
	jr z,$+8		;193d	28 06 	( . 
	ld a,000h		;193f	3e 00 	> . 
	jr nc,$+4		;1941	30 02 	0 . 
	ld a,080h		;1943	3e 80 	> . 
	inc hl			;1945	23 	# 
	inc hl			;1946	23 	# 
	inc hl			;1947	23 	# 
	ld (hl),a			;1948	77 	w 
	ret			;1949	c9 	. 
	call 01f0ah		;194a	cd 0a 1f 	. . . 
	xor a			;194d	af 	. 
	ld (0f052h),a		;194e	32 52 f0 	2 R . 
	ld (0f04ah),a		;1951	32 4a f0 	2 J . 
	ld (0f04bh),a		;1954	32 4b f0 	2 K . 
	call 02037h		;1957	cd 37 20 	. 7   
	ret nz			;195a	c0 	. 
	call 020c6h		;195b	cd c6 20 	. .   
	and 080h		;195e	e6 80 	. . 
	ret nz			;1960	c0 	. 
	ld c,00fh		;1961	0e 0f 	. . 
	call 01d57h		;1963	cd 57 1d 	. W . 
	call 0212ah		;1966	cd 2a 21 	. * ! 
	ret z			;1969	c8 	. 
	ld bc,00010h		;196a	01 10 00 	. . . 
	call 020a6h		;196d	cd a6 20 	. .   
	add hl,bc			;1970	09 	. 
	ex de,hl			;1971	eb 	. 
	ld hl,(0f050h)		;1972	2a 50 f0 	* P . 
	add hl,bc			;1975	09 	. 
	ld c,010h		;1976	0e 10 	. . 
	ld a,(0f02ah)		;1978	3a 2a f0 	: * . 
	or a			;197b	b7 	. 
	jr nz,$+26		;197c	20 18 	  . 
	call 00011h		;197e	cd 11 00 	. . . 
	or a			;1981	b7 	. 
	ld a,(de)			;1982	1a 	. 
	jr nz,$+3		;1983	20 01 	  . 
	ld (hl),a			;1985	77 	w 
	or a			;1986	b7 	. 
	jr nz,$+6		;1987	20 04 	  . 
	call 00011h		;1989	cd 11 00 	. . . 
	ld (de),a			;198c	12 	. 
	ld b,a			;198d	47 	G 
	call 00011h		;198e	cd 11 00 	. . . 
	cp b			;1991	b8 	. 
	jr nz,$+63		;1992	20 3d 	  = 
	jr $+25		;1994	18 17 	. . 
	call 019d6h		;1996	cd d6 19 	. . . 
	ex de,hl			;1999	eb 	. 
	call 019d6h		;199a	cd d6 19 	. . . 
	call 00014h		;199d	cd 14 00 	. . . 
	cp (hl)			;19a0	be 	. 
	jr nz,$+48		;19a1	20 2e 	  . 
	inc de			;19a3	13 	. 
	inc hl			;19a4	23 	# 
	call 00014h		;19a5	cd 14 00 	. . . 
	cp (hl)			;19a8	be 	. 
	jr nz,$+40		;19a9	20 26 	  & 
	ex de,hl			;19ab	eb 	. 
	dec c			;19ac	0d 	. 
	inc de			;19ad	13 	. 
	inc hl			;19ae	23 	# 
	dec c			;19af	0d 	. 
	jr nz,$-56		;19b0	20 c6 	  . 
	ld bc,0ffech		;19b2	01 ec ff 	. . . 
	add hl,bc			;19b5	09 	. 
	ex de,hl			;19b6	eb 	. 
	add hl,bc			;19b7	09 	. 
	call 00014h		;19b8	cd 14 00 	. . . 
	cp (hl)			;19bb	be 	. 
	jr c,$+13		;19bc	38 0b 	8 . 
	ld (hl),a			;19be	77 	w 
	ld bc,00003h		;19bf	01 03 00 	. . . 
	add hl,bc			;19c2	09 	. 
	ex de,hl			;19c3	eb 	. 
	add hl,bc			;19c4	09 	. 
	call 00011h		;19c5	cd 11 00 	. . . 
	ld (de),a			;19c8	12 	. 
	ld a,0ffh		;19c9	3e ff 	> . 
	ld (0f035h),a		;19cb	32 35 f0 	2 5 . 
	jp 01f50h		;19ce	c3 50 1f 	. P . 
	ld hl,0f052h		;19d1	21 52 f0 	! R . 
	dec (hl)			;19d4	35 	5 
	ret			;19d5	c9 	. 
	call 00011h		;19d6	cd 11 00 	. . . 
	inc hl			;19d9	23 	# 
	ld b,a			;19da	47 	G 
	call 00011h		;19db	cd 11 00 	. . . 
	or b			;19de	b0 	. 
	dec hl			;19df	2b 	+ 
	ret nz			;19e0	c0 	. 
	call 00014h		;19e1	cd 14 00 	. . . 
	ld (hl),a			;19e4	77 	w 
	inc de			;19e5	13 	. 
	inc hl			;19e6	23 	# 
	call 00014h		;19e7	cd 14 00 	. . . 
	ld (hl),a			;19ea	77 	w 
	dec de			;19eb	1b 	. 
	dec hl			;19ec	2b 	+ 
	ret			;19ed	c9 	. 
	ld c,000h		;19ee	0e 00 	. . 
	ex de,hl			;19f0	eb 	. 
	call 00011h		;19f1	cd 11 00 	. . . 
	cp 03fh		;19f4	fe 3f 	. ? 
	jr z,$+18		;19f6	28 10 	( . 
	call 020b1h		;19f8	cd b1 20 	. .   
	call 00011h		;19fb	cd 11 00 	. . . 
	cp 03fh		;19fe	fe 3f 	. ? 
	call nz,020d0h		;1a00	c4 d0 20 	. .   
	call 01f0ah		;1a03	cd 0a 1f 	. . . 
	ld c,00fh		;1a06	0e 0f 	. . 
	call 01d57h		;1a08	cd 57 1d 	. W . 
	jr $+14		;1a0b	18 0c 	. . 
	ld hl,(0f03ch)		;1a0d	2a 3c f0 	* < . 
	ld (0f050h),hl		;1a10	22 50 f0 	" P . 
	call 01f0ah		;1a13	cd 0a 1f 	. . . 
	call 01d6ch		;1a16	cd 6c 1d 	. l . 
	ld hl,(0f01ch)		;1a19	2a 1c f0 	* . . 
	ld de,(0f014h)		;1a1c	ed 5b 14 f0 	. [ . . 
	ld bc,00080h		;1a20	01 80 00 	. . . 
	ldir		;1a23	ed b0 	. . 
	ret			;1a25	c9 	. 
	call 01f0ah		;1a26	cd 0a 1f 	. . . 
	call 0209dh		;1a29	cd 9d 20 	. .   
	ld c,00ch		;1a2c	0e 0c 	. . 
	call 01d57h		;1a2e	cd 57 1d 	. W . 
	call 0212ah		;1a31	cd 2a 21 	. * ! 
	jr z,$+23		;1a34	28 15 	( . 
	call 02044h		;1a36	cd 44 20 	. D   
	call 020a6h		;1a39	cd a6 20 	. .   
	ld (hl),0e5h		;1a3c	36 e5 	6 . 
	ld c,000h		;1a3e	0e 00 	. . 
	call 021cch		;1a40	cd cc 21 	. . ! 
	call 01f53h		;1a43	cd 53 1f 	. S . 
	call 01d6ch		;1a46	cd 6c 1d 	. l . 
	jr $-24		;1a49	18 e6 	. . 
	ld a,(0f037h)		;1a4b	3a 37 f0 	: 7 . 
	ld (0f052h),a		;1a4e	32 52 f0 	2 R . 
	ret			;1a51	c9 	. 
	call 01f0ah		;1a52	cd 0a 1f 	. . . 
	ld a,001h		;1a55	3e 01 	> . 
	ld (0f038h),a		;1a57	32 38 f0 	2 8 . 
	ld a,0ffh		;1a5a	3e ff 	> . 
	ld (0f036h),a		;1a5c	32 36 f0 	2 6 . 
	call 01ff6h		;1a5f	cd f6 1f 	. . . 
	ld a,(0f043h)		;1a62	3a 43 f0 	: C . 
	ld hl,0f041h		;1a65	21 41 f0 	! A . 
	cp (hl)			;1a68	be 	. 
	jr c,$+19		;1a69	38 11 	8 . 
	cp 080h		;1a6b	fe 80 	. . 
	jr nz,$+37		;1a6d	20 23 	  # 
	call 01de2h		;1a6f	cd e2 1d 	. . . 
	xor a			;1a72	af 	. 
	ld (0f043h),a		;1a73	32 43 f0 	2 C . 
	ld a,(0f052h)		;1a76	3a 52 f0 	: R . 
	or a			;1a79	b7 	. 
	jr nz,$+24		;1a7a	20 16 	  . 
	call 01f90h		;1a7c	cd 90 1f 	. . . 
	ld hl,(0f045h)		;1a7f	2a 45 f0 	* E . 
	ld a,l			;1a82	7d 	} 
	or h			;1a83	b4 	. 
	jr z,$+14		;1a84	28 0c 	( . 
	call 01fdbh		;1a86	cd db 1f 	. . . 
	call 02141h		;1a89	cd 41 21 	. A ! 
	call 0221fh		;1a8c	cd 1f 22 	. . " 
	jp 01b8bh		;1a8f	c3 8b 1b 	. . . 
	ld a,001h		;1a92	3e 01 	> . 
	jp 01a4eh		;1a94	c3 4e 1a 	. N . 
	call 01f0ah		;1a97	cd 0a 1f 	. . . 
	ld a,001h		;1a9a	3e 01 	> . 
	ld (0f038h),a		;1a9c	32 38 f0 	2 8 . 
	ld a,000h		;1a9f	3e 00 	> . 
	ld (0f036h),a		;1aa1	32 36 f0 	2 6 . 
	call 0209dh		;1aa4	cd 9d 20 	. .   
	ld hl,(0f050h)		;1aa7	2a 50 f0 	* P . 
	call 02047h		;1aaa	cd 47 20 	. G   
	call 01ff6h		;1aad	cd f6 1f 	. . . 
	ld a,(0f043h)		;1ab0	3a 43 f0 	: C . 
	cp 080h		;1ab3	fe 80 	. . 
	jr nc,$-35		;1ab5	30 db 	0 . 
	call 01f90h		;1ab7	cd 90 1f 	. . . 
	ld hl,(0f045h)		;1aba	2a 45 f0 	* E . 
	ld a,l			;1abd	7d 	} 
	or h			;1abe	b4 	. 
	ld c,000h		;1abf	0e 00 	. . 
	jr nz,$+69		;1ac1	20 43 	  C 
	call 01f9dh		;1ac3	cd 9d 1f 	. . . 
	ld (0f03ah),a		;1ac6	32 3a f0 	2 : . 
	ld bc,00000h		;1ac9	01 00 00 	. . . 
	or a			;1acc	b7 	. 
	jr z,$+9		;1acd	28 07 	( . 
	ld c,a			;1acf	4f 	O 
	dec bc			;1ad0	0b 	. 
	call 01fbah		;1ad1	cd ba 1f 	. . . 
	ld b,h			;1ad4	44 	D 
	ld c,l			;1ad5	4d 	M 
	call 01ba2h		;1ad6	cd a2 1b 	. . . 
	ld a,l			;1ad9	7d 	} 
	or h			;1ada	b4 	. 
	jr nz,$+7		;1adb	20 05 	  . 
	ld a,002h		;1add	3e 02 	> . 
	jp 01a4eh		;1adf	c3 4e 1a 	. N . 
	ld (0f045h),hl		;1ae2	22 45 f0 	" E . 
	ex de,hl			;1ae5	eb 	. 
	ld hl,(0f050h)		;1ae6	2a 50 f0 	* P . 
	ld bc,00010h		;1ae9	01 10 00 	. . . 
	add hl,bc			;1aec	09 	. 
	ld a,(0f02ah)		;1aed	3a 2a f0 	: * . 
	or a			;1af0	b7 	. 
	ld a,(0f03ah)		;1af1	3a 3a f0 	: : . 
	jr nz,$+8		;1af4	20 06 	  . 
	call 020ach		;1af6	cd ac 20 	. .   
	ld (hl),e			;1af9	73 	s 
	jr $+10		;1afa	18 08 	. . 
	ld c,a			;1afc	4f 	O 
	ld b,000h		;1afd	06 00 	. . 
	add hl,bc			;1aff	09 	. 
	add hl,bc			;1b00	09 	. 
	ld (hl),e			;1b01	73 	s 
	inc hl			;1b02	23 	# 
	ld (hl),d			;1b03	72 	r 
	ld c,002h		;1b04	0e 02 	. . 
	ld a,(0f052h)		;1b06	3a 52 f0 	: R . 
	or a			;1b09	b7 	. 
	ret nz			;1b0a	c0 	. 
	push bc			;1b0b	c5 	. 
	call 01fdbh		;1b0c	cd db 1f 	. . . 
	ld a,(0f038h)		;1b0f	3a 38 f0 	: 8 . 
	dec a			;1b12	3d 	= 
	dec a			;1b13	3d 	= 
	jr nz,$+59		;1b14	20 39 	  9 
	pop bc			;1b16	c1 	. 
	push bc			;1b17	c5 	. 
	ld a,c			;1b18	79 	y 
	dec a			;1b19	3d 	= 
	dec a			;1b1a	3d 	= 
	jr nz,$+52		;1b1b	20 32 	  2 
	push hl			;1b1d	e5 	. 
	ld hl,(0f01ch)		;1b1e	2a 1c f0 	* . . 
	ld b,080h		;1b21	06 80 	. . 
	ld (hl),a			;1b23	77 	w 
	inc hl			;1b24	23 	# 
	djnz $-2		;1b25	10 fc 	. . 
	call 01c5eh		;1b27	cd 5e 1c 	. ^ . 
	ld hl,(0f047h)		;1b2a	2a 47 f0 	* G . 
	ld c,002h		;1b2d	0e 02 	. . 
	ld (0f045h),hl		;1b2f	22 45 f0 	" E . 
	push bc			;1b32	c5 	. 
	call 02141h		;1b33	cd 41 21 	. A ! 
	pop bc			;1b36	c1 	. 
	call 02224h		;1b37	cd 24 22 	. $ " 
	ld hl,(0f045h)		;1b3a	2a 45 f0 	* E . 
	ld c,000h		;1b3d	0e 00 	. . 
	ld a,(0f027h)		;1b3f	3a 27 f0 	: ' . 
	ld b,a			;1b42	47 	G 
	and l			;1b43	a5 	. 
	cp b			;1b44	b8 	. 
	inc hl			;1b45	23 	# 
	jr nz,$-23		;1b46	20 e7 	  . 
	pop hl			;1b48	e1 	. 
	ld (0f045h),hl		;1b49	22 45 f0 	" E . 
	call 01c58h		;1b4c	cd 58 1c 	. X . 
	call 02141h		;1b4f	cd 41 21 	. A ! 
	pop bc			;1b52	c1 	. 
	push bc			;1b53	c5 	. 
	call 02224h		;1b54	cd 24 22 	. $ " 
	pop bc			;1b57	c1 	. 
	ld a,(0f043h)		;1b58	3a 43 f0 	: C . 
	ld hl,0f041h		;1b5b	21 41 f0 	! A . 
	cp (hl)			;1b5e	be 	. 
	jr c,$+6		;1b5f	38 04 	8 . 
	ld (hl),a			;1b61	77 	w 
	inc (hl)			;1b62	34 	4 
	ld c,002h		;1b63	0e 02 	. . 
	push af			;1b65	f5 	. 
	call 020c6h		;1b66	cd c6 20 	. .   
	and 07fh		;1b69	e6 7f 	.  
	ld (hl),a			;1b6b	77 	w 
	pop af			;1b6c	f1 	. 
	cp 07fh		;1b6d	fe 7f 	.  
	jr nz,$+28		;1b6f	20 1a 	  . 
	ld a,(0f038h)		;1b71	3a 38 f0 	: 8 . 
	cp 001h		;1b74	fe 01 	. . 
	jr nz,$+21		;1b76	20 13 	  . 
	call 01b8bh		;1b78	cd 8b 1b 	. . . 
	call 01de2h		;1b7b	cd e2 1d 	. . . 
	ld hl,0f052h		;1b7e	21 52 f0 	! R . 
	ld a,(hl)			;1b81	7e 	~ 
	or a			;1b82	b7 	. 
	jr nz,$+6		;1b83	20 04 	  . 
	dec a			;1b85	3d 	= 
	ld (0f043h),a		;1b86	32 43 f0 	2 C . 
	ld (hl),000h		;1b89	36 00 	6 . 
	call 020b9h		;1b8b	cd b9 20 	. .   
	ld a,(0f038h)		;1b8e	3a 38 f0 	: 8 . 
	cp 002h		;1b91	fe 02 	. . 
	jr nz,$+3		;1b93	20 01 	  . 
	xor a			;1b95	af 	. 
	ld c,a			;1b96	4f 	O 
	ld a,(0f043h)		;1b97	3a 43 f0 	: C . 
	add a,c			;1b9a	81 	. 
	ld (hl),a			;1b9b	77 	w 
	ex de,hl			;1b9c	eb 	. 
	ld a,(0f041h)		;1b9d	3a 41 f0 	: A . 
	ld (hl),a			;1ba0	77 	w 
	ret			;1ba1	c9 	. 
	ld d,b			;1ba2	50 	P 
	ld e,c			;1ba3	59 	Y 
	ld a,c			;1ba4	79 	y 
	or b			;1ba5	b0 	. 
	jr z,$+14		;1ba6	28 0c 	( . 
	dec bc			;1ba8	0b 	. 
	push de			;1ba9	d5 	. 
	push bc			;1baa	c5 	. 
	call 021a6h		;1bab	cd a6 21 	. . ! 
	rra			;1bae	1f 	. 
	jp nc,01bcch		;1baf	d2 cc 1b 	. . . 
	pop bc			;1bb2	c1 	. 
	pop de			;1bb3	d1 	. 
	ld hl,(0f029h)		;1bb4	2a 29 f0 	* ) . 
	ld a,e			;1bb7	7b 	{ 
	sub l			;1bb8	95 	. 
	ld a,d			;1bb9	7a 	z 
	sbc a,h			;1bba	9c 	. 
	jr nc,$+25		;1bbb	30 17 	0 . 
	inc de			;1bbd	13 	. 
	push bc			;1bbe	c5 	. 
	push de			;1bbf	d5 	. 
	ld b,d			;1bc0	42 	B 
	ld c,e			;1bc1	4b 	K 
	call 021a6h		;1bc2	cd a6 21 	. . ! 
	rra			;1bc5	1f 	. 
	jr nc,$+6		;1bc6	30 04 	0 . 
	pop de			;1bc8	d1 	. 
	pop bc			;1bc9	c1 	. 
	jr $-38		;1bca	18 d8 	. . 
	rla			;1bcc	17 	. 
	inc a			;1bcd	3c 	< 
	call 02208h		;1bce	cd 08 22 	. . " 
	pop hl			;1bd1	e1 	. 
	pop de			;1bd2	d1 	. 
	ret			;1bd3	c9 	. 
	ld a,c			;1bd4	79 	y 
	or b			;1bd5	b0 	. 
	jr nz,$-50		;1bd6	20 cc 	  . 
	ld hl,00000h		;1bd8	21 00 00 	! . . 
	ret			;1bdb	c9 	. 
	call 020d0h		;1bdc	cd d0 20 	. .   
	call 01f0ah		;1bdf	cd 0a 1f 	. . . 
	call 0209dh		;1be2	cd 9d 20 	. .   
	ld hl,(0f050h)		;1be5	2a 50 f0 	* P . 
	push hl			;1be8	e5 	. 
	ld hl,0f00eh		;1be9	21 0e f0 	! . . 
	ld (0f050h),hl		;1bec	22 50 f0 	" P . 
	ld c,001h		;1bef	0e 01 	. . 
	call 01d57h		;1bf1	cd 57 1d 	. W . 
	call 0212ah		;1bf4	cd 2a 21 	. * ! 
	pop hl			;1bf7	e1 	. 
	ld (0f050h),hl		;1bf8	22 50 f0 	" P . 
	ret z			;1bfb	c8 	. 
	ex de,hl			;1bfc	eb 	. 
	ld hl,0000fh		;1bfd	21 0f 00 	! . . 
	add hl,de			;1c00	19 	. 
	ld b,011h		;1c01	06 11 	. . 
	xor a			;1c03	af 	. 
	ld (hl),a			;1c04	77 	w 
	inc hl			;1c05	23 	# 
	djnz $-2		;1c06	10 fc 	. . 
	ld hl,0000dh		;1c08	21 0d 00 	! . . 
	add hl,de			;1c0b	19 	. 
	ld (hl),a			;1c0c	77 	w 
	call 020e3h		;1c0d	cd e3 20 	. .   
	ld e,000h		;1c10	1e 00 	. . 
	ld b,020h		;1c12	06 20 	.   
	call 01f3eh		;1c14	cd 3e 1f 	. > . 
	call 020c6h		;1c17	cd c6 20 	. .   
	or 080h		;1c1a	f6 80 	. . 
	ld (hl),a			;1c1c	77 	w 
	ret			;1c1d	c9 	. 
	call 01f0ah		;1c1e	cd 0a 1f 	. . . 
	call 0209dh		;1c21	cd 9d 20 	. .   
	ld c,00ch		;1c24	0e 0c 	. . 
	call 01d57h		;1c26	cd 57 1d 	. W . 
	ld hl,(0f050h)		;1c29	2a 50 f0 	* P . 
	call 00011h		;1c2c	cd 11 00 	. . . 
	ld de,00010h		;1c2f	11 10 00 	. . . 
	add hl,de			;1c32	19 	. 
	ld (hl),a			;1c33	77 	w 
	call 0212ah		;1c34	cd 2a 21 	. * ! 
	jp z,01a4bh		;1c37	ca 4b 1a 	. K . 
	call 02044h		;1c3a	cd 44 20 	. D   
	ld e,010h		;1c3d	1e 10 	. . 
	ld b,00ch		;1c3f	06 0c 	. . 
	call 01f3eh		;1c41	cd 3e 1f 	. > . 
	call 01d6ch		;1c44	cd 6c 1d 	. l . 
	jr $-19		;1c47	18 eb 	. . 
	ld hl,(0f012h)		;1c49	2a 12 f0 	* . . 
	jr $+86		;1c4c	18 54 	. T 
	ld a,(0f04fh)		;1c4e	3a 4f f0 	: O . 
	jp 01a4eh		;1c51	c3 4e 1a 	. N . 
	ld (0f014h),de		;1c54	ed 53 14 f0 	. S . . 
	ld bc,(0f014h)		;1c58	ed 4b 14 f0 	. K . . 
	jr $+6		;1c5c	18 04 	. . 
	ld bc,(0f01ch)		;1c5e	ed 4b 1c f0 	. K . . 
	jp 0f224h		;1c62	c3 24 f2 	. $ . 
	ld hl,(0f022h)		;1c65	2a 22 f0 	* " . 
	jr $+58		;1c68	18 38 	. 8 
	ld bc,(0f010h)		;1c6a	ed 4b 10 f0 	. K . . 
	call 02024h		;1c6e	cd 24 20 	. $   
	ld (0f010h),hl		;1c71	22 10 f0 	" . . 
	ld hl,(0f02bh)		;1c74	2a 2b f0 	* + . 
	inc hl			;1c77	23 	# 
	ex de,hl			;1c78	eb 	. 
	ld hl,(0f016h)		;1c79	2a 16 f0 	* . . 
	ld (hl),e			;1c7c	73 	s 
	inc hl			;1c7d	23 	# 
	ld (hl),d			;1c7e	72 	r 
	ret			;1c7f	c9 	. 
	ld hl,(0f010h)		;1c80	2a 10 f0 	* . . 
	jr $+31		;1c83	18 1d 	. . 
	call 01f0ah		;1c85	cd 0a 1f 	. . . 
	ld c,00ch		;1c88	0e 0c 	. . 
	call 01d57h		;1c8a	cd 57 1d 	. W . 
	call 0212ah		;1c8d	cd 2a 21 	. * ! 
	jp z,01a4bh		;1c90	ca 4b 1a 	. K . 
	ld e,000h		;1c93	1e 00 	. . 
	ld b,00ch		;1c95	06 0c 	. . 
	call 01f3eh		;1c97	cd 3e 1f 	. > . 
	call 01d6ch		;1c9a	cd 6c 1d 	. l . 
	jr $-16		;1c9d	18 ee 	. . 
	ld hl,(0f01eh)		;1c9f	2a 1e f0 	* . . 
	ld (0f052h),hl		;1ca2	22 52 f0 	" R . 
	ret			;1ca5	c9 	. 
	ld a,(0f039h)		;1ca6	3a 39 f0 	: 9 . 
	cp 0ffh		;1ca9	fe ff 	. . 
	jr nz,$+8		;1cab	20 06 	  . 
	ld a,(0f04eh)		;1cad	3a 4e f0 	: N . 
	jp 01a4eh		;1cb0	c3 4e 1a 	. N . 
	and 01fh		;1cb3	e6 1f 	. . 
	ld (0f04eh),a		;1cb5	32 4e f0 	2 N . 
	ret			;1cb8	c9 	. 
	call 01f0ah		;1cb9	cd 0a 1f 	. . . 
	xor a			;1cbc	af 	. 
	ld c,0ffh		;1cbd	0e ff 	. . 
	call 01e41h		;1cbf	cd 41 1e 	. A . 
	call z,01a5ah		;1cc2	cc 5a 1a 	. Z . 
	ret			;1cc5	c9 	. 
	call 01f0ah		;1cc6	cd 0a 1f 	. . . 
	xor a			;1cc9	af 	. 
	ld c,000h		;1cca	0e 00 	. . 
	call 01e41h		;1ccc	cd 41 1e 	. A . 
	call z,01a9fh		;1ccf	cc 9f 1a 	. . . 
	ret			;1cd2	c9 	. 
	call 01f0ah		;1cd3	cd 0a 1f 	. . . 
	ld c,00ch		;1cd6	0e 0c 	. . 
	call 01d57h		;1cd8	cd 57 1d 	. W . 
	ld hl,(0f050h)		;1cdb	2a 50 f0 	* P . 
	ld de,00021h		;1cde	11 21 00 	. ! . 
	add hl,de			;1ce1	19 	. 
	push hl			;1ce2	e5 	. 
	ld (hl),d			;1ce3	72 	r 
	inc hl			;1ce4	23 	# 
	ld (hl),d			;1ce5	72 	r 
	inc hl			;1ce6	23 	# 
	ld (hl),d			;1ce7	72 	r 
	call 0212ah		;1ce8	cd 2a 21 	. * ! 
	jr z,$+46		;1ceb	28 2c 	( , 
	call 020a6h		;1ced	cd a6 20 	. .   
	ld de,0000fh		;1cf0	11 0f 00 	. . . 
	call 01ed8h		;1cf3	cd d8 1e 	. . . 
	pop hl			;1cf6	e1 	. 
	push hl			;1cf7	e5 	. 
	ld e,a			;1cf8	5f 	_ 
	call 00011h		;1cf9	cd 11 00 	. . . 
	ld d,a			;1cfc	57 	W 
	ld a,c			;1cfd	79 	y 
	sub d			;1cfe	92 	. 
	inc hl			;1cff	23 	# 
	call 00011h		;1d00	cd 11 00 	. . . 
	ld d,a			;1d03	57 	W 
	ld a,b			;1d04	78 	x 
	sbc a,d			;1d05	9a 	. 
	inc hl			;1d06	23 	# 
	call 00011h		;1d07	cd 11 00 	. . . 
	ld d,a			;1d0a	57 	W 
	ld a,e			;1d0b	7b 	{ 
	sbc a,d			;1d0c	9a 	. 
	jr c,$+7		;1d0d	38 05 	8 . 
	ld (hl),e			;1d0f	73 	s 
	dec hl			;1d10	2b 	+ 
	ld (hl),b			;1d11	70 	p 
	dec hl			;1d12	2b 	+ 
	ld (hl),c			;1d13	71 	q 
	call 01d6ch		;1d14	cd 6c 1d 	. l . 
	jr $-47		;1d17	18 cf 	. . 
	pop hl			;1d19	e1 	. 
	ret			;1d1a	c9 	. 
	ld hl,(0f050h)		;1d1b	2a 50 f0 	* P . 
	ld de,00020h		;1d1e	11 20 00 	.   . 
	call 01ed8h		;1d21	cd d8 1e 	. . . 
	ld hl,00021h		;1d24	21 21 00 	! ! . 
	add hl,de			;1d27	19 	. 
	ld (hl),c			;1d28	71 	q 
	inc hl			;1d29	23 	# 
	ld (hl),b			;1d2a	70 	p 
	inc hl			;1d2b	23 	# 
	ld (hl),a			;1d2c	77 	w 
	ret			;1d2d	c9 	. 
	ld hl,(0f050h)		;1d2e	2a 50 f0 	* P . 
	ld a,l			;1d31	7d 	} 
	cpl			;1d32	2f 	/ 
	ld e,a			;1d33	5f 	_ 
	ld a,h			;1d34	7c 	| 
	cpl			;1d35	2f 	/ 
	ld hl,(0f012h)		;1d36	2a 12 f0 	* . . 
	and h			;1d39	a4 	. 
	ld d,a			;1d3a	57 	W 
	ld a,l			;1d3b	7d 	} 
	and e			;1d3c	a3 	. 
	ld e,a			;1d3d	5f 	_ 
	ld hl,(0f010h)		;1d3e	2a 10 f0 	* . . 
	ex de,hl			;1d41	eb 	. 
	ld (0f012h),hl		;1d42	22 12 f0 	" . . 
	ld a,l			;1d45	7d 	} 
	and e			;1d46	a3 	. 
	ld l,a			;1d47	6f 	o 
	ld a,h			;1d48	7c 	| 
	and d			;1d49	a2 	. 
	ld h,a			;1d4a	67 	g 
	ld (0f010h),hl		;1d4b	22 10 f0 	" . . 
	ret			;1d4e	c9 	. 
	call 01f0ah		;1d4f	cd 0a 1f 	. . . 
	ld a,002h		;1d52	3e 02 	> . 
	jp 01ccah		;1d54	c3 ca 1c 	. . . 
	ld a,0ffh		;1d57	3e ff 	> . 
	ld (0f037h),a		;1d59	32 37 f0 	2 7 . 
	ld hl,0f03bh		;1d5c	21 3b f0 	! ; . 
	ld (hl),c			;1d5f	71 	q 
	ld hl,(0f050h)		;1d60	2a 50 f0 	* P . 
	ld (0f03ch),hl		;1d63	22 3c f0 	" < . 
	call 02103h		;1d66	cd 03 21 	. . ! 
	call 0220eh		;1d69	cd 0e 22 	. . " 
	ld c,000h		;1d6c	0e 00 	. . 
	call 020f3h		;1d6e	cd f3 20 	. .   
	call 0212ah		;1d71	cd 2a 21 	. * ! 
	jp z,01ddah		;1d74	ca da 1d 	. . . 
	ld hl,(0f03ch)		;1d77	2a 3c f0 	* < . 
	ex de,hl			;1d7a	eb 	. 
	call 00014h		;1d7b	cd 14 00 	. . . 
	cp 0e5h		;1d7e	fe e5 	. . 
	jr z,$+9		;1d80	28 07 	( . 
	push de			;1d82	d5 	. 
	call 020d6h		;1d83	cd d6 20 	. .   
	pop de			;1d86	d1 	. 
	jr nc,$+83		;1d87	30 51 	0 Q 
	call 020a6h		;1d89	cd a6 20 	. .   
	ld a,(0f03bh)		;1d8c	3a 3b f0 	: ; . 
	ld c,a			;1d8f	4f 	O 
	ld b,000h		;1d90	06 00 	. . 
	ld a,c			;1d92	79 	y 
	or a			;1d93	b7 	. 
	jr z,$+53		;1d94	28 33 	( 3 
	call 00014h		;1d96	cd 14 00 	. . . 
	cp 03fh		;1d99	fe 3f 	. ? 
	jr z,$+40		;1d9b	28 26 	( & 
	ld a,b			;1d9d	78 	x 
	cp 00dh		;1d9e	fe 0d 	. . 
	jr z,$+35		;1da0	28 21 	( ! 
	cp 00ch		;1da2	fe 0c 	. . 
	call 00014h		;1da4	cd 14 00 	. . . 
	jr z,$+9		;1da7	28 07 	( . 
	sub (hl)			;1da9	96 	. 
	and 07fh		;1daa	e6 7f 	.  
	jr z,$+23		;1dac	28 15 	( . 
	jr $-66		;1dae	18 bc 	. . 
	push bc			;1db0	c5 	. 
	ld c,(hl)			;1db1	4e 	N 
	push af			;1db2	f5 	. 
	ld a,(0f028h)		;1db3	3a 28 f0 	: ( . 
	cpl			;1db6	2f 	/ 
	ld b,a			;1db7	47 	G 
	ld a,c			;1db8	79 	y 
	and b			;1db9	a0 	. 
	ld c,a			;1dba	4f 	O 
	pop af			;1dbb	f1 	. 
	and b			;1dbc	a0 	. 
	sub c			;1dbd	91 	. 
	and 01fh		;1dbe	e6 1f 	. . 
	pop bc			;1dc0	c1 	. 
	jr nz,$-85		;1dc1	20 a9 	  . 
	inc de			;1dc3	13 	. 
	inc hl			;1dc4	23 	# 
	inc b			;1dc5	04 	. 
	dec c			;1dc6	0d 	. 
	jr $-53		;1dc7	18 c9 	. . 
	ld a,(0f04ah)		;1dc9	3a 4a f0 	: J . 
	and 003h		;1dcc	e6 03 	. . 
	ld (0f052h),a		;1dce	32 52 f0 	2 R . 
	ld hl,0f037h		;1dd1	21 37 f0 	! 7 . 
	ld a,(hl)			;1dd4	7e 	~ 
	rla			;1dd5	17 	. 
	ret nc			;1dd6	d0 	. 
	xor a			;1dd7	af 	. 
	ld (hl),a			;1dd8	77 	w 
	ret			;1dd9	c9 	. 
	call 02103h		;1dda	cd 03 21 	. . ! 
	ld a,0ffh		;1ddd	3e ff 	> . 
	jp 01a4eh		;1ddf	c3 4e 1a 	. N . 
	xor a			;1de2	af 	. 
	ld (0f035h),a		;1de3	32 35 f0 	2 5 . 
	call 0194dh		;1de6	cd 4d 19 	. M . 
	call 0212ah		;1de9	cd 2a 21 	. * ! 
	ret z			;1dec	c8 	. 
	ld hl,(0f050h)		;1ded	2a 50 f0 	* P . 
	ld bc,0000ch		;1df0	01 0c 00 	. . . 
	add hl,bc			;1df3	09 	. 
	call 00011h		;1df4	cd 11 00 	. . . 
	inc a			;1df7	3c 	< 
	and 01fh		;1df8	e6 1f 	. . 
	ld (hl),a			;1dfa	77 	w 
	jr z,$+15		;1dfb	28 0d 	( . 
	ld b,a			;1dfd	47 	G 
	ld a,(0f028h)		;1dfe	3a 28 f0 	: ( . 
	and b			;1e01	a0 	. 
	ld hl,0f035h		;1e02	21 35 f0 	! 5 . 
	and (hl)			;1e05	a6 	. 
	jr z,$+17		;1e06	28 0f 	( . 
	jr $+41		;1e08	18 27 	. ' 
	ld bc,00002h		;1e0a	01 02 00 	. . . 
	add hl,bc			;1e0d	09 	. 
	call 00011h		;1e0e	cd 11 00 	. . . 
	inc a			;1e11	3c 	< 
	ld (hl),a			;1e12	77 	w 
	and 00fh		;1e13	e6 0f 	. . 
	jr z,$+38		;1e15	28 24 	( $ 
	ld c,00fh		;1e17	0e 0f 	. . 
	call 01d57h		;1e19	cd 57 1d 	. W . 
	call 0212ah		;1e1c	cd 2a 21 	. * ! 
	jr nz,$+18		;1e1f	20 10 	  . 
	ld a,(0f036h)		;1e21	3a 36 f0 	: 6 . 
	inc a			;1e24	3c 	< 
	jr z,$+22		;1e25	28 14 	( . 
	call 01be2h		;1e27	cd e2 1b 	. . . 
	call 0212ah		;1e2a	cd 2a 21 	. * ! 
	jr z,$+14		;1e2d	28 0c 	( . 
	jr $+5		;1e2f	18 03 	. . 
	call 01915h		;1e31	cd 15 19 	. . . 
	call 01ff6h		;1e34	cd f6 1f 	. . . 
	xor a			;1e37	af 	. 
	jp 01a4eh		;1e38	c3 4e 1a 	. N . 
	call 01a92h		;1e3b	cd 92 1a 	. . . 
	jp 01c17h		;1e3e	c3 17 1c 	. . . 
	ld (0f038h),a		;1e41	32 38 f0 	2 8 . 
	push bc			;1e44	c5 	. 
	ld de,(0f050h)		;1e45	ed 5b 50 f0 	. [ P . 
	ld hl,00021h		;1e49	21 21 00 	! ! . 
	add hl,de			;1e4c	19 	. 
	call 00011h		;1e4d	cd 11 00 	. . . 
	and 07fh		;1e50	e6 7f 	.  
	push af			;1e52	f5 	. 
	call 00011h		;1e53	cd 11 00 	. . . 
	rla			;1e56	17 	. 
	inc hl			;1e57	23 	# 
	call 00011h		;1e58	cd 11 00 	. . . 
	rla			;1e5b	17 	. 
	and 01fh		;1e5c	e6 1f 	. . 
	ld c,a			;1e5e	4f 	O 
	call 00011h		;1e5f	cd 11 00 	. . . 
	rra			;1e62	1f 	. 
	rra			;1e63	1f 	. 
	rra			;1e64	1f 	. 
	rra			;1e65	1f 	. 
	and 00fh		;1e66	e6 0f 	. . 
	ld b,a			;1e68	47 	G 
	inc hl			;1e69	23 	# 
	call 00011h		;1e6a	cd 11 00 	. . . 
	ld l,a			;1e6d	6f 	o 
	pop af			;1e6e	f1 	. 
	inc l			;1e6f	2c 	, 
	dec l			;1e70	2d 	- 
	ld l,006h		;1e71	2e 06 	. . 
	jr nz,$+93		;1e73	20 5b 	  [ 
	ld hl,00020h		;1e75	21 20 00 	!   . 
	add hl,de			;1e78	19 	. 
	ld (hl),a			;1e79	77 	w 
	ld hl,0000ch		;1e7a	21 0c 00 	! . . 
	add hl,de			;1e7d	19 	. 
	call 00011h		;1e7e	cd 11 00 	. . . 
	sub c			;1e81	91 	. 
	jr nz,$+14		;1e82	20 0c 	  . 
	ld hl,0000eh		;1e84	21 0e 00 	! . . 
	add hl,de			;1e87	19 	. 
	call 00011h		;1e88	cd 11 00 	. . . 
	sub b			;1e8b	90 	. 
	and 07fh		;1e8c	e6 7f 	.  
	jr z,$+54		;1e8e	28 34 	( 4 
	push bc			;1e90	c5 	. 
	push de			;1e91	d5 	. 
	call 0194dh		;1e92	cd 4d 19 	. M . 
	pop de			;1e95	d1 	. 
	pop bc			;1e96	c1 	. 
	ld l,003h		;1e97	2e 03 	. . 
	ld a,(0f052h)		;1e99	3a 52 f0 	: R . 
	inc a			;1e9c	3c 	< 
	jr z,$+44		;1e9d	28 2a 	( * 
	ld hl,0000ch		;1e9f	21 0c 00 	! . . 
	add hl,de			;1ea2	19 	. 
	ld (hl),c			;1ea3	71 	q 
	ld hl,0000eh		;1ea4	21 0e 00 	! . . 
	add hl,de			;1ea7	19 	. 
	ld (hl),b			;1ea8	70 	p 
	call 0190ch		;1ea9	cd 0c 19 	. . . 
	ld a,(0f052h)		;1eac	3a 52 f0 	: R . 
	inc a			;1eaf	3c 	< 
	jr nz,$+20		;1eb0	20 12 	  . 
	pop bc			;1eb2	c1 	. 
	push bc			;1eb3	c5 	. 
	ld l,004h		;1eb4	2e 04 	. . 
	inc c			;1eb6	0c 	. 
	jr z,$+18		;1eb7	28 10 	( . 
	call 01be2h		;1eb9	cd e2 1b 	. . . 
	ld l,005h		;1ebc	2e 05 	. . 
	ld a,(0f052h)		;1ebe	3a 52 f0 	: R . 
	inc a			;1ec1	3c 	< 
	jr z,$+7		;1ec2	28 05 	( . 
	pop bc			;1ec4	c1 	. 
	xor a			;1ec5	af 	. 
	jp 01a4eh		;1ec6	c3 4e 1a 	. N . 
	push hl			;1ec9	e5 	. 
	call 020c6h		;1eca	cd c6 20 	. .   
	ld (hl),0c0h		;1ecd	36 c0 	6 . 
	pop hl			;1ecf	e1 	. 
	pop bc			;1ed0	c1 	. 
	ld a,l			;1ed1	7d 	} 
	ld (0f052h),a		;1ed2	32 52 f0 	2 R . 
	jp 01c17h		;1ed5	c3 17 1c 	. . . 
	ex de,hl			;1ed8	eb 	. 
	add hl,de			;1ed9	19 	. 
	call 00011h		;1eda	cd 11 00 	. . . 
	ld c,a			;1edd	4f 	O 
	ld b,000h		;1ede	06 00 	. . 
	ld hl,0000ch		;1ee0	21 0c 00 	! . . 
	add hl,de			;1ee3	19 	. 
	call 00011h		;1ee4	cd 11 00 	. . . 
	rrca			;1ee7	0f 	. 
	and 080h		;1ee8	e6 80 	. . 
	add a,c			;1eea	81 	. 
	ld c,a			;1eeb	4f 	O 
	ld a,000h		;1eec	3e 00 	> . 
	adc a,b			;1eee	88 	. 
	ld b,a			;1eef	47 	G 
	call 00011h		;1ef0	cd 11 00 	. . . 
	rrca			;1ef3	0f 	. 
	and 00fh		;1ef4	e6 0f 	. . 
	add a,b			;1ef6	80 	. 
	ld b,a			;1ef7	47 	G 
	inc hl			;1ef8	23 	# 
	inc hl			;1ef9	23 	# 
	call 00011h		;1efa	cd 11 00 	. . . 
	add a,a			;1efd	87 	. 
	add a,a			;1efe	87 	. 
	add a,a			;1eff	87 	. 
	add a,a			;1f00	87 	. 
	rl h		;1f01	cb 14 	. . 
	add a,b			;1f03	80 	. 
	ld b,a			;1f04	47 	G 
	rla			;1f05	17 	. 
	or h			;1f06	b4 	. 
	and 001h		;1f07	e6 01 	. . 
	ret			;1f09	c9 	. 
	ld a,0ffh		;1f0a	3e ff 	> . 
	ld (0f03eh),a		;1f0c	32 3e f0 	2 > . 
	ld hl,(0f050h)		;1f0f	2a 50 f0 	* P . 
	call 00011h		;1f12	cd 11 00 	. . . 
	and 01fh		;1f15	e6 1f 	. . 
	dec a			;1f17	3d 	= 
	ld (0f039h),a		;1f18	32 39 f0 	2 9 . 
	cp 01eh		;1f1b	fe 1e 	. . 
	jr nc,$+20		;1f1d	30 12 	0 . 
	ld a,(0f04fh)		;1f1f	3a 4f f0 	: O . 
	ld (0f040h),a		;1f22	32 40 f0 	2 @ . 
	call 00011h		;1f25	cd 11 00 	. . . 
	ld (0f03fh),a		;1f28	32 3f f0 	2 ? . 
	and 0e0h		;1f2b	e6 e0 	. . 
	ld (hl),a			;1f2d	77 	w 
	call 01825h		;1f2e	cd 25 18 	. % . 
	ld a,(0f04eh)		;1f31	3a 4e f0 	: N . 
	ld c,a			;1f34	4f 	O 
	ld hl,(0f050h)		;1f35	2a 50 f0 	* P . 
	call 00011h		;1f38	cd 11 00 	. . . 
	or c			;1f3b	b1 	. 
	ld (hl),a			;1f3c	77 	w 
	ret			;1f3d	c9 	. 
	ld d,000h		;1f3e	16 00 	. . 
	ld hl,(0f050h)		;1f40	2a 50 f0 	* P . 
	add hl,de			;1f43	19 	. 
	ex de,hl			;1f44	eb 	. 
	call 020a6h		;1f45	cd a6 20 	. .   
	call 00014h		;1f48	cd 14 00 	. . . 
	ld (hl),a			;1f4b	77 	w 
	inc de			;1f4c	13 	. 
	inc hl			;1f4d	23 	# 
	djnz $-6		;1f4e	10 f8 	. . 
	call 02133h		;1f50	cd 33 21 	. 3 ! 
	call 01f61h		;1f53	cd 61 1f 	. a . 
	call 01c5eh		;1f56	cd 5e 1c 	. ^ . 
	ld c,001h		;1f59	0e 01 	. . 
	call 02224h		;1f5b	cd 24 22 	. $ " 
	jp 01c58h		;1f5e	c3 58 1c 	. X . 
	ld c,0ffh		;1f61	0e ff 	. . 
	ld hl,(0f04ch)		;1f63	2a 4c f0 	* L . 
	ex de,hl			;1f66	eb 	. 
	ld hl,(0f02fh)		;1f67	2a 2f f0 	* / . 
	call 020ech		;1f6a	cd ec 20 	. .   
	ret nc			;1f6d	d0 	. 
	push bc			;1f6e	c5 	. 
	ld b,080h		;1f6f	06 80 	. . 
	ld hl,(0f01ch)		;1f71	2a 1c f0 	* . . 
	xor a			;1f74	af 	. 
	add a,(hl)			;1f75	86 	. 
	inc hl			;1f76	23 	# 
	djnz $-2		;1f77	10 fc 	. . 
	ld de,(0f020h)		;1f79	ed 5b 20 f0 	. [   . 
	ld hl,(0f04ch)		;1f7d	2a 4c f0 	* L . 
	add hl,de			;1f80	19 	. 
	pop bc			;1f81	c1 	. 
	inc c			;1f82	0c 	. 
	jr z,$+11		;1f83	28 09 	( . 
	cp (hl)			;1f85	be 	. 
	ret z			;1f86	c8 	. 
	call 020d6h		;1f87	cd d6 20 	. .   
	ret nc			;1f8a	d0 	. 
	jp 01c6ah		;1f8b	c3 6a 1c 	. j . 
	ld (hl),a			;1f8e	77 	w 
	ret			;1f8f	c9 	. 
	call 01f9dh		;1f90	cd 9d 1f 	. . . 
	ld c,a			;1f93	4f 	O 
	ld b,000h		;1f94	06 00 	. . 
	call 01fbah		;1f96	cd ba 1f 	. . . 
	ld (0f045h),hl		;1f99	22 45 f0 	" E . 
	ret			;1f9c	c9 	. 
	ld hl,0f026h		;1f9d	21 26 f0 	! & . 
	ld c,(hl)			;1fa0	4e 	N 
	ld a,(0f043h)		;1fa1	3a 43 f0 	: C . 
	or a			;1fa4	b7 	. 
	rra			;1fa5	1f 	. 
	dec c			;1fa6	0d 	. 
	jr nz,$-3		;1fa7	20 fb 	  . 
	ld b,a			;1fa9	47 	G 
	ld a,008h		;1faa	3e 08 	> . 
	sub (hl)			;1fac	96 	. 
	ld c,a			;1fad	4f 	O 
	ld a,(0f042h)		;1fae	3a 42 f0 	: B . 
	dec c			;1fb1	0d 	. 
	jr z,$+6		;1fb2	28 04 	( . 
	or a			;1fb4	b7 	. 
	rla			;1fb5	17 	. 
	jr $-5		;1fb6	18 f9 	. . 
	add a,b			;1fb8	80 	. 
	ret			;1fb9	c9 	. 
	ld hl,(0f050h)		;1fba	2a 50 f0 	* P . 
	ld de,00010h		;1fbd	11 10 00 	. . . 
	add hl,de			;1fc0	19 	. 
	add hl,bc			;1fc1	09 	. 
	ld a,(0f02ah)		;1fc2	3a 2a f0 	: * . 
	or a			;1fc5	b7 	. 
	jr nz,$+9		;1fc6	20 07 	  . 
	call 00011h		;1fc8	cd 11 00 	. . . 
	ld l,a			;1fcb	6f 	o 
	ld h,000h		;1fcc	26 00 	& . 
	ret			;1fce	c9 	. 
	add hl,bc			;1fcf	09 	. 
	call 00011h		;1fd0	cd 11 00 	. . . 
	ld e,a			;1fd3	5f 	_ 
	inc hl			;1fd4	23 	# 
	call 00011h		;1fd5	cd 11 00 	. . . 
	ld d,a			;1fd8	57 	W 
	ex de,hl			;1fd9	eb 	. 
	ret			;1fda	c9 	. 
	ld a,(0f026h)		;1fdb	3a 26 f0 	: & . 
	ld hl,(0f045h)		;1fde	2a 45 f0 	* E . 
	add hl,hl			;1fe1	29 	) 
	dec a			;1fe2	3d 	= 
	jr nz,$-2		;1fe3	20 fc 	  . 
	ld (0f047h),hl		;1fe5	22 47 f0 	" G . 
	ld a,(0f027h)		;1fe8	3a 27 f0 	: ' . 
	ld c,a			;1feb	4f 	O 
	ld a,(0f043h)		;1fec	3a 43 f0 	: C . 
	and c			;1fef	a1 	. 
	or l			;1ff0	b5 	. 
	ld l,a			;1ff1	6f 	o 
	ld (0f045h),hl		;1ff2	22 45 f0 	" E . 
	ret			;1ff5	c9 	. 
	call 020b9h		;1ff6	cd b9 20 	. .   
	call 00011h		;1ff9	cd 11 00 	. . . 
	ld (0f043h),a		;1ffc	32 43 f0 	2 C . 
	ex de,hl			;1fff	eb 	. 
	call 00011h		;2000	cd 11 00 	. . . 
	ld (0f041h),a		;2003	32 41 f0 	2 A . 
	call 020b1h		;2006	cd b1 20 	. .   
	call 00011h		;2009	cd 11 00 	. . . 
	ld c,a			;200c	4f 	O 
	ld a,(0f028h)		;200d	3a 28 f0 	: ( . 
	and c			;2010	a1 	. 
	ld (0f042h),a		;2011	32 42 f0 	2 B . 
	ret			;2014	c9 	. 
	inc c			;2015	0c 	. 
	dec c			;2016	0d 	. 
	ret z			;2017	c8 	. 
	srl h		;2018	cb 3c 	. < 
	rr l		;201a	cb 1d 	. . 
	jr $-6		;201c	18 f8 	. . 
	inc c			;201e	0c 	. 
	dec c			;201f	0d 	. 
	ret z			;2020	c8 	. 
	add hl,hl			;2021	29 	) 
	jr $-3		;2022	18 fb 	. . 
	push bc			;2024	c5 	. 
	ld a,(0f04fh)		;2025	3a 4f f0 	: O . 
	ld c,a			;2028	4f 	O 
	ld hl,00001h		;2029	21 01 00 	! . . 
	call 0201eh		;202c	cd 1e 20 	. .   
	pop bc			;202f	c1 	. 
	ld a,c			;2030	79 	y 
	or l			;2031	b5 	. 
	ld l,a			;2032	6f 	o 
	ld a,b			;2033	78 	x 
	or h			;2034	b4 	. 
	ld h,a			;2035	67 	g 
	ret			;2036	c9 	. 
	ld hl,(0f010h)		;2037	2a 10 f0 	* . . 
	ld a,(0f04fh)		;203a	3a 4f f0 	: O . 
	ld c,a			;203d	4f 	O 
	call 02015h		;203e	cd 15 20 	. .   
	bit 0,l		;2041	cb 45 	. E 
	ret			;2043	c9 	. 
	call 020a6h		;2044	cd a6 20 	. .   
	ld de,00009h		;2047	11 09 00 	. . . 
	add hl,de			;204a	19 	. 
	call 00011h		;204b	cd 11 00 	. . . 
	rla			;204e	17 	. 
	ret nc			;204f	d0 	. 
	ld hl,02059h		;2050	21 59 20 	! Y   
	call 0223dh		;2053	cd 3d 22 	. = " 
	jp 0f203h		;2056	c3 03 f2 	. . . 
	jr nz,$+128		;2059	20 7e 	  ~ 
	ld a,(07a20h)		;205b	3a 20 7a 	:   z 
	ld h,c			;205e	61 	a 
	ld (hl),b			;205f	70 	p 
	ld l,c			;2060	69 	i 
	ld (hl),e			;2061	73 	s 
	jr nz,$+114		;2062	20 70 	  p 
	ld l,h			;2064	6c 	l 
	ld l,c			;2065	69 	i 
	ld l,e			;2066	6b 	k 
	ld (hl),l			;2067	75 	u 
	jr nz,$+124		;2068	20 7a 	  z 
	ld h,c			;206a	61 	a 
	ld h,d			;206b	62 	b 
	ld (hl),d			;206c	72 	r 
	ld l,a			;206d	6f 	o 
	ld l,(hl)			;206e	6e 	n 
	ld l,c			;206f	69 	i 
	ld l,a			;2070	6f 	o 
	ld l,(hl)			;2071	6e 	n 
	ld a,c			;2072	79 	y 
	jr nz,$+47		;2073	20 2d 	  - 
	jr nz,$+84		;2075	20 52 	  R 
	cpl			;2077	2f 	/ 
	ld c,a			;2078	4f 	O 
	jr nz,$+34		;2079	20 20 	    
	jr z,$+34		;207b	28 20 	(   
	add hl,hl			;207d	29 	) 
	add a,b			;207e	80 	. 
	ld a,(hl)			;207f	7e 	~ 
	add a,b			;2080	80 	. 
	jr nz,$+128		;2081	20 7e 	  ~ 
	ld a,(07a20h)		;2083	3a 20 7a 	:   z 
	ld h,c			;2086	61 	a 
	ld (hl),b			;2087	70 	p 
	ld l,c			;2088	69 	i 
	ld (hl),e			;2089	73 	s 
	jr nz,$+124		;208a	20 7a 	  z 
	ld h,c			;208c	61 	a 
	ld h,d			;208d	62 	b 
	ld (hl),d			;208e	72 	r 
	ld l,a			;208f	6f 	o 
	ld l,(hl)			;2090	6e 	n 
	ld l,c			;2091	69 	i 
	ld l,a			;2092	6f 	o 
	ld l,(hl)			;2093	6e 	n 
	ld a,c			;2094	79 	y 
	jr nz,$+34		;2095	20 20 	    
	jr z,$+34		;2097	28 20 	(   
	add hl,hl			;2099	29 	) 
	add a,b			;209a	80 	. 
	ld a,(hl)			;209b	7e 	~ 
	add a,b			;209c	80 	. 
	call 02037h		;209d	cd 37 20 	. 7   
	ret z			;20a0	c8 	. 
	ld hl,02081h		;20a1	21 81 20 	! .   
	jr $-81		;20a4	18 ad 	. . 
	ld hl,(0f01ch)		;20a6	2a 1c f0 	* . . 
	ld a,(0f049h)		;20a9	3a 49 f0 	: I . 
	add a,l			;20ac	85 	. 
	ld l,a			;20ad	6f 	o 
	ret nc			;20ae	d0 	. 
	inc h			;20af	24 	$ 
	ret			;20b0	c9 	. 
	ld hl,(0f050h)		;20b1	2a 50 f0 	* P . 
	ld de,0000ch		;20b4	11 0c 00 	. . . 
	add hl,de			;20b7	19 	. 
	ret			;20b8	c9 	. 
	ld hl,(0f050h)		;20b9	2a 50 f0 	* P . 
	ld de,0000fh		;20bc	11 0f 00 	. . . 
	add hl,de			;20bf	19 	. 
	ex de,hl			;20c0	eb 	. 
	ld hl,00011h		;20c1	21 11 00 	! . . 
	add hl,de			;20c4	19 	. 
	ret			;20c5	c9 	. 
	ld hl,(0f050h)		;20c6	2a 50 f0 	* P . 
	ld de,0000eh		;20c9	11 0e 00 	. . . 
	add hl,de			;20cc	19 	. 
	jp 00011h		;20cd	c3 11 00 	. . . 
	call 020c6h		;20d0	cd c6 20 	. .   
	ld (hl),000h		;20d3	36 00 	6 . 
	ret			;20d5	c9 	. 
	ld de,(0f04ah)		;20d6	ed 5b 4a f0 	. [ J . 
	ld hl,(0f016h)		;20da	2a 16 f0 	* . . 
	ld a,e			;20dd	7b 	{ 
	sub (hl)			;20de	96 	. 
	inc hl			;20df	23 	# 
	ld a,d			;20e0	7a 	z 
	sbc a,(hl)			;20e1	9e 	. 
	ret			;20e2	c9 	. 
	call 020d6h		;20e3	cd d6 20 	. .   
	ret c			;20e6	d8 	. 
	inc de			;20e7	13 	. 
	ld (hl),d			;20e8	72 	r 
	dec hl			;20e9	2b 	+ 
	ld (hl),e			;20ea	73 	s 
	ret			;20eb	c9 	. 
	ld a,e			;20ec	7b 	{ 
	sub l			;20ed	95 	. 
	ld l,a			;20ee	6f 	o 
	ld a,d			;20ef	7a 	z 
	sbc a,h			;20f0	9c 	. 
	ld h,a			;20f1	67 	g 
	ret			;20f2	c9 	. 
	ld de,(0f02bh)		;20f3	ed 5b 2b f0 	. [ + . 
	ld hl,(0f04ah)		;20f7	2a 4a f0 	* J . 
	inc hl			;20fa	23 	# 
	ld (0f04ah),hl		;20fb	22 4a f0 	" J . 
	call 020ech		;20fe	cd ec 20 	. .   
	jr nc,$+9		;2101	30 07 	0 . 
	ld hl,0ffffh		;2103	21 ff ff 	! . . 
	ld (0f04ah),hl		;2106	22 4a f0 	" J . 
	ret			;2109	c9 	. 
	ld a,(0f04ah)		;210a	3a 4a f0 	: J . 
	and 003h		;210d	e6 03 	. . 
	ld b,005h		;210f	06 05 	. . 
	add a,a			;2111	87 	. 
	djnz $-1		;2112	10 fd 	. . 
	ld (0f049h),a		;2114	32 49 f0 	2 I . 
	or a			;2117	b7 	. 
	ret nz			;2118	c0 	. 
	push bc			;2119	c5 	. 
	call 02133h		;211a	cd 33 21 	. 3 ! 
	call 01c5eh		;211d	cd 5e 1c 	. ^ . 
	call 0221fh		;2120	cd 1f 22 	. . " 
	call 01c58h		;2123	cd 58 1c 	. X . 
	pop bc			;2126	c1 	. 
	jp 01f63h		;2127	c3 63 1f 	. c . 
	ld hl,0f04ah		;212a	21 4a f0 	! J . 
	ld a,(hl)			;212d	7e 	~ 
	inc hl			;212e	23 	# 
	cp (hl)			;212f	be 	. 
	ret nz			;2130	c0 	. 
	inc a			;2131	3c 	< 
	ret			;2132	c9 	. 
	ld hl,(0f04ah)		;2133	2a 4a f0 	* J . 
	ld c,002h		;2136	0e 02 	. . 
	call 02015h		;2138	cd 15 20 	. .   
	ld (0f045h),hl		;213b	22 45 f0 	" E . 
	ld (0f04ch),hl		;213e	22 4c f0 	" L . 
	ld bc,(0f045h)		;2141	ed 4b 45 f0 	. K E . 
	ld hl,(0f01ah)		;2145	2a 1a f0 	* . . 
	ld e,(hl)			;2148	5e 	^ 
	inc hl			;2149	23 	# 
	ld d,(hl)			;214a	56 	V 
	ld hl,(0f018h)		;214b	2a 18 f0 	* . . 
	ld a,(hl)			;214e	7e 	~ 
	inc hl			;214f	23 	# 
	ld h,(hl)			;2150	66 	f 
	ld l,a			;2151	6f 	o 
	ld a,c			;2152	79 	y 
	sub e			;2153	93 	. 
	ld a,b			;2154	78 	x 
	sbc a,d			;2155	9a 	. 
	jr nc,$+16		;2156	30 0e 	0 . 
	push hl			;2158	e5 	. 
	ld hl,(0f024h)		;2159	2a 24 f0 	* $ . 
	ld a,e			;215c	7b 	{ 
	sub l			;215d	95 	. 
	ld e,a			;215e	5f 	_ 
	ld a,d			;215f	7a 	z 
	sbc a,h			;2160	9c 	. 
	ld d,a			;2161	57 	W 
	pop hl			;2162	e1 	. 
	dec hl			;2163	2b 	+ 
	jr $-18		;2164	18 ec 	. . 
	push hl			;2166	e5 	. 
	ld hl,(0f024h)		;2167	2a 24 f0 	* $ . 
	add hl,de			;216a	19 	. 
	jr c,$+13		;216b	38 0b 	8 . 
	ld a,c			;216d	79 	y 
	sub l			;216e	95 	. 
	ld a,b			;216f	78 	x 
	sbc a,h			;2170	9c 	. 
	jr c,$+7		;2171	38 05 	8 . 
	ex de,hl			;2173	eb 	. 
	pop hl			;2174	e1 	. 
	inc hl			;2175	23 	# 
	jr $-16		;2176	18 ee 	. . 
	pop hl			;2178	e1 	. 
	push bc			;2179	c5 	. 
	push de			;217a	d5 	. 
	push hl			;217b	e5 	. 
	ex de,hl			;217c	eb 	. 
	ld hl,(0f031h)		;217d	2a 31 f0 	* 1 . 
	add hl,de			;2180	19 	. 
	ld b,h			;2181	44 	D 
	ld c,l			;2182	4d 	M 
	call 0f21eh		;2183	cd 1e f2 	. . . 
	pop de			;2186	d1 	. 
	ld hl,(0f018h)		;2187	2a 18 f0 	* . . 
	ld (hl),e			;218a	73 	s 
	inc hl			;218b	23 	# 
	ld (hl),d			;218c	72 	r 
	pop de			;218d	d1 	. 
	ld hl,(0f01ah)		;218e	2a 1a f0 	* . . 
	ld (hl),e			;2191	73 	s 
	inc hl			;2192	23 	# 
	ld (hl),d			;2193	72 	r 
	pop hl			;2194	e1 	. 
	or a			;2195	b7 	. 
	sbc hl,de		;2196	ed 52 	. R 
	ld c,l			;2198	4d 	M 
	ld b,h			;2199	44 	D 
	ld de,(0f033h)		;219a	ed 5b 33 f0 	. [ 3 . 
	call 0f230h		;219e	cd 30 f2 	. 0 . 
	ld c,l			;21a1	4d 	M 
	ld b,h			;21a2	44 	D 
	jp 0f221h		;21a3	c3 21 f2 	. ! . 
	ld a,c			;21a6	79 	y 
	and 007h		;21a7	e6 07 	. . 
	inc a			;21a9	3c 	< 
	ld e,a			;21aa	5f 	_ 
	ld d,a			;21ab	57 	W 
	ld a,c			;21ac	79 	y 
	rrca			;21ad	0f 	. 
	rrca			;21ae	0f 	. 
	rrca			;21af	0f 	. 
	and 01fh		;21b0	e6 1f 	. . 
	ld c,a			;21b2	4f 	O 
	ld a,b			;21b3	78 	x 
	add a,a			;21b4	87 	. 
	add a,a			;21b5	87 	. 
	add a,a			;21b6	87 	. 
	add a,a			;21b7	87 	. 
	add a,a			;21b8	87 	. 
	or c			;21b9	b1 	. 
	ld c,a			;21ba	4f 	O 
	ld a,b			;21bb	78 	x 
	rrca			;21bc	0f 	. 
	rrca			;21bd	0f 	. 
	rrca			;21be	0f 	. 
	and 01fh		;21bf	e6 1f 	. . 
	ld b,a			;21c1	47 	G 
	ld hl,(0f022h)		;21c2	2a 22 f0 	* " . 
	add hl,bc			;21c5	09 	. 
	ld a,(hl)			;21c6	7e 	~ 
	rlca			;21c7	07 	. 
	dec e			;21c8	1d 	. 
	jr nz,$-2		;21c9	20 fc 	  . 
	ret			;21cb	c9 	. 
	call 020a6h		;21cc	cd a6 20 	. .   
	ld de,00010h		;21cf	11 10 00 	. . . 
	add hl,de			;21d2	19 	. 
	push bc			;21d3	c5 	. 
	ld c,011h		;21d4	0e 11 	. . 
	pop de			;21d6	d1 	. 
	dec c			;21d7	0d 	. 
	ret z			;21d8	c8 	. 
	push de			;21d9	d5 	. 
	ld a,(0f02ah)		;21da	3a 2a f0 	: * . 
	or a			;21dd	b7 	. 
	jr nz,$+9		;21de	20 07 	  . 
	push bc			;21e0	c5 	. 
	push hl			;21e1	e5 	. 
	ld c,(hl)			;21e2	4e 	N 
	ld b,000h		;21e3	06 00 	. . 
	jr $+8		;21e5	18 06 	. . 
	dec c			;21e7	0d 	. 
	push bc			;21e8	c5 	. 
	ld c,(hl)			;21e9	4e 	N 
	inc hl			;21ea	23 	# 
	ld b,(hl)			;21eb	46 	F 
	push hl			;21ec	e5 	. 
	ld a,c			;21ed	79 	y 
	or b			;21ee	b0 	. 
	jr z,$+12		;21ef	28 0a 	( . 
	ld hl,(0f029h)		;21f1	2a 29 f0 	* ) . 
	ld a,l			;21f4	7d 	} 
	sub c			;21f5	91 	. 
	ld a,h			;21f6	7c 	| 
	sbc a,b			;21f7	98 	. 
	call nc,02200h		;21f8	d4 00 22 	. . " 
	pop hl			;21fb	e1 	. 
	inc hl			;21fc	23 	# 
	pop bc			;21fd	c1 	. 
	jr $-40		;21fe	18 d6 	. . 
	push de			;2200	d5 	. 
	call 021a6h		;2201	cd a6 21 	. . ! 
	and 0feh		;2204	e6 fe 	. . 
	pop bc			;2206	c1 	. 
	or c			;2207	b1 	. 
	rrca			;2208	0f 	. 
	dec d			;2209	15 	. 
	jr nz,$-2		;220a	20 fc 	  . 
	ld (hl),a			;220c	77 	w 
	ret			;220d	c9 	. 
	call 0f218h		;220e	cd 18 f2 	. . . 
	xor a			;2211	af 	. 
	ld hl,(0f018h)		;2212	2a 18 f0 	* . . 
	ld (hl),a			;2215	77 	w 
	inc hl			;2216	23 	# 
	ld (hl),a			;2217	77 	w 
	ld hl,(0f01ah)		;2218	2a 1a f0 	* . . 
	ld (hl),a			;221b	77 	w 
	inc hl			;221c	23 	# 
	ld (hl),a			;221d	77 	w 
	ret			;221e	c9 	. 
	call 0f227h		;221f	cd 27 f2 	. ' . 
	jr $+5		;2222	18 03 	. . 
	call 0f22ah		;2224	cd 2a f2 	. * . 
	or a			;2227	b7 	. 
	ret z			;2228	c8 	. 
	ld hl,02234h		;2229	21 34 22 	! 4 " 
	call 0223dh		;222c	cd 3d 22 	. = " 
	or a			;222f	b7 	. 
	jp z,0f203h		;2230	ca 03 f2 	. . . 
	ret			;2233	c9 	. 
	ld a,(hl)			;2234	7e 	~ 
	ld a,(05262h)		;2235	3a 62 52 	: b R 
	ld c,c			;2238	49 	I 
	add a,b			;2239	80 	. 
	ld d,d			;223a	52 	R 
	ld c,c			;223b	49 	I 
	add a,b			;223c	80 	. 
	ld a,(0f04fh)		;223d	3a 4f f0 	: O . 
	add a,041h		;2240	c6 41 	. A 
	ld c,a			;2242	4f 	O 
	jp 00008h		;2243	c3 08 00 	. . . 
	nop			;2246	00 	. 
	nop			;2247	00 	. 
	nop			;2248	00 	. 
	nop			;2249	00 	. 
	nop			;224a	00 	. 
	nop			;224b	00 	. 
	nop			;224c	00 	. 
	nop			;224d	00 	. 
	nop			;224e	00 	. 
	nop			;224f	00 	. 
	ld sp,0f13ah		;2250	31 3a f1 	1 : . 
	ld ix,0f0b8h		;2253	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;2257	dd 36 b8 10 	. 6 . . 
	push bc			;225b	c5 	. 
	ld a,c			;225c	79 	y 
	rra			;225d	1f 	. 
	rra			;225e	1f 	. 
	rra			;225f	1f 	. 
	rra			;2260	1f 	. 
	and 00fh		;2261	e6 0f 	. . 
	ld e,a			;2263	5f 	_ 
	call 03b3fh		;2264	cd 3f 3b 	. ? ; 
	call 03ad2h		;2267	cd d2 3a 	. . : 
	ld (0f06bh),a		;226a	32 6b f0 	2 k . 
	pop bc			;226d	c1 	. 
	ld a,c			;226e	79 	y 
	and 00fh		;226f	e6 0f 	. . 
	ld (0f06eh),a		;2271	32 6e f0 	2 n . 
	xor a			;2274	af 	. 
	ld (0f06ch),a		;2275	32 6c f0 	2 l . 
	ld hl,0f13ah		;2278	21 3a f1 	! : . 
	bit 0,(hl)		;227b	cb 46 	. F 
	jr z,$+22		;227d	28 14 	( . 
	push hl			;227f	e5 	. 
	call 02345h		;2280	cd 45 23 	. E # 
	pop hl			;2283	e1 	. 
	bit 1,(hl)		;2284	cb 4e 	. N 
	jr z,$+13		;2286	28 0b 	( . 
	push hl			;2288	e5 	. 
	ld a,001h		;2289	3e 01 	> . 
	call 03acch		;228b	cd cc 3a 	. . : 
	ld a,h			;228e	7c 	| 
	ld (0f06ch),a		;228f	32 6c f0 	2 l . 
	pop hl			;2292	e1 	. 
	res 0,(hl)		;2293	cb 86 	. . 
	res 1,(hl)		;2295	cb 8e 	. . 
	ld a,(0f06eh)		;2297	3a 6e f0 	: n . 
	call 03acch		;229a	cd cc 3a 	. . : 
	ld sp,0f13ah		;229d	31 3a f1 	1 : . 
	xor a			;22a0	af 	. 
	ld (0f06ah),a		;22a1	32 6a f0 	2 j . 
	call 03e69h		;22a4	cd 69 3e 	. i > 
	call 03ad7h		;22a7	cd d7 3a 	. . : 
	add a,041h		;22aa	c6 41 	. A 
	call 03e3ah		;22ac	cd 3a 3e 	. : > 
	call 03b3dh		;22af	cd 3d 3b 	. = ; 
	and 01fh		;22b2	e6 1f 	. . 
	ld l,a			;22b4	6f 	o 
	ld h,000h		;22b5	26 00 	& . 
	call nz,03f5ch		;22b7	c4 5c 3f 	. \ ? 
	ld a,03eh		;22ba	3e 3e 	> > 
	call 03e3ah		;22bc	cd 3a 3e 	. : > 
	call 026ech		;22bf	cd ec 26 	. . & 
	call 03adch		;22c2	cd dc 3a 	. . : 
	call 03ad7h		;22c5	cd d7 3a 	. . : 
	ld (0f06eh),a		;22c8	32 6e f0 	2 n . 
	call 03348h		;22cb	cd 48 33 	. H 3 
	jp nz,02321h		;22ce	c2 21 23 	. ! # 
	ld a,(0f076h)		;22d1	3a 76 f0 	: v . 
	or a			;22d4	b7 	. 
	jp nz,022efh		;22d5	c2 ef 22 	. . " 
	call 0244dh		;22d8	cd 4d 24 	. M $ 
	ld hl,024d7h		;22db	21 d7 24 	! . $ 
	ld e,a			;22de	5f 	_ 
	ld d,000h		;22df	16 00 	. . 
	add hl,de			;22e1	19 	. 
	add hl,de			;22e2	19 	. 
	ld a,(hl)			;22e3	7e 	~ 
	inc hl			;22e4	23 	# 
	ld h,(hl)			;22e5	66 	f 
	ld l,a			;22e6	6f 	o 
	jp (hl)			;22e7	e9 	. 
	set 0,(ix-04eh)		;22e8	dd cb b2 c6 	. . . . 
	call 03348h		;22ec	cd 48 33 	. H 3 
	ld a,(0f077h)		;22ef	3a 77 f0 	: w . 
	cp 020h		;22f2	fe 20 	.   
	jr nz,$+116		;22f4	20 72 	  r 
	ld a,(0f076h)		;22f6	3a 76 f0 	: v . 
	or a			;22f9	b7 	. 
	jr z,$+12		;22fa	28 0a 	( . 
	dec a			;22fc	3d 	= 
	ld (0f06eh),a		;22fd	32 6e f0 	2 n . 
	call 02446h		;2300	cd 46 24 	. F $ 
	call 03acch		;2303	cd cc 3a 	. . : 
	bit 0,(ix-04eh)		;2306	dd cb b2 46 	. . . F 
	jp nz,0f278h		;230a	c2 78 f2 	. x . 
	call 03348h		;230d	cd 48 33 	. H 3 
	ld hl,0f077h		;2310	21 77 f0 	! w . 
	ld a,(hl)			;2313	7e 	~ 
	sub 020h		;2314	d6 20 	.   
	dec hl			;2316	2b 	+ 
	or (hl)			;2317	b6 	. 
	jp nz,02321h		;2318	c2 21 23 	. ! # 
	jp 0229dh		;231b	c3 9d 22 	. . " 
	call 03b38h		;231e	cd 38 3b 	. 8 ; 
	call 03e69h		;2321	cd 69 3e 	. i > 
	ld hl,(0f072h)		;2324	2a 72 f0 	* r . 
	call 00011h		;2327	cd 11 00 	. . . 
	cp 020h		;232a	fe 20 	.   
	jr z,$+11		;232c	28 09 	( . 
	or a			;232e	b7 	. 
	jr z,$+8		;232f	28 06 	( . 
	call 03e3ah		;2331	cd 3a 3e 	. : > 
	inc hl			;2334	23 	# 
	jr $-14		;2335	18 f0 	. . 
	ld a,03fh		;2337	3e 3f 	> ? 
	call 03e3ah		;2339	cd 3a 3e 	. : > 
	call 03e69h		;233c	cd 69 3e 	. i > 
	call 02345h		;233f	cd 45 23 	. E # 
	jp 0229dh		;2342	c3 9d 22 	. . " 
	ld hl,0f06bh		;2345	21 6b f0 	! k . 
	ld a,(hl)			;2348	7e 	~ 
	or a			;2349	b7 	. 
	ret z			;234a	c8 	. 
	xor a			;234b	af 	. 
	ld (hl),a			;234c	77 	w 
	ld hl,0f203h		;234d	21 03 f2 	! . . 
	ld (00001h),hl		;2350	22 01 00 	" . . 
	ld hl,0f006h		;2353	21 06 f0 	! . . 
	ld (00006h),hl		;2356	22 06 00 	" . . 
	call 03acch		;2359	cd cc 3a 	. . : 
	call 02754h		;235c	cd 54 27 	. T ' 
	call 03b0eh		;235f	cd 0e 3b 	. . ; 
	ld a,(0f06eh)		;2362	3a 6e f0 	: n . 
	jp 03acch		;2365	c3 cc 3a 	. . : 
	ld de,0f07fh		;2368	11 7f f0 	.  . 
	ld a,(de)			;236b	1a 	. 
	cp 020h		;236c	fe 20 	.   
	jp nz,02321h		;236e	c2 21 23 	. ! # 
	ld hl,023d8h		;2371	21 d8 23 	! . # 
	ld bc,00003h		;2374	01 03 00 	. . . 
	ldir		;2377	ed b0 	. . 
	call 03b3dh		;2379	cd 3d 3b 	. = ; 
	ld (0f071h),a		;237c	32 71 f0 	2 q . 
	call 03aedh		;237f	cd ed 3a 	. . : 
	jr nz,$+12		;2382	20 0a 	  . 
	ld e,000h		;2384	1e 00 	. . 
	call 03b3fh		;2386	cd 3f 3b 	. ? ; 
	call 03aedh		;2389	cd ed 3a 	. . : 
	jr z,$-110		;238c	28 90 	( . 
	call 03a55h		;238e	cd 55 3a 	. U : 
	jp c,023dbh		;2391	da db 23 	. . # 
	bit 0,(ix-04eh)		;2394	dd cb b2 46 	. . . F 
	jr z,$+24		;2398	28 16 	( . 
	call 03ea9h		;239a	cd a9 3e 	. . > 
	ld a,(bc)			;239d	0a 	. 
	ld d,b			;239e	50 	P 
	ld (hl),d			;239f	72 	r 
	ld l,a			;23a0	6f 	o 
	ld h,a			;23a1	67 	g 
	ld (hl),d			;23a2	72 	r 
	ld h,c			;23a3	61 	a 
	ld l,l			;23a4	6d 	m 
	jr nz,$+50		;23a5	20 30 	  0 
	ld sp,03030h		;23a7	31 30 30 	1 0 0 
	dec l			;23aa	2d 	- 
	inc h			;23ab	24 	$ 
	dec hl			;23ac	2b 	+ 
	call 03c17h		;23ad	cd 17 3c 	. . < 
	call 023f6h		;23b0	cd f6 23 	. . # 
	call 0242eh		;23b3	cd 2e 24 	. . $ 
	bit 0,(ix-04eh)		;23b6	dd cb b2 46 	. . . F 
	jp nz,0f278h		;23ba	c2 78 f2 	. x . 
	jp 0f060h		;23bd	c3 60 f0 	. ` . 
	ld sp,0f13ah		;23c0	31 3a f1 	1 : . 
	xor a			;23c3	af 	. 
	call 00017h		;23c4	cd 17 00 	. . . 
	ld ix,0f0b8h		;23c7	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;23cb	dd 36 b8 10 	. 6 . . 
	call 02446h		;23cf	cd 46 24 	. F $ 
	call 03acch		;23d2	cd cc 3a 	. . : 
	jp 0229dh		;23d5	c3 9d 22 	. . " 
	ld b,e			;23d8	43 	C 
	ld c,a			;23d9	4f 	O 
	ld c,l			;23da	4d 	M 
	call 023e4h		;23db	cd e4 23 	. . # 
	call 03b38h		;23de	cd 38 3b 	. 8 ; 
	jp 0230dh		;23e1	c3 0d 23 	. . # 
	call 03ea9h		;23e4	cd a9 3e 	. . > 
	ld a,(bc)			;23e7	0a 	. 
	ld b,d			;23e8	42 	B 
	ld (hl),d			;23e9	72 	r 
	ld h,c			;23ea	61 	a 
	ld l,e			;23eb	6b 	k 
	jr nz,$+111		;23ec	20 6d 	  m 
	ld l,c			;23ee	69 	i 
	ld h,l			;23ef	65 	e 
	ld l,d			;23f0	6a 	j 
	ld (hl),e			;23f1	73 	s 
	ld h,e			;23f2	63 	c 
	ld h,c			;23f3	61 	a 
	inc h			;23f4	24 	$ 
	ret			;23f5	c9 	. 
	ld hl,(0f074h)		;23f6	2a 74 f0 	* t . 
	push hl			;23f9	e5 	. 
	ld hl,0005ch		;23fa	21 5c 00 	! \ . 
	call 03352h		;23fd	cd 52 33 	. R 3 
	ld hl,0006ch		;2400	21 6c 00 	! l . 
	call 03352h		;2403	cd 52 33 	. R 3 
	xor a			;2406	af 	. 
	ld (0007ch),a		;2407	32 7c 00 	2 | . 
	pop hl			;240a	e1 	. 
	call 00011h		;240b	cd 11 00 	. . . 
	or a			;240e	b7 	. 
	jr z,$+9		;240f	28 07 	( . 
	cp 020h		;2411	fe 20 	.   
	jr z,$+5		;2413	28 03 	( . 
	inc hl			;2415	23 	# 
	jr $-11		;2416	18 f3 	. . 
	ld b,000h		;2418	06 00 	. . 
	ld de,00081h		;241a	11 81 00 	. . . 
	call 00011h		;241d	cd 11 00 	. . . 
	ld (de),a			;2420	12 	. 
	or a			;2421	b7 	. 
	jr z,$+7		;2422	28 05 	( . 
	inc b			;2424	04 	. 
	inc hl			;2425	23 	# 
	inc de			;2426	13 	. 
	jr $-10		;2427	18 f4 	. . 
	ld a,b			;2429	78 	x 
	ld (00080h),a		;242a	32 80 00 	2 . . 
	ret			;242d	c9 	. 
	call 03e69h		;242e	cd 69 3e 	. i > 
	call 03adch		;2431	cd dc 3a 	. . : 
	call 03b38h		;2434	cd 38 3b 	. 8 ; 
	call 03b3dh		;2437	cd 3d 3b 	. = ; 
	add a,a			;243a	87 	. 
	add a,a			;243b	87 	. 
	add a,a			;243c	87 	. 
	add a,a			;243d	87 	. 
	ld hl,0f06eh		;243e	21 6e f0 	! n . 
	or (hl)			;2441	b6 	. 
	ld (00004h),a		;2442	32 04 00 	2 . . 
	ret			;2445	c9 	. 
	ld a,(0f06eh)		;2446	3a 6e f0 	: n . 
	ld (00004h),a		;2449	32 04 00 	2 . . 
	ret			;244c	c9 	. 
	ld a,(0fb7ch)		;244d	3a 7c fb 	: | . 
	and 081h		;2450	e6 81 	. . 
	cp 081h		;2452	fe 81 	. . 
	jr nz,$+29		;2454	20 1b 	  . 
	ld a,(0f078h)		;2456	3a 78 f0 	: x . 
	cp 020h		;2459	fe 20 	.   
	jr nz,$+22		;245b	20 14 	  . 
	ld a,(0f077h)		;245d	3a 77 f0 	: w . 
	cp 020h		;2460	fe 20 	.   
	jr z,$+15		;2462	28 0d 	( . 
	ld hl,0f980h		;2464	21 80 f9 	! . . 
	ld b,004h		;2467	06 04 	. . 
	cp (hl)			;2469	be 	. 
	jr z,$+42		;246a	28 28 	( ( 
	inc hl			;246c	23 	# 
	inc hl			;246d	23 	# 
	inc hl			;246e	23 	# 
	djnz $-6		;246f	10 f8 	. . 
	ld hl,024afh		;2471	21 af 24 	! . $ 
	ld c,000h		;2474	0e 00 	. . 
	ld a,c			;2476	79 	y 
	cp 008h		;2477	fe 08 	. . 
	ret nc			;2479	d0 	. 
	ld de,0f077h		;247a	11 77 f0 	. w . 
	ld b,005h		;247d	06 05 	. . 
	ld a,(de)			;247f	1a 	. 
	cp (hl)			;2480	be 	. 
	jr nz,$+13		;2481	20 0b 	  . 
	inc de			;2483	13 	. 
	inc hl			;2484	23 	# 
	djnz $-6		;2485	10 f8 	. . 
	ld a,(de)			;2487	1a 	. 
	cp 020h		;2488	fe 20 	.   
	jr nz,$+7		;248a	20 05 	  . 
	ld a,c			;248c	79 	y 
	ret			;248d	c9 	. 
	inc hl			;248e	23 	# 
	djnz $-1		;248f	10 fd 	. . 
	inc c			;2491	0c 	. 
	jr $-28		;2492	18 e2 	. . 
	inc hl			;2494	23 	# 
	ld e,(hl)			;2495	5e 	^ 
	inc hl			;2496	23 	# 
	ld d,(hl)			;2497	56 	V 
	push de			;2498	d5 	. 
	call 023f6h		;2499	cd f6 23 	. . # 
	call 0242eh		;249c	cd 2e 24 	. . $ 
	ld a,001h		;249f	3e 01 	> . 
	call 00017h		;24a1	cd 17 00 	. . . 
	jp c,0f203h		;24a4	da 03 f2 	. . . 
	pop hl			;24a7	e1 	. 
	pop af			;24a8	f1 	. 
	call 0f997h		;24a9	cd 97 f9 	. . . 
	jp 023c0h		;24ac	c3 c0 23 	. . # 
	ld b,h			;24af	44 	D 
	ld c,c			;24b0	49 	I 
	ld d,d			;24b1	52 	R 
	jr nz,$+34		;24b2	20 20 	    
	ld b,l			;24b4	45 	E 
	ld d,d			;24b5	52 	R 
	ld b,c			;24b6	41 	A 
	jr nz,$+34		;24b7	20 20 	    
	ld d,h			;24b9	54 	T 
	ld e,c			;24ba	59 	Y 
	ld d,b			;24bb	50 	P 
	ld b,l			;24bc	45 	E 
	jr nz,$+85		;24bd	20 53 	  S 
	ld b,c			;24bf	41 	A 
	ld d,(hl)			;24c0	56 	V 
	ld b,l			;24c1	45 	E 
	jr nz,$+84		;24c2	20 52 	  R 
	ld b,l			;24c4	45 	E 
	ld c,(hl)			;24c5	4e 	N 
	jr nz,$+34		;24c6	20 20 	    
	ld d,l			;24c8	55 	U 
	ld d,e			;24c9	53 	S 
	ld b,l			;24ca	45 	E 
	ld d,d			;24cb	52 	R 
	jr nz,$+70		;24cc	20 44 	  D 
	ld b,l			;24ce	45 	E 
	ld b,d			;24cf	42 	B 
	ld d,l			;24d0	55 	U 
	ld b,a			;24d1	47 	G 
	ld b,h			;24d2	44 	D 
	jr nz,$+34		;24d3	20 20 	    
	jr nz,$+34		;24d5	20 20 	    
	jp (hl)			;24d7	e9 	. 
	inc h			;24d8	24 	$ 
	sub a			;24d9	97 	. 
	dec h			;24da	25 	% 
	push hl			;24db	e5 	. 
	dec h			;24dc	25 	% 
	ld hl,06726h		;24dd	21 26 67 	! & g 
	ld h,0d4h		;24e0	26 d4 	& . 
	ld h,0e8h		;24e2	26 e8 	& . 
	ld (02806h),hl		;24e4	22 06 28 	" . ( 
	rst 28h			;24e7	ef 	. 
	ld (048cdh),hl		;24e8	22 cd 48 	" . H 
	inc sp			;24eb	33 	3 
	ld hl,0f077h		;24ec	21 77 f0 	! w . 
	ld a,(hl)			;24ef	7e 	~ 
	cp 020h		;24f0	fe 20 	.   
	call z,031f9h		;24f2	cc f9 31 	. . 1 
	ld e,000h		;24f5	1e 00 	. . 
	push de			;24f7	d5 	. 
	call 03b06h		;24f8	cd 06 3b 	. . ; 
	jp z,02580h		;24fb	ca 80 25 	. . % 
	jp z,02583h		;24fe	ca 83 25 	. . % 
	ld a,(0f06dh)		;2501	3a 6d f0 	: m . 
	rrca			;2504	0f 	. 
	rrca			;2505	0f 	. 
	rrca			;2506	0f 	. 
	and 060h		;2507	e6 60 	. ` 
	ld c,a			;2509	4f 	O 
	ld a,00ah		;250a	3e 0a 	> . 
	call 027fch		;250c	cd fc 27 	. . ' 
	rla			;250f	17 	. 
	jr c,$+99		;2510	38 61 	8 a 
	pop de			;2512	d1 	. 
	ld a,e			;2513	7b 	{ 
	inc e			;2514	1c 	. 
	push de			;2515	d5 	. 
	and 003h		;2516	e6 03 	. . 
	push af			;2518	f5 	. 
	jr nz,$+29		;2519	20 1b 	  . 
	call 03e69h		;251b	cd 69 3e 	. i > 
	ld a,(0f076h)		;251e	3a 76 f0 	: v . 
	dec a			;2521	3d 	= 
	jp p,0252ah		;2522	f2 2a 25 	. * % 
	push bc			;2525	c5 	. 
	call 03ad7h		;2526	cd d7 3a 	. . : 
	pop bc			;2529	c1 	. 
	add a,041h		;252a	c6 41 	. A 
	call 03e3ah		;252c	cd 3a 3e 	. : > 
	ld a,03ah		;252f	3e 3a 	> : 
	call 03e3ah		;2531	cd 3a 3e 	. : > 
	jr $+10		;2534	18 08 	. . 
	call 03e38h		;2536	cd 38 3e 	. 8 > 
	ld a,03ah		;2539	3e 3a 	> : 
	call 03e3ah		;253b	cd 3a 3e 	. : > 
	call 03e38h		;253e	cd 38 3e 	. 8 > 
	ld b,001h		;2541	06 01 	. . 
	ld a,b			;2543	78 	x 
	call 027fch		;2544	cd fc 27 	. . ' 
	and 07fh		;2547	e6 7f 	.  
	cp 020h		;2549	fe 20 	.   
	jr nz,$+21		;254b	20 13 	  . 
	pop af			;254d	f1 	. 
	push af			;254e	f5 	. 
	cp 003h		;254f	fe 03 	. . 
	jr nz,$+13		;2551	20 0b 	  . 
	ld a,009h		;2553	3e 09 	> . 
	call 027fch		;2555	cd fc 27 	. . ' 
	and 07fh		;2558	e6 7f 	.  
	cp 020h		;255a	fe 20 	.   
	jr z,$+22		;255c	28 14 	( . 
	ld a,020h		;255e	3e 20 	>   
	call 03e3ah		;2560	cd 3a 3e 	. : > 
	inc b			;2563	04 	. 
	ld a,b			;2564	78 	x 
	cp 00ch		;2565	fe 0c 	. . 
	jr nc,$+11		;2567	30 09 	0 . 
	cp 009h		;2569	fe 09 	. . 
	jr nz,$-40		;256b	20 d6 	  . 
	call 03e38h		;256d	cd 38 3e 	. 8 > 
	jr $-45		;2570	18 d1 	. . 
	pop af			;2572	f1 	. 
	call 03dc7h		;2573	cd c7 3d 	. . = 
	jr nz,$+13		;2576	20 0b 	  . 
	ld c,012h		;2578	0e 12 	. . 
	call 03af6h		;257a	cd f6 3a 	. . : 
	jp 024feh		;257d	c3 fe 24 	. . $ 
	call 02587h		;2580	cd 87 25 	. . % 
	pop de			;2583	d1 	. 
	jp 0230dh		;2584	c3 0d 23 	. . # 
	call 03ea9h		;2587	cd a9 3e 	. . > 
	ld a,(bc)			;258a	0a 	. 
	ld b,d			;258b	42 	B 
	ld (hl),d			;258c	72 	r 
	ld h,c			;258d	61 	a 
	ld l,e			;258e	6b 	k 
	jr nz,$+114		;258f	20 70 	  p 
	ld l,h			;2591	6c 	l 
	ld l,c			;2592	69 	i 
	ld l,e			;2593	6b 	k 
	ld (hl),l			;2594	75 	u 
	inc h			;2595	24 	$ 
	ret			;2596	c9 	. 
	call 03348h		;2597	cd 48 33 	. H 3 
	cp 00bh		;259a	fe 0b 	. . 
	jr nz,$+63		;259c	20 3d 	  = 
	call 03ea9h		;259e	cd a9 3e 	. . > 
	ld a,(bc)			;25a1	0a 	. 
	ld d,a			;25a2	57 	W 
	ld (hl),e			;25a3	73 	s 
	ld a,d			;25a4	7a 	z 
	ld a,c			;25a5	79 	y 
	ld (hl),e			;25a6	73 	s 
	ld (hl),h			;25a7	74 	t 
	ld l,e			;25a8	6b 	k 
	ld l,c			;25a9	69 	i 
	ld h,l			;25aa	65 	e 
	jr nz,$+42		;25ab	20 28 	  ( 
	ld d,h			;25ad	54 	T 
	cpl			;25ae	2f 	/ 
	ld c,(hl)			;25af	4e 	N 
	add hl,hl			;25b0	29 	) 
	jr nz,$+65		;25b1	20 3f 	  ? 
	inc h			;25b3	24 	$ 
	ld a,(0f076h)		;25b4	3a 76 f0 	: v . 
	push af			;25b7	f5 	. 
	call 026ech		;25b8	cd ec 26 	. . & 
	pop af			;25bb	f1 	. 
	ld hl,0f076h		;25bc	21 76 f0 	! v . 
	ld (hl),a			;25bf	77 	w 
	inc hl			;25c0	23 	# 
	ld b,00bh		;25c1	06 0b 	. . 
	ld (hl),03fh		;25c3	36 3f 	6 ? 
	inc hl			;25c5	23 	# 
	djnz $-3		;25c6	10 fb 	. . 
	ld hl,0f098h		;25c8	21 98 f0 	! . . 
	ld a,(hl)			;25cb	7e 	~ 
	dec a			;25cc	3d 	= 
	jp nz,0229dh		;25cd	c2 9d 22 	. . " 
	inc hl			;25d0	23 	# 
	ld a,(hl)			;25d1	7e 	~ 
	cp 054h		;25d2	fe 54 	. T 
	jp nz,0229dh		;25d4	c2 9d 22 	. . " 
	inc hl			;25d7	23 	# 
	ld (0f074h),hl		;25d8	22 74 f0 	" t . 
	call 03b0eh		;25db	cd 0e 3b 	. . ; 
	inc a			;25de	3c 	< 
	call z,02587h		;25df	cc 87 25 	. . % 
	jp 0230dh		;25e2	c3 0d 23 	. . # 
	call 03348h		;25e5	cd 48 33 	. H 3 
	jp nz,02321h		;25e8	c2 21 23 	. ! # 
	call 03aedh		;25eb	cd ed 3a 	. . : 
	jp z,02321h		;25ee	ca 21 23 	. ! # 
	call 03e69h		;25f1	cd 69 3e 	. i > 
	ld hl,0f06fh		;25f4	21 6f f0 	! o . 
	ld (hl),0ffh		;25f7	36 ff 	6 . 
	ld hl,0f06fh		;25f9	21 6f f0 	! o . 
	ld a,(hl)			;25fc	7e 	~ 
	cp 080h		;25fd	fe 80 	. . 
	jr c,$+12		;25ff	38 0a 	8 . 
	push hl			;2601	e5 	. 
	call 03b1ah		;2602	cd 1a 3b 	. . ; 
	pop hl			;2605	e1 	. 
	jp nz,0230dh		;2606	c2 0d 23 	. . # 
	xor a			;2609	af 	. 
	ld (hl),a			;260a	77 	w 
	inc (hl)			;260b	34 	4 
	ld c,000h		;260c	0e 00 	. . 
	call 027fch		;260e	cd fc 27 	. . ' 
	cp 01ah		;2611	fe 1a 	. . 
	jp z,0230dh		;2613	ca 0d 23 	. . # 
	call 03e3ah		;2616	cd 3a 3e 	. : > 
	call 03dc7h		;2619	cd c7 3d 	. . = 
	jp nz,0230dh		;261c	c2 0d 23 	. . # 
	jr $-38		;261f	18 d8 	. . 
	call 027c8h		;2621	cd c8 27 	. . ' 
	push bc			;2624	c5 	. 
	call 03348h		;2625	cd 48 33 	. H 3 
	jp nz,02321h		;2628	c2 21 23 	. ! # 
	ld de,0f076h		;262b	11 76 f0 	. v . 
	call 03b24h		;262e	cd 24 3b 	. $ ; 
	jr z,$+45		;2631	28 2b 	( + 
	xor a			;2633	af 	. 
	ld (0f096h),a		;2634	32 96 f0 	2 . . 
	pop hl			;2637	e1 	. 
	ld h,000h		;2638	26 00 	& . 
	add hl,hl			;263a	29 	) 
	ld de,00100h		;263b	11 00 01 	. . . 
	ld a,h			;263e	7c 	| 
	or l			;263f	b5 	. 
	jr z,$+24		;2640	28 16 	( . 
	dec hl			;2642	2b 	+ 
	push hl			;2643	e5 	. 
	ld hl,00080h		;2644	21 80 00 	! . . 
	add hl,de			;2647	19 	. 
	push hl			;2648	e5 	. 
	call 03adfh		;2649	cd df 3a 	. . : 
	ld de,0f076h		;264c	11 76 f0 	. v . 
	call 03b16h		;264f	cd 16 3b 	. . ; 
	pop de			;2652	d1 	. 
	pop hl			;2653	e1 	. 
	jr nz,$+10		;2654	20 08 	  . 
	jr $-24		;2656	18 e6 	. . 
	call 03afeh		;2658	cd fe 3a 	. . : 
	inc a			;265b	3c 	< 
	jr nz,$+5		;265c	20 03 	  . 
	call 023e4h		;265e	cd e4 23 	. . # 
	call 03adch		;2661	cd dc 3a 	. . : 
	jp 0230dh		;2664	c3 0d 23 	. . # 
	call 03348h		;2667	cd 48 33 	. H 3 
	jp nz,02321h		;266a	c2 21 23 	. ! # 
	call 03b06h		;266d	cd 06 3b 	. . ; 
	jr nz,$+79		;2670	20 4d 	  M 
	ld hl,0f076h		;2672	21 76 f0 	! v . 
	ld de,0f086h		;2675	11 86 f0 	. . . 
	ld bc,00010h		;2678	01 10 00 	. . . 
	ldir		;267b	ed b0 	. . 
	ld hl,(0f074h)		;267d	2a 74 f0 	* t . 
	call 033c0h		;2680	cd c0 33 	. . 3 
	cp 03dh		;2683	fe 3d 	. = 
	jr z,$+7		;2685	28 05 	( . 
	cp 05fh		;2687	fe 5f 	. _ 
	jp nz,02321h		;2689	c2 21 23 	. ! # 
	inc hl			;268c	23 	# 
	ld (0f074h),hl		;268d	22 74 f0 	" t . 
	call 03348h		;2690	cd 48 33 	. H 3 
	jp nz,02321h		;2693	c2 21 23 	. ! # 
	ld a,(0f06eh)		;2696	3a 6e f0 	: n . 
	inc a			;2699	3c 	< 
	ld b,a			;269a	47 	G 
	ld a,(0f076h)		;269b	3a 76 f0 	: v . 
	or a			;269e	b7 	. 
	ld c,a			;269f	4f 	O 
	jr nz,$+3		;26a0	20 01 	  . 
	ld c,b			;26a2	48 	H 
	ld a,(0f086h)		;26a3	3a 86 f0 	: . . 
	or a			;26a6	b7 	. 
	jr nz,$+3		;26a7	20 01 	  . 
	ld a,b			;26a9	78 	x 
	cp c			;26aa	b9 	. 
	jp nz,02321h		;26ab	c2 21 23 	. ! # 
	call 03b06h		;26ae	cd 06 3b 	. . ; 
	jr z,$+8		;26b1	28 06 	( . 
	call 03b30h		;26b3	cd 30 3b 	. 0 ; 
	jp 0230dh		;26b6	c3 0d 23 	. . # 
	call 02587h		;26b9	cd 87 25 	. . % 
	jp 0230dh		;26bc	c3 0d 23 	. . # 
	call 03ea9h		;26bf	cd a9 3e 	. . > 
	ld a,(bc)			;26c2	0a 	. 
	ld d,b			;26c3	50 	P 
	ld l,h			;26c4	6c 	l 
	ld l,c			;26c5	69 	i 
	ld l,e			;26c6	6b 	k 
	jr nz,$+107		;26c7	20 69 	  i 
	ld (hl),e			;26c9	73 	s 
	ld (hl),h			;26ca	74 	t 
	ld l,(hl)			;26cb	6e 	n 
	ld l,c			;26cc	69 	i 
	ld h,l			;26cd	65 	e 
	ld l,d			;26ce	6a 	j 
	ld h,l			;26cf	65 	e 
	inc h			;26d0	24 	$ 
	jp 0230dh		;26d1	c3 0d 23 	. . # 
	call 027c8h		;26d4	cd c8 27 	. . ' 
	ld a,c			;26d7	79 	y 
	cp 010h		;26d8	fe 10 	. . 
	jp nc,02321h		;26da	d2 21 23 	. ! # 
	ld e,a			;26dd	5f 	_ 
	ld a,(0f077h)		;26de	3a 77 f0 	: w . 
	cp 020h		;26e1	fe 20 	.   
	jp z,02321h		;26e3	ca 21 23 	. ! # 
	call 03b3fh		;26e6	cd 3f 3b 	. ? ; 
	jp 0230dh		;26e9	c3 0d 23 	. . # 
	ld a,(0f06ch)		;26ec	3a 6c f0 	: l . 
	or a			;26ef	b7 	. 
	jp nz,02773h		;26f0	c2 73 27 	. s ' 
	ld a,(0f06bh)		;26f3	3a 6b f0 	: k . 
	or a			;26f6	b7 	. 
	jp z,02799h		;26f7	ca 99 27 	. . ' 
	ld a,(0f06eh)		;26fa	3a 6e f0 	: n . 
	or a			;26fd	b7 	. 
	ld a,000h		;26fe	3e 00 	> . 
	call nz,03acch		;2700	c4 cc 3a 	. . : 
	call 02754h		;2703	cd 54 27 	. T ' 
	call 03aedh		;2706	cd ed 3a 	. . : 
	jp z,02799h		;2709	ca 99 27 	. . ' 
	ld a,(0f085h)		;270c	3a 85 f0 	: . . 
	dec a			;270f	3d 	= 
	ld (0f096h),a		;2710	32 96 f0 	2 . . 
	ld de,0f098h		;2713	11 98 f0 	. . . 
	call 03adfh		;2716	cd df 3a 	. . : 
	call 03b1ah		;2719	cd 1a 3b 	. . ; 
	push af			;271c	f5 	. 
	call 03adch		;271d	cd dc 3a 	. . : 
	pop af			;2720	f1 	. 
	jp nz,02799h		;2721	c2 99 27 	. . ' 
	ld hl,0f084h		;2724	21 84 f0 	! . . 
	ld (hl),000h		;2727	36 00 	6 . 
	inc hl			;2729	23 	# 
	dec (hl)			;272a	35 	5 
	call 03afeh		;272b	cd fe 3a 	. . : 
	jp z,02799h		;272e	ca 99 27 	. . ' 
	ld a,(0f06eh)		;2731	3a 6e f0 	: n . 
	or a			;2734	b7 	. 
	call nz,03acch		;2735	c4 cc 3a 	. . : 
	ld hl,0f099h		;2738	21 99 f0 	! . . 
	ld b,080h		;273b	06 80 	. . 
	res 7,(hl)		;273d	cb be 	. . 
	ld a,(hl)			;273f	7e 	~ 
	inc hl			;2740	23 	# 
	or a			;2741	b7 	. 
	jr z,$+7		;2742	28 05 	( . 
	call 03e3ah		;2744	cd 3a 3e 	. : > 
	djnz $-10		;2747	10 f4 	. . 
	call 03dc7h		;2749	cd c7 3d 	. . = 
	jr z,$+97		;274c	28 5f 	( _ 
	call 02345h		;274e	cd 45 23 	. E # 
	jp 0229dh		;2751	c3 9d 22 	. . " 
	ld hl,02767h		;2754	21 67 27 	! g ' 
	ld de,0f076h		;2757	11 76 f0 	. v . 
	ld bc,0000ch		;275a	01 0c 00 	. . . 
	ldir		;275d	ed b0 	. . 
	ld b,015h		;275f	06 15 	. . 
	xor a			;2761	af 	. 
	ld (de),a			;2762	12 	. 
	inc de			;2763	13 	. 
	djnz $-3		;2764	10 fb 	. . 
	ret			;2766	c9 	. 
	nop			;2767	00 	. 
	inc h			;2768	24 	$ 
	inc h			;2769	24 	$ 
	inc h			;276a	24 	$ 
	jr nz,$+34		;276b	20 20 	    
	jr nz,$+34		;276d	20 20 	    
	jr nz,$+85		;276f	20 53 	  S 
	ld d,l			;2771	55 	U 
	ld b,d			;2772	42 	B 
	ld hl,02784h		;2773	21 84 27 	! . ' 
	ld de,0f098h		;2776	11 98 f0 	. . . 
	ld bc,00019h		;2779	01 19 00 	. . . 
	ldir		;277c	ed b0 	. . 
	xor a			;277e	af 	. 
	ld (0f06ch),a		;277f	32 6c f0 	2 l . 
	jr $-74		;2782	18 b4 	. . 
	inc de			;2784	13 	. 
	ld b,d			;2785	42 	B 
	ld a,(05553h)		;2786	3a 53 55 	: S U 
	ld b,d			;2789	42 	B 
	ld c,l			;278a	4d 	M 
	ld c,c			;278b	49 	I 
	ld d,h			;278c	54 	T 
	jr nz,$+68		;278d	20 42 	  B 
	ld a,(05541h)		;278f	3a 41 55 	: A U 
	ld d,h			;2792	54 	T 
	ld c,a			;2793	4f 	O 
	ld b,l			;2794	45 	E 
	ld e,b			;2795	58 	X 
	ld b,l			;2796	45 	E 
	ld b,e			;2797	43 	C 
	nop			;2798	00 	. 
	call 02345h		;2799	cd 45 23 	. E # 
	call 02437h		;279c	cd 37 24 	. 7 $ 
	ld c,00ah		;279f	0e 0a 	. . 
	ld de,0f097h		;27a1	11 97 f0 	. . . 
	ld a,07fh		;27a4	3e 7f 	>  
	ld (de),a			;27a6	12 	. 
	call 00005h		;27a7	cd 05 00 	. . . 
	call 02446h		;27aa	cd 46 24 	. F $ 
	ld hl,0f098h		;27ad	21 98 f0 	! . . 
	ld b,(hl)			;27b0	46 	F 
	inc hl			;27b1	23 	# 
	ld a,b			;27b2	78 	x 
	or a			;27b3	b7 	. 
	jr z,$+12		;27b4	28 0a 	( . 
	ld a,(hl)			;27b6	7e 	~ 
	res 7,a		;27b7	cb bf 	. . 
	call 03e0eh		;27b9	cd 0e 3e 	. . > 
	ld (hl),a			;27bc	77 	w 
	dec b			;27bd	05 	. 
	jr $-13		;27be	18 f1 	. . 
	ld (hl),a			;27c0	77 	w 
	ld hl,0f099h		;27c1	21 99 f0 	! . . 
	ld (0f074h),hl		;27c4	22 74 f0 	" t . 
	ret			;27c7	c9 	. 
	call 03348h		;27c8	cd 48 33 	. H 3 
	ld a,(0f076h)		;27cb	3a 76 f0 	: v . 
	or a			;27ce	b7 	. 
	jp nz,02321h		;27cf	c2 21 23 	. ! # 
	ld hl,0f077h		;27d2	21 77 f0 	! w . 
	ld bc,00b00h		;27d5	01 00 0b 	. . . 
	ld a,(hl)			;27d8	7e 	~ 
	cp 020h		;27d9	fe 20 	.   
	ret z			;27db	c8 	. 
	inc hl			;27dc	23 	# 
	sub 030h		;27dd	d6 30 	. 0 
	cp 00ah		;27df	fe 0a 	. . 
	jp nc,02321h		;27e1	d2 21 23 	. ! # 
	ld d,a			;27e4	57 	W 
	ld a,c			;27e5	79 	y 
	cp 01ah		;27e6	fe 1a 	. . 
	jp nc,02321h		;27e8	d2 21 23 	. ! # 
	add a,a			;27eb	87 	. 
	add a,a			;27ec	87 	. 
	add a,c			;27ed	81 	. 
	add a,a			;27ee	87 	. 
	add a,d			;27ef	82 	. 
	jp c,02321h		;27f0	da 21 23 	. ! # 
	ld c,a			;27f3	4f 	O 
	djnz $-28		;27f4	10 e2 	. . 
	ret			;27f6	c9 	. 
	add a,l			;27f7	85 	. 
	ld l,a			;27f8	6f 	o 
	ret nc			;27f9	d0 	. 
	inc h			;27fa	24 	$ 
	ret			;27fb	c9 	. 
	ld hl,00080h		;27fc	21 80 00 	! . . 
	add a,c			;27ff	81 	. 
	call 027f7h		;2800	cd f7 27 	. . ' 
	jp 00011h		;2803	c3 11 00 	. . . 
	call 03348h		;2806	cd 48 33 	. H 3 
	ld hl,0f097h		;2809	21 97 f0 	! . . 
	ld b,050h		;280c	06 50 	. P 
	ld (hl),000h		;280e	36 00 	6 . 
	inc hl			;2810	23 	# 
	djnz $-3		;2811	10 fb 	. . 
	call 031f6h		;2813	cd f6 31 	. . 1 
	ld hl,00100h		;2816	21 00 01 	! . . 
	ld (0f0e2h),hl		;2819	22 e2 f0 	" . . 
	xor a			;281c	af 	. 
	ld (0f070h),a		;281d	32 70 f0 	2 p . 
	ld hl,0f076h		;2820	21 76 f0 	! v . 
	ld a,(hl)			;2823	7e 	~ 
	ld (0f0b8h),a		;2824	32 b8 f0 	2 . . 
	inc hl			;2827	23 	# 
	ld a,(hl)			;2828	7e 	~ 
	cp 020h		;2829	fe 20 	.   
	jr z,$+10		;282b	28 08 	( . 
	ld bc,0000bh		;282d	01 0b 00 	. . . 
	ld de,0f0e7h		;2830	11 e7 f0 	. . . 
	ldir		;2833	ed b0 	. . 
	call 03ad7h		;2835	cd d7 3a 	. . : 
	ld (0f0bah),a		;2838	32 ba f0 	2 . . 
	inc a			;283b	3c 	< 
	ld c,a			;283c	4f 	O 
	ld a,(0f0b8h)		;283d	3a b8 f0 	: . . 
	or a			;2840	b7 	. 
	jr nz,$+5		;2841	20 03 	  . 
	ld (ix+000h),c		;2843	dd 71 00 	. q . 
	call 03b3dh		;2846	cd 3d 3b 	. = ; 
	ld (0f071h),a		;2849	32 71 f0 	2 q . 
	xor a			;284c	af 	. 
	call 00017h		;284d	cd 17 00 	. . . 
	call 03ad2h		;2850	cd d2 3a 	. . : 
	call 03857h		;2853	cd 57 38 	. W 8 
	call 03adch		;2856	cd dc 3a 	. . : 
	res 6,(ix-048h)		;2859	dd cb b8 b6 	. . . . 
	ld (ix+00dh),000h		;285d	dd 36 0d 00 	. 6 . . 
	ld (ix+015h),000h		;2861	dd 36 15 00 	. 6 . . 
	ld a,(0f0cch)		;2865	3a cc f0 	: . . 
	or a			;2868	b7 	. 
	jr z,$+50		;2869	28 30 	( 0 
	call 03de5h		;286b	cd e5 3d 	. . = 
	jr z,$+42		;286e	28 28 	( ( 
	call 03dcdh		;2870	cd cd 3d 	. . = 
	call 03e0eh		;2873	cd 0e 3e 	. . > 
	ld (0f0cdh),a		;2876	32 cd f0 	2 . . 
	ld hl,0288bh		;2879	21 8b 28 	! . ( 
	ld c,a			;287c	4f 	O 
	ld a,(hl)			;287d	7e 	~ 
	inc hl			;287e	23 	# 
	or a			;287f	b7 	. 
	jr z,$+24		;2880	28 16 	( . 
	cp c			;2882	b9 	. 
	jr nz,$-6		;2883	20 f8 	  . 
	call 038bfh		;2885	cd bf 38 	. . 8 
	jp 029ech		;2888	c3 ec 29 	. . ) 
	inc d			;288b	14 	. 
	dec d			;288c	15 	. 
	ld d,a			;288d	57 	W 
	ld d,(hl)			;288e	56 	V 
	ld c,(hl)			;288f	4e 	N 
	ld d,b			;2890	50 	P 
	ld b,h			;2891	44 	D 
	ld b,(hl)			;2892	46 	F 
	ld c,a			;2893	4f 	O 
	ld d,c			;2894	51 	Q 
	ld c,e			;2895	4b 	K 
	ld c,h			;2896	4c 	L 
	nop			;2897	00 	. 
	call 0385ah		;2898	cd 5a 38 	. Z 8 
	call 039b4h		;289b	cd b4 39 	. . 9 
	call 03964h		;289e	cd 64 39 	. d 9 
	call 03ea9h		;28a1	cd a9 3e 	. . > 
	dec de			;28a4	1b 	. 
	dec a			;28a5	3d 	= 
	dec (hl)			;28a6	35 	5 
	ld d,b			;28a7	50 	P 
	inc hl			;28a8	23 	# 
	inc hl			;28a9	23 	# 
	pop af			;28aa	f1 	. 
	ld b,c			;28ab	41 	A 
	ld (hl),h			;28ac	74 	t 
	ld (hl),d			;28ad	72 	r 
	ld a,c			;28ae	79 	y 
	ld h,d			;28af	62 	b 
	ld (hl),l			;28b0	75 	u 
	ld (hl),h			;28b1	74 	t 
	ld a,c			;28b2	79 	y 
	ld a,(04b1bh)		;28b3	3a 1b 4b 	: . K 
	inc h			;28b6	24 	$ 
	call 039e8h		;28b7	cd e8 39 	. . 9 
	call 02c6fh		;28ba	cd 6f 2c 	. o , 
	call 02c96h		;28bd	cd 96 2c 	. . , 
	ld hl,0f0ceh		;28c0	21 ce f0 	! . . 
	ld a,(0f0c4h)		;28c3	3a c4 f0 	: . . 
	or a			;28c6	b7 	. 
	jr z,$+32		;28c7	28 1e 	( . 
	bit 0,(hl)		;28c9	cb 46 	. F 
	set 0,(hl)		;28cb	cb c6 	. . 
	jr nz,$+26		;28cd	20 18 	  . 
	ld de,01400h		;28cf	11 00 14 	. . . 
	call 038a9h		;28d2	cd a9 38 	. . 8 
	call 03ea9h		;28d5	cd a9 3e 	. . > 
	dec de			;28d8	1b 	. 
	ld d,e			;28d9	53 	S 
	jr nz,$+62		;28da	20 3c 	  < 
	dec a			;28dc	3d 	= 
	jr nz,$+62		;28dd	20 3c 	  < 
	dec a			;28df	3d 	= 
	jr nz,$+62		;28e0	20 3c 	  < 
	dec a			;28e2	3d 	= 
	jr nz,$+29		;28e3	20 1b 	  . 
	ld d,h			;28e5	54 	T 
	inc h			;28e6	24 	$ 
	ld a,(0f0bdh)		;28e7	3a bd f0 	: . . 
	sub (ix+00ch)		;28ea	dd 96 0c 	. . . 
	cp 03dh		;28ed	fe 3d 	. = 
	jr c,$+32		;28ef	38 1e 	8 . 
	bit 1,(hl)		;28f1	cb 4e 	. N 
	set 1,(hl)		;28f3	cb ce 	. . 
	jr nz,$+26		;28f5	20 18 	  . 
	ld de,01445h		;28f7	11 45 14 	. E . 
	call 038a9h		;28fa	cd a9 38 	. . 8 
	call 03ea9h		;28fd	cd a9 3e 	. . > 
	dec de			;2900	1b 	. 
	ld d,e			;2901	53 	S 
	jr nz,$+63		;2902	20 3d 	  = 
	ld a,020h		;2904	3e 20 	>   
	dec a			;2906	3d 	= 
	ld a,020h		;2907	3e 20 	>   
	dec a			;2909	3d 	= 
	ld a,020h		;290a	3e 20 	>   
	dec de			;290c	1b 	. 
	ld d,h			;290d	54 	T 
	inc h			;290e	24 	$ 
	ld de,0140ch		;290f	11 0c 14 	. . . 
	call 038a9h		;2912	cd a9 38 	. . 8 
	ld hl,0296fh		;2915	21 6f 29 	! o ) 
	ld a,(0f26bh)		;2918	3a 6b f2 	: k . 
	bit 2,a		;291b	cb 57 	. W 
	jr nz,$+38		;291d	20 24 	  $ 
	ld hl,0297ah		;291f	21 7a 29 	! z ) 
	bit 3,a		;2922	cb 5f 	. _ 
	jr nz,$+31		;2924	20 1d 	  . 
	ld hl,02979h		;2926	21 79 29 	! y ) 
	bit 7,(ix-048h)		;2929	dd cb b8 7e 	. . . ~ 
	jr z,$+22		;292d	28 14 	( . 
	ld hl,00003h		;292f	21 03 00 	! . . 
	call 00011h		;2932	cd 11 00 	. . . 
	rlca			;2935	07 	. 
	rlca			;2936	07 	. 
	rlca			;2937	07 	. 
	and 006h		;2938	e6 06 	. . 
	ld hl,0003bh		;293a	21 3b 00 	! ; . 
	add a,l			;293d	85 	. 
	ld l,a			;293e	6f 	o 
	ld a,(hl)			;293f	7e 	~ 
	inc hl			;2940	23 	# 
	ld h,(hl)			;2941	66 	f 
	ld l,a			;2942	6f 	o 
	ld de,(0f0cfh)		;2943	ed 5b cf f0 	. [ . . 
	ld (0f0cfh),hl		;2947	22 cf f0 	" . . 
	ld a,e			;294a	7b 	{ 
	cp l			;294b	bd 	. 
	jr nz,$+6		;294c	20 04 	  . 
	ld a,d			;294e	7a 	z 
	cp h			;294f	bc 	. 
	jr z,$+52		;2950	28 32 	( 2 
	call 03ef2h		;2952	cd f2 3e 	. . > 
	ld b,00ch		;2955	06 0c 	. . 
	ld a,(hl)			;2957	7e 	~ 
	bit 7,a		;2958	cb 7f 	.  
	jr nz,$+8		;295a	20 06 	  . 
	call 03e3ah		;295c	cd 3a 3e 	. : > 
	inc hl			;295f	23 	# 
	djnz $-9		;2960	10 f5 	. . 
	inc b			;2962	04 	. 
	ld a,020h		;2963	3e 20 	>   
	call 03e3ah		;2965	cd 3a 3e 	. : > 
	djnz $-5		;2968	10 f9 	. . 
	call 03ee3h		;296a	cd e3 3e 	. . > 
	jr $+23		;296d	18 15 	. . 
	ld b,h			;296f	44 	D 
	ld (hl),d			;2970	72 	r 
	ld (hl),l			;2971	75 	u 
	ld l,e			;2972	6b 	k 
	ld l,a			;2973	6f 	o 
	ld (hl),a			;2974	77 	w 
	ld h,c			;2975	61 	a 
	ld l,(hl)			;2976	6e 	n 
	ld l,c			;2977	69 	i 
	ld h,l			;2978	65 	e 
	add a,b			;2979	80 	. 
	ld (hl),a			;297a	77 	w 
	ld a,c			;297b	79 	y 
	ld a,h			;297c	7c 	| 
	ld h,b			;297d	60 	` 
	ld h,e			;297e	63 	c 
	ld a,d			;297f	7a 	z 
	ld l,a			;2980	6f 	o 
	ld l,(hl)			;2981	6e 	n 
	ld h,c			;2982	61 	a 
	add a,b			;2983	80 	. 
	ld de,01419h		;2984	11 19 14 	. . . 
	call 038a9h		;2987	cd a9 38 	. . 8 
	ld hl,0f0ceh		;298a	21 ce f0 	! . . 
	ld a,(0f0bfh)		;298d	3a bf f0 	: . . 
	or a			;2990	b7 	. 
	jr z,$+78		;2991	28 4c 	( L 
	bit 2,(hl)		;2993	cb 56 	. V 
	set 2,(hl)		;2995	cb d6 	. . 
	jr nz,$+26		;2997	20 18 	  . 
	call 03ea9h		;2999	cd a9 3e 	. . > 
	ld d,b			;299c	50 	P 
	ld l,h			;299d	6c 	l 
	ld l,c			;299e	69 	i 
	ld l,e			;299f	6b 	k 
	ld l,c			;29a0	69 	i 
	jr nz,$+124		;29a1	20 7a 	  z 
	ld h,c			;29a3	61 	a 
	ld a,d			;29a4	7a 	z 
	ld l,(hl)			;29a5	6e 	n 
	ld h,c			;29a6	61 	a 
	ld h,e			;29a7	63 	c 
	ld a,d			;29a8	7a 	z 
	ld l,a			;29a9	6f 	o 
	ld l,(hl)			;29aa	6e 	n 
	ld h,l			;29ab	65 	e 
	jr nz,$+63		;29ac	20 3d 	  = 
	inc h			;29ae	24 	$ 
	jr $+8		;29af	18 06 	. . 
	ld de,0142bh		;29b1	11 2b 14 	. + . 
	call 038a9h		;29b4	cd a9 38 	. . 8 
	ld hl,(0f0bfh)		;29b7	2a bf f0 	* . . 
	ld h,000h		;29ba	26 00 	& . 
	call 03f68h		;29bc	cd 68 3f 	. h ? 
	ld hl,(0f0d3h)		;29bf	2a d3 f0 	* . . 
	call 03f62h		;29c2	cd 62 3f 	. b ? 
	call 03ea9h		;29c5	cd a9 3e 	. . > 
	jr nz,$+77		;29c8	20 4b 	  K 
	ld b,d			;29ca	42 	B 
	jp p,02428h		;29cb	f2 28 24 	. ( $ 
	ld hl,(0f0d5h)		;29ce	2a d5 f0 	* . . 
	call 03f62h		;29d1	cd 62 3f 	. b ? 
	call 03ea9h		;29d4	cd a9 3e 	. . > 
	jr nz,$+77		;29d7	20 4b 	  K 
	ld b,d			;29d9	42 	B 
	jr nz,$+43		;29da	20 29 	  ) 
	inc h			;29dc	24 	$ 
	jr $+15		;29dd	18 0d 	. . 
	bit 2,(hl)		;29df	cb 56 	. V 
	jr z,$+11		;29e1	28 09 	( . 
	res 2,(hl)		;29e3	cb 96 	. . 
	call 03ea9h		;29e5	cd a9 3e 	. . > 
	rst 38h			;29e8	ff 	. 
	rst 38h			;29e9	ff 	. 
	defb 0fdh,024h	;inc iyh		;29ea	fd 24 	. $ 
	ld de,01600h		;29ec	11 00 16 	. . . 
	call 038a9h		;29ef	cd a9 38 	. . 8 
	ld a,(0f0cdh)		;29f2	3a cd f0 	: . . 
	ld (ix+015h),000h		;29f5	dd 36 15 00 	. 6 . . 
	or a			;29f9	b7 	. 
	jr nz,$+8		;29fa	20 06 	  . 
	call 03dcdh		;29fc	cd cd 3d 	. . = 
	call 03e0eh		;29ff	cd 0e 3e 	. . > 
	ld c,a			;2a02	4f 	O 
	call 03df0h		;2a03	cd f0 3d 	. . = 
	call 03ea9h		;2a06	cd a9 3e 	. . > 
	dec de			;2a09	1b 	. 
	ld c,e			;2a0a	4b 	K 
	jp p,02124h		;2a0b	f2 24 21 	. $ ! 
	jp c,03a2ah		;2a0e	da 2a 3a 	. * : 
	cp l			;2a11	bd 	. 
	ret p			;2a12	f0 	. 
	or a			;2a13	b7 	. 
	jr z,$+14		;2a14	28 0c 	( . 
	ld hl,02aa4h		;2a16	21 a4 2a 	! . * 
	bit 0,(ix+010h)		;2a19	dd cb 10 46 	. . . F 
	jr nz,$+5		;2a1d	20 03 	  . 
	ld hl,02a74h		;2a1f	21 74 2a 	! t * 
	inc hl			;2a22	23 	# 
	inc hl			;2a23	23 	# 
	ld a,(hl)			;2a24	7e 	~ 
	or a			;2a25	b7 	. 
	jp m,02a44h		;2a26	fa 44 2a 	. D * 
	cp c			;2a29	b9 	. 
	inc hl			;2a2a	23 	# 
	jr nz,$-9		;2a2b	20 f5 	  . 
	ld de,02856h		;2a2d	11 56 28 	. V ( 
	push de			;2a30	d5 	. 
	ld a,(hl)			;2a31	7e 	~ 
	inc hl			;2a32	23 	# 
	ld h,(hl)			;2a33	66 	f 
	ld l,a			;2a34	6f 	o 
	ld a,(0f0bdh)		;2a35	3a bd f0 	: . . 
	ld b,a			;2a38	47 	G 
	sub (ix+00ch)		;2a39	dd 96 0c 	. . . 
	cp 03ch		;2a3c	fe 3c 	. < 
	jr c,$+4		;2a3e	38 02 	8 . 
	ld a,03ch		;2a40	3e 3c 	> < 
	ld c,a			;2a42	4f 	O 
	jp (hl)			;2a43	e9 	. 
	ld sp,0f13ah		;2a44	31 3a f1 	1 : . 
	call 03ea9h		;2a47	cd a9 3e 	. . > 
	rlca			;2a4a	07 	. 
	jr nz,$+68		;2a4b	20 42 	  B 
	ld a,h			;2a4d	7c 	| 
	ld b,b			;2a4e	40 	@ 
	ld h,h			;2a4f	64 	d 
	ld l,(hl)			;2a50	6e 	n 
	ld h,l			;2a51	65 	e 
	jr nz,$+114		;2a52	20 70 	  p 
	ld l,a			;2a54	6f 	o 
	ld l,h			;2a55	6c 	l 
	ld h,l			;2a56	65 	e 
	ld h,e			;2a57	63 	c 
	ld h,l			;2a58	65 	e 
	ld l,(hl)			;2a59	6e 	n 
	ld l,c			;2a5a	69 	i 
	ld h,l			;2a5b	65 	e 
	jr nz,$+47		;2a5c	20 2d 	  - 
	jr nz,$+42		;2a5e	20 28 	  ( 
	ld b,l			;2a60	45 	E 
	ld d,e			;2a61	53 	S 
	ld b,e			;2a62	43 	C 
	add hl,hl			;2a63	29 	) 
	inc h			;2a64	24 	$ 
	call 03dcdh		;2a65	cd cd 3d 	. . = 
	cp 01bh		;2a68	fe 1b 	. . 
	ld a,007h		;2a6a	3e 07 	> . 
	call nz,03e3ah		;2a6c	c4 3a 3e 	. : > 
	jr nz,$-10		;2a6f	20 f4 	  . 
	call 03e65h		;2a71	cd 65 3e 	. e > 
	jr $-114		;2a74	18 8c 	. . 
	ld d,h			;2a76	54 	T 
	inc a			;2a77	3c 	< 
	dec l			;2a78	2d 	- 
	ld d,l			;2a79	55 	U 
	ld b,e			;2a7a	43 	C 
	dec l			;2a7b	2d 	- 
	inc d			;2a7c	14 	. 
	or d			;2a7d	b2 	. 
	dec l			;2a7e	2d 	- 
	add hl,de			;2a7f	19 	. 
	xor (hl)			;2a80	ae 	. 
	dec l			;2a81	2d 	- 
	dec d			;2a82	15 	. 
	call z,0412dh		;2a83	cc 2d 41 	. - A 
	jr $+48		;2a86	18 2e 	. . 
	ld b,l			;2a88	45 	E 
	ld a,l			;2a89	7d 	} 
	ld l,057h		;2a8a	2e 57 	. W 
	ld h,a			;2a8c	67 	g 
	cpl			;2a8d	2f 	/ 
	ld d,(hl)			;2a8e	56 	V 
	ld h,h			;2a8f	64 	d 
	cpl			;2a90	2f 	/ 
	ld d,e			;2a91	53 	S 
	ld e,(hl)			;2a92	5e 	^ 
	cpl			;2a93	2f 	/ 
	ld d,d			;2a94	52 	R 
	ret pe			;2a95	e8 	. 
	cpl			;2a96	2f 	/ 
	ld b,e			;2a97	43 	C 
	ld d,h			;2a98	54 	T 
	jr nc,$+4		;2a99	30 02 	0 . 
	sbc a,e			;2a9b	9b 	. 
	ld (0ce42h),a		;2a9c	32 42 ce 	2 B . 
	ld (0de58h),a		;2a9f	32 58 de 	2 X . 
	ld (00e50h),a		;2aa2	32 50 0e 	2 P . 
	inc (hl)			;2aa5	34 	4 
	dec (hl)			;2aa6	35 	5 
	jr c,$+45		;2aa7	38 2b 	8 + 
	ld (hl),03fh		;2aa9	36 3f 	6 ? 
	dec hl			;2aab	2b 	+ 
	inc b			;2aac	04 	. 
	ccf			;2aad	3f 	? 
	dec hl			;2aae	2b 	+ 
	inc (hl)			;2aaf	34 	4 
	ld a,b			;2ab0	78 	x 
	dec hl			;2ab1	2b 	+ 
	inc de			;2ab2	13 	. 
	ld a,b			;2ab3	78 	x 
	dec hl			;2ab4	2b 	+ 
	jr c,$-97		;2ab5	38 9d 	8 . 
	dec hl			;2ab7	2b 	+ 
	dec b			;2ab8	05 	. 
	sbc a,l			;2ab9	9d 	. 
	dec hl			;2aba	2b 	+ 
	ld (02bafh),a		;2abb	32 af 2b 	2 . + 
	jr $-79		;2abe	18 af 	. . 
	dec hl			;2ac0	2b 	+ 
	scf			;2ac1	37 	7 
	and l			;2ac2	a5 	. 
	dec hl			;2ac3	2b 	+ 
	rla			;2ac4	17 	. 
	and l			;2ac5	a5 	. 
	dec hl			;2ac6	2b 	+ 
	ld sp,02bb7h		;2ac7	31 b7 2b 	1 . + 
	ld a,(de)			;2aca	1a 	. 
	or a			;2acb	b7 	. 
	dec hl			;2acc	2b 	+ 
	ld a,067h		;2acd	3e 67 	> g 
	dec hl			;2acf	2b 	+ 
	inc a			;2ad0	3c 	< 
	sub h			;2ad1	94 	. 
	dec hl			;2ad2	2b 	+ 
	ld l,067h		;2ad3	2e 67 	. g 
	dec hl			;2ad5	2b 	+ 
	inc l			;2ad6	2c 	, 
	sub h			;2ad7	94 	. 
	dec hl			;2ad8	2b 	+ 
	ld b,h			;2ad9	44 	D 
	push bc			;2ada	c5 	. 
	dec hl			;2adb	2b 	+ 
	ld b,(hl)			;2adc	46 	F 
	jp c,04f31h		;2add	da 31 4f 	. 1 O 
	ex de,hl			;2ae0	eb 	. 
	inc l			;2ae1	2c 	, 
	ld d,c			;2ae2	51 	Q 
	ld e,d			;2ae3	5a 	Z 
	jr c,$+77		;2ae4	38 4b 	8 K 
	rst 18h			;2ae6	df 	. 
	dec l			;2ae7	2d 	- 
	ld c,h			;2ae8	4c 	L 
	jp (hl)			;2ae9	e9 	. 
	dec l			;2aea	2d 	- 
	djnz $+24		;2aeb	10 16 	. . 
	ld (00109h),a		;2aed	32 09 01 	2 . . 
	ld (0260ch),a		;2af0	32 0c 26 	2 . & 
	ld (01903h),a		;2af3	32 03 19 	2 . . 
	dec hl			;2af6	2b 	+ 
	ld b,b			;2af7	40 	@ 
	jp m,03334h		;2af8	fa 34 33 	. 4 3 
	scf			;2afb	37 	7 
	dec hl			;2afc	2b 	+ 
	add hl,sp			;2afd	39 	9 
	scf			;2afe	37 	7 
	dec hl			;2aff	2b 	+ 
	jr nc,$+57		;2b00	30 37 	0 7 
	dec hl			;2b02	2b 	+ 
	dec l			;2b03	2d 	- 
	scf			;2b04	37 	7 
	dec hl			;2b05	2b 	+ 
	ld hl,(02b37h)		;2b06	2a 37 2b 	* 7 + 
	dec hl			;2b09	2b 	+ 
	scf			;2b0a	37 	7 
	dec hl			;2b0b	2b 	+ 
	cpl			;2b0c	2f 	/ 
	scf			;2b0d	37 	7 
	dec hl			;2b0e	2b 	+ 
	dec de			;2b0f	1b 	. 
	scf			;2b10	37 	7 
	dec hl			;2b11	2b 	+ 
	dec c			;2b12	0d 	. 
	scf			;2b13	37 	7 
	dec hl			;2b14	2b 	+ 
	jr nz,$+57		;2b15	20 37 	  7 
	dec hl			;2b17	2b 	+ 
	rst 38h			;2b18	ff 	. 
	ld a,(0f0bah)		;2b19	3a ba f0 	: . . 
	call 03acch		;2b1c	cd cc 3a 	. . : 
	call 03ea9h		;2b1f	cd a9 3e 	. . > 
	dec de			;2b22	1b 	. 
	dec a			;2b23	3d 	= 
	ld (hl),020h		;2b24	36 20 	6   
	dec de			;2b26	1b 	. 
	ld c,e			;2b27	4b 	K 
	dec de			;2b28	1b 	. 
	dec a			;2b29	3d 	= 
	dec (hl)			;2b2a	35 	5 
	jr nz,$+38		;2b2b	20 24 	  $ 
	ld sp,0f13ah		;2b2d	31 3a f1 	1 : . 
	set 4,(ix-048h)		;2b30	dd cb b8 e6 	. . . . 
	jp 0229dh		;2b34	c3 9d 22 	. . " 
	ret			;2b37	c9 	. 
	xor a			;2b38	af 	. 
	ld (0f0c3h),a		;2b39	32 c3 f0 	2 . . 
	jp 03965h		;2b3c	c3 65 39 	. e 9 
	ld a,(0f0c3h)		;2b3f	3a c3 f0 	: . . 
	add a,014h		;2b42	c6 14 	. . 
	cp c			;2b44	b9 	. 
	jr c,$-12		;2b45	38 f2 	8 . 
	ld a,(0f0c4h)		;2b47	3a c4 f0 	: . . 
	add a,03ch		;2b4a	c6 3c 	. < 
	cp b			;2b4c	b8 	. 
	ret nc			;2b4d	d0 	. 
	ld (0f0c4h),a		;2b4e	32 c4 f0 	2 . . 
	ld b,a			;2b51	47 	G 
	ld a,(0f0bdh)		;2b52	3a bd f0 	: . . 
	sub b			;2b55	90 	. 
	ld b,a			;2b56	47 	G 
	ld a,(0f0c3h)		;2b57	3a c3 f0 	: . . 
	sub 028h		;2b5a	d6 28 	. ( 
	cp b			;2b5c	b8 	. 
	jr c,$+4		;2b5d	38 02 	8 . 
	ld a,b			;2b5f	78 	x 
	dec a			;2b60	3d 	= 
	ld (0f0c3h),a		;2b61	32 c3 f0 	2 . . 
	jp 02e05h		;2b64	c3 05 2e 	. . . 
	ld a,(0f0c4h)		;2b67	3a c4 f0 	: . . 
	add a,03ch		;2b6a	c6 3c 	. < 
	cp b			;2b6c	b8 	. 
	ret nc			;2b6d	d0 	. 
	ld (0f0c4h),a		;2b6e	32 c4 f0 	2 . . 
	xor a			;2b71	af 	. 
	ld (0f0c3h),a		;2b72	32 c3 f0 	2 . . 
	jp 02e05h		;2b75	c3 05 2e 	. . . 
	ld a,(0f0c3h)		;2b78	3a c3 f0 	: . . 
	sub 014h		;2b7b	d6 14 	. . 
	jp p,02b39h		;2b7d	f2 39 2b 	. 9 + 
	ld a,(0f0c4h)		;2b80	3a c4 f0 	: . . 
	sub 03ch		;2b83	d6 3c 	. < 
	ret m			;2b85	f8 	. 
	ld (0f0c4h),a		;2b86	32 c4 f0 	2 . . 
	ld a,(0f0c3h)		;2b89	3a c3 f0 	: . . 
	add a,028h		;2b8c	c6 28 	. ( 
	ld (0f0c3h),a		;2b8e	32 c3 f0 	2 . . 
	jp 02e05h		;2b91	c3 05 2e 	. . . 
	ld a,(0f0c4h)		;2b94	3a c4 f0 	: . . 
	sub 03ch		;2b97	d6 3c 	. < 
	jp p,02b6eh		;2b99	f2 6e 2b 	. n + 
	ret			;2b9c	c9 	. 
	ld a,(0f0c3h)		;2b9d	3a c3 f0 	: . . 
	dec a			;2ba0	3d 	= 
	jp p,02b39h		;2ba1	f2 39 2b 	. 9 + 
	ret			;2ba4	c9 	. 
	ld a,(0f0c3h)		;2ba5	3a c3 f0 	: . . 
	sub 006h		;2ba8	d6 06 	. . 
	jr nc,$-113		;2baa	30 8d 	0 . 
	xor a			;2bac	af 	. 
	jr $-116		;2bad	18 8a 	. . 
	ld a,(0f0c3h)		;2baf	3a c3 f0 	: . . 
	inc a			;2bb2	3c 	< 
	cp c			;2bb3	b9 	. 
	jr c,$-123		;2bb4	38 83 	8 . 
	ret			;2bb6	c9 	. 
	ld a,(0f0c3h)		;2bb7	3a c3 f0 	: . . 
	add a,006h		;2bba	c6 06 	. . 
	cp c			;2bbc	b9 	. 
	jp c,02b39h		;2bbd	da 39 2b 	. 9 + 
	ld a,c			;2bc0	79 	y 
	dec a			;2bc1	3d 	= 
	jp 02b39h		;2bc2	c3 39 2b 	. 9 + 
	call 03fc2h		;2bc5	cd c2 3f 	. . ? 
	xor a			;2bc8	af 	. 
	ld (0f0c1h),a		;2bc9	32 c1 f0 	2 . . 
	ld a,(0f0bdh)		;2bcc	3a bd f0 	: . . 
	sub (ix+009h)		;2bcf	dd 96 09 	. . . 
	jr z,$+41		;2bd2	28 27 	( ' 
	push af			;2bd4	f5 	. 
	call 03ea9h		;2bd5	cd a9 3e 	. . > 
	ld a,(bc)			;2bd8	0a 	. 
	ld a,(bc)			;2bd9	0a 	. 
	ld a,(bc)			;2bda	0a 	. 
	inc h			;2bdb	24 	$ 
	call 02cbah		;2bdc	cd ba 2c 	. . , 
	pop af			;2bdf	f1 	. 
	cp 015h		;2be0	fe 15 	. . 
	jr nc,$+44		;2be2	30 2a 	0 * 
	call 03ddch		;2be4	cd dc 3d 	. . = 
	jp nz,02e05h		;2be7	c2 05 2e 	. . . 
	call 03e69h		;2bea	cd 69 3e 	. i > 
	call 02c5eh		;2bed	cd 5e 2c 	. ^ , 
	inc (ix+009h)		;2bf0	dd 34 09 	. 4 . 
	ld a,(0f0c1h)		;2bf3	3a c1 f0 	: . . 
	sub (ix+005h)		;2bf6	dd 96 05 	. . . 
	jr c,$-21		;2bf9	38 e9 	8 . 
	call 03e69h		;2bfb	cd 69 3e 	. i > 
	call 038ceh		;2bfe	cd ce 38 	. . 8 
	call 03e69h		;2c01	cd 69 3e 	. i > 
	bit 7,(ix-048h)		;2c04	dd cb b8 7e 	. . . ~ 
	call z,03e17h		;2c08	cc 17 3e 	. . > 
	jp 02e05h		;2c0b	c3 05 2e 	. . . 
	cp 03dh		;2c0e	fe 3d 	. = 
	jr c,$+4		;2c10	38 02 	8 . 
	ld a,03ch		;2c12	3e 3c 	> < 
	ld c,a			;2c14	4f 	O 
	add a,(ix+009h)		;2c15	dd 86 09 	. . . 
	ld (0f0c2h),a		;2c18	32 c2 f0 	2 . . 
	ld a,c			;2c1b	79 	y 
	rrca			;2c1c	0f 	. 
	adc a,000h		;2c1d	ce 00 	. . 
	and 07fh		;2c1f	e6 7f 	.  
	ld b,a			;2c21	47 	G 
	ld c,a			;2c22	4f 	O 
	call 03e35h		;2c23	cd 35 3e 	. 5 > 
	call 02cbah		;2c26	cd ba 2c 	. . , 
	call 03ddch		;2c29	cd dc 3d 	. . = 
	jp nz,02e05h		;2c2c	c2 05 2e 	. . . 
	call 03e69h		;2c2f	cd 69 3e 	. i > 
	push bc			;2c32	c5 	. 
	call 02c5eh		;2c33	cd 5e 2c 	. ^ , 
	pop bc			;2c36	c1 	. 
	ld a,(0f0c1h)		;2c37	3a c1 f0 	: . . 
	add a,c			;2c3a	81 	. 
	ld (0f0c1h),a		;2c3b	32 c1 f0 	2 . . 
	push bc			;2c3e	c5 	. 
	ld c,a			;2c3f	4f 	O 
	call 03e32h		;2c40	cd 32 3e 	. 2 > 
	ld a,(0f0bdh)		;2c43	3a bd f0 	: . . 
	sub c			;2c46	91 	. 
	call nz,02c5eh		;2c47	c4 5e 2c 	. ^ , 
	pop bc			;2c4a	c1 	. 
	ld a,(0f0c1h)		;2c4b	3a c1 f0 	: . . 
	sub c			;2c4e	91 	. 
	inc a			;2c4f	3c 	< 
	ld (0f0c1h),a		;2c50	32 c1 f0 	2 . . 
	djnz $-42		;2c53	10 d4 	. . 
	ld a,(0f0c2h)		;2c55	3a c2 f0 	: . . 
	ld (0f0c1h),a		;2c58	32 c1 f0 	2 . . 
	jp 02bcch		;2c5b	c3 cc 2b 	. . + 
	call 039c9h		;2c5e	cd c9 39 	. . 9 
	ex de,hl			;2c61	eb 	. 
	inc hl			;2c62	23 	# 
	call 03f01h		;2c63	cd 01 3f 	. . ? 
	call 0388fh		;2c66	cd 8f 38 	. . 8 
	call 03e38h		;2c69	cd 38 3e 	. 8 > 
	call 039e8h		;2c6c	cd e8 39 	. . 9 
	call 03e38h		;2c6f	cd 38 3e 	. 8 > 
	ld a,(0f0c8h)		;2c72	3a c8 f0 	: . . 
	or a			;2c75	b7 	. 
	jp z,03e32h		;2c76	ca 32 3e 	. 2 > 
	ld a,(0f0bdh)		;2c79	3a bd f0 	: . . 
	or a			;2c7c	b7 	. 
	jp z,03e32h		;2c7d	ca 32 3e 	. 2 > 
	ld a,055h		;2c80	3e 55 	> U 
	call 03e3ah		;2c82	cd 3a 3e 	. : > 
	ld bc,0fff6h		;2c85	01 f6 ff 	. . . 
	add hl,bc			;2c88	09 	. 
	ld l,(hl)			;2c89	6e 	n 
	ld h,000h		;2c8a	26 00 	& . 
	ld (ix+008h),002h		;2c8c	dd 36 08 02 	. 6 . . 
	call 03f39h		;2c90	cd 39 3f 	. 9 ? 
	jp 03e38h		;2c93	c3 38 3e 	. 8 > 
	ld a,(0fb7ch)		;2c96	3a 7c fb 	: | . 
	bit 7,a		;2c99	cb 7f 	.  
	jp z,03e32h		;2c9b	ca 32 3e 	. 2 > 
	bit 0,a		;2c9e	cb 47 	. G 
	jr z,$+17		;2ca0	28 0f 	( . 
	ld hl,0f980h		;2ca2	21 80 f9 	! . . 
	ld b,004h		;2ca5	06 04 	. . 
	ld a,(hl)			;2ca7	7e 	~ 
	call 03e3ah		;2ca8	cd 3a 3e 	. : > 
	inc hl			;2cab	23 	# 
	inc hl			;2cac	23 	# 
	inc hl			;2cad	23 	# 
	djnz $-7		;2cae	10 f7 	. . 
	ret			;2cb0	c9 	. 
	call 03ea9h		;2cb1	cd a9 3e 	. . > 
	ld l,02eh		;2cb4	2e 2e 	. . 
	ld l,02eh		;2cb6	2e 2e 	. . 
	inc h			;2cb8	24 	$ 
	ret			;2cb9	c9 	. 
	call 03ea9h		;2cba	cd a9 3e 	. . > 
	ld c,(hl)			;2cbd	4e 	N 
	ld h,c			;2cbe	61 	a 
	ld a,d			;2cbf	7a 	z 
	ld (hl),a			;2cc0	77 	w 
	ld h,c			;2cc1	61 	a 
	di			;2cc2	f3 	. 
	ld l,054h		;2cc3	2e 54 	. T 
	ld a,c			;2cc5	79 	y 
	ld (hl),b			;2cc6	70 	p 
	di			;2cc7	f3 	. 
	ld d,d			;2cc8	52 	R 
	ld h,l			;2cc9	65 	e 
	ld l,e			;2cca	6b 	k 
	jp p,0424bh		;2ccb	f2 4b 42 	. K B 
	jp p,07441h		;2cce	f2 41 74 	. A t 
	ld (hl),d			;2cd1	72 	r 
	inc h			;2cd2	24 	$ 
	bit 0,(ix+010h)		;2cd3	dd cb 10 46 	. . . F 
	jr z,$+14		;2cd7	28 0c 	( . 
	call 03ea9h		;2cd9	cd a9 3e 	. . > 
	push af			;2cdc	f5 	. 
	ld d,l			;2cdd	55 	U 
	ld a,l			;2cde	7d 	} 
	ld a,c			;2cdf	79 	y 
	ld (hl),h			;2ce0	74 	t 
	ld l,e			;2ce1	6b 	k 
	ld l,024h		;2ce2	2e 24 	. $ 
	ret			;2ce4	c9 	. 
	call 03ea9h		;2ce5	cd a9 3e 	. . > 
	ei			;2ce8	fb 	. 
	inc h			;2ce9	24 	$ 
	ret			;2cea	c9 	. 
	call 03fc2h		;2ceb	cd c2 3f 	. . ? 
	ld hl,00000h		;2cee	21 00 00 	! . . 
	ld (0f0e2h),hl		;2cf1	22 e2 f0 	" . . 
	ld hl,00100h		;2cf4	21 00 01 	! . . 
	ld (0f0deh),hl		;2cf7	22 de f0 	" . . 
	ld a,03fh		;2cfa	3e 3f 	> ? 
	ld (0005ch),a		;2cfc	32 5c 00 	2 \ . 
	ld c,011h		;2cff	0e 11 	. . 
	ld de,0005ch		;2d01	11 5c 00 	. \ . 
	call 00005h		;2d04	cd 05 00 	. . . 
	cp 0ffh		;2d07	fe ff 	. . 
	jp z,02d25h		;2d09	ca 25 2d 	. % - 
	call 03fcfh		;2d0c	cd cf 3f 	. . ? 
	ld de,(0f0deh)		;2d0f	ed 5b de f0 	. [ . . 
	ld b,020h		;2d13	06 20 	.   
	call 00011h		;2d15	cd 11 00 	. . . 
	ld (de),a			;2d18	12 	. 
	inc hl			;2d19	23 	# 
	inc de			;2d1a	13 	. 
	djnz $-6		;2d1b	10 f8 	. . 
	ld (0f0deh),de		;2d1d	ed 53 de f0 	. S . . 
	ld c,012h		;2d21	0e 12 	. . 
	jr $-34		;2d23	18 dc 	. . 
	ld hl,00100h		;2d25	21 00 01 	! . . 
	ld de,(0f0deh)		;2d28	ed 5b de f0 	. [ . . 
	dec de			;2d2c	1b 	. 
	call 03c12h		;2d2d	cd 12 3c 	. . < 
	jp c,02e05h		;2d30	da 05 2e 	. . . 
	call 03b44h		;2d33	cd 44 3b 	. D ; 
	jp c,02c04h		;2d36	da 04 2c 	. . , 
	jp 02e05h		;2d39	c3 05 2e 	. . . 
	push bc			;2d3c	c5 	. 
	ld b,02bh		;2d3d	06 2b 	. + 
	ld c,02ah		;2d3f	0e 2a 	. * 
	jr $+7		;2d41	18 05 	. . 
	push bc			;2d43	c5 	. 
	ld b,02dh		;2d44	06 2d 	. - 
	ld c,020h		;2d46	0e 20 	.   
	call 02d4fh		;2d48	cd 4f 2d 	. O - 
	pop bc			;2d4b	c1 	. 
	jp 02bafh		;2d4c	c3 af 2b 	. . + 
	call 039c9h		;2d4f	cd c9 39 	. . 9 
	bit 7,(ix+00dh)		;2d52	dd cb 0d 7e 	. . . ~ 
	jr z,$+9		;2d56	28 07 	( . 
	ld hl,0000ah		;2d58	21 0a 00 	! . . 
	add hl,de			;2d5b	19 	. 
	bit 7,(hl)		;2d5c	cb 7e 	. ~ 
	ret z			;2d5e	c8 	. 
	ld hl,00013h		;2d5f	21 13 00 	! . . 
	add hl,de			;2d62	19 	. 
	ld a,(hl)			;2d63	7e 	~ 
	ld (hl),c			;2d64	71 	q 
	cp c			;2d65	b9 	. 
	ret z			;2d66	c8 	. 
	ld a,b			;2d67	78 	x 
	cp 02bh		;2d68	fe 2b 	. + 
	ld a,(0f0bfh)		;2d6a	3a bf f0 	: . . 
	jr z,$+4		;2d6d	28 02 	( . 
	dec a			;2d6f	3d 	= 
	dec a			;2d70	3d 	= 
	inc a			;2d71	3c 	< 
	ld (0f0bfh),a		;2d72	32 bf f0 	2 . . 
	dec hl			;2d75	2b 	+ 
	dec hl			;2d76	2b 	+ 
	dec hl			;2d77	2b 	+ 
	dec hl			;2d78	2b 	+ 
	ld d,(hl)			;2d79	56 	V 
	dec hl			;2d7a	2b 	+ 
	ld e,(hl)			;2d7b	5e 	^ 
	ex de,hl			;2d7c	eb 	. 
	push hl			;2d7d	e5 	. 
	call 03fa2h		;2d7e	cd a2 3f 	. . ? 
	ex de,hl			;2d81	eb 	. 
	ld a,b			;2d82	78 	x 
	cp 02bh		;2d83	fe 2b 	. + 
	jr z,$+9		;2d85	28 07 	( . 
	xor a			;2d87	af 	. 
	sub e			;2d88	93 	. 
	ld e,a			;2d89	5f 	_ 
	ld a,000h		;2d8a	3e 00 	> . 
	sbc a,d			;2d8c	9a 	. 
	ld d,a			;2d8d	57 	W 
	ld hl,(0f0d3h)		;2d8e	2a d3 f0 	* . . 
	add hl,de			;2d91	19 	. 
	ld (0f0d3h),hl		;2d92	22 d3 f0 	" . . 
	pop hl			;2d95	e1 	. 
	call 03f9eh		;2d96	cd 9e 3f 	. . ? 
	ex de,hl			;2d99	eb 	. 
	ld a,b			;2d9a	78 	x 
	cp 02bh		;2d9b	fe 2b 	. + 
	jr z,$+9		;2d9d	28 07 	( . 
	xor a			;2d9f	af 	. 
	sub e			;2da0	93 	. 
	ld e,a			;2da1	5f 	_ 
	ld a,000h		;2da2	3e 00 	> . 
	sbc a,d			;2da4	9a 	. 
	ld d,a			;2da5	57 	W 
	ld hl,(0f0d5h)		;2da6	2a d5 f0 	* . . 
	add hl,de			;2da9	19 	. 
	ld (0f0d5h),hl		;2daa	22 d5 f0 	" . . 
	ret			;2dad	c9 	. 
	set 7,(ix+00dh)		;2dae	dd cb 0d fe 	. . . . 
	xor a			;2db2	af 	. 
	ld (0f0c1h),a		;2db3	32 c1 f0 	2 . . 
	ld b,02bh		;2db6	06 2b 	. + 
	ld c,02ah		;2db8	0e 2a 	. * 
	call 02d4fh		;2dba	cd 4f 2d 	. O - 
	ld a,(0f0c1h)		;2dbd	3a c1 f0 	: . . 
	inc a			;2dc0	3c 	< 
	cp (ix+005h)		;2dc1	dd be 05 	. . . 
	jp nc,02e05h		;2dc4	d2 05 2e 	. . . 
	ld (0f0c1h),a		;2dc7	32 c1 f0 	2 . . 
	jr $-20		;2dca	18 ea 	. . 
	xor a			;2dcc	af 	. 
	ld (0f0c1h),a		;2dcd	32 c1 f0 	2 . . 
	call 03a0eh		;2dd0	cd 0e 3a 	. . : 
	jr nc,$+6		;2dd3	30 04 	0 . 
	ld (hl),020h		;2dd5	36 20 	6   
	jr $-7		;2dd7	18 f7 	. . 
	call 03fdah		;2dd9	cd da 3f 	. . ? 
	jp 02e05h		;2ddc	c3 05 2e 	. . . 
	ld a,(0f0cah)		;2ddf	3a ca f0 	: . . 
	cpl			;2de2	2f 	/ 
	ld (0f0cah),a		;2de3	32 ca f0 	2 . . 
	jp 02e05h		;2de6	c3 05 2e 	. . . 
	call 03d18h		;2de9	cd 18 3d 	. . = 
	ret c			;2dec	d8 	. 
	cp 03fh		;2ded	fe 3f 	. ? 
	jr z,$+27		;2def	28 19 	( . 
	ld (0f0b8h),a		;2df1	32 b8 f0 	2 . . 
	call 03ad2h		;2df4	cd d2 3a 	. . : 
	xor a			;2df7	af 	. 
	ld (0f0c8h),a		;2df8	32 c8 f0 	2 . . 
	xor a			;2dfb	af 	. 
	ld (0f0c3h),a		;2dfc	32 c3 f0 	2 . . 
	ld (0f0c4h),a		;2dff	32 c4 f0 	2 . . 
	call 035e0h		;2e02	cd e0 35 	. . 5 
	ld (ix+014h),001h		;2e05	dd 36 14 01 	. 6 . . 
	ret			;2e09	c9 	. 
	ld a,e			;2e0a	7b 	{ 
	cp 03fh		;2e0b	fe 3f 	. ? 
	jr z,$-21		;2e0d	28 e9 	( . 
	ld (0f071h),a		;2e0f	32 71 f0 	2 q . 
	call 03b38h		;2e12	cd 38 3b 	. 8 ; 
	xor a			;2e15	af 	. 
	jr $-30		;2e16	18 e0 	. . 
	xor a			;2e18	af 	. 
	ld (0f0c6h),a		;2e19	32 c6 f0 	2 . . 
	call 03ea9h		;2e1c	cd a9 3e 	. . > 
	ld b,c			;2e1f	41 	A 
	ld (hl),h			;2e20	74 	t 
	ld (hl),d			;2e21	72 	r 
	ld a,c			;2e22	79 	y 
	ld h,d			;2e23	62 	b 
	ld (hl),l			;2e24	75 	u 
	ld (hl),h			;2e25	74 	t 
	ld a,c			;2e26	79 	y 
	jr nz,$+42		;2e27	20 28 	  ( 
	ld d,d			;2e29	52 	R 
	inc l			;2e2a	2c 	, 
	ld d,e			;2e2b	53 	S 
	add hl,hl			;2e2c	29 	) 
	jr nz,$+60		;2e2d	20 3a 	  : 
	inc h			;2e2f	24 	$ 
	call 03e05h		;2e30	cd 05 3e 	. . > 
	cp 01bh		;2e33	fe 1b 	. . 
	jp z,035b6h		;2e35	ca b6 35 	. . 5 
	cp 052h		;2e38	fe 52 	. R 
	jr z,$+55		;2e3a	28 35 	( 5 
	cp 053h		;2e3c	fe 53 	. S 
	jr z,$+57		;2e3e	28 37 	( 7 
	cp 020h		;2e40	fe 20 	.   
	jr z,$+7		;2e42	28 05 	( . 
	cp 00dh		;2e44	fe 0d 	. . 
	jp nz,02a44h		;2e46	c2 44 2a 	. D * 
	call 039beh		;2e49	cd be 39 	. . 9 
	call 03a35h		;2e4c	cd 35 3a 	. 5 : 
	ld hl,00009h		;2e4f	21 09 00 	! . . 
	add hl,de			;2e52	19 	. 
	bit 7,(ix+00eh)		;2e53	dd cb 0e 7e 	. . . ~ 
	jr z,$+4		;2e57	28 02 	( . 
	set 7,(hl)		;2e59	cb fe 	. . 
	inc hl			;2e5b	23 	# 
	bit 6,(ix+00eh)		;2e5c	dd cb 0e 76 	. . . v 
	jr z,$+4		;2e60	28 02 	( . 
	set 7,(hl)		;2e62	cb fe 	. . 
	ld c,01eh		;2e64	0e 1e 	. . 
	call 00005h		;2e66	cd 05 00 	. . . 
	call 03a0eh		;2e69	cd 0e 3a 	. . : 
	jr c,$-32		;2e6c	38 de 	8 . 
	jp 02e02h		;2e6e	c3 02 2e 	. . . 
	set 7,(ix+00eh)		;2e71	dd cb 0e fe 	. . . . 
	jr $-69		;2e75	18 b9 	. . 
	set 6,(ix+00eh)		;2e77	dd cb 0e f6 	. . . . 
	jr $-75		;2e7b	18 b3 	. . 
	call 039beh		;2e7d	cd be 39 	. . 9 
	jp c,02f0dh		;2e80	da 0d 2f 	. . / 
	call 02ec2h		;2e83	cd c2 2e 	. . . 
	cp 01bh		;2e86	fe 1b 	. . 
	jp z,035b6h		;2e88	ca b6 35 	. . 5 
	cp 054h		;2e8b	fe 54 	. T 
	ret nz			;2e8d	c0 	. 
	call 03e35h		;2e8e	cd 35 3e 	. 5 > 
	call 02eddh		;2e91	cd dd 2e 	. . . 
	ret c			;2e94	d8 	. 
	call 035e0h		;2e95	cd e0 35 	. . 5 
	ld c,(ix+00ch)		;2e98	dd 4e 0c 	. N . 
	ld a,(0f0bdh)		;2e9b	3a bd f0 	: . . 
	sub c			;2e9e	91 	. 
	jr c,$+19		;2e9f	38 11 	8 . 
	jr z,$+17		;2ea1	28 0f 	( . 
	ld c,a			;2ea3	4f 	O 
	ld a,(0f0c3h)		;2ea4	3a c3 f0 	: . . 
	cp c			;2ea7	b9 	. 
	jp c,02e05h		;2ea8	da 05 2e 	. . . 
	dec a			;2eab	3d 	= 
	ld (0f0c3h),a		;2eac	32 c3 f0 	2 . . 
	jp 02e05h		;2eaf	c3 05 2e 	. . . 
	ld a,c			;2eb2	79 	y 
	or a			;2eb3	b7 	. 
	jr z,$-8		;2eb4	28 f6 	( . 
	ld a,(0f0c4h)		;2eb6	3a c4 f0 	: . . 
	sub 03ch		;2eb9	d6 3c 	. < 
	ld (0f0c4h),a		;2ebb	32 c4 f0 	2 . . 
	ld a,03bh		;2ebe	3e 3b 	> ; 
	jr $-20		;2ec0	18 ea 	. . 
	call 03ea9h		;2ec2	cd a9 3e 	. . > 
	ld l,e			;2ec5	6b 	k 
	ld h,c			;2ec6	61 	a 
	ld (hl),e			;2ec7	73 	s 
	ld l,a			;2ec8	6f 	o 
	ld (hl),a			;2ec9	77 	w 
	ld h,c			;2eca	61 	a 
	ld a,(hl)			;2ecb	7e 	~ 
	jr nz,$+42		;2ecc	20 28 	  ( 
	ld d,h			;2ece	54 	T 
	add hl,hl			;2ecf	29 	) 
	jr nz,$+38		;2ed0	20 24 	  $ 
	call 03e05h		;2ed2	cd 05 3e 	. . > 
	cp 054h		;2ed5	fe 54 	. T 
	push af			;2ed7	f5 	. 
	call 03e38h		;2ed8	cd 38 3e 	. 8 > 
	pop af			;2edb	f1 	. 
	ret			;2edc	c9 	. 
	ld h,d			;2edd	62 	b 
	ld l,e			;2ede	6b 	k 
	inc hl			;2edf	23 	# 
	call 03f01h		;2ee0	cd 01 3f 	. . ? 
	call 03e35h		;2ee3	cd 35 3e 	. 5 > 
	ld hl,00009h		;2ee6	21 09 00 	! . . 
	add hl,de			;2ee9	19 	. 
	bit 7,(hl)		;2eea	cb 7e 	. ~ 
	jr nz,$+23		;2eec	20 15 	  . 
	call 03a35h		;2eee	cd 35 3a 	. 5 : 
	call 03b0eh		;2ef1	cd 0e 3b 	. . ; 
	call 03ea9h		;2ef4	cd a9 3e 	. . > 
	ld (hl),e			;2ef7	73 	s 
	ld l,e			;2ef8	6b 	k 
	ld h,c			;2ef9	61 	a 
	ld (hl),e			;2efa	73 	s 
	ld l,a			;2efb	6f 	o 
	ld (hl),a			;2efc	77 	w 
	ld h,c			;2efd	61 	a 
	ld l,(hl)			;2efe	6e 	n 
	ld a,c			;2eff	79 	y 
	inc h			;2f00	24 	$ 
	or a			;2f01	b7 	. 
	ret			;2f02	c9 	. 
	call 03ea9h		;2f03	cd a9 3e 	. . > 
	rlca			;2f06	07 	. 
	ld d,d			;2f07	52 	R 
	cpl			;2f08	2f 	/ 
	ld c,a			;2f09	4f 	O 
	inc h			;2f0a	24 	$ 
	scf			;2f0b	37 	7 
	ret			;2f0c	c9 	. 
	call 03ea9h		;2f0d	cd a9 3e 	. . > 
	ld c,e			;2f10	4b 	K 
	ld h,c			;2f11	61 	a 
	ld (hl),e			;2f12	73 	s 
	ld l,a			;2f13	6f 	o 
	ld (hl),a			;2f14	77 	w 
	ld h,c			;2f15	61 	a 
	ld a,(hl)			;2f16	7e 	~ 
	jr nz,$+121		;2f17	20 77 	  w 
	ld (hl),e			;2f19	73 	s 
	ld a,d			;2f1a	7a 	z 
	ld a,c			;2f1b	79 	y 
	ld (hl),e			;2f1c	73 	s 
	ld (hl),h			;2f1d	74 	t 
	ld l,e			;2f1e	6b 	k 
	ld l,c			;2f1f	69 	i 
	ld h,l			;2f20	65 	e 
	jr nz,$+65		;2f21	20 3f 	  ? 
	jr nz,$+42		;2f23	20 28 	  ( 
	ld d,h			;2f25	54 	T 
	ld b,c			;2f26	41 	A 
	ld c,e			;2f27	4b 	K 
	add hl,hl			;2f28	29 	) 
	jr nz,$+60		;2f29	20 3a 	  : 
	inc h			;2f2b	24 	$ 
	call 03e05h		;2f2c	cd 05 3e 	. . > 
	cp 01bh		;2f2f	fe 1b 	. . 
	jp z,035b6h		;2f31	ca b6 35 	. . 5 
	cp 054h		;2f34	fe 54 	. T 
	ret nz			;2f36	c0 	. 
	call 03e05h		;2f37	cd 05 3e 	. . > 
	cp 01bh		;2f3a	fe 1b 	. . 
	jp z,035b6h		;2f3c	ca b6 35 	. . 5 
	cp 041h		;2f3f	fe 41 	. A 
	ret nz			;2f41	c0 	. 
	call 03e05h		;2f42	cd 05 3e 	. . > 
	cp 01bh		;2f45	fe 1b 	. . 
	jp z,035b6h		;2f47	ca b6 35 	. . 5 
	cp 04bh		;2f4a	fe 4b 	. K 
	ret nz			;2f4c	c0 	. 
	call 03e69h		;2f4d	cd 69 3e 	. i > 
	call 02eddh		;2f50	cd dd 2e 	. . . 
	call 03a0eh		;2f53	cd 0e 3a 	. . : 
	jr c,$-9		;2f56	38 f5 	8 . 
	call 03e17h		;2f58	cd 17 3e 	. . > 
	jp 02dfbh		;2f5b	c3 fb 2d 	. . - 
	ld (ix+00fh),002h		;2f5e	dd 36 0f 02 	. 6 . . 
	jr $+20		;2f62	18 12 	. . 
	ld a,001h		;2f64	3e 01 	> . 
	ld b,0afh		;2f66	06 af 	. . 
	ld (0f0c7h),a		;2f68	32 c7 f0 	2 . . 
	call 03fc2h		;2f6b	cd c2 3f 	. . ? 
	ld a,(0f26bh)		;2f6e	3a 6b f2 	: k . 
	bit 4,a		;2f71	cb 67 	. g 
	call nz,03ef2h		;2f73	c4 f2 3e 	. . > 
	call 03e65h		;2f76	cd 65 3e 	. e > 
	ld hl,00100h		;2f79	21 00 01 	! . . 
	ld (0f0e2h),hl		;2f7c	22 e2 f0 	" . . 
	call 03ae4h		;2f7f	cd e4 3a 	. . : 
	xor a			;2f82	af 	. 
	ld (0f0d1h),a		;2f83	32 d1 f0 	2 . . 
	ld bc,00020h		;2f86	01 20 00 	.   . 
	call 03a6dh		;2f89	cd 6d 3a 	. m : 
	ld a,c			;2f8c	79 	y 
	cp 020h		;2f8d	fe 20 	.   
	jr z,$+22		;2f8f	28 14 	( . 
	ld hl,(0f0e0h)		;2f91	2a e0 f0 	* . . 
	dec hl			;2f94	2b 	+ 
	ex de,hl			;2f95	eb 	. 
	ld hl,00100h		;2f96	21 00 01 	! . . 
	ld a,(0f0c7h)		;2f99	3a c7 f0 	: . . 
	cp 001h		;2f9c	fe 01 	. . 
	jr nz,$+27		;2f9e	20 19 	  . 
	call 03c36h		;2fa0	cd 36 3c 	. 6 < 
	jr c,$-29		;2fa3	38 e1 	8 . 
	bit 1,(ix+00fh)		;2fa5	dd cb 0f 4e 	. . . N 
	jr nz,$+23		;2fa9	20 15 	  . 
	ld a,(0f26bh)		;2fab	3a 6b f2 	: k . 
	bit 4,a		;2fae	cb 67 	. g 
	call nz,03ee3h		;2fb0	c4 e3 3e 	. . > 
	call 03e69h		;2fb3	cd 69 3e 	. i > 
	jp 02c04h		;2fb6	c3 04 2c 	. . , 
	jr nc,$-51		;2fb9	30 cb 	0 . 
	call 03b44h		;2fbb	cd 44 3b 	. D ; 
	jr $-27		;2fbe	18 e3 	. . 
	call 03ea9h		;2fc0	cd a9 3e 	. . > 
	jr nz,$+82		;2fc3	20 50 	  P 
	ld l,h			;2fc5	6c 	l 
	ld l,c			;2fc6	69 	i 
	ld l,e			;2fc7	6b 	k 
	jr nz,$+114		;2fc8	20 70 	  p 
	ld (hl),d			;2fca	72 	r 
	ld a,d			;2fcb	7a 	z 
	ld h,l			;2fcc	65 	e 
	ld h,e			;2fcd	63 	c 
	ld a,d			;2fce	7a 	z 
	ld a,c			;2fcf	79 	y 
	ld (hl),h			;2fd0	74 	t 
	ld h,c			;2fd1	61 	a 
	ld l,(hl)			;2fd2	6e 	n 
	ld a,c			;2fd3	79 	y 
	inc h			;2fd4	24 	$ 
	call 03ea9h		;2fd5	cd a9 3e 	. . > 
	inc l			;2fd8	2c 	, 
	jr nz,$+117		;2fd9	20 73 	  s 
	ld (hl),l			;2fdb	75 	u 
	ld l,l			;2fdc	6d 	m 
	ld h,c			;2fdd	61 	a 
	jr nz,$+63		;2fde	20 3d 	  = 
	jr nz,$+38		;2fe0	20 24 	  $ 
	ld a,(0f0d1h)		;2fe2	3a d1 f0 	: . . 
	jp 03c1ch		;2fe5	c3 1c 3c 	. . < 
	call 039c6h		;2fe8	cd c6 39 	. . 9 
	ld hl,00009h		;2feb	21 09 00 	! . . 
	add hl,de			;2fee	19 	. 
	bit 7,(hl)		;2fef	cb 7e 	. ~ 
	jr nz,$+85		;2ff1	20 53 	  S 
	call 03a35h		;2ff3	cd 35 3a 	. 5 : 
	call 03c49h		;2ff6	cd 49 3c 	. I < 
	jr c,$+57		;2ff9	38 37 	8 7 
	jr z,$+55		;2ffb	28 35 	( 5 
	ld a,(0f0cbh)		;2ffd	3a cb f0 	: . . 
	or a			;3000	b7 	. 
	jr nz,$+49		;3001	20 2f 	  / 
	ld hl,0f097h		;3003	21 97 f0 	! . . 
	ld de,0f086h		;3006	11 86 f0 	. . . 
	ld bc,0000ch		;3009	01 0c 00 	. . . 
	ldir		;300c	ed b0 	. . 
	ld de,0f086h		;300e	11 86 f0 	. . . 
	ld c,011h		;3011	0e 11 	. . 
	call 00005h		;3013	cd 05 00 	. . . 
	inc a			;3016	3c 	< 
	jr z,$+21		;3017	28 13 	( . 
	call 03ea9h		;3019	cd a9 3e 	. . > 
	jp p,06c50h		;301c	f2 50 6c 	. P l 
	ld l,c			;301f	69 	i 
	ld l,e			;3020	6b 	k 
	jr nz,$+107		;3021	20 69 	  i 
	ld (hl),e			;3023	73 	s 
	ld (hl),h			;3024	74 	t 
	ld l,(hl)			;3025	6e 	n 
	ld l,c			;3026	69 	i 
	ld h,l			;3027	65 	e 
	ld l,d			;3028	6a 	j 
	ld h,l			;3029	65 	e 
	inc h			;302a	24 	$ 
	ret			;302b	c9 	. 
	call 03b30h		;302c	cd 30 3b 	. 0 ; 
	jp 02e02h		;302f	c3 02 2e 	. . . 
	cp 01bh		;3032	fe 1b 	. . 
	jp z,035b6h		;3034	ca b6 35 	. . 5 
	call 03ea9h		;3037	cd a9 3e 	. . > 
	jp p,07c7ah		;303a	f2 7a 7c 	. z | 
	ld h,c			;303d	61 	a 
	jr nz,$+112		;303e	20 6e 	  n 
	ld h,c			;3040	61 	a 
	ld a,d			;3041	7a 	z 
	ld (hl),a			;3042	77 	w 
	ld h,c			;3043	61 	a 
	inc h			;3044	24 	$ 
	ret			;3045	c9 	. 
	call 03ea9h		;3046	cd a9 3e 	. . > 
	rlca			;3049	07 	. 
	ld d,b			;304a	50 	P 
	ld l,h			;304b	6c 	l 
	ld l,c			;304c	69 	i 
	ld l,e			;304d	6b 	k 
	jr nz,$+84		;304e	20 52 	  R 
	cpl			;3050	2f 	/ 
	ld c,a			;3051	4f 	O 
	inc h			;3052	24 	$ 
	ret			;3053	c9 	. 
	call 03d18h		;3054	cd 18 3d 	. . = 
	ret c			;3057	d8 	. 
	cp 03fh		;3058	fe 3f 	. ? 
	jr nz,$+23		;305a	20 15 	  . 
	ld (0f0c5h),a		;305c	32 c5 f0 	2 . . 
	ld (ix+003h),e		;305f	dd 73 03 	. s . 
	ld a,(0f071h)		;3062	3a 71 f0 	: q . 
	cp e			;3065	bb 	. 
	jp z,03d9bh		;3066	ca 9b 3d 	. . = 
	ld a,(0f0b8h)		;3069	3a b8 f0 	: . . 
	ld (0f0b9h),a		;306c	32 b9 f0 	2 . . 
	jr $+5		;306f	18 03 	. . 
	ld (0f0b9h),a		;3071	32 b9 f0 	2 . . 
	call 03ad2h		;3074	cd d2 3a 	. . : 
	call 03ac8h		;3077	cd c8 3a 	. . : 
	call 039beh		;307a	cd be 39 	. . 9 
	call 03a35h		;307d	cd 35 3a 	. 5 : 
	push de			;3080	d5 	. 
	ld h,d			;3081	62 	b 
	ld l,e			;3082	6b 	k 
	push hl			;3083	e5 	. 
	call 03e69h		;3084	cd 69 3e 	. i > 
	inc hl			;3087	23 	# 
	call 03f01h		;3088	cd 01 3f 	. . ? 
	call 03e38h		;308b	cd 38 3e 	. 8 > 
	pop hl			;308e	e1 	. 
	ld de,0f097h		;308f	11 97 f0 	. . . 
	ld bc,0000ch		;3092	01 0c 00 	. . . 
	ldir		;3095	ed b0 	. . 
	call 03adch		;3097	cd dc 3a 	. . : 
	ld a,(0f0b9h)		;309a	3a b9 f0 	: . . 
	ld (0f097h),a		;309d	32 97 f0 	2 . . 
	cp (ix+000h)		;30a0	dd be 00 	. . . 
	jr nz,$+24		;30a3	20 16 	  . 
	bit 0,(ix+00dh)		;30a5	dd cb 0d 46 	. . . F 
	jr nz,$+18		;30a9	20 10 	  . 
	call 03c49h		;30ab	cd 49 3c 	. I < 
	jp c,031beh		;30ae	da be 31 	. . 1 
	jp z,031beh		;30b1	ca be 31 	. . 1 
	ld a,(0f0cbh)		;30b4	3a cb f0 	: . . 
	or a			;30b7	b7 	. 
	jp nz,031beh		;30b8	c2 be 31 	. . 1 
	pop de			;30bb	d1 	. 
	call 03af4h		;30bc	cd f4 3a 	. . : 
	call 031cfh		;30bf	cd cf 31 	. . 1 
	ld a,(0f0bch)		;30c2	3a bc f0 	: . . 
	cp 007h		;30c5	fe 07 	. . 
	jp z,03179h		;30c7	ca 79 31 	. y 1 
	ld de,0f097h		;30ca	11 97 f0 	. . . 
	ld c,011h		;30cd	0e 11 	. . 
	call 00005h		;30cf	cd 05 00 	. . . 
	cp 0ffh		;30d2	fe ff 	. . 
	jr z,$+42		;30d4	28 28 	( ( 
	call 03fcfh		;30d6	cd cf 3f 	. . ? 
	add a,009h		;30d9	c6 09 	. . 
	ld l,a			;30db	6f 	o 
	call 00011h		;30dc	cd 11 00 	. . . 
	bit 7,a		;30df	cb 7f 	.  
	jp nz,031ach		;30e1	c2 ac 31 	. . 1 
	call 03ea9h		;30e4	cd a9 3e 	. . > 
	pop af			;30e7	f1 	. 
	ld l,d			;30e8	6a 	j 
	ld (hl),l			;30e9	75 	u 
	ld a,l			;30ea	7d 	} 
	jr nz,$+107		;30eb	20 69 	  i 
	ld (hl),e			;30ed	73 	s 
	ld (hl),h			;30ee	74 	t 
	ld l,(hl)			;30ef	6e 	n 
	ld l,c			;30f0	69 	i 
	ld h,l			;30f1	65 	e 
	ld l,d			;30f2	6a 	j 
	ld h,l			;30f3	65 	e 
	jr nz,$+47		;30f4	20 2d 	  - 
	jr nz,$+38		;30f6	20 24 	  $ 
	call 02ec2h		;30f8	cd c2 2e 	. . . 
	jp nz,03194h		;30fb	c2 94 31 	. . 1 
	xor a			;30fe	af 	. 
	ld (0f0d1h),a		;30ff	32 d1 f0 	2 . . 
	ld de,0f097h		;3102	11 97 f0 	. . . 
	call 03b24h		;3105	cd 24 3b 	. $ ; 
	call 031cah		;3108	cd ca 31 	. . 1 
	ld bc,00200h		;310b	01 00 02 	. . . 
	call 03a6dh		;310e	cd 6d 3a 	. m : 
	bit 1,b		;3111	cb 48 	. H 
	jr nz,$+31		;3113	20 1d 	  . 
	call 031cfh		;3115	cd cf 31 	. . 1 
	call 03aa6h		;3118	cd a6 3a 	. . : 
	jr nc,$-19		;311b	30 eb 	0 . 
	call 03ea9h		;311d	cd a9 3e 	. . > 
	ld b,d			;3120	42 	B 
	ld (hl),d			;3121	72 	r 
	ld h,c			;3122	61 	a 
	ld l,e			;3123	6b 	k 
	jr nz,$+111		;3124	20 6d 	  m 
	ld l,c			;3126	69 	i 
	ld h,l			;3127	65 	e 
	ld l,d			;3128	6a 	j 
	ld (hl),e			;3129	73 	s 
	ld h,e			;312a	63 	c 
	ld h,c			;312b	61 	a 
	inc h			;312c	24 	$ 
	call 031cah		;312d	cd ca 31 	. . 1 
	jr $+109		;3130	18 6b 	. k 
	call 03adch		;3132	cd dc 3a 	. . : 
	call 031cfh		;3135	cd cf 31 	. . 1 
	ld de,0f097h		;3138	11 97 f0 	. . . 
	call 03b01h		;313b	cd 01 3b 	. . ; 
	jr z,$-33		;313e	28 dd 	( . 
	ld hl,0f097h		;3140	21 97 f0 	! . . 
	ld de,0f076h		;3143	11 76 f0 	. v . 
	ld bc,0000ch		;3146	01 0c 00 	. . . 
	ldir		;3149	ed b0 	. . 
	ex de,hl			;314b	eb 	. 
	ld b,015h		;314c	06 15 	. . 
	ld (hl),000h		;314e	36 00 	6 . 
	inc hl			;3150	23 	# 
	djnz $-3		;3151	10 fb 	. . 
	call 03aedh		;3153	cd ed 3a 	. . : 
	ld c,(ix+019h)		;3156	dd 4e 19 	. N . 
	push bc			;3159	c5 	. 
	xor a			;315a	af 	. 
	ld (0f0d1h),a		;315b	32 d1 f0 	2 . . 
	ld bc,00200h		;315e	01 00 02 	. . . 
	call 03a6dh		;3161	cd 6d 3a 	. m : 
	bit 1,b		;3164	cb 48 	. H 
	jr z,$-8		;3166	28 f6 	( . 
	pop bc			;3168	c1 	. 
	ld a,(0f0d1h)		;3169	3a d1 f0 	: . . 
	cp c			;316c	b9 	. 
	jr z,$+24		;316d	28 16 	( . 
	call 03ea9h		;316f	cd a9 3e 	. . > 
	ld b,d			;3172	42 	B 
	ld e,h			;3173	5c 	\ 
	ld b,c			;3174	41 	A 
	ld b,h			;3175	44 	D 
	inc h			;3176	24 	$ 
	jr $+29		;3177	18 1b 	. . 
	call 03ea9h		;3179	cd a9 3e 	. . > 
	ld (hl),d			;317c	72 	r 
	ld h,c			;317d	61 	a 
	ld l,(hl)			;317e	6e 	n 
	ld h,h			;317f	64 	d 
	ld l,a			;3180	6f 	o 
	ld l,l			;3181	6d 	m 
	inc h			;3182	24 	$ 
	jr $+17		;3183	18 0f 	. . 
	call 03ea9h		;3185	cd a9 3e 	. . > 
	jr nz,$+117		;3188	20 73 	  s 
	ld l,e			;318a	6b 	k 
	ld l,a			;318b	6f 	o 
	ld (hl),b			;318c	70 	p 
	ld l,c			;318d	69 	i 
	ld l,a			;318e	6f 	o 
	ld (hl),a			;318f	77 	w 
	ld h,c			;3190	61 	a 
	ld l,(hl)			;3191	6e 	n 
	ld a,c			;3192	79 	y 
	inc h			;3193	24 	$ 
	call 031cah		;3194	cd ca 31 	. . 1 
	call 03a0eh		;3197	cd 0e 3a 	. . : 
	jp c,0307dh		;319a	da 7d 30 	. } 0 
	call 03e17h		;319d	cd 17 3e 	. . > 
	ld a,(0f0b8h)		;31a0	3a b8 f0 	: . . 
	cp (ix+001h)		;31a3	dd be 01 	. . . 
	jp nz,02e05h		;31a6	c2 05 2e 	. . . 
	jp 02dfbh		;31a9	c3 fb 2d 	. . - 
	call 03ea9h		;31ac	cd a9 3e 	. . > 
	ld l,c			;31af	69 	i 
	ld (hl),e			;31b0	73 	s 
	ld (hl),h			;31b1	74 	t 
	ld l,(hl)			;31b2	6e 	n 
	ld l,c			;31b3	69 	i 
	ld h,l			;31b4	65 	e 
	ld l,d			;31b5	6a 	j 
	ld h,l			;31b6	65 	e 
	jr nz,$+84		;31b7	20 52 	  R 
	cpl			;31b9	2f 	/ 
	ld c,a			;31ba	4f 	O 
	inc h			;31bb	24 	$ 
	jr $-40		;31bc	18 d6 	. . 
	pop de			;31be	d1 	. 
	push af			;31bf	f5 	. 
	call 03032h		;31c0	cd 32 30 	. 2 0 
	pop af			;31c3	f1 	. 
	cp 01bh		;31c4	fe 1b 	. . 
	jr z,$-38		;31c6	28 d8 	( . 
	jr $-43		;31c8	18 d3 	. . 
	ld e,(ix-047h)		;31ca	dd 5e b9 	. ^ . 
	jr $+5		;31cd	18 03 	. . 
	ld e,(ix+003h)		;31cf	dd 5e 03 	. ^ . 
	bit 0,(ix+00dh)		;31d2	dd cb 0d 46 	. . . F 
	ret z			;31d6	c8 	. 
	jp 03b3fh		;31d7	c3 3f 3b 	. ? ; 
	call 03a35h		;31da	cd 35 3a 	. 5 : 
	call 03c5bh		;31dd	cd 5b 3c 	. [ < 
	jp c,03032h		;31e0	da 32 30 	. 2 0 
	push af			;31e3	f5 	. 
	ld hl,0f097h		;31e4	21 97 f0 	! . . 
	ld de,0f0e6h		;31e7	11 e6 f0 	. . . 
	ld bc,0000ch		;31ea	01 0c 00 	. . . 
	ldir		;31ed	ed b0 	. . 
	pop af			;31ef	f1 	. 
	call z,031f6h		;31f0	cc f6 31 	. . 1 
	jp 02dfbh		;31f3	c3 fb 2d 	. . - 
	ld hl,0f0e7h		;31f6	21 e7 f0 	! . . 
	ld b,00bh		;31f9	06 0b 	. . 
	ld (hl),03fh		;31fb	36 3f 	6 ? 
	inc hl			;31fd	23 	# 
	djnz $-3		;31fe	10 fb 	. . 
	ret			;3200	c9 	. 
	ld hl,0f26bh		;3201	21 6b f2 	! k . 
	res 2,(hl)		;3204	cb 96 	. . 
	res 3,(hl)		;3206	cb 9e 	. . 
	ld hl,00003h		;3208	21 03 00 	! . . 
	call 00011h		;320b	cd 11 00 	. . . 
	add a,040h		;320e	c6 40 	. @ 
	ld (hl),a			;3210	77 	w 
	set 7,(ix-048h)		;3211	dd cb b8 fe 	. . . . 
	ret			;3215	c9 	. 
	ld hl,0f26bh		;3216	21 6b f2 	! k . 
	res 2,(hl)		;3219	cb 96 	. . 
	res 3,(hl)		;321b	cb 9e 	. . 
	ld a,(0f070h)		;321d	3a 70 f0 	: p . 
	xor 080h		;3220	ee 80 	. . 
	ld (0f070h),a		;3222	32 70 f0 	2 p . 
	ret			;3225	c9 	. 
	ld a,(0f070h)		;3226	3a 70 f0 	: p . 
	bit 7,a		;3229	cb 7f 	.  
	ret z			;322b	c8 	. 
	call 03ea9h		;322c	cd a9 3e 	. . > 
	ld d,b			;322f	50 	P 
	ld l,c			;3230	69 	i 
	ld (hl),e			;3231	73 	s 
	ld a,d			;3232	7a 	z 
	jr nz,$+124		;3233	20 7a 	  z 
	ld l,(hl)			;3235	6e 	n 
	ld h,c			;3236	61 	a 
	ld l,e			;3237	6b 	k 
	ld l,c			;3238	69 	i 
	jr nz,$+112		;3239	20 6e 	  n 
	ld h,c			;323b	61 	a 
	jr nz,$+102		;323c	20 64 	  d 
	ld (hl),d			;323e	72 	r 
	ld (hl),l			;323f	75 	u 
	ld l,e			;3240	6b 	k 
	ld h,c			;3241	61 	a 
	ld (hl),d			;3242	72 	r 
	ld l,e			;3243	6b 	k 
	ld b,b			;3244	40 	@ 
	jr nz,$+34		;3245	20 20 	    
	jr nz,$+34		;3247	20 20 	    
	ld a,d			;3249	7a 	z 
	ld l,(hl)			;324a	6e 	n 
	ld h,c			;324b	61 	a 
	ld l,e			;324c	6b 	k 
	jr nz,$+42		;324d	20 28 	  ( 
	ld h,e			;324f	63 	c 
	ld (hl),h			;3250	74 	t 
	ld (hl),d			;3251	72 	r 
	ld l,h			;3252	6c 	l 
	add hl,hl			;3253	29 	) 
	ld e,d			;3254	5a 	Z 
	jr nz,$+47		;3255	20 2d 	  - 
	jr nz,$+109		;3257	20 6b 	  k 
	ld l,a			;3259	6f 	o 
	ld l,(hl)			;325a	6e 	n 
	ld l,c			;325b	69 	i 
	ld h,l			;325c	65 	e 
	ld h,e			;325d	63 	c 
	jr nz,$+114		;325e	20 70 	  p 
	ld l,a			;3260	6f 	o 
	ld l,h			;3261	6c 	l 
	ld h,l			;3262	65 	e 
	ld h,e			;3263	63 	c 
	ld h,l			;3264	65 	e 
	ld l,(hl)			;3265	6e 	n 
	ld l,c			;3266	69 	i 
	ld h,c			;3267	61 	a 
	dec c			;3268	0d 	. 
	ld a,(bc)			;3269	0a 	. 
	inc h			;326a	24 	$ 
	call 03dcdh		;326b	cd cd 3d 	. . = 
	cp 01ah		;326e	fe 1a 	. . 
	jp z,02e05h		;3270	ca 05 2e 	. . . 
	ld c,a			;3273	4f 	O 
	cp 020h		;3274	fe 20 	.   
	jr c,$+10		;3276	38 08 	8 . 
	call 0f20ch		;3278	cd 0c f2 	. . . 
	call 0f20fh		;327b	cd 0f f2 	. . . 
	jr $-19		;327e	18 eb 	. . 
	cp 00dh		;3280	fe 0d 	. . 
	jr z,$-10		;3282	28 f4 	( . 
	cp 00ah		;3284	fe 0a 	. . 
	jr z,$-14		;3286	28 f0 	( . 
	push bc			;3288	c5 	. 
	push af			;3289	f5 	. 
	ld c,03ch		;328a	0e 3c 	. < 
	call 0f20ch		;328c	cd 0c f2 	. . . 
	pop af			;328f	f1 	. 
	call 03c1ch		;3290	cd 1c 3c 	. . < 
	ld c,03eh		;3293	0e 3e 	. > 
	call 0f20ch		;3295	cd 0c f2 	. . . 
	pop bc			;3298	c1 	. 
	jr $-30		;3299	18 e0 	. . 
	ld a,(0fb7ch)		;329b	3a 7c fb 	: | . 
	bit 7,a		;329e	cb 7f 	.  
	ret z			;32a0	c8 	. 
	bit 0,a		;32a1	cb 47 	. G 
	jr z,$+32		;32a3	28 1e 	( . 
	call 03ea9h		;32a5	cd a9 3e 	. . > 
	ld b,e			;32a8	43 	C 
	ld a,d			;32a9	7a 	z 
	ld a,c			;32aa	79 	y 
	jr nz,$+124		;32ab	20 7a 	  z 
	ld (hl),a			;32ad	77 	w 
	ld l,a			;32ae	6f 	o 
	ld l,h			;32af	6c 	l 
	ld l,(hl)			;32b0	6e 	n 
	ld l,c			;32b1	69 	i 
	ld a,(hl)			;32b2	7e 	~ 
	jr nz,$+100		;32b3	20 62 	  b 
	ld h,c			;32b5	61 	a 
	ld l,(hl)			;32b6	6e 	n 
	ld l,e			;32b7	6b 	k 
	jr nz,$+51		;32b8	20 31 	  1 
	inc h			;32ba	24 	$ 
	call 03df6h		;32bb	cd f6 3d 	. . = 
	cp 054h		;32be	fe 54 	. T 
	jp nz,035b6h		;32c0	c2 b6 35 	. . 5 
	ld a,0ffh		;32c3	3e ff 	> . 
	call 00017h		;32c5	cd 17 00 	. . . 
	call 03ad2h		;32c8	cd d2 3a 	. . : 
	jp 02e02h		;32cb	c3 02 2e 	. . . 
	ld a,(0fb7ch)		;32ce	3a 7c fb 	: | . 
	bit 7,a		;32d1	cb 7f 	.  
	jp nz,02a44h		;32d3	c2 44 2a 	. D * 
	ld a,007h		;32d6	3e 07 	> . 
	call 03e3ah		;32d8	cd 3a 3e 	. : > 
	ld a,001h		;32db	3e 01 	> . 
	ld b,0afh		;32dd	06 af 	. . 
	ld (0f0e5h),a		;32df	32 e5 f0 	2 . . 
	call 039c6h		;32e2	cd c6 39 	. . 9 
	ld hl,00009h		;32e5	21 09 00 	! . . 
	add hl,de			;32e8	19 	. 
	ld a,(hl)			;32e9	7e 	~ 
	and 07fh		;32ea	e6 7f 	.  
	cp 043h		;32ec	fe 43 	. C 
	jp nz,02a44h		;32ee	c2 44 2a 	. D * 
	inc hl			;32f1	23 	# 
	ld a,(hl)			;32f2	7e 	~ 
	and 07fh		;32f3	e6 7f 	.  
	cp 04fh		;32f5	fe 4f 	. O 
	jp nz,02a44h		;32f7	c2 44 2a 	. D * 
	inc hl			;32fa	23 	# 
	ld a,(hl)			;32fb	7e 	~ 
	and 07fh		;32fc	e6 7f 	.  
	cp 04dh		;32fe	fe 4d 	. M 
	jp nz,02a44h		;3300	c2 44 2a 	. D * 
	call 03a35h		;3303	cd 35 3a 	. 5 : 
	ld h,d			;3306	62 	b 
	ld l,e			;3307	6b 	k 
	call 03e65h		;3308	cd 65 3e 	. e > 
	inc hl			;330b	23 	# 
	ld b,008h		;330c	06 08 	. . 
	call 03f15h		;330e	cd 15 3f 	. . ? 
	call 03e38h		;3311	cd 38 3e 	. 8 > 
	call 03cc5h		;3314	cd c5 3c 	. . < 
	jp c,03032h		;3317	da 32 30 	. 2 0 
	call 03e69h		;331a	cd 69 3e 	. i > 
	xor a			;331d	af 	. 
	ld (0007ch),a		;331e	32 7c 00 	2 | . 
	ld hl,0005ch		;3321	21 5c 00 	! \ . 
	call 03352h		;3324	cd 52 33 	. R 3 
	ld hl,0006ch		;3327	21 6c 00 	! l . 
	call 03352h		;332a	cd 52 33 	. R 3 
	call 03aedh		;332d	cd ed 3a 	. . : 
	jp z,033f1h		;3330	ca f1 33 	. . 3 
	ld a,(0f0e5h)		;3333	3a e5 f0 	: . . 
	call 00017h		;3336	cd 17 00 	. . . 
	jp c,035b6h		;3339	da b6 35 	. . 5 
	call 03a55h		;333c	cd 55 3a 	. U : 
	jp nc,023b3h		;333f	d2 b3 23 	. . # 
	call 023e4h		;3342	cd e4 23 	. . # 
	jp 0f203h		;3345	c3 03 f2 	. . . 
	ld hl,0f076h		;3348	21 76 f0 	! v . 
	call 03352h		;334b	cd 52 33 	. R 3 
	inc c			;334e	0c 	. 
	dec c			;334f	0d 	. 
	ld a,c			;3350	79 	y 
	ret			;3351	c9 	. 
	push hl			;3352	e5 	. 
	call 033aeh		;3353	cd ae 33 	. . 3 
	pop de			;3356	d1 	. 
	ld hl,(0f074h)		;3357	2a 74 f0 	* t . 
	ld c,000h		;335a	0e 00 	. . 
	call 033c0h		;335c	cd c0 33 	. . 3 
	ld (0f072h),hl		;335f	22 72 f0 	" r . 
	ret z			;3362	c8 	. 
	call 00011h		;3363	cd 11 00 	. . . 
	call 03e0eh		;3366	cd 0e 3e 	. . > 
	sub 040h		;3369	d6 40 	. @ 
	ld b,a			;336b	47 	G 
	inc hl			;336c	23 	# 
	call 00011h		;336d	cd 11 00 	. . . 
	cp 03ah		;3370	fe 3a 	. : 
	jr z,$+5		;3372	28 03 	( . 
	dec hl			;3374	2b 	+ 
	jr $+5		;3375	18 03 	. . 
	ld a,b			;3377	78 	x 
	ld (de),a			;3378	12 	. 
	inc hl			;3379	23 	# 
	ld b,008h		;337a	06 08 	. . 
	call 03386h		;337c	cd 86 33 	. . 3 
	ret c			;337f	d8 	. 
	cp 02eh		;3380	fe 2e 	. . 
	ret nz			;3382	c0 	. 
	ld b,003h		;3383	06 03 	. . 
	inc hl			;3385	23 	# 
	call 033cbh		;3386	cd cb 33 	. . 3 
	jr c,$+33		;3389	38 1f 	8 . 
	jr z,$+28		;338b	28 1a 	( . 
	inc de			;338d	13 	. 
	call 03e0eh		;338e	cd 0e 3e 	. . > 
	cp 02ah		;3391	fe 2a 	. * 
	jr nz,$+6		;3393	20 04 	  . 
	inc c			;3395	0c 	. 
	ld a,03fh		;3396	3e 3f 	> ? 
	dec hl			;3398	2b 	+ 
	ld (de),a			;3399	12 	. 
	inc hl			;339a	23 	# 
	djnz $-21		;339b	10 e9 	. . 
	call 033cbh		;339d	cd cb 33 	. . 3 
	jr c,$+10		;33a0	38 08 	8 . 
	jr z,$+8		;33a2	28 06 	( . 
	inc hl			;33a4	23 	# 
	jr $-8		;33a5	18 f6 	. . 
	inc de			;33a7	13 	. 
	djnz $-1		;33a8	10 fd 	. . 
	ld (0f074h),hl		;33aa	22 74 f0 	" t . 
	ret			;33ad	c9 	. 
	ld (hl),000h		;33ae	36 00 	6 . 
	inc hl			;33b0	23 	# 
	ld b,00bh		;33b1	06 0b 	. . 
	ld a,020h		;33b3	3e 20 	>   
	call 033bbh		;33b5	cd bb 33 	. . 3 
	ld b,004h		;33b8	06 04 	. . 
	xor a			;33ba	af 	. 
	ld (hl),a			;33bb	77 	w 
	inc hl			;33bc	23 	# 
	djnz $-2		;33bd	10 fc 	. . 
	ret			;33bf	c9 	. 
	call 00011h		;33c0	cd 11 00 	. . . 
	or a			;33c3	b7 	. 
	ret z			;33c4	c8 	. 
	cp 020h		;33c5	fe 20 	.   
	ret nz			;33c7	c0 	. 
	inc hl			;33c8	23 	# 
	jr $-9		;33c9	18 f5 	. . 
	call 00011h		;33cb	cd 11 00 	. . . 
	cp 03fh		;33ce	fe 3f 	. ? 
	jr nz,$+3		;33d0	20 01 	  . 
	inc c			;33d2	0c 	. 
	or a			;33d3	b7 	. 
	scf			;33d4	37 	7 
	ret z			;33d5	c8 	. 
	cp 03dh		;33d6	fe 3d 	. = 
	ret z			;33d8	c8 	. 
	cp 05fh		;33d9	fe 5f 	. _ 
	ret z			;33db	c8 	. 
	cp 02eh		;33dc	fe 2e 	. . 
	ret z			;33de	c8 	. 
	cp 03ah		;33df	fe 3a 	. : 
	ret z			;33e1	c8 	. 
	cp 03bh		;33e2	fe 3b 	. ; 
	ret z			;33e4	c8 	. 
	cp 03ch		;33e5	fe 3c 	. < 
	ret z			;33e7	c8 	. 
	cp 03eh		;33e8	fe 3e 	. > 
	ret z			;33ea	c8 	. 
	cp 020h		;33eb	fe 20 	.   
	ret z			;33ed	c8 	. 
	scf			;33ee	37 	7 
	ccf			;33ef	3f 	? 
	ret			;33f0	c9 	. 
	call 03ea9h		;33f1	cd a9 3e 	. . > 
	ld a,(bc)			;33f4	0a 	. 
	ld d,b			;33f5	50 	P 
	ld l,h			;33f6	6c 	l 
	ld l,c			;33f7	69 	i 
	ld l,e			;33f8	6b 	k 
	jr nz,$+112		;33f9	20 6e 	  n 
	ld l,c			;33fb	69 	i 
	ld h,l			;33fc	65 	e 
	jr nz,$+124		;33fd	20 7a 	  z 
	ld l,(hl)			;33ff	6e 	n 
	ld h,c			;3400	61 	a 
	ld l,h			;3401	6c 	l 
	ld h,l			;3402	65 	e 
	ld a,d			;3403	7a 	z 
	ld l,c			;3404	69 	i 
	ld l,a			;3405	6f 	o 
	ld l,(hl)			;3406	6e 	n 
	ld a,c			;3407	79 	y 
	ld a,(bc)			;3408	0a 	. 
	ld a,(bc)			;3409	0a 	. 
	inc h			;340a	24 	$ 
	jp 02b19h		;340b	c3 19 2b 	. . + 
	ld a,(0f0b8h)		;340e	3a b8 f0 	: . . 
	dec a			;3411	3d 	= 
	ret nz			;3412	c0 	. 
	ld a,(0f26bh)		;3413	3a 6b f2 	: k . 
	bit 2,a		;3416	cb 57 	. W 
	ret nz			;3418	c0 	. 
	ld hl,0f070h		;3419	21 70 f0 	! p . 
	bit 7,(hl)		;341c	cb 7e 	. ~ 
	ret z			;341e	c8 	. 
	res 7,(hl)		;341f	cb be 	. . 
	ld hl,0fb80h		;3421	21 80 fb 	! . . 
	ld b,080h		;3424	06 80 	. . 
	ld (hl),000h		;3426	36 00 	6 . 
	inc hl			;3428	23 	# 
	djnz $-3		;3429	10 fb 	. . 
	call 039c6h		;342b	cd c6 39 	. . 9 
	ld hl,00010h		;342e	21 10 00 	! . . 
	add hl,de			;3431	19 	. 
	ld a,(hl)			;3432	7e 	~ 
	cp 007h		;3433	fe 07 	. . 
	ret z			;3435	c8 	. 
	call 03a35h		;3436	cd 35 3a 	. 5 : 
	ld de,0fb80h		;3439	11 80 fb 	. . . 
	ld c,0ffh		;343c	0e ff 	. . 
	call 0348fh		;343e	cd 8f 34 	. . 4 
	or a			;3441	b7 	. 
	jr z,$+39		;3442	28 25 	( % 
	push af			;3444	f5 	. 
	ex de,hl			;3445	eb 	. 
	ld a,(0fbfdh)		;3446	3a fd fb 	: . . 
	or a			;3449	b7 	. 
	jr z,$+58		;344a	28 38 	( 8 
	cp b			;344c	b8 	. 
	jr nz,$+53		;344d	20 33 	  3 
	add a,008h		;344f	c6 08 	. . 
	ld (0fbfdh),a		;3451	32 fd fb 	2 . . 
	pop af			;3454	f1 	. 
	inc hl			;3455	23 	# 
	add a,(hl)			;3456	86 	. 
	ld (hl),a			;3457	77 	w 
	dec hl			;3458	2b 	+ 
	bit 7,a		;3459	cb 7f 	.  
	jr z,$+8		;345b	28 06 	( . 
	inc hl			;345d	23 	# 
	inc hl			;345e	23 	# 
	xor a			;345f	af 	. 
	ld (0fbfdh),a		;3460	32 fd fb 	2 . . 
	ex de,hl			;3463	eb 	. 
	ld a,e			;3464	7b 	{ 
	cp 0f8h		;3465	fe f8 	. . 
	jr c,$-41		;3467	38 d5 	8 . 
	ld a,(0fb80h)		;3469	3a 80 fb 	: . . 
	or a			;346c	b7 	. 
	ret z			;346d	c8 	. 
	ld hl,0f26bh		;346e	21 6b f2 	! k . 
	set 2,(hl)		;3471	cb d6 	. . 
	ld hl,(0f279h)		;3473	2a 79 f2 	* y . 
	xor a			;3476	af 	. 
	dec hl			;3477	2b 	+ 
	ld (hl),a			;3478	77 	w 
	dec hl			;3479	2b 	+ 
	ld (hl),a			;347a	77 	w 
	dec hl			;347b	2b 	+ 
	ld (hl),a			;347c	77 	w 
	res 7,(ix-048h)		;347d	dd cb b8 be 	. . . . 
	ret			;3481	c9 	. 
	inc hl			;3482	23 	# 
	inc hl			;3483	23 	# 
	ld (hl),b			;3484	70 	p 
	ld a,b			;3485	78 	x 
	add a,008h		;3486	c6 08 	. . 
	ld (0fbfdh),a		;3488	32 fd fb 	2 . . 
	pop af			;348b	f1 	. 
	inc hl			;348c	23 	# 
	jr $-54		;348d	18 c8 	. . 
	bit 7,c		;348f	cb 79 	. y 
	jr z,$+36		;3491	28 22 	( " 
	ld c,011h		;3493	0e 11 	. . 
	push de			;3495	d5 	. 
	ld de,0f076h		;3496	11 76 f0 	. v . 
	call 00005h		;3499	cd 05 00 	. . . 
	ld hl,0f082h		;349c	21 82 f0 	! . . 
	inc (hl)			;349f	34 	4 
	inc (hl)			;34a0	34 	4 
	pop de			;34a1	d1 	. 
	inc a			;34a2	3c 	< 
	ret z			;34a3	c8 	. 
	dec a			;34a4	3d 	= 
	call 03fcfh		;34a5	cd cf 3f 	. . ? 
	ld bc,0000fh		;34a8	01 0f 00 	. . . 
	add hl,bc			;34ab	09 	. 
	call 00011h		;34ac	cd 11 00 	. . . 
	or a			;34af	b7 	. 
	ret z			;34b0	c8 	. 
	ld (0fbfah),a		;34b1	32 fa fb 	2 . . 
	inc hl			;34b4	23 	# 
	call 00011h		;34b5	cd 11 00 	. . . 
	or a			;34b8	b7 	. 
	ret z			;34b9	c8 	. 
	ld a,(0f2b8h)		;34ba	3a b8 f2 	: . . 
	ld b,a			;34bd	47 	G 
	add a,a			;34be	87 	. 
	add a,a			;34bf	87 	. 
	add a,a			;34c0	87 	. 
	add a,a			;34c1	87 	. 
	sub b			;34c2	90 	. 
	ld b,a			;34c3	47 	G 
	call 00011h		;34c4	cd 11 00 	. . . 
	add a,b			;34c7	80 	. 
	ld b,000h		;34c8	06 00 	. . 
	sub 01eh		;34ca	d6 1e 	. . 
	jr c,$+5		;34cc	38 03 	8 . 
	inc b			;34ce	04 	. 
	jr $-5		;34cf	18 f9 	. . 
	add a,01eh		;34d1	c6 1e 	. . 
	or a			;34d3	b7 	. 
	rlca			;34d4	07 	. 
	rlca			;34d5	07 	. 
	rlca			;34d6	07 	. 
	add a,b			;34d7	80 	. 
	xor 007h		;34d8	ee 07 	. . 
	ld b,a			;34da	47 	G 
	dec c			;34db	0d 	. 
	jp m,034f0h		;34dc	fa f0 34 	. . 4 
	inc hl			;34df	23 	# 
	call 00011h		;34e0	cd 11 00 	. . . 
	or a			;34e3	b7 	. 
	ld a,010h		;34e4	3e 10 	> . 
	ret nz			;34e6	c0 	. 
	ld a,(0fbfah)		;34e7	3a fa fb 	: . . 
	and 00fh		;34ea	e6 0f 	. . 
	ret nz			;34ec	c0 	. 
	ld a,010h		;34ed	3e 10 	> . 
	ret			;34ef	c9 	. 
	ld a,(0fbfah)		;34f0	3a fa fb 	: . . 
	cp 080h		;34f3	fe 80 	. . 
	ld a,010h		;34f5	3e 10 	> . 
	ret z			;34f7	c8 	. 
	jr $-17		;34f8	18 ed 	. . 
	ld hl,0f26bh		;34fa	21 6b f2 	! k . 
	call 03ea9h		;34fd	cd a9 3e 	. . > 
	dec c			;3500	0d 	. 
	jr nz,$+69		;3501	20 43 	  C 
	ld a,d			;3503	7a 	z 
	ld a,c			;3504	79 	y 
	jr nz,$+118		;3505	20 74 	  t 
	ld h,l			;3507	65 	e 
	ld l,e			;3508	6b 	k 
	ld (hl),e			;3509	73 	s 
	ld (hl),h			;350a	74 	t 
	jr nz,$+124		;350b	20 7a 	  z 
	ld h,c			;350d	61 	a 
	ld (hl),a			;350e	77 	w 
	ld l,c			;350f	69 	i 
	ld h,l			;3510	65 	e 
	ld (hl),d			;3511	72 	r 
	ld h,c			;3512	61 	a 
	inc h			;3513	24 	$ 
	call 035beh		;3514	cd be 35 	. . 5 
	call 03df6h		;3517	cd f6 3d 	. . = 
	cp 01bh		;351a	fe 1b 	. . 
	jp z,035b6h		;351c	ca b6 35 	. . 5 
	res 4,(hl)		;351f	cb a6 	. . 
	cp 054h		;3521	fe 54 	. T 
	jr nz,$+4		;3523	20 02 	  . 
	set 4,(hl)		;3525	cb e6 	. . 
	call 03ea9h		;3527	cd a9 3e 	. . > 
	dec c			;352a	0d 	. 
	jr nz,$+69		;352b	20 43 	  C 
	ld a,d			;352d	7a 	z 
	ld a,c			;352e	79 	y 
	jr nz,$+102		;352f	20 64 	  d 
	ld (hl),d			;3531	72 	r 
	ld (hl),l			;3532	75 	u 
	ld l,e			;3533	6b 	k 
	ld h,c			;3534	61 	a 
	ld (hl),d			;3535	72 	r 
	ld l,e			;3536	6b 	k 
	ld h,c			;3537	61 	a 
	jr nz,$+111		;3538	20 6d 	  m 
	ld h,c			;353a	61 	a 
	inc h			;353b	24 	$ 
	call 035beh		;353c	cd be 35 	. . 5 
	call 03df6h		;353f	cd f6 3d 	. . = 
	cp 01bh		;3542	fe 1b 	. . 
	jp z,035b6h		;3544	ca b6 35 	. . 5 
	res 5,(hl)		;3547	cb ae 	. . 
	cp 054h		;3549	fe 54 	. T 
	jr nz,$+4		;354b	20 02 	  . 
	set 5,(hl)		;354d	cb ee 	. . 
	call 03ea9h		;354f	cd a9 3e 	. . > 
	dec c			;3552	0d 	. 
	jr nz,$+69		;3553	20 43 	  C 
	ld a,d			;3555	7a 	z 
	ld a,c			;3556	79 	y 
	jr nz,$+121		;3557	20 77 	  w 
	ld a,c			;3559	79 	y 
	ld (hl),e			;355a	73 	s 
	ld a,c			;355b	79 	y 
	ld a,h			;355c	7c 	| 
	ld h,c			;355d	61 	a 
	ld a,(hl)			;355e	7e 	~ 
	jr nz,$+125		;355f	20 7b 	  { 
	ld (hl),e			;3561	73 	s 
	ld l,l			;3562	6d 	m 
	ld a,c			;3563	79 	y 
	jr nz,$+100		;3564	20 62 	  b 
	ld l,c			;3566	69 	i 
	ld (hl),h			;3567	74 	t 
	jr nz,$+114		;3568	20 70 	  p 
	ld l,a			;356a	6f 	o 
	ld h,h			;356b	64 	d 
	ld h,e			;356c	63 	c 
	ld a,d			;356d	7a 	z 
	ld h,c			;356e	61 	a 
	ld (hl),e			;356f	73 	s 
	jr nz,$+102		;3570	20 64 	  d 
	ld (hl),d			;3572	72 	r 
	ld (hl),l			;3573	75 	u 
	ld l,e			;3574	6b 	k 
	ld l,a			;3575	6f 	o 
	ld (hl),a			;3576	77 	w 
	ld h,c			;3577	61 	a 
	ld l,(hl)			;3578	6e 	n 
	ld l,c			;3579	69 	i 
	ld h,c			;357a	61 	a 
	jr nz,$+38		;357b	20 24 	  $ 
	call 03df6h		;357d	cd f6 3d 	. . = 
	cp 01bh		;3580	fe 1b 	. . 
	jr z,$+52		;3582	28 32 	( 2 
	res 1,(hl)		;3584	cb 8e 	. . 
	cp 054h		;3586	fe 54 	. T 
	jr z,$+4		;3588	28 02 	( . 
	set 1,(hl)		;358a	cb ce 	. . 
	call 03ea9h		;358c	cd a9 3e 	. . > 
	dec c			;358f	0d 	. 
	jr nz,$+69		;3590	20 43 	  C 
	ld a,d			;3592	7a 	z 
	ld a,c			;3593	79 	y 
	jr nz,$+121		;3594	20 77 	  w 
	ld a,c			;3596	79 	y 
	ld (hl),e			;3597	73 	s 
	ld a,c			;3598	79 	y 
	ld a,h			;3599	7c 	| 
	ld h,c			;359a	61 	a 
	ld a,(hl)			;359b	7e 	~ 
	jr nz,$+124		;359c	20 7a 	  z 
	ld l,(hl)			;359e	6e 	n 
	ld h,c			;359f	61 	a 
	ld l,e			;35a0	6b 	k 
	jr nz,$+86		;35a1	20 54 	  T 
	ld b,c			;35a3	41 	A 
	ld b,d			;35a4	42 	B 
	jr nz,$+38		;35a5	20 24 	  $ 
	call 03df6h		;35a7	cd f6 3d 	. . = 
	cp 01bh		;35aa	fe 1b 	. . 
	jr z,$+10		;35ac	28 08 	( . 
	res 0,(hl)		;35ae	cb 86 	. . 
	cp 054h		;35b0	fe 54 	. T 
	jr nz,$+4		;35b2	20 02 	  . 
	set 0,(hl)		;35b4	cb c6 	. . 
	call 03ea9h		;35b6	cd a9 3e 	. . > 
	dec c			;35b9	0d 	. 
	dec de			;35ba	1b 	. 
	ld c,e			;35bb	4b 	K 
	inc h			;35bc	24 	$ 
	ret			;35bd	c9 	. 
	call 03ea9h		;35be	cd a9 3e 	. . > 
	jr nz,$+110		;35c1	20 6c 	  l 
	ld l,c			;35c3	69 	i 
	ld (hl),h			;35c4	74 	t 
	ld h,l			;35c5	65 	e 
	ld (hl),d			;35c6	72 	r 
	ld a,c			;35c7	79 	y 
	jr nz,$+34		;35c8	20 20 	    
	ld h,b			;35ca	60 	` 
	jr nz,$+66		;35cb	20 40 	  @ 
	jr nz,$+96		;35cd	20 5e 	  ^ 
	jr nz,$+128		;35cf	20 7e 	  ~ 
	jr nz,$+95		;35d1	20 5d 	  ] 
	jr nz,$+127		;35d3	20 7d 	  } 
	jr nz,$+125		;35d5	20 7b 	  { 
	jr nz,$+93		;35d7	20 5b 	  [ 
	jr nz,$+126		;35d9	20 7c 	  | 
	jr nz,$+94		;35db	20 5c 	  \ 
	jr nz,$+38		;35dd	20 24 	  $ 
	ret			;35df	c9 	. 
	call 03fdah		;35e0	cd da 3f 	. . ? 
	ld (0f0bdh),a		;35e3	32 bd f0 	2 . . 
	call 03ac8h		;35e6	cd c8 3a 	. . : 
	ld c,01fh		;35e9	0e 1f 	. . 
	call 00005h		;35eb	cd 05 00 	. . . 
	inc hl			;35ee	23 	# 
	inc hl			;35ef	23 	# 
	ld a,(hl)			;35f0	7e 	~ 
	ld (0f0d7h),a		;35f1	32 d7 f0 	2 . . 
	inc hl			;35f4	23 	# 
	ld a,(hl)			;35f5	7e 	~ 
	ld (0f0d8h),a		;35f6	32 d8 f0 	2 . . 
	inc hl			;35f9	23 	# 
	ld a,(hl)			;35fa	7e 	~ 
	ld (0f0d9h),a		;35fb	32 d9 f0 	2 . . 
	inc hl			;35fe	23 	# 
	ld e,(hl)			;35ff	5e 	^ 
	inc hl			;3600	23 	# 
	ld d,(hl)			;3601	56 	V 
	inc de			;3602	13 	. 
	ex de,hl			;3603	eb 	. 
	ld (0f0dah),hl		;3604	22 da f0 	" . . 
	call 03adch		;3607	cd dc 3a 	. . : 
	ld a,(0f0c8h)		;360a	3a c8 f0 	: . . 
	ld (0005ch),a		;360d	32 5c 00 	2 \ . 
	ld hl,0005dh		;3610	21 5d 00 	! ] . 
	ld b,00ch		;3613	06 0c 	. . 
	ld (hl),03fh		;3615	36 3f 	6 ? 
	inc hl			;3617	23 	# 
	djnz $-3		;3618	10 fb 	. . 
	inc hl			;361a	23 	# 
	ld (hl),03fh		;361b	36 3f 	6 ? 
	ld de,0db00h		;361d	11 00 db 	. . . 
	ld c,011h		;3620	0e 11 	. . 
	push de			;3622	d5 	. 
	ld de,0005ch		;3623	11 5c 00 	. \ . 
	call 00005h		;3626	cd 05 00 	. . . 
	pop de			;3629	d1 	. 
	cp 0ffh		;362a	fe ff 	. . 
	jp z,03707h		;362c	ca 07 37 	. . 7 
	call 03fcfh		;362f	cd cf 3f 	. . ? 
	call 00011h		;3632	cd 11 00 	. . . 
	cp 0e5h		;3635	fe e5 	. . 
	jp z,036feh		;3637	ca fe 36 	. . 6 
	push de			;363a	d5 	. 
	push hl			;363b	e5 	. 
	ld de,0f0e7h		;363c	11 e7 f0 	. . . 
	inc hl			;363f	23 	# 
	ld b,00bh		;3640	06 0b 	. . 
	ld a,(de)			;3642	1a 	. 
	cp 03fh		;3643	fe 3f 	. ? 
	jr z,$+12		;3645	28 0a 	( . 
	ld c,a			;3647	4f 	O 
	call 00011h		;3648	cd 11 00 	. . . 
	and 07fh		;364b	e6 7f 	.  
	cp c			;364d	b9 	. 
	jp nz,03703h		;364e	c2 03 37 	. . 7 
	inc hl			;3651	23 	# 
	inc de			;3652	13 	. 
	djnz $-17		;3653	10 ed 	. . 
	pop hl			;3655	e1 	. 
	pop de			;3656	d1 	. 
	ld b,010h		;3657	06 10 	. . 
	call 00011h		;3659	cd 11 00 	. . . 
	ld (de),a			;365c	12 	. 
	inc hl			;365d	23 	# 
	inc de			;365e	13 	. 
	djnz $-6		;365f	10 f8 	. . 
	push de			;3661	d5 	. 
	push hl			;3662	e5 	. 
	ex de,hl			;3663	eb 	. 
	dec hl			;3664	2b 	+ 
	dec hl			;3665	2b 	+ 
	ld a,(hl)			;3666	7e 	~ 
	rrca			;3667	0f 	. 
	rrca			;3668	0f 	. 
	rrca			;3669	0f 	. 
	ld c,a			;366a	4f 	O 
	and 001h		;366b	e6 01 	. . 
	ld b,a			;366d	47 	G 
	ld a,c			;366e	79 	y 
	and 0e0h		;366f	e6 e0 	. . 
	dec hl			;3671	2b 	+ 
	dec hl			;3672	2b 	+ 
	or (hl)			;3673	b6 	. 
	ld c,a			;3674	4f 	O 
	ld a,(0f0d9h)		;3675	3a d9 f0 	: . . 
	push af			;3678	f5 	. 
	and (hl)			;3679	a6 	. 
	ld e,a			;367a	5f 	_ 
	pop af			;367b	f1 	. 
	or a			;367c	b7 	. 
	jr z,$+12		;367d	28 0a 	( . 
	push af			;367f	f5 	. 
	or a			;3680	b7 	. 
	rr b		;3681	cb 18 	. . 
	rr c		;3683	cb 19 	. . 
	pop af			;3685	f1 	. 
	rra			;3686	1f 	. 
	jr $-11		;3687	18 f3 	. . 
	ld (hl),b			;3689	70 	p 
	inc hl			;368a	23 	# 
	ld (hl),c			;368b	71 	q 
	inc hl			;368c	23 	# 
	inc hl			;368d	23 	# 
	ld a,(hl)			;368e	7e 	~ 
	rla			;368f	17 	. 
	ld d,a			;3690	57 	W 
	ld a,000h		;3691	3e 00 	> . 
	adc a,e			;3693	8b 	. 
	or a			;3694	b7 	. 
	rra			;3695	1f 	. 
	ld (hl),a			;3696	77 	w 
	dec hl			;3697	2b 	+ 
	ld a,d			;3698	7a 	z 
	rra			;3699	1f 	. 
	ld (hl),a			;369a	77 	w 
	inc hl			;369b	23 	# 
	ld d,000h		;369c	16 00 	. . 
	ld c,000h		;369e	0e 00 	. . 
	ld a,(0f0d9h)		;36a0	3a d9 f0 	: . . 
	inc a			;36a3	3c 	< 
	or a			;36a4	b7 	. 
	rra			;36a5	1f 	. 
	rr c		;36a6	cb 19 	. . 
	cp (hl)			;36a8	be 	. 
	jr nz,$+7		;36a9	20 05 	  . 
	dec hl			;36ab	2b 	+ 
	ld a,(hl)			;36ac	7e 	~ 
	cp c			;36ad	b9 	. 
	jr z,$+4		;36ae	28 02 	( . 
	set 0,d		;36b0	cb c2 	. . 
	pop hl			;36b2	e1 	. 
	ld bc,00000h		;36b3	01 00 00 	. . . 
	ld a,(0f0dbh)		;36b6	3a db f0 	: . . 
	or a			;36b9	b7 	. 
	ld e,010h		;36ba	1e 10 	. . 
	jr z,$+4		;36bc	28 02 	( . 
	ld e,008h		;36be	1e 08 	. . 
	call 00011h		;36c0	cd 11 00 	. . . 
	ld (0f0e5h),a		;36c3	32 e5 f0 	2 . . 
	ld a,(0f0dbh)		;36c6	3a db f0 	: . . 
	or a			;36c9	b7 	. 
	ld a,(0f0e5h)		;36ca	3a e5 f0 	: . . 
	jr z,$+9		;36cd	28 07 	( . 
	inc hl			;36cf	23 	# 
	call 00011h		;36d0	cd 11 00 	. . . 
	or (ix+02dh)		;36d3	dd b6 2d 	. . - 
	or a			;36d6	b7 	. 
	jr z,$+11		;36d7	28 09 	( . 
	inc c			;36d9	0c 	. 
	inc b			;36da	04 	. 
	dec b			;36db	05 	. 
	jr z,$+11		;36dc	28 09 	( . 
	ld b,007h		;36de	06 07 	. . 
	jr $+7		;36e0	18 05 	. . 
	inc b			;36e2	04 	. 
	djnz $+4		;36e3	10 02 	. . 
	ld b,001h		;36e5	06 01 	. . 
	inc hl			;36e7	23 	# 
	dec e			;36e8	1d 	. 
	jr nz,$-41		;36e9	20 d5 	  . 
	pop hl			;36eb	e1 	. 
	ld a,d			;36ec	7a 	z 
	or b			;36ed	b0 	. 
	ld (hl),a			;36ee	77 	w 
	inc hl			;36ef	23 	# 
	ld (hl),c			;36f0	71 	q 
	inc hl			;36f1	23 	# 
	ld (hl),000h		;36f2	36 00 	6 . 
	inc hl			;36f4	23 	# 
	ld a,(0f0bdh)		;36f5	3a bd f0 	: . . 
	ld (hl),a			;36f8	77 	w 
	inc hl			;36f9	23 	# 
	ex de,hl			;36fa	eb 	. 
	inc (ix+005h)		;36fb	dd 34 05 	. 4 . 
	ld c,012h		;36fe	0e 12 	. . 
	jp 03622h		;3700	c3 22 36 	. " 6 
	pop hl			;3703	e1 	. 
	pop de			;3704	d1 	. 
	jr $-7		;3705	18 f7 	. . 
	ex de,hl			;3707	eb 	. 
	ld b,03ch		;3708	06 3c 	. < 
	ld (hl),0ffh		;370a	36 ff 	6 . 
	inc hl			;370c	23 	# 
	djnz $-3		;370d	10 fb 	. . 
	ld (0f0dch),hl		;370f	22 dc f0 	" . . 
	ld a,(0f0bdh)		;3712	3a bd f0 	: . . 
	inc a			;3715	3c 	< 
	ld (0f0beh),a		;3716	32 be f0 	2 . . 
	ld hl,0db00h		;3719	21 00 db 	! . . 
	ld b,000h		;371c	06 00 	. . 
	call 0383ah		;371e	cd 3a 38 	. : 8 
	jr c,$+34		;3721	38 20 	8   
	inc c			;3723	0c 	. 
	jr nz,$+12		;3724	20 0a 	  . 
	push hl			;3726	e5 	. 
	ld de,00010h		;3727	11 10 00 	. . . 
	add hl,de			;372a	19 	. 
	ld (hl),007h		;372b	36 07 	6 . 
	pop hl			;372d	e1 	. 
	jr $+21		;372e	18 13 	. . 
	push hl			;3730	e5 	. 
	ex de,hl			;3731	eb 	. 
	ld hl,00014h		;3732	21 14 00 	! . . 
	ld b,l			;3735	45 	E 
	add hl,de			;3736	19 	. 
	ld a,(de)			;3737	1a 	. 
	ld c,a			;3738	4f 	O 
	ld a,(hl)			;3739	7e 	~ 
	ld (de),a			;373a	12 	. 
	ld (hl),c			;373b	71 	q 
	inc de			;373c	13 	. 
	inc hl			;373d	23 	# 
	djnz $-7		;373e	10 f7 	. . 
	ld b,0ffh		;3740	06 ff 	. . 
	pop hl			;3742	e1 	. 
	ex de,hl			;3743	eb 	. 
	ld hl,00014h		;3744	21 14 00 	! . . 
	add hl,de			;3747	19 	. 
	ld a,(hl)			;3748	7e 	~ 
	cp 0ffh		;3749	fe ff 	. . 
	jr nz,$-45		;374b	20 d1 	  . 
	ld a,b			;374d	78 	x 
	or a			;374e	b7 	. 
	jr nz,$-54		;374f	20 c8 	  . 
	ld hl,0db00h		;3751	21 00 db 	! . . 
	xor a			;3754	af 	. 
	ld (0f0c9h),a		;3755	32 c9 f0 	2 . . 
	ld a,(hl)			;3758	7e 	~ 
	cp 0ffh		;3759	fe ff 	. . 
	jp z,037f7h		;375b	ca f7 37 	. . 7 
	push hl			;375e	e5 	. 
	call 0383ah		;375f	cd 3a 38 	. : 8 
	ld de,0000ch		;3762	11 0c 00 	. . . 
	add hl,de			;3765	19 	. 
	ld a,(0f0c9h)		;3766	3a c9 f0 	: . . 
	or a			;3769	b7 	. 
	jr nz,$+14		;376a	20 0c 	  . 
	push hl			;376c	e5 	. 
	ld a,(hl)			;376d	7e 	~ 
	inc hl			;376e	23 	# 
	or (hl)			;376f	b6 	. 
	jr z,$+7		;3770	28 05 	( . 
	inc hl			;3772	23 	# 
	inc hl			;3773	23 	# 
	inc hl			;3774	23 	# 
	ld (hl),007h		;3775	36 07 	6 . 
	pop hl			;3777	e1 	. 
	ld a,c			;3778	79 	y 
	or a			;3779	b7 	. 
	jp m,037a7h		;377a	fa a7 37 	. . 7 
	jr z,$+42		;377d	28 28 	( ( 
	dec a			;377f	3d 	= 
	jr z,$+39		;3780	28 25 	( % 
	xor a			;3782	af 	. 
	ld (0f0c9h),a		;3783	32 c9 f0 	2 . . 
	pop hl			;3786	e1 	. 
	ld de,00014h		;3787	11 14 00 	. . . 
	add hl,de			;378a	19 	. 
	push hl			;378b	e5 	. 
	dec hl			;378c	2b 	+ 
	dec hl			;378d	2b 	+ 
	ld d,(hl)			;378e	56 	V 
	dec hl			;378f	2b 	+ 
	ld e,(hl)			;3790	5e 	^ 
	dec hl			;3791	2b 	+ 
	ld a,(hl)			;3792	7e 	~ 
	cp 007h		;3793	fe 07 	. . 
	jr nz,$+15		;3795	20 0d 	  . 
	ex de,hl			;3797	eb 	. 
	ld a,(0f0d7h)		;3798	3a d7 f0 	: . . 
	add hl,hl			;379b	29 	) 
	dec a			;379c	3d 	= 
	jr nz,$-2		;379d	20 fc 	  . 
	ex de,hl			;379f	eb 	. 
	dec hl			;37a0	2b 	+ 
	ld (hl),d			;37a1	72 	r 
	dec hl			;37a2	2b 	+ 
	ld (hl),e			;37a3	73 	s 
	pop hl			;37a4	e1 	. 
	jr $-77		;37a5	18 b1 	. . 
	ld (ix+011h),001h		;37a7	dd 36 11 01 	. 6 . . 
	ex de,hl			;37ab	eb 	. 
	ld hl,00014h		;37ac	21 14 00 	! . . 
	add hl,de			;37af	19 	. 
	ex de,hl			;37b0	eb 	. 
	ld a,(de)			;37b1	1a 	. 
	ld b,a			;37b2	47 	G 
	inc de			;37b3	13 	. 
	ld a,(de)			;37b4	1a 	. 
	ld c,a			;37b5	4f 	O 
	inc de			;37b6	13 	. 
	dec bc			;37b7	0b 	. 
	ld a,b			;37b8	78 	x 
	cp (hl)			;37b9	be 	. 
	inc hl			;37ba	23 	# 
	jr nz,$+4		;37bb	20 02 	  . 
	ld a,c			;37bd	79 	y 
	cp (hl)			;37be	be 	. 
	push af			;37bf	f5 	. 
	inc bc			;37c0	03 	. 
	ld (hl),c			;37c1	71 	q 
	dec hl			;37c2	2b 	+ 
	ld (hl),b			;37c3	70 	p 
	inc hl			;37c4	23 	# 
	inc hl			;37c5	23 	# 
	call 0382fh		;37c6	cd 2f 38 	. / 8 
	ld a,(de)			;37c9	1a 	. 
	ld c,a			;37ca	4f 	O 
	ld a,(hl)			;37cb	7e 	~ 
	or a			;37cc	b7 	. 
	jr z,$+4		;37cd	28 02 	( . 
	ld a,007h		;37cf	3e 07 	> . 
	or c			;37d1	b1 	. 
	ld (hl),a			;37d2	77 	w 
	pop af			;37d3	f1 	. 
	jr z,$+4		;37d4	28 02 	( . 
	ld (hl),007h		;37d6	36 07 	6 . 
	inc hl			;37d8	23 	# 
	inc de			;37d9	13 	. 
	call 0382fh		;37da	cd 2f 38 	. / 8 
	inc hl			;37dd	23 	# 
	inc de			;37de	13 	. 
	ex de,hl			;37df	eb 	. 
	ld bc,(0f0dch)		;37e0	ed 4b dc f0 	. K . . 
	ld a,c			;37e4	79 	y 
	sub l			;37e5	95 	. 
	ld c,a			;37e6	4f 	O 
	ld a,b			;37e7	78 	x 
	sbc a,h			;37e8	9c 	. 
	ld b,a			;37e9	47 	G 
	ldir		;37ea	ed b0 	. . 
	dec (ix+005h)		;37ec	dd 35 05 	. 5 . 
	pop hl			;37ef	e1 	. 
	push hl			;37f0	e5 	. 
	ld de,00014h		;37f1	11 14 00 	. . . 
	add hl,de			;37f4	19 	. 
	jr $-105		;37f5	18 95 	. . 
	ld hl,0da00h		;37f7	21 00 da 	! . . 
	ld de,00014h		;37fa	11 14 00 	. . . 
	ld a,(0f0bdh)		;37fd	3a bd f0 	: . . 
	or a			;3800	b7 	. 
	jr z,$+26		;3801	28 18 	( . 
	push hl			;3803	e5 	. 
	xor a			;3804	af 	. 
	ld b,(ix+005h)		;3805	dd 46 05 	. F . 
	ld c,000h		;3808	0e 00 	. . 
	ld hl,0db13h		;380a	21 13 db 	! . . 
	cp (hl)			;380d	be 	. 
	jr z,$+27		;380e	28 19 	( . 
	add hl,de			;3810	19 	. 
	inc c			;3811	0c 	. 
	djnz $-5		;3812	10 f9 	. . 
	inc a			;3814	3c 	< 
	cp (ix+006h)		;3815	dd be 06 	. . . 
	jr c,$-19		;3818	38 eb 	8 . 
	pop hl			;381a	e1 	. 
	ld (hl),000h		;381b	36 00 	6 . 
	ld hl,0db13h		;381d	21 13 db 	! . . 
	ld b,(ix+005h)		;3820	dd 46 05 	. F . 
	ld (hl),020h		;3823	36 20 	6   
	add hl,de			;3825	19 	. 
	djnz $-3		;3826	10 fb 	. . 
	ret			;3828	c9 	. 
	ex (sp),hl			;3829	e3 	. 
	ld (hl),c			;382a	71 	q 
	inc hl			;382b	23 	# 
	ex (sp),hl			;382c	e3 	. 
	jr $-25		;382d	18 e5 	. . 
	ld a,(de)			;382f	1a 	. 
	add a,(hl)			;3830	86 	. 
	ld (hl),a			;3831	77 	w 
	inc hl			;3832	23 	# 
	inc de			;3833	13 	. 
	ld a,(de)			;3834	1a 	. 
	adc a,(hl)			;3835	8e 	. 
	ld (hl),a			;3836	77 	w 
	inc hl			;3837	23 	# 
	inc de			;3838	13 	. 
	ret			;3839	c9 	. 
	push de			;383a	d5 	. 
	push hl			;383b	e5 	. 
	ld c,00eh		;383c	0e 0e 	. . 
	ex de,hl			;383e	eb 	. 
	ld hl,00014h		;383f	21 14 00 	! . . 
	add hl,de			;3842	19 	. 
	ld a,(hl)			;3843	7e 	~ 
	cp 0ffh		;3844	fe ff 	. . 
	scf			;3846	37 	7 
	jr z,$+13		;3847	28 0b 	( . 
	or a			;3849	b7 	. 
	dec c			;384a	0d 	. 
	jp m,03854h		;384b	fa 54 38 	. T 8 
	ld a,(de)			;384e	1a 	. 
	cp (hl)			;384f	be 	. 
	inc hl			;3850	23 	# 
	inc de			;3851	13 	. 
	jr z,$-9		;3852	28 f5 	( . 
	pop hl			;3854	e1 	. 
	pop de			;3855	d1 	. 
	ret			;3856	c9 	. 
	call 035e0h		;3857	cd e0 35 	. . 5 
	res 6,(ix-048h)		;385a	dd cb b8 b6 	. . . . 
	ld (ix+014h),000h		;385e	dd 36 14 00 	. 6 . . 
	ld a,(0f0c4h)		;3862	3a c4 f0 	: . . 
	ld (0f0c1h),a		;3865	32 c1 f0 	2 . . 
	call 038bfh		;3868	cd bf 38 	. . 8 
	ld a,(0f0bdh)		;386b	3a bd f0 	: . . 
	or a			;386e	b7 	. 
	jp z,0389dh		;386f	ca 9d 38 	. . 8 
	ld b,a			;3872	47 	G 
	ld a,(0f0c4h)		;3873	3a c4 f0 	: . . 
	add a,03ch		;3876	c6 3c 	. < 
	ld c,a			;3878	4f 	O 
	cp b			;3879	b8 	. 
	jr c,$+3		;387a	38 01 	8 . 
	ld c,b			;387c	48 	H 
	ld a,(0f0c1h)		;387d	3a c1 f0 	: . . 
	cp c			;3880	b9 	. 
	jp nc,0389dh		;3881	d2 9d 38 	. . 8 
	call 0388ch		;3884	cd 8c 38 	. . 8 
	inc (ix+009h)		;3887	dd 34 09 	. 4 . 
	jr $-31		;388a	18 df 	. . 
	call 03965h		;388c	cd 65 39 	. e 9 
	push hl			;388f	e5 	. 
	inc hl			;3890	23 	# 
	inc hl			;3891	23 	# 
	ld e,(hl)			;3892	5e 	^ 
	inc hl			;3893	23 	# 
	ld d,(hl)			;3894	56 	V 
	inc hl			;3895	23 	# 
	ld a,(hl)			;3896	7e 	~ 
	ex de,hl			;3897	eb 	. 
	call 03f21h		;3898	cd 21 3f 	. ! ? 
	pop hl			;389b	e1 	. 
	ret			;389c	c9 	. 
	ld de,01500h		;389d	11 00 15 	. . . 
	call 038a9h		;38a0	cd a9 38 	. . 8 
	call 038ceh		;38a3	cd ce 38 	. . 8 
	ld de,01602h		;38a6	11 02 16 	. . . 
	ld a,01bh		;38a9	3e 1b 	> . 
	call 03e3ah		;38ab	cd 3a 3e 	. : > 
	ld a,03dh		;38ae	3e 3d 	> = 
	call 03e3ah		;38b0	cd 3a 3e 	. : > 
	ld a,d			;38b3	7a 	z 
	add a,020h		;38b4	c6 20 	.   
	call 03e3ah		;38b6	cd 3a 3e 	. : > 
	ld a,e			;38b9	7b 	{ 
	add a,020h		;38ba	c6 20 	.   
	jp 03e3ah		;38bc	c3 3a 3e 	. : > 
	xor a			;38bf	af 	. 
	ld (0f0ceh),a		;38c0	32 ce f0 	2 . . 
	ld (0f0cfh),a		;38c3	32 cf f0 	2 . . 
	ld (0f0d0h),a		;38c6	32 d0 f0 	2 . . 
	ld a,01ah		;38c9	3e 1a 	> . 
	jp 03e3ah		;38cb	c3 3a 3e 	. : > 
	call 03ad7h		;38ce	cd d7 3a 	. . : 
	push af			;38d1	f5 	. 
	or a			;38d2	b7 	. 
	jr z,$+17		;38d3	28 0f 	( . 
	call 03ea9h		;38d5	cd a9 3e 	. . > 
	inc hl			;38d8	23 	# 
	inc hl			;38d9	23 	# 
	ld c,(hl)			;38da	4e 	N 
	ld h,c			;38db	61 	a 
	ld (hl),b			;38dc	70 	p 
	ld b,b			;38dd	40 	@ 
	ld h,h			;38de	64 	d 
	ld a,(02420h)		;38df	3a 20 24 	:   $ 
	jr $+15		;38e2	18 0d 	. . 
	call 03ea9h		;38e4	cd a9 3e 	. . > 
	ld d,d			;38e7	52 	R 
	ld b,c			;38e8	41 	A 
	ld c,l			;38e9	4d 	M 
	ld b,h			;38ea	44 	D 
	ld e,c			;38eb	59 	Y 
	ld d,e			;38ec	53 	S 
	ld c,e			;38ed	4b 	K 
	ld a,(02420h)		;38ee	3a 20 24 	:   $ 
	pop af			;38f1	f1 	. 
	add a,041h		;38f2	c6 41 	. A 
	call 03e3ah		;38f4	cd 3a 3e 	. : > 
	ld a,(0f071h)		;38f7	3a 71 f0 	: q . 
	ld l,a			;38fa	6f 	o 
	or a			;38fb	b7 	. 
	jr z,$+12		;38fc	28 0a 	( . 
	ld a,02fh		;38fe	3e 2f 	> / 
	call 03e3ah		;3900	cd 3a 3e 	. : > 
	ld h,000h		;3903	26 00 	& . 
	call 03f5ch		;3905	cd 5c 3f 	. \ ? 
	ld hl,(0f0bdh)		;3908	2a bd f0 	* . . 
	ld h,000h		;390b	26 00 	& . 
	call 03ea9h		;390d	cd a9 3e 	. . > 
	jp p,06c50h		;3910	f2 50 6c 	. P l 
	ld l,c			;3913	69 	i 
	ld l,e			;3914	6b 	k 
	ld a,e			;3915	7b 	{ 
	ld (hl),a			;3916	77 	w 
	ld a,(02420h)		;3917	3a 20 24 	:   $ 
	call 03f68h		;391a	cd 68 3f 	. h ? 
	call 03ea9h		;391d	cd a9 3e 	. . > 
	jp p,06f50h		;3920	f2 50 6f 	. P o 
	ld a,d			;3923	7a 	z 
	ld l,a			;3924	6f 	o 
	ld (hl),e			;3925	73 	s 
	ld (hl),h			;3926	74 	t 
	ld h,c			;3927	61 	a 
	ld a,h			;3928	7c 	| 
	ld l,a			;3929	6f 	o 
	ld a,(02420h)		;392a	3a 20 24 	:   $ 
	ld hl,(0f0dah)		;392d	2a da f0 	* . . 
	push hl			;3930	e5 	. 
	ld c,01bh		;3931	0e 1b 	. . 
	call 00005h		;3933	cd 05 00 	. . . 
	pop de			;3936	d1 	. 
	push de			;3937	d5 	. 
	ld c,(hl)			;3938	4e 	N 
	inc hl			;3939	23 	# 
	ld b,008h		;393a	06 08 	. . 
	rlc c		;393c	cb 01 	. . 
	jr nc,$+5		;393e	30 03 	0 . 
	ex (sp),hl			;3940	e3 	. 
	dec hl			;3941	2b 	+ 
	ex (sp),hl			;3942	e3 	. 
	dec de			;3943	1b 	. 
	ld a,d			;3944	7a 	z 
	or e			;3945	b3 	. 
	jr z,$+6		;3946	28 04 	( . 
	djnz $-12		;3948	10 f2 	. . 
	jr $-18		;394a	18 ec 	. . 
	pop hl			;394c	e1 	. 
	ld a,(0f0d7h)		;394d	3a d7 f0 	: . . 
	sub 003h		;3950	d6 03 	. . 
	dec a			;3952	3d 	= 
	jp m,03959h		;3953	fa 59 39 	. Y 9 
	add hl,hl			;3956	29 	) 
	jr $-5		;3957	18 f9 	. . 
	call 03f5ch		;3959	cd 5c 3f 	. \ ? 
	call 03ea9h		;395c	cd a9 3e 	. . > 
	jr nz,$+77		;395f	20 4b 	  K 
	ld b,d			;3961	42 	B 
	inc h			;3962	24 	$ 
	ret			;3963	c9 	. 
	ld b,006h		;3964	06 06 	. . 
	nop			;3966	00 	. 
	ld a,(0f0bdh)		;3967	3a bd f0 	: . . 
	or a			;396a	b7 	. 
	ret z			;396b	c8 	. 
	ld a,(0f0c1h)		;396c	3a c1 f0 	: . . 
	sub (ix+00ch)		;396f	dd 96 0c 	. . . 
	ld c,000h		;3972	0e 00 	. . 
	inc c			;3974	0c 	. 
	sub 014h		;3975	d6 14 	. . 
	jr nc,$-3		;3977	30 fb 	0 . 
	add a,014h		;3979	c6 14 	. . 
	ld d,a			;397b	57 	W 
	xor a			;397c	af 	. 
	dec c			;397d	0d 	. 
	jr z,$+6		;397e	28 04 	( . 
	add a,01bh		;3980	c6 1b 	. . 
	jr $-5		;3982	18 f9 	. . 
	ld e,a			;3984	5f 	_ 
	call 038a9h		;3985	cd a9 38 	. . 8 
	call 039c9h		;3988	cd c9 39 	. . 9 
	ld hl,00013h		;398b	21 13 00 	! . . 
	add hl,de			;398e	19 	. 
	ld a,(hl)			;398f	7e 	~ 
	call 03e3ah		;3990	cd 3a 3e 	. : > 
	ld a,b			;3993	78 	x 
	or a			;3994	b7 	. 
	push af			;3995	f5 	. 
	jr nz,$+7		;3996	20 05 	  . 
	call 03e38h		;3998	cd 38 3e 	. 8 > 
	jr $+9		;399b	18 07 	. . 
	call 03ea9h		;399d	cd a9 3e 	. . > 
	ld a,01bh		;39a0	3e 1b 	> . 
	ld d,e			;39a2	53 	S 
	inc h			;39a3	24 	$ 
	ld hl,00001h		;39a4	21 01 00 	! . . 
	add hl,de			;39a7	19 	. 
	call 03f01h		;39a8	cd 01 3f 	. . ? 
	pop af			;39ab	f1 	. 
	ret z			;39ac	c8 	. 
	call 03ea9h		;39ad	cd a9 3e 	. . > 
	dec de			;39b0	1b 	. 
	ld d,h			;39b1	54 	T 
	inc h			;39b2	24 	$ 
	ret			;39b3	c9 	. 
	ld a,(0f0c4h)		;39b4	3a c4 f0 	: . . 
	add a,(ix+00bh)		;39b7	dd 86 0b 	. . . 
	ld (0f0c1h),a		;39ba	32 c1 f0 	2 . . 
	ret			;39bd	c9 	. 
	xor a			;39be	af 	. 
	ld (0f0c1h),a		;39bf	32 c1 f0 	2 . . 
	call 03a0eh		;39c2	cd 0e 3a 	. . : 
	ret c			;39c5	d8 	. 
	call 039b4h		;39c6	cd b4 39 	. . 9 
	ld a,(0f0cah)		;39c9	3a ca f0 	: . . 
	or a			;39cc	b7 	. 
	ld a,(0f0c1h)		;39cd	3a c1 f0 	: . . 
	jr z,$+8		;39d0	28 06 	( . 
	ld hl,0da00h		;39d2	21 00 da 	! . . 
	add a,l			;39d5	85 	. 
	ld l,a			;39d6	6f 	o 
	ld a,(hl)			;39d7	7e 	~ 
	ld h,000h		;39d8	26 00 	& . 
	ld l,a			;39da	6f 	o 
	ld e,l			;39db	5d 	] 
	ld d,h			;39dc	54 	T 
	add hl,hl			;39dd	29 	) 
	add hl,hl			;39de	29 	) 
	add hl,de			;39df	19 	. 
	add hl,hl			;39e0	29 	) 
	add hl,hl			;39e1	29 	) 
	ld de,0db00h		;39e2	11 00 db 	. . . 
	add hl,de			;39e5	19 	. 
	ex de,hl			;39e6	eb 	. 
	ret			;39e7	c9 	. 
	ld a,(0f0bdh)		;39e8	3a bd f0 	: . . 
	or a			;39eb	b7 	. 
	ret z			;39ec	c8 	. 
	dec hl			;39ed	2b 	+ 
	dec hl			;39ee	2b 	+ 
	dec hl			;39ef	2b 	+ 
	bit 7,(hl)		;39f0	cb 7e 	. ~ 
	call z,03e32h		;39f2	cc 32 3e 	. 2 > 
	jr z,$+10		;39f5	28 08 	( . 
	call 03ea9h		;39f7	cd a9 3e 	. . > 
	jr nz,$+84		;39fa	20 52 	  R 
	cpl			;39fc	2f 	/ 
	ld c,a			;39fd	4f 	O 
	inc h			;39fe	24 	$ 
	inc hl			;39ff	23 	# 
	bit 7,(hl)		;3a00	cb 7e 	. ~ 
	jp z,03e32h		;3a02	ca 32 3e 	. 2 > 
	call 03ea9h		;3a05	cd a9 3e 	. . > 
	jr nz,$+85		;3a08	20 53 	  S 
	ld e,c			;3a0a	59 	Y 
	ld d,e			;3a0b	53 	S 
	inc h			;3a0c	24 	$ 
	ret			;3a0d	c9 	. 
	ld a,(0f0bdh)		;3a0e	3a bd f0 	: . . 
	or a			;3a11	b7 	. 
	ret z			;3a12	c8 	. 
	ld c,a			;3a13	4f 	O 
	ld a,(0f0c1h)		;3a14	3a c1 f0 	: . . 
	cp c			;3a17	b9 	. 
	ret nc			;3a18	d0 	. 
	call 03ddch		;3a19	cd dc 3d 	. . = 
	jr z,$+8		;3a1c	28 06 	( . 
	call 03dcdh		;3a1e	cd cd 3d 	. . = 
	cp 01bh		;3a21	fe 1b 	. . 
	ret z			;3a23	c8 	. 
	call 039c9h		;3a24	cd c9 39 	. . 9 
	inc (ix+009h)		;3a27	dd 34 09 	. 4 . 
	ld hl,00013h		;3a2a	21 13 00 	! . . 
	add hl,de			;3a2d	19 	. 
	ld a,(hl)			;3a2e	7e 	~ 
	cp 02ah		;3a2f	fe 2a 	. * 
	jr nz,$-35		;3a31	20 db 	  . 
	scf			;3a33	37 	7 
	ret			;3a34	c9 	. 
	ld hl,0f076h		;3a35	21 76 f0 	! v . 
	push hl			;3a38	e5 	. 
	ld b,00ch		;3a39	06 0c 	. . 
	xor a			;3a3b	af 	. 
	and 07fh		;3a3c	e6 7f 	.  
	ld (hl),a			;3a3e	77 	w 
	inc hl			;3a3f	23 	# 
	inc de			;3a40	13 	. 
	ld a,(de)			;3a41	1a 	. 
	djnz $-6		;3a42	10 f8 	. . 
	ld b,036h		;3a44	06 36 	. 6 
	xor a			;3a46	af 	. 
	ld (hl),a			;3a47	77 	w 
	inc hl			;3a48	23 	# 
	djnz $-2		;3a49	10 fc 	. . 
	inc de			;3a4b	13 	. 
	inc de			;3a4c	13 	. 
	inc de			;3a4d	13 	. 
	inc de			;3a4e	13 	. 
	ld a,(de)			;3a4f	1a 	. 
	ld (0f0bch),a		;3a50	32 bc f0 	2 . . 
	pop de			;3a53	d1 	. 
	ret			;3a54	c9 	. 
	ld de,00100h		;3a55	11 00 01 	. . . 
	push de			;3a58	d5 	. 
	call 03adfh		;3a59	cd df 3a 	. . : 
	call 03b1ah		;3a5c	cd 1a 3b 	. . ; 
	pop hl			;3a5f	e1 	. 
	ret nz			;3a60	c0 	. 
	ld de,00080h		;3a61	11 80 00 	. . . 
	add hl,de			;3a64	19 	. 
	ex de,hl			;3a65	eb 	. 
	ld a,d			;3a66	7a 	z 
	cp 0f0h		;3a67	fe f0 	. . 
	jr c,$-17		;3a69	38 ed 	8 . 
	scf			;3a6b	37 	7 
	ret			;3a6c	c9 	. 
	ld hl,00100h		;3a6d	21 00 01 	! . . 
	ld (0f0deh),hl		;3a70	22 de f0 	" . . 
	ld (0f0e0h),hl		;3a73	22 e0 f0 	" . . 
	ex de,hl			;3a76	eb 	. 
	ld a,b			;3a77	78 	x 
	or c			;3a78	b1 	. 
	ret z			;3a79	c8 	. 
	push bc			;3a7a	c5 	. 
	push de			;3a7b	d5 	. 
	call 03adfh		;3a7c	cd df 3a 	. . : 
	ld de,0f076h		;3a7f	11 76 f0 	. v . 
	call 03b1ah		;3a82	cd 1a 3b 	. . ; 
	pop hl			;3a85	e1 	. 
	jr nz,$+30		;3a86	20 1c 	  . 
	ld c,(ix+019h)		;3a88	dd 4e 19 	. N . 
	ld b,080h		;3a8b	06 80 	. . 
	call 00011h		;3a8d	cd 11 00 	. . . 
	add a,c			;3a90	81 	. 
	ld c,a			;3a91	4f 	O 
	inc hl			;3a92	23 	# 
	djnz $-6		;3a93	10 f8 	. . 
	ld (ix+019h),c		;3a95	dd 71 19 	. q . 
	ld (0f0e0h),hl		;3a98	22 e0 f0 	" . . 
	ex de,hl			;3a9b	eb 	. 
	pop bc			;3a9c	c1 	. 
	dec bc			;3a9d	0b 	. 
	ld a,d			;3a9e	7a 	z 
	cp 0dah		;3a9f	fe da 	. . 
	jr c,$-42		;3aa1	38 d4 	8 . 
	ret			;3aa3	c9 	. 
	pop bc			;3aa4	c1 	. 
	ret			;3aa5	c9 	. 
	ld hl,(0f0deh)		;3aa6	2a de f0 	* . . 
	ex de,hl			;3aa9	eb 	. 
	ld hl,(0f0e0h)		;3aaa	2a e0 f0 	* . . 
	ld a,e			;3aad	7b 	{ 
	sub l			;3aae	95 	. 
	ld a,d			;3aaf	7a 	z 
	sbc a,h			;3ab0	9c 	. 
	ret nc			;3ab1	d0 	. 
	push de			;3ab2	d5 	. 
	call 03adfh		;3ab3	cd df 3a 	. . : 
	ld de,0f097h		;3ab6	11 97 f0 	. . . 
	call 03b16h		;3ab9	cd 16 3b 	. . ; 
	pop de			;3abc	d1 	. 
	scf			;3abd	37 	7 
	ret nz			;3abe	c0 	. 
	ld hl,00080h		;3abf	21 80 00 	! . . 
	add hl,de			;3ac2	19 	. 
	ld (0f0deh),hl		;3ac3	22 de f0 	" . . 
	jr $-32		;3ac6	18 de 	. . 
	ld a,(0f0b8h)		;3ac8	3a b8 f0 	: . . 
	dec a			;3acb	3d 	= 
	ld e,a			;3acc	5f 	_ 
	ld c,00eh		;3acd	0e 0e 	. . 
	jp 00005h		;3acf	c3 05 00 	. . . 
	ld c,00dh		;3ad2	0e 0d 	. . 
	jp 00005h		;3ad4	c3 05 00 	. . . 
	ld c,019h		;3ad7	0e 19 	. . 
	jp 00005h		;3ad9	c3 05 00 	. . . 
	ld de,00080h		;3adc	11 80 00 	. . . 
	ld c,01ah		;3adf	0e 1a 	. . 
	jp 00005h		;3ae1	c3 05 00 	. . . 
	call 039c6h		;3ae4	cd c6 39 	. . 9 
	call 03a35h		;3ae7	cd 35 3a 	. 5 : 
	jp 03af4h		;3aea	c3 f4 3a 	. . : 
	xor a			;3aed	af 	. 
	ld (0f096h),a		;3aee	32 96 f0 	2 . . 
	ld de,0f076h		;3af1	11 76 f0 	. v . 
	ld c,00fh		;3af4	0e 0f 	. . 
	call 00005h		;3af6	cd 05 00 	. . . 
	ld (0f06dh),a		;3af9	32 6d f0 	2 m . 
	inc a			;3afc	3c 	< 
	ret			;3afd	c9 	. 
	ld de,0f076h		;3afe	11 76 f0 	. v . 
	ld c,010h		;3b01	0e 10 	. . 
	jp 03af6h		;3b03	c3 f6 3a 	. . : 
	ld de,0f076h		;3b06	11 76 f0 	. v . 
	ld c,011h		;3b09	0e 11 	. . 
	jp 03af6h		;3b0b	c3 f6 3a 	. . : 
	ld de,0f076h		;3b0e	11 76 f0 	. v . 
	ld c,013h		;3b11	0e 13 	. . 
	jp 00005h		;3b13	c3 05 00 	. . . 
	ld c,015h		;3b16	0e 15 	. . 
	jr $+7		;3b18	18 05 	. . 
	ld de,0f076h		;3b1a	11 76 f0 	. v . 
	ld c,014h		;3b1d	0e 14 	. . 
	call 00005h		;3b1f	cd 05 00 	. . . 
	or a			;3b22	b7 	. 
	ret			;3b23	c9 	. 
	push de			;3b24	d5 	. 
	ld c,013h		;3b25	0e 13 	. . 
	call 00005h		;3b27	cd 05 00 	. . . 
	pop de			;3b2a	d1 	. 
	ld c,016h		;3b2b	0e 16 	. . 
	jp 03af6h		;3b2d	c3 f6 3a 	. . : 
	ld de,0f076h		;3b30	11 76 f0 	. v . 
	ld c,017h		;3b33	0e 17 	. . 
	jp 00005h		;3b35	c3 05 00 	. . . 
	ld e,(ix-047h)		;3b38	dd 5e b9 	. ^ . 
	jr $+4		;3b3b	18 02 	. . 
	ld e,0ffh		;3b3d	1e ff 	. . 
	ld c,020h		;3b3f	0e 20 	.   
	jp 00005h		;3b41	c3 05 00 	. . . 
	push hl			;3b44	e5 	. 
	ld hl,(0f0e2h)		;3b45	2a e2 f0 	* . . 
	ex (sp),hl			;3b48	e3 	. 
	call 03e69h		;3b49	cd 69 3e 	. i > 
	call 03ddch		;3b4c	cd dc 3d 	. . = 
	jp nz,03c04h		;3b4f	c2 04 3c 	. . < 
	xor a			;3b52	af 	. 
	ld (0f0e4h),a		;3b53	32 e4 f0 	2 . . 
	ex (sp),hl			;3b56	e3 	. 
	call 03c17h		;3b57	cd 17 3c 	. . < 
	ex (sp),hl			;3b5a	e3 	. 
	ld a,l			;3b5b	7d 	} 
	and 00fh		;3b5c	e6 0f 	. . 
	ld b,a			;3b5e	47 	G 
	ld c,0ffh		;3b5f	0e ff 	. . 
	jr z,$+22		;3b61	28 14 	( . 
	inc c			;3b63	0c 	. 
	ld a,c			;3b64	79 	y 
	and 003h		;3b65	e6 03 	. . 
	call z,03e38h		;3b67	cc 38 3e 	. 8 > 
	call 03e38h		;3b6a	cd 38 3e 	. 8 > 
	ld a,02dh		;3b6d	3e 2d 	> - 
	call 03e3ah		;3b6f	cd 3a 3e 	. : > 
	call 03e3ah		;3b72	cd 3a 3e 	. : > 
	djnz $-18		;3b75	10 ec 	. . 
	push hl			;3b77	e5 	. 
	call 03e38h		;3b78	cd 38 3e 	. 8 > 
	ld a,l			;3b7b	7d 	} 
	and 003h		;3b7c	e6 03 	. . 
	call z,03e38h		;3b7e	cc 38 3e 	. 8 > 
	call 00011h		;3b81	cd 11 00 	. . . 
	call 03c1ch		;3b84	cd 1c 3c 	. . < 
	call 03c0dh		;3b87	cd 0d 3c 	. . < 
	jr nc,$+27		;3b8a	30 19 	0 . 
	ld a,l			;3b8c	7d 	} 
	cpl			;3b8d	2f 	/ 
	inc a			;3b8e	3c 	< 
	and 00fh		;3b8f	e6 0f 	. . 
	jr z,$+25		;3b91	28 17 	( . 
	ld c,a			;3b93	4f 	O 
	add a,a			;3b94	87 	. 
	add a,c			;3b95	81 	. 
	ld b,a			;3b96	47 	G 
	ld a,c			;3b97	79 	y 
	rrca			;3b98	0f 	. 
	rrca			;3b99	0f 	. 
	and 003h		;3b9a	e6 03 	. . 
	add a,b			;3b9c	80 	. 
	ld b,a			;3b9d	47 	G 
	call 03e38h		;3b9e	cd 38 3e 	. 8 > 
	djnz $-3		;3ba1	10 fb 	. . 
	jr $+7		;3ba3	18 05 	. . 
	ld a,l			;3ba5	7d 	} 
	and 00fh		;3ba6	e6 0f 	. . 
	jr nz,$-48		;3ba8	20 ce 	  . 
	pop hl			;3baa	e1 	. 
	call 03e2ah		;3bab	cd 2a 3e 	. * > 
	ld a,l			;3bae	7d 	} 
	and 00fh		;3baf	e6 0f 	. . 
	ld b,a			;3bb1	47 	G 
	jr z,$+7		;3bb2	28 05 	( . 
	call 03e38h		;3bb4	cd 38 3e 	. 8 > 
	djnz $-3		;3bb7	10 fb 	. . 
	call 00011h		;3bb9	cd 11 00 	. . . 
	ld c,a			;3bbc	4f 	O 
	ld a,(0f0e4h)		;3bbd	3a e4 f0 	: . . 
	add a,c			;3bc0	81 	. 
	ld (0f0e4h),a		;3bc1	32 e4 f0 	2 . . 
	ld a,c			;3bc4	79 	y 
	and 07fh		;3bc5	e6 7f 	.  
	ld c,02eh		;3bc7	0e 2e 	. . 
	cp 020h		;3bc9	fe 20 	.   
	jr c,$+7		;3bcb	38 05 	8 . 
	cp 07fh		;3bcd	fe 7f 	.  
	jr nc,$+3		;3bcf	30 01 	0 . 
	ld c,a			;3bd1	4f 	O 
	ld a,c			;3bd2	79 	y 
	call 03e3ah		;3bd3	cd 3a 3e 	. : > 
	ex (sp),hl			;3bd6	e3 	. 
	inc hl			;3bd7	23 	# 
	ex (sp),hl			;3bd8	e3 	. 
	call 03c0dh		;3bd9	cd 0d 3c 	. . < 
	jr c,$+19		;3bdc	38 11 	8 . 
	ld a,l			;3bde	7d 	} 
	and 00fh		;3bdf	e6 0f 	. . 
	jr nz,$-40		;3be1	20 d6 	  . 
	call 03e35h		;3be3	cd 35 3e 	. 5 > 
	ld a,(0f0e4h)		;3be6	3a e4 f0 	: . . 
	call 03c1ch		;3be9	cd 1c 3c 	. . < 
	jp 03b49h		;3bec	c3 49 3b 	. I ; 
	ld a,l			;3bef	7d 	} 
	and 00fh		;3bf0	e6 0f 	. . 
	jr z,$+8		;3bf2	28 06 	( . 
	call 03e38h		;3bf4	cd 38 3e 	. 8 > 
	inc hl			;3bf7	23 	# 
	jr $-9		;3bf8	18 f5 	. . 
	call 03e35h		;3bfa	cd 35 3e 	. 5 > 
	ld a,(0f0e4h)		;3bfd	3a e4 f0 	: . . 
	call 03c1ch		;3c00	cd 1c 3c 	. . < 
	scf			;3c03	37 	7 
	ex (sp),hl			;3c04	e3 	. 
	ld (0f0e2h),hl		;3c05	22 e2 f0 	" . . 
	call 03e69h		;3c08	cd 69 3e 	. i > 
	pop hl			;3c0b	e1 	. 
	ret			;3c0c	c9 	. 
	inc hl			;3c0d	23 	# 
	ld a,h			;3c0e	7c 	| 
	or l			;3c0f	b5 	. 
	scf			;3c10	37 	7 
	ret z			;3c11	c8 	. 
	ld a,e			;3c12	7b 	{ 
	sub l			;3c13	95 	. 
	ld a,d			;3c14	7a 	z 
	sbc a,h			;3c15	9c 	. 
	ret			;3c16	c9 	. 
	ld a,h			;3c17	7c 	| 
	call 03c1ch		;3c18	cd 1c 3c 	. . < 
	ld a,l			;3c1b	7d 	} 
	push af			;3c1c	f5 	. 
	rrca			;3c1d	0f 	. 
	rrca			;3c1e	0f 	. 
	rrca			;3c1f	0f 	. 
	rrca			;3c20	0f 	. 
	and 00fh		;3c21	e6 0f 	. . 
	call 03c29h		;3c23	cd 29 3c 	. ) < 
	pop af			;3c26	f1 	. 
	and 00fh		;3c27	e6 0f 	. . 
	call 03c2fh		;3c29	cd 2f 3c 	. / < 
	jp 03e3ah		;3c2c	c3 3a 3e 	. : > 
	add a,090h		;3c2f	c6 90 	. . 
	daa			;3c31	27 	' 
	adc a,040h		;3c32	ce 40 	. @ 
	daa			;3c34	27 	' 
	ret			;3c35	c9 	. 
	call 00011h		;3c36	cd 11 00 	. . . 
	cp 01ah		;3c39	fe 1a 	. . 
	ret z			;3c3b	c8 	. 
	call 03e6eh		;3c3c	cd 6e 3e 	. n > 
	call 03ddch		;3c3f	cd dc 3d 	. . = 
	ret nz			;3c42	c0 	. 
	call 03c0dh		;3c43	cd 0d 3c 	. . < 
	jr nc,$-16		;3c46	30 ee 	0 . 
	ret			;3c48	c9 	. 
	call 03ea9h		;3c49	cd a9 3e 	. . > 
	ld c,(hl)			;3c4c	4e 	N 
	ld l,a			;3c4d	6f 	o 
	ld (hl),a			;3c4e	77 	w 
	ld h,c			;3c4f	61 	a 
	jr nz,$+112		;3c50	20 6e 	  n 
	ld h,c			;3c52	61 	a 
	ld a,d			;3c53	7a 	z 
	ld (hl),a			;3c54	77 	w 
	ld h,c			;3c55	61 	a 
	jr nz,$+60		;3c56	20 3a 	  : 
	inc h			;3c58	24 	$ 
	jr $+19		;3c59	18 11 	. . 
	call 03ea9h		;3c5b	cd a9 3e 	. . > 
	ld d,b			;3c5e	50 	P 
	ld l,a			;3c5f	6f 	o 
	ld h,h			;3c60	64 	d 
	ld h,c			;3c61	61 	a 
	ld l,d			;3c62	6a 	j 
	jr nz,$+109		;3c63	20 6b 	  k 
	ld l,h			;3c65	6c 	l 
	ld (hl),l			;3c66	75 	u 
	ld h,e			;3c67	63 	c 
	ld a,d			;3c68	7a 	z 
	jr nz,$+60		;3c69	20 3a 	  : 
	inc h			;3c6b	24 	$ 
	call 03cc5h		;3c6c	cd c5 3c 	. . < 
	ret c			;3c6f	d8 	. 
	ret z			;3c70	c8 	. 
	inc hl			;3c71	23 	# 
	ld de,0f0a3h		;3c72	11 a3 f0 	. . . 
	ld b,00bh		;3c75	06 0b 	. . 
	dec de			;3c77	1b 	. 
	ld a,020h		;3c78	3e 20 	>   
	ld (de),a			;3c7a	12 	. 
	djnz $-4		;3c7b	10 fa 	. . 
	ld b,009h		;3c7d	06 09 	. . 
	call 00011h		;3c7f	cd 11 00 	. . . 
	or a			;3c82	b7 	. 
	jr z,$+33		;3c83	28 1f 	( . 
	inc hl			;3c85	23 	# 
	cp 02eh		;3c86	fe 2e 	. . 
	jr z,$+9		;3c88	28 07 	( . 
	call 03ca6h		;3c8a	cd a6 3c 	. . < 
	jr nz,$-14		;3c8d	20 f0 	  . 
	scf			;3c8f	37 	7 
	ret			;3c90	c9 	. 
	ld de,0f0a0h		;3c91	11 a0 f0 	. . . 
	ld b,004h		;3c94	06 04 	. . 
	call 00011h		;3c96	cd 11 00 	. . . 
	or a			;3c99	b7 	. 
	jr z,$+10		;3c9a	28 08 	( . 
	inc hl			;3c9c	23 	# 
	call 03ca6h		;3c9d	cd a6 3c 	. . < 
	jr nz,$-10		;3ca0	20 f4 	  . 
	scf			;3ca2	37 	7 
	ret			;3ca3	c9 	. 
	inc a			;3ca4	3c 	< 
	ret			;3ca5	c9 	. 
	cp 03fh		;3ca6	fe 3f 	. ? 
	jr nz,$+9		;3ca8	20 07 	  . 
	ld (0f0cbh),a		;3caa	32 cb f0 	2 . . 
	ld (de),a			;3cad	12 	. 
	inc de			;3cae	13 	. 
	dec b			;3caf	05 	. 
	ret			;3cb0	c9 	. 
	cp 02ah		;3cb1	fe 2a 	. * 
	jr nz,$-6		;3cb3	20 f8 	  . 
	ld a,03fh		;3cb5	3e 3f 	> ? 
	ld (0f0cbh),a		;3cb7	32 cb f0 	2 . . 
	ld (de),a			;3cba	12 	. 
	inc de			;3cbb	13 	. 
	dec b			;3cbc	05 	. 
	ret z			;3cbd	c8 	. 
	ld a,b			;3cbe	78 	x 
	cp 001h		;3cbf	fe 01 	. . 
	jr nz,$-12		;3cc1	20 f2 	  . 
	or a			;3cc3	b7 	. 
	ret			;3cc4	c9 	. 
	ld hl,00081h		;3cc5	21 81 00 	! . . 
	xor a			;3cc8	af 	. 
	ld (0f0cbh),a		;3cc9	32 cb f0 	2 . . 
	ld (hl),020h		;3ccc	36 20 	6   
	ld (0f074h),hl		;3cce	22 74 f0 	" t . 
	inc hl			;3cd1	23 	# 
	ld c,001h		;3cd2	0e 01 	. . 
	call 03dcdh		;3cd4	cd cd 3d 	. . = 
	res 7,a		;3cd7	cb bf 	. . 
	cp 01bh		;3cd9	fe 1b 	. . 
	scf			;3cdb	37 	7 
	ret z			;3cdc	c8 	. 
	cp 00dh		;3cdd	fe 0d 	. . 
	jr z,$+41		;3cdf	28 27 	( ' 
	cp 07fh		;3ce1	fe 7f 	.  
	jr nz,$+4		;3ce3	20 02 	  . 
	ld a,008h		;3ce5	3e 08 	> . 
	cp 008h		;3ce7	fe 08 	. . 
	jr nz,$+17		;3ce9	20 0f 	  . 
	dec c			;3ceb	0d 	. 
	jr z,$-26		;3cec	28 e4 	( . 
	dec hl			;3cee	2b 	+ 
	ld (hl),000h		;3cef	36 00 	6 . 
	call 03ea9h		;3cf1	cd a9 3e 	. . > 
	ex af,af'			;3cf4	08 	. 
	jr nz,$+10		;3cf5	20 08 	  . 
	inc h			;3cf7	24 	$ 
	jr $-36		;3cf8	18 da 	. . 
	call 03e3ah		;3cfa	cd 3a 3e 	. : > 
	ld (hl),a			;3cfd	77 	w 
	inc hl			;3cfe	23 	# 
	inc c			;3cff	0c 	. 
	ld a,c			;3d00	79 	y 
	cp 041h		;3d01	fe 41 	. A 
	jr c,$-47		;3d03	38 cf 	8 . 
	dec c			;3d05	0d 	. 
	jr $-24		;3d06	18 e6 	. . 
	ld (hl),000h		;3d08	36 00 	6 . 
	ld hl,00080h		;3d0a	21 80 00 	! . . 
	dec c			;3d0d	0d 	. 
	jr z,$+6		;3d0e	28 04 	( . 
	inc c			;3d10	0c 	. 
	ld (hl),c			;3d11	71 	q 
	inc hl			;3d12	23 	# 
	ret			;3d13	c9 	. 
	ld (hl),c			;3d14	71 	q 
	inc hl			;3d15	23 	# 
	ld (hl),c			;3d16	71 	q 
	ret			;3d17	c9 	. 
	call 03ea9h		;3d18	cd a9 3e 	. . > 
	ld c,(hl)			;3d1b	4e 	N 
	ld h,c			;3d1c	61 	a 
	ld (hl),b			;3d1d	70 	p 
	ld b,b			;3d1e	40 	@ 
	ld h,h			;3d1f	64 	d 
	ld a,(02420h)		;3d20	3a 20 24 	:   $ 
	call 03e05h		;3d23	cd 05 3e 	. . > 
	cp 01bh		;3d26	fe 1b 	. . 
	jr z,$+24		;3d28	28 16 	( . 
	cp 055h		;3d2a	fe 55 	. U 
	jr z,$+24		;3d2c	28 16 	( . 
	sub 041h		;3d2e	d6 41 	. A 
	jp c,03db7h		;3d30	da b7 3d 	. . = 
	ld c,a			;3d33	4f 	O 
	push bc			;3d34	c5 	. 
	call 0f21bh		;3d35	cd 1b f2 	. . . 
	pop bc			;3d38	c1 	. 
	inc c			;3d39	0c 	. 
	ld a,h			;3d3a	7c 	| 
	or l			;3d3b	b5 	. 
	jr z,$+123		;3d3c	28 79 	( y 
	ld a,c			;3d3e	79 	y 
	ret			;3d3f	c9 	. 
	pop bc			;3d40	c1 	. 
	jp 035b6h		;3d41	c3 b6 35 	. . 5 
	call 03ea9h		;3d44	cd a9 3e 	. . > 
	ld a,l			;3d47	7d 	} 
	ld a,c			;3d48	79 	y 
	ld (hl),h			;3d49	74 	t 
	ld l,e			;3d4a	6b 	k 
	ld l,a			;3d4b	6f 	o 
	ld (hl),a			;3d4c	77 	w 
	ld l,(hl)			;3d4d	6e 	n 
	ld l,c			;3d4e	69 	i 
	ld l,e			;3d4f	6b 	k 
	jr nz,$+60		;3d50	20 3a 	  : 
	jr nz,$+38		;3d52	20 24 	  $ 
	ld e,000h		;3d54	1e 00 	. . 
	call 03dcdh		;3d56	cd cd 3d 	. . = 
	cp 01bh		;3d59	fe 1b 	. . 
	jr z,$-27		;3d5b	28 e3 	( . 
	cp 00dh		;3d5d	fe 0d 	. . 
	jr z,$+56		;3d5f	28 36 	( 6 
	ld e,a			;3d61	5f 	_ 
	cp 03fh		;3d62	fe 3f 	. ? 
	jp z,03e3ah		;3d64	ca 3a 3e 	. : > 
	call 03e3ah		;3d67	cd 3a 3e 	. : > 
	sub 030h		;3d6a	d6 30 	. 0 
	jr c,$+47		;3d6c	38 2d 	8 - 
	cp 00ah		;3d6e	fe 0a 	. . 
	jr nc,$+43		;3d70	30 29 	0 ) 
	ld e,a			;3d72	5f 	_ 
	call 03dcdh		;3d73	cd cd 3d 	. . = 
	cp 020h		;3d76	fe 20 	.   
	jr z,$+31		;3d78	28 1d 	( . 
	cp 00dh		;3d7a	fe 0d 	. . 
	jr z,$+27		;3d7c	28 19 	( . 
	call 03e3ah		;3d7e	cd 3a 3e 	. : > 
	push af			;3d81	f5 	. 
	ld a,e			;3d82	7b 	{ 
	add a,a			;3d83	87 	. 
	add a,a			;3d84	87 	. 
	add a,e			;3d85	83 	. 
	add a,a			;3d86	87 	. 
	ld e,a			;3d87	5f 	_ 
	pop af			;3d88	f1 	. 
	sub 030h		;3d89	d6 30 	. 0 
	jr c,$+16		;3d8b	38 0e 	8 . 
	cp 00ah		;3d8d	fe 0a 	. . 
	jr nc,$+12		;3d8f	30 0a 	0 . 
	add a,e			;3d91	83 	. 
	ld e,a			;3d92	5f 	_ 
	cp 020h		;3d93	fe 20 	.   
	jr nc,$+6		;3d95	30 04 	0 . 
	ld a,03fh		;3d97	3e 3f 	> ? 
	or a			;3d99	b7 	. 
	ret			;3d9a	c9 	. 
	call 03ea9h		;3d9b	cd a9 3e 	. . > 
	jp p,07c7ah		;3d9e	f2 7a 7c 	. z | 
	ld a,c			;3da1	79 	y 
	jr nz,$+112		;3da2	20 6e 	  n 
	ld (hl),l			;3da4	75 	u 
	ld l,l			;3da5	6d 	m 
	ld h,l			;3da6	65 	e 
	ld (hl),d			;3da7	72 	r 
	jr nz,$+119		;3da8	20 75 	  u 
	ld a,l			;3daa	7d 	} 
	ld a,c			;3dab	79 	y 
	ld (hl),h			;3dac	74 	t 
	ld l,e			;3dad	6b 	k 
	ld l,a			;3dae	6f 	o 
	ld (hl),a			;3daf	77 	w 
	ld l,(hl)			;3db0	6e 	n 
	ld l,c			;3db1	69 	i 
	ld l,e			;3db2	6b 	k 
	ld h,c			;3db3	61 	a 
	inc h			;3db4	24 	$ 
	scf			;3db5	37 	7 
	ret			;3db6	c9 	. 
	call 03037h		;3db7	cd 37 30 	. 7 0 
	call 03ea9h		;3dba	cd a9 3e 	. . > 
	jr nz,$+112		;3dbd	20 6e 	  n 
	ld h,c			;3dbf	61 	a 
	ld (hl),b			;3dc0	70 	p 
	ld b,b			;3dc1	40 	@ 
	ld h,h			;3dc2	64 	d 
	ld (hl),l			;3dc3	75 	u 
	inc h			;3dc4	24 	$ 
	scf			;3dc5	37 	7 
	ret			;3dc6	c9 	. 
	call 03ddch		;3dc7	cd dc 3d 	. . = 
	ret z			;3dca	c8 	. 
	jr $+7		;3dcb	18 05 	. . 
	call 03de5h		;3dcd	cd e5 3d 	. . = 
	jr z,$-3		;3dd0	28 fb 	( . 
	exx			;3dd2	d9 	. 
	ld c,006h		;3dd3	0e 06 	. . 
	ld e,0ffh		;3dd5	1e ff 	. . 
	call 00005h		;3dd7	cd 05 00 	. . . 
	exx			;3dda	d9 	. 
	ret			;3ddb	c9 	. 
	exx			;3ddc	d9 	. 
	ld c,00bh		;3ddd	0e 0b 	. . 
	call 00005h		;3ddf	cd 05 00 	. . . 
	exx			;3de2	d9 	. 
	or a			;3de3	b7 	. 
	ret			;3de4	c9 	. 
	exx			;3de5	d9 	. 
	ld c,006h		;3de6	0e 06 	. . 
	ld e,0feh		;3de8	1e fe 	. . 
	call 00005h		;3dea	cd 05 00 	. . . 
	exx			;3ded	d9 	. 
	or a			;3dee	b7 	. 
	ret			;3def	c9 	. 
	cp 020h		;3df0	fe 20 	.   
	jp nc,0f20ch		;3df2	d2 0c f2 	. . . 
	ret			;3df5	c9 	. 
	call 03ea9h		;3df6	cd a9 3e 	. . > 
	jr nz,$+42		;3df9	20 28 	  ( 
	ld d,h			;3dfb	54 	T 
	cpl			;3dfc	2f 	/ 
	ld c,(hl)			;3dfd	4e 	N 
	add hl,hl			;3dfe	29 	) 
	jr nz,$+65		;3dff	20 3f 	  ? 
	jr nz,$+29		;3e01	20 1b 	  . 
	ld c,e			;3e03	4b 	K 
	inc h			;3e04	24 	$ 
	call 03dcdh		;3e05	cd cd 3d 	. . = 
	exx			;3e08	d9 	. 
	ld c,a			;3e09	4f 	O 
	call 03df0h		;3e0a	cd f0 3d 	. . = 
	exx			;3e0d	d9 	. 
	cp 061h		;3e0e	fe 61 	. a 
	ret c			;3e10	d8 	. 
	cp 07bh		;3e11	fe 7b 	. { 
	ret nc			;3e13	d0 	. 
	and 05fh		;3e14	e6 5f 	. _ 
	ret			;3e16	c9 	. 
	call 03ea9h		;3e17	cd a9 3e 	. . > 
	ld a,(bc)			;3e1a	0a 	. 
	ld hl,(06f6bh)		;3e1b	2a 6b 6f 	* k o 
	ld l,(hl)			;3e1e	6e 	n 
	ld l,c			;3e1f	69 	i 
	ld h,l			;3e20	65 	e 
	ld h,e			;3e21	63 	c 
	ld hl,(0cd24h)		;3e22	2a 24 cd 	* $ . 
	push hl			;3e25	e5 	. 
	dec a			;3e26	3d 	= 
	jr z,$-3		;3e27	28 fb 	( . 
	ret			;3e29	c9 	. 
	call 03e35h		;3e2a	cd 35 3e 	. 5 > 
	jr $+11		;3e2d	18 09 	. . 
	call 03e38h		;3e2f	cd 38 3e 	. 8 > 
	call 03e35h		;3e32	cd 35 3e 	. 5 > 
	call 03e38h		;3e35	cd 38 3e 	. 8 > 
	ld a,020h		;3e38	3e 20 	>   
	push af			;3e3a	f5 	. 
	exx			;3e3b	d9 	. 
	ld c,a			;3e3c	4f 	O 
	ld a,(0f26bh)		;3e3d	3a 6b f2 	: k . 
	bit 1,a		;3e40	cb 4f 	. O 
	jr z,$+4		;3e42	28 02 	( . 
	res 7,c		;3e44	cb b9 	. . 
	bit 4,(ix-048h)		;3e46	dd cb b8 66 	. . . f 
	jr nz,$+19		;3e4a	20 11 	  . 
	bit 6,(ix-048h)		;3e4c	dd cb b8 76 	. . . v 
	jr z,$+7		;3e50	28 05 	( . 
	call 0f20fh		;3e52	cd 0f f2 	. . . 
	jr $+5		;3e55	18 03 	. . 
	call 0f20ch		;3e57	cd 0c f2 	. . . 
	exx			;3e5a	d9 	. 
	pop af			;3e5b	f1 	. 
	ret			;3e5c	c9 	. 
	ld e,c			;3e5d	59 	Y 
	ld c,002h		;3e5e	0e 02 	. . 
	call 00005h		;3e60	cd 05 00 	. . . 
	jr $-9		;3e63	18 f5 	. . 
	ld a,00dh		;3e65	3e 0d 	> . 
	jr $+7		;3e67	18 05 	. . 
	call 03e65h		;3e69	cd 65 3e 	. e > 
	ld a,00ah		;3e6c	3e 0a 	> . 
	push hl			;3e6e	e5 	. 
	push af			;3e6f	f5 	. 
	ld hl,0f0d2h		;3e70	21 d2 f0 	! . . 
	cp 00dh		;3e73	fe 0d 	. . 
	jr nz,$+4		;3e75	20 02 	  . 
	ld (hl),000h		;3e77	36 00 	6 . 
	cp 009h		;3e79	fe 09 	. . 
	jr nz,$+35		;3e7b	20 21 	  ! 
	ld a,(0f26bh)		;3e7d	3a 6b f2 	: k . 
	bit 0,a		;3e80	cb 47 	. G 
	jr z,$+15		;3e82	28 0d 	( . 
	ld a,01bh		;3e84	3e 1b 	> . 
	bit 6,(ix-048h)		;3e86	dd cb b8 76 	. . . v 
	call z,03e3ah		;3e8a	cc 3a 3e 	. : > 
	ld a,009h		;3e8d	3e 09 	> . 
	jr $+20		;3e8f	18 12 	. . 
	ld a,020h		;3e91	3e 20 	>   
	call 03e3ah		;3e93	cd 3a 3e 	. : > 
	inc (hl)			;3e96	34 	4 
	ld a,(hl)			;3e97	7e 	~ 
	and 007h		;3e98	e6 07 	. . 
	jr nz,$-9		;3e9a	20 f5 	  . 
	jr $+10		;3e9c	18 08 	. . 
	cp 020h		;3e9e	fe 20 	.   
	jr c,$+3		;3ea0	38 01 	8 . 
	inc (hl)			;3ea2	34 	4 
	call 03e3ah		;3ea3	cd 3a 3e 	. : > 
	pop af			;3ea6	f1 	. 
	pop hl			;3ea7	e1 	. 
	ret			;3ea8	c9 	. 
	call 03ef2h		;3ea9	cd f2 3e 	. . > 
	ld a,(0f26bh)		;3eac	3a 6b f2 	: k . 
	ld (0f13bh),a		;3eaf	32 3b f1 	2 ; . 
	bit 5,a		;3eb2	cb 6f 	. o 
	jr nz,$+7		;3eb4	20 05 	  . 
	set 4,a		;3eb6	cb e7 	. . 
	ld (0f26bh),a		;3eb8	32 6b f2 	2 k . 
	ex (sp),hl			;3ebb	e3 	. 
	ld a,(hl)			;3ebc	7e 	~ 
	inc hl			;3ebd	23 	# 
	cp 024h		;3ebe	fe 24 	. $ 
	ex (sp),hl			;3ec0	e3 	. 
	jr z,$+28		;3ec1	28 1a 	( . 
	cp 0f0h		;3ec3	fe f0 	. . 
	jr nc,$+12		;3ec5	30 0a 	0 . 
	cp 00ah		;3ec7	fe 0a 	. . 
	call nz,03e3ah		;3ec9	c4 3a 3e 	. : > 
	call z,03e69h		;3ecc	cc 69 3e 	. i > 
	jr $-20		;3ecf	18 ea 	. . 
	and 00fh		;3ed1	e6 0f 	. . 
	push af			;3ed3	f5 	. 
	call 03e38h		;3ed4	cd 38 3e 	. 8 > 
	pop af			;3ed7	f1 	. 
	dec a			;3ed8	3d 	= 
	jr nz,$-6		;3ed9	20 f8 	  . 
	jr $-32		;3edb	18 de 	. . 
	ld a,(0f13bh)		;3edd	3a 3b f1 	: ; . 
	ld (0f26bh),a		;3ee0	32 6b f2 	2 k . 
	bit 6,(ix-048h)		;3ee3	dd cb b8 76 	. . . v 
	ret nz			;3ee7	c0 	. 
	ld a,01bh		;3ee8	3e 1b 	> . 
	call 03e3ah		;3eea	cd 3a 3e 	. : > 
	ld a,04fh		;3eed	3e 4f 	> O 
	jp 03e3ah		;3eef	c3 3a 3e 	. : > 
	bit 6,(ix-048h)		;3ef2	dd cb b8 76 	. . . v 
	ret nz			;3ef6	c0 	. 
	ld a,01bh		;3ef7	3e 1b 	> . 
	call 03e3ah		;3ef9	cd 3a 3e 	. : > 
	ld a,050h		;3efc	3e 50 	> P 
	jp 03e3ah		;3efe	c3 3a 3e 	. : > 
	ld b,008h		;3f01	06 08 	. . 
	call 03f15h		;3f03	cd 15 3f 	. . ? 
	ld a,02eh		;3f06	3e 2e 	> . 
	call 03e3ah		;3f08	cd 3a 3e 	. : > 
	ld b,003h		;3f0b	06 03 	. . 
	call 03f15h		;3f0d	cd 15 3f 	. . ? 
	ld a,020h		;3f10	3e 20 	>   
	jp 03e3ah		;3f12	c3 3a 3e 	. : > 
	call 00011h		;3f15	cd 11 00 	. . . 
	inc hl			;3f18	23 	# 
	and 07fh		;3f19	e6 7f 	.  
	call 03e3ah		;3f1b	cd 3a 3e 	. : > 
	djnz $-9		;3f1e	10 f5 	. . 
	ret			;3f20	c9 	. 
	cp 007h		;3f21	fe 07 	. . 
	jr nz,$+12		;3f23	20 0a 	  . 
	call 03ea9h		;3f25	cd a9 3e 	. . > 
	jp p,04e52h		;3f28	f2 52 4e 	. R N 
	ld b,h			;3f2b	44 	D 
	inc h			;3f2c	24 	$ 
	jr $+5		;3f2d	18 03 	. . 
	call 03f62h		;3f2f	cd 62 3f 	. b ? 
	call 03fa2h		;3f32	cd a2 3f 	. . ? 
	ld (ix+008h),004h		;3f35	dd 36 08 04 	. 6 . . 
	ld c,005h		;3f39	0e 05 	. . 
	push hl			;3f3b	e5 	. 
	ld de,02710h		;3f3c	11 10 27 	. . ' 
	call 03f6eh		;3f3f	cd 6e 3f 	. n ? 
	ld de,003e8h		;3f42	11 e8 03 	. . . 
	call 03f6eh		;3f45	cd 6e 3f 	. n ? 
	ld de,00064h		;3f48	11 64 00 	. d . 
	call 03f6eh		;3f4b	cd 6e 3f 	. n ? 
	ld de,0000ah		;3f4e	11 0a 00 	. . . 
	call 03f6eh		;3f51	cd 6e 3f 	. n ? 
	ld de,00001h		;3f54	11 01 00 	. . . 
	call 03f7ch		;3f57	cd 7c 3f 	. | ? 
	pop hl			;3f5a	e1 	. 
	ret			;3f5b	c9 	. 
	ld (ix+008h),001h		;3f5c	dd 36 08 01 	. 6 . . 
	jr $-39		;3f60	18 d7 	. . 
	ld (ix+008h),005h		;3f62	dd 36 08 05 	. 6 . . 
	jr $-45		;3f66	18 d1 	. . 
	ld (ix+008h),003h		;3f68	dd 36 08 03 	. 6 . . 
	jr $-51		;3f6c	18 cb 	. . 
	ld a,(0f0c0h)		;3f6e	3a c0 f0 	: . . 
	or a			;3f71	b7 	. 
	jr z,$+10		;3f72	28 08 	( . 
	ld a,l			;3f74	7d 	} 
	sub e			;3f75	93 	. 
	ld a,h			;3f76	7c 	| 
	sbc a,d			;3f77	9a 	. 
	jr nc,$+4		;3f78	30 02 	0 . 
	dec c			;3f7a	0d 	. 
	ret			;3f7b	c9 	. 
	ld a,(0f0c0h)		;3f7c	3a c0 f0 	: . . 
	sub c			;3f7f	91 	. 
	jr z,$+10		;3f80	28 08 	( . 
	jr c,$+8		;3f82	38 06 	8 . 
	ld b,a			;3f84	47 	G 
	call 03e38h		;3f85	cd 38 3e 	. 8 > 
	djnz $-3		;3f88	10 fb 	. . 
	xor a			;3f8a	af 	. 
	ld (0f0c0h),a		;3f8b	32 c0 f0 	2 . . 
	ld b,000h		;3f8e	06 00 	. . 
	or a			;3f90	b7 	. 
	sbc hl,de		;3f91	ed 52 	. R 
	inc b			;3f93	04 	. 
	jr nc,$-4		;3f94	30 fa 	0 . 
	add hl,de			;3f96	19 	. 
	dec b			;3f97	05 	. 
	ld a,030h		;3f98	3e 30 	> 0 
	add a,b			;3f9a	80 	. 
	jp 03e3ah		;3f9b	c3 3a 3e 	. : > 
	ld a,007h		;3f9e	3e 07 	> . 
	jr $+5		;3fa0	18 03 	. . 
	ld a,(0f0d8h)		;3fa2	3a d8 f0 	: . . 
	ld c,a			;3fa5	4f 	O 
	and l			;3fa6	a5 	. 
	push af			;3fa7	f5 	. 
	ld a,c			;3fa8	79 	y 
	cpl			;3fa9	2f 	/ 
	and l			;3faa	a5 	. 
	ld l,a			;3fab	6f 	o 
	pop af			;3fac	f1 	. 
	jr z,$+10		;3fad	28 08 	( . 
	ld a,c			;3faf	79 	y 
	inc a			;3fb0	3c 	< 
	add a,l			;3fb1	85 	. 
	ld l,a			;3fb2	6f 	o 
	ld a,h			;3fb3	7c 	| 
	adc a,000h		;3fb4	ce 00 	. . 
	ld h,a			;3fb6	67 	g 
	ld c,003h		;3fb7	0e 03 	. . 
	or a			;3fb9	b7 	. 
	rr h		;3fba	cb 1c 	. . 
	rr l		;3fbc	cb 1d 	. . 
	dec c			;3fbe	0d 	. 
	jr nz,$-6		;3fbf	20 f8 	  . 
	ret			;3fc1	c9 	. 
	ld a,(0f070h)		;3fc2	3a 70 f0 	: p . 
	and 080h		;3fc5	e6 80 	. . 
	rrca			;3fc7	0f 	. 
	or (ix-048h)		;3fc8	dd b6 b8 	. . . 
	ld (0f070h),a		;3fcb	32 70 f0 	2 p . 
	ret			;3fce	c9 	. 
	ld hl,00080h		;3fcf	21 80 00 	! . . 
	and 003h		;3fd2	e6 03 	. . 
	rrca			;3fd4	0f 	. 
	rrca			;3fd5	0f 	. 
	rrca			;3fd6	0f 	. 
	add a,l			;3fd7	85 	. 
	ld l,a			;3fd8	6f 	o 
	ret			;3fd9	c9 	. 
	xor a			;3fda	af 	. 
	ld (0f0bfh),a		;3fdb	32 bf f0 	2 . . 
	ld hl,00000h		;3fde	21 00 00 	! . . 
	ld (0f0d3h),hl		;3fe1	22 d3 f0 	" . . 
	ld (0f0d5h),hl		;3fe4	22 d5 f0 	" . . 
	ret			;3fe7	c9 	. 
	nop			;3fe8	00 	. 
	nop			;3fe9	00 	. 
	nop			;3fea	00 	. 
	nop			;3feb	00 	. 
	nop			;3fec	00 	. 
	nop			;3fed	00 	. 
	nop			;3fee	00 	. 
	nop			;3fef	00 	. 
	nop			;3ff0	00 	. 
	nop			;3ff1	00 	. 
	nop			;3ff2	00 	. 
	nop			;3ff3	00 	. 
	nop			;3ff4	00 	. 
	nop			;3ff5	00 	. 
	nop			;3ff6	00 	. 
	nop			;3ff7	00 	. 
	nop			;3ff8	00 	. 
	nop			;3ff9	00 	. 
	nop			;3ffa	00 	. 
	nop			;3ffb	00 	. 
	nop			;3ffc	00 	. 
	nop			;3ffd	00 	. 
	nop			;3ffe	00 	. 
	nop			;3fff	00 	. 
