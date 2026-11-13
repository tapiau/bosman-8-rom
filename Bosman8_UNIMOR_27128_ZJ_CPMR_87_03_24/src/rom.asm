; z80dasm 1.1.6
; command line: z80dasm -a -t -g 0 Bosman8_UNIMOR_27128_ZJ_CPMR_87_03_24.BIN

	org	00000h

	dec h			;0000	25 	% 
	nop			;0001	00 	. 
	jp 001b2h		;0002	c3 b2 01 	. . . 
	jp 01500h		;0005	c3 00 15 	. . . 
	jp 00c17h		;0008	c3 17 0c 	. . . 
	jp 003a7h		;000b	c3 a7 03 	. . . 
	jp 00985h		;000e	c3 85 09 	. . . 
	jp 0f41ch		;0011	c3 1c f4 	. . . 
	jp 0f422h		;0014	c3 22 f4 	. " . 
	jp 00d12h		;0017	c3 12 0d 	. . . 
	jp 00000h		;001a	c3 00 00 	. . . 
	jp 00000h		;001d	c3 00 00 	. . . 
	jp p,08719h		;0020	f2 19 87 	. . . 
	inc bc			;0023	03 	. 
	inc h			;0024	24 	$ 
	push bc			;0025	c5 	. 
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
	jr z,$+2		;0069	28 00 	( . 
	inc b			;006b	04 	. 
	rrca			;006c	0f 	. 
	ld bc,000c7h		;006d	01 c7 00 	. . . 
	ld a,a			;0070	7f 	 
	nop			;0071	00 	. 
	ret nz			;0072	c0 	. 
	nop			;0073	00 	. 
	jr nz,$+2		;0074	20 00 	  . 
	nop			;0076	00 	. 
	nop			;0077	00 	. 
	inc bc			;0078	03 	. 
	rlca			;0079	07 	. 
	ld hl,04021h		;007a	21 21 40 	! ! @ 
	jr z,$+2		;007d	28 00 	( . 
	inc b			;007f	04 	. 
	rrca			;0080	0f 	. 
	ld bc,000c7h		;0081	01 c7 00 	. . . 
	ld a,a			;0084	7f 	 
	nop			;0085	00 	. 
	ret nz			;0086	c0 	. 
	nop			;0087	00 	. 
	jr nz,$+2		;0088	20 00 	  . 
	nop			;008a	00 	. 
	nop			;008b	00 	. 
	inc bc			;008c	03 	. 
	rlca			;008d	07 	. 
	ld hl,04021h		;008e	21 21 40 	! ! @ 
	jr z,$+2		;0091	28 00 	( . 
	inc b			;0093	04 	. 
	rrca			;0094	0f 	. 
	nop			;0095	00 	. 
	adc a,a			;0096	8f 	. 
	ld bc,000bfh		;0097	01 bf 00 	. . . 
	ret po			;009a	e0 	. 
	nop			;009b	00 	. 
	jr nc,$+2		;009c	30 00 	0 . 
	nop			;009e	00 	. 
	nop			;009f	00 	. 
	inc bc			;00a0	03 	. 
	rlca			;00a1	07 	. 
	ld sp,06031h		;00a2	31 31 60 	1 1 ` 
	jr z,$+2		;00a5	28 00 	( . 
	inc b			;00a7	04 	. 
	rrca			;00a8	0f 	. 
	nop			;00a9	00 	. 
	adc a,a			;00aa	8f 	. 
	ld bc,000bfh		;00ab	01 bf 00 	. . . 
	ret po			;00ae	e0 	. 
	nop			;00af	00 	. 
	jr nc,$+2		;00b0	30 00 	0 . 
	nop			;00b2	00 	. 
	nop			;00b3	00 	. 
	inc bc			;00b4	03 	. 
	rlca			;00b5	07 	. 
	ld sp,06031h		;00b6	31 31 60 	1 1 ` 
	jr z,$+2		;00b9	28 00 	( . 
	inc b			;00bb	04 	. 
	rrca			;00bc	0f 	. 
	nop			;00bd	00 	. 
	adc a,a			;00be	8f 	. 
	ld bc,000bfh		;00bf	01 bf 00 	. . . 
	ret po			;00c2	e0 	. 
	nop			;00c3	00 	. 
	jr nc,$+2		;00c4	30 00 	0 . 
	nop			;00c6	00 	. 
	nop			;00c7	00 	. 
	inc bc			;00c8	03 	. 
	rlca			;00c9	07 	. 
	ld sp,06331h		;00ca	31 31 63 	1 1 c 
	jr z,$+2		;00cd	28 00 	( . 
	inc bc			;00cf	03 	. 
	rlca			;00d0	07 	. 
	nop			;00d1	00 	. 
	rst 0			;00d2	c7 	. 
	nop			;00d3	00 	. 
	ccf			;00d4	3f 	? 
	nop			;00d5	00 	. 
	ret nz			;00d6	c0 	. 
	nop			;00d7	00 	. 
	djnz $+2		;00d8	10 00 	. . 
	nop			;00da	00 	. 
	nop			;00db	00 	. 
	inc bc			;00dc	03 	. 
	rlca			;00dd	07 	. 
	ld de,00311h		;00de	11 11 03 	. . . 
	jr nz,$+34		;00e1	20 20 	    
	jr nz,$+28		;00e3	20 1a 	  . 
	dec de			;00e5	1b 	. 
	ld d,h			;00e6	54 	T 
	dec de			;00e7	1b 	. 
	ld c,a			;00e8	4f 	O 
	dec de			;00e9	1b 	. 
	ld b,b			;00ea	40 	@ 
	dec de			;00eb	1b 	. 
	ld a,01bh		;00ec	3e 1b 	> . 
	ld b,a			;00ee	47 	G 
	dec de			;00ef	1b 	. 
	ld e,b			;00f0	58 	X 
	jr nz,$+28		;00f1	20 1a 	  . 
	ld c,l			;00f3	4d 	M 
	ld l,c			;00f4	69 	i 
	ld l,e			;00f5	6b 	k 
	ld (hl),d			;00f6	72 	r 
	ld l,a			;00f7	6f 	o 
	ld l,e			;00f8	6b 	k 
	ld l,a			;00f9	6f 	o 
	ld l,l			;00fa	6d 	m 
	ld (hl),b			;00fb	70 	p 
	ld (hl),l			;00fc	75 	u 
	ld (hl),h			;00fd	74 	t 
	ld h,l			;00fe	65 	e 
	ld (hl),d			;00ff	72 	r 
	jr nz,$+34		;0100	20 20 	    
	dec de			;0102	1b 	. 
	ld d,e			;0103	53 	S 
	jr nz,$+67		;0104	20 41 	  A 
	ld c,(hl)			;0106	4e 	N 
	ld b,e			;0107	43 	C 
	dec l			;0108	2d 	- 
	inc (hl)			;0109	34 	4 
	add a,b			;010a	80 	. 
	jr nz,$+29		;010b	20 1b 	  . 
	ld d,h			;010d	54 	T 
	jr nz,$+34		;010e	20 20 	    
	jr nz,$+34		;0110	20 20 	    
	jr nz,$+34		;0112	20 20 	    
	jr nz,$+34		;0114	20 20 	    
	halt			;0116	76 	v 
	jr nz,$+92		;0117	20 5a 	  Z 
	jr c,$+50		;0119	38 30 	8 0 
	cpl			;011b	2f 	/ 
	ld sp,00a0dh		;011c	31 0d 0a 	1 . . 
	ld a,(bc)			;011f	0a 	. 
	ld b,h			;0120	44 	D 
	ld a,c			;0121	79 	y 
	ld (hl),e			;0122	73 	s 
	ld l,e			;0123	6b 	k 
	ld l,a			;0124	6f 	o 
	ld (hl),a			;0125	77 	w 
	ld a,c			;0126	79 	y 
	jr nz,$+117		;0127	20 73 	  s 
	ld a,c			;0129	79 	y 
	ld (hl),e			;012a	73 	s 
	ld (hl),h			;012b	74 	t 
	ld h,l			;012c	65 	e 
	ld l,l			;012d	6d 	m 
	jr nz,$+113		;012e	20 6f 	  o 
	ld (hl),b			;0130	70 	p 
	ld h,l			;0131	65 	e 
	ld (hl),d			;0132	72 	r 
	ld h,c			;0133	61 	a 
	ld h,e			;0134	63 	c 
	ld a,c			;0135	79 	y 
	ld l,d			;0136	6a 	j 
	ld l,(hl)			;0137	6e 	n 
	ld a,c			;0138	79 	y 
	jr nz,$+34		;0139	20 20 	    
	ld b,e			;013b	43 	C 
	ld d,b			;013c	50 	P 
	ld c,l			;013d	4d 	M 
	cpl			;013e	2f 	/ 
	ld d,d			;013f	52 	R 
	jr nz,$+120		;0140	20 76 	  v 
	ld (0352eh),a		;0142	32 2e 35 	2 . 5 
	jr nz,$+46		;0145	20 2c 	  , 
	jr nz,$+34		;0147	20 20 	    
	jr nz,$+86		;0149	20 54 	  T 
	ld d,b			;014b	50 	P 
	ld b,c			;014c	41 	A 
	dec a			;014d	3d 	= 
	ld (hl),030h		;014e	36 30 	6 0 
	ld l,e			;0150	6b 	k 
	ld b,d			;0151	42 	B 
	ld l,00dh		;0152	2e 0d 	. . 
	ld a,(bc)			;0154	0a 	. 
	ld a,(bc)			;0155	0a 	. 
	ld a,(bc)			;0156	0a 	. 
	add a,b			;0157	80 	. 
	ld d,d			;0158	52 	R 
	ld b,c			;0159	41 	A 
	ld c,l			;015a	4d 	M 
	ld b,h			;015b	44 	D 
	ld e,c			;015c	59 	Y 
	ld d,e			;015d	53 	S 
	ld c,e			;015e	4b 	K 
	jr nz,$+119		;015f	20 75 	  u 
	ld (hl),e			;0161	73 	s 
	ld a,d			;0162	7a 	z 
	ld l,e			;0163	6b 	k 
	ld l,a			;0164	6f 	o 
	ld h,h			;0165	64 	d 
	ld a,d			;0166	7a 	z 
	ld l,a			;0167	6f 	o 
	ld l,(hl)			;0168	6e 	n 
	ld a,c			;0169	79 	y 
	dec c			;016a	0d 	. 
	ld a,(bc)			;016b	0a 	. 
	add a,b			;016c	80 	. 
	ld a,(de)			;016d	1a 	. 
	ld d,d			;016e	52 	R 
	ld c,a			;016f	4f 	O 
	ld c,l			;0170	4d 	M 
	jr nz,$+119		;0171	20 75 	  u 
	ld (hl),e			;0173	73 	s 
	ld a,d			;0174	7a 	z 
	ld l,e			;0175	6b 	k 
	ld l,a			;0176	6f 	o 
	ld h,h			;0177	64 	d 
	ld a,d			;0178	7a 	z 
	ld l,a			;0179	6f 	o 
	ld l,(hl)			;017a	6e 	n 
	ld a,c			;017b	79 	y 
	dec c			;017c	0d 	. 
	ld a,(bc)			;017d	0a 	. 
	add a,b			;017e	80 	. 
	dec c			;017f	0d 	. 
	dec c			;0180	0d 	. 
	dec de			;0181	1b 	. 
	ld d,h			;0182	54 	T 
	dec de			;0183	1b 	. 
	ld c,a			;0184	4f 	O 
	dec de			;0185	1b 	. 
	ld b,b			;0186	40 	@ 
	dec de			;0187	1b 	. 
	ld a,01bh		;0188	3e 1b 	> . 
	ld b,a			;018a	47 	G 
	dec c			;018b	0d 	. 
	ld a,(bc)			;018c	0a 	. 
	add a,b			;018d	80 	. 
	nop			;018e	00 	. 
	nop			;018f	00 	. 
	jr nc,$+56		;0190	30 36 	0 6 
	inc (hl)			;0192	34 	4 
	add a,b			;0193	80 	. 
	ex af,af'			;0194	08 	. 
	ld e,c			;0195	59 	Y 
	ld (03635h),a		;0196	32 35 36 	2 5 6 
	add a,b			;0199	80 	. 
	ld b,01dh		;019a	06 1d 	. . 
	ld sp,03832h		;019c	31 32 38 	1 2 8 
	add a,b			;019f	80 	. 
	ld b,077h		;01a0	06 77 	. w 
	inc sp			;01a2	33 	3 
	ld (08030h),a		;01a3	32 30 80 	2 0 . 
	nop			;01a6	00 	. 
	ld (hl),a			;01a7	77 	w 
	inc sp			;01a8	33 	3 
	ld (08030h),a		;01a9	32 30 80 	2 0 . 
	nop			;01ac	00 	. 
	pop de			;01ad	d1 	. 
	dec (hl)			;01ae	35 	5 
	ld sp,08032h		;01af	31 32 80 	1 2 . 
	out (007h),a		;01b2	d3 07 	. . 
	ld sp,0f200h		;01b4	31 00 f2 	1 . . 
	ld hl,00000h		;01b7	21 00 00 	! . . 
	xor a			;01ba	af 	. 
	add a,(hl)			;01bb	86 	. 
	inc hl			;01bc	23 	# 
	bit 6,h		;01bd	cb 74 	. t 
	jr z,$-4		;01bf	28 fa 	( . 
	or a			;01c1	b7 	. 
	jr nz,$+4		;01c2	20 02 	  . 
	out (006h),a		;01c4	d3 06 	. . 
	ex af,af'			;01c6	08 	. 
	ld hl,01100h		;01c7	21 00 11 	! . . 
	ld de,0f200h		;01ca	11 00 f2 	. . . 
	ld bc,003cch		;01cd	01 cc 03 	. . . 
	ldir		;01d0	ed b0 	. . 
	ld a,035h		;01d2	3e 35 	> 5 
	out (087h),a		;01d4	d3 87 	. . 
	ld a,076h		;01d6	3e 76 	> v 
	out (087h),a		;01d8	d3 87 	. . 
	ld a,0b6h		;01da	3e b6 	> . 
	out (087h),a		;01dc	d3 87 	. . 
	ld a,003h		;01de	3e 03 	> . 
	out (082h),a		;01e0	d3 82 	. . 
	ld a,0e1h		;01e2	3e e1 	> . 
	out (082h),a		;01e4	d3 82 	. . 
	ld a,004h		;01e6	3e 04 	> . 
	out (082h),a		;01e8	d3 82 	. . 
	ld a,00ch		;01ea	3e 0c 	> . 
	out (082h),a		;01ec	d3 82 	. . 
	ld a,005h		;01ee	3e 05 	> . 
	out (082h),a		;01f0	d3 82 	. . 
	ld a,0eah		;01f2	3e ea 	> . 
	out (082h),a		;01f4	d3 82 	. . 
	ld a,014h		;01f6	3e 14 	> . 
	out (085h),a		;01f8	d3 85 	. . 
	ld a,000h		;01fa	3e 00 	> . 
	out (085h),a		;01fc	d3 85 	. . 
	in a,(080h)		;01fe	db 80 	. . 
	ld a,001h		;0200	3e 01 	> . 
	call 00025h		;0202	cd 25 00 	. % . 
	in a,(080h)		;0205	db 80 	. . 
	ld a,099h		;0207	3e 99 	> . 
	out (084h),a		;0209	d3 84 	. . 
	ld a,099h		;020b	3e 99 	> . 
	out (084h),a		;020d	d3 84 	. . 
	ld hl,0f36ah		;020f	21 6a f3 	! j . 
	call 00985h		;0212	cd 85 09 	. . . 
	ld a,0d5h		;0215	3e d5 	> . 
	ld (00003h),a		;0217	32 03 00 	2 . . 
	xor a			;021a	af 	. 
	ld (00004h),a		;021b	32 04 00 	2 . . 
	ld hl,0f000h		;021e	21 00 f0 	! . . 
	ld b,000h		;0221	06 00 	. . 
	ld (hl),a			;0223	77 	w 
	inc hl			;0224	23 	# 
	djnz $-2		;0225	10 fc 	. . 
	ld a,001h		;0227	3e 01 	> . 
	ld (0f13ah),a		;0229	32 3a f1 	2 : . 
	call 00391h		;022c	cd 91 03 	. . . 
	in a,(098h)		;022f	db 98 	. . 
	and 028h		;0231	e6 28 	. ( 
	jr z,$+30		;0233	28 1c 	( . 
	cp 008h		;0235	fe 08 	. . 
	jr nz,$+7		;0237	20 05 	  . 
	ld hl,00069h		;0239	21 69 00 	! i . 
	jr $+13		;023c	18 0b 	. . 
	cp 020h		;023e	fe 20 	.   
	ld hl,000b9h		;0240	21 b9 00 	! . . 
	jp nz,00249h		;0243	c2 49 02 	. I . 
	ld hl,00091h		;0246	21 91 00 	! . . 
	ld de,0f2bfh		;0249	11 bf f2 	. . . 
	ld bc,00028h		;024c	01 28 00 	. ( . 
	ldir		;024f	ed b0 	. . 
	out (0f5h),a		;0251	d3 f5 	. . 
	xor a			;0253	af 	. 
	ld (0f355h),a		;0254	32 55 f3 	2 U . 
	ld (0f357h),a		;0257	32 57 f3 	2 W . 
	ld a,01eh		;025a	3e 1e 	> . 
	call 00025h		;025c	cd 25 00 	. % . 
	ld a,0d0h		;025f	3e d0 	> . 
	out (088h),a		;0261	d3 88 	. . 
	in a,(098h)		;0263	db 98 	. . 
	and 040h		;0265	e6 40 	. @ 
	ld a,001h		;0267	3e 01 	> . 
	call z,008b7h		;0269	cc b7 08 	. . . 
	ld a,000h		;026c	3e 00 	> . 
	call 008b7h		;026e	cd b7 08 	. . . 
	out (0f8h),a		;0271	d3 f8 	. . 
	out (0ffh),a		;0273	d3 ff 	. . 
	ld b,004h		;0275	06 04 	. . 
	call 00357h		;0277	cd 57 03 	. W . 
	add a,a			;027a	87 	. 
	push af			;027b	f5 	. 
	ld b,000h		;027c	06 00 	. . 
	call 00357h		;027e	cd 57 03 	. W . 
	dec a			;0281	3d 	= 
	pop bc			;0282	c1 	. 
	add a,b			;0283	80 	. 
	add a,a			;0284	87 	. 
	ld c,a			;0285	4f 	O 
	ld b,000h		;0286	06 00 	. . 
	ld hl,0018eh		;0288	21 8e 01 	! . . 
	add hl,bc			;028b	09 	. 
	add hl,bc			;028c	09 	. 
	add hl,bc			;028d	09 	. 
	ld d,(hl)			;028e	56 	V 
	inc hl			;028f	23 	# 
	ld e,(hl)			;0290	5e 	^ 
	inc hl			;0291	23 	# 
	push hl			;0292	e5 	. 
	ld a,(0f2b8h)		;0293	3a b8 f2 	: . . 
	ld b,a			;0296	47 	G 
	add a,d			;0297	82 	. 
	ld (0f2b8h),a		;0298	32 b8 f2 	2 . . 
	ld a,b			;029b	78 	x 
	add a,a			;029c	87 	. 
	add a,a			;029d	87 	. 
	add a,a			;029e	87 	. 
	add a,a			;029f	87 	. 
	sub b			;02a0	90 	. 
	sub e			;02a1	93 	. 
	jr c,$+3		;02a2	38 01 	8 . 
	xor a			;02a4	af 	. 
	neg		;02a5	ed 44 	. D 
	ld (0f2b0h),a		;02a7	32 b0 f2 	2 . . 
	ld c,000h		;02aa	0e 00 	. . 
	ld a,(0f2b6h)		;02ac	3a b6 f2 	: . . 
	ld b,a			;02af	47 	G 
	ld a,(0f2b8h)		;02b0	3a b8 f2 	: . . 
	xor 00eh		;02b3	ee 0e 	. . 
	ld hl,00000h		;02b5	21 00 00 	! . . 
	or a			;02b8	b7 	. 
	rra			;02b9	1f 	. 
	jr nc,$+5		;02ba	30 03 	0 . 
	ld hl,07800h		;02bc	21 00 78 	! . x 
	ld de,0fa20h		;02bf	11 20 fa 	.   . 
	push bc			;02c2	c5 	. 
	call 0f3e3h		;02c3	cd e3 f3 	. . . 
	pop bc			;02c6	c1 	. 
	push hl			;02c7	e5 	. 
	push bc			;02c8	c5 	. 
	push bc			;02c9	c5 	. 
	call 0f410h		;02ca	cd 10 f4 	. . . 
	ld c,a			;02cd	4f 	O 
	ld a,(de)			;02ce	1a 	. 
	inc de			;02cf	13 	. 
	cp c			;02d0	b9 	. 
	pop bc			;02d1	c1 	. 
	jr z,$+3		;02d2	28 01 	( . 
	inc c			;02d4	0c 	. 
	djnz $-12		;02d5	10 f2 	. . 
	ld a,c			;02d7	79 	y 
	ld (0fb7ah),a		;02d8	32 7a fb 	2 z . 
	pop bc			;02db	c1 	. 
	pop hl			;02dc	e1 	. 
	cp 004h		;02dd	fe 04 	. . 
	jr c,$+26		;02df	38 18 	8 . 
	ld c,080h		;02e1	0e 80 	. . 
	ld a,040h		;02e3	3e 40 	> @ 
	call 00025h		;02e5	cd 25 00 	. % . 
	ld (hl),0e5h		;02e8	36 e5 	6 . 
	inc hl			;02ea	23 	# 
	dec c			;02eb	0d 	. 
	jr nz,$-4		;02ec	20 fa 	  . 
	djnz $-13		;02ee	10 f1 	. . 
	xor a			;02f0	af 	. 
	ld (0fb7ah),a		;02f1	32 7a fb 	2 z . 
	ld (0fb7ch),a		;02f4	32 7c fb 	2 | . 
	jr $+15		;02f7	18 0d 	. . 
	ld a,(0f2b0h)		;02f9	3a b0 f2 	: . . 
	ld b,a			;02fc	47 	G 
	ld a,(0fb7bh)		;02fd	3a 7b fb 	: { . 
	cp b			;0300	b8 	. 
	jr nc,$+5		;0301	30 03 	0 . 
	ld (0f2b0h),a		;0303	32 b0 f2 	2 . . 
	xor a			;0306	af 	. 
	call 0f3e3h		;0307	cd e3 f3 	. . . 
	ex af,af'			;030a	08 	. 
	jr nz,$+30		;030b	20 1c 	  . 
	ld hl,000e1h		;030d	21 e1 00 	! . . 
	call 00cebh		;0310	cd eb 0c 	. . . 
	pop hl			;0313	e1 	. 
	call 00cebh		;0314	cd eb 0c 	. . . 
	ld hl,0010bh		;0317	21 0b 01 	! . . 
	call 00cebh		;031a	cd eb 0c 	. . . 
	ld hl,00158h		;031d	21 58 01 	! X . 
	ld a,(0fb7ah)		;0320	3a 7a fb 	: z . 
	or a			;0323	b7 	. 
	call nz,00cebh		;0324	c4 eb 0c 	. . . 
	jr $+21		;0327	18 13 	. . 
	ld hl,0016dh		;0329	21 6d 01 	! m . 
	call 00cebh		;032c	cd eb 0c 	. . . 
	jp 0f443h		;032f	c3 43 f4 	. C . 
	ld sp,0f200h		;0332	31 00 f2 	1 . . 
	xor a			;0335	af 	. 
	call 00d12h		;0336	cd 12 0d 	. . . 
	call 00391h		;0339	cd 91 03 	. . . 
	ld a,(0f2b0h)		;033c	3a b0 f2 	: . . 
	ld (0fb7bh),a		;033f	32 7b fb 	2 { . 
	ld hl,0017fh		;0342	21 7f 01 	!  . 
	call 00cebh		;0345	cd eb 0c 	. . . 
	ld hl,0f26bh		;0348	21 6b f2 	! k . 
	res 3,(hl)		;034b	cb 9e 	. . 
	ld hl,00004h		;034d	21 04 00 	! . . 
	call 0f41ch		;0350	cd 1c f4 	. . . 
	ld c,a			;0353	4f 	O 
	jp 02260h		;0354	c3 60 22 	. ` " 
	ld a,b			;0357	78 	x 
	call 0f3e3h		;0358	cd e3 f3 	. . . 
	ld hl,00000h		;035b	21 00 00 	! . . 
	call 0f41ch		;035e	cd 1c f4 	. . . 
	ld d,a			;0361	57 	W 
	ld (hl),055h		;0362	36 55 	6 U 
	ld a,b			;0364	78 	x 
	inc a			;0365	3c 	< 
	call 0f3e3h		;0366	cd e3 f3 	. . . 
	call 0f41ch		;0369	cd 1c f4 	. . . 
	ld e,a			;036c	5f 	_ 
	ld (hl),0aah		;036d	36 aa 	6 . 
	ld a,b			;036f	78 	x 
	call 0f3e3h		;0370	cd e3 f3 	. . . 
	call 0f41ch		;0373	cd 1c f4 	. . . 
	cp 055h		;0376	fe 55 	. U 
	jr z,$+11		;0378	28 09 	( . 
	cp 0aah		;037a	fe aa 	. . 
	ld a,000h		;037c	3e 00 	> . 
	ret nz			;037e	c0 	. 
	ld (hl),d			;037f	72 	r 
	ld a,001h		;0380	3e 01 	> . 
	ret			;0382	c9 	. 
	ld a,b			;0383	78 	x 
	inc a			;0384	3c 	< 
	call 0f3e3h		;0385	cd e3 f3 	. . . 
	ld (hl),e			;0388	73 	s 
	ld a,b			;0389	78 	x 
	call 0f3e3h		;038a	cd e3 f3 	. . . 
	ld (hl),d			;038d	72 	r 
	ld a,002h		;038e	3e 02 	> . 
	ret			;0390	c9 	. 
	ld hl,014e0h		;0391	21 e0 14 	! . . 
	ld de,0f060h		;0394	11 60 f0 	. ` . 
	ld bc,00010h		;0397	01 10 00 	. . . 
	ldir		;039a	ed b0 	. . 
	ld hl,014f0h		;039c	21 f0 14 	! . . 
	ld de,0f000h		;039f	11 00 f0 	. . . 
	ld bc,00010h		;03a2	01 10 00 	. . . 
	ldir		;03a5	ed b0 	. . 
	ld a,0c3h		;03a7	3e c3 	> . 
	ld (00000h),a		;03a9	32 00 00 	2 . . 
	ld (00005h),a		;03ac	32 05 00 	2 . . 
	ld (00030h),a		;03af	32 30 00 	2 0 . 
	ld (00038h),a		;03b2	32 38 00 	2 8 . 
	ld hl,0f203h		;03b5	21 03 f2 	! . . 
	ld (00001h),hl		;03b8	22 01 00 	" . . 
	ld hl,0f006h		;03bb	21 06 f0 	! . . 
	ld (00006h),hl		;03be	22 06 00 	" . . 
	ld hl,0f275h		;03c1	21 75 f2 	! u . 
	ld (00031h),hl		;03c4	22 31 00 	" 1 . 
	ld hl,0f272h		;03c7	21 72 f2 	! r . 
	ld (00039h),hl		;03ca	22 39 00 	" 9 . 
	ret			;03cd	c9 	. 
	ld a,c			;03ce	79 	y 
	cp 004h		;03cf	fe 04 	. . 
	jr nc,$+42		;03d1	30 28 	0 ( 
	ld l,c			;03d3	69 	i 
	inc l			;03d4	2c 	, 
	ld a,(0f370h)		;03d5	3a 70 f3 	: p . 
	rrca			;03d8	0f 	. 
	dec l			;03d9	2d 	- 
	jr nz,$-2		;03da	20 fc 	  . 
	jr nc,$+31		;03dc	30 1d 	0 . 
	ld a,c			;03de	79 	y 
	ld (0f34dh),a		;03df	32 4d f3 	2 M . 
	rlca			;03e2	07 	. 
	rlca			;03e3	07 	. 
	rlca			;03e4	07 	. 
	rlca			;03e5	07 	. 
	ld l,a			;03e6	6f 	o 
	ld h,000h		;03e7	26 00 	& . 
	ld de,0f27bh		;03e9	11 7b f2 	. { . 
	add hl,de			;03ec	19 	. 
	push hl			;03ed	e5 	. 
	ld de,0000ah		;03ee	11 0a 00 	. . . 
	add hl,de			;03f1	19 	. 
	ld a,(hl)			;03f2	7e 	~ 
	inc hl			;03f3	23 	# 
	ld h,(hl)			;03f4	66 	f 
	ld l,a			;03f5	6f 	o 
	ld (0f353h),hl		;03f6	22 53 f3 	" S . 
	pop hl			;03f9	e1 	. 
	ret			;03fa	c9 	. 
	ld hl,00000h		;03fb	21 00 00 	! . . 
	xor a			;03fe	af 	. 
	ld (00004h),a		;03ff	32 04 00 	2 . . 
	ret			;0402	c9 	. 
	ld a,(0f34dh)		;0403	3a 4d f3 	: M . 
	or a			;0406	b7 	. 
	jp z,0055eh		;0407	ca 5e 05 	. ^ . 
	xor a			;040a	af 	. 
	ld (0f35dh),a		;040b	32 5d f3 	2 ] . 
	ld hl,(0f353h)		;040e	2a 53 f3 	* S . 
	ld de,00013h		;0411	11 13 00 	. . . 
	add hl,de			;0414	19 	. 
	bit 3,(hl)		;0415	cb 5e 	. ^ 
	ld a,c			;0417	79 	y 
	jr z,$+7		;0418	28 05 	( . 
	cp 002h		;041a	fe 02 	. . 
	jr nz,$+3		;041c	20 01 	  . 
	xor a			;041e	af 	. 
	ld (0f35eh),a		;041f	32 5e f3 	2 ^ . 
	cp 002h		;0422	fe 02 	. . 
	jr nz,$+33		;0424	20 1f 	  . 
	ld hl,(0f353h)		;0426	2a 53 f3 	* S . 
	inc hl			;0429	23 	# 
	ld b,(hl)			;042a	46 	F 
	ld a,001h		;042b	3e 01 	> . 
	rlca			;042d	07 	. 
	djnz $-1		;042e	10 fd 	. . 
	ld (0f357h),a		;0430	32 57 f3 	2 W . 
	ld a,(0f34dh)		;0433	3a 4d f3 	: M . 
	ld (0f358h),a		;0436	32 58 f3 	2 X . 
	ld a,(0f34eh)		;0439	3a 4e f3 	: N . 
	ld (0f359h),a		;043c	32 59 f3 	2 Y . 
	ld a,(0f350h)		;043f	3a 50 f3 	: P . 
	ld (0f35ah),a		;0442	32 5a f3 	2 Z . 
	ld a,(0f357h)		;0445	3a 57 f3 	: W . 
	or a			;0448	b7 	. 
	jr z,$+58		;0449	28 38 	( 8 
	dec a			;044b	3d 	= 
	ld (0f357h),a		;044c	32 57 f3 	2 W . 
	ld a,(0f34dh)		;044f	3a 4d f3 	: M . 
	ld hl,0f358h		;0452	21 58 f3 	! X . 
	cp (hl)			;0455	be 	. 
	jr nz,$+45		;0456	20 2b 	  + 
	ld a,(0f359h)		;0458	3a 59 f3 	: Y . 
	ld hl,0f34eh		;045b	21 4e f3 	! N . 
	cp (hl)			;045e	be 	. 
	jr nz,$+36		;045f	20 22 	  " 
	ld a,(0f350h)		;0461	3a 50 f3 	: P . 
	ld hl,0f35ah		;0464	21 5a f3 	! Z . 
	cp (hl)			;0467	be 	. 
	jr nz,$+27		;0468	20 19 	  . 
	inc (hl)			;046a	34 	4 
	ld a,(hl)			;046b	7e 	~ 
	push hl			;046c	e5 	. 
	ld hl,(0f353h)		;046d	2a 53 f3 	* S . 
	cp (hl)			;0470	be 	. 
	pop hl			;0471	e1 	. 
	jr c,$+11		;0472	38 09 	8 . 
	ld (hl),000h		;0474	36 00 	6 . 
	ld a,(0f359h)		;0476	3a 59 f3 	: Y . 
	inc a			;0479	3c 	< 
	ld (0f359h),a		;047a	32 59 f3 	2 Y . 
	xor a			;047d	af 	. 
	ld (0f35ch),a		;047e	32 5c f3 	2 \ . 
	jr $+36		;0481	18 22 	. " 
	xor a			;0483	af 	. 
	ld (0f357h),a		;0484	32 57 f3 	2 W . 
	inc a			;0487	3c 	< 
	ld (0f35ch),a		;0488	32 5c f3 	2 \ . 
	jr $+26		;048b	18 18 	. . 
	ld a,(0f34dh)		;048d	3a 4d f3 	: M . 
	or a			;0490	b7 	. 
	jp z,00580h		;0491	ca 80 05 	. . . 
	xor a			;0494	af 	. 
	ld (0f357h),a		;0495	32 57 f3 	2 W . 
	ld a,001h		;0498	3e 01 	> . 
	ld (0f35dh),a		;049a	32 5d f3 	2 ] . 
	ld (0f35ch),a		;049d	32 5c f3 	2 \ . 
	ld a,002h		;04a0	3e 02 	> . 
	ld (0f35eh),a		;04a2	32 5e f3 	2 ^ . 
	xor a			;04a5	af 	. 
	ld (0f35bh),a		;04a6	32 5b f3 	2 [ . 
	ld hl,(0f353h)		;04a9	2a 53 f3 	* S . 
	ld de,0000fh		;04ac	11 0f 00 	. . . 
	add hl,de			;04af	19 	. 
	ld b,(hl)			;04b0	46 	F 
	ld a,b			;04b1	78 	x 
	or a			;04b2	b7 	. 
	ld a,(0f350h)		;04b3	3a 50 f3 	: P . 
	jr z,$+6		;04b6	28 04 	( . 
	or a			;04b8	b7 	. 
	rra			;04b9	1f 	. 
	djnz $-2		;04ba	10 fc 	. . 
	ld (0f34fh),a		;04bc	32 4f f3 	2 O . 
	ld hl,0f355h		;04bf	21 55 f3 	! U . 
	ld a,(hl)			;04c2	7e 	~ 
	ld (hl),001h		;04c3	36 01 	6 . 
	or a			;04c5	b7 	. 
	jr z,$+36		;04c6	28 22 	( " 
	ld a,(0f34dh)		;04c8	3a 4d f3 	: M . 
	ld hl,0f344h		;04cb	21 44 f3 	! D . 
	cp (hl)			;04ce	be 	. 
	jr nz,$+20		;04cf	20 12 	  . 
	ld a,(0f347h)		;04d1	3a 47 f3 	: G . 
	ld hl,0f34eh		;04d4	21 4e f3 	! N . 
	cp (hl)			;04d7	be 	. 
	jr nz,$+11		;04d8	20 09 	  . 
	ld a,(0f34fh)		;04da	3a 4f f3 	: O . 
	ld hl,0f348h		;04dd	21 48 f3 	! H . 
	cp (hl)			;04e0	be 	. 
	jr z,$+44		;04e1	28 2a 	( * 
	ld a,(0f356h)		;04e3	3a 56 f3 	: V . 
	or a			;04e6	b7 	. 
	call nz,00553h		;04e7	c4 53 05 	. S . 
	ld a,(0f34dh)		;04ea	3a 4d f3 	: M . 
	ld (0f344h),a		;04ed	32 44 f3 	2 D . 
	ld a,(0f34eh)		;04f0	3a 4e f3 	: N . 
	ld (0f347h),a		;04f3	32 47 f3 	2 G . 
	ld a,(0f34fh)		;04f6	3a 4f f3 	: O . 
	ld (0f348h),a		;04f9	32 48 f3 	2 H . 
	ld hl,(0f353h)		;04fc	2a 53 f3 	* S . 
	ld (0f34bh),hl		;04ff	22 4b f3 	" K . 
	ld a,(0f35ch)		;0502	3a 5c f3 	: \ . 
	or a			;0505	b7 	. 
	call nz,00556h		;0506	c4 56 05 	. V . 
	xor a			;0509	af 	. 
	ld (0f356h),a		;050a	32 56 f3 	2 V . 
	ld hl,(0f353h)		;050d	2a 53 f3 	* S . 
	ld de,00010h		;0510	11 10 00 	. . . 
	add hl,de			;0513	19 	. 
	ld l,(hl)			;0514	6e 	n 
	ld a,(0f350h)		;0515	3a 50 f3 	: P . 
	and l			;0518	a5 	. 
	ld l,a			;0519	6f 	o 
	ld h,000h		;051a	26 00 	& . 
	add hl,hl			;051c	29 	) 
	add hl,hl			;051d	29 	) 
	add hl,hl			;051e	29 	) 
	add hl,hl			;051f	29 	) 
	add hl,hl			;0520	29 	) 
	add hl,hl			;0521	29 	) 
	add hl,hl			;0522	29 	) 
	ld de,0fc00h		;0523	11 00 fc 	. . . 
	add hl,de			;0526	19 	. 
	ld de,(0f351h)		;0527	ed 5b 51 f3 	. [ Q . 
	ld bc,00080h		;052b	01 80 00 	. . . 
	ld a,(0f35dh)		;052e	3a 5d f3 	: ] . 
	or a			;0531	b7 	. 
	jr nz,$+8		;0532	20 06 	  . 
	ld a,001h		;0534	3e 01 	> . 
	ld (0f356h),a		;0536	32 56 f3 	2 V . 
	ex de,hl			;0539	eb 	. 
	call 0f409h		;053a	cd 09 f4 	. . . 
	ld a,(0f35eh)		;053d	3a 5e f3 	: ^ . 
	cp 001h		;0540	fe 01 	. . 
	ld a,(0f35bh)		;0542	3a 5b f3 	: [ . 
	ret nz			;0545	c0 	. 
	or a			;0546	b7 	. 
	ret nz			;0547	c0 	. 
	xor a			;0548	af 	. 
	ld (0f356h),a		;0549	32 56 f3 	2 V . 
	call 00553h		;054c	cd 53 05 	. S . 
	ld a,(0f35bh)		;054f	3a 5b f3 	: [ . 
	ret			;0552	c9 	. 
	ld a,006h		;0553	3e 06 	> . 
	ld de,0043eh		;0555	11 3e 04 	. > . 
	ld (0f345h),a		;0558	32 45 f3 	2 E . 
	jp 005b7h		;055b	c3 b7 05 	. . . 
	ld hl,(0f351h)		;055e	2a 51 f3 	* Q . 
	ld de,0f9a0h		;0561	11 a0 f9 	. . . 
	ld bc,00080h		;0564	01 80 00 	. . . 
	call 0f409h		;0567	cd 09 f4 	. . . 
	call 005a2h		;056a	cd a2 05 	. . . 
	call 0f3e3h		;056d	cd e3 f3 	. . . 
	ex de,hl			;0570	eb 	. 
	ld hl,0f9a0h		;0571	21 a0 f9 	! . . 
	ld bc,00080h		;0574	01 80 00 	. . . 
	ldir		;0577	ed b0 	. . 
	ld a,0ffh		;0579	3e ff 	> . 
	call 0f3e3h		;057b	cd e3 f3 	. . . 
	xor a			;057e	af 	. 
	ret			;057f	c9 	. 
	call 005a2h		;0580	cd a2 05 	. . . 
	call 0f3e3h		;0583	cd e3 f3 	. . . 
	ld de,0f9a0h		;0586	11 a0 f9 	. . . 
	ld bc,00080h		;0589	01 80 00 	. . . 
	call 0f409h		;058c	cd 09 f4 	. . . 
	ld a,0ffh		;058f	3e ff 	> . 
	call 0f3e3h		;0591	cd e3 f3 	. . . 
	ld hl,(0f351h)		;0594	2a 51 f3 	* Q . 
	ex de,hl			;0597	eb 	. 
	ld hl,0f9a0h		;0598	21 a0 f9 	! . . 
	ld bc,00080h		;059b	01 80 00 	. . . 
	ldir		;059e	ed b0 	. . 
	xor a			;05a0	af 	. 
	ret			;05a1	c9 	. 
	ld hl,(0f34fh)		;05a2	2a 4f f3 	* O . 
	ld l,000h		;05a5	2e 00 	. . 
	srl h		;05a7	cb 3c 	. < 
	rr l		;05a9	cb 1d 	. . 
	ld de,07800h		;05ab	11 00 78 	. . x 
	ld a,(0f34eh)		;05ae	3a 4e f3 	: N . 
	xor 00eh		;05b1	ee 0e 	. . 
	rrca			;05b3	0f 	. 
	ret nc			;05b4	d0 	. 
	add hl,de			;05b5	19 	. 
	ret			;05b6	c9 	. 
	ld hl,(0f34bh)		;05b7	2a 4b f3 	* K . 
	ld bc,00011h		;05ba	01 11 00 	. . . 
	add hl,bc			;05bd	09 	. 
	ld de,0f33bh		;05be	11 3b f3 	. ; . 
	ld bc,00003h		;05c1	01 03 00 	. . . 
	ldir		;05c4	ed b0 	. . 
	ld a,080h		;05c6	3e 80 	> . 
	ld (0f33fh),a		;05c8	32 3f f3 	2 ? . 
	call 007bah		;05cb	cd ba 07 	. . . 
	in a,(098h)		;05ce	db 98 	. . 
	and 004h		;05d0	e6 04 	. . 
	jr nz,$+90		;05d2	20 58 	  X 
	ld b,000h		;05d4	06 00 	. . 
	in a,(098h)		;05d6	db 98 	. . 
	and 004h		;05d8	e6 04 	. . 
	jr nz,$+82		;05da	20 50 	  P 
	ld a,005h		;05dc	3e 05 	> . 
	call 00025h		;05de	cd 25 00 	. % . 
	djnz $-11		;05e1	10 f3 	. . 
	ld hl,00887h		;05e3	21 87 08 	! . . 
	call 00c17h		;05e6	cd 17 0c 	. . . 
	ld b,0fah		;05e9	06 fa 	. . 
	in a,(098h)		;05eb	db 98 	. . 
	and 004h		;05ed	e6 04 	. . 
	jr nz,$+55		;05ef	20 35 	  5 
	call 00cfdh		;05f1	cd fd 0c 	. . . 
	jr z,$+35		;05f4	28 21 	( ! 
	call 00d02h		;05f6	cd 02 0d 	. . . 
	cp 052h		;05f9	fe 52 	. R 
	jr nz,$+28		;05fb	20 1a 	  . 
	ld hl,00ce1h		;05fd	21 e1 0c 	! . . 
	call 00cebh		;0600	cd eb 0c 	. . . 
	call 008f7h		;0603	cd f7 08 	. . . 
	ld hl,0f13ah		;0606	21 3a f1 	! : . 
	res 1,(hl)		;0609	cb 8e 	. . 
	ld hl,00004h		;060b	21 04 00 	! . . 
	call 0f41ch		;060e	cd 1c f4 	. . . 
	and 0f0h		;0611	e6 f0 	. . 
	ld (hl),a			;0613	77 	w 
	jp 0f203h		;0614	c3 03 f2 	. . . 
	ld a,004h		;0617	3e 04 	> . 
	call 00025h		;0619	cd 25 00 	. % . 
	djnz $-49		;061c	10 cd 	. . 
	ld hl,00ce6h		;061e	21 e6 0c 	! . . 
	call 00cebh		;0621	cd eb 0c 	. . . 
	jr $-59		;0624	18 c3 	. . 
	ld hl,00ce1h		;0626	21 e1 0c 	! . . 
	call 00cebh		;0629	cd eb 0c 	. . . 
	ld de,00665h		;062c	11 65 06 	. e . 
	ld (0f342h),de		;062f	ed 53 42 f3 	. S B . 
	out (0f3h),a		;0633	d3 f3 	. . 
	ld hl,0fc00h		;0635	21 00 fc 	! . . 
	ld b,000h		;0638	06 00 	. . 
	ld c,08bh		;063a	0e 8b 	. . 
	ld a,(0f345h)		;063c	3a 45 f3 	: E . 
	cp 006h		;063f	fe 06 	. . 
	jr z,$+21		;0641	28 13 	( . 
	sub 004h		;0643	d6 04 	. . 
	jr nz,$+116		;0645	20 72 	  r 
	ld a,080h		;0647	3e 80 	> . 
	out (088h),a		;0649	d3 88 	. . 
	in a,(098h)		;064b	db 98 	. . 
	rra			;064d	1f 	. 
	jp c,0064bh		;064e	da 4b 06 	. K . 
	ini		;0651	ed a2 	. . 
	jp 0064bh		;0653	c3 4b 06 	. K . 
	ld a,0a4h		;0656	3e a4 	> . 
	out (088h),a		;0658	d3 88 	. . 
	in a,(098h)		;065a	db 98 	. . 
	rra			;065c	1f 	. 
	jp c,0065ah		;065d	da 5a 06 	. Z . 
	outi		;0660	ed a3 	. . 
	jp 0065ah		;0662	c3 5a 06 	. Z . 
	inc sp			;0665	33 	3 
	inc sp			;0666	33 	3 
	in a,(088h)		;0667	db 88 	. . 
	and 07fh		;0669	e6 7f 	.  
	ld (0f35bh),a		;066b	32 5b f3 	2 [ . 
	ld c,a			;066e	4f 	O 
	out (0f2h),a		;066f	d3 f2 	. . 
	ld a,c			;0671	79 	y 
	and 01fh		;0672	e6 1f 	. . 
	jr z,$+75		;0674	28 49 	( I 
	ld a,(0f33fh)		;0676	3a 3f f3 	: ? . 
	bit 4,c		;0679	cb 61 	. a 
	jr nz,$+4		;067b	20 02 	  . 
	and 07fh		;067d	e6 7f 	.  
	inc a			;067f	3c 	< 
	ld (0f33fh),a		;0680	32 3f f3 	2 ? . 
	bit 7,a		;0683	cb 7f 	.  
	jr z,$+32		;0685	28 1e 	( . 
	and 07fh		;0687	e6 7f 	.  
	cp 003h		;0689	fe 03 	. . 
	jp c,005cbh		;068b	da cb 05 	. . . 
	cp 005h		;068e	fe 05 	. . 
	jr nc,$+71		;0690	30 45 	0 E 
	call 00907h		;0692	cd 07 09 	. . . 
	ld hl,0f337h		;0695	21 37 f3 	! 7 . 
	ld a,(0f344h)		;0698	3a 44 f3 	: D . 
	dec a			;069b	3d 	= 
	rrca			;069c	0f 	. 
	jr nc,$+3		;069d	30 01 	0 . 
	inc hl			;069f	23 	# 
	ld (hl),000h		;06a0	36 00 	6 . 
	jp 005cbh		;06a2	c3 cb 05 	. . . 
	and 07fh		;06a5	e6 7f 	.  
	cp 00ch		;06a7	fe 0c 	. . 
	jp c,005cbh		;06a9	da cb 05 	. . . 
	cp 00fh		;06ac	fe 0f 	. . 
	jr nc,$+41		;06ae	30 27 	0 ' 
	call 0096bh		;06b0	cd 6b 09 	. k . 
	call 0096fh		;06b3	cd 6f 09 	. o . 
	jp 005cbh		;06b6	c3 cb 05 	. . . 
	ld (0f35bh),a		;06b9	32 5b f3 	2 [ . 
	out (0f2h),a		;06bc	d3 f2 	. . 
	ret			;06be	c9 	. 
	ld a,(0f345h)		;06bf	3a 45 f3 	: E . 
	cp 004h		;06c2	fe 04 	. . 
	ret z			;06c4	c8 	. 
	ld a,(0f35bh)		;06c5	3a 5b f3 	: [ . 
	or a			;06c8	b7 	. 
	ret z			;06c9	c8 	. 
	ld hl,006f3h		;06ca	21 f3 06 	! . . 
	call 00c17h		;06cd	cd 17 0c 	. . . 
	or a			;06d0	b7 	. 
	jp z,005cbh		;06d1	ca cb 05 	. . . 
	jp 0f203h		;06d4	c3 03 f2 	. . . 
	ld a,(0f345h)		;06d7	3a 45 f3 	: E . 
	cp 004h		;06da	fe 04 	. . 
	ld hl,0073dh		;06dc	21 3d 07 	! = . 
	jr z,$+5		;06df	28 03 	( . 
	ld hl,0077ch		;06e1	21 7c 07 	! | . 
	call 00c17h		;06e4	cd 17 0c 	. . . 
	or a			;06e7	b7 	. 
	jp z,005cbh		;06e8	ca cb 05 	. . . 
	dec a			;06eb	3d 	= 
	jp nz,0f203h		;06ec	c2 03 f2 	. . . 
	ld (0f35bh),a		;06ef	32 5b f3 	2 [ . 
	ret			;06f2	c9 	. 
	jr nz,$+70		;06f3	20 44 	  D 
	ld a,c			;06f5	79 	y 
	ld (hl),e			;06f6	73 	s 
	ld l,e			;06f7	6b 	k 
	ld l,c			;06f8	69 	i 
	ld h,l			;06f9	65 	e 
	ld (hl),h			;06fa	74 	t 
	ld l,e			;06fb	6b 	k 
	ld h,c			;06fc	61 	a 
	jr nz,$+124		;06fd	20 7a 	  z 
	ld h,c			;06ff	61 	a 
	ld h,d			;0700	62 	b 
	ld h,l			;0701	65 	e 
	ld a,d			;0702	7a 	z 
	ld (hl),b			;0703	70 	p 
	ld l,c			;0704	69 	i 
	ld h,l			;0705	65 	e 
	ld h,e			;0706	63 	c 
	ld a,d			;0707	7a 	z 
	ld l,a			;0708	6f 	o 
	ld l,(hl)			;0709	6e 	n 
	ld h,c			;070a	61 	a 
	jr nz,$+114		;070b	20 70 	  p 
	ld (hl),d			;070d	72 	r 
	ld a,d			;070e	7a 	z 
	ld h,l			;070f	65 	e 
	ld h,h			;0710	64 	d 
	jr nz,$+124		;0711	20 7a 	  z 
	ld h,c			;0713	61 	a 
	ld (hl),b			;0714	70 	p 
	ld l,c			;0715	69 	i 
	ld (hl),e			;0716	73 	s 
	ld h,l			;0717	65 	e 
	ld l,l			;0718	6d 	m 
	jr nz,$+47		;0719	20 2d 	  - 
	jr nz,$+114		;071b	20 70 	  p 
	ld l,a			;071d	6f 	o 
	ld (hl),a			;071e	77 	w 
	ld (hl),h			;071f	74 	t 
	rlca			;0720	07 	. 
	ld (hl),d			;0721	72 	r 
	ld a,d			;0722	7a 	z 
	jr nz,$+42		;0723	20 28 	  ( 
	ld d,b			;0725	50 	P 
	add hl,hl			;0726	29 	) 
	jr nz,$+34		;0727	20 20 	    
	ld (hl),d			;0729	72 	r 
	ld h,l			;072a	65 	e 
	ld a,d			;072b	7a 	z 
	ld a,c			;072c	79 	y 
	ld h,a			;072d	67 	g 
	ld l,(hl)			;072e	6e 	n 
	ld (hl),l			;072f	75 	u 
	ld l,d			;0730	6a 	j 
	jr nz,$+42		;0731	20 28 	  ( 
	ld d,d			;0733	52 	R 
	add hl,hl			;0734	29 	) 
	jr nz,$+34		;0735	20 20 	    
	ccf			;0737	3f 	? 
	jr nz,$-126		;0738	20 80 	  . 
	ld d,b			;073a	50 	P 
	ld d,d			;073b	52 	R 
	add a,b			;073c	80 	. 
	jr nz,$+68		;073d	20 42 	  B 
	ex af,af'			;073f	08 	. 
	ld b,064h		;0740	06 64 	. d 
	jr nz,$+113		;0742	20 6f 	  o 
	ld h,h			;0744	64 	d 
	ld h,e			;0745	63 	c 
	ld a,d			;0746	7a 	z 
	ld a,c			;0747	79 	y 
	ld (hl),h			;0748	74 	t 
	ld (hl),l			;0749	75 	u 
	jr nz,$+47		;074a	20 2d 	  - 
	jr nz,$+114		;074c	20 70 	  p 
	ld l,a			;074e	6f 	o 
	ld (hl),a			;074f	77 	w 
	ld (hl),h			;0750	74 	t 
	rlca			;0751	07 	. 
	ld (hl),d			;0752	72 	r 
	ld a,d			;0753	7a 	z 
	jr nz,$+42		;0754	20 28 	  ( 
	ld d,b			;0756	50 	P 
	add hl,hl			;0757	29 	) 
	jr nz,$+34		;0758	20 20 	    
	ld l,c			;075a	69 	i 
	ld h,a			;075b	67 	g 
	ld l,(hl)			;075c	6e 	n 
	ld l,a			;075d	6f 	o 
	ld (hl),d			;075e	72 	r 
	ld (hl),l			;075f	75 	u 
	ld l,d			;0760	6a 	j 
	jr nz,$+42		;0761	20 28 	  ( 
	ld c,c			;0763	49 	I 
	add hl,hl			;0764	29 	) 
	jr nz,$+34		;0765	20 20 	    
	ld (hl),d			;0767	72 	r 
	ld h,l			;0768	65 	e 
	ld a,d			;0769	7a 	z 
	ld a,c			;076a	79 	y 
	ld h,a			;076b	67 	g 
	ld l,(hl)			;076c	6e 	n 
	ld (hl),l			;076d	75 	u 
	ld l,d			;076e	6a 	j 
	jr nz,$+42		;076f	20 28 	  ( 
	ld d,d			;0771	52 	R 
	add hl,hl			;0772	29 	) 
	jr nz,$+34		;0773	20 20 	    
	ccf			;0775	3f 	? 
	jr nz,$-126		;0776	20 80 	  . 
	ld d,b			;0778	50 	P 
	ld c,c			;0779	49 	I 
	ld d,d			;077a	52 	R 
	add a,b			;077b	80 	. 
	jr nz,$+68		;077c	20 42 	  B 
	ex af,af'			;077e	08 	. 
	ld b,064h		;077f	06 64 	. d 
	jr nz,$+124		;0781	20 7a 	  z 
	ld h,c			;0783	61 	a 
	ld (hl),b			;0784	70 	p 
	ld l,c			;0785	69 	i 
	ld (hl),e			;0786	73 	s 
	ld (hl),l			;0787	75 	u 
	jr nz,$+47		;0788	20 2d 	  - 
	jr nz,$+114		;078a	20 70 	  p 
	ld l,a			;078c	6f 	o 
	ld (hl),a			;078d	77 	w 
	ld (hl),h			;078e	74 	t 
	rlca			;078f	07 	. 
	ld (hl),d			;0790	72 	r 
	ld a,d			;0791	7a 	z 
	jr nz,$+42		;0792	20 28 	  ( 
	ld d,b			;0794	50 	P 
	add hl,hl			;0795	29 	) 
	jr nz,$+34		;0796	20 20 	    
	ld l,c			;0798	69 	i 
	ld h,a			;0799	67 	g 
	ld l,(hl)			;079a	6e 	n 
	ld l,a			;079b	6f 	o 
	ld (hl),d			;079c	72 	r 
	ld (hl),l			;079d	75 	u 
	ld l,d			;079e	6a 	j 
	jr nz,$+42		;079f	20 28 	  ( 
	ld c,c			;07a1	49 	I 
	add hl,hl			;07a2	29 	) 
	jr nz,$+34		;07a3	20 20 	    
	ld (hl),d			;07a5	72 	r 
	ld h,l			;07a6	65 	e 
	ld a,d			;07a7	7a 	z 
	ld a,c			;07a8	79 	y 
	ld h,a			;07a9	67 	g 
	ld l,(hl)			;07aa	6e 	n 
	ld (hl),l			;07ab	75 	u 
	ld l,d			;07ac	6a 	j 
	jr nz,$+42		;07ad	20 28 	  ( 
	ld d,d			;07af	52 	R 
	add hl,hl			;07b0	29 	) 
	jr nz,$+34		;07b1	20 20 	    
	ccf			;07b3	3f 	? 
	jr nz,$-126		;07b4	20 80 	  . 
	ld d,b			;07b6	50 	P 
	ld c,c			;07b7	49 	I 
	ld d,d			;07b8	52 	R 
	add a,b			;07b9	80 	. 
	ld a,(0f344h)		;07ba	3a 44 f3 	: D . 
	out (0f8h),a		;07bd	d3 f8 	. . 
	out (0feh),a		;07bf	d3 fe 	. . 
	ld hl,0f339h		;07c1	21 39 f3 	! 9 . 
	dec a			;07c4	3d 	= 
	jr z,$+3		;07c5	28 01 	( . 
	inc hl			;07c7	23 	# 
	ld c,(hl)			;07c8	4e 	N 
	out (c),a		;07c9	ed 79 	. y 
	dec hl			;07cb	2b 	+ 
	dec hl			;07cc	2b 	+ 
	ld a,(hl)			;07cd	7e 	~ 
	push hl			;07ce	e5 	. 
	ld hl,0f33dh		;07cf	21 3d f3 	! = . 
	bit 7,(hl)		;07d2	cb 7e 	. ~ 
	jr z,$+3		;07d4	28 01 	( . 
	add a,a			;07d6	87 	. 
	out (089h),a		;07d7	d3 89 	. . 
	ld bc,00028h		;07d9	01 28 00 	. ( . 
	bit 5,(hl)		;07dc	cb 6e 	. n 
	jr z,$+4		;07de	28 02 	( . 
	ld c,050h		;07e0	0e 50 	. P 
	ld a,(hl)			;07e2	7e 	~ 
	and 050h		;07e3	e6 50 	. P 
	cp 040h		;07e5	fe 40 	. @ 
	ld a,(0f347h)		;07e7	3a 47 f3 	: G . 
	jr nz,$+7		;07ea	20 05 	  . 
	rra			;07ec	1f 	. 
	jr nc,$+4		;07ed	30 02 	0 . 
	ld b,080h		;07ef	06 80 	. . 
	cp c			;07f1	b9 	. 
	jr c,$+5		;07f2	38 03 	8 . 
	sub c			;07f4	91 	. 
	ld b,080h		;07f5	06 80 	. . 
	ex (sp),hl			;07f7	e3 	. 
	ld (hl),a			;07f8	77 	w 
	ld (0f33eh),a		;07f9	32 3e f3 	2 > . 
	ex (sp),hl			;07fc	e3 	. 
	bit 7,(hl)		;07fd	cb 7e 	. ~ 
	jr z,$+3		;07ff	28 01 	( . 
	add a,a			;0801	87 	. 
	out (08bh),a		;0802	d3 8b 	. . 
	ld a,(0f348h)		;0804	3a 48 f3 	: H . 
	dec hl			;0807	2b 	+ 
	bit 7,b		;0808	cb 78 	. x 
	out (0f7h),a		;080a	d3 f7 	. . 
	jr nz,$+5		;080c	20 03 	  . 
	out (0f6h),a		;080e	d3 f6 	. . 
	dec hl			;0810	2b 	+ 
	add a,(hl)			;0811	86 	. 
	pop hl			;0812	e1 	. 
	out (08ah),a		;0813	d3 8a 	. . 
	ld de,0086fh		;0815	11 6f 08 	. o . 
	ld (0f342h),de		;0818	ed 53 42 f3 	. S B . 
	ld a,(0f33dh)		;081c	3a 3d f3 	: = . 
	and 003h		;081f	e6 03 	. . 
	or 010h		;0821	f6 10 	. . 
	out (088h),a		;0823	d3 88 	. . 
	ld (0f340h),a		;0825	32 40 f3 	2 @ . 
	ld bc,0fa02h		;0828	01 02 fa 	. . . 
	out (0f2h),a		;082b	d3 f2 	. . 
	ld a,010h		;082d	3e 10 	> . 
	call 00025h		;082f	cd 25 00 	. % . 
	out (0f3h),a		;0832	d3 f3 	. . 
	djnz $-9		;0834	10 f5 	. . 
	ld hl,00887h		;0836	21 87 08 	! . . 
	out (0f2h),a		;0839	d3 f2 	. . 
	ld (0f340h),a		;083b	32 40 f3 	2 @ . 
	call 00c17h		;083e	cd 17 0c 	. . . 
	out (0f3h),a		;0841	d3 f3 	. . 
	ld b,0fah		;0843	06 fa 	. . 
	out (0f2h),a		;0845	d3 f2 	. . 
	call 00cfdh		;0847	cd fd 0c 	. . . 
	jr z,$+9		;084a	28 07 	( . 
	call 00d02h		;084c	cd 02 0d 	. . . 
	cp 052h		;084f	fe 52 	. R 
	jr z,$+23		;0851	28 15 	( . 
	ld a,004h		;0853	3e 04 	> . 
	call 00025h		;0855	cd 25 00 	. % . 
	out (0f3h),a		;0858	d3 f3 	. . 
	djnz $-21		;085a	10 e9 	. . 
	ld hl,00ce6h		;085c	21 e6 0c 	! . . 
	out (0f2h),a		;085f	d3 f2 	. . 
	call 00cebh		;0861	cd eb 0c 	. . . 
	out (0f3h),a		;0864	d3 f3 	. . 
	jr $-35		;0866	18 db 	. . 
	ld a,0d0h		;0868	3e d0 	> . 
	out (088h),a		;086a	d3 88 	. . 
	jp 005fdh		;086c	c3 fd 05 	. . . 
	out (0f2h),a		;086f	d3 f2 	. . 
	inc sp			;0871	33 	3 
	inc sp			;0872	33 	3 
	ld a,(0f33eh)		;0873	3a 3e f3 	: > . 
	out (089h),a		;0876	d3 89 	. . 
	ld a,(0f340h)		;0878	3a 40 f3 	: @ . 
	or a			;087b	b7 	. 
	push hl			;087c	e5 	. 
	ld hl,00ce1h		;087d	21 e1 0c 	! . . 
	call z,00cebh		;0880	cc eb 0c 	. . . 
	pop hl			;0883	e1 	. 
	in a,(088h)		;0884	db 88 	. . 
	ret			;0886	c9 	. 
	jr nz,$+85		;0887	20 53 	  S 
	ld (hl),b			;0889	70 	p 
	ld (hl),d			;088a	72 	r 
	ld h,c			;088b	61 	a 
	ld (hl),a			;088c	77 	w 
	ld h,h			;088d	64 	d 
	ld (bc),a			;088e	02 	. 
	jr nz,$+101		;088f	20 63 	  c 
	ld a,d			;0891	7a 	z 
	ld a,c			;0892	79 	y 
	jr nz,$+108		;0893	20 6a 	  j 
	ld h,l			;0895	65 	e 
	ld (hl),e			;0896	73 	s 
	ld (hl),h			;0897	74 	t 
	jr nz,$+102		;0898	20 64 	  d 
	ld a,c			;089a	79 	y 
	ld (hl),e			;089b	73 	s 
	ld l,e			;089c	6b 	k 
	ld l,c			;089d	69 	i 
	ld h,l			;089e	65 	e 
	ld (hl),h			;089f	74 	t 
	ld l,e			;08a0	6b 	k 
	ld h,c			;08a1	61 	a 
	jr nz,$+47		;08a2	20 2d 	  - 
	jr nz,$+116		;08a4	20 72 	  r 
	ld h,l			;08a6	65 	e 
	ld a,d			;08a7	7a 	z 
	ld a,c			;08a8	79 	y 
	ld h,a			;08a9	67 	g 
	ld l,(hl)			;08aa	6e 	n 
	ld (hl),l			;08ab	75 	u 
	ld l,d			;08ac	6a 	j 
	jr nz,$+42		;08ad	20 28 	  ( 
	ld d,d			;08af	52 	R 
	add hl,hl			;08b0	29 	) 
	jr nz,$+34		;08b1	20 20 	    
	ccf			;08b3	3f 	? 
	jr nz,$-126		;08b4	20 80 	  . 
	add a,b			;08b6	80 	. 
	push af			;08b7	f5 	. 
	out (0feh),a		;08b8	d3 fe 	. . 
	out (0f8h),a		;08ba	d3 f8 	. . 
	ld hl,0f337h		;08bc	21 37 f3 	! 7 . 
	rra			;08bf	1f 	. 
	ld a,(0f2d2h)		;08c0	3a d2 f2 	: . . 
	jr nc,$+6		;08c3	30 04 	0 . 
	ld a,(0f2e6h)		;08c5	3a e6 f2 	: . . 
	inc hl			;08c8	23 	# 
	ld (0f33dh),a		;08c9	32 3d f3 	2 = . 
	ld (hl),000h		;08cc	36 00 	6 . 
	inc hl			;08ce	23 	# 
	inc hl			;08cf	23 	# 
	ld c,(hl)			;08d0	4e 	N 
	out (c),a		;08d1	ed 79 	. y 
	call 00907h		;08d3	cd 07 09 	. . . 
	ld hl,0f370h		;08d6	21 70 f3 	! p . 
	pop bc			;08d9	c1 	. 
	ret z			;08da	c8 	. 
	djnz $+5		;08db	10 03 	. . 
	set 2,(hl)		;08dd	cb d6 	. . 
	ret			;08df	c9 	. 
	set 1,(hl)		;08e0	cb ce 	. . 
	ld bc,009c4h		;08e2	01 c4 09 	. . . 
	ld a,001h		;08e5	3e 01 	> . 
	call 00025h		;08e7	cd 25 00 	. % . 
	in a,(098h)		;08ea	db 98 	. . 
	and 004h		;08ec	e6 04 	. . 
	jr nz,$+19		;08ee	20 11 	  . 
	dec bc			;08f0	0b 	. 
	ld a,b			;08f1	78 	x 
	or c			;08f2	b1 	. 
	jr nz,$-14		;08f3	20 f0 	  . 
	jr $+2		;08f5	18 00 	. . 
	out (0f4h),a		;08f7	d3 f4 	. . 
	ld a,005h		;08f9	3e 05 	> . 
	call 00025h		;08fb	cd 25 00 	. % . 
	out (0f5h),a		;08fe	d3 f5 	. . 
	ret			;0900	c9 	. 
	ld hl,0f13ah		;0901	21 3a f1 	! : . 
	set 1,(hl)		;0904	cb ce 	. . 
	ret			;0906	c9 	. 
	ld a,(0f33dh)		;0907	3a 3d f3 	: = . 
	and 003h		;090a	e6 03 	. . 
	or 008h		;090c	f6 08 	. . 
	out (088h),a		;090e	d3 88 	. . 
	ld de,00962h		;0910	11 62 09 	. b . 
	ld (0f342h),de		;0913	ed 53 42 f3 	. S B . 
	ld b,0c8h		;0917	06 c8 	. . 
	out (0f2h),a		;0919	d3 f2 	. . 
	ld a,032h		;091b	3e 32 	> 2 
	call 00025h		;091d	cd 25 00 	. % . 
	out (0f3h),a		;0920	d3 f3 	. . 
	djnz $-9		;0922	10 f5 	. . 
	out (0f2h),a		;0924	d3 f2 	. . 
	ld hl,00931h		;0926	21 31 09 	! 1 . 
	call 00c17h		;0929	cd 17 0c 	. . . 
	or a			;092c	b7 	. 
	ret z			;092d	c8 	. 
	jp 0f443h		;092e	c3 43 f4 	. C . 
	ld c,b			;0931	48 	H 
	jr nz,$+47		;0932	20 2d 	  - 
	jr nz,$+71		;0934	20 45 	  E 
	ld d,d			;0936	52 	R 
	ld d,d			;0937	52 	R 
	ld c,a			;0938	4f 	O 
	ld d,d			;0939	52 	R 
	jr nz,$+34		;093a	20 20 	    
	dec l			;093c	2d 	- 
	jr nz,$+111		;093d	20 6d 	  m 
	ld l,c			;093f	69 	i 
	ld l,e			;0940	6b 	k 
	ld (hl),d			;0941	72 	r 
	ld l,a			;0942	6f 	o 
	ld (hl),e			;0943	73 	s 
	ld a,c			;0944	79 	y 
	ld (hl),e			;0945	73 	s 
	ld (hl),h			;0946	74 	t 
	ld h,l			;0947	65 	e 
	ld l,l			;0948	6d 	m 
	jr nz,$+42		;0949	20 28 	  ( 
	ld c,l			;094b	4d 	M 
	add hl,hl			;094c	29 	) 
	jr nz,$+34		;094d	20 20 	    
	ld l,c			;094f	69 	i 
	ld h,a			;0950	67 	g 
	ld l,(hl)			;0951	6e 	n 
	ld l,a			;0952	6f 	o 
	ld (hl),d			;0953	72 	r 
	ld (hl),l			;0954	75 	u 
	ld l,d			;0955	6a 	j 
	jr nz,$+42		;0956	20 28 	  ( 
	ld c,c			;0958	49 	I 
	add hl,hl			;0959	29 	) 
	jr nz,$+34		;095a	20 20 	    
	ccf			;095c	3f 	? 
	jr nz,$-126		;095d	20 80 	  . 
	ld c,c			;095f	49 	I 
	ld c,l			;0960	4d 	M 
	add a,b			;0961	80 	. 
	out (0f2h),a		;0962	d3 f2 	. . 
	inc sp			;0964	33 	3 
	inc sp			;0965	33 	3 
	in a,(088h)		;0966	db 88 	. . 
	and 004h		;0968	e6 04 	. . 
	ret			;096a	c9 	. 
	ld c,040h		;096b	0e 40 	. @ 
	jr $+4		;096d	18 02 	. . 
	ld c,060h		;096f	0e 60 	. ` 
	ld a,(0f33dh)		;0971	3a 3d f3 	: = . 
	and 003h		;0974	e6 03 	. . 
	or c			;0976	b1 	. 
	out (088h),a		;0977	d3 88 	. . 
	ld a,001h		;0979	3e 01 	> . 
	call 00025h		;097b	cd 25 00 	. % . 
	in a,(088h)		;097e	db 88 	. . 
	and 001h		;0980	e6 01 	. . 
	jr nz,$-4		;0982	20 fa 	  . 
	ret			;0984	c9 	. 
	push bc			;0985	c5 	. 
	ld a,003h		;0986	3e 03 	> . 
	ld bc,00383h		;0988	01 83 03 	. . . 
	out (c),a		;098b	ed 79 	. y 
	inc a			;098d	3c 	< 
	outi		;098e	ed a3 	. . 
	jr nz,$-5		;0990	20 f9 	  . 
	ld a,000h		;0992	3e 00 	> . 
	out (c),a		;0994	ed 79 	. y 
	ld c,086h		;0996	0e 86 	. . 
	outi		;0998	ed a3 	. . 
	outi		;099a	ed a3 	. . 
	in a,(081h)		;099c	db 81 	. . 
	ld a,002h		;099e	3e 02 	> . 
	call 00025h		;09a0	cd 25 00 	. % . 
	in a,(081h)		;09a3	db 81 	. . 
	pop bc			;09a5	c1 	. 
	ret			;09a6	c9 	. 
	push hl			;09a7	e5 	. 
	ld hl,00003h		;09a8	21 03 00 	! . . 
	call 0f41ch		;09ab	cd 1c f4 	. . . 
	pop hl			;09ae	e1 	. 
	ret			;09af	c9 	. 
	call 009a7h		;09b0	cd a7 09 	. . . 
	and b			;09b3	a0 	. 
	or c			;09b4	b1 	. 
	ld (00003h),a		;09b5	32 03 00 	2 . . 
	ret			;09b8	c9 	. 
	jr nz,$+70		;09b9	20 44 	  D 
	ld (hl),d			;09bb	72 	r 
	ld (hl),l			;09bc	75 	u 
	ld l,e			;09bd	6b 	k 
	ld h,c			;09be	61 	a 
	ld (hl),d			;09bf	72 	r 
	ld l,e			;09c0	6b 	k 
	ld h,c			;09c1	61 	a 
	jr nz,$+102		;09c2	20 64 	  d 
	ld (hl),d			;09c4	72 	r 
	ld (hl),l			;09c5	75 	u 
	ld l,e			;09c6	6b 	k 
	ld (hl),l			;09c7	75 	u 
	ld l,d			;09c8	6a 	j 
	ld h,l			;09c9	65 	e 
	jr nz,$+47		;09ca	20 2d 	  - 
	jr nz,$+114		;09cc	20 70 	  p 
	ld (hl),d			;09ce	72 	r 
	ld a,d			;09cf	7a 	z 
	ld h,l			;09d0	65 	e 
	ld (hl),d			;09d1	72 	r 
	ld (hl),a			;09d2	77 	w 
	ld l,c			;09d3	69 	i 
	ld l,d			;09d4	6a 	j 
	jr nz,$+42		;09d5	20 28 	  ( 
	ld d,b			;09d7	50 	P 
	add hl,hl			;09d8	29 	) 
	jr nz,$+34		;09d9	20 20 	    
	ld l,e			;09db	6b 	k 
	ld l,a			;09dc	6f 	o 
	ld l,(hl)			;09dd	6e 	n 
	ld (hl),h			;09de	74 	t 
	ld a,c			;09df	79 	y 
	ld l,(hl)			;09e0	6e 	n 
	ld (hl),l			;09e1	75 	u 
	ld (hl),l			;09e2	75 	u 
	ld l,d			;09e3	6a 	j 
	jr nz,$+42		;09e4	20 28 	  ( 
	ld c,e			;09e6	4b 	K 
	add hl,hl			;09e7	29 	) 
	jr nz,$+34		;09e8	20 20 	    
	ccf			;09ea	3f 	? 
	jr nz,$-126		;09eb	20 80 	  . 
	ld c,e			;09ed	4b 	K 
	ld d,b			;09ee	50 	P 
	add a,b			;09ef	80 	. 
	jr nz,$+70		;09f0	20 44 	  D 
	ld (hl),d			;09f2	72 	r 
	ld (hl),l			;09f3	75 	u 
	ld l,e			;09f4	6b 	k 
	ld h,c			;09f5	61 	a 
	ld (hl),d			;09f6	72 	r 
	ld l,e			;09f7	6b 	k 
	ld h,c			;09f8	61 	a 
	nop			;09f9	00 	. 
	ld l,(hl)			;09fa	6e 	n 
	ld l,c			;09fb	69 	i 
	ld h,l			;09fc	65 	e 
	ld h,a			;09fd	67 	g 
	ld l,a			;09fe	6f 	o 
	ld (hl),h			;09ff	74 	t 
	ld l,a			;0a00	6f 	o 
	ld (hl),a			;0a01	77 	w 
	ld h,c			;0a02	61 	a 
	jr nz,$+47		;0a03	20 2d 	  - 
	jr nz,$+121		;0a05	20 77 	  w 
	ld a,c			;0a07	79 	y 
	ex af,af'			;0a08	08 	. 
	ld b,063h		;0a09	06 63 	. c 
	ld a,d			;0a0b	7a 	z 
	jr nz,$+42		;0a0c	20 28 	  ( 
	ld d,a			;0a0e	57 	W 
	add hl,hl			;0a0f	29 	) 
	jr nz,$+34		;0a10	20 20 	    
	ld (hl),b			;0a12	70 	p 
	ld l,a			;0a13	6f 	o 
	ld (hl),a			;0a14	77 	w 
	ld (hl),h			;0a15	74 	t 
	rlca			;0a16	07 	. 
	ld (hl),d			;0a17	72 	r 
	ld a,d			;0a18	7a 	z 
	jr nz,$+42		;0a19	20 28 	  ( 
	ld d,b			;0a1b	50 	P 
	add hl,hl			;0a1c	29 	) 
	jr nz,$+34		;0a1d	20 20 	    
	ld a,d			;0a1f	7a 	z 
	ld l,l			;0a20	6d 	m 
	ld l,c			;0a21	69 	i 
	ld h,l			;0a22	65 	e 
	inc b			;0a23	04 	. 
	jr nz,$+42		;0a24	20 28 	  ( 
	ld e,d			;0a26	5a 	Z 
	add hl,hl			;0a27	29 	) 
	jr nz,$+34		;0a28	20 20 	    
	ccf			;0a2a	3f 	? 
	jr nz,$-126		;0a2b	20 80 	  . 
	ld d,a			;0a2d	57 	W 
	ld d,b			;0a2e	50 	P 
	ld d,b			;0a2f	50 	P 
	ld e,d			;0a30	5a 	Z 
	add a,b			;0a31	80 	. 
	ld a,(0f26bh)		;0a32	3a 6b f2 	: k . 
	bit 2,a		;0a35	cb 57 	. W 
	jr z,$+17		;0a37	28 0f 	( . 
	ld hl,009b9h		;0a39	21 b9 09 	! . . 
	call 00c17h		;0a3c	cd 17 0c 	. . . 
	ld hl,0f26bh		;0a3f	21 6b f2 	! k . 
	or a			;0a42	b7 	. 
	jp z,00b40h		;0a43	ca 40 0b 	. @ . 
	res 2,(hl)		;0a46	cb 96 	. . 
	push bc			;0a48	c5 	. 
	ld bc,02500h		;0a49	01 00 25 	. . % 
	call 00b4eh		;0a4c	cd 4e 0b 	. N . 
	jr nz,$+28		;0a4f	20 1a 	  . 
	ld a,001h		;0a51	3e 01 	> . 
	call 00025h		;0a53	cd 25 00 	. % . 
	dec bc			;0a56	0b 	. 
	ld a,b			;0a57	78 	x 
	or c			;0a58	b1 	. 
	jr nz,$-13		;0a59	20 f1 	  . 
	pop bc			;0a5b	c1 	. 
	ld hl,009f0h		;0a5c	21 f0 09 	! . . 
	call 00c17h		;0a5f	cd 17 0c 	. . . 
	ld hl,0f26bh		;0a62	21 6b f2 	! k . 
	or a			;0a65	b7 	. 
	jp z,00b40h		;0a66	ca 40 0b 	. @ . 
	jr $-33		;0a69	18 dd 	. . 
	pop bc			;0a6b	c1 	. 
	ld a,c			;0a6c	79 	y 
	cp 020h		;0a6d	fe 20 	.   
	ld a,000h		;0a6f	3e 00 	> . 
	jr c,$+6		;0a71	38 04 	8 . 
	ld a,(0f36fh)		;0a73	3a 6f f3 	: o . 
	inc a			;0a76	3c 	< 
	ld (0f36fh),a		;0a77	32 6f f3 	2 o . 
	ld a,(0f26bh)		;0a7a	3a 6b f2 	: k . 
	bit 1,a		;0a7d	cb 4f 	. O 
	jr z,$+4		;0a7f	28 02 	( . 
	res 7,c		;0a81	cb b9 	. . 
	call 009a7h		;0a83	cd a7 09 	. . . 
	bit 7,a		;0a86	cb 7f 	.  
	jp z,00a9dh		;0a88	ca 9d 0a 	. . . 
	bit 6,a		;0a8b	cb 77 	. w 
	jp z,0f500h		;0a8d	ca 00 f5 	. . . 
	in a,(098h)		;0a90	db 98 	. . 
	rlca			;0a92	07 	. 
	jr nc,$-3		;0a93	30 fb 	0 . 
	call 00af6h		;0a95	cd f6 0a 	. . . 
	ld a,c			;0a98	79 	y 
	nop			;0a99	00 	. 
	out (098h),a		;0a9a	d3 98 	. . 
	ret			;0a9c	c9 	. 
	bit 6,a		;0a9d	cb 77 	. w 
	jp nz,00aafh		;0a9f	c2 af 0a 	. . . 
	in a,(098h)		;0aa2	db 98 	. . 
	rlca			;0aa4	07 	. 
	jr c,$-3		;0aa5	38 fb 	8 . 
	call 00af6h		;0aa7	cd f6 0a 	. . . 
	ld a,c			;0aaa	79 	y 
	cpl			;0aab	2f 	/ 
	out (098h),a		;0aac	d3 98 	. . 
	ret			;0aae	c9 	. 
	ld a,(0f35fh)		;0aaf	3a 5f f3 	: _ . 
	bit 1,a		;0ab2	cb 4f 	. O 
	jr nz,$+15		;0ab4	20 0d 	  . 
	ld a,002h		;0ab6	3e 02 	> . 
	ld (0f35fh),a		;0ab8	32 5f f3 	2 _ . 
	push hl			;0abb	e5 	. 
	ld hl,0f365h		;0abc	21 65 f3 	! e . 
	call 00985h		;0abf	cd 85 09 	. . . 
	pop hl			;0ac2	e1 	. 
	ld a,001h		;0ac3	3e 01 	> . 
	out (083h),a		;0ac5	d3 83 	. . 
	in a,(083h)		;0ac7	db 83 	. . 
	and 001h		;0ac9	e6 01 	. . 
	jr z,$-8		;0acb	28 f6 	( . 
	call 00af6h		;0acd	cd f6 0a 	. . . 
	ld a,c			;0ad0	79 	y 
	out (081h),a		;0ad1	d3 81 	. . 
	ret			;0ad3	c9 	. 
	ld a,(0f35fh)		;0ad4	3a 5f f3 	: _ . 
	bit 0,a		;0ad7	cb 47 	. G 
	jr nz,$+15		;0ad9	20 0d 	  . 
	ld a,001h		;0adb	3e 01 	> . 
	ld (0f35fh),a		;0add	32 5f f3 	2 _ . 
	push hl			;0ae0	e5 	. 
	ld hl,0f360h		;0ae1	21 60 f3 	! ` . 
	call 00985h		;0ae4	cd 85 09 	. . . 
	pop hl			;0ae7	e1 	. 
	ld a,001h		;0ae8	3e 01 	> . 
	out (083h),a		;0aea	d3 83 	. . 
	in a,(083h)		;0aec	db 83 	. . 
	and 001h		;0aee	e6 01 	. . 
	jr z,$-8		;0af0	28 f6 	( . 
	ld a,c			;0af2	79 	y 
	out (081h),a		;0af3	d3 81 	. . 
	ret			;0af5	c9 	. 
	ld a,(0f26bh)		;0af6	3a 6b f2 	: k . 
	bit 4,a		;0af9	cb 67 	. g 
	jr z,$+19		;0afb	28 11 	( . 
	bit 5,a		;0afd	cb 6f 	. o 
	ret nz			;0aff	c0 	. 
	ld hl,00b16h		;0b00	21 16 0b 	! . . 
	ld a,(hl)			;0b03	7e 	~ 
	or a			;0b04	b7 	. 
	ret z			;0b05	c8 	. 
	cp c			;0b06	b9 	. 
	inc hl			;0b07	23 	# 
	ld a,(hl)			;0b08	7e 	~ 
	inc hl			;0b09	23 	# 
	jr nz,$-7		;0b0a	20 f7 	  . 
	ld c,a			;0b0c	4f 	O 
	ret			;0b0d	c9 	. 
	bit 5,a		;0b0e	cb 6f 	. o 
	ret z			;0b10	c8 	. 
	ld hl,00b2bh		;0b11	21 2b 0b 	! + . 
	jr $-17		;0b14	18 ed 	. . 
	ld h,b			;0b16	60 	` 
	ld h,c			;0b17	61 	a 
	ld b,b			;0b18	40 	@ 
	ld h,l			;0b19	65 	e 
	ld a,(hl)			;0b1a	7e 	~ 
	ld h,e			;0b1b	63 	c 
	ld e,(hl)			;0b1c	5e 	^ 
	ld (hl),e			;0b1d	73 	s 
	ld a,l			;0b1e	7d 	} 
	ld a,d			;0b1f	7a 	z 
	ld e,l			;0b20	5d 	] 
	ld l,(hl)			;0b21	6e 	n 
	ld a,e			;0b22	7b 	{ 
	ld l,a			;0b23	6f 	o 
	ld e,e			;0b24	5b 	[ 
	ld a,d			;0b25	7a 	z 
	ld a,h			;0b26	7c 	| 
	ld l,h			;0b27	6c 	l 
	ld e,h			;0b28	5c 	\ 
	ld c,h			;0b29	4c 	L 
	nop			;0b2a	00 	. 
	ld h,b			;0b2b	60 	` 
	jr nz,$+66		;0b2c	20 40 	  @ 
	jr nz,$+128		;0b2e	20 7e 	  ~ 
	jr nz,$+96		;0b30	20 5e 	  ^ 
	jr nz,$+127		;0b32	20 7d 	  } 
	jr nz,$+95		;0b34	20 5d 	  ] 
	jr nz,$+125		;0b36	20 7b 	  { 
	jr nz,$+93		;0b38	20 5b 	  [ 
	jr nz,$+126		;0b3a	20 7c 	  | 
	jr nz,$+94		;0b3c	20 5c 	  \ 
	jr nz,$+2		;0b3e	20 00 	  . 
	set 3,(hl)		;0b40	cb de 	. . 
	res 6,(hl)		;0b42	cb b6 	. . 
	ret			;0b44	c9 	. 
	ld a,(0f26bh)		;0b45	3a 6b f2 	: k . 
	bit 2,a		;0b48	cb 57 	. W 
	jr z,$+4		;0b4a	28 02 	( . 
	xor a			;0b4c	af 	. 
	ret			;0b4d	c9 	. 
	call 009a7h		;0b4e	cd a7 09 	. . . 
	bit 7,a		;0b51	cb 7f 	.  
	jr z,$+12		;0b53	28 0a 	( . 
	bit 6,a		;0b55	cb 77 	. w 
	jp z,0f503h		;0b57	ca 03 f5 	. . . 
	in a,(098h)		;0b5a	db 98 	. . 
	rlca			;0b5c	07 	. 
	sbc a,a			;0b5d	9f 	. 
	ret			;0b5e	c9 	. 
	bit 6,a		;0b5f	cb 77 	. w 
	jr nz,$+9		;0b61	20 07 	  . 
	in a,(098h)		;0b63	db 98 	. . 
	rlca			;0b65	07 	. 
	sbc a,a			;0b66	9f 	. 
	cpl			;0b67	2f 	/ 
	or a			;0b68	b7 	. 
	ret			;0b69	c9 	. 
	ld a,(0f35fh)		;0b6a	3a 5f f3 	: _ . 
	bit 0,a		;0b6d	cb 47 	. G 
	jr nz,$+13		;0b6f	20 0b 	  . 
	ld a,001h		;0b71	3e 01 	> . 
	ld (0f35fh),a		;0b73	32 5f f3 	2 _ . 
	ld hl,0f360h		;0b76	21 60 f3 	! ` . 
	call 00985h		;0b79	cd 85 09 	. . . 
	ld a,001h		;0b7c	3e 01 	> . 
	out (083h),a		;0b7e	d3 83 	. . 
	in a,(083h)		;0b80	db 83 	. . 
	and 001h		;0b82	e6 01 	. . 
	ret z			;0b84	c8 	. 
	ld a,0ffh		;0b85	3e ff 	> . 
	ret			;0b87	c9 	. 
	call 00b4eh		;0b88	cd 4e 0b 	. N . 
	ret z			;0b8b	c8 	. 
	ld hl,(0fbfeh)		;0b8c	2a fe fb 	* . . 
	ld a,l			;0b8f	7d 	} 
	or h			;0b90	b4 	. 
	jr z,$+78		;0b91	28 4c 	( L 
	dec hl			;0b93	2b 	+ 
	ld (0fbfeh),hl		;0b94	22 fe fb 	" . . 
	ld hl,(0fbfbh)		;0b97	2a fb fb 	* . . 
	inc hl			;0b9a	23 	# 
	ld (0fbfbh),hl		;0b9b	22 fb fb 	" . . 
	dec hl			;0b9e	2b 	+ 
	ld a,(0fbfdh)		;0b9f	3a fd fb 	: . . 
	call 0f3e3h		;0ba2	cd e3 f3 	. . . 
	call 0f41ch		;0ba5	cd 1c f4 	. . . 
	push af			;0ba8	f5 	. 
	ld a,0ffh		;0ba9	3e ff 	> . 
	call 0f3e3h		;0bab	cd e3 f3 	. . . 
	pop af			;0bae	f1 	. 
	ld c,a			;0baf	4f 	O 
	cp 01ah		;0bb0	fe 1a 	. . 
	jr z,$+36		;0bb2	28 22 	( " 
	cp 009h		;0bb4	fe 09 	. . 
	jp nz,00a6ch		;0bb6	c2 6c 0a 	. l . 
	ld c,020h		;0bb9	0e 20 	.   
	ld a,(0f36fh)		;0bbb	3a 6f f3 	: o . 
	and 007h		;0bbe	e6 07 	. . 
	cp 007h		;0bc0	fe 07 	. . 
	jp z,00a6ch		;0bc2	ca 6c 0a 	. l . 
	ld hl,(0fbfeh)		;0bc5	2a fe fb 	* . . 
	inc hl			;0bc8	23 	# 
	ld (0fbfeh),hl		;0bc9	22 fe fb 	" . . 
	ld hl,(0fbfbh)		;0bcc	2a fb fb 	* . . 
	dec hl			;0bcf	2b 	+ 
	ld (0fbfbh),hl		;0bd0	22 fb fb 	" . . 
	jp 00a6ch		;0bd3	c3 6c 0a 	. l . 
	ld a,(0f26bh)		;0bd6	3a 6b f2 	: k . 
	res 2,a		;0bd9	cb 97 	. . 
	ld (0f26bh),a		;0bdb	32 6b f2 	2 k . 
	ret			;0bde	c9 	. 
	ld hl,0fb7fh		;0bdf	21 7f fb 	!  . 
	ld a,(0fbf9h)		;0be2	3a f9 fb 	: . . 
	inc a			;0be5	3c 	< 
	inc a			;0be6	3c 	< 
	ld (0fbf9h),a		;0be7	32 f9 fb 	2 . . 
	add a,l			;0bea	85 	. 
	ld l,a			;0beb	6f 	o 
	ld b,(hl)			;0bec	46 	F 
	dec hl			;0bed	2b 	+ 
	ld a,(hl)			;0bee	7e 	~ 
	or a			;0bef	b7 	. 
	jp z,00bd6h		;0bf0	ca d6 0b 	. . . 
	and 007h		;0bf3	e6 07 	. . 
	ld (0fbfdh),a		;0bf5	32 fd fb 	2 . . 
	ld a,(hl)			;0bf8	7e 	~ 
	and 0f8h		;0bf9	e6 f8 	. . 
	ld h,a			;0bfb	67 	g 
	ld l,000h		;0bfc	2e 00 	. . 
	ld (0fbfbh),hl		;0bfe	22 fb fb 	" . . 
	or a			;0c01	b7 	. 
	ld h,b			;0c02	60 	` 
	rr h		;0c03	cb 1c 	. . 
	rr l		;0c05	cb 1d 	. . 
	ld (0fbfeh),hl		;0c07	22 fe fb 	" . . 
	ld a,(0fbf9h)		;0c0a	3a f9 fb 	: . . 
	cp 002h		;0c0d	fe 02 	. . 
	jp nz,00b8ch		;0c0f	c2 8c 0b 	. . . 
	ld c,00dh		;0c12	0e 0d 	. . 
	jp 00a6ch		;0c14	c3 6c 0a 	. l . 
	push hl			;0c17	e5 	. 
	push bc			;0c18	c5 	. 
	push hl			;0c19	e5 	. 
	ld hl,00ce1h		;0c1a	21 e1 0c 	! . . 
	call 00cebh		;0c1d	cd eb 0c 	. . . 
	pop hl			;0c20	e1 	. 
	ld c,007h		;0c21	0e 07 	. . 
	call 00cf5h		;0c23	cd f5 0c 	. . . 
	ld b,020h		;0c26	06 20 	.   
	call 00c7eh		;0c28	cd 7e 0c 	. ~ . 
	ld c,(hl)			;0c2b	4e 	N 
	ld a,c			;0c2c	79 	y 
	or a			;0c2d	b7 	. 
	jr z,$+20		;0c2e	28 12 	( . 
	cp 07eh		;0c30	fe 7e 	. ~ 
	jr nz,$+5		;0c32	20 03 	  . 
	ex (sp),hl			;0c34	e3 	. 
	ld c,l			;0c35	4d 	M 
	ex (sp),hl			;0c36	e3 	. 
	inc hl			;0c37	23 	# 
	bit 7,c		;0c38	cb 79 	. y 
	jr nz,$+82		;0c3a	20 50 	  P 
	call 00cf5h		;0c3c	cd f5 0c 	. . . 
	inc b			;0c3f	04 	. 
	jr $-24		;0c40	18 e6 	. . 
	ld c,020h		;0c42	0e 20 	.   
	call 00cf5h		;0c44	cd f5 0c 	. . . 
	inc hl			;0c47	23 	# 
	inc b			;0c48	04 	. 
	push hl			;0c49	e5 	. 
	ld hl,00003h		;0c4a	21 03 00 	! . . 
	call 0f41ch		;0c4d	cd 1c f4 	. . . 
	rlca			;0c50	07 	. 
	rlca			;0c51	07 	. 
	rlca			;0c52	07 	. 
	and 006h		;0c53	e6 06 	. . 
	ld hl,0003bh		;0c55	21 3b 00 	! ; . 
	add a,l			;0c58	85 	. 
	ld l,a			;0c59	6f 	o 
	ld a,(hl)			;0c5a	7e 	~ 
	inc hl			;0c5b	23 	# 
	ld h,(hl)			;0c5c	66 	f 
	ld l,a			;0c5d	6f 	o 
	push de			;0c5e	d5 	. 
	ld e,00ch		;0c5f	1e 0c 	. . 
	call 00c7eh		;0c61	cd 7e 0c 	. ~ . 
	ld c,(hl)			;0c64	4e 	N 
	inc hl			;0c65	23 	# 
	bit 7,c		;0c66	cb 79 	. y 
	jr nz,$+12		;0c68	20 0a 	  . 
	call 00cf5h		;0c6a	cd f5 0c 	. . . 
	inc b			;0c6d	04 	. 
	dec e			;0c6e	1d 	. 
	jr nz,$-14		;0c6f	20 f0 	  . 
	call 00c7eh		;0c71	cd 7e 0c 	. ~ . 
	ld c,020h		;0c74	0e 20 	.   
	call 00cf5h		;0c76	cd f5 0c 	. . . 
	inc b			;0c79	04 	. 
	pop de			;0c7a	d1 	. 
	pop hl			;0c7b	e1 	. 
	jr $-84		;0c7c	18 aa 	. . 
	ld c,01bh		;0c7e	0e 1b 	. . 
	call 00cf5h		;0c80	cd f5 0c 	. . . 
	ld c,058h		;0c83	0e 58 	. X 
	call 00cf5h		;0c85	cd f5 0c 	. . . 
	ld c,b			;0c88	48 	H 
	jp 00cf5h		;0c89	c3 f5 0c 	. . . 
	ld c,020h		;0c8c	0e 20 	.   
	call 00cf5h		;0c8e	cd f5 0c 	. . . 
	xor a			;0c91	af 	. 
	bit 7,(hl)		;0c92	cb 7e 	. ~ 
	jr nz,$+58		;0c94	20 38 	  8 
	ld b,0fah		;0c96	06 fa 	. . 
	call 00cfdh		;0c98	cd fd 0c 	. . . 
	jr nz,$+19		;0c9b	20 11 	  . 
	ld a,004h		;0c9d	3e 04 	> . 
	call 00025h		;0c9f	cd 25 00 	. % . 
	djnz $-10		;0ca2	10 f4 	. . 
	push hl			;0ca4	e5 	. 
	ld hl,00ce6h		;0ca5	21 e6 0c 	! . . 
	call 00cebh		;0ca8	cd eb 0c 	. . . 
	pop hl			;0cab	e1 	. 
	jr $-22		;0cac	18 e8 	. . 
	call 00d02h		;0cae	cd 02 0d 	. . . 
	ld c,a			;0cb1	4f 	O 
	ld b,000h		;0cb2	06 00 	. . 
	push hl			;0cb4	e5 	. 
	ld a,(hl)			;0cb5	7e 	~ 
	cp c			;0cb6	b9 	. 
	jr z,$+15		;0cb7	28 0d 	( . 
	cp 07eh		;0cb9	fe 7e 	. ~ 
	jr z,$+11		;0cbb	28 09 	( . 
	inc b			;0cbd	04 	. 
	inc hl			;0cbe	23 	# 
	bit 7,(hl)		;0cbf	cb 7e 	. ~ 
	jr z,$-12		;0cc1	28 f2 	( . 
	pop hl			;0cc3	e1 	. 
	jr $-46		;0cc4	18 d0 	. . 
	pop hl			;0cc6	e1 	. 
	ld hl,00ce1h		;0cc7	21 e1 0c 	! . . 
	call 00cebh		;0cca	cd eb 0c 	. . . 
	ld a,b			;0ccd	78 	x 
	pop bc			;0cce	c1 	. 
	pop hl			;0ccf	e1 	. 
	cp 003h		;0cd0	fe 03 	. . 
	ret c			;0cd2	d8 	. 
	push hl			;0cd3	e5 	. 
	ld hl,00003h		;0cd4	21 03 00 	! . . 
	call 0f41ch		;0cd7	cd 1c f4 	. . . 
	add a,040h		;0cda	c6 40 	. @ 
	ld (hl),a			;0cdc	77 	w 
	pop hl			;0cdd	e1 	. 
	jp 00c17h		;0cde	c3 17 0c 	. . . 
	dec de			;0ce1	1b 	. 
	ld e,b			;0ce2	58 	X 
	jr nz,$+28		;0ce3	20 1a 	  . 
	add a,b			;0ce5	80 	. 
	dec de			;0ce6	1b 	. 
	ld e,b			;0ce7	58 	X 
	ld a,d			;0ce8	7a 	z 
	jr nz,$-126		;0ce9	20 80 	  . 
	ld c,(hl)			;0ceb	4e 	N 
	bit 7,c		;0cec	cb 79 	. y 
	ret nz			;0cee	c0 	. 
	inc hl			;0cef	23 	# 
	call 00cf5h		;0cf0	cd f5 0c 	. . . 
	jr $-8		;0cf3	18 f6 	. . 
	call 0f46ch		;0cf5	cd 6c f4 	. l . 
	jr z,$-3		;0cf8	28 fb 	( . 
	jp 0f483h		;0cfa	c3 83 f4 	. . . 
	in a,(082h)		;0cfd	db 82 	. . 
	and 001h		;0cff	e6 01 	. . 
	ret			;0d01	c9 	. 
	call 00cfdh		;0d02	cd fd 0c 	. . . 
	jr z,$-3		;0d05	28 fb 	( . 
	in a,(080h)		;0d07	db 80 	. . 
	cp 061h		;0d09	fe 61 	. a 
	ret c			;0d0b	d8 	. 
	cp 07bh		;0d0c	fe 7b 	. { 
	ret nc			;0d0e	d0 	. 
	and 05fh		;0d0f	e6 5f 	. _ 
	ret			;0d11	c9 	. 
	ld hl,0fb7ch		;0d12	21 7c fb 	! | . 
	inc a			;0d15	3c 	< 
	jp z,00dcah		;0d16	ca ca 0d 	. . . 
	dec a			;0d19	3d 	= 
	jp nz,00d54h		;0d1a	c2 54 0d 	. T . 
	bit 7,(hl)		;0d1d	cb 7e 	. ~ 
	jr z,$+36		;0d1f	28 22 	( " 
	ld hl,0f26bh		;0d21	21 6b f2 	! k . 
	bit 7,(hl)		;0d24	cb 7e 	. ~ 
	jr z,$+19		;0d26	28 11 	( . 
	res 7,(hl)		;0d28	cb be 	. . 
	ld hl,00e3ch		;0d2a	21 3c 0e 	! < . 
	call 00e1fh		;0d2d	cd 1f 0e 	. . . 
	call 00e10h		;0d30	cd 10 0e 	. . . 
	ld hl,00e28h		;0d33	21 28 0e 	! ( . 
	call 00e1fh		;0d36	cd 1f 0e 	. . . 
	ld hl,0fb7ch		;0d39	21 7c fb 	! | . 
	bit 0,(hl)		;0d3c	cb 46 	. F 
	call z,00dcah		;0d3e	cc ca 0d 	. . . 
	jr $+15		;0d41	18 0d 	. . 
	res 0,(hl)		;0d43	cb 86 	. . 
	ld hl,0f26bh		;0d45	21 6b f2 	! k . 
	res 7,(hl)		;0d48	cb be 	. . 
	ld hl,0f3a0h		;0d4a	21 a0 f3 	! . . 
	ld (0f273h),hl		;0d4d	22 73 f2 	" s . 
	out (00ch),a		;0d50	d3 0c 	. . 
	or a			;0d52	b7 	. 
	ret			;0d53	c9 	. 
	bit 7,(hl)		;0d54	cb 7e 	. ~ 
	jp nz,00daeh		;0d56	c2 ae 0d 	. . . 
	res 0,(hl)		;0d59	cb 86 	. . 
	call 00e50h		;0d5b	cd 50 0e 	. P . 
	cp 0d1h		;0d5e	fe d1 	. . 
	jp nz,00df2h		;0d60	c2 f2 0d 	. . . 
	ld a,00ch		;0d63	3e 0c 	> . 
	sub c			;0d65	91 	. 
	ld c,a			;0d66	4f 	O 
	jp c,00df2h		;0d67	da f2 0d 	. . . 
	jp z,00df2h		;0d6a	ca f2 0d 	. . . 
	add a,a			;0d6d	87 	. 
	add a,a			;0d6e	87 	. 
	add a,a			;0d6f	87 	. 
	add a,a			;0d70	87 	. 
	sub c			;0d71	91 	. 
	ld hl,0fa40h		;0d72	21 40 fa 	! @ . 
	sub 008h		;0d75	d6 08 	. . 
	jr c,$+5		;0d77	38 03 	8 . 
	inc hl			;0d79	23 	# 
	jr $-5		;0d7a	18 f9 	. . 
	add a,008h		;0d7c	c6 08 	. . 
	xor 007h		;0d7e	ee 07 	. . 
	inc a			;0d80	3c 	< 
	ld b,a			;0d81	47 	G 
	ld a,01eh		;0d82	3e 1e 	> . 
	sub b			;0d84	90 	. 
	ld c,a			;0d85	4f 	O 
	xor a			;0d86	af 	. 
	scf			;0d87	37 	7 
	rla			;0d88	17 	. 
	djnz $-2		;0d89	10 fc 	. . 
	and (hl)			;0d8b	a6 	. 
	jp nz,00df2h		;0d8c	c2 f2 0d 	. . . 
	inc hl			;0d8f	23 	# 
	ld a,(hl)			;0d90	7e 	~ 
	or a			;0d91	b7 	. 
	jp nz,00df2h		;0d92	c2 f2 0d 	. . . 
	inc hl			;0d95	23 	# 
	ld a,c			;0d96	79 	y 
	sub 008h		;0d97	d6 08 	. . 
	ld c,a			;0d99	4f 	O 
	jr nc,$-10		;0d9a	30 f4 	0 . 
	ld a,(0f2b0h)		;0d9c	3a b0 f2 	: . . 
	sub 01eh		;0d9f	d6 1e 	. . 
	ld (0f2b0h),a		;0da1	32 b0 f2 	2 . . 
	ld (0fb7bh),a		;0da4	32 7b fb 	2 { . 
	ld hl,0fb7ch		;0da7	21 7c fb 	! | . 
	set 7,(hl)		;0daa	cb fe 	. . 
	res 0,(hl)		;0dac	cb 86 	. . 
	ld hl,0f26bh		;0dae	21 6b f2 	! k . 
	bit 7,(hl)		;0db1	cb 7e 	. ~ 
	jr nz,$+13		;0db3	20 0b 	  . 
	set 7,(hl)		;0db5	cb fe 	. . 
	ld hl,00e28h		;0db7	21 28 0e 	! ( . 
	call 00e1fh		;0dba	cd 1f 0e 	. . . 
	call 00e10h		;0dbd	cd 10 0e 	. . . 
	ld hl,00e3ch		;0dc0	21 3c 0e 	! < . 
	call 00e1fh		;0dc3	cd 1f 0e 	. . . 
	out (00dh),a		;0dc6	d3 0d 	. . 
	or a			;0dc8	b7 	. 
	ret			;0dc9	c9 	. 
	bit 7,(hl)		;0dca	cb 7e 	. ~ 
	ret z			;0dcc	c8 	. 
	res 7,(hl)		;0dcd	cb be 	. . 
	call 00d43h		;0dcf	cd 43 0d 	. C . 
	ld hl,00e28h		;0dd2	21 28 0e 	! ( . 
	call 00e1fh		;0dd5	cd 1f 0e 	. . . 
	call 00e50h		;0dd8	cd 50 0e 	. P . 
	ld b,01eh		;0ddb	06 1e 	. . 
	cp 0b3h		;0ddd	fe b3 	. . 
	jr z,$+8		;0ddf	28 06 	( . 
	ret c			;0de1	d8 	. 
	ld b,a			;0de2	47 	G 
	ld a,0d1h		;0de3	3e d1 	> . 
	sub b			;0de5	90 	. 
	ld b,a			;0de6	47 	G 
	ld a,(0f2b0h)		;0de7	3a b0 f2 	: . . 
	add a,b			;0dea	80 	. 
	ld (0f2b0h),a		;0deb	32 b0 f2 	2 . . 
	ld (0fb7bh),a		;0dee	32 7b fb 	2 { . 
	ret			;0df1	c9 	. 
	ld hl,00dfah		;0df2	21 fa 0d 	! . . 
	call 00c17h		;0df5	cd 17 0c 	. . . 
	scf			;0df8	37 	7 
	ret			;0df9	c9 	. 
	jr nz,$+68		;0dfa	20 42 	  B 
	ld h,c			;0dfc	61 	a 
	ld l,(hl)			;0dfd	6e 	n 
	ld l,e			;0dfe	6b 	k 
	jr nz,$+51		;0dff	20 31 	  1 
	jr nz,$+124		;0e01	20 7a 	  z 
	ld h,c			;0e03	61 	a 
	ld l,d			;0e04	6a 	j 
	ld bc,07974h		;0e05	01 74 79 	. t y 
	jr nz,$+34		;0e08	20 20 	    
	jr z,$+34		;0e0a	28 20 	(   
	add hl,hl			;0e0c	29 	) 
	add a,b			;0e0d	80 	. 
	ld a,(hl)			;0e0e	7e 	~ 
	add a,b			;0e0f	80 	. 
	ld hl,00000h		;0e10	21 00 00 	! . . 
	ld b,000h		;0e13	06 00 	. . 
	call 0f41ch		;0e15	cd 1c f4 	. . . 
	call 0f98ch		;0e18	cd 8c f9 	. . . 
	inc hl			;0e1b	23 	# 
	djnz $-7		;0e1c	10 f7 	. . 
	ret			;0e1e	c9 	. 
	ld de,0f98ch		;0e1f	11 8c f9 	. . . 
	ld bc,00014h		;0e22	01 14 00 	. . . 
	ldir		;0e25	ed b0 	. . 
	ret			;0e27	c9 	. 
	out (00dh),a		;0e28	d3 0d 	. . 
	ld (hl),a			;0e2a	77 	w 
	jr $+5		;0e2b	18 03 	. . 
	out (00dh),a		;0e2d	d3 0d 	. . 
	ld a,(hl)			;0e2f	7e 	~ 
	out (00ch),a		;0e30	d3 0c 	. . 
	ret			;0e32	c9 	. 
	out (00fh),a		;0e33	d3 0f 	. . 
	call 0f99fh		;0e35	cd 9f f9 	. . . 
	out (00eh),a		;0e38	d3 0e 	. . 
	ret			;0e3a	c9 	. 
	jp (hl)			;0e3b	e9 	. 
	out (00ch),a		;0e3c	d3 0c 	. . 
	ld (hl),a			;0e3e	77 	w 
	jr $+5		;0e3f	18 03 	. . 
	out (00ch),a		;0e41	d3 0c 	. . 
	ld a,(hl)			;0e43	7e 	~ 
	out (00dh),a		;0e44	d3 0d 	. . 
	ret			;0e46	c9 	. 
	out (00fh),a		;0e47	d3 0f 	. . 
	call 0f99fh		;0e49	cd 9f f9 	. . . 
	out (00eh),a		;0e4c	d3 0e 	. . 
	ret			;0e4e	c9 	. 
	jp (hl)			;0e4f	e9 	. 
	ld a,(0f2b0h)		;0e50	3a b0 f2 	: . . 
	ld b,a			;0e53	47 	G 
	ld a,(0f2b8h)		;0e54	3a b8 f2 	: . . 
	ld c,a			;0e57	4f 	O 
	add a,a			;0e58	87 	. 
	add a,a			;0e59	87 	. 
	add a,a			;0e5a	87 	. 
	add a,a			;0e5b	87 	. 
	sub c			;0e5c	91 	. 
	add a,b			;0e5d	80 	. 
	ret			;0e5e	c9 	. 
	nop			;0e5f	00 	. 
	nop			;0e60	00 	. 
	nop			;0e61	00 	. 
	nop			;0e62	00 	. 
	nop			;0e63	00 	. 
	nop			;0e64	00 	. 
	nop			;0e65	00 	. 
	nop			;0e66	00 	. 
	nop			;0e67	00 	. 
	nop			;0e68	00 	. 
	nop			;0e69	00 	. 
	nop			;0e6a	00 	. 
	nop			;0e6b	00 	. 
	nop			;0e6c	00 	. 
	nop			;0e6d	00 	. 
	nop			;0e6e	00 	. 
	nop			;0e6f	00 	. 
	nop			;0e70	00 	. 
	and b			;0e71	a0 	. 
	ei			;0e72	fb 	. 
	ld a,(0fbf4h)		;0e73	3a f4 fb 	: . . 
	ld i,a		;0e76	ed 47 	. G 
	ld a,(0fbf5h)		;0e78	3a f5 fb 	: . . 
	ld r,a		;0e7b	ed 4f 	. O 
	pop ix		;0e7d	dd e1 	. . 
	pop iy		;0e7f	fd e1 	. . 
	pop hl			;0e81	e1 	. 
	pop de			;0e82	d1 	. 
	pop bc			;0e83	c1 	. 
	pop af			;0e84	f1 	. 
	exx			;0e85	d9 	. 
	ex af,af'			;0e86	08 	. 
	pop de			;0e87	d1 	. 
	pop bc			;0e88	c1 	. 
	pop af			;0e89	f1 	. 
	pop hl			;0e8a	e1 	. 
	ld sp,hl			;0e8b	f9 	. 
	ld hl,00000h		;0e8c	21 00 00 	! . . 
	di			;0e8f	f3 	. 
	jp 00000h		;0e90	c3 00 00 	. . . 
	nop			;0e93	00 	. 
	nop			;0e94	00 	. 
	nop			;0e95	00 	. 
	jp 00fc4h		;0e96	c3 c4 0f 	. . . 
	ld a,080h		;0e99	3e 80 	> . 
	out (081h),a		;0e9b	d3 81 	. . 
	djnz $-4		;0e9d	10 fa 	. . 
	ret			;0e9f	c9 	. 
	di			;0ea0	f3 	. 
	ld sp,0fbc0h		;0ea1	31 c0 fb 	1 . . 
	ld hl,0f36ah		;0ea4	21 6a f3 	! j . 
	call 00985h		;0ea7	cd 85 09 	. . . 
	xor a			;0eaa	af 	. 
	ld (0f35fh),a		;0eab	32 5f f3 	2 _ . 
	ld hl,0f26bh		;0eae	21 6b f2 	! k . 
	res 2,(hl)		;0eb1	cb 96 	. . 
	ld hl,00e5fh		;0eb3	21 5f 0e 	! _ . 
	ld de,0fbc0h		;0eb6	11 c0 fb 	. . . 
	ld bc,00037h		;0eb9	01 37 00 	. 7 . 
	ldir		;0ebc	ed b0 	. . 
	ld de,0f440h		;0ebe	11 40 f4 	. @ . 
	ld bc,00003h		;0ec1	01 03 00 	. . . 
	ldir		;0ec4	ed b0 	. . 
	ld b,001h		;0ec6	06 01 	. . 
	call 00e99h		;0ec8	cd 99 0e 	. . . 
	ld c,088h		;0ecb	0e 88 	. . 
	call 00ae8h		;0ecd	cd e8 0a 	. . . 
	ld sp,0fbc0h		;0ed0	31 c0 fb 	1 . . 
	call 0f4bfh		;0ed3	cd bf f4 	. . . 
	ld b,a			;0ed6	47 	G 
	and 0f1h		;0ed7	e6 f1 	. . 
	cp 051h		;0ed9	fe 51 	. Q 
	ld hl,00ed0h		;0edb	21 d0 0e 	! . . 
	push hl			;0ede	e5 	. 
	jr z,$+24		;0edf	28 16 	( . 
	cp 050h		;0ee1	fe 50 	. P 
	ret nz			;0ee3	c0 	. 
	call 0f4bfh		;0ee4	cd bf f4 	. . . 
	ld c,a			;0ee7	4f 	O 
	ld a,b			;0ee8	78 	x 
	and 00eh		;0ee9	e6 0e 	. . 
	ld hl,00efch		;0eeb	21 fc 0e 	! . . 
	ld e,a			;0eee	5f 	_ 
	ld d,000h		;0eef	16 00 	. . 
	add hl,de			;0ef1	19 	. 
	ld a,(hl)			;0ef2	7e 	~ 
	inc hl			;0ef3	23 	# 
	ld h,(hl)			;0ef4	66 	f 
	ld l,a			;0ef5	6f 	o 
	jp (hl)			;0ef6	e9 	. 
	ld a,b			;0ef7	78 	x 
	and 01eh		;0ef8	e6 1e 	. . 
	jr $-15		;0efa	18 ef 	. . 
	inc e			;0efc	1c 	. 
	rrca			;0efd	0f 	. 
	adc a,d			;0efe	8a 	. 
	rrca			;0eff	0f 	. 
	dec (hl)			;0f00	35 	5 
	rrca			;0f01	0f 	. 
	ld e,a			;0f02	5f 	_ 
	rrca			;0f03	0f 	. 
	ld (hl),b			;0f04	70 	p 
	rrca			;0f05	0f 	. 
	add a,c			;0f06	81 	. 
	rrca			;0f07	0f 	. 
	adc a,d			;0f08	8a 	. 
	rrca			;0f09	0f 	. 
	adc a,d			;0f0a	8a 	. 
	rrca			;0f0b	0f 	. 
	adc a,e			;0f0c	8b 	. 
	rrca			;0f0d	0f 	. 
	sub h			;0f0e	94 	. 
	rrca			;0f0f	0f 	. 
	sbc a,e			;0f10	9b 	. 
	rrca			;0f11	0f 	. 
	and (hl)			;0f12	a6 	. 
	rrca			;0f13	0f 	. 
	ld c,b			;0f14	48 	H 
	call p,00fefh		;0f15	f4 ef 0f 	. . . 
	add a,00eh		;0f18	c6 0e 	. . 
	defb 0fdh,00fh,03ah	;illegal sequence		;0f1a	fd 0f 3a 	. . : 
	jp m,0fefbh		;0f1d	fa fb fe 	. . . 
	rrca			;0f20	0f 	. 
	jr z,$+11		;0f21	28 09 	( . 
	cp 00eh		;0f23	fe 0e 	. . 
	jr z,$+12		;0f25	28 0a 	( . 
	ld b,c			;0f27	41 	A 
	ld c,a			;0f28	4f 	O 
	out (c),b		;0f29	ed 41 	. A 
	ret			;0f2b	c9 	. 
	xor a			;0f2c	af 	. 
	ld (0fbf6h),a		;0f2d	32 f6 fb 	2 . . 
	ret			;0f30	c9 	. 
	ld (0fbf6h),a		;0f31	32 f6 fb 	2 . . 
	ret			;0f34	c9 	. 
	ld hl,(0fbfah)		;0f35	2a fa fb 	* . . 
	ex de,hl			;0f38	eb 	. 
	ld hl,(0fbfch)		;0f39	2a fc fb 	* . . 
	inc hl			;0f3c	23 	# 
	call 00f50h		;0f3d	cd 50 0f 	. P . 
	jr $+5		;0f40	18 03 	. . 
	call 00f4bh		;0f42	cd 4b 0f 	. K . 
	jp c,0103dh		;0f45	da 3d 10 	. = . 
	ld (hl),c			;0f48	71 	q 
	jr $-7		;0f49	18 f7 	. . 
	inc hl			;0f4b	23 	# 
	ld a,h			;0f4c	7c 	| 
	or l			;0f4d	b5 	. 
	scf			;0f4e	37 	7 
	ret z			;0f4f	c8 	. 
	ld a,e			;0f50	7b 	{ 
	sub l			;0f51	95 	. 
	ld a,d			;0f52	7a 	z 
	sbc a,h			;0f53	9c 	. 
	ret			;0f54	c9 	. 
	ld a,h			;0f55	7c 	| 
	or l			;0f56	b5 	. 
	scf			;0f57	37 	7 
	ret z			;0f58	c8 	. 
	dec hl			;0f59	2b 	+ 
	ld a,l			;0f5a	7d 	} 
	sub e			;0f5b	93 	. 
	ld a,h			;0f5c	7c 	| 
	sbc a,d			;0f5d	9a 	. 
	ret			;0f5e	c9 	. 
	ld a,(0fbfch)		;0f5f	3a fc fb 	: . . 
	ld (0fbfeh),a		;0f62	32 fe fb 	2 . . 
	ld a,(0fbfah)		;0f65	3a fa fb 	: . . 
	ld (0fbfch),a		;0f68	32 fc fb 	2 . . 
	ld a,c			;0f6b	79 	y 
	ld (0fbfah),a		;0f6c	32 fa fb 	2 . . 
	ret			;0f6f	c9 	. 
	ld a,(0fbfdh)		;0f70	3a fd fb 	: . . 
	ld (0fbffh),a		;0f73	32 ff fb 	2 . . 
	ld a,(0fbfbh)		;0f76	3a fb fb 	: . . 
	ld (0fbfdh),a		;0f79	32 fd fb 	2 . . 
	ld a,c			;0f7c	79 	y 
	ld (0fbfbh),a		;0f7d	32 fb fb 	2 . . 
	ret			;0f80	c9 	. 
	ld hl,(0fbfah)		;0f81	2a fa fb 	* . . 
	ld (hl),c			;0f84	71 	q 
	inc hl			;0f85	23 	# 
	ld (0fbfah),hl		;0f86	22 fa fb 	" . . 
	ret			;0f89	c9 	. 
	ret			;0f8a	c9 	. 
	ld a,(0fbfah)		;0f8b	3a fa fb 	: . . 
	ld c,a			;0f8e	4f 	O 
	in c,(c)		;0f8f	ed 48 	. H 
	jp 00ae8h		;0f91	c3 e8 0a 	. . . 
	ld a,(0fbf9h)		;0f94	3a f9 fb 	: . . 
	ld c,a			;0f97	4f 	O 
	jp 00ae8h		;0f98	c3 e8 0a 	. . . 
	ld hl,0f428h		;0f9b	21 28 f4 	! ( . 
	ld c,(hl)			;0f9e	4e 	N 
	inc hl			;0f9f	23 	# 
	ld (0fbfah),hl		;0fa0	22 fa fb 	" . . 
	jp 00ae8h		;0fa3	c3 e8 0a 	. . . 
	ld hl,(0fbfah)		;0fa6	2a fa fb 	* . . 
	ex de,hl			;0fa9	eb 	. 
	ld hl,(0fbfch)		;0faa	2a fc fb 	* . . 
	xor a			;0fad	af 	. 
	ld c,a			;0fae	4f 	O 
	ld b,a			;0faf	47 	G 
	call 0f44eh		;0fb0	cd 4e f4 	. N . 
	add a,c			;0fb3	81 	. 
	jr nc,$+3		;0fb4	30 01 	0 . 
	inc b			;0fb6	04 	. 
	ld c,a			;0fb7	4f 	O 
	call 00f4bh		;0fb8	cd 4b 0f 	. K . 
	jr nc,$-11		;0fbb	30 f3 	0 . 
	ld a,b			;0fbd	78 	x 
	ld (0fbf9h),a		;0fbe	32 f9 fb 	2 . . 
	jp 00ae8h		;0fc1	c3 e8 0a 	. . . 
	ld (0fbd0h),hl		;0fc4	22 d0 fb 	" . . 
	ld hl,00002h		;0fc7	21 02 00 	! . . 
	add hl,sp			;0fca	39 	9 
	ld (0fbd2h),hl		;0fcb	22 d2 fb 	" . . 
	ld sp,0fbd0h		;0fce	31 d0 fb 	1 . . 
	push bc			;0fd1	c5 	. 
	push de			;0fd2	d5 	. 
	exx			;0fd3	d9 	. 
	ex af,af'			;0fd4	08 	. 
	push af			;0fd5	f5 	. 
	push bc			;0fd6	c5 	. 
	push de			;0fd7	d5 	. 
	push hl			;0fd8	e5 	. 
	push iy		;0fd9	fd e5 	. . 
	push ix		;0fdb	dd e5 	. . 
	ld a,i		;0fdd	ed 57 	. W 
	ld (0fbf4h),a		;0fdf	32 f4 fb 	2 . . 
	ld a,r		;0fe2	ed 5f 	. _ 
	ld (0fbf5h),a		;0fe4	32 f5 fb 	2 . . 
	ld c,081h		;0fe7	0e 81 	. . 
	call 00ae8h		;0fe9	cd e8 0a 	. . . 
	jp 00ed0h		;0fec	c3 d0 0e 	. . . 
	ld hl,(0fbfah)		;0fef	2a fa fb 	* . . 
	call 0f44eh		;0ff2	cd 4e f4 	. N . 
	ld c,a			;0ff5	4f 	O 
	inc hl			;0ff6	23 	# 
	ld (0fbfah),hl		;0ff7	22 fa fb 	" . . 
	jp 00ae8h		;0ffa	c3 e8 0a 	. . . 
	ld hl,(0fbfah)		;0ffd	2a fa fb 	* . . 
	ld b,h			;1000	44 	D 
	ld c,l			;1001	4d 	M 
	ld hl,(0fbfch)		;1002	2a fc fb 	* . . 
	ex de,hl			;1005	eb 	. 
	ld hl,(0fbfeh)		;1006	2a fe fb 	* . . 
	call 00f50h		;1009	cd 50 0f 	. P . 
	jp c,00f8ah		;100c	da 8a 0f 	. . . 
	ld a,l			;100f	7d 	} 
	sub c			;1010	91 	. 
	ld a,h			;1011	7c 	| 
	sbc a,b			;1012	98 	. 
	jr c,$+15		;1013	38 0d 	8 . 
	call 0f44eh		;1015	cd 4e f4 	. N . 
	ld (bc),a			;1018	02 	. 
	inc bc			;1019	03 	. 
	call 00f4bh		;101a	cd 4b 0f 	. K . 
	jr nc,$-8		;101d	30 f6 	0 . 
	jp 0103dh		;101f	c3 3d 10 	. = . 
	push hl			;1022	e5 	. 
	push de			;1023	d5 	. 
	ex de,hl			;1024	eb 	. 
	ld a,l			;1025	7d 	} 
	sub e			;1026	93 	. 
	ld l,a			;1027	6f 	o 
	ld a,h			;1028	7c 	| 
	sbc a,d			;1029	9a 	. 
	ld h,a			;102a	67 	g 
	add hl,bc			;102b	09 	. 
	ld c,l			;102c	4d 	M 
	ld b,h			;102d	44 	D 
	jp c,00f8ah		;102e	da 8a 0f 	. . . 
	pop hl			;1031	e1 	. 
	pop de			;1032	d1 	. 
	call 0f44eh		;1033	cd 4e f4 	. N . 
	ld (bc),a			;1036	02 	. 
	dec bc			;1037	0b 	. 
	call 00f55h		;1038	cd 55 0f 	. U . 
	jr nc,$-8		;103b	30 f6 	0 . 
	ld c,055h		;103d	0e 55 	. U 
	jp 00ae8h		;103f	c3 e8 0a 	. . . 
	nop			;1042	00 	. 
	nop			;1043	00 	. 
	nop			;1044	00 	. 
	nop			;1045	00 	. 
	nop			;1046	00 	. 
	nop			;1047	00 	. 
	nop			;1048	00 	. 
	nop			;1049	00 	. 
	nop			;104a	00 	. 
	nop			;104b	00 	. 
	nop			;104c	00 	. 
	nop			;104d	00 	. 
	nop			;104e	00 	. 
	nop			;104f	00 	. 
	nop			;1050	00 	. 
	nop			;1051	00 	. 
	nop			;1052	00 	. 
	nop			;1053	00 	. 
	nop			;1054	00 	. 
	nop			;1055	00 	. 
	nop			;1056	00 	. 
	nop			;1057	00 	. 
	nop			;1058	00 	. 
	nop			;1059	00 	. 
	nop			;105a	00 	. 
	nop			;105b	00 	. 
	nop			;105c	00 	. 
	nop			;105d	00 	. 
	nop			;105e	00 	. 
	nop			;105f	00 	. 
	nop			;1060	00 	. 
	nop			;1061	00 	. 
	nop			;1062	00 	. 
	nop			;1063	00 	. 
	nop			;1064	00 	. 
	nop			;1065	00 	. 
	nop			;1066	00 	. 
	nop			;1067	00 	. 
	nop			;1068	00 	. 
	nop			;1069	00 	. 
	nop			;106a	00 	. 
	nop			;106b	00 	. 
	nop			;106c	00 	. 
	nop			;106d	00 	. 
	nop			;106e	00 	. 
	nop			;106f	00 	. 
	nop			;1070	00 	. 
	nop			;1071	00 	. 
	nop			;1072	00 	. 
	nop			;1073	00 	. 
	nop			;1074	00 	. 
	nop			;1075	00 	. 
	nop			;1076	00 	. 
	nop			;1077	00 	. 
	nop			;1078	00 	. 
	nop			;1079	00 	. 
	nop			;107a	00 	. 
	nop			;107b	00 	. 
	nop			;107c	00 	. 
	nop			;107d	00 	. 
	nop			;107e	00 	. 
	nop			;107f	00 	. 
	nop			;1080	00 	. 
	nop			;1081	00 	. 
	nop			;1082	00 	. 
	nop			;1083	00 	. 
	nop			;1084	00 	. 
	nop			;1085	00 	. 
	nop			;1086	00 	. 
	nop			;1087	00 	. 
	nop			;1088	00 	. 
	nop			;1089	00 	. 
	nop			;108a	00 	. 
	nop			;108b	00 	. 
	nop			;108c	00 	. 
	nop			;108d	00 	. 
	nop			;108e	00 	. 
	nop			;108f	00 	. 
	nop			;1090	00 	. 
	nop			;1091	00 	. 
	nop			;1092	00 	. 
	nop			;1093	00 	. 
	nop			;1094	00 	. 
	nop			;1095	00 	. 
	nop			;1096	00 	. 
	nop			;1097	00 	. 
	nop			;1098	00 	. 
	nop			;1099	00 	. 
	nop			;109a	00 	. 
	nop			;109b	00 	. 
	nop			;109c	00 	. 
	nop			;109d	00 	. 
	nop			;109e	00 	. 
	nop			;109f	00 	. 
	nop			;10a0	00 	. 
	nop			;10a1	00 	. 
	nop			;10a2	00 	. 
	nop			;10a3	00 	. 
	nop			;10a4	00 	. 
	nop			;10a5	00 	. 
	nop			;10a6	00 	. 
	nop			;10a7	00 	. 
	nop			;10a8	00 	. 
	nop			;10a9	00 	. 
	nop			;10aa	00 	. 
	nop			;10ab	00 	. 
	nop			;10ac	00 	. 
	nop			;10ad	00 	. 
	nop			;10ae	00 	. 
	nop			;10af	00 	. 
	nop			;10b0	00 	. 
	nop			;10b1	00 	. 
	nop			;10b2	00 	. 
	nop			;10b3	00 	. 
	nop			;10b4	00 	. 
	nop			;10b5	00 	. 
	nop			;10b6	00 	. 
	nop			;10b7	00 	. 
	nop			;10b8	00 	. 
	nop			;10b9	00 	. 
	nop			;10ba	00 	. 
	nop			;10bb	00 	. 
	nop			;10bc	00 	. 
	nop			;10bd	00 	. 
	nop			;10be	00 	. 
	nop			;10bf	00 	. 
	nop			;10c0	00 	. 
	nop			;10c1	00 	. 
	nop			;10c2	00 	. 
	nop			;10c3	00 	. 
	nop			;10c4	00 	. 
	nop			;10c5	00 	. 
	nop			;10c6	00 	. 
	nop			;10c7	00 	. 
	nop			;10c8	00 	. 
	nop			;10c9	00 	. 
	nop			;10ca	00 	. 
	nop			;10cb	00 	. 
	nop			;10cc	00 	. 
	nop			;10cd	00 	. 
	nop			;10ce	00 	. 
	nop			;10cf	00 	. 
	nop			;10d0	00 	. 
	nop			;10d1	00 	. 
	nop			;10d2	00 	. 
	nop			;10d3	00 	. 
	nop			;10d4	00 	. 
	nop			;10d5	00 	. 
	nop			;10d6	00 	. 
	nop			;10d7	00 	. 
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
	jp 0f4dah		;110f	c3 da f4 	. . . 
	jp 0f4d1h		;1112	c3 d1 f4 	. . . 
	jp 0f4bfh		;1115	c3 bf f4 	. . . 
	jp 0f3a5h		;1118	c3 a5 f3 	. . . 
	jp 0f371h		;111b	c3 71 f3 	. q . 
	jp 0f3aeh		;111e	c3 ae f3 	. . . 
	jp 0f3b3h		;1121	c3 b3 f3 	. . . 
	jp 0f3b8h		;1124	c3 b8 f3 	. . . 
	jp 0f3d1h		;1127	c3 d1 f3 	. . . 
	jp 0f3c8h		;112a	c3 c8 f3 	. . . 
	jp 0f4e9h		;112d	c3 e9 f4 	. . . 
	jp 0f3beh		;1130	c3 be f3 	. . . 
	jp 0f46ch		;1133	c3 6c f4 	. l . 
	jp 0f4b9h		;1136	c3 b9 f4 	. . . 
	jp 0f4c8h		;1139	c3 c8 f4 	. . . 
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
	nop			;125f	00 	. 
	pop hl			;1260	e1 	. 
	ld c,h			;1261	4c 	L 
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
	call 003ceh		;1274	cd ce 03 	. . . 
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
	jp 00332h		;12a2	c3 32 03 	. 2 . 
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
	call 00403h		;12cb	cd 03 04 	. . . 
	jp 0f37eh		;12ce	c3 7e f3 	. ~ . 
	call 0f38fh		;12d1	cd 8f f3 	. . . 
	call 0048dh		;12d4	cd 8d 04 	. . . 
	jp 0f37eh		;12d7	c3 7e f3 	. ~ . 
	call 0f38fh		;12da	cd 8f f3 	. . . 
	call 005b7h		;12dd	cd b7 05 	. . . 
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
	jp 00ea0h		;1345	c3 a0 0e 	. . . 
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
	call 00b88h		;13b2	cd 88 0b 	. . . 
	pop bc			;13b5	c1 	. 
	jp 0f37eh		;13b6	c3 7e f3 	. ~ . 
	in a,(083h)		;13b9	db 83 	. . 
	and 001h		;13bb	e6 01 	. . 
	jr $-85		;13bd	18 a9 	. . 
	in a,(083h)		;13bf	db 83 	. . 
	and 001h		;13c1	e6 01 	. . 
	jr z,$-4		;13c3	28 fa 	( . 
	in a,(081h)		;13c5	db 81 	. . 
	ret			;13c7	c9 	. 
	call 0f38fh		;13c8	cd 8f f3 	. . . 
	call 00b6ah		;13cb	cd 6a 0b 	. j . 
	jp 0f37eh		;13ce	c3 7e f3 	. ~ . 
	call 0f38fh		;13d1	cd 8f f3 	. . . 
	call 00ad4h		;13d4	cd d4 0a 	. . . 
	jp 0f37eh		;13d7	c3 7e f3 	. ~ . 
	ld a,(0f26bh)		;13da	3a 6b f2 	: k . 
	bit 3,a		;13dd	cb 5f 	. _ 
	ret nz			;13df	c0 	. 
	call 0f38fh		;13e0	cd 8f f3 	. . . 
	call 00a32h		;13e3	cd 32 0a 	. 2 . 
	jp 0f37eh		;13e6	c3 7e f3 	. ~ . 
	ld a,(0f26bh)		;13e9	3a 6b f2 	: k . 
	bit 3,a		;13ec	cb 5f 	. _ 
	ld a,0ffh		;13ee	3e ff 	> . 
	ret nz			;13f0	c0 	. 
	call 0f38fh		;13f1	cd 8f f3 	. . . 
	call 00b45h		;13f4	cd 45 0b 	. E . 
	jp 0f37eh		;13f7	c3 7e f3 	. ~ . 
	nop			;13fa	00 	. 
	nop			;13fb	00 	. 
	nop			;13fc	00 	. 
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
	call 00985h		;1426	cd 85 09 	. . . 
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
	call 00985h		;14be	cd 85 09 	. . . 
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
	jp 023d0h		;14e7	c3 d0 23 	. . # 
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
	nop			;2250	00 	. 
	nop			;2251	00 	. 
	nop			;2252	00 	. 
	nop			;2253	00 	. 
	nop			;2254	00 	. 
	nop			;2255	00 	. 
	nop			;2256	00 	. 
	nop			;2257	00 	. 
	nop			;2258	00 	. 
	nop			;2259	00 	. 
	nop			;225a	00 	. 
	nop			;225b	00 	. 
	nop			;225c	00 	. 
	nop			;225d	00 	. 
	nop			;225e	00 	. 
	nop			;225f	00 	. 
	ld sp,0f13ah		;2260	31 3a f1 	1 : . 
	ld ix,0f0b8h		;2263	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;2267	dd 36 b8 10 	. 6 . . 
	push bc			;226b	c5 	. 
	ld a,c			;226c	79 	y 
	rra			;226d	1f 	. 
	rra			;226e	1f 	. 
	rra			;226f	1f 	. 
	rra			;2270	1f 	. 
	and 00fh		;2271	e6 0f 	. . 
	ld e,a			;2273	5f 	_ 
	call 03b56h		;2274	cd 56 3b 	. V ; 
	call 03ae9h		;2277	cd e9 3a 	. . : 
	ld (0f06bh),a		;227a	32 6b f0 	2 k . 
	pop bc			;227d	c1 	. 
	ld a,c			;227e	79 	y 
	and 00fh		;227f	e6 0f 	. . 
	ld (0f06eh),a		;2281	32 6e f0 	2 n . 
	xor a			;2284	af 	. 
	ld (0f06ch),a		;2285	32 6c f0 	2 l . 
	ld hl,0f13ah		;2288	21 3a f1 	! : . 
	bit 0,(hl)		;228b	cb 46 	. F 
	jr z,$+22		;228d	28 14 	( . 
	push hl			;228f	e5 	. 
	call 02355h		;2290	cd 55 23 	. U # 
	pop hl			;2293	e1 	. 
	bit 1,(hl)		;2294	cb 4e 	. N 
	jr z,$+13		;2296	28 0b 	( . 
	push hl			;2298	e5 	. 
	ld a,001h		;2299	3e 01 	> . 
	call 03ae3h		;229b	cd e3 3a 	. . : 
	ld a,h			;229e	7c 	| 
	ld (0f06ch),a		;229f	32 6c f0 	2 l . 
	pop hl			;22a2	e1 	. 
	res 0,(hl)		;22a3	cb 86 	. . 
	res 1,(hl)		;22a5	cb 8e 	. . 
	ld a,(0f06eh)		;22a7	3a 6e f0 	: n . 
	call 03ae3h		;22aa	cd e3 3a 	. . : 
	ld sp,0f13ah		;22ad	31 3a f1 	1 : . 
	xor a			;22b0	af 	. 
	ld (0f06ah),a		;22b1	32 6a f0 	2 j . 
	call 03e98h		;22b4	cd 98 3e 	. . > 
	call 03aeeh		;22b7	cd ee 3a 	. . : 
	add a,041h		;22ba	c6 41 	. A 
	call 03e40h		;22bc	cd 40 3e 	. @ > 
	call 03b54h		;22bf	cd 54 3b 	. T ; 
	and 01fh		;22c2	e6 1f 	. . 
	ld l,a			;22c4	6f 	o 
	ld h,000h		;22c5	26 00 	& . 
	call nz,03f6ah		;22c7	c4 6a 3f 	. j ? 
	ld a,03eh		;22ca	3e 3e 	> > 
	call 03e40h		;22cc	cd 40 3e 	. @ > 
	call 026ebh		;22cf	cd eb 26 	. . & 
	call 03af3h		;22d2	cd f3 3a 	. . : 
	call 03aeeh		;22d5	cd ee 3a 	. . : 
	ld (0f06eh),a		;22d8	32 6e f0 	2 n . 
	call 03349h		;22db	cd 49 33 	. I 3 
	jp nz,02331h		;22de	c2 31 23 	. 1 # 
	ld a,(0f076h)		;22e1	3a 76 f0 	: v . 
	or a			;22e4	b7 	. 
	jp nz,022ffh		;22e5	c2 ff 22 	. . " 
	call 0245dh		;22e8	cd 5d 24 	. ] $ 
	ld hl,024e7h		;22eb	21 e7 24 	! . $ 
	ld e,a			;22ee	5f 	_ 
	ld d,000h		;22ef	16 00 	. . 
	add hl,de			;22f1	19 	. 
	add hl,de			;22f2	19 	. 
	ld a,(hl)			;22f3	7e 	~ 
	inc hl			;22f4	23 	# 
	ld h,(hl)			;22f5	66 	f 
	ld l,a			;22f6	6f 	o 
	jp (hl)			;22f7	e9 	. 
	set 0,(ix-04eh)		;22f8	dd cb b2 c6 	. . . . 
	call 03349h		;22fc	cd 49 33 	. I 3 
	ld a,(0f077h)		;22ff	3a 77 f0 	: w . 
	cp 020h		;2302	fe 20 	.   
	jr nz,$+116		;2304	20 72 	  r 
	ld a,(0f076h)		;2306	3a 76 f0 	: v . 
	or a			;2309	b7 	. 
	jr z,$+12		;230a	28 0a 	( . 
	dec a			;230c	3d 	= 
	ld (0f06eh),a		;230d	32 6e f0 	2 n . 
	call 02456h		;2310	cd 56 24 	. V $ 
	call 03ae3h		;2313	cd e3 3a 	. . : 
	bit 0,(ix-04eh)		;2316	dd cb b2 46 	. . . F 
	jp nz,0f278h		;231a	c2 78 f2 	. x . 
	call 03349h		;231d	cd 49 33 	. I 3 
	ld hl,0f077h		;2320	21 77 f0 	! w . 
	ld a,(hl)			;2323	7e 	~ 
	sub 020h		;2324	d6 20 	.   
	dec hl			;2326	2b 	+ 
	or (hl)			;2327	b6 	. 
	jp nz,02331h		;2328	c2 31 23 	. 1 # 
	jp 022adh		;232b	c3 ad 22 	. . " 
	call 03b4fh		;232e	cd 4f 3b 	. O ; 
	call 03e98h		;2331	cd 98 3e 	. . > 
	ld hl,(0f072h)		;2334	2a 72 f0 	* r . 
	call 00011h		;2337	cd 11 00 	. . . 
	cp 020h		;233a	fe 20 	.   
	jr z,$+11		;233c	28 09 	( . 
	or a			;233e	b7 	. 
	jr z,$+8		;233f	28 06 	( . 
	call 03e40h		;2341	cd 40 3e 	. @ > 
	inc hl			;2344	23 	# 
	jr $-14		;2345	18 f0 	. . 
	ld a,03fh		;2347	3e 3f 	> ? 
	call 03e40h		;2349	cd 40 3e 	. @ > 
	call 03e98h		;234c	cd 98 3e 	. . > 
	call 02355h		;234f	cd 55 23 	. U # 
	jp 022adh		;2352	c3 ad 22 	. . " 
	ld hl,0f06bh		;2355	21 6b f0 	! k . 
	ld a,(hl)			;2358	7e 	~ 
	or a			;2359	b7 	. 
	ret z			;235a	c8 	. 
	xor a			;235b	af 	. 
	ld (hl),a			;235c	77 	w 
	ld hl,0f203h		;235d	21 03 f2 	! . . 
	ld (00001h),hl		;2360	22 01 00 	" . . 
	ld hl,0f006h		;2363	21 06 f0 	! . . 
	ld (00006h),hl		;2366	22 06 00 	" . . 
	call 03ae3h		;2369	cd e3 3a 	. . : 
	call 02750h		;236c	cd 50 27 	. P ' 
	call 03b25h		;236f	cd 25 3b 	. % ; 
	ld a,(0f06eh)		;2372	3a 6e f0 	: n . 
	jp 03ae3h		;2375	c3 e3 3a 	. . : 
	ld de,0f07fh		;2378	11 7f f0 	.  . 
	ld a,(de)			;237b	1a 	. 
	cp 020h		;237c	fe 20 	.   
	jp nz,02331h		;237e	c2 31 23 	. 1 # 
	ld hl,023e8h		;2381	21 e8 23 	! . # 
	ld bc,00003h		;2384	01 03 00 	. . . 
	ldir		;2387	ed b0 	. . 
	call 03b54h		;2389	cd 54 3b 	. T ; 
	ld (0f071h),a		;238c	32 71 f0 	2 q . 
	call 03b04h		;238f	cd 04 3b 	. . ; 
	jr nz,$+12		;2392	20 0a 	  . 
	ld e,000h		;2394	1e 00 	. . 
	call 03b56h		;2396	cd 56 3b 	. V ; 
	call 03b04h		;2399	cd 04 3b 	. . ; 
	jr z,$-110		;239c	28 90 	( . 
	call 03a6ch		;239e	cd 6c 3a 	. l : 
	jp c,023ebh		;23a1	da eb 23 	. . # 
	bit 0,(ix-04eh)		;23a4	dd cb b2 46 	. . . F 
	jr z,$+24		;23a8	28 16 	( . 
	call 03ec4h		;23aa	cd c4 3e 	. . > 
	ld a,(bc)			;23ad	0a 	. 
	ld d,b			;23ae	50 	P 
	ld (hl),d			;23af	72 	r 
	ld l,a			;23b0	6f 	o 
	ld h,a			;23b1	67 	g 
	ld (hl),d			;23b2	72 	r 
	ld h,c			;23b3	61 	a 
	ld l,l			;23b4	6d 	m 
	jr nz,$+50		;23b5	20 30 	  0 
	ld sp,03030h		;23b7	31 30 30 	1 0 0 
	dec l			;23ba	2d 	- 
	inc h			;23bb	24 	$ 
	dec hl			;23bc	2b 	+ 
	call 03c2eh		;23bd	cd 2e 3c 	. . < 
	call 02406h		;23c0	cd 06 24 	. . $ 
	call 0243eh		;23c3	cd 3e 24 	. > $ 
	bit 0,(ix-04eh)		;23c6	dd cb b2 46 	. . . F 
	jp nz,0f278h		;23ca	c2 78 f2 	. x . 
	jp 0f060h		;23cd	c3 60 f0 	. ` . 
	ld sp,0f13ah		;23d0	31 3a f1 	1 : . 
	xor a			;23d3	af 	. 
	call 00017h		;23d4	cd 17 00 	. . . 
	ld ix,0f0b8h		;23d7	dd 21 b8 f0 	. ! . . 
	ld (ix-048h),010h		;23db	dd 36 b8 10 	. 6 . . 
	call 02456h		;23df	cd 56 24 	. V $ 
	call 03ae3h		;23e2	cd e3 3a 	. . : 
	jp 022adh		;23e5	c3 ad 22 	. . " 
	ld b,e			;23e8	43 	C 
	ld c,a			;23e9	4f 	O 
	ld c,l			;23ea	4d 	M 
	call 023f4h		;23eb	cd f4 23 	. . # 
	call 03b4fh		;23ee	cd 4f 3b 	. O ; 
	jp 0231dh		;23f1	c3 1d 23 	. . # 
	call 03ec4h		;23f4	cd c4 3e 	. . > 
	ld a,(bc)			;23f7	0a 	. 
	ld b,d			;23f8	42 	B 
	ld (hl),d			;23f9	72 	r 
	ld h,c			;23fa	61 	a 
	ld l,e			;23fb	6b 	k 
	jr nz,$+111		;23fc	20 6d 	  m 
	ld l,c			;23fe	69 	i 
	ld h,l			;23ff	65 	e 
	ld l,d			;2400	6a 	j 
	ld (hl),e			;2401	73 	s 
	ld h,e			;2402	63 	c 
	ld h,c			;2403	61 	a 
	inc h			;2404	24 	$ 
	ret			;2405	c9 	. 
	ld hl,(0f074h)		;2406	2a 74 f0 	* t . 
	push hl			;2409	e5 	. 
	ld hl,0005ch		;240a	21 5c 00 	! \ . 
	call 03353h		;240d	cd 53 33 	. S 3 
	ld hl,0006ch		;2410	21 6c 00 	! l . 
	call 03353h		;2413	cd 53 33 	. S 3 
	xor a			;2416	af 	. 
	ld (0007ch),a		;2417	32 7c 00 	2 | . 
	pop hl			;241a	e1 	. 
	call 00011h		;241b	cd 11 00 	. . . 
	or a			;241e	b7 	. 
	jr z,$+9		;241f	28 07 	( . 
	cp 020h		;2421	fe 20 	.   
	jr z,$+5		;2423	28 03 	( . 
	inc hl			;2425	23 	# 
	jr $-11		;2426	18 f3 	. . 
	ld b,000h		;2428	06 00 	. . 
	ld de,00081h		;242a	11 81 00 	. . . 
	call 00011h		;242d	cd 11 00 	. . . 
	ld (de),a			;2430	12 	. 
	or a			;2431	b7 	. 
	jr z,$+7		;2432	28 05 	( . 
	inc b			;2434	04 	. 
	inc hl			;2435	23 	# 
	inc de			;2436	13 	. 
	jr $-10		;2437	18 f4 	. . 
	ld a,b			;2439	78 	x 
	ld (00080h),a		;243a	32 80 00 	2 . . 
	ret			;243d	c9 	. 
	call 03e98h		;243e	cd 98 3e 	. . > 
	call 03af3h		;2441	cd f3 3a 	. . : 
	call 03b4fh		;2444	cd 4f 3b 	. O ; 
	call 03b54h		;2447	cd 54 3b 	. T ; 
	add a,a			;244a	87 	. 
	add a,a			;244b	87 	. 
	add a,a			;244c	87 	. 
	add a,a			;244d	87 	. 
	ld hl,0f06eh		;244e	21 6e f0 	! n . 
	or (hl)			;2451	b6 	. 
	ld (00004h),a		;2452	32 04 00 	2 . . 
	ret			;2455	c9 	. 
	ld a,(0f06eh)		;2456	3a 6e f0 	: n . 
	ld (00004h),a		;2459	32 04 00 	2 . . 
	ret			;245c	c9 	. 
	ld a,(0fb7ch)		;245d	3a 7c fb 	: | . 
	and 081h		;2460	e6 81 	. . 
	cp 081h		;2462	fe 81 	. . 
	jr nz,$+29		;2464	20 1b 	  . 
	ld a,(0f078h)		;2466	3a 78 f0 	: x . 
	cp 020h		;2469	fe 20 	.   
	jr nz,$+22		;246b	20 14 	  . 
	ld a,(0f077h)		;246d	3a 77 f0 	: w . 
	cp 020h		;2470	fe 20 	.   
	jr z,$+15		;2472	28 0d 	( . 
	ld hl,0f980h		;2474	21 80 f9 	! . . 
	ld b,004h		;2477	06 04 	. . 
	cp (hl)			;2479	be 	. 
	jr z,$+42		;247a	28 28 	( ( 
	inc hl			;247c	23 	# 
	inc hl			;247d	23 	# 
	inc hl			;247e	23 	# 
	djnz $-6		;247f	10 f8 	. . 
	ld hl,024bfh		;2481	21 bf 24 	! . $ 
	ld c,000h		;2484	0e 00 	. . 
	ld a,c			;2486	79 	y 
	cp 008h		;2487	fe 08 	. . 
	ret nc			;2489	d0 	. 
	ld de,0f077h		;248a	11 77 f0 	. w . 
	ld b,005h		;248d	06 05 	. . 
	ld a,(de)			;248f	1a 	. 
	cp (hl)			;2490	be 	. 
	jr nz,$+13		;2491	20 0b 	  . 
	inc de			;2493	13 	. 
	inc hl			;2494	23 	# 
	djnz $-6		;2495	10 f8 	. . 
	ld a,(de)			;2497	1a 	. 
	cp 020h		;2498	fe 20 	.   
	jr nz,$+7		;249a	20 05 	  . 
	ld a,c			;249c	79 	y 
	ret			;249d	c9 	. 
	inc hl			;249e	23 	# 
	djnz $-1		;249f	10 fd 	. . 
	inc c			;24a1	0c 	. 
	jr $-28		;24a2	18 e2 	. . 
	inc hl			;24a4	23 	# 
	ld e,(hl)			;24a5	5e 	^ 
	inc hl			;24a6	23 	# 
	ld d,(hl)			;24a7	56 	V 
	push de			;24a8	d5 	. 
	call 02406h		;24a9	cd 06 24 	. . $ 
	call 0243eh		;24ac	cd 3e 24 	. > $ 
	ld a,001h		;24af	3e 01 	> . 
	call 00017h		;24b1	cd 17 00 	. . . 
	jp c,0f203h		;24b4	da 03 f2 	. . . 
	pop hl			;24b7	e1 	. 
	pop af			;24b8	f1 	. 
	call 0f997h		;24b9	cd 97 f9 	. . . 
	jp 023d0h		;24bc	c3 d0 23 	. . # 
	ld b,h			;24bf	44 	D 
	ld c,c			;24c0	49 	I 
	ld d,d			;24c1	52 	R 
	jr nz,$+34		;24c2	20 20 	    
	ld b,l			;24c4	45 	E 
	ld d,d			;24c5	52 	R 
	ld b,c			;24c6	41 	A 
	jr nz,$+34		;24c7	20 20 	    
	ld d,h			;24c9	54 	T 
	ld e,c			;24ca	59 	Y 
	ld d,b			;24cb	50 	P 
	ld b,l			;24cc	45 	E 
	jr nz,$+85		;24cd	20 53 	  S 
	ld b,c			;24cf	41 	A 
	ld d,(hl)			;24d0	56 	V 
	ld b,l			;24d1	45 	E 
	jr nz,$+84		;24d2	20 52 	  R 
	ld b,l			;24d4	45 	E 
	ld c,(hl)			;24d5	4e 	N 
	jr nz,$+34		;24d6	20 20 	    
	ld d,l			;24d8	55 	U 
	ld d,e			;24d9	53 	S 
	ld b,l			;24da	45 	E 
	ld d,d			;24db	52 	R 
	jr nz,$+70		;24dc	20 44 	  D 
	ld b,l			;24de	45 	E 
	ld b,d			;24df	42 	B 
	ld d,l			;24e0	55 	U 
	ld b,a			;24e1	47 	G 
	ld b,h			;24e2	44 	D 
	jr nz,$+34		;24e3	20 20 	    
	jr nz,$+34		;24e5	20 20 	    
	ld sp,hl			;24e7	f9 	. 
	inc h			;24e8	24 	$ 
	and a			;24e9	a7 	. 
	dec h			;24ea	25 	% 
	call po,02025h		;24eb	e4 25 20 	. %   
	ld h,066h		;24ee	26 66 	& f 
	ld h,0d3h		;24f0	26 d3 	& . 
	ld h,0f8h		;24f2	26 f8 	& . 
	ld (02801h),hl		;24f4	22 01 28 	" . ( 
	rst 38h			;24f7	ff 	. 
	ld (049cdh),hl		;24f8	22 cd 49 	" . I 
	inc sp			;24fb	33 	3 
	ld hl,0f077h		;24fc	21 77 f0 	! w . 
	ld a,(hl)			;24ff	7e 	~ 
	cp 020h		;2500	fe 20 	.   
	call z,031f1h		;2502	cc f1 31 	. . 1 
	ld e,000h		;2505	1e 00 	. . 
	push de			;2507	d5 	. 
	call 03b1dh		;2508	cd 1d 3b 	. . ; 
	jp z,02590h		;250b	ca 90 25 	. . % 
	jp z,02593h		;250e	ca 93 25 	. . % 
	ld a,(0f06dh)		;2511	3a 6d f0 	: m . 
	rrca			;2514	0f 	. 
	rrca			;2515	0f 	. 
	rrca			;2516	0f 	. 
	and 060h		;2517	e6 60 	. ` 
	ld c,a			;2519	4f 	O 
	ld a,00ah		;251a	3e 0a 	> . 
	call 027f7h		;251c	cd f7 27 	. . ' 
	rla			;251f	17 	. 
	jr c,$+99		;2520	38 61 	8 a 
	pop de			;2522	d1 	. 
	ld a,e			;2523	7b 	{ 
	inc e			;2524	1c 	. 
	push de			;2525	d5 	. 
	and 003h		;2526	e6 03 	. . 
	push af			;2528	f5 	. 
	jr nz,$+29		;2529	20 1b 	  . 
	call 03e98h		;252b	cd 98 3e 	. . > 
	ld a,(0f076h)		;252e	3a 76 f0 	: v . 
	dec a			;2531	3d 	= 
	jp p,0253ah		;2532	f2 3a 25 	. : % 
	push bc			;2535	c5 	. 
	call 03aeeh		;2536	cd ee 3a 	. . : 
	pop bc			;2539	c1 	. 
	add a,041h		;253a	c6 41 	. A 
	call 03e40h		;253c	cd 40 3e 	. @ > 
	ld a,03ah		;253f	3e 3a 	> : 
	call 03e40h		;2541	cd 40 3e 	. @ > 
	jr $+10		;2544	18 08 	. . 
	call 03e3eh		;2546	cd 3e 3e 	. > > 
	ld a,03ah		;2549	3e 3a 	> : 
	call 03e40h		;254b	cd 40 3e 	. @ > 
	call 03e3eh		;254e	cd 3e 3e 	. > > 
	ld b,001h		;2551	06 01 	. . 
	ld a,b			;2553	78 	x 
	call 027f7h		;2554	cd f7 27 	. . ' 
	and 07fh		;2557	e6 7f 	.  
	cp 020h		;2559	fe 20 	.   
	jr nz,$+21		;255b	20 13 	  . 
	pop af			;255d	f1 	. 
	push af			;255e	f5 	. 
	cp 003h		;255f	fe 03 	. . 
	jr nz,$+13		;2561	20 0b 	  . 
	ld a,009h		;2563	3e 09 	> . 
	call 027f7h		;2565	cd f7 27 	. . ' 
	and 07fh		;2568	e6 7f 	.  
	cp 020h		;256a	fe 20 	.   
	jr z,$+22		;256c	28 14 	( . 
	ld a,020h		;256e	3e 20 	>   
	call 03e40h		;2570	cd 40 3e 	. @ > 
	inc b			;2573	04 	. 
	ld a,b			;2574	78 	x 
	cp 00ch		;2575	fe 0c 	. . 
	jr nc,$+11		;2577	30 09 	0 . 
	cp 009h		;2579	fe 09 	. . 
	jr nz,$-40		;257b	20 d6 	  . 
	call 03e3eh		;257d	cd 3e 3e 	. > > 
	jr $-45		;2580	18 d1 	. . 
	pop af			;2582	f1 	. 
	call 03ddch		;2583	cd dc 3d 	. . = 
	jr nz,$+13		;2586	20 0b 	  . 
	ld c,012h		;2588	0e 12 	. . 
	call 03b0dh		;258a	cd 0d 3b 	. . ; 
	jp 0250eh		;258d	c3 0e 25 	. . % 
	call 02597h		;2590	cd 97 25 	. . % 
	pop de			;2593	d1 	. 
	jp 0231dh		;2594	c3 1d 23 	. . # 
	call 03ec4h		;2597	cd c4 3e 	. . > 
	ld a,(bc)			;259a	0a 	. 
	ld b,d			;259b	42 	B 
	ld (hl),d			;259c	72 	r 
	ld h,c			;259d	61 	a 
	ld l,e			;259e	6b 	k 
	jr nz,$+114		;259f	20 70 	  p 
	ld l,h			;25a1	6c 	l 
	ld l,c			;25a2	69 	i 
	ld l,e			;25a3	6b 	k 
	ld (hl),l			;25a4	75 	u 
	inc h			;25a5	24 	$ 
	ret			;25a6	c9 	. 
	call 03349h		;25a7	cd 49 33 	. I 3 
	cp 00bh		;25aa	fe 0b 	. . 
	jr nz,$+46		;25ac	20 2c 	  , 
	call 03ec4h		;25ae	cd c4 3e 	. . > 
	ld a,(bc)			;25b1	0a 	. 
	ld d,a			;25b2	57 	W 
	ld (hl),e			;25b3	73 	s 
	ld a,d			;25b4	7a 	z 
	ld a,c			;25b5	79 	y 
	ld (hl),e			;25b6	73 	s 
	ld (hl),h			;25b7	74 	t 
	ld l,e			;25b8	6b 	k 
	ld l,c			;25b9	69 	i 
	ld h,l			;25ba	65 	e 
	jr nz,$+42		;25bb	20 28 	  ( 
	ld d,h			;25bd	54 	T 
	cpl			;25be	2f 	/ 
	ld c,(hl)			;25bf	4e 	N 
	add hl,hl			;25c0	29 	) 
	jr nz,$+65		;25c1	20 3f 	  ? 
	inc h			;25c3	24 	$ 
	call 026ebh		;25c4	cd eb 26 	. . & 
	ld hl,0f098h		;25c7	21 98 f0 	! . . 
	ld a,(hl)			;25ca	7e 	~ 
	dec a			;25cb	3d 	= 
	jp nz,022adh		;25cc	c2 ad 22 	. . " 
	inc hl			;25cf	23 	# 
	ld a,(hl)			;25d0	7e 	~ 
	cp 054h		;25d1	fe 54 	. T 
	jp nz,022adh		;25d3	c2 ad 22 	. . " 
	inc hl			;25d6	23 	# 
	ld (0f074h),hl		;25d7	22 74 f0 	" t . 
	call 03b25h		;25da	cd 25 3b 	. % ; 
	inc a			;25dd	3c 	< 
	call z,02597h		;25de	cc 97 25 	. . % 
	jp 0231dh		;25e1	c3 1d 23 	. . # 
	call 03349h		;25e4	cd 49 33 	. I 3 
	jp nz,02331h		;25e7	c2 31 23 	. 1 # 
	call 03b04h		;25ea	cd 04 3b 	. . ; 
	jp z,02331h		;25ed	ca 31 23 	. 1 # 
	call 03e98h		;25f0	cd 98 3e 	. . > 
	ld hl,0f06fh		;25f3	21 6f f0 	! o . 
	ld (hl),0ffh		;25f6	36 ff 	6 . 
	ld hl,0f06fh		;25f8	21 6f f0 	! o . 
	ld a,(hl)			;25fb	7e 	~ 
	cp 080h		;25fc	fe 80 	. . 
	jr c,$+12		;25fe	38 0a 	8 . 
	push hl			;2600	e5 	. 
	call 03b31h		;2601	cd 31 3b 	. 1 ; 
	pop hl			;2604	e1 	. 
	jp nz,0231dh		;2605	c2 1d 23 	. . # 
	xor a			;2608	af 	. 
	ld (hl),a			;2609	77 	w 
	inc (hl)			;260a	34 	4 
	ld c,000h		;260b	0e 00 	. . 
	call 027f7h		;260d	cd f7 27 	. . ' 
	cp 01ah		;2610	fe 1a 	. . 
	jp z,0231dh		;2612	ca 1d 23 	. . # 
	call 03e40h		;2615	cd 40 3e 	. @ > 
	call 03ddch		;2618	cd dc 3d 	. . = 
	jp nz,0231dh		;261b	c2 1d 23 	. . # 
	jr $-38		;261e	18 d8 	. . 
	call 027c3h		;2620	cd c3 27 	. . ' 
	push bc			;2623	c5 	. 
	call 03349h		;2624	cd 49 33 	. I 3 
	jp nz,02331h		;2627	c2 31 23 	. 1 # 
	ld de,0f076h		;262a	11 76 f0 	. v . 
	call 03b3bh		;262d	cd 3b 3b 	. ; ; 
	jr z,$+45		;2630	28 2b 	( + 
	xor a			;2632	af 	. 
	ld (0f096h),a		;2633	32 96 f0 	2 . . 
	pop hl			;2636	e1 	. 
	ld h,000h		;2637	26 00 	& . 
	add hl,hl			;2639	29 	) 
	ld de,00100h		;263a	11 00 01 	. . . 
	ld a,h			;263d	7c 	| 
	or l			;263e	b5 	. 
	jr z,$+24		;263f	28 16 	( . 
	dec hl			;2641	2b 	+ 
	push hl			;2642	e5 	. 
	ld hl,00080h		;2643	21 80 00 	! . . 
	add hl,de			;2646	19 	. 
	push hl			;2647	e5 	. 
	call 03af6h		;2648	cd f6 3a 	. . : 
	ld de,0f076h		;264b	11 76 f0 	. v . 
	call 03b2dh		;264e	cd 2d 3b 	. - ; 
	pop de			;2651	d1 	. 
	pop hl			;2652	e1 	. 
	jr nz,$+10		;2653	20 08 	  . 
	jr $-24		;2655	18 e6 	. . 
	call 03b15h		;2657	cd 15 3b 	. . ; 
	inc a			;265a	3c 	< 
	jr nz,$+5		;265b	20 03 	  . 
	call 023f4h		;265d	cd f4 23 	. . # 
	call 03af3h		;2660	cd f3 3a 	. . : 
	jp 0231dh		;2663	c3 1d 23 	. . # 
	call 03349h		;2666	cd 49 33 	. I 3 
	jp nz,02331h		;2669	c2 31 23 	. 1 # 
	call 03b1dh		;266c	cd 1d 3b 	. . ; 
	jr nz,$+79		;266f	20 4d 	  M 
	ld hl,0f076h		;2671	21 76 f0 	! v . 
	ld de,0f086h		;2674	11 86 f0 	. . . 
	ld bc,00010h		;2677	01 10 00 	. . . 
	ldir		;267a	ed b0 	. . 
	ld hl,(0f074h)		;267c	2a 74 f0 	* t . 
	call 033bbh		;267f	cd bb 33 	. . 3 
	cp 03dh		;2682	fe 3d 	. = 
	jr z,$+7		;2684	28 05 	( . 
	cp 05fh		;2686	fe 5f 	. _ 
	jp nz,02331h		;2688	c2 31 23 	. 1 # 
	inc hl			;268b	23 	# 
	ld (0f074h),hl		;268c	22 74 f0 	" t . 
	call 03349h		;268f	cd 49 33 	. I 3 
	jp nz,02331h		;2692	c2 31 23 	. 1 # 
	ld a,(0f06eh)		;2695	3a 6e f0 	: n . 
	inc a			;2698	3c 	< 
	ld b,a			;2699	47 	G 
	ld a,(0f076h)		;269a	3a 76 f0 	: v . 
	or a			;269d	b7 	. 
	ld c,a			;269e	4f 	O 
	jr nz,$+3		;269f	20 01 	  . 
	ld c,b			;26a1	48 	H 
	ld a,(0f086h)		;26a2	3a 86 f0 	: . . 
	or a			;26a5	b7 	. 
	jr nz,$+3		;26a6	20 01 	  . 
	ld a,b			;26a8	78 	x 
	cp c			;26a9	b9 	. 
	jp nz,02331h		;26aa	c2 31 23 	. 1 # 
	call 03b1dh		;26ad	cd 1d 3b 	. . ; 
	jr z,$+8		;26b0	28 06 	( . 
	call 03b47h		;26b2	cd 47 3b 	. G ; 
	jp 0231dh		;26b5	c3 1d 23 	. . # 
	call 02597h		;26b8	cd 97 25 	. . % 
	jp 0231dh		;26bb	c3 1d 23 	. . # 
	call 03ec4h		;26be	cd c4 3e 	. . > 
	ld a,(bc)			;26c1	0a 	. 
	ld d,b			;26c2	50 	P 
	ld l,h			;26c3	6c 	l 
	ld l,c			;26c4	69 	i 
	ld l,e			;26c5	6b 	k 
	jr nz,$+107		;26c6	20 69 	  i 
	ld (hl),e			;26c8	73 	s 
	ld (hl),h			;26c9	74 	t 
	ld l,(hl)			;26ca	6e 	n 
	ld l,c			;26cb	69 	i 
	ld h,l			;26cc	65 	e 
	ld l,d			;26cd	6a 	j 
	ld h,l			;26ce	65 	e 
	inc h			;26cf	24 	$ 
	jp 0231dh		;26d0	c3 1d 23 	. . # 
	call 027c3h		;26d3	cd c3 27 	. . ' 
	ld a,c			;26d6	79 	y 
	cp 010h		;26d7	fe 10 	. . 
	jp nc,02331h		;26d9	d2 31 23 	. 1 # 
	ld e,a			;26dc	5f 	_ 
	ld a,(0f077h)		;26dd	3a 77 f0 	: w . 
	cp 020h		;26e0	fe 20 	.   
	jp z,02331h		;26e2	ca 31 23 	. 1 # 
	call 03b56h		;26e5	cd 56 3b 	. V ; 
	jp 0231dh		;26e8	c3 1d 23 	. . # 
	ld a,(0f06ch)		;26eb	3a 6c f0 	: l . 
	or a			;26ee	b7 	. 
	jr nz,$+128		;26ef	20 7e 	  ~ 
	ld a,(0f06bh)		;26f1	3a 6b f0 	: k . 
	or a			;26f4	b7 	. 
	jp z,02795h		;26f5	ca 95 27 	. . ' 
	ld a,(0f06eh)		;26f8	3a 6e f0 	: n . 
	or a			;26fb	b7 	. 
	ld a,000h		;26fc	3e 00 	> . 
	call nz,03ae3h		;26fe	c4 e3 3a 	. . : 
	call 02750h		;2701	cd 50 27 	. P ' 
	call 03b04h		;2704	cd 04 3b 	. . ; 
	jp z,02795h		;2707	ca 95 27 	. . ' 
	ld a,(0f085h)		;270a	3a 85 f0 	: . . 
	dec a			;270d	3d 	= 
	ld (0f096h),a		;270e	32 96 f0 	2 . . 
	ld de,0f098h		;2711	11 98 f0 	. . . 
	call 03af6h		;2714	cd f6 3a 	. . : 
	call 03b31h		;2717	cd 31 3b 	. 1 ; 
	push af			;271a	f5 	. 
	call 03af3h		;271b	cd f3 3a 	. . : 
	pop af			;271e	f1 	. 
	jp nz,02795h		;271f	c2 95 27 	. . ' 
	ld hl,0f084h		;2722	21 84 f0 	! . . 
	ld (hl),000h		;2725	36 00 	6 . 
	inc hl			;2727	23 	# 
	dec (hl)			;2728	35 	5 
	call 03b15h		;2729	cd 15 3b 	. . ; 
	jp z,02795h		;272c	ca 95 27 	. . ' 
	ld a,(0f06eh)		;272f	3a 6e f0 	: n . 
	or a			;2732	b7 	. 
	call nz,03ae3h		;2733	c4 e3 3a 	. . : 
	ld hl,0f099h		;2736	21 99 f0 	! . . 
	ld b,080h		;2739	06 80 	. . 
	ld a,(hl)			;273b	7e 	~ 
	inc hl			;273c	23 	# 
	or a			;273d	b7 	. 
	jr z,$+7		;273e	28 05 	( . 
	call 03e40h		;2740	cd 40 3e 	. @ > 
	djnz $-8		;2743	10 f6 	. . 
	call 03ddch		;2745	cd dc 3d 	. . = 
	jr z,$+97		;2748	28 5f 	( _ 
	call 02355h		;274a	cd 55 23 	. U # 
	jp 022adh		;274d	c3 ad 22 	. . " 
	ld hl,02763h		;2750	21 63 27 	! c ' 
	ld de,0f076h		;2753	11 76 f0 	. v . 
	ld bc,0000ch		;2756	01 0c 00 	. . . 
	ldir		;2759	ed b0 	. . 
	ld b,015h		;275b	06 15 	. . 
	xor a			;275d	af 	. 
	ld (de),a			;275e	12 	. 
	inc de			;275f	13 	. 
	djnz $-3		;2760	10 fb 	. . 
	ret			;2762	c9 	. 
	nop			;2763	00 	. 
	inc h			;2764	24 	$ 
	inc h			;2765	24 	$ 
	inc h			;2766	24 	$ 
	jr nz,$+34		;2767	20 20 	    
	jr nz,$+34		;2769	20 20 	    
	jr nz,$+85		;276b	20 53 	  S 
	ld d,l			;276d	55 	U 
	ld b,d			;276e	42 	B 
	ld hl,02780h		;276f	21 80 27 	! . ' 
	ld de,0f098h		;2772	11 98 f0 	. . . 
	ld bc,00019h		;2775	01 19 00 	. . . 
	ldir		;2778	ed b0 	. . 
	xor a			;277a	af 	. 
	ld (0f06ch),a		;277b	32 6c f0 	2 l . 
	jr $-72		;277e	18 b6 	. . 
	inc de			;2780	13 	. 
	ld b,d			;2781	42 	B 
	ld a,(05553h)		;2782	3a 53 55 	: S U 
	ld b,d			;2785	42 	B 
	ld c,l			;2786	4d 	M 
	ld c,c			;2787	49 	I 
	ld d,h			;2788	54 	T 
	jr nz,$+68		;2789	20 42 	  B 
	ld a,(05541h)		;278b	3a 41 55 	: A U 
	ld d,h			;278e	54 	T 
	ld c,a			;278f	4f 	O 
	ld b,l			;2790	45 	E 
	ld e,b			;2791	58 	X 
	ld b,l			;2792	45 	E 
	ld b,e			;2793	43 	C 
	nop			;2794	00 	. 
	call 02355h		;2795	cd 55 23 	. U # 
	call 02447h		;2798	cd 47 24 	. G $ 
	ld c,00ah		;279b	0e 0a 	. . 
	ld de,0f097h		;279d	11 97 f0 	. . . 
	ld a,07fh		;27a0	3e 7f 	>  
	ld (de),a			;27a2	12 	. 
	call 00005h		;27a3	cd 05 00 	. . . 
	call 02456h		;27a6	cd 56 24 	. V $ 
	ld hl,0f098h		;27a9	21 98 f0 	! . . 
	ld a,(hl)			;27ac	7e 	~ 
	ld b,a			;27ad	47 	G 
	inc hl			;27ae	23 	# 
	ld a,b			;27af	78 	x 
	or a			;27b0	b7 	. 
	jr z,$+10		;27b1	28 08 	( . 
	ld a,(hl)			;27b3	7e 	~ 
	call 03e14h		;27b4	cd 14 3e 	. . > 
	ld (hl),a			;27b7	77 	w 
	dec b			;27b8	05 	. 
	jr $-11		;27b9	18 f3 	. . 
	ld (hl),a			;27bb	77 	w 
	ld hl,0f099h		;27bc	21 99 f0 	! . . 
	ld (0f074h),hl		;27bf	22 74 f0 	" t . 
	ret			;27c2	c9 	. 
	call 03349h		;27c3	cd 49 33 	. I 3 
	ld a,(0f076h)		;27c6	3a 76 f0 	: v . 
	or a			;27c9	b7 	. 
	jp nz,02331h		;27ca	c2 31 23 	. 1 # 
	ld hl,0f077h		;27cd	21 77 f0 	! w . 
	ld bc,00b00h		;27d0	01 00 0b 	. . . 
	ld a,(hl)			;27d3	7e 	~ 
	cp 020h		;27d4	fe 20 	.   
	ret z			;27d6	c8 	. 
	inc hl			;27d7	23 	# 
	sub 030h		;27d8	d6 30 	. 0 
	cp 00ah		;27da	fe 0a 	. . 
	jp nc,02331h		;27dc	d2 31 23 	. 1 # 
	ld d,a			;27df	57 	W 
	ld a,c			;27e0	79 	y 
	cp 01ah		;27e1	fe 1a 	. . 
	jp nc,02331h		;27e3	d2 31 23 	. 1 # 
	add a,a			;27e6	87 	. 
	add a,a			;27e7	87 	. 
	add a,c			;27e8	81 	. 
	add a,a			;27e9	87 	. 
	add a,d			;27ea	82 	. 
	jp c,02331h		;27eb	da 31 23 	. 1 # 
	ld c,a			;27ee	4f 	O 
	djnz $-28		;27ef	10 e2 	. . 
	ret			;27f1	c9 	. 
	add a,l			;27f2	85 	. 
	ld l,a			;27f3	6f 	o 
	ret nc			;27f4	d0 	. 
	inc h			;27f5	24 	$ 
	ret			;27f6	c9 	. 
	ld hl,00080h		;27f7	21 80 00 	! . . 
	add a,c			;27fa	81 	. 
	call 027f2h		;27fb	cd f2 27 	. . ' 
	jp 00011h		;27fe	c3 11 00 	. . . 
	call 03349h		;2801	cd 49 33 	. I 3 
	ld hl,0f097h		;2804	21 97 f0 	! . . 
	ld b,050h		;2807	06 50 	. P 
	ld (hl),000h		;2809	36 00 	6 . 
	inc hl			;280b	23 	# 
	djnz $-3		;280c	10 fb 	. . 
	call 031eeh		;280e	cd ee 31 	. . 1 
	ld hl,00100h		;2811	21 00 01 	! . . 
	ld (0f0e2h),hl		;2814	22 e2 f0 	" . . 
	xor a			;2817	af 	. 
	ld (0f070h),a		;2818	32 70 f0 	2 p . 
	ld hl,0f076h		;281b	21 76 f0 	! v . 
	ld a,(hl)			;281e	7e 	~ 
	ld (0f0b8h),a		;281f	32 b8 f0 	2 . . 
	inc hl			;2822	23 	# 
	ld a,(hl)			;2823	7e 	~ 
	cp 020h		;2824	fe 20 	.   
	jr z,$+10		;2826	28 08 	( . 
	ld bc,0000bh		;2828	01 0b 00 	. . . 
	ld de,0f0e7h		;282b	11 e7 f0 	. . . 
	ldir		;282e	ed b0 	. . 
	call 03aeeh		;2830	cd ee 3a 	. . : 
	ld (0f0bah),a		;2833	32 ba f0 	2 . . 
	inc a			;2836	3c 	< 
	ld c,a			;2837	4f 	O 
	ld a,(0f0b8h)		;2838	3a b8 f0 	: . . 
	or a			;283b	b7 	. 
	jr nz,$+5		;283c	20 03 	  . 
	ld (ix+000h),c		;283e	dd 71 00 	. q . 
	call 03b54h		;2841	cd 54 3b 	. T ; 
	ld (0f071h),a		;2844	32 71 f0 	2 q . 
	xor a			;2847	af 	. 
	call 00017h		;2848	cd 17 00 	. . . 
	call 0386eh		;284b	cd 6e 38 	. n 8 
	call 03af3h		;284e	cd f3 3a 	. . : 
	res 6,(ix-048h)		;2851	dd cb b8 b6 	. . . . 
	ld (ix+00dh),000h		;2855	dd 36 0d 00 	. 6 . . 
	ld (ix+015h),000h		;2859	dd 36 15 00 	. 6 . . 
	ld a,(0f0cch)		;285d	3a cc f0 	: . . 
	or a			;2860	b7 	. 
	jr z,$+50		;2861	28 30 	( 0 
	call 03dfah		;2863	cd fa 3d 	. . = 
	jr z,$+42		;2866	28 28 	( ( 
	call 03de2h		;2868	cd e2 3d 	. . = 
	call 03e14h		;286b	cd 14 3e 	. . > 
	ld (0f0cdh),a		;286e	32 cd f0 	2 . . 
	ld hl,02883h		;2871	21 83 28 	! . ( 
	ld c,a			;2874	4f 	O 
	ld a,(hl)			;2875	7e 	~ 
	inc hl			;2876	23 	# 
	or a			;2877	b7 	. 
	jr z,$+24		;2878	28 16 	( . 
	cp c			;287a	b9 	. 
	jr nz,$-6		;287b	20 f8 	  . 
	call 038d6h		;287d	cd d6 38 	. . 8 
	jp 029e4h		;2880	c3 e4 29 	. . ) 
	inc d			;2883	14 	. 
	dec d			;2884	15 	. 
	ld d,a			;2885	57 	W 
	ld d,(hl)			;2886	56 	V 
	ld c,(hl)			;2887	4e 	N 
	ld d,b			;2888	50 	P 
	ld b,h			;2889	44 	D 
	ld b,(hl)			;288a	46 	F 
	ld c,a			;288b	4f 	O 
	ld d,c			;288c	51 	Q 
	ld c,e			;288d	4b 	K 
	ld c,h			;288e	4c 	L 
	nop			;288f	00 	. 
	call 03871h		;2890	cd 71 38 	. q 8 
	call 039cbh		;2893	cd cb 39 	. . 9 
	call 0397bh		;2896	cd 7b 39 	. { 9 
	call 03ec4h		;2899	cd c4 3e 	. . > 
	dec de			;289c	1b 	. 
	dec a			;289d	3d 	= 
	dec (hl)			;289e	35 	5 
	ld d,b			;289f	50 	P 
	inc hl			;28a0	23 	# 
	inc hl			;28a1	23 	# 
	pop af			;28a2	f1 	. 
	ld b,c			;28a3	41 	A 
	ld (hl),h			;28a4	74 	t 
	ld (hl),d			;28a5	72 	r 
	ld a,c			;28a6	79 	y 
	ld h,d			;28a7	62 	b 
	ld (hl),l			;28a8	75 	u 
	ld (hl),h			;28a9	74 	t 
	ld a,c			;28aa	79 	y 
	ld a,(04b1bh)		;28ab	3a 1b 4b 	: . K 
	inc h			;28ae	24 	$ 
	call 039ffh		;28af	cd ff 39 	. . 9 
	call 02c67h		;28b2	cd 67 2c 	. g , 
	call 02c8eh		;28b5	cd 8e 2c 	. . , 
	ld hl,0f0ceh		;28b8	21 ce f0 	! . . 
	ld a,(0f0c4h)		;28bb	3a c4 f0 	: . . 
	or a			;28be	b7 	. 
	jr z,$+32		;28bf	28 1e 	( . 
	bit 0,(hl)		;28c1	cb 46 	. F 
	set 0,(hl)		;28c3	cb c6 	. . 
	jr nz,$+26		;28c5	20 18 	  . 
	ld de,01400h		;28c7	11 00 14 	. . . 
	call 038c0h		;28ca	cd c0 38 	. . 8 
	call 03ec4h		;28cd	cd c4 3e 	. . > 
	dec de			;28d0	1b 	. 
	ld d,e			;28d1	53 	S 
	jr nz,$+62		;28d2	20 3c 	  < 
	dec a			;28d4	3d 	= 
	jr nz,$+62		;28d5	20 3c 	  < 
	dec a			;28d7	3d 	= 
	jr nz,$+62		;28d8	20 3c 	  < 
	dec a			;28da	3d 	= 
	jr nz,$+29		;28db	20 1b 	  . 
	ld d,h			;28dd	54 	T 
	inc h			;28de	24 	$ 
	ld a,(0f0bdh)		;28df	3a bd f0 	: . . 
	sub (ix+00ch)		;28e2	dd 96 0c 	. . . 
	cp 03dh		;28e5	fe 3d 	. = 
	jr c,$+32		;28e7	38 1e 	8 . 
	bit 1,(hl)		;28e9	cb 4e 	. N 
	set 1,(hl)		;28eb	cb ce 	. . 
	jr nz,$+26		;28ed	20 18 	  . 
	ld de,01445h		;28ef	11 45 14 	. E . 
	call 038c0h		;28f2	cd c0 38 	. . 8 
	call 03ec4h		;28f5	cd c4 3e 	. . > 
	dec de			;28f8	1b 	. 
	ld d,e			;28f9	53 	S 
	jr nz,$+63		;28fa	20 3d 	  = 
	ld a,020h		;28fc	3e 20 	>   
	dec a			;28fe	3d 	= 
	ld a,020h		;28ff	3e 20 	>   
	dec a			;2901	3d 	= 
	ld a,020h		;2902	3e 20 	>   
	dec de			;2904	1b 	. 
	ld d,h			;2905	54 	T 
	inc h			;2906	24 	$ 
	ld de,0140ch		;2907	11 0c 14 	. . . 
	call 038c0h		;290a	cd c0 38 	. . 8 
	ld hl,02967h		;290d	21 67 29 	! g ) 
	ld a,(0f26bh)		;2910	3a 6b f2 	: k . 
	bit 2,a		;2913	cb 57 	. W 
	jr nz,$+38		;2915	20 24 	  $ 
	ld hl,02972h		;2917	21 72 29 	! r ) 
	bit 3,a		;291a	cb 5f 	. _ 
	jr nz,$+31		;291c	20 1d 	  . 
	ld hl,02971h		;291e	21 71 29 	! q ) 
	bit 7,(ix-048h)		;2921	dd cb b8 7e 	. . . ~ 
	jr z,$+22		;2925	28 14 	( . 
	ld hl,00003h		;2927	21 03 00 	! . . 
	call 00011h		;292a	cd 11 00 	. . . 
	rlca			;292d	07 	. 
	rlca			;292e	07 	. 
	rlca			;292f	07 	. 
	and 006h		;2930	e6 06 	. . 
	ld hl,0003bh		;2932	21 3b 00 	! ; . 
	add a,l			;2935	85 	. 
	ld l,a			;2936	6f 	o 
	ld a,(hl)			;2937	7e 	~ 
	inc hl			;2938	23 	# 
	ld h,(hl)			;2939	66 	f 
	ld l,a			;293a	6f 	o 
	ld de,(0f0cfh)		;293b	ed 5b cf f0 	. [ . . 
	ld (0f0cfh),hl		;293f	22 cf f0 	" . . 
	ld a,e			;2942	7b 	{ 
	cp l			;2943	bd 	. 
	jr nz,$+6		;2944	20 04 	  . 
	ld a,d			;2946	7a 	z 
	cp h			;2947	bc 	. 
	jr z,$+52		;2948	28 32 	( 2 
	call 03f00h		;294a	cd 00 3f 	. . ? 
	ld b,00ch		;294d	06 0c 	. . 
	ld a,(hl)			;294f	7e 	~ 
	bit 7,a		;2950	cb 7f 	.  
	jr nz,$+8		;2952	20 06 	  . 
	call 03e40h		;2954	cd 40 3e 	. @ > 
	inc hl			;2957	23 	# 
	djnz $-9		;2958	10 f5 	. . 
	inc b			;295a	04 	. 
	ld a,020h		;295b	3e 20 	>   
	call 03e40h		;295d	cd 40 3e 	. @ > 
	djnz $-5		;2960	10 f9 	. . 
	call 03ef1h		;2962	cd f1 3e 	. . > 
	jr $+23		;2965	18 15 	. . 
	ld b,h			;2967	44 	D 
	ld (hl),d			;2968	72 	r 
	ld (hl),l			;2969	75 	u 
	ld l,e			;296a	6b 	k 
	ld l,a			;296b	6f 	o 
	ld (hl),a			;296c	77 	w 
	ld h,c			;296d	61 	a 
	ld l,(hl)			;296e	6e 	n 
	ld l,c			;296f	69 	i 
	ld h,l			;2970	65 	e 
	add a,b			;2971	80 	. 
	ld (hl),a			;2972	77 	w 
	ld a,c			;2973	79 	y 
	ld a,h			;2974	7c 	| 
	ld h,b			;2975	60 	` 
	ld h,e			;2976	63 	c 
	ld a,d			;2977	7a 	z 
	ld l,a			;2978	6f 	o 
	ld l,(hl)			;2979	6e 	n 
	ld h,c			;297a	61 	a 
	add a,b			;297b	80 	. 
	ld de,01419h		;297c	11 19 14 	. . . 
	call 038c0h		;297f	cd c0 38 	. . 8 
	ld hl,0f0ceh		;2982	21 ce f0 	! . . 
	ld a,(0f0bfh)		;2985	3a bf f0 	: . . 
	or a			;2988	b7 	. 
	jr z,$+78		;2989	28 4c 	( L 
	bit 2,(hl)		;298b	cb 56 	. V 
	set 2,(hl)		;298d	cb d6 	. . 
	jr nz,$+26		;298f	20 18 	  . 
	call 03ec4h		;2991	cd c4 3e 	. . > 
	ld d,b			;2994	50 	P 
	ld l,h			;2995	6c 	l 
	ld l,c			;2996	69 	i 
	ld l,e			;2997	6b 	k 
	ld l,c			;2998	69 	i 
	jr nz,$+124		;2999	20 7a 	  z 
	ld h,c			;299b	61 	a 
	ld a,d			;299c	7a 	z 
	ld l,(hl)			;299d	6e 	n 
	ld h,c			;299e	61 	a 
	ld h,e			;299f	63 	c 
	ld a,d			;29a0	7a 	z 
	ld l,a			;29a1	6f 	o 
	ld l,(hl)			;29a2	6e 	n 
	ld h,l			;29a3	65 	e 
	jr nz,$+63		;29a4	20 3d 	  = 
	inc h			;29a6	24 	$ 
	jr $+8		;29a7	18 06 	. . 
	ld de,0142bh		;29a9	11 2b 14 	. + . 
	call 038c0h		;29ac	cd c0 38 	. . 8 
	ld hl,(0f0bfh)		;29af	2a bf f0 	* . . 
	ld h,000h		;29b2	26 00 	& . 
	call 03f76h		;29b4	cd 76 3f 	. v ? 
	ld hl,(0f0d3h)		;29b7	2a d3 f0 	* . . 
	call 03f70h		;29ba	cd 70 3f 	. p ? 
	call 03ec4h		;29bd	cd c4 3e 	. . > 
	jr nz,$+77		;29c0	20 4b 	  K 
	ld b,d			;29c2	42 	B 
	jp p,02428h		;29c3	f2 28 24 	. ( $ 
	ld hl,(0f0d5h)		;29c6	2a d5 f0 	* . . 
	call 03f70h		;29c9	cd 70 3f 	. p ? 
	call 03ec4h		;29cc	cd c4 3e 	. . > 
	jr nz,$+77		;29cf	20 4b 	  K 
	ld b,d			;29d1	42 	B 
	jr nz,$+43		;29d2	20 29 	  ) 
	inc h			;29d4	24 	$ 
	jr $+15		;29d5	18 0d 	. . 
	bit 2,(hl)		;29d7	cb 56 	. V 
	jr z,$+11		;29d9	28 09 	( . 
	res 2,(hl)		;29db	cb 96 	. . 
	call 03ec4h		;29dd	cd c4 3e 	. . > 
	rst 38h			;29e0	ff 	. 
	rst 38h			;29e1	ff 	. 
	defb 0fdh,024h	;inc iyh		;29e2	fd 24 	. $ 
	ld de,01600h		;29e4	11 00 16 	. . . 
	call 038c0h		;29e7	cd c0 38 	. . 8 
	ld a,(0f0cdh)		;29ea	3a cd f0 	: . . 
	ld (ix+015h),000h		;29ed	dd 36 15 00 	. 6 . . 
	or a			;29f1	b7 	. 
	jr nz,$+8		;29f2	20 06 	  . 
	call 03de2h		;29f4	cd e2 3d 	. . = 
	call 03e14h		;29f7	cd 14 3e 	. . > 
	ld c,a			;29fa	4f 	O 
	call 03e05h		;29fb	cd 05 3e 	. . > 
	call 03ec4h		;29fe	cd c4 3e 	. . > 
	dec de			;2a01	1b 	. 
	ld c,e			;2a02	4b 	K 
	jp p,02124h		;2a03	f2 24 21 	. $ ! 
	jp nc,03a2ah		;2a06	d2 2a 3a 	. * : 
	cp l			;2a09	bd 	. 
	ret p			;2a0a	f0 	. 
	or a			;2a0b	b7 	. 
	jr z,$+14		;2a0c	28 0c 	( . 
	ld hl,02a9ch		;2a0e	21 9c 2a 	! . * 
	bit 0,(ix+010h)		;2a11	dd cb 10 46 	. . . F 
	jr nz,$+5		;2a15	20 03 	  . 
	ld hl,02a6ch		;2a17	21 6c 2a 	! l * 
	inc hl			;2a1a	23 	# 
	inc hl			;2a1b	23 	# 
	ld a,(hl)			;2a1c	7e 	~ 
	or a			;2a1d	b7 	. 
	jp m,02a3ch		;2a1e	fa 3c 2a 	. < * 
	cp c			;2a21	b9 	. 
	inc hl			;2a22	23 	# 
	jr nz,$-9		;2a23	20 f5 	  . 
	ld de,0284eh		;2a25	11 4e 28 	. N ( 
	push de			;2a28	d5 	. 
	ld a,(hl)			;2a29	7e 	~ 
	inc hl			;2a2a	23 	# 
	ld h,(hl)			;2a2b	66 	f 
	ld l,a			;2a2c	6f 	o 
	ld a,(0f0bdh)		;2a2d	3a bd f0 	: . . 
	ld b,a			;2a30	47 	G 
	sub (ix+00ch)		;2a31	dd 96 0c 	. . . 
	cp 03ch		;2a34	fe 3c 	. < 
	jr c,$+4		;2a36	38 02 	8 . 
	ld a,03ch		;2a38	3e 3c 	> < 
	ld c,a			;2a3a	4f 	O 
	jp (hl)			;2a3b	e9 	. 
	ld sp,0f13ah		;2a3c	31 3a f1 	1 : . 
	call 03ec4h		;2a3f	cd c4 3e 	. . > 
	rlca			;2a42	07 	. 
	jr nz,$+68		;2a43	20 42 	  B 
	ld a,h			;2a45	7c 	| 
	ld b,b			;2a46	40 	@ 
	ld h,h			;2a47	64 	d 
	ld l,(hl)			;2a48	6e 	n 
	ld h,l			;2a49	65 	e 
	jr nz,$+114		;2a4a	20 70 	  p 
	ld l,a			;2a4c	6f 	o 
	ld l,h			;2a4d	6c 	l 
	ld h,l			;2a4e	65 	e 
	ld h,e			;2a4f	63 	c 
	ld h,l			;2a50	65 	e 
	ld l,(hl)			;2a51	6e 	n 
	ld l,c			;2a52	69 	i 
	ld h,l			;2a53	65 	e 
	jr nz,$+47		;2a54	20 2d 	  - 
	jr nz,$+42		;2a56	20 28 	  ( 
	ld b,l			;2a58	45 	E 
	ld d,e			;2a59	53 	S 
	ld b,e			;2a5a	43 	C 
	add hl,hl			;2a5b	29 	) 
	inc h			;2a5c	24 	$ 
	call 03de2h		;2a5d	cd e2 3d 	. . = 
	cp 01bh		;2a60	fe 1b 	. . 
	ld a,007h		;2a62	3e 07 	> . 
	call nz,03e40h		;2a64	c4 40 3e 	. @ > 
	jr nz,$-10		;2a67	20 f4 	  . 
	call 03e94h		;2a69	cd 94 3e 	. . > 
	jr $-114		;2a6c	18 8c 	. . 
	ld d,h			;2a6e	54 	T 
	inc (hl)			;2a6f	34 	4 
	dec l			;2a70	2d 	- 
	ld d,l			;2a71	55 	U 
	dec sp			;2a72	3b 	; 
	dec l			;2a73	2d 	- 
	inc d			;2a74	14 	. 
	xor d			;2a75	aa 	. 
	dec l			;2a76	2d 	- 
	add hl,de			;2a77	19 	. 
	and (hl)			;2a78	a6 	. 
	dec l			;2a79	2d 	- 
	dec d			;2a7a	15 	. 
	call nz,0412dh		;2a7b	c4 2d 41 	. - A 
	djnz $+48		;2a7e	10 2e 	. . 
	ld b,l			;2a80	45 	E 
	ld (hl),l			;2a81	75 	u 
	ld l,057h		;2a82	2e 57 	. W 
	ld e,a			;2a84	5f 	_ 
	cpl			;2a85	2f 	/ 
	ld d,(hl)			;2a86	56 	V 
	ld e,h			;2a87	5c 	\ 
	cpl			;2a88	2f 	/ 
	ld d,e			;2a89	53 	S 
	ld d,(hl)			;2a8a	56 	V 
	cpl			;2a8b	2f 	/ 
	ld d,d			;2a8c	52 	R 
	ret po			;2a8d	e0 	. 
	cpl			;2a8e	2f 	/ 
	ld b,e			;2a8f	43 	C 
	ld c,h			;2a90	4c 	L 
	jr nc,$+4		;2a91	30 02 	0 . 
	sub e			;2a93	93 	. 
	ld (0cf42h),a		;2a94	32 42 cf 	2 B . 
	ld (0df58h),a		;2a97	32 58 df 	2 X . 
	ld (00950h),a		;2a9a	32 50 09 	2 P . 
	inc (hl)			;2a9d	34 	4 
	dec (hl)			;2a9e	35 	5 
	jr nc,$+45		;2a9f	30 2b 	0 + 
	ld (hl),037h		;2aa1	36 37 	6 7 
	dec hl			;2aa3	2b 	+ 
	inc b			;2aa4	04 	. 
	scf			;2aa5	37 	7 
	dec hl			;2aa6	2b 	+ 
	inc (hl)			;2aa7	34 	4 
	ld (hl),b			;2aa8	70 	p 
	dec hl			;2aa9	2b 	+ 
	inc de			;2aaa	13 	. 
	ld (hl),b			;2aab	70 	p 
	dec hl			;2aac	2b 	+ 
	jr c,$-105		;2aad	38 95 	8 . 
	dec hl			;2aaf	2b 	+ 
	dec b			;2ab0	05 	. 
	sub l			;2ab1	95 	. 
	dec hl			;2ab2	2b 	+ 
	ld (02ba7h),a		;2ab3	32 a7 2b 	2 . + 
	jr $-87		;2ab6	18 a7 	. . 
	dec hl			;2ab8	2b 	+ 
	scf			;2ab9	37 	7 
	sbc a,l			;2aba	9d 	. 
	dec hl			;2abb	2b 	+ 
	rla			;2abc	17 	. 
	sbc a,l			;2abd	9d 	. 
	dec hl			;2abe	2b 	+ 
	ld sp,02bafh		;2abf	31 af 2b 	1 . + 
	ld a,(de)			;2ac2	1a 	. 
	xor a			;2ac3	af 	. 
	dec hl			;2ac4	2b 	+ 
	ld a,05fh		;2ac5	3e 5f 	> _ 
	dec hl			;2ac7	2b 	+ 
	inc a			;2ac8	3c 	< 
	adc a,h			;2ac9	8c 	. 
	dec hl			;2aca	2b 	+ 
	ld l,05fh		;2acb	2e 5f 	. _ 
	dec hl			;2acd	2b 	+ 
	inc l			;2ace	2c 	, 
	adc a,h			;2acf	8c 	. 
	dec hl			;2ad0	2b 	+ 
	ld b,h			;2ad1	44 	D 
	cp l			;2ad2	bd 	. 
	dec hl			;2ad3	2b 	+ 
	ld b,(hl)			;2ad4	46 	F 
	jp nc,04f31h		;2ad5	d2 31 4f 	. 1 O 
	ex (sp),hl			;2ad8	e3 	. 
	inc l			;2ad9	2c 	, 
	ld d,c			;2ada	51 	Q 
	ld (hl),c			;2adb	71 	q 
	jr c,$+77		;2adc	38 4b 	8 K 
	rst 10h			;2ade	d7 	. 
	dec l			;2adf	2d 	- 
	ld c,h			;2ae0	4c 	L 
	pop hl			;2ae1	e1 	. 
	dec l			;2ae2	2d 	- 
	djnz $+16		;2ae3	10 0e 	. . 
	ld (0f909h),a		;2ae5	32 09 f9 	2 . . 
	ld sp,01e0ch		;2ae8	31 0c 1e 	1 . . 
	ld (01103h),a		;2aeb	32 03 11 	2 . . 
	dec hl			;2aee	2b 	+ 
	ld b,b			;2aef	40 	@ 
	push af			;2af0	f5 	. 
	inc (hl)			;2af1	34 	4 
	inc sp			;2af2	33 	3 
	cpl			;2af3	2f 	/ 
	dec hl			;2af4	2b 	+ 
	add hl,sp			;2af5	39 	9 
	cpl			;2af6	2f 	/ 
	dec hl			;2af7	2b 	+ 
	jr nc,$+49		;2af8	30 2f 	0 / 
	dec hl			;2afa	2b 	+ 
	dec l			;2afb	2d 	- 
	cpl			;2afc	2f 	/ 
	dec hl			;2afd	2b 	+ 
	ld hl,(02b2fh)		;2afe	2a 2f 2b 	* / + 
	dec hl			;2b01	2b 	+ 
	cpl			;2b02	2f 	/ 
	dec hl			;2b03	2b 	+ 
	cpl			;2b04	2f 	/ 
	cpl			;2b05	2f 	/ 
	dec hl			;2b06	2b 	+ 
	dec de			;2b07	1b 	. 
	cpl			;2b08	2f 	/ 
	dec hl			;2b09	2b 	+ 
	dec c			;2b0a	0d 	. 
	cpl			;2b0b	2f 	/ 
	dec hl			;2b0c	2b 	+ 
	jr nz,$+49		;2b0d	20 2f 	  / 
	dec hl			;2b0f	2b 	+ 
	rst 38h			;2b10	ff 	. 
	ld a,(0f0bah)		;2b11	3a ba f0 	: . . 
	call 03ae3h		;2b14	cd e3 3a 	. . : 
	call 03ec4h		;2b17	cd c4 3e 	. . > 
	dec de			;2b1a	1b 	. 
	dec a			;2b1b	3d 	= 
	ld (hl),020h		;2b1c	36 20 	6   
	dec de			;2b1e	1b 	. 
	ld c,e			;2b1f	4b 	K 
	dec de			;2b20	1b 	. 
	dec a			;2b21	3d 	= 
	dec (hl)			;2b22	35 	5 
	jr nz,$+38		;2b23	20 24 	  $ 
	ld sp,0f13ah		;2b25	31 3a f1 	1 : . 
	set 4,(ix-048h)		;2b28	dd cb b8 e6 	. . . . 
	jp 022adh		;2b2c	c3 ad 22 	. . " 
	ret			;2b2f	c9 	. 
	xor a			;2b30	af 	. 
	ld (0f0c3h),a		;2b31	32 c3 f0 	2 . . 
	jp 0397ch		;2b34	c3 7c 39 	. | 9 
	ld a,(0f0c3h)		;2b37	3a c3 f0 	: . . 
	add a,014h		;2b3a	c6 14 	. . 
	cp c			;2b3c	b9 	. 
	jr c,$-12		;2b3d	38 f2 	8 . 
	ld a,(0f0c4h)		;2b3f	3a c4 f0 	: . . 
	add a,03ch		;2b42	c6 3c 	. < 
	cp b			;2b44	b8 	. 
	ret nc			;2b45	d0 	. 
	ld (0f0c4h),a		;2b46	32 c4 f0 	2 . . 
	ld b,a			;2b49	47 	G 
	ld a,(0f0bdh)		;2b4a	3a bd f0 	: . . 
	sub b			;2b4d	90 	. 
	ld b,a			;2b4e	47 	G 
	ld a,(0f0c3h)		;2b4f	3a c3 f0 	: . . 
	sub 028h		;2b52	d6 28 	. ( 
	cp b			;2b54	b8 	. 
	jr c,$+4		;2b55	38 02 	8 . 
	ld a,b			;2b57	78 	x 
	dec a			;2b58	3d 	= 
	ld (0f0c3h),a		;2b59	32 c3 f0 	2 . . 
	jp 02dfdh		;2b5c	c3 fd 2d 	. . - 
	ld a,(0f0c4h)		;2b5f	3a c4 f0 	: . . 
	add a,03ch		;2b62	c6 3c 	. < 
	cp b			;2b64	b8 	. 
	ret nc			;2b65	d0 	. 
	ld (0f0c4h),a		;2b66	32 c4 f0 	2 . . 
	xor a			;2b69	af 	. 
	ld (0f0c3h),a		;2b6a	32 c3 f0 	2 . . 
	jp 02dfdh		;2b6d	c3 fd 2d 	. . - 
	ld a,(0f0c3h)		;2b70	3a c3 f0 	: . . 
	sub 014h		;2b73	d6 14 	. . 
	jp p,02b31h		;2b75	f2 31 2b 	. 1 + 
	ld a,(0f0c4h)		;2b78	3a c4 f0 	: . . 
	sub 03ch		;2b7b	d6 3c 	. < 
	ret m			;2b7d	f8 	. 
	ld (0f0c4h),a		;2b7e	32 c4 f0 	2 . . 
	ld a,(0f0c3h)		;2b81	3a c3 f0 	: . . 
	add a,028h		;2b84	c6 28 	. ( 
	ld (0f0c3h),a		;2b86	32 c3 f0 	2 . . 
	jp 02dfdh		;2b89	c3 fd 2d 	. . - 
	ld a,(0f0c4h)		;2b8c	3a c4 f0 	: . . 
	sub 03ch		;2b8f	d6 3c 	. < 
	jp p,02b66h		;2b91	f2 66 2b 	. f + 
	ret			;2b94	c9 	. 
	ld a,(0f0c3h)		;2b95	3a c3 f0 	: . . 
	dec a			;2b98	3d 	= 
	jp p,02b31h		;2b99	f2 31 2b 	. 1 + 
	ret			;2b9c	c9 	. 
	ld a,(0f0c3h)		;2b9d	3a c3 f0 	: . . 
	sub 006h		;2ba0	d6 06 	. . 
	jr nc,$-113		;2ba2	30 8d 	0 . 
	xor a			;2ba4	af 	. 
	jr $-116		;2ba5	18 8a 	. . 
	ld a,(0f0c3h)		;2ba7	3a c3 f0 	: . . 
	inc a			;2baa	3c 	< 
	cp c			;2bab	b9 	. 
	jr c,$-123		;2bac	38 83 	8 . 
	ret			;2bae	c9 	. 
	ld a,(0f0c3h)		;2baf	3a c3 f0 	: . . 
	add a,006h		;2bb2	c6 06 	. . 
	cp c			;2bb4	b9 	. 
	jp c,02b31h		;2bb5	da 31 2b 	. 1 + 
	ld a,c			;2bb8	79 	y 
	dec a			;2bb9	3d 	= 
	jp 02b31h		;2bba	c3 31 2b 	. 1 + 
	call 03fd0h		;2bbd	cd d0 3f 	. . ? 
	xor a			;2bc0	af 	. 
	ld (0f0c1h),a		;2bc1	32 c1 f0 	2 . . 
	ld a,(0f0bdh)		;2bc4	3a bd f0 	: . . 
	sub (ix+009h)		;2bc7	dd 96 09 	. . . 
	jr z,$+41		;2bca	28 27 	( ' 
	push af			;2bcc	f5 	. 
	call 03ec4h		;2bcd	cd c4 3e 	. . > 
	ld a,(bc)			;2bd0	0a 	. 
	ld a,(bc)			;2bd1	0a 	. 
	ld a,(bc)			;2bd2	0a 	. 
	inc h			;2bd3	24 	$ 
	call 02cb2h		;2bd4	cd b2 2c 	. . , 
	pop af			;2bd7	f1 	. 
	cp 015h		;2bd8	fe 15 	. . 
	jr nc,$+44		;2bda	30 2a 	0 * 
	call 03df1h		;2bdc	cd f1 3d 	. . = 
	jp nz,02dfdh		;2bdf	c2 fd 2d 	. . - 
	call 03e98h		;2be2	cd 98 3e 	. . > 
	call 02c56h		;2be5	cd 56 2c 	. V , 
	inc (ix+009h)		;2be8	dd 34 09 	. 4 . 
	ld a,(0f0c1h)		;2beb	3a c1 f0 	: . . 
	sub (ix+005h)		;2bee	dd 96 05 	. . . 
	jr c,$-21		;2bf1	38 e9 	8 . 
	call 03e98h		;2bf3	cd 98 3e 	. . > 
	call 038e5h		;2bf6	cd e5 38 	. . 8 
	call 03e98h		;2bf9	cd 98 3e 	. . > 
	bit 7,(ix-048h)		;2bfc	dd cb b8 7e 	. . . ~ 
	call z,03e1dh		;2c00	cc 1d 3e 	. . > 
	jp 02dfdh		;2c03	c3 fd 2d 	. . - 
	cp 03dh		;2c06	fe 3d 	. = 
	jr c,$+4		;2c08	38 02 	8 . 
	ld a,03ch		;2c0a	3e 3c 	> < 
	ld c,a			;2c0c	4f 	O 
	add a,(ix+009h)		;2c0d	dd 86 09 	. . . 
	ld (0f0c2h),a		;2c10	32 c2 f0 	2 . . 
	ld a,c			;2c13	79 	y 
	rrca			;2c14	0f 	. 
	adc a,000h		;2c15	ce 00 	. . 
	and 07fh		;2c17	e6 7f 	.  
	ld b,a			;2c19	47 	G 
	ld c,a			;2c1a	4f 	O 
	call 03e30h		;2c1b	cd 30 3e 	. 0 > 
	call 02cb2h		;2c1e	cd b2 2c 	. . , 
	call 03df1h		;2c21	cd f1 3d 	. . = 
	jp nz,02dfdh		;2c24	c2 fd 2d 	. . - 
	call 03e98h		;2c27	cd 98 3e 	. . > 
	push bc			;2c2a	c5 	. 
	call 02c56h		;2c2b	cd 56 2c 	. V , 
	pop bc			;2c2e	c1 	. 
	ld a,(0f0c1h)		;2c2f	3a c1 f0 	: . . 
	add a,c			;2c32	81 	. 
	ld (0f0c1h),a		;2c33	32 c1 f0 	2 . . 
	push bc			;2c36	c5 	. 
	ld c,a			;2c37	4f 	O 
	call 03e38h		;2c38	cd 38 3e 	. 8 > 
	ld a,(0f0bdh)		;2c3b	3a bd f0 	: . . 
	sub c			;2c3e	91 	. 
	call nz,02c56h		;2c3f	c4 56 2c 	. V , 
	pop bc			;2c42	c1 	. 
	ld a,(0f0c1h)		;2c43	3a c1 f0 	: . . 
	sub c			;2c46	91 	. 
	inc a			;2c47	3c 	< 
	ld (0f0c1h),a		;2c48	32 c1 f0 	2 . . 
	djnz $-42		;2c4b	10 d4 	. . 
	ld a,(0f0c2h)		;2c4d	3a c2 f0 	: . . 
	ld (0f0c1h),a		;2c50	32 c1 f0 	2 . . 
	jp 02bc4h		;2c53	c3 c4 2b 	. . + 
	call 039e0h		;2c56	cd e0 39 	. . 9 
	ex de,hl			;2c59	eb 	. 
	inc hl			;2c5a	23 	# 
	call 03f0fh		;2c5b	cd 0f 3f 	. . ? 
	call 038a6h		;2c5e	cd a6 38 	. . 8 
	call 03e3eh		;2c61	cd 3e 3e 	. > > 
	call 039ffh		;2c64	cd ff 39 	. . 9 
	call 03e3eh		;2c67	cd 3e 3e 	. > > 
	ld a,(0f0c8h)		;2c6a	3a c8 f0 	: . . 
	or a			;2c6d	b7 	. 
	jp z,03e38h		;2c6e	ca 38 3e 	. 8 > 
	ld a,(0f0bdh)		;2c71	3a bd f0 	: . . 
	or a			;2c74	b7 	. 
	jp z,03e38h		;2c75	ca 38 3e 	. 8 > 
	ld a,055h		;2c78	3e 55 	> U 
	call 03e40h		;2c7a	cd 40 3e 	. @ > 
	ld bc,0fff6h		;2c7d	01 f6 ff 	. . . 
	add hl,bc			;2c80	09 	. 
	ld l,(hl)			;2c81	6e 	n 
	ld h,000h		;2c82	26 00 	& . 
	ld (ix+008h),002h		;2c84	dd 36 08 02 	. 6 . . 
	call 03f47h		;2c88	cd 47 3f 	. G ? 
	jp 03e3eh		;2c8b	c3 3e 3e 	. > > 
	ld a,(0fb7ch)		;2c8e	3a 7c fb 	: | . 
	bit 7,a		;2c91	cb 7f 	.  
	jp z,03e38h		;2c93	ca 38 3e 	. 8 > 
	bit 0,a		;2c96	cb 47 	. G 
	jr z,$+17		;2c98	28 0f 	( . 
	ld hl,0f980h		;2c9a	21 80 f9 	! . . 
	ld b,004h		;2c9d	06 04 	. . 
	ld a,(hl)			;2c9f	7e 	~ 
	call 03e40h		;2ca0	cd 40 3e 	. @ > 
	inc hl			;2ca3	23 	# 
	inc hl			;2ca4	23 	# 
	inc hl			;2ca5	23 	# 
	djnz $-7		;2ca6	10 f7 	. . 
	ret			;2ca8	c9 	. 
	call 03ec4h		;2ca9	cd c4 3e 	. . > 
	ld l,02eh		;2cac	2e 2e 	. . 
	ld l,02eh		;2cae	2e 2e 	. . 
	inc h			;2cb0	24 	$ 
	ret			;2cb1	c9 	. 
	call 03ec4h		;2cb2	cd c4 3e 	. . > 
	ld c,(hl)			;2cb5	4e 	N 
	ld h,c			;2cb6	61 	a 
	ld a,d			;2cb7	7a 	z 
	ld (hl),a			;2cb8	77 	w 
	ld h,c			;2cb9	61 	a 
	di			;2cba	f3 	. 
	ld l,054h		;2cbb	2e 54 	. T 
	ld a,c			;2cbd	79 	y 
	ld (hl),b			;2cbe	70 	p 
	di			;2cbf	f3 	. 
	ld d,d			;2cc0	52 	R 
	ld h,l			;2cc1	65 	e 
	ld l,e			;2cc2	6b 	k 
	jp p,0424bh		;2cc3	f2 4b 42 	. K B 
	jp p,07441h		;2cc6	f2 41 74 	. A t 
	ld (hl),d			;2cc9	72 	r 
	inc h			;2cca	24 	$ 
	bit 0,(ix+010h)		;2ccb	dd cb 10 46 	. . . F 
	jr z,$+14		;2ccf	28 0c 	( . 
	call 03ec4h		;2cd1	cd c4 3e 	. . > 
	push af			;2cd4	f5 	. 
	ld d,l			;2cd5	55 	U 
	ld a,l			;2cd6	7d 	} 
	ld a,c			;2cd7	79 	y 
	ld (hl),h			;2cd8	74 	t 
	ld l,e			;2cd9	6b 	k 
	ld l,024h		;2cda	2e 24 	. $ 
	ret			;2cdc	c9 	. 
	call 03ec4h		;2cdd	cd c4 3e 	. . > 
	ei			;2ce0	fb 	. 
	inc h			;2ce1	24 	$ 
	ret			;2ce2	c9 	. 
	call 03fd0h		;2ce3	cd d0 3f 	. . ? 
	ld hl,00000h		;2ce6	21 00 00 	! . . 
	ld (0f0e2h),hl		;2ce9	22 e2 f0 	" . . 
	ld hl,00100h		;2cec	21 00 01 	! . . 
	ld (0f0deh),hl		;2cef	22 de f0 	" . . 
	ld a,03fh		;2cf2	3e 3f 	> ? 
	ld (0005ch),a		;2cf4	32 5c 00 	2 \ . 
	ld c,011h		;2cf7	0e 11 	. . 
	ld de,0005ch		;2cf9	11 5c 00 	. \ . 
	call 00005h		;2cfc	cd 05 00 	. . . 
	cp 0ffh		;2cff	fe ff 	. . 
	jp z,02d1dh		;2d01	ca 1d 2d 	. . - 
	call 03fddh		;2d04	cd dd 3f 	. . ? 
	ld de,(0f0deh)		;2d07	ed 5b de f0 	. [ . . 
	ld b,020h		;2d0b	06 20 	.   
	call 00011h		;2d0d	cd 11 00 	. . . 
	ld (de),a			;2d10	12 	. 
	inc hl			;2d11	23 	# 
	inc de			;2d12	13 	. 
	djnz $-6		;2d13	10 f8 	. . 
	ld (0f0deh),de		;2d15	ed 53 de f0 	. S . . 
	ld c,012h		;2d19	0e 12 	. . 
	jr $-34		;2d1b	18 dc 	. . 
	ld hl,00100h		;2d1d	21 00 01 	! . . 
	ld de,(0f0deh)		;2d20	ed 5b de f0 	. [ . . 
	dec de			;2d24	1b 	. 
	call 03c29h		;2d25	cd 29 3c 	. ) < 
	jp c,02dfdh		;2d28	da fd 2d 	. . - 
	call 03b5bh		;2d2b	cd 5b 3b 	. [ ; 
	jp c,02bfch		;2d2e	da fc 2b 	. . + 
	jp 02dfdh		;2d31	c3 fd 2d 	. . - 
	push bc			;2d34	c5 	. 
	ld b,02bh		;2d35	06 2b 	. + 
	ld c,02ah		;2d37	0e 2a 	. * 
	jr $+7		;2d39	18 05 	. . 
	push bc			;2d3b	c5 	. 
	ld b,02dh		;2d3c	06 2d 	. - 
	ld c,020h		;2d3e	0e 20 	.   
	call 02d47h		;2d40	cd 47 2d 	. G - 
	pop bc			;2d43	c1 	. 
	jp 02ba7h		;2d44	c3 a7 2b 	. . + 
	call 039e0h		;2d47	cd e0 39 	. . 9 
	bit 7,(ix+00dh)		;2d4a	dd cb 0d 7e 	. . . ~ 
	jr z,$+9		;2d4e	28 07 	( . 
	ld hl,0000ah		;2d50	21 0a 00 	! . . 
	add hl,de			;2d53	19 	. 
	bit 7,(hl)		;2d54	cb 7e 	. ~ 
	ret z			;2d56	c8 	. 
	ld hl,00013h		;2d57	21 13 00 	! . . 
	add hl,de			;2d5a	19 	. 
	ld a,(hl)			;2d5b	7e 	~ 
	ld (hl),c			;2d5c	71 	q 
	cp c			;2d5d	b9 	. 
	ret z			;2d5e	c8 	. 
	ld a,b			;2d5f	78 	x 
	cp 02bh		;2d60	fe 2b 	. + 
	ld a,(0f0bfh)		;2d62	3a bf f0 	: . . 
	jr z,$+4		;2d65	28 02 	( . 
	dec a			;2d67	3d 	= 
	dec a			;2d68	3d 	= 
	inc a			;2d69	3c 	< 
	ld (0f0bfh),a		;2d6a	32 bf f0 	2 . . 
	dec hl			;2d6d	2b 	+ 
	dec hl			;2d6e	2b 	+ 
	dec hl			;2d6f	2b 	+ 
	dec hl			;2d70	2b 	+ 
	ld d,(hl)			;2d71	56 	V 
	dec hl			;2d72	2b 	+ 
	ld e,(hl)			;2d73	5e 	^ 
	ex de,hl			;2d74	eb 	. 
	push hl			;2d75	e5 	. 
	call 03fb0h		;2d76	cd b0 3f 	. . ? 
	ex de,hl			;2d79	eb 	. 
	ld a,b			;2d7a	78 	x 
	cp 02bh		;2d7b	fe 2b 	. + 
	jr z,$+9		;2d7d	28 07 	( . 
	xor a			;2d7f	af 	. 
	sub e			;2d80	93 	. 
	ld e,a			;2d81	5f 	_ 
	ld a,000h		;2d82	3e 00 	> . 
	sbc a,d			;2d84	9a 	. 
	ld d,a			;2d85	57 	W 
	ld hl,(0f0d3h)		;2d86	2a d3 f0 	* . . 
	add hl,de			;2d89	19 	. 
	ld (0f0d3h),hl		;2d8a	22 d3 f0 	" . . 
	pop hl			;2d8d	e1 	. 
	call 03fach		;2d8e	cd ac 3f 	. . ? 
	ex de,hl			;2d91	eb 	. 
	ld a,b			;2d92	78 	x 
	cp 02bh		;2d93	fe 2b 	. + 
	jr z,$+9		;2d95	28 07 	( . 
	xor a			;2d97	af 	. 
	sub e			;2d98	93 	. 
	ld e,a			;2d99	5f 	_ 
	ld a,000h		;2d9a	3e 00 	> . 
	sbc a,d			;2d9c	9a 	. 
	ld d,a			;2d9d	57 	W 
	ld hl,(0f0d5h)		;2d9e	2a d5 f0 	* . . 
	add hl,de			;2da1	19 	. 
	ld (0f0d5h),hl		;2da2	22 d5 f0 	" . . 
	ret			;2da5	c9 	. 
	set 7,(ix+00dh)		;2da6	dd cb 0d fe 	. . . . 
	xor a			;2daa	af 	. 
	ld (0f0c1h),a		;2dab	32 c1 f0 	2 . . 
	ld b,02bh		;2dae	06 2b 	. + 
	ld c,02ah		;2db0	0e 2a 	. * 
	call 02d47h		;2db2	cd 47 2d 	. G - 
	ld a,(0f0c1h)		;2db5	3a c1 f0 	: . . 
	inc a			;2db8	3c 	< 
	cp (ix+005h)		;2db9	dd be 05 	. . . 
	jp nc,02dfdh		;2dbc	d2 fd 2d 	. . - 
	ld (0f0c1h),a		;2dbf	32 c1 f0 	2 . . 
	jr $-20		;2dc2	18 ea 	. . 
	xor a			;2dc4	af 	. 
	ld (0f0c1h),a		;2dc5	32 c1 f0 	2 . . 
	call 03a25h		;2dc8	cd 25 3a 	. % : 
	jr nc,$+6		;2dcb	30 04 	0 . 
	ld (hl),020h		;2dcd	36 20 	6   
	jr $-7		;2dcf	18 f7 	. . 
	call 03fe8h		;2dd1	cd e8 3f 	. . ? 
	jp 02dfdh		;2dd4	c3 fd 2d 	. . - 
	ld a,(0f0cah)		;2dd7	3a ca f0 	: . . 
	cpl			;2dda	2f 	/ 
	ld (0f0cah),a		;2ddb	32 ca f0 	2 . . 
	jp 02dfdh		;2dde	c3 fd 2d 	. . - 
	call 03d2dh		;2de1	cd 2d 3d 	. - = 
	ret c			;2de4	d8 	. 
	cp 03fh		;2de5	fe 3f 	. ? 
	jr z,$+27		;2de7	28 19 	( . 
	ld (0f0b8h),a		;2de9	32 b8 f0 	2 . . 
	call 03ae9h		;2dec	cd e9 3a 	. . : 
	xor a			;2def	af 	. 
	ld (0f0c8h),a		;2df0	32 c8 f0 	2 . . 
	xor a			;2df3	af 	. 
	ld (0f0c3h),a		;2df4	32 c3 f0 	2 . . 
	ld (0f0c4h),a		;2df7	32 c4 f0 	2 . . 
	call 035f7h		;2dfa	cd f7 35 	. . 5 
	ld (ix+014h),001h		;2dfd	dd 36 14 01 	. 6 . . 
	ret			;2e01	c9 	. 
	ld a,e			;2e02	7b 	{ 
	cp 03fh		;2e03	fe 3f 	. ? 
	jr z,$-21		;2e05	28 e9 	( . 
	ld (0f071h),a		;2e07	32 71 f0 	2 q . 
	call 03b4fh		;2e0a	cd 4f 3b 	. O ; 
	xor a			;2e0d	af 	. 
	jr $-30		;2e0e	18 e0 	. . 
	xor a			;2e10	af 	. 
	ld (0f0c6h),a		;2e11	32 c6 f0 	2 . . 
	call 03ec4h		;2e14	cd c4 3e 	. . > 
	ld b,c			;2e17	41 	A 
	ld (hl),h			;2e18	74 	t 
	ld (hl),d			;2e19	72 	r 
	ld a,c			;2e1a	79 	y 
	ld h,d			;2e1b	62 	b 
	ld (hl),l			;2e1c	75 	u 
	ld (hl),h			;2e1d	74 	t 
	ld a,c			;2e1e	79 	y 
	jr nz,$+42		;2e1f	20 28 	  ( 
	ld d,d			;2e21	52 	R 
	inc l			;2e22	2c 	, 
	ld d,e			;2e23	53 	S 
	add hl,hl			;2e24	29 	) 
	jr nz,$+60		;2e25	20 3a 	  : 
	inc h			;2e27	24 	$ 
	call 03e0bh		;2e28	cd 0b 3e 	. . > 
	cp 01bh		;2e2b	fe 1b 	. . 
	jp z,035efh		;2e2d	ca ef 35 	. . 5 
	cp 052h		;2e30	fe 52 	. R 
	jr z,$+55		;2e32	28 35 	( 5 
	cp 053h		;2e34	fe 53 	. S 
	jr z,$+57		;2e36	28 37 	( 7 
	cp 020h		;2e38	fe 20 	.   
	jr z,$+7		;2e3a	28 05 	( . 
	cp 00dh		;2e3c	fe 0d 	. . 
	jp nz,02a3ch		;2e3e	c2 3c 2a 	. < * 
	call 039d5h		;2e41	cd d5 39 	. . 9 
	call 03a4ch		;2e44	cd 4c 3a 	. L : 
	ld hl,00009h		;2e47	21 09 00 	! . . 
	add hl,de			;2e4a	19 	. 
	bit 7,(ix+00eh)		;2e4b	dd cb 0e 7e 	. . . ~ 
	jr z,$+4		;2e4f	28 02 	( . 
	set 7,(hl)		;2e51	cb fe 	. . 
	inc hl			;2e53	23 	# 
	bit 6,(ix+00eh)		;2e54	dd cb 0e 76 	. . . v 
	jr z,$+4		;2e58	28 02 	( . 
	set 7,(hl)		;2e5a	cb fe 	. . 
	ld c,01eh		;2e5c	0e 1e 	. . 
	call 00005h		;2e5e	cd 05 00 	. . . 
	call 03a25h		;2e61	cd 25 3a 	. % : 
	jr c,$-32		;2e64	38 de 	8 . 
	jp 02dfah		;2e66	c3 fa 2d 	. . - 
	set 7,(ix+00eh)		;2e69	dd cb 0e fe 	. . . . 
	jr $-69		;2e6d	18 b9 	. . 
	set 6,(ix+00eh)		;2e6f	dd cb 0e f6 	. . . . 
	jr $-75		;2e73	18 b3 	. . 
	call 039d5h		;2e75	cd d5 39 	. . 9 
	jp c,02f05h		;2e78	da 05 2f 	. . / 
	call 02ebah		;2e7b	cd ba 2e 	. . . 
	cp 01bh		;2e7e	fe 1b 	. . 
	jp z,035efh		;2e80	ca ef 35 	. . 5 
	cp 054h		;2e83	fe 54 	. T 
	ret nz			;2e85	c0 	. 
	call 03e3bh		;2e86	cd 3b 3e 	. ; > 
	call 02ed5h		;2e89	cd d5 2e 	. . . 
	ret c			;2e8c	d8 	. 
	call 035f7h		;2e8d	cd f7 35 	. . 5 
	ld c,(ix+00ch)		;2e90	dd 4e 0c 	. N . 
	ld a,(0f0bdh)		;2e93	3a bd f0 	: . . 
	sub c			;2e96	91 	. 
	jr c,$+19		;2e97	38 11 	8 . 
	jr z,$+17		;2e99	28 0f 	( . 
	ld c,a			;2e9b	4f 	O 
	ld a,(0f0c3h)		;2e9c	3a c3 f0 	: . . 
	cp c			;2e9f	b9 	. 
	jp c,02dfdh		;2ea0	da fd 2d 	. . - 
	dec a			;2ea3	3d 	= 
	ld (0f0c3h),a		;2ea4	32 c3 f0 	2 . . 
	jp 02dfdh		;2ea7	c3 fd 2d 	. . - 
	ld a,c			;2eaa	79 	y 
	or a			;2eab	b7 	. 
	jr z,$-8		;2eac	28 f6 	( . 
	ld a,(0f0c4h)		;2eae	3a c4 f0 	: . . 
	sub 03ch		;2eb1	d6 3c 	. < 
	ld (0f0c4h),a		;2eb3	32 c4 f0 	2 . . 
	ld a,03bh		;2eb6	3e 3b 	> ; 
	jr $-20		;2eb8	18 ea 	. . 
	call 03ec4h		;2eba	cd c4 3e 	. . > 
	ld l,e			;2ebd	6b 	k 
	ld h,c			;2ebe	61 	a 
	ld (hl),e			;2ebf	73 	s 
	ld l,a			;2ec0	6f 	o 
	ld (hl),a			;2ec1	77 	w 
	ld h,c			;2ec2	61 	a 
	ld a,(hl)			;2ec3	7e 	~ 
	jr nz,$+42		;2ec4	20 28 	  ( 
	ld d,h			;2ec6	54 	T 
	add hl,hl			;2ec7	29 	) 
	jr nz,$+38		;2ec8	20 24 	  $ 
	call 03e0bh		;2eca	cd 0b 3e 	. . > 
	cp 054h		;2ecd	fe 54 	. T 
	push af			;2ecf	f5 	. 
	call 03e3eh		;2ed0	cd 3e 3e 	. > > 
	pop af			;2ed3	f1 	. 
	ret			;2ed4	c9 	. 
	ld h,d			;2ed5	62 	b 
	ld l,e			;2ed6	6b 	k 
	inc hl			;2ed7	23 	# 
	call 03f0fh		;2ed8	cd 0f 3f 	. . ? 
	call 03e3bh		;2edb	cd 3b 3e 	. ; > 
	ld hl,00009h		;2ede	21 09 00 	! . . 
	add hl,de			;2ee1	19 	. 
	bit 7,(hl)		;2ee2	cb 7e 	. ~ 
	jr nz,$+23		;2ee4	20 15 	  . 
	call 03a4ch		;2ee6	cd 4c 3a 	. L : 
	call 03b25h		;2ee9	cd 25 3b 	. % ; 
	call 03ec4h		;2eec	cd c4 3e 	. . > 
	ld (hl),e			;2eef	73 	s 
	ld l,e			;2ef0	6b 	k 
	ld h,c			;2ef1	61 	a 
	ld (hl),e			;2ef2	73 	s 
	ld l,a			;2ef3	6f 	o 
	ld (hl),a			;2ef4	77 	w 
	ld h,c			;2ef5	61 	a 
	ld l,(hl)			;2ef6	6e 	n 
	ld a,c			;2ef7	79 	y 
	inc h			;2ef8	24 	$ 
	or a			;2ef9	b7 	. 
	ret			;2efa	c9 	. 
	call 03ec4h		;2efb	cd c4 3e 	. . > 
	rlca			;2efe	07 	. 
	ld d,d			;2eff	52 	R 
	cpl			;2f00	2f 	/ 
	ld c,a			;2f01	4f 	O 
	inc h			;2f02	24 	$ 
	scf			;2f03	37 	7 
	ret			;2f04	c9 	. 
	call 03ec4h		;2f05	cd c4 3e 	. . > 
	ld c,e			;2f08	4b 	K 
	ld h,c			;2f09	61 	a 
	ld (hl),e			;2f0a	73 	s 
	ld l,a			;2f0b	6f 	o 
	ld (hl),a			;2f0c	77 	w 
	ld h,c			;2f0d	61 	a 
	ld a,(hl)			;2f0e	7e 	~ 
	jr nz,$+121		;2f0f	20 77 	  w 
	ld (hl),e			;2f11	73 	s 
	ld a,d			;2f12	7a 	z 
	ld a,c			;2f13	79 	y 
	ld (hl),e			;2f14	73 	s 
	ld (hl),h			;2f15	74 	t 
	ld l,e			;2f16	6b 	k 
	ld l,c			;2f17	69 	i 
	ld h,l			;2f18	65 	e 
	jr nz,$+65		;2f19	20 3f 	  ? 
	jr nz,$+42		;2f1b	20 28 	  ( 
	ld d,h			;2f1d	54 	T 
	ld b,c			;2f1e	41 	A 
	ld c,e			;2f1f	4b 	K 
	add hl,hl			;2f20	29 	) 
	jr nz,$+60		;2f21	20 3a 	  : 
	inc h			;2f23	24 	$ 
	call 03e0bh		;2f24	cd 0b 3e 	. . > 
	cp 01bh		;2f27	fe 1b 	. . 
	jp z,035efh		;2f29	ca ef 35 	. . 5 
	cp 054h		;2f2c	fe 54 	. T 
	ret nz			;2f2e	c0 	. 
	call 03e0bh		;2f2f	cd 0b 3e 	. . > 
	cp 01bh		;2f32	fe 1b 	. . 
	jp z,035efh		;2f34	ca ef 35 	. . 5 
	cp 041h		;2f37	fe 41 	. A 
	ret nz			;2f39	c0 	. 
	call 03e0bh		;2f3a	cd 0b 3e 	. . > 
	cp 01bh		;2f3d	fe 1b 	. . 
	jp z,035efh		;2f3f	ca ef 35 	. . 5 
	cp 04bh		;2f42	fe 4b 	. K 
	ret nz			;2f44	c0 	. 
	call 03e98h		;2f45	cd 98 3e 	. . > 
	call 02ed5h		;2f48	cd d5 2e 	. . . 
	call 03a25h		;2f4b	cd 25 3a 	. % : 
	jr c,$-9		;2f4e	38 f5 	8 . 
	call 03e1dh		;2f50	cd 1d 3e 	. . > 
	jp 02df3h		;2f53	c3 f3 2d 	. . - 
	ld (ix+00fh),002h		;2f56	dd 36 0f 02 	. 6 . . 
	jr $+20		;2f5a	18 12 	. . 
	ld a,001h		;2f5c	3e 01 	> . 
	ld b,0afh		;2f5e	06 af 	. . 
	ld (0f0c7h),a		;2f60	32 c7 f0 	2 . . 
	call 03fd0h		;2f63	cd d0 3f 	. . ? 
	ld a,(0f26bh)		;2f66	3a 6b f2 	: k . 
	bit 4,a		;2f69	cb 67 	. g 
	call nz,03f00h		;2f6b	c4 00 3f 	. . ? 
	call 03e94h		;2f6e	cd 94 3e 	. . > 
	ld hl,00100h		;2f71	21 00 01 	! . . 
	ld (0f0e2h),hl		;2f74	22 e2 f0 	" . . 
	call 03afbh		;2f77	cd fb 3a 	. . : 
	xor a			;2f7a	af 	. 
	ld (0f0d1h),a		;2f7b	32 d1 f0 	2 . . 
	ld bc,00020h		;2f7e	01 20 00 	.   . 
	call 03a84h		;2f81	cd 84 3a 	. . : 
	ld a,c			;2f84	79 	y 
	cp 020h		;2f85	fe 20 	.   
	jr z,$+22		;2f87	28 14 	( . 
	ld hl,(0f0e0h)		;2f89	2a e0 f0 	* . . 
	dec hl			;2f8c	2b 	+ 
	ex de,hl			;2f8d	eb 	. 
	ld hl,00100h		;2f8e	21 00 01 	! . . 
	ld a,(0f0c7h)		;2f91	3a c7 f0 	: . . 
	cp 001h		;2f94	fe 01 	. . 
	jr nz,$+27		;2f96	20 19 	  . 
	call 03c4dh		;2f98	cd 4d 3c 	. M < 
	jr c,$-29		;2f9b	38 e1 	8 . 
	bit 1,(ix+00fh)		;2f9d	dd cb 0f 4e 	. . . N 
	jr nz,$+23		;2fa1	20 15 	  . 
	ld a,(0f26bh)		;2fa3	3a 6b f2 	: k . 
	bit 4,a		;2fa6	cb 67 	. g 
	call nz,03ef1h		;2fa8	c4 f1 3e 	. . > 
	call 03e98h		;2fab	cd 98 3e 	. . > 
	jp 02bfch		;2fae	c3 fc 2b 	. . + 
	jr nc,$-51		;2fb1	30 cb 	0 . 
	call 03b5bh		;2fb3	cd 5b 3b 	. [ ; 
	jr $-27		;2fb6	18 e3 	. . 
	call 03ec4h		;2fb8	cd c4 3e 	. . > 
	jr nz,$+82		;2fbb	20 50 	  P 
	ld l,h			;2fbd	6c 	l 
	ld l,c			;2fbe	69 	i 
	ld l,e			;2fbf	6b 	k 
	jr nz,$+114		;2fc0	20 70 	  p 
	ld (hl),d			;2fc2	72 	r 
	ld a,d			;2fc3	7a 	z 
	ld h,l			;2fc4	65 	e 
	ld h,e			;2fc5	63 	c 
	ld a,d			;2fc6	7a 	z 
	ld a,c			;2fc7	79 	y 
	ld (hl),h			;2fc8	74 	t 
	ld h,c			;2fc9	61 	a 
	ld l,(hl)			;2fca	6e 	n 
	ld a,c			;2fcb	79 	y 
	inc h			;2fcc	24 	$ 
	call 03ec4h		;2fcd	cd c4 3e 	. . > 
	inc l			;2fd0	2c 	, 
	jr nz,$+117		;2fd1	20 73 	  s 
	ld (hl),l			;2fd3	75 	u 
	ld l,l			;2fd4	6d 	m 
	ld h,c			;2fd5	61 	a 
	jr nz,$+63		;2fd6	20 3d 	  = 
	jr nz,$+38		;2fd8	20 24 	  $ 
	ld a,(0f0d1h)		;2fda	3a d1 f0 	: . . 
	jp 03c33h		;2fdd	c3 33 3c 	. 3 < 
	call 039ddh		;2fe0	cd dd 39 	. . 9 
	ld hl,00009h		;2fe3	21 09 00 	! . . 
	add hl,de			;2fe6	19 	. 
	bit 7,(hl)		;2fe7	cb 7e 	. ~ 
	jr nz,$+85		;2fe9	20 53 	  S 
	call 03a4ch		;2feb	cd 4c 3a 	. L : 
	call 03c60h		;2fee	cd 60 3c 	. ` < 
	jr c,$+57		;2ff1	38 37 	8 7 
	jr z,$+55		;2ff3	28 35 	( 5 
	ld a,(0f0cbh)		;2ff5	3a cb f0 	: . . 
	or a			;2ff8	b7 	. 
	jr nz,$+49		;2ff9	20 2f 	  / 
	ld hl,0f097h		;2ffb	21 97 f0 	! . . 
	ld de,0f086h		;2ffe	11 86 f0 	. . . 
	ld bc,0000ch		;3001	01 0c 00 	. . . 
	ldir		;3004	ed b0 	. . 
	ld de,0f086h		;3006	11 86 f0 	. . . 
	ld c,011h		;3009	0e 11 	. . 
	call 00005h		;300b	cd 05 00 	. . . 
	inc a			;300e	3c 	< 
	jr z,$+21		;300f	28 13 	( . 
	call 03ec4h		;3011	cd c4 3e 	. . > 
	jp p,06c50h		;3014	f2 50 6c 	. P l 
	ld l,c			;3017	69 	i 
	ld l,e			;3018	6b 	k 
	jr nz,$+107		;3019	20 69 	  i 
	ld (hl),e			;301b	73 	s 
	ld (hl),h			;301c	74 	t 
	ld l,(hl)			;301d	6e 	n 
	ld l,c			;301e	69 	i 
	ld h,l			;301f	65 	e 
	ld l,d			;3020	6a 	j 
	ld h,l			;3021	65 	e 
	inc h			;3022	24 	$ 
	ret			;3023	c9 	. 
	call 03b47h		;3024	cd 47 3b 	. G ; 
	jp 02dfah		;3027	c3 fa 2d 	. . - 
	cp 01bh		;302a	fe 1b 	. . 
	jp z,035efh		;302c	ca ef 35 	. . 5 
	call 03ec4h		;302f	cd c4 3e 	. . > 
	jp p,07c7ah		;3032	f2 7a 7c 	. z | 
	ld h,c			;3035	61 	a 
	jr nz,$+112		;3036	20 6e 	  n 
	ld h,c			;3038	61 	a 
	ld a,d			;3039	7a 	z 
	ld (hl),a			;303a	77 	w 
	ld h,c			;303b	61 	a 
	inc h			;303c	24 	$ 
	ret			;303d	c9 	. 
	call 03ec4h		;303e	cd c4 3e 	. . > 
	rlca			;3041	07 	. 
	ld d,b			;3042	50 	P 
	ld l,h			;3043	6c 	l 
	ld l,c			;3044	69 	i 
	ld l,e			;3045	6b 	k 
	jr nz,$+84		;3046	20 52 	  R 
	cpl			;3048	2f 	/ 
	ld c,a			;3049	4f 	O 
	inc h			;304a	24 	$ 
	ret			;304b	c9 	. 
	call 03d2dh		;304c	cd 2d 3d 	. - = 
	ret c			;304f	d8 	. 
	cp 03fh		;3050	fe 3f 	. ? 
	jr nz,$+23		;3052	20 15 	  . 
	ld (0f0c5h),a		;3054	32 c5 f0 	2 . . 
	ld (ix+003h),e		;3057	dd 73 03 	. s . 
	ld a,(0f071h)		;305a	3a 71 f0 	: q . 
	cp e			;305d	bb 	. 
	jp z,03db0h		;305e	ca b0 3d 	. . = 
	ld a,(0f0b8h)		;3061	3a b8 f0 	: . . 
	ld (0f0b9h),a		;3064	32 b9 f0 	2 . . 
	jr $+5		;3067	18 03 	. . 
	ld (0f0b9h),a		;3069	32 b9 f0 	2 . . 
	call 03ae9h		;306c	cd e9 3a 	. . : 
	call 03adfh		;306f	cd df 3a 	. . : 
	call 039d5h		;3072	cd d5 39 	. . 9 
	call 03a4ch		;3075	cd 4c 3a 	. L : 
	push de			;3078	d5 	. 
	ld h,d			;3079	62 	b 
	ld l,e			;307a	6b 	k 
	push hl			;307b	e5 	. 
	call 03e98h		;307c	cd 98 3e 	. . > 
	inc hl			;307f	23 	# 
	call 03f0fh		;3080	cd 0f 3f 	. . ? 
	call 03e3eh		;3083	cd 3e 3e 	. > > 
	pop hl			;3086	e1 	. 
	ld de,0f097h		;3087	11 97 f0 	. . . 
	ld bc,0000ch		;308a	01 0c 00 	. . . 
	ldir		;308d	ed b0 	. . 
	call 03af3h		;308f	cd f3 3a 	. . : 
	ld a,(0f0b9h)		;3092	3a b9 f0 	: . . 
	ld (0f097h),a		;3095	32 97 f0 	2 . . 
	cp (ix+000h)		;3098	dd be 00 	. . . 
	jr nz,$+24		;309b	20 16 	  . 
	bit 0,(ix+00dh)		;309d	dd cb 0d 46 	. . . F 
	jr nz,$+18		;30a1	20 10 	  . 
	call 03c60h		;30a3	cd 60 3c 	. ` < 
	jp c,031b6h		;30a6	da b6 31 	. . 1 
	jp z,031b6h		;30a9	ca b6 31 	. . 1 
	ld a,(0f0cbh)		;30ac	3a cb f0 	: . . 
	or a			;30af	b7 	. 
	jp nz,031b6h		;30b0	c2 b6 31 	. . 1 
	pop de			;30b3	d1 	. 
	call 03b0bh		;30b4	cd 0b 3b 	. . ; 
	call 031c7h		;30b7	cd c7 31 	. . 1 
	ld a,(0f0bch)		;30ba	3a bc f0 	: . . 
	cp 007h		;30bd	fe 07 	. . 
	jp z,03171h		;30bf	ca 71 31 	. q 1 
	ld de,0f097h		;30c2	11 97 f0 	. . . 
	ld c,011h		;30c5	0e 11 	. . 
	call 00005h		;30c7	cd 05 00 	. . . 
	cp 0ffh		;30ca	fe ff 	. . 
	jr z,$+42		;30cc	28 28 	( ( 
	call 03fddh		;30ce	cd dd 3f 	. . ? 
	add a,009h		;30d1	c6 09 	. . 
	ld l,a			;30d3	6f 	o 
	call 00011h		;30d4	cd 11 00 	. . . 
	bit 7,a		;30d7	cb 7f 	.  
	jp nz,031a4h		;30d9	c2 a4 31 	. . 1 
	call 03ec4h		;30dc	cd c4 3e 	. . > 
	pop af			;30df	f1 	. 
	ld l,d			;30e0	6a 	j 
	ld (hl),l			;30e1	75 	u 
	ld a,l			;30e2	7d 	} 
	jr nz,$+107		;30e3	20 69 	  i 
	ld (hl),e			;30e5	73 	s 
	ld (hl),h			;30e6	74 	t 
	ld l,(hl)			;30e7	6e 	n 
	ld l,c			;30e8	69 	i 
	ld h,l			;30e9	65 	e 
	ld l,d			;30ea	6a 	j 
	ld h,l			;30eb	65 	e 
	jr nz,$+47		;30ec	20 2d 	  - 
	jr nz,$+38		;30ee	20 24 	  $ 
	call 02ebah		;30f0	cd ba 2e 	. . . 
	jp nz,0318ch		;30f3	c2 8c 31 	. . 1 
	xor a			;30f6	af 	. 
	ld (0f0d1h),a		;30f7	32 d1 f0 	2 . . 
	ld de,0f097h		;30fa	11 97 f0 	. . . 
	call 03b3bh		;30fd	cd 3b 3b 	. ; ; 
	call 031c2h		;3100	cd c2 31 	. . 1 
	ld bc,00200h		;3103	01 00 02 	. . . 
	call 03a84h		;3106	cd 84 3a 	. . : 
	bit 1,b		;3109	cb 48 	. H 
	jr nz,$+31		;310b	20 1d 	  . 
	call 031c7h		;310d	cd c7 31 	. . 1 
	call 03abdh		;3110	cd bd 3a 	. . : 
	jr nc,$-19		;3113	30 eb 	0 . 
	call 03ec4h		;3115	cd c4 3e 	. . > 
	ld b,d			;3118	42 	B 
	ld (hl),d			;3119	72 	r 
	ld h,c			;311a	61 	a 
	ld l,e			;311b	6b 	k 
	jr nz,$+111		;311c	20 6d 	  m 
	ld l,c			;311e	69 	i 
	ld h,l			;311f	65 	e 
	ld l,d			;3120	6a 	j 
	ld (hl),e			;3121	73 	s 
	ld h,e			;3122	63 	c 
	ld h,c			;3123	61 	a 
	inc h			;3124	24 	$ 
	call 031c2h		;3125	cd c2 31 	. . 1 
	jr $+109		;3128	18 6b 	. k 
	call 03af3h		;312a	cd f3 3a 	. . : 
	call 031c7h		;312d	cd c7 31 	. . 1 
	ld de,0f097h		;3130	11 97 f0 	. . . 
	call 03b18h		;3133	cd 18 3b 	. . ; 
	jr z,$-33		;3136	28 dd 	( . 
	ld hl,0f097h		;3138	21 97 f0 	! . . 
	ld de,0f076h		;313b	11 76 f0 	. v . 
	ld bc,0000ch		;313e	01 0c 00 	. . . 
	ldir		;3141	ed b0 	. . 
	ex de,hl			;3143	eb 	. 
	ld b,015h		;3144	06 15 	. . 
	ld (hl),000h		;3146	36 00 	6 . 
	inc hl			;3148	23 	# 
	djnz $-3		;3149	10 fb 	. . 
	call 03b04h		;314b	cd 04 3b 	. . ; 
	ld c,(ix+019h)		;314e	dd 4e 19 	. N . 
	push bc			;3151	c5 	. 
	xor a			;3152	af 	. 
	ld (0f0d1h),a		;3153	32 d1 f0 	2 . . 
	ld bc,00200h		;3156	01 00 02 	. . . 
	call 03a84h		;3159	cd 84 3a 	. . : 
	bit 1,b		;315c	cb 48 	. H 
	jr z,$-8		;315e	28 f6 	( . 
	pop bc			;3160	c1 	. 
	ld a,(0f0d1h)		;3161	3a d1 f0 	: . . 
	cp c			;3164	b9 	. 
	jr z,$+24		;3165	28 16 	( . 
	call 03ec4h		;3167	cd c4 3e 	. . > 
	ld b,d			;316a	42 	B 
	ld e,h			;316b	5c 	\ 
	ld b,c			;316c	41 	A 
	ld b,h			;316d	44 	D 
	inc h			;316e	24 	$ 
	jr $+29		;316f	18 1b 	. . 
	call 03ec4h		;3171	cd c4 3e 	. . > 
	ld (hl),d			;3174	72 	r 
	ld h,c			;3175	61 	a 
	ld l,(hl)			;3176	6e 	n 
	ld h,h			;3177	64 	d 
	ld l,a			;3178	6f 	o 
	ld l,l			;3179	6d 	m 
	inc h			;317a	24 	$ 
	jr $+17		;317b	18 0f 	. . 
	call 03ec4h		;317d	cd c4 3e 	. . > 
	jr nz,$+117		;3180	20 73 	  s 
	ld l,e			;3182	6b 	k 
	ld l,a			;3183	6f 	o 
	ld (hl),b			;3184	70 	p 
	ld l,c			;3185	69 	i 
	ld l,a			;3186	6f 	o 
	ld (hl),a			;3187	77 	w 
	ld h,c			;3188	61 	a 
	ld l,(hl)			;3189	6e 	n 
	ld a,c			;318a	79 	y 
	inc h			;318b	24 	$ 
	call 031c2h		;318c	cd c2 31 	. . 1 
	call 03a25h		;318f	cd 25 3a 	. % : 
	jp c,03075h		;3192	da 75 30 	. u 0 
	call 03e1dh		;3195	cd 1d 3e 	. . > 
	ld a,(0f0b8h)		;3198	3a b8 f0 	: . . 
	cp (ix+001h)		;319b	dd be 01 	. . . 
	jp nz,02dfdh		;319e	c2 fd 2d 	. . - 
	jp 02df3h		;31a1	c3 f3 2d 	. . - 
	call 03ec4h		;31a4	cd c4 3e 	. . > 
	ld l,c			;31a7	69 	i 
	ld (hl),e			;31a8	73 	s 
	ld (hl),h			;31a9	74 	t 
	ld l,(hl)			;31aa	6e 	n 
	ld l,c			;31ab	69 	i 
	ld h,l			;31ac	65 	e 
	ld l,d			;31ad	6a 	j 
	ld h,l			;31ae	65 	e 
	jr nz,$+84		;31af	20 52 	  R 
	cpl			;31b1	2f 	/ 
	ld c,a			;31b2	4f 	O 
	inc h			;31b3	24 	$ 
	jr $-40		;31b4	18 d6 	. . 
	pop de			;31b6	d1 	. 
	push af			;31b7	f5 	. 
	call 0302ah		;31b8	cd 2a 30 	. * 0 
	pop af			;31bb	f1 	. 
	cp 01bh		;31bc	fe 1b 	. . 
	jr z,$-38		;31be	28 d8 	( . 
	jr $-43		;31c0	18 d3 	. . 
	ld e,(ix-047h)		;31c2	dd 5e b9 	. ^ . 
	jr $+5		;31c5	18 03 	. . 
	ld e,(ix+003h)		;31c7	dd 5e 03 	. ^ . 
	bit 0,(ix+00dh)		;31ca	dd cb 0d 46 	. . . F 
	ret z			;31ce	c8 	. 
	jp 03b56h		;31cf	c3 56 3b 	. V ; 
	call 03a4ch		;31d2	cd 4c 3a 	. L : 
	call 03c72h		;31d5	cd 72 3c 	. r < 
	jp c,0302ah		;31d8	da 2a 30 	. * 0 
	push af			;31db	f5 	. 
	ld hl,0f097h		;31dc	21 97 f0 	! . . 
	ld de,0f0e6h		;31df	11 e6 f0 	. . . 
	ld bc,0000ch		;31e2	01 0c 00 	. . . 
	ldir		;31e5	ed b0 	. . 
	pop af			;31e7	f1 	. 
	call z,031eeh		;31e8	cc ee 31 	. . 1 
	jp 02df3h		;31eb	c3 f3 2d 	. . - 
	ld hl,0f0e7h		;31ee	21 e7 f0 	! . . 
	ld b,00bh		;31f1	06 0b 	. . 
	ld (hl),03fh		;31f3	36 3f 	6 ? 
	inc hl			;31f5	23 	# 
	djnz $-3		;31f6	10 fb 	. . 
	ret			;31f8	c9 	. 
	ld hl,0f26bh		;31f9	21 6b f2 	! k . 
	res 2,(hl)		;31fc	cb 96 	. . 
	res 3,(hl)		;31fe	cb 9e 	. . 
	ld hl,00003h		;3200	21 03 00 	! . . 
	call 00011h		;3203	cd 11 00 	. . . 
	add a,040h		;3206	c6 40 	. @ 
	ld (hl),a			;3208	77 	w 
	set 7,(ix-048h)		;3209	dd cb b8 fe 	. . . . 
	ret			;320d	c9 	. 
	ld hl,0f26bh		;320e	21 6b f2 	! k . 
	res 2,(hl)		;3211	cb 96 	. . 
	res 3,(hl)		;3213	cb 9e 	. . 
	ld a,(0f070h)		;3215	3a 70 f0 	: p . 
	xor 080h		;3218	ee 80 	. . 
	ld (0f070h),a		;321a	32 70 f0 	2 p . 
	ret			;321d	c9 	. 
	ld a,(0f070h)		;321e	3a 70 f0 	: p . 
	bit 7,a		;3221	cb 7f 	.  
	ret z			;3223	c8 	. 
	call 03ec4h		;3224	cd c4 3e 	. . > 
	ld d,b			;3227	50 	P 
	ld l,c			;3228	69 	i 
	ld (hl),e			;3229	73 	s 
	ld a,d			;322a	7a 	z 
	jr nz,$+124		;322b	20 7a 	  z 
	ld l,(hl)			;322d	6e 	n 
	ld h,c			;322e	61 	a 
	ld l,e			;322f	6b 	k 
	ld l,c			;3230	69 	i 
	jr nz,$+112		;3231	20 6e 	  n 
	ld h,c			;3233	61 	a 
	jr nz,$+102		;3234	20 64 	  d 
	ld (hl),d			;3236	72 	r 
	ld (hl),l			;3237	75 	u 
	ld l,e			;3238	6b 	k 
	ld h,c			;3239	61 	a 
	ld (hl),d			;323a	72 	r 
	ld l,e			;323b	6b 	k 
	ld b,b			;323c	40 	@ 
	jr nz,$+34		;323d	20 20 	    
	jr nz,$+34		;323f	20 20 	    
	ld a,d			;3241	7a 	z 
	ld l,(hl)			;3242	6e 	n 
	ld h,c			;3243	61 	a 
	ld l,e			;3244	6b 	k 
	jr nz,$+42		;3245	20 28 	  ( 
	ld h,e			;3247	63 	c 
	ld (hl),h			;3248	74 	t 
	ld (hl),d			;3249	72 	r 
	ld l,h			;324a	6c 	l 
	add hl,hl			;324b	29 	) 
	ld e,d			;324c	5a 	Z 
	jr nz,$+47		;324d	20 2d 	  - 
	jr nz,$+109		;324f	20 6b 	  k 
	ld l,a			;3251	6f 	o 
	ld l,(hl)			;3252	6e 	n 
	ld l,c			;3253	69 	i 
	ld h,l			;3254	65 	e 
	ld h,e			;3255	63 	c 
	jr nz,$+114		;3256	20 70 	  p 
	ld l,a			;3258	6f 	o 
	ld l,h			;3259	6c 	l 
	ld h,l			;325a	65 	e 
	ld h,e			;325b	63 	c 
	ld h,l			;325c	65 	e 
	ld l,(hl)			;325d	6e 	n 
	ld l,c			;325e	69 	i 
	ld h,c			;325f	61 	a 
	dec c			;3260	0d 	. 
	ld a,(bc)			;3261	0a 	. 
	inc h			;3262	24 	$ 
	call 03de2h		;3263	cd e2 3d 	. . = 
	cp 01ah		;3266	fe 1a 	. . 
	jp z,02dfdh		;3268	ca fd 2d 	. . - 
	ld c,a			;326b	4f 	O 
	cp 020h		;326c	fe 20 	.   
	jr c,$+10		;326e	38 08 	8 . 
	call 0f20ch		;3270	cd 0c f2 	. . . 
	call 0f20fh		;3273	cd 0f f2 	. . . 
	jr $-19		;3276	18 eb 	. . 
	cp 00dh		;3278	fe 0d 	. . 
	jr z,$-10		;327a	28 f4 	( . 
	cp 00ah		;327c	fe 0a 	. . 
	jr z,$-14		;327e	28 f0 	( . 
	push bc			;3280	c5 	. 
	push af			;3281	f5 	. 
	ld c,03ch		;3282	0e 3c 	. < 
	call 0f20ch		;3284	cd 0c f2 	. . . 
	pop af			;3287	f1 	. 
	call 03c33h		;3288	cd 33 3c 	. 3 < 
	ld c,03eh		;328b	0e 3e 	. > 
	call 0f20ch		;328d	cd 0c f2 	. . . 
	pop bc			;3290	c1 	. 
	jr $-30		;3291	18 e0 	. . 
	ld a,(0fb7ch)		;3293	3a 7c fb 	: | . 
	bit 7,a		;3296	cb 7f 	.  
	ret z			;3298	c8 	. 
	bit 0,a		;3299	cb 47 	. G 
	jr z,$+41		;329b	28 27 	( ' 
	call 03ec4h		;329d	cd c4 3e 	. . > 
	ld b,e			;32a0	43 	C 
	ld a,d			;32a1	7a 	z 
	ld a,c			;32a2	79 	y 
	jr nz,$+124		;32a3	20 7a 	  z 
	ld (hl),a			;32a5	77 	w 
	ld l,a			;32a6	6f 	o 
	ld l,h			;32a7	6c 	l 
	ld l,(hl)			;32a8	6e 	n 
	ld l,c			;32a9	69 	i 
	ld a,(hl)			;32aa	7e 	~ 
	jr nz,$+100		;32ab	20 62 	  b 
	ld h,c			;32ad	61 	a 
	ld l,(hl)			;32ae	6e 	n 
	ld l,e			;32af	6b 	k 
	jr nz,$+51		;32b0	20 31 	  1 
	jr nz,$+42		;32b2	20 28 	  ( 
	ld d,h			;32b4	54 	T 
	cpl			;32b5	2f 	/ 
	ld c,(hl)			;32b6	4e 	N 
	add hl,hl			;32b7	29 	) 
	jr nz,$+65		;32b8	20 3f 	  ? 
	jr nz,$+38		;32ba	20 24 	  $ 
	call 03e0bh		;32bc	cd 0b 3e 	. . > 
	cp 054h		;32bf	fe 54 	. T 
	jp nz,035efh		;32c1	c2 ef 35 	. . 5 
	ld a,0ffh		;32c4	3e ff 	> . 
	call 00017h		;32c6	cd 17 00 	. . . 
	call 03ae9h		;32c9	cd e9 3a 	. . : 
	jp 02dfah		;32cc	c3 fa 2d 	. . - 
	ld a,(0fb7ch)		;32cf	3a 7c fb 	: | . 
	bit 7,a		;32d2	cb 7f 	.  
	jp nz,02a3ch		;32d4	c2 3c 2a 	. < * 
	ld a,007h		;32d7	3e 07 	> . 
	call 03e40h		;32d9	cd 40 3e 	. @ > 
	ld a,001h		;32dc	3e 01 	> . 
	ld b,0afh		;32de	06 af 	. . 
	ld (0f0e5h),a		;32e0	32 e5 f0 	2 . . 
	call 039ddh		;32e3	cd dd 39 	. . 9 
	ld hl,00009h		;32e6	21 09 00 	! . . 
	add hl,de			;32e9	19 	. 
	ld a,(hl)			;32ea	7e 	~ 
	and 07fh		;32eb	e6 7f 	.  
	cp 043h		;32ed	fe 43 	. C 
	jp nz,02a3ch		;32ef	c2 3c 2a 	. < * 
	inc hl			;32f2	23 	# 
	ld a,(hl)			;32f3	7e 	~ 
	and 07fh		;32f4	e6 7f 	.  
	cp 04fh		;32f6	fe 4f 	. O 
	jp nz,02a3ch		;32f8	c2 3c 2a 	. < * 
	inc hl			;32fb	23 	# 
	ld a,(hl)			;32fc	7e 	~ 
	and 07fh		;32fd	e6 7f 	.  
	cp 04dh		;32ff	fe 4d 	. M 
	jp nz,02a3ch		;3301	c2 3c 2a 	. < * 
	call 03a4ch		;3304	cd 4c 3a 	. L : 
	ld h,d			;3307	62 	b 
	ld l,e			;3308	6b 	k 
	call 03e94h		;3309	cd 94 3e 	. . > 
	inc hl			;330c	23 	# 
	ld b,008h		;330d	06 08 	. . 
	call 03f23h		;330f	cd 23 3f 	. # ? 
	call 03e3eh		;3312	cd 3e 3e 	. > > 
	call 03cdch		;3315	cd dc 3c 	. . < 
	jp c,0302ah		;3318	da 2a 30 	. * 0 
	call 03e98h		;331b	cd 98 3e 	. . > 
	xor a			;331e	af 	. 
	ld (0007ch),a		;331f	32 7c 00 	2 | . 
	ld hl,0005ch		;3322	21 5c 00 	! \ . 
	call 03353h		;3325	cd 53 33 	. S 3 
	ld hl,0006ch		;3328	21 6c 00 	! l . 
	call 03353h		;332b	cd 53 33 	. S 3 
	call 03b04h		;332e	cd 04 3b 	. . ; 
	jp z,033ech		;3331	ca ec 33 	. . 3 
	ld a,(0f0e5h)		;3334	3a e5 f0 	: . . 
	call 00017h		;3337	cd 17 00 	. . . 
	jp c,035efh		;333a	da ef 35 	. . 5 
	call 03a6ch		;333d	cd 6c 3a 	. l : 
	jp nc,023c3h		;3340	d2 c3 23 	. . # 
	call 023f4h		;3343	cd f4 23 	. . # 
	jp 0f203h		;3346	c3 03 f2 	. . . 
	ld hl,0f076h		;3349	21 76 f0 	! v . 
	call 03353h		;334c	cd 53 33 	. S 3 
	inc c			;334f	0c 	. 
	dec c			;3350	0d 	. 
	ld a,c			;3351	79 	y 
	ret			;3352	c9 	. 
	push hl			;3353	e5 	. 
	call 033a9h		;3354	cd a9 33 	. . 3 
	pop de			;3357	d1 	. 
	ld hl,(0f074h)		;3358	2a 74 f0 	* t . 
	ld c,000h		;335b	0e 00 	. . 
	call 033bbh		;335d	cd bb 33 	. . 3 
	ld (0f072h),hl		;3360	22 72 f0 	" r . 
	ret z			;3363	c8 	. 
	call 00011h		;3364	cd 11 00 	. . . 
	sub 040h		;3367	d6 40 	. @ 
	ld b,a			;3369	47 	G 
	inc hl			;336a	23 	# 
	call 00011h		;336b	cd 11 00 	. . . 
	cp 03ah		;336e	fe 3a 	. : 
	jr z,$+5		;3370	28 03 	( . 
	dec hl			;3372	2b 	+ 
	jr $+5		;3373	18 03 	. . 
	ld a,b			;3375	78 	x 
	ld (de),a			;3376	12 	. 
	inc hl			;3377	23 	# 
	ld b,008h		;3378	06 08 	. . 
	call 03384h		;337a	cd 84 33 	. . 3 
	ret c			;337d	d8 	. 
	cp 02eh		;337e	fe 2e 	. . 
	ret nz			;3380	c0 	. 
	ld b,003h		;3381	06 03 	. . 
	inc hl			;3383	23 	# 
	call 033c6h		;3384	cd c6 33 	. . 3 
	jr c,$+30		;3387	38 1c 	8 . 
	jr z,$+25		;3389	28 17 	( . 
	inc de			;338b	13 	. 
	cp 02ah		;338c	fe 2a 	. * 
	jr nz,$+6		;338e	20 04 	  . 
	inc c			;3390	0c 	. 
	ld a,03fh		;3391	3e 3f 	> ? 
	dec hl			;3393	2b 	+ 
	ld (de),a			;3394	12 	. 
	inc hl			;3395	23 	# 
	djnz $-18		;3396	10 ec 	. . 
	call 033c6h		;3398	cd c6 33 	. . 3 
	jr c,$+10		;339b	38 08 	8 . 
	jr z,$+8		;339d	28 06 	( . 
	inc hl			;339f	23 	# 
	jr $-8		;33a0	18 f6 	. . 
	inc de			;33a2	13 	. 
	djnz $-1		;33a3	10 fd 	. . 
	ld (0f074h),hl		;33a5	22 74 f0 	" t . 
	ret			;33a8	c9 	. 
	ld (hl),000h		;33a9	36 00 	6 . 
	inc hl			;33ab	23 	# 
	ld b,00bh		;33ac	06 0b 	. . 
	ld a,020h		;33ae	3e 20 	>   
	call 033b6h		;33b0	cd b6 33 	. . 3 
	ld b,004h		;33b3	06 04 	. . 
	xor a			;33b5	af 	. 
	ld (hl),a			;33b6	77 	w 
	inc hl			;33b7	23 	# 
	djnz $-2		;33b8	10 fc 	. . 
	ret			;33ba	c9 	. 
	call 00011h		;33bb	cd 11 00 	. . . 
	or a			;33be	b7 	. 
	ret z			;33bf	c8 	. 
	cp 020h		;33c0	fe 20 	.   
	ret nz			;33c2	c0 	. 
	inc hl			;33c3	23 	# 
	jr $-9		;33c4	18 f5 	. . 
	call 00011h		;33c6	cd 11 00 	. . . 
	cp 03fh		;33c9	fe 3f 	. ? 
	jr nz,$+3		;33cb	20 01 	  . 
	inc c			;33cd	0c 	. 
	or a			;33ce	b7 	. 
	scf			;33cf	37 	7 
	ret z			;33d0	c8 	. 
	cp 03dh		;33d1	fe 3d 	. = 
	ret z			;33d3	c8 	. 
	cp 05fh		;33d4	fe 5f 	. _ 
	ret z			;33d6	c8 	. 
	cp 02eh		;33d7	fe 2e 	. . 
	ret z			;33d9	c8 	. 
	cp 03ah		;33da	fe 3a 	. : 
	ret z			;33dc	c8 	. 
	cp 03bh		;33dd	fe 3b 	. ; 
	ret z			;33df	c8 	. 
	cp 03ch		;33e0	fe 3c 	. < 
	ret z			;33e2	c8 	. 
	cp 03eh		;33e3	fe 3e 	. > 
	ret z			;33e5	c8 	. 
	cp 020h		;33e6	fe 20 	.   
	ret z			;33e8	c8 	. 
	scf			;33e9	37 	7 
	ccf			;33ea	3f 	? 
	ret			;33eb	c9 	. 
	call 03ec4h		;33ec	cd c4 3e 	. . > 
	ld a,(bc)			;33ef	0a 	. 
	ld d,b			;33f0	50 	P 
	ld l,h			;33f1	6c 	l 
	ld l,c			;33f2	69 	i 
	ld l,e			;33f3	6b 	k 
	jr nz,$+112		;33f4	20 6e 	  n 
	ld l,c			;33f6	69 	i 
	ld h,l			;33f7	65 	e 
	jr nz,$+124		;33f8	20 7a 	  z 
	ld l,(hl)			;33fa	6e 	n 
	ld h,c			;33fb	61 	a 
	ld l,h			;33fc	6c 	l 
	ld h,l			;33fd	65 	e 
	ld a,d			;33fe	7a 	z 
	ld l,c			;33ff	69 	i 
	ld l,a			;3400	6f 	o 
	ld l,(hl)			;3401	6e 	n 
	ld a,c			;3402	79 	y 
	ld a,(bc)			;3403	0a 	. 
	ld a,(bc)			;3404	0a 	. 
	inc h			;3405	24 	$ 
	jp 02b11h		;3406	c3 11 2b 	. . + 
	ld a,(0f0b8h)		;3409	3a b8 f0 	: . . 
	dec a			;340c	3d 	= 
	ret nz			;340d	c0 	. 
	ld a,(0f26bh)		;340e	3a 6b f2 	: k . 
	bit 2,a		;3411	cb 57 	. W 
	ret nz			;3413	c0 	. 
	ld hl,0f070h		;3414	21 70 f0 	! p . 
	bit 7,(hl)		;3417	cb 7e 	. ~ 
	ret z			;3419	c8 	. 
	res 7,(hl)		;341a	cb be 	. . 
	ld hl,0fb80h		;341c	21 80 fb 	! . . 
	ld b,080h		;341f	06 80 	. . 
	ld (hl),000h		;3421	36 00 	6 . 
	inc hl			;3423	23 	# 
	djnz $-3		;3424	10 fb 	. . 
	call 039ddh		;3426	cd dd 39 	. . 9 
	ld hl,00010h		;3429	21 10 00 	! . . 
	add hl,de			;342c	19 	. 
	ld a,(hl)			;342d	7e 	~ 
	cp 007h		;342e	fe 07 	. . 
	ret z			;3430	c8 	. 
	call 03a4ch		;3431	cd 4c 3a 	. L : 
	ld de,0fb80h		;3434	11 80 fb 	. . . 
	ld c,0ffh		;3437	0e ff 	. . 
	call 0348ah		;3439	cd 8a 34 	. . 4 
	or a			;343c	b7 	. 
	jr z,$+39		;343d	28 25 	( % 
	push af			;343f	f5 	. 
	ex de,hl			;3440	eb 	. 
	ld a,(0fbfdh)		;3441	3a fd fb 	: . . 
	or a			;3444	b7 	. 
	jr z,$+58		;3445	28 38 	( 8 
	cp b			;3447	b8 	. 
	jr nz,$+53		;3448	20 33 	  3 
	add a,008h		;344a	c6 08 	. . 
	ld (0fbfdh),a		;344c	32 fd fb 	2 . . 
	pop af			;344f	f1 	. 
	inc hl			;3450	23 	# 
	add a,(hl)			;3451	86 	. 
	ld (hl),a			;3452	77 	w 
	dec hl			;3453	2b 	+ 
	bit 7,a		;3454	cb 7f 	.  
	jr z,$+8		;3456	28 06 	( . 
	inc hl			;3458	23 	# 
	inc hl			;3459	23 	# 
	xor a			;345a	af 	. 
	ld (0fbfdh),a		;345b	32 fd fb 	2 . . 
	ex de,hl			;345e	eb 	. 
	ld a,e			;345f	7b 	{ 
	cp 0f8h		;3460	fe f8 	. . 
	jr c,$-41		;3462	38 d5 	8 . 
	ld a,(0fb80h)		;3464	3a 80 fb 	: . . 
	or a			;3467	b7 	. 
	ret z			;3468	c8 	. 
	ld hl,0f26bh		;3469	21 6b f2 	! k . 
	set 2,(hl)		;346c	cb d6 	. . 
	ld hl,(0f279h)		;346e	2a 79 f2 	* y . 
	xor a			;3471	af 	. 
	dec hl			;3472	2b 	+ 
	ld (hl),a			;3473	77 	w 
	dec hl			;3474	2b 	+ 
	ld (hl),a			;3475	77 	w 
	dec hl			;3476	2b 	+ 
	ld (hl),a			;3477	77 	w 
	res 7,(ix-048h)		;3478	dd cb b8 be 	. . . . 
	ret			;347c	c9 	. 
	inc hl			;347d	23 	# 
	inc hl			;347e	23 	# 
	ld (hl),b			;347f	70 	p 
	ld a,b			;3480	78 	x 
	add a,008h		;3481	c6 08 	. . 
	ld (0fbfdh),a		;3483	32 fd fb 	2 . . 
	pop af			;3486	f1 	. 
	inc hl			;3487	23 	# 
	jr $-54		;3488	18 c8 	. . 
	bit 7,c		;348a	cb 79 	. y 
	jr z,$+36		;348c	28 22 	( " 
	ld c,011h		;348e	0e 11 	. . 
	push de			;3490	d5 	. 
	ld de,0f076h		;3491	11 76 f0 	. v . 
	call 00005h		;3494	cd 05 00 	. . . 
	ld hl,0f082h		;3497	21 82 f0 	! . . 
	inc (hl)			;349a	34 	4 
	inc (hl)			;349b	34 	4 
	pop de			;349c	d1 	. 
	inc a			;349d	3c 	< 
	ret z			;349e	c8 	. 
	dec a			;349f	3d 	= 
	call 03fddh		;34a0	cd dd 3f 	. . ? 
	ld bc,0000fh		;34a3	01 0f 00 	. . . 
	add hl,bc			;34a6	09 	. 
	call 00011h		;34a7	cd 11 00 	. . . 
	or a			;34aa	b7 	. 
	ret z			;34ab	c8 	. 
	ld (0fbfah),a		;34ac	32 fa fb 	2 . . 
	inc hl			;34af	23 	# 
	call 00011h		;34b0	cd 11 00 	. . . 
	or a			;34b3	b7 	. 
	ret z			;34b4	c8 	. 
	ld a,(0f2b8h)		;34b5	3a b8 f2 	: . . 
	ld b,a			;34b8	47 	G 
	add a,a			;34b9	87 	. 
	add a,a			;34ba	87 	. 
	add a,a			;34bb	87 	. 
	add a,a			;34bc	87 	. 
	sub b			;34bd	90 	. 
	ld b,a			;34be	47 	G 
	call 00011h		;34bf	cd 11 00 	. . . 
	add a,b			;34c2	80 	. 
	ld b,000h		;34c3	06 00 	. . 
	sub 01eh		;34c5	d6 1e 	. . 
	jr c,$+5		;34c7	38 03 	8 . 
	inc b			;34c9	04 	. 
	jr $-5		;34ca	18 f9 	. . 
	add a,01eh		;34cc	c6 1e 	. . 
	or a			;34ce	b7 	. 
	rlca			;34cf	07 	. 
	rlca			;34d0	07 	. 
	rlca			;34d1	07 	. 
	add a,b			;34d2	80 	. 
	xor 007h		;34d3	ee 07 	. . 
	ld b,a			;34d5	47 	G 
	dec c			;34d6	0d 	. 
	jp m,034ebh		;34d7	fa eb 34 	. . 4 
	inc hl			;34da	23 	# 
	call 00011h		;34db	cd 11 00 	. . . 
	or a			;34de	b7 	. 
	ld a,010h		;34df	3e 10 	> . 
	ret nz			;34e1	c0 	. 
	ld a,(0fbfah)		;34e2	3a fa fb 	: . . 
	and 00fh		;34e5	e6 0f 	. . 
	ret nz			;34e7	c0 	. 
	ld a,010h		;34e8	3e 10 	> . 
	ret			;34ea	c9 	. 
	ld a,(0fbfah)		;34eb	3a fa fb 	: . . 
	cp 080h		;34ee	fe 80 	. . 
	ld a,010h		;34f0	3e 10 	> . 
	ret z			;34f2	c8 	. 
	jr $-17		;34f3	18 ed 	. . 
	call 03ec4h		;34f5	cd c4 3e 	. . > 
	dec c			;34f8	0d 	. 
	jr nz,$+69		;34f9	20 43 	  C 
	ld a,d			;34fb	7a 	z 
	ld a,c			;34fc	79 	y 
	jr nz,$+118		;34fd	20 74 	  t 
	ld h,l			;34ff	65 	e 
	ld l,e			;3500	6b 	k 
	ld (hl),e			;3501	73 	s 
	ld (hl),h			;3502	74 	t 
	jr nz,$+124		;3503	20 7a 	  z 
	ld h,c			;3505	61 	a 
	ld (hl),a			;3506	77 	w 
	ld l,c			;3507	69 	i 
	ld h,l			;3508	65 	e 
	ld (hl),d			;3509	72 	r 
	ld h,c			;350a	61 	a 
	jr nz,$+110		;350b	20 6c 	  l 
	ld l,c			;350d	69 	i 
	ld (hl),h			;350e	74 	t 
	ld h,l			;350f	65 	e 
	ld (hl),d			;3510	72 	r 
	ld a,c			;3511	79 	y 
	jr nz,$+34		;3512	20 20 	    
	ld h,b			;3514	60 	` 
	jr nz,$+66		;3515	20 40 	  @ 
	jr nz,$+96		;3517	20 5e 	  ^ 
	jr nz,$+128		;3519	20 7e 	  ~ 
	jr nz,$+95		;351b	20 5d 	  ] 
	jr nz,$+127		;351d	20 7d 	  } 
	jr nz,$+125		;351f	20 7b 	  { 
	jr nz,$+93		;3521	20 5b 	  [ 
	jr nz,$+126		;3523	20 7c 	  | 
	jr nz,$+94		;3525	20 5c 	  \ 
	jr nz,$+34		;3527	20 20 	    
	jr z,$+86		;3529	28 54 	( T 
	cpl			;352b	2f 	/ 
	ld c,(hl)			;352c	4e 	N 
	add hl,hl			;352d	29 	) 
	jr nz,$+65		;352e	20 3f 	  ? 
	jr nz,$+38		;3530	20 24 	  $ 
	call 03e0bh		;3532	cd 0b 3e 	. . > 
	cp 01bh		;3535	fe 1b 	. . 
	jp z,035efh		;3537	ca ef 35 	. . 5 
	ld hl,0f26bh		;353a	21 6b f2 	! k . 
	res 4,(hl)		;353d	cb a6 	. . 
	cp 054h		;353f	fe 54 	. T 
	jr nz,$+4		;3541	20 02 	  . 
	set 4,(hl)		;3543	cb e6 	. . 
	call 03ec4h		;3545	cd c4 3e 	. . > 
	dec c			;3548	0d 	. 
	jr nz,$+69		;3549	20 43 	  C 
	ld a,d			;354b	7a 	z 
	ld a,c			;354c	79 	y 
	jr nz,$+102		;354d	20 64 	  d 
	ld (hl),d			;354f	72 	r 
	ld (hl),l			;3550	75 	u 
	ld l,e			;3551	6b 	k 
	ld h,c			;3552	61 	a 
	ld (hl),d			;3553	72 	r 
	ld l,e			;3554	6b 	k 
	ld h,c			;3555	61 	a 
	jr nz,$+111		;3556	20 6d 	  m 
	ld h,c			;3558	61 	a 
	jr nz,$+121		;3559	20 77 	  w 
	jr nz,$+124		;355b	20 7a 	  z 
	ld h,l			;355d	65 	e 
	ld (hl),e			;355e	73 	s 
	ld (hl),h			;355f	74 	t 
	ld h,c			;3560	61 	a 
	ld (hl),a			;3561	77 	w 
	ld l,c			;3562	69 	i 
	ld h,l			;3563	65 	e 
	jr nz,$+124		;3564	20 7a 	  z 
	ld l,(hl)			;3566	6e 	n 
	ld h,c			;3567	61 	a 
	ld l,e			;3568	6b 	k 
	ld l,a			;3569	6f 	o 
	ld (hl),a			;356a	77 	w 
	jr nz,$+110		;356b	20 6c 	  l 
	ld l,c			;356d	69 	i 
	ld (hl),h			;356e	74 	t 
	ld h,l			;356f	65 	e 
	ld (hl),d			;3570	72 	r 
	ld a,c			;3571	79 	y 
	jr nz,$+98		;3572	20 60 	  ` 
	jr nz,$+66		;3574	20 40 	  @ 
	jr nz,$+96		;3576	20 5e 	  ^ 
	jr nz,$+128		;3578	20 7e 	  ~ 
	jr nz,$+95		;357a	20 5d 	  ] 
	jr nz,$+127		;357c	20 7d 	  } 
	jr nz,$+125		;357e	20 7b 	  { 
	jr nz,$+93		;3580	20 5b 	  [ 
	jr nz,$+126		;3582	20 7c 	  | 
	jr nz,$+94		;3584	20 5c 	  \ 
	jr nz,$+34		;3586	20 20 	    
	jr z,$+86		;3588	28 54 	( T 
	cpl			;358a	2f 	/ 
	ld c,(hl)			;358b	4e 	N 
	add hl,hl			;358c	29 	) 
	jr nz,$+65		;358d	20 3f 	  ? 
	jr nz,$+38		;358f	20 24 	  $ 
	call 03e0bh		;3591	cd 0b 3e 	. . > 
	cp 01bh		;3594	fe 1b 	. . 
	jp z,035efh		;3596	ca ef 35 	. . 5 
	ld hl,0f26bh		;3599	21 6b f2 	! k . 
	res 5,(hl)		;359c	cb ae 	. . 
	cp 054h		;359e	fe 54 	. T 
	jr nz,$+4		;35a0	20 02 	  . 
	set 5,(hl)		;35a2	cb ee 	. . 
	call 03ec4h		;35a4	cd c4 3e 	. . > 
	dec c			;35a7	0d 	. 
	jr nz,$+69		;35a8	20 43 	  C 
	ld a,d			;35aa	7a 	z 
	ld a,c			;35ab	79 	y 
	jr nz,$+124		;35ac	20 7a 	  z 
	ld h,l			;35ae	65 	e 
	ld (hl),d			;35af	72 	r 
	ld l,a			;35b0	6f 	o 
	ld (hl),a			;35b1	77 	w 
	ld h,c			;35b2	61 	a 
	ld a,(hl)			;35b3	7e 	~ 
	jr nz,$+125		;35b4	20 7b 	  { 
	ld (hl),e			;35b6	73 	s 
	ld l,l			;35b7	6d 	m 
	ld a,c			;35b8	79 	y 
	jr nz,$+100		;35b9	20 62 	  b 
	ld l,c			;35bb	69 	i 
	ld (hl),h			;35bc	74 	t 
	jr nz,$+114		;35bd	20 70 	  p 
	ld l,a			;35bf	6f 	o 
	ld h,h			;35c0	64 	d 
	ld h,e			;35c1	63 	c 
	ld a,d			;35c2	7a 	z 
	ld h,c			;35c3	61 	a 
	ld (hl),e			;35c4	73 	s 
	jr nz,$+102		;35c5	20 64 	  d 
	ld (hl),d			;35c7	72 	r 
	ld (hl),l			;35c8	75 	u 
	ld l,e			;35c9	6b 	k 
	ld l,a			;35ca	6f 	o 
	ld (hl),a			;35cb	77 	w 
	ld h,c			;35cc	61 	a 
	ld l,(hl)			;35cd	6e 	n 
	ld l,c			;35ce	69 	i 
	ld h,c			;35cf	61 	a 
	jr nz,$+34		;35d0	20 20 	    
	jr z,$+86		;35d2	28 54 	( T 
	cpl			;35d4	2f 	/ 
	ld c,(hl)			;35d5	4e 	N 
	add hl,hl			;35d6	29 	) 
	jr nz,$+65		;35d7	20 3f 	  ? 
	jr nz,$+29		;35d9	20 1b 	  . 
	ld c,e			;35db	4b 	K 
	inc h			;35dc	24 	$ 
	call 03e0bh		;35dd	cd 0b 3e 	. . > 
	cp 01bh		;35e0	fe 1b 	. . 
	jr z,$+13		;35e2	28 0b 	( . 
	ld hl,0f26bh		;35e4	21 6b f2 	! k . 
	res 1,(hl)		;35e7	cb 8e 	. . 
	cp 054h		;35e9	fe 54 	. T 
	jr nz,$+4		;35eb	20 02 	  . 
	set 1,(hl)		;35ed	cb ce 	. . 
	call 03ec4h		;35ef	cd c4 3e 	. . > 
	dec c			;35f2	0d 	. 
	dec de			;35f3	1b 	. 
	ld c,e			;35f4	4b 	K 
	inc h			;35f5	24 	$ 
	ret			;35f6	c9 	. 
	call 03fe8h		;35f7	cd e8 3f 	. . ? 
	ld (0f0bdh),a		;35fa	32 bd f0 	2 . . 
	call 03adfh		;35fd	cd df 3a 	. . : 
	ld c,01fh		;3600	0e 1f 	. . 
	call 00005h		;3602	cd 05 00 	. . . 
	inc hl			;3605	23 	# 
	inc hl			;3606	23 	# 
	ld a,(hl)			;3607	7e 	~ 
	ld (0f0d7h),a		;3608	32 d7 f0 	2 . . 
	inc hl			;360b	23 	# 
	ld a,(hl)			;360c	7e 	~ 
	ld (0f0d8h),a		;360d	32 d8 f0 	2 . . 
	inc hl			;3610	23 	# 
	ld a,(hl)			;3611	7e 	~ 
	ld (0f0d9h),a		;3612	32 d9 f0 	2 . . 
	inc hl			;3615	23 	# 
	ld e,(hl)			;3616	5e 	^ 
	inc hl			;3617	23 	# 
	ld d,(hl)			;3618	56 	V 
	inc de			;3619	13 	. 
	ex de,hl			;361a	eb 	. 
	ld (0f0dah),hl		;361b	22 da f0 	" . . 
	call 03af3h		;361e	cd f3 3a 	. . : 
	ld a,(0f0c8h)		;3621	3a c8 f0 	: . . 
	ld (0005ch),a		;3624	32 5c 00 	2 \ . 
	ld hl,0005dh		;3627	21 5d 00 	! ] . 
	ld b,00ch		;362a	06 0c 	. . 
	ld (hl),03fh		;362c	36 3f 	6 ? 
	inc hl			;362e	23 	# 
	djnz $-3		;362f	10 fb 	. . 
	inc hl			;3631	23 	# 
	ld (hl),03fh		;3632	36 3f 	6 ? 
	ld de,0db00h		;3634	11 00 db 	. . . 
	ld c,011h		;3637	0e 11 	. . 
	push de			;3639	d5 	. 
	ld de,0005ch		;363a	11 5c 00 	. \ . 
	call 00005h		;363d	cd 05 00 	. . . 
	pop de			;3640	d1 	. 
	cp 0ffh		;3641	fe ff 	. . 
	jp z,0371eh		;3643	ca 1e 37 	. . 7 
	call 03fddh		;3646	cd dd 3f 	. . ? 
	call 00011h		;3649	cd 11 00 	. . . 
	cp 0e5h		;364c	fe e5 	. . 
	jp z,03715h		;364e	ca 15 37 	. . 7 
	push de			;3651	d5 	. 
	push hl			;3652	e5 	. 
	ld de,0f0e7h		;3653	11 e7 f0 	. . . 
	inc hl			;3656	23 	# 
	ld b,00bh		;3657	06 0b 	. . 
	ld a,(de)			;3659	1a 	. 
	cp 03fh		;365a	fe 3f 	. ? 
	jr z,$+12		;365c	28 0a 	( . 
	ld c,a			;365e	4f 	O 
	call 00011h		;365f	cd 11 00 	. . . 
	and 07fh		;3662	e6 7f 	.  
	cp c			;3664	b9 	. 
	jp nz,0371ah		;3665	c2 1a 37 	. . 7 
	inc hl			;3668	23 	# 
	inc de			;3669	13 	. 
	djnz $-17		;366a	10 ed 	. . 
	pop hl			;366c	e1 	. 
	pop de			;366d	d1 	. 
	ld b,010h		;366e	06 10 	. . 
	call 00011h		;3670	cd 11 00 	. . . 
	ld (de),a			;3673	12 	. 
	inc hl			;3674	23 	# 
	inc de			;3675	13 	. 
	djnz $-6		;3676	10 f8 	. . 
	push de			;3678	d5 	. 
	push hl			;3679	e5 	. 
	ex de,hl			;367a	eb 	. 
	dec hl			;367b	2b 	+ 
	dec hl			;367c	2b 	+ 
	ld a,(hl)			;367d	7e 	~ 
	rrca			;367e	0f 	. 
	rrca			;367f	0f 	. 
	rrca			;3680	0f 	. 
	ld c,a			;3681	4f 	O 
	and 001h		;3682	e6 01 	. . 
	ld b,a			;3684	47 	G 
	ld a,c			;3685	79 	y 
	and 0e0h		;3686	e6 e0 	. . 
	dec hl			;3688	2b 	+ 
	dec hl			;3689	2b 	+ 
	or (hl)			;368a	b6 	. 
	ld c,a			;368b	4f 	O 
	ld a,(0f0d9h)		;368c	3a d9 f0 	: . . 
	push af			;368f	f5 	. 
	and (hl)			;3690	a6 	. 
	ld e,a			;3691	5f 	_ 
	pop af			;3692	f1 	. 
	or a			;3693	b7 	. 
	jr z,$+12		;3694	28 0a 	( . 
	push af			;3696	f5 	. 
	or a			;3697	b7 	. 
	rr b		;3698	cb 18 	. . 
	rr c		;369a	cb 19 	. . 
	pop af			;369c	f1 	. 
	rra			;369d	1f 	. 
	jr $-11		;369e	18 f3 	. . 
	ld (hl),b			;36a0	70 	p 
	inc hl			;36a1	23 	# 
	ld (hl),c			;36a2	71 	q 
	inc hl			;36a3	23 	# 
	inc hl			;36a4	23 	# 
	ld a,(hl)			;36a5	7e 	~ 
	rla			;36a6	17 	. 
	ld d,a			;36a7	57 	W 
	ld a,000h		;36a8	3e 00 	> . 
	adc a,e			;36aa	8b 	. 
	or a			;36ab	b7 	. 
	rra			;36ac	1f 	. 
	ld (hl),a			;36ad	77 	w 
	dec hl			;36ae	2b 	+ 
	ld a,d			;36af	7a 	z 
	rra			;36b0	1f 	. 
	ld (hl),a			;36b1	77 	w 
	inc hl			;36b2	23 	# 
	ld d,000h		;36b3	16 00 	. . 
	ld c,000h		;36b5	0e 00 	. . 
	ld a,(0f0d9h)		;36b7	3a d9 f0 	: . . 
	inc a			;36ba	3c 	< 
	or a			;36bb	b7 	. 
	rra			;36bc	1f 	. 
	rr c		;36bd	cb 19 	. . 
	cp (hl)			;36bf	be 	. 
	jr nz,$+7		;36c0	20 05 	  . 
	dec hl			;36c2	2b 	+ 
	ld a,(hl)			;36c3	7e 	~ 
	cp c			;36c4	b9 	. 
	jr z,$+4		;36c5	28 02 	( . 
	set 0,d		;36c7	cb c2 	. . 
	pop hl			;36c9	e1 	. 
	ld bc,00000h		;36ca	01 00 00 	. . . 
	ld a,(0f0dbh)		;36cd	3a db f0 	: . . 
	or a			;36d0	b7 	. 
	ld e,010h		;36d1	1e 10 	. . 
	jr z,$+4		;36d3	28 02 	( . 
	ld e,008h		;36d5	1e 08 	. . 
	call 00011h		;36d7	cd 11 00 	. . . 
	ld (0f0e5h),a		;36da	32 e5 f0 	2 . . 
	ld a,(0f0dbh)		;36dd	3a db f0 	: . . 
	or a			;36e0	b7 	. 
	ld a,(0f0e5h)		;36e1	3a e5 f0 	: . . 
	jr z,$+9		;36e4	28 07 	( . 
	inc hl			;36e6	23 	# 
	call 00011h		;36e7	cd 11 00 	. . . 
	or (ix+02dh)		;36ea	dd b6 2d 	. . - 
	or a			;36ed	b7 	. 
	jr z,$+11		;36ee	28 09 	( . 
	inc c			;36f0	0c 	. 
	inc b			;36f1	04 	. 
	dec b			;36f2	05 	. 
	jr z,$+11		;36f3	28 09 	( . 
	ld b,007h		;36f5	06 07 	. . 
	jr $+7		;36f7	18 05 	. . 
	inc b			;36f9	04 	. 
	djnz $+4		;36fa	10 02 	. . 
	ld b,001h		;36fc	06 01 	. . 
	inc hl			;36fe	23 	# 
	dec e			;36ff	1d 	. 
	jr nz,$-41		;3700	20 d5 	  . 
	pop hl			;3702	e1 	. 
	ld a,d			;3703	7a 	z 
	or b			;3704	b0 	. 
	ld (hl),a			;3705	77 	w 
	inc hl			;3706	23 	# 
	ld (hl),c			;3707	71 	q 
	inc hl			;3708	23 	# 
	ld (hl),000h		;3709	36 00 	6 . 
	inc hl			;370b	23 	# 
	ld a,(0f0bdh)		;370c	3a bd f0 	: . . 
	ld (hl),a			;370f	77 	w 
	inc hl			;3710	23 	# 
	ex de,hl			;3711	eb 	. 
	inc (ix+005h)		;3712	dd 34 05 	. 4 . 
	ld c,012h		;3715	0e 12 	. . 
	jp 03639h		;3717	c3 39 36 	. 9 6 
	pop hl			;371a	e1 	. 
	pop de			;371b	d1 	. 
	jr $-7		;371c	18 f7 	. . 
	ex de,hl			;371e	eb 	. 
	ld b,03ch		;371f	06 3c 	. < 
	ld (hl),0ffh		;3721	36 ff 	6 . 
	inc hl			;3723	23 	# 
	djnz $-3		;3724	10 fb 	. . 
	ld (0f0dch),hl		;3726	22 dc f0 	" . . 
	ld a,(0f0bdh)		;3729	3a bd f0 	: . . 
	inc a			;372c	3c 	< 
	ld (0f0beh),a		;372d	32 be f0 	2 . . 
	ld hl,0db00h		;3730	21 00 db 	! . . 
	ld b,000h		;3733	06 00 	. . 
	call 03851h		;3735	cd 51 38 	. Q 8 
	jr c,$+34		;3738	38 20 	8   
	inc c			;373a	0c 	. 
	jr nz,$+12		;373b	20 0a 	  . 
	push hl			;373d	e5 	. 
	ld de,00010h		;373e	11 10 00 	. . . 
	add hl,de			;3741	19 	. 
	ld (hl),007h		;3742	36 07 	6 . 
	pop hl			;3744	e1 	. 
	jr $+21		;3745	18 13 	. . 
	push hl			;3747	e5 	. 
	ex de,hl			;3748	eb 	. 
	ld hl,00014h		;3749	21 14 00 	! . . 
	ld b,l			;374c	45 	E 
	add hl,de			;374d	19 	. 
	ld a,(de)			;374e	1a 	. 
	ld c,a			;374f	4f 	O 
	ld a,(hl)			;3750	7e 	~ 
	ld (de),a			;3751	12 	. 
	ld (hl),c			;3752	71 	q 
	inc de			;3753	13 	. 
	inc hl			;3754	23 	# 
	djnz $-7		;3755	10 f7 	. . 
	ld b,0ffh		;3757	06 ff 	. . 
	pop hl			;3759	e1 	. 
	ex de,hl			;375a	eb 	. 
	ld hl,00014h		;375b	21 14 00 	! . . 
	add hl,de			;375e	19 	. 
	ld a,(hl)			;375f	7e 	~ 
	cp 0ffh		;3760	fe ff 	. . 
	jr nz,$-45		;3762	20 d1 	  . 
	ld a,b			;3764	78 	x 
	or a			;3765	b7 	. 
	jr nz,$-54		;3766	20 c8 	  . 
	ld hl,0db00h		;3768	21 00 db 	! . . 
	xor a			;376b	af 	. 
	ld (0f0c9h),a		;376c	32 c9 f0 	2 . . 
	ld a,(hl)			;376f	7e 	~ 
	cp 0ffh		;3770	fe ff 	. . 
	jp z,0380eh		;3772	ca 0e 38 	. . 8 
	push hl			;3775	e5 	. 
	call 03851h		;3776	cd 51 38 	. Q 8 
	ld de,0000ch		;3779	11 0c 00 	. . . 
	add hl,de			;377c	19 	. 
	ld a,(0f0c9h)		;377d	3a c9 f0 	: . . 
	or a			;3780	b7 	. 
	jr nz,$+14		;3781	20 0c 	  . 
	push hl			;3783	e5 	. 
	ld a,(hl)			;3784	7e 	~ 
	inc hl			;3785	23 	# 
	or (hl)			;3786	b6 	. 
	jr z,$+7		;3787	28 05 	( . 
	inc hl			;3789	23 	# 
	inc hl			;378a	23 	# 
	inc hl			;378b	23 	# 
	ld (hl),007h		;378c	36 07 	6 . 
	pop hl			;378e	e1 	. 
	ld a,c			;378f	79 	y 
	or a			;3790	b7 	. 
	jp m,037beh		;3791	fa be 37 	. . 7 
	jr z,$+42		;3794	28 28 	( ( 
	dec a			;3796	3d 	= 
	jr z,$+39		;3797	28 25 	( % 
	xor a			;3799	af 	. 
	ld (0f0c9h),a		;379a	32 c9 f0 	2 . . 
	pop hl			;379d	e1 	. 
	ld de,00014h		;379e	11 14 00 	. . . 
	add hl,de			;37a1	19 	. 
	push hl			;37a2	e5 	. 
	dec hl			;37a3	2b 	+ 
	dec hl			;37a4	2b 	+ 
	ld d,(hl)			;37a5	56 	V 
	dec hl			;37a6	2b 	+ 
	ld e,(hl)			;37a7	5e 	^ 
	dec hl			;37a8	2b 	+ 
	ld a,(hl)			;37a9	7e 	~ 
	cp 007h		;37aa	fe 07 	. . 
	jr nz,$+15		;37ac	20 0d 	  . 
	ex de,hl			;37ae	eb 	. 
	ld a,(0f0d7h)		;37af	3a d7 f0 	: . . 
	add hl,hl			;37b2	29 	) 
	dec a			;37b3	3d 	= 
	jr nz,$-2		;37b4	20 fc 	  . 
	ex de,hl			;37b6	eb 	. 
	dec hl			;37b7	2b 	+ 
	ld (hl),d			;37b8	72 	r 
	dec hl			;37b9	2b 	+ 
	ld (hl),e			;37ba	73 	s 
	pop hl			;37bb	e1 	. 
	jr $-77		;37bc	18 b1 	. . 
	ld (ix+011h),001h		;37be	dd 36 11 01 	. 6 . . 
	ex de,hl			;37c2	eb 	. 
	ld hl,00014h		;37c3	21 14 00 	! . . 
	add hl,de			;37c6	19 	. 
	ex de,hl			;37c7	eb 	. 
	ld a,(de)			;37c8	1a 	. 
	ld b,a			;37c9	47 	G 
	inc de			;37ca	13 	. 
	ld a,(de)			;37cb	1a 	. 
	ld c,a			;37cc	4f 	O 
	inc de			;37cd	13 	. 
	dec bc			;37ce	0b 	. 
	ld a,b			;37cf	78 	x 
	cp (hl)			;37d0	be 	. 
	inc hl			;37d1	23 	# 
	jr nz,$+4		;37d2	20 02 	  . 
	ld a,c			;37d4	79 	y 
	cp (hl)			;37d5	be 	. 
	push af			;37d6	f5 	. 
	inc bc			;37d7	03 	. 
	ld (hl),c			;37d8	71 	q 
	dec hl			;37d9	2b 	+ 
	ld (hl),b			;37da	70 	p 
	inc hl			;37db	23 	# 
	inc hl			;37dc	23 	# 
	call 03846h		;37dd	cd 46 38 	. F 8 
	ld a,(de)			;37e0	1a 	. 
	ld c,a			;37e1	4f 	O 
	ld a,(hl)			;37e2	7e 	~ 
	or a			;37e3	b7 	. 
	jr z,$+4		;37e4	28 02 	( . 
	ld a,007h		;37e6	3e 07 	> . 
	or c			;37e8	b1 	. 
	ld (hl),a			;37e9	77 	w 
	pop af			;37ea	f1 	. 
	jr z,$+4		;37eb	28 02 	( . 
	ld (hl),007h		;37ed	36 07 	6 . 
	inc hl			;37ef	23 	# 
	inc de			;37f0	13 	. 
	call 03846h		;37f1	cd 46 38 	. F 8 
	inc hl			;37f4	23 	# 
	inc de			;37f5	13 	. 
	ex de,hl			;37f6	eb 	. 
	ld bc,(0f0dch)		;37f7	ed 4b dc f0 	. K . . 
	ld a,c			;37fb	79 	y 
	sub l			;37fc	95 	. 
	ld c,a			;37fd	4f 	O 
	ld a,b			;37fe	78 	x 
	sbc a,h			;37ff	9c 	. 
	ld b,a			;3800	47 	G 
	ldir		;3801	ed b0 	. . 
	dec (ix+005h)		;3803	dd 35 05 	. 5 . 
	pop hl			;3806	e1 	. 
	push hl			;3807	e5 	. 
	ld de,00014h		;3808	11 14 00 	. . . 
	add hl,de			;380b	19 	. 
	jr $-105		;380c	18 95 	. . 
	ld hl,0da00h		;380e	21 00 da 	! . . 
	ld de,00014h		;3811	11 14 00 	. . . 
	ld a,(0f0bdh)		;3814	3a bd f0 	: . . 
	or a			;3817	b7 	. 
	jr z,$+26		;3818	28 18 	( . 
	push hl			;381a	e5 	. 
	xor a			;381b	af 	. 
	ld b,(ix+005h)		;381c	dd 46 05 	. F . 
	ld c,000h		;381f	0e 00 	. . 
	ld hl,0db13h		;3821	21 13 db 	! . . 
	cp (hl)			;3824	be 	. 
	jr z,$+27		;3825	28 19 	( . 
	add hl,de			;3827	19 	. 
	inc c			;3828	0c 	. 
	djnz $-5		;3829	10 f9 	. . 
	inc a			;382b	3c 	< 
	cp (ix+006h)		;382c	dd be 06 	. . . 
	jr c,$-19		;382f	38 eb 	8 . 
	pop hl			;3831	e1 	. 
	ld (hl),000h		;3832	36 00 	6 . 
	ld hl,0db13h		;3834	21 13 db 	! . . 
	ld b,(ix+005h)		;3837	dd 46 05 	. F . 
	ld (hl),020h		;383a	36 20 	6   
	add hl,de			;383c	19 	. 
	djnz $-3		;383d	10 fb 	. . 
	ret			;383f	c9 	. 
	ex (sp),hl			;3840	e3 	. 
	ld (hl),c			;3841	71 	q 
	inc hl			;3842	23 	# 
	ex (sp),hl			;3843	e3 	. 
	jr $-25		;3844	18 e5 	. . 
	ld a,(de)			;3846	1a 	. 
	add a,(hl)			;3847	86 	. 
	ld (hl),a			;3848	77 	w 
	inc hl			;3849	23 	# 
	inc de			;384a	13 	. 
	ld a,(de)			;384b	1a 	. 
	adc a,(hl)			;384c	8e 	. 
	ld (hl),a			;384d	77 	w 
	inc hl			;384e	23 	# 
	inc de			;384f	13 	. 
	ret			;3850	c9 	. 
	push de			;3851	d5 	. 
	push hl			;3852	e5 	. 
	ld c,00eh		;3853	0e 0e 	. . 
	ex de,hl			;3855	eb 	. 
	ld hl,00014h		;3856	21 14 00 	! . . 
	add hl,de			;3859	19 	. 
	ld a,(hl)			;385a	7e 	~ 
	cp 0ffh		;385b	fe ff 	. . 
	scf			;385d	37 	7 
	jr z,$+13		;385e	28 0b 	( . 
	or a			;3860	b7 	. 
	dec c			;3861	0d 	. 
	jp m,0386bh		;3862	fa 6b 38 	. k 8 
	ld a,(de)			;3865	1a 	. 
	cp (hl)			;3866	be 	. 
	inc hl			;3867	23 	# 
	inc de			;3868	13 	. 
	jr z,$-9		;3869	28 f5 	( . 
	pop hl			;386b	e1 	. 
	pop de			;386c	d1 	. 
	ret			;386d	c9 	. 
	call 035f7h		;386e	cd f7 35 	. . 5 
	res 6,(ix-048h)		;3871	dd cb b8 b6 	. . . . 
	ld (ix+014h),000h		;3875	dd 36 14 00 	. 6 . . 
	ld a,(0f0c4h)		;3879	3a c4 f0 	: . . 
	ld (0f0c1h),a		;387c	32 c1 f0 	2 . . 
	call 038d6h		;387f	cd d6 38 	. . 8 
	ld a,(0f0bdh)		;3882	3a bd f0 	: . . 
	or a			;3885	b7 	. 
	jp z,038b4h		;3886	ca b4 38 	. . 8 
	ld b,a			;3889	47 	G 
	ld a,(0f0c4h)		;388a	3a c4 f0 	: . . 
	add a,03ch		;388d	c6 3c 	. < 
	ld c,a			;388f	4f 	O 
	cp b			;3890	b8 	. 
	jr c,$+3		;3891	38 01 	8 . 
	ld c,b			;3893	48 	H 
	ld a,(0f0c1h)		;3894	3a c1 f0 	: . . 
	cp c			;3897	b9 	. 
	jp nc,038b4h		;3898	d2 b4 38 	. . 8 
	call 038a3h		;389b	cd a3 38 	. . 8 
	inc (ix+009h)		;389e	dd 34 09 	. 4 . 
	jr $-31		;38a1	18 df 	. . 
	call 0397ch		;38a3	cd 7c 39 	. | 9 
	push hl			;38a6	e5 	. 
	inc hl			;38a7	23 	# 
	inc hl			;38a8	23 	# 
	ld e,(hl)			;38a9	5e 	^ 
	inc hl			;38aa	23 	# 
	ld d,(hl)			;38ab	56 	V 
	inc hl			;38ac	23 	# 
	ld a,(hl)			;38ad	7e 	~ 
	ex de,hl			;38ae	eb 	. 
	call 03f2fh		;38af	cd 2f 3f 	. / ? 
	pop hl			;38b2	e1 	. 
	ret			;38b3	c9 	. 
	ld de,01500h		;38b4	11 00 15 	. . . 
	call 038c0h		;38b7	cd c0 38 	. . 8 
	call 038e5h		;38ba	cd e5 38 	. . 8 
	ld de,01602h		;38bd	11 02 16 	. . . 
	ld a,01bh		;38c0	3e 1b 	> . 
	call 03e40h		;38c2	cd 40 3e 	. @ > 
	ld a,03dh		;38c5	3e 3d 	> = 
	call 03e40h		;38c7	cd 40 3e 	. @ > 
	ld a,d			;38ca	7a 	z 
	add a,020h		;38cb	c6 20 	.   
	call 03e40h		;38cd	cd 40 3e 	. @ > 
	ld a,e			;38d0	7b 	{ 
	add a,020h		;38d1	c6 20 	.   
	jp 03e40h		;38d3	c3 40 3e 	. @ > 
	xor a			;38d6	af 	. 
	ld (0f0ceh),a		;38d7	32 ce f0 	2 . . 
	ld (0f0cfh),a		;38da	32 cf f0 	2 . . 
	ld (0f0d0h),a		;38dd	32 d0 f0 	2 . . 
	ld a,01ah		;38e0	3e 1a 	> . 
	jp 03e40h		;38e2	c3 40 3e 	. @ > 
	call 03aeeh		;38e5	cd ee 3a 	. . : 
	push af			;38e8	f5 	. 
	or a			;38e9	b7 	. 
	jr z,$+17		;38ea	28 0f 	( . 
	call 03ec4h		;38ec	cd c4 3e 	. . > 
	inc hl			;38ef	23 	# 
	inc hl			;38f0	23 	# 
	ld c,(hl)			;38f1	4e 	N 
	ld h,c			;38f2	61 	a 
	ld (hl),b			;38f3	70 	p 
	ld b,b			;38f4	40 	@ 
	ld h,h			;38f5	64 	d 
	ld a,(02420h)		;38f6	3a 20 24 	:   $ 
	jr $+15		;38f9	18 0d 	. . 
	call 03ec4h		;38fb	cd c4 3e 	. . > 
	ld d,d			;38fe	52 	R 
	ld b,c			;38ff	41 	A 
	ld c,l			;3900	4d 	M 
	ld b,h			;3901	44 	D 
	ld e,c			;3902	59 	Y 
	ld d,e			;3903	53 	S 
	ld c,e			;3904	4b 	K 
	ld a,(02420h)		;3905	3a 20 24 	:   $ 
	pop af			;3908	f1 	. 
	add a,041h		;3909	c6 41 	. A 
	call 03e40h		;390b	cd 40 3e 	. @ > 
	ld a,(0f071h)		;390e	3a 71 f0 	: q . 
	ld l,a			;3911	6f 	o 
	or a			;3912	b7 	. 
	jr z,$+12		;3913	28 0a 	( . 
	ld a,02fh		;3915	3e 2f 	> / 
	call 03e40h		;3917	cd 40 3e 	. @ > 
	ld h,000h		;391a	26 00 	& . 
	call 03f6ah		;391c	cd 6a 3f 	. j ? 
	ld hl,(0f0bdh)		;391f	2a bd f0 	* . . 
	ld h,000h		;3922	26 00 	& . 
	call 03ec4h		;3924	cd c4 3e 	. . > 
	jp p,06c50h		;3927	f2 50 6c 	. P l 
	ld l,c			;392a	69 	i 
	ld l,e			;392b	6b 	k 
	ld a,e			;392c	7b 	{ 
	ld (hl),a			;392d	77 	w 
	ld a,(02420h)		;392e	3a 20 24 	:   $ 
	call 03f76h		;3931	cd 76 3f 	. v ? 
	call 03ec4h		;3934	cd c4 3e 	. . > 
	jp p,06f50h		;3937	f2 50 6f 	. P o 
	ld a,d			;393a	7a 	z 
	ld l,a			;393b	6f 	o 
	ld (hl),e			;393c	73 	s 
	ld (hl),h			;393d	74 	t 
	ld h,c			;393e	61 	a 
	ld a,h			;393f	7c 	| 
	ld l,a			;3940	6f 	o 
	ld a,(02420h)		;3941	3a 20 24 	:   $ 
	ld hl,(0f0dah)		;3944	2a da f0 	* . . 
	push hl			;3947	e5 	. 
	ld c,01bh		;3948	0e 1b 	. . 
	call 00005h		;394a	cd 05 00 	. . . 
	pop de			;394d	d1 	. 
	push de			;394e	d5 	. 
	ld c,(hl)			;394f	4e 	N 
	inc hl			;3950	23 	# 
	ld b,008h		;3951	06 08 	. . 
	rlc c		;3953	cb 01 	. . 
	jr nc,$+5		;3955	30 03 	0 . 
	ex (sp),hl			;3957	e3 	. 
	dec hl			;3958	2b 	+ 
	ex (sp),hl			;3959	e3 	. 
	dec de			;395a	1b 	. 
	ld a,d			;395b	7a 	z 
	or e			;395c	b3 	. 
	jr z,$+6		;395d	28 04 	( . 
	djnz $-12		;395f	10 f2 	. . 
	jr $-18		;3961	18 ec 	. . 
	pop hl			;3963	e1 	. 
	ld a,(0f0d7h)		;3964	3a d7 f0 	: . . 
	sub 003h		;3967	d6 03 	. . 
	dec a			;3969	3d 	= 
	jp m,03970h		;396a	fa 70 39 	. p 9 
	add hl,hl			;396d	29 	) 
	jr $-5		;396e	18 f9 	. . 
	call 03f6ah		;3970	cd 6a 3f 	. j ? 
	call 03ec4h		;3973	cd c4 3e 	. . > 
	jr nz,$+77		;3976	20 4b 	  K 
	ld b,d			;3978	42 	B 
	inc h			;3979	24 	$ 
	ret			;397a	c9 	. 
	ld b,006h		;397b	06 06 	. . 
	nop			;397d	00 	. 
	ld a,(0f0bdh)		;397e	3a bd f0 	: . . 
	or a			;3981	b7 	. 
	ret z			;3982	c8 	. 
	ld a,(0f0c1h)		;3983	3a c1 f0 	: . . 
	sub (ix+00ch)		;3986	dd 96 0c 	. . . 
	ld c,000h		;3989	0e 00 	. . 
	inc c			;398b	0c 	. 
	sub 014h		;398c	d6 14 	. . 
	jr nc,$-3		;398e	30 fb 	0 . 
	add a,014h		;3990	c6 14 	. . 
	ld d,a			;3992	57 	W 
	xor a			;3993	af 	. 
	dec c			;3994	0d 	. 
	jr z,$+6		;3995	28 04 	( . 
	add a,01bh		;3997	c6 1b 	. . 
	jr $-5		;3999	18 f9 	. . 
	ld e,a			;399b	5f 	_ 
	call 038c0h		;399c	cd c0 38 	. . 8 
	call 039e0h		;399f	cd e0 39 	. . 9 
	ld hl,00013h		;39a2	21 13 00 	! . . 
	add hl,de			;39a5	19 	. 
	ld a,(hl)			;39a6	7e 	~ 
	call 03e40h		;39a7	cd 40 3e 	. @ > 
	ld a,b			;39aa	78 	x 
	or a			;39ab	b7 	. 
	push af			;39ac	f5 	. 
	jr nz,$+7		;39ad	20 05 	  . 
	call 03e3eh		;39af	cd 3e 3e 	. > > 
	jr $+9		;39b2	18 07 	. . 
	call 03ec4h		;39b4	cd c4 3e 	. . > 
	ld a,01bh		;39b7	3e 1b 	> . 
	ld d,e			;39b9	53 	S 
	inc h			;39ba	24 	$ 
	ld hl,00001h		;39bb	21 01 00 	! . . 
	add hl,de			;39be	19 	. 
	call 03f0fh		;39bf	cd 0f 3f 	. . ? 
	pop af			;39c2	f1 	. 
	ret z			;39c3	c8 	. 
	call 03ec4h		;39c4	cd c4 3e 	. . > 
	dec de			;39c7	1b 	. 
	ld d,h			;39c8	54 	T 
	inc h			;39c9	24 	$ 
	ret			;39ca	c9 	. 
	ld a,(0f0c4h)		;39cb	3a c4 f0 	: . . 
	add a,(ix+00bh)		;39ce	dd 86 0b 	. . . 
	ld (0f0c1h),a		;39d1	32 c1 f0 	2 . . 
	ret			;39d4	c9 	. 
	xor a			;39d5	af 	. 
	ld (0f0c1h),a		;39d6	32 c1 f0 	2 . . 
	call 03a25h		;39d9	cd 25 3a 	. % : 
	ret c			;39dc	d8 	. 
	call 039cbh		;39dd	cd cb 39 	. . 9 
	ld a,(0f0cah)		;39e0	3a ca f0 	: . . 
	or a			;39e3	b7 	. 
	ld a,(0f0c1h)		;39e4	3a c1 f0 	: . . 
	jr z,$+8		;39e7	28 06 	( . 
	ld hl,0da00h		;39e9	21 00 da 	! . . 
	add a,l			;39ec	85 	. 
	ld l,a			;39ed	6f 	o 
	ld a,(hl)			;39ee	7e 	~ 
	ld h,000h		;39ef	26 00 	& . 
	ld l,a			;39f1	6f 	o 
	ld e,l			;39f2	5d 	] 
	ld d,h			;39f3	54 	T 
	add hl,hl			;39f4	29 	) 
	add hl,hl			;39f5	29 	) 
	add hl,de			;39f6	19 	. 
	add hl,hl			;39f7	29 	) 
	add hl,hl			;39f8	29 	) 
	ld de,0db00h		;39f9	11 00 db 	. . . 
	add hl,de			;39fc	19 	. 
	ex de,hl			;39fd	eb 	. 
	ret			;39fe	c9 	. 
	ld a,(0f0bdh)		;39ff	3a bd f0 	: . . 
	or a			;3a02	b7 	. 
	ret z			;3a03	c8 	. 
	dec hl			;3a04	2b 	+ 
	dec hl			;3a05	2b 	+ 
	dec hl			;3a06	2b 	+ 
	bit 7,(hl)		;3a07	cb 7e 	. ~ 
	call z,03e38h		;3a09	cc 38 3e 	. 8 > 
	jr z,$+10		;3a0c	28 08 	( . 
	call 03ec4h		;3a0e	cd c4 3e 	. . > 
	jr nz,$+84		;3a11	20 52 	  R 
	cpl			;3a13	2f 	/ 
	ld c,a			;3a14	4f 	O 
	inc h			;3a15	24 	$ 
	inc hl			;3a16	23 	# 
	bit 7,(hl)		;3a17	cb 7e 	. ~ 
	jp z,03e38h		;3a19	ca 38 3e 	. 8 > 
	call 03ec4h		;3a1c	cd c4 3e 	. . > 
	jr nz,$+85		;3a1f	20 53 	  S 
	ld e,c			;3a21	59 	Y 
	ld d,e			;3a22	53 	S 
	inc h			;3a23	24 	$ 
	ret			;3a24	c9 	. 
	ld a,(0f0bdh)		;3a25	3a bd f0 	: . . 
	or a			;3a28	b7 	. 
	ret z			;3a29	c8 	. 
	ld c,a			;3a2a	4f 	O 
	ld a,(0f0c1h)		;3a2b	3a c1 f0 	: . . 
	cp c			;3a2e	b9 	. 
	ret nc			;3a2f	d0 	. 
	call 03df1h		;3a30	cd f1 3d 	. . = 
	jr z,$+8		;3a33	28 06 	( . 
	call 03de2h		;3a35	cd e2 3d 	. . = 
	cp 01bh		;3a38	fe 1b 	. . 
	ret z			;3a3a	c8 	. 
	call 039e0h		;3a3b	cd e0 39 	. . 9 
	inc (ix+009h)		;3a3e	dd 34 09 	. 4 . 
	ld hl,00013h		;3a41	21 13 00 	! . . 
	add hl,de			;3a44	19 	. 
	ld a,(hl)			;3a45	7e 	~ 
	cp 02ah		;3a46	fe 2a 	. * 
	jr nz,$-35		;3a48	20 db 	  . 
	scf			;3a4a	37 	7 
	ret			;3a4b	c9 	. 
	ld hl,0f076h		;3a4c	21 76 f0 	! v . 
	push hl			;3a4f	e5 	. 
	ld b,00ch		;3a50	06 0c 	. . 
	xor a			;3a52	af 	. 
	and 07fh		;3a53	e6 7f 	.  
	ld (hl),a			;3a55	77 	w 
	inc hl			;3a56	23 	# 
	inc de			;3a57	13 	. 
	ld a,(de)			;3a58	1a 	. 
	djnz $-6		;3a59	10 f8 	. . 
	ld b,036h		;3a5b	06 36 	. 6 
	xor a			;3a5d	af 	. 
	ld (hl),a			;3a5e	77 	w 
	inc hl			;3a5f	23 	# 
	djnz $-2		;3a60	10 fc 	. . 
	inc de			;3a62	13 	. 
	inc de			;3a63	13 	. 
	inc de			;3a64	13 	. 
	inc de			;3a65	13 	. 
	ld a,(de)			;3a66	1a 	. 
	ld (0f0bch),a		;3a67	32 bc f0 	2 . . 
	pop de			;3a6a	d1 	. 
	ret			;3a6b	c9 	. 
	ld de,00100h		;3a6c	11 00 01 	. . . 
	push de			;3a6f	d5 	. 
	call 03af6h		;3a70	cd f6 3a 	. . : 
	call 03b31h		;3a73	cd 31 3b 	. 1 ; 
	pop hl			;3a76	e1 	. 
	ret nz			;3a77	c0 	. 
	ld de,00080h		;3a78	11 80 00 	. . . 
	add hl,de			;3a7b	19 	. 
	ex de,hl			;3a7c	eb 	. 
	ld a,d			;3a7d	7a 	z 
	cp 0f0h		;3a7e	fe f0 	. . 
	jr c,$-17		;3a80	38 ed 	8 . 
	scf			;3a82	37 	7 
	ret			;3a83	c9 	. 
	ld hl,00100h		;3a84	21 00 01 	! . . 
	ld (0f0deh),hl		;3a87	22 de f0 	" . . 
	ld (0f0e0h),hl		;3a8a	22 e0 f0 	" . . 
	ex de,hl			;3a8d	eb 	. 
	ld a,b			;3a8e	78 	x 
	or c			;3a8f	b1 	. 
	ret z			;3a90	c8 	. 
	push bc			;3a91	c5 	. 
	push de			;3a92	d5 	. 
	call 03af6h		;3a93	cd f6 3a 	. . : 
	ld de,0f076h		;3a96	11 76 f0 	. v . 
	call 03b31h		;3a99	cd 31 3b 	. 1 ; 
	pop hl			;3a9c	e1 	. 
	jr nz,$+30		;3a9d	20 1c 	  . 
	ld c,(ix+019h)		;3a9f	dd 4e 19 	. N . 
	ld b,080h		;3aa2	06 80 	. . 
	call 00011h		;3aa4	cd 11 00 	. . . 
	add a,c			;3aa7	81 	. 
	ld c,a			;3aa8	4f 	O 
	inc hl			;3aa9	23 	# 
	djnz $-6		;3aaa	10 f8 	. . 
	ld (ix+019h),c		;3aac	dd 71 19 	. q . 
	ld (0f0e0h),hl		;3aaf	22 e0 f0 	" . . 
	ex de,hl			;3ab2	eb 	. 
	pop bc			;3ab3	c1 	. 
	dec bc			;3ab4	0b 	. 
	ld a,d			;3ab5	7a 	z 
	cp 0dah		;3ab6	fe da 	. . 
	jr c,$-42		;3ab8	38 d4 	8 . 
	ret			;3aba	c9 	. 
	pop bc			;3abb	c1 	. 
	ret			;3abc	c9 	. 
	ld hl,(0f0deh)		;3abd	2a de f0 	* . . 
	ex de,hl			;3ac0	eb 	. 
	ld hl,(0f0e0h)		;3ac1	2a e0 f0 	* . . 
	ld a,e			;3ac4	7b 	{ 
	sub l			;3ac5	95 	. 
	ld a,d			;3ac6	7a 	z 
	sbc a,h			;3ac7	9c 	. 
	ret nc			;3ac8	d0 	. 
	push de			;3ac9	d5 	. 
	call 03af6h		;3aca	cd f6 3a 	. . : 
	ld de,0f097h		;3acd	11 97 f0 	. . . 
	call 03b2dh		;3ad0	cd 2d 3b 	. - ; 
	pop de			;3ad3	d1 	. 
	scf			;3ad4	37 	7 
	ret nz			;3ad5	c0 	. 
	ld hl,00080h		;3ad6	21 80 00 	! . . 
	add hl,de			;3ad9	19 	. 
	ld (0f0deh),hl		;3ada	22 de f0 	" . . 
	jr $-32		;3add	18 de 	. . 
	ld a,(0f0b8h)		;3adf	3a b8 f0 	: . . 
	dec a			;3ae2	3d 	= 
	ld e,a			;3ae3	5f 	_ 
	ld c,00eh		;3ae4	0e 0e 	. . 
	jp 00005h		;3ae6	c3 05 00 	. . . 
	ld c,00dh		;3ae9	0e 0d 	. . 
	jp 00005h		;3aeb	c3 05 00 	. . . 
	ld c,019h		;3aee	0e 19 	. . 
	jp 00005h		;3af0	c3 05 00 	. . . 
	ld de,00080h		;3af3	11 80 00 	. . . 
	ld c,01ah		;3af6	0e 1a 	. . 
	jp 00005h		;3af8	c3 05 00 	. . . 
	call 039ddh		;3afb	cd dd 39 	. . 9 
	call 03a4ch		;3afe	cd 4c 3a 	. L : 
	jp 03b0bh		;3b01	c3 0b 3b 	. . ; 
	xor a			;3b04	af 	. 
	ld (0f096h),a		;3b05	32 96 f0 	2 . . 
	ld de,0f076h		;3b08	11 76 f0 	. v . 
	ld c,00fh		;3b0b	0e 0f 	. . 
	call 00005h		;3b0d	cd 05 00 	. . . 
	ld (0f06dh),a		;3b10	32 6d f0 	2 m . 
	inc a			;3b13	3c 	< 
	ret			;3b14	c9 	. 
	ld de,0f076h		;3b15	11 76 f0 	. v . 
	ld c,010h		;3b18	0e 10 	. . 
	jp 03b0dh		;3b1a	c3 0d 3b 	. . ; 
	ld de,0f076h		;3b1d	11 76 f0 	. v . 
	ld c,011h		;3b20	0e 11 	. . 
	jp 03b0dh		;3b22	c3 0d 3b 	. . ; 
	ld de,0f076h		;3b25	11 76 f0 	. v . 
	ld c,013h		;3b28	0e 13 	. . 
	jp 00005h		;3b2a	c3 05 00 	. . . 
	ld c,015h		;3b2d	0e 15 	. . 
	jr $+7		;3b2f	18 05 	. . 
	ld de,0f076h		;3b31	11 76 f0 	. v . 
	ld c,014h		;3b34	0e 14 	. . 
	call 00005h		;3b36	cd 05 00 	. . . 
	or a			;3b39	b7 	. 
	ret			;3b3a	c9 	. 
	push de			;3b3b	d5 	. 
	ld c,013h		;3b3c	0e 13 	. . 
	call 00005h		;3b3e	cd 05 00 	. . . 
	pop de			;3b41	d1 	. 
	ld c,016h		;3b42	0e 16 	. . 
	jp 03b0dh		;3b44	c3 0d 3b 	. . ; 
	ld de,0f076h		;3b47	11 76 f0 	. v . 
	ld c,017h		;3b4a	0e 17 	. . 
	jp 00005h		;3b4c	c3 05 00 	. . . 
	ld e,(ix-047h)		;3b4f	dd 5e b9 	. ^ . 
	jr $+4		;3b52	18 02 	. . 
	ld e,0ffh		;3b54	1e ff 	. . 
	ld c,020h		;3b56	0e 20 	.   
	jp 00005h		;3b58	c3 05 00 	. . . 
	push hl			;3b5b	e5 	. 
	ld hl,(0f0e2h)		;3b5c	2a e2 f0 	* . . 
	ex (sp),hl			;3b5f	e3 	. 
	call 03e98h		;3b60	cd 98 3e 	. . > 
	call 03df1h		;3b63	cd f1 3d 	. . = 
	jp nz,03c1bh		;3b66	c2 1b 3c 	. . < 
	xor a			;3b69	af 	. 
	ld (0f0e4h),a		;3b6a	32 e4 f0 	2 . . 
	ex (sp),hl			;3b6d	e3 	. 
	call 03c2eh		;3b6e	cd 2e 3c 	. . < 
	ex (sp),hl			;3b71	e3 	. 
	ld a,l			;3b72	7d 	} 
	and 00fh		;3b73	e6 0f 	. . 
	ld b,a			;3b75	47 	G 
	ld c,0ffh		;3b76	0e ff 	. . 
	jr z,$+22		;3b78	28 14 	( . 
	inc c			;3b7a	0c 	. 
	ld a,c			;3b7b	79 	y 
	and 003h		;3b7c	e6 03 	. . 
	call z,03e3eh		;3b7e	cc 3e 3e 	. > > 
	call 03e3eh		;3b81	cd 3e 3e 	. > > 
	ld a,02dh		;3b84	3e 2d 	> - 
	call 03e40h		;3b86	cd 40 3e 	. @ > 
	call 03e40h		;3b89	cd 40 3e 	. @ > 
	djnz $-18		;3b8c	10 ec 	. . 
	push hl			;3b8e	e5 	. 
	call 03e3eh		;3b8f	cd 3e 3e 	. > > 
	ld a,l			;3b92	7d 	} 
	and 003h		;3b93	e6 03 	. . 
	call z,03e3eh		;3b95	cc 3e 3e 	. > > 
	call 00011h		;3b98	cd 11 00 	. . . 
	call 03c33h		;3b9b	cd 33 3c 	. 3 < 
	call 03c24h		;3b9e	cd 24 3c 	. $ < 
	jr nc,$+27		;3ba1	30 19 	0 . 
	ld a,l			;3ba3	7d 	} 
	cpl			;3ba4	2f 	/ 
	inc a			;3ba5	3c 	< 
	and 00fh		;3ba6	e6 0f 	. . 
	jr z,$+25		;3ba8	28 17 	( . 
	ld c,a			;3baa	4f 	O 
	add a,a			;3bab	87 	. 
	add a,c			;3bac	81 	. 
	ld b,a			;3bad	47 	G 
	ld a,c			;3bae	79 	y 
	rrca			;3baf	0f 	. 
	rrca			;3bb0	0f 	. 
	and 003h		;3bb1	e6 03 	. . 
	add a,b			;3bb3	80 	. 
	ld b,a			;3bb4	47 	G 
	call 03e3eh		;3bb5	cd 3e 3e 	. > > 
	djnz $-3		;3bb8	10 fb 	. . 
	jr $+7		;3bba	18 05 	. . 
	ld a,l			;3bbc	7d 	} 
	and 00fh		;3bbd	e6 0f 	. . 
	jr nz,$-48		;3bbf	20 ce 	  . 
	pop hl			;3bc1	e1 	. 
	call 03e30h		;3bc2	cd 30 3e 	. 0 > 
	ld a,l			;3bc5	7d 	} 
	and 00fh		;3bc6	e6 0f 	. . 
	ld b,a			;3bc8	47 	G 
	jr z,$+7		;3bc9	28 05 	( . 
	call 03e3eh		;3bcb	cd 3e 3e 	. > > 
	djnz $-3		;3bce	10 fb 	. . 
	call 00011h		;3bd0	cd 11 00 	. . . 
	ld c,a			;3bd3	4f 	O 
	ld a,(0f0e4h)		;3bd4	3a e4 f0 	: . . 
	add a,c			;3bd7	81 	. 
	ld (0f0e4h),a		;3bd8	32 e4 f0 	2 . . 
	ld a,c			;3bdb	79 	y 
	and 07fh		;3bdc	e6 7f 	.  
	ld c,02eh		;3bde	0e 2e 	. . 
	cp 020h		;3be0	fe 20 	.   
	jr c,$+7		;3be2	38 05 	8 . 
	cp 07fh		;3be4	fe 7f 	.  
	jr nc,$+3		;3be6	30 01 	0 . 
	ld c,a			;3be8	4f 	O 
	ld a,c			;3be9	79 	y 
	call 03e40h		;3bea	cd 40 3e 	. @ > 
	ex (sp),hl			;3bed	e3 	. 
	inc hl			;3bee	23 	# 
	ex (sp),hl			;3bef	e3 	. 
	call 03c24h		;3bf0	cd 24 3c 	. $ < 
	jr c,$+19		;3bf3	38 11 	8 . 
	ld a,l			;3bf5	7d 	} 
	and 00fh		;3bf6	e6 0f 	. . 
	jr nz,$-40		;3bf8	20 d6 	  . 
	call 03e3bh		;3bfa	cd 3b 3e 	. ; > 
	ld a,(0f0e4h)		;3bfd	3a e4 f0 	: . . 
	call 03c33h		;3c00	cd 33 3c 	. 3 < 
	jp 03b60h		;3c03	c3 60 3b 	. ` ; 
	ld a,l			;3c06	7d 	} 
	and 00fh		;3c07	e6 0f 	. . 
	jr z,$+8		;3c09	28 06 	( . 
	call 03e3eh		;3c0b	cd 3e 3e 	. > > 
	inc hl			;3c0e	23 	# 
	jr $-9		;3c0f	18 f5 	. . 
	call 03e3bh		;3c11	cd 3b 3e 	. ; > 
	ld a,(0f0e4h)		;3c14	3a e4 f0 	: . . 
	call 03c33h		;3c17	cd 33 3c 	. 3 < 
	scf			;3c1a	37 	7 
	ex (sp),hl			;3c1b	e3 	. 
	ld (0f0e2h),hl		;3c1c	22 e2 f0 	" . . 
	call 03e98h		;3c1f	cd 98 3e 	. . > 
	pop hl			;3c22	e1 	. 
	ret			;3c23	c9 	. 
	inc hl			;3c24	23 	# 
	ld a,h			;3c25	7c 	| 
	or l			;3c26	b5 	. 
	scf			;3c27	37 	7 
	ret z			;3c28	c8 	. 
	ld a,e			;3c29	7b 	{ 
	sub l			;3c2a	95 	. 
	ld a,d			;3c2b	7a 	z 
	sbc a,h			;3c2c	9c 	. 
	ret			;3c2d	c9 	. 
	ld a,h			;3c2e	7c 	| 
	call 03c33h		;3c2f	cd 33 3c 	. 3 < 
	ld a,l			;3c32	7d 	} 
	push af			;3c33	f5 	. 
	rrca			;3c34	0f 	. 
	rrca			;3c35	0f 	. 
	rrca			;3c36	0f 	. 
	rrca			;3c37	0f 	. 
	and 00fh		;3c38	e6 0f 	. . 
	call 03c40h		;3c3a	cd 40 3c 	. @ < 
	pop af			;3c3d	f1 	. 
	and 00fh		;3c3e	e6 0f 	. . 
	call 03c46h		;3c40	cd 46 3c 	. F < 
	jp 03e40h		;3c43	c3 40 3e 	. @ > 
	add a,090h		;3c46	c6 90 	. . 
	daa			;3c48	27 	' 
	adc a,040h		;3c49	ce 40 	. @ 
	daa			;3c4b	27 	' 
	ret			;3c4c	c9 	. 
	call 00011h		;3c4d	cd 11 00 	. . . 
	cp 01ah		;3c50	fe 1a 	. . 
	ret z			;3c52	c8 	. 
	call 03e9dh		;3c53	cd 9d 3e 	. . > 
	call 03df1h		;3c56	cd f1 3d 	. . = 
	ret nz			;3c59	c0 	. 
	call 03c24h		;3c5a	cd 24 3c 	. $ < 
	jr nc,$-16		;3c5d	30 ee 	0 . 
	ret			;3c5f	c9 	. 
	call 03ec4h		;3c60	cd c4 3e 	. . > 
	ld c,(hl)			;3c63	4e 	N 
	ld l,a			;3c64	6f 	o 
	ld (hl),a			;3c65	77 	w 
	ld h,c			;3c66	61 	a 
	jr nz,$+112		;3c67	20 6e 	  n 
	ld h,c			;3c69	61 	a 
	ld a,d			;3c6a	7a 	z 
	ld (hl),a			;3c6b	77 	w 
	ld h,c			;3c6c	61 	a 
	jr nz,$+60		;3c6d	20 3a 	  : 
	inc h			;3c6f	24 	$ 
	jr $+19		;3c70	18 11 	. . 
	call 03ec4h		;3c72	cd c4 3e 	. . > 
	ld d,b			;3c75	50 	P 
	ld l,a			;3c76	6f 	o 
	ld h,h			;3c77	64 	d 
	ld h,c			;3c78	61 	a 
	ld l,d			;3c79	6a 	j 
	jr nz,$+109		;3c7a	20 6b 	  k 
	ld l,h			;3c7c	6c 	l 
	ld (hl),l			;3c7d	75 	u 
	ld h,e			;3c7e	63 	c 
	ld a,d			;3c7f	7a 	z 
	jr nz,$+60		;3c80	20 3a 	  : 
	inc h			;3c82	24 	$ 
	call 03cdch		;3c83	cd dc 3c 	. . < 
	ret c			;3c86	d8 	. 
	ret z			;3c87	c8 	. 
	inc hl			;3c88	23 	# 
	ld de,0f0a3h		;3c89	11 a3 f0 	. . . 
	ld b,00bh		;3c8c	06 0b 	. . 
	dec de			;3c8e	1b 	. 
	ld a,020h		;3c8f	3e 20 	>   
	ld (de),a			;3c91	12 	. 
	djnz $-4		;3c92	10 fa 	. . 
	ld b,009h		;3c94	06 09 	. . 
	call 00011h		;3c96	cd 11 00 	. . . 
	or a			;3c99	b7 	. 
	jr z,$+33		;3c9a	28 1f 	( . 
	inc hl			;3c9c	23 	# 
	cp 02eh		;3c9d	fe 2e 	. . 
	jr z,$+9		;3c9f	28 07 	( . 
	call 03cbdh		;3ca1	cd bd 3c 	. . < 
	jr nz,$-14		;3ca4	20 f0 	  . 
	scf			;3ca6	37 	7 
	ret			;3ca7	c9 	. 
	ld de,0f0a0h		;3ca8	11 a0 f0 	. . . 
	ld b,004h		;3cab	06 04 	. . 
	call 00011h		;3cad	cd 11 00 	. . . 
	or a			;3cb0	b7 	. 
	jr z,$+10		;3cb1	28 08 	( . 
	inc hl			;3cb3	23 	# 
	call 03cbdh		;3cb4	cd bd 3c 	. . < 
	jr nz,$-10		;3cb7	20 f4 	  . 
	scf			;3cb9	37 	7 
	ret			;3cba	c9 	. 
	inc a			;3cbb	3c 	< 
	ret			;3cbc	c9 	. 
	cp 03fh		;3cbd	fe 3f 	. ? 
	jr nz,$+9		;3cbf	20 07 	  . 
	ld (0f0cbh),a		;3cc1	32 cb f0 	2 . . 
	ld (de),a			;3cc4	12 	. 
	inc de			;3cc5	13 	. 
	dec b			;3cc6	05 	. 
	ret			;3cc7	c9 	. 
	cp 02ah		;3cc8	fe 2a 	. * 
	jr nz,$-6		;3cca	20 f8 	  . 
	ld a,03fh		;3ccc	3e 3f 	> ? 
	ld (0f0cbh),a		;3cce	32 cb f0 	2 . . 
	ld (de),a			;3cd1	12 	. 
	inc de			;3cd2	13 	. 
	dec b			;3cd3	05 	. 
	ret z			;3cd4	c8 	. 
	ld a,b			;3cd5	78 	x 
	cp 001h		;3cd6	fe 01 	. . 
	jr nz,$-12		;3cd8	20 f2 	  . 
	or a			;3cda	b7 	. 
	ret			;3cdb	c9 	. 
	ld hl,00081h		;3cdc	21 81 00 	! . . 
	xor a			;3cdf	af 	. 
	ld (0f0cbh),a		;3ce0	32 cb f0 	2 . . 
	ld (hl),020h		;3ce3	36 20 	6   
	ld (0f074h),hl		;3ce5	22 74 f0 	" t . 
	inc hl			;3ce8	23 	# 
	ld c,001h		;3ce9	0e 01 	. . 
	call 03de2h		;3ceb	cd e2 3d 	. . = 
	cp 01bh		;3cee	fe 1b 	. . 
	scf			;3cf0	37 	7 
	ret z			;3cf1	c8 	. 
	cp 00dh		;3cf2	fe 0d 	. . 
	jr z,$+41		;3cf4	28 27 	( ' 
	cp 07fh		;3cf6	fe 7f 	.  
	jr nz,$+4		;3cf8	20 02 	  . 
	ld a,008h		;3cfa	3e 08 	> . 
	cp 008h		;3cfc	fe 08 	. . 
	jr nz,$+17		;3cfe	20 0f 	  . 
	dec c			;3d00	0d 	. 
	jr z,$-24		;3d01	28 e6 	( . 
	dec hl			;3d03	2b 	+ 
	ld (hl),000h		;3d04	36 00 	6 . 
	call 03ec4h		;3d06	cd c4 3e 	. . > 
	ex af,af'			;3d09	08 	. 
	jr nz,$+10		;3d0a	20 08 	  . 
	inc h			;3d0c	24 	$ 
	jr $-34		;3d0d	18 dc 	. . 
	call 03e40h		;3d0f	cd 40 3e 	. @ > 
	ld (hl),a			;3d12	77 	w 
	inc hl			;3d13	23 	# 
	inc c			;3d14	0c 	. 
	ld a,c			;3d15	79 	y 
	cp 041h		;3d16	fe 41 	. A 
	jr c,$-45		;3d18	38 d1 	8 . 
	dec c			;3d1a	0d 	. 
	jr $-24		;3d1b	18 e6 	. . 
	ld (hl),000h		;3d1d	36 00 	6 . 
	ld hl,00080h		;3d1f	21 80 00 	! . . 
	dec c			;3d22	0d 	. 
	jr z,$+6		;3d23	28 04 	( . 
	inc c			;3d25	0c 	. 
	ld (hl),c			;3d26	71 	q 
	inc hl			;3d27	23 	# 
	ret			;3d28	c9 	. 
	ld (hl),c			;3d29	71 	q 
	inc hl			;3d2a	23 	# 
	ld (hl),c			;3d2b	71 	q 
	ret			;3d2c	c9 	. 
	call 03ec4h		;3d2d	cd c4 3e 	. . > 
	ld c,(hl)			;3d30	4e 	N 
	ld h,c			;3d31	61 	a 
	ld (hl),b			;3d32	70 	p 
	ld b,b			;3d33	40 	@ 
	ld h,h			;3d34	64 	d 
	ld a,(02420h)		;3d35	3a 20 24 	:   $ 
	call 03e0bh		;3d38	cd 0b 3e 	. . > 
	cp 01bh		;3d3b	fe 1b 	. . 
	jr z,$+24		;3d3d	28 16 	( . 
	cp 055h		;3d3f	fe 55 	. U 
	jr z,$+24		;3d41	28 16 	( . 
	sub 041h		;3d43	d6 41 	. A 
	jp c,03dcch		;3d45	da cc 3d 	. . = 
	ld c,a			;3d48	4f 	O 
	push bc			;3d49	c5 	. 
	call 0f21bh		;3d4a	cd 1b f2 	. . . 
	pop bc			;3d4d	c1 	. 
	inc c			;3d4e	0c 	. 
	ld a,h			;3d4f	7c 	| 
	or l			;3d50	b5 	. 
	jr z,$+123		;3d51	28 79 	( y 
	ld a,c			;3d53	79 	y 
	ret			;3d54	c9 	. 
	pop bc			;3d55	c1 	. 
	jp 035efh		;3d56	c3 ef 35 	. . 5 
	call 03ec4h		;3d59	cd c4 3e 	. . > 
	ld a,l			;3d5c	7d 	} 
	ld a,c			;3d5d	79 	y 
	ld (hl),h			;3d5e	74 	t 
	ld l,e			;3d5f	6b 	k 
	ld l,a			;3d60	6f 	o 
	ld (hl),a			;3d61	77 	w 
	ld l,(hl)			;3d62	6e 	n 
	ld l,c			;3d63	69 	i 
	ld l,e			;3d64	6b 	k 
	jr nz,$+60		;3d65	20 3a 	  : 
	jr nz,$+38		;3d67	20 24 	  $ 
	ld e,000h		;3d69	1e 00 	. . 
	call 03de2h		;3d6b	cd e2 3d 	. . = 
	cp 01bh		;3d6e	fe 1b 	. . 
	jr z,$-27		;3d70	28 e3 	( . 
	cp 00dh		;3d72	fe 0d 	. . 
	jr z,$+56		;3d74	28 36 	( 6 
	ld e,a			;3d76	5f 	_ 
	cp 03fh		;3d77	fe 3f 	. ? 
	jp z,03e40h		;3d79	ca 40 3e 	. @ > 
	call 03e40h		;3d7c	cd 40 3e 	. @ > 
	sub 030h		;3d7f	d6 30 	. 0 
	jr c,$+47		;3d81	38 2d 	8 - 
	cp 00ah		;3d83	fe 0a 	. . 
	jr nc,$+43		;3d85	30 29 	0 ) 
	ld e,a			;3d87	5f 	_ 
	call 03de2h		;3d88	cd e2 3d 	. . = 
	cp 020h		;3d8b	fe 20 	.   
	jr z,$+31		;3d8d	28 1d 	( . 
	cp 00dh		;3d8f	fe 0d 	. . 
	jr z,$+27		;3d91	28 19 	( . 
	call 03e40h		;3d93	cd 40 3e 	. @ > 
	push af			;3d96	f5 	. 
	ld a,e			;3d97	7b 	{ 
	add a,a			;3d98	87 	. 
	add a,a			;3d99	87 	. 
	add a,e			;3d9a	83 	. 
	add a,a			;3d9b	87 	. 
	ld e,a			;3d9c	5f 	_ 
	pop af			;3d9d	f1 	. 
	sub 030h		;3d9e	d6 30 	. 0 
	jr c,$+16		;3da0	38 0e 	8 . 
	cp 00ah		;3da2	fe 0a 	. . 
	jr nc,$+12		;3da4	30 0a 	0 . 
	add a,e			;3da6	83 	. 
	ld e,a			;3da7	5f 	_ 
	cp 020h		;3da8	fe 20 	.   
	jr nc,$+6		;3daa	30 04 	0 . 
	ld a,03fh		;3dac	3e 3f 	> ? 
	or a			;3dae	b7 	. 
	ret			;3daf	c9 	. 
	call 03ec4h		;3db0	cd c4 3e 	. . > 
	jp p,07c7ah		;3db3	f2 7a 7c 	. z | 
	ld a,c			;3db6	79 	y 
	jr nz,$+112		;3db7	20 6e 	  n 
	ld (hl),l			;3db9	75 	u 
	ld l,l			;3dba	6d 	m 
	ld h,l			;3dbb	65 	e 
	ld (hl),d			;3dbc	72 	r 
	jr nz,$+119		;3dbd	20 75 	  u 
	ld a,l			;3dbf	7d 	} 
	ld a,c			;3dc0	79 	y 
	ld (hl),h			;3dc1	74 	t 
	ld l,e			;3dc2	6b 	k 
	ld l,a			;3dc3	6f 	o 
	ld (hl),a			;3dc4	77 	w 
	ld l,(hl)			;3dc5	6e 	n 
	ld l,c			;3dc6	69 	i 
	ld l,e			;3dc7	6b 	k 
	ld h,c			;3dc8	61 	a 
	inc h			;3dc9	24 	$ 
	scf			;3dca	37 	7 
	ret			;3dcb	c9 	. 
	call 0302fh		;3dcc	cd 2f 30 	. / 0 
	call 03ec4h		;3dcf	cd c4 3e 	. . > 
	jr nz,$+112		;3dd2	20 6e 	  n 
	ld h,c			;3dd4	61 	a 
	ld (hl),b			;3dd5	70 	p 
	ld b,b			;3dd6	40 	@ 
	ld h,h			;3dd7	64 	d 
	ld (hl),l			;3dd8	75 	u 
	inc h			;3dd9	24 	$ 
	scf			;3dda	37 	7 
	ret			;3ddb	c9 	. 
	call 03df1h		;3ddc	cd f1 3d 	. . = 
	ret z			;3ddf	c8 	. 
	jr $+7		;3de0	18 05 	. . 
	call 03dfah		;3de2	cd fa 3d 	. . = 
	jr z,$-3		;3de5	28 fb 	( . 
	exx			;3de7	d9 	. 
	ld c,006h		;3de8	0e 06 	. . 
	ld e,0ffh		;3dea	1e ff 	. . 
	call 00005h		;3dec	cd 05 00 	. . . 
	exx			;3def	d9 	. 
	ret			;3df0	c9 	. 
	exx			;3df1	d9 	. 
	ld c,00bh		;3df2	0e 0b 	. . 
	call 00005h		;3df4	cd 05 00 	. . . 
	exx			;3df7	d9 	. 
	or a			;3df8	b7 	. 
	ret			;3df9	c9 	. 
	exx			;3dfa	d9 	. 
	ld c,006h		;3dfb	0e 06 	. . 
	ld e,0feh		;3dfd	1e fe 	. . 
	call 00005h		;3dff	cd 05 00 	. . . 
	exx			;3e02	d9 	. 
	or a			;3e03	b7 	. 
	ret			;3e04	c9 	. 
	cp 020h		;3e05	fe 20 	.   
	jp nc,0f20ch		;3e07	d2 0c f2 	. . . 
	ret			;3e0a	c9 	. 
	call 03de2h		;3e0b	cd e2 3d 	. . = 
	exx			;3e0e	d9 	. 
	ld c,a			;3e0f	4f 	O 
	call 03e05h		;3e10	cd 05 3e 	. . > 
	exx			;3e13	d9 	. 
	cp 061h		;3e14	fe 61 	. a 
	ret c			;3e16	d8 	. 
	cp 07bh		;3e17	fe 7b 	. { 
	ret nc			;3e19	d0 	. 
	and 05fh		;3e1a	e6 5f 	. _ 
	ret			;3e1c	c9 	. 
	call 03ec4h		;3e1d	cd c4 3e 	. . > 
	ld a,(bc)			;3e20	0a 	. 
	ld hl,(06f6bh)		;3e21	2a 6b 6f 	* k o 
	ld l,(hl)			;3e24	6e 	n 
	ld l,c			;3e25	69 	i 
	ld h,l			;3e26	65 	e 
	ld h,e			;3e27	63 	c 
	ld hl,(0cd24h)		;3e28	2a 24 cd 	* $ . 
	jp m,0283dh		;3e2b	fa 3d 28 	. = ( 
	ei			;3e2e	fb 	. 
	ret			;3e2f	c9 	. 
	call 03e3bh		;3e30	cd 3b 3e 	. ; > 
	jr $+11		;3e33	18 09 	. . 
	call 03e3eh		;3e35	cd 3e 3e 	. > > 
	call 03e3bh		;3e38	cd 3b 3e 	. ; > 
	call 03e3eh		;3e3b	cd 3e 3e 	. > > 
	ld a,020h		;3e3e	3e 20 	>   
	push af			;3e40	f5 	. 
	exx			;3e41	d9 	. 
	ld c,a			;3e42	4f 	O 
	ld a,(0f26bh)		;3e43	3a 6b f2 	: k . 
	bit 1,a		;3e46	cb 4f 	. O 
	jr z,$+4		;3e48	28 02 	( . 
	res 7,c		;3e4a	cb b9 	. . 
	bit 4,(ix-048h)		;3e4c	dd cb b8 66 	. . . f 
	jr nz,$+39		;3e50	20 25 	  % 
	bit 6,(ix-048h)		;3e52	dd cb b8 76 	. . . v 
	jr z,$+27		;3e56	28 19 	( . 
	bit 5,(ix-048h)		;3e58	dd cb b8 6e 	. . . n 
	jr z,$+16		;3e5c	28 0e 	( . 
	ld hl,03e7fh		;3e5e	21 7f 3e 	!  > 
	ld a,(hl)			;3e61	7e 	~ 
	or a			;3e62	b7 	. 
	jr z,$+9		;3e63	28 07 	( . 
	cp c			;3e65	b9 	. 
	inc hl			;3e66	23 	# 
	ld a,(hl)			;3e67	7e 	~ 
	inc hl			;3e68	23 	# 
	jr nz,$-8		;3e69	20 f6 	  . 
	ld c,a			;3e6b	4f 	O 
	call 0f20fh		;3e6c	cd 0f f2 	. . . 
	jr $+5		;3e6f	18 03 	. . 
	call 0f20ch		;3e71	cd 0c f2 	. . . 
	exx			;3e74	d9 	. 
	pop af			;3e75	f1 	. 
	ret			;3e76	c9 	. 
	ld e,c			;3e77	59 	Y 
	ld c,002h		;3e78	0e 02 	. . 
	call 00005h		;3e7a	cd 05 00 	. . . 
	jr $-9		;3e7d	18 f5 	. . 
	ld h,b			;3e7f	60 	` 
	ld h,c			;3e80	61 	a 
	ld b,b			;3e81	40 	@ 
	ld h,l			;3e82	65 	e 
	ld a,(hl)			;3e83	7e 	~ 
	ld h,e			;3e84	63 	c 
	ld e,(hl)			;3e85	5e 	^ 
	ld (hl),e			;3e86	73 	s 
	ld a,l			;3e87	7d 	} 
	ld a,d			;3e88	7a 	z 
	ld e,l			;3e89	5d 	] 
	ld l,(hl)			;3e8a	6e 	n 
	ld a,e			;3e8b	7b 	{ 
	ld l,a			;3e8c	6f 	o 
	ld e,e			;3e8d	5b 	[ 
	ld a,d			;3e8e	7a 	z 
	ld a,h			;3e8f	7c 	| 
	ld l,h			;3e90	6c 	l 
	ld e,h			;3e91	5c 	\ 
	ld c,h			;3e92	4c 	L 
	nop			;3e93	00 	. 
	ld a,00dh		;3e94	3e 0d 	> . 
	jr $+7		;3e96	18 05 	. . 
	call 03e94h		;3e98	cd 94 3e 	. . > 
	ld a,00ah		;3e9b	3e 0a 	> . 
	push hl			;3e9d	e5 	. 
	push af			;3e9e	f5 	. 
	ld hl,0f0d2h		;3e9f	21 d2 f0 	! . . 
	cp 00dh		;3ea2	fe 0d 	. . 
	jr nz,$+4		;3ea4	20 02 	  . 
	ld (hl),000h		;3ea6	36 00 	6 . 
	cp 009h		;3ea8	fe 09 	. . 
	jr nz,$+15		;3eaa	20 0d 	  . 
	ld a,020h		;3eac	3e 20 	>   
	call 03e40h		;3eae	cd 40 3e 	. @ > 
	inc (hl)			;3eb1	34 	4 
	ld a,(hl)			;3eb2	7e 	~ 
	and 007h		;3eb3	e6 07 	. . 
	jr nz,$-9		;3eb5	20 f5 	  . 
	jr $+10		;3eb7	18 08 	. . 
	cp 020h		;3eb9	fe 20 	.   
	jr c,$+3		;3ebb	38 01 	8 . 
	inc (hl)			;3ebd	34 	4 
	call 03e40h		;3ebe	cd 40 3e 	. @ > 
	pop af			;3ec1	f1 	. 
	pop hl			;3ec2	e1 	. 
	ret			;3ec3	c9 	. 
	set 5,(ix-048h)		;3ec4	dd cb b8 ee 	. . . . 
	call 03f00h		;3ec8	cd 00 3f 	. . ? 
	ex (sp),hl			;3ecb	e3 	. 
	ld a,(hl)			;3ecc	7e 	~ 
	inc hl			;3ecd	23 	# 
	cp 024h		;3ece	fe 24 	. $ 
	ex (sp),hl			;3ed0	e3 	. 
	jr z,$+28		;3ed1	28 1a 	( . 
	cp 0f0h		;3ed3	fe f0 	. . 
	jr nc,$+12		;3ed5	30 0a 	0 . 
	cp 00ah		;3ed7	fe 0a 	. . 
	call nz,03e40h		;3ed9	c4 40 3e 	. @ > 
	call z,03e98h		;3edc	cc 98 3e 	. . > 
	jr $-20		;3edf	18 ea 	. . 
	and 00fh		;3ee1	e6 0f 	. . 
	push af			;3ee3	f5 	. 
	call 03e3eh		;3ee4	cd 3e 3e 	. > > 
	pop af			;3ee7	f1 	. 
	dec a			;3ee8	3d 	= 
	jr nz,$-6		;3ee9	20 f8 	  . 
	jr $-32		;3eeb	18 de 	. . 
	res 5,(ix-048h)		;3eed	dd cb b8 ae 	. . . . 
	bit 6,(ix-048h)		;3ef1	dd cb b8 76 	. . . v 
	ret nz			;3ef5	c0 	. 
	ld a,01bh		;3ef6	3e 1b 	> . 
	call 03e40h		;3ef8	cd 40 3e 	. @ > 
	ld a,04fh		;3efb	3e 4f 	> O 
	jp 03e40h		;3efd	c3 40 3e 	. @ > 
	bit 6,(ix-048h)		;3f00	dd cb b8 76 	. . . v 
	ret nz			;3f04	c0 	. 
	ld a,01bh		;3f05	3e 1b 	> . 
	call 03e40h		;3f07	cd 40 3e 	. @ > 
	ld a,050h		;3f0a	3e 50 	> P 
	jp 03e40h		;3f0c	c3 40 3e 	. @ > 
	ld b,008h		;3f0f	06 08 	. . 
	call 03f23h		;3f11	cd 23 3f 	. # ? 
	ld a,02eh		;3f14	3e 2e 	> . 
	call 03e40h		;3f16	cd 40 3e 	. @ > 
	ld b,003h		;3f19	06 03 	. . 
	call 03f23h		;3f1b	cd 23 3f 	. # ? 
	ld a,020h		;3f1e	3e 20 	>   
	jp 03e40h		;3f20	c3 40 3e 	. @ > 
	call 00011h		;3f23	cd 11 00 	. . . 
	inc hl			;3f26	23 	# 
	and 07fh		;3f27	e6 7f 	.  
	call 03e40h		;3f29	cd 40 3e 	. @ > 
	djnz $-9		;3f2c	10 f5 	. . 
	ret			;3f2e	c9 	. 
	cp 007h		;3f2f	fe 07 	. . 
	jr nz,$+12		;3f31	20 0a 	  . 
	call 03ec4h		;3f33	cd c4 3e 	. . > 
	jp p,04e52h		;3f36	f2 52 4e 	. R N 
	ld b,h			;3f39	44 	D 
	inc h			;3f3a	24 	$ 
	jr $+5		;3f3b	18 03 	. . 
	call 03f70h		;3f3d	cd 70 3f 	. p ? 
	call 03fb0h		;3f40	cd b0 3f 	. . ? 
	ld (ix+008h),004h		;3f43	dd 36 08 04 	. 6 . . 
	ld c,005h		;3f47	0e 05 	. . 
	push hl			;3f49	e5 	. 
	ld de,02710h		;3f4a	11 10 27 	. . ' 
	call 03f7ch		;3f4d	cd 7c 3f 	. | ? 
	ld de,003e8h		;3f50	11 e8 03 	. . . 
	call 03f7ch		;3f53	cd 7c 3f 	. | ? 
	ld de,00064h		;3f56	11 64 00 	. d . 
	call 03f7ch		;3f59	cd 7c 3f 	. | ? 
	ld de,0000ah		;3f5c	11 0a 00 	. . . 
	call 03f7ch		;3f5f	cd 7c 3f 	. | ? 
	ld de,00001h		;3f62	11 01 00 	. . . 
	call 03f8ah		;3f65	cd 8a 3f 	. . ? 
	pop hl			;3f68	e1 	. 
	ret			;3f69	c9 	. 
	ld (ix+008h),001h		;3f6a	dd 36 08 01 	. 6 . . 
	jr $-39		;3f6e	18 d7 	. . 
	ld (ix+008h),005h		;3f70	dd 36 08 05 	. 6 . . 
	jr $-45		;3f74	18 d1 	. . 
	ld (ix+008h),003h		;3f76	dd 36 08 03 	. 6 . . 
	jr $-51		;3f7a	18 cb 	. . 
	ld a,(0f0c0h)		;3f7c	3a c0 f0 	: . . 
	or a			;3f7f	b7 	. 
	jr z,$+10		;3f80	28 08 	( . 
	ld a,l			;3f82	7d 	} 
	sub e			;3f83	93 	. 
	ld a,h			;3f84	7c 	| 
	sbc a,d			;3f85	9a 	. 
	jr nc,$+4		;3f86	30 02 	0 . 
	dec c			;3f88	0d 	. 
	ret			;3f89	c9 	. 
	ld a,(0f0c0h)		;3f8a	3a c0 f0 	: . . 
	sub c			;3f8d	91 	. 
	jr z,$+10		;3f8e	28 08 	( . 
	jr c,$+8		;3f90	38 06 	8 . 
	ld b,a			;3f92	47 	G 
	call 03e3eh		;3f93	cd 3e 3e 	. > > 
	djnz $-3		;3f96	10 fb 	. . 
	xor a			;3f98	af 	. 
	ld (0f0c0h),a		;3f99	32 c0 f0 	2 . . 
	ld b,000h		;3f9c	06 00 	. . 
	or a			;3f9e	b7 	. 
	sbc hl,de		;3f9f	ed 52 	. R 
	inc b			;3fa1	04 	. 
	jr nc,$-4		;3fa2	30 fa 	0 . 
	add hl,de			;3fa4	19 	. 
	dec b			;3fa5	05 	. 
	ld a,030h		;3fa6	3e 30 	> 0 
	add a,b			;3fa8	80 	. 
	jp 03e40h		;3fa9	c3 40 3e 	. @ > 
	ld a,007h		;3fac	3e 07 	> . 
	jr $+5		;3fae	18 03 	. . 
	ld a,(0f0d8h)		;3fb0	3a d8 f0 	: . . 
	ld c,a			;3fb3	4f 	O 
	and l			;3fb4	a5 	. 
	push af			;3fb5	f5 	. 
	ld a,c			;3fb6	79 	y 
	cpl			;3fb7	2f 	/ 
	and l			;3fb8	a5 	. 
	ld l,a			;3fb9	6f 	o 
	pop af			;3fba	f1 	. 
	jr z,$+10		;3fbb	28 08 	( . 
	ld a,c			;3fbd	79 	y 
	inc a			;3fbe	3c 	< 
	add a,l			;3fbf	85 	. 
	ld l,a			;3fc0	6f 	o 
	ld a,h			;3fc1	7c 	| 
	adc a,000h		;3fc2	ce 00 	. . 
	ld h,a			;3fc4	67 	g 
	ld c,003h		;3fc5	0e 03 	. . 
	or a			;3fc7	b7 	. 
	rr h		;3fc8	cb 1c 	. . 
	rr l		;3fca	cb 1d 	. . 
	dec c			;3fcc	0d 	. 
	jr nz,$-6		;3fcd	20 f8 	  . 
	ret			;3fcf	c9 	. 
	ld a,(0f070h)		;3fd0	3a 70 f0 	: p . 
	and 080h		;3fd3	e6 80 	. . 
	rrca			;3fd5	0f 	. 
	or (ix-048h)		;3fd6	dd b6 b8 	. . . 
	ld (0f070h),a		;3fd9	32 70 f0 	2 p . 
	ret			;3fdc	c9 	. 
	ld hl,00080h		;3fdd	21 80 00 	! . . 
	and 003h		;3fe0	e6 03 	. . 
	rrca			;3fe2	0f 	. 
	rrca			;3fe3	0f 	. 
	rrca			;3fe4	0f 	. 
	add a,l			;3fe5	85 	. 
	ld l,a			;3fe6	6f 	o 
	ret			;3fe7	c9 	. 
	xor a			;3fe8	af 	. 
	ld (0f0bfh),a		;3fe9	32 bf f0 	2 . . 
	ld hl,00000h		;3fec	21 00 00 	! . . 
	ld (0f0d3h),hl		;3fef	22 d3 f0 	" . . 
	ld (0f0d5h),hl		;3ff2	22 d5 f0 	" . . 
	ret			;3ff5	c9 	. 
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
