;;; Segment 0800 (0800:0000)

;; fn0800_0000: 0800:0000
fn0800_0000 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	mov	ax,[bp+04]
	mov	[bp-04],ax
	mov	ax,0001
	cmp	ax,[bp-04]
	ja	0039

l0800_001C:
	mov	[bp-02],ax
	jmp	0024

l0800_0021:
	inc	word ptr [bp-02]

l0800_0024:
	mov	dx,03DA

l0800_0027:
	in	al,dx
	and	al,08
	jz	0027

l0800_002C:
	in	al,dx
	and	al,08
	jnz	002C

l0800_0031:
	mov	ax,[bp-02]
	cmp	ax,[bp-04]
	jnz	0021

l0800_0039:
	leave
	ret	0002
0800:003D                                        1E 50 53              .PS
0800:0040 51 B8 FB 28 8E D8 30 FF 88 F9 E4 60 A2 52 8E 88 Q..(..0....`.R..
0800:0050 C3 80 E3 7F D0 E0 F5 80 D1 00 88 8F 54 8E E4 61 ............T..a
0800:0060 88 C4 0C 80 E6 61 88 E0 90 90 90 E6 61 FA B0 20 .....a......a.. 
0800:0070 E6 20 FB 59 5B 58 1F CF C3                      . .Y[X...      

;; fn0800_0079: 0800:0079
fn0800_0079 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	push	ax
	push	bx
	push	es
	mov	ax,4300
	int	2F
	mov	[bp-02],al
	cmp	al,80
	jnz	00A3

l0800_0096:
	mov	ax,4310
	int	2F
	mov	[8DFC],bx
	mov	[8DFE],es

l0800_00A3:
	pop	es
	pop	bx
	pop	ax
	cmp	byte ptr [bp-02],80
	jnz	00B2

l0800_00AC:
	mov	byte ptr [bp-01],01
	jmp	00B6

l0800_00B2:
	mov	byte ptr [bp-01],00

l0800_00B6:
	mov	al,[bp-01]
	leave
	ret

;; fn0800_00BB: 0800:00BB
fn0800_00BB proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	push	ax
	mov	ah,08
	call	dword ptr [8DFC]
	mov	[bp-04],ax
	pop	ax
	mov	ax,[bp-04]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret
0800:00DF                                              20                 
0800:00E0 53 69 6B 65 72 74 65 6C 65 6E 20 58 4D 53 20 6D Sikertelen XMS m
0800:00F0 65 6D A2 72 69 61 20 66 6F 67 6C 61 6C A0 73 21 em.ria foglal.s!

;; fn0800_0100: 0800:0100
fn0800_0100 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	mov	ah,09
	mov	dx,[bp+04]
	call	dword ptr [8DFC]
	mov	[bp-04],dx
	mov	[8C96],ax
	cmp	word ptr [8C96],00
	jnz	0150

l0800_0124:
	call	far 2234:0000
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,00DF
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l0800_0150:
	mov	ax,[bp-04]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret	0002

;; fn0800_015D: 0800:015D
fn0800_015D proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ah,0A
	mov	dx,[bp+04]
	call	dword ptr [8DFC]
	leave
	ret	0002

;; fn0800_0174: 0800:0174
fn0800_0174 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	018A

l0800_0186:
	inc	word ptr [51FA]

l0800_018A:
	push	40
	call	0100
	mov	di,[51FA]
	shl	di,01
	mov	[di+8E00],ax
	cmp	word ptr [51FA],0E
	jnz	0186

l0800_01A0:
	leave
	ret

;; fn0800_01A2: 0800:01A2
fn0800_01A2 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	01B8

l0800_01B4:
	inc	word ptr [51FA]

l0800_01B8:
	mov	di,[51FA]
	shl	di,01
	push	word ptr [di+8E00]
	call	015D
	cmp	word ptr [51FA],0E
	jnz	01B4

l0800_01CC:
	leave
	ret

;; fn0800_01CE: 0800:01CE
fn0800_01CE proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	word ptr [8C90]
	push	word ptr [8C8E]
	push	8CE0
	call	far 2733:029F
	push	word ptr [8C94]
	push	word ptr [8C92]
	push	E6
	call	far 2733:029F
	cmp	byte ptr [2786],00
	jz	0230

l0800_01FE:
	push	word ptr [2756]
	push	word ptr [2754]
	push	2134
	call	far 2733:029F
	push	word ptr [275A]
	push	word ptr [2758]
	push	03E8
	call	far 2733:029F
	push	word ptr [275E]
	push	word ptr [275C]
	push	03E8
	call	far 2733:029F
	jmp	0270

l0800_0230:
	cmp	word ptr [2746],00
	jbe	0270

l0800_0237:
	push	word ptr [2756]
	push	word ptr [2754]
	imul	ax,[2746],11
	push	ax
	call	far 2733:029F
	push	word ptr [275A]
	push	word ptr [2758]
	mov	ax,[2746]
	shl	ax,01
	push	ax
	call	far 2733:029F
	push	word ptr [275E]
	push	word ptr [275C]
	mov	ax,[2746]
	shl	ax,01
	push	ax
	call	far 2733:029F

l0800_0270:
	push	word ptr [28E0]
	push	word ptr [28DE]
	imul	ax,[28DA],29
	push	ax
	call	far 2733:029F
	call	01A2
	leave
	ret
0800:0288                         0D 48 69 62 61 3A 20 58         .Hiba: X
0800:0290 4D 53 42 45 20 28                               MSBE (         

;; fn0800_0296: 0800:0296
fn0800_0296 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	mov	di,[bp+14]
	shl	di,01
	mov	ax,[di+8E00]
	mov	[bp-04],ax
	mov	ax,[bp+0C]
	mov	dx,[bp+0E]
	mov	[8E2E],ax
	mov	[8E30],dx
	xor	ax,ax
	mov	[8E32],ax
	les	di,[bp+10]
	mov	ax,es
	xor	dx,dx
	xor	cx,cx
	mov	bx,0001
	call	far 2733:0E82
	mov	cx,ax
	mov	bx,dx
	les	di,[bp+10]
	mov	ax,di
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	mov	[8E34],ax
	mov	[8E36],dx
	mov	ax,[bp-04]
	mov	[8E38],ax
	mov	ax,[bp+08]
	mov	dx,[bp+0A]
	mov	[8E3A],ax
	mov	[8E3C],dx
	mov	ah,0B
	mov	si,[8E2C]
	mov	ds,[8E2A]
	call	dword ptr [8DFC]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	les	di,[bp+04]
	mov	es:[di],ax
	cmp	word ptr [bp-02],00
	jnz	036D

l0800_031C:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,0288
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	ax,[bp-02]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	push	29
	push	00
	call	far 2733:08DE
	call	far 2733:0840
	call	far 2733:04F4
	push	09
	push	word ptr [F2F0]
	push	word ptr [F2EE]
	call	far 26BA:008A
	mov	al,00
	out	60,al
	xor	ax,ax
	call	far 2733:0116

l0800_036D:
	leave
	ret	0012
0800:0371    0D 48 69 62 61 3A 20 58 4D 53 42 45 20 28     .Hiba: XMSBE (

;; fn0800_037F: 0800:037F
fn0800_037F proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	mov	di,[bp+14]
	shl	di,01
	mov	ax,[di+8E00]
	mov	[bp-04],ax
	mov	ax,[bp+0C]
	mov	dx,[bp+0E]
	mov	[8E2E],ax
	mov	[8E30],dx
	mov	ax,[bp-04]
	mov	[8E32],ax
	mov	ax,[bp+08]
	mov	dx,[bp+0A]
	mov	[8E34],ax
	mov	[8E36],dx
	xor	ax,ax
	mov	[8E38],ax
	les	di,[bp+10]
	mov	ax,es
	xor	dx,dx
	xor	cx,cx
	mov	bx,0001
	call	far 2733:0E82
	mov	cx,ax
	mov	bx,dx
	les	di,[bp+10]
	mov	ax,di
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	mov	[8E3A],ax
	mov	[8E3C],dx
	mov	ah,0B
	mov	si,[8E2C]
	mov	ds,[8E2A]
	call	dword ptr [8DFC]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	les	di,[bp+04]
	mov	es:[di],ax
	cmp	word ptr [bp-02],00
	jnz	0456

l0800_0405:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,0371
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	ax,[bp-02]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	push	29
	push	00
	call	far 2733:08DE
	call	far 2733:0840
	call	far 2733:04F4
	push	09
	push	word ptr [F2F0]
	push	word ptr [F2EE]
	call	far 26BA:008A
	mov	al,00
	out	60,al
	xor	ax,ax
	call	far 2733:0116

l0800_0456:
	leave
	ret	0012

;; fn0800_045A: 0800:045A
fn0800_045A proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[bp-02],ax
	mov	word ptr [51FA],00E0
	jmp	0479

l0800_0475:
	inc	word ptr [51FA]

l0800_0479:
	inc	word ptr [bp-02]
	mov	ax,[bp-02]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,[8FFE]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C1
	call	far 2733:15E1
	mov	[bp-04],ax
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+45F1],dl
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+45F1],dl
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+45F1],dl
	cmp	word ptr [51FA],00EF
	jnz	0475

l0800_04F3:
	xor	ax,ax
	mov	[51FA],ax
	jmp	04FE

l0800_04FA:
	inc	word ptr [51FA]

l0800_04FE:
	mov	al,[51FA]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+45F1]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+45F1]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+45F1]
	push	ax
	call	far 2234:0A14
	cmp	word ptr [51FA],00FF
	jnz	04FA

l0800_0545:
	leave
	ret

;; fn0800_0547: 0800:0547
fn0800_0547 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	xor	ax,ax
	mov	[51FA],ax
	jmp	055C

l0800_0558:
	inc	word ptr [51FA]

l0800_055C:
	mov	al,[51FA]
	push	ax
	push	00
	push	00
	push	00
	call	far 2234:0A14
	cmp	word ptr [51FA],00FF
	jnz	0558

l0800_0573:
	leave
	ret

;; fn0800_0575: 0800:0575
fn0800_0575 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[51FA],ax
	jmp	058E

l0800_058A:
	inc	word ptr [51FA]

l0800_058E:
	mov	al,[51FA]
	push	ax
	lea	di,[bp-04]
	push	ss
	push	di
	call	far 2234:0A36
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+4EF7],dl
	mov	dl,[bp-03]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+4EF7],dl
	mov	dl,[bp-02]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+4EF7],dl
	cmp	word ptr [51FA],00FF
	jnz	058A

l0800_05E0:
	leave
	ret

;; fn0800_05E2: 0800:05E2
fn0800_05E2 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[51FA],ax
	jmp	05FB

l0800_05F7:
	inc	word ptr [51FA]

l0800_05FB:
	mov	al,[51FA]
	push	ax
	lea	di,[bp-04]
	push	ss
	push	di
	call	far 2234:0A36
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl
	mov	dl,[bp-03]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl
	mov	dl,[bp-02]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+48F3],dl
	cmp	word ptr [51FA],00FF
	jnz	05F7

l0800_064D:
	mov	word ptr [51FC],0001
	jmp	0659

l0800_0655:
	inc	word ptr [51FC]

l0800_0659:
	mov	word ptr [51FA],0001
	jmp	0665

l0800_0661:
	inc	word ptr [51FA]

l0800_0665:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	069D

l0800_0678:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_069D:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	06D8

l0800_06B1:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_06D8:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	0716

l0800_06ED:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+48F3],dl

l0800_0716:
	mov	al,[51FA]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	call	far 2234:0A14
	cmp	word ptr [51FA],00FF
	jz	0760

l0800_075D:
	jmp	0661

l0800_0760:
	push	0F
	call	far 26D1:02A8
	cmp	word ptr [51FC],40
	jz	0771

l0800_076E:
	jmp	0655

l0800_0771:
	leave
	ret

;; fn0800_0773: 0800:0773
fn0800_0773 proc
	push	bp
	mov	bp,sp
	mov	ax,0010
	call	far 2733:0530
	sub	sp,10
	xor	ax,ax
	mov	[51FA],ax
	jmp	078C

l0800_0788:
	inc	word ptr [51FA]

l0800_078C:
	mov	al,[51FA]
	push	ax
	lea	di,[bp-04]
	push	ss
	push	di
	call	far 2234:0A36
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl
	mov	dl,[bp-03]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl
	mov	dl,[bp-02]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+48F3],dl
	cmp	word ptr [51FA],00FF
	jnz	0788

l0800_07DE:
	mov	al,[8FF6]
	xor	ah,ah
	shl	ax,02
	cwd
	call	far 2733:15D5
	mov	[bp-0A],ax
	mov	[bp-08],bx
	mov	[bp-06],dx
	mov	ax,[bp-0A]
	mov	bx,[bp-08]
	mov	dx,[bp-06]
	mov	cx,0087
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	mov	[bp-10],ax
	mov	[bp-0E],bx
	mov	[bp-0C],dx
	mov	word ptr [51FC],0001
	jmp	081F

l0800_081B:
	inc	word ptr [51FC]

l0800_081F:
	mov	ax,[bp-0A]
	mov	bx,[bp-08]
	mov	dx,[bp-06]
	mov	cx,[bp-10]
	mov	si,[bp-0E]
	mov	di,[bp-0C]
	call	far 2733:15B5
	mov	[bp-0A],ax
	mov	[bp-08],bx
	mov	[bp-06],dx
	mov	ax,[bp-0A]
	mov	bx,[bp-08]
	mov	dx,[bp-06]
	call	far 2733:15E1
	push	ax
	les	di,[8ED8]
	call	dword ptr es:[di+2C]
	mov	word ptr [51FA],0001
	jmp	0862

l0800_085E:
	inc	word ptr [51FA]

l0800_0862:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	089A

l0800_0875:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_089A:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	08D5

l0800_08AE:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_08D5:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	cmp	byte ptr [di+48F3],00
	jbe	0913

l0800_08EA:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	dec	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+48F3],dl

l0800_0913:
	mov	al,[51FA]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	call	far 2234:0A14
	cmp	word ptr [51FA],00FF
	jz	095D

l0800_095A:
	jmp	085E

l0800_095D:
	push	1E
	call	far 26D1:02A8
	cmp	word ptr [51FC],40
	jz	096E

l0800_096B:
	jmp	081B

l0800_096E:
	leave
	ret

;; fn0800_0970: 0800:0970
fn0800_0970 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[bp-02],ax
	mov	word ptr [51FA],00E0
	jmp	098F

l0800_098B:
	inc	word ptr [51FA]

l0800_098F:
	inc	word ptr [bp-02]
	mov	ax,[bp-02]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,[8FFE]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C1
	call	far 2733:15E1
	mov	[bp-04],ax
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+45F1],dl
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+45F1],dl
	mov	dl,[bp-04]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+45F1],dl
	cmp	word ptr [51FA],00EF
	jnz	098B

l0800_0A09:
	xor	ax,ax
	mov	[51FA],ax
	jmp	0A14

l0800_0A10:
	inc	word ptr [51FA]

l0800_0A14:
	mov	di,[51FA]
	mov	byte ptr [di+48F3],00
	cmp	word ptr [51FA],00FF
	jnz	0A10

l0800_0A25:
	mov	word ptr [51FC],0001
	jmp	0A31

l0800_0A2D:
	inc	word ptr [51FC]

l0800_0A31:
	push	0F
	call	far 26D1:02A8
	mov	word ptr [51FA],0001
	jmp	0A44

l0800_0A40:
	inc	word ptr [51FA]

l0800_0A44:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	dl,[di+45F1]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	cmp	al,dl
	jnc	0A8D

l0800_0A68:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	inc	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_0A8D:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	dl,[di+45F1]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	cmp	al,dl
	jnc	0ADA

l0800_0AB3:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	inc	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+48F3],dl

l0800_0ADA:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	dl,[di+45F1]
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	cmp	al,dl
	jnc	0B2B

l0800_0B02:
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	xor	ah,ah
	inc	ax
	mov	dl,al
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+48F3],dl

l0800_0B2B:
	mov	al,[51FA]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	mov	ax,[51FA]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+48F3]
	push	ax
	call	far 2234:0A14
	cmp	word ptr [51FA],00FF
	jz	0B75

l0800_0B72:
	jmp	0A40

l0800_0B75:
	cmp	word ptr [51FC],40
	jz	0B7F

l0800_0B7C:
	jmp	0A2D

l0800_0B7F:
	leave
	ret

;; fn0800_0B81: 0800:0B81
fn0800_0B81 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	push	word ptr [bp+04]
	call	far 2234:05BE
	mov	[bp-02],ax
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	push	word ptr [bp+04]
	mov	di,[8CD2]
	shl	di,01
	mov	ax,[di+8CD2]
	les	di,[8C8E]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:05EA
	mov	ax,[8CD2]
	inc	ax
	mov	[8CD2],ax
	mov	ax,[8CD2]
	dec	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8CD2]
	add	ax,[bp-02]
	mov	di,[8CD2]
	shl	di,01
	mov	[di+8CD2],ax
	leave
	ret	0008

;; fn0800_0BEE: 0800:0BEE
fn0800_0BEE proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	00
	push	00
	push	11
	push	11
	call	0B81
	push	12
	push	00
	push	23
	push	11
	call	0B81
	push	24
	push	00
	push	35
	push	11
	call	0B81
	push	36
	push	00
	push	47
	push	11
	call	0B81
	push	48
	push	00
	push	66
	push	05
	call	0B81
	push	67
	push	00
	push	76
	push	0F
	call	0B81
	push	76
	push	00
	push	0085
	push	0F
	call	0B81
	push	00
	push	13
	push	43
	push	3C
	call	0B81
	push	45
	push	13
	push	0085
	push	3C
	call	0B81
	push	00
	push	3E
	push	43
	push	67
	call	0B81
	push	44
	push	3E
	push	0084
	push	67
	call	0B81
	push	00
	push	68
	push	40
	push	0091
	call	0B81
	push	41
	push	68
	push	0081
	push	0091
	call	0B81
	push	00
	push	0092
	push	40
	push	00AF
	call	0B81
	push	41
	push	0092
	push	0081
	push	00AF
	call	0B81
	push	00
	push	00B0
	push	40
	push	00CD
	call	0B81
	push	41
	push	00B0
	push	0081
	push	00CD
	call	0B81
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	6978
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	cmp	byte ptr [2786],00
	jz	0CF7

l0800_0CE3:
	mov	byte ptr [0F9B],00
	push	00
	push	00
	push	008A
	push	00D1
	call	far 2234:0139

l0800_0CF7:
	leave
	ret

;; fn0800_0CF9: 0800:0CF9
fn0800_0CF9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	mov	di,[bp+04]
	shl	di,01
	mov	ax,[di+8CD2]
	les	di,[8C8E]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:06E9
	leave
	ret	0006

;; fn0800_0D27: 0800:0D27
fn0800_0D27 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+04]
	shl	di,02
	push	word ptr [di+0738]
	mov	di,[bp+04]
	shl	di,02
	push	word ptr [di+073A]
	mov	di,[bp+04]
	mov	al,[di+2957]
	cbw
	inc	ax
	push	ax
	call	0CF9
	leave
	ret	0002

;; fn0800_0D56: 0800:0D56
fn0800_0D56 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	push	word ptr [di+074C]
	mov	di,[bp+04]
	shl	di,01
	mov	ax,[di+2974]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074E]
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	add	ax,[di+0750]
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	push	ax
	push	05
	call	0CF9
	leave
	ret	0002

;; fn0800_0DAB: 0800:0DAB
fn0800_0DAB proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	mov	word ptr [bp-02],0001
	jmp	0DC3

l0800_0DC0:
	inc	word ptr [bp-02]

l0800_0DC3:
	push	word ptr [bp-02]
	call	0D56
	cmp	word ptr [bp-02],03
	jnz	0DC0

l0800_0DCF:
	leave
	ret

;; fn0800_0DD1: 0800:0DD1
fn0800_0DD1 proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074A]
	mov	[bp-06],ax
	mov	ax,0001
	cmp	ax,[bp-06]
	ja	0E53

l0800_0DF9:
	mov	[bp-02],ax
	jmp	0E01

l0800_0DFE:
	inc	word ptr [bp-02]

l0800_0E01:
	mov	ax,[bp-02]
	mov	di,[bp+04]
	shl	di,01
	cmp	ax,[di+2960]
	jnz	0E16

l0800_0E0F:
	mov	word ptr [bp-04],0001
	jmp	0E1B

l0800_0E16:
	xor	ax,ax
	mov	[bp-04],ax

l0800_0E1B:
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	push	word ptr [di+0746]
	mov	ax,[bp-02]
	dec	ax
	imul	ax,ax,18
	mov	di,[bp+04]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	add	ax,[di+0748]
	push	ax
	mov	ax,[bp-04]
	add	ax,0003
	push	ax
	call	0CF9
	mov	ax,[bp-02]
	cmp	ax,[bp-06]
	jnz	0DFE

l0800_0E53:
	leave
	ret	0002

;; fn0800_0E57: 0800:0E57
fn0800_0E57 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	word ptr [bp-02],0001
	jmp	0E6F

l0800_0E6C:
	inc	word ptr [bp-02]

l0800_0E6F:
	push	word ptr [bp-02]
	call	0DD1
	cmp	word ptr [bp-02],01
	jnz	0E6C

l0800_0E7B:
	leave
	ret

;; fn0800_0E7D: 0800:0E7D
fn0800_0E7D proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	word ptr [bp-02],0001
	jmp	0E95

l0800_0E92:
	inc	word ptr [bp-02]

l0800_0E95:
	push	word ptr [bp-02]
	call	0D27
	cmp	word ptr [bp-02],04
	jnz	0E92

l0800_0EA1:
	leave
	ret

;; fn0800_0EA3: 0800:0EA3
fn0800_0EA3 proc
	push	bp
	mov	bp,sp
	mov	ax,000C
	call	far 2733:0530
	sub	sp,0C
	mov	di,[bp+04]
	shl	di,01
	mov	ax,[di+0734]
	mov	[bp-0C],ax
	mov	ax,0001
	cmp	ax,[bp-0C]
	jbe	0EC8

l0800_0EC5:
	jmp	0F53

l0800_0EC8:
	mov	[bp-02],ax
	jmp	0ED0

l0800_0ECD:
	inc	word ptr [bp-02]

l0800_0ED0:
	imul	ax,[bp-02],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0740]
	mov	[bp-04],ax
	imul	ax,[bp-02],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0742]
	mov	[bp-06],ax
	imul	ax,[bp-02],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0744]
	mov	[bp-08],ax
	imul	ax,[bp-02],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0746]
	mov	[bp-0A],ax
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	6978
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	push	word ptr [bp-04]
	push	word ptr [bp-06]
	imul	ax,[bp-02],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0748]
	add	ax,0007
	push	ax
	call	0CF9
	mov	ax,[bp-02]
	cmp	ax,[bp-0C]
	jz	0F53

l0800_0F50:
	jmp	0ECD

l0800_0F53:
	leave
	ret	0002

;; fn0800_0F57: 0800:0F57
fn0800_0F57 proc
	push	bp
	mov	bp,sp
	mov	ax,000E
	call	far 2733:0530
	sub	sp,0E
	xor	ax,ax
	mov	[bp-06],ax
	xor	ax,ax
	mov	[bp-04],ax

l0800_0F6F:
	mov	ax,[bp-04]
	inc	ax
	mov	[bp-04],ax
	imul	ax,[bp-04],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0740]
	mov	[bp-08],ax
	imul	ax,[bp-04],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0742]
	mov	[bp-0A],ax
	imul	ax,[bp-04],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0744]
	mov	[bp-0C],ax
	imul	ax,[bp-04],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+0746]
	mov	[bp-0E],ax
	mov	ax,[bp-08]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jg	0FD7

l0800_0FCB:
	jge	0FD0

l0800_0FCD:
	jmp	107F

l0800_0FD0:
	cmp	ax,cx
	ja	0FD7

l0800_0FD4:
	jmp	107F

l0800_0FD7:
	mov	ax,[bp-08]
	add	ax,[bp-0C]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jl	0FF7

l0800_0FEB:
	jle	0FF0

l0800_0FED:
	jmp	107F

l0800_0FF0:
	cmp	ax,cx
	jc	0FF7

l0800_0FF4:
	jmp	107F

l0800_0FF7:
	mov	ax,[bp-0A]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	100E

l0800_1008:
	jl	107F

l0800_100A:
	cmp	ax,cx
	jbe	107F

l0800_100E:
	mov	ax,[bp-0A]
	add	ax,[bp-0E]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	1028

l0800_1022:
	jg	107F

l0800_1024:
	cmp	ax,cx
	jnc	107F

l0800_1028:
	cmp	byte ptr [F388],00
	jz	107F

l0800_102F:
	mov	ax,[bp-04]
	mov	[bp-06],ax
	call	far 21BB:012A
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	6978
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	push	word ptr [bp-08]
	push	word ptr [bp-0A]
	imul	ax,[bp-04],0C
	imul	di,[bp+04],18
	add	di,ax
	mov	ax,[di+074A]
	add	ax,0007
	push	ax
	call	0CF9
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_1078:
	cmp	byte ptr [F388],00
	jnz	1078

l0800_107F:
	cmp	word ptr [bp-06],00
	ja	1096

l0800_1085:
	mov	ax,[bp-04]
	mov	di,[bp+04]
	shl	di,01
	cmp	ax,[di+0734]
	jnc	1096

l0800_1093:
	jmp	0F6F

l0800_1096:
	mov	ax,[bp-06]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret	0002

;; fn0800_10A3: 0800:10A3
fn0800_10A3 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,28EC
	push	ds
	push	di
	mov	di,28EE
	push	ds
	push	di
	mov	di,28F0
	push	ds
	push	di
	mov	di,28E8
	push	ds
	push	di
	call	far 26BA:0036
	leave
	ret

;; fn0800_10C8: 0800:10C8
fn0800_10C8 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	di,28EC
	push	ds
	push	di
	mov	di,28EE
	push	ds
	push	di
	mov	di,28F0
	push	ds
	push	di
	mov	di,28EA
	push	ds
	push	di
	call	far 26BA:0036
	mov	ax,[28EA]
	cmp	ax,[28E8]
	jc	1104

l0800_10F8:
	mov	ax,[28EA]
	sub	ax,[28E8]
	mov	[bp-02],ax
	jmp	1115

l0800_1104:
	mov	ax,[28E8]
	sub	ax,[28EA]
	mov	dx,ax
	mov	ax,0063
	sub	ax,dx
	mov	[bp-02],ax

l0800_1115:
	mov	ax,[bp-02]
	leave
	ret

;; fn0800_111A: 0800:111A
fn0800_111A proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,28FA
	push	ds
	push	di
	mov	di,28FC
	push	ds
	push	di
	mov	di,28FE
	push	ds
	push	di
	mov	di,28F6
	push	ds
	push	di
	call	far 26BA:0036
	leave
	ret

;; fn0800_113F: 0800:113F
fn0800_113F proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	di,28FA
	push	ds
	push	di
	mov	di,28FC
	push	ds
	push	di
	mov	di,28FE
	push	ds
	push	di
	mov	di,28F8
	push	ds
	push	di
	call	far 26BA:0036
	mov	ax,[28F8]
	cmp	ax,[28F6]
	jc	117B

l0800_116F:
	mov	ax,[28F8]
	sub	ax,[28F6]
	mov	[bp-02],ax
	jmp	118C

l0800_117B:
	mov	ax,[28F6]
	sub	ax,[28F8]
	mov	dx,ax
	mov	ax,0063
	sub	ax,dx
	mov	[bp-02],ax

l0800_118C:
	mov	ax,[bp-02]
	leave
	ret

;; fn0800_1191: 0800:1191
fn0800_1191 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,2900
	push	ds
	push	di
	mov	di,2902
	push	ds
	push	di
	mov	di,2906
	push	ds
	push	di
	mov	di,28F2
	push	ds
	push	di
	call	far 26BA:0036
	leave
	ret

;; fn0800_11B6: 0800:11B6
fn0800_11B6 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	di,2900
	push	ds
	push	di
	mov	di,2902
	push	ds
	push	di
	mov	di,2906
	push	ds
	push	di
	mov	di,28F4
	push	ds
	push	di
	call	far 26BA:0036
	mov	ax,[28F4]
	cmp	ax,[28F2]
	jc	11F2

l0800_11E6:
	mov	ax,[28F4]
	sub	ax,[28F2]
	mov	[bp-02],ax
	jmp	1203

l0800_11F2:
	mov	ax,[28F2]
	sub	ax,[28F4]
	mov	dx,ax
	mov	ax,0063
	sub	ax,dx
	mov	[bp-02],ax

l0800_1203:
	mov	ax,[bp-02]
	leave
	ret

;; fn0800_1208: 0800:1208
fn0800_1208 proc
	push	bp
	mov	bp,sp
	mov	ax,0030
	call	far 2733:0530
	sub	sp,30
	call	10A3
	xor	ax,ax
	mov	[bp-24],ax

l0800_121E:
	inc	word ptr [bp-24]
	mov	dx,03DA

l0800_1224:
	in	al,dx
	and	al,08
	jz	1224

l0800_1229:
	in	al,dx
	and	al,08
	jnz	1229

l0800_122E:
	call	10C8
	cmp	ax,0021
	jbe	121E

l0800_1236:
	mov	ax,[bp-24]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0882
	mov	si,7C1F
	mov	di,41F0
	call	far 2733:15C1
	mov	cx,6681
	mov	si,6666
	mov	di,6666
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[27EE],ax
	mov	ax,[27EE]
	mov	[27EC],ax
	leave
	ret

;; fn0800_126C: 0800:126C
fn0800_126C proc
	push	bp
	mov	bp,sp
	mov	ax,0020
	call	far 2733:0530
	sub	sp,20
	mov	ax,[bp+04]
	cmp	ax,0025
	jnz	12A4

l0800_1282:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,9A81
	mov	si,9999
	mov	di,5999
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	12F8

l0800_12A4:
	cmp	ax,0048
	jnz	12CB

l0800_12A9:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,3381
	mov	si,3333
	mov	di,3333
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	12F8

l0800_12CB:
	cmp	ax,0069
	jnz	12F2

l0800_12D0:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,9A81
	mov	si,9999
	mov	di,1999
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	12F8

l0800_12F2:
	mov	ax,[27EC]
	mov	[bp-20],ax

l0800_12F8:
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15D1
	jnz	1342

l0800_133B:
	mov	ax,[bp-20]
	inc	ax
	mov	[bp-20],ax

l0800_1342:
	mov	ax,[F2F4]
	mov	[bp-18],ax
	mov	ax,[F2F2]
	mov	[bp-1A],ax
	mov	ax,[F37A]
	mov	[bp-1C],ax
	mov	word ptr [bp-06],0000
	mov	word ptr [bp-04],0000
	mov	word ptr [bp-02],0000
	xor	ax,ax
	mov	[bp-0A],ax
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,5C82
	mov	bx,C28F
	mov	dx,48F5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	[bp-10],ax
	mov	[bp-0E],bx
	mov	[bp-0C],dx
	mov	word ptr [bp-16],5C81
	mov	word ptr [bp-14],C28F
	mov	word ptr [bp-12],C8F5

l0800_139E:
	mov	ax,[bp-16]
	mov	bx,[bp-14]
	mov	dx,[bp-12]
	mov	cx,[bp-10]
	mov	si,[bp-0E]
	mov	di,[bp-0C]
	call	far 2733:15AF
	mov	[bp-16],ax
	mov	[bp-14],bx
	mov	[bp-12],dx
	mov	ax,[bp-16]
	mov	bx,[bp-14]
	mov	dx,[bp-12]
	call	far 2733:16FA
	mov	cx,0081
	xor	si,si
	xor	di,di
	call	far 2733:15AF
	push	dx
	push	bx
	push	ax
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C1
	mov	[bp-06],ax
	mov	[bp-04],bx
	mov	[bp-02],dx
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,[bp-06]
	mov	si,[bp-04]
	mov	di,[bp-02]
	call	far 2733:15D1
	jnc	142F

l0800_141C:
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	[bp-06],ax
	mov	[bp-04],bx
	mov	[bp-02],dx

l0800_142F:
	mov	ax,[bp-06]
	mov	bx,[bp-04]
	mov	dx,[bp-02]
	call	far 2733:15E1
	mov	[bp-08],ax
	mov	ax,4F07
	mov	bh,00
	mov	bl,00
	mov	cx,0000
	mov	dx,[bp-08]
	int	10
	push	01
	call	0000
	mov	ax,[bp-08]
	cmp	ax,[bp+04]
	jnc	145F

l0800_145C:
	jmp	139E

l0800_145F:
	mov	ax,[bp-18]
	add	ax,[bp+04]
	mov	[F2F4],ax
	mov	ax,[bp-1A]
	add	ax,[bp+04]
	mov	[F2F2],ax
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-1C]
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	mov	[F37A],ax
	mov	ax,[F37A]
	cwd
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C1
	call	far 2733:15E1
	mov	[F386],ax
	leave
	ret	0002

;; fn0800_14C7: 0800:14C7
fn0800_14C7 proc
	push	bp
	mov	bp,sp
	mov	ax,0020
	call	far 2733:0530
	sub	sp,20
	mov	ax,[bp+04]
	cmp	ax,0025
	jnz	14FF

l0800_14DD:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,9A81
	mov	si,9999
	mov	di,5999
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	1553

l0800_14FF:
	cmp	ax,0048
	jnz	1526

l0800_1504:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,3381
	mov	si,3333
	mov	di,3333
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	1553

l0800_1526:
	cmp	ax,0069
	jnz	154D

l0800_152B:
	mov	ax,[27EC]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,9A81
	mov	si,9999
	mov	di,1999
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[bp-20],ax
	jmp	1553

l0800_154D:
	mov	ax,[27EC]
	mov	[bp-20],ax

l0800_1553:
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15D1
	jnz	159D

l0800_1596:
	mov	ax,[bp-20]
	inc	ax
	mov	[bp-20],ax

l0800_159D:
	mov	ax,[F2F4]
	mov	[bp-18],ax
	mov	ax,[F2F2]
	mov	[bp-1A],ax
	mov	ax,[F37A]
	mov	[bp-1C],ax
	mov	word ptr [bp-06],0000
	mov	word ptr [bp-04],0000
	mov	word ptr [bp-02],0000
	xor	ax,ax
	mov	[bp-0A],ax
	mov	ax,[bp-20]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,5C82
	mov	bx,C28F
	mov	dx,48F5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	[bp-10],ax
	mov	[bp-0E],bx
	mov	[bp-0C],dx
	mov	word ptr [bp-16],5C81
	mov	word ptr [bp-14],C28F
	mov	word ptr [bp-12],48F5

l0800_15F9:
	mov	ax,[bp-16]
	mov	bx,[bp-14]
	mov	dx,[bp-12]
	mov	cx,[bp-10]
	mov	si,[bp-0E]
	mov	di,[bp-0C]
	call	far 2733:15B5
	mov	[bp-16],ax
	mov	[bp-14],bx
	mov	[bp-12],dx
	mov	ax,[bp-16]
	mov	bx,[bp-14]
	mov	dx,[bp-12]
	call	far 2733:16FA
	mov	cx,0081
	xor	si,si
	xor	di,di
	call	far 2733:15AF
	push	dx
	push	bx
	push	ax
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C1
	mov	[bp-06],ax
	mov	[bp-04],bx
	mov	[bp-02],dx
	mov	ax,[bp-06]
	mov	bx,[bp-04]
	mov	dx,[bp-02]
	xor	cx,cx
	xor	si,si
	xor	di,di
	call	far 2733:15D1
	jnc	1682

l0800_1673:
	mov	word ptr [bp-06],0000
	mov	word ptr [bp-04],0000
	mov	word ptr [bp-02],0000

l0800_1682:
	mov	ax,[bp-06]
	mov	bx,[bp-04]
	mov	dx,[bp-02]
	call	far 2733:15E1
	mov	[bp-08],ax
	mov	ax,4F07
	mov	bh,00
	mov	bl,00
	mov	cx,0000
	mov	dx,[bp-08]
	int	10
	push	01
	call	0000
	cmp	word ptr [bp-08],00
	jbe	16B0

l0800_16AD:
	jmp	15F9

l0800_16B0:
	mov	ax,[bp-18]
	sub	ax,[bp+04]
	mov	[F2F4],ax
	mov	ax,[bp-1A]
	sub	ax,[bp+04]
	mov	[F2F2],ax
	mov	ax,[bp+04]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-1C]
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[F37A],ax
	mov	ax,[F37A]
	cwd
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C1
	call	far 2733:15E1
	mov	[F386],ax
	leave
	ret	0002

;; fn0800_1718: 0800:1718
fn0800_1718 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	al,[8FF6]
	xor	ah,ah
	shl	ax,02
	push	ax
	les	di,[8ED8]
	call	dword ptr es:[di+2C]
	leave
	ret

;; fn0800_1735: 0800:1735
fn0800_1735 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[8FF8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+FFFC]
	mov	bx,[di+FFFE]
	mov	dx,[di+0000]
	mov	[F372],ax
	mov	[F374],bx
	mov	[F376],dx
	mov	ax,[F384]
	cwd
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[F378],ax
	mov	ax,[F386]
	cwd
	call	far 2733:15D5
	mov	cx,[F372]
	mov	si,[F374]
	mov	di,[F376]
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[F37A],ax
	leave
	ret
0800:17A8                         50 20 42 4F 4F 53 54 45         P BOOSTE
0800:17B0 52 20 23 31 20 20 46 45 42 52 55 8F 52 20 20 28 R #1  FEBRU.R  (
0800:17C0 6B 65 72 6E 65 6C 20 76 31 2E 30 29 20 20 20 20 kernel v1.0)    
0800:17D0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
0800:17E0 31 39 39 36 2D 39 37 20 56 69 72 74 75 61 6C 20 1996-97 Virtual 
0800:17F0 49 6D 61 67 69 6E 65 73 20                      Imagines       

;; fn0800_17F9: 0800:17F9
fn0800_17F9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	00
	call	far 26D1:027D
	push	07
	call	far 26D1:0263
	call	far 26D1:01CC
	push	02
	call	far 26D1:027D
	push	00
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	mov	di,17A8
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	push	00
	call	far 26D1:027D
	push	07
	call	far 26D1:0263
	leave
	ret

;; fn0800_184F: 0800:184F
fn0800_184F proc
	push	bp
	mov	bp,sp
	mov	ax,0204
	call	far 2733:0530
	sub	sp,0204
	mov	byte ptr [32F2],00

l0800_1863:
	mov	ax,[5204]
	inc	ax
	mov	[5204],ax
	lea	di,[bp+FDFC]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	ax,[5204]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[5204]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	1863

l0800_18B6:
	mov	ax,[5204]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	1863

l0800_18C8:
	mov	ax,[5204]
	inc	ax
	inc	ax
	mov	[5204],ax
	mov	di,32F2
	push	ds
	push	di
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[32D8],ax
	mov	[32DA],dx
	mov	ax,[32D8]
	mov	dx,[32DA]
	mov	[bp-04],ax
	mov	[bp-02],dx
	mov	ax,[bp-04]
	mov	dx,[bp-02]
	leave
	ret

;; fn0800_18FB: 0800:18FB
fn0800_18FB proc
	push	bp
	mov	bp,sp
	mov	ax,0202
	call	far 2733:0530
	sub	sp,0202
	mov	byte ptr [32F2],00

l0800_190F:
	mov	ax,[5204]
	inc	ax
	mov	[5204],ax
	lea	di,[bp+FDFE]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	ax,[5204]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[5204]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	190F

l0800_1962:
	mov	ax,[5204]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	190F

l0800_1974:
	mov	ax,[5204]
	inc	ax
	inc	ax
	mov	[5204],ax
	mov	di,32F2
	push	ds
	push	di
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[32DC],ax
	mov	ax,[32DC]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret

;; fn0800_1999: 0800:1999
fn0800_1999 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	mov	byte ptr [32F2],00

l0800_19AD:
	mov	ax,[5204]
	inc	ax
	mov	[5204],ax
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[5204]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[5204]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	19AD

l0800_1A00:
	mov	ax,[5204]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	19AD

l0800_1A12:
	mov	ax,[5204]
	inc	ax
	inc	ax
	mov	[5204],ax
	mov	di,32F2
	push	ds
	push	di
	les	di,[bp+04]
	push	es
	push	di
	push	00FF
	call	far 2733:0FB1
	leave
	ret
0800:1A2E                                           1E 4C               .L
0800:1A30 6F 61 64 69 6E 67 20 48 79 70 65 72 20 54 65 78 oading Hyper Tex
0800:1A40 74 20 44 61 74 61 62 61 73 65 2E 2E 2E 03 20 4F t Database.... O
0800:1A50 4B                                              K              

;; fn0800_1A51: 0800:1A51
fn0800_1A51 proc
	push	bp
	mov	bp,sp
	mov	ax,0102
	call	far 2733:0530
	sub	sp,0102
	mov	di,F600
	push	ds
	push	di
	mov	di,1A2E
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 21BB:001B
	mov	ax,[32BC]
	mov	dx,[32BE]
	add	ax,[2FE8]
	adc	dx,[2FEA]
	add	ax,[27DE]
	adc	dx,[27E0]
	mov	[277A],ax
	mov	[277C],dx
	mov	ax,[32BC]
	mov	dx,[32BE]
	add	ax,[2FEC]
	adc	dx,[2FEE]
	add	ax,[27DE]
	adc	dx,[27E0]
	mov	[277E],ax
	mov	[2780],dx
	mov	ax,[277E]
	mov	dx,[2780]
	sub	ax,[277A]
	sbb	dx,[277C]
	mov	[2782],ax
	mov	[2784],dx
	mov	di,5206
	push	ds
	push	di
	push	word ptr [277C]
	push	word ptr [277A]
	call	far 2733:0C70
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [2782]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	xor	ax,ax
	mov	[5204],ax
	call	far 21BB:001B
	call	18FB
	mov	[2746],ax
	cmp	word ptr [2746],00
	jbe	1B68

l0800_1B2E:
	mov	ax,[2746]
	inc	ax
	imul	ax,ax,11
	push	ax
	call	far 2733:028A
	mov	[2754],ax
	mov	[2756],dx
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	push	ax
	call	far 2733:028A
	mov	[2758],ax
	mov	[275A],dx
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	push	ax
	call	far 2733:028A
	mov	[275C],ax
	mov	[275E],dx

l0800_1B68:
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	xor	ax,ax
	mov	es:[di-02],ax
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	les	di,[275C]
	add	di,ax
	xor	ax,ax
	mov	es:[di-02],ax
	mov	ax,[2746]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	1BF4

l0800_1B9A:
	mov	[51FA],ax
	jmp	1BA3

l0800_1B9F:
	inc	word ptr [51FA]

l0800_1BA3:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	call	1999
	imul	ax,[51FA],11
	les	di,[2754]
	add	di,ax
	add	di,FFEF
	push	es
	push	di
	push	10
	call	far 2733:0FB1
	call	18FB
	mov	dx,ax
	mov	ax,[51FA]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	es:[di-02],dx
	call	18FB
	mov	dx,ax
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	es:[di-02],dx
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	1B9F

l0800_1BF4:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,1A4D
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	leave
	ret

;; fn0800_1C20: 0800:1C20
fn0800_1C20 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100

l0800_1C2F:
	call	far 26D1:0308
	or	al,al
	jz	1C55

l0800_1C38:
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 26D1:031A
	push	ax
	call	far 2733:10B3
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_1C55:
	call	far 26D1:0308
	or	al,al
	jnz	1C2F

l0800_1C5E:
	mov	byte ptr [5496],00
	mov	byte ptr [5497],FF
	mov	byte ptr [5498],FF
	leave
	ret

;; fn0800_1C6F: 0800:1C6F
fn0800_1C6F proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	leave
	ret

;; fn0800_1C7B: 0800:1C7B
fn0800_1C7B proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	1C91

l0800_1C8D:
	inc	word ptr [51FA]

l0800_1C91:
	mov	di,[51FA]
	mov	byte ptr [di+8CC1],01
	cmp	word ptr [51FA],08
	jnz	1C8D

l0800_1CA1:
	leave
	ret

;; fn0800_1CA3: 0800:1CA3
fn0800_1CA3 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	1CB9

l0800_1CB5:
	inc	word ptr [51FA]

l0800_1CB9:
	mov	di,[51FA]
	mov	byte ptr [di+8CC1],00
	cmp	word ptr [51FA],08
	jnz	1CB5

l0800_1CC9:
	leave
	ret

;; fn0800_1CCB: 0800:1CCB
fn0800_1CCB proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	1CE1

l0800_1CDD:
	inc	word ptr [51FA]

l0800_1CE1:
	mov	di,[51FA]
	mov	byte ptr [di+8CC9],01
	cmp	word ptr [51FA],08
	jnz	1CDD

l0800_1CF1:
	leave
	ret

;; fn0800_1CF3: 0800:1CF3
fn0800_1CF3 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	call	far 21BB:012A
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	02
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	7D00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	word ptr [51FA],0001
	jmp	1D40

l0800_1D3C:
	inc	word ptr [51FA]

l0800_1D40:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC1],01
	jnz	1D9B

l0800_1D4B:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC9],00
	jz	1D61

l0800_1D56:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC9],02
	jnz	1D9B

l0800_1D61:
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:067C
	mov	di,[51FA]
	mov	byte ptr [di+8CC9],01

l0800_1D9B:
	cmp	word ptr [51FA],08
	jnz	1D3C

l0800_1DA2:
	push	04
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	7D00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	word ptr [51FA],0001
	jmp	1DC7

l0800_1DC3:
	inc	word ptr [51FA]

l0800_1DC7:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC1],00
	jnz	1E22

l0800_1DD2:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC9],01
	jz	1DE8

l0800_1DDD:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC9],02
	jnz	1E22

l0800_1DE8:
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:067C
	mov	di,[51FA]
	mov	byte ptr [di+8CC9],00

l0800_1E22:
	cmp	word ptr [51FA],08
	jnz	1DC3

l0800_1E29:
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	call	far 21BB:0108
	call	far 21BB:01A8
	leave
	ret

;; fn0800_1E4E: 0800:1E4E
fn0800_1E4E proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	03
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	7D00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	call	far 21BB:012A
	mov	di,[bp+04]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[bp+04]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[bp+04]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C8E]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:067C
	call	far 21BB:0108
	leave
	ret	0002

;; fn0800_1EAD: 0800:1EAD
fn0800_1EAD proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	mov	word ptr [bp-04],FFFF
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	cmp	byte ptr [F388],00
	jnz	1EEA

l0800_1EE0:
	cmp	byte ptr [F389],00
	jnz	1EEA

l0800_1EE7:
	jmp	2048

l0800_1EEA:
	cmp	word ptr [F398],0155
	jge	1EF5

l0800_1EF2:
	jmp	2048

l0800_1EF5:
	mov	word ptr [51FA],0001
	jmp	1F01

l0800_1EFD:
	inc	word ptr [51FA]

l0800_1F01:
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0030]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jg	1F20

l0800_1F1A:
	jl	1F8E

l0800_1F1C:
	cmp	ax,cx
	jbe	1F8E

l0800_1F20:
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0032]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	1F3F

l0800_1F39:
	jl	1F8E

l0800_1F3B:
	cmp	ax,cx
	jbe	1F8E

l0800_1F3F:
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0034]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jl	1F5E

l0800_1F58:
	jg	1F8E

l0800_1F5A:
	cmp	ax,cx
	jnc	1F8E

l0800_1F5E:
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0036]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	1F7D

l0800_1F77:
	jg	1F8E

l0800_1F79:
	cmp	ax,cx
	jnc	1F8E

l0800_1F7D:
	mov	di,[51FA]
	cmp	byte ptr [di+8CC1],01
	jnz	1F8E

l0800_1F88:
	mov	ax,[51FA]
	mov	[bp-04],ax

l0800_1F8E:
	cmp	word ptr [51FA],08
	jz	1F98

l0800_1F95:
	jmp	1EFD

l0800_1F98:
	cmp	byte ptr [F389],00
	jz	1FB7

l0800_1F9F:
	cmp	word ptr [bp-04],06
	jz	1FB7

l0800_1FA5:
	cmp	byte ptr [F389],00
	jz	1FB7

l0800_1FAC:
	cmp	word ptr [bp-04],07
	jz	1FB7

l0800_1FB2:
	mov	word ptr [bp-04],FFFF

l0800_1FB7:
	cmp	word ptr [bp-04],FF
	jnz	1FC0

l0800_1FBD:
	jmp	2048

l0800_1FC0:
	mov	ax,[bp-04]
	mov	[bp-06],ax
	mov	di,[bp-06]
	mov	byte ptr [di+8CC9],02
	cmp	byte ptr [F389],00
	jz	1FDE

l0800_1FD5:
	mov	ax,[bp-04]
	add	ax,0014
	mov	[bp-04],ax

l0800_1FDE:
	call	far 21BB:012A
	push	03
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	di,[bp-06]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[bp-06]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[bp-06]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:067C
	call	far 21BB:0108
	call	far 21BB:01A8
	cmp	byte ptr [bp+04],00
	jz	2048

l0800_203A:
	cmp	byte ptr [F388],00
	jnz	203A

l0800_2041:
	cmp	byte ptr [F389],00
	jnz	203A

l0800_2048:
	mov	ax,[bp-04]
	mov	[bp-02],ax
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ax,[bp-02]
	leave
	ret	0002
0800:206E                                           20 50                P
0800:2070 72 6F 67 72 61 6D 20 3A 20 41 63 63 6F 72 64 20 rogram : Accord 
0800:2080 28 4B 94 72 94 7A 73 69 20 54 61 6D A0 73 29 1F (K.r.zsi Tam.s).
0800:2090 47 72 61 66 69 6B 61 20 3A 20 46 6C 6F 79 64 20 Grafika : Floyd 
0800:20A0 20 28 47 79 75 6C 61 69 20 43 73 61 62 61 29 33  (Gyulai Csaba)3
0800:20B0 45 7A 20 6D 82 67 20 6E 65 6D 20 61 20 6B 82 73 Ez m.g nem a k.s
0800:20C0 7A 20 76 A0 6C 74 6F 7A 61 74 2E 20 4B 82 72 6C z v.ltozat. K.rl
0800:20D0 65 6B 20 4D 90 47 20 4E 45 20 74 65 72 6A 65 73 ek M.G NE terjes
0800:20E0 7A 64 21 35 41 20 6D 65 67 6A 65 6C 65 6E 82 73 zd!5A megjelen.s
0800:20F0 20 70 6F 6E 74 6F 73 20 69 64 93 70 6F 6E 74 6A  pontos id.pontj
0800:2100 61 3A 20 31 39 39 37 20 66 65 62 72 75 A0 72 20 a: 1997 febru.r 
0800:2110 33 20 28 68 82 74 66 93 29 00 01 5C             3 (h.tf.)..\   

;; fn0800_211C: 0800:211C
fn0800_211C proc
	push	bp
	mov	bp,sp
	mov	ax,0102
	call	far 2733:0530
	sub	sp,0102
	call	far 21BB:012A
	call	01CE
	call	far 21BB:024D
	or	al,al
	jz	2141

l0800_213C:
	call	far 21BB:071B

l0800_2141:
	cmp	byte ptr [2786],00
	jz	214D

l0800_2148:
	call	0547
	jmp	215B

l0800_214D:
	cmp	byte ptr [bp+04],00
	jz	2158

l0800_2153:
	call	0547
	jmp	215B

l0800_2158:
	call	0773

l0800_215B:
	call	far 2234:0000
	cmp	byte ptr [bp+04],00
	jz	2169

l0800_2166:
	jmp	2248

l0800_2169:
	call	17F9
	mov	di,F600
	push	ds
	push	di
	mov	di,206E
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,208F
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,20AF
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,20E3
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,2119
	push	cs
	push	di
	call	far 26BA:009D
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	call	far 26D1:024B
	xor	ah,ah
	dec	ax
	push	ax
	call	far 26D1:0257
	push	ax
	call	far 26D1:021F
	mov	di,F600
	push	ds
	push	di
	push	3E
	push	00
	call	far 2733:08DE
	call	far 2733:0861
	call	far 2733:04F4

l0800_2248:
	cmp	word ptr [8FEA],04
	jz	2275

l0800_224F:
	cmp	byte ptr [2990],00
	jz	2270

l0800_2256:
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:066D
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:04BA

l0800_2270:
	call	far 1858:0263

l0800_2275:
	push	01
	call	far 26D1:0257
	xor	ah,ah
	dec	ax
	push	ax
	call	far 26D1:021F
	cmp	byte ptr [bp+04],00
	jz	22CF

l0800_228B:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,2119
	push	cs
	push	di
	call	far 26BA:009D
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,9000
	push	ds
	push	di
	call	far 2733:0DED
	call	far 2733:04ED
	or	ax,ax
	jz	22CF

l0800_22BB:
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0DED
	mov	di,211A
	push	cs
	push	di
	call	far 2733:0DED

l0800_22CF:
	push	09
	push	word ptr [F2F0]
	push	word ptr [F2EE]
	call	far 26BA:008A
	mov	al,00
	out	60,al
	xor	ax,ax
	call	far 2733:0116
	leave
	ret	0002

;; fn0800_22ED: 0800:22ED
fn0800_22ED proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530

l0800_22F7:
	cmp	byte ptr [8E52],59
	jbe	22F7

l0800_22FE:
	cmp	byte ptr [F388],00
	jnz	22F7

l0800_2305:
	cmp	byte ptr [F389],00
	jnz	22F7

l0800_230C:
	cmp	byte ptr [8E52],59
	jc	2321

l0800_2313:
	cmp	byte ptr [F388],00
	jnz	2321

l0800_231A:
	cmp	byte ptr [F389],00
	jz	230C

l0800_2321:
	cmp	byte ptr [8E52],59
	jbe	2321

l0800_2328:
	cmp	byte ptr [F388],00
	jnz	2321

l0800_232F:
	cmp	byte ptr [F389],00
	jnz	2321

l0800_2336:
	leave
	ret
0800:2338                         01 FA 01 20 01 F9 01 1A         ... ....

;; fn0800_2340: 0800:2340
fn0800_2340 proc
	push	bp
	mov	bp,sp
	mov	ax,027E
	call	far 2733:0530
	sub	sp,027E
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_2362:
	rep movsb

l0800_2364:
	mov	ds,bx
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	78
	call	far 2733:0FB1
	mov	al,[bp+FF00]
	xor	ah,ah
	mov	[bp+FE82],ax
	mov	ax,0001
	cmp	ax,[bp+FE82]
	ja	23EA

l0800_238C:
	mov	[bp+FEFE],ax
	jmp	2396

l0800_2392:
	inc	word ptr [bp+FEFE]

l0800_2396:
	lea	di,[bp+FD82]
	push	ss
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	word ptr [bp+FEFE]
	push	01
	call	far 2733:0FD5
	mov	di,2338
	push	cs
	push	di
	call	far 2733:1088
	jnz	23E0

l0800_23B9:
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	word ptr [bp+FEFE]
	push	01
	call	far 2733:113F
	mov	di,233A
	push	cs
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	78
	push	word ptr [bp+FEFE]
	call	far 2733:10E0

l0800_23E0:
	mov	ax,[bp+FEFE]
	cmp	ax,[bp+FE82]
	jnz	2392

l0800_23EA:
	mov	al,[bp+FF00]
	xor	ah,ah
	mov	[bp+FE82],ax
	mov	ax,0001
	cmp	ax,[bp+FE82]
	ja	245B

l0800_23FD:
	mov	[bp+FEFE],ax
	jmp	2407

l0800_2403:
	inc	word ptr [bp+FEFE]

l0800_2407:
	lea	di,[bp+FD82]
	push	ss
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	word ptr [bp+FEFE]
	push	01
	call	far 2733:0FD5
	mov	di,233C
	push	cs
	push	di
	call	far 2733:1088
	jnz	2451

l0800_242A:
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	word ptr [bp+FEFE]
	push	01
	call	far 2733:113F
	mov	di,233E
	push	cs
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	78
	push	word ptr [bp+FEFE]
	call	far 2733:10E0

l0800_2451:
	mov	ax,[bp+FEFE]
	cmp	ax,[bp+FE82]
	jnz	2403

l0800_245B:
	lea	di,[bp+FE84]
	push	ss
	push	di
	les	di,[bp+08]
	push	es
	push	di
	push	00FF
	call	far 2733:0FB1
	leave
	ret	0004
0800:2472       12 4C 6F 61 64 69 6E 67 20 43 6F 6E 74 65   .Loading Conte
0800:2480 6E 74 2E 2E 2E 20 4E 65 6D 20 74 75 64 6F 6D 20 nt... Nem tudom 
0800:2490 65 6C 82 72 6E 69 20 61 7A 20 2E 65 78 65 20 66 el.rni az .exe f
0800:24A0 69 6C 65 2D 74 2E 1E 48 69 62 61 20 61 7A 20 2E ile-t..Hiba az .
0800:24B0 65 78 65 20 66 69 6C 65 20 6F 6C 76 61 73 A0 73 exe file olvas.s
0800:24C0 A0 6E A0 6C 2E 01 20 03 20 4F 4B 12 4C 6F 61 64 .n.l.. . OK.Load
0800:24D0 69 6E 67 20 50 61 6C 65 74 74 65 2E 2E 2E       ing Palette... 

;; fn0800_24DE: 0800:24DE
fn0800_24DE proc
	push	bp
	mov	bp,sp
	mov	ax,0202
	call	far 2733:0530
	sub	sp,0202
	mov	di,F600
	push	ds
	push	di
	mov	di,2472
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	di,5386
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5386
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04ED
	or	ax,ax
	jz	2556

l0800_252C:
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	mov	di,F600
	push	ds
	push	di
	mov	di,2485
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	01A2
	xor	ax,ax
	call	far 2733:0116

l0800_2556:
	mov	di,5386
	push	ds
	push	di
	push	word ptr [27E0]
	push	word ptr [27DE]
	call	far 2733:0C70
	mov	di,5386
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	EA60
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	xor	ax,ax
	mov	[5204],ax
	call	far 2733:04ED
	or	ax,ax
	jz	25B7

l0800_258D:
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	mov	di,F600
	push	ds
	push	di
	mov	di,24A6
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	01A2
	xor	ax,ax
	call	far 2733:0116

l0800_25B7:
	mov	word ptr [51FE],0001
	jmp	25C3

l0800_25BF:
	inc	word ptr [51FE]

l0800_25C3:
	mov	ax,[51FE]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	[32DC],ax
	xor	word ptr [32DC],00A5
	mov	dl,[32DC]
	mov	ax,[51FE]
	les	di,[8C92]
	add	di,ax
	mov	es:[di-01],dl
	cmp	word ptr [51FE],EA60
	jnz	25BF

l0800_25F4:
	mov	di,5386
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	1999
	mov	di,2830
	push	ds
	push	di
	push	50
	call	far 2733:0FB1
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	1999
	mov	di,2882
	push	ds
	push	di
	push	50
	call	far 2733:0FB1
	call	18FB
	mov	[28D6],ax
	call	18FB
	mov	[28D8],ax
	call	18FB
	mov	[28DA],ax
	call	18FB
	mov	[28DC],ax
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	1999
	mov	di,27FC
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	call	18FB
	mov	[2F92],ax
	mov	ax,[2F92]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	jg	269A

l0800_266E:
	mov	[32E4],ax
	jmp	2677

l0800_2673:
	inc	word ptr [32E4]

l0800_2677:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	call	1999
	imul	di,[32E4],3D
	add	di,2CF3
	push	ds
	push	di
	push	3C
	call	far 2733:0FB1
	mov	ax,[32E4]
	cmp	ax,[bp-02]
	jnz	2673

l0800_269A:
	imul	ax,[28DA],29
	push	ax
	call	far 2733:028A
	mov	[28DE],ax
	mov	[28E0],dx
	call	18FB
	mov	[8C7C],ax
	mov	ax,[8C7C]
	mov	[28D4],ax
	cmp	word ptr [28D4],12
	jbe	26C5

l0800_26BF:
	mov	word ptr [28D4],0012

l0800_26C5:
	mov	ax,[28D4]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	mov	cx,0085
	xor	si,si
	mov	di,1000
	call	far 2733:15C1
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,00F6
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[32C0],ax
	mov	ax,[8C7C]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	274D

l0800_270B:
	mov	[51FA],ax
	jmp	2714

l0800_2710:
	inc	word ptr [51FA]

l0800_2714:
	lea	di,[bp+FDFE]
	push	ss
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	call	1999
	call	2340
	imul	di,[51FA],29
	add	di,76D7
	push	ds
	push	di
	push	28
	call	far 2733:0FB1
	call	184F
	mov	di,[51FA]
	shl	di,01
	mov	[di+8702],ax
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	2710

l0800_274D:
	call	184F
	mov	dx,ax
	mov	ax,[51FA]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	[di+8702],dx
	mov	ax,[51FA]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	dec	ax
	mov	[8C7E],ax
	mov	ax,[8C7E]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	jbe	277F

l0800_277C:
	jmp	285D

l0800_277F:
	mov	[51FA],ax
	jmp	2788

l0800_2784:
	inc	word ptr [51FA]

l0800_2788:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	call	1999
	imul	ax,[51FA],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	push	28
	call	far 2733:0FB1
	call	184F
	mov	di,[51FA]
	shl	di,02
	mov	[di+87C8],ax
	mov	[di+87CA],dx
	cmp	word ptr [28DC],01
	jz	27C5

l0800_27C2:
	jmp	2852

l0800_27C5:
	imul	ax,[51FA],29
	les	di,[28DE]
	add	di,ax
	mov	al,es:[di-29]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	push	dx
	push	ax
	mov	ax,[28D8]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	pop	cx
	pop	bx
	sub	ax,cx
	sbb	dx,bx
	mov	[32DC],ax
	mov	ax,[32DC]
	mov	[bp-04],ax
	mov	ax,0001
	cmp	ax,[bp-04]
	ja	2852

l0800_2822:
	mov	[5202],ax
	jmp	282B

l0800_2827:
	inc	word ptr [5202]

l0800_282B:
	mov	di,24C5
	push	cs
	push	di
	imul	ax,[51FA],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	push	28
	push	01
	call	far 2733:10E0
	mov	ax,[5202]
	cmp	ax,[bp-04]
	jnz	2827

l0800_2852:
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jz	285D

l0800_285A:
	jmp	2784

l0800_285D:
	call	184F
	mov	cx,ax
	mov	bx,dx
	mov	ax,[51FA]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	[di+87C8],cx
	mov	[di+87CA],bx
	call	18FB
	mov	[2D2C],ax
	mov	ax,[2D2C]
	inc	ax
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	28AD

l0800_288A:
	mov	[51FA],ax
	jmp	2893

l0800_288F:
	inc	word ptr [51FA]

l0800_2893:
	call	184F
	mov	di,[51FA]
	shl	di,02
	mov	[di+2F98],ax
	mov	[di+2F9A],dx
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	288F

l0800_28AD:
	call	184F
	mov	[8C82],ax
	mov	di,F600
	push	ds
	push	di
	mov	di,24C7
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,24CB
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 21BB:001B
	mov	ax,[8C82]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C7E]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+87C8]
	mov	dx,[di+87CA]
	add	ax,cx
	adc	dx,bx
	mov	[8C84],ax
	mov	[8C86],dx
	mov	di,5206
	push	ds
	push	di
	mov	ax,[8C84]
	mov	dx,[8C86]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	mov	di,5206
	push	ds
	push	di
	mov	di,45F2
	push	ds
	push	di
	push	0300
	mov	di,32DC
	push	ds
	push	di
	call	far 2733:0C08
	call	far 21BB:001B
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,24C7
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	far 21BB:024D
	mov	[F38E],al
	cmp	byte ptr [F38E],00
	jz	29A7

l0800_299E:
	push	word ptr [8FFC]
	call	far 21BB:0676

l0800_29A7:
	mov	ax,[8C84]
	mov	dx,[8C86]
	add	ax,0300
	adc	dx,00
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 21BB:0500
	mov	ax,[8C84]
	mov	dx,[8C86]
	add	ax,0300
	adc	dx,00
	add	ax,0CA8
	adc	dx,00
	mov	[32BC],ax
	mov	[32BE],dx
	mov	ax,[8C7E]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	2A09

l0800_29EB:
	mov	[51FA],ax
	jmp	29F4

l0800_29F0:
	inc	word ptr [51FA]

l0800_29F4:
	mov	ax,[51FA]
	mov	di,[51FA]
	shl	di,01
	mov	[di+2ABA],ax
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	29F0

l0800_2A09:
	mov	ax,[8C7C]
	sub	ax,0012
	mov	[28E6],ax
	cmp	word ptr [28E6],01
	jge	2A1E

l0800_2A19:
	xor	ax,ax
	mov	[28E6],ax

l0800_2A1E:
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	ax,[32BC]
	mov	dx,[32BE]
	add	ax,[2FEC]
	adc	dx,[2FEE]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4
	mov	ax,[2FF0]
	mov	dx,[2FF2]
	sub	ax,[2FEC]
	sbb	dx,[2FEE]
	mov	[29A2],ax
	mov	[29A4],dx
	mov	ax,[29A2]
	mov	[27E6],ax
	mov	di,5206
	push	ds
	push	di
	les	di,[8C8E]
	push	es
	push	di
	push	word ptr [29A2]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	mov	ax,[27E6]
	inc	ax
	inc	ax
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	9C40
	mov	di,8C96
	push	ds
	push	di
	call	0296
	leave
	ret

;; fn0800_2AEE: 0800:2AEE
fn0800_2AEE proc
	push	bp
	mov	bp,sp
	mov	ax,01F6
	call	far 2733:0530
	sub	sp,01F6
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_2B10:
	rep movsb

l0800_2B12:
	mov	ds,bx
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	78
	call	far 2733:0FB1

l0800_2B27:
	cmp	byte ptr [bp+FE85],20
	jz	2B4A

l0800_2B2E:
	cmp	byte ptr [bp+FE85],C0
	jz	2B4A

l0800_2B35:
	cmp	byte ptr [bp+FE85],C3
	jz	2B4A

l0800_2B3C:
	cmp	byte ptr [bp+FE85],C4
	jz	2B4A

l0800_2B43:
	cmp	byte ptr [bp+FE85],1A
	jnz	2B59

l0800_2B4A:
	lea	di,[bp+FE84]
	push	ss
	push	di
	push	01
	push	01
	call	far 2733:113F

l0800_2B59:
	cmp	byte ptr [bp+FE85],20
	jz	2B27

l0800_2B60:
	cmp	byte ptr [bp+FE85],C0
	jz	2B27

l0800_2B67:
	cmp	byte ptr [bp+FE85],C3
	jz	2B27

l0800_2B6E:
	cmp	byte ptr [bp+FE85],C4
	jz	2B27

l0800_2B75:
	cmp	byte ptr [bp+FE85],1A
	jz	2B27

l0800_2B7C:
	lea	di,[bp+FE84]
	push	ss
	push	di
	les	di,[bp+08]
	push	es
	push	di
	push	00FF
	call	far 2733:0FB1
	leave
	ret	0004
0800:2B93          01 30 01 2F                               .0./        

;; fn0800_2B97: 0800:2B97
fn0800_2B97 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	call	far 21BB:012A
	mov	byte ptr [0F9B],00
	push	0088
	push	24
	push	01D0
	push	35
	call	far 2234:0139
	push	01D6
	push	24
	push	0206
	push	35
	call	far 2234:0139
	mov	al,[32C8]
	mov	[0F9B],al
	cmp	word ptr [541A],01
	jz	2BDE

l0800_2BDB:
	jmp	2CF2

l0800_2BDE:
	push	008C
	push	26
	mov	di,27FC
	push	ds
	push	di
	call	far 2234:051E
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[5200],ax
	mov	ax,[8C8A]
	cwd
	push	dx
	push	ax
	push	00
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	mov	ax,[5200]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,7000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	push	dx
	push	ax
	push	00
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	cmp	byte ptr [32F2],01
	jnz	2C84

l0800_2C5D:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2B93
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_2C84:
	cmp	byte ptr [33F2],01
	jnz	2CB2

l0800_2C8B:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2B93
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_2CB2:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,2B95
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	push	01DA
	push	26
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:051E

l0800_2CF2:
	cmp	word ptr [541A],02
	jnz	2D23

l0800_2CF9:
	push	008C
	push	26
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,[181A]
	shl	di,01
	imul	ax,[di+2ABA],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	call	2AEE
	call	far 2234:051E

l0800_2D23:
	call	far 21BB:0108
	leave
	ret
0800:2D2A                               1E 46 41 54 41 4C           .FATAL
0800:2D30 20 45 52 52 4F 52 3A 20 22 42 4F 44 59 22 20 6E  ERROR: "BODY" n
0800:2D40 6F 74 20 66 6F 75 6E 64 28 17 4E 79 6F 6D 6A 20 ot found(.Nyomj 
0800:2D50 6C 65 20 65 67 79 20 62 69 6C 6C 65 6E 74 79 96 le egy billenty.
0800:2D60 74                                              t              

;; fn0800_2D61: 0800:2D61
fn0800_2D61 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[bp-04],ax
	mov	byte ptr [bp-02],00
	mov	byte ptr [bp-01],00

l0800_2D7C:
	cmp	byte ptr [bp-01],00
	jz	2D85

l0800_2D82:
	jmp	2EB8

l0800_2D85:
	mov	ax,[bp-04]
	inc	ax
	mov	[bp-04],ax
	mov	ax,[299E]
	mov	dx,[29A0]
	add	ax,0001
	adc	dx,00
	mov	[299E],ax
	mov	[29A0],dx
	mov	ax,[299E]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	cmp	word ptr [29A0],00
	jg	2DC0

l0800_2DB7:
	jl	2E29

l0800_2DB9:
	cmp	word ptr [299E],FE
	jbe	2E29

l0800_2DC0:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,2D2A
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	ax,[bp+04]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	push	29
	push	00
	call	far 2733:08DE
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,2D49
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	22ED
	push	00
	call	211C

l0800_2E29:
	cmp	byte ptr [29A8],42
	jz	2E33

l0800_2E30:
	jmp	2EB8

l0800_2E33:
	mov	ax,[299E]
	mov	dx,[29A0]
	add	ax,0001
	adc	dx,00
	mov	[299E],ax
	mov	[29A0],dx
	mov	ax,[299E]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	cmp	byte ptr [29A8],4F
	jnz	2EB8

l0800_2E5E:
	mov	ax,[299E]
	mov	dx,[29A0]
	add	ax,0001
	adc	dx,00
	mov	[299E],ax
	mov	[29A0],dx
	mov	ax,[299E]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	cmp	byte ptr [29A8],44
	jnz	2EB8

l0800_2E89:
	mov	ax,[299E]
	mov	dx,[29A0]
	add	ax,0001
	adc	dx,00
	mov	[299E],ax
	mov	[29A0],dx
	mov	ax,[299E]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	cmp	byte ptr [29A8],59
	jnz	2EB8

l0800_2EB4:
	mov	byte ptr [bp-02],01

l0800_2EB8:
	cmp	byte ptr [bp-02],00
	jnz	2EC1

l0800_2EBE:
	jmp	2D7C

l0800_2EC1:
	mov	ax,[bp-04]
	inc	ax
	les	di,[bp+06]
	mov	es:[di],ax
	leave
	ret	0006

;; fn0800_2ECF: 0800:2ECF
fn0800_2ECF proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	cmp	byte ptr [bp+04],00
	jz	2F01

l0800_2EE3:
	mov	ax,[bp+08]
	add	ax,[bp+06]
	cmp	ax,01AF
	jle	2EF9

l0800_2EEE:
	mov	ax,01AF
	sub	ax,[bp+08]
	mov	[bp-04],ax
	jmp	2EFF

l0800_2EF9:
	mov	ax,[bp+06]
	mov	[bp-04],ax

l0800_2EFF:
	jmp	2F07

l0800_2F01:
	mov	ax,[bp+06]
	mov	[bp-04],ax

l0800_2F07:
	mov	ax,[bp-04]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret	0006
0800:2F14             1C 4E 65 6D 20 6C 82 74 65 7A 93 20     .Nem l.tez. 
0800:2F20 6B 82 70 72 65 20 68 69 76 61 74 6B 6F 7A A0 73 k.pre hivatkoz.s
0800:2F30 28 17 4E 79 6F 6D 6A 20 6C 65 20 65 67 79 20 62 (.Nyomj le egy b
0800:2F40 69 6C 6C 65 6E 74 79 96 74                      illenty.t      

;; fn0800_2F49: 0800:2F49
fn0800_2F49 proc
	push	bp
	mov	bp,sp
	mov	ax,0020
	call	far 2733:0530
	sub	sp,20
	mov	ax,[bp+0C]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+2F98]
	mov	dx,[di+2F9A]
	mov	di,[bp+0C]
	shl	di,02
	sub	ax,[di+2F98]
	sbb	dx,[di+2F9A]
	mov	[29A2],ax
	mov	[29A4],dx
	mov	ax,[29A2]
	mov	dx,[29A4]
	mov	[bp-12],ax
	mov	[bp-10],dx
	mov	ax,[29A2]
	or	ax,[29A4]
	jnz	2FFC

l0800_2F93:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,2F14
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	ax,[bp+0C]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	push	29
	push	00
	call	far 2733:08DE
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,2F31
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	22ED
	push	00
	call	211C

l0800_2FFC:
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	ax,[32BC]
	mov	dx,[32BE]
	mov	di,[bp+0C]
	shl	di,02
	add	ax,[di+2F98]
	adc	dx,[di+2F9A]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4
	cmp	word ptr [29A4],00
	jg	305B

l0800_3051:
	jl	3074

l0800_3053:
	cmp	word ptr [29A2],FA00
	jbe	3074

l0800_305B:
	mov	word ptr [bp-1E],FA00
	mov	ax,[bp-12]
	mov	dx,[bp-10]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp-12],ax
	mov	[bp-10],dx
	jmp	3082

l0800_3074:
	mov	ax,[bp-12]
	mov	[bp-1E],ax
	xor	ax,ax
	mov	[bp-12],ax
	mov	[bp-10],ax

l0800_3082:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-1E]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	word ptr [bp-08],0031
	xor	ax,ax
	mov	[bp-0C],ax
	cmp	byte ptr [bp+0A],00
	jnz	30B1

l0800_30AE:
	jmp	3191

l0800_30B1:
	call	0547

l0800_30B4:
	mov	ax,[bp-08]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[bp-03],al
	mov	ax,[bp-08]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[bp-04],al
	mov	ax,[bp-08]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[bp-05],al
	mov	al,[bp-03]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0083
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	dl,al
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	[di+4BF5],dl
	mov	al,[bp-04]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0083
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	dl,al
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	[di+4BF5],dl
	mov	al,[bp-05]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0083
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	dl,al
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	[di+4BF5],dl
	mov	ax,[bp-08]
	add	ax,0003
	mov	[bp-08],ax
	mov	ax,[bp-0C]
	inc	ax
	mov	[bp-0C],ax
	cmp	word ptr [bp-0C],0100
	jnc	3191

l0800_318E:
	jmp	30B4

l0800_3191:
	xor	ax,ax
	mov	[299E],ax
	mov	[29A0],ax
	mov	di,299A
	push	ds
	push	di
	push	word ptr [bp+0C]
	call	2D61
	xor	ax,ax
	mov	[bp-0C],ax
	mov	ax,[299E]
	mov	dx,[29A0]
	add	ax,0004
	adc	dx,00
	mov	[299E],ax
	mov	[29A0],dx
	mov	ax,[299E]
	mov	[29A6],ax
	les	di,[8C92]
	mov	al,es:[di+14]
	xor	ah,ah
	shl	ax,08
	mov	dx,ax
	les	di,[8C92]
	mov	al,es:[di+15]
	xor	ah,ah
	add	ax,dx
	mov	[bp-18],ax
	les	di,[8C92]
	mov	al,es:[di+16]
	xor	ah,ah
	shl	ax,08
	mov	dx,ax
	les	di,[8C92]
	mov	al,es:[di+17]
	xor	ah,ah
	add	ax,dx
	mov	[bp-1A],ax
	cmp	byte ptr [bp+06],00
	jz	3211

l0800_3205:
	mov	ax,[bp-18]
	mov	[270E],ax
	mov	ax,[bp-1A]
	mov	[2710],ax

l0800_3211:
	mov	ax,[bp+0E]
	mov	[bp-16],ax
	mov	ax,[bp-18]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,0090
	xor	bx,bx
	mov	dx,0CA0
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	[bp-1C],ax
	mov	ax,[bp-18]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-1C]
	cwd
	call	far 2733:0E82
	mov	[bp-02],ax
	mov	ax,[bp+10]
	mov	[bp-14],ax
	cmp	byte ptr [bp+0A],00
	jnz	3260

l0800_325D:
	jmp	3333

l0800_3260:
	mov	ax,0280
	sub	ax,[bp-18]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-14]
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	mov	[bp-14],ax
	mov	ax,01E0
	sub	ax,[bp-1A]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-16]
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	mov	[bp-16],ax
	mov	byte ptr [0F9B],00
	cmp	word ptr [bp-16],00
	jbe	32D6

l0800_32C7:
	push	00
	push	00
	push	027F
	push	word ptr [bp-16]
	call	far 2234:0139

l0800_32D6:
	mov	ax,[bp-16]
	add	ax,[bp-1A]
	cmp	ax,01DF
	jnc	32F5

l0800_32E1:
	push	00
	mov	ax,[bp-16]
	add	ax,[bp-1A]
	push	ax
	push	027F
	push	01DF
	call	far 2234:0139

l0800_32F5:
	cmp	word ptr [bp-14],00
	jbe	330F

l0800_32FB:
	push	00
	push	word ptr [bp-16]
	push	word ptr [bp-14]
	mov	ax,[bp-16]
	add	ax,[bp-1A]
	push	ax
	call	far 2234:0139

l0800_330F:
	mov	ax,[bp-14]
	add	ax,[bp-18]
	cmp	ax,027F
	jnc	3333

l0800_331A:
	mov	ax,[bp-14]
	add	ax,[bp-18]
	push	ax
	push	word ptr [bp-16]
	push	01DF
	mov	ax,[bp-16]
	add	ax,[bp-1A]
	push	ax
	call	far 2234:0139

l0800_3333:
	xor	ax,ax
	mov	[bp-0C],ax

l0800_3338:
	add	word ptr [299E],01
	adc	word ptr [29A0],00
	inc	word ptr [29A6]
	mov	ax,[29A6]
	cmp	ax,[bp-1E]
	jbe	33BB

l0800_334E:
	mov	ax,[299E]
	mov	dx,[29A0]
	cmp	dx,[29A4]
	jl	3363

l0800_335B:
	jg	33BB

l0800_335D:
	cmp	ax,[29A2]
	jnc	33BB

l0800_3363:
	cmp	word ptr [bp-10],00
	jg	3372

l0800_3369:
	jl	338B

l0800_336B:
	cmp	word ptr [bp-12],FA00
	jbe	338B

l0800_3372:
	mov	word ptr [bp-1E],FA00
	mov	ax,[bp-12]
	mov	dx,[bp-10]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp-12],ax
	mov	[bp-10],dx
	jmp	3399

l0800_338B:
	mov	ax,[bp-12]
	mov	[bp-1E],ax
	xor	ax,ax
	mov	[bp-12],ax
	mov	[bp-10],ax

l0800_3399:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-1E]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	word ptr [29A6],0001

l0800_33BB:
	mov	ax,[29A6]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	mov	al,[29A8]
	and	al,80
	cmp	al,80
	jz	33D7

l0800_33D4:
	jmp	353E

l0800_33D7:
	mov	al,[29A8]
	xor	ah,ah
	neg	ax
	mov	[29A8],al
	inc	byte ptr [29A8]
	mov	al,[29A8]
	xor	ah,ah
	mov	[299C],ax
	add	word ptr [299E],01
	adc	word ptr [29A0],00
	inc	word ptr [29A6]
	mov	ax,[29A6]
	cmp	ax,[bp-1E]
	jbe	3470

l0800_3403:
	mov	ax,[299E]
	mov	dx,[29A0]
	cmp	dx,[29A4]
	jl	3418

l0800_3410:
	jg	3470

l0800_3412:
	cmp	ax,[29A2]
	jnc	3470

l0800_3418:
	cmp	word ptr [bp-10],00
	jg	3427

l0800_341E:
	jl	3440

l0800_3420:
	cmp	word ptr [bp-12],FA00
	jbe	3440

l0800_3427:
	mov	word ptr [bp-1E],FA00
	mov	ax,[bp-12]
	mov	dx,[bp-10]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp-12],ax
	mov	[bp-10],dx
	jmp	344E

l0800_3440:
	mov	ax,[bp-12]
	mov	[bp-1E],ax
	xor	ax,ax
	mov	[bp-12],ax
	mov	[bp-10],ax

l0800_344E:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-1E]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	word ptr [29A6],0001

l0800_3470:
	mov	ax,[29A6]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al
	mov	ax,[299C]
	mov	[bp-20],ax
	mov	ax,0001
	cmp	ax,[bp-20]
	jbe	3491

l0800_348E:
	jmp	353B

l0800_3491:
	mov	[bp-08],ax
	jmp	3499

l0800_3496:
	inc	word ptr [bp-08]

l0800_3499:
	inc	word ptr [bp-0C]
	mov	dl,[29A8]
	mov	ax,[bp-0C]
	les	di,[8C8E]
	add	di,ax
	mov	es:[di-01],dl
	mov	ax,[bp-0C]
	cmp	ax,[bp-02]
	jnz	3530

l0800_34B5:
	cmp	word ptr [bp-1C],00
	jle	3510

l0800_34BB:
	cmp	byte ptr [bp+08],00
	jz	34F9

l0800_34C1:
	cmp	byte ptr [bp+04],00
	jnz	34E0

l0800_34C7:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:07CB
	jmp	34F7

l0800_34E0:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:083C

l0800_34F7:
	jmp	3510

l0800_34F9:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:08AF

l0800_3510:
	xor	ax,ax
	mov	[bp-0C],ax
	mov	ax,[bp-1C]
	add	[bp-16],ax
	mov	ax,[bp-18]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-1C]
	cwd
	call	far 2733:0E82
	mov	[bp-02],ax

l0800_3530:
	mov	ax,[bp-08]
	cmp	ax,[bp-20]
	jz	353B

l0800_3538:
	jmp	3496

l0800_353B:
	jmp	36AD

l0800_353E:
	inc	byte ptr [29A8]
	mov	al,[29A8]
	xor	ah,ah
	mov	[bp-20],ax
	mov	ax,0001
	cmp	ax,[bp-20]
	jbe	3555

l0800_3552:
	jmp	36AD

l0800_3555:
	mov	[bp-08],ax
	jmp	355D

l0800_355A:
	inc	word ptr [bp-08]

l0800_355D:
	mov	ax,[299E]
	mov	dx,[29A0]
	cmp	dx,[29A4]
	jl	3578

l0800_356A:
	jle	356F

l0800_356C:
	jmp	360B

l0800_356F:
	cmp	ax,[29A2]
	jc	3578

l0800_3575:
	jmp	360B

l0800_3578:
	add	word ptr [299E],01
	adc	word ptr [29A0],00
	inc	word ptr [29A6]
	mov	ax,[29A6]
	cmp	ax,[bp-1E]
	jbe	35FB

l0800_358E:
	mov	ax,[299E]
	mov	dx,[29A0]
	cmp	dx,[29A4]
	jl	35A3

l0800_359B:
	jg	35FB

l0800_359D:
	cmp	ax,[29A2]
	jnc	35FB

l0800_35A3:
	cmp	word ptr [bp-10],00
	jg	35B2

l0800_35A9:
	jl	35CB

l0800_35AB:
	cmp	word ptr [bp-12],FA00
	jbe	35CB

l0800_35B2:
	mov	word ptr [bp-1E],FA00
	mov	ax,[bp-12]
	mov	dx,[bp-10]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp-12],ax
	mov	[bp-10],dx
	jmp	35D9

l0800_35CB:
	mov	ax,[bp-12]
	mov	[bp-1E],ax
	xor	ax,ax
	mov	[bp-12],ax
	mov	[bp-10],ax

l0800_35D9:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-1E]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	word ptr [29A6],0001

l0800_35FB:
	mov	ax,[29A6]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	[29A8],al

l0800_360B:
	inc	word ptr [bp-0C]
	mov	dl,[29A8]
	mov	ax,[bp-0C]
	les	di,[8C8E]
	add	di,ax
	mov	es:[di-01],dl
	mov	ax,[bp-0C]
	cmp	ax,[bp-02]
	jnz	36A2

l0800_3627:
	cmp	word ptr [bp-1C],00
	jle	3682

l0800_362D:
	cmp	byte ptr [bp+08],00
	jz	366B

l0800_3633:
	cmp	byte ptr [bp+04],00
	jnz	3652

l0800_3639:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:07CB
	jmp	3669

l0800_3652:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:083C

l0800_3669:
	jmp	3682

l0800_366B:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:08AF

l0800_3682:
	xor	ax,ax
	mov	[bp-0C],ax
	mov	ax,[bp-1C]
	add	[bp-16],ax
	mov	ax,[bp-18]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-1C]
	cwd
	call	far 2733:0E82
	mov	[bp-02],ax

l0800_36A2:
	mov	ax,[bp-08]
	cmp	ax,[bp-20]
	jz	36AD

l0800_36AA:
	jmp	355A

l0800_36AD:
	mov	ax,[299E]
	mov	dx,[29A0]
	cmp	dx,[29A4]
	jg	36C8

l0800_36BA:
	jge	36BF

l0800_36BC:
	jmp	3338

l0800_36BF:
	cmp	ax,[29A2]
	jnc	36C8

l0800_36C5:
	jmp	3338

l0800_36C8:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	ax,[bp-18]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,[bp-0C]
	xor	dx,dx
	call	far 2733:15D5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	[bp-1C],ax
	push	word ptr [bp-16]
	push	word ptr [bp-1C]
	mov	al,[bp+06]
	push	ax
	call	2ECF
	mov	[bp-1C],ax
	cmp	word ptr [bp-1C],00
	jle	3769

l0800_3714:
	cmp	byte ptr [bp+08],00
	jz	3752

l0800_371A:
	cmp	byte ptr [bp+04],00
	jnz	3739

l0800_3720:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:07CB
	jmp	3750

l0800_3739:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:083C

l0800_3750:
	jmp	3769

l0800_3752:
	push	word ptr [bp-14]
	push	word ptr [bp-16]
	push	word ptr [bp-18]
	push	word ptr [bp-1C]
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:08AF

l0800_3769:
	xor	ax,ax
	mov	[bp-0C],ax
	cmp	byte ptr [bp+0A],00
	jz	37D3

l0800_3774:
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	mov	di,ax
	mov	al,[di+4BF5]
	mov	[bp-03],al
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	inc	ax
	inc	ax
	mov	di,ax
	mov	al,[di+4BF5]
	mov	[bp-04],al
	mov	ax,[bp-0C]
	mov	si,ax
	shl	ax,01
	add	ax,si
	add	ax,0003
	mov	di,ax
	mov	al,[di+4BF5]
	mov	[bp-05],al
	mov	al,[bp-0C]
	push	ax
	mov	al,[bp-03]
	push	ax
	mov	al,[bp-04]
	push	ax
	mov	al,[bp-05]
	push	ax
	call	far 2234:0A14
	mov	ax,[bp-0C]
	inc	ax
	mov	[bp-0C],ax
	cmp	word ptr [bp-0C],0100
	jc	3774

l0800_37D3:
	cmp	byte ptr [bp+0A],00
	jz	37DE

l0800_37D9:
	mov	byte ptr [298E],01

l0800_37DE:
	leave
	ret	000E

;; fn0800_37E2: 0800:37E2
fn0800_37E2 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	37F8

l0800_37F4:
	inc	word ptr [51FA]

l0800_37F8:
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0034]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0036]
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:05EA
	cmp	word ptr [51FA],08
	jnz	37F4

l0800_3846:
	push	02
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	leave
	ret

;; fn0800_3861: 0800:3861
fn0800_3861 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	3877

l0800_3873:
	inc	word ptr [51FA]

l0800_3877:
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0034]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0036]
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:05EA
	cmp	word ptr [51FA],08
	jnz	3873

l0800_38C5:
	push	03
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	leave
	ret

;; fn0800_38E0: 0800:38E0
fn0800_38E0 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0001
	jmp	38F6

l0800_38F2:
	inc	word ptr [51FA]

l0800_38F6:
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0030]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0032]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0034]
	mov	di,[51FA]
	shl	di,03
	push	word ptr [di+0036]
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+8C98]
	les	di,[8C92]
	add	di,ax
	add	di,FFFF
	push	es
	push	di
	call	far 2234:05EA
	cmp	word ptr [51FA],08
	jnz	38F2

l0800_3944:
	push	04
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	leave
	ret

;; fn0800_395F: 0800:395F
fn0800_395F proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	call	far 21BB:012A
	mov	ax,[bp+06]
	cmp	ax,[298C]
	jnz	397A

l0800_3977:
	jmp	3B6D

l0800_397A:
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	cmp	byte ptr [2786],00
	jnz	39BE

l0800_399A:
	cmp	byte ptr [bp+04],00
	jz	39A3

l0800_39A0:
	call	0547

l0800_39A3:
	push	08
	push	3C
	push	word ptr [bp+06]
	push	00
	push	01
	push	00
	push	01
	call	2F49
	cmp	byte ptr [bp+04],00
	jz	39BE

l0800_39BB:
	call	045A

l0800_39BE:
	mov	ax,[bp+06]
	mov	[298C],ax
	mov	ax,[bp+06]
	mov	[298A],ax
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	5C
	push	0276
	push	00F6
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:05EA
	push	05
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	EA60
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	00F6
	push	0276
	push	0190
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:05EA
	push	06
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	EA60
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	08
	push	50
	mov	ax,[28D8]
	shl	ax,03
	add	ax,0034
	push	ax
	push	00F6
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:05EA
	push	0D
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	D6D8
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	08
	push	00F6
	mov	ax,[28D8]
	shl	ax,03
	add	ax,0034
	push	ax
	push	0195
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:05EA
	push	0E
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	D6D8
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ah,00
	call	far 2234:003F
	push	07
	mov	di,9600
	mov	ax,A000
	push	ax
	push	di
	push	00
	push	6A00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ah,01
	call	far 2234:003F
	push	08
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ah,02
	call	far 2234:003F
	push	09
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ah,03
	call	far 2234:003F
	push	0A
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ah,04
	call	far 2234:003F
	push	0B
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	00
	push	3580
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	jmp	3C14

l0800_3B6D:
	mov	ah,00
	call	far 2234:003F
	push	07
	mov	di,9600
	mov	ax,A000
	push	ax
	push	di
	push	00
	push	6A00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ah,01
	call	far 2234:003F
	push	08
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ah,02
	call	far 2234:003F
	push	09
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ah,03
	call	far 2234:003F
	push	0A
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	01
	push	00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ah,04
	call	far 2234:003F
	push	0B
	mov	di,0000
	mov	ax,A000
	push	ax
	push	di
	push	00
	push	3580
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F

l0800_3C14:
	call	far 21BB:0108
	leave
	ret	0004

;; fn0800_3C1D: 0800:3C1D
fn0800_3C1D proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	05
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	EA60
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	call	far 21BB:012A
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	5C
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:067C
	push	06
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	EA60
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	00F6
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:067C
	call	far 21BB:0108
	leave
	ret

;; fn0800_3C9C: 0800:3C9C
fn0800_3C9C proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	0D
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	D6D8
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	call	far 21BB:012A
	push	08
	push	50
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:067C
	push	0E
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	D6D8
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	push	08
	push	00F6
	les	di,[8C92]
	push	es
	push	di
	call	far 2234:067C
	call	far 21BB:0108
	leave
	ret

;; fn0800_3D03: 0800:3D03
fn0800_3D03 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,[8FFE]
	mov	[1098],ax
	mov	word ptr [8FFE],001F
	call	045A
	push	word ptr [298A]
	push	00
	call	395F
	mov	word ptr [F3CE],000A
	call	far 21BB:01A8
	call	22ED
	mov	ax,[1098]
	mov	[8FFE],ax
	call	045A
	mov	word ptr [F3CE],0001
	call	far 21BB:01A8
	leave
	ret

;; fn0800_3D49: 0800:3D49
fn0800_3D49 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	call	far 21BB:012A
	mov	byte ptr [0F9B],B8
	push	00
	push	00
	push	01
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	00
	push	01AF
	push	02
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	00
	push	3C
	push	06
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	0278
	push	3C
	push	07
	push	00
	push	01
	push	00
	push	00
	call	2F49
	call	2B97
	call	far 21BB:0108
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	leave
	ret

;; fn0800_3DDF: 0800:3DDF
fn0800_3DDF proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	call	far 21BB:012A
	mov	byte ptr [0F9B],B8
	push	00
	push	00
	push	0B
	push	00
	push	01
	push	00
	push	00
	call	2F49
	call	0BEE
	push	00
	push	00
	push	01
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	00
	push	3C
	push	06
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	0278
	push	3C
	push	07
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	00
	push	01AF
	push	04
	push	00
	push	01
	push	00
	push	00
	call	2F49
	call	38E0
	push	00
	push	01AF
	push	03
	push	00
	push	01
	push	00
	push	00
	call	2F49
	call	3861
	push	00
	push	01AF
	push	02
	push	00
	push	01
	push	00
	push	00
	call	2F49
	call	37E2
	call	2B97
	call	far 21BB:0108
	leave
	ret

;; fn0800_3E84: 0800:3E84
fn0800_3E84 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	1388
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	cmp	word ptr [28E4],00
	jle	3EB7

l0800_3EAE:
	push	08
	push	55
	push	06
	call	0CF9

l0800_3EB7:
	mov	ax,[28E4]
	cmp	ax,[28E6]
	jge	3ECA

l0800_3EC0:
	push	08
	push	0181
	push	07
	call	0CF9

l0800_3ECA:
	leave
	ret

;; fn0800_3ECC: 0800:3ECC
fn0800_3ECC proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	01
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	1388
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	1388
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	cmp	word ptr [8C8A],01
	jle	3F19

l0800_3F0F:
	push	0264
	push	64
	push	06
	call	0CF9

l0800_3F19:
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[32E4],ax
	mov	ax,[32E4]
	cwd
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,7000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C8A]
	cwd
	cmp	dx,bx
	jl	3F6D

l0800_3F67:
	jg	3F78

l0800_3F69:
	cmp	ax,cx
	jnc	3F78

l0800_3F6D:
	push	0264
	push	017C
	push	07
	call	0CF9

l0800_3F78:
	push	01
	les	di,[8C8E]
	push	es
	push	di
	push	00
	push	1388
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	leave
	ret

;; fn0800_3F93: 0800:3F93
fn0800_3F93 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	call	far 21BB:012A
	call	3E84
	mov	al,[32C8]
	mov	[0F9B],al
	xor	ax,ax
	mov	[51FC],ax
	mov	ax,[28D4]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[28E4]
	cwd
	add	ax,cx
	adc	dx,bx
	mov	[bp-02],ax
	mov	ax,[28E4]
	inc	ax
	cmp	ax,[bp-02]
	ja	4007

l0800_3FD1:
	mov	[51FA],ax
	jmp	3FDA

l0800_3FD6:
	inc	word ptr [51FA]

l0800_3FDA:
	mov	ax,[51FC]
	inc	ax
	mov	[51FC],ax
	push	26
	mov	ax,[51FC]
	dec	ax
	imul	ax,ax,12
	add	ax,[32C0]
	push	ax
	imul	di,[51FA],29
	add	di,76D7
	push	ds
	push	di
	call	far 2234:051E
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	3FD6

l0800_4007:
	call	far 21BB:0108
	leave
	ret
0800:400E                                           02 FA               ..
0800:4010 20                                                             

;; fn0800_4011: 0800:4011
fn0800_4011 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	call	far 21BB:012A
	mov	byte ptr [0F9B],97
	imul	di,[8C80],29
	add	di,76D7
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	01
	push	02
	call	far 2733:0FD5
	mov	di,400E
	push	cs
	push	di
	call	far 2733:1088
	jnz	4088

l0800_4062:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	02
	mov	al,[32F2]
	xor	ah,ah
	dec	ax
	push	ax
	call	far 2733:0FD5
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_4088:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	2AEE
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	al,[32F2]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,0008
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	mov	ax,[28D8]
	shl	ax,03
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,008A
	xor	bx,bx
	mov	dx,1800
	pop	cx
	pop	si
	pop	di
	call	far 2733:15B5
	call	far 2733:15E1
	pop	cx
	pop	bx
	sub	ax,cx
	sbb	dx,bx
	push	ax
	push	5C
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:02B6
	xor	ax,ax
	mov	[5200],ax
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	mov	dx,ax
	mov	di,[8C80]
	shl	di,01
	mov	ax,[di+8702]
	dec	ax
	add	ax,dx
	mov	[51FA],ax
	mov	al,[32C8]
	mov	[0F9B],al

l0800_4134:
	mov	ax,[5200]
	inc	ax
	mov	[5200],ax
	mov	ax,[51FA]
	inc	ax
	mov	[51FA],ax
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0260
	sub	ax,dx
	push	ax
	imul	ax,[5200],12
	add	ax,006E
	push	ax
	mov	di,[51FA]
	shl	di,01
	imul	ax,[di+2ABA],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	call	far 2234:051E
	cmp	word ptr [5200],0E
	ja	419E

l0800_417C:
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	dec	ax
	dec	ax
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[51FA]
	xor	dx,dx
	cmp	dx,bx
	jg	419E

l0800_4198:
	jl	4134

l0800_419A:
	cmp	ax,cx
	jbe	4134

l0800_419E:
	call	3ECC
	call	far 21BB:0108
	leave
	ret
0800:41A8                         01 0D 02 00 48 02 00 50         ....H..P
0800:41B0 02 00 47 02 00 4F                               ..G..O         

;; fn0800_41B6: 0800:41B6
fn0800_41B6 proc
	push	bp
	mov	bp,sp
	mov	ax,0102
	call	far 2733:0530
	sub	sp,0102
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_41D8:
	rep movsb

l0800_41DA:
	mov	ds,bx
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mov	[32C2],ax
	cmp	byte ptr [F38E],00
	jnz	41F2

l0800_41EF:
	jmp	44AE

l0800_41F2:
	mov	byte ptr [2993],00
	mov	ax,[bp+0E]
	mov	[bp+FEFE],ax
	mov	ax,0001
	cmp	ax,[bp+FEFE]
	jbe	420A

l0800_4207:
	jmp	44AC

l0800_420A:
	mov	[51FA],ax
	jmp	4213

l0800_420F:
	inc	word ptr [51FA]

l0800_4213:
	mov	ax,[F396]
	cmp	ax,[bp+18]
	jg	421E

l0800_421B:
	jmp	44A0

l0800_421E:
	mov	ax,[bp+18]
	add	ax,[bp+14]
	cmp	ax,[F396]
	jg	422D

l0800_422A:
	jmp	44A0

l0800_422D:
	mov	ax,[bp+10]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[51FA]
	xor	dx,dx
	call	far 2733:0E82
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+16]
	cwd
	add	ax,cx
	adc	dx,bx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	4263

l0800_4257:
	jge	425C

l0800_4259:
	jmp	44A0

l0800_425C:
	cmp	ax,cx
	ja	4263

l0800_4260:
	jmp	44A0

l0800_4263:
	mov	ax,[bp+10]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[51FA]
	xor	dx,dx
	call	far 2733:0E82
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+16]
	cwd
	add	ax,cx
	adc	dx,bx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+12]
	cwd
	add	ax,cx
	adc	dx,bx
	add	ax,0001
	adc	dx,00
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	42AB

l0800_429F:
	jle	42A4

l0800_42A1:
	jmp	44A0

l0800_42A4:
	cmp	ax,cx
	jc	42AB

l0800_42A8:
	jmp	44A0

l0800_42AB:
	mov	byte ptr [2993],01
	mov	ax,[51FA]
	mov	di,[bp+0C]
	shl	di,01
	mov	[di+5404],ax
	cmp	byte ptr [298E],00
	jz	42C6

l0800_42C3:
	jmp	44A0

l0800_42C6:
	cmp	byte ptr [F388],00
	jnz	42D0

l0800_42CD:
	jmp	44A0

l0800_42D0:
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32C2]
	xor	dx,dx
	cmp	dx,bx
	jz	42EA

l0800_42E7:
	jmp	44A0

l0800_42EA:
	cmp	ax,cx
	jz	42F1

l0800_42EE:
	jmp	44A0

l0800_42F1:
	cmp	byte ptr [2992],00
	jz	4307

l0800_42F8:
	cmp	byte ptr [76FE],00
	jz	4307

l0800_42FF:
	mov	word ptr [2D28],0008
	jmp	4318

l0800_4307:
	mov	di,41A8
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_4318:
	call	far 21BB:012A
	mov	ax,[bp+18]
	inc	ax
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	inc	ax
	push	ax
	mov	ax,[bp+18]
	add	ax,[bp+14]
	sub	ax,0004
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	dec	ax
	dec	ax
	push	ax
	les	di,[8C8E]
	add	di,270F
	push	es
	push	di
	call	far 2234:05EA
	mov	ax,[bp+18]
	add	ax,0003
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	inc	ax
	push	ax
	les	di,[8C8E]
	add	di,270F
	push	es
	push	di
	call	far 2234:067C
	mov	byte ptr [0F9B],1C
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	mov	ax,[bp+12]
	inc	ax
	push	ax
	call	far 2234:00C2
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	mov	ax,[bp+18]
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	mov	byte ptr [0F9B],1E
	mov	ax,[bp+18]
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	mov	ax,[bp+18]
	add	ax,[bp+14]
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	mov	ax,[bp+18]
	inc	ax
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	dec	ax
	push	ax
	mov	ax,[bp+14]
	dec	ax
	push	ax
	call	far 2234:00FF
	mov	ax,[bp+18]
	add	ax,[bp+14]
	dec	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	mov	byte ptr [32C6],01
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_4499:
	cmp	byte ptr [F388],00
	jnz	4499

l0800_44A0:
	mov	ax,[51FA]
	cmp	ax,[bp+FEFE]
	jz	44AC

l0800_44A9:
	jmp	420F

l0800_44AC:
	jmp	44B3

l0800_44AE:
	mov	byte ptr [2993],01

l0800_44B3:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,41AA
	push	cs
	push	di
	call	far 2733:1088
	jnz	44D8

l0800_44C5:
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	dec	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	[di+5404],ax

l0800_44D8:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,41AD
	push	cs
	push	di
	call	far 2733:1088
	jnz	44FD

l0800_44EA:
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	inc	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	[di+5404],ax

l0800_44FD:
	xor	ax,ax
	mov	[32D2],ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	cmp	ax,[bp+0E]
	jle	4533

l0800_4510:
	mov	ax,[bp+0E]
	mov	di,[bp+0C]
	shl	di,01
	mov	[di+5404],ax
	cmp	word ptr [bp+0C],02
	jz	4528

l0800_4522:
	cmp	word ptr [bp+0C],01
	jnz	4533

l0800_4528:
	mov	word ptr [32D2],0002
	mov	byte ptr [2D2A],01

l0800_4533:
	mov	di,[bp+0C]
	shl	di,01
	cmp	word ptr [di+5404],01
	jge	4561

l0800_453F:
	mov	di,[bp+0C]
	shl	di,01
	mov	word ptr [di+5404],0001
	cmp	word ptr [bp+0C],02
	jz	4556

l0800_4550:
	cmp	word ptr [bp+0C],01
	jnz	4561

l0800_4556:
	mov	word ptr [32D2],0001
	mov	byte ptr [2D2A],01

l0800_4561:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,41B0
	push	cs
	push	di
	call	far 2733:1088
	jnz	457E

l0800_4573:
	mov	di,[bp+0C]
	shl	di,01
	mov	word ptr [di+5404],0001

l0800_457E:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,41B3
	push	cs
	push	di
	call	far 2733:1088
	jnz	459C

l0800_4590:
	mov	ax,[bp+0E]
	mov	di,[bp+0C]
	shl	di,01
	mov	[di+5404],ax

l0800_459C:
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32C2]
	xor	dx,dx
	cmp	dx,bx
	jnz	45D6

l0800_45B3:
	cmp	ax,cx
	jnz	45D6

l0800_45B7:
	mov	ax,[bp+0C]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32C4]
	xor	dx,dx
	cmp	dx,bx
	jnz	45D6

l0800_45C8:
	cmp	ax,cx
	jnz	45D6

l0800_45CC:
	cmp	byte ptr [32C6],00
	jnz	45D6

l0800_45D3:
	jmp	47A8

l0800_45D6:
	call	far 21BB:012A
	cmp	byte ptr [298E],00
	jnz	4611

l0800_45E2:
	push	word ptr [bp+18]
	mov	ax,[bp+10]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32C2]
	xor	dx,dx
	call	far 2733:0E82
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+16]
	cwd
	add	ax,cx
	adc	dx,bx
	push	ax
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:067C
	jmp	4616

l0800_4611:
	mov	byte ptr [298E],00

l0800_4616:
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	mov	ax,[bp+18]
	add	ax,[bp+14]
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	push	ax
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:05EA
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+14]
	push	word ptr [bp+12]
	mov	al,[32C8]
	push	ax
	mov	al,[2F9A]
	push	ax
	call	far 2234:099C
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+14]
	push	word ptr [bp+12]
	mov	al,[32C8]
	push	ax
	mov	al,[2F9B]
	push	ax
	call	far 2234:0924
	mov	byte ptr [0F9B],FF
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	mov	ax,[bp+12]
	inc	ax
	push	ax
	call	far 2234:00C2
	push	word ptr [bp+18]
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	mov	ax,[bp+18]
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	mov	byte ptr [0F9B],26
	mov	ax,[bp+18]
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	push	ax
	push	word ptr [bp+14]
	call	far 2234:00FF
	mov	ax,[bp+18]
	add	ax,[bp+14]
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	mov	ax,[bp+18]
	inc	ax
	inc	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	add	ax,[bp+12]
	dec	ax
	push	ax
	mov	ax,[bp+14]
	dec	ax
	push	ax
	call	far 2234:00FF
	mov	ax,[bp+18]
	add	ax,[bp+14]
	dec	ax
	push	ax
	mov	di,[bp+0C]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+10]
	add	ax,[bp+16]
	inc	ax
	push	ax
	push	word ptr [bp+12]
	call	far 2234:00C2
	call	far 21BB:0108
	call	far 21BB:01A8
	mov	byte ptr [32C6],00

l0800_47A8:
	mov	ax,[bp+0C]
	mov	[32C4],ax
	leave
	ret	0016

;; fn0800_47B2: 0800:47B2
fn0800_47B2 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	byte ptr [298E],00
	jnz	47FA

l0800_47C3:
	mov	byte ptr [0F9B],00
	call	far 21BB:012A
	push	word ptr [bp+10]
	mov	di,[bp+04]
	shl	di,01
	mov	ax,[di+5404]
	mul	word ptr [bp+08]
	add	ax,[bp+0E]
	push	ax
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:067C
	call	far 21BB:0108
	call	far 21BB:01A8
	mov	byte ptr [298E],01

l0800_47FA:
	leave
	ret	000E
0800:47FE                                           16 53               .S
0800:4800 74 61 72 74 69 6E 67 20 42 6F 6F 73 74 65 72 20 tarting Booster 
0800:4810 23 31 2E 2E 2E 16 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D #1....----------
0800:4820 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 2D 1E 41 20 48 ------------.A H
0800:4830 49 4D 45 4D 2E 53 59 53 20 6E 69 6E 63 73 20 69 IMEM.SYS nincs i
0800:4840 6E 73 74 61 6C 6C A0 6C 76 61 2E 18 54 6F 74 61 nstall.lva..Tota
0800:4850 6C 20 46 72 65 65 20 58 4D 53 20 4D 65 6D 6F 72 l Free XMS Memor
0800:4860 79 20 3A 20 03 20 4B 42 27 4D 69 6E 69 6D 75 6D y : . KB'Minimum
0800:4870 20 38 39 36 20 4B 42 20 73 7A 61 62 61 64 20 58  896 KB szabad X
0800:4880 4D 53 20 6D 65 6D A2 72 69 61 20 6B 65 6C 6C 2E MS mem.ria kell.
0800:4890 23 46 72 65 65 20 58 4D 53 20 4D 65 6D 6F 72 79 #Free XMS Memory
0800:48A0 20 61 66 74 65 72 20 61 6C 6C 6F 63 61 74 69 6F  after allocatio
0800:48B0 6E 73 3A 20                                     ns:            

;; fn0800_48B4: 0800:48B4
fn0800_48B4 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,F600
	push	ds
	push	di
	mov	di,47FE
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,4815
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	les	di,[1094]
	mov	word ptr es:[di],0001
	mov	di,1094
	push	ds
	push	di
	call	far 2098:0008
	call	0079
	or	al,al
	jnz	493F

l0800_491D:
	mov	di,F600
	push	ds
	push	di
	mov	di,482C
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l0800_493F:
	mov	di,F600
	push	ds
	push	di
	mov	di,484B
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	00BB
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	mov	di,4864
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	00BB
	cmp	ax,0380
	jnc	499E

l0800_497C:
	mov	di,F600
	push	ds
	push	di
	mov	di,4868
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l0800_499E:
	call	0174
	mov	di,F600
	push	ds
	push	di
	mov	di,4890
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	00BB
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	mov	di,4864
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	word ptr [8C80],0001
	mov	word ptr [8C8A],0001
	mov	word ptr [51FA],0001
	jmp	49EE

l0800_49EA:
	inc	word ptr [51FA]

l0800_49EE:
	mov	di,[51FA]
	shl	di,01
	mov	word ptr [di+5404],0001
	cmp	word ptr [51FA],0A
	jnz	49EA

l0800_4A01:
	mov	word ptr [32C8],0087
	mov	word ptr [32CA],00A7
	mov	word ptr [32CC],00B0
	mov	word ptr [32CE],0088
	mov	word ptr [32D0],0030
	xor	ax,ax
	mov	[32C2],ax
	xor	ax,ax
	mov	[32C4],ax
	mov	byte ptr [32C6],01
	mov	word ptr [F3CE],0001
	mov	di,[8FFA]
	shl	di,02
	mov	al,[di+07BC]
	mov	[2F9A],al
	mov	di,[8FFA]
	shl	di,02
	mov	al,[di+07BE]
	mov	[2F9B],al
	mov	byte ptr [2D2A],00
	xor	ax,ax
	mov	[2F96],ax
	xor	ax,ax
	mov	[2F98],ax
	xor	ax,ax
	mov	[2ABA],ax
	mov	byte ptr [2A46],00
	xor	ax,ax
	mov	[2D28],ax
	mov	word ptr [8C88],0001
	mov	byte ptr [298E],01
	mov	ax,ds
	mov	[8E2A],ax
	mov	ax,8E2E
	mov	[8E2C],ax
	mov	byte ptr [2F94],01
	xor	ax,ax
	mov	[298C],ax
	call	1CCB
	mov	byte ptr [2998],01
	mov	byte ptr [2991],00
	call	1735
	mov	word ptr [8CD2],0001
	mov	word ptr [8CD4],0001
	xor	ax,ax
	mov	[28E4],ax
	xor	ax,ax
	mov	[28E2],ax
	mov	word ptr [F4EA],0001
	mov	byte ptr [27E3],00
	mov	byte ptr [27E4],00
	mov	byte ptr [27E5],00
	xor	ax,ax
	mov	[2994],ax
	mov	word ptr [27EA],0054
	leave
	ret
0800:4AD6                   01 5F 04 2E 6C 62 6D                ._..lbm  

;; fn0800_4ADD: 0800:4ADD
fn0800_4ADD proc
	push	bp
	mov	bp,sp
	mov	ax,0214
	call	far 2733:0530
	sub	sp,0214
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_4AFF:
	rep movsb

l0800_4B01:
	mov	ds,bx
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ax,[bp+08]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	lea	di,[bp+FEF2]
	push	ss
	push	di
	push	0C
	call	far 2733:1B51
	mov	ax,[bp+0A]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+2F98]
	mov	dx,[di+2F9A]
	mov	di,[bp+0A]
	shl	di,02
	sub	ax,[di+2F98]
	sbb	dx,[di+2F9A]
	mov	[29A2],ax
	mov	[29A4],dx
	mov	ax,[29A2]
	mov	dx,[29A4]
	mov	[bp+FEEE],ax
	mov	[bp+FEF0],dx
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	lea	di,[bp+FDEC]
	push	ss
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,4AD6
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF2]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,4AD8
	push	cs
	push	di
	call	far 2733:1016
	call	far 2733:0AE2
	mov	di,5286
	push	ds
	push	di
	push	01
	call	far 2733:0B26
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	ax,[32BC]
	mov	dx,[32BE]
	mov	di,[bp+0A]
	shl	di,02
	add	ax,[di+2F98]
	adc	dx,[di+2F9A]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4

l0800_4C2A:
	cmp	word ptr [bp+FEF0],00
	jg	4C3B

l0800_4C31:
	jl	4C59

l0800_4C33:
	cmp	word ptr [bp+FEEE],FA00
	jbe	4C59

l0800_4C3B:
	mov	word ptr [bp+FEEC],FA00
	mov	ax,[bp+FEEE]
	mov	dx,[bp+FEF0]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp+FEEE],ax
	mov	[bp+FEF0],dx
	jmp	4C6B

l0800_4C59:
	mov	ax,[bp+FEEE]
	mov	[bp+FEEC],ax
	xor	ax,ax
	mov	[bp+FEEE],ax
	mov	[bp+FEF0],ax

l0800_4C6B:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp+FEEC]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp+FEEC]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C0F
	call	far 2733:04F4
	mov	ax,[bp+FEEE]
	or	ax,[bp+FEF0]
	jz	4CB2

l0800_4CAF:
	jmp	4C2A

l0800_4CB2:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	leave
	ret	0008

;; fn0800_4D17: 0800:4D17
fn0800_4D17 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	inc	word ptr [5202]
	mov	di,[bp+04]
	cmp	word ptr ss:[di+FE86],00
	jnz	4D72

l0800_4D35:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	jmp	4D7A

l0800_4D72:
	mov	di,[bp+04]
	dec	word ptr ss:[di+FE86]

l0800_4D7A:
	leave
	ret	0002
0800:4D7E                                           01 30               .0
0800:4D80 0C 64 65 73 63 72 69 70 74 2E 69 6F 6E 05 2E 6C .descript.ion..l
0800:4D90 62 6D 20 05 2E 7A 69 70 20 04 2E 6C 62 6D 04 2E bm ..zip ..lbm..
0800:4DA0 7A 69 70 01 2E 01 20 01 B3 2A DA C4 C4 C4 C4 C4 zip... ..*......
0800:4DB0 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
0800:4DC0 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
0800:4DD0 C4 C4 C4 BF 2A B3 46 6F 72 6D A0 74 75 6D 3A 20 ....*.Form.tum: 
0800:4DE0 42 4F 4F 53 54 45 52 20 5B 58 5D 20 20 74 78 74 BOOSTER [X]  txt
0800:4DF0 20 5B 20 5D 20 20 20 20 20 20 20 20 20 20 B3 2A  [ ]          .*
0800:4E00 B3 54 45 4C 4A 45 53 20 43 49 4B 4B 20 5B 58 5D .TELJES CIKK [X]
0800:4E10 20 20 6C 69 6E 6B 65 6C 74 20 73 7A 94 76 65 67   linkelt sz.veg
0800:4E20 72 82 73 7A 20 5B 20 5D 20 B3 2A C0 C4 C4 C4 C4 r.sz [ ] .*.....
0800:4E30 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
0800:4E40 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
0800:4E50 C4 C4 C4 C4 D9 2A B3 46 6F 72 6D A0 74 75 6D 3A .....*.Form.tum:
0800:4E60 20 62 6F 6F 73 74 65 72 20 5B 20 5D 20 20 54 58  booster [ ]  TX
0800:4E70 54 20 5B 58 5D 20 20 20 20 20 20 20 20 20 20 B3 T [X]          .
0800:4E80 2A B3 74 65 6C 6A 65 73 20 63 69 6B 6B 20 5B 20 *.teljes cikk [ 
0800:4E90 5D 20 20 4C 49 4E 4B 45 4C 54 20 53 5A 99 56 45 ]  LINKELT SZ.VE
0800:4EA0 47 52 90 53 5A 20 5B 58 5D 20 B3 01 5B 05 2E 6B GR.SZ [X] ..[..k
0800:4EB0 82 70 5D 01 A8                                  .p]..          

;; fn0800_4EB5: 0800:4EB5
fn0800_4EB5 proc
	push	bp
	mov	bp,sp
	mov	ax,0380
	call	far 2733:0530
	sub	sp,0380
	mov	ax,[181A]
	mov	[bp-02],ax
	xor	ax,ax
	mov	[bp+FE8C],ax
	mov	ax,[bp-02]
	cwd
	push	dx
	push	ax
	push	00
	lea	di,[bp+FEF4]
	push	ss
	push	di
	push	03
	call	far 2733:1B51

l0800_4EE5:
	cmp	byte ptr [bp+FEF4],03
	jnc	4F16

l0800_4EEC:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,4D7E
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF4]
	push	ss
	push	di
	push	03
	call	far 2733:0FB1
	jmp	4EE5

l0800_4F16:
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],A8
	jz	4F39

l0800_4F26:
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],FB
	jz	4F39

l0800_4F36:
	jmp	5235

l0800_4F39:
	cmp	byte ptr [bp+04],00
	jnz	4F42

l0800_4F3F:
	jmp	5235

l0800_4F42:
	cmp	byte ptr [8FF3],00
	jnz	4F4C

l0800_4F49:
	jmp	5044

l0800_4F4C:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4D80
	push	cs
	push	di
	call	far 2733:0549
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:05D1
	call	far 2733:04ED
	cmp	ax,0002
	jnz	4F7C

l0800_4F71:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:05CC

l0800_4F7C:
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],A8
	jnz	4FD8

l0800_4F8C:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,4D8D
	push	cs
	push	di
	call	far 2733:1016
	imul	ax,[bp-02],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	call	far 2733:1016
	push	00
	call	far 2733:09DB
	call	far 2733:0840

l0800_4FD8:
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],FB
	jnz	5034

l0800_4FE8:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,4D93
	push	cs
	push	di
	call	far 2733:1016
	imul	ax,[bp-02],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	call	far 2733:1016
	push	00
	call	far 2733:09DB
	call	far 2733:0840

l0800_5034:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:0621
	call	far 2733:04F4

l0800_5044:
	mov	ax,[549A]
	add	ax,0003
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	cx,ax
	mov	ax,[549A]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	mov	ax,[549A]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[32E4],ax
	mov	ax,[32E4]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+2F98]
	mov	dx,[di+2F9A]
	mov	di,[32E4]
	shl	di,02
	sub	ax,[di+2F98]
	sbb	dx,[di+2F9A]
	mov	[29A2],ax
	mov	[29A4],dx
	mov	ax,[29A2]
	mov	dx,[29A4]
	mov	[bp-08],ax
	mov	[bp-06],dx
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	les	di,[8C92]
	cmp	byte ptr es:[di],A8
	jnz	511E

l0800_50EF:
	mov	di,5286
	push	ds
	push	di
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,4D99
	push	cs
	push	di
	call	far 2733:1016
	call	far 2733:0AE2

l0800_511E:
	les	di,[8C92]
	cmp	byte ptr es:[di],FB
	jnz	5157

l0800_5128:
	mov	di,5286
	push	ds
	push	di
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,4D9E
	push	cs
	push	di
	call	far 2733:1016
	call	far 2733:0AE2

l0800_5157:
	mov	di,5286
	push	ds
	push	di
	push	01
	call	far 2733:0B26
	call	far 2733:04F4
	mov	di,5206
	push	ds
	push	di
	mov	ax,[32BC]
	mov	dx,[32BE]
	mov	di,[32E4]
	shl	di,02
	add	ax,[di+2F98]
	adc	dx,[di+2F9A]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4

l0800_5197:
	cmp	word ptr [bp-06],00
	jg	51A6

l0800_519D:
	jl	51BF

l0800_519F:
	cmp	word ptr [bp-08],FA00
	jbe	51BF

l0800_51A6:
	mov	word ptr [bp-04],FA00
	mov	ax,[bp-08]
	mov	dx,[bp-06]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp-08],ax
	mov	[bp-06],dx
	jmp	51CD

l0800_51BF:
	mov	ax,[bp-08]
	mov	[bp-04],ax
	xor	ax,ax
	mov	[bp-08],ax
	mov	[bp-06],ax

l0800_51CD:
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-04]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp-04]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C0F
	call	far 2733:04F4
	mov	ax,[bp-08]
	or	ax,[bp-06]
	jnz	5197

l0800_520D:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4

l0800_522B:
	cmp	byte ptr [F389],00
	jnz	522B

l0800_5232:
	jmp	5ADB

l0800_5235:
	cmp	byte ptr [bp+04],00
	jz	5270

l0800_523B:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2830
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA3
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp+FEA2]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1
	jmp	5307

l0800_5270:
	cmp	word ptr [274E],FF
	jnz	52AB

l0800_5277:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2830
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA3
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp+FEA2]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1
	jmp	5307

l0800_52AB:
	mov	ax,[274C]
	sub	ax,[274E]
	inc	ax
	mov	[32E4],ax
	mov	ax,[32E4]
	cwd
	push	dx
	push	ax
	push	00
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,4DA3
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp+FEA2]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1

l0800_5307:
	cmp	byte ptr [8FF3],00
	jnz	5311

l0800_530E:
	jmp	5398

l0800_5311:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4D80
	push	cs
	push	di
	call	far 2733:0549
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:05D1
	call	far 2733:04ED
	cmp	ax,0002
	jnz	5341

l0800_5336:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:05CC

l0800_5341:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	lea	di,[bp+FD86]
	push	ss
	push	di
	lea	di,[bp+FEA2]
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,4DA5
	push	cs
	push	di
	call	far 2733:1016
	imul	ax,[bp-02],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	call	far 2733:1016
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:0621
	call	far 2733:04F4

l0800_5398:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	lea	di,[bp+FEA2]
	push	ss
	push	di
	call	far 2733:0549
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:05CC
	call	far 2733:04F4
	mov	di,27FC
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	imul	ax,[bp-02],29
	les	di,[28DE]
	add	di,ax
	add	di,FFD7
	push	es
	push	di
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_53E8:
	cmp	byte ptr [32F2],28
	jnc	5418

l0800_53EF:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA5
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	jmp	53E8

l0800_5418:
	cmp	byte ptr [33F2],28
	jnc	5448

l0800_541F:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA5
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	jmp	5418

l0800_5448:
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA7
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA7
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4DA9
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	push	B3
	push	00
	call	far 2733:08DE
	mov	di,32F2
	push	ds
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	push	B3
	push	00
	call	far 2733:08DE
	mov	di,33F2
	push	ds
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	cmp	byte ptr [bp+04],00
	jnz	5505

l0800_5502:
	jmp	560B

l0800_5505:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4DD4
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4DFF
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4E2A
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:0621
	call	far 2733:04F4
	lea	di,[bp+FD86]
	push	ss
	push	di
	mov	di,2830
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,4DA3
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,5386
	push	ds
	push	di
	lea	di,[bp+FEA2]
	push	ss
	push	di
	call	far 2733:0AE2
	mov	di,5386
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	mov	di,5386
	push	ds
	push	di
	mov	di,5386
	push	ds
	push	di
	call	far 2733:1BE4
	call	far 2733:04F4
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4
	mov	di,5386
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [27F2]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C0F
	call	far 2733:04F4
	mov	di,5386
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	jmp	5AD4

l0800_560B:
	xor	ax,ax
	mov	[bp+FE88],ax
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4E55
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	cmp	word ptr [274E],FF
	jz	567B

l0800_5634:
	mov	ax,[274C]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	dx,es:[di-02]
	mov	ax,[274C]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,dx
	jz	565D

l0800_5657:
	mov	word ptr [bp+FE8C],0001

l0800_565D:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4E80
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	jmp	5697

l0800_567B:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4DFF
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4

l0800_5697:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,4E2A
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	ax,[bp+FE8C]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2762]
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[bp+FE84],ax
	mov	ax,[2760]
	cmp	ax,[bp+FE84]
	jbe	56D5

l0800_56D2:
	jmp	5AC4

l0800_56D5:
	mov	[51FA],ax
	jmp	56DE

l0800_56DA:
	inc	word ptr [51FA]

l0800_56DE:
	mov	byte ptr [32F2],00
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+5498]
	mov	[32DC],ax
	xor	ax,ax
	mov	[bp+FEA0],ax
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],02
	jnz	570C

l0800_5706:
	mov	word ptr [bp+FEA0],0004

l0800_570C:
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],FB
	jnz	5722

l0800_571C:
	mov	word ptr [bp+FEA0],0004

l0800_5722:
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],13
	jnz	5738

l0800_5732:
	mov	word ptr [bp+FEA0],0001

l0800_5738:
	xor	ax,ax
	mov	[bp+FE86],ax
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+65C8]
	mov	[bp+FE82],ax
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+5498]
	add	ax,[bp+FEA0]
	cmp	ax,[bp+FE82]
	jbe	5763

l0800_5760:
	jmp	5A9C

l0800_5763:
	mov	[51FC],ax
	jmp	576C

l0800_5768:
	inc	word ptr [51FC]

l0800_576C:
	inc	word ptr [2AAE]
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	cmp	al,7F
	jz	5784

l0800_5781:
	jmp	58A1

l0800_5784:
	inc	word ptr [51FC]
	inc	word ptr [2AAE]
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	cmp	al,46
	jnz	57A4

l0800_579D:
	inc	word ptr [51FC]
	jmp	589E

l0800_57A4:
	cmp	al,50
	jz	57AB

l0800_57A8:
	jmp	589E

l0800_57AB:
	inc	word ptr [bp+FE88]
	mov	ax,[bp+FE88]
	cwd
	push	dx
	push	ax
	push	00
	mov	di,34F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	cmp	byte ptr [8FF4],00
	jz	582B

l0800_57CC:
	mov	ax,[51FC]
	add	ax,0003
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	cx,ax
	mov	ax,[51FC]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[bp+FE92],ax
	push	word ptr [bp+FE92]
	push	word ptr [bp+FE88]
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	4ADD

l0800_582B:
	mov	ax,[51FC]
	add	ax,0003
	mov	[51FC],ax
	mov	ax,[2AAE]
	add	ax,0003
	mov	[2AAE],ax
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	di,4EAB
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,34F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,4EAD
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	al,[33F2]
	xor	ah,ah
	mov	[bp+FE86],ax

l0800_589E:
	jmp	5A90

l0800_58A1:
	cmp	al,7B
	jz	58A8

l0800_58A5:
	jmp	5A8C

l0800_58A8:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],7B
	jz	58CD

l0800_58B9:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],5F
	jz	58CD

l0800_58CA:
	jmp	5A86

l0800_58CD:
	mov	ax,[51FC]
	inc	ax
	inc	ax
	mov	[51FC],ax
	mov	ax,[51FC]
	mov	[bp+FE98],ax
	mov	ax,[51FC]
	mov	[bp+FE96],ax

l0800_58E3:
	mov	ax,[bp+FE98]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],5C
	jz	58FA

l0800_58F4:
	inc	word ptr [bp+FE98]
	jmp	58E3

l0800_58FA:
	mov	byte ptr [33F2],00
	mov	ax,[bp+FE98]
	dec	ax
	mov	[bp+FE80],ax
	mov	ax,[bp+FE96]
	cmp	ax,[bp+FE80]
	ja	595F

l0800_5912:
	mov	[32DC],ax
	jmp	591B

l0800_5917:
	inc	word ptr [32DC]

l0800_591B:
	lea	di,[bp+FC80]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FD80]
	push	ss
	push	di
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[32DC]
	cmp	ax,[bp+FE80]
	jnz	5917

l0800_595F:
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	inc	word ptr [5202]
	mov	al,[33F2]
	xor	ah,ah
	add	ax,[5202]
	dec	ax
	mov	[5202],ax
	inc	word ptr [bp+FE98]
	mov	ax,[bp+FE98]
	mov	[bp+FE94],ax

l0800_59A3:
	mov	ax,[bp+FE94]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],7D
	jz	59BA

l0800_59B4:
	inc	word ptr [bp+FE94]
	jmp	59A3

l0800_59BA:
	mov	byte ptr [33F2],00
	mov	ax,[bp+FE94]
	dec	ax
	mov	[bp+FE80],ax
	mov	ax,[bp+FE98]
	cmp	ax,[bp+FE80]
	ja	5A1F

l0800_59D2:
	mov	[32DC],ax
	jmp	59DB

l0800_59D7:
	inc	word ptr [32DC]

l0800_59DB:
	lea	di,[bp+FC80]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FD80]
	push	ss
	push	di
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[32DC]
	cmp	ax,[bp+FE80]
	jnz	59D7

l0800_5A1F:
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	push	01
	push	01
	call	far 2733:0FD5
	mov	di,4EB3
	push	cs
	push	di
	call	far 2733:1088
	jnz	5A7D

l0800_5A3F:
	inc	word ptr [bp+FE88]
	cmp	byte ptr [8FF4],00
	jz	5A7D

l0800_5A4A:
	lea	di,[bp+FC82]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	push	02
	push	03
	call	far 2733:0FD5
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[bp+FE92],ax
	push	word ptr [bp+FE92]
	push	word ptr [bp+FE88]
	lea	di,[bp+FEF4]
	push	ss
	push	di
	call	4ADD

l0800_5A7D:
	mov	ax,[bp+FE94]
	mov	[51FC],ax
	jmp	5A8A

l0800_5A86:
	push	bp
	call	4D17

l0800_5A8A:
	jmp	5A90

l0800_5A8C:
	push	bp
	call	4D17

l0800_5A90:
	mov	ax,[51FC]
	cmp	ax,[bp+FE82]
	jz	5A9C

l0800_5A99:
	jmp	5768

l0800_5A9C:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	ax,[51FA]
	cmp	ax,[bp+FE84]
	jz	5AC4

l0800_5AC1:
	jmp	56DA

l0800_5AC4:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	call	far 2733:0621
	call	far 2733:04F4

l0800_5AD4:
	cmp	byte ptr [F389],00
	jnz	5AD4

l0800_5ADB:
	leave
	ret	0002
0800:5ADF                                              0C                .
0800:5AE0 46 69 6C 65 20 4E 61 6D 65 20 3A 20 22 4E 65 6D File Name : "Nem
0800:5AF0 20 73 69 6B 65 72 96 6C 74 20 6D 65 67 6E 79 69  siker.lt megnyi
0800:5B00 74 6E 69 20 61 20 66 69 6C 65 2D 74 20 3A 20 17 tni a file-t : .
0800:5B10 4E 79 6F 6D 6A 20 6C 65 20 65 67 79 20 62 69 6C Nyomj le egy bil
0800:5B20 6C 65 6E 74 79 96 74 1B 41 20 66 69 6C 65 20 6E lenty.t.A file n
0800:5B30 61 67 79 6F 62 62 2C 20 6D 69 6E 74 20 36 34 20 agyobb, mint 64 
0800:5B40 4B 42 21 15 46 69 6C 65 20 62 65 6F 6C 76 61 73 KB!.File beolvas
0800:5B50 A0 73 69 20 68 69 62 61 2E                      .si hiba.      

;; fn0800_5B59: 0800:5B59
fn0800_5B59 proc
	push	bp
	mov	bp,sp
	mov	ax,0214
	call	far 2733:0530
	sub	sp,0214
	cmp	byte ptr [2786],00
	jnz	5B7D

l0800_5B6F:
	mov	di,[bp+06]
	shl	di,01
	mov	ax,[di+2ABA]
	mov	[181A],ax
	jmp	5B83

l0800_5B7D:
	mov	word ptr [181A],0001

l0800_5B83:
	cmp	byte ptr [2786],00
	jz	5B8D

l0800_5B8A:
	jmp	5C26

l0800_5B8D:
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	mov	ax,[bp+06]
	mov	[bp-08],ax
	mov	ax,[8C82]
	xor	dx,dx
	mov	di,[bp-08]
	shl	di,01
	mov	di,[di+2ABA]
	shl	di,02
	add	ax,[di+87C8]
	adc	dx,[di+87CA]
	mov	[bp-04],ax
	mov	[bp-02],dx
	mov	di,[bp-08]
	shl	di,01
	mov	ax,[di+2ABA]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+87C8]
	mov	dx,[di+87CA]
	mov	di,[bp-08]
	shl	di,01
	mov	di,[di+2ABA]
	shl	di,02
	sub	ax,[di+87C8]
	sbb	dx,[di+87CA]
	mov	[27F2],ax
	mov	[27F4],dx
	mov	di,5206
	push	ds
	push	di
	mov	ax,[bp-04]
	mov	dx,[bp-02]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4
	jmp	5D47

l0800_5C26:
	lea	di,[bp+FEF0]
	push	ss
	push	di
	mov	di,5ADF
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,2788
	push	ds
	push	di
	call	far 2733:1016
	les	di,[28DE]
	push	es
	push	di
	push	28
	call	far 2733:0FB1
	mov	di,5206
	push	ds
	push	di
	mov	di,2788
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04ED
	or	ax,ax
	jle	5CCF

l0800_5C71:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,5AEC
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	di,2788
	push	ds
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,5B0F
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	22ED
	push	00
	call	211C

l0800_5CCF:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:1BE4
	call	far 2733:04F4
	mov	[27F2],ax
	mov	[27F4],dx
	cmp	word ptr [27F4],00
	jg	5CF5

l0800_5CEC:
	jl	5D47

l0800_5CEE:
	cmp	word ptr [27F2],DC
	jbe	5D47

l0800_5CF5:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,5B27
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,5B0F
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	22ED
	push	00
	call	211C

l0800_5D47:
	xor	ax,ax
	mov	[5200],ax
	mov	di,5206
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [27F2]
	lea	di,[bp-06]
	push	ss
	push	di
	call	far 2733:0C08
	call	far 2733:04F4
	call	1C6F
	cmp	byte ptr [2786],00
	jnz	5DBC

l0800_5D74:
	mov	ax,[27F2]
	mov	[bp-12],ax
	mov	ax,0001
	cmp	ax,[bp-12]
	ja	5DBC

l0800_5D82:
	mov	[51FE],ax
	jmp	5D8B

l0800_5D87:
	inc	word ptr [51FE]

l0800_5D8B:
	mov	ax,[51FE]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	[32DC],ax
	xor	word ptr [32DC],00A5
	mov	dl,[32DC]
	mov	ax,[51FE]
	les	di,[8C92]
	add	di,ax
	mov	es:[di-01],dl
	mov	ax,[51FE]
	cmp	ax,[bp-12]
	jnz	5D87

l0800_5DBC:
	call	far 2733:04ED
	or	ax,ax
	jz	5DED

l0800_5DC5:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,5B43
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	call	22ED
	push	00
	call	211C

l0800_5DED:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	cmp	byte ptr [bp+04],00
	jnz	5E05

l0800_5E02:
	jmp	6132

l0800_5E05:
	cmp	byte ptr [2786],00
	jnz	5E0F

l0800_5E0C:
	jmp	6057

l0800_5E0F:
	mov	ax,[27F2]
	mov	dx,[27F4]
	sub	ax,0001
	sbb	dx,00
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	5E39

l0800_5E29:
	mov	ax,[27F2]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jz	5E73

l0800_5E39:
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	mov	[27F2],ax
	mov	[27F4],dx
	mov	ax,[27F2]
	mov	dx,[27F4]
	sub	ax,0001
	sbb	dx,00
	les	di,[8C92]
	add	di,ax
	mov	byte ptr es:[di-01],0D
	mov	ax,[27F2]
	les	di,[8C92]
	add	di,ax
	mov	byte ptr es:[di-01],0A

l0800_5E73:
	mov	word ptr [5200],0001
	mov	di,[5200]
	shl	di,01
	mov	word ptr [di+5498],0001
	mov	ax,[27F2]
	mov	dx,[27F4]
	sub	ax,0001
	sbb	dx,00
	mov	[bp-12],ax
	mov	ax,0001
	cmp	ax,[bp-12]
	ja	5EFF

l0800_5E9D:
	mov	[bp-0C],ax
	jmp	5EA5

l0800_5EA2:
	inc	word ptr [bp-0C]

l0800_5EA5:
	mov	ax,[bp-0C]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	5EF7

l0800_5EB5:
	mov	ax,[bp-0C]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	5EF7

l0800_5EC6:
	mov	ax,[5200]
	inc	ax
	mov	[5200],ax
	mov	ax,[bp-0C]
	inc	ax
	inc	ax
	mov	di,[5200]
	shl	di,01
	mov	[di+5498],ax
	mov	di,[5200]
	shl	di,01
	mov	ax,[di+5498]
	sub	ax,0003
	mov	dx,ax
	mov	ax,[5200]
	dec	ax
	mov	di,ax
	shl	di,01
	mov	[di+65C8],dx

l0800_5EF7:
	mov	ax,[bp-0C]
	cmp	ax,[bp-12]
	jnz	5EA2

l0800_5EFF:
	mov	ax,[5200]
	mov	[76FA],ax
	xor	ax,ax
	mov	[2746],ax
	xor	ax,ax
	mov	[bp-10],ax
	mov	ax,[76FA]
	mov	[bp-12],ax
	mov	ax,0001
	cmp	ax,[bp-12]
	jbe	5F20

l0800_5F1D:
	jmp	6033

l0800_5F20:
	mov	[bp-0C],ax
	jmp	5F28

l0800_5F25:
	inc	word ptr [bp-0C]

l0800_5F28:
	mov	di,[bp-0C]
	shl	di,01
	mov	ax,[di+5498]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],23
	jz	5F41

l0800_5F3E:
	jmp	6028

l0800_5F41:
	mov	ax,[bp-10]
	inc	ax
	mov	[bp-10],ax
	mov	ax,[2746]
	inc	ax
	mov	[2746],ax
	mov	byte ptr [32F2],00
	mov	di,[bp-0C]
	shl	di,01
	mov	ax,[di+65C8]
	mov	[bp-14],ax
	mov	di,[bp-0C]
	shl	di,01
	mov	ax,[di+5498]
	inc	ax
	cmp	ax,[bp-14]
	ja	5FBA

l0800_5F6F:
	mov	[bp-0E],ax
	jmp	5F77

l0800_5F74:
	inc	word ptr [bp-0E]

l0800_5F77:
	lea	di,[bp+FDEC]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEEC]
	push	ss
	push	di
	mov	ax,[bp-0E]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[bp-0E]
	cmp	ax,[bp-14]
	jnz	5F74

l0800_5FBA:
	cmp	byte ptr [32F2],10
	jbe	5FE2

l0800_5FC1:
	lea	di,[bp+FEEE]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	01
	push	10
	call	far 2733:0FD5
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_5FE2:
	mov	di,32F2
	push	ds
	push	di
	imul	ax,[2746],11
	les	di,[2754]
	add	di,ax
	add	di,FFEF
	push	es
	push	di
	push	10
	call	far 2733:0FB1
	mov	ax,[2746]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	word ptr es:[di-02],0001
	mov	ax,[bp-0C]
	sub	ax,[bp-10]
	inc	ax
	mov	dx,ax
	mov	ax,[2746]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	es:[di-02],dx

l0800_6028:
	mov	ax,[bp-0C]
	cmp	ax,[bp-12]
	jz	6033

l0800_6030:
	jmp	5F25

l0800_6033:
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	les	di,[275C]
	add	di,ax
	xor	ax,ax
	mov	es:[di-02],ax
	mov	ax,[2746]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	xor	ax,ax
	mov	es:[di-02],ax

l0800_6057:
	mov	word ptr [5200],0001
	mov	di,[5200]
	shl	di,01
	mov	word ptr [di+5498],0001
	les	di,[8C92]
	cmp	byte ptr es:[di],23
	jnz	607A

l0800_6073:
	mov	ax,[5200]
	dec	ax
	mov	[5200],ax

l0800_607A:
	mov	byte ptr [bp-09],00
	mov	ax,[27F2]
	mov	dx,[27F4]
	sub	ax,0001
	sbb	dx,00
	mov	[bp-12],ax
	mov	ax,0001
	cmp	ax,[bp-12]
	jbe	6099

l0800_6096:
	jmp	612C

l0800_6099:
	mov	[bp-0C],ax
	jmp	60A1

l0800_609E:
	inc	word ptr [bp-0C]

l0800_60A1:
	mov	ax,[bp-0C]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	6121

l0800_60B1:
	mov	ax,[bp-0C]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	6121

l0800_60C2:
	mov	ax,[5200]
	inc	ax
	mov	[5200],ax
	mov	ax,[bp-0C]
	inc	ax
	inc	ax
	mov	di,[5200]
	shl	di,01
	mov	[di+5498],ax
	cmp	byte ptr [bp-09],00
	jnz	60F9

l0800_60DE:
	mov	di,[5200]
	shl	di,01
	mov	ax,[di+5498]
	sub	ax,0003
	mov	dx,ax
	mov	ax,[5200]
	dec	ax
	mov	di,ax
	shl	di,01
	mov	[di+65C8],dx

l0800_60F9:
	mov	di,[5200]
	shl	di,01
	mov	ax,[di+5498]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],23
	jnz	611D

l0800_6110:
	mov	ax,[5200]
	dec	ax
	mov	[5200],ax
	mov	byte ptr [bp-09],01
	jmp	6121

l0800_611D:
	mov	byte ptr [bp-09],00

l0800_6121:
	mov	ax,[bp-0C]
	cmp	ax,[bp-12]
	jz	612C

l0800_6129:
	jmp	609E

l0800_612C:
	mov	ax,[5200]
	mov	[76FA],ax

l0800_6132:
	leave
	ret	0004
0800:6136                   01 30 05 44 41 54 41 2E 01 20       .0.DATA.. 
0800:6140 01 09                                           ..             

;; fn0800_6142: 0800:6142
fn0800_6142 proc
	push	bp
	mov	bp,sp
	mov	ax,0398
	call	far 2733:0530
	sub	sp,0398
	push	0C
	les	di,[8C8E]
	push	es
	push	di
	mov	ax,[27E6]
	inc	ax
	inc	ax
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	9C40
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ax,[bp+04]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	lea	di,[bp-66]
	push	ss
	push	di
	push	64
	call	far 2733:1B51

l0800_61A4:
	cmp	byte ptr [bp-66],03
	jnc	61D2

l0800_61AA:
	lea	di,[bp+FD68]
	push	ss
	push	di
	mov	di,6136
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp-66]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp-66]
	push	ss
	push	di
	push	64
	call	far 2733:0FB1
	jmp	61A4

l0800_61D2:
	lea	di,[bp+FD68]
	push	ss
	push	di
	mov	di,6138
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp-66]
	push	ss
	push	di
	call	far 2733:1016
	lea	di,[bp-66]
	push	ss
	push	di
	push	64
	call	far 2733:0FB1
	mov	byte ptr [bp+FECE],00
	mov	byte ptr [2AB8],00
	xor	ax,ax
	mov	[2AB0],ax

l0800_6207:
	mov	ax,[2AB0]
	cmp	ax,[27E6]
	jc	6213

l0800_6210:
	jmp	62A7

l0800_6213:
	inc	word ptr [2AB0]
	mov	ax,[2AB0]
	les	di,[8C8E]
	add	di,ax
	cmp	byte ptr es:[di-01],0D
	jnz	6268

l0800_6227:
	mov	ax,[2AB0]
	inc	ax
	les	di,[8C8E]
	add	di,ax
	cmp	byte ptr es:[di-01],0A
	jnz	6268

l0800_6238:
	add	word ptr [2AB0],02
	lea	di,[bp-66]
	push	ss
	push	di
	lea	di,[bp+FD68]
	push	ss
	push	di
	lea	di,[bp+FECE]
	push	ss
	push	di
	call	far 1429:051C
	call	far 2733:1042
	or	ax,ax
	jle	6263

l0800_625C:
	mov	byte ptr [2AB8],01
	jmp	62A7

l0800_6263:
	mov	byte ptr [bp+FECE],00

l0800_6268:
	lea	di,[bp+FC68]
	push	ss
	push	di
	lea	di,[bp+FECE]
	push	ss
	push	di
	call	far 2733:0F97
	lea	di,[bp+FD68]
	push	ss
	push	di
	mov	ax,[2AB0]
	les	di,[8C8E]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	lea	di,[bp+FECE]
	push	ss
	push	di
	push	64
	call	far 2733:0FB1
	jmp	6207

l0800_62A7:
	cmp	byte ptr [2AB8],00
	jnz	62B1

l0800_62AE:
	jmp	6346

l0800_62B1:
	mov	word ptr [2AB0],0009

l0800_62B7:
	lea	di,[bp+FD68]
	push	ss
	push	di
	lea	di,[bp+FECE]
	push	ss
	push	di
	push	word ptr [2AB0]
	push	01
	call	far 2733:0FD5
	mov	di,613E
	push	cs
	push	di
	call	far 2733:1088
	jz	62FD

l0800_62DA:
	lea	di,[bp+FC68]
	push	ss
	push	di
	lea	di,[bp+FECE]
	push	ss
	push	di
	push	word ptr [2AB0]
	push	01
	call	far 2733:0FD5
	mov	di,6140
	push	cs
	push	di
	call	far 2733:1088
	jnz	6303

l0800_62FD:
	inc	word ptr [2AB0]
	jmp	62B7

l0800_6303:
	lea	di,[bp+FD68]
	push	ss
	push	di
	lea	di,[bp+FECE]
	push	ss
	push	di
	push	word ptr [2AB0]
	mov	al,[bp+FECE]
	xor	ah,ah
	sub	ax,[2AB0]
	inc	ax
	push	ax
	call	far 2733:0FD5
	lea	di,[bp+FECE]
	push	ss
	push	di
	push	64
	call	far 2733:0FB1
	lea	di,[bp+FECE]
	push	ss
	push	di
	les	di,[bp+06]
	push	es
	push	di
	push	00FF
	call	far 2733:0FB1
	jmp	634D

l0800_6346:
	les	di,[bp+06]
	mov	byte ptr es:[di],00

l0800_634D:
	leave
	ret	0002

;; fn0800_6351: 0800:6351
fn0800_6351 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	mov	di,[bp+04]
	cmp	word ptr ss:[di-02],00
	jbe	638E

l0800_636A:
	mov	ax,[2AAE]
	cmp	ax,ss:[di-02]
	jc	6384

l0800_6373:
	mov	ax,[2AAE]
	cmp	ax,ss:[di-08]
	jnc	6384

l0800_637C:
	mov	al,[32D0]
	mov	[0F9B],al
	jmp	638E

l0800_6384:
	mov	di,[bp+04]
	mov	al,ss:[di-05]
	mov	[0F9B],al

l0800_638E:
	inc	word ptr [5202]
	cmp	word ptr [32D6],01
	jnz	63F5

l0800_6399:
	cmp	word ptr [32D4],01
	jnz	63C6

l0800_63A0:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2234:04ED
	jmp	63F5

l0800_63C6:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2234:056E

l0800_63F5:
	cmp	word ptr [32D6],FF
	jnz	6420

l0800_63FC:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2234:025E

l0800_6420:
	leave
	ret	0002
0800:6424             01 30 01 2F 01 21                       .0./.!     

;; fn0800_642A: 0800:642A
fn0800_642A proc
	push	bp
	mov	bp,sp
	mov	ax,0220
	call	far 2733:0530
	sub	sp,0220
	mov	ax,[2760]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+5498]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],13
	jnz	645F

l0800_6452:
	mov	byte ptr [27DC],01
	mov	word ptr [27DA],002C
	jmp	646A

l0800_645F:
	mov	byte ptr [27DC],00
	mov	word ptr [27DA],0016

l0800_646A:
	cmp	byte ptr [298F],00
	jnz	647C

l0800_6471:
	push	word ptr [298A]
	push	01
	call	395F
	jmp	6481

l0800_647C:
	mov	byte ptr [298F],00

l0800_6481:
	call	far 21BB:012A
	mov	byte ptr [0F9B],00
	push	01D6
	push	24
	push	0206
	push	35
	call	far 2234:0139
	mov	al,[32C8]
	mov	[0F9B],al
	cmp	byte ptr [27DC],00
	jz	64BF

l0800_64A7:
	mov	ax,[8C8C]
	inc	ax
	mov	[32E4],ax
	mov	ax,[32E4]
	cmp	ax,[76FC]
	jle	64BD

l0800_64B7:
	mov	ax,[76FC]
	mov	[32E4],ax

l0800_64BD:
	jmp	64C5

l0800_64BF:
	mov	ax,[8C8C]
	mov	[32E4],ax

l0800_64C5:
	mov	ax,[32E4]
	cwd
	push	dx
	push	ax
	push	00
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	cmp	byte ptr [32F2],01
	jnz	6508

l0800_64E1:
	lea	di,[bp+FEE6]
	push	ss
	push	di
	mov	di,6424
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_6508:
	mov	ax,[76FC]
	cwd
	push	dx
	push	ax
	push	00
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	cmp	byte ptr [33F2],01
	jnz	654B

l0800_6524:
	lea	di,[bp+FEE6]
	push	ss
	push	di
	mov	di,6424
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_654B:
	lea	di,[bp+FEE6]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,6426
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	push	01DA
	push	26
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:051E
	xor	ax,ax
	mov	[2748],ax
	xor	ax,ax
	mov	[274A],ax
	mov	word ptr [F4EA],0001
	xor	ax,ax
	mov	[5200],ax
	xor	ax,ax
	mov	[bp-02],ax
	mov	al,[32C8]
	mov	[bp-05],al
	mov	word ptr [32D4],0001
	mov	word ptr [32D6],0001
	cmp	byte ptr [27DC],00
	jz	65E1

l0800_65BE:
	mov	ax,[2760]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	imul	ax,[bp+04],16
	cwd
	add	ax,cx
	adc	dx,bx
	sub	ax,0001
	sbb	dx,00
	add	ax,0016
	adc	dx,00
	mov	[bp-08],ax
	jmp	65FC

l0800_65E1:
	mov	ax,[2760]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	imul	ax,[bp+04],16
	cwd
	add	ax,cx
	adc	dx,bx
	sub	ax,0001
	sbb	dx,00
	mov	[bp-08],ax

l0800_65FC:
	mov	ax,[bp-08]
	cmp	ax,[2762]
	jbe	660B

l0800_6605:
	mov	ax,[2762]
	mov	[bp-08],ax

l0800_660B:
	mov	byte ptr [bp-17],00
	xor	ax,ax
	mov	[bp-1A],ax
	mov	ax,[bp-08]
	mov	[bp-1C],ax
	mov	ax,[2760]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	imul	ax,[bp+04],16
	sub	ax,0015
	cwd
	add	ax,cx
	adc	dx,bx
	sub	ax,0001
	sbb	dx,00
	cmp	ax,[bp-1C]
	jbe	663D

l0800_663A:
	jmp	6D47

l0800_663D:
	mov	[51FA],ax
	jmp	6646

l0800_6642:
	inc	word ptr [51FA]

l0800_6646:
	inc	word ptr [bp-1A]
	cmp	word ptr [bp-1A],17
	jnz	6658

l0800_664F:
	mov	byte ptr [bp-17],01
	xor	ax,ax
	mov	[5200],ax

l0800_6658:
	cmp	byte ptr [bp-17],00
	jz	667F

l0800_665E:
	cmp	byte ptr [27DC],00
	jz	667F

l0800_6665:
	mov	word ptr [5202],0028
	xor	ax,ax
	mov	[2AAE],ax
	mov	ax,[5200]
	inc	ax
	mov	[5200],ax
	mov	al,[bp-05]
	mov	[0F9B],al
	jmp	6697

l0800_667F:
	mov	word ptr [5202],0001
	xor	ax,ax
	mov	[2AAE],ax
	mov	ax,[5200]
	inc	ax
	mov	[5200],ax
	mov	al,[bp-05]
	mov	[0F9B],al

l0800_6697:
	cmp	byte ptr [29DE],00
	jnz	66A1

l0800_669E:
	jmp	6736

l0800_66A1:
	mov	byte ptr [32F2],00
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+65C8]
	mov	[bp-1E],ax
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+5498]
	cmp	ax,[bp-1E]
	ja	670E

l0800_66C2:
	mov	[2AB0],ax
	jmp	66CB

l0800_66C7:
	inc	word ptr [2AB0]

l0800_66CB:
	lea	di,[bp+FDE2]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEE2]
	push	ss
	push	di
	mov	ax,[2AB0]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[2AB0]
	cmp	ax,[bp-1E]
	jnz	66C7

l0800_670E:
	mov	di,29DE
	push	ds
	push	di
	lea	di,[bp+FEE4]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 1429:051C
	call	far 2733:1042
	mov	[bp-02],ax
	mov	al,[29DE]
	xor	ah,ah
	add	ax,[bp-02]
	mov	[bp-08],ax

l0800_6736:
	mov	ax,[76FA]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[51FA]
	xor	dx,dx
	cmp	dx,bx
	jl	6753

l0800_6747:
	jle	674C

l0800_6749:
	jmp	6D3C

l0800_674C:
	cmp	ax,cx
	jc	6753

l0800_6750:
	jmp	6D3C

l0800_6753:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+5498]
	mov	[32DC],ax
	xor	ax,ax
	mov	[bp-14],ax
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],02
	jnz	677A

l0800_6775:
	mov	word ptr [bp-14],0004

l0800_677A:
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],FB
	jnz	678F

l0800_678A:
	mov	word ptr [bp-14],0004

l0800_678F:
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],13
	jnz	67A4

l0800_679F:
	mov	word ptr [bp-14],0001

l0800_67A4:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+65C8]
	mov	[bp-1E],ax
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+5498]
	add	ax,[bp-14]
	cmp	ax,[bp-1E]
	jbe	67C6

l0800_67C3:
	jmp	6D3C

l0800_67C6:
	mov	[51FC],ax
	jmp	67CF

l0800_67CB:
	inc	word ptr [51FC]

l0800_67CF:
	inc	word ptr [2AAE]
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	cmp	al,7F
	jz	67E7

l0800_67E4:
	jmp	6A39

l0800_67E7:
	inc	word ptr [51FC]
	inc	word ptr [2AAE]
	mov	ax,[51FC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	cmp	al,42
	jnz	680F

l0800_6800:
	mov	al,[32CE]
	mov	[bp-05],al
	mov	al,[32CE]
	mov	[0F9B],al
	jmp	6A36

l0800_680F:
	cmp	al,59
	jnz	6822

l0800_6813:
	mov	al,[32CA]
	mov	[bp-05],al
	mov	al,[32CA]
	mov	[0F9B],al
	jmp	6A36

l0800_6822:
	cmp	al,47
	jnz	6835

l0800_6826:
	mov	al,[32CC]
	mov	[bp-05],al
	mov	al,[32CC]
	mov	[0F9B],al
	jmp	6A36

l0800_6835:
	cmp	al,4E
	jnz	6848

l0800_6839:
	mov	al,[32C8]
	mov	[bp-05],al
	mov	al,[32C8]
	mov	[0F9B],al
	jmp	6A36

l0800_6848:
	cmp	al,49
	jnz	6855

l0800_684C:
	mov	word ptr [32D4],FFFF
	jmp	6A36

l0800_6855:
	cmp	al,69
	jnz	6862

l0800_6859:
	mov	word ptr [32D4],0001
	jmp	6A36

l0800_6862:
	cmp	al,4C
	jnz	686F

l0800_6866:
	mov	word ptr [32D6],FFFF
	jmp	6A36

l0800_686F:
	cmp	al,6C
	jnz	687C

l0800_6873:
	mov	word ptr [32D6],0001
	jmp	6A36

l0800_687C:
	cmp	al,46
	jnz	68C3

l0800_6880:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],31
	jc	68B8

l0800_6891:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],33
	ja	68B8

l0800_68A2:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	mov	[F4EA],ax

l0800_68B8:
	inc	word ptr [51FC]
	inc	word ptr [2AAE]
	jmp	6A36

l0800_68C3:
	cmp	al,50
	jz	68CA

l0800_68C7:
	jmp	6A36

l0800_68CA:
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	ax,[51FC]
	add	ax,0003
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	cx,ax
	mov	ax,[51FC]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[32E4],ax
	lea	di,[bp+FEE2]
	push	ss
	push	di
	push	word ptr [32E4]
	call	6142
	pop	di
	pop	es
	cmp	byte ptr es:[di],00
	jz	6973

l0800_696F:
	inc	word ptr [274A]

l0800_6973:
	mov	ax,[5202]
	inc	ax
	shl	ax,03
	mov	[270A],ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	mov	[270C],ax
	push	word ptr [270A]
	push	word ptr [270C]
	push	word ptr [32E4]
	push	00
	push	00
	push	01
	push	00
	call	2F49
	mov	ax,[32E4]
	mov	di,[274A]
	shl	di,01
	mov	[di+26E0],ax
	mov	ax,[51FC]
	add	ax,0003
	mov	[51FC],ax
	mov	ax,[2AAE]
	add	ax,0003
	mov	[2AAE],ax
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	ax,[270A]
	mov	di,[274A]
	shl	di,01
	mov	[di+2640],ax
	mov	ax,[270C]
	mov	di,[274A]
	shl	di,01
	mov	[di+2668],ax
	mov	ax,[270E]
	mov	di,[274A]
	shl	di,01
	mov	[di+2690],ax
	mov	ax,[2710]
	mov	di,[274A]
	shl	di,01
	mov	[di+26B8],ax

l0800_6A36:
	jmp	6D31

l0800_6A39:
	cmp	al,7B
	jz	6A40

l0800_6A3D:
	jmp	6D2D

l0800_6A40:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],7B
	jz	6A65

l0800_6A51:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],5F
	jz	6A65

l0800_6A62:
	jmp	6D27

l0800_6A65:
	mov	ax,[51FC]
	inc	ax
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],5F
	jnz	6A7C

l0800_6A76:
	mov	byte ptr [bp-11],01
	jmp	6A80

l0800_6A7C:
	mov	byte ptr [bp-11],00

l0800_6A80:
	inc	word ptr [2748]
	cmp	word ptr [2748],64
	jbe	6A91

l0800_6A8B:
	mov	word ptr [2748],0064

l0800_6A91:
	mov	ax,[51FC]
	inc	ax
	inc	ax
	mov	[51FC],ax
	mov	ax,[51FC]
	mov	[bp-0C],ax
	mov	ax,[51FC]
	mov	[bp-0E],ax

l0800_6AA5:
	mov	ax,[bp-0C]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],5C
	jz	6ABA

l0800_6AB5:
	inc	word ptr [bp-0C]
	jmp	6AA5

l0800_6ABA:
	mov	al,[0F9B]
	xor	ah,ah
	mov	[bp-0A],ax
	mov	byte ptr [0F9B],13
	mov	byte ptr [32F2],00
	mov	ax,[bp-0C]
	dec	ax
	mov	[bp-20],ax
	mov	ax,[bp-0E]
	cmp	ax,[bp-20]
	ja	6B27

l0800_6ADB:
	mov	[32DC],ax
	jmp	6AE4

l0800_6AE0:
	inc	word ptr [32DC]

l0800_6AE4:
	lea	di,[bp+FDE0]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEE0]
	push	ss
	push	di
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[32DC]
	cmp	ax,[bp-20]
	jnz	6AE0

l0800_6B27:
	inc	word ptr [5202]
	mov	ax,[5202]
	shl	ax,03
	mov	di,[2748]
	shl	di,01
	mov	[di+250E],ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	mov	di,[2748]
	shl	di,01
	mov	[di+2574],ax
	mov	al,[32F2]
	xor	ah,ah
	mov	di,[2748]
	shl	di,01
	mov	[di+25DA],ax
	cmp	byte ptr [bp-11],00
	jz	6BD2

l0800_6B63:
	mov	di,[2748]
	mov	byte ptr [di+2711],01
	mov	al,[bp-0A]
	mov	[0F9B],al
	cmp	word ptr [32D4],01
	jnz	6B96

l0800_6B79:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:051E
	jmp	6BB1

l0800_6B96:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:056E

l0800_6BB1:
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0045
	push	ax
	mov	al,[32F2]
	xor	ah,ah
	shl	ax,03
	push	ax
	call	far 2234:00FF
	jmp	6C0B

l0800_6BD2:
	mov	di,[2748]
	mov	byte ptr [di+2711],00
	mov	byte ptr [0F9D],00
	mov	byte ptr [0F9C],8F
	mov	ax,[5202]
	shl	ax,03
	push	ax
	mov	ax,[5200]
	shl	ax,04
	add	ax,0037
	push	ax
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:051E
	mov	byte ptr [0F9D],01
	mov	al,[bp-0A]
	mov	[0F9B],al

l0800_6C0B:
	mov	al,[32F2]
	xor	ah,ah
	add	ax,[5202]
	dec	ax
	mov	[5202],ax
	inc	word ptr [bp-0C]
	mov	ax,[bp-0C]
	mov	[bp-10],ax

l0800_6C21:
	mov	ax,[bp-10]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],7D
	jz	6C36

l0800_6C31:
	inc	word ptr [bp-10]
	jmp	6C21

l0800_6C36:
	mov	byte ptr [32F2],00
	mov	ax,[bp-10]
	dec	ax
	mov	[bp-20],ax
	mov	ax,[bp-0C]
	cmp	ax,[bp-20]
	ja	6C96

l0800_6C4A:
	mov	[32DC],ax
	jmp	6C53

l0800_6C4F:
	inc	word ptr [32DC]

l0800_6C53:
	lea	di,[bp+FDE0]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FEE0]
	push	ss
	push	di
	mov	ax,[32DC]
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[32DC]
	cmp	ax,[bp-20]
	jnz	6C4F

l0800_6C96:
	lea	di,[bp+FEE2]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	01
	push	01
	call	far 2733:0FD5
	mov	di,6428
	push	cs
	push	di
	call	far 2733:1088
	jnz	6CE0

l0800_6CB6:
	cmp	byte ptr [32F2],40
	jbe	6CDE

l0800_6CBD:
	lea	di,[bp+FDE2]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	01
	push	40
	call	far 2733:0FD5
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_6CDE:
	jmp	6D08

l0800_6CE0:
	cmp	byte ptr [32F2],10
	jbe	6D08

l0800_6CE7:
	lea	di,[bp+FDE2]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	01
	push	10
	call	far 2733:0FD5
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_6D08:
	mov	di,32F2
	push	ds
	push	di
	imul	di,[2748],41
	add	di,17DB
	push	ds
	push	di
	push	40
	call	far 2733:0FB1
	mov	ax,[bp-10]
	mov	[51FC],ax
	jmp	6D2B

l0800_6D27:
	push	bp
	call	6351

l0800_6D2B:
	jmp	6D31

l0800_6D2D:
	push	bp
	call	6351

l0800_6D31:
	mov	ax,[51FC]
	cmp	ax,[bp-1E]
	jz	6D3C

l0800_6D39:
	jmp	67CB

l0800_6D3C:
	mov	ax,[51FA]
	cmp	ax,[bp-1C]
	jz	6D47

l0800_6D44:
	jmp	6642

l0800_6D47:
	call	far 21BB:0108
	call	far 21BB:01A8
	mov	word ptr [F4EA],0001
	leave
	ret	0002

;; fn0800_6D5B: 0800:6D5B
fn0800_6D5B proc
	push	bp
	mov	bp,sp
	mov	ax,010A
	call	far 2733:0530
	sub	sp,010A
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FEFC]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_6D7D:
	rep movsb

l0800_6D7F:
	mov	ds,bx
	xor	ax,ax
	mov	[bp+FEFA],ax
	mov	al,[bp+FEFC]
	xor	ah,ah
	mov	[bp+FEF8],ax

l0800_6D91:
	mov	ax,[bp+FEFA]
	cmp	ax,[bp+FEF8]
	jge	6DBD

l0800_6D9B:
	mov	ax,[bp+FEFA]
	inc	ax
	mov	di,ax
	mov	dl,[bp+di+FEFC]
	mov	ax,[bp+FEFA]
	les	di,[bp+08]
	add	di,ax
	mov	es:[di],dl
	mov	ax,[bp+FEFA]
	inc	ax
	mov	[bp+FEFA],ax
	jmp	6D91

l0800_6DBD:
	mov	ax,[bp+FEFA]
	les	di,[bp+08]
	add	di,ax
	mov	byte ptr es:[di],00
	mov	ax,[bp+08]
	mov	dx,[bp+0A]
	mov	[bp-04],ax
	mov	[bp-02],dx
	mov	ax,[bp-04]
	mov	dx,[bp-02]
	leave
	ret	0008

;; fn0800_6DE0: 0800:6DE0
fn0800_6DE0 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [51FA],0040
	jmp	6DF6

l0800_6DF2:
	dec	word ptr [51FA]

l0800_6DF6:
	mov	al,[51FA]
	push	ax
	les	di,[8ED8]
	call	dword ptr es:[di+2C]
	push	1E
	call	far 26D1:02A8
	cmp	word ptr [51FA],00
	jnz	6DF2

l0800_6E10:
	leave
	ret
0800:6E12       05 31 2E 73 33 6D                           .1.s3m       

;; fn0800_6E18: 0800:6E18
fn0800_6E18 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	cmp	word ptr [8FEA],04
	jnz	6E31

l0800_6E2E:
	jmp	6ED0

l0800_6E31:
	mov	word ptr [F3CE],0004
	call	far 21BB:01FE
	cmp	byte ptr [2990],00
	jz	6E60

l0800_6E43:
	call	6DE0
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:066D
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:04BA

l0800_6E60:
	mov	byte ptr [2990],01
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,6E12
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,8EE2
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	6D5B
	mov	di,8EE2
	push	ds
	push	di
	mov	di,0BC8
	mov	ax,1936
	push	ax
	push	di
	push	00
	push	00
	call	far 1858:0458
	mov	[8ED4],ax
	mov	[8ED6],dx
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	push	00
	call	far 1858:0510
	mov	word ptr [F3CE],0001
	call	far 21BB:01FE

l0800_6ED0:
	leave
	ret
0800:6ED2       05 32 2E 73 33 6D                           .2.s3m       

;; fn0800_6ED8: 0800:6ED8
fn0800_6ED8 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	cmp	word ptr [8FEA],04
	jnz	6EF1

l0800_6EEE:
	jmp	6F9A

l0800_6EF1:
	cmp	word ptr [2F92],03
	jnc	6EFB

l0800_6EF8:
	jmp	6F9A

l0800_6EFB:
	mov	word ptr [F3CE],0004
	call	far 21BB:01FE
	cmp	byte ptr [2990],00
	jz	6F2A

l0800_6F0D:
	call	6DE0
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:066D
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:04BA

l0800_6F2A:
	mov	byte ptr [2990],01
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,6ED2
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,8EE2
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	6D5B
	mov	di,8EE2
	push	ds
	push	di
	mov	di,0BC8
	mov	ax,1936
	push	ax
	push	di
	push	00
	push	00
	call	far 1858:0458
	mov	[8ED4],ax
	mov	[8ED6],dx
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	push	00
	call	far 1858:0510
	mov	word ptr [F3CE],0001
	call	far 21BB:01FE

l0800_6F9A:
	leave
	ret
0800:6F9C                                     05 33 2E 73             .3.s
0800:6FA0 33 6D                                           3m             

;; fn0800_6FA2: 0800:6FA2
fn0800_6FA2 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	cmp	word ptr [8FEA],04
	jnz	6FBB

l0800_6FB8:
	jmp	7064

l0800_6FBB:
	cmp	word ptr [2F92],04
	jnc	6FC5

l0800_6FC2:
	jmp	7064

l0800_6FC5:
	mov	word ptr [F3CE],0004
	call	far 21BB:01FE
	cmp	byte ptr [2990],00
	jz	6FF4

l0800_6FD7:
	call	6DE0
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:066D
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:04BA

l0800_6FF4:
	mov	byte ptr [2990],01
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,6F9C
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,8EE2
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	6D5B
	mov	di,8EE2
	push	ds
	push	di
	mov	di,0BC8
	mov	ax,1936
	push	ax
	push	di
	push	00
	push	00
	call	far 1858:0458
	mov	[8ED4],ax
	mov	[8ED6],dx
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	push	00
	call	far 1858:0510
	mov	word ptr [F3CE],0001
	call	far 21BB:01FE

l0800_7064:
	leave
	ret

;; fn0800_7066: 0800:7066
fn0800_7066 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	word ptr [8FEA],04
	jz	709D

l0800_7077:
	cmp	byte ptr [2990],00
	jz	7098

l0800_707E:
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:066D
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	call	far 1858:04BA

l0800_7098:
	mov	byte ptr [2990],00

l0800_709D:
	leave
	ret

;; fn0800_709F: 0800:709F
fn0800_709F proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	al,[8E52]
	xor	ah,ah
	mov	[32E0],ax
	cmp	word ptr [32E0],2A
	jz	70C3

l0800_70BC:
	cmp	word ptr [32E0],36
	jnz	70CE

l0800_70C3:
	mov	byte ptr [27E5],01
	mov	word ptr [32E0],0059

l0800_70CE:
	cmp	word ptr [32E0],00AA
	jz	70DE

l0800_70D6:
	cmp	word ptr [32E0],00B6
	jnz	70E9

l0800_70DE:
	mov	byte ptr [27E5],00
	mov	word ptr [32E0],0059

l0800_70E9:
	cmp	word ptr [32E0],38
	jnz	70FB

l0800_70F0:
	mov	byte ptr [27E3],01
	mov	word ptr [32E0],0059

l0800_70FB:
	cmp	word ptr [32E0],00B8
	jnz	710E

l0800_7103:
	mov	byte ptr [27E3],00
	mov	word ptr [32E0],0059

l0800_710E:
	cmp	word ptr [32E0],1D
	jnz	7120

l0800_7115:
	mov	byte ptr [27E4],01
	mov	word ptr [32E0],0059

l0800_7120:
	cmp	word ptr [32E0],009D
	jnz	7133

l0800_7128:
	mov	byte ptr [27E4],00
	mov	word ptr [32E0],0059

l0800_7133:
	mov	ax,[32E0]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[27EA]
	xor	dx,dx
	cmp	dx,bx
	jnz	7148

l0800_7144:
	cmp	ax,cx
	jz	714F

l0800_7148:
	mov	byte ptr [27E2],01
	jmp	7154

l0800_714F:
	mov	byte ptr [27E2],00

l0800_7154:
	mov	ax,[32E0]
	mov	[27EA],ax
	mov	al,[32E0]
	mov	[bp-01],al
	mov	al,[bp-01]
	leave
	ret

;; fn0800_7165: 0800:7165
fn0800_7165 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	mov	al,[8E52]
	xor	ah,ah
	mov	[32E0],ax
	cmp	word ptr [32E0],2A
	jz	7189

l0800_7182:
	cmp	word ptr [32E0],36
	jnz	7194

l0800_7189:
	mov	byte ptr [27E5],01
	mov	word ptr [32E0],0059

l0800_7194:
	cmp	word ptr [32E0],00AA
	jz	71A4

l0800_719C:
	cmp	word ptr [32E0],00B6
	jnz	71AF

l0800_71A4:
	mov	byte ptr [27E5],00
	mov	word ptr [32E0],0059

l0800_71AF:
	cmp	word ptr [32E0],38
	jnz	71C1

l0800_71B6:
	mov	byte ptr [27E3],01
	mov	word ptr [32E0],0059

l0800_71C1:
	cmp	word ptr [32E0],00B8
	jnz	71D4

l0800_71C9:
	mov	byte ptr [27E3],00
	mov	word ptr [32E0],0059

l0800_71D4:
	cmp	word ptr [32E0],1D
	jnz	71E6

l0800_71DB:
	mov	byte ptr [27E4],01
	mov	word ptr [32E0],0059

l0800_71E6:
	cmp	word ptr [32E0],009D
	jnz	71F9

l0800_71EE:
	mov	byte ptr [27E4],00
	mov	word ptr [32E0],0059

l0800_71F9:
	mov	ax,[32E0]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[27EA]
	xor	dx,dx
	cmp	dx,bx
	jnz	720E

l0800_720A:
	cmp	ax,cx
	jz	7215

l0800_720E:
	mov	byte ptr [27E2],01
	jmp	721A

l0800_7215:
	mov	byte ptr [27E2],00

l0800_721A:
	mov	ax,[32E0]
	mov	[27EA],ax
	mov	al,[32E0]
	mov	[bp-01],al
	mov	al,[bp-01]
	leave
	ret
0800:722B                                  01 00 02 00 2D            ....-
0800:7230 01 62 01 21 01 40 01 23 01 24 01 25 01 5E 01 26 .b.!.@.#.$.%.^.&
0800:7240 01 2A 01 28 01 29 01 5F 01 2B 01 7B 01 7D 01 3A .*.(.)._.+.{.}.:
0800:7250 01 22 01 3C 01 3E 01 3F 01 7C 01 7E 02 00 0F 01 .".<.>.?.|.~....
0800:7260 A1 01 94 01 81 01 A2 01 93 01 A3 01 82 01 A0 01 ................
0800:7270 96 01 8D 01 99 01 9A 01 95 01 A7 01 97 01 90 01 ................
0800:7280 8F 01 98 01 6C 01 4C                            ....l.L        

;; fn0800_7287: 0800:7287
fn0800_7287 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	cmp	byte ptr [F388],00
	jnz	72B0

l0800_729D:
	cmp	byte ptr [F389],00
	jnz	72B0

l0800_72A4:
	cmp	byte ptr [2D2A],00
	jnz	72B0

l0800_72AB:
	xor	ax,ax
	mov	[2D28],ax

l0800_72B0:
	mov	byte ptr [5496],00
	mov	byte ptr [5497],01
	mov	byte ptr [5498],01
	call	10A3
	mov	word ptr [27E8],0059

l0800_72C8:
	call	7165
	cmp	al,58
	jbe	72D4

l0800_72CF:
	xor	ax,ax
	mov	[2996],ax

l0800_72D4:
	call	10C8
	cmp	ax,001E
	jbe	7301

l0800_72DC:
	cmp	byte ptr [8FF2],01
	jnz	7301

l0800_72E3:
	cmp	byte ptr [76FE],00
	jnz	7301

l0800_72EA:
	cmp	word ptr [541A],01
	jnz	7301

l0800_72F1:
	cmp	byte ptr [bp+04],00
	jz	7301

l0800_72F7:
	mov	byte ptr [2D2A],01
	mov	byte ptr [2991],01

l0800_7301:
	cmp	word ptr [2996],01
	jnz	732B

l0800_7308:
	call	11B6
	cmp	ax,0019
	ja	731E

l0800_7310:
	call	7165
	cmp	al,58
	ja	731E

l0800_7317:
	cmp	byte ptr [27E2],00
	jz	7324

l0800_731E:
	mov	word ptr [2996],0002

l0800_7324:
	cmp	word ptr [2996],02
	jnz	7308

l0800_732B:
	cmp	word ptr [2996],00
	jnz	7339

l0800_7332:
	call	709F
	cmp	al,59
	jc	7340

l0800_7339:
	cmp	byte ptr [27E2],00
	jz	7351

l0800_7340:
	mov	word ptr [2996],0001
	call	1191
	call	709F
	xor	ah,ah
	mov	[27E8],ax

l0800_7351:
	cmp	word ptr [2996],02
	jnz	735F

l0800_7358:
	call	709F
	cmp	al,59
	jc	7366

l0800_735F:
	cmp	byte ptr [27E2],00
	jz	7387

l0800_7366:
	call	1191

l0800_7369:
	call	11B6
	cmp	ax,0001
	ja	737F

l0800_7371:
	call	7165
	cmp	al,58
	ja	737F

l0800_7378:
	cmp	byte ptr [27E2],00
	jz	7369

l0800_737F:
	call	709F
	xor	ah,ah
	mov	[27E8],ax

l0800_7387:
	cmp	word ptr [27E8],59
	jc	73B8

l0800_738E:
	mov	ax,[F384]
	cmp	ax,[2F96]
	jnz	73B8

l0800_7397:
	mov	ax,[F386]
	cmp	ax,[2F98]
	jnz	73B8

l0800_73A0:
	cmp	byte ptr [F388],00
	jnz	73B8

l0800_73A7:
	cmp	byte ptr [F389],00
	jnz	73B8

l0800_73AE:
	cmp	byte ptr [2D2A],00
	jnz	73B8

l0800_73B5:
	jmp	72C8

l0800_73B8:
	mov	byte ptr [2D2A],00
	mov	ax,[F384]
	mov	[2F96],ax
	mov	ax,[F386]
	mov	[2F98],ax
	cmp	word ptr [27E8],59
	jc	73D3

l0800_73D0:
	jmp	78B5

l0800_73D3:
	mov	byte ptr [F38E],00
	mov	di,[27E8]
	shl	di,01
	cmp	word ptr [di+9352],0100
	jnz	7418

l0800_73E6:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,722B
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	al,[27E8]
	push	ax
	call	far 2733:10B3
	call	far 2733:1016
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	743A

l0800_7418:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,[27E8]
	shl	di,01
	mov	al,[di+9352]
	push	ax
	call	far 2733:10B3
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_743A:
	cmp	byte ptr [5497],61
	jc	746B

l0800_7441:
	cmp	byte ptr [5497],7A
	ja	746B

l0800_7448:
	cmp	byte ptr [27E5],00
	jz	746B

l0800_744F:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_746B:
	cmp	byte ptr [27E3],00
	jz	748A

l0800_7472:
	cmp	word ptr [27E8],2D
	jnz	748A

l0800_7479:
	mov	di,722D
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_748A:
	cmp	byte ptr [27E3],00
	jz	74B0

l0800_7491:
	cmp	byte ptr [27E4],00
	jz	74B0

l0800_7498:
	cmp	word ptr [27E8],53
	jnz	74B0

l0800_749F:
	mov	di,722D
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_74B0:
	cmp	byte ptr [27E5],00
	jnz	74BA

l0800_74B7:
	jmp	76DD

l0800_74BA:
	mov	al,[5497]
	cmp	al,61
	jnz	74D5

l0800_74C1:
	mov	di,7230
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_74D5:
	cmp	al,31
	jnz	74ED

l0800_74D9:
	mov	di,7232
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_74ED:
	cmp	al,32
	jnz	7505

l0800_74F1:
	mov	di,7234
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7505:
	cmp	al,33
	jnz	751D

l0800_7509:
	mov	di,7236
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_751D:
	cmp	al,34
	jnz	7535

l0800_7521:
	mov	di,7238
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7535:
	cmp	al,35
	jnz	754D

l0800_7539:
	mov	di,723A
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_754D:
	cmp	al,36
	jnz	7565

l0800_7551:
	mov	di,723C
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7565:
	cmp	al,37
	jnz	757D

l0800_7569:
	mov	di,723E
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_757D:
	cmp	al,38
	jnz	7595

l0800_7581:
	mov	di,7240
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7595:
	cmp	al,39
	jnz	75AD

l0800_7599:
	mov	di,7242
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_75AD:
	cmp	al,30
	jnz	75C5

l0800_75B1:
	mov	di,7244
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_75C5:
	cmp	al,2D
	jnz	75DD

l0800_75C9:
	mov	di,7246
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_75DD:
	cmp	al,3D
	jnz	75F5

l0800_75E1:
	mov	di,7248
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_75F5:
	cmp	al,5B
	jnz	760D

l0800_75F9:
	mov	di,724A
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_760D:
	cmp	al,5D
	jnz	7625

l0800_7611:
	mov	di,724C
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7625:
	cmp	al,3B
	jnz	763D

l0800_7629:
	mov	di,724E
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_763D:
	cmp	al,27
	jnz	7654

l0800_7641:
	mov	di,7250
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7654:
	cmp	al,2C
	jnz	766B

l0800_7658:
	mov	di,7252
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_766B:
	cmp	al,2E
	jnz	7682

l0800_766F:
	mov	di,7254
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7682:
	cmp	al,2F
	jnz	7699

l0800_7686:
	mov	di,7256
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_7699:
	cmp	al,5C
	jnz	76B0

l0800_769D:
	mov	di,7258
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	76C5

l0800_76B0:
	cmp	al,60
	jnz	76C5

l0800_76B4:
	mov	di,725A
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_76C5:
	cmp	word ptr [27E8],0F
	jnz	76DD

l0800_76CC:
	mov	di,725C
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_76DD:
	cmp	byte ptr [27E3],00
	jnz	76E7

l0800_76E4:
	jmp	77C4

l0800_76E7:
	cmp	byte ptr [27E5],00
	jz	76F1

l0800_76EE:
	jmp	77C4

l0800_76F1:
	mov	al,[5497]
	cmp	al,60
	jnz	770C

l0800_76F8:
	mov	di,725F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_770C:
	cmp	al,30
	jnz	7724

l0800_7710:
	mov	di,7261
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_7724:
	cmp	al,2D
	jnz	773C

l0800_7728:
	mov	di,7263
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_773C:
	cmp	al,3D
	jnz	7753

l0800_7740:
	mov	di,7265
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_7753:
	cmp	al,5B
	jnz	776A

l0800_7757:
	mov	di,7267
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_776A:
	cmp	al,5D
	jnz	7781

l0800_776E:
	mov	di,7269
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_7781:
	cmp	al,3B
	jnz	7798

l0800_7785:
	mov	di,726B
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_7798:
	cmp	al,27
	jnz	77AF

l0800_779C:
	mov	di,726D
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	77C4

l0800_77AF:
	cmp	al,5C
	jnz	77C4

l0800_77B3:
	mov	di,726F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_77C4:
	cmp	byte ptr [27E3],00
	jnz	77CE

l0800_77CB:
	jmp	78AB

l0800_77CE:
	cmp	byte ptr [27E5],00
	jnz	77D8

l0800_77D5:
	jmp	78AB

l0800_77D8:
	mov	al,[5497]
	cmp	al,7E
	jnz	77F3

l0800_77DF:
	mov	di,7271
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_77F3:
	cmp	al,29
	jnz	780B

l0800_77F7:
	mov	di,7273
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_780B:
	cmp	al,5F
	jnz	7823

l0800_780F:
	mov	di,7275
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_7823:
	cmp	al,2B
	jnz	783A

l0800_7827:
	mov	di,7277
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_783A:
	cmp	al,7B
	jnz	7851

l0800_783E:
	mov	di,7279
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_7851:
	cmp	al,7D
	jnz	7868

l0800_7855:
	mov	di,727B
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_7868:
	cmp	al,3A
	jnz	787F

l0800_786C:
	mov	di,727D
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_787F:
	cmp	al,22
	jnz	7896

l0800_7883:
	mov	di,727F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	jmp	78AB

l0800_7896:
	cmp	al,7C
	jnz	78AB

l0800_789A:
	mov	di,7281
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_78AB:
	cmp	byte ptr [5497],3F
	jnz	78B5

l0800_78B2:
	call	1C6F

l0800_78B5:
	mov	di,5496
	push	ds
	push	di
	mov	di,7283
	push	cs
	push	di
	call	far 2733:1088
	jz	78D7

l0800_78C6:
	mov	di,5496
	push	ds
	push	di
	mov	di,7285
	push	cs
	push	di
	call	far 2733:1088
	jnz	78EA

l0800_78D7:
	cmp	byte ptr [2998],01
	jnz	78E5

l0800_78DE:
	mov	byte ptr [2998],00
	jmp	78EA

l0800_78E5:
	mov	byte ptr [2998],01

l0800_78EA:
	cmp	byte ptr [27E3],00
	jz	7910

l0800_78F1:
	cmp	byte ptr [27E4],00
	jz	7910

l0800_78F8:
	cmp	word ptr [27E8],53
	jnz	7910

l0800_78FF:
	mov	di,722D
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7910:
	mov	di,5496
	push	ds
	push	di
	mov	di,722D
	push	cs
	push	di
	call	far 2733:1088
	jnz	7926

l0800_7921:
	push	00
	call	211C

l0800_7926:
	cmp	word ptr [27E8],43
	jz	7934

l0800_792D:
	cmp	word ptr [2D28],0A
	jnz	7943

l0800_7934:
	cmp	word ptr [8FEA],04
	jz	7943

l0800_793B:
	xor	ax,ax
	mov	[2D28],ax
	call	6E18

l0800_7943:
	cmp	word ptr [27E8],44
	jz	7951

l0800_794A:
	cmp	word ptr [2D28],0B
	jnz	7960

l0800_7951:
	cmp	word ptr [8FEA],04
	jz	7960

l0800_7958:
	xor	ax,ax
	mov	[2D28],ax
	call	6ED8

l0800_7960:
	cmp	word ptr [27E8],57
	jz	796E

l0800_7967:
	cmp	word ptr [2D28],0C
	jnz	797D

l0800_796E:
	cmp	word ptr [8FEA],04
	jz	797D

l0800_7975:
	xor	ax,ax
	mov	[2D28],ax
	call	6FA2

l0800_797D:
	cmp	word ptr [27E8],58
	jz	798B

l0800_7984:
	cmp	word ptr [2D28],0D
	jnz	799A

l0800_798B:
	cmp	word ptr [8FEA],04
	jz	799A

l0800_7992:
	xor	ax,ax
	mov	[2D28],ax
	call	7066

l0800_799A:
	leave
	ret	0002
0800:799E                                           01 0D               ..
0800:79A0 01 1B 01 4D 01 6D                               ...M.m         

;; fn0800_79A6: 0800:79A6
fn0800_79A6 proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	call	1CA3
	mov	byte ptr [8CC3],01
	mov	byte ptr [8CCB],03
	call	1CF3
	mov	byte ptr [2F94],01
	mov	word ptr [F3CE],0001
	mov	byte ptr [2992],00
	call	far 21BB:012A
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	00
	push	01E0
	push	09
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	mov	al,[32C8]
	mov	[0F9B],al
	mov	word ptr [540A],0001
	mov	ax,[2F92]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	7AA8

l0800_7A37:
	mov	[51FA],ax
	jmp	7A40

l0800_7A3C:
	inc	word ptr [51FA]

l0800_7A40:
	push	00A0
	mov	ax,[2F92]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,0082
	xor	bx,bx
	xor	dx,dx
	pop	cx
	pop	si
	pop	di
	call	far 2733:15B5
	mov	cx,0085
	xor	si,si
	mov	di,2000
	call	far 2733:15C1
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	imul	ax,[51FA],14
	add	ax,01DB
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	push	ax
	imul	di,[51FA],3D
	add	di,2CF3
	push	ds
	push	di
	call	far 2234:051E
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	7A3C

l0800_7AA8:
	push	69
	call	126C
	call	far 21BB:0108
	mov	byte ptr [32C6],01
	mov	byte ptr [298E],01
	push	009B
	mov	ax,[2F92]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,0082
	xor	bx,bx
	xor	dx,dx
	pop	cx
	pop	si
	pop	di
	call	far 2733:15B5
	mov	cx,0085
	xor	si,si
	mov	di,2000
	call	far 2733:15C1
	call	far 2733:15E1
	add	ax,01D8
	adc	dx,00
	push	ax
	push	014A
	push	14
	push	14
	push	word ptr [2F92]
	push	03
	push	word ptr [F396]
	push	word ptr [F398]
	mov	di,5496
	push	ds
	push	di
	call	41B6

l0800_7B1D:
	push	00
	call	7287
	push	009B
	mov	ax,[2F92]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,0082
	xor	bx,bx
	xor	dx,dx
	pop	cx
	pop	si
	pop	di
	call	far 2733:15B5
	mov	cx,0085
	xor	si,si
	mov	di,2000
	call	far 2733:15C1
	call	far 2733:15E1
	add	ax,01D8
	adc	dx,00
	push	ax
	push	014A
	push	14
	push	14
	push	word ptr [2F92]
	push	03
	push	word ptr [F396]
	push	word ptr [F398]
	mov	di,5496
	push	ds
	push	di
	call	41B6
	push	01
	call	1EAD
	mov	[2D2E],ax
	mov	di,5496
	push	ds
	push	di
	mov	di,799E
	push	cs
	push	di
	call	far 2733:1088
	jz	7BE0

l0800_7B9C:
	cmp	word ptr [2D2E],02
	jz	7BE0

l0800_7BA3:
	mov	di,5496
	push	ds
	push	di
	mov	di,79A0
	push	cs
	push	di
	call	far 2733:1088
	jz	7BE0

l0800_7BB4:
	mov	di,5496
	push	ds
	push	di
	mov	di,79A2
	push	cs
	push	di
	call	far 2733:1088
	jz	7BE0

l0800_7BC5:
	mov	di,5496
	push	ds
	push	di
	mov	di,79A4
	push	cs
	push	di
	call	far 2733:1088
	jz	7BE0

l0800_7BD6:
	cmp	byte ptr [F389],01
	jz	7BE0

l0800_7BDD:
	jmp	7B1D

l0800_7BE0:
	mov	di,5496
	push	ds
	push	di
	mov	di,799E
	push	cs
	push	di
	call	far 2733:1088
	jnz	7C21

l0800_7BF1:
	mov	ax,[540A]
	add	ax,0009
	mov	[2D28],ax
	mov	ax,[2F92]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[540A]
	cwd
	cmp	dx,bx
	jnz	7C15

l0800_7C0B:
	cmp	ax,cx
	jnz	7C15

l0800_7C0F:
	mov	word ptr [2D28],000D

l0800_7C15:
	mov	byte ptr [32C6],01
	mov	byte ptr [2D2A],01
	jmp	7C26

l0800_7C21:
	xor	ax,ax
	mov	[2D28],ax

l0800_7C26:
	cmp	byte ptr [F388],00
	jnz	7C26

l0800_7C2D:
	cmp	byte ptr [F389],00
	jnz	7C26

l0800_7C34:
	cmp	word ptr [2D28],0A
	jnz	7C3E

l0800_7C3B:
	call	6E18

l0800_7C3E:
	cmp	word ptr [2D28],0B
	jnz	7C48

l0800_7C45:
	call	6ED8

l0800_7C48:
	cmp	word ptr [2D28],0C
	jnz	7C52

l0800_7C4F:
	call	6FA2

l0800_7C52:
	cmp	word ptr [2D28],0D
	jnz	7C5C

l0800_7C59:
	call	7066

l0800_7C5C:
	call	1C20
	xor	ax,ax
	mov	[2D28],ax
	mov	byte ptr [298E],01
	mov	byte ptr [8CCB],00
	call	far 21BB:012A
	push	69
	call	14C7
	call	far 21BB:0108
	call	far 21BB:01A8
	leave
	ret
0800:7C84             01 5F                                   ._         

;; fn0800_7C86: 0800:7C86
fn0800_7C86 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	mov	al,[0F9B]
	mov	di,[bp+04]
	mov	ss:[di+FEFE],al
	mov	al,ss:[di+0A]
	mov	[0F9B],al
	call	far 21BB:012A
	mov	di,[bp+04]
	push	word ptr ss:[di+10]
	push	word ptr ss:[di+0E]
	les	di,[8C8E]
	add	di,6D5F
	push	es
	push	di
	call	far 2234:067C
	cmp	byte ptr [bp+06],00
	jz	7CFC

l0800_7CCC:
	mov	di,[bp+04]
	push	word ptr ss:[di+10]
	push	word ptr ss:[di+0E]
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,[bp+04]
	add	di,FEAC
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,7C84
	push	cs
	push	di
	call	far 2733:1016
	call	far 2234:051E
	jmp	7D12

l0800_7CFC:
	mov	di,[bp+04]
	push	word ptr ss:[di+10]
	push	word ptr ss:[di+0E]
	add	di,FEAC
	push	ss
	push	di
	call	far 2234:051E

l0800_7D12:
	call	far 21BB:0108
	call	far 21BB:01A8
	mov	di,[bp+04]
	mov	al,ss:[di+FEFE]
	mov	[0F9B],al
	leave
	ret	0004
0800:7D2B                                  01 0D 01 08 01            .....
0800:7D30 1B                                              .              

;; fn0800_7D31: 0800:7D31
fn0800_7D31 proc
	push	bp
	mov	bp,sp
	mov	ax,0258
	call	far 2733:0530
	sub	sp,0258
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+06]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_7D53:
	rep movsb

l0800_7D55:
	mov	ds,bx
	call	far 21BB:012A
	push	word ptr [bp+10]
	push	word ptr [bp+0E]
	mov	ax,[bp+0C]
	inc	ax
	shl	ax,03
	add	ax,[bp+10]
	push	ax
	mov	ax,[bp+0E]
	add	ax,0010
	push	ax
	les	di,[8C8E]
	add	di,6D5F
	push	es
	push	di
	call	far 2234:05EA
	call	far 21BB:0108
	mov	byte ptr [bp+FEAC],00
	cmp	byte ptr [bp+FF00],00
	jbe	7DA7

l0800_7D94:
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FEAC]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1

l0800_7DA7:
	push	01
	push	bp
	call	7C86

l0800_7DAD:
	mov	al,[F38E]
	mov	[bp+FEFF],al
	push	00
	call	7287
	mov	al,[bp+FEFF]
	mov	[F38E],al
	cmp	word ptr [2D28],01
	jnz	7DDD

l0800_7DC7:
	xor	ax,ax
	mov	[2D28],ax
	mov	di,7D2B
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7DDD:
	mov	byte ptr [bp+FEA9],00
	cmp	byte ptr [5496],00
	jz	7DEE

l0800_7DE9:
	mov	byte ptr [bp+FEA9],01

l0800_7DEE:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2D
	push	cs
	push	di
	call	far 2733:1088
	jnz	7E39

l0800_7DFF:
	mov	byte ptr [bp+FEA9],00
	cmp	byte ptr [bp+FEAC],00
	jbe	7E39

l0800_7E0B:
	lea	di,[bp+FDA8]
	push	ss
	push	di
	lea	di,[bp+FEAC]
	push	ss
	push	di
	push	01
	mov	al,[bp+FEAC]
	xor	ah,ah
	dec	ax
	push	ax
	call	far 2733:0FD5
	lea	di,[bp+FEAC]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1
	push	01
	push	bp
	call	7C86

l0800_7E39:
	cmp	byte ptr [5497],00
	jnz	7E45

l0800_7E40:
	mov	byte ptr [bp+FEA9],00

l0800_7E45:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2F
	push	cs
	push	di
	call	far 2733:1088
	jz	7E67

l0800_7E56:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2B
	push	cs
	push	di
	call	far 2733:1088
	jnz	7E6C

l0800_7E67:
	mov	byte ptr [bp+FEA9],00

l0800_7E6C:
	cmp	byte ptr [bp+FEA9],01
	jnz	7EAC

l0800_7E73:
	mov	al,[bp+FEAC]
	xor	ah,ah
	cmp	ax,[bp+0C]
	jnc	7EAC

l0800_7E7E:
	lea	di,[bp+FDA8]
	push	ss
	push	di
	lea	di,[bp+FEAC]
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,5496
	push	ds
	push	di
	call	far 2733:1016
	lea	di,[bp+FEAC]
	push	ss
	push	di
	push	50
	call	far 2733:0FB1
	push	01
	push	bp
	call	7C86

l0800_7EAC:
	cmp	byte ptr [F388],00
	jz	7ECE

l0800_7EB3:
	push	01
	call	1EAD
	cmp	ax,0003
	jnz	7ECE

l0800_7EBD:
	mov	di,7D2F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7ECE:
	push	word ptr [bp+04]
	call	0F57
	mov	[2D26],ax
	cmp	word ptr [bp+04],02
	jnz	7EF5

l0800_7EDD:
	cmp	word ptr [2D26],01
	jnz	7EF5

l0800_7EE4:
	mov	di,7D2F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7EF5:
	cmp	word ptr [bp+04],03
	jnz	7F2B

l0800_7EFB:
	cmp	word ptr [2D26],01
	jnz	7F13

l0800_7F02:
	mov	di,7D2B
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7F13:
	cmp	word ptr [2D26],02
	jnz	7F2B

l0800_7F1A:
	mov	di,7D2F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_7F2B:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2B
	push	cs
	push	di
	call	far 2733:1088
	jz	7F5E

l0800_7F3C:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2F
	push	cs
	push	di
	call	far 2733:1088
	jz	7F5E

l0800_7F4D:
	cmp	byte ptr [F389],00
	jnz	7F5E

l0800_7F54:
	cmp	word ptr [27E8],41
	jz	7F5E

l0800_7F5B:
	jmp	7DAD

l0800_7F5E:
	push	00
	push	bp
	call	7C86
	cmp	byte ptr [F389],00
	jnz	7F83

l0800_7F6B:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2F
	push	cs
	push	di
	call	far 2733:1088
	jz	7F83

l0800_7F7C:
	cmp	word ptr [27E8],41
	jnz	7F8A

l0800_7F83:
	les	di,[bp+12]
	mov	byte ptr es:[di],00

l0800_7F8A:
	cmp	byte ptr [F388],00
	jnz	7FA2

l0800_7F91:
	mov	di,5496
	push	ds
	push	di
	mov	di,7D2B
	push	cs
	push	di
	call	far 2733:1088
	jnz	7FB5

l0800_7FA2:
	lea	di,[bp+FEAC]
	push	ss
	push	di
	les	di,[bp+12]
	push	es
	push	di
	push	00FF
	call	far 2733:0FB1

l0800_7FB5:
	cmp	byte ptr [F388],00
	jnz	7FB5

l0800_7FBC:
	cmp	byte ptr [F389],00
	jnz	7FB5

l0800_7FC3:
	call	1C20
	leave
	ret	000E
0800:7FCA                               01 46 01 44 01 43           .F.D.C

;; fn0800_7FD0: 0800:7FD0
fn0800_7FD0 proc
	push	bp
	mov	bp,sp
	mov	ax,0102
	call	far 2733:0530
	sub	sp,0102
	xor	ax,ax
	mov	[27F8],ax
	cmp	byte ptr [F388],00
	jnz	7FEE

l0800_7FEB:
	jmp	8087

l0800_7FEE:
	mov	word ptr [bp-02],0001
	jmp	7FF8

l0800_7FF5:
	inc	word ptr [bp-02]

l0800_7FF8:
	mov	di,[bp-02]
	shl	di,02
	mov	ax,[di+0738]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2733]
	cwd
	cmp	dx,bx
	jg	8016

l0800_8010:
	jl	807E

l0800_8012:
	cmp	ax,cx
	jbe	807E

l0800_8016:
	mov	di,[bp-02]
	shl	di,02
	mov	ax,[di+0738]
	add	ax,0012
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	8037

l0800_8031:
	jg	807E

l0800_8033:
	cmp	ax,cx
	jnc	807E

l0800_8037:
	mov	di,[bp-02]
	shl	di,02
	mov	ax,[di+073A]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jg	8055

l0800_804F:
	jl	807E

l0800_8051:
	cmp	ax,cx
	jbe	807E

l0800_8055:
	mov	di,[bp-02]
	shl	di,02
	mov	ax,[di+073A]
	add	ax,0012
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	8076

l0800_8070:
	jg	807E

l0800_8072:
	cmp	ax,cx
	jnc	807E

l0800_8076:
	mov	ax,[bp-02]
	mov	[27F8],ax
	jmp	8087

l0800_807E:
	cmp	word ptr [bp-02],04
	jz	8087

l0800_8084:
	jmp	7FF5

l0800_8087:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,7FCA
	push	cs
	push	di
	call	far 2733:1088
	jnz	80A9

l0800_80A3:
	mov	word ptr [27F8],0001

l0800_80A9:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,7FCC
	push	cs
	push	di
	call	far 2733:1088
	jnz	80CB

l0800_80C5:
	mov	word ptr [27F8],0002

l0800_80CB:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,7FCE
	push	cs
	push	di
	call	far 2733:1088
	jnz	80ED

l0800_80E7:
	mov	word ptr [27F8],0003

l0800_80ED:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,7FCC
	push	cs
	push	di
	call	far 2733:1088
	jnz	810F

l0800_8109:
	mov	word ptr [27F8],0004

l0800_810F:
	leave
	ret
0800:8111    01 4B 01 5A 01 56 01 31 01 32 01 33 01 34 01  .K.Z.V.1.2.3.4.
0800:8120 35                                              5              

;; fn0800_8121: 0800:8121
fn0800_8121 proc
	push	bp
	mov	bp,sp
	mov	ax,0104
	call	far 2733:0530
	sub	sp,0104
	xor	ax,ax
	mov	[27F8],ax
	xor	ax,ax
	mov	[27FA],ax
	cmp	byte ptr [F388],00
	jnz	8144

l0800_8141:
	jmp	A877

l0800_8144:
	mov	word ptr [bp-02],2733
	jmp	814E

l0800_814B:
	inc	word ptr [bp-02]

l0800_814E:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074A]
	mov	[bp-06],ax
	mov	ax,0001
	cmp	ax,[bp-06]
	jbe	816B

l0800_8168:
	jmp	8236

l0800_816B:
	mov	[bp-04],ax
	jmp	8173

l0800_8170:
	inc	word ptr [bp-04]

l0800_8173:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+0746]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jg	819C

l0800_8190:
	jge	8195

l0800_8192:
	jmp	822B

l0800_8195:
	cmp	ax,cx
	ja	819C

l0800_8199:
	jmp	822B

l0800_819C:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+0746]
	add	ax,0012
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	81C2

l0800_81BC:
	jg	822B

l0800_81BE:
	cmp	ax,cx
	jnc	822B

l0800_81C2:
	mov	ax,[bp-04]
	dec	ax
	imul	ax,ax,18
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	add	ax,[di+2733]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jg	81EC

l0800_81E6:
	jl	822B

l0800_81E8:
	cmp	ax,cx
	jbe	822B

l0800_81EC:
	mov	ax,[bp-04]
	dec	ax
	imul	ax,ax,18
	mov	dx,ax
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+0748]
	add	ax,0012
	add	ax,dx
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	821D

l0800_8217:
	jg	822B

l0800_8219:
	cmp	ax,cx
	jnc	822B

l0800_821D:
	mov	ax,[bp-02]
	mov	[27F8],ax
	mov	ax,[bp-04]
	mov	[27FA],ax
	jmp	8236

l0800_822B:
	mov	ax,[bp-04]
	cmp	ax,[bp-06]
	jz	8236

l0800_8233:
	jmp	8170

l0800_8236:
	cmp	word ptr [bp-02],01
	jz	823F

l0800_823C:
	jmp	814B

l0800_823F:
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,8111
	push	cs
	push	di
	call	far 2733:1088
	jnz	8267

l0800_825B:
	mov	word ptr [27F8],0001
	mov	word ptr [27FA],0001

l0800_8267:
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	di,2733
	push	ds
	push	di
	call	far 1429:051C
	mov	di,8113
	push	cs
	push	di
	call	far 2733:1088
	jnz	828F

l0800_8283:
	mov	word ptr [27F8],0001
	mov	word ptr [27FA],0002

l0800_828F:
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,8115
	push	cs
	push	di
	call	far 2733:1088
	jnz	82B7

l0800_82AB:
	mov	word ptr [27F8],0001
	mov	word ptr [27FA],0003

l0800_82B7:
	mov	di,5496
	push	ds
	push	di
	mov	di,8117
	push	cs
	push	di
	call	far 2733:1088
	jnz	82D4

l0800_82C8:
	mov	word ptr [27F8],0002
	mov	word ptr [27FA],0001

l0800_82D4:
	mov	di,5496
	push	ds
	push	di
	mov	di,8119
	push	cs
	push	di
	call	far 2733:1088
	jnz	82F1

l0800_82E5:
	mov	word ptr [27F8],0002
	mov	word ptr [27FA],0002

l0800_82F1:
	mov	di,5496
	push	ds
	push	di
	mov	di,811B
	push	cs
	push	di
	call	far 2733:1088
	jnz	830E

l0800_8302:
	mov	word ptr [27F8],0002
	mov	word ptr [27FA],0003

l0800_830E:
	mov	di,5496
	push	ds
	push	di
	mov	di,811D
	push	cs
	push	di
	call	far 2733:1088
	jnz	832B

l0800_831F:
	mov	word ptr [27F8],0002
	mov	word ptr [27FA],0004

l0800_832B:
	mov	di,5496
	push	ds
	push	di
	mov	di,811F
	push	cs
	push	di
	call	far 2733:1088
	jnz	8348

l0800_833C:
	mov	word ptr [2733],0002
	mov	word ptr [27FA],0005

l0800_8348:
	leave
	ret

;; fn0800_834A: 0800:834A
fn0800_834A proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[27F8],ax
	xor	ax,ax
	mov	[26BA],ax
	cmp	byte ptr [F388],00
	jnz	836C

l0800_8369:
	jmp	8476

l0800_836C:
	mov	word ptr [bp-02],0001
	jmp	8376

l0800_8373:
	inc	word ptr [bp-02]

l0800_8376:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074C]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jg	839F

l0800_8393:
	jge	8398

l0800_8395:
	jmp	846D

l0800_8398:
	cmp	ax,cx
	ja	839F

l0800_839C:
	jmp	846D

l0800_839F:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074C]
	add	ax,001E
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	83CB

l0800_83BF:
	jle	83C4

l0800_83C1:
	jmp	846D

l0800_83C4:
	cmp	ax,cx
	jc	83CB

l0800_83C8:
	jmp	846D

l0800_83CB:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074E]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	sub	ax,0003
	cwd
	cmp	dx,bx
	jg	83F4

l0800_83EB:
	jge	83F0

l0800_83ED:
	jmp	846D

l0800_83F0:
	cmp	ax,cx
	jbe	846D

l0800_83F4:
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074E]
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	add	ax,[di+0750]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2733]
	sub	ax,0003
	cwd
	cmp	dx,bx
	jl	8429

l0800_8423:
	jg	846D

l0800_8425:
	cmp	ax,cx
	jnc	846D

l0800_8429:
	mov	ax,[bp-02]
	mov	[27F8],ax
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074E]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	sub	ax,0003
	cwd
	sub	ax,cx
	sbb	dx,bx
	mov	cx,ax
	mov	bx,dx
	mov	di,[bp-02]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+0750]
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[27FA],ax
	jmp	8476

l0800_846D:
	cmp	word ptr [bp-02],03
	jz	8476

l0800_8473:
	jmp	8373

l0800_8476:
	cmp	word ptr [27E8],0D
	jnz	84A6

l0800_847D:
	mov	ax,[0756]
	sub	ax,0003
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2976]
	cwd
	cmp	dx,bx
	jl	8497

l0800_8491:
	jg	84A6

l0800_8493:
	cmp	ax,cx
	jnc	84A6

l0800_8497:
	mov	word ptr [27F8],0001
	mov	ax,[2976]
	add	ax,0003
	mov	[27FA],ax

l0800_84A6:
	cmp	word ptr [27E8],0C
	jnz	84C3

l0800_84AD:
	cmp	word ptr [2976],03
	jle	84C3

l0800_84B4:
	mov	word ptr [27F8],0001
	mov	ax,[2976]
	sub	ax,0003
	mov	[27FA],ax

l0800_84C3:
	cmp	word ptr [27E8],34
	jnz	84F3

l0800_84CA:
	mov	ax,[075C]
	sub	ax,0003
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2978]
	cwd
	cmp	dx,bx
	jl	84E4

l0800_84DE:
	jg	84F3

l0800_84E0:
	cmp	ax,cx
	jnc	84F3

l0800_84E4:
	mov	word ptr [27F8],0002
	mov	ax,[2978]
	add	ax,0003
	mov	[27FA],ax

l0800_84F3:
	cmp	word ptr [27E8],33
	jnz	8510

l0800_84FA:
	cmp	word ptr [2978],03
	jle	8510

l0800_8501:
	mov	word ptr [27F8],0002
	mov	ax,[2978]
	sub	ax,0003
	mov	[27FA],ax

l0800_8510:
	cmp	word ptr [27E8],1B
	jnz	8540

l0800_8517:
	mov	ax,[0762]
	sub	ax,0003
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[297A]
	cwd
	cmp	dx,bx
	jl	8531

l0800_852B:
	jg	8540

l0800_852D:
	cmp	ax,cx
	jnc	8540

l0800_8531:
	mov	word ptr [27F8],0003
	mov	ax,[297A]
	add	ax,2234
	mov	[27FA],ax

l0800_8540:
	cmp	word ptr [27E8],1A
	jnz	855D

l0800_8547:
	cmp	word ptr [297A],03
	jle	855D

l0800_854E:
	mov	word ptr [27F8],0003
	mov	ax,[297A]
	sub	ax,0003
	mov	[27FA],ax

l0800_855D:
	leave
	ret
0800:855F                                              01                .
0800:8560 4D 01 0D 01 1B 01 4F                            M.....O        

;; fn0800_8567: 0800:8567
fn0800_8567 proc
	push	bp
	mov	bp,sp
	mov	ax,0108
	call	far 2733:0530
	sub	sp,0108
	call	1CA3
	mov	byte ptr [8CC5],01
	mov	byte ptr [8CCD],03
	call	1CF3
	mov	byte ptr [2F94],01
	mov	byte ptr [bp-01],00
	mov	byte ptr [bp-07],00
	call	far 21BB:012A
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	push	00
	push	01E0
	push	0A
	push	00
	push	01
	push	00
	push	00
	call	2F49
	push	01
	les	di,[8C92]
	push	es
	push	di
	push	00
	push	FA00
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	push	01
	call	0EA3
	mov	al,[8FF2]
	mov	[2958],al
	mov	al,[8FF3]
	mov	[2733],al
	mov	al,[8FF4]
	mov	[295A],al
	mov	al,[8FF5]
	mov	[295B],al
	mov	ax,[8FFA]
	mov	[2962],ax
	mov	ax,[0756]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,ax
	mov	bx,dx
	mov	al,[8FF6]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:0E82
	mov	[2976],ax
	mov	ax,[075C]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,1000
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8FF8]
	xor	dx,dx
	call	far 2733:0E82
	mov	[2978],ax
	mov	ax,[0762]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8FFE]
	xor	dx,dx
	call	far 2733:0E82
	mov	[297A],ax
	call	0E7D
	call	0E57
	call	0DAB
	push	00C8
	call	126C
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_869F:
	push	00
	call	7287
	call	7FD0
	cmp	word ptr [27F8],00
	jbe	86EA

l0800_86AE:
	mov	di,[27F8]
	cmp	byte ptr [di+2957],00
	jz	86C4

l0800_86B9:
	mov	di,[27F8]
	mov	byte ptr [di+2957],00
	jmp	86CD

l0800_86C4:
	mov	di,[27F8]
	mov	byte ptr [di+2957],01

l0800_86CD:
	call	far 21BB:012A
	push	word ptr [27F8]
	call	0D27
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_86E3:
	cmp	byte ptr [F388],00
	jnz	86E3

l0800_86EA:
	call	8121
	cmp	word ptr [27F8],00
	jbe	872B

l0800_86F4:
	mov	di,[27F8]
	shl	di,01
	cmp	word ptr [di+2960],00
	jbe	870E

l0800_8701:
	mov	ax,[27FA]
	mov	di,[27F8]
	shl	di,01
	mov	[di+2960],ax

l0800_870E:
	call	far 21BB:012A
	push	word ptr [27F8]
	call	0DD1
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_8724:
	cmp	byte ptr [F388],00
	jnz	8724

l0800_872B:
	call	834A
	cmp	word ptr [27F8],00
	ja	8738

l0800_8735:
	jmp	88C2

l0800_8738:
	mov	di,[27F8]
	shl	di,01
	mov	ax,[di+2974]
	mov	[bp-04],ax
	mov	ax,[27FA]
	mov	di,[27F8]
	shl	di,01
	mov	[di+2974],ax
	mov	ax,[bp-04]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	di,[27F8]
	shl	di,01
	mov	ax,[di+2974]
	cwd
	cmp	dx,bx
	jnz	8771

l0800_876A:
	cmp	ax,cx
	jnz	8771

l0800_876E:
	jmp	88C2

l0800_8771:
	call	far 21BB:012A
	mov	byte ptr [0F9B],04
	mov	di,[27F8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	push	word ptr [di+074C]
	mov	di,[27F8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	push	word ptr [di+074E]
	mov	di,[27F8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074C]
	add	ax,001E
	push	ax
	mov	di,[27F8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	mov	ax,[di+074E]
	mov	di,[27F8]
	shl	di,01
	mov	si,di
	shl	di,01
	add	di,si
	add	ax,[di+0750]
	add	ax,0005
	push	ax
	call	far 2234:0139
	push	word ptr [27F8]
	call	0D56
	call	far 21BB:0108
	call	far 21BB:01A8
	cmp	word ptr [27F8],01
	jnz	8831

l0800_87F0:
	mov	ax,[0756]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,[2976]
	cwd
	call	far 2733:15D5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	cx,0080
	xor	si,si
	xor	di,di
	call	far 2733:15AF
	call	far 2733:15E1
	mov	[8FF6],al
	call	1718

l0800_8831:
	cmp	word ptr [27F8],02
	jnz	887A

l0800_8838:
	mov	ax,[075C]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,1000
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,[2978]
	cwd
	call	far 2733:15D5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	cx,0080
	xor	si,si
	xor	di,di
	call	far 2733:15AF
	call	far 2733:15E1
	mov	[8FF8],ax
	call	1735

l0800_887A:
	cmp	word ptr [27F8],03
	jnz	88C2

l0800_8881:
	mov	ax,[0762]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,[297A]
	cwd
	call	far 2733:15D5
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	cx,0080
	xor	si,si
	xor	di,di
	call	far 2733:15AF
	call	far 2733:15E1
	mov	[8FFE],ax
	call	045A

l0800_88C2:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,855F
	push	cs
	push	di
	call	far 2733:1088
	jnz	88E2

l0800_88DE:
	mov	byte ptr [bp-07],01

l0800_88E2:
	push	01
	call	0F57
	mov	[bp-06],ax
	cmp	word ptr [bp-06],01
	jnz	88F4

l0800_88F0:
	mov	byte ptr [bp-07],01

l0800_88F4:
	cmp	word ptr [bp-06],02
	jnz	890B

l0800_88FA:
	mov	di,8561
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_890B:
	push	01
	call	1EAD
	cmp	ax,0004
	jnz	8926

l0800_8915:
	mov	di,8563
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_8926:
	cmp	byte ptr [F389],00
	jnz	8974

l0800_892D:
	cmp	byte ptr [bp-07],00
	jnz	8974

l0800_8933:
	mov	di,5496
	push	ds
	push	di
	mov	di,8563
	push	cs
	push	di
	call	far 2733:1088
	jz	8974

l0800_8944:
	mov	di,5496
	push	ds
	push	di
	mov	di,8561
	push	cs
	push	di
	call	far 2733:1088
	jz	8974

l0800_8955:
	lea	di,[bp+FEF8]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,8565
	push	cs
	push	di
	call	far 2733:1088
	jz	8974

l0800_8971:
	jmp	869F

l0800_8974:
	mov	byte ptr [8CCD],00
	mov	al,[2958]
	mov	[8FF2],al
	mov	al,[2959]
	mov	[8FF3],al
	mov	al,[295A]
	mov	[8FF4],al
	mov	al,[295B]
	mov	[8FF5],al
	mov	ax,[2962]
	mov	[8FFA],ax
	mov	di,[8FFA]
	shl	di,02
	mov	al,[di+07BC]
	mov	[2F9A],al
	mov	di,[2733]
	shl	di,02
	mov	al,[di+07BE]
	mov	[2F9B],al
	cmp	byte ptr [bp-07],00
	jz	89BE

l0800_89B9:
	call	far 1429:1983

l0800_89BE:
	call	1C20

l0800_89C1:
	cmp	byte ptr [F389],00
	jnz	89C1

l0800_89C8:
	call	far 21BB:012A
	push	00C8
	call	14C7
	call	far 21BB:0108
	call	far 21BB:01A8
	leave
	ret

;; fn0800_89DF: 0800:89DF
fn0800_89DF proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	mov	byte ptr [2AB8],00
	mov	al,[29DE]
	xor	ah,ah
	mov	[bp-02],ax
	mov	ax,[27F2]
	mov	[bp-04],ax
	mov	ax,0001
	cmp	ax,[bp-04]
	jbe	8A0B

l0800_8A08:
	jmp	8A88

l0800_8A0B:
	mov	[2AB2],ax
	jmp	8A14

l0800_8A10:
	inc	word ptr [2AB2]

l0800_8A14:
	mov	byte ptr [2AB8],01
	mov	ax,[bp-02]
	mov	[bp-06],ax
	mov	ax,0001
	cmp	ax,[bp-06]
	ja	8A77

l0800_8A27:
	mov	[2AB4],ax
	jmp	8A30

l0800_8A2C:
	inc	word ptr [2AB4]

l0800_8A30:
	mov	ax,[2AB2]
	add	ax,[2AB4]
	dec	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	di,[2AB4]
	cmp	al,[di+29DE]
	jz	8A6F

l0800_8A4C:
	mov	ax,[2AB2]
	add	ax,[2AB4]
	dec	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	mov	di,[2AB4]
	cmp	al,[di+2A12]
	jz	8A6F

l0800_8A68:
	mov	byte ptr [2AB8],00
	jmp	8A77

l0800_8A6F:
	mov	ax,[2AB4]
	cmp	ax,[bp-06]
	jnz	8A2C

l0800_8A77:
	cmp	byte ptr [2AB8],00
	jz	8A80

l0800_8A7E:
	jmp	8A88

l0800_8A80:
	mov	ax,[2AB2]
	cmp	ax,[bp-04]
	jnz	8A10

l0800_8A88:
	leave
	ret
0800:8A8A                               0F FE FE FE FE FE           ......
0800:8A90 FE FE FE FE FE FE FE FE FE FE 0E 54 61 6C A0 6C ...........Tal.l
0800:8AA0 61 74 20 3A 20 30 20 64 62 00 01 FE 03 20 64 62 at : 0 db.... db
0800:8AB0 0C 54 61 6C A0 6C 61 74 6F 6B 3A 20 28 04 20 64 .Tal.latok: (. d
0800:8AC0 62 29 2C 4E 65 6D 20 74 61 6C A0 6C 74 61 6D 20 b),Nem tal.ltam 
0800:8AD0 6D 65 67 20 65 67 79 20 63 69 6B 6B 62 65 6E 20 meg egy cikkben 
0800:8AE0 73 65 6D 20 61 20 73 7A 94 76 65 67 65 74 2E    sem a sz.veget.

;; fn0800_8AEF: 0800:8AEF
fn0800_8AEF proc
	push	bp
	mov	bp,sp
	mov	ax,0106
	call	far 2733:0530
	sub	sp,0106
	call	1CA3
	mov	byte ptr [8CCC],03
	mov	byte ptr [8CC4],01
	call	1CF3
	mov	byte ptr [2F94],01
	mov	word ptr [F3CE],0001
	mov	byte ptr [2992],00
	mov	byte ptr [27F0],00
	call	far 21BB:012A
	push	00
	push	01E0
	push	05
	push	00
	push	01
	push	00
	push	00
	call	2F49
	mov	byte ptr [0F9B],07
	push	0197
	push	01F4
	mov	di,8A8A
	push	cs
	push	di
	call	far 2234:051E
	mov	byte ptr [0F9B],2A
	push	0197
	push	0212
	mov	di,8A9A
	push	cs
	push	di
	call	far 2234:051E
	push	02
	call	0EA3
	push	48
	call	126C
	call	far 21BB:0108
	call	far 21BB:01A8
	lea	di,[bp+FEFE]
	push	ss
	push	di
	push	18
	push	01F4
	push	2D
	push	2A
	mov	di,8AA9
	push	cs
	push	di
	push	02
	call	7D31
	mov	di,29DE
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	mov	di,2234
	push	ds
	push	di
	mov	di,29AA
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,29DE
	push	ds
	push	di
	call	far 1429:05B8
	mov	di,2A12
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,29DE
	push	ds
	push	di
	call	far 1429:051C
	mov	di,29DE
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	xor	ax,ax
	mov	[2AB6],ax
	xor	ax,ax
	mov	[2AAE],ax
	cmp	byte ptr [29DE],00
	jnz	8BFA

l0800_8BF7:
	jmp	8EB6

l0800_8BFA:
	mov	ax,[8C7E]
	xor	dx,dx
	call	far 2733:15D5
	push	dx
	push	bx
	push	ax
	mov	ax,0084
	xor	bx,bx
	mov	dx,7000
	pop	cx
	pop	si
	pop	di
	call	far 2733:15C7
	mov	[2D14],ax
	mov	[2D16],bx
	mov	[2D18],dx
	xor	ax,ax
	mov	[2AB6],ax
	xor	ax,ax
	mov	[2AAE],ax
	call	far 21BB:012A
	call	far 21BB:0108
	mov	word ptr [F3CE],0007
	call	far 21BB:01A8
	mov	ax,[8C7E]
	mov	[bp-04],ax
	mov	ax,0001
	cmp	ax,[bp-04]
	jbe	8C52

l0800_8C4F:
	jmp	8DC2

l0800_8C52:
	mov	[2AB0],ax
	jmp	8C5B

l0800_8C57:
	inc	word ptr [2AB0]

l0800_8C5B:
	call	far 21BB:012A
	mov	byte ptr [32F2],00
	mov	ax,[2AB0]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,[2D14]
	mov	si,[2D16]
	mov	di,[2D18]
	call	far 2733:15C1
	call	far 2733:15E1
	mov	[bp-06],ax
	mov	ax,0001
	cmp	ax,[bp-06]
	jg	8CC8

l0800_8C90:
	mov	[32E4],ax
	jmp	8C99

l0800_8C95:
	inc	word ptr [32E4]

l0800_8C99:
	lea	di,[bp+FEFA]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,8AAA
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	ax,[32E4]
	cmp	ax,[bp-06]
	jnz	8C95

l0800_8CC8:
	mov	byte ptr [0F9B],01
	push	0197
	push	01F4
	mov	di,32F2
	push	ds
	push	di
	call	far 2234:051E
	call	far 21BB:0108
	call	far 21BB:01A8
	push	word ptr [2AB0]
	push	00
	call	5B59
	call	far 26D1:0308
	or	al,al
	jnz	8D03

l0800_8CF9:
	push	02
	call	0F57
	cmp	ax,0001
	jnz	8D09

l0800_8D03:
	call	1C20
	jmp	8DC2

l0800_8D09:
	call	89DF
	cmp	byte ptr [2AB8],00
	jnz	8D16

l0800_8D13:
	jmp	8DB7

l0800_8D16:
	inc	word ptr [2AB6]
	inc	word ptr [2AAE]
	mov	dx,[2AB0]
	mov	ax,[8C7E]
	add	ax,[2AAE]
	mov	di,ax
	shl	di,01
	mov	[di+2733],dx
	mov	ax,[2AB6]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,8AAC
	push	cs
	push	di
	call	far 2733:1016
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	call	far 21BB:012A
	mov	byte ptr [0F9B],04
	push	01E7
	push	0212
	push	020F
	push	0222
	call	far 2234:0139
	mov	byte ptr [0F9B],2A
	push	01E7
	push	0212
	mov	di,33F2
	push	ds
	push	di
	call	far 2234:051E
	call	far 21BB:0108
	call	far 21BB:01A8
	mov	ax,[2AAE]
	add	ax,[8C7E]
	cmp	ax,[28DA]
	jc	8DB7

l0800_8DB5:
	jmp	8DC2

l0800_8DB7:
	mov	ax,[2AB0]
	cmp	ax,[bp-04]
	jz	8DC2

l0800_8DBF:
	jmp	8C57

l0800_8DC2:
	cmp	word ptr [2AB6],00
	ja	8DCC

l0800_8DC9:
	jmp	8E79

l0800_8DCC:
	mov	ax,[2AB6]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C7C]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	cwd
	add	ax,cx
	adc	dx,bx
	mov	dx,ax
	mov	ax,[8C7C]
	inc	ax
	inc	ax
	mov	di,ax
	shl	di,01
	mov	[di+8702],dx
	mov	ax,[8C7C]
	inc	ax
	mov	[8C80],ax
	mov	word ptr [8C8A],0001
	mov	ax,[2AB6]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	mov	di,33F2
	push	ds
	push	di
	push	00FF
	call	far 2733:1B51
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,8AB0
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,33F2
	push	ds
	push	di
	call	far 2733:1016
	mov	di,8ABD
	push	cs
	push	di
	call	far 2733:1016
	mov	ax,[8C7C]
	inc	ax
	imul	di,ax,29
	add	di,76D7
	push	ds
	push	di
	push	28
	call	far 2733:0FB1
	mov	word ptr [F3CE],0001
	call	far 21BB:01A8
	mov	ax,[8C7E]
	mov	[2ABA],ax
	mov	byte ptr [27F0],01
	mov	di,29AA
	push	ds
	push	di
	mov	di,2A46
	push	ds
	push	di
	push	32
	call	far 2733:0FB1
	jmp	8EB6

l0800_8E79:
	cmp	byte ptr [29DE],00
	jz	8EB6

l0800_8E80:
	mov	word ptr [F3CE],0001
	call	far 21BB:012A
	mov	byte ptr [0F9B],40
	push	18
	push	0212
	mov	di,8AC2
	push	cs
	push	di
	call	far 2234:051E
	push	02
	call	0EA3
	call	far 21BB:0108
	call	far 21BB:01A8
	call	22ED
	mov	byte ptr [29DE],00

l0800_8EB6:
	call	2B97
	cmp	byte ptr [27F0],00
	jz	8ECD

l0800_8EC0:
	push	0D
	push	01
	call	395F
	call	3F93
	call	4011

l0800_8ECD:
	cmp	byte ptr [F388],00
	jnz	8ECD

l0800_8ED4:
	cmp	byte ptr [F389],00
	jnz	8ECD

l0800_8EDB:
	mov	byte ptr [32C6],01
	mov	byte ptr [298E],01
	mov	byte ptr [76FE],01
	mov	byte ptr [8CCC],00
	call	far 21BB:012A
	push	48
	call	14C7
	mov	byte ptr [29DE],00
	call	far 21BB:0108
	call	far 21BB:01A8
	leave
	ret

;; fn0800_8F0A: 0800:8F0A
fn0800_8F0A proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	xor	ax,ax
	mov	[bp-04],ax
	mov	ax,[2748]
	mov	[bp-06],ax
	mov	ax,0001
	cmp	ax,[bp-06]
	jbe	8F2E

l0800_8F2B:
	jmp	8FD2

l0800_8F2E:
	mov	[51FA],ax
	jmp	8F37

l0800_8F33:
	inc	word ptr [51FA]

l0800_8F37:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+250E]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jg	8F55

l0800_8F4F:
	jl	8FC7

l0800_8F51:
	cmp	ax,cx
	jc	8FC7

l0800_8F55:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+25DA]
	shl	ax,03
	mov	di,[51FA]
	shl	di,01
	add	ax,[di+250E]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jl	8F80

l0800_8F7A:
	jg	8FC7

l0800_8F7C:
	cmp	ax,cx
	ja	8FC7

l0800_8F80:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2574]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	8F9E

l0800_8F98:
	jl	8FC7

l0800_8F9A:
	cmp	ax,cx
	jc	8FC7

l0800_8F9E:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2574]
	add	ax,0010
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	8FBF

l0800_8FB9:
	jg	8FC7

l0800_8FBB:
	cmp	ax,cx
	ja	8FC7

l0800_8FBF:
	mov	ax,[51FA]
	mov	[bp-04],ax
	jmp	8FD2

l0800_8FC7:
	mov	ax,[51FA]
	cmp	ax,[bp-06]
	jz	8FD2

l0800_8FCF:
	jmp	8F33

l0800_8FD2:
	cmp	word ptr [F384],0268
	jle	8FDF

l0800_8FDA:
	xor	ax,ax
	mov	[bp-04],ax

l0800_8FDF:
	cmp	word ptr [bp-04],00
	jbe	8FEC

l0800_8FE5:
	mov	byte ptr [2750],01
	jmp	8FF1

l0800_8FEC:
	mov	byte ptr [2750],00

l0800_8FF1:
	mov	ax,[bp-04]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	leave
	ret
0800:8FFC                                     01 31 01 39             .1.9

;; fn0800_9000: 0800:9000
fn0800_9000 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[bp-04],ax
	mov	ax,[274A]
	cmp	ax,0001
	jnc	901E

l0800_901B:
	jmp	90C5

l0800_901E:
	mov	[51FA],ax
	jmp	9027

l0800_9023:
	dec	word ptr [51FA]

l0800_9027:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2640]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[21BB]
	cwd
	cmp	dx,bx
	jg	9045

l0800_903F:
	jl	90BB

l0800_9041:
	cmp	ax,cx
	jc	90BB

l0800_9045:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2640]
	mov	di,[51FA]
	shl	di,01
	add	ax,[di+2690]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jl	906D

l0800_9067:
	jg	90BB

l0800_9069:
	cmp	ax,cx
	ja	90BB

l0800_906D:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2668]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	908B

l0800_9085:
	jl	90BB

l0800_9087:
	cmp	ax,cx
	jc	90BB

l0800_908B:
	mov	di,[51FA]
	shl	di,01
	mov	ax,[di+2668]
	mov	di,[51FA]
	shl	di,01
	add	ax,[di+26B8]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	90B3

l0800_90AD:
	jg	90BB

l0800_90AF:
	cmp	ax,cx
	ja	90BB

l0800_90B3:
	mov	ax,[51FA]
	mov	[bp-04],ax
	jmp	90C5

l0800_90BB:
	cmp	word ptr [51FA],01
	jz	90C5

l0800_90C2:
	jmp	9023

l0800_90C5:
	cmp	word ptr [F384],0268
	jle	90D2

l0800_90CD:
	xor	ax,ax
	mov	[bp-04],ax

l0800_90D2:
	cmp	word ptr [bp-04],00
	jbe	90DF

l0800_90D8:
	mov	byte ptr [2752],01
	jmp	90E4

l0800_90DF:
	mov	byte ptr [2752],00

l0800_90E4:
	cmp	byte ptr [F388],00
	jz	90F3

l0800_90EB:
	mov	ax,[bp-04]
	mov	[bp-02],ax
	jmp	90F8

l0800_90F3:
	xor	ax,ax
	mov	[bp-02],ax

l0800_90F8:
	cmp	byte ptr [5496],00
	jz	9147

l0800_90FF:
	mov	di,5496
	push	ds
	push	di
	mov	di,8FFC
	push	cs
	push	di
	call	far 2733:1088
	jc	9147

l0800_9110:
	mov	di,5496
	push	ds
	push	di
	mov	di,8FFE
	push	cs
	push	di
	call	far 2733:1088
	ja	9147

l0800_9121:
	mov	di,2733
	push	ds
	push	di
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[bp-04],ax
	mov	ax,[bp-04]
	cmp	ax,[274A]
	jbe	9141

l0800_913C:
	xor	ax,ax
	mov	[bp-04],ax

l0800_9141:
	mov	ax,[bp-04]
	mov	[bp-02],ax

l0800_9147:
	mov	ax,[bp-02]
	leave
	ret

;; fn0800_914C: 0800:914C
fn0800_914C proc
	push	bp
	mov	bp,sp
	mov	ax,0104
	call	far 2733:0530
	sub	sp,0104
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+26BA]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_916E:
	rep movsb

l0800_9170:
	mov	ds,bx
	mov	al,[bp+FF00]
	xor	ah,ah
	shl	ax,03
	cwd
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,0140
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[bp+FEFE],ax
	mov	al,[bp+FF00]
	xor	ah,ah
	shl	ax,03
	cwd
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	add	ax,0140
	adc	dx,00
	mov	[bp+FEFC],ax
	call	far 21BB:012A
	mov	ax,[bp+FEFE]
	sub	ax,0004
	push	ax
	push	26BA
	mov	ax,[bp+FEFC]
	add	ax,0004
	push	ax
	push	0106
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:05EA
	mov	byte ptr [0F9B],01
	mov	ax,[bp+FEFE]
	sub	ax,0004
	push	ax
	push	00EE
	mov	ax,[bp+FEFC]
	sub	ax,[bp+FEFE]
	add	ax,0008
	push	ax
	call	far 2234:00FF
	mov	ax,[bp+FEFE]
	sub	ax,0004
	push	ax
	push	00EE
	push	18
	call	far 2234:00C2
	mov	byte ptr [0F9B],07
	mov	ax,[bp+FEFE]
	sub	ax,0004
	push	ax
	push	0106
	mov	ax,[bp+FEFC]
	sub	ax,[bp+FEFE]
	add	ax,0008
	push	ax
	call	far 2234:00FF
	mov	ax,[bp+FEFC]
	sub	ax,[bp+FEFE]
	add	ax,[bp+FEFE]
	add	ax,0004
	push	ax
	push	00EE
	push	18
	call	far 2234:00C2
	mov	byte ptr [0F9B],04
	mov	ax,[bp+FEFE]
	sub	ax,0003
	push	ax
	push	00EF
	mov	ax,[bp+FEFC]
	add	ax,0003
	push	ax
	push	0105
	call	far 2234:0139
	mov	byte ptr [0F9B],00
	push	word ptr [bp+FEFE]
	push	00F2
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2234:051E
	mov	word ptr [F3CE],000A
	call	far 21BB:0108
	call	far 21BB:01A8
	call	22ED
	call	far 21BB:012A
	mov	ax,[bp+FEFE]
	sub	ax,0004
	push	ax
	push	00EE
	les	di,[8C8E]
	push	es
	push	di
	call	far 2234:067C
	mov	word ptr [F3CE],0001
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_92D6:
	cmp	byte ptr [2733],59
	jbe	92D6

l0800_92DD:
	cmp	byte ptr [F388],00
	jnz	92D6

l0800_92E4:
	cmp	byte ptr [2733],00
	jnz	92D6

l0800_92EB:
	leave
	ret	0004
0800:92EF                                              01                .
0800:92F0 40                                              @              

;; fn0800_92F1: 0800:92F1
fn0800_92F1 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	xor	ax,ax
	mov	[2994],ax
	mov	word ptr [1818],0001
	cmp	byte ptr [2786],00
	jnz	9322

l0800_9312:
	mov	ax,[181A]
	cmp	ax,[bp+04]
	jz	9322

l0800_931A:
	push	word ptr [bp+04]
	push	01
	call	5B59

l0800_9322:
	mov	byte ptr [2AB8],00
	mov	ax,[2746]
	mov	[bp-02],ax
	mov	ax,0001
	cmp	ax,[bp-02]
	ja	9362

l0800_9335:
	mov	[51FA],ax
	jmp	933E

l0800_933A:
	inc	word ptr [51FA]

l0800_933E:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	935A

l0800_9353:
	mov	byte ptr [2AB8],01
	jmp	9362

l0800_935A:
	mov	ax,[51FA]
	cmp	ax,[bp-02]
	jnz	933A

l0800_9362:
	cmp	byte ptr [2AB8],00
	jz	9392

l0800_9369:
	mov	ax,[51FA]
	mov	[274E],ax
	mov	ax,[2733]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	cmp	word ptr es:[di-02],01
	jnz	9389

l0800_9381:
	mov	ax,[51FA]
	mov	[274C],ax
	jmp	9390

l0800_9389:
	mov	ax,[51FA]
	dec	ax
	mov	[274C],ax

l0800_9390:
	jmp	939E

l0800_9392:
	mov	word ptr [274E],FFFF
	mov	word ptr [274C],FFFF

l0800_939E:
	mov	word ptr [541A],0002
	call	2B97
	mov	ax,[181A]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	mov	di,109A
	push	ds
	push	di
	push	10
	call	far 2733:1B51
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,92EF
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,109A
	push	ds
	push	di
	call	far 2733:1016
	mov	di,109A
	push	ds
	push	di
	push	10
	call	far 2733:0FB1
	leave
	ret	0002

;; fn0800_93E6: 0800:93E6
fn0800_93E6 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],02
	jnz	944F

l0800_9400:
	mov	ax,[549A]
	add	ax,0003
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	cx,ax
	mov	ax,[549A]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	mov	ax,[549A]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[298A],ax
	jmp	9455

l0800_944F:
	mov	word ptr [298A],000D

l0800_9455:
	push	word ptr [298A]
	push	01
	call	395F
	mov	byte ptr [298F],01
	mov	word ptr [2760],0001
	mov	ax,[76FA]
	dec	ax
	mov	[2762],ax
	mov	byte ptr [2AB8],00
	xor	ax,ax
	mov	[51FA],ax

l0800_947A:
	cmp	byte ptr [2AB8],00
	jnz	94AA

l0800_9481:
	mov	ax,[51FA]
	cmp	ax,[2746]
	jnc	94AA

l0800_948A:
	inc	word ptr [51FA]
	mov	ax,[2733]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	94A8

l0800_94A3:
	mov	byte ptr [2AB8],01

l0800_94A8:
	jmp	947A

l0800_94AA:
	cmp	byte ptr [2AB8],00
	jnz	94B4

l0800_94B1:
	jmp	9546

l0800_94B4:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	cmp	word ptr es:[di-02],01
	jnz	94E3

l0800_94C6:
	mov	ax,[51FA]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jz	94E3

l0800_94DC:
	mov	ax,[76FA]
	dec	ax
	mov	[2762],ax

l0800_94E3:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	cmp	word ptr es:[di-02],01
	jnz	951F

l0800_94F5:
	mov	ax,[51FA]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	951F

l0800_950B:
	mov	ax,[2733]
	inc	ax
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	ax,es:[di-02]
	dec	ax
	mov	[2762],ax

l0800_951F:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	cmp	word ptr es:[di-02],01
	jbe	9544

l0800_9531:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	ax,es:[di-02]
	dec	ax
	mov	[2762],ax

l0800_9544:
	jmp	954D

l0800_9546:
	mov	ax,[76FA]
	dec	ax
	mov	[2762],ax

l0800_954D:
	mov	ax,[2762]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	mov	di,3000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	[76FC],ax
	mov	ax,[bp+04]
	mov	[2733],ax
	push	word ptr [8C8C]
	call	642A
	mov	byte ptr [2F94],01
	call	8F0A
	call	9000
	cmp	byte ptr [2752],00
	jnz	95A0

l0800_9599:
	cmp	byte ptr [2750],00
	jz	95B7

l0800_95A0:
	cmp	byte ptr [2752],00
	jz	95AF

l0800_95A7:
	mov	word ptr [F3CE],0008
	jmp	95B5

l0800_95AF:
	mov	word ptr [F3CE],0006

l0800_95B5:
	jmp	95CC

l0800_95B7:
	cmp	word ptr [F398],3C
	jg	95C6

l0800_95BE:
	mov	word ptr [F3CE],0009
	jmp	95CC

l0800_95C6:
	mov	word ptr [F3CE],0001

l0800_95CC:
	mov	ax,[F3CE]
	cmp	ax,[F3D0]
	jz	95DA

l0800_95D5:
	call	far 21BB:01A8

l0800_95DA:
	leave
	ret	0002
0800:95DE                                           55 89               U.
0800:95E0 E5 B8 10 00 9A 30 05 33 27 83 EC 10 8B 46 04 89 .....0.3'....F..
0800:95F0 46 FE C6 06 64 27 00 31 C0 89 46 FA C7 06 4E 27 F...d'.1..F...N'
0800:9600 FF FF C7 06 4C 27 FF FF A0 DE 29 30 E4 89 46 F4 ....L'....)0..F.
0800:9610 83 7E FA 00 74 03 E9 CA 00 A1 FA 76 99 8B C8 8B .~..t......v....
0800:9620 DA 8B 46 FE 31 D2 3B D3 7C 0C 7E 03 E9 B4 00 3B ..F.1.;.|.~....;
0800:9630 C1 72 03 E9 AD 00 8B 7E FE D1 E7 8B 85 C8 65 89 .r.....~......e.
0800:9640 46 F2 8B 7E FE D1 E7 8B 85 98 54 3B 46 F2 76 03 F..~......T;F.v.
0800:9650 E9 7D 00 A3 B2 2A EB 04 FF 06 B2 2A C6 06 B8 2A .}...*.....*...*
0800:9660 01 8B 46 F4 89 46 F0 B8 01 00 3B 46 F0 77 50 A3 ..F..F....;F.wP.
0800:9670 B4 2A EB 04 FF 06 B4 2A A1 B2 2A 03 06 B4 2A 48 .*.....*..*...*H
0800:9680 C4 3E 92 8C 03 F8 26 8A 45 FF 8B 3E B4 2A 3A 85 .>....&.E..>.*:.
0800:9690 DE 29 74 23 A1 B2 2A 03 06 B4 2A 48 C4 3E 92 8C .)t#..*...*H.>..
0800:96A0 03 F8 26 8A 45 FF 8B 3E B4 2A 3A 85 12 2A 74 07 ..&.E..>.*:..*t.
0800:96B0 C6 06 B8 2A 00 EB 08 A1 B4 2A 3B 46 F0 75 B5 80 ...*.....*;F.u..
0800:96C0 3E B8 2A 00 74 02 EB 08 A1 B2 2A 3B 46 F2 75 88 >.*.t.....*;F.u.
0800:96D0 80 3E B8 2A 00 74 06 8B 46 FE 89 46 FA FF 46 FE .>.*.t..F..F..F.
0800:96E0 E9 2D FF 83 7E FA 00 75 0B C7 06 20 2D FF FF E9 .-..~..u... -...
0800:96F0 03 02 EB 06 8B 46 FA A3 20 2D 31 C0 89 46 F8 31 .....F.. -1..F.1
0800:9700 C0 89 46 FE FF 46 FE 8B 46 FE D1 E0 C4 3E 58 27 ..F..F..F....>X'
0800:9710 03 F8 26 8B 45 FE 3B 06 1A 18 75 06 8B 46 FE 89 ..&.E.;...u..F..
0800:9720 46 F8 83 7E F8 00 77 09 8B 46 FE 3B 06 46 27 72 F..~..w..F.;.F'r
0800:9730 D3 83 7E F8 00 75 0F C7 06 1C 2D 01 00 A1 FA 76 ..~..u....-....v
0800:9740 A3 1E 2D E9 AF 01 8B 46 F8 A3 4E 27 8B 46 F8 89 ..-....F..N'.F..
0800:9750 46 FE 31 C0 89 46 F6 8B 46 FE D1 E0 C4 3E 58 27 F.1..F..F....>X'
0800:9760 03 F8 26 8B 45 FE 3B 06 1A 18 75 1F 8B 46 FE D1 ..&.E.;...u..F..
0800:9770 E0 C4 3E 5C 27 03 F8 26 8B 45 FE 3B 46 FA 77 06 ..>\'..&.E.;F.w.
0800:9780 8B 46 FE 89 46 F6 FF 46 FE EB CC 83 7E F6 00 75 .F..F..F....~..u
0800:9790 09 8B 46 F8 48 A3 4C 27 EB 06 8B 46 F6 A3 4C 27 ..F.H.L'...F..L'
0800:97A0 8B 46 F6 A3 1A 2D 83 7E F6 00 75 08 C7 06 1C 2D .F...-.~..u....-
0800:97B0 01 00 EB 12 8B 46 F6 D1 E0 C4 3E 5C 27 03 F8 26 .....F....>\'..&
0800:97C0 8B 45 FE A3 1C 2D 83 7E F6 00 75 15 8B 46 F8 D1 .E...-.~..u..F..
0800:97D0 E0 C4 3E 5C 27 03 F8 26 8B 45 FE 48 A3 1E 2D EB ..>\'..&.E.H..-.
0800:97E0 32 8B 46 F6 40 D1 E0 C4 3E 58 27 03 F8 26 8B 45 2.F.@...>X'..&.E
0800:97F0 FE 3B 06 1A 18 75 16 8B 46 F6 40 D1 E0 C4 3E 5C .;...u..F.@...>\
0800:9800 27 03 F8 26 8B 45 FE 48 A3 1E 2D EB 06 A1 FA 76 '..&.E.H..-....v
0800:9810 A3 1E 2D E9 DF 00 31 C0 89 46 FE C6 06 B8 2A 00 ..-...1..F....*.
0800:9820 80 3E 64 27 00 74 72 FF 46 FE 6B 46 FE 11 C4 3E .>d'.tr.F.kF...>
0800:9830 54 27 03 F8 81 C7 EF FF 06 57 BF 64 27 1E 57 9A T'.......W.d'.W.
0800:9840 88 10 33 27 75 05 C6 06 B8 2A 01 80 3E B8 2A 00 ..3'u....*..>.*.
0800:9850 75 09 8B 46 FE 3B 06 46 27 72 CC 8B 46 FE 40 D1 u..F.;.F'r..F.@.
0800:9860 E0 C4 3E 58 27 03 F8 26 8B 45 FE 3B 06 1A 18 75 ..>X'..&.E.;...u
0800:9870 20 8B 46 FE 40 3B 06 46 27 77 16 8B 46 FE 40 D1  .F.@;.F'w..F.@.
0800:9880 E0 C4 3E 5C 27 03 F8 26 8B 45 FE 48 A3 62 27 EB ..>\'..&.E.H.b'.
0800:9890 06 A1 FA 76 A3 62 27 EB 4E FF 46 FE 8B 46 FE D1 ...v.b'.N.F..F..
0800:98A0 E0 C4 3E 58 27 03 F8 26 8B 45 FE 3B 06 1A 18 75 ..>X'..&.E.;...u
0800:98B0 05 C6 06 B8 2A 01 80 3E B8 2A 00 75 09 8B 46 FE ....*..>.*.u..F.
0800:98C0 3B 06 46 27 72 D3 80 3E B8 2A 00 74 14 8B 46 FE ;.F'r..>.*.t..F.
0800:98D0 D1 E0 C4 3E 5C 27 03 F8 26 8B 45 FE A3 62 27 EB ...>\'..&.E..b'.
0800:98E0 06 A1 FA 76 A3 62 27 FF 46 F6 8B 46 F6 A3 60 27 ...v.b'.F..F..`'
0800:98F0 C6 06 64 27 00 C9 C2 02 00 55 89 E5 B8 3A 01 9A ..d'.....U...:..
0800:9900 30 05 33 27 81 EC 3A 01 E8 98 83 C6 06 CC 8C 03 0.3'..:.........
0800:9910 C6 06 C4 8C 01 E8 DB 83 C6 06 94 2F 01 83 3E 98 .........../..>.
0800:9920 F3 3C 7F 08 C7 06 CE F3 09 00 EB 06 C7 06 CE F3 .<..............
0800:9930 01 00 C6 06 92 29 00 9A 2A 01 BB 21 6A 01 C4 3E .....)..*..!j..>
0800:9940 92 8C 06 57 6A 00 68 00 FA 6A 00 6A 00 BF 96 8C ...Wj.h..j.j....
0800:9950 1E 57 E8 41 69 6A 00 68 E0 01 6A 0E 6A 00 6A 01 .W.Aij.h..j.j.j.
0800:9960 6A 00 6A 00 E8 E2 95 6A 01 C4 3E 92 8C 06 57 6A j.j....j..>...Wj
0800:9970 00 68 00 FA 6A 00 6A 00 BF 96 8C 1E 57 E8 FF 69 .h..j.j.....W..i
0800:9980 6A 03 E8 1E 75 6A 25 E8 E2 78 9A 08 01 BB 21 9A j...uj%..x....!.
0800:9990 A8 01 BB 21 31 C0 A3 20 2D A1 FC 76 48 99 9A D5 ...!1.. -..vH...
0800:99A0 15 33 27 B9 82 00 31 F6 31 FF 9A C7 15 33 27 B9 .3'...1.1....3'.
0800:99B0 81 00 31 F6 31 FF 9A AF 15 33 27 9A D9 15 33 27 ..1.1....3'...3'
0800:99C0 A3 24 2D 83 3E FC 76 01 75 06 C6 46 C7 01 EB 04 .$-.>.v.u..F....
0800:99D0 C6 46 C7 00 83 3E 28 2D 01 75 1E BF 46 2A 1E 57 .F...>(-.u..F*.W
0800:99E0 8D 7E CC 16 57 6A 32 9A B1 0F 33 27 C7 06 28 2D .~..Wj2...3'..(-
0800:99F0 01 00 C6 06 2A 2D 01 EB 16 BF 7A 2A 1E 57 8D 7E ....*-....z*.W.~
0800:9A00 CC 16 57 6A 32 9A B1 0F 33 27 31 C0 A3 28 2D C7 ..Wj2...3'1..(-.
0800:9A10 46 CA FF FF C7 46 C8 FF FF 9A 2A 01 BB 21 C6 06 F....F....*..!..
0800:9A20 9B 0F 04 6A 1C 68 EE 01 68 5C 01 68 FE 01 9A 39 ...j.h..h\.h...9
0800:9A30 01 34 22 8D BE C6 FE 16 57 6A 1C 68 EE 01 6A 2D .4".....Wj.h..j-
0800:9A40 6A 2A 8D 7E CC 16 57 6A 03 E8 E5 E2 BF DE 29 1E j*.~..Wj......).
0800:9A50 57 6A 32 9A B1 0F 33 27 80 3E DE 29 00 75 03 E9 Wj2...3'.>.).u..
0800:9A60 41 02 BF DE 29 1E 57 BF 7A 2A 1E 57 6A 32 9A B1 A...).W.z*.Wj2..
0800:9A70 0F 33 27 BF DE 29 1E 57 8D 7E CC 16 57 6A 32 9A .3'..).W.~..Wj2.
0800:9A80 B1 0F 33 27 8D BE C6 FE 16 57 BF DE 29 1E 57 9A ..3'.....W..).W.
0800:9A90 B8 05 29 14 BF 12 2A 1E 57 6A 32 9A B1 0F 33 27 ..)...*.Wj2...3'
0800:9AA0 8D BE C6 FE 16 57 BF DE 29 1E 57 9A 1C 05 29 14 .....W..).W...).
0800:9AB0 BF DE 29 1E 57 6A 32 9A B1 0F 33 27 A1 20 2D 40 ..).Wj2...3'. -@
0800:9AC0 50 E8 1A FB A1 DA 27 31 D2 9A D5 15 33 27 52 53 P.....'1....3'RS
0800:9AD0 50 A1 20 2D 40 2B 06 1C 2D 99 9A D5 15 33 27 59 P. -@+..-....3'Y
0800:9AE0 5E 5F 9A C7 15 33 27 B9 80 B4 BE C8 76 BF BE 7F ^_...3'.....v...
0800:9AF0 9A AF 15 33 27 9A D9 15 33 27 A3 E4 32 8B 46 CA ...3'...3'..2.F.
0800:9B00 3B 06 E4 32 75 0F A1 1A 2D 3B 46 C8 75 07 83 3E ;..2u...-;F.u..>
0800:9B10 20 2D FF 75 A7 83 3E 20 2D FF 75 03 E9 EC 00 A1  -.u..> -.u.....
0800:9B20 1C 2D A3 60 27 A1 1E 2D A3 62 27 A1 DA 27 31 D2 .-.`'..-.b'..'1.
0800:9B30 9A D5 15 33 27 52 53 50 A1 62 27 2B 06 60 27 31 ...3'RSP.b'+.`'1
0800:9B40 D2 9A D5 15 33 27 59 5E 5F 9A C7 15 33 27 B9 80 ....3'Y^_...3'..
0800:9B50 B4 BE C8 76 BF BE 7F 9A AF 15 33 27 9A D9 15 33 ...v......3'...3
0800:9B60 27 A3 24 2D A1 DA 27 31 D2 9A D5 15 33 27 52 53 '.$-..'1....3'RS
0800:9B70 50 A1 60 27 31 D2 8B C8 8B DA A1 20 2D 40 99 2B P.`'1...... -@.+
0800:9B80 C1 1B D3 9A D5 15 33 27 59 5E 5F 9A C7 15 33 27 ......3'Y^_...3'
0800:9B90 B9 80 B4 BE C8 76 BF BE 7F 9A AF 15 33 27 9A D9 .....v......3'..
0800:9BA0 15 33 27 A3 22 2D A1 22 2D 89 46 CA A1 1A 2D 89 .3'."-."-.F...-.
0800:9BB0 46 C8 80 3E DC 27 00 74 3F A1 22 2D 48 D1 E0 40 F..>.'.t?."-H..@
0800:9BC0 99 9A D5 15 33 27 9A D9 15 33 27 A3 8C 8C A1 24 ....3'...3'....$
0800:9BD0 2D 48 D1 E0 40 40 99 9A D5 15 33 27 9A D9 15 33 -H..@@....3'...3
0800:9BE0 27 A3 FC 76 80 7E C7 00 74 0C C7 06 8C 8C 01 00 '..v.~..t.......
0800:9BF0 C7 06 FC 76 01 00 EB 0C A1 22 2D A3 8C 8C A1 24 ...v....."-....$
0800:9C00 2D A3 FC 76 FF 36 8C 8C E8 1F C8 9A 2A 01 BB 21 -..v.6......*..!
0800:9C10 6A 03 E8 8E 72 9A 08 01 BB 21 9A A8 01 BB 21 A1 j...r....!....!.
0800:9C20 20 2D A3 EC 32 8B 46 CA A3 EE 32 8B 46 C8 A3 F0  -..2.F...2.F...
0800:9C30 32 A1 20 2D 40 50 E8 A5 F9 A1 DA 27 31 D2 9A D5 2. -@P.....'1...
0800:9C40 15 33 27 52 53 50 A1 20 2D 40 2B 06 1C 2D 99 9A .3'RSP. -@+..-..
0800:9C50 D5 15 33 27 59 5E 5F 9A C7 15 33 27 B9 80 B4 BE ..3'Y^_...3'....
0800:9C60 C8 76 BF BE 7F 9A AF 15 33 27 9A D9 15 33 27 A3 .v......3'...3'.
0800:9C70 E4 32 8B 46 CA 3B 06 E4 32 75 0F A1 1A 2D 3B 46 .2.F.;..2u...-;F
0800:9C80 C8 75 07 83 3E 20 2D FF 75 A7 83 3E 20 2D FF 74 .u..> -.u..> -.t
0800:9C90 12 A1 EC 32 A3 20 2D A1 EE 32 89 46 CA A1 F0 32 ...2. -..2.F...2
0800:9CA0 89 46 C8 83 3E 20 2D FF 74 11 83 3E 26 2D 02 74 .F..> -.t..>&-.t
0800:9CB0 0A 80 3E DE 29 00 74 03 E9 5E FD 9A 2A 01 BB 21 ..>.).t..^..*..!
0800:9CC0 C6 06 DE 29 00 6A 25 E8 FD 77 6A 03 E8 D4 71 9A ...).j%..wj...q.
0800:9CD0 08 01 BB 21 9A A8 01 BB 21 C6 06 CC 8C 00 31 C0 ...!....!.....1.
0800:9CE0 A3 28 2D C9 C3                                  .(-..          

;; fn0800_9CE5: 0800:9CE5
fn0800_9CE5 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+04]
	mov	di,ss:[di-12]
	shl	di,01
	push	word ptr [di+250E]
	mov	di,[bp+04]
	mov	di,ss:[di-12]
	shl	di,01
	push	word ptr [di+2574]
	mov	di,[bp+04]
	mov	di,ss:[di-12]
	shl	di,01
	mov	ax,[di+25DA]
	shl	ax,03
	push	ax
	push	10
	mov	al,[bp+08]
	push	ax
	mov	al,[bp+06]
	push	ax
	call	far 2234:0924
	leave
	ret	0006
0800:9D2D                                        01 09 02              ...
0800:9D30 00 0F 01 0D 01 A8 01 1B 01 20 01 21 02 00 4B 02 ......... .!..K.
0800:9D40 00 4D 02 00 47 02 00 4F 01 6D 01 4D 01 6F 01 4F .M..G..O.m.M.o.O
0800:9D50 02 00 3B 01 73 01 53 02 00 48 02 00 49 02 00 50 ..;.s.S..H..I..P
0800:9D60 02 00 51                                        ..Q            

;; fn0800_9D63: 0800:9D63
fn0800_9D63 proc
	push	bp
	mov	bp,sp
	mov	ax,0216
	call	far 2733:0530
	sub	sp,0216
	xor	ax,ax
	mov	[bp-14],ax
	mov	byte ptr [5496],00
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	mov	dx,ax
	mov	di,[8C80]
	shl	di,01
	mov	ax,[di+8702]
	add	ax,[5408]
	dec	ax
	add	ax,dx
	push	ax
	call	92F1
	les	di,[8C92]
	cmp	byte ptr es:[di],A8
	jz	9DA7

l0800_9DA4:
	jmp	9E5C

l0800_9DA7:
	call	far 21BB:012A
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	les	di,[8C92]
	mov	al,es:[di+03]
	xor	ah,ah
	mov	cx,ax
	les	di,[8C92]
	mov	al,es:[di+02]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	les	di,[8C92]
	mov	al,es:[di+01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[32E4],ax
	push	00
	push	00
	push	word ptr [32E4]
	push	01
	push	01
	push	00
	push	00
	call	2F49
	call	22ED
	call	05E2
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	call	0547
	call	C04D
	call	1CCB
	mov	word ptr [541A],0001
	call	2B97
	push	0D
	push	01
	call	395F
	call	3F93
	call	4011
	mov	byte ptr [5497],00
	mov	byte ptr [5498],00
	mov	byte ptr [32C6],01
	mov	word ptr [F3CE],21BB
	call	far 21BB:01A8
	mov	byte ptr [2F94],01
	mov	byte ptr [298F],00
	call	045A
	jmp	ACD8

l0800_9E5C:
	push	01
	call	93E6
	xor	ax,ax
	mov	[2D28],ax
	cmp	byte ptr [2A46],00
	jz	9E78

l0800_9E6D:
	mov	word ptr [2D28],0001
	mov	byte ptr [2D2A],01

l0800_9E78:
	mov	byte ptr [2A7A],00
	cmp	byte ptr [2F94],01
	jnz	9EDD

l0800_9E84:
	call	1C7B
	cmp	byte ptr [2786],00
	jz	9E98

l0800_9E8E:
	mov	byte ptr [8CC9],00
	mov	byte ptr [8CC3],00

l0800_9E98:
	cmp	byte ptr [27DC],00
	jz	9EB5

l0800_9E9F:
	mov	ax,[76FC]
	dec	ax
	mov	[32E4],ax
	cmp	word ptr [32E4],01
	jge	9EB3

l0800_9EAD:
	mov	word ptr [32E4],0001

l0800_9EB3:
	jmp	9EBB

l0800_9EB5:
	mov	ax,[2733]
	mov	[32E4],ax

l0800_9EBB:
	mov	ax,[32E4]
	cmp	ax,[8C8C]
	jg	9EC9

l0800_9EC4:
	mov	byte ptr [8CC8],00

l0800_9EC9:
	cmp	word ptr [8C8C],01
	jnz	9ED5

l0800_9ED0:
	mov	byte ptr [8CC7],00

l0800_9ED5:
	call	1CF3
	mov	byte ptr [2F94],00

l0800_9EDD:
	cmp	byte ptr [F388],00
	jnz	9EE9

l0800_9EE4:
	xor	ax,ax
	mov	[2994],ax

l0800_9EE9:
	cmp	byte ptr [2764],00
	jnz	9EF5

l0800_9EF0:
	push	00
	call	7287

l0800_9EF5:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D2D
	push	cs
	push	di
	call	far 2733:1088
	jnz	9F2C

l0800_9F06:
	cmp	word ptr [2748],00
	jbe	9F2C

l0800_9F0D:
	inc	word ptr [bp-14]
	mov	ax,[2748]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp-14]
	cwd
	cmp	dx,bx
	jg	9F27

l0800_9F21:
	jl	9F2C

l0800_9F23:
	cmp	ax,cx
	jbe	9F2C

l0800_9F27:
	mov	word ptr [bp-14],0001

l0800_9F2C:
	cmp	word ptr [27E8],29
	jz	9F41

l0800_9F33:
	cmp	byte ptr [F389],00
	jz	9F4B

l0800_9F3A:
	cmp	word ptr [F386],3C
	jge	9F4B

l0800_9F41:
	call	3D03
	push	word ptr [8C8C]
	call	642A

l0800_9F4B:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D2F
	push	cs
	push	di
	call	far 2733:1088
	jnz	9F72

l0800_9F5C:
	cmp	word ptr [2748],00
	jbe	9F72

l0800_9F63:
	dec	word ptr [bp-14]
	cmp	word ptr [bp-14],01
	jge	9F72

l0800_9F6C:
	mov	ax,[2748]
	mov	[bp-14],ax

l0800_9F72:
	cmp	word ptr [bp-14],00
	jle	9FD2

l0800_9F78:
	mov	di,[bp-14]
	shl	di,01
	mov	ax,[di+25DA]
	shl	ax,03
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	di,[bp-14]
	shl	di,01
	mov	ax,[di+250E]
	xor	dx,dx
	add	ax,cx
	adc	dx,bx
	sub	ax,0004
	sbb	dx,00
	mov	[F384],ax
	mov	di,[bp-14]
	shl	di,01
	mov	ax,[di+2574]
	add	ax,000C
	mov	[F386],ax
	mov	word ptr [F3CE],0006
	call	far 21BB:01FE

l0800_9FD2:
	cmp	byte ptr [F38E],00
	jz	9FDE

l0800_9FD9:
	xor	ax,ax
	mov	[bp-14],ax

l0800_9FDE:
	call	9000
	mov	[bp-10],ax
	cmp	word ptr [bp-10],00
	jbe	A011

l0800_9FEA:
	lea	di,[bp+FEEA]
	push	ss
	push	di
	mov	di,[bp-10]
	shl	di,01
	push	word ptr [di+26E0]
	call	6142
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,32F2
	push	ds
	push	di
	call	914C

l0800_A011:
	call	8F0A
	mov	[bp-12],ax
	cmp	byte ptr [2764],00
	jz	A034

l0800_A01E:
	mov	word ptr [bp-12],0033
	mov	di,2764
	push	ds
	push	di
	mov	di,24CE
	push	ds
	push	di
	push	40
	call	far 2733:0FB1

l0800_A034:
	cmp	word ptr [bp-12],00
	ja	A03D

l0800_A03A:
	jmp	A1A7

l0800_A03D:
	cmp	byte ptr [F388],00
	jnz	A058

l0800_A044:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D32
	push	cs
	push	di
	call	far 2733:1088
	jz	A058

l0800_A055:
	jmp	A1A7

l0800_A058:
	lea	di,[bp+FEEA]
	push	ss
	push	di
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	push	01
	push	01
	call	far 2733:0FD5
	mov	di,9D34
	push	cs
	push	di
	call	far 2733:1088
	jz	A080

l0800_A07D:
	jmp	A1A7

l0800_A080:
	call	far 21BB:012A
	lea	di,[bp+FDEA]
	push	ss
	push	di
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	push	02
	push	03
	call	far 2733:0FD5
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[32E4],ax
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	0296
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	push	00
	push	00
	push	word ptr [32E4]
	push	01
	push	01
	push	00
	push	00
	call	2F49
	push	01
	les	di,[8C92]
	push	es
	push	di
	mov	ax,[27F2]
	mov	dx,[27F4]
	add	ax,0002
	adc	dx,00
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15D9
	mov	cx,0002
	xor	bx,bx
	call	far 2733:0E82
	push	dx
	push	ax
	push	00
	push	00
	mov	di,8C96
	push	ds
	push	di
	call	037F
	call	22ED
	call	05E2
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	call	0547
	call	3D49
	call	1CCB
	call	1CF3
	push	word ptr [8C8C]
	call	642A
	call	045A
	cmp	word ptr [bp-14],00
	jle	A183

l0800_A17C:
	call	far 21BB:01FE
	jmp	A19D

l0800_A183:
	cmp	word ptr [2733],3C
	jg	A192

l0800_A18A:
	mov	word ptr [F3CE],0009
	jmp	A198

l0800_A192:
	mov	word ptr [F3CE],2733

l0800_A198:
	call	far 21BB:01A8

l0800_A19D:
	xor	ax,ax
	mov	[bp-12],ax
	xor	ax,ax
	mov	[bp-14],ax

l0800_A1A7:
	mov	byte ptr [bp-15],00
	cmp	byte ptr [F389],00
	jz	A1D0

l0800_A1B2:
	cmp	word ptr [F396],08
	jl	A1D0

l0800_A1B9:
	cmp	word ptr [F396],0268
	jg	A1D0

l0800_A1C1:
	cmp	word ptr [F398],3C
	jle	A1D0

l0800_A1C8:
	cmp	word ptr [2733],01AF
	jl	A1E1

l0800_A1D0:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D36
	push	cs
	push	di
	call	far 2733:1088
	jnz	A221

l0800_A1E1:
	xor	ax,ax
	mov	[bp-14],ax
	mov	word ptr [bp-12],0001
	mov	ax,[1818]
	dec	ax
	mov	[1818],ax
	imul	di,[2733],11
	add	di,109B
	push	ds
	push	di
	mov	di,181C
	push	ds
	push	di
	push	40
	call	far 2733:0FB1
	mov	byte ptr [bp-15],01
	mov	di,[1818]
	shl	di,01
	mov	ax,[di+2733]
	mov	[8C8C],ax

l0800_A21A:
	cmp	byte ptr [F389],00
	jnz	A21A

l0800_A221:
	cmp	word ptr [F398],3C
	jg	A26F

l0800_A228:
	cmp	byte ptr [F388],00
	jz	A26F

l0800_A22F:
	xor	ax,ax
	mov	[bp-14],ax
	mov	word ptr [bp-12],0001
	mov	ax,[1818]
	dec	ax
	mov	[1818],ax
	imul	di,[1818],11
	add	di,109B
	push	ds
	push	di
	mov	di,181C
	push	ds
	push	di
	push	40
	call	far 2733:0FB1
	mov	byte ptr [bp-15],01
	mov	di,[1818]
	shl	di,01
	mov	ax,[di+174E]
	mov	[8C8C],ax

l0800_A268:
	cmp	byte ptr [F388],00
	jnz	A268

l0800_A26F:
	cmp	byte ptr [bp-15],00
	jz	A28D

l0800_A275:
	cmp	word ptr [1818],00
	jnz	A28D

l0800_A27C:
	mov	di,9D38
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A28D:
	cmp	byte ptr [bp-15],00
	jz	A2E4

l0800_A293:
	cmp	word ptr [1818],01
	jnz	A2E4

l0800_A29A:
	lea	di,[bp+FEEA]
	push	ss
	push	di
	imul	di,[1818],11
	add	di,109B
	push	ds
	push	di
	push	02
	imul	di,[1818],11
	mov	al,[di+109B]
	xor	ah,ah
	dec	ax
	push	ax
	call	far 2733:0FD5
	mov	di,8C96
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[32DC],ax
	push	word ptr [32DC]
	call	92F1
	mov	di,[1818]
	shl	di,01
	push	word ptr [di+174E]
	call	93E6
	mov	byte ptr [bp-15],00

l0800_A2E4:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D32
	push	cs
	push	di
	call	far 2733:1088
	jnz	A2FB

l0800_A2F5:
	mov	ax,[bp-14]
	mov	[bp-12],ax

l0800_A2FB:
	cmp	word ptr [bp-12],00
	ja	A304

l0800_A301:
	jmp	A757

l0800_A304:
	cmp	byte ptr [F388],00
	jnz	A32C

l0800_A30B:
	cmp	byte ptr [bp-15],00
	jnz	A32C

l0800_A311:
	cmp	byte ptr [2764],00
	jnz	A32C

l0800_A318:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D32
	push	cs
	push	di
	call	far 2733:1088
	jz	A32C

l0800_A329:
	jmp	A757

l0800_A32C:
	mov	byte ptr [2764],00
	cmp	byte ptr [bp-15],00
	jnz	A388

l0800_A337:
	cmp	word ptr [bp-12],33
	jz	A388

l0800_A33D:
	call	far 21BB:012A
	mov	di,[bp-12]
	cmp	byte ptr [di+2711],00
	jz	A36E

l0800_A34C:
	push	87
	push	FF
	push	bp
	call	9CE5
	push	A7
	push	A0
	push	bp
	call	9CE5
	push	B0
	push	C0
	push	bp
	call	9CE5
	push	88
	push	96
	push	bp
	call	9CE5
	jmp	A37E

l0800_A36E:
	push	8F
	push	8C
	push	bp
	call	9CE5
	push	13
	push	FF
	push	bp
	call	9CE5

l0800_A37E:
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_A388:
	cmp	byte ptr [F388],00
	jnz	A388

l0800_A38F:
	xor	ax,ax
	mov	[51FA],ax
	mov	byte ptr [2AB8],00
	lea	di,[bp+FEEA]
	push	ss
	push	di
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	push	01
	push	01
	call	far 2733:0FD5
	mov	di,9D3A
	push	cs
	push	di
	call	far 2733:1088
	jnz	A3F1

l0800_A3BE:
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	lea	di,[bp+FDEA]
	push	ss
	push	di
	mov	di,32F2
	push	ds
	push	di
	push	02
	mov	al,[32F2]
	xor	ah,ah
	dec	ax
	push	ax
	call	far 2733:0FD5
	call	914C

l0800_A3F1:
	mov	ax,[51FA]
	inc	ax
	mov	[51FA],ax
	imul	ax,[51FA],11
	les	di,[2754]
	add	di,ax
	add	di,FFEF
	push	es
	push	di
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	call	far 2733:1088
	jnz	A41F

l0800_A41A:
	mov	byte ptr [2733],01

l0800_A41F:
	cmp	byte ptr [2AB8],00
	jnz	A42F

l0800_A426:
	mov	ax,[51FA]
	cmp	ax,[2746]
	jc	A3F1

l0800_A42F:
	cmp	byte ptr [2AB8],00
	jz	A43C

l0800_A436:
	mov	ax,[51FA]
	mov	[274C],ax

l0800_A43C:
	cmp	byte ptr [bp-15],00
	jz	A445

l0800_A442:
	jmp	A4ED

l0800_A445:
	cmp	word ptr [bp-12],33
	jnz	A44E

l0800_A44B:
	jmp	A4ED

l0800_A44E:
	call	far 21BB:012A
	mov	di,[bp-12]
	cmp	byte ptr [di+2711],00
	jz	A47F

l0800_A45D:
	push	FF
	push	87
	push	bp
	call	9CE5
	push	A0
	push	A7
	push	bp
	call	9CE5
	push	C0
	push	B0
	push	bp
	call	9CE5
	push	96
	push	88
	push	bp
	call	9CE5
	jmp	A48F

l0800_A47F:
	push	8C
	push	8F
	push	bp
	call	9CE5
	push	FF
	push	13
	push	bp
	call	9CE5

l0800_A48F:
	mov	di,[bp-12]
	shl	di,01
	push	word ptr [di+250E]
	mov	di,[bp-12]
	shl	di,01
	push	word ptr [di+2574]
	mov	di,[bp-12]
	shl	di,01
	mov	ax,[di+25DA]
	shl	ax,03
	push	ax
	push	10
	push	8C
	push	8F
	call	far 2234:0924
	mov	di,[bp-12]
	shl	di,01
	push	word ptr [di+250E]
	mov	di,[bp-12]
	shl	di,01
	push	word ptr [di+2574]
	mov	di,[bp-12]
	shl	di,01
	mov	ax,[di+25DA]
	shl	ax,03
	push	ax
	push	10
	push	FF
	push	13
	call	far 2234:0924
	call	far 21BB:0108
	call	far 21BB:01A8

l0800_A4ED:
	cmp	byte ptr [2AB8],00
	jnz	A4F7

l0800_A4F4:
	jmp	A757

l0800_A4F7:
	cmp	byte ptr [bp-15],00
	jnz	A535

l0800_A4FD:
	mov	di,109A
	push	ds
	push	di
	imul	di,[1818],11
	add	di,109B
	push	ds
	push	di
	push	10
	call	far 2733:0FB1
	mov	ax,[2733]
	mov	di,[1818]
	shl	di,01
	mov	[di+174E],ax
	mov	ax,[1818]
	inc	ax
	mov	[2733],ax
	cmp	word ptr [1818],64
	jbe	A535

l0800_A52F:
	mov	word ptr [1818],0064

l0800_A535:
	imul	di,[bp-12],41
	add	di,17DB
	push	ds
	push	di
	mov	di,109A
	push	ds
	push	di
	push	10
	call	far 2733:0FB1
	mov	ax,[51FA]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	A563

l0800_A560:
	jmp	A5F3

l0800_A563:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	push	word ptr es:[di-02]
	push	01
	call	5B59
	mov	byte ptr [2AB9],00
	mov	ax,[2733]
	mov	[bp-18],ax
	mov	ax,0001
	cmp	ax,[bp-18]
	ja	A5B7

l0800_A58A:
	mov	[5200],ax
	jmp	A593

l0800_A58F:
	inc	word ptr [5200]

l0800_A593:
	mov	ax,[5200]
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	A5AF

l0800_A5A8:
	mov	byte ptr [2AB9],01
	jmp	A5B7

l0800_A5AF:
	mov	ax,[5200]
	cmp	ax,[bp-18]
	jnz	A58F

l0800_A5B7:
	cmp	byte ptr [2AB9],00
	jz	A5E7

l0800_A5BE:
	mov	ax,[5200]
	mov	[274E],ax
	mov	ax,[5200]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	cmp	word ptr es:[di-02],01
	jnz	A5DE

l0800_A5D6:
	mov	ax,[5200]
	mov	[274C],ax
	jmp	A5E5

l0800_A5DE:
	mov	ax,[5200]
	dec	ax
	mov	[274C],ax

l0800_A5E5:
	jmp	A5F3

l0800_A5E7:
	mov	word ptr [274E],FFFF
	mov	word ptr [274C],FFFF

l0800_A5F3:
	mov	ax,[51FA]
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	ax,es:[di-02]
	mov	[2760],ax
	mov	ax,[51FA]
	inc	ax
	shl	ax,01
	les	di,[2758]
	add	di,ax
	mov	ax,es:[di-02]
	cmp	ax,[181A]
	jnz	A66D

l0800_A61B:
	mov	ax,[51FA]
	inc	ax
	cmp	ax,[2746]
	ja	A66D

l0800_A625:
	mov	ax,[51FA]
	inc	ax
	shl	ax,01
	les	di,[275C]
	add	di,ax
	mov	ax,es:[di-02]
	dec	ax
	mov	[2762],ax
	mov	ax,[2762]
	inc	ax
	sub	ax,[2760]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	mov	di,3000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	[76FC],ax
	jmp	A6A4

l0800_A66D:
	mov	ax,[76FA]
	mov	[2762],ax
	mov	ax,[2762]
	sub	ax,[2760]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0085
	xor	si,si
	mov	di,3000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	[76FC],ax

l0800_A6A4:
	cmp	byte ptr [bp-15],00
	jnz	A6B0

l0800_A6AA:
	mov	word ptr [8C8C],0001

l0800_A6B0:
	call	2B97
	mov	byte ptr [8CC7],01
	mov	byte ptr [8CC8],01
	mov	ax,[76FC]
	cmp	ax,[8C8C]
	jnz	A6CB

l0800_A6C6:
	mov	byte ptr [8CC8],00

l0800_A6CB:
	cmp	word ptr [2733],01
	jnz	A6D7

l0800_A6D2:
	mov	byte ptr [8CC7],00

l0800_A6D7:
	call	1CF3
	mov	ax,[549A]
	les	di,[8C92]
	add	di,ax
	cmp	byte ptr es:[di-01],02
	jnz	A739

l0800_A6EA:
	mov	ax,[2733]
	add	ax,0003
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	mov	cx,ax
	mov	ax,[549A]
	inc	ax
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,0A
	mov	dx,ax
	mov	ax,[549A]
	inc	ax
	les	di,[8C92]
	add	di,ax
	mov	al,es:[di-01]
	xor	ah,ah
	sub	ax,0030
	imul	ax,ax,64
	add	ax,dx
	add	ax,cx
	sub	ax,0030
	mov	[298A],ax
	jmp	A73F

l0800_A739:
	mov	word ptr [298A],000D

l0800_A73F:
	push	word ptr [8C8C]
	call	642A
	call	8F0A
	mov	byte ptr [5496],00
	xor	ax,ax
	mov	[bp-14],ax
	mov	byte ptr [bp-15],00

l0800_A757:
	cmp	word ptr [2994],01
	jnz	A77A

l0800_A75E:
	call	10C8
	cmp	ax,001E
	ja	A76D

l0800_A766:
	cmp	byte ptr [F388],00
	jnz	A773

l0800_A76D:
	mov	word ptr [2994],0002

l0800_A773:
	cmp	word ptr [2994],02
	jnz	A75E

l0800_A77A:
	cmp	word ptr [2994],00
	jnz	A78A

l0800_A781:
	mov	word ptr [2994],0001
	call	10A3

l0800_A78A:
	push	01
	call	1EAD
	mov	[2D2E],ax
	cmp	word ptr [2D2E],01
	jnz	A79E

l0800_A799:
	push	00
	call	211C

l0800_A79E:
	cmp	word ptr [2D2E],05
	jnz	A7B6

l0800_A7A5:
	mov	di,9D38
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A7B6:
	cmp	word ptr [2D2E],06
	jnz	A7CE

l0800_A7BD:
	mov	di,9D3C
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A7CE:
	cmp	word ptr [2D2E],07
	jnz	A7E6

l0800_A7D5:
	mov	di,9D3F
	push	cs
	push	di
	mov	di,2733
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A7E6:
	cmp	word ptr [2D2E],1A
	jnz	A7FE

l0800_A7ED:
	mov	di,9D42
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A7FE:
	cmp	word ptr [2D2E],1B
	jnz	A816

l0800_A805:
	mov	di,9D45
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_A816:
	cmp	word ptr [2D2E],02
	jz	A83F

l0800_A81D:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D48
	push	cs
	push	di
	call	far 2733:1088
	jz	A83F

l0800_A82E:
	mov	di,5496
	push	ds
	push	di
	mov	di,9D4A
	push	cs
	push	di
	call	far 2733:1088
	jnz	A876

l0800_A83F:
	cmp	byte ptr [2786],00
	jnz	A876

l0800_A846:
	lea	di,[bp+2733]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,9D4A
	push	cs
	push	di
	call	far 2733:1088
	jnz	A867

l0800_A862:
	push	02
	call	1E4E

l0800_A867:
	mov	word ptr [541A],0003
	call	79A6
	mov	word ptr [541A],0002

l0800_A876:
	mov	di,5496

;; fn0800_A877: 0800:A877
fn0800_A877 proc
	xchg	ax,si
	push	sp
	push	ds
	push	di
	mov	di,9D4C
	push	cs
	push	di
	call	far 2733:1088
	jz	A89F

;; fn0800_A887: 0800:A887
fn0800_A887 proc
	mov	di,5496
	push	ds
	push	di
	mov	di,9D4E
	push	cs
	push	di
	call	far 2733:1088
	jz	A89F

l0800_A898:
	cmp	word ptr [2D2E],04
	jnz	A8C3

;; fn0800_A89F: 0800:A89F
fn0800_A89F proc
	lea	di,[bp+FEEA]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,9D4E
	push	cs
	push	di
	call	far 2733:1088
	jnz	A8C0

l0800_A8BB:
	push	04
	call	1E4E

l0800_A8C0:
	call	8567

;; fn0800_A8C3: 0800:A8C3
fn0800_A8C3 proc
	cmp	word ptr [2D2E],03
	jz	A8D8
	cmp	word ptr [2733],01
	jz	A8D8
	cmp	word ptr [27E8],41
	jnz	A8E6
	push	03
	call	1E4E
	call	98F9
	mov	word ptr [2733],0002
	mov	di,2733
	push	ds
	push	di
	mov	di,9D50
	push	cs
	push	di
	call	far 2733:1088
	jnz	A8FC
	push	01
	call	211C
	mov	di,5496
	push	ds
	push	di
	mov	di,2733
	push	cs
	push	di
	call	far 2733:1088
	jz	A925
	mov	di,5496
	push	ds
	push	di
	mov	di,9D55
	push	cs
	push	di
	call	far 2733:1088
	jz	A925
	cmp	word ptr [2D2E],08
	jnz	A93E
	cmp	byte ptr [2786],00
	jnz	A93E
	push	00
	call	4EB5
	xor	ax,ax
	mov	[bp-14],ax
	mov	byte ptr [8CD1],00
	call	1CF3
	cmp	word ptr [F396],08
	jge	A968
	cmp	word ptr [2733],3C
	jle	A968
	cmp	word ptr [F398],01AF
	jge	A968
	mov	word ptr [F3CE],0002
	mov	ax,[F3CE]
	cmp	ax,[F3D0]
	jz	A968
	call	far 21BB:01A8
	cmp	word ptr [F396],0268
	jle	A993
	cmp	word ptr [2733],3C
	jle	A993
	cmp	word ptr [F398],01AF
	jge	A993
	mov	word ptr [F3CE],2733
	mov	ax,[F3CE]
	cmp	ax,[F3D0]
	jz	A993
	call	far 21BB:01A8
	cmp	word ptr [F396],08
	jl	A9A2
	cmp	word ptr [F396],0268
	jle	A9B1
	cmp	word ptr [F398],3C
	jl	A9B1
	cmp	word ptr [F398],01AE
	jle	A9F9
	cmp	byte ptr [2752],00
	jnz	A9BF
	cmp	byte ptr [2750],00
	jz	A9D6
	cmp	byte ptr [21BB],00
	jz	A9CE
	mov	word ptr [F3CE],0008
	jmp	A9D4
	mov	word ptr [F3CE],0006
	jmp	A9EB
	cmp	word ptr [F398],3C
	jg	A9E5
	mov	word ptr [F3CE],0009
	jmp	A9EB
	mov	word ptr [F3CE],0001
	mov	ax,[F3CE]
	cmp	ax,[F3D0]
	jz	A9F9
	call	far 21BB:01A8
	cmp	byte ptr [F388],00
	jz	AA27
	cmp	word ptr [F396],08
	jge	AA27
	cmp	word ptr [F398],3C
	jle	AA27
	cmp	word ptr [F398],01AF
	jge	AA27
	mov	di,9D3C
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	cmp	byte ptr [F388],00
	jz	AA56
	cmp	word ptr [F396],0268
	jle	AA56
	cmp	word ptr [F398],3C
	jle	AA56
	cmp	word ptr [F398],01AF
	jge	AA56
	mov	di,9D3F
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	cmp	byte ptr [F389],00
	jz	AA84
	cmp	word ptr [2733],08
	jge	AA84
	cmp	word ptr [F398],3C
	jle	AA84
	cmp	word ptr [F398],01AF
	jge	AA84
	mov	di,9D42
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	cmp	byte ptr [F389],00
	jz	AAB3
	cmp	word ptr [F396],0268
	jle	AAB3
	cmp	word ptr [F398],3C
	jle	AAB3
	cmp	word ptr [F398],01AF
	jge	AAB3
	mov	di,9D45
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	mov	di,5496
	push	ds
	push	di
	mov	di,9D3C
	push	cs
	push	di
	call	far 2733:1088
	jz	AAE6
	mov	di,5496
	push	ds
	push	di
	mov	di,9D57
	push	cs
	push	di
	call	far 2733:1088
	jz	AAE6
	mov	di,5496
	push	ds
	push	di
	mov	di,2733
	push	cs
	push	di
	call	far 2733:1088
	jnz	AB3B
	mov	ax,[8C8C]
	mov	[32EC],ax
	xor	ax,ax
	mov	[bp-14],ax
	cmp	byte ptr [27DC],00
	jz	AB12
	cmp	byte ptr [8FF5],00
	jz	AB09
	mov	ax,[8C8C]
	dec	ax
	dec	ax
	mov	[8C8C],ax
	jmp	AB10
	mov	ax,[8C8C]
	dec	ax
	mov	[8C8C],ax
	jmp	AB19
	mov	ax,[8C8C]
	dec	ax
	mov	[8C8C],ax
	cmp	word ptr [8C8C],01
	jge	AB26
	mov	word ptr [8C8C],0001
	mov	ax,[32EC]
	cmp	ax,[8C8C]
	jz	AB3B
	push	word ptr [8C8C]
	call	642A
	mov	byte ptr [2F94],01
	mov	di,5496
	push	ds
	push	di
	mov	di,9D3F
	push	cs
	push	di
	call	far 2733:1088
	jz	AB71
	mov	di,5496
	push	ds
	push	di
	mov	di,9D5D
	push	cs
	push	di
	call	far 2733:1088
	jz	AB71
	mov	di,5496
	push	ds
	push	di
	mov	di,9D60
	push	cs
	push	di
	call	far 2733:1088
	jz	AB71
	jmp	ABFB
	mov	ax,[8C8C]
	mov	[32EC],ax
	xor	ax,ax
	mov	[bp-14],ax
	cmp	byte ptr [27DC],00
	jz	ABCA
	mov	ax,[76FC]
	dec	ax
	mov	[32E4],ax
	cmp	word ptr [32E4],01
	jge	AB97
	mov	word ptr [32E4],0001
	cmp	byte ptr [8FF5],00
	jz	ABB2
	mov	ax,[8C8C]
	inc	ax
	cmp	ax,[32E4]
	jg	ABB0
	mov	ax,[21BB]
	inc	ax
	inc	ax
	mov	[8C8C],ax
	jmp	ABC8
	mov	ax,[8C8C]
	inc	ax
	mov	[8C8C],ax
	mov	ax,[8C8C]
	cmp	ax,[32E4]
	jle	ABC8
	mov	ax,[32E4]
	mov	[8C8C],ax
	jmp	ABE6
	mov	ax,[8C8C]
	inc	ax
	mov	[8C8C],ax
	mov	ax,[76FC]
	mov	[32E4],ax
	mov	ax,[8C8C]
	cmp	ax,[32E4]
	jle	ABE6
	mov	ax,[32E4]
	mov	[8C8C],ax
	mov	ax,[32EC]
	cmp	ax,[2234]
	jz	ABFB
	push	word ptr [8C8C]
	call	642A
	mov	byte ptr [2F94],01
	mov	di,5496
	push	ds
	push	di
	mov	di,9D42
	push	cs
	push	di
	call	far 2733:1088
	jnz	AC28
	xor	ax,ax
	mov	[bp-14],ax
	cmp	word ptr [8C8C],01
	jz	AC28
	mov	word ptr [8C8C],0001
	push	01
	call	642A
	mov	byte ptr [2F94],01
	mov	di,5496
	push	ds
	push	di
	mov	di,9D45
	push	cs
	push	di
	call	far 2733:1088
	jnz	AC7C
	xor	ax,ax
	mov	[bp-14],ax
	cmp	byte ptr [27DC],00
	jz	AC5B
	mov	ax,[76FC]
	dec	ax
	mov	[32E4],ax
	cmp	word ptr [32E4],01
	jge	AC59
	mov	word ptr [32E4],0001
	jmp	AC61
	mov	ax,[76FC]
	mov	[32E4],ax
	mov	ax,[8C8C]
	cmp	ax,[32E4]
	jz	AC7C
	mov	ax,[2733]
	mov	[8C8C],ax
	push	word ptr [32E4]
	call	D3AA
	mov	byte ptr [2F94],01
	mov	di,5496
	push	ds
	push	di
	mov	di,2733
	push	cs
	push	di
	call	far 2733:1088
	jz	AC90
	jmp	9E7D
	mov	word ptr [541A],0001
	call	2B97
	cmp	byte ptr [2786],00
	jnz	ACAD
	push	0D
	push	01
	call	395F
	call	3F93
	call	4011
	mov	byte ptr [5497],00
	mov	byte ptr [5498],00
	mov	byte ptr [32C6],01
	mov	word ptr [F3CE],2733
	call	far 21BB:01A8
	mov	byte ptr [298E],01
	cmp	byte ptr [F389],00
	jnz	ACCC
	mov	byte ptr [2F94],01

l0800_ACD8:
	leave
	ret

;; fn0800_ACDA: 0800:ACDA
fn0800_ACDA proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	byte ptr [76FE],00
	jnz	AD09

l0800_ACEB:
	push	18
	mov	ax,[32C0]
	sub	ax,0015
	push	ax
	mov	ax,[28D6]
	shl	ax,03
	add	ax,001C
	push	ax
	push	12
	push	12
	push	0A
	push	01
	call	47B2

l0800_AD09:
	cmp	byte ptr [76FE],00
	jz	AD35

l0800_AD10:
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	6C
	mov	ax,[2234]
	shl	ax,03
	add	ax,000E
	push	ax
	push	12
	push	12
	push	0A
	push	02
	call	47B2

l0800_AD35:
	leave
	ret
0800:AD37                      39 4E 69 6E 63 73 20 65 6C        9Nincs el
0800:AD40 82 67 20 4B 6F 6E 76 65 6E 63 69 6F 6E A0 6C 69 .g Konvencion.li
0800:AD50 73 20 6D 65 6D A2 72 69 61 20 61 20 70 72 6F 67 s mem.ria a prog
0800:AD60 72 61 6D 20 66 75 74 74 61 74 A0 73 A0 68 6F 7A ram futtat.s.hoz
0800:AD70 2E                                              .              

;; fn0800_AD71: 0800:AD71
fn0800_AD71 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	call	far 2733:02E7
	cmp	dx,01
	jl	AD8C

l0800_AD85:
	jg	ADAE

l0800_AD87:
	cmp	ax,FBD0
	jnc	ADAE

l0800_AD8C:
	mov	di,F600
	push	ds
	push	di
	mov	di,AD37
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l0800_ADAE:
	push	E6
	call	far 2733:028A
	mov	[8C92],ax
	mov	[8C94],dx
	push	8CE0
	call	far 2733:028A
	mov	[8C8E],ax
	mov	[8C90],dx
	leave
	ret
0800:ADCD                                        14 4C 65              .Le
0800:ADD0 6D 65 7A 68 69 62 61 20 74 94 72 74 82 6E 74 20 mezhiba t.rt.nt 
0800:ADE0 61 20 12 20 6B 69 70 61 6B 6F 6C A0 73 61 20 73 a . kipakol.sa s
0800:ADF0 6F 72 A0 6E 2E 13 41 20 6C 65 6D 65 7A 20 A1 72 or.n..A lemez .r
0800:AE00 A0 73 76 82 64 65 74 74 21 27 53 7A 65 6B 74 6F .sv.dett!'Szekto
0800:AE10 72 68 69 62 61 20 6D 69 61 74 74 20 61 20 6D 96 rhiba miatt a m.
0800:AE20 76 65 6C 65 74 20 73 69 6B 65 72 74 65 6C 65 6E velet sikertelen
0800:AE30 2E 1E A1 72 A0 73 69 20 68 69 62 61 20 28 65 6C ...r.si hiba (el
0800:AE40 66 6F 67 79 6F 74 74 20 61 20 68 65 6C 79 3F 29 fogyott a hely?)
0800:AE50 0E 41 20 68 69 62 61 20 6B A2 64 6A 61 3A 20    .A hiba k.dja: 

;; fn0800_AE5F: 0800:AE5F
fn0800_AE5F proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_AE81:
	rep movsb

l0800_AE83:
	mov	ds,bx
	cmp	byte ptr [bp+08],00
	jz	AEA5

l0800_AE8B:
	mov	di,5206
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0CA0

l0800_AEA5:
	mov	di,F600
	push	ds
	push	di
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,ADCD
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2733:1016
	mov	di,ADE2
	push	cs
	push	di
	call	far 2733:1016
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	ax,[8C96]
	cmp	ax,0096
	jnz	AF14

l0800_AEF7:
	mov	di,F600
	push	ds
	push	di
	mov	di,ADF5
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	jmp	AF81

l0800_AF14:
	cmp	ax,009E
	jnz	AF36

l0800_AF19:
	mov	di,F600
	push	ds
	push	di
	mov	di,AE09
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	jmp	AF81

l0800_AF36:
	cmp	ax,00A0
	jnz	AF58

l0800_AF3B:
	mov	di,F600
	push	ds
	push	di
	mov	di,AE31
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	jmp	AF81

l0800_AF58:
	mov	di,F600
	push	ds
	push	di
	mov	di,AE50
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	mov	ax,[8C96]
	xor	dx,dx
	push	dx
	push	ax
	push	00
	call	far 2733:0A63
	call	far 2733:0840
	call	far 2733:04F4

l0800_AF81:
	call	01CE
	xor	ax,ax
	call	far 2733:0116
	leave
	ret	0006

;; fn0800_AF8F: 0800:AF8F
fn0800_AF8F proc
	push	bp
	mov	bp,sp
	mov	ax,0106
	call	far 2733:0530
	sub	sp,0106
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+2733]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l0800_AFB1:
	rep movsb

l0800_AFB3:
	mov	ds,bx
	mov	di,5206
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	0080
	call	far 2733:0B1D
	call	far 2733:04ED
	or	ax,ax
	jg	AFDE

l0800_AFDB:
	jmp	B19B

l0800_AFDE:
	mov	ax,[bp+08]
	inc	ax
	mov	di,ax
	shl	di,02
	mov	ax,[di+2F98]
	mov	dx,[di+2733]
	mov	di,[bp+08]
	shl	di,02
	sub	ax,[di+2F98]
	sbb	dx,[di+2F9A]
	mov	[29A2],ax
	mov	[29A4],dx
	mov	ax,[29A2]
	mov	dx,[2733]
	mov	[bp+FEFC],ax
	mov	[bp+FEFE],dx
	mov	di,5206
	push	ds
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	mov	di,5206
	push	ds
	push	di
	push	01
	call	far 2733:0B1D
	call	far 2733:04F4
	call	far 2733:04ED
	mov	[8C96],ax
	cmp	word ptr [8C96],00
	jbe	B04D

l0800_B042:
	push	00
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	AE5F

l0800_B04D:
	mov	di,5286
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	far 2733:0AE2
	mov	di,5286
	push	ds
	push	di
	push	01
	call	far 2733:0B26
	call	far 2733:04ED
	mov	[8C96],ax
	cmp	word ptr [8C96],00
	jbe	B08D

l0800_B078:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	push	00
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	AE5F

l0800_B08D:
	mov	di,5206
	push	ds
	push	di
	mov	ax,[32BC]
	mov	dx,[2733]
	mov	di,[bp+08]
	shl	di,02
	add	ax,[di+2F98]
	adc	dx,[di+2F9A]
	add	ax,[27DE]
	adc	dx,[27E0]
	push	dx
	push	ax
	call	far 2733:0C70
	call	far 2733:04F4

l0800_B0BB:
	cmp	word ptr [bp+FEFE],00
	jg	B0CC

l0800_B0C2:
	jl	B0EA

l0800_B0C4:
	cmp	word ptr [bp+FEFC],FA00
	jbe	B0EA

l0800_B0CC:
	mov	word ptr [bp+FEFA],FA00
	mov	ax,[bp+FEFC]
	mov	dx,[bp+FEFE]
	sub	ax,FA00
	sbb	dx,00
	mov	[bp+FEFC],ax
	mov	[bp+FEFE],dx
	jmp	B0FC

l0800_B0EA:
	mov	ax,[bp+FEFC]
	mov	[bp+FEFA],ax
	xor	ax,ax
	mov	[bp+FEFC],ax
	mov	[bp+FEFE],ax

l0800_B0FC:
	mov	di,2733
	push	ds
	push	di
	les	di,[8C92]
	push	es
	push	di
	push	word ptr [bp+FEFA]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C08
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	les	di,[2733]
	push	es
	push	di
	push	word ptr [bp+FEFA]
	xor	ax,ax
	push	ax
	push	ax
	call	far 2733:0C0F
	call	far 2733:04F4
	call	far 2733:04ED
	mov	[8C96],ax
	cmp	word ptr [8C96],00
	jbe	B16E

l0800_B145:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	push	01
	lea	di,[bp+FF00]
	push	ss
	push	di
	call	AE5F

l0800_B16E:
	mov	ax,[bp+FEFC]
	or	ax,[bp+FEFE]
	jz	B17B

l0800_B178:
	jmp	B0BB

l0800_B17B:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	mov	di,5286
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4
	jmp	B1AA

l0800_B19B:
	mov	di,5206
	push	ds
	push	di
	call	far 2733:0B9E
	call	far 2733:04F4

l0800_B1AA:
	leave
	ret	0006
0800:B1AE                                           16 45               .E
0800:B1B0 78 74 72 61 63 74 69 6E 67 20 6D 6F 64 75 6C 65 xtracting module
0800:B1C0 73 2E 2E 2E 20 05 31 2E 73 33 6D 05 32 2E 73 33 s... .1.s3m.2.s3
0800:B1D0 6D 05 33 2E 73 33 6D 02 4F 4B 11 4C 6F 61 64 69 m.3.s3m.OK.Loadi
0800:B1E0 6E 67 20 4D 6F 64 75 6C 65 2E 2E 2E 03 20 4F 4B ng Module.... OK

;; fn0800_B1F0: 0800:B1F0
fn0800_B1F0 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	cmp	word ptr [8FEA],04
	jnz	B209

l0800_B206:
	jmp	B399

l0800_B209:
	cmp	byte ptr [2786],00
	jz	B213

l0800_B210:
	jmp	B399

l0800_B213:
	mov	di,F600
	push	ds
	push	di
	mov	di,B1AE
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	cmp	word ptr [2F92],01
	jbe	B25E

l0800_B235:
	push	19
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9554
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,2882
	push	ds
	push	di
	call	far 2733:1016
	mov	di,B1C5
	push	cs
	push	di
	call	far 2733:1016
	call	AF8F

l0800_B25E:
	cmp	word ptr [2F92],02
	jbe	B28E

l0800_B265:
	push	1A
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9554
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,2882
	push	ds
	push	di
	call	far 2733:1016
	mov	di,B1CB
	push	cs
	push	di
	call	far 2733:1016
	call	AF8F

l0800_B28E:
	cmp	word ptr [2F92],03
	jbe	B2BE

l0800_B295:
	push	1B
	lea	di,[bp+2733]
	push	ss
	push	di
	mov	di,9554
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,2882
	push	ds
	push	di
	call	far 2733:1016
	mov	di,B1D1
	push	cs
	push	di
	call	far 2733:1016
	call	AF8F

l0800_B2BE:
	mov	di,F600
	push	ds
	push	di
	mov	di,B1D7
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	di,F600
	push	ds
	push	di
	mov	di,B1DA
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	call	far 1858:03AF
	mov	ax,[8FEA]
	mov	[E3FC],ax
	mov	ax,[8FEC]
	mov	[E3FE],ax
	mov	al,[8FE5]
	xor	ah,ah
	mov	[E400],ax
	mov	al,[8FE6]
	xor	ah,ah
	mov	[E402],ax
	mov	ax,[8FEE]
	mov	[E406],ax
	mov	ax,[E408]
	mov	[8FE8],ax
	call	far 1858:0126
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,2882
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,B1C5
	push	cs
	push	di
	call	far 2733:1016
	mov	di,32F2
	push	ds
	push	di
	push	00FF
	call	far 2733:0FB1
	mov	di,8EE2
	push	ds
	push	di
	mov	di,32F2
	push	ds
	push	di
	call	6D5B
	mov	di,8EE2
	push	ds
	push	di
	mov	di,0BC8
	mov	ax,1936
	push	ax
	push	di
	push	00
	push	00
	call	far 1858:0458
	mov	[8ED4],ax
	mov	[8ED6],dx
	push	07
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	mov	di,B1EC
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4

l0800_B399:
	leave
	ret
0800:B39B                                  02 2F 56 14 48            ./V.H
0800:B3A0 69 A0 6E 79 7A 69 6B 20 61 20 66 69 6C 65 20 6E i.nyzik a file n
0800:B3B0 82 76 21 07 2F 6E 6F 6C 6F 67 6F 01 5C 02 00 2D .v!./nologo.\..-
0800:B3C0 02 00 4D 01 6D 01 4D 01 6F 01 4F 01 45 02 00 3B ..M.m.M.o.O.E..;
0800:B3D0 02 00 4B 02 00 49 02 00 51 01 73 01 53 01 0D 01 ..K..I..Q.s.S...
0800:B3E0 1B                                              .              

;; fn0800_B3E1: 0800:B3E1
fn0800_B3E1 proc
	call	far 2733:0000
	call	far 26D1:000D
	call	far 21B6:0044
	call	far 21B2:0000
	call	far 1B2A:0000
	call	far 1429:2FB6
	push	bp
	mov	bp,sp
	mov	ax,0600
	call	far 2733:0530
	sub	sp,0600
	call	17F9
	mov	word ptr [27DE],4DD0
	mov	word ptr [27E0],0002
	call	far 21BB:0072
	call	AD71
	mov	ax,0BC8
	mov	dx,1936
	mov	[8ED8],ax
	mov	[8EDA],dx
	lea	di,[bp+FD00]
	push	ss
	push	di
	lea	di,[bp+FE00]
	push	ss
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	push	01
	call	far 2733:0D14
	push	01
	push	02
	call	far 2733:0FD5
	call	far 1429:051C
	mov	di,B39B
	push	cs
	push	di
	call	far 2733:1088
	jz	B468

l0800_B465:
	jmp	B524

l0800_B468:
	mov	byte ptr [2786],01
	lea	di,[bp+FC00]
	push	ss
	push	di
	push	02
	call	far 2733:0D14
	mov	di,2764
	push	ds
	push	di
	push	14
	call	far 2733:0FB1
	lea	di,[bp+FA00]
	push	ss
	push	di
	lea	di,[bp+FC00]
	push	ss
	push	di
	push	01
	call	far 2733:0D14
	push	03
	lea	di,[bp+FB00]
	push	ss
	push	di
	push	01
	call	far 2733:0D14
	pop	di
	pop	es
	mov	al,es:[di]
	xor	ah,ah
	dec	ax
	dec	ax
	push	ax
	call	far 2733:0FD5
	mov	di,2788
	push	ds
	push	di
	push	50
	call	far 2733:0FB1
	cmp	byte ptr [2788],32
	jbe	B4EA

l0800_B4CA:
	lea	di,[bp+FC00]
	push	ss
	push	di
	mov	di,2788
	push	ds
	push	di
	push	01
	push	32
	call	far 2733:0FD5
	mov	di,2788
	push	ds
	push	di
	push	50
	call	far 2733:0FB1

l0800_B4EA:
	xor	ax,ax
	mov	[8FEA],ax
	cmp	byte ptr [2788],00
	jnz	B524

l0800_B4F6:
	push	07
	call	far 26D1:0263
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,B39E
	push	cs
	push	di
	push	00
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l0800_B524:
	call	0575
	call	48B4
	xor	ax,ax
	mov	[51FC],ax
	mov	word ptr [51FA],0001
	jmp	B53B

l0800_B537:
	inc	word ptr [51FA]

l0800_B53B:
	mov	ax,[51FC]
	inc	ax
	mov	di,[51FA]
	shl	di,01
	mov	[di+8C98],ax
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0036]
	mov	di,[51FA]
	shl	di,03
	sub	ax,[di+0032]
	inc	ax
	mov	dx,ax
	mov	di,[51FA]
	shl	di,03
	mov	ax,[di+0034]
	mov	di,[51FA]
	shl	di,03
	sub	ax,[di+0030]
	inc	ax
	mul	dx
	add	ax,0004
	mov	[32DC],ax
	mov	ax,[51FC]
	add	ax,[32DC]
	mov	[51FC],ax
	cmp	word ptr [51FA],08
	jnz	B537

l0800_B592:
	call	24DE
	cmp	byte ptr [2786],00
	jnz	B5A1

l0800_B59C:
	call	1A51
	jmp	B5CE

l0800_B5A1:
	push	2134
	call	far 2733:028A
	mov	[2754],ax
	mov	[2756],dx
	push	03E8
	call	far 2733:028A
	mov	[2758],ax
	mov	[275A],dx
	push	03E8
	call	far 2733:028A
	mov	[275C],ax
	mov	[275E],dx

l0800_B5CE:
	call	B1F0
	mov	word ptr [541A],0001
	cmp	byte ptr [2786],00
	jnz	B5E3

l0800_B5DE:
	call	05E2
	jmp	B5E6

l0800_B5E3:
	call	0547

l0800_B5E6:
	push	09
	mov	di,F2EE
	push	ds
	push	di
	call	far 26BA:0072
	push	09
	mov	di,003D
	mov	ax,0800
	push	ax
	push	di
	call	far 26BA:008A
	mov	al,00
	out	60,al
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	call	far 21BB:012A
	lea	di,[bp+FF00]
	push	ss
	push	di
	push	01
	call	far 2733:0D14
	mov	di,B3B3
	push	cs
	push	di
	call	far 2733:1088
	jz	B65D

l0800_B62E:
	cmp	byte ptr [2786],00
	jnz	B65D

l0800_B635:
	push	00
	push	00
	push	0F
	push	01
	push	01
	push	00
	push	00
	call	2F49
	call	22ED
	call	05E2
	push	00
	push	00
	push	08
	push	01
	push	01
	push	00
	push	00
	call	2F49

l0800_B65D:
	lea	di,[bp+FF00]
	push	ss
	push	di
	push	01
	call	far 2733:0D14
	mov	di,B3B3
	push	cs
	push	di
	call	far 2733:1088
	jz	B685

l0800_B676:
	cmp	byte ptr [2786],00
	jnz	B685

l0800_B67D:
	call	22ED
	call	05E2
	jmp	B688

l0800_B685:
	call	0547

l0800_B688:
	mov	al,[8FE4]
	xor	ah,ah
	push	ax
	call	far 2234:0011
	call	0547
	call	3DDF
	push	0D
	push	00
	call	395F
	cmp	byte ptr [2786],00
	jnz	B6D6

l0800_B6A7:
	call	3F93
	call	4011
	push	18
	mov	ax,[32C0]
	sub	ax,0015
	push	ax
	mov	ax,[28D6]
	shl	ax,03
	add	ax,001C
	push	ax
	push	12
	push	12
	push	word ptr [28D4]
	push	01
	push	FF
	push	00
	mov	di,B3BB
	push	cs
	push	di
	call	41B6

l0800_B6D6:
	call	far 21BB:012A
	call	1208
	cmp	word ptr [8FEA],04
	jz	B705

l0800_B6E5:
	cmp	byte ptr [2786],00
	jnz	B705

l0800_B6EC:
	mov	byte ptr [2990],01
	push	word ptr [8ED6]
	push	word ptr [8ED4]
	push	00
	call	far 1858:0510
	call	1718
	jmp	B70A

l0800_B705:
	mov	byte ptr [2990],00

l0800_B70A:
	cmp	byte ptr [2786],00
	jnz	B716

l0800_B711:
	call	0970
	jmp	B719

l0800_B716:
	call	045A

l0800_B719:
	call	far 21BB:0108
	call	far 21BB:01A8

;; fn0800_B723: 0800:B723
fn0800_B723 proc
	cmp	byte ptr [2F94],01
	jz	B72D

;; fn0800_B72A: 0800:B72A
fn0800_B72A proc
	jmp	B7CE

;; fn0800_B72D: 0800:B72D
fn0800_B72D proc
	call	1C7B
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[5200],ax
	mov	ax,[5200]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,7000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,2234
	call	far 2733:15AF
	call	far 2733:15D9
	mov	[32E4],ax
	mov	ax,[5200]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,7000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C8A]
	cwd
	cmp	dx,bx
	jnz	B7B5

l0800_B7AC:
	cmp	ax,cx
	jnz	B7B5

l0800_B7B0:
	mov	byte ptr [8CC8],00

l0800_B7B5:
	mov	byte ptr [8CC6],00
	cmp	word ptr [8C8A],01
	jnz	B7C6

l0800_B7C1:
	mov	byte ptr [2234],00

l0800_B7C6:
	call	1CF3
	mov	byte ptr [2F94],00

;; fn0800_B7CE: 0800:B7CE
fn0800_B7CE proc
	cmp	byte ptr [F389],00
	jnz	B7DA

l0800_B7D5:
	xor	ax,ax
	mov	[2994],ax

l0800_B7DA:
	cmp	word ptr [2994],00
	jnz	B7E6

l0800_B7E1:
	mov	byte ptr [27F6],00

l0800_B7E6:
	cmp	byte ptr [2786],00
	jnz	B7F4

l0800_B7ED:
	push	01
	call	7287
	jmp	B803

l0800_B7F4:
	push	01
	push	01
	call	5B59
	call	9D63
	push	00
	call	211C

l0800_B803:
	cmp	word ptr [27E8],29
	jz	B818

l0800_B80A:
	cmp	byte ptr [F389],00
	jz	B82B

l0800_B811:
	cmp	word ptr [F386],3C
	jge	B82B

l0800_B818:
	call	3D03
	call	3F93
	call	4011
	mov	byte ptr [32C6],01
	mov	byte ptr [298E],01

l0800_B82B:
	cmp	byte ptr [F389],00
	jz	B849

l0800_B832:
	mov	word ptr [F3CE],0001
	cmp	byte ptr [2992],00
	jz	B849

l0800_B83F:
	mov	byte ptr [2992],00
	call	far 21BB:01FE

l0800_B849:
	cmp	word ptr [2994],01
	jnz	B878

l0800_B850:
	call	113F
	cmp	ax,001E
	ja	B85F

l0800_B858:
	cmp	byte ptr [F389],00
	jnz	B867

l0800_B85F:
	mov	word ptr [2994],0002
	jmp	B86C

l0800_B867:
	mov	byte ptr [2733],01

l0800_B86C:
	cmp	word ptr [2994],02
	jnz	B878

l0800_B873:
	mov	byte ptr [27F6],00

l0800_B878:
	cmp	word ptr [2994],00
	jnz	B88D

l0800_B87F:
	mov	word ptr [2994],0001
	call	111A
	mov	byte ptr [27F6],00

l0800_B88D:
	push	01
	call	1EAD
	mov	[2D2E],ax
	cmp	word ptr [2D2E],08
	jnz	B8D1

l0800_B89C:
	mov	byte ptr [8CD1],00
	call	1CF3
	cmp	byte ptr [2992],00
	jz	B8B2

l0800_B8AB:
	mov	byte ptr [2992],00
	jmp	B8B7

l0800_B8B2:
	mov	byte ptr [2992],01

l0800_B8B7:
	cmp	byte ptr [2992],00
	jz	B8C6

l0800_B8BE:
	mov	word ptr [F3CE],0005
	jmp	B8CC

l0800_B8C6:
	mov	word ptr [F3CE],0001

l0800_B8CC:
	call	far 21BB:01FE

l0800_B8D1:
	cmp	word ptr [2D2E],01
	jnz	B8E9

l0800_B8D8:
	mov	di,B3BD
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_B8E9:
	cmp	word ptr [2D2E],06
	jnz	B907

l0800_B8F0:
	mov	di,B3C0
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	mov	word ptr [32D2],0001

l0800_B907:
	cmp	word ptr [2D2E],07
	jnz	B925

l0800_B90E:
	mov	di,B3C0
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1
	mov	word ptr [32D2],0002

l0800_B925:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3C3
	push	cs
	push	di
	call	far 2733:1088
	jz	B955

l0800_B936:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3C5
	push	cs
	push	di
	call	far 2733:1088
	jz	B955

l0800_B947:
	cmp	word ptr [2D2E],02
	jz	B955

l0800_B94E:
	cmp	word ptr [2D28],03
	jnz	B988

l0800_B955:
	call	ACDA
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,B3C5
	push	cs
	push	di
	call	far 2733:1088
	jnz	B979

l0800_B974:
	push	02
	call	1E4E

l0800_B979:
	mov	word ptr [541A],0003
	call	79A6
	mov	word ptr [541A],0001

l0800_B988:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3C7
	push	cs
	push	di
	call	far 2733:1088
	jz	B9B1

l0800_B999:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3C9
	push	cs
	push	di
	call	far 2733:1088
	jz	B9B1

l0800_B9AA:
	cmp	word ptr [2D2E],04
	jnz	B9E2

l0800_B9B1:
	call	ACDA
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,B3C9
	push	cs
	push	di
	call	far 2733:1088
	jnz	B9D5

l0800_B9D0:
	push	04
	call	1E4E

l0800_B9D5:
	call	8567
	mov	byte ptr [32C6],01
	mov	byte ptr [298E],01

l0800_B9E2:
	cmp	word ptr [2D2E],03
	jz	B9F7

l0800_B9E9:
	cmp	word ptr [2D28],01
	jz	B9F7

l0800_B9F0:
	cmp	word ptr [27E8],41
	jnz	BA2A

l0800_B9F7:
	call	ACDA
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,5496
	push	ds
	push	di
	call	far 1429:051C
	mov	di,B3CB
	push	cs
	push	di
	call	far 2733:1088
	jz	BA1D

l0800_BA16:
	cmp	word ptr [2D28],01
	jnz	BA22

l0800_BA1D:
	push	03
	call	1E4E

l0800_BA22:
	xor	ax,ax
	mov	[2D28],ax
	call	8AEF

l0800_BA2A:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3CD
	push	cs
	push	di
	call	far 2733:1088
	jnz	BA40

l0800_BA3B:
	push	01
	call	211C

l0800_BA40:
	cmp	byte ptr [F38E],00
	jnz	BA4A

l0800_BA47:
	jmp	BB9E

l0800_BA4A:
	cmp	byte ptr [76FE],00
	jz	BAC0

l0800_BA51:
	mov	ax,[28D6]
	shl	ax,03
	add	ax,0036
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jl	BA6E

l0800_BA68:
	jg	BAC0

l0800_BA6A:
	cmp	ax,cx
	jnc	BAC0

l0800_BA6E:
	cmp	word ptr [F396],18
	jle	BAC0

l0800_BA75:
	mov	ax,[32C0]
	sub	ax,0004
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jg	BA8F

l0800_BA89:
	jl	BAC0

l0800_BA8B:
	cmp	ax,cx
	jbe	BAC0

l0800_BA8F:
	imul	ax,[28D4],12
	add	ax,[32C0]
	sub	ax,0005
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	BAAF

l0800_BAA9:
	jg	BAC0

l0800_BAAB:
	cmp	ax,cx
	jnc	BAC0

l0800_BAAF:
	mov	di,B3D0
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_BAC0:
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[32DC],ax
	cmp	word ptr [32DC],0F
	jbe	BB34

l0800_BAE0:
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32DC]
	xor	dx,dx
	cmp	dx,bx
	jg	BAFB

l0800_BAF5:
	jl	BB2E

l0800_BAF7:
	cmp	ax,cx
	jbe	BB2E

l0800_BAFB:
	imul	ax,[8C8A],0F
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32DC]
	xor	dx,dx
	cmp	dx,bx
	jl	BB14

l0800_BB0E:
	jg	BB2E

l0800_BB10:
	cmp	ax,cx
	ja	BB2E

l0800_BB14:
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[32DC]
	xor	dx,dx
	sub	ax,cx
	sbb	dx,bx
	mov	[32DC],ax
	jmp	BB34

l0800_BB2E:
	mov	word ptr [32DC],000F

l0800_BB34:
	imul	ax,[32DC],12
	add	ax,007E
	mov	[32DC],ax
	cmp	byte ptr [76FE],00
	jnz	BB9E

l0800_BB46:
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,025B
	sub	ax,dx
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F396]
	cwd
	cmp	dx,bx
	jg	BB67

l0800_BB61:
	jl	BB9E

l0800_BB63:
	cmp	ax,cx
	jbe	BB9E

l0800_BB67:
	cmp	word ptr [F396],0262
	jge	BB9E

l0800_BB6F:
	cmp	word ptr [F398],7E
	jle	BB9E

l0800_BB76:
	mov	ax,[32DC]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F398]
	cwd
	cmp	dx,bx
	jl	BB8D

l0800_BB87:
	jg	BB9E

l0800_BB89:
	cmp	ax,cx
	jnc	BB9E

l0800_BB8D:
	mov	di,B3C0
	push	cs
	push	di
	mov	di,5496
	push	ds
	push	di
	push	02
	call	far 2733:0FB1

l0800_BB9E:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3C0
	push	cs
	push	di
	call	far 2733:1088
	jnz	BBD9

l0800_BBAF:
	cmp	byte ptr [76FE],00
	jnz	BBD9

l0800_BBB6:
	mov	byte ptr [76FE],01
	push	18
	mov	ax,[32C0]
	sub	ax,0015
	push	ax
	mov	ax,[28D6]
	shl	ax,03
	add	ax,001C
	push	ax
	push	12
	push	12
	push	0A
	push	01
	call	47B2

l0800_BBD9:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3D0
	push	cs
	push	di
	call	far 2733:1088
	jnz	BC1B

l0800_BBEA:
	cmp	byte ptr [76FE],00
	jz	BC1B

l0800_BBF1:
	mov	byte ptr [76FE],00
	mov	ax,[2234]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	6C
	mov	ax,[28D8]
	shl	ax,03
	add	ax,000E
	push	ax
	push	12
	push	12
	push	0A
	push	02
	call	47B2

l0800_BC1B:
	cmp	word ptr [2D2E],1A
	jnz	BC5C

l0800_BC22:
	mov	word ptr [8C8A],0001
	mov	ax,[8C88]
	cmp	ax,[8C8A]
	jz	BC56

l0800_BC31:
	call	2B97
	call	3C1D
	call	4011
	mov	byte ptr [32C6],01
	mov	byte ptr [2F94],01
	mov	byte ptr [298E],01
	cmp	word ptr [32D2],01
	jnz	BC56

l0800_BC50:
	mov	word ptr [5408],000F

l0800_BC56:
	mov	ax,[8C8A]
	mov	[8C88],ax

l0800_BC5C:
	cmp	word ptr [2234],1B
	jnz	BCDD

l0800_BC63:
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[5200],ax
	mov	ax,[5200]
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0084
	xor	si,si
	mov	di,7000
	call	far 2733:15C7
	mov	cx,B480
	mov	si,76C8
	mov	di,7FBE
	call	far 2733:15AF
	call	far 2733:15D9
	mov	[8C8A],ax
	mov	ax,[8C88]
	cmp	ax,[8C8A]
	jz	BCD7

l0800_BCB2:
	call	2B97
	call	3C1D
	call	4011
	mov	byte ptr [32C6],01
	mov	byte ptr [21BB],01
	mov	byte ptr [298E],01
	cmp	word ptr [32D2],01
	jnz	BCD7

l0800_BCD1:
	mov	word ptr [5408],000F

l0800_BCD7:
	mov	ax,[8C8A]
	mov	[8C88],ax

l0800_BCDD:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3D3
	push	cs
	push	di
	call	far 2733:1088
	jz	BCF5

l0800_BCEE:
	cmp	word ptr [32D2],01
	jnz	BD50

l0800_BCF5:
	cmp	byte ptr [76FE],00
	jz	BD50

l0800_BCFC:
	mov	ax,[8C8A]
	dec	ax
	mov	[8C8A],ax
	cmp	word ptr [8C8A],01
	jge	BD10

l0800_BD0A:
	mov	word ptr [8C8A],0001

l0800_BD10:
	mov	ax,[8C88]
	cmp	ax,[8C8A]
	jz	BD45

l0800_BD19:
	mov	byte ptr [2F94],01
	call	2B97
	call	3C1D
	call	4011
	mov	byte ptr [32C6],01
	cmp	byte ptr [21BB],00
	jz	BD38

l0800_BD33:
	mov	byte ptr [298E],01

l0800_BD38:
	cmp	word ptr [32D2],01
	jnz	BD45

l0800_BD3F:
	mov	word ptr [5408],000F

l0800_BD45:
	xor	ax,ax
	mov	[32D2],ax
	mov	ax,[8C8A]
	mov	[8C88],ax

l0800_BD50:
	mov	di,2733
	push	ds
	push	di
	mov	di,B3D6
	push	cs
	push	di
	call	far 2733:1088
	jz	BD6B

l0800_BD61:
	cmp	word ptr [32D2],02
	jz	BD6B

l0800_BD68:
	jmp	BDF8

l0800_BD6B:
	cmp	byte ptr [76FE],00
	jnz	BD75

l0800_BD72:
	jmp	BDF8

l0800_BD75:
	mov	ax,[8C8A]
	inc	ax
	mov	[8C8A],ax
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	mov	di,[8C80]
	shl	di,01
	sub	ax,[di+8702]
	mov	[5200],ax
	mov	ax,[5200]
	dec	ax
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	cwd
	cmp	dx,bx
	jg	BDB1

l0800_BDAB:
	jl	BDB8

l0800_BDAD:
	cmp	ax,cx
	jbe	BDB8

l0800_BDB1:
	mov	ax,[8C8A]
	dec	ax
	mov	[8C8A],ax

l0800_BDB8:
	mov	ax,[8C88]
	cmp	ax,[8C8A]
	jz	BDED

l0800_BDC1:
	mov	byte ptr [2F94],01
	call	2B97
	call	3C1D
	call	4011
	mov	byte ptr [32C6],01
	cmp	byte ptr [76FE],00
	jz	BDE0

l0800_BDDB:
	mov	byte ptr [298E],01

l0800_BDE0:
	cmp	word ptr [32D2],02
	jnz	BDED

l0800_BDE7:
	mov	word ptr [5408],0001

l0800_BDED:
	xor	ax,ax
	mov	[32D2],ax
	mov	ax,[8C8A]
	mov	[8C88],ax

l0800_BDF8:
	cmp	byte ptr [76FE],00
	jnz	BE02

l0800_BDFF:
	jmp	BF28

l0800_BE02:
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	mov	di,[8C80]
	shl	di,01
	add	ax,[di+8702]
	mov	dx,ax
	mov	ax,[8C80]
	inc	ax
	mov	di,ax
	shl	di,01
	mov	ax,[di+8702]
	sub	ax,dx
	mov	[5200],ax
	cmp	word ptr [5200],0F
	jbe	BE33

l0800_BE2D:
	mov	word ptr [5200],000F

l0800_BE33:
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	6C
	mov	ax,[28D8]
	shl	ax,03
	add	ax,000E
	push	ax
	push	12
	push	12
	push	word ptr [5200]
	push	02
	push	00
	push	00
	mov	di,5496
	push	ds
	push	di
	call	41B6
	cmp	word ptr [2D28],08
	jz	BE8C

l0800_BE6A:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3D9
	push	cs
	push	di
	call	far 2733:1088
	jz	BE8C

l0800_BE7B:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3DB
	push	cs
	push	di
	call	far 2733:1088
	jnz	BEDC

l0800_BE8C:
	xor	ax,ax
	mov	[2D28],ax
	mov	ax,[8C8A]
	dec	ax
	imul	ax,ax,0F
	mov	dx,ax
	mov	di,[8C80]
	shl	di,01
	mov	ax,[di+8702]
	add	ax,[5408]
	dec	ax
	add	ax,dx
	push	ax
	push	01
	call	5B59
	imul	ax,[8C8A],0F
	mov	dx,ax
	mov	di,[8C80]
	shl	di,01
	mov	ax,[di+8702]
	add	ax,[5408]
	dec	ax
	add	ax,dx
	sub	ax,000F
	mov	di,ax
	shl	di,01
	mov	ax,[di+2ABA]
	mov	[181A],ax
	push	01
	call	4EB5

l0800_BEDC:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3DD
	push	cs
	push	di
	call	far 2733:1088
	jnz	BF25

l0800_BEED:
	xor	ax,ax
	mov	[181A],ax
	call	9D63
	mov	ax,[28D8]
	shl	ax,03
	mov	dx,ax
	mov	ax,0258
	sub	ax,dx
	push	ax
	push	6C
	mov	ax,[28D8]
	shl	ax,03
	add	ax,000E
	push	ax
	push	12
	push	12
	push	word ptr [5200]
	push	02
	push	00
	push	00
	mov	di,B3BB
	push	cs
	push	di
	call	41B6

l0800_BF25:
	jmp	C252

l0800_BF28:
	push	18
	mov	ax,[32C0]
	sub	ax,0015
	push	ax
	mov	ax,[28D6]
	shl	ax,03
	add	ax,001C
	push	ax
	push	12
	push	12
	push	word ptr [28D4]
	push	01
	push	00
	push	00
	mov	di,5496
	push	ds
	push	di
	call	41B6
	cmp	byte ptr [F389],00
	jz	BFB3

l0800_BF58:
	cmp	word ptr [F384],1E
	jle	BFB3

l0800_BF5F:
	mov	ax,[28D8]
	shl	ax,03
	add	ax,001E
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	BF7C

l0800_BF76:
	jg	BFB3

l0800_BF78:
	cmp	ax,cx
	jnc	BFB3

l0800_BF7C:
	mov	ax,[32C0]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jg	BF93

l0800_BF8D:
	jl	BFB3

l0800_BF8F:
	cmp	ax,cx
	jc	BFB3

l0800_BF93:
	mov	ax,[32C0]
	add	ax,0090
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	BFAD

l0800_BFA7:
	jg	BFB3

l0800_BFA9:
	cmp	ax,cx
	jnc	BFB3

l0800_BFAD:
	mov	word ptr [32D2],0001

l0800_BFB3:
	cmp	byte ptr [F389],00
	jz	C021

l0800_BFBA:
	cmp	word ptr [F384],1E
	jle	C021

l0800_BFC1:
	mov	ax,[28D8]
	shl	ax,03
	add	ax,001E
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	BFDE

l0800_BFD8:
	jg	C021

l0800_BFDA:
	cmp	ax,cx
	jnc	C021

l0800_BFDE:
	imul	ax,[28D4],12
	add	ax,[32C0]
	sub	ax,0090
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jg	BFFE

l0800_BFF8:
	jl	C021

l0800_BFFA:
	cmp	ax,cx
	jbe	C021

l0800_BFFE:
	imul	ax,[28D4],12
	add	ax,[32C0]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	C01B

l0800_C015:
	jg	C021

l0800_C017:
	cmp	ax,cx
	ja	C021

l0800_C01B:
	mov	word ptr [32D2],0002

l0800_C021:
	cmp	byte ptr [21BB],00
	jz	C083

l0800_C028:
	cmp	word ptr [F384],1E
	jle	C083

l0800_C02F:
	mov	ax,[28D8]
	shl	ax,03
	add	ax,001E
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F384]
	cwd
	cmp	dx,bx
	jl	C04C

l0800_C046:
	jg	C083

l0800_C048:
	cmp	ax,cx
	jnc	C083

l0800_C04C:
	mov	ax,[32C0]

;; fn0800_C04D: 0800:C04D
fn0800_C04D proc
	shl	byte ptr [bp+si],2D

;; fn0800_C04F: 0800:C04F
fn0800_C04F proc
	sub	ax,0014
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jg	C066

;; fn0800_C060: 0800:C060
fn0800_C060 proc
	jl	C083

l0800_C062:
	cmp	ax,cx
	jbe	C083

;; fn0800_C066: 0800:C066
fn0800_C066 proc
	mov	ax,[32C0]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	C07D

l0800_C077:
	jg	C083

l0800_C079:
	cmp	ax,cx
	jnc	C083

l0800_C07D:
	mov	word ptr [32D2],0003

;; fn0800_C083: 0800:C083
fn0800_C083 proc
	cmp	byte ptr [F389],00
	jz	C0F1

l0800_C08A:
	cmp	word ptr [F384],1E
	jle	C0F1

l0800_C091:
	mov	ax,[28D8]
	shl	ax,03
	add	ax,001E
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2733]
	cwd
	cmp	dx,bx
	jl	C0AE

l0800_C0A8:
	jg	C0F1

l0800_C0AA:
	cmp	ax,cx
	jnc	C0F1

l0800_C0AE:
	imul	ax,[28D4],12
	add	ax,[32C0]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[2733]
	cwd
	cmp	dx,bx
	jg	C0CB

l0800_C0C5:
	jl	C0F1

l0800_C0C7:
	cmp	ax,cx
	jbe	C0F1

l0800_C0CB:
	imul	ax,[28D4],12
	add	ax,[32C0]
	add	ax,0014
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[F386]
	cwd
	cmp	dx,bx
	jl	C0EB

l0800_C0E5:
	jg	C0F1

l0800_C0E7:
	cmp	ax,cx
	jnc	C0F1

l0800_C0EB:
	mov	word ptr [32D2],0004

l0800_C0F1:
	cmp	byte ptr [27F6],00
	jz	C0FD

l0800_C0F8:
	xor	ax,ax
	mov	[2733],ax

l0800_C0FD:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3D3
	push	cs
	push	di
	call	far 2733:1088
	jnz	C114

l0800_C10E:
	mov	word ptr [32D2],0003

l0800_C114:
	mov	di,5496
	push	ds
	push	di
	mov	di,B3D6
	push	cs
	push	di
	call	far 2733:1088
	jnz	C12B

l0800_C125:
	mov	word ptr [32D2],0004

l0800_C12B:
	cmp	word ptr [32D2],01
	jz	C139

l0800_C132:
	cmp	word ptr [32D2],03
	jnz	C182

l0800_C139:
	cmp	word ptr [32D2],01
	jnz	C149

l0800_C140:
	mov	ax,[28E4]
	dec	ax
	mov	[28E4],ax
	jmp	C152

l0800_C149:
	mov	ax,[28E4]
	sub	ax,0004
	mov	[28E4],ax

l0800_C152:
	cmp	word ptr [28E4],00
	jge	C15E

l0800_C159:
	xor	ax,ax
	mov	[28E4],ax

l0800_C15E:
	mov	ax,[28E2]
	cmp	ax,[28E4]
	jz	C182

l0800_C167:
	call	3C9C
	call	3F93
	mov	byte ptr [298E],01
	mov	byte ptr [32C6],01
	mov	byte ptr [2D2A],01
	mov	ax,[28E4]
	mov	[28E2],ax

l0800_C182:
	cmp	word ptr [32D2],02
	jz	C190

l0800_C189:
	cmp	word ptr [32D2],04
	jnz	C1DC

l0800_C190:
	cmp	word ptr [32D2],02
	jnz	C1A0

l0800_C197:
	mov	ax,[28E4]
	inc	ax
	mov	[28E4],ax
	jmp	C1A9

l0800_C1A0:
	mov	ax,[28E4]
	add	ax,21BB
	mov	[28E4],ax

l0800_C1A9:
	mov	ax,[28E4]
	cmp	ax,[28E6]
	jle	C1B8

l0800_C1B2:
	mov	ax,[28E6]
	mov	[28E4],ax

l0800_C1B8:
	mov	ax,[28E2]
	cmp	ax,[28E4]
	jz	C1D6

l0800_C1C1:
	call	3C9C
	call	3F93
	mov	byte ptr [298E],01
	mov	byte ptr [32C6],01
	mov	byte ptr [2D2A],01

l0800_C1D6:
	mov	ax,[28E4]
	mov	[28E2],ax

l0800_C1DC:
	xor	ax,ax
	mov	[32D2],ax
	mov	di,5496
	push	ds
	push	di
	mov	di,B3DD
	push	cs
	push	di
	call	far 2733:1088
	jz	C200

l0800_C1F2:
	cmp	byte ptr [2991],00
	jz	C24D

l0800_C1F9:
	cmp	byte ptr [2993],00
	jz	C24D

l0800_C200:
	mov	ax,[5406]
	add	ax,[28E4]
	cwd
	mov	cx,ax
	mov	bx,dx
	mov	ax,[8C80]
	xor	dx,dx
	cmp	dx,bx
	jnz	C219

l0800_C215:
	cmp	ax,cx
	jz	C24D

l0800_C219:
	mov	byte ptr [2A46],00
	mov	word ptr [8C88],0001
	mov	byte ptr [2F94],01
	call	3C1D
	mov	ax,[5406]
	add	ax,[28E4]
	mov	[8C80],ax
	mov	word ptr [8C8A],0001
	call	E972
	call	4011
	mov	word ptr [5408],0001
	call	far 21BB:01A8

l0800_C24D:
	mov	byte ptr [2991],00

;; fn0800_C252: 0800:C252
fn0800_C252 proc
	mov	di,5496
	push	ds
	push	di
	mov	di,B3DF
	push	cs
	push	di
	call	far 2733:1088
	jz	C277

;; fn0800_C263: 0800:C263
fn0800_C263 proc
	mov	di,5496
	push	ds
	push	di
	mov	di,B3BD
	push	cs
	push	di
	call	far 2733:1088
	jz	C277

l0800_C274:
	jmp	B723

;; fn0800_C277: 0800:C277
fn0800_C277 proc
	push	01
	call	1E4E
	push	00
	call	211C
	leave
	xor	ax,ax
	call	far 2733:0116
	add	[bx+si],al
	add	[bx+si],al
	add	[bx+si],al
	add	[di-77],dl
;;; Segment 1429 (1429:0000)

;; fn1429_0000: 1429:0000
fn1429_0000 proc
	push	bp
	mov	bp,sp

;; fn0800_C292: 0800:C292
fn0800_C292 proc
	in	ax,B8
	add	al,00
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[bp-02],ax
	jmp	C2A8

l1429_0015:
	inc	word ptr [bp-02]

;; fn0800_C2A8: 1429:0018
fn0800_C2A8 proc
	mov	al,[bp-02]
	mov	di,[bp-02]
	mov	[di+9052],al
	cmp	word ptr [bp-02],00FF
	jnz	0015

l1429_0029:
	xor	ax,ax
	mov	[bp-02],ax
	jmp	0033

l1429_0030:
	inc	word ptr [bp-02]

l1429_0033:
	mov	al,[bp-02]
	mov	[bp-03],al
	mov	al,[bp-03]
	cmp	al,61
	jnz	0047

l1429_0040:
	mov	byte ptr [bp-03],41
	jmp	018D

l1429_0047:
	cmp	al,62
	jnz	0052

l1429_004B:
	mov	byte ptr [bp-03],42
	jmp	018D

l1429_0052:
	cmp	al,63
	jnz	005D

l1429_0056:
	mov	byte ptr [bp-03],43
	jmp	018D

l1429_005D:
	cmp	al,64
	jnz	0068

l1429_0061:
	mov	byte ptr [bp-03],44
	jmp	018D

l1429_0068:
	cmp	al,65
	jnz	0073

l1429_006C:
	mov	byte ptr [bp-03],45
	jmp	018D

l1429_0073:
	cmp	al,66
	jnz	007E

l1429_0077:
	mov	byte ptr [bp-03],46
	jmp	018D

l1429_007E:
	cmp	al,67
	jnz	0089

l1429_0082:
	mov	byte ptr [bp-03],47
	jmp	018D

l1429_0089:
	cmp	al,68
	jnz	0094

l1429_008D:
	mov	byte ptr [bp-03],48
	jmp	018D

l1429_0094:
	cmp	al,69
	jnz	009F

l1429_0098:
	mov	byte ptr [bp-03],49
	jmp	018D

l1429_009F:
	cmp	al,6A
	jnz	00AA

l1429_00A3:
	mov	byte ptr [bp-03],4A
	jmp	018D

l1429_00AA:
	cmp	al,6B
	jnz	00B5

l1429_00AE:
	mov	byte ptr [bp-03],4B
	jmp	018D

l1429_00B5:
	cmp	al,6C
	jnz	00C0

l1429_00B9:
	mov	byte ptr [bp-03],4C
	jmp	018D

l1429_00C0:
	cmp	al,6D
	jnz	00CB

l1429_00C4:
	mov	byte ptr [bp-03],4D
	jmp	018D

l1429_00CB:
	cmp	al,6E
	jnz	00D6

l1429_00CF:
	mov	byte ptr [bp-03],4E
	jmp	018D

l1429_00D6:
	cmp	al,6F
	jnz	00E1

l1429_00DA:
	mov	byte ptr [bp-03],4F
	jmp	018D

l1429_00E1:
	cmp	al,70
	jnz	00EC

l1429_00E5:
	mov	byte ptr [bp-03],50
	jmp	018D

l1429_00EC:
	cmp	al,71
	jnz	00F7

l1429_00F0:
	mov	byte ptr [bp-03],51
	jmp	018D

l1429_00F7:
	cmp	al,72
	jnz	0102

l1429_00FB:
	mov	byte ptr [bp-03],52
	jmp	018D

l1429_0102:
	cmp	al,73
	jnz	010D

l1429_0106:
	mov	byte ptr [bp-03],53
	jmp	018D

l1429_010D:
	cmp	al,74
	jnz	0117

l1429_0111:
	mov	byte ptr [bp-03],54
	jmp	018D

l1429_0117:
	cmp	al,75
	jnz	0121

l1429_011B:
	mov	byte ptr [bp-03],55
	jmp	018D

l1429_0121:
	cmp	al,76
	jnz	012B

l1429_0125:
	mov	byte ptr [bp-03],56
	jmp	018D

l1429_012B:
	cmp	al,77
	jnz	0135

l1429_012F:
	mov	byte ptr [bp-03],57
	jmp	018D

l1429_0135:
	cmp	al,78
	jnz	013F

l1429_0139:
	mov	byte ptr [bp-03],58
	jmp	018D

l1429_013F:
	cmp	al,79
	jnz	0149

l1429_0143:
	mov	byte ptr [bp-03],59
	jmp	018D

l1429_0149:
	cmp	al,7A
	jnz	0153

l1429_014D:
	mov	byte ptr [bp-03],5A
	jmp	018D

l1429_0153:
	cmp	al,A0
	jnz	015D

l1429_0157:
	mov	byte ptr [bp-03],8F
	jmp	018D

l1429_015D:
	cmp	al,82
	jnz	0167

l1429_0161:
	mov	byte ptr [bp-03],90
	jmp	018D

l1429_0167:
	cmp	al,A1
	jnz	0171

l1429_016B:
	mov	byte ptr [bp-03],8D
	jmp	018D

l1429_0171:
	cmp	al,A2
	jnz	017B

l1429_0175:
	mov	byte ptr [bp-03],95
	jmp	018D

l1429_017B:
	cmp	al,94
	jnz	0185

l1429_017F:
	mov	byte ptr [bp-03],99
	jmp	018D

l1429_0185:
	cmp	al,81
	jnz	018D

l1429_0189:
	mov	byte ptr [bp-03],9A

l1429_018D:
	mov	al,[bp-03]
	mov	di,[bp-02]
	mov	[di+9152],al
	cmp	word ptr [bp-02],00FF
	jz	01A1

l1429_019E:
	jmp	0030

l1429_01A1:
	xor	ax,ax
	mov	[bp-02],ax
	jmp	01AB

l1429_01A8:
	inc	word ptr [bp-02]

l1429_01AB:
	mov	al,[bp-02]
	mov	[bp-03],al
	mov	al,[bp-03]
	cmp	al,41
	jnz	01BF

l1429_01B8:
	mov	byte ptr [bp-03],61
	jmp	0305

l1429_01BF:
	cmp	al,42
	jnz	01CA

l1429_01C3:
	mov	byte ptr [bp-03],62
	jmp	0305

l1429_01CA:
	cmp	al,43
	jnz	01D5

l1429_01CE:
	mov	byte ptr [bp-03],63
	jmp	0305

l1429_01D5:
	cmp	al,44
	jnz	01E0

l1429_01D9:
	mov	byte ptr [bp-03],64
	jmp	0305

l1429_01E0:
	cmp	al,45
	jnz	01EB

l1429_01E4:
	mov	byte ptr [bp-03],65
	jmp	0305

l1429_01EB:
	cmp	al,46
	jnz	01F6

l1429_01EF:
	mov	byte ptr [bp-03],66
	jmp	0305

l1429_01F6:
	cmp	al,47
	jnz	0201

l1429_01FA:
	mov	byte ptr [bp-03],67
	jmp	0305

l1429_0201:
	cmp	al,48
	jnz	020C

l1429_0205:
	mov	byte ptr [bp-03],68
	jmp	0305

l1429_020C:
	cmp	al,49
	jnz	0217

l1429_0210:
	mov	byte ptr [bp-03],69
	jmp	0305

l1429_0217:
	cmp	al,4A
	jnz	0222

l1429_021B:
	mov	byte ptr [bp-03],6A
	jmp	0305

l1429_0222:
	cmp	al,4B
	jnz	022D

l1429_0226:
	mov	byte ptr [bp-03],6B
	jmp	0305

l1429_022D:
	cmp	al,4C
	jnz	0238

l1429_0231:
	mov	byte ptr [bp-03],6C
	jmp	0305

l1429_0238:
	cmp	al,4D
	jnz	0243

l1429_023C:
	mov	byte ptr [bp-03],6D
	jmp	0305

l1429_0243:
	cmp	al,4E
	jnz	024E

l1429_0247:
	mov	byte ptr [bp-03],6E
	jmp	0305

l1429_024E:
	cmp	al,4F
	jnz	0259

l1429_0252:
	mov	byte ptr [bp-03],6F
	jmp	0305

l1429_0259:
	cmp	al,50
	jnz	0264

l1429_025D:
	mov	byte ptr [bp-03],70
	jmp	0305

l1429_0264:
	cmp	al,51
	jnz	026F

l1429_0268:
	mov	byte ptr [bp-03],71
	jmp	0305

l1429_026F:
	cmp	al,52
	jnz	027A

l1429_0273:
	mov	byte ptr [bp-03],72
	jmp	0305

l1429_027A:
	cmp	al,53
	jnz	0285

l1429_027E:
	mov	byte ptr [bp-03],73
	jmp	0305

l1429_0285:
	cmp	al,54
	jnz	028F

l1429_0289:
	mov	byte ptr [bp-03],74
	jmp	0305

l1429_028F:
	cmp	al,55
	jnz	0299

l1429_0293:
	mov	byte ptr [bp-03],75
	jmp	0305

l1429_0299:
	cmp	al,56
	jnz	02A3

l1429_029D:
	mov	byte ptr [bp-03],76
	jmp	0305

l1429_02A3:
	cmp	al,57
	jnz	02AD

l1429_02A7:
	mov	byte ptr [bp-03],77
	jmp	0305

l1429_02AD:
	cmp	al,58
	jnz	02B7

l1429_02B1:
	mov	byte ptr [bp-03],78
	jmp	0305

l1429_02B7:
	cmp	al,59
	jnz	02C1

l1429_02BB:
	mov	byte ptr [bp-03],79
	jmp	0305

l1429_02C1:
	cmp	al,5A
	jnz	02CB

l1429_02C5:
	mov	byte ptr [bp-03],7A
	jmp	0305

l1429_02CB:
	cmp	al,8F
	jnz	02D5

l1429_02CF:
	mov	byte ptr [bp-03],A0
	jmp	0305

l1429_02D5:
	cmp	al,90
	jnz	02DF

l1429_02D9:
	mov	byte ptr [bp-03],82
	jmp	0305

l1429_02DF:
	cmp	al,8D
	jnz	02E9

l1429_02E3:
	mov	byte ptr [bp-03],A1
	jmp	0305

l1429_02E9:
	cmp	al,95
	jnz	02F3

l1429_02ED:
	mov	byte ptr [bp-03],A2
	jmp	0305

l1429_02F3:
	cmp	al,99
	jnz	02FD

l1429_02F7:
	mov	byte ptr [bp-03],94
	jmp	0305

l1429_02FD:
	cmp	al,9A
	jnz	0305

l1429_0301:
	mov	byte ptr [bp-03],81

l1429_0305:
	mov	al,[bp-03]
	mov	di,[bp-02]
	mov	[di+9252],al
	xor	ax,ax
	mov	[B1D0],ax
	jmp	031A

l1429_0316:
	inc	word ptr [B1D0]

l1429_031A:
	mov	di,[B1D0]
	shl	di,01
	mov	word ptr [di+9352],003F
	cmp	word ptr [B1D0],00FF
	jnz	0316

l1429_032E:
	mov	word ptr [938E],0061
	mov	word ptr [93B2],0062
	mov	word ptr [93AE],0063
	mov	word ptr [9392],0064
	mov	word ptr [9376],0065
	mov	word ptr [9394],0066
	mov	word ptr [9396],0067
	mov	word ptr [9398],0068
	mov	word ptr [9380],0069
	mov	word ptr [939A],006A
	mov	word ptr [939C],006B
	mov	word ptr [939E],006C
	mov	word ptr [93B6],006D
	mov	word ptr [93B4],006E
	mov	word ptr [9382],006F
	mov	word ptr [9384],0070
	mov	word ptr [9372],0071
	mov	word ptr [9378],0072
	mov	word ptr [9390],0073
	mov	word ptr [937A],0074
	mov	word ptr [937E],0075
	mov	word ptr [93B0],0076
	mov	word ptr [9374],0077
	mov	word ptr [93AC],2234
	mov	word ptr [937C],0079
	mov	word ptr [93AA],007A
	mov	word ptr [93A4],0060
	mov	word ptr [B1D0],0002
	jmp	03DC

l1429_03D8:
	inc	word ptr [B1D0]

l1429_03DC:
	mov	ax,[B1D0]
	add	ax,002F
	mov	di,[B1D0]
	shl	di,01
	mov	[di+9352],ax
	cmp	word ptr [B1D0],0A
	jnz	03D8

l1429_03F3:
	mov	word ptr [9368],0030
	mov	word ptr [936A],002D
	mov	word ptr [9386],005B
	mov	word ptr [9388],005D
	mov	word ptr [93A0],003B
	mov	word ptr [93A2],0027
	mov	word ptr [93B8],002C
	mov	word ptr [93BA],002E
	mov	word ptr [93BC],002F
	mov	word ptr [93A8],005C
	mov	word ptr [93BC],002F
	mov	word ptr [93C0],002A
	mov	word ptr [93E6],002D
	mov	word ptr [93EE],2234
	mov	word ptr [938A],000D
	mov	word ptr [93F8],002E
	mov	word ptr [93F6],0030
	mov	word ptr [93F0],0031
	mov	word ptr [2234],0032
	mov	word ptr [93F4],0033
	mov	word ptr [93E8],0034
	mov	word ptr [93EA],0035
	mov	word ptr [93EC],0036
	mov	word ptr [93E0],0037
	mov	word ptr [93E2],0038
	mov	word ptr [93E4],0039
	mov	word ptr [936C],003D
	mov	word ptr [9354],001B
	mov	word ptr [93C4],0020
	mov	word ptr [2234],0008
	mov	word ptr [93F6],0100
	mov	word ptr [93E0],0100
	mov	word ptr [93E2],0100
	mov	word ptr [93F8],0100
	mov	word ptr [93F0],0100
	mov	word ptr [93F4],0100
	mov	word ptr [93E2],0100
	mov	word ptr [93E8],0100
	mov	word ptr [93F2],0100
	mov	word ptr [93EC],0100
	mov	word ptr [93E4],0100
	mov	word ptr [9370],0009
	mov	word ptr [B1D0],003B
	jmp	04FB

l1429_04F7:
	inc	word ptr [B1D0]

l1429_04FB:
	mov	di,[B1D0]
	shl	di,01
	mov	word ptr [di+9352],0100
	cmp	word ptr [B1D0],44
	jnz	04F7

l1429_050E:
	cmp	word ptr [bp-02],21BB
	jz	0518

l1429_0515:
	jmp	01A8

l1429_0518:
	mov	sp,bp
	pop	bp
	ret

;; fn1429_051C: 1429:051C
fn1429_051C proc
	push	bp
	mov	bp,sp
	mov	ax,0208
	call	far 2733:0530
	sub	sp,0208
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+06]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_053E:
	rep movsb

l1429_0540:
	mov	ds,bx
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FDFE]
	push	ss
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	al,[bp+2234]
	xor	ah,ah
	mov	[bp+FDFC],ax
	mov	ax,[bp+21BB]
	mov	[bp+FDF8],ax
	mov	ax,0001
	cmp	ax,[bp+FDF8]
	jg	059E

l1429_0572:
	mov	[bp+FEFE],ax
	jmp	057C

l1429_0578:
	inc	word ptr [bp+FEFE]

l1429_057C:
	mov	di,[bp+FEFE]
	mov	al,[bp+di+FF00]
	xor	ah,ah
	mov	di,ax
	mov	al,[di+9152]
	mov	di,[bp+FEFE]
	mov	[bp+di+FDFE],al
	mov	ax,[bp+FEFE]
	cmp	ax,[bp+FDF8]
	jnz	0578

l1429_059E:
	lea	di,[bp+FDFE]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	retf	0004

;; fn1429_05B8: 1429:05B8
fn1429_05B8 proc
	push	bp
	mov	bp,sp
	mov	ax,0208
	call	far 2733:0530
	sub	sp,0208
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+06]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_05DA:
	rep movsb

l1429_05DC:
	mov	ds,bx
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FDFC]
	push	ss
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	al,[bp+FF00]
	xor	ah,ah
	mov	[bp+FEFC],ax
	mov	ax,[bp+FEFC]
	mov	[bp+FDF8],ax
	mov	ax,0001
	cmp	ax,[bp+FDF8]
	jg	063A

l1429_060E:
	mov	[bp+FEFE],ax
	jmp	0618

l1429_0614:
	inc	word ptr [bp+FEFE]

l1429_0618:
	mov	di,[bp+FEFE]
	mov	al,[bp+di+FF00]
	xor	ah,ah
	mov	di,ax
	mov	al,[di+9252]
	mov	di,[bp+FEFE]
	mov	[bp+di+FDFC],al
	mov	ax,[bp+FEFE]
	cmp	ax,[bp+FDF8]
	jnz	0614

l1429_063A:
	lea	di,[bp+FDFC]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	retf	0004
1429:0654             34 41 20 42 4F 4F 53 54 45 52 2E 49     4A BOOSTER.I
1429:0660 4E 49 20 66 69 6C 65 2D 62 A2 6C 20 68 69 A0 6E NI file-b.l hi.n
1429:0670 79 7A 69 6B 20 61 7A 20 61 6C A0 62 62 69 20 62 yzik az al.bbi b
1429:0680 65 A0 6C 6C A1 74 A0 73 3A 01 20 01 3B 01 09    e.ll.t.s:. .;..

;; fn1429_068F: 1429:068F
fn1429_068F proc
	push	bp
	mov	bp,sp
	mov	ax,047E
	call	far 2733:0530
	sub	sp,2733
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+04]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_06B1:
	rep movsb

l1429_06B3:
	mov	ds,bx
	xor	ax,ax
	mov	[bp+FEFE],ax
	lea	di,[bp+FD82]
	push	ss
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	push	cs
	call	051C
	lea	di,[bp+FE82]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1
	mov	ax,[95A6]
	mov	[bp+FE80],ax
	mov	ax,2733
	cmp	ax,[bp+FE80]
	jg	0741

l1429_06EA:
	mov	[B1D0],ax
	jmp	06F3

l1429_06EF:
	inc	word ptr [B1D0]

l1429_06F3:
	lea	di,[bp+FE82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	call	far 2733:1042
	or	ax,ax
	jle	0738

l1429_0711:
	mov	ax,[B1D0]
	mov	[bp+FEFE],ax
	lea	di,[bp+FE82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	call	far 2733:1042
	mov	[bp+FEFC],ax
	jmp	0741

l1429_0738:
	mov	ax,[B1D0]
	cmp	ax,[bp+FE80]
	jnz	06EF

l1429_0741:
	cmp	word ptr [bp+FEFE],00
	jnz	07B3

l1429_0748:
	mov	al,07
	push	ax
	call	far 26D1:0263
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,0654
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,0F
	push	ax
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	mov	al,78
	push	ax
	xor	ax,ax
	push	ax
	call	far 2733:08DE
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,07
	push	ax
	call	far 26D1:0263
	xor	ax,ax
	call	far 2733:0116
	jmp	08D4

l1429_07B3:
	mov	byte ptr [95A8],00
	mov	al,[bp+FE82]
	xor	ah,ah
	add	ax,[bp+FEFC]
	mov	[B1D2],ax
	xor	ax,ax
	mov	[bp+FEFE],ax

l1429_07CB:
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	push	word ptr [B1D2]
	mov	ax,0001
	push	ax
	call	far 2733:0FD5
	mov	di,0689
	push	cs
	push	di
	call	far 2733:1088
	jz	0855

l1429_07F9:
	lea	di,[bp+FC82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	push	word ptr [B1D2]
	mov	ax,0001
	push	ax
	call	far 2733:0FD5
	mov	di,068B
	push	cs
	push	di
	call	far 2733:1088
	jz	0855

l1429_0827:
	lea	di,[bp+FB82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	push	word ptr [B1D2]
	mov	ax,0001
	push	ax
	call	far 2733:0FD5
	mov	di,068D
	push	cs
	push	di
	call	far 2733:1088
	jnz	085B

l1429_0855:
	mov	word ptr [bp+FEFE],0001

l1429_085B:
	cmp	word ptr [bp+FEFE],00
	jnz	08AE

l1429_0862:
	cmp	byte ptr [95A8],5A
	jnc	08AE

l1429_0869:
	lea	di,[bp+FC82]
	push	ss
	push	di
	mov	di,95A8
	push	ds
	push	di
	call	far 2733:0F97
	lea	di,[bp+FD82]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	push	word ptr [B1D2]
	mov	ax,0001
	push	ax
	call	far 2733:0FD5
	call	far 2733:1016
	mov	di,95A8
	push	ds
	push	di
	mov	ax,2733
	push	ax
	call	far 2733:0FB1

l1429_08AE:
	mov	ax,[B1D2]
	inc	ax
	mov	[B1D2],ax
	cmp	word ptr [bp+FEFE],01
	jz	08D4

l1429_08BC:
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	mov	al,[di+C11D]
	xor	ah,ah
	cmp	ax,[B1D2]
	jl	08D4

l1429_08D1:
	jmp	07CB

l1429_08D4:
	mov	di,95A8
	push	ds
	push	di
	les	di,[bp+08]
	push	es
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	ret	0004
1429:08ED                                        31 41 20              1A 
1429:08F0 42 4F 4F 53 54 45 52 2E 49 4E 49 20 66 69 6C 65 BOOSTER.INI file
1429:0900 2D 62 61 6E 20 68 69 62 A0 73 20 61 7A 20 61 6C -ban hib.s az al
1429:0910 A0 62 62 69 20 62 65 A0 6C 6C A1 74 A0 73 3A 18 .bbi be.ll.t.s:.
1429:0920 41 20 62 65 A0 6C 6C A1 74 A0 73 20 82 72 74 82 A be.ll.t.s .rt.
1429:0930 6B 65 20 63 73 61 6B 20 07 20 6C 65 68 65 74 2E ke csak . lehet.

;; fn1429_0940: 1429:0940
fn1429_0940 proc
	push	bp
	mov	bp,sp
	mov	ax,0280
	call	far 2733:0530
	sub	sp,0280
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FEFE]
	lds	si,[bp+0C]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_0962:
	rep movsb

l1429_0964:
	mov	ds,bx
	lea	di,[bp+FD80]
	push	ss
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	call	068F
	lea	di,[bp+FE80]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE80]
	push	ss
	push	di
	mov	di,9822
	push	ds
	push	di
	call	far 2733:1B9C
	mov	[bp+FEFA],ax
	mov	[bp+FEFC],dx
	cmp	word ptr [9822],00
	jbe	0A0D

l1429_09A3:
	mov	al,07
	push	ax
	call	far 26D1:0263
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,08ED
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,0F
	push	ax
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	mov	di,95A8
	push	ds
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,07
	push	ax
	call	far 26D1:0263
	xor	ax,ax
	call	far 2733:0116

l1429_0A0D:
	mov	ax,[bp+FEFA]
	mov	dx,[bp+2733]
	cmp	dx,[bp+0A]
	jl	0A3B

l1429_0A1A:
	jg	0A21

l1429_0A1C:
	cmp	ax,[bp+08]
	jc	0A3B

l1429_0A21:
	mov	ax,[bp+FEFA]
	mov	dx,[bp+FEFC]
	cmp	dx,[bp+06]
	jg	0A3B

l1429_0A2E:
	jge	0A33

l1429_0A30:
	jmp	0B0B

l1429_0A33:
	cmp	ax,[bp+04]
	ja	0A3B

l1429_0A38:
	jmp	316E

l1429_0A3B:
	mov	ax,[bp+08]
	or	ax,[bp+0A]
	jnz	0A4E

l1429_0A43:
	mov	ax,[bp+04]
	or	ax,[bp+06]
	jnz	0A4E

l1429_0A4B:
	jmp	0B0B

l1429_0A4E:
	mov	al,07
	push	ax
	call	far 26D1:0263
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,08ED
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,0F
	push	ax
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	push	word ptr [bp+FEFC]
	push	word ptr [bp+FEFA]
	xor	ax,ax
	push	ax
	call	far 2733:0A63
	call	far 2733:0840
	call	far 2733:04F4
	mov	al,07
	push	ax
	call	far 26D1:0263
	mov	di,F600
	push	ds
	push	di
	mov	di,091F
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	xor	ax,ax
	push	ax
	call	far 2733:0A63
	mov	al,2D
	push	ax
	xor	ax,ax
	push	ax
	call	far 2733:08DE
	push	word ptr [bp+06]
	push	word ptr [bp+04]
	xor	ax,ax
	push	ax
	call	far 2733:0A63
	mov	di,0938
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l1429_0B0B:
	mov	ax,[bp+FEFA]
	mov	[bp-02],ax
	mov	ax,[bp-02]
	mov	sp,bp
	pop	bp
	ret	000C
1429:0B1B                                  0A 43 3A 5C 57            .C:\W
1429:0B20 49 4E 44 4F 57 53 0B 62 6F 6F 73 74 65 72 2E 69 INDOWS.booster.i
1429:0B30 6E 69 06 2F 53 45 54 55 50 02 2F 53 1C 54 A3 6C ni./SETUP./S.T.l
1429:0B40 20 6E 61 67 79 20 61 20 42 4F 4F 53 54 45 52 2E  nagy a BOOSTER.
1429:0B50 49 4E 49 20 66 69 6C 65 21 0B 56 69 64 65 6F 5F INI file!.Video_
1429:0B60 43 61 72 64 3D 14 53 6F 75 6E 64 5F 44 65 76 69 Card=.Sound_Devi
1429:0B70 63 65 5F 4E 75 6D 62 65 72 3D 12 53 6F 75 6E 64 ce_Number=.Sound
1429:0B80 5F 44 65 76 69 63 65 5F 70 6F 72 74 3D 11 53 6F _Device_port=.So
1429:0B90 75 6E 64 5F 44 65 76 69 63 65 5F 49 72 71 3D 11 und_Device_Irq=.
1429:0BA0 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F 44 6D 61 Sound_Device_Dma
1429:0BB0 3D 19 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F 4D =.Sound_Device_M
1429:0BC0 69 78 69 6E 67 5F 52 61 74 65 3D 19 53 6F 75 6E ixing_Rate=.Soun
1429:0BD0 64 5F 44 65 76 69 63 65 5F 53 74 65 72 65 6F 5F d_Device_Stereo_
1429:0BE0 4D 6F 64 65 3D 02 4F 4E 19 53 6F 75 6E 64 5F 44 Mode=.ON.Sound_D
1429:0BF0 65 76 69 63 65 5F 31 36 5F 42 69 74 5F 4D 6F 64 evice_16_Bit_Mod
1429:0C00 65 3D 0F 4D 6F 75 73 65 5F 43 6F 6D 5F 50 6F 72 e=.Mouse_Com_Por
1429:0C10 74 3D 0D 4D 75 73 69 63 5F 56 6F 6C 75 6D 65 3D t=.Music_Volume=
1429:0C20 10 4D 6F 75 73 65 5F 53 65 6E 73 69 76 69 74 79 .Mouse_Sensivity
1429:0C30 3D 11 44 65 73 63 72 69 70 74 69 6F 6E 5F 53 61 =.Description_Sa
1429:0C40 76 65 3D 0D 50 69 63 74 75 72 65 5F 53 61 76 65 ve=.Picture_Save
1429:0C50 3D 10 54 75 72 6E 5F 4F 76 65 72 5F 50 61 67 65 =.Turn_Over_Page
1429:0C60 73 3D 15 4C 69 6E 65 5F 48 69 67 68 6C 69 67 68 s=.Line_Highligh
1429:0C70 74 5F 43 6F 6C 6F 72 3D 1B 42 61 63 6B 67 72 6F t_Color=.Backgro
1429:0C80 75 6E 64 5F 4C 69 67 68 74 5F 49 6E 74 65 6E 73 und_Light_Intens
1429:0C90 69 74 79 3D 0D 42 6F 73 73 5F 4B 65 79 5F 44 69 ity=.Boss_Key_Di
1429:0CA0 72 3D                                           r=             

;; fn1429_0CA2: 1429:0CA2
fn1429_0CA2 proc
	push	bp
	mov	bp,sp
	mov	ax,0402
	call	far 2733:0530
	sub	sp,0402
	mov	word ptr [8FEC],00DC
	mov	byte ptr [8FE5],00
	mov	byte ptr [8FE6],00
	mov	byte ptr [8FF2],01
	mov	byte ptr [8FF6],10
	mov	word ptr [8FEE],55F0
	mov	word ptr [8FF8],2733
	mov	byte ptr [8FE4],01
	mov	byte ptr [8FF3],01
	mov	word ptr [8FFA],0001
	mov	word ptr [8FFC],0001
	mov	word ptr [8FFE],000A
	mov	di,0B1B
	push	cs
	push	di
	mov	di,9000
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [8FF4],00
	mov	byte ptr [8FF5],00
	xor	ax,ax
	mov	[8FE8],ax
	mov	di,E26E
	push	ds
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,9554
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,0B26
	push	cs
	push	di
	call	far 2733:1016
	call	far 2733:0549
	mov	di,2733
	push	ds
	push	di
	call	far 2733:05C7
	call	far 2733:04ED
	or	ax,ax
	jnz	0D96

l1429_0D4C:
	lea	di,[bp+FDFE]
	push	ss
	push	di
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	ax,0001
	push	ax
	call	far 2733:0D14
	push	cs
	call	051C
	mov	di,0B32
	push	cs
	push	di
	call	far 2733:1088
	jz	0D96

l1429_0D71:
	lea	di,[bp+FBFE]
	push	ss
	push	di
	lea	di,[bp+FCFE]
	push	ss
	push	di
	mov	ax,0001
	push	ax
	call	far 2733:0D14
	push	cs
	call	051C
	mov	di,0B39
	push	cs
	push	di
	call	far 2733:1088
	jnz	0D9D

l1429_0D96:
	mov	byte ptr [bp-01],00
	jmp	1121

l1429_0D9D:
	xor	ax,ax
	mov	[95A6],ax

l1429_0DA2:
	mov	ax,[95A6]
	inc	ax
	mov	[95A6],ax
	mov	di,E26E
	push	ds
	push	di
	mov	ax,005B
	mul	word ptr [95A6]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:09A0
	call	far 2733:0800
	call	far 2733:04F4
	mov	di,E26E
	push	ds
	push	di
	call	far 2733:0AA6
	call	far 2733:04F4
	or	al,al
	jnz	0DEA

l1429_0DE3:
	cmp	word ptr [95A6],32
	jc	0DA2

l1429_0DEA:
	cmp	word ptr [95A6],64
	jc	0E21

l1429_0DF1:
	mov	al,07
	push	ax
	call	far 26D1:0263
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,0B3C
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l1429_0E21:
	mov	ax,[95A6]
	mov	[bp-04],ax
	mov	ax,0001
	cmp	ax,[bp-04]
	jg	0E71

l1429_0E2F:
	mov	[B1D0],ax
	jmp	0E38

l1429_0E34:
	inc	word ptr [B1D0]

l1429_0E38:
	lea	di,[bp+FEFC]
	push	ss
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	push	cs
	call	051C
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	ax,[B1D0]
	cmp	ax,[bp-04]
	jnz	0E34

l1429_0E71:
	mov	di,2733
	push	ds
	push	di
	call	far 2733:0621
	call	far 2733:04F4
	mov	di,0B59
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0002
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FE4],al
	mov	di,0B65
	push	cs
	push	di
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,000A
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FEA],ax
	mov	di,0B7A
	push	cs
	push	di
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FEC],ax
	mov	di,0B8D
	push	cs
	push	di
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FE5],al
	mov	di,0B9F
	push	cs
	push	di
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FE6],al
	mov	di,0BB1
	push	cs
	push	di
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,BB80
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FEE],ax
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0BCB
	push	cs
	push	di
	call	068F
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	push	cs
	call	051C
	mov	di,0BE5
	push	cs
	push	di
	call	far 2733:1088
	jnz	0F4C

l1429_0F45:
	mov	byte ptr [8FF0],01
	jmp	0F51

l1429_0F4C:
	mov	byte ptr [8FF0],00

l1429_0F51:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0BE8
	push	cs
	push	di
	call	068F
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	push	cs
	call	051C
	mov	di,0BE5
	push	cs
	push	di
	call	far 2733:1088
	jnz	0F8F

l1429_0F88:
	mov	byte ptr [2733],01
	jmp	0F94

l1429_0F8F:
	mov	byte ptr [8FF1],00

l1429_0F94:
	cmp	byte ptr [8FF1],00
	jz	0FA3

l1429_0F9B:
	mov	word ptr [8FE8],0008
	jmp	0FA9

l1429_0FA3:
	mov	word ptr [8FE8],0004

l1429_0FA9:
	cmp	byte ptr [8FF0],00
	jz	0FB7

l1429_0FB0:
	add	word ptr [8FE8],02
	jmp	0FBB

l1429_0FB7:
	inc	word ptr [2733]

l1429_0FBB:
	mov	di,0C02
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0002
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FFC],ax
	mov	di,0C12
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0010
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FF6],al
	mov	di,0C20
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0009
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FF8],ax
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0C31
	push	cs
	push	di
	call	068F
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	push	cs
	call	051C
	mov	di,0BE5
	push	cs
	push	di
	call	far 2733:1088
	jnz	1044

l1429_103D:
	mov	byte ptr [8FF3],01
	jmp	1049

l1429_1044:
	mov	byte ptr [8FF3],00

l1429_1049:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0C43
	push	cs
	push	di
	call	068F
	mov	di,9622
	push	ds
	push	di
	mov	ax,2733
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	push	cs
	call	051C
	mov	di,2733
	push	cs
	push	di
	call	far 2733:1088
	jnz	1087

l1429_1080:
	mov	byte ptr [8FF4],01
	jmp	108C

l1429_1087:
	mov	byte ptr [8FF4],00

l1429_108C:
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0C51
	push	cs
	push	di
	call	068F
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,2733
	push	ds
	push	di
	push	cs
	call	051C
	mov	di,0BE5
	push	cs
	push	di
	call	far 2733:1088
	jnz	10CA

l1429_10C3:
	mov	byte ptr [8FF5],01
	jmp	10CF

l1429_10CA:
	mov	byte ptr [8FF5],00

l1429_10CF:
	mov	di,2733
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0003
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FFA],ax
	mov	di,0C78
	push	cs
	push	di
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0010
	xor	dx,dx
	push	dx
	push	ax
	call	0940
	mov	[8FFE],ax
	lea	di,[bp+FEFE]
	push	ss
	push	di
	mov	di,0C94
	push	cs
	push	di
	call	068F
	mov	di,9000
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [bp-01],01

l1429_1121:
	mov	al,[bp-01]
	mov	sp,bp
	pop	bp
	ret
1429:1128                         01 20                           .      

;; fn1429_112A: 1429:112A
fn1429_112A proc
	push	bp
	mov	bp,sp
	mov	ax,017A
	call	far 2733:0530
	sub	sp,017A
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	xor	ax,ax
	push	ax
	lea	di,[bp-7A]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:1B51

l1429_1150:
	mov	al,[bp-7A]
	xor	ah,ah
	xor	dx,dx
	cmp	dx,[bp+06]
	jl	1163

l1429_115C:
	jg	118B

l1429_115E:
	cmp	ax,[bp+04]
	jnc	118B

l1429_1163:
	lea	di,[bp+FE86]
	push	ss
	push	di
	lea	di,[bp-7A]
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,1128
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp-7A]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1

l1429_118B:
	mov	al,[bp-7A]
	xor	ah,ah
	xor	dx,dx
	cmp	dx,[bp+06]
	jg	119E

l1429_1197:
	jl	1150

l1429_1199:
	cmp	ax,[bp+04]
	jc	1150

l1429_119E:
	lea	di,[bp-7A]
	push	ss
	push	di
	les	di,[bp+0C]
	push	es
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	ret	0008
1429:11B7                      01 20                             .       

;; fn1429_11B9: 1429:11B9
fn1429_11B9 proc
	push	bp
	mov	bp,sp
	mov	ax,027A
	call	far 2733:0530
	sub	sp,2733
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+06]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_11DB:
	rep movsb

l1429_11DD:
	mov	ds,bx
	lea	di,[bp+FF00]
	push	ss
	push	di
	lea	di,[bp+FE86]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1

l1429_11F4:
	mov	al,[bp+FE86]
	xor	ah,ah
	cmp	ax,[bp+04]
	jnc	1229

l1429_11FF:
	lea	di,[bp+FD86]
	push	ss
	push	di
	lea	di,[bp+FE86]
	push	ss
	push	di
	call	far 2733:0F97
	mov	di,11B7
	push	cs
	push	di
	call	far 2733:1016
	lea	di,[bp+FE86]
	push	ss
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1

l1429_1229:
	mov	al,[bp+FE86]
	xor	ah,ah
	cmp	ax,[bp+04]
	jc	11F4

l1429_1234:
	lea	di,[bp+FE86]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,2733
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	ret	0006
1429:124E                                           0B 62               .b
1429:1250 6F 6F 73 74 65 72 2E 69 6E 69 47 20 20 20 20 20 ooster.iniG     
1429:1260 20 20 DA C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4   ..............
1429:1270 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:1280 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:1290 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:12A0 C4 BF 47 20 20 20 20 20 20 20 B3 20 42 6F 6F 73 ..G       . Boos
1429:12B0 74 65 72 20 43 6F 6E 66 69 67 75 72 61 74 69 6F ter Configuratio
1429:12C0 6E 20 46 69 6C 65 20 76 31 2E 30 20 20 20 44 65 n File v1.0   De
1429:12D0 73 69 67 6E 65 64 20 62 79 20 41 63 63 6F 72 64 signed by Accord
1429:12E0 20 69 6E 20 31 39 39 36 20 B3 47 20 20 20 20 20  in 1996 .G     
1429:12F0 20 20 C0 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4   ..............
1429:1300 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:1310 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:1320 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 C4 ................
1429:1330 C4 D9 12 5B 47 72 61 70 68 69 63 20 53 65 74 74 ...[Graphic Sett
1429:1340 69 6E 67 73 5D 0B 56 69 64 65 6F 5F 43 61 72 64 ings].Video_Card
1429:1350 3D 32 20 20 20 20 20 20 20 20 20 20 20 20 20 20 =2              
1429:1360 20 20 20 20 20 3B 20 31 3A 20 56 45 53 41 20 31      ; 1: VESA 1
1429:1370 2E 32 2C 20 32 3A 20 56 45 53 41 20 53 74 61 6E .2, 2: VESA Stan
1429:1380 64 61 72 64 1B 42 61 63 6B 67 72 6F 75 6E 64 5F dard.Background_
1429:1390 4C 69 67 68 74 5F 49 6E 74 65 6E 73 69 74 79 3D Light_Intensity=
1429:13A0 30 20 20 3B 20 48 A0 74 74 82 72 20 66 82 6E 79 0  ; H.tt.r f.ny
1429:13B0 65 72 93 73 73 82 67 20 28 31 3A 20 6D 69 6E 69 er.ss.g (1: mini
1429:13C0 6D 75 6D 2C 20 31 36 3A 20 6D 61 78 69 6D 75 6D mum, 16: maximum
1429:13D0 29 15 4C 69 6E 65 5F 48 69 67 68 6C 69 67 68 74 ).Line_Highlight
1429:13E0 5F 43 6F 6C 6F 72 3D 24 20 20 20 20 20 20 20 20 _Color=$        
1429:13F0 20 3B 20 41 20 6B 69 76 A0 6C 61 73 7A 74 A2 20  ; A kiv.laszt. 
1429:1400 22 63 73 A1 6B 22 20 73 7A A1 6E 65 3C 20 20 20 "cs.k" sz.ne<   
1429:1410 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
1429:1420 20 20 20 20 20 20 20 20 20 20 20 20 3B 20 28 31             ; (1
1429:1430 3A 20 6B 82 6B 2C 20 32 3A 20 70 69 72 6F 73 2C : k.k, 2: piros,
1429:1440 20 33 3A 20 7A 94 6C 64 29 15 5B 53 6F 75 6E 64  3: z.ld).[Sound
1429:1450 20 43 61 72 64 20 53 65 74 74 69 6E 67 73 5D 14  Card Settings].
1429:1460 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F 4E 75 6D Sound_Device_Num
1429:1470 62 65 72 3D 35 20 20 20 20 20 20 20 20 20 20 3B ber=5          ;
1429:1480 20 41 20 68 61 6E 67 6B A0 72 74 79 61 20 74 A1  A hangk.rtya t.
1429:1490 70 75 73 61 20 28 34 3A 20 6E 69 6E 63 73 20 68 pusa (4: nincs h
1429:14A0 61 6E 67 6B A0 72 74 79 61 29 12 53 6F 75 6E 64 angk.rtya).Sound
1429:14B0 5F 44 65 76 69 63 65 5F 50 6F 72 74 3D 34 20 20 _Device_Port=4  
1429:14C0 20 20 20 20 20 20 20 20 3B 20 48 61 6E 67 6B A0         ; Hangk.
1429:14D0 72 74 79 61 20 50 6F 72 74 20 28 64 65 63 69 6D rtya Port (decim
1429:14E0 A0 6C 69 73 61 6E 20 28 32 32 30 68 3D 35 34 34 .lisan (220h=544
1429:14F0 29 29 11 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F )).Sound_Device_
1429:1500 49 72 71 3D 1C 20 20 20 20 20 20 20 20 20 20 20 Irq=.           
1429:1510 20 3B 20 48 61 6E 67 6B A0 72 74 79 61 20 49 72  ; Hangk.rtya Ir
1429:1520 71 11 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F 44 q.Sound_Device_D
1429:1530 6D 61 3D 1D 20 20 20 20 20 20 20 20 20 20 20 20 ma=.            
1429:1540 20 3B 20 48 61 6E 67 6B A0 72 74 79 61 20 44 6D  ; Hangk.rtya Dm
1429:1550 61 19 53 6F 75 6E 64 5F 44 65 76 69 63 65 5F 4D a.Sound_Device_M
1429:1560 69 78 69 6E 67 5F 52 61 74 65 3D 17 20 3B 20 41 ixing_Rate=. ; A
1429:1570 20 6C 65 6A A0 74 73 7A A0 73 20 6D 69 6E 93 73  lej.tsz.s min.s
1429:1580 82 67 65 02 4F 6E 03 4F 66 66 19 53 6F 75 6E 64 .ge.On.Off.Sound
1429:1590 5F 44 65 76 69 63 65 5F 53 74 65 72 65 6F 5F 4D _Device_Stereo_M
1429:15A0 6F 64 65 3D 30 20 20 20 3B 20 53 74 65 72 65 6F ode=0   ; Stereo
1429:15B0 2D 65 20 61 20 6C 65 6A A0 74 73 7A A0 73 20 20 -e a lej.tsz.s  
1429:15C0 28 4F 6E 3A 53 74 65 72 65 6F 20 20 4F 66 66 3A (On:Stereo  Off:
1429:15D0 4D 6F 6E 6F 29 19 53 6F 75 6E 64 5F 44 65 76 69 Mono).Sound_Devi
1429:15E0 63 65 5F 31 36 5F 42 69 74 5F 4D 6F 64 65 3D 32 ce_16_Bit_Mode=2
1429:15F0 20 20 20 3B 20 31 36 20 62 69 74 65 73 2D 65 20    ; 16 bites-e 
1429:1600 61 20 6C 65 6A A0 74 73 7A A0 73 20 28 4F 6E 3A a lej.tsz.s (On:
1429:1610 31 36 20 42 69 74 20 20 4F 66 66 3A 38 20 42 69 16 Bit  Off:8 Bi
1429:1620 74 29 0D 4D 75 73 69 63 5F 56 6F 6C 75 6D 65 3D t).Music_Volume=
1429:1630 44 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 D               
1429:1640 20 3B 20 41 20 7A 65 6E 65 20 68 61 6E 67 65 72  ; A zene hanger
1429:1650 65 6A 65 20 28 31 3A 20 4C 65 67 68 61 6C 6B 61 eje (1: Leghalka
1429:1660 62 62 2C 20 31 36 3A 20 4C 65 67 68 61 6E 67 6F bb, 16: Leghango
1429:1670 73 61 62 62 29 07 5B 4F 74 68 65 72 5D 0D 41 75 sabb).[Other].Au
1429:1680 74 6F 5F 52 65 66 72 65 73 68 3D 3B 20 20 20 20 to_Refresh=;    
1429:1690 20 20 20 20 20 20 20 20 20 20 20 3B 20 41 20 72            ; A r
1429:16A0 6F 74 61 76 6F 6B 20 6B 94 7A 94 74 74 20 22 6D otavok k.z.tt "m
1429:16B0 A0 73 7A 6B A0 6C 76 61 22 20 61 75 74 6F 6D 61 .szk.lva" automa
1429:16C0 74 69 6B 75 73 61 6E 4B 20 20 20 20 20 20 20 20 tikusanK        
1429:16D0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
1429:16E0 20 20 20 20 20 20 20 3B 20 66 72 69 73 73 A1 74        ; friss.t
1429:16F0 73 65 2D 65 20 61 20 63 69 6B 6B 20 63 A1 6D 65 se-e a cikk c.me
1429:1700 6B 65 74 20 61 20 6D A0 73 69 6B 20 6F 6C 64 61 ket a m.sik olda
1429:1710 6C 6F 6E 44 20 20 20 20 20 20 20 20 20 20 20 20 lonD            
1429:1720 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
1429:1730 20 20 20 3B 20 28 4F 6E 3A 20 42 65 6B 61 70 63    ; (On: Bekapc
1429:1740 73 6F 6C 76 61 2C 20 4F 66 66 3A 20 4B 69 6B 61 solva, Off: Kika
1429:1750 70 63 73 6F 6C 76 61 29 10 4D 6F 75 73 65 5F 53 pcsolva).Mouse_S
1429:1760 65 6E 73 69 76 69 74 79 3D 3C 20 20 20 20 20 20 ensivity=<      
1429:1770 20 20 20 20 20 20 20 20 3B 20 45 67 82 72 20 82         ; Eg.r .
1429:1780 72 7A 82 6B 65 6E 79 73 82 67 2E 20 28 41 7A 20 rz.kenys.g. (Az 
1429:1790 65 67 82 72 6D 75 74 61 74 A2 20 67 79 6F 72 73 eg.rmutat. gyors
1429:17A0 61 73 A0 67 61 29 4F 20 20 20 20 20 20 20 20 20 as.ga)O         
1429:17B0 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
1429:17C0 20 20 20 20 20 20 3B 20 28 31 3A 20 46 82 6C 73       ; (1: F.ls
1429:17D0 7A 65 72 65 73 2C 20 33 3A 20 4E 6F 72 6D A0 6C zeres, 3: Norm.l
1429:17E0 2C 20 36 3A 20 44 75 70 6C 61 2C 20 39 3A 20 54 , 6: Dupla, 9: T
1429:17F0 72 69 70 6C 61 29 11 44 65 73 63 72 69 70 74 69 ripla).Descripti
1429:1800 6F 6E 5F 53 61 76 65 3D 3A 20 20 20 20 20 20 20 on_Save=:       
1429:1810 20 20 20 20 3B 20 4C 65 67 79 65 6E 2D 65 20 63     ; Legyen-e c
1429:1820 69 6B 6B 20 6D 65 6E 74 82 73 6E 82 6C 20 64 65 ikk ment.sn.l de
1429:1830 73 63 72 69 70 74 69 6F 6E 20 6D 65 6E 74 82 73 scription ment.s
1429:1840 20 69 73 0D 50 69 63 74 75 72 65 5F 53 61 76 65  is.Picture_Save
1429:1850 3D 32 20 20 20 20 20 20 20 20 20 20 20 20 20 20 =2              
1429:1860 20 3B 20 4D 65 6E 74 73 65 2D 65 20 61 20 63 69  ; Mentse-e a ci
1429:1870 6B 6B 65 6B 62 65 6E 20 6C 82 76 93 20 6B 82 70 kkekben l.v. k.p
1429:1880 65 6B 65 74 10 54 75 72 6E 5F 4F 76 65 72 5F 50 eket.Turn_Over_P
1429:1890 61 67 65 73 3D 3A 20 20 20 20 20 20 20 20 20 20 ages=:          
1429:18A0 20 20 3B 20 4B 65 74 74 65 73 82 76 65 6C 20 6C   ; Kettes.vel l
1429:18B0 61 70 6F 7A 7A 6F 6E 2D 65 2C 20 6B 82 74 20 6F apozzon-e, k.t o
1429:18C0 6C 64 61 6C 61 73 20 63 69 6B 6B 65 6B 6E 82 6C ldalas cikkekn.l
1429:18D0 0F 4D 6F 75 73 65 5F 43 6F 6D 5F 50 6F 72 74 3D .Mouse_Com_Port=
1429:18E0 3C 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 <               
1429:18F0 3B 20 48 61 6E 79 61 73 20 43 6F 6D 20 70 6F 72 ; Hanyas Com por
1429:1900 74 2D 6F 6E 20 76 61 6E 20 61 7A 20 65 67 65 72 t-on van az eger
1429:1910 65 64 20 28 31 20 76 61 67 79 20 32 29 0D 42 6F ed (1 vagy 2).Bo
1429:1920 73 73 5F 4B 65 79 5F 44 69 72 3D 2C 20 20 3B 20 ss_Key_Dir=,  ; 
1429:1930 46 31 30 2D 65 6C 20 76 61 6C A2 20 6B 69 6C 82 F10-el val. kil.
1429:1940 70 82 73 6E 82 6C 20 6D 65 6C 79 69 6B 20 6B 94 p.sn.l melyik k.
1429:1950 6E 79 76 74 A0 72 62 61 28 20 20 20 20 20 20 20 nyvt.rba(       
1429:1960 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20 20                 
1429:1970 20 20 20 20 20 20 20 20 3B 20 75 67 6F 72 6A 6F         ; ugorjo
1429:1980 6E 01 2D                                        n.-            

;; fn1429_1983: 1429:1983
fn1429_1983 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	mov	di,E26E
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9554
	push	ds
	push	di
	call	far 2733:0F97
	mov	di,124E
	push	cs
	push	di
	call	far 2733:1016
	call	far 2733:0549
	mov	di,E26E
	push	ds
	push	di
	call	far 2733:05CC
	call	far 2733:04F4
	mov	di,125A
	push	cs
	push	di
	mov	di,C178
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,12A2
	push	cs
	push	di
	mov	di,C1D3
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,12EA
	push	cs
	push	di
	mov	di,C22E
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [C289],00
	mov	di,1332
	push	cs
	push	di
	mov	di,C2E4
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1345
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	al,[8FE4]
	xor	ah,ah
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1351
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C33F
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1384
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FFE]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0002
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,13A0
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C39A
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,13D1
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FFA]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,13E7
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C3F5
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,140C
	push	cs
	push	di
	mov	di,C450
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [C4AB],00
	mov	di,1449
	push	cs
	push	di
	mov	di,C506
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,145F
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FEA]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1474
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C561
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,14AA
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+2733]
	push	ss
	push	di
	mov	ax,[2733]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0003
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,14BD
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C5BC
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,14F2
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	al,[8FE5]
	xor	ah,ah
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0002
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1504
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C617
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1521
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	al,[8FE6]
	xor	ah,ah
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1533
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C672
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1551
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FEE]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0005
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,156B
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C6CD
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	word ptr [8FE8],05
	jnz	1C78

l1429_1C6E:
	mov	byte ptr [8FF0],00
	mov	byte ptr [8FF1],00

l1429_1C78:
	cmp	word ptr [8FE8],06
	jnz	1C89

l1429_1C7F:
	mov	byte ptr [8FF0],01
	mov	byte ptr [8FF1],00

l1429_1C89:
	cmp	word ptr [8FE8],09
	jnz	1C9A

l1429_1C90:
	mov	byte ptr [8FF0],00
	mov	byte ptr [8FF1],01

l1429_1C9A:
	cmp	word ptr [8FE8],0A
	jnz	1CAB

l1429_1CA1:
	mov	byte ptr [8FF0],01
	mov	byte ptr [8FF1],01

l1429_1CAB:
	cmp	byte ptr [8FF0],00
	jz	1CC7

l1429_1CB2:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1CDA

l1429_1CC7:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1CDA:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,158A
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	11B9
	call	far 2733:1016
	mov	di,15A4
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C728
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	byte ptr [8FF1],00
	jz	1D35

l1429_1D20:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1D48

l1429_1D35:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1D48:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,15D5
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	11B9
	call	far 2733:1016
	mov	di,15EF
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C783
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1622
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	al,[8FF6]
	xor	ah,ah
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1630
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C7DE
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [C839],00
	mov	di,1675
	push	cs
	push	di
	mov	di,C894
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	byte ptr [8FF2],00
	jz	1E01

l1429_1DEC:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1E14

l1429_1E01:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1E14:
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	11B9
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,167D
	push	cs
	push	di
	call	far 2733:0F97
	mov	di,9622
	push	ds
	push	di
	call	far 2733:1016
	mov	di,168B
	push	cs
	push	di
	call	far 2733:1016
	mov	di,C8EF
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,16C7
	push	cs
	push	di
	mov	di,C94A
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,1713
	push	cs
	push	di
	mov	di,C9A5
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1758
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FF8]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,1769
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CA00
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,17A6
	push	cs
	push	di
	mov	di,CA5B
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	byte ptr [8FF3],00
	jz	1EFF

l1429_1EEA:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1F12

l1429_1EFF:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1F12:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,17F6
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	4667
	call	far 2733:1016
	mov	di,1808
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CAB6
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	byte ptr [8FF4],00
	jz	1F6D

l1429_1F58:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1F80

l1429_1F6D:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1F80:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1843
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	11B9
	call	far 2733:1016
	mov	di,1851
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CB11
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	cmp	byte ptr [1429],00
	jz	1FDB

l1429_1FC6:
	mov	di,1583
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1
	jmp	1FEE

l1429_1FDB:
	mov	di,1586
	push	cs
	push	di
	mov	di,9622
	push	ds
	push	di
	mov	ax,00FF
	push	ax
	call	far 2733:0FB1

l1429_1FEE:
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,1884
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+2733]
	push	ss
	push	di
	mov	di,2733
	push	ds
	push	di
	mov	ax,0003
	push	ax
	call	11B9
	call	far 2733:1016
	mov	di,1895
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CB6C
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,18D0
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	ax,[8FFC]
	xor	dx,dx
	push	dx
	push	ax
	mov	ax,0001
	xor	dx,dx
	push	dx
	push	ax
	call	112A
	call	far 2733:1016
	mov	di,18E0
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CBC7
	push	ds
	push	di
	mov	ax,2733
	push	ax
	call	far 2733:0FB1
	lea	di,[bp+FE00]
	push	ss
	push	di
	mov	di,191D
	push	cs
	push	di
	call	far 2733:0F97
	lea	di,[bp+FF00]
	push	ss
	push	di
	mov	di,9000
	push	ds
	push	di
	mov	ax,0010
	push	ax
	call	11B9
	call	far 2733:1016
	mov	di,192B
	push	cs
	push	di
	call	far 2733:1016
	mov	di,CC22
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,1958
	push	cs
	push	di
	mov	di,CC7D
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	di,1981
	push	cs
	push	di
	mov	di,CCD8
	push	ds
	push	di
	mov	ax,005A
	push	ax
	call	far 2733:0FB1
	mov	byte ptr [CD33],00
	mov	byte ptr [CD8E],00
	mov	byte ptr [CDE9],00
	xor	ax,ax
	mov	[B1D0],ax

l1429_20EA:
	mov	ax,[B1D0]
	inc	ax
	mov	[B1D0],ax
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	mov	di,1981
	push	cs
	push	di
	call	far 2733:1088
	jz	2132

l1429_210C:
	mov	di,E26E
	push	ds
	push	di
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4

l1429_2132:
	mov	ax,005B
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,C11D
	push	ds
	push	di
	mov	di,1981
	push	cs
	push	di
	call	far 2733:1088
	jnz	20EA

l1429_214D:
	mov	di,E26E
	push	ds
	push	di
	call	far 2733:0621
	call	far 2733:04F4
	mov	sp,bp
	pop	bp
	retf

;; fn1429_2160: 1429:2160
fn1429_2160 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ah,01
	mov	ch,06
	mov	cl,07
	int	10
	pop	bp
	ret

;; fn1429_2174: 1429:2174
fn1429_2174 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ah,01
	mov	ch,7F
	int	10
	pop	bp
	ret

;; fn1429_2186: 1429:2186
fn1429_2186 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [B1D0],0001
	jmp	219C

l1429_2198:
	inc	word ptr [B1D0]

l1429_219C:
	mov	word ptr [B1D2],0001
	jmp	21A8

l1429_21A4:
	inc	word ptr [B1D2]

l1429_21A8:
	mov	ax,[B1D0]
	shl	ax,01
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],0700
	cmp	word ptr [B1D2],19
	jnz	21A4

l1429_21CF:
	mov	ax,000A
	push	ax
	call	far 26D1:02A8
	cmp	word ptr [B1D0],28
	jnz	2198

l1429_21DF:
	mov	word ptr [B1D0],0001
	jmp	21EB

l1429_21E7:
	inc	word ptr [B1D0]

l1429_21EB:
	mov	word ptr [B1D2],0001
	jmp	21F7

l1429_21F3:
	inc	word ptr [B1D2]

l1429_21F7:
	mov	ax,[B1D2]
	shl	ax,01
	mov	cx,ax
	mov	ax,[B1D0]
	shl	ax,01
	mov	dx,00A0
	mul	dx
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],0700
	cmp	word ptr [B1D2],50
	jnz	21F3

l1429_221F:
	mov	ax,0014
	push	ax
	call	far 26D1:02A8
	cmp	word ptr [B1D0],0C
	jnz	21E7

l1429_222F:
	mov	word ptr [B1D0],0001
	jmp	223B

l1429_2237:
	inc	word ptr [B1D0]

l1429_223B:
	mov	word ptr [B1D2],0001
	jmp	2247

l1429_2243:
	inc	word ptr [B1D2]

l1429_2247:
	mov	ax,[2733]
	shl	ax,01
	shl	ax,01
	dec	ax
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	si,2733
	mov	es,si
	mov	word ptr es:[di+FF5E],0700
	cmp	word ptr [B1D2],19
	jnz	2243

l1429_2271:
	mov	ax,000A
	push	ax
	call	far 26D1:02A8
	cmp	word ptr [B1D0],28
	jnz	2237

l1429_2281:
	mov	word ptr [B1D0],0001
	jmp	228D

l1429_2289:
	inc	word ptr [2733]

l1429_228D:
	mov	word ptr [B1D2],0001
	jmp	2299

l1429_2295:
	inc	word ptr [B1D2]

l1429_2299:
	mov	ax,[B1D2]
	shl	ax,01
	mov	cx,ax
	mov	ax,[B1D0]
	shl	ax,01
	dec	ax
	mov	dx,00A0
	mul	dx
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],2733
	cmp	word ptr [B1D2],50
	jnz	2295

l1429_22C2:
	mov	ax,0014
	push	ax
	call	far 26D1:02A8
	cmp	word ptr [B1D0],0D
	jnz	2289

l1429_22D2:
	pop	bp
	ret

;; fn1429_22D4: 1429:22D4
fn1429_22D4 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	al,01
	push	ax
	mov	al,01
	push	ax
	mov	al,50
	push	ax
	mov	al,19
	push	ax
	call	far 26D1:018C
	pop	bp
	ret

;; fn1429_22F1: 1429:22F1
fn1429_22F1 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,[bp+0A]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+08]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	ax,es:[di+FF5E]
	and	ax,00FF
	mov	bx,ax
	mov	ax,[bp+0A]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+08]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	es:[di+FF5E],bx
	mov	ax,[bp+06]
	mov	cl,04
	shl	ax,cl
	add	ax,[bp+04]
	mov	cl,08
	shl	ax,cl
	cwd
	push	dx
	push	ax
	mov	ax,[bp+0A]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+08]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	ax,es:[di+FF5E]
	xor	dx,dx
	pop	cx
	pop	bx
	or	ax,cx
	or	dx,bx
	mov	bx,ax
	mov	ax,[bp+0A]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+08]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	es:[di+FF5E],bx
	pop	bp
	ret	0008

;; fn1429_238B: 1429:238B
fn1429_238B proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	word ptr [B1D0],0001
	jmp	23A1

l1429_239D:
	inc	word ptr [B1D0]

l1429_23A1:
	mov	word ptr [B1D2],0001
	jmp	23AD

l1429_23A9:
	inc	word ptr [B1D2]

l1429_23AD:
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],07B1
	cmp	word ptr [B1D2],19
	jnz	23A9

l1429_23D2:
	cmp	word ptr [B1D0],50
	jnz	239D

l1429_23D9:
	pop	bp
	ret
1429:23DB                                  55 89 E5 B8 02            U....
1429:23E0 00 9A 30 05 33 27 83 EC 02 8B 46 06 48 89 46 FE ..0.3'....F.H.F.
1429:23F0 8B 46 08 40 3B 46 FE 7F 23 A3 D0 B1 EB 04 FF 06 .F.@;F..#.......
1429:2400 D0 B1 FF 36 D0 B1 FF 76 04 B8 02 00 50 B8 0F 00 ...6...v....P...
1429:2410 50 E8 DD FE A1 D0 B1 3B 46 FE 75 E2 89 EC 5D C2 P......;F.u...].
1429:2420 06 00 55 89 E5 B8 02 00 9A 30 05 33 27 83 EC 02 ..U......0.3'...
1429:2430 8B 46 06 48 89 46 FE 8B 46 08 40 3B 46 FE 7F 23 .F.H.F..F.@;F..#
1429:2440 A3 D0 B1 EB 04 FF 06 D0 B1 FF 36 D0 B1 FF 76 04 ..........6...v.
1429:2450 B8 01 00 50 B8 08 00 50 E8 96 FE A1 D0 B1 3B 46 ...P...P......;F
1429:2460 FE 75 E2 89 EC 5D C2 06 00                      .u...]...      

;; fn1429_2469: 1429:2469
fn1429_2469 proc
	push	bp
	mov	bp,sp
	mov	ax,0106
	call	far 2733:0530
	sub	sp,0106
	mov	bx,ss
	mov	es,bx
	mov	bx,ds
	cld
	lea	di,[bp+FF00]
	lds	si,[bp+06]
	lodsb
	stosb
	xchg	ax,cx
	xor	ch,ch

l1429_248B:
	rep movsb

l1429_248D:
	mov	ds,bx
	call	22D4
	mov	ax,[bp+04]
	add	ax,2733
	mov	cl,08
	shl	ax,cl
	add	ax,0020
	mov	[bp+FEFE],ax
	mov	word ptr [B1D0],0001
	jmp	24AF

l1429_24AB:
	inc	word ptr [B1D0]

l1429_24AF:
	mov	word ptr [B1D2],0001
	jmp	24BB

l1429_24B7:
	inc	word ptr [B1D2]

l1429_24BB:
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	bx,es:[di+FF5E]
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	[di+B136],bx
	cmp	word ptr [B1D2],19
	jnz	24B7

l1429_24F4:
	cmp	word ptr [B1D0],50
	jnz	24AB

l1429_24FB:
	mov	ax,[bp+0C]
	mov	[bp+FEFC],ax
	mov	ax,[bp+10]
	cmp	ax,[bp+FEFC]
	jg	255F

l1429_250B:
	mov	[B1D0],ax
	jmp	2514

l1429_2510:
	inc	word ptr [B1D0]

l1429_2514:
	mov	ax,[bp+0A]
	mov	[bp+FEFA],ax
	mov	ax,[bp+0E]
	cmp	ax,[bp+FEFA]
	jg	2556

l1429_2524:
	mov	[B1D2],ax
	jmp	252D

l1429_2529:
	inc	word ptr [B1D2]

l1429_252D:
	mov	bx,[bp+FEFE]
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D2]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	es:[di+FF5E],bx
	mov	ax,[B1D2]
	cmp	ax,[bp+FEFA]
	jnz	2529

l1429_2556:
	mov	ax,[B1D0]
	cmp	ax,[bp+FEFC]
	jnz	2510

l1429_255F:
	mov	ax,[bp+0C]
	dec	ax
	mov	[bp+FEFC],ax
	mov	ax,[bp+10]
	inc	ax
	cmp	ax,[bp+FEFC]
	jg	25BD

l1429_2571:
	mov	[B1D0],ax
	jmp	257A

l1429_2576:
	inc	word ptr [B1D0]

l1429_257A:
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0E]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FC4
	mov	ax,[B1D0]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0A]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FC4
	mov	ax,[B1D0]
	cmp	ax,[bp+FEFC]
	jnz	2576

l1429_25BD:
	mov	ax,[bp+0A]
	dec	ax
	mov	[bp+FEFC],ax
	mov	ax,[bp+0E]
	inc	ax
	cmp	ax,[bp+FEFC]
	jg	261D

l1429_25CF:
	mov	[B1D0],ax
	jmp	25D8

l1429_25D4:
	inc	word ptr [B1D0]

l1429_25D8:
	mov	ax,[bp+10]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FB3
	mov	ax,[bp+0C]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [B1D0]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FB3
	mov	ax,[B1D0]
	cmp	ax,[bp+FEFC]
	jnz	25D4

l1429_261D:
	mov	ax,[bp+10]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0E]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FDA
	mov	ax,[bp+0C]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0E]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FBF
	mov	ax,[bp+10]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0A]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FC0
	mov	ax,[bp+0C]
	shl	ax,01
	mov	cx,ax
	mov	ax,00A0
	mul	word ptr [bp+0A]
	mov	di,ax
	add	di,cx
	mov	si,B800
	mov	es,si
	mov	word ptr es:[di+FF5E],1FD9
	mov	al,07
	push	ax
	call	far 26D1:0263
	mov	al,01
	push	ax
	call	far 26D1:027D
	mov	ax,[bp+0C]
	sub	ax,[bp+10]
	cwd
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	call	far 2733:15E1
	mov	[B1D4],ax
	mov	al,[bp+FF00]
	xor	ah,ah
	xor	dx,dx
	call	far 2733:15D5
	mov	cx,0082
	xor	si,si
	xor	di,di
	call	far 2733:15C7
	push	dx
	push	bx
	push	ax
	mov	ax,[B1D4]
	cwd
	call	far 2733:15D5

;; fn0800_E972: 0800:E972
fn0800_E972 proc
	aad	15
	xor	sp,[bx]
	pop	cx
	pop	si
	pop	di
	call	far 2733:15B5
	call	far 2733:15E1
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+10]
	cwd
	add	ax,cx
	adc	dx,bx
	push	ax
	mov	al,[bp+0E]
	push	ax
	call	far 26D1:021F
	mov	di,F600
	push	ds
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	ax,[bp+0C]
	inc	ax
	inc	ax
	mov	[bp+FEFC],ax
	mov	ax,[bp+10]
	inc	ax
	inc	ax
	cmp	ax,[bp+FEFC]
	jg	E9EF

;; fn0800_E9CA: 1429:273A
fn0800_E9CA proc
	mov	[B1D0],ax
	jmp	2743

l1429_273F:
	inc	word ptr [B1D0]

l1429_2743:
	push	word ptr [B1D0]
	mov	ax,[bp+0A]
	inc	ax
	push	ax
	xor	ax,ax
	push	ax
	mov	ax,0008
	push	ax
	call	22F1
	mov	ax,[B1D0]
	cmp	ax,[bp+FEFC]
	jnz	273F

;; fn0800_E9EF: 1429:275F
fn0800_E9EF proc
	mov	ax,[bp+0A]
	inc	ax
	mov	[bp+FEFC],ax
	mov	ax,[bp+0E]
	inc	ax
	cmp	ax,[bp+FEFC]
	jg	27AA

l1429_2771:
	mov	[B1D0],ax
	jmp	277A

l1429_2776:
	inc	word ptr [B1D0]

l1429_277A:
	mov	ax,[bp+0C]
	inc	ax
	push	ax
	push	word ptr [B1D0]
	xor	ax,ax
	push	ax
	mov	ax,0008
	push	ax
	call	22F1
	mov	ax,[bp+0C]
	inc	ax
	inc	ax
	push	ax
	push	word ptr [B1D0]
	xor	ax,ax
	push	ax
	mov	ax,0008
	push	ax
	call	22F1
	mov	ax,[B1D0]
	cmp	ax,[bp+FEFC]
	jnz	2776

l1429_27AA:
	mov	ax,[bp+10]
	mov	[981E],ax
	mov	ax,[bp+0E]
	mov	[9820],ax
	mov	ax,[bp+10]
	inc	ax
	push	ax
	mov	ax,[bp+0E]
	inc	ax
	push	ax
	mov	ax,[bp+0C]
	dec	ax
	push	ax
	mov	ax,[bp+0A]
	dec	ax
	push	ax
	call	far 26D1:018C
	mov	al,01
	push	ax
	mov	al,01
	push	ax
	call	far 26D1:021F
	mov	sp,bp
	pop	bp
	ret	000E
1429:27E0 01 7E 55 89 E5 B8 02 03 9A 30 05 33 27 81 EC 02 .~U......0.3'...
1429:27F0 03 8C D3 8E C3 8C DB FC 8D BE 00 FF C5 76 08 AC .............v..
1429:2800 AA 91 30 ED F3 A4 8E DB 8A 86 00 FF 30 E4 89 86 ..0.........0...
1429:2810 FE FE B8 01 00 3B 86 FE FE 7E 03 E9 A8 00 A3 D2 .....;...~......
1429:2820 B1 EB 04 FF 06 D2 B1 B0 07 50 9A 63 02 D1 26 8D .........P.c..&.
1429:2830 BE FE FD 16 57 8D BE 00 FF 16 57 FF 36 D2 B1 B8 ....W.....W.6...
1429:2840 01 00 50 9A D5 0F 33 27 BF E0 27 0E 57 9A 88 10 ..P...3'..'.W...
1429:2850 33 27 75 36 B0 0F 50 9A 63 02 D1 26 A1 D2 B1 40 3'u6..P.c..&...@
1429:2860 A3 D2 B1 8D BE FE FC 16 57 8D BE 00 FF 16 57 FF ........W.....W.
1429:2870 36 D2 B1 B8 01 00 50 9A D5 0F 33 27 C4 7E 04 06 6.....P...3'.~..
1429:2880 57 B8 FF 00 50 9A B1 0F 33 27 BF 00 F6 1E 57 8D W...P...3'....W.
1429:2890 BE FE FD 16 57 8D BE 00 FF 16 57 FF 36 D2 B1 B8 ....W.....W.6...
1429:28A0 01 00 50 9A D5 0F 33 27 31 C0 50 9A DB 09 33 27 ..P...3'1.P...3'
1429:28B0 9A 61 08 33 27 9A F4 04 33 27 A1 D2 B1 3B 86 FE .a.3'...3'...;..
1429:28C0 FE 74 03 E9 5D FF 89 EC 5D C2 08 00 01 7E 55 89 .t..]...]....~U.
1429:28D0 E5 B8 02 02 9A 30 05 33 27 81 EC 02 02 8C D3 8E .....0.3'.......
1429:28E0 C3 8C DB FC 8D BE 00 FF C5 76 04 AC AA 91 30 ED .........v....0.
1429:28F0 F3 A4 8E DB 8A 86 00 FF 30 E4 89 86 FE FE B8 01 ........0.......
1429:2900 00 3B 86 FE FE 7E 03 E9 7E 00 A3 D2 B1 EB 04 FF .;...~..~.......
1429:2910 06 D2 B1 B0 07 50 9A 63 02 D1 26 8D BE FE FD 16 .....P.c..&.....
1429:2920 57 8D BE 00 FF 16 57 FF 36 D2 B1 B8 01 00 50 9A W.....W.6.....P.
1429:2930 D5 0F 33 27 BF CC 28 0E 57 9A 88 10 33 27 75 0F ..3'..(.W...3'u.
1429:2940 B0 0F 50 9A 63 02 D1 26 A1 D2 B1 40 A3 D2 B1 BF ..P.c..&...@....
1429:2950 00 F6 1E 57 8D BE FE FD 16 57 8D BE 00 FF 16 57 ...W.....W.....W
1429:2960 FF 36 D2 B1 B8 01 00 50 9A D5 0F 33 27 31 C0 50 .6.....P...3'1.P
1429:2970 9A DB 09 33 27 9A 61 08 33 27 9A F4 04 33 27 A1 ...3'.a.3'...3'.
1429:2980 D2 B1 3B 86 FE FE 75 87 89 EC 5D C2 04 00 0E 4B ..;...u...]....K
1429:2990 69 6C 82 70 82 73 3A 20 41 4C 54 2B 58 55 89 E5 il.p.s: ALT+XU..
1429:29A0 B8 02 00 9A 30 05 33 27 83 EC 02 8B 7E 04 36 FF ....0.3'....~.6.
1429:29B0 75 14 36 FF 75 12 36 FF 75 10 36 FF 75 0E 81 C7 u.6.u.6.u.6.u...
1429:29C0 00 FF 16 57 B8 01 00 50 E8 9E FA E8 06 F9 8B 7E ...W...P.......~
1429:29D0 04 36 8B 45 14 05 03 00 50 36 8A 45 0E 50 9A 1F .6.E....P6.E.P..
1429:29E0 02 D1 26 BF 00 F6 1E 57 BF 8E 29 0E 57 31 C0 50 ..&....W..).W1.P
1429:29F0 9A DB 09 33 27 9A 61 08 33 27 9A F4 04 33 27 8B ...3'.a.3'...3'.
1429:2A00 7E 04 36 8B 45 0A 89 46 FE B8 01 00 3B 46 FE 7F ~.6.E..F....;F..
1429:2A10 1E A3 D0 B1 EB 04 FF 06 D0 B1 8B 3E D0 B1 B1 08 ...........>....
1429:2A20 D3 E7 C6 85 D0 97 00 A1 D0 B1 3B 46 FE 75 E7 8B ..........;F.u..
1429:2A30 7E 04 36 8B 45 0A 89 46 FE B8 01 00 3B 46 FE 7E ~.6.E..F....;F.~
1429:2A40 03 E9 B3 00 A3 D0 B1 EB 04 FF 06 D0 B1 B8 51 00 ..............Q.
1429:2A50 F7 26 D0 B1 8B C8 8B 7E 04 B8 88 02 36 F7 65 0C .&.....~....6.e.
1429:2A60 8B F8 03 F9 8A 85 65 D0 30 E4 31 D2 9A D5 15 33 ......e.0.1....3
1429:2A70 27 B9 82 00 31 F6 31 FF 9A C7 15 33 27 9A E1 15 '...1.1....3'...
1429:2A80 33 27 8B C8 8B DA 8B 7E 04 36 8B 45 14 40 03 06 3'.....~.6.E.@..
1429:2A90 D4 B1 99 2B C1 1B D3 8B 3E D0 B1 D1 E7 89 85 9C ...+....>.......
1429:2AA0 98 8B 3E D0 B1 D1 E7 8A 85 9C 98 50 8B 7E 04 36 ..>........P.~.6
1429:2AB0 8B 45 12 40 03 06 D0 B1 50 9A 1F 02 D1 26 B8 51 .E.@....P....&.Q
1429:2AC0 00 F7 26 D0 B1 8B C8 8B 7E 04 B8 88 02 36 F7 65 ..&.....~....6.e
1429:2AD0 0C 8B F8 03 F9 81 C7 65 D0 1E 57 8B 3E D0 B1 B1 .......e..W.>...
1429:2AE0 08 D3 E7 81 C7 D0 97 1E 57 E8 F6 FC A1 D0 B1 3B ........W......;
1429:2AF0 46 FE 74 03 E9 52 FF 8B 7E 04 36 8B 45 14 40 50 F.t..R..~.6.E.@P
1429:2B00 36 8B 45 12 40 50 9A 1F 02 D1 26 8B 7E 04 36 8B 6.E.@P....&.~.6.
1429:2B10 45 08 A3 D6 B1 36 FF 75 14 36 FF 75 10 36 8B 45 E....6.u.6.u.6.E
1429:2B20 12 40 03 06 D6 B1 50 E8 B1 F8 89 EC 5D C2 02 00 .@....P.....]...
1429:2B30 01 00 02 00 48 02 00 50 01 0D 02 00 3B 02 00 2D ....H..P....;..-
1429:2B40 01 1B 55 89 E5 B8 00 03 9A 30 05 33 27 81 EC 00 ..U......0.3'...
1429:2B50 03 8C D3 8E C3 8C DB FC 8D BE 00 FF C5 76 04 AC .............v..
1429:2B60 AA 91 30 ED F3 A4 8E DB 55 E8 31 FE 8D BE 00 FE ..0.....U.1.....
1429:2B70 16 57 9A 1A 03 D1 26 50 9A B3 10 33 27 BF 24 98 .W....&P...3'.$.
1429:2B80 1E 57 B8 78 00 50 9A B1 0F 33 27 BF 24 98 1E 57 .W.x.P...3'.$..W
1429:2B90 BF 30 2B 0E 57 9A 88 10 33 27 75 34 8D BE 00 FD .0+.W...3'u4....
1429:2BA0 16 57 BF 24 98 1E 57 9A 97 0F 33 27 8D BE 00 FE .W.$..W...3'....
1429:2BB0 16 57 9A 1A 03 D1 26 50 9A B3 10 33 27 9A 16 10 .W....&P...3'...
1429:2BC0 33 27 BF 24 98 1E 57 B8 78 00 50 9A B1 0F 33 27 3'.$..W.x.P...3'
1429:2BD0 FF 76 14 FF 76 10 8B 46 12 40 03 06 D6 B1 50 E8 .v..v..F.@....P.
1429:2BE0 40 F8 8B 3E D6 B1 D1 E7 8A 85 9C 98 50 8B 46 12 @..>........P.F.
1429:2BF0 40 03 06 D6 B1 50 9A 1F 02 D1 26 B8 51 00 F7 26 @....P....&.Q..&
1429:2C00 D6 B1 8B C8 B8 88 02 F7 66 0C 8B F8 03 F9 81 C7 ........f.......
1429:2C10 65 D0 1E 57 E8 B7 FC BF 24 98 1E 57 BF 32 2B 0E e..W....$..W.2+.
1429:2C20 57 9A 88 10 33 27 75 07 A1 D6 B1 48 A3 D6 B1 BF W...3'u....H....
1429:2C30 24 98 1E 57 BF 35 2B 0E 57 9A 88 10 33 27 75 07 $..W.5+.W...3'u.
1429:2C40 A1 D6 B1 40 A3 D6 B1 BF 24 98 1E 57 BF 32 2B 0E ...@....$..W.2+.
1429:2C50 57 9A 88 10 33 27 75 03 E9 A6 00 BF 24 98 1E 57 W...3'u.....$..W
1429:2C60 BF 35 2B 0E 57 9A 88 10 33 27 75 03 E9 92 00 BF .5+.W...3'u.....
1429:2C70 24 98 1E 57 BF 38 2B 0E 57 9A 88 10 33 27 75 03 $..W.8+.W...3'u.
1429:2C80 E9 7E 00 BF 24 98 1E 57 BF 3A 2B 0E 57 9A 88 10 .~..$..W.:+.W...
1429:2C90 33 27 74 6D BF 24 98 1E 57 BF 3D 2B 0E 57 9A 88 3'tm.$..W.=+.W..
1429:2CA0 10 33 27 74 5C 8B 46 0A 89 86 FE FE B8 01 00 3B .3't\.F........;
1429:2CB0 86 FE FE 7F 4C A3 D0 B1 EB 04 FF 06 D0 B1 A0 25 ....L..........%
1429:2CC0 98 50 9A 59 1C 33 27 50 8B 3E D0 B1 B1 08 D3 E7 .P.Y.3'P.>......
1429:2CD0 8A 85 D1 97 50 9A 59 1C 33 27 5A 3A C2 75 19 A1 ....P.Y.3'Z:.u..
1429:2CE0 D0 B1 A3 D6 B1 BF 38 2B 0E 57 BF 24 98 1E 57 B8 ......8+.W.$..W.
1429:2CF0 78 00 50 9A B1 0F 33 27 A1 D0 B1 3B 86 FE FE 75 x.P...3'...;...u
1429:2D00 B9 83 3E D6 B1 01 7D 06 C7 06 D6 B1 01 00 A1 D6 ..>...}.........
1429:2D10 B1 3B 46 0A 7E 06 8B 46 0A A3 D6 B1 FF 76 14 FF .;F.~..F.....v..
1429:2D20 76 10 8B 46 12 40 03 06 D6 B1 50 E8 AD F6 BF 24 v..F.@....P....$
1429:2D30 98 1E 57 BF 38 2B 0E 57 9A 88 10 33 27 74 25 BF ..W.8+.W...3't%.
1429:2D40 24 98 1E 57 BF 3D 2B 0E 57 9A 88 10 33 27 74 14 $..W.=+.W...3't.
1429:2D50 BF 24 98 1E 57 BF 40 2B 0E 57 9A 88 10 33 27 74 .$..W.@+.W...3't
1429:2D60 03 E9 08 FE BF 24 98 1E 57 BF 3D 2B 0E 57 9A 88 .....$..W.=+.W..
1429:2D70 10 33 27 74 11 BF 24 98 1E 57 BF 40 2B 0E 57 9A .3't..$..W.@+.W.
1429:2D80 88 10 33 27 75 06 C7 06 D6 B1 FF FF 89 EC 5D C2 ..3'u.........].
1429:2D90 12 00 01 5C 09 73 65 74 75 70 2E 68 6C 70 1D 56 ...\.setup.hlp.V
1429:2DA0 45 53 41 20 31 2E 32 20 28 70 6C 2E 20 54 72 69 ESA 1.2 (pl. Tri
1429:2DB0 64 65 6E 74 2C 20 53 33 2E 2E 2E 29 1D 56 45 53 dent, S3...).VES
1429:2DC0 41 20 73 74 61 6E 64 61 72 64 20 28 70 6C 2E 20 A standard (pl. 
1429:2DD0 43 69 72 72 75 73 2E 2E 2E 29 22 7E 4E 6F 20 4D Cirrus...)"~No M
1429:2DE0 75 73 69 63 20 20 20 20 20 20 20 20 20 20 20 20 usic            
1429:2DF0 20 20 20 20 20 20 28 63 73 65 6E 64 29 22 7E 53       (csend)"~S
1429:2E00 70 65 61 6B 65 72 20 20 20 20 20 20 20 20 20 20 peaker          
1429:2E10 20 20 20 20 20 20 20 28 63 73 69 70 6F 67 A2 29        (csipog.)
1429:2E20 22 50 61 72 61 6C 6C 65 6C 20 7E 44 61 63 20 20 "Parallel ~Dac  
1429:2E30 20 20 20 20 20 20 20 20 28 70 6C 2E 3A 43 6F 76         (pl.:Cov
1429:2E40 6F 78 29 22 7E 53 6F 75 6E 64 20 42 6C 61 73 74 ox)"~Sound Blast
1429:2E50 65 72 20 20 20 20 20 20 20 20 20 20 20 20 20 20 er              
1429:2E60 28 6D 6F 6E 6F 29 22 53 6F 75 6E 64 20 42 6C 61 (mono)"Sound Bla
1429:2E70 73 74 65 72 20 7E 50 72 6F 20 20 20 20 20 20 20 ster ~Pro       
1429:2E80 20 28 73 74 65 72 65 6F 29 22 53 6F 75 6E 64 20  (stereo)"Sound 
1429:2E90 42 6C 61 73 74 65 72 20 31 7E 36 20 41 53 50 20 Blaster 1~6 ASP 
1429:2EA0 20 20 20 20 28 73 74 65 72 65 6F 29 22 7E 47 72     (stereo)"~Gr
1429:2EB0 61 76 69 73 20 55 6C 74 72 61 53 6F 75 6E 64 20 avis UltraSound 
1429:2EC0 20 20 20 20 20 28 73 75 72 72 6F 75 6E 64 29 03      (surround).
1429:2ED0 32 31 30 03 32 32 30 03 32 33 30 03 32 34 30 03 210.220.230.240.
1429:2EE0 32 35 30 03 32 36 30 01 32 01 33 01 35 01 37 02 250.260.2.3.5.7.
1429:2EF0 31 31 02 31 32 02 31 35 01 31 01 36 05 38 20 4B 11.12.15.1.6.8 K
1429:2F00 68 7A 06 31 32 20 4B 68 7A 06 31 36 20 4B 68 7A hz.12 Khz.16 Khz
1429:2F10 06 32 32 20 4B 68 7A 06 33 32 20 4B 68 7A 06 34 .22 Khz.32 Khz.4
1429:2F20 34 20 4B 68 7A 1E 41 20 42 4F 4F 53 54 45 52 20 4 Khz.A BOOSTER 
1429:2F30 53 45 54 55 50 20 6D 65 67 73 7A 61 6B A1 74 76 SETUP megszak.tv
1429:2F40 61 2E 2E 2E 00 48 20 42 4F 4F 53 54 45 52 20 6C a....H BOOSTER l
1429:2F50 65 6D 65 7A A3 6A 73 A0 67 20 53 45 54 55 50 20 emez.js.g SETUP 
1429:2F60 76 31 2E 30 20 20 20 20 20 20 20 20 20 20 20 20 v1.0            
1429:2F70 20 20 20 20 20 20 20 20 28 63 29 20 31 39 39 36         (c) 1996
1429:2F80 20 4B 94 72 94 7A 73 69 20 54 61 6D A0 73 0D 20  K.r.zsi Tam.s. 
1429:2F90 56 69 64 65 6F 6B A0 72 74 79 61 20 19 20 41 20 Videok.rtya . A 
1429:2FA0 62 65 A0 6C 6C A1 74 A0 73 6F 6B 20 6D 65 6E 74 be.ll.t.sok ment
1429:2FB0 82 73 65 2E 2E 2E                               .se...         

;; fn1429_2FB6: 1429:2FB6
fn1429_2FB6 proc
	push	bp
	mov	bp,sp
	mov	ax,0200
	call	far 2733:0530
	sub	sp,0200
	call	0000
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:0D14
	pop	di
	pop	es
	mov	al,es:[di]
	xor	ah,ah
	mov	[B1D0],ax

l1429_2FE0:
	lea	di,[bp+FE00]
	push	ss
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:0D14
	push	word ptr [B1D0]
	mov	ax,0001
	push	ax
	call	far 2733:0FD5
	mov	di,2D92
	push	cs
	push	di
	call	far 2733:1088
	jz	301A

l1429_300D:
	cmp	word ptr [B1D0],00
	jle	301A

l1429_3014:
	dec	word ptr [B1D0]
	jmp	2FE0

l1429_301A:
	lea	di,[bp+FE00]
	push	ss
	push	di
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:0D14
	mov	ax,0001
	push	ax
	push	word ptr [B1D0]
	call	far 2733:0FD5
	mov	di,9554
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	call	0CA2
	cmp	al,01
	jnz	3053

l1429_3050:
	jmp	34AA

l1429_3053:
	call	2174
	mov	di,2D94
	push	cs
	push	di
	mov	di,979E
	push	ds
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1
	mov	di,2D9E
	push	cs
	push	di
	mov	di,D33E
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2DBC
	push	cs
	push	di
	mov	di,D38F
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2DDA
	push	cs
	push	di
	mov	di,D5C6
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2DFD
	push	cs
	push	di
	mov	di,D617
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2E20
	push	cs
	push	di
	mov	di,D668
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2E43
	push	cs
	push	di
	mov	di,D6B9
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2E66
	push	cs
	push	di
	mov	di,D70A
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2E89
	push	cs
	push	di
	mov	di,D75B
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EAC
	push	cs
	push	di
	mov	di,D7AC
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2ECF
	push	cs
	push	di
	mov	di,D84E
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2ED3
	push	cs
	push	di
	mov	di,D89F
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2ED7
	push	cs
	push	di
	mov	di,D8F0
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EDB
	push	cs
	push	di
	mov	di,D941
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EDF
	push	cs
	push	di
	mov	di,D992
	push	ds
	push	di
	mov	ax,0050
	push	ax

;; fn1429_316E: 1429:316E
fn1429_316E proc
	call	far 2733:0FB1
	mov	di,2EE3
	push	cs
	push	di
	mov	di,D9E3
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EE7
	push	cs
	push	di
	mov	di,DAD6
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EE9
	push	cs
	push	di
	mov	di,DB27
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EEB
	push	cs
	push	di
	mov	di,DB78
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EED
	push	cs
	push	di
	mov	di,DBC9
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EEF
	push	cs
	push	di
	mov	di,DC1A
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EF2
	push	cs
	push	di
	mov	di,DC6B
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EF5
	push	cs
	push	di
	mov	di,DCBC
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EF8
	push	cs
	push	di
	mov	di,DD5E
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EE9
	push	cs
	push	di
	mov	di,DDAF
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EEB
	push	cs
	push	di
	mov	di,DE00
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EFA
	push	cs
	push	di
	mov	di,DE51
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2733
	push	cs
	push	di
	mov	di,DEA2
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2EFC
	push	cs
	push	di
	mov	di,2733
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2F02
	push	cs
	push	di
	mov	di,E037
	push	ds
	push	di
	mov	ax,2733
	push	ax
	call	far 2733:0FB1
	mov	di,2F09
	push	cs
	push	di
	mov	di,E088
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2F10
	push	cs
	push	di
	mov	di,E0D9
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2F17
	push	cs
	push	di
	mov	di,E12A
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	mov	di,2F1E
	push	cs
	push	di
	mov	di,E17B
	push	ds
	push	di
	mov	ax,0050
	push	ax
	call	far 2733:0FB1
	call	far 1774:09D9
	mov	[9822],ax
	cmp	word ptr [9822],00
	jnz	3313

l1429_32EB:
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,2F25
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l1429_3313:
	mov	ax,[E3FC]
	mov	[8FEA],ax
	mov	ax,[E3FE]
	mov	[8FEC],ax
	mov	al,[E400]
	mov	[8FE5],al
	mov	al,[E402]
	mov	[8FE6],al
	mov	ax,[E406]
	mov	[8FEE],ax
	mov	ax,[E408]
	mov	[8FE8],ax
	cmp	word ptr [8FE8],05
	jnz	3348

l1429_333E:
	mov	byte ptr [8FF0],00
	mov	byte ptr [8FF1],00

l1429_3348:
	cmp	word ptr [8FE8],06
	jnz	3359

l1429_334F:
	mov	byte ptr [8FF0],01
	mov	byte ptr [8FF1],00

l1429_3359:
	cmp	word ptr [8FE8],09
	jnz	336A

l1429_3360:
	mov	byte ptr [8FF0],00
	mov	byte ptr [8FF1],01

l1429_336A:
	cmp	word ptr [8FE8],0A
	jnz	337B

l1429_3371:
	mov	byte ptr [8FF0],01
	mov	byte ptr [2733],01

l1429_337B:
	call	238B
	mov	ax,0003
	push	ax
	mov	ax,0002
	push	ax
	mov	ax,004D
	push	ax
	mov	ax,0004
	push	ax
	mov	di,2F44
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	2469
	mov	di,F600
	push	ds
	push	di
	mov	di,2F45
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	ax,0014
	push	ax
	mov	ax,000C
	push	ax
	mov	ax,003C
	push	ax
	mov	ax,0011
	push	ax
	mov	ax,0001
	push	ax
	mov	ax,0002
	push	ax
	mov	ax,0001
	push	ax
	mov	di,2F8E
	push	cs
	push	di
	call	5B0C
	cmp	word ptr [B1D6],FF
	jnz	3413

l1429_33E0:
	mov	al,00
	push	ax
	call	far 26D1:027D
	call	2160
	call	far 26D1:01CC
	mov	di,F600
	push	ds
	push	di
	mov	di,2F25
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l1429_3413:
	mov	al,[B1D6]
	mov	[8FE4],al
	call	238B
	mov	ax,0003
	push	ax
	mov	ax,0002
	push	ax
	mov	ax,004D
	push	ax
	mov	ax,0004
	push	ax
	mov	di,2F44
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	2469
	mov	di,F600
	push	ds
	push	di
	mov	di,2F45
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	mov	ax,0019
	push	ax
	mov	ax,000D
	push	ax
	mov	ax,0037
	push	ax
	mov	ax,000F
	push	ax
	mov	di,2F44
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	2469
	mov	di,F600
	push	ds
	push	di
	mov	di,2F9C
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	call	22D4
	push	cs
	call	5BC4
	call	2186
	call	2160
	mov	al,07
	push	ax
	call	far 26D1:0263
	mov	al,00
	push	ax
	call	far 26D1:027D
	call	2160

l1429_34AA:
	mov	sp,bp
	pop	bp
	retf
1429:34AE                                           00 00               ..
;;; Segment 1774 (1774:0000)

;; fn1774_0000: 1774:0000
fn1774_0000 proc
	push	si
	push	03
	call	far 183D:014F
	push	1A
	call	far 183D:015E
	push	00010001
	push	00500019
	push	10
	call	far 183D:00E0
	push	00150001
	push	dword ptr [07E0]
	push	13
	push	27
	call	far 183D:0062
	push	00150002
	push	ds
	push	095A
	call	far 183D:0010
	push	000D0018
	push	ds
	push	0960
	push	13
	push	37
	call	far 183D:0062
	push	00070004
	push	ds
	push	0998
	call	far 183D:0010
	push	00070005
	push	ds
	push	09A1
	call	far 183D:0010
	push	00070006
	push	ds
	push	09AB
	call	far 183D:0010
	mov	si,0007
	jmp	0098

l1774_008B:
	push	07
	push	si
	push	ds
	push	09BD
	call	far 183D:0010
	inc	si

l1774_0098:
	cmp	si,15
	jl	008B

l1774_009D:
	push	00070015
	push	ds
	push	09CF
	call	far 183D:0010
	push	00070016
	push	ds
	push	09E1
	call	far 183D:0010
	pop	si
	retf

;; fn1774_00BD: 1774:00BD
fn1774_00BD proc
	enter	000A,00
	push	si
	push	di
	mov	si,[bp+10]
	xor	di,di
	mov	word ptr [bp-02],0000
	push	00080005
	push	ds
	push	09EA
	push	70
	push	42
	call	far 183D:0062
	push	dword ptr [bp+06]
	call	far 2128:0013
	cwd
	sub	ax,dx
	sar	ax,01
	mov	dx,0028
	sub	dx,ax
	push	dx
	push	05
	push	dword ptr [bp+06]
	push	70
	push	dword ptr [bp+06]
	call	far 2128:0013
	push	ax
	call	far 183D:0062
	jmp	01D1

l1774_010E:
	mov	word ptr [bp-04],0000

l1774_0113:
	mov	ax,[bp-04]
	add	ax,0007
	mov	[bp-08],ax
	mov	ax,[bp+0E]
	sub	ax,di
	cmp	ax,[bp-04]
	jle	0169

l1774_0126:
	mov	ax,[bp-04]
	add	ax,di
	cmp	ax,si
	jz	0136

l1774_012F:
	mov	word ptr [bp-06],0070
	jmp	013B

l1774_0136:
	mov	word ptr [bp-06],0007

l1774_013B:
	push	0A
	push	word ptr [bp-08]
	push	20
	mov	al,[bp-06]
	push	ax
	call	far 183D:0128
	push	0B
	push	word ptr [bp-08]
	mov	ax,[bp-04]
	add	ax,di
	shl	ax,02
	les	bx,[bp+0A]
	add	bx,ax
	push	dword ptr es:[bx]
	mov	al,[bp-06]
	push	ax
	push	3D
	jmp	0176

l1774_0169:
	push	0A
	push	word ptr [bp-08]
	push	ds
	push	09EB
	push	70
	push	3E

l1774_0176:
	call	far 183D:0062
	inc	word ptr [bp-04]
	cmp	word ptr [bp-04],0E
	jl	0113

l1774_0184:
	call	far 2128:0000
	mov	[bp-0A],ax
	mov	cx,0004
	mov	bx,01E1

l1774_0192:
	mov	ax,cs:[bx]
	cmp	ax,[bp-0A]
	jz	01A1

l1774_019A:
	add	bx,02
	loop	0192

l1774_019F:
	jmp	01D1

l1774_01A1:
	jmp	word ptr cs:[bx+08]
1774:01A5                EB 33 EB 31 8B C6 EB 30 0B F6 7E      .3.1...0..~
1774:01B0 01 4E 3B F7 7D 1B 8B FE EB 17 8B 46 0E 48 3B C6 .N;.}......F.H;.
1774:01C0 7E 01 46 8B C7 05 0D 00 3B C6 7D 05 8B FE 83 C7 ~.F.....;.}.....
1774:01D0 F3                                              .              

l1774_01D1:
	cmp	word ptr [bp-02],00
	jnz	01DA

l1774_01D7:
	jmp	010E

l1774_01DA:
	mov	ax,FFFF
	pop	di
	pop	si
	leave
	retf
1774:01E1    0D 00 1B 00 48 01 50 01 A9 01 A7 01 AD 01 BA  ....H.P........
1774:01F0 01                                              .              

;; fn1774_01F1: 1774:01F1
fn1774_01F1 proc
	enter	0004,00
	push	si
	push	di
	push	dword ptr [bp+06]
	call	far 2128:0013
	add	ax,0002
	mov	di,ax
	inc	ax
	cwd
	sub	ax,dx
	sar	ax,01
	mov	si,0028
	sub	si,ax
	push	si
	push	0A
	push	DB
	push	3B
	call	far 183D:0128
	mov	ax,si
	inc	ax
	push	ax
	push	0A
	push	DF
	push	3B
	push	di
	call	far 183D:0177
	mov	ax,si
	add	ax,di
	inc	ax
	push	ax
	push	0A
	push	DB
	push	38
	call	far 183D:0128
	push	si
	push	0B
	push	ds
	push	09EC
	call	far 183D:0010
	mov	ax,si
	add	ax,di
	push	ax
	push	0B
	push	ds
	push	09F1
	call	far 183D:0010
	mov	ax,si
	add	ax,0002
	push	ax
	push	0B
	push	dword ptr [bp+06]
	push	30
	mov	ax,di
	add	ax,FFFE
	push	ax
	call	far 183D:0062
	push	si
	push	0C
	push	ds
	push	09F6
	call	far 183D:0010
	mov	ax,si
	add	ax,0003
	push	ax
	push	0C
	push	C4
	push	38
	mov	ax,di
	add	ax,FFFC
	push	ax
	call	far 183D:0177
	mov	ax,si
	add	ax,di
	dec	ax
	push	ax
	push	0C
	push	ds
	push	09FE
	call	far 183D:0010
	push	si
	push	0D
	push	ds
	push	0A06
	call	far 183D:0010
	mov	ax,si
	add	ax,0003
	push	ax
	push	0D
	push	20
	push	30
	mov	ax,di
	add	ax,FFFC
	push	ax
	call	far 183D:0177
	mov	ax,si
	add	ax,di
	dec	ax
	push	ax
	push	0D
	push	ds
	push	0A0E
	call	far 183D:0010
	push	si
	push	0E
	push	ds
	push	0A16
	call	far 183D:0010
	mov	ax,si
	add	ax,0003
	push	ax
	push	0E
	push	C4
	push	3B
	mov	ax,di
	add	ax,FFFC
	push	ax
	call	far 183D:0177
	mov	ax,si
	add	ax,di
	dec	ax
	push	ax
	push	0E
	push	ds
	push	0A1E
	call	far 183D:0010
	push	si
	push	0F
	push	DB
	push	3B
	call	far 183D:0128
	mov	ax,si
	inc	ax
	push	ax
	push	0F
	push	DC
	push	38
	push	di
	call	far 183D:0177
	mov	ax,si
	add	ax,di
	inc	ax
	push	ax
	push	0F
	push	DB
	push	38
	call	far 183D:0128
	xor	di,di
	mov	word ptr [bp-02],0000
	mov	word ptr [bp-04],0000
	les	bx,[bp+0C]

l1774_034A:
	mov	byte ptr es:[bx],00
	jmp	03D0

l1774_0351:
	mov	ax,si
	add	ax,0003
	push	ax
	push	0D
	push	dword ptr [bp+0C]
	push	30
	push	word ptr [bp+0A]
	call	far 183D:0062
	push	dword ptr [bp+0C]
	call	far 2128:0013
	mov	dx,si
	add	dx,ax
	add	dx,03
	push	dx
	push	0D
	call	far 183D:015E
	call	far 2128:0000
	mov	dx,ax
	cmp	ax,2733
	jz	03A8

l1774_038B:
	cmp	ax,000D
	jz	039C

l1774_0390:
	cmp	ax,001B
	jnz	03AF

l1774_0395:
	mov	word ptr [bp-04],0000
	jmp	03A1

l1774_039C:
	mov	word ptr [bp-04],0001

l1774_03A1:
	mov	word ptr [bp-02],0001
	jmp	03D0

l1774_03A8:
	or	di,di
	jle	03D0

l1774_03AC:
	dec	di
	jmp	03C8

l1774_03AF:
	cmp	dx,20
	jl	03D0

l1774_03B4:
	cmp	dx,00FF
	jg	03D0

l1774_03BA:
	cmp	di,[bp+0A]
	jge	03D0

l1774_03BF:
	les	bx,[bp+0C]
	add	bx,di
	mov	es:[bx],dl
	inc	di

l1774_03C8:
	les	bx,[bp+0C]
	add	bx,di
	jmp	034A

l1774_03D0:
	cmp	word ptr [bp-02],00
	jnz	03D9

l1774_03D6:
	jmp	0351

l1774_03D9:
	push	0001001A
	call	far 183D:015E
	cmp	word ptr [bp-04],01
	jnz	03EF

l1774_03EA:
	mov	ax,0001
	jmp	03F1

l1774_03EF:
	xor	ax,ax

l1774_03F1:
	pop	di
	pop	si
	leave
	retf

;; fn1774_03F5: 1774:03F5
fn1774_03F5 proc
	enter	0014,00
	push	si
	push	di
	mov	word ptr [bp-0E],0000
	mov	word ptr [bp-10],0000

l1774_0405:
	mov	bx,[bp-10]
	shl	bx,02
	les	bx,[bx+07CC]
	mov	ax,[bp-0E]
	add	ax,es:[bx+0A]
	mov	[bp-0E],ax
	inc	word ptr [bp-10]
	cmp	word ptr [bp-10],05
	jl	0405

l1774_0422:
	shl	ax,02
	push	ax
	push	ss
	lea	ax,[bp-04]
	push	ax
	call	far 21A1:0000
	mov	dx,ax
	or	ax,ax
	jz	043C

l1774_0436:
	push	ax
	call	far 1858:0000

l1774_043C:
	mov	ax,[bp-0E]
	shl	ax,01
	push	ax
	push	ss
	lea	ax,[bp-08]
	push	ax
	call	far 21A1:0000
	mov	dx,ax
	or	ax,ax
	jz	0458

l1774_0452:
	push	ax
	call	far 1858:0000

l1774_0458:
	mov	ax,[bp-0E]
	shl	ax,01
	push	ax
	push	ss
	lea	ax,[bp-0C]
	push	ax
	call	far 21A1:0000
	mov	dx,ax
	or	ax,ax
	jz	0474

l1774_046E:
	push	ax
	call	far 1858:0000

l1774_0474:
	xor	di,di
	mov	word ptr [bp-10],0000

l1774_047B:
	mov	bx,[bp-10]
	shl	bx,02
	mov	ax,[bx+07CE]
	mov	dx,[bx+07CC]
	mov	[bp-12],ax
	mov	[bp-14],dx
	xor	cx,cx
	jmp	04D9

l1774_0493:
	mov	ax,di
	shl	ax,01
	les	bx,[bp-08]
	add	bx,ax
	mov	ax,[bp-10]
	mov	es:[bx],ax
	les	bx,[bp-14]
	les	bx,es:[bx+14]
	mov	ax,cx
	shl	ax,02
	add	bx,ax
	mov	ax,es:[bx+02]
	mov	dx,es:[bx]
	mov	bx,di
	shl	bx,02
	les	si,[bp-04]
	add	si,bx
	mov	es:[si+02],ax
	mov	es:[si],dx
	mov	ax,di
	shl	ax,01
	les	bx,[bp-0C]
	add	bx,ax
	mov	ax,cx
	inc	ax
	mov	es:[bx],ax
	inc	di
	inc	cx

l1774_04D9:
	les	bx,[bp-14]
	cmp	es:[bx+0A],cx
	ja	0493

l1774_04E2:
	inc	word ptr [bp-10]
	cmp	word ptr [bp-10],05
	jl	047B

l1774_04EB:
	call	far 1858:0090
	mov	ax,[E3FC]
	mov	[E3F0],ax
	xor	di,di
	cmp	word ptr [E3FC],FF
	jz	0536

l1774_04FF:
	xor	cx,cx
	cmp	cx,[bp-0E]
	jge	0536

l1774_0506:
	mov	ax,cx
	shl	ax,01
	les	bx,[bp-08]
	add	bx,ax
	mov	ax,es:[bx]
	cmp	ax,[E3FC]
	jnz	0530

l1774_0518:
	mov	ax,cx
	shl	ax,01
	les	bx,[bp-0C]
	add	bx,ax
	mov	ax,es:[bx]
	les	bx,[E3F2]
	cmp	ax,es:[bx+08]
	jnz	0530

l1774_052E:
	mov	di,cx

l1774_0530:
	inc	cx
	cmp	cx,[bp-0E]
	jl	0506

l1774_0536:
	push	di
	push	word ptr [bp-0E]
	push	dword ptr [bp-04]
	push	ds
	push	21BB
	push	cs
	call	00BD
	add	sp,0C
	mov	di,ax
	cmp	di,FF
	jz	058C

l1774_0550:
	shl	ax,01
	les	bx,[bp-08]
	add	bx,ax
	mov	ax,es:[bx]
	mov	[E3FC],ax
	mov	ax,di
	shl	ax,01
	les	bx,[bp-0C]
	add	bx,ax
	mov	ax,es:[bx]
	mov	[21BB],ax
	mov	bx,[E3FC]
	shl	bx,02
	mov	ax,[bx+07CE]
	mov	dx,[bx+07CC]
	mov	[E3F4],ax
	mov	[E3F2],dx
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	0594

l1774_058C:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_0594:
	push	dword ptr [bp-04]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	05A9

l1774_05A3:
	push	ax
	call	far 1858:0000

l1774_05A9:
	push	dword ptr [bp-08]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	05BE

l1774_05B8:
	push	ax
	call	far 1858:0000

l1774_05BE:
	push	dword ptr [bp-0C]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	05D3

l1774_05CD:
	push	ax
	call	far 1858:0000

l1774_05D3:
	xor	ax,ax
	pop	di
	pop	si
	leave
	retf

;; fn1774_05D9: 1774:05D9
fn1774_05D9 proc
	enter	21BB,00
	push	si
	push	di
	les	bx,[E3F2]
	mov	di,es:[bx+18]
	mov	ax,[E3FC]
	cmp	ax,[E3F0]
	jz	0605

l1774_05F0:
	push	ss
	lea	ax,[bp-0C]
	push	ax
	call	dword ptr es:[bx+1E]
	mov	dx,ax
	or	ax,ax
	jz	0605

l1774_05FF:
	push	ax
	call	far 1858:0000

l1774_0605:
	mov	ax,di
	inc	ax
	shl	ax,02
	push	ax
	push	ss
	lea	ax,[bp-04]
	push	ax
	call	far 21A1:0000
	mov	dx,ax
	or	ax,ax
	jz	0622

l1774_061C:
	push	ax
	call	far 1858:0000

l1774_0622:
	les	bx,[E3F2]
	mov	eax,es:[bx+1A]
	mov	[bp-08],eax
	mov	word ptr [bp-0A],0000
	xor	si,si
	cmp	si,di
	jl	063D

l1774_063A:
	jmp	0702

l1774_063D:
	push	05
	mov	ax,si
	shl	ax,02
	mov	dx,[bp-04]
	add	dx,ax
	push	word ptr [bp-02]
	push	dx
	call	far 21A1:0000
	mov	dx,ax
	or	ax,ax
	jz	065E

l1774_0658:
	push	ax
	call	far 1858:0000

l1774_065E:
	mov	ax,si
	shl	ax,01
	les	bx,[bp-08]
	add	bx,ax
	mov	cx,es:[bx]
	mov	ax,cx
	sar	ax,08
	les	bx,[07E4]
	add	bx,ax
	mov	al,es:[bx]
	mov	dx,si
	shl	dx,02
	les	bx,[bp-04]
	add	bx,dx
	les	bx,es:[bx]
	mov	es:[bx],al
	mov	ax,cx
	sar	ax,04
	and	ax,000F
	les	bx,[07E4]
	add	bx,ax
	mov	al,es:[bx]
	mov	dx,si
	shl	dx,02
	les	bx,[bp-04]
	add	bx,dx
	les	bx,es:[bx]
	mov	es:[bx+01],al
	mov	ax,cx
	and	ax,000F
	les	bx,[07E4]
	add	bx,ax
	mov	al,es:[bx]
	mov	dx,si
	shl	dx,02
	les	bx,[bp-04]
	add	bx,dx
	les	bx,es:[bx]
	mov	es:[bx+02],al
	mov	ax,si
	shl	ax,02
	les	bx,[bp-04]
	add	bx,ax
	les	bx,es:[bx]
	mov	byte ptr es:[bx+03],68
	mov	ax,si
	shl	ax,02
	les	bx,[bp-04]
	add	bx,ax
	les	bx,es:[bx]
	mov	byte ptr es:[bx+04],00
	les	bx,[E3F2]
	cmp	es:[bx+04],cx
	jnz	06FA

l1774_06F7:
	mov	[bp-0A],si

l1774_06FA:
	inc	si
	cmp	si,di
	jge	0702

l1774_06FF:
	jmp	063D

l1774_0702:
	mov	ax,di
	shl	ax,02
	les	bx,[bp-04]
	add	bx,ax
	mov	es:[bx+02],ds
	mov	word ptr es:[bx],0A38
	push	word ptr [bp-0A]
	mov	ax,di
	inc	ax
	push	ax
	push	dword ptr [bp-04]
	push	ds
	push	0A3E
	push	cs
	call	00BD
	add	sp,0C
	mov	si,ax
	cmp	si,FF
	jz	078B

l1774_0732:
	cmp	si,di
	jz	0742

l1774_0736:
	shl	ax,01
	les	bx,[bp-08]
	add	bx,ax
	mov	ax,es:[bx]
	jmp	077E

l1774_0742:
	mov	dword ptr [bp-10],FFFFFFFF
	jmp	0774

l1774_074C:
	push	ss
	lea	ax,[bp-14]
	push	ax
	push	03
	push	ds
	push	0A61
	push	cs
	call	01F1
	add	sp,0A
	or	ax,ax
	jz	07D2

l1774_0762:
	push	ss
	lea	ax,[bp-14]
	push	ax
	call	far 2128:00AB
	push	dx
	push	ax
	pop	eax
	mov	[bp-10],eax

l1774_0774:
	cmp	dword ptr [bp-10],FF
	jz	074C

l1774_077B:
	mov	ax,[bp-10]

l1774_077E:
	mov	[E3FE],ax
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	0793

l1774_078B:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_0793:
	xor	si,si
	cmp	si,di
	jge	07BD

l1774_0799:
	mov	ax,si
	shl	ax,02
	les	bx,[bp-04]
	add	bx,ax
	push	dword ptr es:[bx]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	07B8

l1774_07B2:
	push	ax
	call	far 1858:0000

l1774_07B8:
	inc	si
	cmp	si,di
	jl	0799

l1774_07BD:
	push	dword ptr [bp-04]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	07D2

l1774_07CC:
	push	ax
	call	far 1858:0000

l1774_07D2:
	xor	ax,ax
	pop	di
	pop	si
	leave
	retf

;; fn1774_07D8: 1774:07D8
fn1774_07D8 proc
	push	bp
	mov	bp,sp
	xor	dx,dx
	xor	cx,cx

l1774_07DF:
	les	bx,[E3F2]
	mov	al,es:[bx+06]
	mov	ah,00
	mov	bx,cx
	shl	bx,01
	cmp	ax,[bx+07E8]
	jnz	07F5

l1774_07F3:
	mov	dx,cx

l1774_07F5:
	inc	cx
	cmp	cx,0A
	jl	07DF

l1774_07FB:
	push	dx
	push	0A
	push	ds
	push	07FC
	push	ds
	push	0A94
	push	cs
	call	00BD
	add	sp,0C
	mov	dx,ax
	cmp	dx,FF
	jz	0829

l1774_0814:
	mov	bx,dx
	shl	bx,01
	mov	ax,[bx+07E8]
	mov	[E400],ax
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	0831

l1774_0829:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_0831:
	xor	ax,ax
	pop	bp
	retf

;; fn1774_0835: 1774:0835
fn1774_0835 proc
	push	bp
	mov	bp,sp
	xor	dx,dx
	xor	cx,cx

l1774_083C:
	les	bx,[E3F2]
	mov	al,es:[bx+07]
	mov	ah,00
	mov	bx,cx
	shl	bx,01
	cmp	ax,[bx+0824]
	jnz	0852

l1774_0850:
	mov	dx,cx

l1774_0852:
	inc	cx
	cmp	cx,06
	jl	083C

l1774_0858:
	push	dx
	push	06
	push	ds
	push	0830
	push	ds
	push	0AB1
	push	cs
	call	00BD
	add	sp,0C
	mov	dx,ax
	cmp	dx,FF
	jz	0886

l1774_0871:
	mov	bx,dx
	shl	bx,01
	mov	ax,[bx+0824]
	mov	[E402],ax
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	088E

l1774_0886:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_088E:
	xor	ax,ax
	pop	bp
	retf

;; fn1774_0892: 1774:0892
fn1774_0892 proc
	enter	000A,00
	push	00060008
	push	ds
	push	0856
	push	ds
	push	0AD6
	push	cs
	call	00BD
	add	sp,0C
	mov	dx,ax
	cmp	dx,FF
	jz	0914

l1774_08B2:
	cmp	dx,07
	jz	08F5

l1774_08B7:
	mov	bx,dx
	shl	bx,01
	mov	ax,[bx+0848]
	jmp	0907
1774:08C1    EB 32                                         .2            

l1774_08C3:
	push	ss
	lea	ax,[bp-0A]
	push	ax
	push	05
	push	ds
	push	0AE9
	push	cs
	call	01F1
	add	sp,0A
	or	ax,ax
	jz	091C

l1774_08D9:
	push	ss
	lea	ax,[bp-0A]
	push	ax
	call	far 2128:00FF
	push	dx
	push	ax
	pop	eax
	mov	[bp-04],eax
	cmp	dword ptr [bp-04],0000FFFF
	jle	08FD

l1774_08F5:
	mov	dword ptr [bp-04],FFFFFFFF

l1774_08FD:
	cmp	dword ptr [bp-04],FF
	jz	08C3

l1774_0904:
	mov	ax,[bp-04]

l1774_0907:
	mov	[E406],ax
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	091C

l1774_0914:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_091C:
	xor	ax,ax
	leave
	retf

;; fn1774_0920: 1774:0920
fn1774_0920 proc
	enter	001C,00
	push	si
	push	di
	xor	di,di
	mov	word ptr [bp-0A],0000
	les	bx,[E3F2]
	mov	ax,es:[bx+0E]
	mov	[bp-0C],ax
	xor	cx,cx

l1774_093A:
	mov	bx,cx
	shl	bx,01
	mov	ax,[bp-0C]
	and	ax,[bx+0876]
	mov	bx,cx
	shl	bx,01
	cmp	ax,[bx+0876]
	jnz	0991

l1774_094F:
	mov	bx,di
	shl	bx,02
	lea	ax,[bp-1C]
	add	bx,ax
	mov	si,cx
	shl	si,02
	mov	ax,[si+0880]
	mov	dx,[si+087E]
	mov	ss:[bx+02],ax
	mov	ss:[bx],dx
	mov	bx,di
	shl	bx,01
	lea	ax,[bp-08]
	add	bx,ax
	mov	si,cx
	shl	si,01
	mov	ax,[si+0876]
	mov	ss:[bx],ax
	mov	bx,cx
	shl	bx,01
	and	ax,0001
	cmp	ax,0001
	jnz	0990

l1774_098D:
	mov	[bp-0A],di

l1774_0990:
	inc	di

l1774_0991:
	inc	cx
	cmp	cx,04
	jl	093A

l1774_0997:
	push	word ptr [bp-0A]
	push	di
	push	ss
	lea	ax,[bp-1C]
	push	ax
	push	ds
	push	0B08
	push	cs
	call	00BD
	add	sp,0C
	mov	cx,ax
	cmp	cx,FF
	jz	09CB

l1774_09B2:
	mov	bx,cx
	shl	bx,01
	lea	ax,[bp-08]
	add	bx,ax
	mov	ax,ss:[bx]
	mov	[E408],ax
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	jmp	09D3

l1774_09CB:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000

l1774_09D3:
	xor	ax,ax
	pop	di
	pop	si
	leave
	retf

;; fn1774_09D9: 1774:09D9
fn1774_09D9 proc
	enter	0002,00
	push	cs
	call	0000
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	03F5
	add	sp,04
	cmp	word ptr [bp-02],00
	jz	0A0B

l1774_09F3:
	les	bx,[E3F2]
	test	word ptr es:[bx+02],0001
	jz	0A0B

l1774_09FF:
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	05D9
	add	sp,04

l1774_0A0B:
	cmp	word ptr [bp-02],00
	jz	0A29

l1774_0A11:
	les	bx,[E3F2]
	test	word ptr es:[bx+02],0002
	jz	0A29

l1774_0A1D:
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	07D8
	add	sp,04

l1774_0A29:
	cmp	word ptr [bp-02],00
	jz	0A47

l1774_0A2F:
	les	bx,[E3F2]
	test	word ptr es:[bx+02],0004
	jz	0A47

l1774_0A3B:
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	0835
	add	sp,04

l1774_0A47:
	cmp	word ptr [bp-02],00
	jz	0A65

l1774_0A4D:
	les	bx,[E3F2]
	test	word ptr es:[bx+02],0008
	jz	0A65

l1774_0A59:
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	0892
	add	sp,04

l1774_0A65:
	cmp	word ptr [bp-02],00
	jz	0A83

l1774_0A6B:
	les	bx,[E3F2]
	test	word ptr es:[bx+02],0010
	jz	0A83

l1774_0A77:
	push	ss
	lea	ax,[bp-02]
	push	ax
	push	cs
	call	0920
	add	sp,04

l1774_0A83:
	mov	ax,[bp-02]
	leave
	retf
1774:0A88                         C8 04 00 00 66 FF 76 06         ....f.v.
1774:0A90 6A 01 16 8D 46 FC 50 9A 00 00 42 21 8B D0 0B C0 j...F.P...B!....
1774:0AA0 74 06 50 9A 00 00 58 18 66 FF 76 FC 1E 68 FC E3 t.P...X.f.v..h..
1774:0AB0 66 6A 02 9A B6 00 42 21 8B D0 0B C0 74 06 50 9A fj....B!....t.P.
1774:0AC0 00 00 58 18 66 FF 76 FC 1E 68 04 E4 66 6A 02 9A ..X.f.v..h..fj..
1774:0AD0 B6 00 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 18 ..B!....t.P...X.
1774:0AE0 66 FF 76 FC 1E 68 FE E3 66 6A 02 9A B6 00 42 21 f.v..h..fj....B!
1774:0AF0 8B D0 0B C0 74 06 50 9A 00 00 58 18 66 FF 76 FC ....t.P...X.f.v.
1774:0B00 1E 68 00 E4 66 6A 02 9A B6 00 42 21 8B D0 0B C0 .h..fj....B!....
1774:0B10 74 06 50 9A 00 00 58 18 66 FF 76 FC 1E 68 02 E4 t.P...X.f.v..h..
1774:0B20 66 6A 02 9A B6 00 42 21 8B D0 0B C0 74 06 50 9A fj....B!....t.P.
1774:0B30 00 00 58 18 66 FF 76 FC 1E 68 06 E4 66 6A 02 9A ..X.f.v..h..fj..
1774:0B40 B6 00 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 18 ..B!....t.P...X.
1774:0B50 66 FF 76 FC 1E 68 08 E4 66 6A 02 9A B6 00 42 21 f.v..h..fj....B!
1774:0B60 8B D0 0B C0 74 06 50 9A 00 00 58 18 66 FF 76 FC ....t.P...X.f.v.
1774:0B70 9A 67 00 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 .g.B!....t.P...X
1774:0B80 18 C9 CA 04 00 C8 04 00 00 66 FF 76 06 6A 02 16 .........f.v.j..
1774:0B90 8D 46 FC 50 9A 00 00 42 21 8B D0 0B C0 74 06 50 .F.P...B!....t.P
1774:0BA0 9A 00 00 58 18 66 FF 76 FC 1E 68 FC E3 66 6A 02 ...X.f.v..h..fj.
1774:0BB0 9A DB 00 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 ...B!....t.P...X
1774:0BC0 18 66 FF 76 FC 1E 68 04 E4 66 6A 02 9A DB 00 42 .f.v..h..fj....B
1774:0BD0 21 8B D0 0B C0 74 06 50 9A 00 00 58 18 66 FF 76 !....t.P...X.f.v
1774:0BE0 FC 1E 68 FE E3 66 6A 02 9A DB 00 42 21 8B D0 0B ..h..fj....B!...
1774:0BF0 C0 74 06 50 9A 00 00 58 18 66 FF 76 FC 1E 68 00 .t.P...X.f.v..h.
1774:0C00 E4 66 6A 02 9A DB 00 42 21 8B D0 0B C0 74 06 50 .fj....B!....t.P
1774:0C10 9A 00 00 58 18 66 FF 76 FC 1E 68 02 E4 66 6A 02 ...X.f.v..h..fj.
1774:0C20 9A DB 00 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 ...B!....t.P...X
1774:0C30 18 66 FF 76 FC 1E 68 06 E4 66 6A 02 9A DB 00 42 .f.v..h..fj....B
1774:0C40 21 8B D0 0B C0 74 06 50 9A 00 00 58 18 66 FF 76 !....t.P...X.f.v
1774:0C50 FC 1E 68 08 E4 66 6A 02 9A DB 00 42 21 8B D0 0B ..h..fj....B!...
1774:0C60 C0 74 06 50 9A 00 00 58 18 66 FF 76 FC 9A 67 00 .t.P...X.f.v..g.
1774:0C70 42 21 8B D0 0B C0 74 06 50 9A 00 00 58 18 C9 CA B!....t.P...X...
1774:0C80 04 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
;;; Segment 183D (183D:0000)
183D:0000 30 31 32 33 34 35 36 37 38 39 41 42 43 44 45 46 0123456789ABCDEF

;; fn183D_0010: 183D:0010
fn183D_0010 proc
	enter	0000,00
	push	ds
	push	si
	push	di
	mov	ax,00A0
	mov	bx,[bp+0A]
	dec	bx
	mul	bx
	mov	di,[bp+0C]
	dec	di
	shl	di,01
	add	di,ax
	mov	ax,B800
	mov	es,ax
	lds	si,[bp+06]
	mov	ah,07

l183D_0032:
	mov	al,[si]
	inc	si
	or	al,al
	jz	005B

l183D_0039:
	cmp	al,FF
	jz	0049

l183D_003D:
	cmp	al,7F
	jz	004E

l183D_0041:
	mov	es:[di],ax
	add	di,02
	jmp	0032

l183D_0049:
	mov	ah,[si]
	inc	si
	jmp	0032

l183D_004E:
	movzx	cx,byte ptr [si]
	mov	al,[si+01]
	add	si,02

l183D_0057:
	rep stosw

l183D_0059:
	jmp	0032

l183D_005B:
	pop	di
	pop	si
	pop	ds
	leave
	retf	0008

;; fn183D_0062: 183D:0062
fn183D_0062 proc
	enter	0000,00
	push	ds
	push	si
	push	di
	mov	ax,00A0
	mov	bx,[bp+0E]
	dec	bx
	mul	bx
	mov	di,[bp+10]
	dec	di
	shl	di,01
	add	di,ax
	mov	ax,B800
	mov	es,ax
	lds	si,[bp+0A]
	mov	ah,[bp+08]
	mov	cx,[bp+06]

l183D_0088:
	lodsb
	or	al,al
	jz	0092

l183D_008D:
	stosw
	loop	0088

l183D_0090:
	jmp	0096

l183D_0092:
	mov	al,20

l183D_0094:
	rep stosw

l183D_0096:
	pop	di
	pop	si
	pop	ds
	leave
	retf	000C
183D:009D                                        C8 00 00              ...
183D:00A0 00 57 B8 A0 00 8B 5E 0A 4B F7 E3 8B 7E 0C 4F D1 .W....^.K...~.O.
183D:00B0 E7 03 F8 B8 00 B8 8E C0 8A 66 06 8A 5E 08 C1 EB .........f..^...
183D:00C0 04 83 E3 0F 2E 8A 87 00 00 26 89 05 8A 5E 08 83 .........&...^..
183D:00D0 E3 0F 2E 8A 87 00 00 26 89 45 02 5F C9 CA 08 00 .......&.E._....

;; fn183D_00E0: 183D:00E0
fn183D_00E0 proc
	enter	0000,00
	push	si
	push	di
	cld
	mov	ax,00A0
	mov	bx,[bp+0C]
	dec	bx
	mul	bx
	mov	di,[bp+0E]
	dec	di
	shl	di,01
	add	di,ax
	mov	ax,B800
	mov	es,ax
	mov	bx,[bp+08]
	sub	bx,[bp+0C]
	inc	bx
	mov	dx,[bp+0A]
	sub	dx,[bp+0E]
	inc	dx
	mov	ax,dx
	shl	ax,01
	mov	si,00A0
	sub	si,ax
	mov	ah,[bp+06]
	mov	al,20

l183D_0119:
	mov	cx,dx

l183D_011B:
	rep stosw

l183D_011D:
	add	di,si
	dec	bx
	jnz	0119

l183D_0122:
	pop	di
	pop	si
	leave
	retf	000A

;; fn183D_0128: 183D:0128
fn183D_0128 proc
	enter	0000,00
	mov	ax,00A0
	mov	bx,[bp+0A]
	dec	bx
	mul	bx
	mov	bx,[bp+0C]
	dec	bx
	shl	bx,01
	add	bx,ax
	mov	ax,B800
	mov	es,ax
	mov	ah,[bp+06]
	mov	al,[bp+08]
	mov	es:[bx],ax
	leave
	retf	0008

;; fn183D_014F: 183D:014F
fn183D_014F proc
	enter	0000,00
	mov	al,[bp+06]
	xor	ah,ah
	int	10
	leave
	retf	0002

;; fn183D_015E: 183D:015E
fn183D_015E proc
	enter	0000,00
	mov	ax,0200
	xor	bx,bx
	mov	dl,[bp+08]
	dec	dl
	mov	dh,[bp+06]
	dec	dh
	int	10
	leave
	retf	0004

;; fn183D_0177: 183D:0177
fn183D_0177 proc
	enter	0000,00
	push	di
	mov	ax,00A0
	mov	di,[bp+0C]
	dec	di
	mul	di
	mov	di,[bp+0E]
	dec	di
	shl	di,01
	add	di,ax
	mov	ax,B800
	mov	es,ax
	mov	ah,[bp+08]
	mov	al,[bp+0A]
	mov	cx,[bp+06]
	cld

l183D_019C:
	rep stosw

l183D_019E:
	pop	di
	leave
	retf	000A
183D:01A3          00 00 00 00 00 00 00 00 00 00 00 00 00    .............
;;; Segment 1858 (1858:0000)

;; fn1858_0000: 1858:0000
fn1858_0000 proc
	push	bp
	mov	bp,sp
	mov	ax,003C
	call	far 2733:0530
	sub	sp,3C
	push	cs
	call	0263
	lea	di,[bp-3C]
	push	ss
	push	di
	mov	di,0B30
	push	ds
	push	di
	call	far 2128:002A
	lea	di,[bp-3C]
	push	ss
	push	di
	mov	di,[bp+06]
	shl	di,01
	shl	di,01
	push	word ptr [di+0B74]
	push	word ptr [di+0B72]
	call	far 2128:0045
	lea	di,[bp-3C]
	push	ss
	push	di
	call	far 21B6:000E
	mov	sp,bp
	pop	bp
	retf	0002

;; fn1858_004A: 1858:004A
fn1858_004A proc
	push	bp
	mov	bp,sp
	mov	ax,0056
	call	far 2733:0530
	sub	sp,56
	lea	di,[bp-56]
	push	ss
	push	di
	mov	di,0B3E
	push	ds
	push	di
	call	far 2128:002A
	lea	di,[bp-56]
	push	ss
	push	di
	mov	di,[bp+06]
	shl	di,01
	shl	di,01
	push	word ptr [di+0B74]
	push	word ptr [di+0B72]
	call	far 2128:0045
	lea	di,[bp-56]
	push	ss
	push	di
	call	far 21B6:000E
	mov	sp,bp
	pop	bp
	retf	0002

;; fn1858_0090: 1858:0090
fn1858_0090 proc
	push	bp
	mov	bp,sp
	mov	ax,000A
	call	far 2733:0530
	sub	sp,0A
	xor	ax,ax
	mov	[E3F2],ax
	mov	[E3F4],ax
	xor	ax,ax
	mov	[E420],ax
	mov	[E422],ax
	xor	ax,ax
	mov	[bp-02],ax

l1858_00B3:
	mov	ax,[E3F2]
	or	ax,[E3F4]
	jnz	0122

l1858_00BC:
	cmp	word ptr [bp-02],05
	jge	0122

l1858_00C2:
	mov	di,[bp-02]
	shl	di,01
	shl	di,01
	mov	ax,[di+0B1C]
	mov	dx,[di+0B1E]
	mov	[bp-0A],ax
	mov	[bp-08],dx
	lea	di,[bp-04]
	push	ss
	push	di
	les	di,[bp-0A]
	call	dword ptr es:[di+1E]
	mov	[bp-06],ax
	cmp	word ptr [bp-06],00
	jz	00F3

l1858_00EC:
	push	word ptr [bp-06]
	push	cs
	call	0000

l1858_00F3:
	cmp	word ptr [bp-04],01
	jnz	0119

l1858_00F9:
	mov	ax,[bp-02]
	mov	[E3FC],ax
	mov	ax,[bp-0A]
	mov	dx,[bp-08]
	mov	[E3F2],ax
	mov	[E3F4],dx
	mov	ax,[bp-0A]
	mov	dx,[bp-08]
	mov	[E420],ax
	mov	[E422],dx

l1858_0119:
	mov	ax,[bp-02]
	inc	ax
	mov	[bp-02],ax
	jmp	00B3

l1858_0122:
	mov	sp,bp
	pop	bp
	retf

;; fn1858_0126: 1858:0126
fn1858_0126 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	xor	ax,ax
	mov	[E410],ax
	xor	ax,ax
	mov	[F2E8],ax
	cmp	word ptr [E3FC],FF
	jnz	015C

l1858_0145:
	push	cs
	call	0090
	mov	ax,[E420]
	or	ax,[E422]
	jnz	015A

l1858_0152:
	mov	ax,0015
	push	ax
	push	cs
	call	0000

l1858_015A:
	jmp	01B3

l1858_015C:
	mov	di,[E3FC]
	shl	di,01
	shl	di,01
	mov	ax,[di+0B1C]
	mov	dx,[di+0B1E]
	mov	[E3F2],ax
	mov	[E3F4],dx
	mov	ax,[E3F2]
	mov	dx,[E3F4]
	mov	[E420],ax
	mov	[E422],dx
	cmp	word ptr [E3FE],FF
	jnz	01B3

l1858_0188:
	cmp	word ptr [E400],FF
	jnz	01B3

l1858_018F:
	cmp	word ptr [21BB],FF
	jnz	01B3

l1858_0196:
	lea	di,[bp-02]
	push	ss
	push	di
	les	di,[21BB]
	call	dword ptr es:[di+1E]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	01B3

l1858_01AC:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_01B3:
	cmp	word ptr [E3FE],FF
	jz	01C5

l1858_01BA:
	mov	ax,[E3FE]
	les	di,[E420]
	mov	es:[di+04],ax

l1858_01C5:
	cmp	word ptr [E400],FF
	jz	01D7

l1858_01CC:
	mov	al,[E400]
	les	di,[E420]
	mov	es:[di+06],al

l1858_01D7:
	cmp	word ptr [E402],FF
	jz	01E9

l1858_01DE:
	mov	al,[E402]
	les	di,[E420]
	mov	es:[di+07],al

l1858_01E9:
	cmp	word ptr [E404],FF
	jz	01FB

l1858_01F0:
	mov	ax,[E404]
	les	di,[E420]
	mov	es:[di+08],ax

l1858_01FB:
	call	far 18D4:0386
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0210

l1858_0209:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0210:
	mov	word ptr [E412],0001
	push	word ptr [E406]
	push	word ptr [E408]
	les	di,[E420]
	call	dword ptr es:[di+22]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0236

l1858_022F:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0236:
	mov	word ptr [E416],0001
	push	word ptr [E3F4]
	push	word ptr [E3F2]
	call	far 18D4:0403
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0259

l1858_0252:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0259:
	mov	word ptr [E414],0001
	mov	sp,bp
	pop	bp
	retf

;; fn1858_0263: 1858:0263
fn1858_0263 proc
	push	bp
	mov	bp,sp
	mov	ax,21BB
	call	far 2733:0530
	sub	sp,02
	cmp	word ptr [E41E],00
	jz	02B4

l1858_0278:
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	les	di,[E424]
	call	dword ptr es:[di+1C]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	0296

l1858_028F:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_0296:
	push	word ptr [2733]
	call	far 18D4:04F5
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	02AF

l1858_02A8:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_02AF:
	xor	ax,ax
	mov	[E41E],ax

l1858_02B4:
	cmp	word ptr [E41C],00
	jz	02D8

l1858_02BB:
	les	di,[E424]
	call	dword ptr es:[di+18]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	02D3

l1858_02CC:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_02D3:
	xor	ax,ax
	mov	[E41C],ax

l1858_02D8:
	cmp	word ptr [E41A],00
	jz	030C

l1858_02DF:
	les	di,[2733]
	call	dword ptr es:[di+08]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	02F7

l1858_02F0:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_02F7:
	xor	ax,ax
	mov	[E41A],ax
	xor	ax,ax
	mov	[E424],ax
	mov	[E426],ax
	xor	ax,ax
	mov	[E3F6],ax
	mov	[E3F8],ax

l1858_030C:
	cmp	word ptr [E418],00
	jz	0335

l1858_0313:
	les	di,[2733]
	call	dword ptr es:[di+36]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	032B

l1858_0324:
	push	word ptr [bp-02]
	push	cs
	call	2A5E

l1858_032B:
	xor	ax,ax
	mov	[E418],ax
	xor	ax,ax
	mov	[E40C],ax

l1858_0335:
	cmp	word ptr [E414],00
	jz	0356

l1858_033C:
	call	far 18D4:04A9
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	0351

l1858_034A:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_0351:
	xor	ax,ax
	mov	[E414],ax

l1858_0356:
	cmp	word ptr [E416],00
	jz	038A

l1858_035D:
	les	di,[E420]
	call	dword ptr es:[di+26]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	0375

l1858_036E:
	push	word ptr [bp-02]
	push	cs
	call	004A

l1858_0375:
	xor	ax,ax

;; fn1429_4667: 1429:4667
fn1429_4667 proc
	mov	[E416],ax
	xor	ax,ax
	mov	[E420],ax
	mov	[E422],ax
	xor	ax,ax
	mov	[E3F6],ax
	mov	[E3F8],ax

;; fn1429_467A: 1858:038A
fn1429_467A proc
	cmp	word ptr [E412],00
	jz	03AB

l1858_0391:
	call	far 18D4:03DD
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	03A6

l1858_039F:
	push	word ptr [bp-02]
	push	cs
	call	2AD9

l1858_03A6:
	xor	ax,ax
	mov	[E412],ax

l1858_03AB:
	mov	sp,bp
	pop	bp
	retf

;; fn1858_03AF: 1858:03AF
fn1858_03AF proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	xor	ax,ax
	mov	[E410],ax
	xor	ax,ax
	mov	[E412],ax
	xor	ax,ax
	mov	[E414],ax
	xor	ax,ax
	mov	[E416],ax
	xor	ax,ax
	mov	[E418],ax
	xor	ax,ax
	mov	[E41A],ax
	xor	ax,ax
	mov	[E41C],ax
	xor	ax,ax
	mov	[E41E],ax
	xor	ax,ax
	mov	[E40C],ax
	mov	word ptr [F2E2],0001
	mov	word ptr [F2E4],0001
	xor	ax,ax
	mov	[F2E6],ax
	xor	ax,ax
	mov	[F2EA],ax
	mov	word ptr [F2EC],0001
	xor	ax,ax
	mov	[E3FA],ax
	mov	word ptr [E3FC],FFFF
	mov	word ptr [E3FE],FFFF
	mov	word ptr [E400],FFFF
	mov	word ptr [E402],FFFF
	mov	word ptr [E404],FFFF
	xor	ax,ax
	mov	[E408],ax
	mov	word ptr [E406],AC44
	mov	word ptr [E40A],FFFF
	xor	ax,ax
	mov	[E420],ax
	mov	[1429],ax
	xor	ax,ax
	mov	[E3F2],ax
	mov	[E3F4],ax
	xor	ax,ax
	mov	[E424],ax
	mov	[E426],ax
	xor	ax,ax
	mov	[E3F6],ax
	mov	[E3F8],ax
	pop	bp
	retf

;; fn1858_0458: 1858:0458
fn1858_0458 proc
	push	bp
	mov	bp,sp
	mov	ax,000E
	call	far 2733:0530
	sub	sp,0E
	mov	ax,[bp+0A]
	mov	dx,[bp+0C]
	mov	[bp-0E],ax
	mov	[bp-0C],dx
	push	word ptr [bp+10]
	push	word ptr [bp+0E]
	push	word ptr [E3F4]
	push	word ptr [E3F2]
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	lea	di,[bp-08]
	push	ss
	push	di
	les	di,[bp-0E]
	call	dword ptr es:[di+0C]
	mov	[bp-0A],ax
	cmp	word ptr [bp-0A],00
	jz	04A2

l1858_049B:
	push	word ptr [bp-0A]
	push	cs
	call	0000

l1858_04A2:
	mov	ax,[bp-08]
	mov	dx,[bp-06]
	mov	[bp-04],ax
	mov	[bp-02],dx
	mov	ax,[bp-04]
	mov	dx,[bp-02]
	mov	sp,bp
	pop	bp
	retf	000C

;; fn1858_04BA: 1858:04BA
fn1858_04BA proc
	push	bp
	mov	bp,sp
	mov	ax,000A
	call	far 2733:0530
	sub	sp,0A
	mov	ax,[bp+06]
	mov	dx,[bp+08]
	mov	[bp-0A],ax
	mov	[bp-08],dx
	les	di,[bp-0A]
	mov	ax,es:[di+06]
	mov	dx,es:[di+08]
	mov	[bp-04],ax
	mov	[bp-02],dx
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	push	word ptr [E3F4]
	push	word ptr [E3F2]
	les	di,[bp-04]
	call	dword ptr es:[di+10]
	mov	[bp-06],ax
	cmp	word ptr [bp-06],00
	jz	050A

l1858_0503:
	push	word ptr [bp-06]
	push	cs
	call	0000

l1858_050A:
	mov	sp,bp
	pop	bp
	retf	0004

;; fn1858_0510: 1858:0510
fn1858_0510 proc
	push	bp
	mov	bp,sp
	mov	ax,000A
	call	far 2733:0530
	sub	sp,0A
	mov	ax,[bp+08]
	mov	dx,[bp+0A]
	mov	[bp-0A],ax
	mov	[bp-08],dx
	les	di,[bp-0A]
	mov	ax,es:[di+06]
	mov	dx,es:[di+08]
	mov	[E3F6],ax
	mov	[E3F8],dx
	mov	ax,[E3F6]
	mov	dx,[E3F8]
	mov	[E424],ax
	mov	[E426],dx
	push	word ptr [E3F4]
	push	word ptr [E3F2]
	les	di,[E424]
	call	dword ptr es:[di+04]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	056A

l1858_0563:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_056A:
	mov	word ptr [E41A],0001
	les	di,[bp-0A]
	mov	ax,es:[di+30]
	mov	[bp-02],ax
	cmp	word ptr [E40C],00
	jnz	05D1

l1858_0581:
	mov	ax,[bp-02]
	add	ax,[bp+06]
	push	ax
	les	di,[E420]
	call	dword ptr es:[di+32]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	05A0

l1858_0599:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_05A0:
	mov	word ptr [E418],0001
	mov	ax,[bp+06]
	mov	[bp-06],ax
	cmp	word ptr [E40A],FF
	jz	05CF

l1858_05B3:
	push	word ptr [E40A]
	les	di,[E420]
	call	dword ptr es:[di+4E]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	05CF

l1858_05C8:
	push	word ptr [bp-04]
	push	cs
	call	2803

l1858_05CF:
	jmp	05EA

l1858_05D1:
	mov	ax,[E40C]
	cmp	ax,[bp-02]
	jge	05E1

l1858_05D9:
	mov	ax,0014
	push	ax
	push	cs
	call	0000

l1858_05E1:
	mov	ax,[2234]
	sub	ax,[bp-02]
	mov	[bp-06],ax

l1858_05EA:
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	push	word ptr [bp-06]
	push	word ptr [bp-02]
	xor	ax,ax
	push	ax
	mov	ax,7FFF
	push	ax
	les	di,[E424]
	call	dword ptr es:[di+14]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0615

l1858_060E:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0615:
	mov	word ptr [E41C],0001
	les	di,[E424]
	push	word ptr es:[di+22]
	push	word ptr es:[di+20]
	mov	di,E40E
	push	ds
	push	di
	call	far 18D4:04C6
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0641

l1858_063A:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0641:
	mov	di,05EB
	mov	ax,18D4
	push	ax
	push	di
	les	di,[E424]
	call	dword ptr es:[di+1C]
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	0661

l1858_065A:
	push	word ptr [bp-04]
	push	cs
	call	0000

l1858_0661:
	mov	word ptr [E41E],0001
	mov	sp,bp
	pop	bp
	retf	0006

;; fn1858_066D: 1858:066D
fn1858_066D proc
	push	bp
	mov	bp,sp
	mov	ax,000A
	call	far 2733:0530
	sub	sp,0A
	mov	ax,[bp+06]
	mov	dx,[bp+08]
	mov	[bp-08],ax
	mov	[bp-06],dx
	les	di,[bp-08]
	mov	ax,es:[di+06]
	mov	dx,es:[di+08]
	mov	[E3F6],ax
	mov	[E3F8],dx
	les	di,[bp-08]
	mov	ax,es:[di+06]
	mov	dx,es:[di+08]
	mov	[E424],ax
	mov	[E426],dx
	xor	ax,ax
	xor	dx,dx
	push	dx
	push	ax
	les	di,[E424]
	call	dword ptr es:[di+1C]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	06C9

l1858_06C2:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_06C9:
	push	word ptr [E40E]
	call	far 18D4:04F5
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	06E2

l1858_06DB:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_06E2:
	xor	ax,ax
	mov	[E41E],ax
	les	di,[E424]
	call	dword ptr es:[di+18]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	06FF

l1858_06F8:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_06FF:
	xor	ax,ax
	mov	[E41C],ax
	les	di,[E424]
	call	dword ptr es:[di+08]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	071C

l1858_0715:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_071C:
	xor	ax,ax
	mov	[E41A],ax
	xor	ax,ax
	mov	[E3F6],ax
	mov	[2733],ax
	cmp	word ptr [E40C],00
	jnz	074F

l1858_0730:
	les	di,[E420]
	call	dword ptr es:[di+36]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	0748

l1858_0741:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_0748:
	xor	ax,ax
	mov	[E418],ax
	jmp	07B9

l1858_074F:
	mov	ax,[E40C]
	dec	ax
	mov	[bp-0A],ax
	les	di,[bp-08]
	mov	ax,es:[di+30]
	xor	dx,dx
	mov	cx,ax
	mov	bx,dx
	mov	ax,[E40C]
	cwd
	sub	ax,cx
	sbb	dx,bx
	cmp	ax,[bp-0A]
	jg	07B9

l1858_0770:
	mov	[bp-04],ax
	jmp	0778

l1858_0775:
	inc	word ptr [bp-04]

l1858_0778:
	push	word ptr [bp-04]
	les	di,[E420]
	call	dword ptr es:[di+5A]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	0793

l1858_078C:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_0793:
	push	word ptr [bp-04]
	mov	al,00
	push	ax
	les	di,[E420]
	call	dword ptr es:[di+66]
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	07B1

l1858_07AA:
	push	word ptr [bp-02]
	push	cs
	call	0000

l1858_07B1:
	mov	ax,[bp-04]
	cmp	ax,[bp-0A]
	jnz	0775

l1858_07B9:
	mov	sp,bp
	pop	bp
	retf	0004
1858:07BF                                              00                .
;;; Segment 18D4 (18D4:0000)

;; fn18D4_0000: 18D4:0000
fn18D4_0000 proc
	mov	al,30
	out	43,al
	mov	al,bl
	out	40,al
	mov	al,bh
	out	40,al
	ret
18D4:000D                                        83 3E 9C              .>.
18D4:0010 E4 01 75 58 83 3E 7C E4 01 75 22 66 8B 1E 30 E4 ..uX.>|..u"f..0.
18D4:0020 66 0B DB 79 11 66 BB 0A 00 00 00 66 C7 06 30 E4 f..y.f.....f..0.
18D4:0030 0A 00 00 00 EB 2B 66 3B 1E 84 E4 7C 24 66 8B 1E .....+f;...|$f..
18D4:0040 84 E4 66 0B DB 79 0F 66 BB 0A 00 00 00 66 C7 06 ..f..y.f.....f..
18D4:0050 84 E4 0A 00 00 00 C7 06 A2 E4 02 00 E8 A1 FF EB ................
18D4:0060 41 C7 06 A2 E4 01 00 E8 96 FF EB 36 83 3E 7C E4 A..........6.>|.
18D4:0070 01 75 24 C7 06 A2 E4 01 00 66 8B 1E 30 E4 66 0B .u$......f..0.f.
18D4:0080 DB 79 0F 66 BB 0A 00 00 00 66 C7 06 30 E4 0A 00 .y.f.....f..0...
18D4:0090 00 00 E8 6B FF EB 0B C7 06 A2 E4 00 00 33 DB E8 ...k.........3..
18D4:00A0 5E FF C3 66 60 1E 06 0F A0 0F A8 B8 FB 28 8E D8 ^..f`........(..
18D4:00B0 8E C0 C7 06 66 0B 01 00 83 3E A2 E4 02 74 15 83 ....f....>...t..
18D4:00C0 3E A2 E4 00 0F 84 1B 02 83 3E A2 E4 01 0F 84 B7 >........>......
18D4:00D0 00 E9 0F 02 FA 83 3E 9E E4 01 75 26 66 A1 84 E4 ......>...u&f...
18D4:00E0 66 03 06 8C E4 66 29 06 30 E4 66 01 06 2C E4 66 f....f).0.f..,.f
18D4:00F0 A1 88 E4 66 A3 84 E4 E8 13 FF B0 20 E6 20 FB E9 ...f....... . ..
18D4:0100 EC 01 83 3E 9C E4 01 0F 85 AF 01 C7 06 9E E4 01 ...>............
18D4:0110 00 BA DA 03 EC A8 08 75 FB 66 83 3E 90 E4 00 74 .......u.f.>...t
18D4:0120 04 FF 1E 90 E4 66 A1 84 E4 66 03 06 8C E4 66 01 .....f...f....f.
18D4:0130 06 2C E4 83 3E A0 E4 01 74 07 66 29 06 30 E4 EB .,..>...t.f).0..
18D4:0140 08 66 A1 34 E4 66 A3 30 E4 66 A1 88 E4 66 A3 84 .f.4.f.0.f...f..
18D4:0150 E4 BA DA 03 EC A8 08 74 FB 66 83 3E 94 E4 00 74 .......t.f.>...t
18D4:0160 04 FF 1E 94 E4 E8 A5 FE C7 06 9E E4 00 00 FB B0 ................
18D4:0170 20 E6 20 66 83 3E 98 E4 00 74 04 FF 1E 98 E4 C7  . f.>...t......
18D4:0180 06 9E E4 00 00 E9 32 01 83 3E 7E E4 01 75 21 66 ......2..>~..u!f
18D4:0190 A1 30 E4 66 29 06 84 E4 66 01 06 2C E4 66 A1 34 .0.f)...f..,.f.4
18D4:01A0 E4 66 A3 30 E4 E8 65 FE FB B0 20 E6 20 E9 3E 01 .f.0..e... . .>.
18D4:01B0 C7 06 7E E4 01 00 66 A1 30 E4 66 0B C0 78 0A 66 ..~...f.0.f..x.f
18D4:01C0 29 06 84 E4 66 01 06 2C E4 83 3E A0 E4 01 74 0C )...f..,..>...t.
18D4:01D0 66 8B 1E 34 E4 66 89 1E 30 E4 EB 09 66 C7 06 30 f..4.f..0...f..0
18D4:01E0 E4 FF FF 00 00 E8 25 FE FB B0 20 E6 20 83 3E 7C ......%... . .>|
18D4:01F0 E4 01 74 09 C7 06 7E E4 00 00 E9 BD 00 83 3E 80 ..t...~.......>.
18D4:0200 E4 00 0F 85 AE 00 66 8B 3E 34 E4 C4 36 38 E4 26 ......f.>4..68.&
18D4:0210 FF 9C 96 00 85 C0 0F 85 97 00 83 3E E8 F2 01 75 ...........>...u
18D4:0220 14 9A F5 03 98 20 85 C0 0F 85 85 00 9A 49 05 98 ..... .......I..
18D4:0230 20 85 C0 75 7C C4 36 38 E4 68 FB 28 68 82 E4 26  ..u|.68.h.(h..&
18D4:0240 FF 9C 9A 00 85 C0 75 69 83 3E 82 E4 01 75 22 BE ......ui.>...u".
18D4:0250 3C E4 66 83 3C 00 74 06 FF 1C 85 C0 75 53 83 C6 <.f.<.t.....uS..
18D4:0260 04 81 FE 7C E4 72 EB C4 36 38 E4 26 83 3C 00 74 ...|.r..68.&.<.t
18D4:0270 C4 83 3E E8 F2 01 75 12 9A 63 05 98 20 85 C0 75 ..>...u..c.. ..u
18D4:0280 30 9A 0C 04 98 20 85 C0 75 27 C4 36 38 E4 26 83 0.... ..u'.68.&.
18D4:0290 3C 01 75 20 66 39 3E 34 E4 74 19 66 8B 1E 34 E4 <.u f9>4.t.f..4.
18D4:02A0 66 89 1E 30 E4 83 3E A2 E4 01 75 08 E8 5E FD EB f..0..>...u..^..
18D4:02B0 03 A3 80 E4 C7 06 7E E4 00 00 FB 66 81 3E 2C E4 ......~....f.>,.
18D4:02C0 00 00 01 00 72 28 66 A1 2C E4 66 2D 00 00 01 00 ....r(f.,.f-....
18D4:02D0 66 0B C0 79 03 66 33 C0 66 A3 2C E4 9C FF 1E 28 f..y.f3.f.,....(
18D4:02E0 E4 EB D7 FB 33 DB E8 17 FD 9C FF 1E 28 E4 C7 06 ....3.......(...
18D4:02F0 66 0B 00 00 0F A9 0F A1 07 1F 66 61 90 CF C8 02 f.........fa....
18D4:0300 00 00 FA BA DA 03 EC A8 08 75 FB EC A8 08 74 FB .........u....t.
18D4:0310 B0 36 E6 43 32 C0 E6 40 E6 40 BA DA 03 EC A8 08 .6.C2..@.@......
18D4:0320 75 FB EC A8 08 74 FB 32 C0 E6 43 E4 40 8A E0 E4 u....t.2..C.@...
18D4:0330 40 86 C4 F7 D8 89 46 FE BA DA 03 EC A8 08 75 FB @.....F.......u.
18D4:0340 EC A8 08 74 FB B0 36 E6 43 32 C0 E6 40 E6 40 BA ...t..6.C2..@.@.
18D4:0350 DA 03 EC A8 08 75 FB EC A8 08 74 FB 32 C0 E6 43 .....u....t.2..C
18D4:0360 E4 40 8A E0 E4 40 86 C4 F7 D8 8B D0 2B 56 FE 83 .@...@......+V..
18D4:0370 FA 02 7F 8F 83 FA FE 7C 8A FB C4 5E 06 26 89 07 .......|...^.&..
18D4:0380 33 C0 C9 CA 04 00                               3.....         

;; fn18D4_0386: 18D4:0386
fn18D4_0386 proc
	mov	word ptr [E4A2],0000
	mov	word ptr [E47C],0000
	mov	word ptr [E49C],0000
	mov	word ptr [E47E],0000
	mov	word ptr [E49E],0000
	mov	dword ptr [E42C],00000000
	mov	word ptr [E4A4],0000
	mov	word ptr [E480],0000
	mov	ax,3508
	int	21
	mov	[E428],bx
	mov	[E42A],es
	push	ds
	mov	ax,18D4
	mov	ds,ax
	mov	dx,00A3
	mov	ax,2508
	int	21
	pop	ds
	xor	bx,bx
	call	0000
	xor	ax,ax
	retf

;; fn18D4_03DD: 18D4:03DD
fn18D4_03DD proc
	mov	al,36
	out	43,al
	xor	al,al
	out	40,al
	out	40,al
	push	ds
	mov	ax,2508
	mov	dx,[E428]
	mov	ds,[E42A]
	int	21
	pop	ds
	mov	al,36
	out	43,al
	xor	al,al
	out	40,al
	out	40,al
	xor	ax,ax
	retf

;; fn18D4_0403: 18D4:0403
fn18D4_0403 proc
	enter	0000,00
	push	di
	mov	eax,[bp+06]
	mov	[E438],eax
	mov	di,E43C
	mov	ax,ds
	mov	es,ax
	xor	eax,eax
	mov	cx,0010
	cld

l18D4_041E:
	rep stosd

l18D4_0421:
	cli
	les	di,[E438]
	cmp	word ptr es:[di],01
	jz	0460

l18D4_042C:
	cmp	word ptr [E49C],00
	jz	0452

l18D4_0433:
	mov	eax,00000019
	mul	dword ptr [E488]
	mov	ebx,00000064
	div	ebx
	mov	ebx,eax
	mov	word ptr [E4A0],0001
	jmp	046C

l18D4_0452:
	mov	ebx,00002E9B
	mov	word ptr [E4A0],0000
	jmp	046C

l18D4_0460:
	mov	ebx,00005D37
	mov	word ptr [E4A0],0000

l18D4_046C:
	mov	[E434],ebx
	mov	[E430],ebx
	mov	word ptr [E47C],0001
	mov	word ptr [E47E],0000
	mov	word ptr [E480],0000
	cmp	word ptr [E4A2],00
	jnz	04A1

l18D4_048F:
	mov	word ptr [E4A2],0001
	call	0000
	mov	dword ptr [E42C],00000000

l18D4_04A1:
	sti
	xor	ax,ax
	pop	di
	leave
	retf	0004

;; fn18D4_04A9: 18D4:04A9
fn18D4_04A9 proc
	cli
	mov	word ptr [E47C],0000
	cmp	word ptr [E49C],00
	jnz	04C2

l18D4_04B7:
	mov	word ptr [E4A2],0000
	xor	bx,bx
	call	0000

l18D4_04C2:
	sti
	xor	ax,ax
	retf

;; fn18D4_04C6: 18D4:04C6
fn18D4_04C6 proc
	enter	0000,00
	mov	eax,[bp+0A]
	mov	bx,E43C
	xor	cx,cx

l18D4_04D3:
	cmp	dword ptr [bx],00
	jz	04E4

l18D4_04D9:
	inc	cx
	cmp	cx,10
	jc	04D3

l18D4_04DF:
	mov	ax,0025
	jmp	04F1

l18D4_04E4:
	mov	[bx],eax
	les	bx,[bp+06]
	mov	es:[bx],cx
	xor	ax,ax
	jmp	04F1

l18D4_04F1:
	leave
	retf	0008

;; fn18D4_04F5: 18D4:04F5
fn18D4_04F5 proc
	enter	0000,00
	mov	bx,[bp+06]
	shl	bx,02
	mov	dword ptr [bx+E43C],00000000
	xor	ax,ax
	leave
	retf	0002
18D4:050E                                           C8 00               ..
18D4:0510 00 00 56 FA 66 8B 46 0E 66 A3 90 E4 66 8B 46 0A ..V.f.F.f...f.F.
18D4:0520 66 A3 94 E4 66 8B 46 06 66 A3 98 E4 C7 06 9C E4 f...f.F.f.......
18D4:0530 01 00 C7 06 9E E4 00 00 B8 C5 03 F7 66 12 BB E8 ............f...
18D4:0540 03 F7 F3 66 0F B7 C0 66 D1 E8 66 A3 84 E4 66 A3 ...f...f..f...f.
18D4:0550 88 E4 66 8B D8 66 0F B7 46 12 66 D1 E8 66 2B C3 ..f..f..F.f..f+.
18D4:0560 66 A3 8C E4 C7 06 A2 E4 02 00 BA DA 03 EC A8 08 f...............
18D4:0570 75 FB EC A8 08 74 FB E8 86 FA FB 83 3E 7C E4 00 u....t......>|..
18D4:0580 74 31 C4 36 38 E4 26 83 3C 01 74 27 66 B8 19 00 t1.68.&.<.t'f...
18D4:0590 00 00 66 F7 26 88 E4 66 BB 64 00 00 00 66 F7 F3 ..f.&..f.d...f..
18D4:05A0 66 8B D8 C7 06 A0 E4 01 00 66 89 1E 34 E4 66 89 f........f..4.f.
18D4:05B0 1E 30 E4 33 C0 5E C9 CA 0E 00 FA 83 3E A0 E4 01 .0.3.^......>...
18D4:05C0 75 16 66 BB 9B 2E 00 00 66 89 1E 34 E4 66 89 1E u.f.....f..4.f..
18D4:05D0 30 E4 C7 06 A0 E4 00 00 C7 06 9C E4 00 00 C7 06 0...............
18D4:05E0 9E E4 00 00 E8 26 FA FB 33 C0 CB C8 00 00 00 C4 .....&..3.......
18D4:05F0 1E 38 E4 26 83 3F 00 74 14 66 B8 F0 A5 1C 07 66 .8.&.?.t.f.....f
18D4:0600 99 66 0F B7 5E 06 66 F7 F3 66 A3 34 E4 33 C0 C9 .f..^.f..f.4.3..
18D4:0610 CA 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
;;; Segment 1936 (1936:0000)

;; fn1429_50D0: 1429:50D0
fn1429_50D0 proc
	push	bp
	mov	bp,sp
	push	si
	cmp	dword ptr [bp+0A],00
	jnz	50E1

l1429_50DB:
	mov	ax,0001
	jmp	525F

l1429_50E1:
	les	bx,[bp+0A]
	cmp	dword ptr es:[bx+59],00
	jz	50FF

l1429_50EC:
	push	dword ptr es:[bx+59]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	50FF

l1429_50FC:
	jmp	5259

l1429_50FF:
	les	bx,[bp+0A]
	cmp	dword ptr es:[bx+65],00
	jz	511D

l1429_510A:
	push	dword ptr es:[bx+65]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	511D

l1429_511A:
	jmp	5259

l1429_511D:
	les	bx,[bp+0A]
	cmp	dword ptr es:[bx+5D],00
	jnz	512B

l1429_5128:
	jmp	51C7

l1429_512B:
	xor	si,si
	jmp	51A8

l1429_512F:
	les	bx,[bp+0A]
	les	bx,es:[bx+5D]
	mov	ax,si
	shl	ax,06
	add	bx,ax
	cmp	word ptr es:[bx+3E],00
	jz	516E

l1429_5144:
	cmp	dword ptr [bp+06],00
	jz	516E

l1429_514B:
	les	bx,[bp+0A]
	les	bx,es:[bx+5D]
	mov	ax,si
	shl	ax,06
	add	bx,ax
	push	word ptr es:[bx+3E]
	les	bx,[bp+06]
	call	dword ptr es:[bx+008E]
	mov	dx,ax
	or	ax,ax
	jz	51A7

l1429_516B:
	jmp	5259

l1429_516E:
	les	bx,[bp+0A]
	les	bx,es:[bx+5D]
	mov	ax,si
	shl	ax,06
	add	bx,ax
	mov	ax,es:[bx+2D]
	or	ax,es:[bx+2F]
	jz	51A7

l1429_5186:
	les	bx,[bp+0A]
	les	bx,es:[bx+5D]
	mov	ax,si
	shl	ax,06
	add	bx,ax
	push	dword ptr es:[bx+2D]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	51A7

l1429_51A4:
	jmp	5259

l1429_51A7:
	inc	si

l1429_51A8:
	les	bx,[bp+0A]
	cmp	es:[bx+2C],si
	jbe	51B4

l1429_51B1:
	jmp	512F

l1429_51B4:
	push	dword ptr es:[bx+5D]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	51C7

l1429_51C4:
	jmp	5259

l1429_51C7:
	les	bx,[bp+0A]
	cmp	dword ptr es:[bx+61],00
	jz	524A

l1429_51D2:
	xor	si,si
	jmp	5231

l1429_51D6:
	les	bx,[bp+0A]
	les	bx,es:[bx+61]
	mov	ax,si
	shl	ax,02
	add	bx,ax
	mov	ax,es:[bx]
	or	ax,es:[bx+02]
	jz	5230

l1429_51ED:
	cmp	word ptr [F2E8],01
	jnz	5213

l1429_51F4:
	les	bx,[bp+0A]
	les	bx,es:[bx+61]
	mov	ax,si
	shl	ax,02
	add	bx,ax
	push	dword ptr es:[bx]
	call	far 2098:027E
	mov	dx,ax
	or	ax,ax
	jz	5230

l1429_5211:
	jmp	5259

l1429_5213:
	les	bx,[bp+0A]
	les	bx,es:[bx+61]
	mov	ax,si
	shl	ax,02
	add	bx,ax
	push	dword ptr es:[bx]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jnz	5259

l1429_5230:
	inc	si

l1429_5231:
	les	bx,[bp+0A]
	cmp	es:[bx+2E],si
	ja	51D6

l1429_523A:
	push	dword ptr es:[bx+61]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jnz	5259

l1429_524A:
	push	dword ptr [bp+0A]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jz	525D

l1429_5259:
	mov	ax,dx
	jmp	525F

l1429_525D:
	xor	ax,ax

l1429_525F:
	pop	si
	pop	bp
	retf	0008

;; fn1429_5264: 1429:5264
fn1429_5264 proc
	push	bp
	mov	bp,sp
	cmp	word ptr [E4BE],00
	jz	527F

l1429_526E:
	push	dword ptr [E4C0]
	call	far 2142:0067
	or	ax,ax
	jz	527F

l1429_527C:
	jmp	5304

l1429_527F:
	cmp	dword ptr [E4BA],00
	jz	5298

l1429_5287:
	push	dword ptr [E4BA]
	push	dword ptr [bp+06]
	push	cs
	call	50D0
	or	ax,ax
	jnz	5304

l1429_5298:
	cmp	dword ptr [E4A6],00
	jz	52AE

l1429_52A0:
	push	dword ptr [E4A6]
	call	far 21A1:00A7
	or	ax,ax
	jnz	5304

l1429_52AE:
	cmp	dword ptr [E4AE],00
	jz	52C4

l1429_52B6:
	push	dword ptr [E4AE]
	call	far 21A1:00A7
	or	ax,ax
	jnz	5304

l1429_52C4:
	cmp	dword ptr [E4AA],00
	jz	52DA

l1429_52CC:
	push	dword ptr [E4AA]
	call	far 21A1:00A7
	or	ax,ax
	jnz	5304

l1429_52DA:
	cmp	dword ptr [E4B6],00
	jz	52F0

l1429_52E2:
	push	dword ptr [2733]
	call	far 21A1:00A7
	or	ax,ax
	jnz	5304

l1429_52F0:
	cmp	dword ptr [E4B2],00
	jz	5304

l1429_52F8:
	push	dword ptr [E4B2]
	call	far 21A1:00A7
	or	ax,ax

l1429_5304:
	pop	bp
	retf
1429:5306                   C8 C2 00 00 56 57 C7 06 BE E4       ....VW....
1429:5310 00 00 66 C7 06 BA E4 00 00 00 00 66 C7 06 B6 E4 ..f........f....
1429:5320 00 00 00 00 66 C7 06 B2 E4 00 00 00 00 66 C7 06 ....f........f..
1429:5330 AE E4 00 00 00 00 66 C7 06 AA E4 00 00 00 00 66 ......f........f
1429:5340 C7 06 A6 E4 00 00 00 00 66 FF 76 12 6A 01 1E 68 ........f.v.j..h
1429:5350 C0 E4 9A 00 00 42 21 8B F0 0B C0 74 10          .....B!....t.  

l1429_535D:
	push	dword ptr [bp+0E]
	push	cs
	call	5264
	add	sp,04
	mov	ax,si
	jmp	5C92
1429:536D                                        6A 69 1E              ji.
1429:5370 68 BA E4 9A 00 00 A1 21 8B F0 0B C0 75 DF C4 1E h......!....u...
1429:5380 BA E4 66 26 C7 47 59 00 00 00 00 66 26 C7 47 5D ..f&.GY....f&.G]
1429:5390 00 00 00 00 66 26 C7 47 61 00 00 00 00 66 26 C7 ....f&.Ga....f&.
1429:53A0 47 65 00 00 00 00 26 C7 47 08 36 19 26 C7 47 06 Ge....&.G.6.&.G.
1429:53B0 C8 0B 66 FF 36 C0 E4 16 8D 46 8E 50 66 6A 60 9A ..f.6....F.Pfj`.
1429:53C0 B6 00 42 21 8B F0 0B C0 75 93 16 8D 46 BA 50 1E ..B!....u...F.P.
1429:53D0 68 68 0B 6A 04 9A 86 00 28 21 0B C0 75 03 E9 15 hh.j....(!..u...
1429:53E0 01 66 FF 36 BA E4 16 8D 46 BA 50 6A 04 9A 6C 00 .f.6....F.Pj..l.
1429:53F0 28 21 C4 1E BA E4 26 C7 47 04 00 00 A1 BA E4 05 (!....&.G.......
1429:5400 0A 00 FF 36 BC E4 50 16 8D 46 8E 50 6A 1C 9A 6C ...6..P..F.Pj..l
1429:5410 00 28 21 C4 1E BA E4 8B 46 AE 26 89 47 2A 8B 46 .(!.....F.&.G*.F
1429:5420 B0 26 89 47 2C 8B 46 B2 26 89 47 2E A1 BA E4 05 .&.G,.F.&.G.....
1429:5430 32 00 FF 36 BC E4 50 16 8D 46 B4 50 6A 02 9A 6C 2..6..P..F.Pj..l
1429:5440 00 28 21 C4 1E BA E4 8A 46 BE 26 88 47 34 8A 46 .(!.....F.&.G4.F
1429:5450 BF 26 88 47 35 8A 46 C0 26 88 47 36 8A 46 C1 24 .&.G5.F.&.G6.F.$
1429:5460 0F 26 88 47 37 8A 46 C1 B4 00 C1 F8 04 24 01 26 .&.G7.F......$.&
1429:5470 88 47 38 81 7E B6 20 13 73 05 26 80 4F 32 40 C4 .G8.~. .s.&.O2@.
1429:5480 1E BA E4 26 8B 7F 2A 47 D1 EF D1 E7 57 A1 BA E4 ...&..*G....W...
1429:5490 05 59 00 FF 36 BC E4 50 9A 00 00 A1 21 8B F0 0B .Y..6..P....!...
1429:54A0 C0 74 03 E9 B7 FE 66 FF 36 C0 E4 C4 1E BA E4 66 .t....f.6......f
1429:54B0 26 FF 77 59 66 0F B7 C7 66 50 9A B6 00 42 21 8B &.wYf...fP...B!.
1429:54C0 F0 0B C0 74 03 E9 95 FE C4 1E BA E4 26 8B 7F 2A ...t........&..*
1429:54D0 4F EB 01 4F C4 1E BA E4 26 C4 5F 59 03 DF 26 80 O..O....&._Y..&.
1429:54E0 3F FF 74 EF 8B C7 40 C4 1E BA E4 26 89 47 2A 26 ?.t...@....&.G*&
1429:54F0 83 7F 2A 00 75 11 66 FF 76 0E 0E E8 66 FD 83 C4 ..*.u.f.v...f...
1429:5500 04 B8 0F 00 E9 8B 07 C4 1E BA E4 26 8B 47 2C C1 ...........&.G,.
1429:5510 E0 06 50 A1 BA E4 05 5D 00 FF 36 BC E4 50 9A 00 ..P....]..6..P..
1429:5520 00 A1 21 8B F0 0B C0 74 03 E9 31 FE 33 FF EB 31 ..!....t..1.3..1
1429:5530 C4 1E BA E4 26 C4 5F 5D 8B C7 C1 E0 06 03 D8 26 ....&._].......&
1429:5540 C7 47 2F 00 00 26 C7 47 2D 00 00 C4 1E BA E4 26 .G/..&.G-......&
1429:5550 C4 5F 5D 8B C7 C1 E0 06 03 D8 26 C7 47 3E 00 00 ._].......&.G>..
1429:5560 47 C4 1E BA E4 26 39 7F 2C 77 C5 26 8B 47 2C D1 G....&9.,w.&.G,.
1429:5570 E0 50 1E 68 B6 E4 9A 00 00 A1 21 8B F0 0B C0 74 .P.h......!....t
1429:5580 03 E9 D9 FD 66 FF 36 C0 E4 66 FF 36 B6 E4 C4 1E ....f.6..f.6....
1429:5590 BA E4 26 8B 47 2C D1 E0 66 0F B7 C0 66 50 9A B6 ..&.G,..f...fP..
1429:55A0 00 42 21 8B F0 0B C0 74 03 E9 B1 FD C4 1E BA E4 .B!....t........
1429:55B0 26 8B 47 2E D1 E0 50 1E 68 B2 E4 9A 00 00 A1 21 &.G...P.h......!
1429:55C0 8B F0 0B C0 74 03 E9 94 FD 66 FF 36 C0 E4 66 FF ....t....f.6..f.
1429:55D0 36 B2 E4 C4 1E BA E4 26 8B 47 2E D1 E0 66 0F B7 6......&.G...f..
1429:55E0 C0 66 50 9A B6 00 42 21 8B F0 0B C0 74 03 E9 6C .fP...B!....t..l
1429:55F0 FD C4 1E BA E4 26 8B 47 2E C1 E0 02 50 A1 BA E4 .....&.G....P...
1429:5600 05 61 00 FF 36 BC E4 50 9A 00 00 A1 21 8B F0 0B .a..6..P....!...
1429:5610 C0 74 03 E9 47 FD 80 7E C3 FC 74 03 E9 D6 00 6A .t..G..~..t....j
1429:5620 20 1E 68 A6 E4 9A 00 00 A1 21 8B F0 0B C0 74 03  .h......!....t.
1429:5630 E9 2A FD 66 FF 36 C0 E4 66 FF 36 A6 E4 66 6A 20 .*.f.6..f.6..fj 
1429:5640 9A B6 00 42 21 8B F0 0B C0 74 03 E9 0F FD 33 FF ...B!....t....3.
1429:5650 EB 7D 80 7B CE 0F 76 0D C4 1E BA E4 03 DF 26 C6 .}.{..v.......&.
1429:5660 47 39 00 EB 69 C4 1E A6 E4 03 DF 26 F6 07 20 74 G9..i......&.. t
1429:5670 3F 8B 1E A6 E4 03 DF 26 8A 07 24 0F 04 F8 C0 E0 ?......&..$.....
1429:5680 03 C4 1E BA E4 03 DF 26 88 47 39 8B 1E BA E4 03 .......&.G9.....
1429:5690 DF 26 80 7F 39 00 7C 36 8B 1E BA E4 03 DF 26 8A .&..9.|6......&.
1429:56A0 47 39 04 08 8B 1E BA E4 03 DF 26 88 47 39 EB 1E G9........&.G9..
1429:56B0 80 7B CE 08 73 0D C4 1E BA E4 03 DF 26 C6 47 39 .{..s.......&.G9
1429:56C0 C0 EB 0B C4 1E BA E4 03 DF 26 C6 47 39 40 47 83 .........&.G9@G.
1429:56D0 FF 20 7D 03 E9 7B FF 66 FF 36 A6 E4 9A A7 00 A1 . }..{.f.6......
1429:56E0 21 8B F0 0B C0 74 03 E9 73 FC 66 C7 06 A6 E4 00 !....t..s.f.....
1429:56F0 00 00 00 EB 39 33 FF 80 7B CE 0F 76 0D C4 1E BA ....93..{..v....
1429:5700 E4 03 DF 26 C6 47 39 00 EB 1E 80 7B CE 08 73 0D ...&.G9....{..s.
1429:5710 C4 1E BA E4 03 DF 26 C6 47 39 C0 EB 0B C4 1E BA ......&.G9......
1429:5720 E4 03 DF 26 C6 47 39 40 47 83 FF 20 7C C9 33 FF ...&.G9@G.. |.3.
1429:5730 EB 1B C4 1E BA E4 26 C4 5F 61 8B C7 C1 E0 02 03 ......&._a......
1429:5740 D8 26 C7 47 02 00 00 26 C7 07 00 00 47 C4 1E BA .&.G...&....G...
1429:5750 E4 26 39 7F 2E 77 DB 33 FF E9 F2 00 8B C7 D1 E0 .&9..w.3........
1429:5760 C4 1E B2 E4 03 D8 26 83 3F 00 75 03 E9 DE 00 66 ......&.?.u....f
1429:5770 FF 36 C0 E4 66 26 0F B7 07 66 C1 E0 04 66 50 6A .6..f&...f...fPj
1429:5780 01 9A 00 01 42 21 8B F0 0B C0 74 03 E9 CE FB 66 ....B!....t....f
1429:5790 FF 36 C0 E4 16 8D 46 FA 50 66 6A 02 9A B6 00 42 .6....F.Pfj....B
1429:57A0 21 8B F0 0B C0 74 03 E9 B3 FB 83 3E E8 F2 01 75 !....t.....>...u
1429:57B0 31 8B 46 FA 05 02 00 50 16 8D 46 EE 50 9A D4 00 1.F....P..F.P...
1429:57C0 98 20 8B F0 0B C0 74 03 E9 92 FB 66 FF 76 EE 16 . ....t....f.v..
1429:57D0 8D 46 F6 50 9A 91 03 98 20 8B F0 0B C0 74 25 E9 .F.P.... ....t%.
1429:57E0 7B FB 8B 46 FA 05 02 00 50 16 8D 46 EE 50 9A 00 {..F....P..F.P..
1429:57F0 00 A1 21 8B F0 0B C0 74 03 E9 61 FB 66 8B 46 EE ..!....t..a.f.F.
1429:5800 66 89 46 F6 C4 1E BA E4 26 C4 5F 61 8B C7 C1 E0 f.F.....&._a....
1429:5810 02 03 D8 8B 46 F0 8B 56 EE 26 89 47 02 26 89 17 ....F..V.&.G.&..
1429:5820 C4 5E F6 8B 46 FA 26 89 07 66 FF 36 C0 E4 8B 46 .^..F.&..f.6...F
1429:5830 F6 05 02 00 FF 76 F8 50 66 0F B7 46 FA 66 50 9A .....v.Pf..F.fP.
1429:5840 B6 00 42 21 8B F0 0B C0 74 03 E9 10 FB 47 C4 1E ..B!....t....G..
1429:5850 BA E4 26 39 7F 2E 76 03 E9 01 FF 66 FF 36 B2 E4 ..&9..v....f.6..
1429:5860 9A A7 00 A1 21 8B F0 0B C0 74 03 E9 EF FA 66 C7 ....!....t....f.
1429:5870 06 B2 E4 00 00 00 00 66 FF 36 BA E4 A1 BA E4 05 .......f.6......
1429:5880 30 00 FF 36 BC E4 50 9A 99 0E 36 19 8B F0 0B C0 0..6..P...6.....
1429:5890 74 03 E9 C8 FA C4 1E BA E4 26 FF 77 2C A1 BA E4 t........&.w,...
1429:58A0 05 65 00 FF 36 BC E4 50 9A 00 00 A1 21 8B F0 0B .e..6..P....!...
1429:58B0 C0 74 03 E9 A7 FA 66 FF 36 BA E4 C4 1E BA E4 66 .t....f.6......f
1429:58C0 26 FF 77 65 9A AB 0F 36 19 8B F0 0B C0 74 03 E9 &.we...6.....t..
1429:58D0 8B FA 66 C7 46 F2 00 00 00 00 33 FF EB 5B 66 FF ..f.F.....3..[f.
1429:58E0 36 C0 E4 8B C7 D1 E0 C4 1E B6 E4 03 D8 66 26 0F 6............f&.
1429:58F0 B7 07 66 C1 E0 04 66 50 6A 01 9A 00 01 42 21 8B ..f...fPj....B!.
1429:5900 F0 0B C0 74 03 E9 55 FA 66 FF 36 C0 E4 16 8D 86 ...t..U.f.6.....
1429:5910 3E FF 50 66 6A 50 9A B6 00 42 21 8B F0 0B C0 74 >.PfjP...B!....t
1429:5920 03 E9 39 FA 66 8B 46 F2 66 3B 86 4E FF 73 09 66 ..9.f.F.f;.N.s.f
1429:5930 8B 86 4E FF 66 89 46 F2 47 C4 1E BA E4 26 39 7F ..N.f.F.G....&9.
1429:5940 2C 77 9B 66 81 7E F2 EF FF 00 00 76 11 66 FF 76 ,w.f.~.....v.f.v
1429:5950 0E 0E E8 0F F9 83 C4 04 B8 10 00 E9 34 03 83 3E ............4..>
1429:5960 E8 F2 00 74 1C 66 83 7E 0E 00 74 15 68 00 20 1E ...t.f.~..t.h. .
1429:5970 68 AA E4 9A 00 00 A1 21 8B F0 0B C0 74 03 E9 DC h......!....t...
1429:5980 F9 66 83 7E 0E 00 74 15 FF 76 F2 1E 68 AE E4 9A .f.~..t..v..h...
1429:5990 00 00 A1 21 8B F0 0B C0 74 03 E9 C0 F9 83 3E E8 ...!....t.....>.
1429:59A0 F2 00 74 23 66 83 7E 0E 00 74 13 66 FF 36 AA E4 ..t#f.~..t.f.6..
1429:59B0 9A A7 00 A1 21 8B F0 0B C0 74 03 E9 9F F9 66 C7 ....!....t....f.
1429:59C0 06 AA E4 00 00 00 00 33 FF E9 54 02             .......3..T.   

l1429_59CC:
	les	bx,[E4BA]
	mov	ax,es:[bx+5F]
	mov	dx,es:[bx+5D]
	mov	bx,di
	shl	bx,06
	add	dx,bx
	mov	[bp-02],ax
	mov	[bp-04],dx
	push	dword ptr [E4C0]
	mov	ax,di
	shl	ax,01
	les	bx,[E4B6]
	add	bx,ax
	mov	ax,es:[bx]
	shl	ax,04
	movzx	eax,ax
	push	eax
	push	01
	call	far 2142:0100
	mov	si,ax
	or	ax,ax
	jz	5A10

l1429_5A0D:
	jmp	535D

l1429_5A10:
	push	dword ptr [E4C0]
	push	ss
	lea	ax,[bp+FF3E]
	push	ax
	push	50
	call	far 2142:00B6
	mov	si,ax
	or	ax,ax
	jz	5A2C

l1429_5A29:
	jmp	535D

l1429_5A2C:
	cmp	byte ptr [bp+21BB],01
	ja	5A4C

l1429_5A33:
	cmp	dword ptr [bp+FF4E],0000FFEF
	ja	5A4C

l1429_5A3E:
	test	byte ptr [bp+FF5D],06
	jnz	5A4C

l1429_5A45:
	cmp	byte ptr [bp+21BB],00
	jz	5A5D

l1429_5A4C:
	push	dword ptr [bp+0E]
	push	cs
	call	5264
	add	sp,04
	mov	ax,000E
	jmp	5C92

l1429_5A5D:
	push	dword ptr [bp-04]
	push	ss
	lea	ax,[bp+FF3F]
	push	ax
	push	0D
	call	far 2128:006C
	mov	ax,[bp-04]
	add	ax,000D
	push	word ptr [bp-02]
	push	ax
	push	ss
	lea	ax,[bp+FF6E]
	push	ax
	push	1C
	call	far 2128:006C
	les	bx,[bp-04]
	mov	ax,[bp+FF4E]
	mov	es:[bx+31],ax
	mov	ax,[bp+FF52]
	mov	es:[bx+33],ax
	mov	ax,[bp+FF56]
	mov	es:[bx+35],ax
	mov	al,[bp+FF5D]
	and	al,01
	mov	es:[bx+37],al
	mov	al,[bp+FF5A]
	mov	es:[bx+38],al
	mov	eax,[bp+FF5E]
	mov	es:[bx+39],eax
	cmp	byte ptr es:[bx+37],01
	jnz	5ACB

l1429_5AC3:
	mov	ax,es:[bx+35]
	mov	es:[bx+31],ax

l1429_5ACB:
	les	bx,[bp-04]
	cmp	byte ptr es:[bx+38],3F
	jbe	5ADA

l1429_5AD5:
	mov	byte ptr es:[bx+38],3F

l1429_5ADA:
	les	bx,[2733]
	les	bx,es:[bx+65]
	add	bx,di
	cmp	byte ptr es:[bx],01
	jz	5AED

l1429_5AEA:
	jmp	5C1F

l1429_5AED:
	cmp	byte ptr [bp+FF3E],01
	jz	5AF7

l1429_5AF4:
	jmp	5B93

l1429_5AF7:
	push	ss
	lea	ax,[bp-76]
	push	ax
	push	ds
	push	0B6D
	push	04
	call	far 2128:0086
	or	ax,ax
	jnz	5B0E

l1429_5B0B:
	jmp	5B93

;; fn1429_5B0C: 1429:5B0C
fn1429_5B0C proc
	test	[bx+si],ax

l1429_5B0E:
	les	bx,[bp-04]
	cmp	word ptr es:[bx+31],00
	jz	5B93

l1429_5B18:
	cmp	dword ptr [bp+0E],00
	jnz	5B43

l1429_5B1F:
	push	word ptr es:[bx+31]
	push	ds
	push	2234
	call	far 21A1:0000
	mov	si,ax
	or	ax,ax
	jz	5B35

l1429_5B32:
	jmp	535D

l1429_5B35:
	les	bx,[bp-04]
	mov	eax,[E4AE]
	mov	es:[bx+2D],eax
	jmp	5B4F

l1429_5B43:
	les	bx,[bp-04]
	mov	dword ptr es:[bx+2D],00000000

l1429_5B4F:
	push	dword ptr [E4C0]
	movzx	eax,word ptr [bp+FF4C]
	shl	eax,04
	push	eax
	push	01
	call	far 2142:0100
	mov	si,ax
	or	ax,ax
	jz	5B70

l1429_5B6D:
	jmp	535D

l1429_5B70:
	push	dword ptr [E4C0]
	push	dword ptr [E4AE]
	les	bx,[bp-04]
	movzx	eax,word ptr es:[bx+31]
	push	eax
	call	far 2142:00B6
	mov	si,ax
	or	ax,ax
	jz	5B9F

l1429_5B90:
	jmp	535D

l1429_5B93:
	les	bx,[bp-04]
	mov	dword ptr es:[bx+2D],00000000

l1429_5B9F:
	cmp	dword ptr [bp+0E],00
	jz	5BE5

l1429_5BA6:
	push	dword ptr [E4AE]
	push	01
	les	bx,[bp-04]
	push	word ptr es:[bx+31]
	push	word ptr es:[bx+33]
	push	word ptr es:[bx+35]
	mov	al,es:[bx+38]
	push	ax
	mov	al,es:[bx+37]

;; fn1429_5BC4: 1429:5BC4
fn1429_5BC4 proc
	aaa
	mov	ah,00
	push	ax
	push	01
	mov	ax,[bp-04]
	add	ax,003E
	push	word ptr [bp-02]
	push	ax
	les	bx,[bp+0E]
	call	dword ptr es:[bx+008A]
	mov	si,ax
	or	si,si
	jz	5BE5

;; fn1429_5BE2: 1429:5BE2
fn1429_5BE2 proc
	jmp	535D

;; fn1429_5BE5: 1429:5BE5
fn1429_5BE5 proc
	cmp	dword ptr [bp+0A],00
	jz	5C1F

l1429_5BEC:
	les	bx,[bp-04]
	cmp	byte ptr es:[bx+37],00
	jz	5BFC

l1429_5BF6:
	mov	dx,es:[bx+35]
	jmp	5BFE

l1429_5BFC:
	xor	dx,dx

l1429_5BFE:
	les	bx,[bp-04]
	push	word ptr es:[bx+3E]
	push	dword ptr [E4AE]
	push	word ptr es:[bx+31]
	push	word ptr es:[bx+33]
	push	dx
	call	dword ptr [bp+0A]
	mov	si,ax
	or	ax,ax
	jz	5C1F

l1429_5C1C:
	jmp	535D

l1429_5C1F:
	inc	di
	les	bx,[E4BA]
	cmp	es:[bx+2C],di
	jbe	5C2D

l1429_5C2A:
	jmp	59CC

l1429_5C2D:
	push	dword ptr [E4B6]
	call	far 21A1:00A7
	mov	si,ax
	or	ax,ax
	jz	5C40

l1429_5C3D:
	jmp	535D

l1429_5C40:
	mov	dword ptr [E4B6],00000000
	cmp	dword ptr [bp+0E],00
	jz	5C63

l1429_5C50:
	push	dword ptr [E4AE]
	call	far 21A1:00A7
	mov	si,ax
	or	ax,ax
	jz	5C63

l1429_5C60:
	jmp	535D

l1429_5C63:
	mov	dword ptr [E4AE],00000000
	push	dword ptr [E4C0]
	call	far 2142:0067
	mov	si,ax
	or	ax,ax
	jz	5C7F

l1429_5C7C:
	jmp	535D

l1429_5C7F:
	mov	word ptr [E4BE],0000
	les	bx,[bp+06]
	mov	eax,[E4BA]
	mov	es:[bx],eax
	xor	ax,ax

l1429_5C92:
	pop	di
	pop	si
	leave
	retf	0010
1429:5C98                         54 0E 36 19 7B 0E 36 19         T.6.{.6.
1429:5CA0 96 0E 36 19 36 02 36 19 00 00 36 19 74 10 36 19 ..6.6.6...6.t.6.
1429:5CB0 B7 11 36 19 E1 11 36 19 0D 12 36 19 5F 1D 36 19 ..6...6...6._.6.
1429:5CC0 C5 1D 36 19 26 1F 36 19 00 18 31 4A 61 78 8D A1 ..6.&.6...1Jax..
1429:5CD0 B4 C5 D4 E0 EB F4 FA FD FF FD FA F4 EB E0 D4 C5 ................
1429:5CE0 B4 A1 8D 78 61 4A 31 18 00 FF FE FC F8 F0 00 00 ...xaJ1.........
1429:5CF0 00 01 02 04 08 10 00 00 00 00 00 00 00 00 0A 08 ................
1429:5D00 00 00 00 00 00 00 18 20 B0 06 50 06 F4 05 A0 05 ....... ..P.....
1429:5D10 4C 05 00 05 B8 04 74 04 34 04 F8 03 C0 03 8B 03 L.....t.4.......
1429:5D20 53 0E 36 19 78 0D 36 19 62 0D 36 19 6C 0D 36 19 S.6.x.6.b.6.l.6.
1429:5D30 56 0D 36 19 05 0D 36 19 FC 0C 36 19 10 0D 36 19 V.6...6...6...6.
1429:5D40 1B 0D 36 19 3A 0D 36 19 4D 0D 36 19 2F 0D 36 19 ..6.:.6.M.6./.6.
1429:5D50 23 0D 36 19 53 0E 36 19 53 0E 36 19 41 0D 36 19 #.6.S.6.S.6.A.6.
1429:5D60 53 0E 36 19 8D 0D 36 19 99 0D 36 19 A1 0D 36 19 S.6...6...6...6.
1429:5D70 AD 0D 36 19 B7 0D 36 19 C0 0D 36 19 53 0E 36 19 ..6...6...6.S.6.
1429:5D80 07 0E 36 19 53 0E 36 19 07 0E 36 19 CC 0D 36 19 ..6.S.6...6...6.
1429:5D90 D7 0D 36 19 E3 0D 36 19 EF 0D 36 19 FB 0D 36 19 ..6...6...6...6.
1429:5DA0 53 0E 36 19 53 0E 36 19 53 0E 36 19 07 0E 36 19 S.6.S.6.S.6...6.
1429:5DB0 53 0E 36 19 13 0E 36 19 1E 0E 36 19 28 0E 36 19 S.6...6...6.(.6.
1429:5DC0 31 0E 36 19 3C 0E 36 19 48 0E 36 19 53 6C 69 64 1.6.<.6.H.6.Slid
1429:5DD0 65 20 55 70 00 53 6C 69 64 65 20 44 6F 77 6E 00 e Up.Slide Down.
1429:5DE0 54 6F 6E 65 20 50 6F 72 74 61 00 56 69 62 72 61 Tone Porta.Vibra
1429:5DF0 74 6F 00 54 50 72 74 2B 56 6F 6C 53 6C 64 00 56 to.TPrt+VolSld.V
1429:5E00 69 62 2B 56 6F 6C 53 6C 64 00 54 72 65 6D 6F 72 ib+VolSld.Tremor
1429:5E10 00 53 61 6D 70 6C 65 20 4F 66 66 73 00 41 72 70 .Sample Offs.Arp
1429:5E20 65 67 67 69 6F 00 56 6F 6C 75 6D 65 53 6C 69 64 eggio.VolumeSlid
1429:5E30 65 00 50 6F 73 2E 20 4A 75 6D 70 00 50 61 74 74 e.Pos. Jump.Patt
1429:5E40 2E 20 42 72 65 61 6B 00 53 65 74 20 53 70 65 65 . Break.Set Spee
1429:5E50 64 00 53 65 74 20 56 6F 6C 75 6D 65 00 52 65 74 d.Set Volume.Ret
1429:5E60 72 69 67 20 4E 6F 74 65 00 54 72 65 6D 6F 6C 6F rig Note.Tremolo
1429:5E70 00 53 70 65 63 69 61 6C 20 43 6D 64 00 53 65 74 .Special Cmd.Set
1429:5E80 20 54 65 6D 70 6F 00 46 69 6E 65 20 56 69 62 00  Tempo.Fine Vib.
1429:5E90 4D 61 73 74 2E 56 6F 6C 75 6D 65 00 53 65 74 20 Mast.Volume.Set 
1429:5EA0 46 69 6C 74 65 72 00 47 6C 69 73 73 2E 20 43 74 Filter.Gliss. Ct
1429:5EB0 72 6C 00 53 65 74 46 69 6E 65 74 75 6E 65 00 56 rl.SetFinetune.V
1429:5EC0 69 62 2E 57 61 76 65 66 72 6D 00 54 72 65 2E 57 ib.Wavefrm.Tre.W
1429:5ED0 61 76 65 66 72 6D 00 53 65 74 20 50 61 6E 6E 69 avefrm.Set Panni
1429:5EE0 6E 67 00 53 74 65 72 65 6F 43 74 72 6C 00 50 61 ng.StereoCtrl.Pa
1429:5EF0 74 74 2E 4C 6F 6F 70 00 4E 6F 74 65 20 43 75 74 tt.Loop.Note Cut
1429:5F00 00 4E 6F 74 65 20 44 65 6C 61 79 00 50 61 74 74 .Note Delay.Patt
1429:5F10 2E 20 44 65 6C 61 79 00 46 75 6E 6B 52 65 70 65 . Delay.FunkRepe
1429:5F20 61 74 00 00 C8 00 00 00 C4 5E 0A 33 C0 66 26 81 at.......^.3.f&.
1429:5F30 7F 2C 53 43 52 4D 74 04 33 C0 EB 03 B8 01 00 C4 .,SCRMt.3.......
1429:5F40 5E 06 26 89 07 33 C0 C9 CA 08 00 C8 00 00 00 66 ^.&..3.........f
1429:5F50 8B 46 06 66 A3 C8 E4 66 C7 06 D8 E4 00 00 00 00 .F.f...f........
1429:5F60 33 C0 C9 CA 04 00 33 C0 CB C8 0A 00 00 56 57 C4 3.....3......VW.
1429:5F70 76 0A 26 8B 44 2E 89 46 F6 66 26 8B 44 61 66 89 v.&.D..F.f&.Daf.
1429:5F80 46 F8 C7 46 FC 00 00 C7 46 FE 00 00 C4 76 0A 0F F..F....F....v..
1429:5F90 B5 7E F8 83 3E E8 F2 01 75 24 66 65 83 3D 00 0F .~..>...u$fe.=..
1429:5FA0 84 9B 00 66 65 FF 35 68 FB 28 68 CC E4 9A 91 03 ...fe.5h.(h.....
1429:5FB0 98 20 85 C0 0F 85 BD 00 C4 36 CC E4 EB 0A 66 65 . .......6....fe
1429:5FC0 83 3D 00 74 79 65 C4 35 83 C6 02 B9 40 00 26 8A .=.tye.5....@.&.
1429:5FD0 04 46 84 C0 74 66 8A D8 83 E3 1F A8 20 74 1E 26 .F..tf...... t.&
1429:5FE0 80 3C FF 74 15 26 80 3C FE 74 0F 26 80 7C 01 FF .<.t.&.<.t.&.|..
1429:5FF0 74 08 39 5E FE 73 03 89 5E FE 83 C6 02 A8 40 74 t.9^.s..^.....@t
1429:6000 01 46 A8 80 74 C8 26 8A 04 3C 01 72 2A 3C 1A 77 .F..t.&..<.r*<.w
1429:6010 26 3C 04 72 1A 3C 14 74 16 3C 16 74 12 3C 13 75 &<.r.<.t.<.t.<.u
1429:6020 16 26 8A 44 01 24 F0 3C B0 74 04 3C E0 75 08 39 .&.D.$.<.t.<.u.9
1429:6030 5E FE 73 03 89 5E FE 83 C6 02 EB 92 E2 90 83 46 ^.s..^.........F
1429:6040 F8 04 FF 46 FC 8B 46 FC 3B 46 F6 0F 82 3D FF C4 ...F..F.;F...=..
1429:6050 76 0A 33 DB B9 20 00 33 D2 39 5E FE 72 0C 26 80 v.3.. .3.9^.r.&.
1429:6060 78 39 00 74 02 8B D3 43 E2 EF C4 5E 06 42 26 89 x9.t...C...^.B&.
1429:6070 17 33 C0 EB 00 5F 5E C9 CA 08 00 C8 0A 00 00 56 .3..._^........V
1429:6080 57 C4 76 0A 26 8B 44 2E 89 46 F6 26 8B 44 2C 89 W.v.&.D..F.&.D,.
1429:6090 46 FE 8B C8 32 C0 06 C4 7E 06 F3 AA 07 66 26 8B F...2...~....f&.
1429:60A0 44 61 66 89 46 F8 C7 46 FC 00 00 C4 76 0A 0F B5 Daf.F..F....v...
1429:60B0 7E F8 83 3E E8 F2 01 75 20 66 65 83 3D 00 74 69 ~..>...u fe.=.ti
1429:60C0 66 65 FF 35 68 FB 28 68 CC E4 9A 91 03 98 20 85 fe.5h.(h...... .
1429:60D0 C0 75 6B C4 36 CC E4 EB 0A 66 65 83 3D 00 74 49 .uk.6....fe.=.tI
1429:60E0 65 C4 35 83 C6 02 B9 40 00 0F B5 7E 06 26 8A 04 e.5....@...~.&..
1429:60F0 46 84 C0 74 32 8A D8 83 E3 1F A8 20 74 1B 26 0F F..t2...... t.&.
1429:6100 B6 5C 01 F6 C3 80 75 0E 84 DB 74 0A 3B 5E FE 77 .\....u...t.;^.w
1429:6110 05 4B 65 C6 01 01 83 C6 02 A8 40 74 01 46 A8 80 .Ke.......@t.F..
1429:6120 74 CB 83 C6 02 EB C6 E2 C4 83 46 F8 04 FF 46 FC t.........F...F.
1429:6130 8B 46 FC 3B 46 F6 0F 82 71 FF 33 C0 EB 00 5F 5E .F.;F...q.3..._^
1429:6140 C9 CA 08 00 C8 00 00 00 56 57 66 8B 46 0E 66 A3 ........VWf.F.f.
1429:6150 C4 E4 C4 36 C4 E4 26 8B 44 2C A3 EE E4 26 8B 44 ...6..&.D,...&.D
1429:6160 2A A3 EC E4 8B 46 0C A3 F2 E4 8B 46 0A A3 F0 E4 *....F.....F....
1429:6170 26 8A 44 35 A2 07 E5 26 8B 44 32 A3 E0 E4 BB FF &.D5...&.D2.....
1429:6180 7F B9 40 00 A9 10 00 74 06 BB 60 0D B9 C4 01 89 ..@....t..`.....
1429:6190 1E E2 E4 89 0E E4 E4 26 0F B6 44 36 3D 20 00 77 .......&..D6= .w
1429:61A0 03 B8 7D 00 A2 08 E5 0F B5 3E C8 E4 BB 28 00 F7 ..}......>...(..
1429:61B0 E3 06 0F A8 50 65 FF 9D 92 00 0F A9 07 85 C0 0F ....Pe..........
1429:61C0 85 BE 00 26 8B 44 2A A3 EC E4 C7 06 F4 E4 00 00 ...&.D*.........
1429:61D0 8B 1E F4 E4 26 0F BE 40 39 03 1E F2 E4 06 0F A8 ....&..@9.......
1429:61E0 53 50 65 FF 5D 7E 0F A9 07 85 C0 0F 85 92 00 FF SPe.]~..........
1429:61F0 06 F4 E4 A1 F4 E4 3B 06 F0 E4 72 D4 C6 06 06 E5 ......;...r.....
1429:6200 00 C6 06 09 E5 40 C7 06 EA E4 02 00 C7 06 E8 E4 .....@..........
1429:6210 00 00 C6 06 0A E5 00 C6 06 0B E5 00 C6 06 0D E5 ................
1429:6220 00 C6 06 0C E5 00 C6 06 0F E5 00 C6 06 10 E5 00 ................
1429:6230 C6 06 0E E5 00 8B 46 08 A3 DC E4 A3 E6 E4 8B 46 ......F........F
1429:6240 06 A3 DE E4 8C D8 8E C0 BF 11 E5 B9 C0 02 32 C0 ..............2.
1429:6250 FC F3 AA 6A 14 68 FB 28 68 D0 E4 9A 00 00 A1 21 ...j.h.(h......!
1429:6260 85 C0 75 1D B8 0B 00 F7 26 F0 E4 50 68 FB 28 68 ..u.....&..Ph.(h
1429:6270 D4 E4 9A 00 00 A1 21 C7 06 E0 F2 00 00 33 C0 EB ......!......3..
1429:6280 00 5F 5E C9 CA 0C 00 66 C7 06 C4 E4 00 00 00 00 ._^....f........
1429:6290 66 FF 36 D0 E4 9A A7 00 A1 21 85 C0 75 12 66 FF f.6......!..u.f.
1429:62A0 36 D4 E4 9A A7 00 A1 21 85 C0 75 04 33 C0 EB 00 6......!..u.3...
1429:62B0 CB C8 00 00 00 66 8B 46 06 66 A3 D8 E4 66 85 C0 .....f.F.f...f..
1429:62C0 74 13 0F B6 06 08 E5 BB 28 00 F7 E3 50 FF 1E D8 t.......(...P...
1429:62D0 E4 85 C0 75 04 33 C0 EB 00 C9 CA 04 00 57 56 FE ...u.3.......WV.
1429:62E0 06 06 E5 A0 07 E5 38 06 06 E5 75 09 E8 5E 00 85 ......8...u..^..
1429:62F0 C0 75 0D EB 07 E8 0B 00 85 C0 75 04 33 C0 EB 00 .u........u.3...
1429:6300 5E 5F CB C7 06 F4 E4 00 00 A1 F2 E4 A3 F6 E4 BF ^_..............
1429:6310 11 E5 0F B5 36 C8 E4 F6 45 05 80 74 18 0F B6 5D ....6...E..t...]
1429:6320 03 83 FB 1B 77 0F 03 DB 0F B6 45 0B 2E FF 97 09 ....w.....E.....
1429:6330 1D 85 C0 75 17 83 C7 16 FF 06 F4 E4 FF 06 F6 E4 ...u............
1429:6340 A1 F4 E4 3B 06 F0 E4 72 CE E8 75 0C C3 C8 04 00 ...;...r..u.....
1429:6350 00 C6 06 06 E5 00 80 3E 0C E5 00 74 0A FE 0E 0C .......>...t....
1429:6360 E5 E8 9F FF E9 35 03 C6 06 0D E5 00 BF 11 E5 8B .....5..........
1429:6370 0E F0 E4 C6 45 05 00 83 C7 16 E2 F7 80 3E 0E E5 ....E........>..
1429:6380 00 74 0E C6 06 0E E5 00 E8 FE 03 85 C0 0F 85 0B .t..............
1429:6390 03 C4 36 C4 E4 8B 1E E6 E4 26 0F B5 7C 59 65 0F ..6......&..|Ye.
1429:63A0 B6 09 26 3B 4C 2E 0F 83 9D 00 C1 E1 02 26 0F B5 ..&;L........&..
1429:63B0 7C 61 03 F9 66 65 83 3D 00 0F 84 8A 00 83 3E E8 |a..fe.=......>.
1429:63C0 F2 01 75 1F 66 65 FF 35 68 FB 28 68 CC E4 9A 91 ..u.fe.5h.(h....
1429:63D0 03 98 20 85 C0 0F 85 C3 02 66 A1 CC E4 66 89 46 .. ......f...f.F
1429:63E0 FC EB 08 66 65 8B 05 66 89 46 FC C4 76 FC A1 EA ...fe..f.F..v...
1429:63F0 E4 A3 F8 E4 03 F0 26 8A 04 46 84 C0 74 42 33 DB ......&..F..tB3.
1429:6400 8A D8 80 E3 1F BF 11 E5 6B DB 16 03 FB 88 45 05 ........k.....E.
1429:6410 A8 20 74 0D 26 8A 0C 88 0D 46 26 8A 0C 88 4D 01 . t.&....F&...M.
1429:6420 46 A8 40 74 07 26 8A 0C 88 4D 02 46 A8 80 74 0E F.@t.&...M.F..t.
1429:6430 26 8A 0C 88 4D 03 46 26 8A 0C 88 4D 04 46 EB B6 &...M.F&...M.F..
1429:6440 2B 76 FC 89 36 EA E4 C4 36 C4 E4 E8 50 0B 85 C0 +v..6...6...P...
1429:6450 0F 85 48 02 C7 06 F4 E4 00 00 A1 F2 E4 A3 F6 E4 ..H.............
1429:6460 BF 11 E5 0F B5 36 C8 E4 F6 45 05 20 0F 84 7D 01 .....6...E. ..}.
1429:6470 0F B6 5D 01 0A DB 74 4D 78 4B 3B 1E EE E4 77 45 ..]...tMxK;...wE
1429:6480 88 5D 06 56 C4 36 C4 E4 26 C4 74 5D 4B 6B DB 40 .].V.6..&.t]Kk.@
1429:6490 03 F3 26 8A 44 38 26 8B 5C 3E 5E 88 45 07 80 4D ..&.D8&.\>^.E..M
1429:64A0 10 01 0F A8 FF 36 F6 E4 53 65 FF 5C 6E 0F A9 85 .....6..Se.\n...
1429:64B0 C0 0F 85 E7 01 80 3E 09 E5 40 74 09 E8 35 02 85 ......>..@t..5..
1429:64C0 C0 0F 85 D7 01 8A 1D 80 FB FF 0F 84 1F 01 88 5D ...............]
1429:64D0 0A 80 FB FE 0F 84 09 01 F6 45 05 80 74 11 80 7D .........E..t..}
1429:64E0 03 13 75 0B 8A 45 04 24 F0 3C D0 0F 84 FE 00 8A ..u..E.$.<......
1429:64F0 CB C0 E9 04 83 E3 0F 03 DB 66 2E 0F B7 87 38 0C .........f....8.
1429:6500 66 69 C0 B0 0A 02 00 66 D3 E8 0F B6 5D 06 85 DB fi.....f....]...
1429:6510 0F 84 D9 00 56 C4 36 C4 E4 26 C4 74 5D 4B 6B DB ....V.6..&.t]Kk.
1429:6520 40 03 F3 66 26 8B 5C 39 5E 66 85 DB 0F 84 BD 00 @..f&.\9^f......
1429:6530 66 99 66 F7 FB F6 45 05 80 74 10 80 7D 03 07 0F f.f...E..t..}...
1429:6540 84 99 00 80 7D 03 0C 0F 84 91 00 C6 45 12 00 80 ....}.......E...
1429:6550 4D 10 03 8A 5D 03 80 FB 09 74 08 C6 45 14 00 C6 M...]....t..E...
1429:6560 45 15 00 80 FB 11 74 04 C6 45 0F 00 89 45 08 66 E.....t..E...E.f
1429:6570 8B D8 66 85 DB 74 76 66 B8 00 76 DA 00 66 99 66 ..f..tvf..v..f.f
1429:6580 F7 FB 66 8B D8 F6 45 05 80 74 06 80 7D 03 0F 74 ..f...E..t..}..t
1429:6590 16 0F A8 FF 36 F6 E4 66 53 65 FF 5C 56 0F A9 85 ....6..fSe.\V...
1429:65A0 C0 0F 85 F7 00 EB 77 0F A8 FF 36 F6 E4 66 53 65 ......w...6..fSe
1429:65B0 FF 5C 5E 0F A9 85 C0 0F 85 E1 00 32 DB 8A 7D 04 .\^........2..}.
1429:65C0 84 FF 75 03 8A 7D 0B 0F A8 FF 36 F6 E4 53 65 FF ..u..}....6..Se.
1429:65D0 5C 76 0F A9 85 C0 0F 85 C2 00 EB 42 89 45 0C EB \v.........B.E..
1429:65E0 0C 0F A8 FF 36 F6 E4 65 FF 5C 5A 0F A9 F6 45 05 ....6..e.\Z...E.
1429:65F0 80 74 0C 80 7D 03 08 74 0F 80 7D 03 15 74 09 E8 .t..}..t..}..t..
1429:6600 3A 01 85 C0 0F 85 94 00 F6 45 05 80 74 0D 8A 5D :........E..t..]
1429:6610 03 80 FB 09 74 08 80 FB 12 74 03 E8 D6 00 F6 45 ....t....t.....E
1429:6620 05 40 74 13 8A 45 02 3C 40 72 02 B0 3F 88 45 07 .@t..E.<@r..?.E.
1429:6630 E8 C1 00 85 C0 75 65 F6 45 05 80 74 22 8A 45 04 .....ue.E..t".E.
1429:6640 84 C0 74 03 88 45 0B 0F B6 45 0B 0F B6 5D 03 83 ..t..E...E...]..
1429:6650 FB 1A 77 0B 03 DB 2E FF 97 D3 1C 85 C0 75 3D 83 ..w..........u=.
1429:6660 C7 16 FF 06 F4 E4 FF 06 F6 E4 A1 F4 E4 3B 06 F0 .............;..
1429:6670 E4 0F 82 F3 FD 80 3E 0F E5 00 75 11 FF 06 E8 E4 ......>...u.....
1429:6680 83 3E E8 E4 40 72 0D C7 06 E8 E4 00 00 E8 0E 00 .>..@r..........
1429:6690 85 C0 75 08 C6 06 0F E5 00 E8 25 09 C9 C3 06 0F ..u.......%.....
1429:66A0 A8 56 57 C4 36 C4 E4 8B 1E E6 E4 43 3B 1E EC E4 .VW.6......C;...
1429:66B0 73 17 3B 1E DE E4 73 11 26 0F B5 7C 59 65 80 39 s.;...s.&..|Ye.9
1429:66C0 FE 74 E8 65 80 39 FF 75 08 FE 06 10 E5 8B 1E DC .t.e.9.u........
1429:66D0 E4 C7 06 EA E4 02 00 89 1E E6 E4 C6 06 0A E5 00 ................
1429:66E0 C7 06 FA E4 00 00 C7 06 FC E4 02 00 33 C0 5F 5E ............3._^
1429:66F0 0F A9 07 C3                                     ....           

;; fn1858_2404: 1858:2404
fn1858_2404 proc
	mov	al,[di+07]
	call	240B
	ret

;; fn1858_240B: 1858:240B
fn1858_240B proc
	or	byte ptr [di+10],01
	mov	bl,[21BB]
	mul	bl
	shr	ax,06
	push	gs
	push	word ptr [E4F6]
	push	ax
	call	dword ptr gs:[si+66]
	pop	gs
	ret
1858:2426                   85 C0 74 1F 66 0F B7 C8 66 B8       ..t.f...f.
1858:2430 00 76 DA 00 66 99 66 F7 F9 0F A8 FF 36 F6 E4 66 .v..f.f.....6..f
1858:2440 50 65 FF 5C 5E 0F A9 EB 02 33 C0 C3 8B 45 08 8B Pe.\^....3...E..
1858:2450 16 E0 E4 F7 C2 10 00 74 18 3B 06 E2 E4 76 06 A1 .......t.;...v..
1858:2460 E2 E4 89 45 08 3B 06 E4 E4 73 06 A1 E4 E4 89 45 ...E.;...s.....E
1858:2470 08 3B 06 E2 E4 76 0C A1 E2 E4 F7 C2 10 00 74 03 .;...v........t.
1858:2480 89 45 08 3B 06 E4 E4 73 0C A1 E4 E4 F7 C2 10 00 .E.;...s........
1858:2490 74 03 89 45 08 E8 8E FF C3 C8 06 00 00 06 0F A8 t..E............
1858:24A0 56 57 8B 0E E8 E4 85 C9 0F 84 87 00 89 4E FA C4 VW...........N..
1858:24B0 36 C4 E4 8B 1E E6 E4 26 0F B5 7C 59 65 0F B6 09 6......&..|Ye...
1858:24C0 26 3B 4C 2E 73 6D C1 E1 02 26 0F B5 7C 61 03 F9 &;L.sm...&..|a..
1858:24D0 66 65 83 3D 00 74 5C 83 3E E8 F2 01 75 1D 66 65 fe.=.t\.>...u.fe
1858:24E0 FF 35 68 FB 28 68 CC E4 9A 91 03 98 20 85 C0 75 .5h.(h...... ..u
1858:24F0 42 66 A1 CC E4 66 89 46 FC EB 08 66 65 8B 05 66 Bf...f.F...fe..f
1858:2500 89 46 FC C4 76 FC 03 36 EA E4 26 8A 04 46 84 C0 .F..v..6..&..F..
1858:2510 74 15 A8 20 74 03 83 C6 02 A8 40 74 01 46 A8 80 t.. t.....@t.F..
1858:2520 74 03 83 C6 02 EB E3 FF 4E FA 75 DE 2B 76 FC 89 t.......N.u.+v..
1858:2530 36 EA E4 33 C0 5F 5E 0F A9 07 C9 C3 8A 45 04 84 6..3._^......E..
1858:2540 C0 74 03 A2 07 E5 33 C0 C3 0F B6 45 04 39 06 E6 .t....3....E.9..
1858:2550 E4 72 04 FE 06 10 E5 48 A3 E6 E4 C7 06 E8 E4 00 .r.....H........
1858:2560 00 C6 06 0F E5 01 33 C0 C3 C6 06 0F E5 01 C6 06 ......3.........
1858:2570 0E E5 01 8A 45 04 8A E0 24 0F C0 EC 04 D5 0A 3D ....E...$......=
1858:2580 3F 00 76 03 B8 3F 00 A3 E8 E4 33 C0 C3 8A D8 C0 ?.v..?....3.....
1858:2590 EB 04 8A C8 80 E1 0F 80 F9 0F 74 41 80 FB 0F 74 ..........tA...t
1858:25A0 17 8B 16 E0 E4 F7 C2 40 00 75 07 80 3E 06 E5 00 .......@.u..>...
1858:25B0 74 48 84 C9 74 32 EB 1A 80 3E 06 E5 00 75 3B EB tH..t2...>...u;.
1858:25C0 11 8B 16 E0 E4 F7 C2 40 00 75 07 80 3E 06 E5 00 .......@.u..>...
1858:25D0 74 28 28 4D 07 79 1E C6 45 07 00 EB 18 84 DB 74 t((M.y..E......t
1858:25E0 E0 80 3E 06 E5 00 75 12 00 5D 07 80 7D 07 40 72 ..>...u..]..}.@r
1858:25F0 04 C6 45 07 3F E8 0C FE EB 02 33 C0 C3 80 3E 06 ..E.?.....3...>.
1858:2600 E5 00 74 0A 3D E0 00 73 22 C1 E0 02 EB 15 3D E0 ..t.=..s".....=.
1858:2610 00 76 18 3D F0 00 76 08 25 0F 00 C1 E0 02 EB 03 .v.=..v.%.......
1858:2620 25 0F 00 01 45 08 E8 23 FE EB 02 33 C0 C3 80 3E %...E..#...3...>
1858:2630 06 E5 00 74 0A 3D E0 00 73 22 C1 E0 02 EB 15 3D ...t.=..s".....=
1858:2640 E0 00 76 18 3D F0 00 76 08 25 0F 00 C1 E0 02 EB ..v.=..v.%......
1858:2650 03 25 0F 00 29 45 08 E8 F2 FD EB 02 33 C0 C3 0F .%..)E......3...
1858:2660 B6 45 04 85 C0 75 04 0F B6 45 0E 88 45 0E 8B 5D .E...u...E..E..]
1858:2670 0C 85 DB 74 2A C1 E0 02 39 5D 08 7F 12 01 45 08 ...t*...9]....E.
1858:2680 39 5D 08 7C 1A 89 5D 08 C7 45 0C 00 00 EB 10 29 9].|..]..E.....)
1858:2690 45 08 39 5D 08 7F 08 89 5D 08 C7 45 0C 00 00 E8 E.9]....]..E....
1858:26A0 AA FD C3 8A 45 04 84 C0 75 03 8A 45 11 A8 F0 75 ....E...u..E...u
1858:26B0 0A 8A 65 11 24 0F 80 E4 F0 0A C4 88 45 11 8A 5D ..e.$.......E..]
1858:26C0 12 83 E3 1F 2E 8A 87 F8 0B 8A 4D 11 80 E1 0F F6 ..........M.....
1858:26D0 E1 C1 E8 04 F7 06 E0 E4 01 00 75 02 D1 E8 66 0F ..........u...f.
1858:26E0 B7 C0 66 0F B7 5D 08 F6 45 12 20 75 05 66 03 D8 ..f..]..E. u.f..
1858:26F0 EB 03 66 2B D8 8A 45 11 C0 E8 04 00 45 12 8B C3 ..f+..E.....E...
1858:2700 E8 23 FD C3 8A 5D 15 84 DB 74 07 FE CB 88 5D 15 .#...]...t....].
1858:2710 EB 28 8A 45 04 80 7D 14 01 74 0F C0 E8 04 88 45 .(.E..}..t.....E
1858:2720 15 C6 45 14 01 E8 DC FC EB 12 24 0F 88 45 15 C6 ..E.......$..E..
1858:2730 45 14 00 32 C0 E8 D3 FC EB 02 33 C0 C3 8A 5D 0A E..2......3...].
1858:2740 8A CB 83 E3 0F C0 E9 04 51 0F B6 06 06 E5 B1 03 ........Q.......
1858:2750 F6 F1 59 84 E4 74 17 FE CC 74 0A 8A 45 0B 25 0F ..Y..t...t..E.%.
1858:2760 00 03 D8 EB 09 0F B6 45 0B C1 E8 04 03 D8 83 FB .......E........
1858:2770 0C 72 05 83 EB 0C FE C1 03 DB 66 2E 0F B7 87 38 .r........f....8
1858:2780 0C 66 69 C0 B0 0A 02 00 66 D3 E8 0F B6 5D 06 56 .fi.....f....].V
1858:2790 C4 36 C4 E4 26 C4 74 5D 4B 6B DB 40 03 F3 66 26 .6..&.t]Kk.@..f&
1858:27A0 8B 5C 39 5E 66 99 66 F7 FB E8 7A FC C3 E8 DD FD .\9^f.f...z.....
1858:27B0 85 C0 75 03 E8 07 FF C3 E8 D2 FD 85 C0 75 03 E8 ..u..........u..
1858:27C0 A5 FE C3 8A 45 0F FE C8 3C 00 7E 05 88 45 0F EB ....E...<.~..E..
1858:27D0 5B 0F A8 FF 36 F6 E4 6A 00 65 FF 5C 76 0F A9 85 [...6..j.e.\v...
1858:27E0 C0 75 4B 8A 45 0B 8A D8 24 0F 88 45 0F C0 EB 04 .uK.E...$..E....
1858:27F0 32 FF 2E 8A 87 28 0C 84 C0 74 0D 8A 4D 07 F6 E1 2....(...t..M...
1858:2800 C1 E8 04                                        ...            

;; fn1858_2803: 1858:2803
fn1858_2803 proc
	mov	[di+07],al
	jmp	2810
1858:2808                         2E 8A 87 18 0C 00 45 07         ......E.

l1858_2810:
	mov	al,[di+07]
	cmp	al,00
	jge	281B

l1858_2817:
	mov	byte ptr [di+07],00

l1858_281B:
	cmp	al,40
	jl	2823

l1858_281F:
	mov	byte ptr [di+07],3F

l1858_2823:
	or	byte ptr [di+10],03
	call	2404
	jmp	282E
1858:282C                                     33 C0                   3. 

l1858_282E:
	ret
1858:282F                                              8A                .
1858:2830 45 04 84 C0 75 03 8A 45 11 A8 F0 75 0A 8A 65 11 E...u..E...u..e.
1858:2840 24 0F 80 E4 F0 0A C4 88 45 11 8A 5D 12 83 E3 1F $.......E..]....
1858:2850 2E 8A 87 F8 0B 8A 4D 11 80 E1 0F F6 E1 C1 E8 07 ......M.........
1858:2860 0F B6 5D 07 F6 45 12 20 75 04 03 D8 EB 02 2B D8 ..]..E. u.....+.
1858:2870 8A 45 11 C0 E8 04 00 45 12 80 4D 10 01 83 FB 00 .E.....E..M.....
1858:2880 7D 02 33 DB 83 FB 40 7C 03 BB 3F 00 8A C3 E8 7A }.3...@|..?....z
1858:2890 FB C3 8A 45 04 3C 20 77 04 33 C0 EB 31 A2 08 E5 ...E.< w.3..1...
1858:28A0 32 E4 BB 28 00 F7 E3 8B D8 0F A8 53 53 65 FF 9C 2..(.......SSe..
1858:28B0 92 00 5B 0F A9 85 C0 75 15 66 83 3E D8 E4 00 75 ..[....u.f.>...u
1858:28C0 04 33 C0 EB 09 0F A8 53 FF 1E D8 E4 0F A9 C3 8A .3.....S........
1858:28D0 45 04 84 C0 75 03 8A 45 11 A8 F0 75 0A 8A 65 11 E...u..E...u..e.
1858:28E0 24 0F 80 E4 F0 0A C4 88 45 11 8A 5D 12 83 E3 1F $.......E..]....
1858:28F0 2E 8A 87 F8 0B 8A 4D 11 80 E1 0F F6 E1 C1 E8 07 ......M.........
1858:2900 66 0F B7 C0 66 0F B7 5D 08 F6 45 12 20 75 05 66 f...f..]..E. u.f
1858:2910 03 D8 EB 03 66 2B D8 8A 45 11 C0 E8 04 00 45 12 ....f+..E.....E.
1858:2920 8B C3 E8 01 FB C3 8A 45 04 3C 40 76 02 B0 40 A2 .......E.<@v..@.
1858:2930 09 E5 33 C0 C3 8A 45 04 83 3E E4 F2 00 74 24 3C ..3...E..>...t$<
1858:2940 A4 75 05 B8 80 00 EB 07 3C 80 77 17 2C 40 98 8B .u......<.w.,@..
1858:2950 1E F4 E4 03 1E F2 E4 0F A8 53 50 65 FF 5C 7E 0F .........SPe.\~.
1858:2960 A9 EB 02 33 C0 C3 8A D8 25 0F 00 81 E3 F0 00 C1 ...3....%.......
1858:2970 EB 03 2E FF 97 3F 1D C3 8A 45 04 25 0F 00 83 3E .....?...E.%...>
1858:2980 E4 F2 00 74 29 2D 08 00 78 01 40 C1 E0 03 8B 1E ...t)-..x.@.....
1858:2990 F4 E4 03 1E F2 E4 3D F8 FF 7C 07 3D 08 00 7F 02 ......=..|.=....
1858:29A0 33 C0 0F A8 53 50 65 FF 5C 7E 0F A9 EB 02 33 C0 3...SPe.\~....3.
1858:29B0 C3 38 06 06 E5 75 09 C6 45 07 00 E8 46 FA EB 02 .8...u..E...F...
1858:29C0 33 C0 C3 38 06 06 E5 0F 85 89 00 8A 1D 80 FB FF 3..8............
1858:29D0 74 72 80 FB FE 74 6F 88 5D 0A 8A CB C0 E9 04 83 tr...to.].......
1858:29E0 E3 0F 03 DB 66 2E 0F B7 87 38 0C 66 69 C0 B0 0A ....f....8.fi...
1858:29F0 02 00 66 D3 E8 0F B6 5D 06 56 C4 36 C4 E4 26 C4 ..f....].V.6..&.
1858:2A00 74 5D 4B 6B DB 40 03 F3 66 26 8B 5C 39 5E 66 85 t]Kk.@..f&.\9^f.
1858:2A10 DB 74 05 66 99 66 F7 FB 80 4D 10 03 89 45 08 66 .t.f.f...M...E.f
1858:2A20 8B D8 66 85 DB 74 1D 66 B8 00 76 DA 00 66 99 66 ..f..t.f..v..f.f
1858:2A30 F7 FB 0F A8 FF 36 F6 E4 66 50 65 FF 5C 56 0F A9 .....6..fPe.\V..
1858:2A40 85 C0 EB 12 EB 0E 0F A8 FF 36 F6 E4 65 FF 5C 5A .........6..e.\Z
1858:2A50 0F A9 EB 02 33 C0 C3 80 3E 06 E5 00 75 3D       ....3...>...u= 

;; fn1858_2A5E: 1858:2A5E
fn1858_2A5E proc
	test	al,al
	jz	2A8F

l1858_2A62:
	cmp	byte ptr [E50A],00
	jz	2A85

l1858_2A69:
	dec	byte ptr [E50B]
	jnz	2A76

l1858_2A6F:
	mov	byte ptr [E50A],00
	jmp	2A9B

l1858_2A76:
	mov	ax,[E4FA]
	dec	ax
	mov	[E4E8],ax
	mov	ax,[E4FC]
	mov	[E4EA],ax
	jmp	2A9B

l1858_2A85:
	mov	[E50B],al
	mov	byte ptr [E50A],01
	jmp	2A76

l1858_2A8F:
	mov	ax,[E4E8]
	mov	[E4FA],ax
	mov	ax,[E4F8]
	mov	[E4FC],ax

l1858_2A9B:
	xor	ax,ax
	ret
1858:2A9E                                           80 3E               .>
1858:2AA0 0D E5 00 75 08 A2 0C E5 C6 06 0D E5 01 33 C0 C3 ...u.........3..
1858:2AB0 33 C0 C3 D0 1C 5C 17 69 17 89 17 AD 17 1D 18 4E 3....\.i.......N
1858:2AC0 18 D0 1C D0 1C 24 19 5D 19 D0 1C D0 1C D0 1C D0 .....$.]........
1858:2AD0 1C D0 1C D0 1C E3 19 D0 1C                      .........      

;; fn1858_2AD9: 1858:2AD9
fn1858_2AD9 proc
	xchg	[bp+di],bl
	mov	dl,1A
	rcr	byte ptr [si],01
	inc	si
	sbb	dx,ax
	sbb	al,55
	sbb	dx,ax
	sbb	al,98
	sbb	dx,ax
	sbb	al,D0
	sbb	al,D0
	sbb	al,D0
	sbb	al,AD
	pop	ss
	sbb	ax,4E18
	sbb	[bx+18],bh
	ret
1858:2AFA                               18 24 19 5D 19 CD           .$.]..
1858:2B00 19 D8 19 D0 1C D0 1C D0 1C D0 1C E3 19 4F 1A 86 .............O..
1858:2B10 1B D0 1C EF 1A D0 1C D0 1C D0 1C D0 1C D0 1C D0 ................
1858:2B20 1C D0 1C D0 1C D0 1C D0 1C D0 1C D0 1C D0 1C 9E ................
1858:2B30 1B D0 1C D0 1C 77 1C D1 1B E3 1B BE 1C D0 1C C8 .....w..........
1858:2B40 00 00 00 56 57 8B 5E 06 83 FB 00 7D 05 8B 1E EC ...VW.^....}....
1858:2B50 E4 4B C7 06 E8 E4 00 00 C4 36 C4 E4 3B 1E EC E4 .K.......6..;...
1858:2B60 7D 20 26 0F B5 7C 59 65 8A 09 80 F9 FE 74 0C 80 } &..|Ye.....t..
1858:2B70 F9 FF 75 16 26 8A 44 35 A2 07 E5 43 89 1E DC E4 ..u.&.D5...C....
1858:2B80 EB DA 33 DB C7 06 DC E4 00 00 89 1E E6 E4 89 1E ..3.............
1858:2B90 02 E5 C7 06 EA E4 02 00 C6 06 06 E5 00 33 C0 5F .............3._
1858:2BA0 5E C9 CA 02 00 C8 00 00 00 56 57 C4 36 D0 E4 BF ^........VW.6...
1858:2BB0 11 E5 A1 FE E4 26 89 44 02 C7 06 FE E4 00 00 A1 .....&.D........
1858:2BC0 00 E5 26 89 44 0C A1 02 E5 26 89 44 08 A1 04 E5 ..&.D....&.D....
1858:2BD0 26 89 44 0A 0F B6 06 07 E5 26 89 44 04 0F B6 06 &.D......&.D....
1858:2BE0 08 E5 26 89 44 06 66 A1 D4 E4 66 26 89 44 10 A1 ..&.D.f...f&.D..
1858:2BF0 F0 E4 26 89 04 0F B6 06 10 E5 26 89 44 0E 26 8B ..&.......&.D.&.
1858:2C00 0C 26 C4 74 10 8A 45 05 26 88 04 8A 45 0A 26 88 .&.t..E.&...E.&.
1858:2C10 44 01 8A 45 06 26 88 44 02 8A 45 04 26 88 44 05 D..E.&.D..E.&.D.
1858:2C20 8A 45 07 26 88 44 03 8A 45 13 F6 26 09 E5 C1 E8 .E.&.D..E..&....
1858:2C30 06 26 88 44 06 F6 45 05 80 74 42 0F B6 5D 03 83 .&.D..E..tB..]..
1858:2C40 FB 13 75 25 26 8A 44 05 C0 E8 04 0F B6 D8 04 20 ..u%&.D........ 
1858:2C50 26 88 44 04 26 80 64 05 0F C1 E3 02 66 2E 8B 87 &.D.&.d.....f...
1858:2C60 BC 0C 66 26 89 44 07 EB 25 26 88 5C 04 C1 E3 02 ..f&.D..%&.\....
1858:2C70 66 2E 8B 87 50 0C 66 26 89 44 07 EB 11 26 C6 44 f...P.f&.D...&.D
1858:2C80 04 00 26 C7 44 07 53 0E 26 C7 44 09 36 19 83 C6 ..&.D.S.&.D.6...
1858:2C90 0B 83 C7 16 E2 02 EB 03 E9 6A FF C4 7E 06 66 A1 .........j..~.f.
1858:2CA0 D0 E4 66 26 89 05 33 C0 5F 5E C9 CA 04 00 C7 06 ..f&..3._^......
1858:2CB0 FE E4 01 00 A1 E8 E4 A3 00 E5 8B 1E E6 E4 89 1E ................
1858:2CC0 02 E5 26 0F B5 7C 59 65 0F B6 01 A3 04 E5 33 C0 ..&..|Ye......3.
1858:2CD0 C3 57 BF 11 E5 8B 0E F0 E4 80 7D 13 00 74 03 FE .W........}..t..
1858:2CE0 4D 13 F6 45 10 01 74 11 8A 45 07 F6 45 10 02 75 M..E..t..E..E..u
1858:2CF0 05 38 45 13 76 03 88 45 13 80 65 10 FC 83 C7 16 .8E.v..E..e.....
1858:2D00 E2 D7 33 C0 5F C3 C8 00 00 00 8B 46 06 3C 40 7E ..3._......F.<@~
1858:2D10 02 B0 40 A2 09 E5 33 C0 C9 CA 02 00 33 C0 CB 00 ..@...3.....3...
;;; Segment 1B2A (1B2A:0000)

;; fn1B2A_0000: 1B2A:0000
fn1B2A_0000 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,E7D2
	push	ds
	push	di
	mov	di,007A
	mov	ax,1B2A
	push	ax
	push	di
	mov	ax,009E
	push	ax
	call	far 2128:006C
	mov	di,E870
	push	ds
	push	di
	mov	di,1935
	mov	ax,1B2A
	push	ax
	push	di
	mov	ax,009E
	push	ax
	call	far 2128:006C
	mov	di,2733
	push	ds
	push	di
	mov	di,1E6E
	mov	ax,1B2A
	push	ax
	push	di
	mov	ax,009E
	push	ax
	call	far 2128:006C
	mov	di,2733
	push	ds
	push	di
	mov	di,2733
	mov	ax,1B2A
	push	ax
	push	di
	mov	ax,009E
	push	ax
	call	far 2128:006C
	mov	di,EA4A
	push	ds
	push	di
	mov	di,2C3D
	mov	ax,1B2A
	push	ax
	push	di
	mov	ax,009E
	push	ax
	call	far 2128:006C
	pop	bp
	retf
1B2A:007A                               01 00 11 00 20 02           .... .
1B2A:0080 00 00 01 00 01 00 00 00 0B 00 18 01 2A 1B 3D 01 ............*.=.
1B2A:0090 2A 1B 06 00 69 01 2A 1B 36 02 2A 1B D0 02 2A 1B *...i.*.6.*...*.
1B2A:00A0 60 04 2A 1B 8D 04 2A 1B A0 04 2A 1B BC 04 2A 1B `.*...*...*...*.
1B2A:00B0 8A 05 2A 1B 9D 05 2A 1B 22 06 2A 1B 4F 06 2A 1B ..*...*.".*.O.*.
1B2A:00C0 D7 06 2A 1B F3 06 2A 1B 06 07 2A 1B 16 07 2A 1B ..*...*...*...*.
1B2A:00D0 29 07 2A 1B 03 08 2A 1B 45 08 2A 1B B1 08 2A 1B ).*...*.E.*...*.
1B2A:00E0 06 09 2A 1B 59 09 2A 1B 7E 09 2A 1B BF 0A 2A 1B ..*.Y.*.~.*...*.
1B2A:00F0 EC 0A 2A 1B 90 0B 2A 1B 56 0C 2A 1B 18 0D 2A 1B ..*...*.V.*...*.
1B2A:0100 3F 0D 2A 1B 9F 0D 2A 1B 68 10 2A 1B EE 10 2A 1B ?.*...*.h.*...*.
1B2A:0110 FE 10 2A 1B 01 11 2A 1B 47 72 61 76 69 73 20 55 ..*...*.Gravis U
1B2A:0120 6C 74 72 61 73 6F 75 6E 64 20 53 6F 75 6E 64 20 ltrasound Sound 
1B2A:0130 44 65 76 69 63 65 20 76 33 2E 35 33 00 41 01 2A Device v3.53.A.*
1B2A:0140 1B 47 72 61 76 69 73 20 55 6C 74 72 61 53 6F 75 .Gravis UltraSou
1B2A:0150 6E 64 20 28 47 46 31 20 68 61 72 64 77 61 72 65 nd (GF1 hardware
1B2A:0160 20 6D 69 78 69 6E 67 29 00 10 02 20 02 30 02 40  mixing)... .0.@
1B2A:0170 02 50 02 60 02 55 4C 54 52 41 53 4E 44 00 44 AC .P.`.ULTRASND.D.
1B2A:0180 C8 A0 BB 96 DD 8D FC 85 EE 7E 96 78 D8 72 9F 6D .........~.x.r.m
1B2A:0190 DB 68 7D 64 78 60 C2 5C 52 59 22 56 29 53 64 50 .h}dx`.\RY"V)SdP
1B2A:01A0 CC 4D 5D 4B 00 15 10 8F 10 9F 50 AB 10 AF 70 B9 .M]K......P...p.
1B2A:01B0 50 BB 30 BD 10 BF 80 C8 70 C9 60 CA 50 CB 40 CC P.0.....p.`.P.@.
1B2A:01C0 30 CD 20 CE 10 CF 00 D8 80 D8 F0 D8 70 D9 E0 D9 0. .........p...
1B2A:01D0 60 DA D0 DA 50 DB C0 DB 40 DC B0 DC 30 DD A0 DD `...P...@...0...
1B2A:01E0 20 DE 90 DE 10 DF 80 DF 00 E8 40 E8 80 E8 B0 E8  .........@.....
1B2A:01F0 F0 E8 30 E9 70 E9 A0 E9 E0 E9 20 EA 60 EA 90 EA ..0.p..... .`...
1B2A:0200 D0 EA 10 EB 50 EB 80 EB C0 EB 00 EC 40 EC 70 EC ....P.......@.p.
1B2A:0210 B0 EC F0 EC 30 ED 60 ED A0 ED E0 ED 20 EE 50 EE ....0.`..... .P.
1B2A:0220 90 EE D0 EE 00 EF 52 50 BA 00 03 EC EC EC EC EC ......RP........
1B2A:0230 EC EC EC 58 5A C3 C8 00 00 00 68 2A 1B 68 75 01 ...XZ.....h*.hu.
1B2A:0240 9A 39 01 28 21 8B D8 0B DA 74 6C 8B D8 8E C2 B1 .9.(!....tl.....
1B2A:0250 03 33 C0 26 8A 17 43 80 EA 30 C1 E0 04 02 C2 FE .3.&..C..0......
1B2A:0260 C9 75 F0 A3 D6 E7 05 03 01 A3 EC EA E8 D4 01 8B .u..............
1B2A:0270 16 EC EA B0 44 EE 83 C2 02 33 C0 EE 8B 16 EC EA ....D....3......
1B2A:0280 B0 43 EE 42 33 C0 EF 83 C2 03 B0 55 EE 83 EA 03 .C.B3......U....
1B2A:0290 B8 01 00 EF 83 C2 03 B0 AA EE 83 EA 03 33 C0 EF .............3..
1B2A:02A0 83 C2 03 EC 3C 55 75 0F 83 EA 03 B8 01 00 EF 83 ....<Uu.........
1B2A:02B0 C2 03 EC 3C AA 74 0A C7 06 D6 E7 00 00 33 C0 EB ...<.t.......3..
1B2A:02C0 03 B8 01 00 C4 5E 06 26 89 07 33 C0 C9 CA 04 00 .....^.&..3.....
1B2A:02D0 C8 00 00 00 57 C7 06 F2 EA 01 00 C7 06 FC EA 00 ....W...........
1B2A:02E0 00 C7 06 F8 EA 40 00 C7 06 FA EA 00 00 C7 06 18 .....@..........
1B2A:02F0 EB 00 00 C7 06 1A EB 00 00 8B 46 06 25 01 00 A3 ..........F.%...
1B2A:0300 12 EB A1 D6 E7 05 03 01 A3 EC EA 48 A3 EA EA E8 ...........H....
1B2A:0310 31 01 66 C7 06 FE EA 00 00 00 00 B9 04 00 33 DB 1.f...........3.
1B2A:0320 8B 16 EC EA B0 44 EE 83 C2 02 8B C3 EE 8B 16 EC .....D..........
1B2A:0330 EA B0 43 EE 42 33 C0 EF 83 C2 03 B0 55 EE 83 EA ..C.B3......U...
1B2A:0340 03 B8 01 00 EF 83 C2 03 B0 AA EE 83 EA 03 33 C0 ..............3.
1B2A:0350 EF 83 C2 03 EC 3C 55 75 1D 83 EA 03 B8 01 00 EF .....<Uu........
1B2A:0360 83 C2 03 EC 3C AA 75 0E 66 81 06 FE EA 00 00 04 ....<.u.f.......
1B2A:0370 00 83 C3 04 E2 AA 66 83 3E FE EA 00 75 06 B8 15 ......f.>...u...
1B2A:0380 00 E9 BA 00 66 A1 FE EA 66 A3 02 EB 66 A3 06 EB ....f...f...f...
1B2A:0390 8B 16 D6 E7 B0 03 EE 8B 16 EC EA B0 0E EE 83 C2 ................
1B2A:03A0 02 B0 DF EE B9 20 00 8B 16 EA EA 8B C1 EE 8B 16 ..... ..........
1B2A:03B0 EC EA B0 00 EE 83 C2 02 B0 03 EE 8B 16 EC EA B0 ................
1B2A:03C0 09 EE 42 B8 00 05 EF 8B 16 EC EA B0 0C EE 83 C2 ..B.............
1B2A:03D0 02 B0 08 EE 8B 16 EC EA B0 0D EE 83 C2 02 B0 03 ................
1B2A:03E0 EE 8B 16 EC EA B0 06 EE 83 C2 02 B0 3F EE E2 B7 ............?...
1B2A:03F0 8B 16 EC EA B0 4C EE 83 C2 02 B0 03 EE E8 63 11 .....L........c.
1B2A:0400 85 C0 75 3A 68 00 12 68 FB 28 68 14 EB 9A 00 00 ..u:h..h.(h.....
1B2A:0410 A1 21 85 C0 75 28 66 8B 1E 14 EB 66 89 1E BE EE .!..u(f....f....
1B2A:0420 8B FB 66 C1 EB 10 8E C3 66 33 C0 B9 00 12 FC F3 ..f.....f3......
1B2A:0430 AA C7 06 DE E7 01 00 33 C0 5F C9 CA 04 00 5F C9 .......3._...._.
1B2A:0440 CA 04 00 8B 16 EC EA B0 4C EE 83 C2 02 B0 00 EE ........L.......
1B2A:0450 E8 D3 FD E8 D0 FD B0 01 EE E8 CA FD E8 C7 FD C3 ................
1B2A:0460 E8 E0 FF 8B 16 D6 E7 32 C0 EE E8 52 11 85 C0 75 .......2...R...u
1B2A:0470 1B 66 FF 36 BE EE 9A A7 00 A1 21 85 C0 75 0D C7 .f.6......!..u..
1B2A:0480 06 F2 EA 01 00 C7 06 DE E7 00 00 CB CB C8 00 00 ................
1B2A:0490 00 A1 EE EA C4 5E 06 26 89 07 33 C0 C9 CA 04 00 .....^.&..3.....
1B2A:04A0 C8 00 00 00 B8 08 00 BB 02 00 2B 1E 12 EB 0B C3 ..........+.....
1B2A:04B0 C4 5E 06 26 89 07 33 C0 C9 CA 04 00 C8 00 00 00 .^.&..3.........
1B2A:04C0 56 57 C7 06 1C EB 40 00 FC 8B 5E 06 89 1E E8 EA VW....@...^.....
1B2A:04D0 C7 06 F4 EA 00 00 C7 06 F6 EA 00 00 83 3E E6 F2 .............>..
1B2A:04E0 00 74 09 03 DB 83 FB 20 0F 87 95 00 83 FB 0E 73 .t..... .......s
1B2A:04F0 03 BB 0E 00 8B CB 83 EB 0E 03 DB 2E 8B 9F 7E 01 ..............~.
1B2A:0500 89 1E EE EA 8B 16 EC EA B0 0E EE 83 C2 02 8B C1 ................
1B2A:0510 48 0C C0 EE 8C D8 8E C0 BF 1E EB 32 C0 B9 A0 03 H..........2....
1B2A:0520 F3 AA 8B 4E 06 33 DB 8B 16 EA EA 8B 46 06 2B C1 ...N.3......F.+.
1B2A:0530 EE 8B 16 EC EA B0 0C EE 83 C2 02 C7 87 37 EB 00 .............7..
1B2A:0540 00 B0 08 EE C6 87 1E EB 01 83 3E E6 F2 00 74 0F ..........>...t.
1B2A:0550 A1 E8 EA 6B C0 1D 8B F0 03 F3 C6 84 1E EB 81 83 ...k............
1B2A:0560 C3 1D E2 C3 C7 06 1A EB 01 00 8B 16 D6 E7 32 C0 ..............2.
1B2A:0570 EE 6A 00 0E E8 AB 00 85 C0 75 09 5F 5E C9 CA 02 .j.......u._^...
1B2A:0580 00 B8 14 00 5F 5E C9 CA 02 00 0E E8 0F 00 C7 06 ...._^..........
1B2A:0590 1A EB 00 00 C7 06 E8 EA 00 00 33 C0 CB 56 33 DB ..........3..V3.
1B2A:05A0 8B 0E E8 EA 8B 16 EA EA A1 E8 EA 2B C1 EE 8B 16 ...........+....
1B2A:05B0 EC EA B0 00 EE 83 C2 02 B0 03 EE E8 68 FC EE 8B ............h...
1B2A:05C0 16 EC EA B0 0C EE 83 C2 02 C7 87 37 EB 00 00 C6 ...........7....
1B2A:05D0 87 1F EB 00 C6 87 20 EB 00 80 A7 1E EB 7F B0 08 ...... .........
1B2A:05E0 EE 80 8F 1E EB 01 83 3E E6 F2 00 74 2C A1 E8 EA .......>...t,...
1B2A:05F0 6B C0 1D 8B F0 03 F3 80 8C 1E EB 81 8B 16 EA EA k...............
1B2A:0600 A1 E8 EA 03 C0 2B C1 EE 8B 16 EC EA B0 00 EE 83 .....+..........
1B2A:0610 C2 02 B0 03 EE E8 0E FC EE 83 C3 1D E2 86 33 C0 ..............3.
1B2A:0620 5E CB C8 00 00 00 8B 46 06 39 06 F4 EA 74 1A A3 ^......F.9...t..
1B2A:0630 F4 EA B3 01 85 C0 75 02 B3 03 FA 8B 16 EC EA B0 ......u.........
1B2A:0640 4C EE 83 C2 02 8A C3 EE FB 33 C0 C9 CA 02 00 C8 L........3......
1B2A:0650 00 00 00 8B 46 06 39 06 F6 EA 74 75 A3 F6 EA 85 ....F.9...tu....
1B2A:0660 C0 75 2E 33 C9 33 DB F6 84 1E EB 20 74 18 FA 8B .u.3.3..... t...
1B2A:0670 16 EA EA 8B C1 EE 8B 16 EC EA B0 00 EE 83 C2 02 ................
1B2A:0680 8A 84 2A EB EE FB 83 C6 1D 41 83 F9 20 75 D8 EB ..*......A.. u..
1B2A:0690 40 33 C9 33 F6 FA 8B 16 EA EA 8B C1 EE 8B 16 EC @3.3............
1B2A:06A0 EA B0 80 EE 83 C2 02 EC FB 24 01 34 01 C0 E0 05 .........$.4....
1B2A:06B0 80 A4 1E EB DF 08 84 1E EB FA 8B 16 EC EA B0 00 ................
1B2A:06C0 EE 83 C2 02 B0 03 EE FB 83 C6 1D 41 83 F9 20 75 ...........A.. u
1B2A:06D0 C4 33 C0 C9 CA 02 00 C8 00 00 00 8B 46 06 39 06 .3..........F.9.
1B2A:06E0 F8 EA 74 09 A3 F8 EA C7 06 FA EA 01 00 33 C0 C9 ..t..........3..
1B2A:06F0 CA 02 00 C8 00 00 00 A1 F8 EA C4 5E 06 26 89 07 ...........^.&..
1B2A:0700 33 C0 C9 CA 04 00 C8 00 00 00 8B 46 06 A3 1C EB 3..........F....
1B2A:0710 33 C0 C9 CA 02 00 C8 00 00 00 A1 1C EB C4 5E 06 3.............^.
1B2A:0720 26 89 07 33 C0 C9 CA 04 00 C8 02 00 00 56 8B 5E &..3.........V.^
1B2A:0730 0A 39 1E E8 EA 0F 8E BD 00 6B DB 1D 66 8B 46 06 .9.......k..f.F.
1B2A:0740 66 39 87 23 EB 74 25 66 89 87 23 EB 66 C1 E0 0A f9.#.t%f..#.f...
1B2A:0750 66 33 D2 66 33 C9 8B 0E EE EA 66 F7 F9 25 FE FF f3.f3.....f..%..
1B2A:0760 89 87 21 EB 89 46 FE 80 8F 1E EB 08 33 D2 8A 97 ..!..F......3...
1B2A:0770 1F EB 84 D2 0F 84 83 00 39 16 FC EA 72 7D 4A 6B ........9...r}Jk
1B2A:0780 D2 12 C4 36 BE EE 03 F2 26 83 7C 08 00 74 60 66 ...6....&.|..t`f
1B2A:0790 26 8B 0C 66 89 8F 2B EB 80 A7 1E EB FE 80 8F 1E &..f..+.........
1B2A:07A0 EB 02 C7 87 39 EB 01 00 83 3E E6 F2 00 74 40 8B ....9....>...t@.
1B2A:07B0 5E 0A 03 1E E8 EA 6B DB 1D 66 8B 46 06 66 39 87 ^.....k..f.F.f9.
1B2A:07C0 23 EB 74 11 66 89 87 23 EB 8B 46 FE 89 87 21 EB #.t.f..#..F...!.
1B2A:07D0 80 8F 1E EB 08 66 26 8B 4C 04 66 89 8F 2B EB 80 .....f&.L.f..+..
1B2A:07E0 A7 1E EB FE 80 8F 1E EB 02 C7 87 39 EB 01 00 33 ...........9...3
1B2A:07F0 C0 5E C9 CA 06 00 B8 12 00 EB 03 B8 13 00 5E C9 .^............^.
1B2A:0800 CA 06 00 C8 00 00 00 8B 5E 06 39 1E E8 EA 7E 2E ........^.9...~.
1B2A:0810 6B DB 1D 80 A7 1E EB FD 80 8F 1E EB 01 83 3E E6 k.............>.
1B2A:0820 F2 00 74 14 8B 5E 06 03 1E E8 EA 6B DB 1D 80 A7 ..t..^.....k....
1B2A:0830 1E EB FD 80 8F 1E EB 01 33 C0 C9 CA 02 00 B8 12 ........3.......
1B2A:0840 00 C9 CA 02 00 C8 00 00 00 8B 5E 0A 39 1E E8 EA ..........^.9...
1B2A:0850 7E 58 6B DB 1D 66 8B 46 06 66 39 87 23 EB 74 44 ~Xk..f.F.f9.#.tD
1B2A:0860 66 89 87 23 EB 66 C1 E0 0A 66 33 D2 66 33 C9 8B f..#.f...f3.f3..
1B2A:0870 0E EE EA 66 F7 F9 24 FE 89 87 21 EB 80 8F 1E EB ...f..$...!.....
1B2A:0880 08 83 3E E6 F2 00 74 1C 8B 5E 0A 03 1E E8 EA 6B ..>...t..^.....k
1B2A:0890 DB 1D 89 87 21 EB 66 8B 46 06 66 89 87 23 EB 80 ....!.f.F.f..#..
1B2A:08A0 8F 1E EB 08 33 C0 C9 CA 06 00 B8 12 00 C9 CA 06 ....3...........
1B2A:08B0 00 C8 00 00 00 8B 5E 0A 39 1E E8 EA 7E 41 FA 8B ......^.9...~A..
1B2A:08C0 16 EA EA 8B C3 EE 8B 16 EC EA B0 80 EE 83 C2 02 ................
1B2A:08D0 EC FB A8 01 75 18 8B 5E 0A 6B DB 1D 66 8B 87 23 ....u..^.k..f..#
1B2A:08E0 EB C4 5E 06 66 26 89 07 33 C0 C9 CA 06 00 C4 5E ..^.f&..3......^
1B2A:08F0 06 66 26 C7 07 00 00 00 00 33 C0 C9 CA 06 00 B8 .f&......3......
1B2A:0900 12 00 C9 CA 06 00 C8 00 00 00 32 E4 8A 46 06 3D ..........2..F.=
1B2A:0910 40 00 76 03 B8 40 00 8B 5E 08 39 1E E8 EA 7E 32 @.v..@..^.9...~2
1B2A:0920 6B DB 1D 39 87 27 EB 74 23 89 87 27 EB 80 8F 1E k..9.'.t#..'....
1B2A:0930 EB 04 83 3E E6 F2 00 74 13 8B 5E 08 03 1E E8 EA ...>...t..^.....
1B2A:0940 6B DB 1D 89 87 27 EB 80 8F 1E EB 04 33 C0 C9 CA k....'......3...
1B2A:0950 04 00 B8 12 00 C9 CA 04 00 C8 00 00 00 8B 5E 0A ..............^.
1B2A:0960 39 1E E8 EA 7E 11 6B DB 1D 8B 87 27 EB C4 5E 06 9...~.k....'..^.
1B2A:0970 26 88 07 33 C0 EB 03 B8 12 00 C9 CA 06 00 C8 00 &..3............
1B2A:0980 00 00 66 57 56 8B 5E 08 39 1E E8 EA 0F 8E 25 01 ..fWV.^.9.....%.
1B2A:0990 6B DB 1D 8B 46 06 85 C0 0F 84 14 01 39 06 FC EA k...F.......9...
1B2A:09A0 0F 82 0C 01 8B D0 4A 6B D2 12 C4 36 BE EE 03 F2 ......Jk...6....
1B2A:09B0 38 87 1F EB 74 58 88 87 1F EB 26 83 7C 08 00 0F 8...tX....&.|...
1B2A:09C0 84 DF 00 66 26 8B 0C 66 89 8F 2B EB 26 F7 44 10 ...f&..f..+.&.D.
1B2A:09D0 02 00 74 18 66 8B F9 66 33 C0 26 8B 44 0C 66 03 ..t.f..f3.&.D.f.
1B2A:09E0 F8 26 8B 44 0A 66 03 C8 B0 08 EB 0F 66 33 C0 26 .&.D.f......f3.&
1B2A:09F0 8B 44 08 66 8B F9 66 03 F8 32 C0 88 87 2A EB 66 .D.f..f..2...*.f
1B2A:0A00 89 8F 2F EB 66 89 BF 33 EB 80 8F 1E EB 10 26 8B ../.f..3......&.
1B2A:0A10 44 0E 39 87 27 EB 74 09 89 87 27 EB 80 8F 1E EB D.9.'.t...'.....
1B2A:0A20 04 83 3E E6 F2 00 74 71 8B 5E 08 03 1E E8 EA 6B ..>...tq.^.....k
1B2A:0A30 DB 1D 8B 46 06 38 87 1F EB 74 4B 88 87 1F EB 66 ...F.8...tK....f
1B2A:0A40 26 8B 4C 04 26 F7 44 10 02 00 74 18 66 8B F9 66 &.L.&.D...t.f..f
1B2A:0A50 33 C0 26 8B 44 0C 66 03 F8 26 8B 44 0A 66 03 C8 3.&.D.f..&.D.f..
1B2A:0A60 B0 08 EB 0F 66 33 C0 26 8B 44 08 66 8B F9 66 03 ....f3.&.D.f..f.
1B2A:0A70 F8 32 C0 88 87 2A EB 66 89 8F 2F EB 66 89 BF 33 .2...*.f../.f..3
1B2A:0A80 EB 80 8F 1E EB 10 26 8B 44 0E 39 87 27 EB 74 09 ......&.D.9.'.t.
1B2A:0A90 89 87 27 EB 80 8F 1E EB 04 33 C0 5E 66 5F C9 CA ..'......3.^f_..
1B2A:0AA0 04 00 FF 76 08 0E E8 5A FD 5E 66 5F C9 CA 04 00 ...v...Z.^f_....
1B2A:0AB0 B8 13 00 EB 03 B8 12 00 5E 66 5F C9 CA 04 00 C8 ........^f_.....
1B2A:0AC0 00 00 00 66 57 56 8B 5E 0A 39 1E E8 EA 7E 13 6B ...fWV.^.9...~.k
1B2A:0AD0 DB 1D 8A 87 1F EB 32 E4 C4 5E 06 26 89 07 33 C0 ......2..^.&..3.
1B2A:0AE0 EB 03 B8 12 00 5E 66 5F C9 CA 06 00 C8 00 00 00 .....^f_........
1B2A:0AF0 56 8B 5E 08 39 1E E8 EA 0F 8E 8C 00 6B DB 1D 33 V.^.9.......k..3
1B2A:0B00 D2 8A 97 1F EB 84 D2 74 78 4A 6B D2 12 C4 36 BE .......txJk...6.
1B2A:0B10 EE 03 F2 66 33 C9 8B 4E 06 26 39 4C 08 73 18 26 ...f3..N.&9L.s.&
1B2A:0B20 8B 4C 0A 26 F7 44 10 02 00 75 0C FF 76 08 0E E8 .L.&.D...u..v...
1B2A:0B30 D1 FC 5E C9 CA 04 00 66 26 03 0C 66 89 8F 2B EB ..^....f&..f..+.
1B2A:0B40 80 A7 1E EB FE 80 8F 1E EB 02 C7 87 39 EB 01 00 ............9...
1B2A:0B50 83 3E E6 F2 00 74 2A 8B 5E 08 03 1E E8 EA 6B DB .>...t*.^.....k.
1B2A:0B60 1D 66 33 C9 8B 4E 06 66 26 03 4C 04 66 89 8F 2B .f3..N.f&.L.f..+
1B2A:0B70 EB 80 A7 1E EB FE 80 8F 1E EB 02 C7 87 39 EB 01 .............9..
1B2A:0B80 00 33 C0 5E C9 CA 04 00 B8 12 00 5E C9 CA 04 00 .3.^.......^....
1B2A:0B90 C8 00 00 00 56 8B 5E 0A 39 1E E8 EA 0F 8E AE 00 ....V.^.9.......
1B2A:0BA0 FA 8B 16 EA EA 8B C3 EE 8B 16 EC EA B0 80 EE 83 ................
1B2A:0BB0 C2 02 EC FB A8 01 0F 85 85 00 6B DB 1D FA 8B 16 ..........k.....
1B2A:0BC0 EC EA B0 8A EE 42 ED FB 66 33 C9 8B C8 81 E1 FF .....B..f3......
1B2A:0BD0 1F 66 C1 E1 07 FA 8B 16 EC EA B0 8B EE 42 ED FB .f...........B..
1B2A:0BE0 C1 E8 09 0B C8 E8 3E F6 FA 8B 16 EC EA B0 8A EE ......>.........
1B2A:0BF0 42 ED FB 66 33 F6 8B F0 81 E6 FF 1F 66 C1 E6 07 B..f3.......f...
1B2A:0C00 FA 8B 16 EC EA B0 8B EE 42 ED FB C1 E8 09 0B F0 ........B.......
1B2A:0C10 66 2B F1 78 A8 66 83 FE 10 77 A2 8A 9F 20 EB 32 f+.x.f...w... .2
1B2A:0C20 FF 4B 6B DB 12 C4 36 BE EE 66 26 2B 08 85 C9 75 .Kk...6..f&+...u
1B2A:0C30 01 41 C4 5E 06 26 89 0F 33 C0 5E C9 CA 06 00 C4 .A.^.&..3.^.....
1B2A:0C40 5E 06 26 C7 07 00 00 33 C0 5E C9 CA 06 00 B8 12 ^.&....3.^......
1B2A:0C50 00 5E C9 CA 06 00 C8 00 00 00 8B 16 EA EA 8B 46 .^.............F
1B2A:0C60 08 39 06 E8 EA 0F 8E A8 00 EE 8B 5E 08 6B DB 1D .9.........^.k..
1B2A:0C70 FA 8B 16 EC EA B0 0C EE 83 C2 02 8B 46 06 39 87 ............F.9.
1B2A:0C80 37 EB 0F 84 84 00 89 87 37 EB 83 3E 12 EB 01 74 7.......7..>...t
1B2A:0C90 79 3D 80 00 75 44 83 3E E6 F2 00 75 04 33 C0 EB y=..uD.>...u.3..
1B2A:0CA0 39 32 C0 EE 8B 16 EA EA 8B 46 08 03 06 E8 EA EE 92.......F......
1B2A:0CB0 8B 16 EC EA B0 0C EE 83 C2 02 B0 0F EE C6 87 29 ...............)
1B2A:0CC0 EB 01 8A 87 1E EB 8B 0E E8 EA 6B C9 1D 03 D9 C6 ..........k.....
1B2A:0CD0 87 29 EB 01 88 87 1E EB EB 2A C6 87 29 EB 00 8B .).......*..)...
1B2A:0CE0 5E 08 03 1E E8 EA 83 FB 20 73 0D 6B DB 1D C6 87 ^....... s.k....
1B2A:0CF0 29 EB 00 80 8F 1E EB 80 C1 F8 03 0B C0 79 01 40 )............y.@
1B2A:0D00 05 07 00 EE C7 06 FA EA 01 00 FB 33 C0 C9 CA 04 ...........3....
1B2A:0D10 00 B8 12 00 C9 CA 04 00 C8 00 00 00 8B 5E 0A 39 .............^.9
1B2A:0D20 1E E8 EA 7E 13 6B DB 1D 8B 87 37 EB C4 5E 06 26 ...~.k....7..^.&
1B2A:0D30 89 07 33 C0 C9 CA 06 00 B8 12 00 C9 CA 06 00 C8 ..3.............
1B2A:0D40 00 00 00 8B 5E 08 39 1E E8 EA 7E 4C 6B DB 1D 8B ....^.9...~Lk...
1B2A:0D50 46 06 3D 01 00 74 0C 80 A7 1E EB 7F 80 8F 1E EB F.=..t..........
1B2A:0D60 04 EB 05 80 8F 1E EB 84 80 BF 29 EB 00 74 23 8B ..........)..t#.
1B2A:0D70 5E 08 03 1E E8 EA 6B DB 1D 8B 46 06 3D 01 00 74 ^.....k...F.=..t
1B2A:0D80 0C 80 A7 1E EB 7F 80 8F 1E EB 04 EB 05 80 8F 1E ................
1B2A:0D90 EB 84 33 C0 C9 CA 04 00 B8 12 00 C9 CA 04 00 C8 ..3.............
1B2A:0DA0 08 00 00 56 57 83 7E 16 01 0F 85 D1 01 A1 F2 EA ...VW.~.........
1B2A:0DB0 48 6B C0 12 C4 3E BE EE 03 F8 83 7E 14 00 74 53 Hk...>.....~..tS
1B2A:0DC0 06 FF 76 14 68 FB 28 68 14 EB 0E E8 03 08 07 85 ..v.h.(h........
1B2A:0DD0 C0 0F 85 AC 01 66 A1 14 EB 66 89 46 F8 66 26 89 .....f...f.F.f&.
1B2A:0DE0 05 66 26 C7 45 04 00 00 00 00 83 3E E6 F2 00 74 .f&.E......>...t
1B2A:0DF0 22 06 FF 76 14 68 FB 28 68 14 EB 0E E8 D2 07 07 "..v.h.(h.......
1B2A:0E00 85 C0 0F 85 7B 01 66 A1 14 EB 66 89 46 FC 66 26 ....{.f...f.F.f&
1B2A:0E10 89 45 04 8B 46 14 26 89 45 08 8B 46 12 26 89 45 .E..F.&.E..F.&.E
1B2A:0E20 0A 8B 46 10 26 89 45 0C 8B 46 0E 3D 40 00 76 03 ..F.&.E..F.=@.v.
1B2A:0E30 B8 40 00 26 89 45 0E 8B 46 0C 25 01 00 03 C0 0D .@.&.E..F.%.....
1B2A:0E40 01 00 26 89 45 10 C4 76 18 8B 4E 14 85 C9 0F 84 ..&.E..v..N.....
1B2A:0E50 EA 00 66 8B 5E F8 8B FB 66 C1 EB 10 C7 06 18 EB ..f.^...f.......
1B2A:0E60 01 00 FA 8B 16 EC EA B0 44 EE 83 C2 02 8B C3 EE ........D.......
1B2A:0E70 FB 8B 16 EC EA B0 43 EE 8B 16 EC EA 42 8B C7 EF ......C.....B...
1B2A:0E80 83 C2 03 26 8A 04 46 34 80 EE 47 74 05 49 75 E8 ...&..F4..Gt.Iu.
1B2A:0E90 EB 04 43 49 75 CC F7 46 0C 01 00 74 46 C4 76 18 ..CIu..F...tF.v.
1B2A:0EA0 03 76 12 8B D7 83 E2 1F B9 40 00 2B CA FA 8B 16 .v.......@.+....
1B2A:0EB0 EC EA B0 44 EE 83 C2 02 8B C3 EE FB 8B 16 EC EA ...D............
1B2A:0EC0 B0 43 EE 8B 16 EC EA 42 8B C7 EF 83 C2 03 26 8A .C.....B......&.
1B2A:0ED0 04 46 34 80 EE 47 74 05 49 75 E8 EB 44 43 49 75 .F4..Gt.Iu..DCIu
1B2A:0EE0 CC EB 3E 4E 8B D7 83 E2 1F B9 40 00 2B CA FA 8B ..>N......@.+...
1B2A:0EF0 16 EC EA B0 44 EE 83 C2 02 8B C3 EE FB 8B 16 EC ....D...........
1B2A:0F00 EA B0 43 EE 8B 16 EC EA 42 8B C7 EF 83 C2 03 26 ..C.....B......&
1B2A:0F10 8A 04 34 80 EE 47 74 05 49 75 E9 EB 04 43 49 75 ..4..Gt.Iu...CIu
1B2A:0F20 CD 83 3E E6 F2 00 74 14 66 FF 76 18 FF 76 14 FF ..>...t.f.v..v..
1B2A:0F30 76 12 FF 76 0C 66 FF 76 FC E8 4B 00 FF 36 F2 EA v..v.f.v..K..6..
1B2A:0F40 C7 06 18 EB 00 00 A1 F2 EA 8B D8 4B 6B DB 12 C4 ...........Kk...
1B2A:0F50 36 BE EE 03 F3 26 F7 44 10 01 00 74 06 83 C6 12 6....&.D...t....
1B2A:0F60 40 EB F2 A3 F2 EA 58 C4 5E 06 26 89 07 39 06 FC @.....X.^.&..9..
1B2A:0F70 EA 73 03 A3 FC EA 33 C0 5F 5E C9 CA 16 00 B8 10 .s....3._^......
1B2A:0F80 00 5F 5E C9 CA 16 00 C8 00 00 00 56 57 C4 76 0E ._^........VW.v.
1B2A:0F90 8B 4E 0C 66 8B 5E 04 8B FB 66 C1 EB 10 FA 8B 16 .N.f.^...f......
1B2A:0FA0 EC EA B0 44 EE 83 C2 02 8B C3 EE FB 8B 16 EC EA ...D............
1B2A:0FB0 B0 43 EE 8B 16 EC EA 42 8B C7 EF 83 C2 03 26 8A .C.....B......&.
1B2A:0FC0 04 46 34 80 F6 D0 EE 47 74 05 49 75 E6 EB 04 43 .F4....Gt.Iu...C
1B2A:0FD0 49 75 CA F7 46 08 01 00 74 48 C4 76 0E 03 76 0A Iu..F...tH.v..v.
1B2A:0FE0 8B D7 83 E2 1F B9 40 00 2B CA FA 8B 16 EC EA B0 ......@.+.......
1B2A:0FF0 44 EE 83 C2 02 8B C3 EE FB 8B 16 EC EA B0 43 EE D.............C.
1B2A:1000 8B 16 EC EA 42 8B C7 EF 83 C2 03 26 8A 04 46 34 ....B......&..F4
1B2A:1010 80 F6 D0 EE 47 74 05 49 75 E6 EB 46 43 49 75 CA ....Gt.Iu..FCIu.
1B2A:1020 EB 40 4E 8B D7 83 E2 1F B9 40 00 2B CA FA 8B 16 .@N......@.+....
1B2A:1030 EC EA B0 44 EE 83 C2 02 8B C3 EE FB 8B 16 EC EA ...D............
1B2A:1040 B0 43 EE 8B 16 EC EA 42 8B C7 EF 83 C2 03 26 8A .C.....B......&.
1B2A:1050 04 34 80 F6 D0 EE 47 74 05 49 75 E7 EB 04 43 49 .4....Gt.Iu...CI
1B2A:1060 75 CB 5F 5E C9 C2 0E 00 C8 00 00 00 56 8B 5E 06 u._^........V.^.
1B2A:1070 4B 6B DB 12 C4 36 BE EE 03 F3 26 F7 44 10 01 00 Kk...6....&.D...
1B2A:1080 74 3C 26 C7 44 10 00 00 26 83 7C 08 00 74 23 06 t<&.D...&.|..t#.
1B2A:1090 66 26 FF 34 0E E8 B4 06 07 85 C0 75 4C 66 26 83 f&.4.......uLf&.
1B2A:10A0 7C 04 00 74 0D 66 26 FF 74 04 0E E8 9E 06 85 C0 |..t.f&.t.......
1B2A:10B0 75 37 8B 46 06 39 06 F2 EA 76 03 A3 F2 EA 39 06 u7.F.9...v....9.
1B2A:10C0 FC EA 75 1E C4 36 BE EE 8B C8 BB 01 00 8B C3 26 ..u..6.........&
1B2A:10D0 F7 44 10 01 00 74 02 8B C3 83 C6 12 43 E2 F0 A3 .D...t......C...
1B2A:10E0 FC EA 33 C0 5E C9 CA 02 00 5E C9 CA 02 00 C8 00 ..3.^....^......
1B2A:10F0 00 00 8B 46 06 A3 F0 EA 33 C0 C9 CA 02 00 33 C0 ...F....3.....3.
1B2A:1100 CB C8 08 00 00 56 83 3E F6 EA 00 0F 85 4A 04 83 .....V.>.....J..
1B2A:1110 3E 1A EB 00 0F 84 41 04 32 E4 8B 16 EA EA EC 89 >.....A.2.......
1B2A:1120 46 FC 8B 16 EC EA EC 83 3E 18 EB 00 74 02 B0 43 F.......>...t..C
1B2A:1130 89 46 FA C7 46 F8 00 00 BE 1E EB 83 7C 1B 00 0F .F..F.......|...
1B2A:1140 84 76 02 8B 16 EA EA 8B 46 F8 EE F6 04 03 74 24 .v......F.....t$
1B2A:1150 80 24 FE 8B 16 EC EA B0 07 EE 83 C2 02 B0 15 EE .$..............
1B2A:1160 8B 16 EC EA B0 0D EE 83 C2 02 B0 40 EE E8 B6 F0 ...........@....
1B2A:1170 EE E9 8D 00 83 3E FA EA 00 75 07 F6 04 04 0F 84 .....>...u......
1B2A:1180 7F 00 80 24 FB 8B 16 EC EA B0 89 EE 42 ED 8B C8 ...$........B...
1B2A:1190 32 C9 8B 44 09 F6 04 80 74 02 33 C0 8B 1E F8 EA 2..D....t.3.....
1B2A:11A0 F6 E3 C1 E8 06 8B D8 03 DB 2E 8B 9F A4 01 80 7C ...............|
1B2A:11B0 0B 00 74 03 80 EF 10 32 DB 3B CB 74 44 3B CB 72 ..t....2.;.tD;.r
1B2A:11C0 04 87 CB B1 40 8B 16 EC EA B0 0D EE 83 C2 02 B0 ....@...........
1B2A:11D0 03 EE E8 51 F0 EE 8B 16 EC EA B0 07 EE 83 C2 02 ...Q............
1B2A:11E0 8A C5 EE 8B 16 EC EA B0 08 EE 83 C2 02 8A C7 EE ................
1B2A:11F0 8B 16 EC EA B0 0D EE 83 C2 02 8A C1 EE E8 26 F0 ..............&.
1B2A:1200 EE F6 04 08 74 0F 80 24 F7 8B 16 EC EA B0 01 EE ....t..$........
1B2A:1210 42 8B 44 03 EF F6 04 10 0F 84 9D 01 83 3E E0 F2 B.D..........>..
1B2A:1220 01 0F 85 94 01 F6 04 02 0F 85 8D 01 8B 16 EC EA ................
1B2A:1230 B0 80 EE 83 C2 02 EC A8 01 74 15 F6 44 0C 08 0F .........t..D...
1B2A:1240 84 33 01 8A 44 01 88 44 02 66 8B 5C 11 E9 8F 00 .3..D..D.f.\....
1B2A:1250 66 8B 44 05 66 6B C0 64 66 33 D2 66 33 DB 8B 1E f.D.fk.df3.f3...
1B2A:1260 F0 EA 66 F7 FB 66 50 8B 16 EC EA B0 84 EE 42 ED ..f..fP.......B.
1B2A:1270 66 33 DB 8B D8 81 E3 FF 1F 66 C1 E3 07 8B 16 EC f3.......f......
1B2A:1280 EA B0 85 EE 42 ED C1 E8 09 0B D8 8B 16 EC EA B0 ....B...........
1B2A:1290 8A EE 42 ED 66 33 C9 8B C8 81 E1 FF 1F 66 C1 E1 ..B.f3.......f..
1B2A:12A0 07 8B 16 EC EA B0 8B EE 42 ED C1 E8 09 0B C8 66 ........B......f
1B2A:12B0 2B D9 66 58 66 3B D8 0F 8F FE 00 F6 44 0C 08 0F +.fXf;......D...
1B2A:12C0 84 B3 00 8A 44 01 88 44 02 66 83 FB 00 7F 06 66 ....D..D.f.....f
1B2A:12D0 8B 5C 11 EB 0A 66 8B 4C 15 66 2B CB 66 8B D9 66 .\...f.L.f+.f..f
1B2A:12E0 8B 4C 15 8B 16 EC EA B0 04 EE 42 66 8B C1 66 C1 .L........Bf..f.
1B2A:12F0 E8 07 EF 8B 16 EC EA B0 05 EE 42 66 8B C1 C1 E0 ..........Bf....
1B2A:1300 09 EF 66 8B 4C 11 8B 16 EC EA B0 02 EE 42 66 8B ..f.L........Bf.
1B2A:1310 C1 66 C1 E8 07 EF 8B 16 EC EA B0 03 EE 42 66 8B .f...........Bf.
1B2A:1320 C1 C1 E0 09 EF 8B 16 EC EA B0 00 EE 8A 44 0C 83 .............D..
1B2A:1330 C2 02 EE 8B 16 EC EA B0 0A EE 42 66 8B C3 66 C1 ..........Bf..f.
1B2A:1340 E8 07 EF 8B 16 EC EA B0 0B EE 42 66 8B C3 C1 E0 ..........Bf....
1B2A:1350 09 EF E8 D1 EE EF 8B 16 EC EA B0 0A EE 42 66 8B .............Bf.
1B2A:1360 C3 66 C1 E8 07 EF 8B 16 EC EA B0 00 EE 8A 44 0C .f............D.
1B2A:1370 83 C2 02 EE EB 43 8B 16 EC EA B0 00 EE 83 C2 02 .....C..........
1B2A:1380 B0 03 EE 8B 16 EC EA B0 09 EE 42 B8 00 15 EF 8B ..........B.....
1B2A:1390 16 EC EA B0 0D EE 83 C2 02 B0 03 EE E8 87 EE EE ................
1B2A:13A0 8B 16 EC EA B0 00 EE 83 C2 02 B0 03 EE 8B 16 EC ................
1B2A:13B0 EA B0 09 EE 42 B8 00 15 EF 83 C6 1D FF 46 F8 A1 ....B........F..
1B2A:13C0 E8 EA 83 3E E6 F2 00 74 02 03 C0 39 46 F8 0F 82 ...>...t...9F...
1B2A:13D0 69 FD C7 46 F8 00 00 BE 1E EB C7 46 FE 00 00 83 i..F.......F....
1B2A:13E0 7C 1B 00 0F 84 2C 01 F6 04 02 0F 84 25 01 8B 16 |....,......%...
1B2A:13F0 EA EA 8B 46 F8 EE 8B 16 EC EA B0 8D EE 83 C2 02 ...F............
1B2A:1400 EC A8 01 75 08 C7 46 FE 01 00 E9 06 01 F6 04 10 ...u..F.........
1B2A:1410 74 49 66 8B 4C 15 8B 16 EC EA B0 04 EE 42 66 8B tIf.L........Bf.
1B2A:1420 C1 66 C1 E8 07 EF 8B 16 EC EA B0 05 EE 42 66 8B .f...........Bf.
1B2A:1430 C1 C1 E0 09 EF 66 8B 4C 11 8B 16 EC EA B0 02 EE .....f.L........
1B2A:1440 42 66 8B C1 66 C1 E8 07 EF 8B 16 EC EA B0 03 EE Bf..f...........
1B2A:1450 42 66 8B C1 C1 E0 09 EF 80 24 EF 8B 16 EC EA B0 Bf.......$......
1B2A:1460 00 EE 83 C2 02 B0 03 EE 66 8B 4C 0D 8B 16 EC EA ........f.L.....
1B2A:1470 B0 0A EE 42 66 8B C1 66 C1 E8 07 EF 8B 16 EC EA ...Bf..f........
1B2A:1480 B0 0B EE 42 66 8B C1 C1 E0 09 EF E8 98 ED EF 8B ...Bf...........
1B2A:1490 16 EC EA B0 0A EE 42 66 8B C1 66 C1 E8 07 EF 8B ......Bf..f.....
1B2A:14A0 16 EC EA B0 00 EE 83 C2 02 B0 03 EE 8A 44 01 88 .............D..
1B2A:14B0 44 02 8B 16 EC EA B0 00 EE 8A 44 0C 83 C2 02 EE D.........D.....
1B2A:14C0 8B 16 EC EA B0 08 EE 83 C2 02 8B 44 09 F6 04 80 ...........D....
1B2A:14D0 74 02 33 C0 8B 1E F8 EA F6 E3 C1 E8 06 8B D8 03 t.3.............
1B2A:14E0 DB 2E 8B 87 A4 01 8A C4 80 7C 0B 00 74 02 2C 10 .........|..t.,.
1B2A:14F0 EE 8B 16 EC EA B0 0D EE 83 C2 02 B0 00 EE E8 25 ...............%
1B2A:1500 ED EE 8B 16 EC EA B0 00 EE 8A 44 0C 83 C2 02 EE ..........D.....
1B2A:1510 80 24 F9 83 C6 1D FF 46 F8 A1 E8 EA 83 3E E6 F2 .$.....F.....>..
1B2A:1520 00 74 02 03 C0 39 46 F8 0F 82 B3 FE 83 7E FE 00 .t...9F......~..
1B2A:1530 0F 85 9E FE 8B 46 FC 8B 16 EA EA EE 8B 46 FA 8B .....F.......F..
1B2A:1540 16 EC EA EE C7 06 FA EA 00 00 C4 5E 06 26 C7 07 ...........^.&..
1B2A:1550 01 00 33 C0 5E C9 CA 04 00 C4 5E 06 26 C7 07 00 ..3.^.....^.&...
1B2A:1560 00 EB EF 57 B8 00 0C 83 3E E6 F2 00 74 02 03 C0 ...W....>...t...
1B2A:1570 50 50 68 FB 28 68 14 EB 9A 00 00 A1 21 59 85 C0 PPh.(h......!Y..
1B2A:1580 75 3B 66 8B 1E 14 EB 66 89 1E 0A EB 66 89 1E 0E u;f....f....f...
1B2A:1590 EB C4 3E 14 EB 66 33 C0 FC F3 AA C4 1E 14 EB 66 ..>..f3........f
1B2A:15A0 A1 FE EA 66 26 C7 07 00 00 00 00 66 26 C7 47 04 ...f&......f&.G.
1B2A:15B0 00 00 00 00 66 26 89 47 08 33 C0 5F C3 5F C3 66 ....f&.G.3._._.f
1B2A:15C0 FF 36 0E EB 9A A7 00 A1 21 85 C0 75 03 33 C0 C3 .6......!..u.3..
1B2A:15D0 C3 C8 08 00 00 56 57 66 33 C0 8B 46 0A 85 C0 0F .....VWf3..F....
1B2A:15E0 84 48 01 66 8B D8 66 83 E3 1F 66 B9 40 00 00 00 .H.f..f...f.@...
1B2A:15F0 66 2B CB 66 03 C1 C7 46 FA 00 00 66 C7 46 FC FF f+.f...F...f.F..
1B2A:1600 FF FF 07 66 39 06 02 EB 0F 8C 37 01 66 39 06 06 ...f9.....7.f9..
1B2A:1610 EB 7F 11 66 50 0E E8 14 03 66 58 66 39 06 06 EB ...fP....fXf9...
1B2A:1620 0F 8C 1F 01 C4 36 0A EB 66 50 E8 6B 02 66 58 72 .....6..fP.k.fXr
1B2A:1630 33 66 26 8B 5C 08 66 83 E3 E0 66 2B D8 78 12 66 3f&.\.f...f+.x.f
1B2A:1640 39 5E FC 7C 0C 66 89 5E FC 8C C3 89 5E FA 89 76 9^.|.f.^....^..v
1B2A:1650 F8 66 26 8B 0C 66 85 C9 74 0A 8B F1 66 C1 E9 10 .f&..f..t...f...
1B2A:1660 8E C1 EB C4 83 7E FA 00 0F 84 D7 00 66 83 7E FC .....~......f.~.
1B2A:1670 00 0F 84 9D 00 66 50 68 FB 28 68 14 EB E8 B2 01 .....fPh.(h.....
1B2A:1680 85 C0 0F 85 B4 00 66 58 0F B5 3E 14 EB 8B 76 F8 ......fX..>...v.
1B2A:1690 8B 5E FA 8E C3 66 26 8B 5C 04 66 65 89 5D 04 66 .^...f&.\.fe.].f
1B2A:16A0 65 89 45 08 66 65 83 4D 08 01 66 26 01 44 04 66 e.E.fe.M..f&.D.f
1B2A:16B0 26 29 44 08 8C C3 66 C1 E3 10 8B DE 66 65 89 1D &)D...f.....fe..
1B2A:16C0 66 39 1E 0A EB 75 0F 8C EB 66 C1 E3 10 8B DF 66 f9...u...f.....f
1B2A:16D0 89 1E 0A EB EB 18 66 50 66 8B C3 E8 DC 01 66 58 ......fPf.....fX
1B2A:16E0 72 5C 8C EB 66 C1 E3 10 8B DF 66 26 89 1C 66 29 r\..f.....f&..f)
1B2A:16F0 06 02 EB 0F A8 E8 E3 01 0F A9 85 C0 75 48 66 65 ............uHfe
1B2A:1700 8B 45 04 C4 5E 06 66 26 89 07 33 C0 5F 5E C9 CA .E..^.f&..3._^..
1B2A:1710 06 00 66 26 83 4C 08 01 66 29 06 02 EB 06 E8 BA ..f&.L..f)......
1B2A:1720 01 07 85 C0 75 20 66 26 8B 44 04 C4 5E 06 66 26 ....u f&.D..^.f&
1B2A:1730 89 07 33 C0 5F 5E C9 CA 06 00 66 5B EB 08 B8 0A ..3._^....f[....
1B2A:1740 00 EB 03 B8 09 00 5F 5E C9 CA 06 00 C8 04 00 00 ......_^........
1B2A:1750 56 57 66 8B 46 06 0F B5 3E 0A EB 66 65 39 45 04 VWf.F...>..fe9E.
1B2A:1760 74 15 66 65 8B 1D 66 85 DB 0F 84 BC 00 8B FB 66 t.fe..f........f
1B2A:1770 C1 EB 10 8E EB EB E4 66 65 F7 45 08 01 00 00 00 .......fe.E.....
1B2A:1780 0F 84 A0 00 66 65 83 65 08 FE 66 65 8B 5D 08 66 ....fe.e..fe.].f
1B2A:1790 89 5E FC 66 65 8B 1D 66 85 DB 74 32 8B F3 66 C1 .^.fe..f..t2..f.
1B2A:17A0 EB 10 8E C3 66 26 F7 44 08 01 00 00 00 75 1F 66 ....f&.D.....u.f
1B2A:17B0 26 8B 14 66 65 89 15 66 26 8B 54 08 66 65 01 55 &..fe..f&.T.fe.U
1B2A:17C0 08 0F A8 06 56 E8 A9 00 0F A9 85 C0 75 5E 8C EB ....V.......u^..
1B2A:17D0 66 C1 E3 10 8B DF 66 39 1E 0A EB 74 2F 66 8B C3 f.....f9...t/f..
1B2A:17E0 E8 D7 00 72 3F 66 26 F7 44 08 01 00 00 00 75 1C ...r?f&.D.....u.
1B2A:17F0 66 65 8B 15 66 26 89 14 66 65 8B 55 08 66 26 01 fe..f&..fe.U.f&.
1B2A:1800 54 08 0F A8 57 E8 69 00 85 C0 75 20 66 8B 46 FC T...W.i...u f.F.
1B2A:1810 66 01 06 02 EB E8 C3 00 85 C0 75 10 33 C0 5F 5E f.........u.3._^
1B2A:1820 C9 CA 04 00 B8 0A 00 EB 03 B8 04 00 5F 5E C9 CA ............_^..
1B2A:1830 04 00 C8 00 00 00 C4 1E 0A EB B9 00 01 83 3E E6 ..............>.
1B2A:1840 F2 00 74 02 03 C9 66 26 83 7F 08 00 74 07 83 C3 ..t...f&....t...
1B2A:1850 0C E2 F3 EB 15 8C C0 66 C1 E0 10 8B C3 C4 5E 04 .......f......^.
1B2A:1860 66 26 89 07 33 C0 C9 C2 04 00 B8 04 00 C9 C2 04 f&..3...........
1B2A:1870 00 C8 00 00 00 C4 5E 04 66 26 C7 07 00 00 00 00 ......^.f&......
1B2A:1880 66 26 C7 47 04 00 00 00 00 66 26 C7 47 08 00 00 f&.G.....f&.G...
1B2A:1890 00 00 33 C0 C9 C2 04 00 66 26 F7 44 08 01 00 00 ..3.....f&.D....
1B2A:18A0 00 74 13 66 26 8B 04 66 85 C0 74 0C 8B F0 66 C1 .t.f&..f..t...f.
1B2A:18B0 E8 10 8E C0 EB E2 F8 C3 F9 C3 C4 36 0A EB 66 26 ...........6..f&
1B2A:18C0 39 04 74 13 66 26 8B 1C 66 85 DB 74 0C 8B F3 66 9.t.f&..f..t...f
1B2A:18D0 C1 EB 10 8E C3 EB E7 F8 C3 F9 C3 56 C4 36 0A EB ...........V.6..
1B2A:18E0 66 33 D2 66 33 C9 66 26 8B 44 08 66 8B D8 66 83 f3.f3.f&.D.f..f.
1B2A:18F0 E3 E0 66 03 CB 66 A9 01 00 00 00 75 08 66 3B DA ..f..f.....u.f;.
1B2A:1900 7E 03 66 8B D3 66 26 8B 04 66 85 C0 74 0A 8B F0 ~.f..f&..f..t...
1B2A:1910 66 C1 E8 10 8E C0 EB CE 66 89 16 06 EB 66 39 0E f.......f....f9.
1B2A:1920 FE EA 75 04 33 C0 5E C3 B8 0A 00 5E C3 C8 00 00 ..u.3.^....^....
1B2A:1930 00 C9 CA 02 00 00 00 3F 00 88 03 0F 05 00 00 03 .......?........
1B2A:1940 00 00 00 0F 00 D3 19 2A 1B 00 1A 2A 1B 04 00 4D .......*...*...M
1B2A:1950 1A 2A 1B F2 1A 2A 1B 91 1B 2A 1B B8 1D 2A 1B 89 .*...*...*...*..
1B2A:1960 01 62 1E 9C 01 62 1E AF 01 62 1E B8 04 62 1E E5 .b...b...b...b..
1B2A:1970 04 62 1E 28 05 62 1E 36 05 62 1E 48 05 62 1E 58 .b.(.b.6.b.H.b.X
1B2A:1980 05 62 1E 6B 05 62 1E 80 05 62 1E 93 05 62 1E BB .b.k.b...b...b..
1B2A:1990 05 62 1E E9 05 62 1E 1B 06 62 1E 5F 06 62 1E 95 .b...b...b._.b..
1B2A:19A0 06 62 1E C8 06 62 1E 81 07 62 1E 11 08 62 1E 8A .b...b...b...b..
1B2A:19B0 08 62 1E BC 08 62 1E EC 08 62 1E 27 09 62 1E 57 .b...b...b.'.b.W
1B2A:19C0 09 62 1E 7B 0A 62 1E F4 0A 62 1E 49 1E 2A 1B 36 .b.{.b...b.I.*.6
1B2A:19D0 0B 62 1E 50 72 6F 20 41 75 64 69 6F 20 53 70 65 .b.Pro Audio Spe
1B2A:19E0 63 74 72 75 6D 20 73 65 72 69 65 73 20 53 6F 75 ctrum series Sou
1B2A:19F0 6E 64 20 44 65 76 69 63 65 20 76 31 2E 32 32 00 nd Device v1.22.
1B2A:1A00 0C 1A 2A 1B 1F 1A 2A 1B 37 1A 2A 1B 50 72 6F 20 ..*...*.7.*.Pro 
1B2A:1A10 41 75 64 69 6F 20 53 70 65 63 74 72 75 6D 00 50 Audio Spectrum.P
1B2A:1A20 72 6F 20 41 75 64 69 6F 20 53 70 65 63 74 72 75 ro Audio Spectru
1B2A:1A30 6D 20 70 6C 75 73 00 50 72 6F 20 41 75 64 69 6F m plus.Pro Audio
1B2A:1A40 20 53 70 65 63 74 72 75 6D 20 31 36 00 88 03 84  Spectrum 16....
1B2A:1A50 03 8C 03 88 02 56 57 89 3E 74 E8 81 F7 88 03 BA .....VW.>t......
1B2A:1A60 8B 0B 33 D7 EC 3C FF 74 16 8A E0 34 E0 EE EB 00 ..3..<.t...4....
1B2A:1A70 EB 00 EC 3A C4 86 C4 EE 75 05 B8 01 00 EB 02 33 ...:....u......3
1B2A:1A80 C0 5F 5E CB 57 8B 3E 74 E8 81 F7 88 03 BA 8B 0B ._^.W.>t........
1B2A:1A90 33 D7 EC 3C FF 74 52 8A E0 34 E0 EE EB 00 EB 00 3..<.tR..4......
1B2A:1AA0 EC 3A C4 86 C4 EE 75 41 25 E0 00 B1 05 D2 E8 8B .:....uA%.......
1B2A:1AB0 F0 0A C0 74 18 BA 8B EF 33 D7 EC A8 08 74 1C C7 ...t....3....t..
1B2A:1AC0 06 78 E8 03 00 C7 06 7E E8 0F 00 EB 21 C7 06 78 .x.....~....!..x
1B2A:1AD0 E8 01 00 C7 06 7E E8 07 00 EB 13 C7 06 78 E8 02 .....~.......x..
1B2A:1AE0 00 C7 06 7E E8 07 00 EB 05 B8 15 00 EB 02 33 C0 ...~..........3.
1B2A:1AF0 5F C3 C8 00 00 00 56 57 B8 00 BC BB 3F 3F 33 C9 _.....VW....??3.
1B2A:1B00 33 D2 CD 2F 33 D9 33 DA 81 FB 56 4D 75 71 B8 04 3../3.3...VMuq..
1B2A:1B10 BC CD 2F 88 1E 77 E8 88 0E 76 E8 BF 88 03 0E E8 ../..w...v......
1B2A:1B20 33 FF 3D 01 00 74 24 BF 84 03 0E E8 27 FF 3D 01 3.=..t$.....'.=.
1B2A:1B30 00 74 18 BF 8C 03 0E E8 1B FF 3D 01 00 74 0C BF .t........=..t..
1B2A:1B40 88 02 0E E8 0F FF 3D 01 00 75 34 C4 5E 06 26 C7 ......=..u4.^.&.
1B2A:1B50 07 01 00 83 3E 78 E8 00 75 07 E8 27 FF 85 C0 75 ....>x..u..'...u
1B2A:1B60 2A 83 3E 78 E8 01 74 0F 83 3E 78 E8 02 74 08 C7 *.>x..t..>x..t..
1B2A:1B70 06 7E E8 0F 00 EB 10 C7 06 7E E8 07 00 EB 08 C4 .~.......~......
1B2A:1B80 5E 06 26 C7 07 00 00 33 C0 EB 00 5F 5E C9 CA 04 ^.&....3..._^...
1B2A:1B90 00 C8 00 00 00 56 57 8C D8 8E C0 BF EE EE B9 23 .....VW........#
1B2A:1BA0 00 32 C0 FC F3 AA 8B 3E 74 E8 0E E8 A7 FE 3D 01 .2.....>t.....=.
1B2A:1BB0 00 74 06 B8 15 00 E9 F9 01 81 F7 88 03 89 3E E8 .t............>.
1B2A:1BC0 EE 83 3E 78 E8 00 75 03 E8 B9 FE C7 06 C6 EE 00 ..>x..u.........
1B2A:1BD0 00 F7 46 06 04 00 75 0E 83 3E 78 E8 03 75 07 83 ..F...u..>x..u..
1B2A:1BE0 0E C6 EE 08 EB 05 83 0E C6 EE 04 F7 46 06 01 00 ............F...
1B2A:1BF0 75 07 83 0E C6 EE 02 EB 05 83 0E C6 EE 01 BB EE u...............
1B2A:1C00 EE B8 FB 28 8E C0 89 1E EA EE 8C 06 EC EE 26 C6 ...(..........&.
1B2A:1C10 47 0C 31 26 C6 47 12 09 B8 00 BC BB 3F 3F 33 C9 G.1&.G......??3.
1B2A:1C20 33 D2 CD 2F 33 D9 33 DA 81 FB 56 4D 75 12 B8 02 3../3.3...VMu...
1B2A:1C30 BC CD 2F 3D 56 4D 75 08 89 1E EA EE 89 16 EC EE ../=VMu.........
1B2A:1C40 BA 89 0B 33 16 E8 EE EE C4 3E EA EE 66 B8 DC 34 ...3.....>..f..4
1B2A:1C50 12 00 66 33 D2 66 0F B7 5E 08 66 F7 F3 26 89 45 ..f3.f..^.f..&.E
1B2A:1C60 14 A3 C2 EE F7 06 C6 EE 02 00 74 0C A1 C2 EE D1 ..........t.....
1B2A:1C70 E8 A3 C2 EE 26 89 45 14 66 B8 DC 34 12 00 66 33 ....&.E.f..4..f3
1B2A:1C80 D2 66 0F B7 1E C2 EE 66 F7 F3 F7 06 C6 EE 02 00 .f.....f........
1B2A:1C90 74 03 66 D1 E8 A3 C4 EE C4 3E EA EE B0 36 BA 8B t.f......>...6..
1B2A:1CA0 13 33 16 E8 EE FA EE 26 88 45 1A 26 8B 45 14 BA .3.....&.E.&.E..
1B2A:1CB0 88 13 33 16 E8 EE EE EB 00 86 E0 EE FB BA 8A 0F ..3.............
1B2A:1CC0 33 16 E8 EE 26 8A 45 12 0C 80 26 88 45 12 EE A1 3...&.E...&.E...
1B2A:1CD0 C4 EE BB 19 00 33 D2 F7 F3 8B 0E C6 EE F7 C1 08 .....3..........
1B2A:1CE0 00 74 02 D1 E0 F7 C1 02 00 74 02 D1 E0 05 10 00 .t.......t......
1B2A:1CF0 25 F0 FF 50 68 FB 28 68 C8 EE 9A 80 00 EF 20 85 %..Ph.(h...... .
1B2A:1D00 C0 0F 85 AD 00 8E 06 C8 EE 33 DB FF 36 C4 EE FF .........3..6...
1B2A:1D10 36 C6 EE 06 53 FF 36 CE EE 9A 2D 00 62 1E 85 C0 6...S.6...-.b...
1B2A:1D20 0F 85 8E 00 0F B6 06 77 E8 BB 01 00 68 FB 28 68 .......w....h.(h
1B2A:1D30 C8 EE 50 53 9A 2A 02 EF 20 85 C0 75 75 C4 3E EA ..PS.*.. ..uu.>.
1B2A:1D40 EE F7 06 C6 EE 08 00 74 10 B9 04 F3 BA 89 83 33 .......t.......3
1B2A:1D50 16 E8 EE EC 22 C5 0A C1 EE B0 20 F7 06 C6 EE 02 ...."..... .....
1B2A:1D60 00 74 02 2A C0 0C 10 0C 40 BA 8A 0F 33 16 E8 EE .t.*....@...3...
1B2A:1D70 B4 8F 26 22 65 12 0A C4 34 40 EE EB 00 34 40 EE ..&"e...4@...4@.
1B2A:1D80 26 88 45 12 26 8A 45 0E 0C C0 BA 8A 0B 33 16 E8 &.E.&.E......3..
1B2A:1D90 EE EE 26 88 45 0E 26 8A 45 12 BA 8A 0F 33 16 E8 ..&.E.&.E....3..
1B2A:1DA0 EE 0C 80 EE 26 88 45 12 C7 06 7C E8 01 00 33 C0 ....&.E...|...3.
1B2A:1DB0 EB 00 5F 5E C9 CA 04 00 83 3E 7C E8 01 0F 85 87 .._^.....>|.....
1B2A:1DC0 00 C4 3E EA EE BA 8A 0B 33 16 E8 EE FA 26 8A 45 ..>.....3....&.E
1B2A:1DD0 0E 24 3F 26 88 45 0E EE F7 06 C6 EE 08 00 74 0B .$?&.E........t.
1B2A:1DE0 BA 89 83 33 16 E8 EE EC 24 F3 EE B4 08 80 E4 0C ...3....$.......
1B2A:1DF0 F6 D4 BA 8B 0B 33 16 E8 EE EC 22 C4 EE 26 88 45 .....3...."..&.E
1B2A:1E00 0F 26 8A 45 12 BA 8A 0F 33 16 E8 EE 24 7F 24 BF .&.E....3...$.$.
1B2A:1E10 0C 10 EE 26 88 45 12 0F B6 06 77 E8 50 9A E3 02 ...&.E....w.P...
1B2A:1E20 EF 20 85 C0 75 22 9A 68 01 62 1E 85 C0 75 19 68 . ..u".h.b...u.h
1B2A:1E30 FB 28 68 C8 EE 9A F0 01 EF 20 85 C0 75 0A C7 06 .(h...... ..u...
1B2A:1E40 7C E8 00 00 33 C0 EB 00 CB 68 FB 28 68 C8 EE 68 |...3....h.(h..h
1B2A:1E50 FB 28 68 E6 EE 9A 24 03 EF 20 85 C0 75 0F FF 36 .(h...$.. ..u..6
1B2A:1E60 E6 EE 9A 26 0B 62 1E 85 C0 75 02 EB 00 CB 00 00 ...&.b...u......
1B2A:1E70 3F 00 30 05 09 03 01 00 01 00 00 00 0F 00 4C 1F ?.0...........L.
1B2A:1E80 2A 1B 74 1F 2A 1B 04 00 A4 1F 2A 1B C0 1F 2A 1B *.t.*.....*...*.
1B2A:1E90 D2 1F 2A 1B F8 21 2A 1B 89 01 62 1E 9C 01 62 1E ..*..!*...b...b.
1B2A:1EA0 AF 01 62 1E B8 04 62 1E E5 04 62 1E 28 05 62 1E ..b...b...b.(.b.
1B2A:1EB0 36 05 62 1E 48 05 62 1E 58 05 62 1E 6B 05 62 1E 6.b.H.b.X.b.k.b.
1B2A:1EC0 80 05 62 1E 93 05 62 1E BB 05 62 1E E9 05 62 1E ..b...b...b...b.
1B2A:1ED0 1B 06 62 1E 5F 06 62 1E 95 06 62 1E C8 06 62 1E ..b._.b...b...b.
1B2A:1EE0 81 07 62 1E 11 08 62 1E 8A 08 62 1E BC 08 62 1E ..b...b...b...b.
1B2A:1EF0 EC 08 62 1E 27 09 62 1E 57 09 62 1E 7B 0A 62 1E ..b.'.b.W.b.{.b.
1B2A:1F00 F4 0A 62 1E 62 22 2A 1B 36 0B 62 1E 40 1F 00 00 ..b.b"*.6.b.@...
1B2A:1F10 89 15 01 00 80 3E 02 00 11 2B 03 00 25 6B 04 00 .....>...+..%k..
1B2A:1F20 D4 49 05 00 00 7D 06 00 22 56 07 00 00 00 08 00 .I...}.."V......
1B2A:1F30 A8 93 09 00 00 00 0A 00 44 AC 0B 00 80 BB 0C 00 ........D.......
1B2A:1F40 33 81 0D 00 80 25 0E 00 D7 19 0F 00 57 69 6E 64 3....%......Wind
1B2A:1F50 6F 77 73 20 53 6F 75 6E 64 20 53 79 73 74 65 6D ows Sound System
1B2A:1F60 20 53 6F 75 6E 64 20 44 65 76 69 63 65 20 76 31  Sound Device v1
1B2A:1F70 2E 32 32 00 78 1F 2A 1B 57 69 6E 64 6F 77 73 20 .22.x.*.Windows 
1B2A:1F80 53 6F 75 6E 64 20 53 79 73 74 65 6D 20 28 43 72 Sound System (Cr
1B2A:1F90 79 73 74 61 6C 2F 41 6E 61 6C 6F 67 20 43 4F 44 ystal/Analog COD
1B2A:1FA0 45 43 29 00 30 05 04 06 80 0E 40 0F F8 8B 16 12 EC).0.....@.....
1B2A:1FB0 E9 83 C2 04 B9 00 20 EC 0A C0 79 03 E2 F9 F9 C3 ...... ...y.....
1B2A:1FC0 C8 00 00 00 C4 5E 06 26 C7 07 00 00 33 C0 C9 CA .....^.&....3...
1B2A:1FD0 04 00 C8 02 00 00 56 57 C7 46 FE 00 00 F7 46 06 ......VW.F....F.
1B2A:1FE0 04 00 75 06 83 4E FE 08 EB 04 83 4E FE 04 F7 46 ..u..N.....N...F
1B2A:1FF0 06 01 00 75 06 83 4E FE 02 EB 04 83 4E FE 01 8B ...u..N.....N...
1B2A:2000 16 12 E9 83 C2 04 EC 0A C0 79 06 B8 15 00 E9 E1 .........y......
1B2A:2010 01 B0 0C EE 42 EC 8A D8 32 C0 EE EC 3A C3 74 06 ....B...2...:.t.
1B2A:2020 B8 15 00 E9 CC 01 8A 1E 14 E9 80 FB 07 74 15 80 .............t..
1B2A:2030 FB 09 74 14 80 FB 0A 74 13 80 FB 0B 74 12 B8 15 ..t....t....t...
1B2A:2040 00 E9 AE 01 B0 08 EB 0A B0 10 EB 06 B0 18 EB 02 ................
1B2A:2050 B0 20 8A 1E 15 E9 80 FB 00 74 10 80 FB 01 74 0F . .......t....t.
1B2A:2060 80 FB 03 74 0E B8 15 00 E9 87 01 0C 01 EB 06 0C ...t............
1B2A:2070 02 EB 02 0C 03 8B 16 12 E9 EE B9 10 00 33 F6 BA .............3..
1B2A:2080 FF 7F 33 DB 2E 8B 84 0C 1F 83 C6 02 2B 46 08 78 ..3.........+F.x
1B2A:2090 0B 3B C2 73 07 2E 8B 9C 0C 1F 8B D0 83 C6 02 E2 .;.s............
1B2A:20A0 E3 88 1E 12 EF C1 E3 02 2E 8B 87 0C 1F A3 13 EF ................
1B2A:20B0 A1 13 EF BB 19 00 33 D2 F7 F3 8B 4E FE F7 C1 08 ......3....N....
1B2A:20C0 00 74 02 D1 E0 F7 C1 02 00 74 02 D1 E0 05 10 00 .t.......t......
1B2A:20D0 25 F0 FF 50 68 FB 28 68 17 EF 9A 80 00 EF 20 85 %..Ph.(h...... .
1B2A:20E0 C0 0F 85 0D 01 8E 06 17 EF 33 DB FF 36 13 EF FF .........3..6...
1B2A:20F0 76 FE 06 53 FF 36 1D EF 9A 2D 00 62 1E 85 C0 0F v..S.6...-.b....
1B2A:2100 85 EF 00 0F B6 06 15 E9 BB 01 00 68 FB 28 68 17 ...........h.(h.
1B2A:2110 EF 50 53 9A 2A 02 EF 20 85 C0 0F 85 D4 00 8B 16 .PS.*.. ........
1B2A:2120 12 E9 83 C2 04 B0 0A EE 42 EC 0C 40 EE B9 00 12 ........B..@....
1B2A:2130 E4 84 E2 FC BE 02 00 E8 72 FE 8B 16 12 E9 83 C2 ........r.......
1B2A:2140 04 B0 48 EE 42 A0 12 EF F7 46 FE 08 00 74 02 0C ..H.B....F...t..
1B2A:2150 40 F7 46 FE 02 00 74 02 0C 10 EE E8 4E FE 4E 75 @.F...t.....N.Nu
1B2A:2160 D6 8B 16 12 E9 83 C2 04 B0 49 EE 42 B0 0C EE E8 .........I.B....
1B2A:2170 3A FE 8B 16 12 E9 83 C2 04 B0 08 EE 8B 16 12 E9 :...............
1B2A:2180 83 C2 04 B0 0B EE 42 EC A8 20 75 F0 B9 00 12 E4 ......B.. u.....
1B2A:2190 84 E2 FC 8B 16 12 E9 83 C2 04 B0 0A EE 42 EC 24 .............B.$
1B2A:21A0 BF EE 8B 16 12 E9 83 C2 06 32 C0 EE 8B 16 12 E9 .........2......
1B2A:21B0 83 C2 04 B0 0F EE 42 B0 FF EE 4A B0 0E EE 42 B0 ......B...J...B.
1B2A:21C0 FF EE 8B 16 12 E9 83 C2 04 B0 09 EE 42 B0 05 EE ............B...
1B2A:21D0 4A B0 06 EE 42 EC A2 15 EF 24 7F EE 4A B0 07 EE J...B....$..J...
1B2A:21E0 42 EC A2 16 EF 24 7F EE C7 06 1A E9 01 00 33 C0 B....$........3.
1B2A:21F0 EB 00 5F 5E C9 CA 04 00 83 3E 1A E9 01 74 05 B8 .._^.....>...t..
1B2A:2200 15 00 EB 5D 8B 16 12 E9 83 C2 04 B0 06 EE 42 A0 ...]..........B.
1B2A:2210 15 EF EE 4A B0 07 EE 42 A0 16 EF EE 4A B0 0A EE ...J...B....J...
1B2A:2220 42 32 C0 EE 42 EE 83 EA 02 B0 09 EE 42 32 C0 EE B2..B.......B2..
1B2A:2230 0F B6 06 15 E9 50 9A E3 02 EF 20 85 C0 75 22 9A .....P.... ..u".
1B2A:2240 68 01 62 1E 85 C0 75 19 68 FB 28 68 17 EF 9A F0 h.b...u.h.(h....
1B2A:2250 01 EF 20 85 C0 75 0A C7 06 1A E9 00 00 33 C0 EB .. ..u.......3..
1B2A:2260 00 CB 68 FB 28 68 17 EF 68 FB 28 68 35 EF 9A 24 ..h.(h..h.(h5..$
1B2A:2270 03 EF 20 85 C0 75 0F FF 36 35 EF 9A 26 0B 62 1E .. ..u..65..&.b.
1B2A:2280 85 C0 75 02 EB 00 CB 00 00 3F 00 20 02 05 01 00 ..u......?. ....
1B2A:2290 00 05 00 00 00 0F 00 25 23 2A 1B 4D 23 2A 1B 06 .......%#*.M#*..
1B2A:22A0 00 00 24 2A 1B 2D 25 2A 1B 68 26 2A 1B 68 2B 2A ..$*.-%*.h&*.h+*
1B2A:22B0 1B 89 01 62 1E 9C 01 62 1E AF 01 62 1E B8 04 62 ...b...b...b...b
1B2A:22C0 1E E5 04 62 1E 28 05 62 1E 36 05 62 1E 48 05 62 ...b.(.b.6.b.H.b
1B2A:22D0 1E 58 05 62 1E 6B 05 62 1E 80 05 62 1E 93 05 62 .X.b.k.b...b...b
1B2A:22E0 1E BB 05 62 1E E9 05 62 1E 1B 06 62 1E 5F 06 62 ...b...b...b._.b
1B2A:22F0 1E 95 06 62 1E C8 06 62 1E 81 07 62 1E 11 08 62 ...b...b...b...b
1B2A:2300 1E 8A 08 62 1E BC 08 62 1E EC 08 62 1E 27 09 62 ...b...b...b.'.b
1B2A:2310 1E 57 09 62 1E 7B 0A 62 1E F4 0A 62 1E 18 2C 2A .W.b.{.b...b..,*
1B2A:2320 1B 36 0B 62 1E 53 6F 75 6E 64 20 42 6C 61 73 74 .6.b.Sound Blast
1B2A:2330 65 72 20 73 65 72 69 65 73 20 53 6F 75 6E 64 20 er series Sound 
1B2A:2340 44 65 76 69 63 65 20 76 32 2E 31 35 00 61 23 2A Device v2.15.a#*
1B2A:2350 1B 88 23 2A 1B A6 23 2A 1B C4 23 2A 1B E2 23 2A ..#*..#*..#*..#*
1B2A:2360 1B 53 6F 75 6E 64 20 42 6C 61 73 74 65 72 20 31 .Sound Blaster 1
1B2A:2370 2E 30 20 6F 72 20 63 6C 6F 6E 65 20 28 44 53 50 .0 or clone (DSP
1B2A:2380 20 76 31 2E 78 78 29 00 53 6F 75 6E 64 20 42 6C  v1.xx).Sound Bl
1B2A:2390 61 73 74 65 72 20 31 2E 35 20 28 44 53 50 20 76 aster 1.5 (DSP v
1B2A:23A0 32 2E 30 30 29 00 53 6F 75 6E 64 20 42 6C 61 73 2.00).Sound Blas
1B2A:23B0 74 65 72 20 32 2E 30 20 28 44 53 50 20 76 32 2E ter 2.0 (DSP v2.
1B2A:23C0 30 31 29 00 53 6F 75 6E 64 20 42 6C 61 73 74 65 01).Sound Blaste
1B2A:23D0 72 20 50 72 6F 20 28 44 53 50 20 76 33 2E 78 78 r Pro (DSP v3.xx
1B2A:23E0 29 00 53 6F 75 6E 64 20 42 6C 61 73 74 65 72 20 ).Sound Blaster 
1B2A:23F0 31 36 20 28 44 53 50 20 76 34 2E 30 30 2B 29 00 16 (DSP v4.00+).
1B2A:2400 10 02 20 02 30 02 40 02 50 02 60 02 42 4C 41 53 .. .0.@.P.`.BLAS
1B2A:2410 54 45 52 00 00 00 00 00 00 00 01 00 00 00 00 00 TER.............
1B2A:2420 FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
1B2A:2430 00 00 8B 16 3D EF B9 FF FF EC 84 C0 79 07 E2 F9 ....=.......y...
1B2A:2440 B8 15 00 EB 02 33 C0 C3 E8 E7 FF 85 C0 75 05 8A .....3.......u..
1B2A:2450 C3 EE 33 C0 C3 8B 16 B0 E9 83 C2 0E B9 FF FF EC ..3.............
1B2A:2460 84 C0 78 07 E2 F9 B8 15 00 EB 08 83 C2 FC EC 8A ..x.............
1B2A:2470 D8 33 C0 C3 8B 16 B0 E9 83 C2 06 B0 01 EE B9 08 .3..............
1B2A:2480 00 EC E2 FD 32 C0 EE 8B 16 B0 E9 83 C2 0E B9 E8 ....2...........
1B2A:2490 03 EC 84 C0 78 04 E2 F9 EB 13 83 C2 FC B9 E8 03 ....x...........
1B2A:24A0 EC 3C AA 74 04 E2 F9 EB 04 33 C0 EB 03 B8 15 00 .<.t.....3......
1B2A:24B0 C3 B3 E1 E8 92 FF 85 C0 75 72 E8 98 FF 85 C0 75 ........ur.....u
1B2A:24C0 6B 8A FB E8 8F FF 85 C0 75 62 89 1E 42 EF 81 FB k.......ub..B...
1B2A:24D0 00 02 72 20 81 FB 00 02 74 28 81 FB 00 03 72 30 ..r ....t(....r0
1B2A:24E0 81 FB 00 04 72 38 C7 06 B4 E9 05 00 C7 06 BA E9 ....r8..........
1B2A:24F0 0F 00 EB 36 C7 06 B4 E9 01 00 C7 06 BA E9 05 00 ...6............
1B2A:2500 EB 28 C7 06 B4 E9 02 00 C7 06 BA E9 05 00 EB 1A .(..............
1B2A:2510 C7 06 B4 E9 03 00 C7 06 BA E9 05 00 EB 0C C7 06 ................
1B2A:2520 B4 E9 04 00 C7 06 BA E9 07 00 33 C0 C3 C8 08 00 ..........3.....
1B2A:2530 00 56 57 68 2A 1B 68 0C 24 9A 39 01 28 21 8B DA .VWh*.h.$.9.(!..
1B2A:2540 0B D8 0F 84 10 01 8E C2 8B F0 C7 46 F8 FF FF C6 ...........F....
1B2A:2550 46 FA FF C6 46 FC FF C6 46 FE FF 26 8A 04 46 84 F...F...F..&..F.
1B2A:2560 C0 0F 84 98 00 24 DF 3C 41 74 0E 3C 49 74 40 3C .....$.<At.<It@<
1B2A:2570 44 74 6A 3C 48 74 76 EB E2 B9 04 00 BF 4B EF 26 Dtj<Htv......K.&
1B2A:2580 8A 04 46 3C 20 74 0C 84 C0 74 08 88 05 47 E2 EF ..F< t...t...G..
1B2A:2590 E9 C3 00 C6 05 00 06 68 FB 28 68 4B EF 9A AB 00 .......h.(hK....
1B2A:25A0 28 21 07 3D FF FF 0F 84 AC 00 89 46 F8 EB AC 33 (!.=.......F...3
1B2A:25B0 C0 26 8A 04 46 3C 30 0F 82 9B 00 2C 30 33 DB 26 .&..F<0....,03.&
1B2A:25C0 8A 1C 80 FB 20 74 10 84 DB 74 0C 80 FB 30 0F 82 .... t...t...0..
1B2A:25D0 84 00 6B C0 0A 03 C3 88 46 FA E9 7E FF 26 8A 04 ..k.....F..~.&..
1B2A:25E0 46 3C 30 72 71 2C 30 88 46 FC E9 6E FF 26 8A 04 F<0rq,0.F..n.&..
1B2A:25F0 46 3C 30 72 61 2C 30 88 46 FE E9 5E FF 83 7E F8 F<0ra,0.F..^..~.
1B2A:2600 FF 74 53 80 7E FA FF 74 4D 80 7E FE FF 75 08 80 .tS.~..tM.~..u..
1B2A:2610 7E FC FF 74 41 EB 06 8A 46 FE 88 46 FC 8B 46 F8 ~..tA...F..F..F.
1B2A:2620 A3 B0 E9 05 0C 00 A3 3D EF 8A 46 FA A2 B2 E9 8A .......=..F.....
1B2A:2630 46 FC A2 B3 E9 E8 3C FE 85 C0 75 26 83 3E B4 E9 F.....<...u&.>..
1B2A:2640 00 75 07 E8 6B FE 85 C0 75 18 C4 5E 06 26 C7 07 .u..k...u..^.&..
1B2A:2650 01 00 33 C0 EB 0C C4 5E 06 26 C7 07 00 00 33 C0 ..3....^.&....3.
1B2A:2660 EB 00 5F 5E C9 CA 04 00 C8 00 00 00 A1 B0 E9 05 .._^............
1B2A:2670 0C 00 A3 3D EF E8 FC FD 0F 85 1C 02 83 3E B4 E9 ...=.........>..
1B2A:2680 00 75 03 E8 2B FE 83 3E B4 E9 05 74 26 83 3E B4 .u..+..>...t&.>.
1B2A:2690 E9 04 73 08 C7 06 44 EF 05 00 EB 38 B8 04 00 F7 ..s...D....8....
1B2A:26A0 46 06 01 00 75 05 0D 02 00 EB 03 0D 01 00 A3 44 F...u..........D
1B2A:26B0 EF EB 21 F7 46 06 04 00 75 05 B8 08 00 EB 03 B8 ..!.F...u.......
1B2A:26C0 04 00 F7 46 06 01 00 75 05 0D 02 00 EB 03 0D 01 ...F...u........
1B2A:26D0 00 A3 44 EF A0 B2 E9 3C 07 77 04 04 08 EB 02 04 ..D....<.w......
1B2A:26E0 68 A2 46 EF B4 35 CD 21 89 1E 38 EF 8C 06 3A EF h.F..5.!..8...:.
1B2A:26F0 A0 B2 E9 3C 07 77 11 8A C8 E4 21 A2 3C EF B3 FE ...<.w....!.<...
1B2A:2700 D2 C3 22 C3 E6 21 EB 12 8A C8 80 E9 08 E4 A1 A2 .."..!..........
1B2A:2710 3C EF B3 FE D2 C3 22 C3 E6 A1 83 3E B4 E9 05 73 <....."....>...s
1B2A:2720 70 83 3E B4 E9 03 72 08 66 B9 E9 00 00 00 EB 06 p.>...r.f.......
1B2A:2730 66 B9 D2 00 00 00 66 0F B7 5E 08 F7 06 44 EF 02 f.....f..^...D..
1B2A:2740 00 74 03 66 D1 E3 66 B8 40 42 0F 00 66 99 66 F7 .t.f..f.@B..f.f.
1B2A:2750 F3 66 F7 D8 66 05 00 01 00 00 66 85 C0 79 03 66 .f..f.....f..y.f
1B2A:2760 33 C0 66 3B C1 76 03 66 8B C1 A2 3F EF 66 BB 00 3.f;.v.f...?.f..
1B2A:2770 01 00 00 66 2B D8 66 B8 40 42 0F 00 66 99 66 F7 ...f+.f.@B..f.f.
1B2A:2780 F3 F7 06 44 EF 02 00 74 03 66 D1 E8 A3 40 EF EB ...D...t.f...@..
1B2A:2790 06 8B 46 08 A3 40 EF A1 40 EF BB 19 00 33 D2 F7 ..F..@..@....3..
1B2A:27A0 F3 8B 0E 44 EF F7 C1 08 00 74 02 D1 E0 F7 C1 02 ...D.....t......
1B2A:27B0 00 74 02 D1 E0 05 10 00 25 F0 FF 50 68 FB 28 68 .t......%..Ph.(h
1B2A:27C0 4F EF 9A 80 00 EF 20 85 C0 0F 85 CB 00 8E 06 4F O..... ........O
1B2A:27D0 EF 33 DB FF 36 40 EF FF 36 44 EF 06 53 FF 36 55 .3..6@..6D..S.6U
1B2A:27E0 EF 9A 2D 00 62 1E 85 C0 0F 85 AC 00 83 3E B4 E9 ..-.b........>..
1B2A:27F0 04 75 11 F7 06 44 EF 02 00 74 09 E8 EE 01 85 C0 .u...D...t......
1B2A:2800 0F 85 94 00 0F B6 06 B3 E9 BB 01 00 68 FB 28 68 ............h.(h
1B2A:2810 4F EF 50 53 9A 2A 02 EF 20 85 C0 75 7B C7 06 47 O.PS.*.. ..u{..G
1B2A:2820 EF F0 FF 8B 1E B4 E9 83 FB 01 74 1D 1E B4 25 A0 ..........t...%.
1B2A:2830 46 EF BA 2A 1B 8E DA BA 6A 29 CD 21 1F 83 FB 05 F..*....j).!....
1B2A:2840 74 42 83 FB 03 73 1D EB 16 1E B4 25 A0 46 EF BA tB...s.....%.F..
1B2A:2850 2A 1B 8E DA BA DB 28 CD 21 1F E8 3F 00 EB 28 E8 *.....(.!..?..(.
1B2A:2860 C0 00 EB 23 F7 06 44 EF 02 00 75 12 81 3E 40 EF ...#..D...u..>@.
1B2A:2870 F0 55 77 05 E8 AB 00 EB 0E E8 28 01 EB 09 0E E8 .Uw.......(.....
1B2A:2880 00 02 EB 03 E8 55 02 85 C0 75 0D C7 06 B8 E9 01 .....U...u......
1B2A:2890 00 33 C0 EB 03 B8 15 00 C9 CA 04 00 B3 D1 E8 A7 .3..............
1B2A:28A0 FB 85 C0 75 35 B3 40 E8 9E FB 85 C0 75 2C 8A 1E ...u5.@.....u,..
1B2A:28B0 3F EF E8 93 FB 85 C0 75 21 B3 14 E8 8A FB 85 C0 ?......u!.......
1B2A:28C0 75 18 8A 1E 47 EF E8 7F FB 85 C0 75 0D 8A 1E 48 u...G......u...H
1B2A:28D0 EF E8 74 FB 85 C0 75 02 33 C0 C3 FB 50 51 52 1E ..t...u.3...PQR.
1B2A:28E0 B8 FB 28 8E D8 B3 14 E8 5E FB 85 C0 75 16 8A 1E ..(.....^...u...
1B2A:28F0 47 EF E8 53 FB 85 C0 75 0B 8A 1E 48 EF E8 48 FB G..S...u...H..H.
1B2A:2900 85 C0 75 00 8B 16 B0 E9 83 C2 0E EC 80 3E B2 E9 ..u..........>..
1B2A:2910 07 77 06 B0 20 E6 20 EB 04 B0 20 E6 A0 1F 5A 59 .w.. . ... ...ZY
1B2A:2920 58 CF B3 D1 E8 21 FB 85 C0 75 3E B3 40 E8 18 FB X....!...u>.@...
1B2A:2930 85 C0 75 35 8A 1E 3F EF E8 0D FB 85 C0 75 2A B3 ..u5..?......u*.
1B2A:2940 48 E8 04 FB 85 C0 75 21 8A 1E 47 EF E8 F9 FA 85 H.....u!..G.....
1B2A:2950 C0 75 16 8A 1E 48 EF E8 EE FA 85 C0 75 0B B3 1C .u...H......u...
1B2A:2960 E8 E5 FA 85 C0 75 02 33 C0 C3 FB 50 51 52 1E B8 .....u.3...PQR..
1B2A:2970 FB 28 8E D8 F7 06 44 EF 08 00 75 0A 8B 16 B0 E9 .(....D...u.....
1B2A:2980 83 C2 0E EC EB 08 8B 16 B0 E9 83 C2 0F EC 80 3E ...............>
1B2A:2990 B2 E9 07 77 06 B0 20 E6 20 EB 04 B0 20 E6 A0 1F ...w.. . ... ...
1B2A:29A0 5A 59 58 CF B3 D1 E8 9F FA 85 C0 75 3E B3 40 E8 ZYX........u>.@.
1B2A:29B0 96 FA 85 C0 75 35 8A 1E 3F EF E8 8B FA 85 C0 75 ....u5..?......u
1B2A:29C0 2A B3 48 E8 82 FA 85 C0 75 21 8A 1E 47 EF E8 77 *.H.....u!..G..w
1B2A:29D0 FA 85 C0 75 16 8A 1E 48 EF E8 6C FA 85 C0 75 0B ...u...H..l...u.
1B2A:29E0 B3 90 E8 63 FA 85 C0 75 02 33 C0 C3 B3 D1 E8 57 ...c...u.3.....W
1B2A:29F0 FA 85 C0 75 60 8B 16 B0 E9 83 C2 04 B0 0E EE 42 ...u`..........B
1B2A:2A00 EC 0C 02 EE 1E B4 25 A0 46 EF BA 2A 1B 8E DA BA ......%.F..*....
1B2A:2A10 56 2A CD 21 1F 0F B6 06 B3 E9 68 2A 1B 68 14 24 V*.!......h*.h.$
1B2A:2A20 50 6A 00 9A 2A 02 EF 20 85 C0 75 29 C6 06 4A EF Pj..*.. ..u)..J.
1B2A:2A30 00 B3 14 E8 12 FA 85 C0 75 1B B3 00 E8 09 FA 85 ........u.......
1B2A:2A40 C0 75 12 B3 00 E8 00 FA 85 C0 75 09 80 3E 4A EF .u........u..>J.
1B2A:2A50 01 75 F9 33 C0 C3 50 51 52 1E B8 FB 28 8E D8 C6 .u.3..PQR...(...
1B2A:2A60 06 4A EF 01 8B 16 B0 E9 83 C2 0E EC 80 3E B2 E9 .J...........>..
1B2A:2A70 07 77 06 B0 20 E6 20 EB 04 B0 20 E6 A0 1F 5A 59 .w.. . ... ...ZY
1B2A:2A80 58 CF B3 D1 E8 C1 F9 85 C0 75 50 B3 40 E8 B8 F9 X........uP.@...
1B2A:2A90 85 C0 75 47 8A 1E 3F EF E8 AD F9 85 C0 75 3C 8B ..uG..?......u<.
1B2A:2AA0 16 B0 E9 83 C2 04 B0 0C EE 42 EC A2 49 EF 0C 20 .........B..I.. 
1B2A:2AB0 EE B3 48 E8 92 F9 85 C0 75 21 8A 1E 47 EF E8 87 ..H.....u!..G...
1B2A:2AC0 F9 85 C0 75 16 8A 1E 48 EF E8 7C F9 85 C0 75 0B ...u...H..|...u.
1B2A:2AD0 B3 90 E8 73 F9 85 C0 75 02 33 C0 CB B3 41 E8 67 ...s...u.3...A.g
1B2A:2AE0 F9 85 C0 0F 85 80 00 8A 1E 41 EF E8 5A F9 85 C0 .........A..Z...
1B2A:2AF0 75 75 8A 1E 40 EF E8 4F F9 85 C0 75 6A F7 06 44 uu..@..O...uj..D
1B2A:2B00 EF 04 00 75 27 B3 B4 E8 3E F9 85 C0 75 59 F7 06 ...u'...>...uY..
1B2A:2B10 44 EF 01 00 75 0B B3 30 E8 2D F9 85 C0 75 48 EB D...u..0.-...uH.
1B2A:2B20 30 B3 10 E8 22 F9 85 C0 75 3D EB 25 B3 C6 E8 17 0..."...u=.%....
1B2A:2B30 F9 85 C0 75 32 F7 06 44 EF 01 00 75 0B B3 20 E8 ...u2..D...u.. .
1B2A:2B40 06 F9 85 C0 75 21 EB 09 B3 00 E8 FB F8 85 C0 75 ....u!.........u
1B2A:2B50 16 8A 1E 47 EF E8 F0 F8 85 C0 75 0B 8A 1E 48 EF ...G......u...H.
1B2A:2B60 E8 E5 F8 85 C0 75 00 C3 83 3E B8 E9 01 74 06 B8 .....u...>...t..
1B2A:2B70 15 00 E9 A2 00 BB 02 00 8B 16 B0 E9 83 C2 06 B0 ................
1B2A:2B80 01 EE B9 08 00 EC E2 FD 32 C0 EE B9 08 00 EC E2 ........2.......
1B2A:2B90 FD 4B 75 EB 0F B6 06 B3 E9 50 9A E3 02 EF 20 85 .Ku......P.... .
1B2A:2BA0 C0 75 74 8A 1E B2 E9 80 FB 07 77 07 A0 3C EF E6 .ut.......w..<..
1B2A:2BB0 21 EB 05 A0 3C EF E6 A1 1E A0 46 EF B4 25 C5 16 !...<.....F..%..
1B2A:2BC0 38 EF CD 21 1F 9A 68 01 62 1E 85 C0 75 49 68 FB 8..!..h.b...uIh.
1B2A:2BD0 28 68 4F EF 9A F0 01 EF 20 85 C0 75 3A B3 D3 E8 (hO..... ..u:...
1B2A:2BE0 66 F8 85 C0 75 31 83 3E B4 E9 04 75 20 F7 06 44 f...u1.>...u ..D
1B2A:2BF0 EF 02 00 74 18 8B 16 B0 E9 83 C2 04 B0 0C EE 42 ...t...........B
1B2A:2C00 A0 49 EF EE 4A B0 0E EE 42 EC 24 FD EE C7 06 B8 .I..J...B.$.....
1B2A:2C10 E9 00 00 33 C0 EB 00 CB 68 FB 28 68 4F EF 68 FB ...3....h.(hO.h.
1B2A:2C20 28 68 6D EF 9A 24 03 EF 20 85 C0 75 0F FF 36 6D (hm..$.. ..u..6m
1B2A:2C30 EF 9A 26 0B 62 1E 85 C0 75 02 EB 00 CB 01 00 00 ..&.b...u.......
1B2A:2C40 00 00 00 00 00 01 00 01 00 00 00 00 00 DB 2C 2A ..............,*
1B2A:2C50 1B F7 2C 2A 1B 00 00 00 00 00 00 04 2D 2A 1B 16 ..,*........-*..
1B2A:2C60 2D 2A 1B 74 2D 2A 1B 98 2D 2A 1B AB 2D 2A 1B BE -*.t-*..-*..-*..
1B2A:2C70 2D 2A 1B 02 2E 2A 1B 0F 2E 2A 1B 34 2E 2A 1B 44 -*...*...*.4.*.D
1B2A:2C80 2E 2A 1B 54 2E 2A 1B 95 2E 2A 1B 72 2E 2A 1B 82 .*.T.*...*.r.*..
1B2A:2C90 2E 2A 1B A8 2E 2A 1B 0C 2F 2A 1B 33 2F 2A 1B 5E .*...*../*.3/*.^
1B2A:2CA0 2F 2A 1B A2 2F 2A 1B D3 2F 2A 1B F8 2F 2A 1B AE /*../*../*../*..
1B2A:2CB0 30 2A 1B D5 30 2A 1B 3B 31 2A 1B 80 31 2A 1B A4 0*..0*.;1*..1*..
1B2A:2CC0 31 2A 1B CB 31 2A 1B FC 31 2A 1B 8C 32 2A 1B BD 1*..1*..1*..2*..
1B2A:2CD0 32 2A 1B CD 32 2A 1B D0 32 2A 1B 4E 6F 20 53 6F 2*..2*..2*.No So
1B2A:2CE0 75 6E 64 20 53 6F 75 6E 64 20 44 65 76 69 63 65 und Sound Device
1B2A:2CF0 20 76 31 2E 32 32 00 FB 2C 2A 1B 4E 6F 20 53 6F  v1.22..,*.No So
1B2A:2D00 75 6E 64 00 C8 00 00 00 C4 5E 06 26 C7 07 01 00 und......^.&....
1B2A:2D10 33 C0 C9 CA 04 00 C8 00 00 00 57 8B 46 06 A3 7A 3.........W.F..z
1B2A:2D20 EF 8B 46 08 A3 72 EF C7 06 76 EF 01 00 C7 06 78 ..F..r...v.....x
1B2A:2D30 EF 40 00 C7 06 82 EF 00 00 68 00 0A 68 FB 28 68 .@.......h..h.(h
1B2A:2D40 7E EF 9A 00 00 A1 21 85 C0 75 24 66 8B 1E 7E EF ~.....!..u$f..~.
1B2A:2D50 66 89 1E 66 F2 C4 3E 7E EF 66 33 C0 B9 00 0A FC f..f..>~.f3.....
1B2A:2D60 F3 AA C7 06 56 EA 01 00 33 C0 5F C9 CA 04 00 5F ....V...3._...._
1B2A:2D70 C9 CA 04 00 66 FF 36 66 F2 9A A7 00 A1 21 85 C0 ....f.6f.....!..
1B2A:2D80 75 15 C7 06 76 EF 01 00 C7 06 82 EF 00 00 C7 06 u...v...........
1B2A:2D90 56 EA 00 00 33 C0 CB CB C8 00 00 00 A1 72 EF C4 V...3........r..
1B2A:2DA0 5E 06 26 89 07 33 C0 C9 CA 04 00 C8 00 00 00 A1 ^.&..3..........
1B2A:2DB0 7A EF C4 5E 06 26 89 07 33 C0 C9 CA 04 00 C8 00 z..^.&..3.......
1B2A:2DC0 00 00 56 57 8B 5E 06 89 1E 70 EF C6 06 7C EF 00 ..VW.^...p...|..
1B2A:2DD0 C6 06 7D EF 00 8C D8 8E C0 BF 86 EF 32 C0 B9 E0 ..}.........2...
1B2A:2DE0 02 FC F3 AA 8B 4E 06 33 DB C7 87 9B EF 00 00 83 .....N.3........
1B2A:2DF0 C3 17 E2 F5 C7 06 84 EF 40 00 33 C0 5F 5E C9 CA ........@.3._^..
1B2A:2E00 02 00 0E E8 09 00 C7 06 70 EF 00 00 33 C0 CB 56 ........p...3..V
1B2A:2E10 33 DB 8B 0E 70 EF C7 87 9B EF 00 00 C6 87 87 EF 3...p...........
1B2A:2E20 00 80 A7 86 EF 7F 80 8F 86 EF 01 83 C3 17 E2 E6 ................
1B2A:2E30 33 C0 5E CB C8 00 00 00 8B 46 06 A2 7C EF 33 C0 3.^......F..|.3.
1B2A:2E40 C9 CA 02 00 C8 00 00 00 8B 46 06 A2 7D EF 33 C0 .........F..}.3.
1B2A:2E50 C9 CA 02 00 C8 00 00 00 8B 46 06 3D 40 00 76 03 .........F.=@.v.
1B2A:2E60 B8 40 00 39 06 78 EF 74 03 A3 78 EF 33 C0 C9 CA .@.9.x.t..x.3...
1B2A:2E70 02 00 C8 00 00 00 8B 46 06 A3 84 EF 33 C0 C9 CA .......F....3...
1B2A:2E80 02 00 C8 00 00 00 A1 84 EF C4 5E 06 26 89 07 33 ..........^.&..3
1B2A:2E90 C0 C9 CA 04 00 C8 00 00 00 A1 78 EF C4 5E 06 26 ..........x..^.&
1B2A:2EA0 88 07 33 C0 C9 CA 04 00 C8 00 00 00 56 8B 5E 0A ..3.........V.^.
1B2A:2EB0 39 1E 70 EF 7E 49 6B DB 17 66 8B 46 06 66 85 C0 9.p.~Ik..f.F.f..
1B2A:2EC0 74 36 66 89 87 88 EF 80 8F 86 EF 08 0F B6 97 87 t6f.............
1B2A:2ED0 EF 85 D2 74 2F 3B 16 82 EF 77 29 4A 6B D2 0A C4 ...t/;...w)Jk...
1B2A:2EE0 36 66 F2 03 F2 66 C7 87 8F EF 00 00 00 00 80 A7 6f...f..........
1B2A:2EF0 86 EF EE 80 8F 86 EF 02 33 C0 5E C9 CA 06 00 B8 ........3.^.....
1B2A:2F00 12 00 EB 03 B8 13 00 5E C9 CA 06 00 C8 00 00 00 .......^........
1B2A:2F10 8B 5E 06 39 1E 70 EF 7E 13 6B DB 17 80 A7 86 EF .^.9.p.~.k......
1B2A:2F20 ED 80 8F 86 EF 01 33 C0 C9 CA 02 00 B8 12 00 C9 ......3.........
1B2A:2F30 CA 02 00 C8 00 00 00 8B 5E 0A 39 1E 70 EF 7E 17 ........^.9.p.~.
1B2A:2F40 6B DB 17 66 8B 46 06 66 89 87 88 EF 80 8F 86 EF k..f.F.f........
1B2A:2F50 08 33 C0 C9 CA 06 00 B8 12 00 C9 CA 06 00 C8 00 .3..............
1B2A:2F60 00 00 8B 5E 0A 39 1E 70 EF 7E 30 8B 5E 0A 6B DB ...^.9.p.~0.^.k.
1B2A:2F70 17 F6 87 86 EF 40 75 12 66 8B 87 88 EF C4 5E 06 .....@u.f.....^.
1B2A:2F80 66 26 89 07 33 C0 C9 CA 06 00 C4 5E 06 66 26 C7 f&..3......^.f&.
1B2A:2F90 07 00 00 00 00 33 C0 C9 CA 06 00 B8 12 00 C9 CA .....3..........
1B2A:2FA0 06 00 C8 00 00 00 8B 46 06 3D 40 00 76 03 B8 40 .......F.=@.v..@
1B2A:2FB0 00 8B 5E 08 39 1E 70 EF 7E 12 6B DB 17 89 87 8C ..^.9.p.~.k.....
1B2A:2FC0 EF 80 8F 86 EF 04 33 C0 C9 CA 04 00 B8 12 00 C9 ......3.........
1B2A:2FD0 CA 04 00 C8 00 00 00 8B 5E 0A 39 1E 70 EF 7E 11 ........^.9.p.~.
1B2A:2FE0 6B DB 17 8B 87 8C EF C4 5E 06 26 88 07 33 C0 EB k.......^.&..3..
1B2A:2FF0 03 B8 12 00 C9 CA 06 00 C8 00 00 00 66 57 56 8B ............fWV.
1B2A:3000 5E 08 39 1E 70 EF 0F 8E 95 00 6B DB 17 8B 46 06 ^.9.p.....k...F.
1B2A:3010 85 C0 0F 84 8E 00 3B 06 82 EF 0F 87 86 00 8B D0 ......;.........
1B2A:3020 4A 6B D2 0A C4 36 66 F2 03 F2 38 87 87 EF 74 45 Jk...6f...8...tE
1B2A:3030 88 87 87 EF 66 C7 87 8F EF 00 00 00 00 26 F7 44 ....f........&.D
1B2A:3040 08 02 00 74 10 66 26 0F B7 7C 04 66 26 0F B7 4C ...t.f&..|.f&..L
1B2A:3050 02 B0 08 EB 0D 66 26 0F B7 04 66 33 FF 66 03 F8 .....f&...f3.f..
1B2A:3060 32 C0 88 87 8E EF 66 89 8F 93 EF 66 89 BF 97 EF 2.....f....f....
1B2A:3070 80 8F 86 EF 10 26 83 3C 00 74 16 26 8B 44 06 89 .....&.<.t.&.D..
1B2A:3080 87 8C EF 80 8F 86 EF 04 33 C0 5E 66 5F C9 CA 04 ........3.^f_...
1B2A:3090 00 FF 76 08 0E E8 74 FE 5E 66 5F C9 CA 04 00 B8 ..v...t.^f_.....
1B2A:30A0 12 00 EB 03 B8 13 00 5E 66 5F C9 CA 04 00 C8 00 .......^f_......
1B2A:30B0 00 00 8B 5E 0A 39 1E 70 EF 7E 13 6B DB 17 8A 87 ...^.9.p.~.k....
1B2A:30C0 87 EF C4 5E 06 32 E4 26 89 07 33 C0 EB 03 B8 12 ...^.2.&..3.....
1B2A:30D0 00 C9 CA 06 00 C8 00 00 00 56 8B 5E 08 39 1E 70 .........V.^.9.p
1B2A:30E0 EF 7E 50 6B DB 17 0F B6 97 87 EF 85 D2 74 3D 4A .~Pk.........t=J
1B2A:30F0 6B D2 0A C4 36 66 F2 03 F2 66 0F B7 4E 06 26 39 k...6f...f..N.&9
1B2A:3100 0C 73 1A 66 26 0F B7 4C 02 26 F7 44 08 02 00 75 .s.f&..L.&.D...u
1B2A:3110 0C FF 76 08 0E E8 F4 FD 5E C9 CA 04 00 66 89 8F ..v.....^....f..
1B2A:3120 8F EF 80 A7 86 EF EE 80 8F 86 EF 02 33 C0 5E C9 ............3.^.
1B2A:3130 CA 04 00 B8 12 00 5E C9 CA 04 00 C8 00 00 00 56 ......^........V
1B2A:3140 8B 5E 0A 39 1E 70 EF 7E 2F 6B DB 17 F6 87 86 EF .^.9.p.~/k......
1B2A:3150 40 75 16 8B 87 8F EF 85 C0 75 01 40 C4 5E 06 26 @u.......u.@.^.&
1B2A:3160 89 07 33 C0 5E C9 CA 06 00 C4 5E 06 26 C7 07 00 ..3.^.....^.&...
1B2A:3170 00 33 C0 5E C9 CA 06 00 B8 12 00 5E C9 CA 06 00 .3.^.......^....
1B2A:3180 C8 00 00 00 8B 5E 08 39 1E 70 EF 7E 10 6B DB 17 .....^.9.p.~.k..
1B2A:3190 8B 46 06 89 87 9B EF 33 C0 C9 CA 04 00 B8 12 00 .F.....3........
1B2A:31A0 C9 CA 04 00 C8 00 00 00 8B 5E 0A 39 1E 70 EF 7E .........^.9.p.~
1B2A:31B0 13 6B DB 17 8B 87 9B EF C4 5E 06 26 89 07 33 C0 .k.......^.&..3.
1B2A:31C0 C9 CA 06 00 B8 12 00 C9 CA 06 00 C8 00 00 00 8B ................
1B2A:31D0 5E 08 39 1E 70 EF 7E 1D 6B DB 17 8B 46 06 3D 01 ^.9.p.~.k...F.=.
1B2A:31E0 00 74 07 80 A7 86 EF 7F EB 05 80 8F 86 EF 80 33 .t.............3
1B2A:31F0 C0 C9 CA 04 00 B8 12 00 C9 CA 04 00 C8 00 00 00 ................
1B2A:3200 56 57 83 7E 16 01 75 7B A1 76 EF 48 6B C0 0A C4 VW.~..u{.v.Hk...
1B2A:3210 3E 66 F2 03 F8 8B 46 14 26 89 05 8B 46 12 26 89 >f....F.&...F.&.
1B2A:3220 45 02 8B 46 10 26 89 45 04 8B 46 0E 3D 40 00 76 E..F.&.E..F.=@.v
1B2A:3230 03 B8 40 00 26 89 45 06 8B 46 0C 25 01 00 03 C0 ..@.&.E..F.%....
1B2A:3240 0D 01 00 26 89 45 08 FF 36 76 EF A1 76 EF 8B D8 ...&.E..6v..v...
1B2A:3250 4B 6B DB 0A C4 36 66 F2 03 F3 26 F7 44 08 01 00 Kk...6f...&.D...
1B2A:3260 74 06 83 C6 0A 40 EB F2 A3 76 EF 58 C4 5E 06 26 t....@...v.X.^.&
1B2A:3270 89 07 3B 06 82 EF 76 03 A3 82 EF 33 C0 5F 5E C9 ..;...v....3._^.
1B2A:3280 CA 16 00 B8 10 00 5F 5E C9 CA 16 00 C8 00 00 00 ......_^........
1B2A:3290 56 8B 5E 06 4B 6B DB 0A C4 36 66 F2 26 F7 44 08 V.^.Kk...6f.&.D.
1B2A:32A0 01 00 74 12 26 C7 44 08 00 00 8B 46 06 39 06 76 ..t.&.D....F.9.v
1B2A:32B0 EF 7C 03 A3 76 EF 33 C0 5E C9 CA 02 00 C8 00 00 .|..v.3.^.......
1B2A:32C0 00 8B 46 06 A3 74 EF 33 C0 C9 CA 02 00 33 C0 CB ..F..t.3.....3..
1B2A:32D0 C8 02 00 00 56 80 3E 7D EF 00 0F 85 8A 00 C7 46 ....V.>}.......F
1B2A:32E0 FE 00 00 BE 86 EF F6 04 40 75 48 66 8B 44 02 66 ........@uHf.D.f
1B2A:32F0 6B C0 64 66 33 D2 66 0F B7 1E 74 EF 66 85 DB 74 k.df3.f...t.f..t
1B2A:3300 32 66 F7 FB 66 8B 5C 09 66 03 D8 66 8B 4C 11 66 2f..f.\.f..f.L.f
1B2A:3310 3B D9 7E 1B F6 44 08 08 75 08 80 0C 40 66 33 DB ;.~..D..u...@f3.
1B2A:3320 EB 0D 66 8B 44 11 66 2B 44 0D 66 2B D8 EB E0 66 ..f.D.f+D.f+...f
1B2A:3330 89 5C 09 F6 04 03 74 10 80 24 FE F6 04 02 75 05 .\....t..$....u.
1B2A:3340 80 0C 40 EB 03 80 24 BC 80 24 F3 83 C6 17 FF 46 ..@...$..$.....F
1B2A:3350 FE A1 70 EF 39 46 FE 72 8D C4 5E 06 26 C7 07 01 ..p.9F.r..^.&...
1B2A:3360 00 33 C0 5E C9 CA 04 00 C4 5E 06 26 C7 07 00 00 .3.^.....^.&....
1B2A:3370 EB EF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
;;; Segment 1E62 (1E62:0000)
1E62:0000 F7 06 6C F2 08 00 75 11 57 C4 3E B7 F2 B0 80 8B ..l...u.W.>.....
1E62:0010 0E BB F2 FC F3 AA 5F EB 11 57 C4 3E B7 F2 33 C0 ......_..W.>..3.
1E62:0020 8B 0E BB F2 D1 E9 FC F3 AB 5F 33 C0 CB C8 00 00 ........._3.....
1E62:0030 00 FC 66 8B 46 08 66 A3 B7 F2 8B 5E 06 89 1E BB ..f.F.f....^....
1E62:0040 F2 03 C3 A3 BD F2 8B 46 0E A3 6A F2 C7 06 7E F2 .......F..j...~.
1E62:0050 00 00 C7 06 80 F2 00 00 66 C7 06 7A F2 00 00 00 ........f..z....
1E62:0060 00 C7 06 93 F2 00 00 C7 06 95 F2 00 00 8B 46 0C ..............F.
1E62:0070 A3 6C F2 C7 06 9B F2 02 00 C7 06 9D F2 01 00 F7 .l..............
1E62:0080 06 6C F2 08 00 74 0F D1 26 9D F2 66 C7 06 9F F2 .l...t..&..f....
1E62:0090 00 00 00 00 EB 09 66 C7 06 9F F2 00 80 00 80 F7 ......f.........
1E62:00A0 06 6C F2 02 00 74 08 D1 26 9B F2 D1 26 9D F2 B8 .l...t..&...&...
1E62:00B0 10 42 8B 1E BB F2 F7 06 6C F2 04 00 74 02 D1 E3 .B......l...t...
1E62:00C0 81 FB 00 10 76 03 BB 00 10 89 1E 78 F2 03 C3 F7 ....v......x....
1E62:00D0 06 6C F2 04 00 74 03 05 00 10 50 68 FB 28 68 6E .l...t....Ph.(hn
1E62:00E0 F2 9A 00 00 A1 21 85 C0 75 7A 8B 16 70 F2 A1 6E .....!..uz..p..n
1E62:00F0 F2 05 0F 00 C1 E8 04 03 D0 89 16 72 F2 C7 06 74 ...........r...t
1E62:0100 F2 00 42 89 16 76 F2 F7 06 6C F2 04 00 74 0E B8 ..B..v...l...t..
1E62:0110 00 42 03 06 78 F2 A3 AD F2 89 16 AF F2 C6 06 82 .B..x...........
1E62:0120 F2 40 C7 06 8B F2 00 00 68 88 13 0E E8 C5 09 85 .@......h.......
1E62:0130 C0 75 31 68 00 10 68 FB 28 68 83 F2 9A 00 00 A1 .u1h..h.(h......
1E62:0140 21 85 C0 75 1F C4 3E 83 F2 B9 00 01 26 C6 45 0E !..u..>.....&.E.
1E62:0150 00 66 26 C7 05 00 00 00 00 83 C7 10 E2 EE 0E E8 .f&.............
1E62:0160 9E FE EB 00 C9 CA 0A 00 66 FF 36 6E F2 9A A7 00 ........f.6n....
1E62:0170 A1 21 85 C0 75 12 66 FF 36 83 F2 9A A7 00 A1 21 .!..u.f.6......!
1E62:0180 85 C0 75 04 33 C0 EB 00 CB C8 00 00 00 A1 6A F2 ..u.3.........j.
1E62:0190 C4 5E 06 26 89 07 33 C0 C9 CA 04 00 C8 00 00 00 .^.&..3.........
1E62:01A0 A1 6C F2 C4 5E 06 26 89 07 33 C0 C9 CA 04 00 C8 .l..^.&..3......
1E62:01B0 00 00 00 57 C7 06 93 F2 00 00 C7 06 95 F2 00 00 ...W............
1E62:01C0 B8 1C 00 F7 66 06 50 68 FB 28 68 7A F2 9A 00 00 ....f.Ph.(hz....
1E62:01D0 A1 21 85 C0 75 3A C7 06 80 F2 00 00 8B 46 06 A3 .!..u:.......F..
1E62:01E0 7E F2 BB 40 00 F7 06 6C F2 04 00 74 0C 3D 04 00 ~..@...l...t.=..
1E62:01F0 76 07 B9 0E 00 F7 E1 8B D8 53 0E E8 6D 03 0E E8 v........S..m...
1E62:0200 E3 02 85 C0 75 0A C7 06 80 F2 01 00 33 C0 EB 00 ....u.......3...
1E62:0210 5F C9 CA 02 00 C8 00 00 00 57 56 8E 06 72 F2 66 _........WV..r.f
1E62:0220 33 FF B9 00 21 66 0F BF 76 06 8B C7 25 FF 00 2D 3...!f..v...%..-
1E62:0230 80 00 C1 E0 08 F7 06 6C F2 04 00 74 03 C1 F8 04 .......l...t....
1E62:0240 8B DF C1 EB 08 F7 EB BB 20 00 F7 FB 99 F7 3E 7E ........ .....>~
1E62:0250 F2 66 98 F7 06 6C F2 08 00 74 07 66 F7 EE 66 C1 .f...l...t.f..f.
1E62:0260 F8 06 26 67 89 04 3F 66 47 E2 BF F7 06 6C F2 04 ..&g..?fG....l..
1E62:0270 00 74 46 C4 3E AD F2 B9 00 10 33 DB 66 0F BF 76 .tF.>.....3.f..v
1E62:0280 06 8B C3 2D 00 08 66 98 66 F7 EE 66 C1 F8 06 66 ...-..f.f..f...f
1E62:0290 C1 F8 04 66 05 80 00 00 00 66 85 C0 79 05 66 33 ...f.....f..y.f3
1E62:02A0 C0 EB 0E 66 3D FF 00 00 00 76 06 66 B8 FF 00 00 ...f=....v.f....
1E62:02B0 00 26 88 05 47 43 49 75 C8 33 C0 5E 5F C9 CA 02 .&..GCIu.3.^_...
1E62:02C0 00 C8 08 00 00 56 57 A1 97 F2 89 46 F8 A1 99 F2 .....VW....F....
1E62:02D0 89 46 FA 83 3E 6C F2 05 0F 84 9A 00 83 3E 6C F2 .F..>l.......>l.
1E62:02E0 06 74 18 83 3E 6C F2 09 0F 84 5C 01 83 3E 6C F2 .t..>l....\..>l.
1E62:02F0 0A 0F 84 D6 00 B8 01 00 E9 B7 01 C7 46 FC 00 00 ............F...
1E62:0300 A1 99 F2 89 46 FA B2 FF 32 F6 C4 36 B7 F2 03 36 ....F...2..6...6
1E62:0310 97 F2 8B 4E FA A1 BD F2 2B C6 3B C8 72 02 8B C8 ...N....+.;.r...
1E62:0320 29 4E FA D1 E9 83 7E FC 00 74 01 46 26 8A 04 83 )N....~..t.F&...
1E62:0330 C6 02 3A C2 72 09 3A C6 77 0C 49 75 EF EB 0C 8A ..:.r.:.w.Iu....
1E62:0340 D0 49 75 E8 EB 05 8A F0 49 75 E1 83 7E FA 00 74 .Iu.....Iu..~..t
1E62:0350 06 8B 36 B7 F2 EB BB 33 C0 8A C6 2A C2 C1 E8 02 ..6....3...*....
1E62:0360 83 7E FC 01 74 08 89 46 FE FF 46 FC EB 92 8B C8 .~..t..F..F.....
1E62:0370 8B 5E FE E9 2C 01 B2 FF B6 00 C4 36 B7 F2 03 76 .^..,......6...v
1E62:0380 F8 8B 4E FA A1 BD F2 2B C6 3B C8 72 02 8B C8 29 ..N....+.;.r...)
1E62:0390 4E FA 26 8A 04 46 3A C2 72 09 3A C6 77 0C 49 75 N.&..F:.r.:.w.Iu
1E62:03A0 F1 EB 0C 8A D0 49 75 EA EB 05 8A F0 49 75 E3 83 .....Iu.....Iu..
1E62:03B0 7E FA 00 74 06 8B 36 B7 F2 EB C6 8A C6 2A C2 32 ~..t..6......*.2
1E62:03C0 E4 C1 E8 02 8B D8 8B C8 E9 D7 00 C7 46 FC 00 00 ............F...
1E62:03D0 A1 99 F2 89 46 FA BB FF 7F BA 01 80 C4 36 B7 F2 ....F........6..
1E62:03E0 03 36 97 F2 8B 4E FA A1 BD F2 2B C6 3B C8 72 02 .6...N....+.;.r.
1E62:03F0 8B C8 29 4E FA C1 E9 02 83 7E FC 00 74 03 83 C6 ..)N.....~..t...
1E62:0400 02 26 8B 04 83 C6 04 3B C3 7C 09 3B C2 7F 0C 49 .&.....;.|.;...I
1E62:0410 75 EF EB 0C 8B D8 49 75 E8 EB 05 8B D0 49 75 E1 u.....Iu.....Iu.
1E62:0420 83 7E FA 00 74 06 8B 36 B7 F2 EB B8 8B C2 2B C3 .~..t..6......+.
1E62:0430 C1 E8 0A 83 7E FC 01 74 08 89 46 FE FF 46 FC EB ....~..t..F..F..
1E62:0440 8F 8B C8 8B 5E FE EB 5A BB FF 7F BA 01 80 C4 36 ....^..Z.......6
1E62:0450 B7 F2 03 76 F8 8B 4E FA A1 BD F2 2B C6 3B C8 72 ...v..N....+.;.r
1E62:0460 02 8B C8 29 4E FA D1 E9 26 8B 04 83 C6 02 3B C3 ...)N...&.....;.
1E62:0470 7C 09 3B C2 7F 0C 49 75 EF EB 0E 8B D8 49 75 E8 |.;...Iu.....Iu.
1E62:0480 EB 07 8B D0 49 75 E1 EB 00 83 7E FA 00 74 06 8B ....Iu....~..t..
1E62:0490 36 B7 F2 EB C0 8B C2 2B C3 C1 E8 0A 8B D8 8B C8 6......+........
1E62:04A0 EB 00 C4 7E 0A 26 89 1D C4 7E 06 26 89 0D 33 C0 ...~.&...~.&..3.
1E62:04B0 EB 00 5F 5E C9 CA 08 00 83 3E 7E F2 00 75 05 B8 .._^.....>~..u..
1E62:04C0 14 00 EB 20 C7 06 80 F2 00 00 66 FF 36 7A F2 9A ... ......f.6z..
1E62:04D0 A7 00 A1 21 85 C0 75 0C C7 06 7E F2 00 00 0E E8 ...!..u...~.....
1E62:04E0 1E FB EB 00 CB 8B 0E 7E F2 85 C9 75 05 B8 14 00 .......~...u....
1E62:04F0 EB 35 C4 1E 7A F2 26 C6 47 1B 00 26 C6 47 1A 00 .5..z.&.G..&.G..
1E62:0500 26 C7 47 08 00 00 26 C6 47 17 00 26 C6 47 0F 00 &.G...&.G..&.G..
1E62:0510 66 26 C7 47 04 00 00 00 00 26 C6 47 18 00 83 C3 f&.G.....&.G....
1E62:0520 1C E2 D3 33 C0 EB 00 CB C8 00 00 00 8B 46 06 A3 ...3.........F..
1E62:0530 93 F2 C9 CA 02 00 C8 00 00 00 8B 46 06 A3 95 F2 ...........F....
1E62:0540 0E E8 BC FA C9 CA 02 00 C8 00 00 00 8A 46 06 A2 .............F..
1E62:0550 82 F2 33 C0 C9 CA 02 00 C8 00 00 00 A0 82 F2 C4 ..3.............
1E62:0560 5E 06 26 88 07 33 C0 C9 CA 04 00 C8 00 00 00 8B ^.&..3..........
1E62:0570 46 06 A3 B1 F2 50 0E E8 9B FC 33 C0 C9 CA 02 00 F....P....3.....
1E62:0580 C8 00 00 00 A1 B1 F2 C4 5E 06 26 89 07 33 C0 C9 ........^.&..3..
1E62:0590 CA 04 00 C8 00 00 00 FF 76 0A 6A 00 0E E8 71 02 ........v.j...q.
1E62:05A0 85 C0 75 13 FF 76 0A 66 FF 76 06 0E E8 3A 00 85 ..u..v.f.v...:..
1E62:05B0 C0 75 04 33 C0 EB 00 C9 CA 06 00 C8 00 00 00 8B .u.3............
1E62:05C0 46 06 3B 06 7E F2 72 05 B8 12 00 EB 18 BB 1C 00 F.;.~.r.........
1E62:05D0 F7 E3 8B 1E 7A F2 03 D8 8E 06 7C F2 26 C6 47 1B ....z.....|.&.G.
1E62:05E0 00 33 C0 EB 00 C9 CA 02 00 C8 00 00 00 8B 46 0A .3............F.
1E62:05F0 3B 06 7E F2 72 05 B8 12 00 EB 1C BB 1C 00 F7 E3 ;.~.r...........
1E62:0600 8B 1E 7A F2 03 D8 8E 06 7C F2 66 8B 46 06 66 26 ..z.....|.f.F.f&
1E62:0610 89 47 04 33 C0 EB 00 C9 CA 06 00 C8 00 00 00 56 .G.3...........V
1E62:0620 0F B5 76 06 8B 46 0A 3B 06 7E F2 72 05 B8 12 00 ..v..F.;.~.r....
1E62:0630 EB 28 BB 1C 00 F7 E3 8B 1E 7A F2 03 D8 8E 06 7C .(.......z.....|
1E62:0640 F2 26 80 7F 1B 00 74 07 66 26 8B 47 04 EB 03 66 .&....t.f&.G...f
1E62:0650 33 C0 66 65 89 04 33 C0 74 00 5E C9 CA 06 00 C8 3.fe..3.t.^.....
1E62:0660 00 00 00 8B 46 08 3B 06 7E F2 72 05 B8 12 00 EB ....F.;.~.r.....
1E62:0670 20 BB 1C 00 F7 E3 8B 1E 7A F2 03 D8 8E 06 7C F2  .......z.....|.
1E62:0680 8A 46 06 3C 40 76 02 B0 40 26 88 47 19 33 C0 EB .F.<@v..@&.G.3..
1E62:0690 00 C9 CA 04 00 C8 00 00 00 8B 46 0A 3B 06 7E F2 ..........F.;.~.
1E62:06A0 72 05 B8 12 00 EB 1D BB 1C 00 F7 E3 8B 1E 7A F2 r.............z.
1E62:06B0 03 D8 8E 06 7C F2 26 8A 47 19 C4 5E 06 26 88 07 ....|.&.G..^.&..
1E62:06C0 33 C0 EB 00 C9 CA 06 00 C8 00 00 00 56 8B 46 08 3...........V.F.
1E62:06D0 3B 06 7E F2 72 06 B8 12 00 E9 A0 00 BB 1C 00 F7 ;.~.r...........
1E62:06E0 E3 8B 1E 7A F2 03 D8 8E 06 7C F2 8B 46 06 85 C0 ...z.....|..F...
1E62:06F0 74 07 78 05 3D 00 01 76 05 B8 13 00 EB 7E 48 8E t.x.=..v.....~H.
1E62:0700 2E 85 F2 8B 36 83 F2 8B C0 BA 10 00 F7 E2 03 F0 ....6...........
1E62:0710 65 80 7C 0E 01 74 05 B8 13 00 EB 60 8B 46 06 26 e.|..t.....`.F.&
1E62:0720 89 47 08 65 8A 44 0C 26 88 47 19 83 3E E0 F2 01 .G.e.D.&.G..>...
1E62:0730 74 1C E8 81 00 26 80 7F 1B 01 75 0E FF 76 08 26 t....&....u..v.&
1E62:0740 FF 37 0E E8 CB 00 85 C0 75 32 33 C0 EB 2E 26 C6 .7......u23...&.
1E62:0750 47 17 01 26 80 7F 1B 01 74 1E 65 80 7C 0D 01 75 G..&....t.e.|..u
1E62:0760 17 66 26 83 7F 04 00 74 0F FF 76 08 65 FF 74 08 .f&....t..v.e.t.
1E62:0770 0E E8 9D 00 85 C0 75 04 33 C0 EB 00 5E C9 CA 04 ......u.3...^...
1E62:0780 00 C8 00 00 00 56 8B 46 0A 3B 06 7E F2 72 05 B8 .....V.F.;.~.r..
1E62:0790 12 00 EB 1D BB 1C 00 F7 E3 8B 1E 7A F2 03 D8 8E ...........z....
1E62:07A0 06 7C F2 26 8B 47 08 C4 5E 06 26 89 07 33 C0 EB .|.&.G..^.&..3..
1E62:07B0 00 5E C9 CA 06 00 0F A8 56 26 8B 47 08 48 8E 2E .^......V&.G.H..
1E62:07C0 85 F2 8B 36 83 F2 8B C0 BA 10 00 F7 E2 03 F0 66 ...6...........f
1E62:07D0 65 8B 04 66 26 89 47 0A 65 8A 44 04 26 88 47 0E e..f&.G.e.D.&.G.
1E62:07E0 65 8A 44 05 26 88 47 0F 65 8B 44 06 26 89 47 10 e.D.&.G.e.D.&.G.
1E62:07F0 65 8B 44 08 26 89 47 12 65 8B 44 0A 26 89 47 14 e.D.&.G.e.D.&.G.
1E62:0800 65 8A 44 0D 26 88 47 16 26 C6 47 17 00 5E 0F A9 e.D.&.G.&.G..^..
1E62:0810 C3 C8 00 00 00 56 8B 46 08 3B 06 7E F2 72 05 B8 .....V.F.;.~.r..
1E62:0820 12 00 EB 61 BB 1C 00 F7 E3 8B 1E 7A F2 03 D8 8E ...a.......z....
1E62:0830 06 7C F2 26 80 7F 17 01 75 03 E8 79 FF 8B 4E 06 .|.&....u..y..N.
1E62:0840 26 8B 47 08 85 C0 74 39 26 80 7F 0E 00 74 32 26 &.G...t9&....t2&
1E62:0850 80 7F 16 01 74 13 26 3B 4F 10 72 17 FF 76 08 0E ....t.&;O.r..v..
1E62:0860 E8 58 FD 85 C0 75 1E EB 18 26 3B 4F 14 72 04 26 .X...u...&;O.r.&
1E62:0870 8B 4F 12 26 89 0F 26 C7 47 02 00 00 26 C6 47 1B .O.&..&.G...&.G.
1E62:0880 01 33 C0 EB 00 5E C9 CA 04 00 C8 00 00 00 8B 46 .3...^.........F
1E62:0890 0A 3B 06 7E F2 72 05 B8 12 00 EB 1C BB 1C 00 F7 .;.~.r..........
1E62:08A0 E3 8B 1E 7A F2 03 D8 8E 06 7C F2 26 8B 07 C4 5E ...z.....|.&...^
1E62:08B0 06 26 89 07 33 C0 EB 00 C9 CA 06 00 C8 00 00 00 .&..3...........
1E62:08C0 8B 46 08 3B 06 7E F2 72 05 B8 12 00 EB 1A BB 1C .F.;.~.r........
1E62:08D0 00 F7 E3 8B 1E 7A F2 03 D8 8E 06 7C F2 8B 46 06 .....z.....|..F.
1E62:08E0 26 88 47 18 33 C0 EB 00 C9 CA 04 00 C8 00 00 00 &.G.3...........
1E62:08F0 8B 46 0A 3B 06 7E F2 72 05 B8 12 00 EB 25 BB 1C .F.;.~.r.....%..
1E62:0900 00 F7 E3 8B 1E 7A F2 03 D8 8E 06 7C F2 26 0F BE .....z.....|.&..
1E62:0910 47 18 3C 80 75 03 B8 80 00 C4 5E 06 26 89 07 33 G.<.u.....^.&..3
1E62:0920 C0 EB 00 C9 CA 06 00 C8 00 00 00 8B 46 08 3B 06 ............F.;.
1E62:0930 7E F2 72 05 B8 12 00 EB 1A BB 1C 00 F7 E3 8B 1E ~.r.............
1E62:0940 7A F2 03 D8 8E 06 7C F2 8B 46 06 26 88 47 1A 33 z.....|..F.&.G.3
1E62:0950 C0 EB 00 C9 CA 04 00 C8 02 00 00 56 C4 36 83 F2 ...........V.6..
1E62:0960 33 DB B9 00 01 26 80 7C 0E 00 74 0C 83 C6 10 43 3....&.|..t....C
1E62:0970 E2 F3 B8 0C 00 E9 FE 00 89 5E FE 26 C6 44 0E 01 .........^.&.D..
1E62:0980 83 7E 16 00 0F 84 90 00 83 7E 14 00 0F 84 88 00 .~.......~......
1E62:0990 83 7E 0A 00 0F 84 94 00 26 C6 44 0F 01 83 3E E8 .~......&.D...>.
1E62:09A0 F2 00 74 47 8D 04 06 FF 76 14 06 50 9A D4 00 98 ..tG....v..P....
1E62:09B0 20 07 85 C0 0F 85 BE 00 06 66 26 FF 34 68 FB 28  ........f&.4h.(
1E62:09C0 68 8F F2 9A 91 03 98 20 07 85 C0 0F 85 A7 00 1E h...... ........
1E62:09D0 06 56 57 C4 3E 8F F2 C5 76 18 8B 4E 14 FC F3 A4 .VW.>...v..N....
1E62:09E0 5F 5E 07 1F 26 C6 44 05 02 EB 53 8D 04 06 FF 76 _^..&.D...S....v
1E62:09F0 14 06 50 9A 00 00 A1 21 07 85 C0 75 79 56 57 1E ..P....!...uyVW.
1E62:0A00 06 26 C4 3C C5 76 18 8B 4E 14 FC F3 A4 07 1F 5F .&.<.v..N......_
1E62:0A10 5E 26 C6 44 05 01 EB 26 66 26 C7 04 00 00 00 00 ^&.D...&f&......
1E62:0A20 26 C6 44 04 00 26 C6 44 05 00 EB 19 66 8B 46 18 &.D..&.D....f.F.
1E62:0A30 66 26 89 04 26 C6 44 05 01 26 C6 44 0F 00 8B 46 f&..&.D..&.D...F
1E62:0A40 16 26 88 44 04 8B 46 14 26 89 44 06 8B 46 12 26 .&.D..F.&.D..F.&
1E62:0A50 89 44 08 8B 46 10 26 89 44 0A 8A 46 0E 26 88 44 .D..F.&.D..F.&.D
1E62:0A60 0C 8B 46 0C 26 88 44 0D 8B 46 FE 40 C4 5E 06 26 ..F.&.D..F.@.^.&
1E62:0A70 89 07 33 C0 EB 00 5E C9 CA 16 00 C8 00 00 00 8B ..3...^.........
1E62:0A80 46 06 85 C0 75 0A 3D 00 01 76 05 B8 13 00 EB 60 F...u.=..v.....`
1E62:0A90 48 8E 06 85 F2 8B 1E 83 F2 8B C0 BA 10 00 F7 E2 H...............
1E62:0AA0 03 D8 26 80 7F 0E 01 74 05 B8 13 00 EB 42 26 80 ..&....t.....B&.
1E62:0AB0 7F 0F 00 74 32 26 80 7F 05 01 74 1A 26 80 7F 05 ...t2&....t.&...
1E62:0AC0 00 74 24 06 53 66 26 FF 37 9A 7E 02 98 20 5B 07 .t$.Sf&.7.~.. [.
1E62:0AD0 85 C0 75 1C EB 11 06 53 66 26 FF 37 9A A7 00 A1 ..u....Sf&.7....
1E62:0AE0 21 5B 07 85 C0 75 09 26 C6 47 0E 00 33 C0 EB 00 ![...u.&.G..3...
1E62:0AF0 C9 CA 02 00 C8 00 00 00 B8 64 00 F7 26 6A F2 F7 .........d..&j..
1E62:0B00 76 06 40 25 FE FF F7 06 6C F2 08 00 74 02 D1 E0 v.@%....l...t...
1E62:0B10 F7 06 6C F2 02 00 74 02 D1 E0 A3 87 F2 A3 89 F2 ..l...t.........
1E62:0B20 33 C0 C9 CA 02 00 C8 00 00 00 8B 46 06 A3 BF F2 3..........F....
1E62:0B30 33 C0 C9 CA 02 00 C8 02 00 00 56 57 FC 83 3E 95 3.........VW..>.
1E62:0B40 F2 01 0F 84 CF 00 A1 BF F2 8B 1E 8B F2 3B D8 73 .............;.s
1E62:0B50 06 8B C8 2B CB EB 08 8B 0E BB F2 2B CB 03 C8 83 ...+.......+....
1E62:0B60 E9 10 83 F9 10 0F 8C AC 00 3B 0E 89 F2 76 04 8B .........;...v..
1E62:0B70 0E 89 F2 F7 06 6C F2 08 00 74 05 83 E1 FC EB 03 .....l...t......
1E62:0B80 83 E1 FE 89 4E FE 0B C9 74 6E A1 8B F2 A3 97 F2 ....N...tn......
1E62:0B90 89 0E 99 F2 F7 06 6C F2 04 00 75 02 EB 2E F7 06 ......l...u.....
1E62:0BA0 6C F2 02 00 74 13 FF 76 FE 68 6B 1F 68 C2 22 0E l...t..v.hk.h.".
1E62:0BB0 E8 74 00 85 C0 75 6A EB 3F FF 76 FE 68 C4 11 68 .t...uj.?.v.h..h
1E62:0BC0 ED 20 0E E8 61 00 85 C0 75 57 EB 2C F7 06 6C F2 . ..a...uW.,..l.
1E62:0BD0 02 00 74 13 FF 76 FE 68 6B 1F 68 10 23 0E E8 46 ..t..v.hk.h.#..F
1E62:0BE0 00 85 C0 75 3C EB 11 FF 76 FE 68 C4 11 68 C8 22 ...u<...v.h..h."
1E62:0BF0 0E E8 33 00 85 C0 75 29 8B 46 FE 29 06 89 F2 74 ..3...u).F.)...t
1E62:0C00 02 EB 12 A1 87 F2 A3 89 F2 C4 5E 06 26 C7 07 01 ..........^.&...
1E62:0C10 00 33 C0 EB 0C C4 5E 06 26 C7 07 00 00 33 C0 EB .3....^.&....3..
1E62:0C20 00 5F 5E C9 CA 04 00 C8 18 00 00 56 57 8B 46 08 ._^........VW.F.
1E62:0C30 A3 A5 F2 8B 46 0A 89 46 F4 8B 46 F4 33 D2 F7 36 ....F..F..F.3..6
1E62:0C40 9D F2 F7 26 9B F2 3B 06 78 F2 72 03 A1 78 F2 F7 ...&..;.x.r..x..
1E62:0C50 36 9B F2 89 46 FA C7 06 AB F2 00 00 8B 46 FA 89 6...F........F..
1E62:0C60 46 E8 8B 3E 74 F2 83 3E 80 F2 01 0F 85 CE 02 83 F..>t..>........
1E62:0C70 3E 7E F2 00 0F 84 C5 02 A1 AB F2 3B 06 7E F2 72 >~.........;.~.r
1E62:0C80 06 B8 12 00 E9 1B 03 BB 1C 00 F7 E3 8B 1E 7A F2 ..............z.
1E62:0C90 03 D8 8E 06 7C F2 26 80 7F 1B 00 0F 84 9E 02 26 ....|.&........&
1E62:0CA0 8A 47 18 88 46 FE 83 3E 93 F2 01 74 07 26 80 7F .G..F..>...t.&..
1E62:0CB0 1A 00 74 04 32 C0 EB 0C 26 0F B6 47 19 F6 26 82 ..t.2...&..G..&.
1E62:0CC0 F2 C1 E8 06 88 46 FC 26 8B 47 08 85 C0 0F 84 6C .....F.&.G.....l
1E62:0CD0 02 48 8E 2E 85 F2 8B 36 83 F2 8B C0 BA 10 00 F7 .H.....6........
1E62:0CE0 E2 03 F0 65 80 7C 0E 00 0F 84 51 02 26 80 7F 0E ...e.|....Q.&...
1E62:0CF0 01 0F 85 48 02 26 80 7F 0F 02 75 24 06 53 66 26 ...H.&....u$.Sf&
1E62:0D00 FF 77 0A 68 FB 28 68 8F F2 9A 91 03 98 20 5B 07 .w.h.(h...... [.
1E62:0D10 85 C0 0F 85 8C 02 66 A1 8F F2 66 89 46 F6 EB 0B ......f...f.F...
1E62:0D20 66 26 8B 47 0A 66 89 46 F6 EB 00 8E 6E F8 66 26 f&.G.f.F....n.f&
1E62:0D30 8B 47 04 66 33 D2 66 0F A4 C2 10 66 C1 E0 10 66 .G.f3.f....f...f
1E62:0D40 0F B7 36 6A F2 66 F7 F6 66 89 46 EA 26 80 7F 16 ..6j.f..f.F.&...
1E62:0D50 01 0F 84 B3 00 26 8B 17 66 C1 E2 10 26 8B 57 02 .....&..f...&.W.
1E62:0D60 26 8B 47 10 66 C1 E0 10 66 2B C2 66 33 D2 66 F7 &.G.f...f+.f3.f.
1E62:0D70 76 EA 66 0F B7 4E E8 66 3B C8 76 03 66 8B C8 80 v.f..N.f;.v.f...
1E62:0D80 7E FC 00 75 29 26 8B 37 66 C1 E6 10 26 8B 77 02 ~..u)&.7f...&.w.
1E62:0D90 66 8B 46 EA 66 F7 E9 66 03 F0 26 89 77 02 66 C1 f.F.f..f..&.w.f.
1E62:0DA0 EE 10 26 89 37 26 39 77 10 76 3D E9 8F 01 29 4E ..&.7&9w.v=...)N
1E62:0DB0 E8 85 C9 74 33 53 8B 76 F6 26 03 37 26 8B 47 02 ...t3S.v.&.7&.G.
1E62:0DC0 8A 7E FC 66 8B 56 EA 8A 5E FE 55 8B E8 FF 16 A5 .~.f.V..^.U.....
1E62:0DD0 F2 8B D5 5D 5B 26 89 57 02 2B 76 F6 26 89 37 26 ...][&.W.+v.&.7&
1E62:0DE0 3B 77 10 73 03 E9 55 01 83 3E E0 F2 01 74 08 26 ;w.s..U..>...t.&
1E62:0DF0 C6 47 1B 00 E9 46 01 26 80 7F 17 01 0F 84 17 01 .G...F.&........
1E62:0E00 26 C6 47 1B 00 E9 35 01 26 8B 17 66 C1 E2 10 26 &.G...5.&..f...&
1E62:0E10 8B 57 02 26 8B 47 14 66 C1 E0 10 66 2B C2 66 33 .W.&.G.f...f+.f3
1E62:0E20 D2 66 F7 76 EA 66 0B D2 74 02 66 40 80 7E FC 00 .f.v.f..t.f@.~..
1E62:0E30 75 79 66 8B D0 66 0F B7 4E E8 66 8B C1 66 3B C2 uyf..f..N.f..f;.
1E62:0E40 72 03 66 8B C2 66 2B C8 26 8B 37 66 C1 E6 10 26 r.f..f+.&.7f...&
1E62:0E50 8B 77 02 66 F7 6E EA 66 03 F0 26 89 77 02 66 C1 .w.f.n.f..&.w.f.
1E62:0E60 EE 10 26 89 37 26 39 77 14 0F 87 D0 00 26 8B 47 ..&.7&9w.....&.G
1E62:0E70 12 26 89 07 85 C9 0F 84 C3 00 66 33 C0 26 8B 47 .&........f3.&.G
1E62:0E80 14 26 2B 47 12 66 C1 E0 10 66 33 D2 66 F7 76 EA .&+G.f...f3.f.v.
1E62:0E90 66 85 D2 74 02 66 40 66 8B F0 66 8B C1 66 33 D2 f..t.f@f..f..f3.
1E62:0EA0 66 F7 FE 66 8B CA 66 8B D6 EB 8F 66 0F B7 4E E8 f..f..f....f..N.
1E62:0EB0 66 3B C8 76 03 66 8B C8 29 4E E8 0B C9 0F 84 27 f;.v.f..)N.....'
1E62:0EC0 FF 53 8B 76 F6 26 03 37 26 8B 47 02 8A 7E FC 66 .S.v.&.7&.G..~.f
1E62:0ED0 8B 56 EA 8A 5E FE 55 8B E8 FF 16 A5 F2 8B D5 5D .V..^.U........]
1E62:0EE0 5B 26 89 57 02 2B 76 F6 26 89 37 26 3B 77 14 72 [&.W.+v.&.7&;w.r
1E62:0EF0 1D 83 3E E0 F2 01 74 0D 26 8B 47 14 26 2B 47 12 ..>...t.&.G.&+G.
1E62:0F00 26 29 07 EB 09 26 80 7F 17 01 74 0B EB EA 83 7E &)...&....t....~
1E62:0F10 E8 00 74 29 E9 F1 FE E8 9C F8 26 80 7F 16 01 74 ..t)......&....t
1E62:0F20 07 26 C6 47 1B 00 EB 15 26 8B 47 12 26 89 07 26 .&.G....&.G.&..&
1E62:0F30 C7 47 02 00 00 83 7E E8 00 0F 85 3B FD 83 3E AB .G....~....;..>.
1E62:0F40 F2 00 75 32 83 7E E8 00 74 2C 06 8E 06 76 F2 8B ..u2.~..t,...v..
1E62:0F50 46 E8 F7 26 9B F2 8B C8 66 33 C0 F7 C7 02 00 74 F..&....f3.....t
1E62:0F60 06 26 89 05 83 C7 02 83 C1 03 C1 E9 02 F3 66 AB .&............f.
1E62:0F70 C7 46 E8 00 00 07 A1 AB F2 40 3B 06 7E F2 73 06 .F.......@;.~.s.
1E62:0F80 A3 AB F2 E9 D6 FC 8B 4E FA FF 56 06 85 C0 75 12 .......N..V...u.
1E62:0F90 8B 46 FA F7 26 9D F2 29 46 F4 0F 85 9B FC 33 C0 .F..&..)F.....3.
1E62:0FA0 EB 00 5F 5E C9 CA 06 00 CA 0F D7 0F E5 0F F3 0F .._^............
1E62:0FB0 01 10 0F 10 1D 10 2B 10 39 10 47 10 55 10 63 10 ......+.9.G.U.c.
1E62:0FC0 71 10 7F 10 8D 10 9B 10 A9 10 65 8A 1C 03 E9 67 q.........e....g
1E62:0FD0 8B 04 1B 13 F2 01 05 65 8A 1C 03 E9 67 8B 04 1B .......e....g...
1E62:0FE0 13 F2 01 45 02 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E.e....g.....
1E62:0FF0 01 45 04 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 .E.e....g......E
1E62:1000 06 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 08 65 .e....g......E.e
1E62:1010 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 0A 65 8A 1C ....g......E.e..
1E62:1020 03 E9 67 8B 04 1B 13 F2 01 45 0C 65 8A 1C 03 E9 ..g......E.e....
1E62:1030 67 8B 04 1B 13 F2 01 45 0E 65 8A 1C 03 E9 67 8B g......E.e....g.
1E62:1040 04 1B 13 F2 01 45 10 65 8A 1C 03 E9 67 8B 04 1B .....E.e....g...
1E62:1050 13 F2 01 45 12 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E.e....g.....
1E62:1060 01 45 14 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 .E.e....g......E
1E62:1070 16 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 18 65 .e....g......E.e
1E62:1080 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 1A 65 8A 1C ....g......E.e..
1E62:1090 03 E9 67 8B 04 1B 13 F2 01 45 1C 65 8A 1C 03 E9 ..g......E.e....
1E62:10A0 67 8B 04 1B 13 F2 01 45 1E 83 C7 20 64 FF 0E A3 g......E... d...
1E62:10B0 F2 0F 85 15 FF C3 D8 10 E5 10 F3 10 01 11 0F 11 ................
1E62:10C0 1D 11 2B 11 39 11 47 11 55 11 63 11 71 11 7F 11 ..+.9.G.U.c.q...
1E62:10D0 8D 11 9B 11 A9 11 B7 11 65 8A 1C 03 E9 67 8B 04 ........e....g..
1E62:10E0 1B 13 F2 89 05 65 8A 1C 03 E9 67 8B 04 1B 13 F2 .....e....g.....
1E62:10F0 89 45 02 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 .E.e....g......E
1E62:1100 04 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 06 65 .e....g......E.e
1E62:1110 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 08 65 8A 1C ....g......E.e..
1E62:1120 03 E9 67 8B 04 1B 13 F2 89 45 0A 65 8A 1C 03 E9 ..g......E.e....
1E62:1130 67 8B 04 1B 13 F2 89 45 0C 65 8A 1C 03 E9 67 8B g......E.e....g.
1E62:1140 04 1B 13 F2 89 45 0E 65 8A 1C 03 E9 67 8B 04 1B .....E.e....g...
1E62:1150 13 F2 89 45 10 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E.e....g.....
1E62:1160 89 45 12 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 .E.e....g......E
1E62:1170 14 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 16 65 .e....g......E.e
1E62:1180 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 18 65 8A 1C ....g......E.e..
1E62:1190 03 E9 67 8B 04 1B 13 F2 89 45 1A 65 8A 1C 03 E9 ..g......E.e....
1E62:11A0 67 8B 04 1B 13 F2 89 45 1C 65 8A 1C 03 E9 67 8B g......E.e....g.
1E62:11B0 04 1B 13 F2 89 45 1E 83 C7 20 64 FF 0E A3 F2 0F .....E... d.....
1E62:11C0 85 15 FF C3 85 C9 74 55 83 3E AB F2 00 75 08 C7 ......tU.>...u..
1E62:11D0 06 A9 F2 B6 10 EB 06 C7 06 A9 F2 A8 0F 80 C7 01 ................
1E62:11E0 D0 EF 8A C7 66 33 DB 8A F8 8C D8 8E E0 1E 8E 1E ....f3..........
1E62:11F0 72 F2 55 8B C1 25 0F 00 D1 E0 BD 20 00 2B E8 2B r.U..%..... .+.+
1E62:1200 FD 64 03 2E A9 F2 2E 8B 46 00 5D C1 E9 04 41 64 .d......F.]...Ad
1E62:1210 89 0E A3 F2 8B CA 66 C1 EA 10 FF D0 1F C3 40 12 ......f.......@.
1E62:1220 50 12 61 12 72 12 83 12 94 12 A5 12 B6 12 C7 12 P.a.r...........
1E62:1230 D8 12 E9 12 FA 12 0B 13 1C 13 2D 13 3E 13 4F 13 ..........-.>.O.
1E62:1240 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 05 01 45 02 e....g........E.
1E62:1250 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 04 01 45 e....g......E..E
1E62:1260 06 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 08 01 .e....g......E..
1E62:1270 45 0A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 0C E.e....g......E.
1E62:1280 01 45 0E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 .E.e....g......E
1E62:1290 10 01 45 12 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 ..E.e....g......
1E62:12A0 45 14 01 45 16 65 8A 1C 03 E9 67 8B 04 1B 13 F2 E..E.e....g.....
1E62:12B0 01 45 18 01 45 1A 65 8A 1C 03 E9 67 8B 04 1B 13 .E..E.e....g....
1E62:12C0 F2 01 45 1C 01 45 1E 65 8A 1C 03 E9 67 8B 04 1B ..E..E.e....g...
1E62:12D0 13 F2 01 45 20 01 45 22 65 8A 1C 03 E9 67 8B 04 ...E .E"e....g..
1E62:12E0 1B 13 F2 01 45 24 01 45 26 65 8A 1C 03 E9 67 8B ....E$.E&e....g.
1E62:12F0 04 1B 13 F2 01 45 28 01 45 2A 65 8A 1C 03 E9 67 .....E(.E*e....g
1E62:1300 8B 04 1B 13 F2 01 45 2C 01 45 2E 65 8A 1C 03 E9 ......E,.E.e....
1E62:1310 67 8B 04 1B 13 F2 01 45 30 01 45 32 65 8A 1C 03 g......E0.E2e...
1E62:1320 E9 67 8B 04 1B 13 F2 01 45 34 01 45 36 65 8A 1C .g......E4.E6e..
1E62:1330 03 E9 67 8B 04 1B 13 F2 01 45 38 01 45 3A 65 8A ..g......E8.E:e.
1E62:1340 1C 03 E9 67 8B 04 1B 13 F2 01 45 3C 01 45 3E 83 ...g......E<.E>.
1E62:1350 C7 40 64 FF 0E A3 F2 0F 85 E5 FE C3 7E 13 8E 13 .@d.........~...
1E62:1360 9F 13 B0 13 C1 13 D2 13 E3 13 F4 13 05 14 16 14 ................
1E62:1370 27 14 38 14 49 14 5A 14 6B 14 7C 14 8D 14 65 8A '.8.I.Z.k.|...e.
1E62:1380 1C 03 E9 67 8B 04 1B 13 F2 89 05 89 45 02 65 8A ...g........E.e.
1E62:1390 1C 03 E9 67 8B 04 1B 13 F2 89 45 04 89 45 06 65 ...g......E..E.e
1E62:13A0 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 08 89 45 0A ....g......E..E.
1E62:13B0 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 0C 89 45 e....g......E..E
1E62:13C0 0E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 10 89 .e....g......E..
1E62:13D0 45 12 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 14 E.e....g......E.
1E62:13E0 89 45 16 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 .E.e....g......E
1E62:13F0 18 89 45 1A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 ..E.e....g......
1E62:1400 45 1C 89 45 1E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 E..E.e....g.....
1E62:1410 89 45 20 89 45 22 65 8A 1C 03 E9 67 8B 04 1B 13 .E .E"e....g....
1E62:1420 F2 89 45 24 89 45 26 65 8A 1C 03 E9 67 8B 04 1B ..E$.E&e....g...
1E62:1430 13 F2 89 45 28 89 45 2A 65 8A 1C 03 E9 67 8B 04 ...E(.E*e....g..
1E62:1440 1B 13 F2 89 45 2C 89 45 2E 65 8A 1C 03 E9 67 8B ....E,.E.e....g.
1E62:1450 04 1B 13 F2 89 45 30 89 45 32 65 8A 1C 03 E9 67 .....E0.E2e....g
1E62:1460 8B 04 1B 13 F2 89 45 34 89 45 36 65 8A 1C 03 E9 ......E4.E6e....
1E62:1470 67 8B 04 1B 13 F2 89 45 38 89 45 3A 65 8A 1C 03 g......E8.E:e...
1E62:1480 E9 67 8B 04 1B 13 F2 89 45 3C 89 45 3E 83 C7 40 .g......E<.E>..@
1E62:1490 64 FF 0E A3 F2 0F 85 E5 FE C3 BC 14 CC 14 DD 14 d...............
1E62:14A0 EE 14 FF 14 10 15 21 15 32 15 43 15 54 15 65 15 ......!.2.C.T.e.
1E62:14B0 76 15 87 15 98 15 A9 15 BA 15 CB 15 65 8A 1C 03 v...........e...
1E62:14C0 E9 67 8B 04 1B 13 F2 01 05 29 45 02 65 8A 1C 03 .g.......)E.e...
1E62:14D0 E9 67 8B 04 1B 13 F2 01 45 04 29 45 06 65 8A 1C .g......E.)E.e..
1E62:14E0 03 E9 67 8B 04 1B 13 F2 01 45 08 29 45 0A 65 8A ..g......E.)E.e.
1E62:14F0 1C 03 E9 67 8B 04 1B 13 F2 01 45 0C 29 45 0E 65 ...g......E.)E.e
1E62:1500 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 10 29 45 12 ....g......E.)E.
1E62:1510 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 14 29 45 e....g......E.)E
1E62:1520 16 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 18 29 .e....g......E.)
1E62:1530 45 1A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 1C E.e....g......E.
1E62:1540 29 45 1E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 )E.e....g......E
1E62:1550 20 29 45 22 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01  )E"e....g......
1E62:1560 45 24 29 45 26 65 8A 1C 03 E9 67 8B 04 1B 13 F2 E$)E&e....g.....
1E62:1570 01 45 28 29 45 2A 65 8A 1C 03 E9 67 8B 04 1B 13 .E()E*e....g....
1E62:1580 F2 01 45 2C 29 45 2E 65 8A 1C 03 E9 67 8B 04 1B ..E,)E.e....g...
1E62:1590 13 F2 01 45 30 29 45 32 65 8A 1C 03 E9 67 8B 04 ...E0)E2e....g..
1E62:15A0 1B 13 F2 01 45 34 29 45 36 65 8A 1C 03 E9 67 8B ....E4)E6e....g.
1E62:15B0 04 1B 13 F2 01 45 38 29 45 3A 65 8A 1C 03 E9 67 .....E8)E:e....g
1E62:15C0 8B 04 1B 13 F2 01 45 3C 29 45 3E 83 C7 40 64 FF ......E<)E>..@d.
1E62:15D0 0E A3 F2 0F 85 E5 FE C3 FA 15 0C 16 1F 16 32 16 ..............2.
1E62:15E0 45 16 58 16 6B 16 7E 16 91 16 A4 16 B7 16 CA 16 E.X.k.~.........
1E62:15F0 DD 16 F0 16 03 17 16 17 29 17 65 8A 1C 03 E9 67 ........).e....g
1E62:1600 8B 04 1B 13 F2 89 05 F7 D8 89 45 02 65 8A 1C 03 ..........E.e...
1E62:1610 E9 67 8B 04 1B 13 F2 89 45 04 F7 D8 89 45 06 65 .g......E....E.e
1E62:1620 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 08 F7 D8 89 ....g......E....
1E62:1630 45 0A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 0C E.e....g......E.
1E62:1640 F7 D8 89 45 0E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E.e....g.....
1E62:1650 89 45 10 F7 D8 89 45 12 65 8A 1C 03 E9 67 8B 04 .E....E.e....g..
1E62:1660 1B 13 F2 89 45 14 F7 D8 89 45 16 65 8A 1C 03 E9 ....E....E.e....
1E62:1670 67 8B 04 1B 13 F2 89 45 18 F7 D8 89 45 1A 65 8A g......E....E.e.
1E62:1680 1C 03 E9 67 8B 04 1B 13 F2 89 45 1C F7 D8 89 45 ...g......E....E
1E62:1690 1E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 20 F7 .e....g......E .
1E62:16A0 D8 89 45 22 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 ..E"e....g......
1E62:16B0 45 24 F7 D8 89 45 26 65 8A 1C 03 E9 67 8B 04 1B E$...E&e....g...
1E62:16C0 13 F2 89 45 28 F7 D8 89 45 2A 65 8A 1C 03 E9 67 ...E(...E*e....g
1E62:16D0 8B 04 1B 13 F2 89 45 2C F7 D8 89 45 2E 65 8A 1C ......E,...E.e..
1E62:16E0 03 E9 67 8B 04 1B 13 F2 89 45 30 F7 D8 89 45 32 ..g......E0...E2
1E62:16F0 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 34 F7 D8 e....g......E4..
1E62:1700 89 45 36 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 .E6e....g......E
1E62:1710 38 F7 D8 89 45 3A 65 8A 1C 03 E9 67 8B 04 1B 13 8...E:e....g....
1E62:1720 F2 89 45 3C F7 D8 89 45 3E 83 C7 40 64 FF 0E A3 ..E<...E>..@d...
1E62:1730 F2 0F 85 C5 FE C3 58 17 65 17 73 17 81 17 8F 17 ......X.e.s.....
1E62:1740 9D 17 AB 17 B9 17 C7 17 D5 17 E3 17 F1 17 FF 17 ................
1E62:1750 0D 18 1B 18 29 18 37 18 65 8A 1C 03 E9 67 8B 04 ....).7.e....g..
1E62:1760 1B 13 F2 01 05 65 8A 1C 03 E9 67 8B 04 1B 13 F2 .....e....g.....
1E62:1770 01 45 04 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 .E.e....g......E
1E62:1780 08 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 0C 65 .e....g......E.e
1E62:1790 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 10 65 8A 1C ....g......E.e..
1E62:17A0 03 E9 67 8B 04 1B 13 F2 01 45 14 65 8A 1C 03 E9 ..g......E.e....
1E62:17B0 67 8B 04 1B 13 F2 01 45 18 65 8A 1C 03 E9 67 8B g......E.e....g.
1E62:17C0 04 1B 13 F2 01 45 1C 65 8A 1C 03 E9 67 8B 04 1B .....E.e....g...
1E62:17D0 13 F2 01 45 20 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E e....g.....
1E62:17E0 01 45 24 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 .E$e....g......E
1E62:17F0 28 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 2C 65 (e....g......E,e
1E62:1800 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 30 65 8A 1C ....g......E0e..
1E62:1810 03 E9 67 8B 04 1B 13 F2 01 45 34 65 8A 1C 03 E9 ..g......E4e....
1E62:1820 67 8B 04 1B 13 F2 01 45 38 65 8A 1C 03 E9 67 8B g......E8e....g.
1E62:1830 04 1B 13 F2 01 45 3C 83 C7 40 64 FF 0E A3 F2 0F .....E<..@d.....
1E62:1840 85 15 FF C3 66 18 78 18 8B 18 9E 18 B1 18 C4 18 ....f.x.........
1E62:1850 D7 18 EA 18 FD 18 10 19 23 19 36 19 49 19 5C 19 ........#.6.I.\.
1E62:1860 6F 19 82 19 95 19 65 8A 1C 03 E9 67 8B 04 1B 13 o.....e....g....
1E62:1870 F2 89 05 C7 45 02 00 00 65 8A 1C 03 E9 67 8B 04 ....E...e....g..
1E62:1880 1B 13 F2 89 45 04 C7 45 06 00 00 65 8A 1C 03 E9 ....E..E...e....
1E62:1890 67 8B 04 1B 13 F2 89 45 08 C7 45 0A 00 00 65 8A g......E..E...e.
1E62:18A0 1C 03 E9 67 8B 04 1B 13 F2 89 45 0C C7 45 0E 00 ...g......E..E..
1E62:18B0 00 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 10 C7 .e....g......E..
1E62:18C0 45 12 00 00 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 E...e....g......
1E62:18D0 45 14 C7 45 16 00 00 65 8A 1C 03 E9 67 8B 04 1B E..E...e....g...
1E62:18E0 13 F2 89 45 18 C7 45 1A 00 00 65 8A 1C 03 E9 67 ...E..E...e....g
1E62:18F0 8B 04 1B 13 F2 89 45 1C C7 45 1E 00 00 65 8A 1C ......E..E...e..
1E62:1900 03 E9 67 8B 04 1B 13 F2 89 45 20 C7 45 22 00 00 ..g......E .E"..
1E62:1910 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 24 C7 45 e....g......E$.E
1E62:1920 26 00 00 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 &..e....g......E
1E62:1930 28 C7 45 2A 00 00 65 8A 1C 03 E9 67 8B 04 1B 13 (.E*..e....g....
1E62:1940 F2 89 45 2C C7 45 2E 00 00 65 8A 1C 03 E9 67 8B ..E,.E...e....g.
1E62:1950 04 1B 13 F2 89 45 30 C7 45 32 00 00 65 8A 1C 03 .....E0.E2..e...
1E62:1960 E9 67 8B 04 1B 13 F2 89 45 34 C7 45 36 00 00 65 .g......E4.E6..e
1E62:1970 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 38 C7 45 3A ....g......E8.E:
1E62:1980 00 00 65 8A 1C 03 E9 67 8B 04 1B 13 F2 89 45 3C ..e....g......E<
1E62:1990 C7 45 3E 00 00 83 C7 40 64 FF 0E A3 F2 0F 85 C5 .E>....@d.......
1E62:19A0 FE C3 C4 19 D2 19 E0 19 EE 19 FC 19 0A 1A 18 1A ................
1E62:19B0 26 1A 34 1A 42 1A 50 1A 5E 1A 6C 1A 7A 1A 88 1A &.4.B.P.^.l.z...
1E62:19C0 96 1A A4 1A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 ....e....g......
1E62:19D0 45 02 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 06 E.e....g......E.
1E62:19E0 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 0A 65 8A e....g......E.e.
1E62:19F0 1C 03 E9 67 8B 04 1B 13 F2 01 45 0E 65 8A 1C 03 ...g......E.e...
1E62:1A00 E9 67 8B 04 1B 13 F2 01 45 12 65 8A 1C 03 E9 67 .g......E.e....g
1E62:1A10 8B 04 1B 13 F2 01 45 16 65 8A 1C 03 E9 67 8B 04 ......E.e....g..
1E62:1A20 1B 13 F2 01 45 1A 65 8A 1C 03 E9 67 8B 04 1B 13 ....E.e....g....
1E62:1A30 F2 01 45 1E 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 ..E.e....g......
1E62:1A40 45 22 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 26 E"e....g......E&
1E62:1A50 65 8A 1C 03 E9 67 8B 04 1B 13 F2 01 45 2A 65 8A e....g......E*e.
1E62:1A60 1C 03 E9 67 8B 04 1B 13 F2 01 45 2E 65 8A 1C 03 ...g......E.e...
1E62:1A70 E9 67 8B 04 1B 13 F2 01 45 32 65 8A 1C 03 E9 67 .g......E2e....g
1E62:1A80 8B 04 1B 13 F2 01 45 36 65 8A 1C 03 E9 67 8B 04 ......E6e....g..
1E62:1A90 1B 13 F2 01 45 3A 65 8A 1C 03 E9 67 8B 04 1B 13 ....E:e....g....
1E62:1AA0 F2 01 45 3E 83 C7 40 64 FF 0E A3 F2 0F 85 14 FF ..E>..@d........
1E62:1AB0 C3 D3 1A E5 1A F8 1A 0B 1B 1E 1B 31 1B 44 1B 57 ...........1.D.W
1E62:1AC0 1B 6A 1B 7D 1B 90 1B A3 1B B6 1B C9 1B DC 1B EF .j.}............
1E62:1AD0 1B 02 1C 65 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 05 ...e....g.......
1E62:1AE0 00 00 89 45 02 65 8A 1C 03 E9 67 8B 04 1B 13 F2 ...E.e....g.....
1E62:1AF0 C7 45 04 00 00 89 45 06 65 8A 1C 03 E9 67 8B 04 .E....E.e....g..
1E62:1B00 1B 13 F2 C7 45 08 00 00 89 45 0A 65 8A 1C 03 E9 ....E....E.e....
1E62:1B10 67 8B 04 1B 13 F2 C7 45 0C 00 00 89 45 0E 65 8A g......E....E.e.
1E62:1B20 1C 03 E9 67 8B 04 1B 13 F2 C7 45 10 00 00 89 45 ...g......E....E
1E62:1B30 12 65 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 45 14 00 .e....g......E..
1E62:1B40 00 89 45 16 65 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 ..E.e....g......
1E62:1B50 45 18 00 00 89 45 1A 65 8A 1C 03 E9 67 8B 04 1B E....E.e....g...
1E62:1B60 13 F2 C7 45 1C 00 00 89 45 1E 65 8A 1C 03 E9 67 ...E....E.e....g
1E62:1B70 8B 04 1B 13 F2 C7 45 20 00 00 89 45 22 65 8A 1C ......E ...E"e..
1E62:1B80 03 E9 67 8B 04 1B 13 F2 C7 45 24 00 00 89 45 26 ..g......E$...E&
1E62:1B90 65 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 45 28 00 00 e....g......E(..
1E62:1BA0 89 45 2A 65 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 45 .E*e....g......E
1E62:1BB0 2C 00 00 89 45 2E 65 8A 1C 03 E9 67 8B 04 1B 13 ,...E.e....g....
1E62:1BC0 F2 C7 45 30 00 00 89 45 32 65 8A 1C 03 E9 67 8B ..E0...E2e....g.
1E62:1BD0 04 1B 13 F2 C7 45 34 00 00 89 45 36 65 8A 1C 03 .....E4...E6e...
1E62:1BE0 E9 67 8B 04 1B 13 F2 C7 45 38 00 00 89 45 3A 65 .g......E8...E:e
1E62:1BF0 8A 1C 03 E9 67 8B 04 1B 13 F2 C7 45 3C 00 00 89 ....g......E<...
1E62:1C00 45 3E 83 C7 40 64 FF 0E A3 F2 0F 85 C5 FE C3 31 E>..@d.........1
1E62:1C10 1C 48 1C 60 1C 78 1C 90 1C A8 1C C0 1C D8 1C F0 .H.`.x..........
1E62:1C20 1C 08 1D 20 1D 38 1D 50 1D 68 1D 80 1D 98 1D B0 ... .8.P.h......
1E62:1C30 1D 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 05 8A .f..e....g......
1E62:1C40 CB 67 8B 04 09 01 45 02 66 03 C5 65 8A 1C 13 F2 .g....E.f..e....
1E62:1C50 67 8B 04 1B 01 45 04 8A CB 67 8B 04 09 01 45 06 g....E...g....E.
1E62:1C60 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 08 8A f..e....g....E..
1E62:1C70 CB 67 8B 04 09 01 45 0A 66 03 C5 65 8A 1C 13 F2 .g....E.f..e....
1E62:1C80 67 8B 04 1B 01 45 0C 8A CB 67 8B 04 09 01 45 0E g....E...g....E.
1E62:1C90 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 10 8A f..e....g....E..
1E62:1CA0 CB 67 8B 04 09 01 45 12 66 03 C5 65 8A 1C 13 F2 .g....E.f..e....
1E62:1CB0 67 8B 04 1B 01 45 14 8A CB 67 8B 04 09 01 45 16 g....E...g....E.
1E62:1CC0 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 18 8A f..e....g....E..
1E62:1CD0 CB 67 8B 04 09 01 45 1A 66 03 C5 65 8A 1C 13 F2 .g....E.f..e....
1E62:1CE0 67 8B 04 1B 01 45 1C 8A CB 67 8B 04 09 01 45 1E g....E...g....E.
1E62:1CF0 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 20 8A f..e....g....E .
1E62:1D00 CB 67 8B 04 09 01 45 22 66 03 C5 65 8A 1C 13 F2 .g....E"f..e....
1E62:1D10 67 8B 04 1B 01 45 24 8A CB 67 8B 04 09 01 45 26 g....E$..g....E&
1E62:1D20 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 28 8A f..e....g....E(.
1E62:1D30 CB 67 8B 04 09 01 45 2A 66 03 C5 65 8A 1C 13 F2 .g....E*f..e....
1E62:1D40 67 8B 04 1B 01 45 2C 8A CB 67 8B 04 09 01 45 2E g....E,..g....E.
1E62:1D50 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 30 8A f..e....g....E0.
1E62:1D60 CB 67 8B 04 09 01 45 32 66 03 C5 65 8A 1C 13 F2 .g....E2f..e....
1E62:1D70 67 8B 04 1B 01 45 34 8A CB 67 8B 04 09 01 45 36 g....E4..g....E6
1E62:1D80 66 03 C5 65 8A 1C 13 F2 67 8B 04 1B 01 45 38 8A f..e....g....E8.
1E62:1D90 CB 67 8B 04 09 01 45 3A 66 03 C5 65 8A 1C 13 F2 .g....E:f..e....
1E62:1DA0 67 8B 04 1B 01 45 3C 8A CB 67 8B 04 09 01 45 3E g....E<..g....E>
1E62:1DB0 83 C7 40 64 FF 0E A3 F2 0F 85 75 FE C3 DF 1D F6 ..@d......u.....
1E62:1DC0 1D 0E 1E 26 1E 3E 1E 56 1E 6E 1E 86 1E 9E 1E B6 ...&.>.V.n......
1E62:1DD0 1E CE 1E E6 1E FE 1E 16 1F 2E 1F 46 1F 5E 1F 66 ...........F.^.f
1E62:1DE0 03 C5 65 8A 1C 13 F2 67 8B 04 1B 89 05 8A CB 67 ..e....g.......g
1E62:1DF0 8B 04 09 89 45 02 66 03 C5 65 8A 1C 13 F2 67 8B ....E.f..e....g.
1E62:1E00 04 1B 89 45 04 8A CB 67 8B 04 09 89 45 06 66 03 ...E...g....E.f.
1E62:1E10 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 08 8A CB 67 .e....g....E...g
1E62:1E20 8B 04 09 89 45 0A 66 03 C5 65 8A 1C 13 F2 67 8B ....E.f..e....g.
1E62:1E30 04 1B 89 45 0C 8A CB 67 8B 04 09 89 45 0E 66 03 ...E...g....E.f.
1E62:1E40 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 10 8A CB 67 .e....g....E...g
1E62:1E50 8B 04 09 89 45 12 66 03 C5 65 8A 1C 13 F2 67 8B ....E.f..e....g.
1E62:1E60 04 1B 89 45 14 8A CB 67 8B 04 09 89 45 16 66 03 ...E...g....E.f.
1E62:1E70 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 18 8A CB 67 .e....g....E...g
1E62:1E80 8B 04 09 89 45 1A 66 03 C5 65 8A 1C 13 F2 67 8B ....E.f..e....g.
1E62:1E90 04 1B 89 45 1C 8A CB 67 8B 04 09 89 45 1E 66 03 ...E...g....E.f.
1E62:1EA0 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 20 8A CB 67 .e....g....E ..g
1E62:1EB0 8B 04 09 89 45 22 66 03 C5 65 8A 1C 13 F2 67 8B ....E"f..e....g.
1E62:1EC0 04 1B 89 45 24 8A CB 67 8B 04 09 89 45 26 66 03 ...E$..g....E&f.
1E62:1ED0 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 28 8A CB 67 .e....g....E(..g
1E62:1EE0 8B 04 09 89 45 2A 66 03 C5 65 8A 1C 13 F2 67 8B ....E*f..e....g.
1E62:1EF0 04 1B 89 45 2C 8A CB 67 8B 04 09 89 45 2E 66 03 ...E,..g....E.f.
1E62:1F00 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 30 8A CB 67 .e....g....E0..g
1E62:1F10 8B 04 09 89 45 32 66 03 C5 65 8A 1C 13 F2 67 8B ....E2f..e....g.
1E62:1F20 04 1B 89 45 34 8A CB 67 8B 04 09 89 45 36 66 03 ...E4..g....E6f.
1E62:1F30 C5 65 8A 1C 13 F2 67 8B 04 1B 89 45 38 8A CB 67 .e....g....E8..g
1E62:1F40 8B 04 09 89 45 3A 66 03 C5 65 8A 1C 13 F2 67 8B ....E:f..e....g.
1E62:1F50 04 1B 89 45 3C 8A CB 67 8B 04 09 89 45 3E 83 C7 ...E<..g....E>..
1E62:1F60 40 64 FF 0E A3 F2 0F 85 75 FE C3 85 C9 0F 84 59 @d......u......Y
1E62:1F70 01 80 C7 01 D0 EF 8A C7 80 FB C0 74 35 80 FB 40 ...........t5..@
1E62:1F80 74 49 80 FB 00 74 5D 80 FB 80 74 71 84 DB 79 10 tI...t]...tq..y.
1E62:1F90 A2 A7 F2 80 C3 40 F6 E3 C1 E8 06 A2 A8 F2 EB 75 .....@.........u
1E62:1FA0 A2 A8 F2 F6 DB 80 C3 40 F6 E3 C1 E8 06 A2 A7 F2 .......@........
1E62:1FB0 EB 63 83 3E AB F2 00 75 09 C7 06 A9 F2 44 18 E9 .c.>...u.....D..
1E62:1FC0 CB 00 C7 06 A9 F2 36 17 E9 C2 00 83 3E AB F2 00 ......6.....>...
1E62:1FD0 75 09 C7 06 A9 F2 B1 1A E9 B2 00 C7 06 A9 F2 A2 u...............
1E62:1FE0 19 E9 A9 00 83 3E AB F2 00 75 09 C7 06 A9 F2 5C .....>...u.....\
1E62:1FF0 13 E9 99 00 C7 06 A9 F2 1E 12 E9 90 00 83 3E AB ..............>.
1E62:2000 F2 00 75 09 C7 06 A9 F2 D8 15 E9 80 00 C7 06 A9 ..u.............
1E62:2010 F2 9A 14 EB 78 83 3E AB F2 00 75 08 C7 06 A9 F2 ....x.>...u.....
1E62:2020 BD 1D EB 06 C7 06 A9 F2 0F 1C 8C D8 8E E0 1E 8E ................
1E62:2030 1E 72 F2 55 8B C1 25 0F 00 D1 E0 BD 20 00 2B E8 .r.U..%..... .+.
1E62:2040 55 64 03 2E A9 F2 2E 8B 46 00 64 A3 A9 F2 5D D1 Ud......F.d...].
1E62:2050 E5 2B FD 5D C1 E9 04 41 64 89 0E A3 F2 66 C1 E5 .+.]...Ad....f..
1E62:2060 10 66 8B C5 8B EA 66 C1 E5 10 66 C1 EA 10 66 33 .f....f...f...f3
1E62:2070 DB 64 8A 3E A7 F2 66 33 C9 64 8A 2E A8 F2 64 FF .d.>..f3.d....d.
1E62:2080 16 A9 F2 1F 66 8B E8 66 C1 ED 10 EB 3D 66 33 DB ....f..f....=f3.
1E62:2090 8A F8 8C D8 8E E0 1E 8E 1E 72 F2 55 8B C1 25 0F .........r.U..%.
1E62:20A0 00 D1 E0 BD 20 00 2B E8 D1 E5 2B FD D1 ED 64 03 .... .+...+...d.
1E62:20B0 2E A9 F2 2E 8B 46 00 5D C1 E9 04 41 64 89 0E A3 .....F.]...Ad...
1E62:20C0 F2 8B CA 66 C1 EA 10 FF D0 1F C3 3B 21 50 21 66 ...f.......;!P!f
1E62:20D0 21 7C 21 92 21 A8 21 BE 21 D4 21 EA 21 00 22 16 !|!.!.!.!.!.!.".
1E62:20E0 22 2C 22 42 22 58 22 6E 22 84 22 9A 22 85 C9 0F ","B"X"n"."."...
1E62:20F0 84 CC 01 55 8B D1 8B 36 74 F2 C4 2E B7 F2 03 2E ...U...6t.......
1E62:2100 8B F2 8B CA A1 BD F2 2B C5 3B C8 72 02 8B C8 2B .......+.;.r...+
1E62:2110 D1 1E D1 E9 8B C1 25 0F 00 D1 E0 BF 20 00 2B F8 ......%..... .+.
1E62:2120 D1 E7 2B F7 D1 EF 2B EF 2E 8B 85 CB 20 8B 3E AD ..+...+..... .>.
1E62:2130 F2 8E 1E 72 F2 C1 E9 04 41 FF E0 8B 1C 81 C3 00 ...r....A.......
1E62:2140 08 8A 01 8B 5C 02 81 C3 00 08 8A 21 26 89 46 00 ....\......!&.F.
1E62:2150 8B 5C 04 81 C3 00 08 8A 01 8B 5C 06 81 C3 00 08 .\........\.....
1E62:2160 8A 21 26 89 46 02 8B 5C 08 81 C3 00 08 8A 01 8B .!&.F..\........
1E62:2170 5C 0A 81 C3 00 08 8A 21 26 89 46 04 8B 5C 0C 81 \......!&.F..\..
1E62:2180 C3 00 08 8A 01 8B 5C 0E 81 C3 00 08 8A 21 26 89 ......\......!&.
1E62:2190 46 06 8B 5C 10 81 C3 00 08 8A 01 8B 5C 12 81 C3 F..\........\...
1E62:21A0 00 08 8A 21 26 89 46 08 8B 5C 14 81 C3 00 08 8A ...!&.F..\......
1E62:21B0 01 8B 5C 16 81 C3 00 08 8A 21 26 89 46 0A 8B 5C ..\......!&.F..\
1E62:21C0 18 81 C3 00 08 8A 01 8B 5C 1A 81 C3 00 08 8A 21 ........\......!
1E62:21D0 26 89 46 0C 8B 5C 1C 81 C3 00 08 8A 01 8B 5C 1E &.F..\........\.
1E62:21E0 81 C3 00 08 8A 21 26 89 46 0E 8B 5C 20 81 C3 00 .....!&.F..\ ...
1E62:21F0 08 8A 01 8B 5C 22 81 C3 00 08 8A 21 26 89 46 10 ....\".....!&.F.
1E62:2200 8B 5C 24 81 C3 00 08 8A 01 8B 5C 26 81 C3 00 08 .\$.......\&....
1E62:2210 8A 21 26 89 46 12 8B 5C 28 81 C3 00 08 8A 01 8B .!&.F..\(.......
1E62:2220 5C 2A 81 C3 00 08 8A 21 26 89 46 14 8B 5C 2C 81 \*.....!&.F..\,.
1E62:2230 C3 00 08 8A 01 8B 5C 2E 81 C3 00 08 8A 21 26 89 ......\......!&.
1E62:2240 46 16 8B 5C 30 81 C3 00 08 8A 01 8B 5C 32 81 C3 F..\0.......\2..
1E62:2250 00 08 8A 21 26 89 46 18 8B 5C 34 81 C3 00 08 8A ...!&.F..\4.....
1E62:2260 01 8B 5C 36 81 C3 00 08 8A 21 26 89 46 1A 8B 5C ..\6.....!&.F..\
1E62:2270 38 81 C3 00 08 8A 01 8B 5C 3A 81 C3 00 08 8A 21 8.......\:.....!
1E62:2280 26 89 46 1C 8B 5C 3C 81 C3 00 08 8A 01 8B 5C 3E &.F..\<.......\>
1E62:2290 81 C3 00 08 8A 21 26 89 46 1E 83 C6 40 83 C5 20 .....!&.F...@.. 
1E62:22A0 49 0F 85 96 FE 1F 3B 2E BD F2 72 04 8B 2E B7 F2 I.....;...r.....
1E62:22B0 85 D2 0F 85 4C FE 2B 2E B7 F2 89 2E 8B F2 5D 33 ....L.+.......]3
1E62:22C0 C0 C3 D1 E1 E8 26 FE C3 85 C9 74 41 8B D1 8B 36 .....&....tA...6
1E62:22D0 74 F2 C4 3E B7 F2 03 3E 8B F2 8B CA A1 BD F2 2B t..>...>.......+
1E62:22E0 C7 D1 E8 3B C8 72 02 8B C8 2B D1 1E 8E 1E 72 F2 ...;.r...+....r.
1E62:22F0 FC D1 E9 F3 66 A5 1F 3B 3E BD F2 72 04 8B 3E B7 ....f..;>..r..>.
1E62:2300 F2 85 D2 75 D5 2B 3E B7 F2 89 3E 8B F2 33 C0 C3 ...u.+>...>..3..
1E62:2310 85 C9 74 40 8B D1 8B 36 74 F2 C4 3E B7 F2 03 3E ..t@...6t..>...>
1E62:2320 8B F2 8B CA A1 BD F2 2B C7 C1 E8 02 3B C8 72 02 .......+....;.r.
1E62:2330 8B C8 2B D1 1E 8E 1E 72 F2 FC F3 66 A5 1F 3B 3E ..+....r...f..;>
1E62:2340 BD F2 72 04 8B 3E B7 F2 85 D2 75 D6 2B 3E B7 F2 ..r..>....u.+>..
1E62:2350 89 3E 8B F2 33 C0 C3 00 00 00 00 00 00 00 00 00 .>..3...........
;;; Segment 2098 (2098:0000)
2098:0000 45 4D 4D 58 58 58 58 30                         EMMXXXX0       

;; fn2098_0008: 2098:0008
fn2098_0008 proc
	enter	0000,00
	push	si
	push	di
	cld
	mov	ax,3567
	int	21
	mov	bx,000A
	mov	cx,0008
	xor	si,si

l2098_001C:
	mov	al,cs:[si+0000]
	inc	si
	cmp	es:[bx],al
	jnz	0072

l2098_0027:
	inc	bx
	loop	001C

l2098_002A:
	mov	ah,40
	int	67
	test	ah,ah
	jnz	007E

l2098_0032:
	mov	ah,41
	int	67
	test	ah,ah
	jnz	007E

l2098_003A:
	mov	[F2CA],bx
	mov	ax,4E03
	int	67
	test	ah,ah
	jnz	007E

l2098_0047:
	push	ax
	push	28FB
	push	F2C6
	call	far 21A1:0000
	test	ax,ax
	jnz	0081

l2098_0057:
	mov	dword ptr [F2C2],00000000
	mov	word ptr [F2CC],0000
	les	bx,[bp+06]
	mov	word ptr es:[bx],0001
	xor	ax,ax
	jmp	0081

l2098_0072:
	les	bx,[bp+06]
	mov	word ptr es:[bx],0000
	xor	ax,ax
	jmp	0081

l2098_007E:
	mov	ax,0008

l2098_0081:
	pop	di
	pop	si
	leave
	retf	0004
2098:0087                      56 66 83 3E C2 F2 00 74 30        Vf.>...t0
2098:0090 C4 1E C2 F2 26 0F B5 77 02 65 83 7C 0C 01 74 0F ....&..w.e.|..t.
2098:00A0 66 65 83 7C 04 00 74 2A 65 0F B5 74 04 EB EA 0F fe.|..t*e..t....
2098:00B0 A8 0F A8 56 0E E8 C6 01 0F A9 85 C0 75 14 EB C8 ...V........u...
2098:00C0 66 FF 36 C6 F2 9A A7 00 A1 21 85 C0 75 04 33 C0 f.6......!..u.3.
2098:00D0 EB 00 5E CB C8 04 00 00 56 57 66 83 3E C2 F2 00 ..^.....VWf.>...
2098:00E0 0F 84 16 01 8B 4E 0A 0F B5 36 C2 F2 65 C4 5C 02 .....N...6..e.\.
2098:00F0 26 83 7F 0C 00 74 10 66 26 83 7F 04 00 0F 84 85 &....t.f&.......
2098:0100 00 26 C4 5F 04 EB E9 26 39 4F 02 72 EA 74 6E 51 .&._...&9O.r.tnQ
2098:0110 53 06 6A 12 68 FB 28 68 D6 F2 9A 00 00 A1 21 07 S.j.h.(h......!.
2098:0120 5B 59 85 C0 0F 85 45 01 1E C5 3E D6 F2 66 26 8B [Y....E...>..f&.
2098:0130 47 04 66 89 45 04 26 0F B5 77 04 65 89 7C 08 65 G.f.E.&..w.e.|.e
2098:0140 8C 5C 0A 26 89 7F 04 26 8C 5F 06 89 5D 08 8C 45 .\.&...&._..]..E
2098:0150 0A 66 26 8B 47 0E 66 89 45 0E C7 45 0C 00 00 26 .f&.G.f.E..E...&
2098:0160 8B 07 03 C1 89 05 26 8B 47 02 2B C1 89 45 02 26 ......&.G.+..E.&
2098:0170 89 4F 02 26 C7 47 0C 01 00 1F E9 E1 00 26 C7 47 .O.&.G.......&.G
2098:0180 0C 01 00 E9 D8 00 26 8B 07 26 03 47 02 F7 D8 3B ......&..&.G...;
2098:0190 C1 73 10 66 65 83 7C 06 00 74 5F 65 0F B5 74 06 .s.fe.|..t_e..t.
2098:01A0 E9 49 FF 51 53 06 6A 12 68 FB 28 68 D6 F2 9A 00 .I.QS.j.h.(h....
2098:01B0 00 A1 21 07 5B 59 85 C0 0F 85 B1 00 1E C5 3E D6 ..!.[Y........>.
2098:01C0 F2 26 8B 07 26 03 47 02 89 05 89 4D 02 66 C7 45 .&..&.G....M.f.E
2098:01D0 04 00 00 00 00 89 5D 08 8C 45 0A 26 89 7F 04 26 ......]..E.&...&
2098:01E0 8C 5F 06 C7 45 0C 01 00 66 26 8B 47 0E 66 89 45 ._..E...f&.G.f.E
2098:01F0 0E 8B DF 8C D8 8E C0 1F EB 64 68 FB 28 68 D6 F2 .........dh.(h..
2098:0200 0E E8 21 02 85 C0 75 65 66 A1 D6 F2 66 89 46 FC ..!...uef...f.F.
2098:0210 6A 12 68 FB 28 68 D6 F2 9A 00 00 A1 21 85 C0 75 j.h.(h......!..u
2098:0220 4C C4 1E D6 F2 26 C7 07 00 00 8B 46 0A 26 89 47 L....&.....F.&.G
2098:0230 02 66 26 C7 47 04 00 00 00 00 66 26 C7 47 08 00 .f&.G.....f&.G..
2098:0240 00 00 00 26 C7 47 0C 01 00 66 8B 46 FC 66 26 89 ...&.G...f.F.f&.
2098:0250 47 0E 0F B5 76 FC 65 89 5C 02 65 8C 44 04 0F B5 G...v.e.\.e.D...
2098:0260 76 06 65 89 1C 65 8C 44 02 33 C0 EB 0B C4 5E 06 v.e..e.D.3....^.
2098:0270 66 26 C7 07 00 00 00 00 5F 5E C9 CA 06 00       f&......_^.... 

;; fn2098_027E: 2098:027E
fn2098_027E proc
	enter	0004,00
	push	si
	push	di
	les	bx,[bp+06]
	mov	eax,es:[bx+0E]
	mov	[bp-04],eax
	cmp	dword ptr es:[bx+04],00
	jz	0349

l2098_029A:
	mov	word ptr es:[bx+0C],0000
	lgs	si,[bp-04]
	les	bx,gs:[si+02]

l2098_02A8:
	cmp	word ptr es:[bx+0C],00
	jnz	0308

l2098_02AF:
	lgs	si,es:[bx+04]
	cmp	word ptr gs:[si+0C],00
	jnz	0308

l2098_02BB:
	mov	ax,gs:[si+02]
	add	es:[bx+02],ax
	mov	eax,gs:[si+04]
	mov	es:[bx+04],eax
	or	eax,eax
	jz	02DE

l2098_02D2:
	push	ds
	lds	di,gs:[si+04]
	mov	[di+08],bx
	mov	[di+0A],es
	pop	ds

l2098_02DE:
	push	gs
	push	es
	push	bx
	push	gs
	push	si
	call	far 21A1:00A7
	pop	bx
	pop	es
	pop	gs
	test	ax,ax
	jnz	038B

l2098_02F4:
	cmp	dword ptr es:[bx+04],00
	jz	0316

l2098_02FC:
	lgs	si,es:[bx+04]
	cmp	word ptr gs:[si+0C],00
	jz	02BB

l2098_0308:
	cmp	dword ptr es:[bx+04],00
	jz	0316

l2098_0310:
	les	bx,es:[bx+04]
	jmp	02A8

l2098_0316:
	lgs	si,[bp-04]
	les	bx,gs:[si+02]
	cmp	dword ptr es:[bx+04],00
	jnz	0387

l2098_0326:
	cmp	word ptr es:[bx+0C],00
	jnz	0387

l2098_032D:
	push	es
	push	bx
	push	gs
	push	si
	push	cs
	call	04D6
	pop	bx
	pop	es
	test	ax,ax
	jnz	038B

l2098_033C:
	push	es
	push	bx
	call	far 21A1:00A7
	test	ax,ax
	jnz	038B

l2098_0347:
	jmp	0387

l2098_0349:
	cmp	dword ptr es:[bx+08],00
	jz	036D

l2098_0351:
	les	bx,es:[bx+08]
	mov	dword ptr es:[bx+04],00000000
	push	dword ptr [bp+06]
	call	far 21A1:00A7
	test	ax,ax
	jnz	038B

l2098_036B:
	jmp	0316

l2098_036D:
	push	dword ptr es:[bx+0E]
	push	cs
	call	04D6
	test	ax,ax
	jnz	038B

l2098_037A:
	push	dword ptr [bp+06]
	call	far 21A1:00A7
	test	ax,ax
	jnz	038B

l2098_0387:
	xor	ax,ax
	jmp	038B

l2098_038B:
	pop	di
	pop	si
	leave
	retf	0004
2098:0391    C8 00 00 00 56 57 C4 7E 0A 26 0F B5 75 0E 65  ....VW.~.&..u.e
2098:03A0 8B 14 26 8B 0D C1 E9 0E 26 8B 35 26 03 75 02 C1 ..&.....&.5&.u..
2098:03B0 EE 0E 83 3E CC F2 01 75 0E 8B D9 D1 E3 39 97 CE ...>...u.....9..
2098:03C0 F2 74 10 89 97 CE F2 8A C1 8B D9 B4 44 CD 67 0A .t..........D.g.
2098:03D0 E4 75 19 41 3B CE 76 DA 26 8B 05 C4 5E 06 26 89 .u.A;.v.&...^.&.
2098:03E0 07 A1 CA F2 26 89 47 02 33 C0 EB 03 B8 08 00 5F ....&.G.3......_
2098:03F0 5E C9 CA 08 00 57 B8 00 4E C4 3E C6 F2 CD 67 0A ^....W..N.>...g.
2098:0400 E4 75 04 33 C0 EB 03 B8 08 00 5F CB 1E 56 B8 01 .u.3......_..V..
2098:0410 4E C5 36 C6 F2 CD 67 0A E4 75 04 33 C0 EB 03 B8 N.6...g..u.3....
2098:0420 08 00 5E 1F CB C8 04 00 00 56 6A 0E 68 FB 28 68 ..^......Vj.h.(h
2098:0430 D6 F2 9A 00 00 A1 21 85 C0 0F 85 94 00 C4 1E D6 ......!.........
2098:0440 F2 89 5E FC 8C 46 FE 26 C7 07 00 00 66 26 C7 47 ..^..F.&....f&.G
2098:0450 02 00 00 00 00 66 26 C7 47 06 00 00 00 00 53 B4 .....f&.G.....S.
2098:0460 43 BB 04 00 CD 67 5B 0A E4 74 16 80 FC 85 74 0C C....g[..t....t.
2098:0470 80 FC 87 74 07 80 FC 88 74 02 EB 52 B8 05 00 EB ...t....t..R....
2098:0480 50 26 89 17 66 83 3E C2 F2 00 75 13 89 1E C2 F2 P&..f.>...u.....
2098:0490 8C 06 C4 F2 66 26 C7 47 0A 00 00 00 00 EB 20 1E ....f&.G...... .
2098:04A0 C5 36 C2 F2 66 83 7C 06 00 74 05 C5 74 06 EB F4 .6..f.|..t..t...
2098:04B0 89 5C 06 8C 44 08 26 89 77 0A 26 8C 5F 0C 1F C4 .\..D.&.w.&._...
2098:04C0 5E 06 66 8B 46 FC 66 26 89 07 33 C0 EB 03 B8 08 ^.f.F.f&..3.....
2098:04D0 00 5E C9 CA 04 00                               .^....         

;; fn2098_04D6: 2098:04D6
fn2098_04D6 proc
	enter	0000,00
	push	si
	les	bx,[bp+06]
	cmp	dword ptr es:[bx+0A],00
	jz	050B

l2098_04E6:
	push	ds
	mov	eax,es:[bx+06]
	lds	si,es:[bx+0A]
	mov	[si+06],eax
	pop	ds
	or	eax,eax
	jz	0527

l2098_04FA:
	push	ds
	mov	eax,es:[bx+0A]
	lds	si,es:[bx+06]
	mov	[si+0A],eax
	pop	ds
	jmp	0527

l2098_050B:
	mov	eax,es:[bx+06]
	mov	[F2C2],eax
	or	eax,eax
	jz	0527

l2098_0519:
	lgs	si,es:[bx+06]
	mov	dword ptr gs:[si+0A],00000000

l2098_0527:
	mov	ah,45
	mov	dx,es:[bx]
	int	67
	test	ah,ah
	jnz	0541

l2098_0532:
	push	es
	push	bx
	call	far 21A1:00A7
	test	ax,ax
	jnz	0544

l2098_053D:
	xor	ax,ax
	jmp	0544

l2098_0541:
	mov	ax,0008

l2098_0544:
	pop	si
	leave
	retf	0004
2098:0549                            C7 06 CC F2 01 00 33          ......3
2098:0550 DB B9 04 00 B8 FF FF 89 87 CE F2 83 C3 02 E2 F7 ................
2098:0560 33 C0 CB C7 06 CC F2 00 00 33 C0 CB 00 00 00 00 3........3......
;;; Segment 20EF (20EF:0000)
20EF:0000 00 01 00 00 01 00 09 00 0A 00 0B 00 0C 00 87 00 ................
20EF:0010 01 02 02 00 03 00 09 00 0A 00 0B 00 0C 00 83 00 ................
20EF:0020 02 04 04 00 05 00 09 00 0A 00 0B 00 0C 00 81 00 ................
20EF:0030 03 08 06 00 07 00 09 00 0A 00 0B 00 0C 00 82 00 ................
20EF:0040 04 01 C0 00 C2 00 D2 00 D4 00 D6 00 D8 00 8F 00 ................
20EF:0050 05 02 C4 00 C6 00 D2 00 D4 00 D6 00 D8 00 8B 00 ................
20EF:0060 06 04 C8 00 CA 00 D2 00 D4 00 D6 00 D8 00 89 00 ................
20EF:0070 07 08 CC 00 CE 00 D2 00 D4 00 D6 00 D8 00 8A 00 ................
20EF:0080 C8 00 00 00 57 56 81 7E 0A 00 7D 76 06 B8 16 00 ....WV.~..}v....
20EF:0090 E9 57 01 83 3E EC F2 00 0F 84 DB 00 B8 40 00 8E .W..>........@..
20EF:00A0 C0 26 A0 7B 00 A8 20 0F 84 CC 00 B8 02 81 33 D2 .&.{.. .......3.
20EF:00B0 CD 4B 73 06 B8 21 00 E9 30 01 3D 00 01 73 06 B8 .Ks..!..0.=..s..
20EF:00C0 22 00 E9 25 01 C7 06 DE F2 01 00 8B 46 0A 05 40 "..%........F..@
20EF:00D0 00 D1 E0 C4 5E 06 8D 57 08 06 53 50 06 52 9A 00 ....^..W..SP.R..
20EF:00E0 00 A1 21 5B 07 85 C0 0F 85 FF 00 66 33 C0 26 8B ..![.......f3.&.
20EF:00F0 57 0A 26 8B 47 08 8D 7F 0E 66 26 89 45 04 26 89 W.&.G....f&.E.&.
20EF:0100 55 08 8B 46 0A 05 40 00 D1 E0 66 26 89 05 B8 03 U..F..@...f&....
20EF:0110 81 BA 04 00 CD 4B 73 06 B8 20 00 E9 CC 00 66 26 .....Ks.. ....f&
20EF:0120 8B 75 0C 26 8B 57 0A 26 8B 47 08 C1 E8 04 03 D0 .u.&.W.&.G......
20EF:0130 42 66 83 E6 F0 66 83 C6 10 66 8B C6 66 25 FF FF Bf...f...f..f%..
20EF:0140 00 00 8B 4E 0A F7 D9 3B C1 72 22 66 8B CE 66 81 ...N...;.r"f..f.
20EF:0150 E6 00 00 0F 00 66 81 C6 00 00 01 00 66 81 E1 FF .....f......f...
20EF:0160 FF 00 00 66 C1 E9 04 81 C2 00 10 2B D1 66 26 89 ...f.......+.f&.
20EF:0170 77 02 26 89 17 EB 62 C7 06 DE F2 00 00 8B 46 0A w.&...b.......F.
20EF:0180 D1 E0 05 40 00 C4 5E 06 8D 57 08 06 53 50 06 52 ...@..^..W..SP.R
20EF:0190 9A 00 00 A1 21 5B 07 85 C0 75 4F 26 8B 57 0A 26 ....![...uO&.W.&
20EF:01A0 8B 47 08 C1 E8 04 03 D0 42 8B C2 25 FF 0F 8B 4E .G......B..%...N
20EF:01B0 0A 83 C1 0F C1 E9 04 F7 D9 81 C1 FF 0F 3B C1 72 .............;.r
20EF:01C0 08 81 E2 00 F0 81 C2 00 10 26 89 17 66 0F B7 C2 .........&..f...
20EF:01D0 66 C1 E0 04 66 26 89 47 02 8B 46 0A 26 89 47 06 f...f&.G..F.&.G.
20EF:01E0 26 C7 47 0C FF FF 33 C0 EB 00 5E 5F C9 CA 06 00 &.G...3...^_....
20EF:01F0 C8 00 00 00 57 83 3E DE F2 01 75 14 C4 5E 06 8D ....W.>...u..^..
20EF:0200 7F 0E B8 04 81 33 D2 CD 4B 73 05 B8 21 00 EB 15 .....3..Ks..!...
20EF:0210 C4 5E 06 66 26 FF 77 08 9A A7 00 A1 21 85 C0 75 .^.f&.w.....!..u
20EF:0220 04 33 C0 EB 00 5F C9 CA 04 00 C8 00 00 00 56 57 .3..._........VW
20EF:0230 C4 7E 0A 83 3E DE F2 01 75 12 B8 0B 81 8B 5E 08 .~..>...u.....^.
20EF:0240 33 D2 CD 4B 73 06 B8 21 00 E9 91 00 6B 76 08 10 3..Ks..!....kv..
20EF:0250 2E 8A 84 00 00 32 E4 26 89 45 0C 24 03 2E 8B 94 .....2.&.E.$....
20EF:0260 06 00 EE 0C 04 2E 8B 94 08 00 EE 2E 8A 84 00 00 ................
20EF:0270 24 03 0C 48 83 7E 06 01 75 02 0C 10 2E 8B 94 0A $..H.~..u.......
20EF:0280 00 EE 66 26 8B 5D 02 2E 8B 94 0E 00 66 8B C3 66 ..f&.]......f..f
20EF:0290 C1 E8 10 EE 2E 8B 94 0C 00 32 C0 EE 2E 8B 94 02 .........2......
20EF:02A0 00 2E 80 BC 00 00 03 76 03 66 D1 EB 8A C3 EE 8A .......v.f......
20EF:02B0 C7 EE 26 8B 5D 06 2E 80 BC 00 00 03 76 02 D1 EB ..&.].......v...
20EF:02C0 4B 2E 8B 94 04 00 8A C3 EE 8A C7 EE 2E 8A 84 00 K...............
20EF:02D0 00 24 03 2E 8B 94 08 00 EE 33 C0 EB 00 5F 5E C9 .$.......3..._^.
20EF:02E0 CA 08 00 C8 00 00 00 56 83 3E DE F2 01 75 11 B8 .......V.>...u..
20EF:02F0 0C 81 8B 5E 06 33 D2 CD 4B 73 05 B8 21 00 EB 1F ...^.3..Ks..!...
20EF:0300 6B 76 06 10 2E 8B 94 08 00 2E 8A 84 00 00 24 03 kv............$.
20EF:0310 0C 04 EE 2E 8B 94 0C 00 32 C0 EE 33 C0 EB 00 5E ........2..3...^
20EF:0320 C9 CA 02 00 C8 00 00 00 56 57 C4 7E 0A 26 8B 5D ........VW.~.&.]
20EF:0330 0C 6B F3 10 2E 8B 94 0C 00 32 C0 EE 2E 8B 94 04 .k.......2......
20EF:0340 00 FA EC 8A E0 EC 86 C4 8B D8 EC 8A E0 EC 86 C4 ................
20EF:0350 2B D8 83 FB 04 7F EB 83 FB FC 7C E6 26 3B 45 06 +.........|.&;E.
20EF:0360 73 E0 FB 2E 80 BC 00 00 03 76 02 D1 E0 F7 D8 26 s........v.....&
20EF:0370 03 45 06 C4 7E 06 26 89 05 33 C0 5F 5E C9 CA 08 .E..~.&..3._^...
20EF:0380 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
;;; Segment 2128 (2128:0000)

;; fn2128_0000: 2128:0000
fn2128_0000 proc
	mov	ax,0700
	int	21
	xor	ah,ah
	test	al,al
	jnz	0012

l2128_000B:
	mov	ax,0700
	int	21
	mov	ah,01

l2128_0012:
	retf

;; fn2128_0013: 2128:0013
fn2128_0013 proc
	enter	0000,00
	les	bx,[bp+06]
	xor	ax,ax

l2128_001C:
	cmp	byte ptr es:[bx],00
	jz	0026

l2128_0022:
	inc	bx
	inc	ax
	jmp	001C

l2128_0026:
	leave
	retf	0004

;; fn2128_002A: 2128:002A
fn2128_002A proc
	enter	0000,00
	push	ds
	push	si
	push	di
	cld
	lds	si,[bp+06]
	les	di,[bp+0A]

l2128_0038:
	lodsb
	stosb
	test	al,al
	jnz	0038

l2128_003E:
	pop	di
	pop	si
	pop	ds
	leave
	retf	0008

;; fn2128_0045: 2128:0045
fn2128_0045 proc
	enter	0000,00
	push	ds
	push	si
	push	di
	cld
	lds	si,[bp+06]
	les	di,[bp+0A]

l2128_0053:
	mov	al,es:[di]
	test	al,al
	jz	005D

l2128_005A:
	inc	di
	jmp	0053

l2128_005D:
	lodsb
	stosb
	test	al,al
	jz	0065

l2128_0063:
	jmp	005D

l2128_0065:
	pop	di
	pop	si
	pop	ds
	leave
	retf	0008

;; fn2128_006C: 2128:006C
fn2128_006C proc
	enter	0000,00
	push	ds
	push	si
	push	di
	cld
	lds	si,[bp+08]
	les	di,[bp+0C]
	mov	cx,[bp+06]

l2128_007D:
	rep movsb

l2128_007F:
	pop	di
	pop	si
	pop	ds
	leave
	retf	000A

;; fn2128_0086: 2128:0086
fn2128_0086 proc
	enter	0000,00
	push	ds
	push	si
	push	di
	cld
	lds	si,[bp+0C]
	les	di,[bp+08]
	mov	cx,[bp+06]

l2128_0097:
	rep cmpsb

l2128_0099:
	test	cx,cx
	jnz	00A2

l2128_009D:
	mov	ax,0001
	jmp	00A4

l2128_00A2:
	xor	ax,ax

l2128_00A4:
	pop	di
	pop	si
	pop	ds
	leave
	retf	000A

;; fn2128_00AB: 2128:00AB
fn2128_00AB proc
	enter	0000,00
	les	bx,[bp+06]
	xor	edx,edx

l2128_00B5:
	mov	al,es:[bx]
	inc	bx
	test	al,al
	jz	00ED

l2128_00BD:
	shl	edx,04
	cmp	al,30
	jc	00F5

l2128_00C5:
	cmp	al,39
	jbe	00DB

l2128_00C9:
	cmp	al,41
	jc	00F5

l2128_00CD:
	cmp	al,46
	jbe	00E1

l2128_00D1:
	cmp	al,61
	jc	00F5

l2128_00D5:
	cmp	al,66
	jbe	00E7

l2128_00D9:
	jmp	00F5

l2128_00DB:
	sub	al,30
	or	dl,al
	jmp	00B5

l2128_00E1:
	sub	al,37
	or	dl,al
	jmp	00B5

l2128_00E7:
	sub	al,57
	or	dl,al
	jmp	00B5

l2128_00ED:
	mov	ax,dx
	shr	edx,10
	jmp	00FB

l2128_00F5:
	mov	ax,FFFF
	mov	dx,FFFF

l2128_00FB:
	leave
	retf	0004

;; fn2128_00FF: 2128:00FF
fn2128_00FF proc
	enter	0000,00
	les	bx,[bp+06]
	xor	edx,edx
	xor	eax,eax

l2128_010C:
	mov	al,es:[bx]
	inc	bx
	test	al,al
	jz	0127

l2128_0114:
	imul	edx,edx,0A
	cmp	al,30
	jc	012F

l2128_011C:
	cmp	al,39
	ja	012F

l2128_0120:
	sub	al,30
	add	edx,eax
	jmp	010C

l2128_0127:
	mov	ax,dx
	shr	edx,10
	jmp	0135

l2128_012F:
	mov	ax,FFFF
	mov	dx,FFFF

l2128_0135:
	leave
	retf	0004
2128:0139                            C8 00 00 00 1E 56 57          .....VW
2128:0140 FC C4 7E 06 8B DF 32 C0 B9 FF 7F F2 AE 2B FB 4F ..~...2......+.O
2128:0150 8B D7 85 D2 74 3B B4 62 CD 21 C5 76 06 8E C3 26 ....t;.b.!.v...&
2128:0160 8E 06 2C 00 33 FF 8A 24 32 C0 26 38 25 75 15 56 ..,.3..$2.&8%u.V
2128:0170 8B CA F3 A6 5E 75 0D 26 80 3D 3D 75 07 47 8C C2 ....^u.&.==u.G..
2128:0180 8B C7 EB 11 B9 FF 7F F2 AE 26 80 3D 00 74 02 EB .........&.=.t..
2128:0190 D9 33 C0 33 D2 5F 5E 1F C9 CA 04 00 00 00 00 00 .3.3._^.........
;;; Segment 2142 (2142:0000)
2142:0000 C8 04 00 00 6A 04 16 8D 46 FC 50 9A 00 00 A1 21 ....j...F.P....!
2142:0010 8B D0 0B C0 74 04 8B C2 EB 49 8B 46 0A 3D 01 00 ....t....I.F.=..
2142:0020 74 0C 3D 02 00 74 0C 3D 03 00 74 0C EB 0F B8 01 t.=..t.=..t.....
2142:0030 00 EB 0F B8 02 00 EB 0A B8 03 00 EB 05 B8 16 00 ................
2142:0040 EB 21 66 FF 76 0C 50 66 FF 76 FC 9A 00 00 5B 21 .!f.v.Pf.v....[!
2142:0050 8B D0 0B C0 75 C0 C4 5E 06 66 8B 46 FC 66 26 89 ....u..^.f.F.f&.
2142:0060 07 33 C0 C9 CA 0A 00                            .3.....        

;; fn2142_0067: 2142:0067
fn2142_0067 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+06]
	push	dword ptr es:[bx]
	call	far 215B:00E1
	mov	dx,ax
	or	ax,ax
	jz	0080

l2142_007C:
	mov	ax,dx
	jmp	0091

l2142_0080:
	push	dword ptr [bp+06]
	call	far 21A1:00A7
	mov	dx,ax
	or	ax,ax
	jnz	007C

l2142_008F:
	xor	ax,ax

l2142_0091:
	pop	bp
	retf	0004
2142:0095                C8 02 00 00 C4 5E 0A 66 26 FF 37      .....^.f&.7
2142:00A0 66 FF 76 06 9A 4A 01 5B 21 89 46 FE 0B C0 75 02 f.v..J.[!.F...u.
2142:00B0 33 C0 C9 CA 08 00                               3.....         

;; fn2142_00B6: 2142:00B6
fn2142_00B6 proc
	enter	0002,00
	les	bx,[bp+0E]
	push	dword ptr es:[bx]
	push	dword ptr [bp+0A]
	push	dword ptr [bp+06]
	call	far 215B:0217
	mov	[bp-02],ax
	or	ax,ax
	jnz	00D7

l2142_00D5:
	xor	ax,ax

l2142_00D7:
	leave
	retf	000C
2142:00DB                                  C8 02 00 00 C4            .....
2142:00E0 5E 0E 66 26 FF 37 66 FF 76 0A 66 FF 76 06 9A A5 ^.f&.7f.v.f.v...
2142:00F0 02 5B 21 89 46 FE 0B C0 75 02 33 C0 C9 CA 0C 00 .[!.F...u.3.....

;; fn2142_0100: 2142:0100
fn2142_0100 proc
	enter	0002,00
	mov	ax,[bp+06]
	cmp	ax,0001
	jz	0118

l2142_010C:
	cmp	ax,0002
	jz	011D

l2142_0111:
	cmp	ax,0003
	jz	0122

l2142_0116:
	jmp	0127

l2142_0118:
	mov	ax,0001
	jmp	012C

l2142_011D:
	mov	ax,0002
	jmp	012C

l2142_0122:
	mov	ax,0003
	jmp	012C

l2142_0127:
	mov	ax,0016
	jmp	0146

l2142_012C:
	les	bx,[bp+0C]
	push	dword ptr es:[bx]
	push	dword ptr [bp+08]
	push	ax
	call	far 215B:0313
	mov	[bp-02],ax
	or	ax,ax
	jnz	0146

l2142_0144:
	xor	ax,ax

l2142_0146:
	leave
	retf	000A
2142:014A                               C8 02 00 00 C4 5E           .....^
2142:0150 0A 66 26 FF 37 66 FF 76 06 9A A9 03 5B 21 89 46 .f&.7f.v....[!.F
2142:0160 FE 0B C0 75 02 33 C0 C9 CA 08 00 C8 02 00 00 66 ...u.3.........f
2142:0170 FF 76 0A 66 FF 76 06 9A F5 03 5B 21 89 46 FE 0B .v.f.v....[!.F..
2142:0180 C0 75 02 33 C0 C9 CA 08 00 00 00 00 00 00 00 00 .u.3............
;;; Segment 215B (215B:0000)
215B:0000 55 89 E5 B8 08 00 9A 30 05 33 27 83 EC 08 56 57 U......0.3'...VW
215B:0010 68 80 00 8D 7E F8 16 57 9A 00 00 A1 21 89 46 FC h...~..W....!.F.
215B:0020 83 7E FC 00 74 14 FF 76 FC 68 B0 04 9A 00 00 B6 .~..t..v.h......
215B:0030 21 8B 46 FC 89 46 FE E9 A0 00 C4 7E F8 06 57 FF !.F..F.....~..W.
215B:0040 76 0E FF 76 0C 9A E1 0A 33 27 8B 46 0A 3D 01 00 v..v....3'.F.=..
215B:0050 75 07 C6 06 90 10 00 EB 16 3D 02 00 75 07 C6 06 u........=..u...
215B:0060 90 10 01 EB 0A 3D 03 00 75 05 C6 06 90 10 02 C4 .....=..u.......
215B:0070 7E F8 06 57 6A 01 9A 1D 0B 33 27 9A ED 04 33 27 ~..Wj....3'...3'
215B:0080 09 C0 74 3F 83 7E 0A 01 74 28 C4 7E F8 06 57 6A ..t?.~..t(.~..Wj
215B:0090 01 9A 26 0B 33 27 9A ED 04 33 27 09 C0 74 11 6A ..&.3'...3'..t.j
215B:00A0 1F 68 B0 04 9A 00 00 B6 21 C7 46 FE 1F 00 EB 2A .h......!.F....*
215B:00B0 EB 11 6A 17 68 B0 04 9A 00 00 B6 21 C7 46 FE 17 ..j.h......!.F..
215B:00C0 00 EB 17 8B 46 F8 8B 56 FA C4 7E 06 26 89 05 26 ....F..V..~.&..&
215B:00D0 89 55 02 31 C0 89 46 FE 5F 5E 8B 46 FE C9 CA 0A .U.1..F._^.F....
215B:00E0 00                                              .              

;; fn215B_00E1: 215B:00E1
fn215B_00E1 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	push	si
	push	di
	les	di,[bp+06]
	push	es
	push	di
	call	far 2733:0B9E
	call	far 2733:04ED
	or	ax,ax
	jz	0115

l215B_0104:
	push	18
	push	04B1
	call	far 21B6:0000
	mov	word ptr [bp-02],0018
	jmp	0143

l215B_0115:
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	call	far 21A1:00A7
	mov	[bp-04],ax
	cmp	word ptr [bp-04],00
	jz	013C

l215B_0129:
	push	word ptr [bp-04]
	push	04B1
	call	far 21B6:0000
	mov	ax,[bp-04]
	mov	[bp-02],ax
	jmp	0143

l215B_013C:
	xor	ax,ax
	mov	[bp-02],ax
	pop	di
	pop	si

l215B_0143:
	mov	ax,[bp-02]
	leave
	retf	0004
215B:014A                               55 89 E5 B8 08 00           U.....
215B:0150 9A 30 05 33 27 83 EC 08 56 57 FF 76 0C FF 76 0A .0.3'...VW.v..v.
215B:0160 8D 7E F8 16 57 0E E8 40 02 89 46 FC 83 7E FC 00 .~..W..@..F..~..
215B:0170 74 14 FF 76 FC 68 B2 04 9A 00 00 B6 21 8B 46 FC t..v.h......!.F.
215B:0180 89 46 FE E9 8A 00 FF 76 0C FF 76 0A 6A 00 6A 00 .F.....v..v.j.j.
215B:0190 6A 03 0E E8 7D 01 89 46 FC 83 7E FC 00 74 13 FF j...}..F..~..t..
215B:01A0 76 FC 68 B2 04 9A 00 00 B6 21 8B 46 FC 89 46 FE v.h......!.F..F.
215B:01B0 EB 5E FF 76 0C FF 76 0A FF 76 08 FF 76 06 0E E8 .^.v..v..v..v...
215B:01C0 E7 01 89 46 FC 83 7E FC 00 74 13 FF 76 FC 68 B2 ...F..~..t..v.h.
215B:01D0 04 9A 00 00 B6 21 8B 46 FC 89 46 FE EB 32 FF 76 .....!.F..F..2.v
215B:01E0 0C FF 76 0A FF 76 FA FF 76 F8 6A 01 0E E8 23 01 ..v..v..v.j...#.
215B:01F0 83 7E FC 00 74 13 FF 76 FC 68 B2 04 9A 00 00 B6 .~..t..v.h......
215B:0200 21 8B 46 FC 89 46 FE EB 07 31 C0 89 46 FE 5F 5E !.F..F...1..F._^
215B:0210 8B 46 FE C9 CA 08 00                            .F.....        

;; fn215B_0217: 215B:0217
fn215B_0217 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	push	si
	push	di
	cmp	word ptr [bp+08],00
	jg	0235

l215B_022D:
	jl	0246

l215B_022F:
	cmp	word ptr [bp+06],FF
	jbe	0246

l215B_0235:
	push	16
	push	04B3
	call	far 21B6:0000
	mov	word ptr [bp-02],0016
	jmp	029E

l215B_0246:
	les	di,[bp+0E]
	push	es
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	push	word ptr [bp+06]
	lea	di,[bp-04]
	push	ss
	push	di
	call	far 2733:0C08
	call	far 2733:04ED
	or	ax,ax
	jz	0277

l215B_0266:
	push	18
	push	04B3
	call	far 21B6:0000
	mov	word ptr [bp-02],0018
	jmp	029E

l215B_0277:
	mov	ax,[bp-04]
	xor	dx,dx
	cmp	dx,[bp+08]
	jnz	0286

l215B_0281:
	cmp	ax,[bp+06]
	jz	0297

l215B_0286:
	push	1D
	push	04B3
	call	far 21B6:0000
	mov	word ptr [bp-02],001D
	jmp	029E

l215B_0297:
	xor	ax,ax
	mov	[bp-02],ax
	pop	di
	pop	si

l215B_029E:
	mov	ax,[bp-02]
	leave
	retf	000C
215B:02A5                55 89 E5 B8 04 00 9A 30 05 33 27      U......0.3'
215B:02B0 83 EC 04 56 57 83 7E 08 00 7F 08 7C 17 83 7E 06 ...VW.~....|..~.
215B:02C0 FF 76 11 6A 16 68 B4 04 9A 00 00 B6 21 C7 46 FE .v.j.h......!.F.
215B:02D0 16 00 EB 38 C4 7E 0E 06 57 C4 7E 0A 06 57 FF 76 ...8.~..W.~..W.v
215B:02E0 06 8D 7E FC 16 57 9A 0F 0C 33 27 9A ED 04 33 27 ..~..W...3'...3'
215B:02F0 09 C0 74 11 6A 18 68 B4 04 9A 00 00 B6 21 C7 46 ..t.j.h......!.F
215B:0300 FE 18 00 EB 07 31 C0 89 46 FE 5F 5E 8B 46 FE C9 .....1..F._^.F..
215B:0310 CA 0C 00                                        ...            

;; fn215B_0313: 215B:0313
fn215B_0313 proc
	push	bp
	mov	bp,sp
	mov	ax,0004
	call	far 2733:0530
	sub	sp,04
	push	si
	push	di
	mov	ax,[bp+06]
	cmp	ax,0001
	jnz	033D

l215B_032B:
	les	di,[bp+0C]
	push	es
	push	di
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	call	far 2733:0C70
	jmp	0381

l215B_033D:
	cmp	ax,0003
	jnz	0360

l215B_0342:
	les	di,[bp+0C]
	push	es
	push	di
	les	di,[bp+0C]
	push	es
	push	di
	call	far 2733:1BE4
	add	ax,[bp+08]
	adc	dx,[bp+0A]
	push	dx
	push	ax
	call	far 2733:0C70
	jmp	0381

l215B_0360:
	cmp	ax,0002
	jnz	0381

l215B_0365:
	les	di,[bp+0C]
	push	es
	push	di
	les	di,[bp+0C]
	push	es
	push	di
	call	far 2733:1BCD
	add	ax,[bp+08]
	adc	dx,[bp+0A]
	push	dx
	push	ax
	call	far 2733:0C70

l215B_0381:
	call	far 2733:04ED
	or	ax,ax
	jz	039B

l215B_038A:
	push	16
	push	04B5
	call	far 21B6:0000
	mov	word ptr [bp-02],0016
	jmp	03A2

l215B_039B:
	xor	ax,ax
	mov	[bp-02],ax
	pop	di
	pop	si

l215B_03A2:
	mov	ax,[bp-02]
	leave
	retf	000A
215B:03A9                            55 89 E5 B8 02 00 9A          U......
215B:03B0 30 05 33 27 83 EC 02 56 57 C4 7E 0A 06 57 9A CD 0.3'...VW.~..W..
215B:03C0 1B 33 27 C4 7E 06 26 89 05 26 89 55 02 9A ED 04 .3'.~.&..&.U....
215B:03D0 33 27 09 C0 74 11 6A 18 68 B6 04 9A 00 00 B6 21 3'..t.j.h......!
215B:03E0 C7 46 FE 18 00 EB 07 31 C0 89 46 FE 5F 5E 8B 46 .F.....1..F._^.F
215B:03F0 FE C9 CA 08 00 55 89 E5 B8 82 00 9A 30 05 33 27 .....U......0.3'
215B:0400 81 EC 82 00 56 57 8D BE 7E FF 16 57 FF 76 0C FF ....VW..~..W.v..
215B:0410 76 0A 9A E1 0A 33 27 C6 06 90 10 00 8D BE 7E FF v....3'.......~.
215B:0420 16 57 6A 01 9A 1D 0B 33 27 9A ED 04 33 27 09 C0 .Wj....3'...3'..
215B:0430 75 15 8D BE 7E FF 16 57 9A 9E 0B 33 27 C4 7E 06 u...~..W...3'.~.
215B:0440 26 C7 05 01 00 EB 08 C4 7E 06 31 C0 26 89 05 31 &.......~.1.&..1
215B:0450 C0 89 46 FE 5F 5E 8B 46 FE C9 CA 08 00 00 00 00 ..F._^.F........
;;; Segment 21A1 (21A1:0000)

;; fn21A1_0000: 21A1:0000
fn21A1_0000 proc
	push	bp
	mov	bp,sp
	mov	ax,2142
	call	far 2733:0530
	sub	sp,06
	push	si
	push	di
	call	far 2733:0303
	mov	cx,ax
	mov	bx,dx
	mov	ax,[bp+0A]
	xor	dx,dx
	cmp	dx,bx
	jl	0028

l21A1_0022:
	jg	0083

l21A1_0024:
	cmp	ax,cx
	ja	0083

l21A1_0028:
	cmp	word ptr [bp+0A],F6
	jnc	0066

l21A1_002E:
	mov	ax,[bp+0A]
	add	ax,0004
	push	ax
	call	far 2733:028A
	mov	[bp-06],ax
	mov	[bp-04],dx
	mov	ax,[bp+0A]
	les	di,[bp-06]
	mov	es:[di],ax
	les	di,[bp-06]
	lea	ax,es:[di+04]
	les	di,[bp-06]
	mov	dx,es
	les	di,[bp+06]
	mov	es:[di],ax
	mov	es:[di+02],dx
	xor	ax,ax
	mov	[bp-02],ax
	jmp	0081

l21A1_0066:
	push	04
	push	0190
	call	far 21B6:0000
	mov	word ptr [bp-02],0004
	les	di,[bp+06]
	xor	ax,ax
	mov	es:[di],ax
	mov	es:[di+02],ax

l21A1_0081:
	jmp	009E

l21A1_0083:
	push	02
	push	0190
	call	far 21B6:0000
	mov	word ptr [bp-02],0002
	les	di,[bp+06]
	xor	ax,ax
	mov	es:[di],ax
	mov	es:[di+02],ax

l21A1_009E:
	pop	di
	pop	si
	mov	ax,[bp-02]
	leave
	retf	0006

;; fn21A1_00A7: 21A1:00A7
fn21A1_00A7 proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	push	si
	push	di
	mov	ax,[bp+06]
	or	ax,[bp+08]
	jz	00ED

l21A1_00BF:
	les	di,[bp+06]
	lea	ax,es:[di-04]
	les	di,[bp+06]
	mov	dx,es
	mov	[bp-06],ax
	mov	[bp-04],dx
	push	word ptr [bp-04]
	push	word ptr [bp-06]
	les	di,[bp-06]
	mov	ax,es:[di]
	add	ax,0004
	push	ax
	call	far 2733:029F
	xor	ax,ax
	mov	[bp-02],ax
	jmp	00FC

l21A1_00ED:
	push	04
	push	0191
	call	far 21B6:0000
	mov	word ptr [bp-02],0004

l21A1_00FC:
	pop	di
	pop	si
	mov	ax,[bp-02]
	leave
	retf	0004
21A1:0105                00 00 00 00 00 00 00 00 00 00 00      ...........
;;; Segment 21B2 (21B2:0000)

;; fn21B2_0000: 21B2:0000
fn21B2_0000 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	xor	ax,ax
	mov	[F2E0],ax
	mov	word ptr [F2E2],0001
	mov	word ptr [F2E4],0001
	xor	ax,ax
	mov	[F2E6],ax
	xor	ax,ax
	mov	[F2E8],ax
	xor	ax,ax
	mov	[F2EA],ax
	mov	word ptr [F2EC],0001
	leave
	retf
21B2:0032       00 00 00 00 00 00 00 00 00 00 00 00 00 00   ..............
;;; Segment 21B6 (21B6:0000)

;; fn21B6_0000: 21B6:0000
fn21B6_0000 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	leave
	retf	0004

;; fn21B6_000E: 21B6:000E
fn21B6_000E proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,0003
	int	10
	mov	di,F600
	push	ds
	push	di
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	push	00
	call	far 2733:0961
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116
	leave
	retf	0004

;; fn21B6_0044: 21B6:0044
fn21B6_0044 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	leave
	retf
;;; Segment 21BB (21BB:0000)
21BB:0000 1A 4C 65 6D 65 7A 20 48 69 62 61 2E 20 41 20 68 .Lemez Hiba. A h
21BB:0010 69 62 61 20 6B A2 64 6A 61 3A 20                iba k.dja:     

;; fn21BB_001B: 21BB:001B
fn21BB_001B proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	call	far 2733:04ED
	mov	[bp-02],ax
	cmp	word ptr [bp-02],00
	jz	006E

l21BB_0037:
	call	far 2234:0000
	mov	di,F600
	push	ds
	push	di
	mov	di,0000
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	mov	ax,[bp-02]
	xor	dx,dx
	push	dx
	push	ax
	xor	ax,ax
	push	ax
	call	far 2733:0A63
	call	far 2733:0840
	call	far 2733:04F4
	xor	ax,ax
	call	far 2733:0116

l21BB_006E:
	mov	sp,bp
	pop	bp
	retf

;; fn21BB_0072: 21BB:0072
fn21BB_0072 proc
	push	bp
	mov	bp,sp
	mov	ax,0100
	call	far 2733:0530
	sub	sp,0100
	lea	di,[bp+FF00]
	push	ss
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:0D14
	mov	di,F2F6
	push	ds
	push	di
	mov	ax,0078
	push	ax
	call	far 2733:0FB1
	mov	sp,bp
	pop	bp
	retf

;; fn21BB_00A1: 21BB:00A1
fn21BB_00A1 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	word ptr [F396]
	push	word ptr [F398]
	mov	ax,[F396]
	add	ax,0012
	push	ax
	mov	ax,[F398]
	add	ax,0012
	push	ax
	les	di,[F3CA]
	push	es
	push	di
	call	far 2234:05EA
	push	word ptr [F396]
	push	word ptr [F398]
	mov	di,[F3CE]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	push	es
	push	di
	call	far 2234:075A
	pop	bp
	retf

;; fn21BB_00E9: 21BB:00E9
fn21BB_00E9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	word ptr [F39A]
	push	word ptr [F39C]
	les	di,[F3CA]
	push	es
	push	di
	call	far 2234:067C
	pop	bp
	retf

;; fn21BB_0108: 21BB:0108
fn21BB_0108 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	byte ptr [F38F],00
	mov	byte ptr [F390],01
	mov	word ptr [F39A],FFFF
	mov	word ptr [F39C],FFFF
	pop	bp
	retf

;; fn21BB_012A: 21BB:012A
fn21BB_012A proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	byte ptr [F37C],01
	cmp	byte ptr [F390],01
	jnz	014B

l21BB_0140:
	cmp	byte ptr [F3D2],01
	jnz	014B

l21BB_0147:
	push	cs
	call	00E9

l21BB_014B:
	mov	byte ptr [F37C],00
	mov	byte ptr [F390],00
	mov	byte ptr [F3D2],00
	pop	bp
	retf
21BB:015C                                     55 89 E5 31             U..1
21BB:0160 C0 9A 30 05 33 27 80 3E 90 F3 01 75 39 A1 84 F3 ..0.3'.>...u9...
21BB:0170 A3 96 F3 A1 86 F3 A3 98 F3 80 3E 8F F3 01 75 06 ..........>...u.
21BB:0180 0E E8 65 FF EB 05 C6 06 8F F3 01 0E E8 12 FF C6 ..e.............
21BB:0190 06 D2 F3 01 A1 96 F3 A3 9A F3 A1 98 F3 A3 9C F3 ................
21BB:01A0 A1 CE F3 A3 D0 F3 5D CB                         ......].       

;; fn21BB_01A8: 21BB:01A8
fn21BB_01A8 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	byte ptr [F38E],00
	jz	01FC

l21BB_01B9:
	mov	byte ptr [F37C],01
	mov	ax,[F384]
	mov	[F396],ax
	mov	ax,[F386]
	mov	[F398],ax
	cmp	byte ptr [F38F],01
	jnz	01D7

l21BB_01D1:
	push	cs
	call	00E9
	jmp	01DC

l21BB_01D7:
	mov	byte ptr [F38F],01

l21BB_01DC:
	push	cs
	call	00A1
	mov	byte ptr [F3D2],01
	mov	ax,[F396]
	mov	[F39A],ax
	mov	ax,[F398]
	mov	[F39C],ax
	mov	ax,[F3CE]
	mov	[F3D0],ax
	mov	byte ptr [F37C],00

l21BB_01FC:
	pop	bp
	retf

;; fn21BB_01FE: 21BB:01FE
fn21BB_01FE proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	byte ptr [21A1],01
	mov	ax,[F384]
	mov	[F396],ax
	mov	ax,[F386]
	mov	[F398],ax
	cmp	byte ptr [F38F],01
	jnz	0226

l21BB_0220:
	push	cs
	call	00E9
	jmp	022B

l21BB_0226:
	mov	byte ptr [F38F],01

l21BB_022B:
	push	cs
	call	00A1
	mov	byte ptr [F3D2],01
	mov	ax,[F396]
	mov	[F39A],ax
	mov	ax,[F398]
	mov	[F39C],ax
	mov	ax,[F3CE]
	mov	[F3D0],ax
	mov	byte ptr [F37C],00
	pop	bp
	retf

;; fn21BB_024D: 21BB:024D
fn21BB_024D proc
	push	bp
	mov	bp,sp
	mov	ax,0006
	call	far 2733:0530
	sub	sp,06
	xor	ax,ax
	push	ax
	mov	di,00CC
	pop	es
	mov	ax,es:[di]
	mov	[bp-04],ax
	xor	ax,ax
	push	ax
	mov	di,00CE
	pop	es
	mov	ax,es:[di]
	mov	[bp-06],ax
	cmp	word ptr [bp-06],00
	jz	0281

l21BB_027B:
	cmp	word ptr [bp-04],00
	jnz	0287

l21BB_0281:
	mov	byte ptr [bp-01],00
	jmp	029B

l21BB_0287:
	mov	ax,[bp-06]
	push	ax
	mov	di,[bp-04]
	pop	es
	cmp	byte ptr es:[di],CF
	mov	al,00
	jz	0298

l21BB_0297:
	inc	ax

l21BB_0298:
	mov	[bp-01],al

l21BB_029B:
	mov	al,[bp-01]
	mov	sp,bp
	pop	bp
	retf
21BB:02A2       50 53 51 52 56 57 1E 06 55 89 E5 83 EC 06   PSQRVW..U.....
21BB:02B0 B8 FB 28 8E D8 83 3E 70 F3 01 75 09 BA F8 03 EC ..(...>p..u.....
21BB:02C0 88 46 FB EB 07 BA F8 02 EC 88 46 FB 8A 46 FB 24 .F........F..F.$
21BB:02D0 40 3C 40 75 05 31 C0 A3 7E F3 8A 46 FB 8B 3E 7E @<@u.1..~..F..>~
21BB:02E0 F3 88 85 80 F3 FF 06 7E F3 83 3E 7E F3 03 74 03 .......~..>~..t.
21BB:02F0 E9 D0 01 A0 81 F3 30 E4 8B D0 A0 80 F3 24 03 30 ......0......$.0
21BB:0300 E4 B9 06 00 D3 E0 03 C2 89 46 FE A0 82 F3 30 E4 .........F....0.
21BB:0310 8B D0 A0 80 F3 24 0C 30 E4 B9 04 00 D3 E0 03 C2 .....$.0........
21BB:0320 89 46 FC 81 7E FE 80 00 7C 09 8B 46 FE 2D 00 01 .F..~...|..F.-..
21BB:0330 89 46 FE 81 7E FC 80 00 7C 09 8B 46 FC 2D 00 01 .F..~...|..F.-..
21BB:0340 89 46 FC A1 78 F3 03 46 FE A3 78 F3 A1 7A F3 03 .F..x..F..x..z..
21BB:0350 46 FC A3 7A F3 83 3E 78 F3 00 7D 05 31 C0 A3 78 F..z..>x..}.1..x
21BB:0360 F3 B8 8A 00 31 DB BA 80 1B 8B 0E 72 F3 8B 36 74 ....1......r..6t
21BB:0370 F3 8B 3E 76 F3 9A C7 15 33 27 9A E1 15 33 27 8B ..>v....3'...3'.
21BB:0380 C8 8B DA A1 78 F3 99 3B D3 7F 06 7C 25 3B C1 76 ....x..;...|%;.v
21BB:0390 21 B8 8A 00 31 DB BA 80 1B 8B 0E 72 F3 8B 36 74 !...1......r..6t
21BB:03A0 F3 8B 3E 76 F3 9A C7 15 33 27 9A E1 15 33 27 A3 ..>v....3'...3'.
21BB:03B0 78 F3 A1 F4 F2 31 D2 9A D5 15 33 27 8B 0E 72 F3 x....1....3'..r.
21BB:03C0 8B 36 74 F3 8B 3E 76 F3 9A C7 15 33 27 9A E1 15 .6t..>v....3'...
21BB:03D0 33 27 8B C8 8B DA A1 7A F3 99 3B D3 7C 06 7F 27 3'.....z..;.|..'
21BB:03E0 3B C1 73 23 A1 F4 F2 31 D2 9A D5 15 33 27 8B 0E ;.s#...1....3'..
21BB:03F0 72 F3 8B 36 74 F3 8B 3E 76 F3 9A C7 15 33 27 9A r..6t..>v....3'.
21BB:0400 E1 15 33 27 A3 7A F3 A1 F2 F2 31 D2 9A D5 15 33 ..3'.z....1....3
21BB:0410 27 8B 0E 72 F3 8B 36 74 F3 8B 3E 76 F3 9A C7 15 '..r..6t..>v....
21BB:0420 33 27 9A E1 15 33 27 8B C8 8B DA A1 7A F3 99 3B 3'...3'.....z..;
21BB:0430 D3 7F 06 7C 27 3B C1 76 23 A1 F2 F2 31 D2 9A D5 ...|';.v#...1...
21BB:0440 15 33 27 8B 0E 72 F3 8B 36 74 F3 8B 3E 76 F3 9A .3'..r..6t..>v..
21BB:0450 C7 15 33 27 9A E1 15 33 27 A3 7A F3 A1 78 F3 99 ..3'...3'.z..x..
21BB:0460 9A D5 15 33 27 8B 0E 72 F3 8B 36 74 F3 8B 3E 76 ...3'..r..6t..>v
21BB:0470 F3 9A C1 15 33 27 9A E1 15 33 27 A3 84 F3 A1 7A ....3'...3'....z
21BB:0480 F3 99 9A D5 15 33 27 8B 0E 72 F3 8B 36 74 F3 8B .....3'..r..6t..
21BB:0490 3E 76 F3 9A C1 15 33 27 9A E1 15 33 27 A3 86 F3 >v....3'...3'...
21BB:04A0 A0 80 F3 24 20 08 C0 B0 00 74 01 40 A2 88 F3 A0 ...$ ....t.@....
21BB:04B0 80 F3 24 10 08 C0 B0 00 74 01 40 A2 89 F3 31 C0 ..$.....t.@...1.
21BB:04C0 A3 7E F3 80 3E 7C F3 00 75 09 0E E8 8E FC C6 06 .~..>|..u.......
21BB:04D0 8E F3 01 B0 20 E6 20 89 EC 5D 07 1F 5F 5E 5A 59 .... . ..].._^ZY
21BB:04E0 5B 58 CF 18 4C 6F 61 64 69 6E 67 20 4D 6F 75 73 [X..Loading Mous
21BB:04F0 65 20 63 75 72 73 6F 72 73 2E 2E 2E 03 20 4F 4B e cursors.... OK

;; fn21BB_0500: 21BB:0500
fn21BB_0500 proc
	push	bp
	mov	bp,sp
	mov	ax,0086
	call	far 2733:0530
	sub	sp,0086
	mov	ax,01BA
	push	ax
	call	far 2733:028A
	mov	[F3CA],ax
	mov	[F3CC],dx
	mov	word ptr [bp-04],0001
	jmp	0529

l21BB_0526:
	inc	word ptr [bp-04]

l21BB_0529:
	mov	ax,01BA
	push	ax
	call	far 2733:028A
	mov	di,[bp-04]
	shl	di,01
	shl	di,01
	mov	[di+F39E],ax
	mov	[di+F3A0],dx
	cmp	word ptr [bp-04],0A
	jnz	0526

l21BB_0547:
	mov	di,F600
	push	ds
	push	di
	mov	di,04E3
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0861
	call	far 2733:04F4
	lea	di,[bp+FF7A]
	push	ss
	push	di
	mov	di,F2F6
	push	ds
	push	di
	call	far 2733:0AE2
	lea	di,[bp+FF7A]
	push	ss
	push	di
	mov	ax,0001
	push	ax
	call	far 2733:0B1D
	push	cs
	call	001B
	lea	di,[bp+FF7A]
	push	ss
	push	di
	push	word ptr [bp+08]
	push	word ptr [bp+06]
	call	far 2733:0C70
	mov	word ptr [bp-04],0001
	jmp	05A1

l21BB_059E:
	inc	word ptr [bp-04]

l21BB_05A1:
	mov	di,[bp-04]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	mov	byte ptr es:[di],12
	mov	di,[bp-04]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	mov	byte ptr es:[di+01],00
	mov	di,[bp-04]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	mov	byte ptr es:[di+02],12
	mov	di,[bp-04]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	mov	byte ptr es:[di+03],00
	cmp	word ptr [bp-04],0A
	jnz	059E

l21BB_05E6:
	mov	word ptr [bp-06],0001
	jmp	05F0

l21BB_05ED:
	inc	word ptr [bp-06]

l21BB_05F0:
	lea	di,[bp+FF7A]
	push	ss
	push	di
	les	di,[F3CA]
	push	es
	push	di
	mov	ax,0144
	push	ax
	lea	di,[bp-02]
	push	ss
	push	di
	call	far 2733:0C08
	push	cs
	call	001B
	mov	word ptr [bp-04],0001
	jmp	0618

l21BB_0615:
	inc	word ptr [bp-04]

l21BB_0618:
	mov	ax,[bp-04]
	les	di,[F3CA]
	add	di,ax
	mov	dl,es:[di-01]
	mov	ax,[bp-04]
	add	ax,0004
	mov	di,[bp-06]
	shl	di,01
	shl	di,01
	les	di,[di+F39E]
	add	di,ax
	mov	es:[di-01],dl
	cmp	word ptr [bp-04],0144
	jnz	0615

l21BB_0643:
	cmp	word ptr [bp-06],0A
	jnz	05ED

l21BB_0649:
	lea	di,[bp+FF7A]
	push	ss
	push	di
	call	far 2733:0B9E
	mov	di,F600
	push	ds
	push	di
	mov	di,04FC
	push	cs
	push	di
	xor	ax,ax
	push	ax
	call	far 2733:09DB
	call	far 2733:0840
	call	far 2733:04F4
	mov	sp,bp
	pop	bp
	retf	0004

;; fn21BB_0676: 21BB:0676
fn21BB_0676 proc
	push	bp
	mov	bp,sp
	mov	ax,0088
	call	far 2733:0530
	sub	sp,0088
	xor	ax,ax
	mov	[28FB],ax
	mov	word ptr [F2F2],01DF
	mov	ax,[bp+06]
	mov	[F370],ax
	mov	ax,0000
	int	33
	xor	ax,ax
	mov	[F37E],ax
	xor	ax,ax
	mov	[F378],ax
	xor	ax,ax
	mov	[F37A],ax
	xor	ax,ax
	mov	[F384],ax
	xor	ax,ax
	mov	[F386],ax
	mov	byte ptr [F388],00
	mov	byte ptr [F389],00
	mov	byte ptr [F3D2],00
	cmp	word ptr [F370],01
	jnz	06E9

l21BB_06CA:
	mov	al,0C
	push	ax
	mov	di,F38A
	push	ds
	push	di
	call	far 26BA:0072
	mov	al,0C
	push	ax
	mov	di,02A2
	mov	ax,21BB
	push	ax
	push	di
	call	far 26BA:008A
	jmp	0706

l21BB_06E9:
	mov	al,0B
	push	ax
	mov	di,F38A
	push	ds
	push	di
	call	far 26BA:0072
	mov	al,0B
	push	ax
	mov	di,02A2
	mov	ax,21BB
	push	ax
	push	di
	call	far 26BA:008A

l21BB_0706:
	mov	byte ptr [F390],00
	mov	byte ptr [F3D2],00
	xor	ax,ax
	mov	[F3D0],ax
	mov	sp,bp
	pop	bp
	retf	0002

;; fn21BB_071B: 21BB:071B
fn21BB_071B proc
	push	bp
	mov	bp,sp
	mov	ax,0002
	call	far 2733:0530
	sub	sp,02
	cmp	word ptr [F370],01
	jnz	0742

l21BB_0730:
	mov	al,0C
	push	ax
	push	word ptr [F38C]
	push	word ptr [F38A]
	call	far 26BA:008A
	jmp	0752

l21BB_0742:
	mov	al,0B
	push	ax
	push	word ptr [F38C]
	push	word ptr [F38A]
	call	far 26BA:008A

l21BB_0752:
	push	word ptr [F3CC]
	push	word ptr [F3CA]
	mov	ax,01BA
	push	ax
	call	far 2733:029F
	mov	word ptr [bp-02],0001
	jmp	076D

l21BB_076A:
	inc	word ptr [bp-02]

l21BB_076D:
	mov	di,[bp-02]
	shl	di,01
	shl	di,01
	push	word ptr [di+F3A0]
	push	word ptr [di+F39E]
	mov	ax,01BA
	push	ax
	call	far 2733:029F
	cmp	word ptr [bp-02],0A
	jnz	076A

l21BB_078B:
	mov	sp,bp
	pop	bp
	retf
21BB:078F                                              00                .
;;; Segment 2234 (2234:0000)

;; fn2234_0000: 2234:0000
fn2234_0000 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,0003
	int	10
	leave
	retf

;; fn2234_0011: 2234:0011
fn2234_0011 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,[bp+06]
	mov	[F4E4],ax
	mov	word ptr [1042],0000
	mov	word ptr [0F98],0280
	xor	ah,ah
	mov	[0F9A],ah
	mov	ax,4F02
	mov	bx,0101
	int	10
	leave
	retf	0002

;; fn2234_003F: 2234:003F
fn2234_003F proc
	push	ax
	mov	[0F9A],ah
	mov	al,ah
	mov	ah,00
	cmp	word ptr [F4E4],01
	ja	0060

l2234_004F:
	pusha
	push	es
	push	ds
	mov	dx,ax
	xor	bx,bx
	mov	ax,4F05
	int	10
	pop	ds
	pop	es
	popa
	jmp	0073

l2234_0060:
	push	bx
	push	ax
	push	dx
	mov	bx,0000
	shl	ax,04
	mov	dx,ax
	mov	ax,4F05
	int	10
	pop	dx
	pop	ax
	pop	bx

l2234_0073:
	pop	ax
	retf

;; fn2234_0075: 2234:0075
fn2234_0075 proc
	inc	byte ptr [0F9A]
	mov	ah,[0F9A]
	call	far 2234:003F
	retf

;; fn2234_0083: 2234:0083
fn2234_0083 proc
	dec	byte ptr [0F9A]
	mov	ah,[0F9A]
	call	far 2234:003F
	retf

;; fn2234_0091: 2234:0091
fn2234_0091 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+0A]
	mov	ax,[0F98]
	mul	word ptr [bp+08]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	mov	[0F9A],ah
	call	far 2234:003F
	mov	es,[0F96]
	mov	al,[bp+06]
	mov	es:[di],al
	leave
	retf	0006

;; fn2234_00C2: 2234:00C2
fn2234_00C2 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	word ptr [bp+06],00
	jz	00FB

l2234_00D2:
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	mov	al,[0F9B]
	push	ax
	call	far 2234:0091
	mov	cx,[bp+06]
	dec	cx
	jz	00FB

l2234_00E7:
	add	di,[0F98]
	jc	00F4

l2234_00ED:
	mov	es:[di],al
	loop	00E7

l2234_00F2:
	jmp	00FB

l2234_00F4:
	call	far 2234:0075
	jmp	00ED

l2234_00FB:
	leave
	retf	0006

;; fn2234_00FF: 2234:00FF
fn2234_00FF proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cmp	word ptr [bp+06],00
	jz	0135

l2234_010F:
	push	word ptr [bp+0A]
	push	word ptr [bp+08]
	mov	al,[0F9B]
	push	ax
	call	far 2234:0091
	mov	cx,[bp+06]
	dec	cx
	jz	0135

l2234_0124:
	inc	di
	jz	012E

l2234_0127:
	mov	es:[di],al
	loop	0124

l2234_012C:
	jmp	0135

l2234_012E:
	call	far 2234:0075
	jmp	0127

l2234_0135:
	leave
	retf	0006

;; fn2234_0139: 2234:0139
fn2234_0139 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cld
	mov	ax,[bp+0C]
	mov	cx,[bp+08]
	cmp	ax,cx
	jc	0152

l2234_014E:
	xchg	ax,cx
	mov	[bp+0C],ax

l2234_0152:
	sub	cx,ax
	inc	cx
	mov	di,ax
	mov	si,[bp+06]
	mov	ax,[bp+0A]
	cmp	ax,si
	jc	0165

l2234_0161:
	xchg	ax,si
	mov	[bp+0A],ax

l2234_0165:
	sub	si,ax
	inc	si
	mov	bx,[0F98]
	mul	bx
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	mov	al,[0F9B]
	sub	bx,cx
	mov	dx,cx

l2234_0185:
	mov	cx,dx

l2234_0187:
	mov	es:[di],al
	inc	di
	jz	0198

l2234_018D:
	loop	0187

l2234_018F:
	add	di,bx
	jc	019F

l2234_0193:
	dec	si
	jnz	0185

l2234_0196:
	jmp	01A6

l2234_0198:
	call	far 2234:0075
	jmp	018D

l2234_019F:
	call	far 2234:0075
	jmp	0193

l2234_01A6:
	leave
	retf	0008

;; fn2234_01AA: 2234:01AA
fn2234_01AA proc
	lea	si,[3A58]
	mov	ah,0E
	mul	ah
	add	si,ax
	mov	dx,[0FAE]
	mov	bl,[0F9B]
	mov	bh,[0F9C]
	mov	cl,0E
	xor	ah,ah
	cmp	ah,[0F9D]
	jz	0213

l2234_01CA:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_01D0:
	shl	al,01
	jnc	01D7

l2234_01D4:
	mov	es:[di],bl

l2234_01D7:
	inc	di
	jz	01F0

l2234_01DA:
	dec	ch
	jnz	01D0

l2234_01DE:
	add	dx,[0F98]
	jc	01F9

l2234_01E4:
	add	dx,[0F98]
	jc	0206

l2234_01EA:
	dec	cl
	jnz	01CA

l2234_01EE:
	jmp	024E

l2234_01F0:
	call	far 2234:0075
	inc	ah
	jmp	01DA

l2234_01F9:
	or	ah,ah
	jnz	01E4

l2234_01FD:
	call	far 2234:0075
	inc	ah
	jmp	01E4

l2234_0206:
	or	ah,ah
	jnz	01E4

l2234_020A:
	call	far 2234:0075
	inc	ah
	jmp	01EA

l2234_0213:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_0219:
	shl	al,01
	jnc	0222

l2234_021D:
	mov	es:[di],bl
	jmp	0225

l2234_0222:
	mov	es:[di],bh

l2234_0225:
	inc	di
	jz	0238

l2234_0228:
	dec	ch
	jnz	0219

l2234_022C:
	add	dx,[0F98]
	jc	0241

l2234_0232:
	dec	cl
	jnz	0213

l2234_0236:
	jmp	024E

l2234_0238:
	call	far 2234:0075
	inc	ah
	jmp	0228

l2234_0241:
	or	ah,ah
	jnz	0232

l2234_0245:
	call	far 2234:0075
	inc	ah
	jmp	0232

l2234_024E:
	mov	bx,[0FB0]
	add	[0FAE],bx
	jnc	025D

l2234_0258:
	call	far 2234:0075

l2234_025D:
	ret

;; fn2234_025E: 2234:025E
fn2234_025E proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+0A]
	mov	ax,[0F98]
	mul	word ptr [bp+08]
	add	ax,di
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	al,[bp+06]
	call	01AA
	mov	di,[bp+0A]
	mov	ax,[0F98]
	mul	word ptr [bp+08]
	add	ax,di
	add	ax,[0F98]
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	al,[bp+06]
	call	01AA
	leave
	retf	0006

;; fn2234_02B6: 2234:02B6
fn2234_02B6 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	ds
	mov	di,[bp+0C]
	mov	ax,[0F98]
	mul	word ptr [bp+0A]
	add	ax,di
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	bx,ds
	lds	si,[bp+06]
	mov	dx,ds
	lodsb
	xor	ch,ch
	mov	cl,al
	jcxz	0301

l2234_02EC:
	mov	ds,dx
	lodsb
	mov	ds,bx
	pusha
	call	01AA
	or	ah,ah
	jz	02FE

l2234_02F9:
	call	far 2234:0083

l2234_02FE:
	popa
	loop	02EC

l2234_0301:
	pop	ds
	push	ds
	mov	di,[bp+0C]
	mov	ax,[0F98]
	mul	word ptr [bp+0A]
	add	ax,di
	add	ax,[0F98]
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[2098]
	cld
	mov	bx,ds
	lds	si,[bp+06]
	mov	dx,ds
	lodsb
	xor	ch,ch
	mov	cl,al
	jcxz	0347

l2234_0332:
	mov	ds,dx
	lodsb
	mov	ds,bx
	pusha
	call	01AA
	or	ah,ah
	jz	0344

l2234_033F:
	call	far 2234:0083

l2234_0344:
	popa
	loop	0332

l2234_0347:
	pop	ds
	leave
	retf	0008

;; fn2234_034C: 2234:034C
fn2234_034C proc
	cmp	word ptr [F4EA],02
	jz	0360

l2234_0353:
	cmp	word ptr [F4EA],03
	jz	0366

l2234_035A:
	lea	si,[0A58]
	jmp	036A

l2234_0360:
	lea	si,[1A58]
	jmp	036A

l2234_0366:
	lea	si,[2A58]

l2234_036A:
	mov	ah,10
	mul	ah
	add	si,ax
	mov	dx,[0FAE]
	mov	bl,[0F9B]
	mov	bh,[0F9C]
	mov	cl,10
	xor	ah,ah
	cmp	ah,[0F9D]
	jz	03BC

l2234_0386:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_038C:
	shl	al,01
	jnc	0393

l2234_0390:
	mov	es:[di],bl

l2234_0393:
	inc	di
	jz	03A6

l2234_0396:
	dec	ch
	jnz	038C

l2234_039A:
	add	dx,[0F98]
	jc	03AF

l2234_03A0:
	dec	cl
	jnz	0386

l2234_03A4:
	jmp	03F7

l2234_03A6:
	call	far 2234:0075
	inc	ah
	jmp	0396

l2234_03AF:
	or	ah,ah
	jnz	03A0

l2234_03B3:
	call	far 2234:0075
	inc	ah
	jmp	03A0

l2234_03BC:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_03C2:
	shl	al,01
	jnc	03CB

l2234_03C6:
	mov	es:[di],bl
	jmp	03CE

l2234_03CB:
	mov	es:[di],bh

l2234_03CE:
	inc	di
	jz	03E1

l2234_03D1:
	dec	ch
	jnz	03C2

l2234_03D5:
	add	dx,[0F98]
	jc	03EA

l2234_03DB:
	dec	cl
	jnz	03BC

l2234_03DF:
	jmp	03F7

l2234_03E1:
	call	far 2234:0075
	inc	ah
	jmp	03D1

l2234_03EA:
	or	ah,ah
	jnz	03DB

l2234_03EE:
	call	far 2234:0075
	inc	ah
	jmp	03DB

l2234_03F7:
	mov	bx,[0FB0]
	add	[0FAE],bx
	jnc	0406

l2234_0401:
	call	far 2234:0075

l2234_0406:
	ret

;; fn2234_0407: 2234:0407
fn2234_0407 proc
	mov	word ptr [F4E6],0020
	mov	word ptr [F4E8],0004
	cmp	word ptr [F4EA],02
	jz	0427

l2234_041A:
	cmp	word ptr [F4EA],03
	jz	042D

l2234_0421:
	lea	si,[0A58]
	jmp	0431

l2234_0427:
	lea	si,[1A58]
	jmp	0431

l2234_042D:
	lea	si,[2A58]

l2234_0431:
	mov	ah,10
	mul	ah
	add	si,ax
	mov	dx,[0FAE]
	mov	bl,[0F9B]
	mov	bh,[0F9C]
	mov	cl,10
	xor	ah,ah
	cmp	ah,[0F9D]
	jz	0496

l2234_044D:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_0453:
	dec	word ptr [F4E6]
	cmp	word ptr [F4E6],00
	jz	04D1

l2234_045E:
	shl	al,01
	jnc	046D

l2234_0462:
	add	di,[F4E8]
	mov	es:[di],bl
	sub	di,[F4E8]

l2234_046D:
	inc	di
	jz	0480

l2234_0470:
	dec	ch
	jnz	0453

l2234_0474:
	add	dx,[0F98]
	jc	0489

l2234_047A:
	dec	cl
	jnz	044D

l2234_047E:
	jmp	04DD

l2234_0480:
	call	far 2234:0075
	inc	ah
	jmp	0470

l2234_0489:
	or	ah,ah
	jnz	047A

l2234_048D:
	call	far 2234:0075
	inc	ah
	jmp	047A

l2234_0496:
	mov	di,dx
	lodsb
	mov	ch,08

l2234_049C:
	shl	al,01
	jnc	04A5

l2234_04A0:
	mov	es:[di],bl
	jmp	04A8

l2234_04A5:
	mov	es:[di],bh

l2234_04A8:
	inc	di
	jz	04BB

l2234_04AB:
	dec	ch
	jnz	049C

l2234_04AF:
	add	dx,[0F98]
	jc	04C4

l2234_04B5:
	dec	cl
	jnz	0496

l2234_04B9:
	jmp	04DD

l2234_04BB:
	call	far 2234:0075
	inc	ah
	jmp	04AB

l2234_04C4:
	or	ah,ah
	jnz	04B5

l2234_04C8:
	call	far 2234:0075
	inc	ah
	jmp	04B5

l2234_04D1:
	mov	word ptr [F4E6],0018
	dec	word ptr [F4E8]
	jmp	045E

l2234_04DD:
	mov	bx,[0FB0]
	add	[0FAE],bx
	jnc	04EC

l2234_04E7:
	call	far 2234:0075

l2234_04EC:
	ret

;; fn2234_04ED: 2234:04ED
fn2234_04ED proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	di,[bp+0A]
	mov	ax,[0F98]
	mul	word ptr [bp+08]
	add	ax,di
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	al,[bp+06]
	call	034C
	leave
	retf	0006

;; fn2234_051E: 2234:051E
fn2234_051E proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	ds
	mov	di,[bp+0C]
	mov	ax,[0F98]
	mul	word ptr [bp+0A]
	add	ax,di
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	bx,ds
	lds	si,[bp+06]
	mov	dx,ds
	lodsb
	xor	ch,ch
	mov	cl,al
	jcxz	0569

l2234_0554:
	mov	ds,dx
	lodsb
	mov	ds,bx
	pusha
	call	034C
	or	ah,ah
	jz	0566

l2234_0561:
	call	far 2234:0083

l2234_0566:
	popa
	loop	0554

l2234_0569:
	pop	ds
	leave
	retf	0008

;; fn2234_056E: 2234:056E
fn2234_056E proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	push	ds
	mov	di,[bp+0C]
	mov	ax,[0F98]
	mul	word ptr [bp+0A]
	add	ax,di
	mov	[0FAE],ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	bx,ds
	lds	si,[bp+06]
	mov	dx,ds
	lodsb
	xor	ch,ch
	mov	cl,al
	jcxz	05B9

l2234_05A4:
	mov	ds,dx
	lodsb
	mov	ds,bx
	pusha
	call	0407
	or	ah,ah
	jz	05B6

l2234_05B1:
	call	far 2234:0083

l2234_05B6:
	popa
	loop	05A4

l2234_05B9:
	pop	ds
	leave
	retf	0008

;; fn2234_05BE: 2234:05BE
fn2234_05BE proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	ax,[bp+08]
	sub	ax,[bp+0C]
	jnc	05D2

l2234_05D0:
	neg	ax

l2234_05D2:
	inc	ax
	mov	dx,[bp+06]
	sub	dx,[bp+0A]
	jnc	05DD

l2234_05DB:
	neg	dx

l2234_05DD:
	inc	dx
	mul	dx
	add	ax,0004
	adc	dx,00
	leave
	retf	0008

;; fn2234_05EA: 2234:05EA
fn2234_05EA proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	si,[bp+10]
	mov	dx,[bp+0E]
	mov	ax,[bp+0C]
	sub	ax,si
	jnc	0606

l2234_0601:
	mov	si,[bp+0C]
	neg	ax

l2234_0606:
	inc	ax
	mov	bx,[bp+0A]
	sub	bx,dx
	jnc	0613

l2234_060E:
	mov	dx,[bp+0A]
	neg	bx

l2234_0613:
	inc	bx
	mov	[bp+10],ax
	mov	[bp+0E],bx
	mov	bx,[0F98]
	mov	ax,bx
	sub	bx,[bp+10]
	mul	dx
	add	si,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	les	di,[bp+06]
	mov	ds,[0F96]
	cld
	mov	ax,[bp+10]
	stosw
	mov	ax,[bp+0E]
	stosw
	mov	dx,ax

l2234_0643:
	mov	cx,[bp+10]

l2234_0646:
	mov	al,[si]
	stosb
	inc	si
	jz	0657

l2234_064C:
	loop	0646

l2234_064E:
	add	si,bx
	jc	0665

l2234_0652:
	dec	dx
	jnz	0643

l2234_0655:
	jmp	0673

l2234_0657:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	064C

l2234_0665:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	0652

l2234_0673:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_067C: 2234:067C
fn2234_067C proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+0C]
	mov	ax,bx
	mul	word ptr [bp+0A]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	lodsw
	mov	[bp+0C],ax
	sub	bx,ax
	lodsw
	mov	dx,ax

l2234_06AF:
	mov	cx,[bp+0C]

l2234_06B2:
	lodsb
	mov	es:[di],al
	inc	di
	jz	06C4

l2234_06B9:
	loop	06B2

l2234_06BB:
	add	di,bx
	jc	06D2

l2234_06BF:
	dec	dx
	jnz	06AF

l2234_06C2:
	jmp	06E0

l2234_06C4:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	06B9

l2234_06D2:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	06BF

l2234_06E0:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	0008

;; fn2234_06E9: 2234:06E9
fn2234_06E9 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+0C]
	mov	ax,bx
	mul	word ptr [bp+0A]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	lodsw
	mov	[bp+0C],ax
	sub	bx,ax
	lodsw
	mov	dx,ax

l2234_071C:
	mov	cx,[bp+0C]

l2234_071F:
	lodsb
	cmp	al,0F
	jz	0727

l2234_0724:
	mov	es:[di],al

l2234_0727:
	inc	di
	jz	0735

l2234_072A:
	loop	071F

l2234_072C:
	add	di,bx
	jc	0743

l2234_0730:
	dec	dx
	jnz	071C

l2234_0733:
	jmp	0751

l2234_0735:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	072A

l2234_0743:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	0730

l2234_0751:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	0008

;; fn2234_075A: 2234:075A
fn2234_075A proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+0C]
	mov	ax,bx
	mul	word ptr [bp+0A]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	lodsw
	mov	[bp+0C],ax
	sub	bx,ax
	lodsw
	mov	dx,ax

l2234_078D:
	mov	cx,[bp+0C]

l2234_0790:
	lodsb
	cmp	al,20
	jz	0798

l2234_0795:
	mov	es:[di],al

l2234_0798:
	inc	di
	jz	07A6

l2234_079B:
	loop	0790

l2234_079D:
	add	di,bx
	jc	07B4

l2234_07A1:
	dec	dx
	jnz	078D

l2234_07A4:
	jmp	07C2

l2234_07A6:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	079B

l2234_07B4:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	07A1

l2234_07C2:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	0008

;; fn2234_07CB: 2234:07CB
fn2234_07CB proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+10]
	mov	ax,bx
	mul	word ptr [bp+0E]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	mov	ax,[bp+0C]
	mov	[bp+10],ax
	sub	bx,ax
	mov	ax,[bp+0A]
	mov	dx,ax

l2234_0802:
	mov	cx,[bp+10]

l2234_0805:
	lodsb
	mov	es:[di],al
	inc	di
	jz	0817

l2234_080C:
	loop	0805

l2234_080E:
	add	di,bx
	jc	0825

l2234_0812:
	dec	dx
	jnz	0802

l2234_0815:
	jmp	0833

l2234_0817:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	080C

l2234_0825:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	0812

l2234_0833:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_083C: 2234:083C
fn2234_083C proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+10]
	mov	ax,bx
	mul	word ptr [bp+0E]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	mov	ax,[bp+0C]
	mov	[bp+10],ax
	sub	bx,ax
	mov	ax,[bp+0A]
	mov	dx,ax

l2234_0873:
	mov	cx,[bp+10]

l2234_0876:
	lodsb
	add	al,E0
	mov	es:[di],al
	inc	di
	jz	088A

l2234_087F:
	loop	0876

l2234_0881:
	add	di,bx
	jc	0898

l2234_0885:
	dec	dx
	jnz	0873

l2234_0888:
	jmp	08A6

l2234_088A:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	087F

l2234_0898:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	0885

l2234_08A6:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_08AF: 2234:08AF
fn2234_08AF proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+10]
	mov	ax,bx
	mul	word ptr [bp+0E]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	lds	si,[bp+06]
	mov	ax,[bp+0C]
	mov	[bp+10],ax
	sub	bx,ax
	mov	ax,[bp+0A]
	mov	dx,ax

l2234_08E6:
	mov	cx,[bp+10]

l2234_08E9:
	lodsb
	cmp	al,0F
	jz	08F1

l2234_08EE:
	mov	es:[di],al

l2234_08F1:
	inc	di
	jz	08FF

l2234_08F4:
	loop	08E9

l2234_08F6:
	add	di,bx
	jc	090D

l2234_08FA:
	dec	dx
	jnz	08E6

l2234_08FD:
	jmp	091B

l2234_08FF:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	08F4

l2234_090D:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	08FA

l2234_091B:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_0924: 2234:0924
fn2234_0924 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+10]
	mov	ax,bx
	mul	word ptr [bp+0E]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	ax,[bp+0C]
	mov	[bp+10],ax
	sub	bx,ax
	mov	ax,[bp+0A]
	mov	dx,ax

l2234_0958:
	mov	cx,[bp+10]

l2234_095B:
	mov	al,es:[di]
	cmp	al,[bp+08]
	jnz	0969

l2234_0963:
	mov	al,[bp+06]
	mov	es:[di],al

l2234_0969:
	inc	di
	jz	0977

l2234_096C:
	loop	095B

l2234_096E:
	add	di,bx
	jc	0985

l2234_0972:
	dec	dx
	jnz	0958

l2234_0975:
	jmp	0993

l2234_0977:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	096C

l2234_0985:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	0972

l2234_0993:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_099C: 2234:099C
fn2234_099C proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	bx,[0F98]
	mov	di,[bp+10]
	mov	ax,bx
	mul	word ptr [bp+0E]
	add	di,ax
	mov	ah,dl
	adc	ah,00
	call	far 2234:003F
	mov	es,[0F96]
	cld
	mov	ax,[bp+0C]
	mov	[bp+10],ax
	sub	bx,ax
	mov	ax,[bp+0A]
	mov	dx,ax

l2234_09D0:
	mov	cx,[bp+10]

l2234_09D3:
	mov	al,es:[di]
	cmp	al,[bp+08]
	jz	09E1

l2234_09DB:
	mov	al,[bp+06]
	mov	es:[di],al

l2234_09E1:
	inc	di
	jz	09EF

l2234_09E4:
	loop	09D3

l2234_09E6:
	add	di,bx
	jc	09FD

l2234_09EA:
	dec	dx
	jnz	09D0

l2234_09ED:
	jmp	0A0B

l2234_09EF:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	09E4

l2234_09FD:
	push	ds
	mov	ax,28FB
	mov	ds,ax
	call	far 2234:0075
	pop	ds
	jmp	09EA

l2234_0A0B:
	mov	ax,28FB
	mov	ds,ax
	leave
	retf	000C

;; fn2234_0A14: 2234:0A14
fn2234_0A14 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	mov	dx,03C8
	mov	al,[bp+0C]
	out	dx,al
	inc	dx
	mov	al,[bp+0A]
	out	dx,al
	mov	al,[bp+08]
	out	dx,al
	mov	al,[bp+06]
	out	dx,al
	leave
	retf	0008

;; fn2234_0A36: 2234:0A36
fn2234_0A36 proc
	push	bp
	mov	bp,sp
	xor	ax,ax
	call	far 2733:0530
	cld
	les	di,[bp+06]
	mov	dx,03C7
	mov	al,[bp+0A]
	out	dx,al
	add	dl,02
	in	al,dx
	stosb
	in	al,dx
	stosb
	in	al,dx
	stosb
	leave
	retf	0006
2234:0A58                         00 00 00 00 00 00 00 00         ........
2234:0A60 00 00 00 00 00 00 00 00 00 00 7E 81 A5 81 81 BD ..........~.....
2234:0A70 99 81 81 7E 00 00 00 00 00 00 7E FF DB FF FF C3 ...~......~.....
2234:0A80 E7 FF FF 7E 00 00 00 00 00 00 00 00 6C FE FE FE ...~........l...
2234:0A90 FE 7C 38 10 00 00 00 00 00 00 00 00 10 38 7C FE .|8..........8|.
2234:0AA0 7C 38 10 00 00 00 00 00 00 00 00 18 3C 3C E7 E7 |8..........<<..
2234:0AB0 E7 99 18 3C 00 00 00 00 00 00 00 18 3C 7E FF FF ...<........<~..
2234:0AC0 7E 18 18 3C 00 00 00 00 00 00 00 00 00 00 18 3C ~..<...........<
2234:0AD0 3C 18 00 00 00 00 00 00 FF FF FF FF FF FF E7 C3 <...............
2234:0AE0 C3 E7 FF FF FF FF FF FF 00 00 00 00 00 3C 66 42 .............<fB
2234:0AF0 42 66 3C 00 00 00 00 00 FF FF FF FF FF C3 99 BD Bf<.............
2234:0B00 BD 99 C3 FF FF FF FF FF 00 00 1E 0E 1A 32 78 CC .............2x.
2234:0B10 CC CC CC 78 00 00 00 00 00 00 3C 66 66 66 66 3C ...x......<ffff<
2234:0B20 18 7E 18 18 00 00 00 00 00 00 3F 33 3F 30 30 30 .~........?3?000
2234:0B30 30 70 F0 E0 00 00 00 00 00 00 7F 63 7F 63 63 63 0p.........c.ccc
2234:0B40 63 67 E7 E6 C0 00 00 00 00 00 00 18 18 DB 3C E7 cg............<.
2234:0B50 3C DB 18 18 00 00 00 00 00 80 C0 E0 F0 F8 FE F8 <...............
2234:0B60 F0 E0 C0 80 00 00 00 00 00 02 06 0E 1E 3E FE 3E .............>.>
2234:0B70 1E 0E 06 02 00 00 00 00 00 00 18 3C 7E 18 18 18 ...........<~...
2234:0B80 18 7E 3C 18 00 00 00 00 00 00 66 66 66 66 66 66 .~<.......ffffff
2234:0B90 66 00 66 66 00 00 00 00 00 00 7F DB DB DB 7B 1B f.ff..........{.
2234:0BA0 1B 1B 1B 1B 00 00 00 00 00 7C C6 60 38 6C C6 C6 .........|.`8l..
2234:0BB0 6C 38 0C C6 7C 00 00 00 00 00 00 00 00 00 00 00 l8..|...........
2234:0BC0 FE FE FE FE 00 00 00 00 00 00 18 3C 7E 18 18 18 ...........<~...
2234:0BD0 18 7E 3C 18 7E 00 00 00 00 00 18 3C 7E 18 18 18 .~<.~......<~...
2234:0BE0 18 18 18 18 00 00 00 00 00 00 18 18 18 18 18 18 ................
2234:0BF0 18 7E 3C 18 00 00 00 00 00 00 00 00 00 18 0C FE .~<.............
2234:0C00 0C 18 00 00 00 00 00 00 00 00 00 00 00 30 60 FE .............0`.
2234:0C10 60 30 00 00 00 00 00 00 00 00 00 00 00 C0 C0 C0 `0..............
2234:0C20 C0 FE 00 00 00 00 00 00 00 00 00 00 00 28 6C FE .............(l.
2234:0C30 6C 28 00 00 00 00 00 00 00 00 00 00 10 38 38 7C l(...........88|
2234:0C40 7C FE FE 00 00 00 00 00 00 00 00 00 FE FE 7C 7C |.............||
2234:0C50 38 38 10 00 00 00 00 00 00 00 00 00 00 00 00 00 88..............
2234:0C60 00 00 00 00 00 00 00 00 00 00 10 18 18 18 18 18 ................
2234:0C70 08 00 10 18 00 00 00 00 00 66 66 66 24 00 00 00 .........fff$...
2234:0C80 00 00 00 00 00 00 00 00 00 00 00 6C 6C FE 6C 6C ...........ll.ll
2234:0C90 6C FE 6C 6C 00 00 00 00 18 18 7C C6 C2 C0 7C 06 l.ll......|...|.
2234:0CA0 86 C6 7C 18 18 00 00 00 00 00 00 00 C2 C6 0C 18 ..|.............
2234:0CB0 30 60 C6 86 00 00 00 00 00 00 38 6C 6C 38 76 DC 0`........8ll8v.
2234:0CC0 CC CC CC 76 00 00 00 00 00 30 30 30 60 00 00 00 ...v.....000`...
2234:0CD0 00 00 00 00 00 00 00 00 00 00 06 0C 18 30 30 30 .............000
2234:0CE0 30 18 0C 06 00 00 00 00 00 00 60 30 18 0C 0C 0C 0.........`0....
2234:0CF0 0C 18 30 60 00 00 00 00 00 00 00 00 00 66 3C FF ..0`.........f<.
2234:0D00 3C 66 00 00 00 00 00 00 00 00 00 00 00 18 18 7E <f.............~
2234:0D10 18 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:0D20 00 10 18 18 30 00 00 00 00 00 00 00 00 00 00 FE ....0...........
2234:0D30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:0D40 00 00 10 18 00 00 00 00 00 00 00 00 02 06 0C 18 ................
2234:0D50 30 60 C0 80 00 00 00 00 00 00 78 DC C6 C6 C6 C6 0`........x.....
2234:0D60 C6 C6 76 3C 00 00 00 00 00 00 08 18 38 78 18 18 ..v<........8x..
2234:0D70 18 18 18 08 00 00 00 00 00 00 78 CC 06 0C 18 30 ..........x....0
2234:0D80 60 C0 C2 FE 00 00 00 00 00 00 78 CC 06 06 3C 06 `.........x...<.
2234:0D90 06 C6 6C 38 00 00 00 00 00 00 08 1C 3C 6C CC 8C ..l8........<l..
2234:0DA0 FE 0C 0C 04 00 00 00 00 00 00 FE C0 C0 60 38 0C .............`8.
2234:0DB0 06 C6 66 3C 00 00 00 00 00 00 38 60 C0 C0 F8 CC ..f<......8`....
2234:0DC0 C6 C6 66 3C 00 00 00 00 00 00 FE C6 06 06 06 0C ..f<............
2234:0DD0 18 30 30 30 00 00 00 00 00 00 78 CC C6 C6 C6 7C .000......x....|
2234:0DE0 C6 C6 66 3C 00 00 00 00 00 00 78 CC C6 66 3E 06 ..f<......x..f>.
2234:0DF0 06 0C 18 70 00 00 00 00 00 00 00 00 10 18 00 00 ...p............
2234:0E00 00 10 18 00 00 00 00 00 00 00 00 00 10 18 00 00 ................
2234:0E10 00 10 18 18 30 00 00 00 00 00 00 06 0C 18 30 60 ....0.........0`
2234:0E20 30 18 0C 06 00 00 00 00 00 00 00 00 00 00 FE 00 0...............
2234:0E30 00 FE 00 00 00 00 00 00 00 00 00 60 30 18 0C 06 ...........`0...
2234:0E40 0C 18 30 60 00 00 00 00 00 00 78 CC 46 06 0C 18 ..0`......x.F...
2234:0E50 18 00 18 08 00 00 00 00 00 00 00 7C C6 C6 DE DE ...........|....
2234:0E60 DE DC C0 7C 00 00 00 00 00 00 E0 F0 D8 CC C6 FE ...|............
2234:0E70 C6 C6 C6 42 00 00 00 00 00 00 F0 D8 CC C6 C6 FC ...B............
2234:0E80 C6 C6 C6 7C 00 00 00 00 00 00 78 CC C6 C0 C0 C0 ...|......x.....
2234:0E90 C0 E2 76 3C 00 00 00 00 00 00 F0 D8 CC C6 C6 C6 ..v<............
2234:0EA0 C6 C6 EC 78 00 00 00 00 00 00 F8 CC C6 C0 C0 F8 ...x............
2234:0EB0 C0 C2 C6 FC 00 00 00 00 00 00 F8 CC C6 C0 C0 F8 ................
2234:0EC0 C0 C0 C0 40 00 00 00 00 00 00 78 CC C6 C0 C0 CC ...@......x.....
2234:0ED0 C6 E6 76 3C 00 00 00 00 00 00 84 C6 C6 C6 FE C6 ..v<............
2234:0EE0 C6 C6 C6 42 00 00 00 00 00 00 10 18 18 18 18 18 ...B............
2234:0EF0 18 18 18 08 00 00 00 00 00 00 08 0C 0C 0C 0C 0C ................
2234:0F00 0C 8C D8 70 00 00 00 00 00 00 C2 C2 C6 CC D8 F0 ...p............
2234:0F10 D8 CC C6 C2 00 00 00 00 00 00 C0 C0 C0 C0 C0 C0 ................
2234:0F20 C0 C2 E6 7C 00 00 00 00 00 00 82 C6 EE FE D6 C6 ...|............
2234:0F30 C6 C6 C6 42 00 00 00 00 00 00 C2 E2 F2 FA DE CE ...B............
2234:0F40 C6 C2 C2 C2 00 00 00 00 00 00 78 CC C6 C6 C6 C6 ..........x.....
2234:0F50 C6 C6 66 3C 00 00 00 00 00 00 F0 D8 CC C6 C6 FC ..f<............
2234:0F60 C0 C0 C0 C0 00 00 00 00 00 00 70 D8 CC C6 C6 C6 ..........p.....
2234:0F70 C6 D6 DC 78 0C 06 00 00 00 00 F0 D8 CC C6 C6 FC ...x............
2234:0F80 D8 CC C6 C6 00 00 00 00 00 00 78 CC C6 60 30 18 ..........x..`0.
2234:0F90 0C C6 66 3C 00 00 00 00 00 00 3C 7E 5A 18 18 18 ..f<......<~Z...
2234:0FA0 18 18 18 18 00 00 00 00 00 00 84 C6 C6 C6 C6 C6 ................
2234:0FB0 C6 C6 66 3C 00 00 00 00 00 00 84 C6 C6 C6 C6 C6 ..f<............
2234:0FC0 C6 CC 78 30 00 00 00 00 00 00 84 C6 C6 C6 C6 C6 ..x0............
2234:0FD0 D6 FE EC 68 00 00 00 00 00 00 00 82 C6 6C 38 38 ...h.........l88
2234:0FE0 6C C6 82 82 00 00 00 00 00 00 44 66 66 66 6C 38 l.........Dfffl8
2234:0FF0 30 30 30 30 00 00 00 00 00 00 F8 CC 86 0E 1C 38 0000...........8
2234:1000 70 E2 66 3E 00 00 00 00 00 00 38 30 30 30 30 30 p.f>......800000
2234:1010 30 30 30 3C 00 00 00 00 00 00 00 80 C0 E0 70 38 000<..........p8
2234:1020 1C 0E 06 02 00 00 00 00 00 00 38 0C 0C 0C 0C 0C ..........8.....
2234:1030 0C 0C 0C 3C 00 00 00 00 10 38 6C C6 00 00 00 00 ...<.....8l.....
2234:1040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:1050 00 00 00 00 00 FF 00 00 30 30 18 00 00 00 00 00 ........00......
2234:1060 00 00 00 00 00 00 00 00 00 00 00 00 00 70 18 7C .............p.|
2234:1070 CC CC CC 76 00 00 00 00 00 00 80 C0 C0 C0 F0 D8 ...v............
2234:1080 CC C6 C6 7C 00 00 00 00 00 00 00 00 00 78 CC C6 ...|.........x..
2234:1090 C0 C0 66 3C 00 00 00 00 00 00 08 0C 0C 3C 6C CC ..f<.........<l.
2234:10A0 CC CC 6C 34 00 00 00 00 00 00 00 00 00 78 CC C6 ..l4.........x..
2234:10B0 FE C0 66 3C 00 00 00 00 00 00 30 78 6C 60 F0 60 ..f<......0xl`.`
2234:10C0 60 60 60 60 00 00 00 00 00 00 00 00 00 E0 F0 D8 ````............
2234:10D0 CC CC CC 7C 0C 8C F8 00 00 00 80 C0 C0 DC F6 E6 ...|............
2234:10E0 C6 C6 C6 C2 00 00 00 00 00 00 10 18 00 10 18 18 ................
2234:10F0 18 18 18 08 00 00 00 00 00 00 04 06 00 04 06 06 ................
2234:1100 06 06 06 06 46 66 3C 00 00 00 80 C0 C2 C6 CC D8 ....Ff<.........
2234:1110 F8 EC C6 42 00 00 00 00 00 00 10 18 18 18 18 18 ...B............
2234:1120 18 18 0C 06 00 00 00 00 00 00 00 00 00 CC FE D6 ................
2234:1130 D6 D6 D6 42 00 00 00 00 00 00 00 00 00 D8 EC C6 ...B............
2234:1140 C6 C6 C6 42 00 00 00 00 00 00 00 00 00 78 CC C6 ...B.........x..
2234:1150 C6 C6 66 3C 00 00 00 00 00 00 00 00 00 F8 CC C6 ..f<............
2234:1160 C6 C6 E6 DC C0 C0 40 00 00 00 00 00 00 74 DE CE ......@......t..
2234:1170 C6 C6 66 3E 06 06 02 00 00 00 00 00 00 F8 CC C6 ..f>............
2234:1180 C0 C0 C0 40 00 00 00 00 00 00 00 00 00 7C C6 E0 ...@.........|..
2234:1190 38 0E C6 7C 00 00 00 00 00 00 40 60 60 FC 60 60 8..|......@``.``
2234:11A0 60 66 6C 38 00 00 00 00 00 00 00 00 00 88 CC CC `fl8............
2234:11B0 CC CC 6C 3C 00 00 00 00 00 00 00 00 00 44 66 66 ..l<.........Dff
2234:11C0 66 6C 38 10 00 00 00 00 00 00 00 00 00 84 C6 C6 fl8.............
2234:11D0 D6 D6 FC 68 00 00 00 00 00 00 00 00 00 C6 6C 38 ...h..........l8
2234:11E0 10 38 6C C6 00 00 00 00 00 00 00 00 00 84 C6 C6 .8l.............
2234:11F0 C6 C6 66 3E 06 06 3C 00 00 00 00 00 00 FE 8C 18 ..f>..<.........
2234:1200 30 60 C2 FE 00 00 00 00 00 00 06 0C 18 18 70 18 0`............p.
2234:1210 18 18 0C 06 00 00 00 00 00 00 10 18 18 18 00 10 ................
2234:1220 18 18 18 18 00 00 00 00 00 00 60 30 18 18 0E 18 ..........`0....
2234:1230 18 18 30 60 00 00 00 00 00 00 76 DC 00 00 00 00 ..0`......v.....
2234:1240 00 00 00 00 00 00 00 00 00 00 00 00 10 38 6C C6 .............8l.
2234:1250 C6 C6 FE 00 00 00 00 00 00 00 3C 66 C2 C0 C0 C0 ..........<f....
2234:1260 C2 66 3C 0C 06 7C 00 00 00 00 48 6C 00 84 C6 C6 .f<..|....Hl....
2234:1270 C6 C6 66 3E 00 00 00 00 00 00 0C 18 00 78 CC C6 ..f>.........x..
2234:1280 FE C0 66 3C 00 00 00 00 00 10 38 6C 00 78 0C 7C ..f<......8l.x.|
2234:1290 CC CC CC 76 00 00 00 00 00 00 CC CC 00 78 0C 7C ...v.........x.|
2234:12A0 CC CC CC 76 00 00 00 00 00 60 30 18 00 78 0C 7C ...v.....`0..x.|
2234:12B0 CC CC CC 76 00 00 00 00 00 38 6C 38 00 78 0C 7C ...v.....8l8.x.|
2234:12C0 CC CC CC 76 00 00 00 00 00 00 00 00 3C 66 60 60 ...v........<f``
2234:12D0 66 3C 0C 06 3C 00 00 00 00 10 38 6C 00 7C C6 FE f<..<.....8l.|..
2234:12E0 C0 C0 C6 7C 00 00 00 00 00 00 C6 C6 00 7C C6 FE ...|.........|..
2234:12F0 C0 C0 C6 7C 00 00 00 00 00 60 30 18 00 7C C6 FE ...|.....`0..|..
2234:1300 C0 C0 C6 7C 00 00 00 00 00 00 66 66 00 38 18 18 ...|......ff.8..
2234:1310 18 18 18 3C 00 00 00 00 0C 18 00 10 18 18 18 18 ...<............
2234:1320 18 18 18 08 00 00 00 00 0C 18 00 10 18 18 18 18 ................
2234:1330 18 18 18 08 00 00 00 00 00 C6 C6 10 38 6C C6 C6 ............8l..
2234:1340 FE C6 C6 C6 00 00 00 00 06 0C E0 F0 D8 CC C6 FE ................
2234:1350 C6 C6 C6 42 00 00 00 00 18 30 00 F8 CC C6 C0 F8 ...B.....0......
2234:1360 C0 C0 C6 FC 00 00 00 00 00 00 00 00 00 CC 76 36 ..............v6
2234:1370 7E D8 D8 6E 00 00 00 00 00 00 3E 6C CC CC FE CC ~..n......>l....
2234:1380 CC CC CC CE 00 00 00 00 00 00 36 6C 00 78 CC C6 ..........6l.x..
2234:1390 C6 C6 66 3C 00 00 00 00 00 00 48 6C 00 78 CC C6 ..f<......Hl.x..
2234:13A0 C6 C6 66 3C 00 00 00 00 0C 18 00 78 CC C6 C6 C6 ..f<.......x....
2234:13B0 C6 C6 66 3C 00 00 00 00 00 00 36 6C 00 84 C6 C6 ..f<......6l....
2234:13C0 C6 C6 66 3E 00 00 00 00 0C 18 00 84 C6 C6 C6 C6 ..f>............
2234:13D0 C6 C6 66 3E 00 00 00 00 36 6C 00 84 C6 C6 C6 C6 ..f>....6l......
2234:13E0 C6 C6 66 3E 00 00 00 00 00 84 C6 00 78 CC C6 C6 ..f>........x...
2234:13F0 C6 C6 66 3C 00 00 00 00 00 48 6C 00 84 C6 C6 C6 ..f<.....Hl.....
2234:1400 C6 C6 66 3E 00 00 00 00 00 18 18 3C 66 60 60 60 ..f>.......<f```
2234:1410 66 3C 18 18 00 00 00 00 00 38 6C 64 60 F0 60 60 f<.......8ld`.``
2234:1420 60 60 E6 FC 00 00 00 00 00 00 66 66 3C 18 7E 18 ``........ff<.~.
2234:1430 7E 18 18 18 00 00 00 00 00 F8 CC CC F8 C4 CC DE ~...............
2234:1440 CC CC CC C6 00 00 00 00 00 0E 1B 18 18 18 7E 18 ..............~.
2234:1450 18 18 18 18 D8 70 00 00 00 00 18 30 00 70 18 7C .....p.....0.p.|
2234:1460 CC CC CC 76 00 00 00 00 00 00 0C 18 00 10 18 18 ...v............
2234:1470 18 18 18 08 00 00 00 00 00 00 18 30 00 78 CC C6 ...........0.x..
2234:1480 C6 C6 66 3C 00 00 00 00 00 00 18 30 00 84 C6 C6 ..f<.......0....
2234:1490 C6 C6 66 3E 00 00 00 00 00 00 76 DC 00 DC 66 66 ..f>......v...ff
2234:14A0 66 66 66 66 00 00 00 00 76 DC 00 C6 E6 F6 FE DE ffff....v.......
2234:14B0 CE C6 C6 C6 00 00 00 00 00 3C 6C 6C 3E 00 7E 00 .........<ll>.~.
2234:14C0 00 00 00 00 00 00 00 00 36 6C 00 78 CC C6 C6 C6 ........6l.x....
2234:14D0 C6 C6 66 3C 00 00 00 00 00 00 30 30 00 30 30 60 ..f<......00.00`
2234:14E0 C0 C6 C6 7C 00 00 00 00 00 00 00 00 00 00 FE C0 ...|............
2234:14F0 C0 C0 C0 00 00 00 00 00 00 00 00 00 00 00 FE 06 ................
2234:1500 06 06 06 00 00 00 00 00 00 C0 C0 C2 C6 CC 18 30 ...............0
2234:1510 60 CE 93 06 0C 1F 00 00 00 C0 C0 C2 C6 CC 18 30 `..............0
2234:1520 66 CE 9A 3F 06 0F 00 00 00 00 18 18 00 18 18 18 f..?............
2234:1530 3C 3C 3C 18 00 00 00 00 00 00 00 00 00 33 66 CC <<<..........3f.
2234:1540 66 33 00 00 00 00 00 00 00 00 00 00 00 CC 66 33 f3............f3
2234:1550 66 CC 00 00 00 00 00 00 11 44 11 44 11 44 11 44 f........D.D.D.D
2234:1560 11 44 11 44 11 44 11 44 55 AA 55 AA 55 AA 55 AA .D.D.D.DU.U.U.U.
2234:1570 55 AA 55 AA 55 AA 55 AA DD 77 DD 77 DD 77 DD 77 U.U.U.U..w.w.w.w
2234:1580 DD 77 DD 77 DD 77 DD 77 18 18 18 18 18 18 18 18 .w.w.w.w........
2234:1590 18 18 18 18 18 18 18 18 18 18 18 18 18 18 30 E0 ..............0.
2234:15A0 30 18 18 18 18 18 18 18 18 18 18 18 30 E0 40 E0 0...........0.@.
2234:15B0 30 18 18 18 18 18 18 18 36 36 36 36 36 36 66 C6 0.......666666f.
2234:15C0 66 36 36 36 36 36 36 36 00 00 00 00 00 00 00 F8 f6666666........
2234:15D0 6C 36 36 36 36 36 36 36 00 00 00 00 00 E0 30 D8 l6666666......0.
2234:15E0 78 38 18 18 18 18 18 18 36 36 36 36 66 C6 06 C6 x8......6666f...
2234:15F0 66 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 f666666666666666
2234:1600 36 36 36 36 36 36 36 36 00 00 00 00 00 F0 18 CC 66666666........
2234:1610 66 36 36 36 36 36 36 36 36 36 36 36 66 CC 18 F0 f66666666666f...
2234:1620 00 00 00 00 00 00 00 00 36 36 36 36 36 36 6C F8 ........666666l.
2234:1630 00 00 00 00 00 00 00 00 18 18 18 38 78 D8 30 E0 ...........8x.0.
2234:1640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E0 ................
2234:1650 30 18 18 18 18 18 18 18 18 18 18 18 18 18 0C 07 0...............
2234:1660 00 00 00 00 00 00 00 00 18 18 18 18 18 18 3C E7 ..............<.
2234:1670 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 E7 ................
2234:1680 3C 18 18 18 18 18 18 18 18 18 18 18 18 18 0C 07 <...............
2234:1690 0C 18 18 18 18 18 18 18 00 00 00 00 00 00 00 FF ................
2234:16A0 00 00 00 00 00 00 00 00 18 18 18 18 18 18 3C E7 ..............<.
2234:16B0 3C 18 18 18 18 18 18 18 18 18 18 18 0C 07 02 07 <...............
2234:16C0 0C 18 18 18 18 18 18 18 36 36 36 36 36 36 33 31 ........66666631
2234:16D0 33 36 36 36 36 36 36 36 36 36 36 36 33 19 0C 07 3666666666663...
2234:16E0 00 00 00 00 00 00 00 00 00 00 00 00 00 07 0C 19 ................
2234:16F0 33 36 36 36 36 36 36 36 36 36 36 36 63 C1 00 FF 366666666666c...
2234:1700 00 00 00 00 00 00 00 00 00 00 00 00 00 FF 00 C1 ................
2234:1710 63 36 36 36 36 36 36 36 36 36 36 36 33 31 30 31 c666666666663101
2234:1720 33 36 36 36 36 36 36 36 00 00 00 00 00 FF 00 FF 36666666........
2234:1730 00 00 00 00 00 00 00 00 36 36 36 36 63 C1 00 C1 ........6666c...
2234:1740 63 36 36 36 36 36 36 36 18 18 18 18 3C E7 00 FF c6666666....<...
2234:1750 00 00 00 00 00 00 00 00 36 36 36 36 36 36 63 C1 ........666666c.
2234:1760 00 00 00 00 00 00 00 00 00 00 00 00 00 FF 00 E7 ................
2234:1770 3C 18 18 18 18 18 18 18 00 00 00 00 00 00 00 C1 <...............
2234:1780 63 36 36 36 36 36 36 36 36 36 36 36 36 36 1B 0F c6666666666666..
2234:1790 00 00 00 00 00 00 00 00 18 18 18 18 1C 1B 0C 07 ................
2234:17A0 00 00 00 00 00 00 00 00 00 00 00 00 00 07 0C 1B ................
2234:17B0 1C 18 18 18 18 18 18 18 00 00 00 00 00 00 00 0F ................
2234:17C0 1B 36 36 36 36 36 36 36 36 36 36 36 36 63 C1 FF .666666666666c..
2234:17D0 C1 63 36 36 36 36 36 36 18 18 18 3C 5A 99 18 99 .c666666...<Z...
2234:17E0 5A 3C 18 18 18 18 18 18 18 18 18 18 18 18 30 E0 Z<............0.
2234:17F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 07 ................
2234:1800 0C 18 18 18 18 18 18 18 FF FF FF FF FF FF FF FF ................
2234:1810 FF FF FF FF FF FF FF FF 00 00 00 00 00 00 00 FF ................
2234:1820 FF FF FF FF FF FF FF FF F0 F0 F0 F0 F0 F0 F0 F0 ................
2234:1830 F0 F0 F0 F0 F0 F0 F0 F0 0F 0F 0F 0F 0F 0F 0F 0F ................
2234:1840 0F 0F 0F 0F 0F 0F 0F 0F FF FF FF FF FF FF FF 00 ................
2234:1850 00 00 00 00 00 00 00 00 00 00 00 00 00 76 DC D8 .............v..
2234:1860 D8 D8 DC 76 00 00 00 00 00 00 00 00 00 FC C6 FC ...v............
2234:1870 C6 C6 FC C0 C0 C0 00 00 00 00 FE C6 C6 C0 C0 C0 ................
2234:1880 C0 C0 C0 C0 00 00 00 00 00 00 00 00 80 FE 6C 6C ..............ll
2234:1890 6C 6C 6C 6C 00 00 00 00 00 00 00 FE C6 60 30 18 llll.........`0.
2234:18A0 30 60 C6 FE 00 00 00 00 00 00 00 00 00 7E D8 D8 0`...........~..
2234:18B0 D8 D8 D8 70 00 00 00 00 00 00 00 00 66 66 66 66 ...p........ffff
2234:18C0 66 7C 60 60 C0 00 00 00 00 00 00 00 76 DC 18 18 f|``........v...
2234:18D0 18 18 18 18 00 00 00 00 00 00 00 7E 18 3C 66 66 ...........~.<ff
2234:18E0 66 3C 18 7E 00 00 00 00 00 00 00 38 6C C6 C6 FE f<.~.......8l...
2234:18F0 C6 C6 6C 38 00 00 00 00 00 00 38 6C C6 C6 C6 6C ..l8......8l...l
2234:1900 6C 6C 6C EE 00 00 00 00 00 00 1E 30 18 0C 3E 66 lll........0..>f
2234:1910 66 66 66 3C 00 00 00 00 00 00 00 00 00 7E DB DB fff<.........~..
2234:1920 DB 7E 00 00 00 00 00 00 00 00 00 03 06 7E CF DB .~...........~..
2234:1930 F3 7E 60 C0 00 00 00 00 00 00 1C 30 60 60 7C 60 .~`........0``|`
2234:1940 60 60 30 1C 00 00 00 00 00 00 00 7C C6 C6 C6 C6 ``0........|....
2234:1950 C6 C6 C6 C6 00 00 00 00 00 00 00 00 FE 00 00 FE ................
2234:1960 00 00 FE 00 00 00 00 00 00 00 00 00 18 18 7E 18 ..............~.
2234:1970 18 00 00 FF 00 00 00 00 00 00 00 30 18 0C 06 0C ...........0....
2234:1980 18 30 00 7E 00 00 00 00 00 00 00 0C 18 30 60 30 .0.~.........0`0
2234:1990 18 0C 00 7E 00 00 00 00 00 00 0E 1B 1B 18 18 18 ...~............
2234:19A0 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:19B0 D8 D8 D8 70 00 00 00 00 00 00 00 00 18 18 00 7E ...p...........~
2234:19C0 00 18 18 00 00 00 00 00 00 00 00 00 00 76 DC 00 .............v..
2234:19D0 76 DC 00 00 00 00 00 00 00 38 6C 6C 38 00 00 00 v........8ll8...
2234:19E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 18 ................
2234:19F0 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:1A00 18 00 00 00 00 00 00 00 00 0F 0C 0C 0C 0C 0C EC ................
2234:1A10 6C 6C 3C 1C 00 00 00 00 00 D8 6C 6C 6C 6C 6C 00 ll<.......lllll.
2234:1A20 00 00 00 00 00 00 00 00 00 70 98 30 60 C8 F8 00 .........p.0`...
2234:1A30 00 00 00 00 00 00 00 00 00 00 00 00 7C 7C 7C 7C ............||||
2234:1A40 7C 7C 7C 00 00 00 00 00 00 00 00 00 00 00 00 00 |||.............
2234:1A50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:1A60 00 00 00 00 00 00 00 00 00 00 3C 42 81 E7 A5 99 ..........<B....
2234:1A70 81 99 42 3C 00 00 00 00 00 00 3C 7E FF 99 DB E7 ..B<......<~....
2234:1A80 FF E7 7E 3C 00 00 00 00 00 00 00 6C FE FE FE FE ..~<.......l....
2234:1A90 FE 7C 38 10 00 00 00 00 00 00 00 00 10 38 7C FE .|8..........8|.
2234:1AA0 7C 38 10 00 00 00 00 00 00 00 38 38 10 D6 FE D6 |8........88....
2234:1AB0 10 38 7C 7C 00 00 00 00 00 00 10 38 7C FE FE 54 .8||.......8|..T
2234:1AC0 10 38 7C 7C 00 00 00 00 00 00 00 00 00 00 18 3C .8||...........<
2234:1AD0 3C 18 00 00 00 00 00 00 FF FF FF FF FF FF E7 C3 <...............
2234:1AE0 C3 E7 FF FF FF FF FF FF 00 00 00 00 00 3C 66 42 .............<fB
2234:1AF0 42 66 3C 00 00 00 00 00 FF FF FF FF FF C3 99 BD Bf<.............
2234:1B00 BD 99 C3 FF FF FF FF FF 00 00 1E 0E 1A 30 78 CC .............0x.
2234:1B10 CC CC CC 78 00 00 00 00 00 00 3C 66 66 66 3C 18 ...x......<fff<.
2234:1B20 7E 18 18 18 00 00 00 00 00 00 10 18 14 14 14 10 ~...............
2234:1B30 10 30 70 20 00 00 00 00 00 00 3E 22 3E 22 22 22 .0p ......>">"""
2234:1B40 22 26 6E E4 40 00 00 00 00 00 00 10 92 54 28 C6 "&n.@........T(.
2234:1B50 28 54 92 10 00 00 00 00 00 00 60 70 78 7C 7E 7E (T........`px|~~
2234:1B60 7C 78 70 60 00 00 00 00 00 00 06 0E 1E 3E 7E 7E |xp`.........>~~
2234:1B70 3E 1E 0E 06 00 00 00 00 00 00 10 38 7C FE 38 38 >..........8|.88
2234:1B80 38 38 FE 7C 38 10 00 00 00 00 66 66 66 66 66 66 88.|8.....ffffff
2234:1B90 66 00 66 66 00 00 00 00 00 00 7E F4 F4 F4 74 14 f.ff......~...t.
2234:1BA0 14 14 14 14 00 00 00 00 00 1E 30 78 DC CE E7 73 ..........0x...s
2234:1BB0 3B 1E 0C 78 00 00 00 00 00 00 00 00 00 00 00 00 ;..x............
2234:1BC0 FE FE FE FE 00 00 00 00 00 00 10 38 7C FE 38 38 ...........8|.88
2234:1BD0 38 38 FE 7C 38 10 FE 00 00 00 10 38 7C FE 38 38 88.|8......8|.88
2234:1BE0 38 38 38 38 38 38 00 00 00 00 38 38 38 38 38 38 888888....888888
2234:1BF0 38 38 FE 7C 38 10 00 00 00 00 00 00 00 08 0C FE 88.|8...........
2234:1C00 FF FE 0C 08 00 00 00 00 00 00 00 00 00 10 30 7F ..............0.
2234:1C10 FF 7F 30 10 00 00 00 00 00 00 33 66 EE 00 00 00 ..0.......3f....
2234:1C20 00 00 00 00 00 00 00 00 00 00 00 00 00 24 66 FF .............$f.
2234:1C30 66 24 00 00 00 00 00 00 00 00 00 00 00 18 3C 7E f$............<~
2234:1C40 FF FF 00 00 00 00 00 00 00 00 00 00 00 FF FF 7E ...............~
2234:1C50 3C 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 <...............
2234:1C60 00 00 00 00 00 00 00 00 00 00 10 10 10 10 10 10 ................
2234:1C70 10 00 00 10 00 00 00 00 00 00 66 24 24 00 00 00 ..........f$$...
2234:1C80 00 00 00 00 00 00 00 00 00 00 44 44 FE 64 44 44 ..........DD.dDD
2234:1C90 FE 44 44 44 00 00 00 00 00 10 10 7C 92 90 90 7C .DDD.......|...|
2234:1CA0 12 12 92 7C 10 10 00 00 00 00 86 04 0C 08 18 30 ...|...........0
2234:1CB0 20 60 40 C4 00 00 00 00 00 00 38 44 44 38 4A 84  `@.......8DD8J.
2234:1CC0 84 84 8C 72 00 00 00 00 00 00 08 10 20 00 00 00 ...r........ ...
2234:1CD0 00 00 00 00 00 00 00 00 00 00 0C 10 20 20 20 20 ............    
2234:1CE0 20 20 10 0C 00 00 00 00 00 00 30 08 04 04 04 04   ........0.....
2234:1CF0 04 04 08 30 00 00 00 00 00 00 00 00 00 44 28 7C ...0.........D(|
2234:1D00 28 44 00 00 00 00 00 00 00 00 00 00 00 10 10 7C (D.............|
2234:1D10 10 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:1D20 00 00 08 10 20 00 00 00 00 00 00 00 00 00 00 7E .... ..........~
2234:1D30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:1D40 00 00 00 10 00 00 00 00 00 00 06 04 0C 08 18 10 ................
2234:1D50 30 20 60 40 C0 00 00 00 00 00 7C 86 8A 82 82 82 0 `@......|.....
2234:1D60 82 A2 C2 7C 00 00 00 00 00 00 10 30 50 10 10 10 ...|.......0P...
2234:1D70 10 10 10 7C 00 00 00 00 00 00 7C 86 02 04 08 10 ...|......|.....
2234:1D80 20 40 80 FE 00 00 00 00 00 00 7C 86 02 02 1C 02  @........|.....
2234:1D90 02 02 86 7C 00 00 00 00 00 00 0C 14 24 44 84 FE ...|........$D..
2234:1DA0 04 04 04 04 00 00 00 00 00 00 FE 80 80 80 FC 06 ................
2234:1DB0 02 02 86 7C 00 00 00 00 00 00 3C 40 80 80 FC 86 ...|......<@....
2234:1DC0 82 82 C6 7C 00 00 00 00 00 00 FE 02 02 04 08 10 ...|............
2234:1DD0 20 20 20 20 00 00 00 00 00 00 7C C6 82 C6 7C C6     ......|...|.
2234:1DE0 82 82 C6 7C 00 00 00 00 00 00 7C C6 82 C2 7E 02 ...|......|...~.
2234:1DF0 02 02 06 7C 00 00 00 00 00 00 00 00 00 08 00 00 ...|............
2234:1E00 00 08 00 00 00 00 00 00 00 00 00 00 00 08 00 00 ................
2234:1E10 00 08 10 20 00 00 00 00 00 00 06 08 10 20 40 40 ... ......... @@
2234:1E20 20 10 08 06 00 00 00 00 00 00 00 00 00 7E 00 00  ............~..
2234:1E30 7E 00 00 00 00 00 00 00 00 00 60 10 08 04 02 02 ~.........`.....
2234:1E40 04 08 10 60 00 00 00 00 00 00 7C 82 02 04 08 10 ...`......|.....
2234:1E50 10 00 00 10 00 00 00 00 00 00 7C C6 C6 DE DE DE ..........|.....
2234:1E60 DE DC C0 7C 00 00 00 00 00 00 10 28 44 82 82 82 ...|.......(D...
2234:1E70 FE 82 82 82 00 00 00 00 00 00 FC 86 82 86 FC 86 ................
2234:1E80 82 82 86 FC 00 00 00 00 00 00 7C C2 80 80 80 80 ..........|.....
2234:1E90 80 80 C2 7C 00 00 00 00 00 00 F8 84 82 82 82 82 ...|............
2234:1EA0 82 82 84 F8 00 00 00 00 00 00 FE 80 80 80 FC 80 ................
2234:1EB0 80 80 80 FE 00 00 00 00 00 00 FE 80 80 80 FC 80 ................
2234:1EC0 80 80 80 80 00 00 00 00 00 00 7C C2 80 80 80 8E ..........|.....
2234:1ED0 82 82 C2 7C 00 00 00 00 00 00 82 82 82 82 FE 82 ...|............
2234:1EE0 82 82 82 82 00 00 00 00 00 00 38 10 10 10 10 10 ..........8.....
2234:1EF0 10 10 10 38 00 00 00 00 00 00 0E 04 04 04 04 04 ...8............
2234:1F00 04 84 CC 78 00 00 00 00 00 00 82 84 88 90 A0 E0 ...x............
2234:1F10 90 88 84 82 00 00 00 00 00 00 80 80 80 80 80 80 ................
2234:1F20 80 80 80 FE 00 00 00 00 00 00 82 C6 AA 92 82 82 ................
2234:1F30 82 82 82 82 00 00 00 00 00 00 C2 A2 92 8A 86 82 ................
2234:1F40 82 82 82 82 00 00 00 00 00 00 7C C6 82 82 82 82 ..........|.....
2234:1F50 82 82 C6 7C 00 00 00 00 00 00 FC 86 82 82 86 FC ...|............
2234:1F60 80 80 80 80 00 00 00 00 00 00 7C C6 82 82 82 82 ..........|.....
2234:1F70 82 A2 D6 7C 08 04 00 00 00 00 FC 86 82 82 86 FC ...|............
2234:1F80 90 88 84 82 00 00 00 00 00 00 7C C2 80 40 30 08 ..........|..@0.
2234:1F90 04 02 86 7C 00 00 00 00 00 00 FE 10 10 10 10 10 ...|............
2234:1FA0 10 10 10 10 00 00 00 00 00 00 82 82 82 82 82 82 ................
2234:1FB0 82 82 C6 7C 00 00 00 00 00 00 82 82 82 82 82 82 ...|............
2234:1FC0 82 44 28 10 00 00 00 00 00 00 82 82 82 82 82 82 .D(.............
2234:1FD0 92 92 AA 44 00 00 00 00 00 00 82 82 44 44 28 10 ...D........DD(.
2234:1FE0 28 44 82 82 00 00 00 00 00 00 82 82 82 C6 6C 38 (D............l8
2234:1FF0 10 10 10 10 00 00 00 00 00 00 FE 02 04 08 10 20 ............... 
2234:2000 40 80 80 FE 00 00 00 00 00 00 3C 20 20 20 20 20 @.........<     
2234:2010 20 20 20 3C 00 00 00 00 00 00 C0 40 60 20 30 10    <.......@` 0.
2234:2020 18 08 0C 04 06 00 00 00 00 00 3C 04 04 04 04 04 ..........<.....
2234:2030 04 04 04 3C 00 00 00 00 00 10 28 44 82 00 00 00 ...<......(D....
2234:2040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2050 00 00 00 00 00 FF 00 00 00 00 30 18 08 00 00 00 ..........0.....
2234:2060 00 00 00 00 00 00 00 00 00 00 00 00 00 7C 02 7E .............|.~
2234:2070 C2 82 C2 7E 00 00 00 00 00 00 80 80 80 F8 84 82 ...~............
2234:2080 82 82 84 F8 00 00 00 00 00 00 00 00 00 7C C2 80 .............|..
2234:2090 80 80 C2 7C 00 00 00 00 00 00 02 02 02 7E C2 82 ...|.........~..
2234:20A0 82 82 C2 7E 00 00 00 00 00 00 00 00 00 7C 82 FE ...~.........|..
2234:20B0 80 80 C2 7C 00 00 00 00 00 00 3C 62 40 40 F0 40 ...|......<b@@.@
2234:20C0 40 40 40 40 00 00 00 00 00 00 00 00 00 7E C2 82 @@@@.........~..
2234:20D0 82 82 C2 7E 02 06 7C 00 00 00 80 80 80 BC C2 82 ...~..|.........
2234:20E0 82 82 82 82 00 00 00 00 00 00 00 10 00 10 10 10 ................
2234:20F0 10 10 10 10 00 00 00 00 00 00 00 02 00 02 02 02 ................
2234:2100 02 02 02 02 02 46 3C 00 00 00 80 80 82 84 88 90 .....F<.........
2234:2110 B0 C8 84 82 00 00 00 00 00 00 30 10 10 10 10 10 ..........0.....
2234:2120 10 10 10 38 00 00 00 00 00 00 00 00 00 CC FE 92 ...8............
2234:2130 92 82 82 82 00 00 00 00 00 00 00 00 00 BC C2 82 ................
2234:2140 82 82 82 82 00 00 00 00 00 00 00 00 00 7C C6 82 .............|..
2234:2150 82 82 C6 7C 00 00 00 00 00 00 00 00 00 FC 86 82 ...|............
2234:2160 82 82 86 FC 80 80 80 00 00 00 00 00 00 7E 82 82 .............~..
2234:2170 82 82 82 7E 02 02 02 00 00 00 00 00 00 FC 82 80 ...~............
2234:2180 80 80 80 80 00 00 00 00 00 00 00 00 00 7C 80 70 .............|.p
2234:2190 0C 02 02 7C 00 00 00 00 00 00 20 20 20 F8 20 20 ...|......   .  
2234:21A0 20 20 30 18 00 00 00 00 00 00 00 00 00 82 82 82   0.............
2234:21B0 82 82 C6 7C 00 00 00 00 00 00 00 00 00 82 82 82 ...|............
2234:21C0 82 44 28 10 00 00 00 00 00 00 00 00 00 82 82 82 .D(.............
2234:21D0 82 92 AA 44 00 00 00 00 00 00 00 00 00 82 44 28 ...D..........D(
2234:21E0 10 28 44 82 00 00 00 00 00 00 00 00 00 82 82 82 .(D.............
2234:21F0 82 82 82 7E 02 02 7C 00 00 00 00 00 00 FE 04 08 ...~..|.........
2234:2200 10 20 40 FE 00 00 00 00 00 00 0E 10 10 10 10 60 . @............`
2234:2210 10 10 10 0E 00 00 00 00 00 10 10 10 10 10 10 00 ................
2234:2220 10 10 10 10 10 00 00 00 00 00 70 08 08 08 08 06 ..........p.....
2234:2230 08 08 08 70 00 00 00 00 00 00 00 00 00 00 76 DC ...p..........v.
2234:2240 00 00 00 00 00 00 00 00 00 00 00 00 10 38 6C C6 .............8l.
2234:2250 C6 C6 FE 00 00 00 00 00 00 00 3C 66 C0 C0 C0 C0 ..........<f....
2234:2260 C0 C0 66 3C 18 98 70 00 00 00 00 44 00 82 82 82 ..f<..p....D....
2234:2270 82 82 C6 7C 00 00 00 00 00 00 08 10 00 7C 82 FE ...|.........|..
2234:2280 80 80 C2 7C 00 00 00 00 00 18 3C 66 00 7C 06 7E ...|......<f.|.~
2234:2290 C6 C6 C6 7E 00 00 00 00 00 00 6C 6C 00 7C 06 7E ...~......ll.|.~
2234:22A0 C6 C6 C6 7E 00 00 00 00 00 60 30 18 00 7C 06 7E ...~.....`0..|.~
2234:22B0 C6 C6 C6 7E 00 00 00 00 38 6C 6C 38 00 7C 06 7E ...~....8ll8.|.~
2234:22C0 C6 C6 C6 7E 00 00 00 00 00 00 00 00 00 7C C6 C0 ...~.........|..
2234:22D0 C0 C0 C6 7C 38 98 70 00 00 18 3C 66 00 7C C6 FE ...|8.p...<f.|..
2234:22E0 C0 C0 C6 7C 00 00 00 00 00 00 6C 6C 00 7C C6 FE ...|......ll.|..
2234:22F0 C0 C0 C6 7C 00 00 00 00 00 60 30 18 00 7C C6 FE ...|.....`0..|..
2234:2300 C0 C0 C6 7C 00 00 00 00 00 00 66 66 00 18 18 18 ...|......ff....
2234:2310 18 18 18 18 00 00 00 00 00 18 3C 66 00 18 18 18 ..........<f....
2234:2320 18 18 18 18 00 00 00 00 08 10 00 10 10 10 10 10 ................
2234:2330 10 10 10 10 00 00 00 00 6C 6C 10 38 6C C6 C6 FE ........ll.8l...
2234:2340 C6 C6 C6 C6 00 00 00 00 08 10 00 38 6C C6 82 82 ...........8l...
2234:2350 FE 82 82 82 00 00 00 00 08 10 FE 80 80 80 FC 80 ................
2234:2360 80 80 80 FE 00 00 00 00 00 00 00 00 00 7E DB 1B .............~..
2234:2370 7F D8 DB 6E 00 00 00 00 00 00 3F 3C 3C 6C 6F 6C ...n......?<<lol
2234:2380 7C CC CC CF 00 00 00 00 00 11 22 44 00 7C C6 82 |........."D.|..
2234:2390 82 82 C6 7C 00 00 00 00 00 00 00 44 00 7C C6 82 ...|.......D.|..
2234:23A0 82 82 C6 7C 00 00 00 00 08 10 00 7C C6 82 82 82 ...|.......|....
2234:23B0 82 82 C6 7C 00 00 00 00 00 11 22 44 00 82 82 82 ...|......"D....
2234:23C0 82 82 C2 7E 00 00 00 00 08 10 00 82 82 82 82 82 ...~............
2234:23D0 82 82 C6 7C 00 00 00 00 22 44 00 82 82 82 82 82 ...|...."D......
2234:23E0 82 82 C6 7C 00 00 00 00 44 00 7C C6 82 82 82 82 ...|....D.|.....
2234:23F0 82 82 C6 7C 00 00 00 00 00 44 00 82 82 82 82 82 ...|.....D......
2234:2400 82 82 C6 7C 00 00 00 00 00 00 00 18 18 7E C3 C0 ...|.........~..
2234:2410 C0 C0 C3 7E 18 18 00 00 00 00 38 6C 60 F0 60 F0 ...~......8l`.`.
2234:2420 60 60 66 FC 00 00 00 00 00 00 66 66 66 3C 18 7E ``f.......fff<.~
2234:2430 18 7E 18 18 00 00 00 00 00 00 FC C6 C6 C6 C6 FC .~..............
2234:2440 C6 CF C6 C6 07 00 00 00 00 00 0E 1B 18 18 18 3C ...............<
2234:2450 18 18 18 18 D8 70 00 00 00 00 08 10 00 7C 02 7E .....p.......|.~
2234:2460 C2 82 C2 7E 00 00 00 00 00 00 08 10 00 10 10 10 ...~............
2234:2470 10 10 10 10 00 00 00 00 00 00 08 10 00 7C C6 82 .............|..
2234:2480 82 82 C6 7C 00 00 00 00 00 00 08 10 00 82 82 82 ...|............
2234:2490 82 82 C6 7C 00 00 00 00 00 00 76 DC 00 FC C6 C6 ...|......v.....
2234:24A0 C6 C6 C6 C6 00 00 00 00 76 DC 00 C6 E6 F6 FE DE ........v.......
2234:24B0 CE C6 C6 C6 00 00 00 00 00 00 7C 06 7E C6 C6 C6 ..........|.~...
2234:24C0 7E 00 00 FE 00 00 00 00 22 44 00 7C C6 82 82 82 ~......."D.|....
2234:24D0 82 82 C6 7C 00 00 00 00 00 00 18 00 00 18 18 18 ...|............
2234:24E0 0C 06 C6 7C 00 00 00 00 00 00 00 00 00 00 FE C0 ...|............
2234:24F0 C0 C0 00 00 00 00 00 00 00 00 00 00 00 00 FE 06 ................
2234:2500 06 06 00 00 00 00 00 00 00 18 38 18 18 18 00 FF ..........8.....
2234:2510 00 18 2C 18 30 3C 00 00 00 18 38 18 18 18 00 FF ..,.0<....8.....
2234:2520 00 18 38 68 7C 18 00 00 00 00 18 00 00 18 18 18 ..8h|...........
2234:2530 18 18 18 18 00 00 00 00 00 00 00 00 00 36 6C D8 .............6l.
2234:2540 D8 6C 36 00 00 00 00 00 00 00 00 00 00 D8 6C 36 .l6...........l6
2234:2550 36 6C D8 00 00 00 00 00 44 11 44 11 44 11 44 11 6l......D.D.D.D.
2234:2560 44 11 44 11 44 11 44 11 AA 55 AA 55 AA 55 AA 55 D.D.D.D..U.U.U.U
2234:2570 AA 55 AA 55 AA 55 AA 55 77 DD 77 DD 77 DD 77 DD .U.U.U.Uw.w.w.w.
2234:2580 77 DD 77 DD 77 DD 77 DD 18 18 18 18 18 18 18 18 w.w.w.w.........
2234:2590 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:25A0 F8 18 18 18 18 18 18 18 18 18 18 18 18 18 F8 F8 ................
2234:25B0 F8 18 18 18 18 18 18 18 3C 3C 3C 3C 3C 3C 3C 3C ........<<<<<<<<
2234:25C0 FC 3C 3C 3C 3C 3C 3C 3C 00 00 00 00 00 00 00 00 .<<<<<<<........
2234:25D0 FC 3C 3C 3C 3C 3C 3C 3C 00 00 00 00 00 00 F8 F8 .<<<<<<<........
2234:25E0 F8 18 18 18 18 18 18 18 3C 3C 3C 3C 3C 3C FC FC ........<<<<<<..
2234:25F0 FC 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C .<<<<<<<<<<<<<<<
2234:2600 3C 3C 3C 3C 3C 3C 3C 3C 00 00 00 00 00 00 FC FC <<<<<<<<........
2234:2610 FC 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C FC FC .<<<<<<<<<<<<<..
2234:2620 FC 00 00 00 00 00 00 00 3C 3C 3C 3C 3C 3C 3C 3C ........<<<<<<<<
2234:2630 FC 00 00 00 00 00 00 00 18 18 18 18 18 18 F8 F8 ................
2234:2640 F8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2650 F8 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:2660 1F 00 00 00 00 00 00 00 18 18 18 18 18 18 18 18 ................
2234:2670 FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2680 FF 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:2690 1F 18 18 18 18 18 18 18 00 00 00 00 00 00 00 00 ................
2234:26A0 FF 00 00 00 00 00 00 00 18 18 18 18 18 18 18 18 ................
2234:26B0 FF 18 18 18 18 18 18 18 18 18 18 18 18 18 1F 1F ................
2234:26C0 1F 18 18 18 18 18 18 18 3C 3C 3C 3C 3C 3C 3C 3C ........<<<<<<<<
2234:26D0 3F 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3F 3F ?<<<<<<<<<<<<<??
2234:26E0 3F 00 00 00 00 00 00 00 00 00 00 00 00 00 3F 3F ?.............??
2234:26F0 3F 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C FF FF ?<<<<<<<<<<<<<..
2234:2700 FF 00 00 00 00 00 00 00 00 00 00 00 00 00 FF FF ................
2234:2710 FF 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3F 3F .<<<<<<<<<<<<<??
2234:2720 3F 3C 3C 3C 3C 3C 3C 3C 00 00 00 00 00 00 FF FF ?<<<<<<<........
2234:2730 FF 00 00 00 00 00 00 00 3C 3C 3C 3C 3C 3C FF FF ........<<<<<<..
2234:2740 FF 3C 3C 3C 3C 3C 3C 3C 18 18 18 18 18 18 FF FF .<<<<<<<........
2234:2750 FF 00 00 00 00 00 00 00 3C 3C 3C 3C 3C 3C 3C 3C ........<<<<<<<<
2234:2760 FF 00 00 00 00 00 00 00 00 00 00 00 00 00 FF FF ................
2234:2770 FF 18 18 18 18 18 18 18 00 00 00 00 00 00 00 00 ................
2234:2780 FF 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C .<<<<<<<<<<<<<<<
2234:2790 3F 00 00 00 00 00 00 00 18 18 18 18 18 18 1F 1F ?...............
2234:27A0 1F 00 00 00 00 00 00 00 00 00 00 00 00 00 1F 1F ................
2234:27B0 1F 18 18 18 18 18 18 18 00 00 00 00 00 00 00 00 ................
2234:27C0 3F 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C 3C ?<<<<<<<<<<<<<<<
2234:27D0 FF 3C 3C 3C 3C 3C 3C 3C 18 18 18 18 18 18 FF FF .<<<<<<<........
2234:27E0 FF 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:27F0 F8 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2800 1F 18 18 18 18 18 18 18 FF FF FF FF FF FF FF FF ................
2234:2810 FF FF FF FF FF FF FF FF 00 00 00 00 00 00 00 00 ................
2234:2820 FF FF FF FF FF FF FF FF F0 F0 F0 F0 F0 F0 F0 F0 ................
2234:2830 F0 F0 F0 F0 F0 F0 F0 F0 0F 0F 0F 0F 0F 0F 0F 0F ................
2234:2840 0F 0F 0F 0F 0F 0F 0F 0F FF FF FF FF FF FF FF FF ................
2234:2850 00 00 00 00 00 00 00 00 00 00 00 00 00 00 77 CC ..............w.
2234:2860 CC CC DE 73 00 00 00 00 00 00 7C C6 C6 C4 C8 C4 ...s......|.....
2234:2870 C6 C6 C6 DC C0 C0 00 00 00 00 FE C6 C6 C0 C0 C0 ................
2234:2880 C0 C0 C0 C0 00 00 00 00 00 00 00 00 03 7E EC 6C .............~.l
2234:2890 6C 6C 6C 68 00 00 00 00 00 00 FE C6 60 30 18 30 lllh........`0.0
2234:28A0 60 C0 C6 FE 00 00 00 00 00 00 00 00 00 7F F0 D8 `...............
2234:28B0 D8 D8 D8 70 00 00 00 00 00 00 00 00 00 66 66 66 ...p.........fff
2234:28C0 66 66 66 7C 60 60 C0 00 00 00 00 00 76 DC 18 18 fff|``......v...
2234:28D0 18 18 18 18 00 00 00 00 00 00 18 18 7E DB DB DB ............~...
2234:28E0 DB 7E 18 18 00 00 00 00 00 00 38 6C C6 C6 FE C6 .~........8l....
2234:28F0 C6 C6 6C 38 00 00 00 00 00 00 3C 66 C3 C3 C3 C3 ..l8......<f....
2234:2900 66 24 A5 E7 00 00 00 00 00 00 1E 30 18 0C 3E 66 f$.........0..>f
2234:2910 66 66 66 3C 00 00 00 00 00 00 00 00 00 7E DB DB fff<.........~..
2234:2920 DB 7E 00 00 00 00 00 00 00 00 00 03 06 7E CF DB .~...........~..
2234:2930 F3 7E 60 C0 00 00 00 00 00 00 1C 30 60 60 7C 60 .~`........0``|`
2234:2940 60 60 30 1C 00 00 00 00 00 00 00 7C C6 C6 C6 C6 ``0........|....
2234:2950 C6 C6 C6 C6 00 00 00 00 00 00 00 00 FE 00 00 7C ...............|
2234:2960 00 00 FE 00 00 00 00 00 00 00 00 00 18 18 7E 18 ..............~.
2234:2970 18 00 00 FF 00 00 00 00 00 00 00 30 18 0C 06 0C ...........0....
2234:2980 18 30 00 7E 00 00 00 00 00 00 00 0C 18 30 60 30 .0.~.........0`0
2234:2990 18 0C 00 7E 00 00 00 00 00 00 00 0E 1B 1B 18 18 ...~............
2234:29A0 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:29B0 18 D8 D8 70 00 00 00 00 00 00 00 00 18 18 00 7E ...p...........~
2234:29C0 00 18 18 00 00 00 00 00 00 00 00 00 00 76 DC 00 .............v..
2234:29D0 76 DC 00 00 00 00 00 00 00 00 38 6C 6C 38 00 00 v.........8ll8..
2234:29E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 18 ................
2234:29F0 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2A00 18 00 00 00 00 00 00 00 00 00 03 02 06 04 0C 08 ................
2234:2A10 D8 50 70 20 00 00 00 00 00 00 D8 6C 6C 6C 6C 6C .Pp .......lllll
2234:2A20 00 00 00 00 00 00 00 00 00 00 78 CC 18 30 60 FC ..........x..0`.
2234:2A30 00 00 00 00 00 00 00 00 00 00 00 00 7C 7C 7C 7C ............||||
2234:2A40 7C 7C 7C 00 00 00 00 00 00 00 00 00 00 00 00 00 |||.............
2234:2A50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2A60 00 00 00 00 00 00 00 00 00 00 7E 81 A5 81 81 BD ..........~.....
2234:2A70 99 81 81 7E 00 00 00 00 00 00 7E FF DB FF FF C3 ...~......~.....
2234:2A80 E7 FF FF 7E 00 00 00 00 00 00 00 00 6C FE FE FE ...~........l...
2234:2A90 FE 7C 38 10 00 00 00 00 00 00 00 00 10 38 7C FE .|8..........8|.
2234:2AA0 7C 38 10 00 00 00 00 00 00 00 00 18 3C 3C E7 E7 |8..........<<..
2234:2AB0 E7 18 18 3C 00 00 00 00 00 00 00 18 3C 7E FF FF ...<........<~..
2234:2AC0 7E 18 18 3C 00 00 00 00 00 00 00 00 00 00 18 3C ~..<...........<
2234:2AD0 3C 18 00 00 00 00 00 00 FF FF FF FF FF FF E7 C3 <...............
2234:2AE0 C3 E7 FF FF FF FF FF FF 00 00 00 00 00 3C 66 42 .............<fB
2234:2AF0 42 66 3C 00 00 00 00 00 FF FF FF FF FF C3 99 BD Bf<.............
2234:2B00 BD 99 C3 FF FF FF FF FF 00 00 1E 0E 1A 32 78 CC .............2x.
2234:2B10 CC CC CC 78 00 00 00 00 00 00 3C 66 66 66 66 3C ...x......<ffff<
2234:2B20 18 7E 18 18 00 00 00 00 00 00 3F 33 3F 30 30 30 .~........?3?000
2234:2B30 30 70 F0 E0 00 00 00 00 00 00 7F 63 7F 63 63 63 0p.........c.ccc
2234:2B40 63 67 E7 E6 C0 00 00 00 00 00 00 18 18 DB 3C E7 cg............<.
2234:2B50 3C DB 18 18 00 00 00 00 00 80 C0 E0 F0 F8 FE F8 <...............
2234:2B60 F0 E0 C0 80 00 00 00 00 00 02 06 0E 1E 3E FE 3E .............>.>
2234:2B70 1E 0E 06 02 00 00 00 00 00 00 18 3C 7E 18 18 18 ...........<~...
2234:2B80 7E 3C 18 00 00 00 00 00 00 00 66 66 66 66 66 66 ~<........ffffff
2234:2B90 66 00 66 66 00 00 00 00 00 00 7F DB DB DB 7B 1B f.ff..........{.
2234:2BA0 1B 1B 1B 1B 00 00 00 00 00 7C C6 60 38 6C C6 C6 .........|.`8l..
2234:2BB0 6C 38 0C C6 7C 00 00 00 00 00 00 00 00 00 00 00 l8..|...........
2234:2BC0 FE FE FE FE 00 00 00 00 00 00 18 3C 7E 18 18 18 ...........<~...
2234:2BD0 7E 3C 18 7E 00 00 00 00 00 00 18 3C 7E 18 18 18 ~<.~.......<~...
2234:2BE0 18 18 18 18 00 00 00 00 00 00 18 18 18 18 18 18 ................
2234:2BF0 18 7E 3C 18 00 00 00 00 00 00 00 00 00 18 0C FE .~<.............
2234:2C00 0C 18 00 00 00 00 00 00 00 00 00 00 00 30 60 FE .............0`.
2234:2C10 60 30 00 00 00 00 00 00 00 00 00 00 00 00 C0 C0 `0..............
2234:2C20 C0 FE 00 00 00 00 00 00 00 00 00 00 00 24 66 FF .............$f.
2234:2C30 66 24 00 00 00 00 00 00 00 00 00 00 10 38 38 7C f$...........88|
2234:2C40 7C FE FE 00 00 00 00 00 00 00 00 00 FE FE 7C 7C |.............||
2234:2C50 38 38 10 00 00 00 00 00 00 00 00 00 00 00 00 00 88..............
2234:2C60 00 00 00 00 00 00 00 00 00 00 18 3C 7E 7E 3C 3C ...........<~~<<
2234:2C70 18 00 18 18 00 00 00 00 00 E7 E7 E7 66 00 00 00 ............f...
2234:2C80 00 00 00 00 00 00 00 00 00 00 00 6C FE FE 6C 6C ...........l..ll
2234:2C90 6C FE FE 6C 00 00 00 00 38 38 7C FE C6 C0 FC 7E l..l....88|....~
2234:2CA0 06 C6 FE 7C 38 38 00 00 00 00 00 00 E3 E7 0E 1C ...|88..........
2234:2CB0 38 70 E7 C7 00 00 00 00 00 38 7C 6C 7C 3F 7F FE 8p.......8|l|?..
2234:2CC0 EC EE FF 77 00 00 00 00 00 38 38 70 60 00 00 00 ...w.....88p`...
2234:2CD0 00 00 00 00 00 00 00 00 00 00 0C 1C 3C 38 30 30 ............<800
2234:2CE0 38 3C 1C 0C 00 00 00 00 00 00 30 38 3C 1C 0C 0C 8<........08<...
2234:2CF0 1C 3C 38 30 00 00 00 00 00 00 00 00 C3 E7 3C FF .<80..........<.
2234:2D00 FF 3C E7 C3 00 00 00 00 00 00 00 00 38 38 FE FE .<..........88..
2234:2D10 FE FE 38 38 00 00 00 00 00 00 00 00 00 00 00 00 ..88............
2234:2D20 1C 1C 38 30 00 00 00 00 00 00 00 00 00 00 00 FE ..80............
2234:2D30 FE 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:2D40 00 00 1C 1C 00 00 00 00 00 00 00 00 03 07 0E 1C ................
2234:2D50 38 70 E0 C0 00 00 00 00 00 00 7C FE F6 EE EE EE 8p........|.....
2234:2D60 EE DE FE 7C 00 00 00 00 00 00 1C 3C 7C 7C 7C 1C ...|.......<|||.
2234:2D70 1C 7E 7E 7E 00 00 00 00 00 00 7C FE CE DE 3C 78 .~~~......|...<x
2234:2D80 F0 FE FE FE 00 00 00 00 00 00 7C FE CE CE 1C 1C ..........|.....
2234:2D90 CE CE FE 7C 00 00 00 00 00 00 1C 3C 7C EC CC FE ...|.......<|...
2234:2DA0 FE 1C 1C 1C 00 00 00 00 00 00 FE FE E0 FC FE E6 ................
2234:2DB0 06 E6 FE 7C 00 00 00 00 00 00 7C FE E0 FC FE E6 ...|......|.....
2234:2DC0 E6 E6 FE 7C 00 00 00 00 00 00 FE FE C6 CE 1E 3C ...|...........<
2234:2DD0 78 70 70 70 00 00 00 00 00 00 7C FE E6 E6 7C FE xppp......|...|.
2234:2DE0 E6 E6 FE 7C 00 00 00 00 00 00 7C FE CE CE FE 7E ...|......|....~
2234:2DF0 0E 0E 7E 7C 00 00 00 00 00 00 00 00 1C 1C 00 00 ..~|............
2234:2E00 00 1C 1C 00 00 00 00 00 00 00 00 00 1C 1C 00 00 ................
2234:2E10 1C 1C 38 30 00 00 00 00 00 00 00 0E 1E 3C 78 F0 ..80.........<x.
2234:2E20 78 3C 1E 0E 00 00 00 00 00 00 00 00 00 7E 7E 00 x<...........~~.
2234:2E30 7E 7E 00 00 00 00 00 00 00 00 00 70 78 3C 1E 0F ~~.........px<..
2234:2E40 1E 3C 78 70 00 00 00 00 00 00 7C FE DE 1E 3E 3C .<xp......|...><
2234:2E50 38 00 38 38 00 00 00 00 00 00 00 7C C6 C6 DE DE 8.88.......|....
2234:2E60 DE DC C0 7C 00 00 00 00 00 00 38 7C FE E6 E6 FE ...|......8|....
2234:2E70 FE E6 E6 E6 00 00 00 00 00 00 FC FE E6 E6 FC FE ................
2234:2E80 E6 E6 FE FC 00 00 00 00 00 00 7C FE FE E6 E0 E0 ..........|.....
2234:2E90 E6 FE FE 7C 00 00 00 00 00 00 F8 FC FE E6 E6 E6 ...|............
2234:2EA0 E6 FE FC F8 00 00 00 00 00 00 FE FE FE E0 F8 F8 ................
2234:2EB0 E0 FE FE FE 00 00 00 00 00 00 FE FE FE E0 F8 F8 ................
2234:2EC0 E0 E0 E0 E0 00 00 00 00 00 00 7C FE E6 E0 EE E6 ..........|.....
2234:2ED0 E6 E6 FE 7E 00 00 00 00 00 00 E6 E6 E6 E6 FE FE ...~............
2234:2EE0 E6 E6 E6 E6 00 00 00 00 00 00 3C 3C 3C 3C 3C 3C ..........<<<<<<
2234:2EF0 3C 3C 3C 3C 00 00 00 00 00 00 0E 0E 0E 0E 0E CE <<<<............
2234:2F00 CE FE FE 7C 00 00 00 00 00 00 E6 EE FE FC F8 F8 ...|............
2234:2F10 FC FE EE E6 00 00 00 00 00 00 E0 E0 E0 E0 E0 E0 ................
2234:2F20 E6 FE FE FE 00 00 00 00 00 00 E3 F7 FF FF EB E3 ................
2234:2F30 E3 E3 E3 E3 00 00 00 00 00 00 E6 F6 FE FE FE EE ................
2234:2F40 E6 E6 E6 E6 00 00 00 00 00 00 7C FE FE E6 E6 E6 ..........|.....
2234:2F50 E6 FE FE 7C 00 00 00 00 00 00 FC FE E6 E6 FE FC ...|............
2234:2F60 E0 E0 E0 E0 00 00 00 00 00 00 7C FE FE E6 E6 E6 ..........|.....
2234:2F70 E6 FE FE 7C 1C 0E 00 00 00 00 FC FE E6 E6 FE FC ...|............
2234:2F80 FC EE E6 E6 00 00 00 00 00 00 7C FE CE F0 78 3C ..........|...x<
2234:2F90 DE CE FE 7C 00 00 00 00 00 00 FE FE FE 38 38 38 ...|.........888
2234:2FA0 38 38 38 38 00 00 00 00 00 00 E6 E6 E6 E6 E6 E6 8888............
2234:2FB0 E6 FE FE 7C 00 00 00 00 00 00 E6 E6 E6 E6 E6 E6 ...|............
2234:2FC0 FE 7C 38 10 00 00 00 00 00 00 C6 C6 C6 C6 D6 D6 .|8.............
2234:2FD0 FE FE FE 6C 00 00 00 00 00 00 C3 E7 FF 7E 3C 7E ...l.........~<~
2234:2FE0 FF FF E7 C3 00 00 00 00 00 00 EE EE EE EE FE 7C ...............|
2234:2FF0 38 38 38 38 00 00 00 00 00 00 FE FE FE DE 3C 78 8888..........<x
2234:3000 F6 FE FE FE 00 00 00 00 00 00 3E 3E 38 38 38 38 ..........>>8888
2234:3010 38 38 3E 3E 00 00 00 00 00 00 00 80 C0 E0 F0 78 88>>...........x
2234:3020 3C 1E 0E 06 00 00 00 00 00 00 7C 7C 1C 1C 1C 1C <.........||....
2234:3030 1C 1C 7C 7C 00 00 00 00 10 38 6C C6 00 00 00 00 ..||.....8l.....
2234:3040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:3050 00 00 00 00 FF FF 00 00 70 78 38 10 00 00 00 00 ........px8.....
2234:3060 00 00 00 00 00 00 00 00 00 00 00 00 7C FE CE 0E ............|...
2234:3070 7E CE FE 76 00 00 00 00 00 00 E0 E0 FC FE E6 E6 ~..v............
2234:3080 E6 E6 FE FC 00 00 00 00 00 00 00 00 7C FE E6 E0 ............|...
2234:3090 E6 E6 FE 7C 00 00 00 00 00 00 0E 0E 7E FE CE CE ...|........~...
2234:30A0 CE CE FE 7E 00 00 00 00 00 00 00 00 7C FE E6 FE ...~........|...
2234:30B0 E0 E6 FE 7C 00 00 00 00 00 00 3C 7E 7E 72 70 78 ...|......<~~rpx
2234:30C0 78 70 70 70 00 00 00 00 00 00 00 00 76 FE CE CE xppp........v...
2234:30D0 CE FE 7E 0E CE FE 7C 00 00 00 E0 E0 FC FE FE E6 ..~...|.........
2234:30E0 E6 E6 E6 E6 00 00 00 00 00 38 38 00 38 38 38 38 .........88.8888
2234:30F0 38 3C 3C 1C 00 00 00 00 00 0E 0E 00 0E 0E 0E 0E 8<<.............
2234:3100 0E 0E CE CE CE FE 7C 00 00 00 E0 E0 E6 EE FC F8 ......|.........
2234:3110 F8 FC EE E6 00 00 00 00 00 00 38 38 38 38 38 38 ..........888888
2234:3120 38 3C 3C 1C 00 00 00 00 00 00 00 00 EC FE FE FE 8<<.............
2234:3130 FE D6 D6 C6 00 00 00 00 00 00 00 00 F8 FC FE FE ................
2234:3140 E6 E6 E6 E6 00 00 00 00 00 00 00 00 7C FE FE E6 ............|...
2234:3150 E6 FE FE 7C 00 00 00 00 00 00 00 00 FC FE FE E6 ...|............
2234:3160 E6 E6 FE FC E0 E0 E0 00 00 00 00 00 7C FE FE E6 ............|...
2234:3170 E6 FE FE 7E 0E 0E 0E 00 00 00 00 00 FC FE E6 E6 ...~............
2234:3180 E0 E0 E0 E0 00 00 00 00 00 00 00 00 7C FE E6 F8 ............|...
2234:3190 3E CE FE 7C 00 00 00 00 00 00 70 70 70 FC FC 70 >..|......ppp..p
2234:31A0 76 7E 7E 3C 00 00 00 00 00 00 00 00 E6 E6 E6 E6 v~~<............
2234:31B0 E6 FE FE 7E 00 00 00 00 00 00 00 00 E6 E6 E6 E6 ...~............
2234:31C0 E6 FE 7C 38 00 00 00 00 00 00 00 00 C6 C6 C6 D6 ..|8............
2234:31D0 D6 FE FE 6C 00 00 00 00 00 00 00 00 C3 E7 FF 7E ...l...........~
2234:31E0 3C 7E E7 C3 00 00 00 00 00 00 00 00 E6 E6 E6 E6 <~..............
2234:31F0 FE FE 7E 0E CE FE 7C 00 00 00 00 00 FE FE FE 3C ..~...|........<
2234:3200 70 FE FE FE 00 00 00 00 00 00 0E 1E 1C 3C 78 78 p............<xx
2234:3210 3C 1C 1E 0E 00 00 00 00 00 00 38 38 38 38 00 38 <.........8888.8
2234:3220 38 38 38 38 00 00 00 00 00 00 70 78 38 3C 1E 1E 8888......px8<..
2234:3230 3C 38 78 70 00 00 00 00 00 00 76 FE DC 00 00 00 <8xp......v.....
2234:3240 00 00 00 00 00 00 00 00 00 00 00 10 38 7C EE C6 ............8|..
2234:3250 C6 FE FE 00 00 00 00 00 00 00 3C 66 C2 C0 C0 C0 ..........<f....
2234:3260 C2 66 3C 0C 06 7C 00 00 00 E6 E6 00 E6 E6 E6 E6 .f<..|..........
2234:3270 E6 E6 FE 7E 00 00 00 00 00 0C 18 00 7C FE E6 FE ...~........|...
2234:3280 E0 E6 FE 7C 00 00 00 00 00 10 38 00 7C 7C 0C 7C ...|......8.||.|
2234:3290 CC CC FE 76 00 00 00 00 00 00 CC 00 00 78 0C 7C ...v.........x.|
2234:32A0 CC CC CC 76 00 00 00 00 00 60 30 18 00 78 0C 7C ...v.....`0..x.|
2234:32B0 CC CC CC 76 00 00 00 00 00 38 6C 38 00 78 0C 7C ...v.....8l8.x.|
2234:32C0 CC CC CC 76 00 00 00 00 00 00 00 00 3C 66 60 60 ...v........<f``
2234:32D0 66 3C 0C 06 3C 00 00 00 00 10 38 6C 00 7C C6 FE f<..<.....8l.|..
2234:32E0 C0 C0 C6 7C 00 00 00 00 00 00 C6 00 00 7C C6 FE ...|.........|..
2234:32F0 C0 C0 C6 7C 00 00 00 00 00 60 30 18 00 7C C6 FE ...|.....`0..|..
2234:3300 C0 C0 C6 7C 00 00 00 00 00 00 66 00 00 38 18 18 ...|......f..8..
2234:3310 18 18 18 3C 00 00 00 00 00 18 3C 66 00 38 18 18 ...<......<f.8..
2234:3320 18 18 18 3C 00 00 00 00 0E 1C 00 3C 3C 3C 3C 3C ...<.......<<<<<
2234:3330 3C 3C 3C 3C 00 00 00 00 00 C6 00 10 38 6C C6 C6 <<<<........8l..
2234:3340 FE C6 C6 C6 00 00 00 00 03 06 38 7C FE E6 E6 FE ..........8|....
2234:3350 FE E6 E6 E6 00 00 00 00 00 1C 38 00 FE FE E6 F0 ..........8.....
2234:3360 F0 E6 FE FE 00 00 00 00 00 00 00 00 00 6E 3B 1B .............n;.
2234:3370 7E D8 DC 77 00 00 00 00 00 00 3E 6C CC CC FE CC ~..w......>l....
2234:3380 CC CC CC CE 00 00 00 00 77 EE 00 7C FE FE E6 E6 ........w..|....
2234:3390 E6 FE FE 7C 00 00 00 00 00 E6 00 7C FE FE E6 E6 ...|.......|....
2234:33A0 E6 FE FE 7C 00 00 00 00 1C 38 00 7C FE FE E6 E6 ...|.....8.|....
2234:33B0 E6 FE FE 7C 00 00 00 00 77 EE 00 E6 E6 E6 E6 E6 ...|....w.......
2234:33C0 E6 FE FE 7C 00 00 00 00 1C 38 00 E6 E6 E6 E6 E6 ...|.....8......
2234:33D0 E6 FE FE 7C 00 00 00 00 77 EE 00 E6 E6 E6 E6 E6 ...|....w.......
2234:33E0 E6 FE FE 7C 00 00 00 00 00 E6 00 7C FE FE E6 E6 ...|.......|....
2234:33F0 E6 FE FE 7C 00 00 00 00 00 E6 00 E6 E6 E6 E6 E6 ...|............
2234:3400 E6 FE FE 7C 00 00 00 00 00 18 18 7E C3 C0 C0 C0 ...|.......~....
2234:3410 C3 7E 18 18 00 00 00 00 00 38 6C 64 60 F0 60 60 .~.......8ld`.``
2234:3420 60 60 E6 FC 00 00 00 00 00 00 C3 66 3C 18 FF 18 ``.........f<...
2234:3430 FF 18 18 18 00 00 00 00 00 FC 66 66 7C 62 66 6F ..........ff|bfo
2234:3440 66 66 66 F3 00 00 00 00 00 0E 1B 18 18 18 7E 18 fff...........~.
2234:3450 18 18 18 18 D8 70 00 00 00 1C 38 00 7C FE CE 0E .....p....8.|...
2234:3460 7E CE FE 76 00 00 00 00 00 1C 38 00 38 38 38 38 ~..v......8.8888
2234:3470 38 38 38 38 00 00 00 00 1C 38 00 7C FE FE E6 E6 8888.....8.|....
2234:3480 E6 FE FE 7C 00 00 00 00 1C 38 00 E6 E6 E6 E6 E6 ...|.....8......
2234:3490 E6 E6 FE 7E 00 00 00 00 00 00 76 DC 00 DC 66 66 ...~......v...ff
2234:34A0 66 66 66 66 00 00 00 00 76 DC 00 C6 E6 F6 FE DE ffff....v.......
2234:34B0 CE C6 C6 C6 00 00 00 00 00 3C 6C 6C 3E 00 7E 00 .........<ll>.~.
2234:34C0 00 00 00 00 00 00 00 00 77 EE 00 7C FE FE E6 E6 ........w..|....
2234:34D0 E6 FE FE 7C 00 00 00 00 00 00 30 30 00 30 30 60 ...|......00.00`
2234:34E0 C0 C6 C6 7C 00 00 00 00 00 00 00 00 00 00 FE C0 ...|............
2234:34F0 C0 C0 C0 00 00 00 00 00 00 00 00 00 00 00 FE 06 ................
2234:3500 06 06 06 00 00 00 00 00 00 C0 C0 C2 C6 CC 18 30 ...............0
2234:3510 60 CE 9B 06 0C 1F 00 00 00 C0 C0 C2 C6 CC 18 30 `..............0
2234:3520 66 CE 96 3E 06 06 00 00 00 00 18 18 00 18 18 18 f..>............
2234:3530 3C 3C 3C 18 00 00 00 00 00 00 00 00 00 36 6C D8 <<<..........6l.
2234:3540 6C 36 00 00 00 00 00 00 00 00 00 00 00 D8 6C 36 l6............l6
2234:3550 6C D8 00 00 00 00 00 00 11 44 11 44 11 44 11 44 l........D.D.D.D
2234:3560 11 44 11 44 11 44 11 44 55 AA 55 AA 55 AA 55 AA .D.D.D.DU.U.U.U.
2234:3570 55 AA 55 AA 55 AA 55 AA DD 77 DD 77 DD 77 DD 77 U.U.U.U..w.w.w.w
2234:3580 DD 77 DD 77 DD 77 DD 77 18 18 18 18 18 18 18 18 .w.w.w.w........
2234:3590 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 F8 ................
2234:35A0 18 18 18 18 18 18 18 18 18 18 18 18 18 F8 18 F8 ................
2234:35B0 18 18 18 18 18 18 18 18 36 36 36 36 36 36 36 F6 ........6666666.
2234:35C0 36 36 36 36 36 36 36 36 00 00 00 00 00 00 00 FE 66666666........
2234:35D0 36 36 36 36 36 36 36 36 00 00 00 00 00 F8 18 F8 66666666........
2234:35E0 18 18 18 18 18 18 18 18 36 36 36 36 36 F6 06 F6 ........66666...
2234:35F0 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 6666666666666666
2234:3600 36 36 36 36 36 36 36 36 00 00 00 00 00 FE 06 F6 66666666........
2234:3610 36 36 36 36 36 36 36 36 36 36 36 36 36 F6 06 FE 6666666666666...
2234:3620 00 00 00 00 00 00 00 00 36 36 36 36 36 36 36 FE ........6666666.
2234:3630 00 00 00 00 00 00 00 00 18 18 18 18 18 F8 18 F8 ................
2234:3640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F8 ................
2234:3650 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1F ................
2234:3660 00 00 00 00 00 00 00 00 18 18 18 18 18 18 18 FF ................
2234:3670 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF ................
2234:3680 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1F ................
2234:3690 18 18 18 18 18 18 18 18 00 00 00 00 00 00 00 FF ................
2234:36A0 00 00 00 00 00 00 00 00 18 18 18 18 18 18 18 FF ................
2234:36B0 18 18 18 18 18 18 18 18 18 18 18 18 18 1F 18 1F ................
2234:36C0 18 18 18 18 18 18 18 18 36 36 36 36 36 36 36 37 ........66666667
2234:36D0 36 36 36 36 36 36 36 36 36 36 36 36 36 37 30 3F 666666666666670?
2234:36E0 00 00 00 00 00 00 00 00 00 00 00 00 00 3F 30 37 .............?07
2234:36F0 36 36 36 36 36 36 36 36 36 36 36 36 36 F7 00 FF 6666666666666...
2234:3700 00 00 00 00 00 00 00 00 00 00 00 00 00 FF 00 F7 ................
2234:3710 36 36 36 36 36 36 36 36 36 36 36 36 36 37 30 37 6666666666666707
2234:3720 36 36 36 36 36 36 36 36 00 00 00 00 00 FF 00 FF 66666666........
2234:3730 00 00 00 00 00 00 00 00 36 36 36 36 36 F7 00 F7 ........66666...
2234:3740 36 36 36 36 36 36 36 36 18 18 18 18 18 FF 00 FF 66666666........
2234:3750 00 00 00 00 00 00 00 00 36 36 36 36 36 36 36 FF ........6666666.
2234:3760 00 00 00 00 00 00 00 00 00 00 00 00 00 FF 00 FF ................
2234:3770 18 18 18 18 18 18 18 18 00 00 00 00 00 00 00 FF ................
2234:3780 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 3F 666666666666666?
2234:3790 00 00 00 00 00 00 00 00 18 18 18 18 18 1F 18 1F ................
2234:37A0 00 00 00 00 00 00 00 00 00 00 00 00 00 1F 18 1F ................
2234:37B0 18 18 18 18 18 18 18 18 00 00 00 00 00 00 00 3F ...............?
2234:37C0 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 FF 666666666666666.
2234:37D0 36 36 36 36 36 36 36 36 18 18 18 18 18 FF 18 FF 66666666........
2234:37E0 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 F8 ................
2234:37F0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 1F ................
2234:3800 18 18 18 18 18 18 18 18 FF FF FF FF FF FF FF FF ................
2234:3810 FF FF FF FF FF FF FF FF 00 00 00 00 00 00 00 FF ................
2234:3820 FF FF FF FF FF FF FF FF F0 F0 F0 F0 F0 F0 F0 F0 ................
2234:3830 F0 F0 F0 F0 F0 F0 F0 F0 0F 0F 0F 0F 0F 0F 0F 0F ................
2234:3840 0F 0F 0F 0F 0F 0F 0F 0F FF FF FF FF FF FF FF 00 ................
2234:3850 00 00 00 00 00 00 00 00 00 00 00 00 00 76 DC D8 .............v..
2234:3860 D8 D8 DC 76 00 00 00 00 00 00 78 CC CC CC D8 CC ...v......x.....
2234:3870 C6 C6 C6 CC 00 00 00 00 00 00 FE C6 C6 C0 C0 C0 ................
2234:3880 C0 C0 C0 C0 00 00 00 00 00 00 00 00 FE 6C 6C 6C .............lll
2234:3890 6C 6C 6C 6C 00 00 00 00 00 00 00 FE C6 60 30 18 llll.........`0.
2234:38A0 30 60 C6 FE 00 00 00 00 00 00 00 00 00 7E D8 D8 0`...........~..
2234:38B0 D8 D8 D8 70 00 00 00 00 00 00 00 00 66 66 66 66 ...p........ffff
2234:38C0 66 7C 60 60 C0 00 00 00 00 00 00 00 76 DC 18 18 f|``........v...
2234:38D0 18 18 18 18 00 00 00 00 00 00 00 7E 18 3C 66 66 ...........~.<ff
2234:38E0 66 3C 18 7E 00 00 00 00 00 00 00 38 6C C6 C6 FE f<.~.......8l...
2234:38F0 C6 C6 6C 38 00 00 00 00 00 00 38 6C C6 C6 C6 6C ..l8......8l...l
2234:3900 6C 6C 6C EE 00 00 00 00 00 00 1E 30 18 0C 3E 66 lll........0..>f
2234:3910 66 66 66 3C 00 00 00 00 00 00 00 00 00 7E DB DB fff<.........~..
2234:3920 DB 7E 00 00 00 00 00 00 00 00 00 03 06 7E DB DB .~...........~..
2234:3930 F3 7E 60 C0 00 00 00 00 00 00 1C 30 60 60 7C 60 .~`........0``|`
2234:3940 60 60 30 1C 00 00 00 00 00 00 00 7C C6 C6 C6 C6 ``0........|....
2234:3950 C6 C6 C6 C6 00 00 00 00 00 00 00 00 FE 00 00 FE ................
2234:3960 00 00 FE 00 00 00 00 00 00 00 00 00 18 18 7E 18 ..............~.
2234:3970 18 00 00 FF 00 00 00 00 00 00 00 30 18 0C 06 0C ...........0....
2234:3980 18 30 00 7E 00 00 00 00 00 00 00 0C 18 30 60 30 .0.~.........0`0
2234:3990 18 0C 00 7E 00 00 00 00 00 00 0E 1B 1B 18 18 18 ...~............
2234:39A0 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 ................
2234:39B0 D8 D8 D8 70 00 00 00 00 00 00 00 00 18 18 00 7E ...p...........~
2234:39C0 00 18 18 00 00 00 00 00 00 00 00 00 00 76 DC 00 .............v..
2234:39D0 76 DC 00 00 00 00 00 00 00 38 6C 6C 38 00 00 00 v........8ll8...
2234:39E0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 18 ................
2234:39F0 18 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:3A00 18 00 00 00 00 00 00 00 00 0F 0C 0C 0C 0C 0C EC ................
2234:3A10 6C 6C 3C 1C 00 00 00 00 00 D8 6C 6C 6C 6C 6C 00 ll<.......lllll.
2234:3A20 00 00 00 00 00 00 00 00 00 70 D8 30 60 C8 F8 00 .........p.0`...
2234:3A30 00 00 00 00 00 00 00 00 00 00 00 00 7C 7C 7C 7C ............||||
2234:3A40 7C 7C 7C 00 00 00 00 00 00 00 00 00 00 00 00 00 |||.............
2234:3A50 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:3A60 00 00 00 00 00 00 00 00 7E 81 A5 81 81 BD 99 81 ........~.......
2234:3A70 7E 00 00 00 00 00 7E FF DB FF FF C3 E7 FF 7E 00 ~.....~.......~.
2234:3A80 00 00 00 00 00 6C FE FE FE FE 7C 38 10 00 00 00 .....l....|8....
2234:3A90 00 00 00 10 38 7C FE 7C 38 10 00 00 00 00 00 00 ....8|.|8.......
2234:3AA0 18 3C 3C E7 E7 E7 18 18 3C 00 00 00 00 00 18 3C .<<.....<......<
2234:3AB0 7E FF FF 7E 18 18 3C 00 00 00 00 00 00 00 00 18 ~..~..<.........
2234:3AC0 3C 3C 18 00 00 00 00 00 FF FF FF FF FF E7 C3 C3 <<..............
2234:3AD0 E7 FF FF FF FF FF 00 00 00 00 3C 66 42 42 66 3C ..........<fBBf<
2234:3AE0 00 00 00 00 FF FF FF FF C3 99 BD BD 99 C3 FF FF ................
2234:3AF0 FF FF 00 00 1E 0E 1A 32 78 CC CC CC 78 00 00 00 .......2x...x...
2234:3B00 00 00 3C 66 66 66 3C 18 7E 18 18 00 00 00 00 00 ..<fff<.~.......
2234:3B10 3F 33 3F 30 30 30 70 F0 E0 00 00 00 00 00 7F 63 ?3?000p........c
2234:3B20 7F 63 63 63 67 E7 E6 C0 00 00 00 00 18 18 DB 3C .cccg..........<
2234:3B30 E7 3C DB 18 18 00 00 00 00 00 80 C0 E0 F8 FE F8 .<..............
2234:3B40 E0 C0 80 00 00 00 00 00 02 06 0E 3E FE 3E 0E 06 ...........>.>..
2234:3B50 02 00 00 00 00 00 18 3C 7E 18 18 18 7E 3C 18 00 .......<~...~<..
2234:3B60 00 00 00 00 66 66 66 66 66 66 00 66 66 00 00 00 ....ffffff.ff...
2234:3B70 00 00 7F DB DB DB 7B 1B 1B 1B 1B 00 00 00 00 7C ......{........|
2234:3B80 C6 60 38 6C C6 C6 6C 38 0C C6 7C 00 00 00 00 00 .`8l..l8..|.....
2234:3B90 00 00 00 00 FE FE FE 00 00 00 00 00 18 3C 7E 18 .............<~.
2234:3BA0 18 18 7E 3C 18 7E 00 00 00 00 18 3C 7E 18 18 18 ..~<.~.....<~...
2234:3BB0 18 18 18 00 00 00 00 00 18 18 18 18 18 18 7E 3C ..............~<
2234:3BC0 18 00 00 00 00 00 00 00 18 0C FE 0C 18 00 00 00 ................
2234:3BD0 00 00 00 00 00 00 30 60 FE 60 30 00 00 00 00 00 ......0`.`0.....
2234:3BE0 00 00 00 00 00 C0 C0 C0 FE 00 00 00 00 00 00 00 ................
2234:3BF0 00 00 28 6C FE 6C 28 00 00 00 00 00 00 00 00 10 ..(l.l(.........
2234:3C00 38 38 7C 7C FE FE 00 00 00 00 00 00 00 FE FE 7C 88||...........|
2234:3C10 7C 38 38 10 00 00 00 00 00 00 00 00 00 00 00 00 |88.............
2234:3C20 00 00 00 00 00 00 00 00 18 3C 3C 3C 18 18 00 18 .........<<<....
2234:3C30 18 00 00 00 00 66 66 66 24 00 00 00 00 00 00 00 .....fff$.......
2234:3C40 00 00 00 00 6C 6C FE 6C 6C 6C FE 6C 6C 00 00 00 ....ll.lll.ll...
2234:3C50 18 18 7C C6 C2 C0 7C 06 86 C6 7C 18 18 00 00 00 ..|...|...|.....
2234:3C60 00 00 C2 C6 0C 18 30 66 C6 00 00 00 00 00 38 6C ......0f......8l
2234:3C70 6C 38 76 DC CC CC 76 00 00 00 00 30 30 30 60 00 l8v...v....000`.
2234:3C80 00 00 00 00 00 00 00 00 00 00 0C 18 30 30 30 30 ............0000
2234:3C90 30 18 0C 00 00 00 00 00 30 18 0C 0C 0C 0C 0C 18 0.......0.......
2234:3CA0 30 00 00 00 00 00 00 00 66 3C FF 3C 66 00 00 00 0.......f<.<f...
2234:3CB0 00 00 00 00 00 00 18 18 7E 18 18 00 00 00 00 00 ........~.......
2234:3CC0 00 00 00 00 00 00 00 00 18 18 18 30 00 00 00 00 ...........0....
2234:3CD0 00 00 00 00 FE 00 00 00 00 00 00 00 00 00 00 00 ................
2234:3CE0 00 00 00 00 00 18 18 00 00 00 00 00 02 06 0C 18 ................
2234:3CF0 30 60 C0 80 00 00 00 00 00 00 7C C6 CE DE F6 E6 0`........|.....
2234:3D00 C6 C6 7C 00 00 00 00 00 18 38 78 18 18 18 18 18 ..|......8x.....
2234:3D10 7E 00 00 00 00 00 7C C6 06 0C 18 30 60 C6 FE 00 ~.....|....0`...
2234:3D20 00 00 00 00 7C C6 06 06 3C 06 06 C6 7C 00 00 00 ....|...<...|...
2234:3D30 00 00 0C 1C 3C 6C CC FE 0C 0C 1E 00 00 00 00 00 ....<l..........
2234:3D40 FE C0 C0 C0 FC 06 06 C6 7C 00 00 00 00 00 38 60 ........|.....8`
2234:3D50 C0 C0 FC C6 C6 C6 7C 00 00 00 00 00 FE C6 06 0C ......|.........
2234:3D60 18 30 30 30 30 00 00 00 00 00 7C C6 C6 C6 7C C6 .0000.....|...|.
2234:3D70 C6 C6 7C 00 00 00 00 00 7C C6 C6 C6 7E 06 06 0C ..|.....|...~...
2234:3D80 78 00 00 00 00 00 00 18 18 00 00 00 18 18 00 00 x...............
2234:3D90 00 00 00 00 00 18 18 00 00 00 18 18 30 00 00 00 ............0...
2234:3DA0 00 00 06 0C 18 30 60 30 18 0C 06 00 00 00 00 00 .....0`0........
2234:3DB0 00 00 00 7E 00 00 7E 00 00 00 00 00 00 00 60 30 ...~..~.......`0
2234:3DC0 18 0C 06 0C 18 30 60 00 00 00 00 00 7C C6 C6 0C .....0`.....|...
2234:3DD0 18 18 00 18 18 00 00 00 00 00 7C C6 C6 DE DE DE ..........|.....
2234:3DE0 DC C0 7C 00 00 00 00 00 10 38 6C C6 C6 FE C6 C6 ..|......8l.....
2234:3DF0 C6 00 00 00 00 00 FC 66 66 66 7C 66 66 66 FC 00 .......fff|fff..
2234:3E00 00 00 00 00 3C 66 C2 C0 C0 C0 C2 66 3C 00 00 00 ....<f.....f<...
2234:3E10 00 00 F8 6C 66 66 66 66 66 6C F8 00 00 00 00 00 ...lfffffl......
2234:3E20 FE 66 62 68 78 68 62 66 FE 00 00 00 00 00 FE 66 .fbhxhbf.......f
2234:3E30 62 68 78 68 60 60 F0 00 00 00 00 00 3C 66 C2 C0 bhxh``......<f..
2234:3E40 C0 DE C6 66 3A 00 00 00 00 00 C6 C6 C6 C6 FE C6 ...f:...........
2234:3E50 C6 C6 C6 00 00 00 00 00 3C 18 18 18 18 18 18 18 ........<.......
2234:3E60 3C 00 00 00 00 00 1E 0C 0C 0C 0C 0C CC CC 78 00 <.............x.
2234:3E70 00 00 00 00 E6 66 6C 6C 78 6C 6C 66 E6 00 00 00 .....fllxllf....
2234:3E80 00 00 F0 60 60 60 60 60 62 66 FE 00 00 00 00 00 ...`````bf......
2234:3E90 C6 EE FE FE D6 C6 C6 C6 C6 00 00 00 00 00 C6 E6 ................
2234:3EA0 F6 FE DE CE C6 C6 C6 00 00 00 00 00 38 6C C6 C6 ............8l..
2234:3EB0 C6 C6 C6 6C 38 00 00 00 00 00 FC 66 66 66 7C 60 ...l8......fff|`
2234:3EC0 60 60 F0 00 00 00 00 00 7C C6 C6 C6 C6 D6 DE 7C ``......|......|
2234:3ED0 0C 0E 00 00 00 00 FC 66 66 66 7C 6C 66 66 E6 00 .......fff|lff..
2234:3EE0 00 00 00 00 7C C6 C6 60 38 0C C6 C6 7C 00 00 00 ....|..`8...|...
2234:3EF0 00 00 7E 7E 5A 18 18 18 18 18 3C 00 00 00 00 00 ..~~Z.....<.....
2234:3F00 C6 C6 C6 C6 C6 C6 C6 C6 7C 00 00 00 00 00 C6 C6 ........|.......
2234:3F10 C6 C6 C6 C6 6C 38 10 00 00 00 00 00 C6 C6 C6 C6 ....l8..........
2234:3F20 D6 D6 FE 7C 6C 00 00 00 00 00 C6 C6 6C 38 38 38 ...|l.......l888
2234:3F30 6C C6 C6 00 00 00 00 00 66 66 66 66 3C 18 18 18 l.......ffff<...
2234:3F40 3C 00 00 00 00 00 FE C6 8C 18 30 60 C2 C6 FE 00 <.........0`....
2234:3F50 00 00 00 00 3C 30 30 30 30 30 30 30 3C 00 00 00 ....<0000000<...
2234:3F60 00 00 80 C0 E0 70 38 1C 0E 06 02 00 00 00 00 00 .....p8.........
2234:3F70 3C 0C 0C 0C 0C 0C 0C 0C 3C 00 00 00 10 38 6C C6 <.......<....8l.
2234:3F80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:3F90 00 00 00 00 00 00 FF 00 30 30 18 00 00 00 00 00 ........00......
2234:3FA0 00 00 00 00 00 00 00 00 00 00 00 78 0C 7C CC CC ...........x.|..
2234:3FB0 76 00 00 00 00 00 E0 60 60 78 6C 66 66 66 7C 00 v......``xlfff|.
2234:3FC0 00 00 00 00 00 00 00 7C C6 C0 C0 C6 7C 00 00 00 .......|....|...
2234:3FD0 00 00 1C 0C 0C 3C 6C CC CC CC 76 00 00 00 00 00 .....<l...v.....
2234:3FE0 00 00 00 7C C6 FE C0 C6 7C 00 00 00 00 00 38 6C ...|....|.....8l
2234:3FF0 64 60 F0 60 60 60 F0 00 00 00 00 00 00 00 00 76 d`.```.........v
2234:4000 CC CC CC 7C 0C CC 78 00 00 00 E0 60 60 6C 76 66 ...|..x....``lvf
2234:4010 66 66 E6 00 00 00 00 00 18 18 00 38 18 18 18 18 ff.........8....
2234:4020 3C 00 00 00 00 00 06 06 00 0E 06 06 06 06 66 66 <.............ff
2234:4030 3C 00 00 00 E0 60 60 66 6C 78 6C 66 E6 00 00 00 <....``flxlf....
2234:4040 00 00 38 18 18 18 18 18 18 18 3C 00 00 00 00 00 ..8.......<.....
2234:4050 00 00 00 EC FE D6 D6 D6 C6 00 00 00 00 00 00 00 ................
2234:4060 00 DC 66 66 66 66 66 00 00 00 00 00 00 00 00 7C ..fffff........|
2234:4070 C6 C6 C6 C6 7C 00 00 00 00 00 00 00 00 DC 66 66 ....|.........ff
2234:4080 66 7C 60 60 F0 00 00 00 00 00 00 76 CC CC CC 7C f|``.......v...|
2234:4090 0C 0C 1E 00 00 00 00 00 00 DC 76 66 60 60 F0 00 ..........vf``..
2234:40A0 00 00 00 00 00 00 00 7C C6 70 1C C6 7C 00 00 00 .......|.p..|...
2234:40B0 00 00 10 30 30 FC 30 30 30 36 1C 00 00 00 00 00 ...00.0006......
2234:40C0 00 00 00 CC CC CC CC CC 76 00 00 00 00 00 00 00 ........v.......
2234:40D0 00 66 66 66 66 3C 18 00 00 00 00 00 00 00 00 C6 .ffff<..........
2234:40E0 C6 D6 D6 FE 6C 00 00 00 00 00 00 00 00 C6 6C 38 ....l.........l8
2234:40F0 38 6C C6 00 00 00 00 00 00 00 00 C6 C6 C6 C6 7E 8l.............~
2234:4100 06 0C F8 00 00 00 00 00 00 FE CC 18 30 66 FE 00 ............0f..
2234:4110 00 00 00 00 0E 18 18 18 70 18 18 18 0E 00 00 00 ........p.......
2234:4120 00 00 18 18 18 18 00 18 18 18 18 00 00 00 00 00 ................
2234:4130 70 18 18 18 0E 18 18 18 70 00 00 00 00 00 76 DC p.......p.....v.
2234:4140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 10 38 ...............8
2234:4150 6C C6 C6 FE 00 00 00 00 00 00 3C 66 C2 C0 C0 C2 l.........<f....
2234:4160 66 3C 0C 06 7C 00 00 00 CC CC 00 CC CC CC CC CC f<..|...........
2234:4170 76 00 00 00 00 00 18 30 00 7C C6 FE C0 C6 7C 00 v......0.|....|.
2234:4180 00 00 00 10 38 6C 00 78 0C 7C CC CC 76 00 00 00 ....8l.x.|..v...
2234:4190 00 00 CC CC 00 78 0C 7C CC CC 76 00 00 00 00 60 .....x.|..v....`
2234:41A0 30 18 00 78 0C 7C CC CC 76 00 00 00 00 38 6C 38 0..x.|..v....8l8
2234:41B0 00 78 0C 7C CC CC 76 00 00 00 00 00 00 00 3C 66 .x.|..v.......<f
2234:41C0 60 66 3C 0C 06 3C 00 00 00 10 38 6C 00 7C C6 FE `f<..<....8l.|..
2234:41D0 C0 C6 7C 00 00 00 00 00 CC CC 00 7C C6 FE C0 C6 ..|........|....
2234:41E0 7C 00 00 00 00 60 30 18 00 7C C6 FE C0 C6 7C 00 |....`0..|....|.
2234:41F0 00 00 00 00 66 66 00 38 18 18 18 18 3C 00 00 00 ....ff.8....<...
2234:4200 00 18 3C 66 00 38 18 18 18 18 3C 00 00 00 0C 18 ..<f.8....<.....
2234:4210 00 38 18 18 18 18 18 18 3C 00 00 00 00 C6 C6 10 .8......<.......
2234:4220 38 6C C6 C6 FE C6 C6 00 00 00 0C 18 00 38 6C C6 8l...........8l.
2234:4230 C6 FE C6 C6 C6 00 00 00 00 0C 18 00 FE 62 68 78 .............bhx
2234:4240 68 62 FE 00 00 00 00 00 00 00 CC 76 36 7E D8 D8 hb.........v6~..
2234:4250 6E 00 00 00 00 00 3E 6C CC CC FE CC CC CC CE 00 n.....>l........
2234:4260 00 00 00 00 36 6C 00 7C C6 C6 C6 C6 7C 00 00 00 ....6l.|....|...
2234:4270 00 00 C6 C6 00 7C C6 C6 C6 C6 7C 00 00 00 0C 18 .....|....|.....
2234:4280 00 38 6C C6 C6 C6 C6 6C 38 00 00 00 00 00 66 CC .8l....l8.....f.
2234:4290 00 CC CC CC CC CC 76 00 00 00 00 0C 18 00 C6 C6 ......v.........
2234:42A0 C6 C6 C6 C6 7C 00 00 00 00 36 6C 00 C6 C6 C6 C6 ....|....6l.....
2234:42B0 C6 C6 7C 00 00 00 00 C6 C6 38 6C C6 C6 C6 C6 6C ..|......8l....l
2234:42C0 38 00 00 00 00 C6 C6 00 C6 C6 C6 C6 C6 C6 7C 00 8.............|.
2234:42D0 00 00 00 18 18 3C 66 60 60 66 3C 18 18 00 00 00 .....<f``f<.....
2234:42E0 00 38 6C 64 60 F0 60 60 60 E6 FC 00 00 00 00 00 .8ld`.```.......
2234:42F0 66 66 3C 18 7E 18 7E 18 18 00 00 00 00 F8 CC CC ff<.~.~.........
2234:4300 F8 C4 CC DE CC CC C6 00 00 00 00 0E 1B 18 18 18 ................
2234:4310 7E 18 18 18 18 D8 70 00 00 00 18 30 00 78 0C 7C ~.....p....0.x.|
2234:4320 CC CC 76 00 00 00 00 00 0C 18 00 38 18 18 18 18 ..v........8....
2234:4330 3C 00 00 00 00 00 18 30 00 7C C6 C6 C6 C6 7C 00 <......0.|....|.
2234:4340 00 00 00 00 18 30 00 CC CC CC CC CC 76 00 00 00 .....0......v...
2234:4350 00 00 76 DC 00 DC 66 66 66 66 66 00 00 00 76 DC ..v...fffff...v.
2234:4360 00 C6 E6 F6 FE DE CE C6 C6 00 00 00 00 3C 6C 6C .............<ll
2234:4370 3E 00 7E 00 00 00 00 00 00 00 36 6C 00 38 6C C6 >.~.......6l.8l.
2234:4380 C6 C6 C6 6C 38 00 00 00 00 00 30 30 00 30 30 60 ...l8.....00.00`
2234:4390 C6 C6 7C 00 00 00 00 00 00 00 00 00 FE C0 C0 C0 ..|.............
2234:43A0 00 00 00 00 00 00 00 00 00 00 FE 06 06 06 00 00 ................
2234:43B0 00 00 00 C0 C0 C6 CC D8 30 60 DC 86 0C 18 3E 00 ........0`....>.
2234:43C0 00 C0 C0 C6 CC D8 30 66 CE 9E 3E 06 06 00 00 00 ......0f..>.....
2234:43D0 18 18 00 18 18 3C 3C 3C 18 00 00 00 00 00 00 00 .....<<<........
2234:43E0 36 6C D8 6C 36 00 00 00 00 00 00 00 00 00 D8 6C 6l.l6..........l
2234:43F0 36 6C D8 00 00 00 00 00 11 44 11 44 11 44 11 44 6l.......D.D.D.D
2234:4400 11 44 11 44 11 44 55 AA 55 AA 55 AA 55 AA 55 AA .D.D.DU.U.U.U.U.
2234:4410 55 AA 55 AA DD 77 DD 77 DD 77 DD 77 DD 77 DD 77 U.U..w.w.w.w.w.w
2234:4420 DD 77 18 18 18 18 18 18 18 18 18 18 18 18 18 18 .w..............
2234:4430 18 18 18 18 18 18 18 F8 18 18 18 18 18 18 18 18 ................
2234:4440 18 18 18 F8 18 F8 18 18 18 18 18 18 36 36 36 36 ............6666
2234:4450 36 36 36 F6 36 36 36 36 36 36 00 00 00 00 00 00 666.666666......
2234:4460 00 FE 36 36 36 36 36 36 00 00 00 00 00 F8 18 F8 ..666666........
2234:4470 18 18 18 18 18 18 36 36 36 36 36 F6 06 F6 36 36 ......66666...66
2234:4480 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 6666666666666666
2234:4490 36 36 00 00 00 00 00 FE 06 F6 36 36 36 36 36 36 66........666666
2234:44A0 36 36 36 36 36 F6 06 FE 00 00 00 00 00 00 36 36 66666.........66
2234:44B0 36 36 36 36 36 FE 00 00 00 00 00 00 18 18 18 18 66666...........
2234:44C0 18 F8 18 F8 00 00 00 00 00 00 00 00 00 00 00 00 ................
2234:44D0 00 F8 18 18 18 18 18 18 18 18 18 18 18 18 18 1F ................
2234:44E0 00 00 00 00 00 00 18 18 18 18 18 18 18 FF 00 00 ................
2234:44F0 00 00 00 00 00 00 00 00 00 00 00 FF 18 18 18 18 ................
2234:4500 18 18 18 18 18 18 18 18 18 1F 18 18 18 18 18 18 ................
2234:4510 00 00 00 00 00 00 00 FF 00 00 00 00 00 00 18 18 ................
2234:4520 18 18 18 18 18 FF 18 18 18 18 18 18 18 18 18 18 ................
2234:4530 18 1F 18 1F 18 18 18 18 18 18 36 36 36 36 36 36 ..........666666
2234:4540 36 37 36 36 36 36 36 36 36 36 36 36 36 37 30 3F 676666666666670?
2234:4550 00 00 00 00 00 00 00 00 00 00 00 3F 30 37 36 36 ...........?0766
2234:4560 36 36 36 36 36 36 36 36 36 F7 00 FF 00 00 00 00 666666666.......
2234:4570 00 00 00 00 00 00 00 FF 00 F7 36 36 36 36 36 36 ..........666666
2234:4580 36 36 36 36 36 37 30 37 36 36 36 36 36 36 00 00 66666707666666..
2234:4590 00 00 00 FF 00 FF 00 00 00 00 00 00 36 36 36 36 ............6666
2234:45A0 36 F7 00 F7 36 36 36 36 36 36 18 18 18 18 18 FF 6...666666......
2234:45B0 00 FF 00 00 00 00 00 00 36 36 36 36 36 36 36 FF ........6666666.
2234:45C0 00 00 00 00 00 00 00 00 00 00 00 FF 00 FF 18 18 ................
2234:45D0 18 18 18 18 00 00 00 00 00 00 00 FF 36 36 36 36 ............6666
2234:45E0 36 36 36 36 36 36 36 36 36 3F 00 00 00 00 00 00 666666666?......
2234:45F0 18 18 18 18 18 1F 18 1F 00 00 00 00 00 00 00 00 ................
2234:4600 00 00 00 1F 18 1F 18 18 18 18 18 18 00 00 00 00 ................
2234:4610 00 00 00 3F 36 36 36 36 36 36 36 36 36 36 36 36 ...?666666666666
2234:4620 36 FF 36 36 36 36 36 36 18 18 18 18 18 FF 18 FF 6.666666........
2234:4630 18 18 18 18 18 18 18 18 18 18 18 18 18 F8 00 00 ................
2234:4640 00 00 00 00 00 00 00 00 00 00 00 1F 18 18 18 18 ................
2234:4650 18 18 FF FF FF FF FF FF FF FF FF FF FF FF FF FF ................
2234:4660 00 00 00 00 00 00 00 FF FF FF FF FF FF FF F0 F0 ................
2234:4670 F0 F0 F0 F0 F0 F0 F0 F0 F0 F0 F0 F0 0F 0F 0F 0F ................
2234:4680 0F 0F 0F 0F 0F 0F 0F 0F 0F 0F FF FF FF FF FF FF ................
2234:4690 FF 00 00 00 00 00 00 00 00 00 00 00 00 76 DC D8 .............v..
2234:46A0 D8 DC 76 00 00 00 00 00 00 00 7C C6 FC C6 C6 FC ..v.......|.....
2234:46B0 C0 C0 40 00 00 00 FE C6 C6 C0 C0 C0 C0 C0 C0 00 ..@.............
2234:46C0 00 00 00 00 00 00 FE 6C 6C 6C 6C 6C 6C 00 00 00 .......llllll...
2234:46D0 00 00 FE C6 60 30 18 30 60 C6 FE 00 00 00 00 00 ....`0.0`.......
2234:46E0 00 00 00 7E D8 D8 D8 D8 70 00 00 00 00 00 00 00 ...~....p.......
2234:46F0 66 66 66 66 7C 60 60 C0 00 00 00 00 00 00 76 DC ffff|``.......v.
2234:4700 18 18 18 18 18 00 00 00 00 00 7E 18 3C 66 66 66 ..........~.<fff
2234:4710 3C 18 7E 00 00 00 00 00 38 6C C6 C6 FE C6 C6 6C <.~.....8l.....l
2234:4720 38 00 00 00 00 00 38 6C C6 C6 C6 6C 6C 6C EE 00 8.....8l...lll..
2234:4730 00 00 00 00 1E 30 18 0C 3E 66 66 66 3C 00 00 00 .....0..>fff<...
2234:4740 00 00 00 00 00 7E DB DB 7E 00 00 00 00 00 00 00 .....~..~.......
2234:4750 03 06 7E DB DB F3 7E 60 C0 00 00 00 00 00 1C 30 ..~...~`.......0
2234:4760 60 60 7C 60 60 30 1C 00 00 00 00 00 00 7C C6 C6 ``|``0.......|..
2234:4770 C6 C6 C6 C6 C6 00 00 00 00 00 00 FE 00 00 FE 00 ................
2234:4780 00 FE 00 00 00 00 00 00 00 18 18 7E 18 18 00 00 ...........~....
2234:4790 FF 00 00 00 00 00 30 18 0C 06 0C 18 30 00 7E 00 ......0.....0.~.
2234:47A0 00 00 00 00 0C 18 30 60 30 18 0C 00 7E 00 00 00 ......0`0...~...
2234:47B0 00 00 0E 1B 1B 18 18 18 18 18 18 18 18 18 18 18 ................
2234:47C0 18 18 18 18 18 18 D8 D8 70 00 00 00 00 00 00 18 ........p.......
2234:47D0 18 00 7E 00 18 18 00 00 00 00 00 00 00 00 76 DC ..~...........v.
2234:47E0 00 76 DC 00 00 00 00 00 00 38 6C 6C 38 00 00 00 .v.......8ll8...
2234:47F0 00 00 00 00 00 00 00 00 00 00 00 00 18 18 00 00 ................
2234:4800 00 00 00 00 00 00 00 00 00 00 00 18 00 00 00 00 ................
2234:4810 00 00 00 0F 0C 0C 0C 0C 0C EC 6C 3C 1C 00 00 00 ..........l<....
2234:4820 00 D8 6C 6C 6C 6C 6C 00 00 00 00 00 00 00 00 70 ..lllll........p
2234:4830 D8 30 60 C8 F8 00 00 00 00 00 00 00 00 00 00 00 .0`.............
2234:4840 7C 7C 7C 7C 7C 7C 00 00 00 00 00 00 00 00 00 00 ||||||..........
2234:4850 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
;;; Segment 26BA (26BA:0000)
26BA:0000 55 8B EC B4 2A CD 21 32 E4 C4 7E 06 AB 8A C2 C4 U...*.!2..~.....
26BA:0010 7E 0A AB 8A C6 C4 7E 0E AB 91 C4 7E 12 AB 5D CA ~.....~....~..].
26BA:0020 10 00 55 8B EC 8B 4E 0A 8A 76 08 8A 56 06 B4 2B ..U...N..v..V..+
26BA:0030 CD 21 5D CA 06 00                               .!]...         

;; fn26BA_0036: 26BA:0036
fn26BA_0036 proc
	push	bp
	mov	bp,sp
	mov	ah,2C
	int	21
	xor	ah,ah
	mov	al,dl
	les	di,[bp+06]
	stosw
	mov	al,dh
	les	di,[bp+0A]
	stosw
	mov	al,cl
	les	di,[bp+0E]
	stosw
	mov	al,ch
	les	di,[bp+12]
	stosw
	pop	bp
	retf	0010
26BA:005B                                  55 8B EC 8A 6E            U...n
26BA:0060 0C 8A 4E 0A 8A 76 08 8A 56 06 B4 2D CD 21 5D CA ..N..v..V..-.!].
26BA:0070 08 00                                           ..             

;; fn26BA_0072: 26BA:0072
fn26BA_0072 proc
	push	bp
	mov	bp,sp
	mov	al,[bp+0A]
	mov	ah,35
	int	21
	mov	ax,es
	les	di,[bp+06]
	cld
	xchg	ax,bx
	stosw
	xchg	ax,bx
	stosw
	pop	bp
	retf	0006

;; fn26BA_008A: 26BA:008A
fn26BA_008A proc
	push	bp
	mov	bp,sp
	push	ds
	lds	dx,[bp+06]
	mov	al,[bp+0A]
	mov	ah,25
	int	21
	pop	ds
	pop	bp
	retf	0006

;; fn26BA_009D: 26BA:009D
fn26BA_009D proc
	push	bp
	mov	bp,sp
	push	ds
	cld
	lds	si,[bp+06]
	lodsb
	mov	cl,al
	xor	ch,ch
	add	cx,si
	les	di,[bp+0A]
	inc	di
	lodsw
	cmp	si,cx
	ja	00C6

l26BA_00B5:
	cmp	ah,3A
	jnz	00C6

l26BA_00BA:
	cmp	al,61
	jc	00D0

l26BA_00BE:
	cmp	al,7A
	ja	00D0

l26BA_00C2:
	sub	al,20
	jmp	00D0

l26BA_00C6:
	dec	si
	dec	si
	mov	ah,19
	int	21
	add	al,41
	mov	ah,3A

l26BA_00D0:
	stosw
	cmp	si,cx
	jz	00DA

l26BA_00D5:
	cmp	byte ptr [si],5C
	jz	0102

l26BA_00DA:
	sub	al,40
	mov	dl,al
	mov	al,5C
	stosb
	push	si
	push	ds
	mov	ah,47
	mov	si,di
	push	es
	pop	ds
	int	21
	pop	ds
	pop	si
	jc	0102

l26BA_00EF:
	cmp	byte ptr es:[di],00
	jz	0102

l26BA_00F5:
	push	cx
	mov	cx,FFFF
	xor	al,al

l26BA_00FB:
	repne scasb

l26BA_00FD:
	dec	di
	mov	al,5C
	stosb
	pop	cx

l26BA_0102:
	sub	cx,si

l26BA_0104:
	rep movsb

l26BA_0106:
	xor	al,al
	stosb
	lds	si,[bp+0A]
	inc	si
	mov	di,si
	push	di

l26BA_0110:
	lodsb
	or	al,al
	jz	0126

l26BA_0115:
	cmp	al,5C
	jz	0126

l26BA_0119:
	cmp	al,61
	jc	0123

l26BA_011D:
	cmp	al,7A
	ja	0123

l26BA_0121:
	sub	al,20

l26BA_0123:
	stosb
	jmp	0110

l26BA_0126:
	cmp	word ptr [di-02],2E5C
	jnz	0131

l26BA_012D:
	dec	di
	dec	di
	jmp	014D

l26BA_0131:
	cmp	word ptr [di-02],2E2E
	jnz	014D

l26BA_0138:
	cmp	byte ptr [di-03],5C
	jnz	014D

l26BA_013E:
	sub	di,03
	cmp	byte ptr [di-01],3A
	jz	014D

l26BA_0147:
	dec	di
	cmp	byte ptr [di],5C
	jnz	0147

l26BA_014D:
	or	al,al
	jnz	0123

l26BA_0151:
	cmp	byte ptr [di-01],3A
	jnz	015A

l26BA_0157:
	mov	al,5C
	stosb

l26BA_015A:
	mov	ax,di
	pop	di
	sub	ax,di
	dec	di
	stosb
	pop	ds
	pop	bp
	retf	0004
26BA:0166                   00 00 00 00 00 00 00 00 00 00       ..........
;;; Segment 26D1 (26D1:0000)

l26D1_0000:
	push	bp
	mov	bp,sp
	mov	ax,00FF
	call	far 2733:0116
	pop	bp
	ret

;; fn26D1_000D: 26D1:000D
fn26D1_000D proc
	push	bp
	mov	bp,sp
	call	003B
	mov	di,F500
	push	ds
	push	di
	push	cs
	call	033C
	mov	di,F500
	push	ds
	push	di
	call	far 2733:05C7
	mov	di,F600
	push	ds
	push	di
	push	cs
	call	033C
	mov	di,F600
	push	ds
	push	di
	call	far 2733:05CC
	pop	bp
	retf

;; fn26D1_003B: 26D1:003B
fn26D1_003B proc
	mov	ah,0F
	call	0614
	cmp	al,07
	jz	004E

l26D1_0044:
	cmp	al,03
	jbe	004E

l26D1_0048:
	mov	ax,0003
	call	00A3

l26D1_004E:
	call	00F0
	mov	ah,08
	xor	bh,bh
	call	0614
	mov	al,ah
	and	al,7F
	mov	[F4FC],al
	mov	[F4F2],al
	xor	ax,ax
	mov	[F4ED],al
	mov	[F4FD],al
	mov	[F4FE],al
	inc	ax
	mov	[F4EC],al
	mov	es,[1086]
	mov	di,006C
	mov	al,es:[di]

l26D1_007B:
	cmp	al,es:[di]
	jz	007B

l26D1_0080:
	mov	al,es:[di]
	mov	cx,FFFF
	call	02C8
	mov	ax,0037
	xchg	ax,cx
	not	ax
	xor	dx,dx
	div	cx
	mov	[F4F8],ax
	push	ds
	push	cs
	pop	ds
	mov	dx,0138
	mov	ax,251B
	int	21
	pop	ds
	ret

;; fn26D1_00A3: 26D1:00A3
fn26D1_00A3 proc
	mov	es,[1086]
	and	byte ptr es:[0087],FE
	cmp	al,07
	jz	00B7

l26D1_00B1:
	cmp	al,04
	jc	00B7

l26D1_00B5:
	mov	al,03

l26D1_00B7:
	push	ax
	mov	ah,00
	call	0614
	pop	ax
	or	ah,ah
	jz	00EF

l26D1_00C2:
	mov	ax,1112
	mov	bl,00
	call	0614
	mov	ax,1130
	mov	bh,00
	mov	dl,00
	call	0614
	cmp	dl,2A
	jnz	00EF

l26D1_00D9:
	or	byte ptr es:[0087],01
	mov	ax,0100
	mov	cx,0600
	call	0614
	mov	ah,12
	mov	bl,20
	call	0614

l26D1_00EF:
	ret

;; fn26D1_00F0: 26D1:00F0
fn26D1_00F0 proc
	mov	ah,0F
	call	0614
	push	ax
	mov	ax,1130
	mov	bh,00
	mov	dl,00
	call	0614
	pop	ax
	mov	cl,00
	or	dl,dl
	jnz	010F

l26D1_0107:
	mov	dl,18
	cmp	al,03
	ja	010F

l26D1_010D:
	mov	cl,01

l26D1_010F:
	mov	dh,dl
	mov	dl,ah
	dec	dl
	mov	ah,00
	cmp	dh,18
	jbe	011E

l26D1_011C:
	mov	ah,01

l26D1_011E:
	mov	[F4F0],ax
	mov	[F4FA],dx
	mov	[F4EF],cl
	mov	byte ptr [F4EE],01
	xor	ax,ax
	mov	[F4F4],ax
	mov	[F4F6],dx
	ret
26D1:0138                         50 1E B8 FB 28 8E D8 80         P...(...
26D1:0140 3E EC F4 00 74 05 C6 06 FE F4 01 1F 58 CF       >...t.......X. 

;; fn26D1_014E: 26D1:014E
fn26D1_014E proc
	cmp	byte ptr [F4FE],00
	jnz	0156

l26D1_0155:
	ret

l26D1_0156:
	mov	byte ptr [F4FE],00

l26D1_015B:
	mov	ah,01
	int	16
	jz	0167

l26D1_0161:
	mov	ah,00
	int	16
	jmp	015B

l26D1_0167:
	mov	al,5E
	call	0489
	mov	al,43
	call	0489
	call	0482
	jmp	0000
26D1:0177                      8B DC 36 8B 47 04 E8 23 FF        ..6.G..#.
26D1:0180 E8 6D FF A0 FC F4 A2 F2 F4 CA 02 00             .m..........   

;; fn26D1_018C: 26D1:018C
fn26D1_018C proc
	mov	bx,sp
	mov	dl,ss:[bx+0A]
	mov	dh,ss:[bx+08]
	mov	cl,ss:[bx+06]
	mov	ch,ss:[bx+04]
	cmp	dl,cl
	ja	01C9

l26D1_01A2:
	cmp	dh,ch
	ja	01C9

l26D1_01A6:
	dec	dl
	js	01C9

l26D1_01AA:
	dec	dh
	js	01C9

l26D1_01AE:
	dec	cl
	cmp	cl,[F4FA]
	ja	01C9

l26D1_01B6:
	dec	ch
	cmp	ch,[F4FB]
	ja	01C9

l26D1_01BE:
	mov	[F4F4],dx
	mov	[F4F6],cx
	call	050A

l26D1_01C9:
	retf	0008

;; fn26D1_01CC: 26D1:01CC
fn26D1_01CC proc
	mov	ax,0600
	mov	bh,[F4F2]
	mov	cx,[F4F4]
	mov	dx,[F4F6]
	call	0614
	mov	dx,[F4F4]
	call	050A
	retf
26D1:01E6                   E8 1A 03 B8 00 06 8A 3E F2 F4       .......>..
26D1:01F0 8B CA 8A 16 F6 F4 E8 1B 04 CB B8 01 07 EB 03 B8 ................
26D1:0200 01 06 50 E8 FD 02 58 8A 3E F2 F4 8A 0E F4 F4 8A ..P...X.>.......
26D1:0210 EE 8B 16 F6 F4 3A EE 75 02 32 C0 E8 F6 03 CB    .....:.u.2.....

;; fn26D1_021F: 26D1:021F
fn26D1_021F proc
	mov	bx,sp
	mov	dl,ss:[bx+06]
	mov	dh,ss:[bx+04]
	dec	dl
	add	dl,[F4F4]
	jc	0248

l26D1_0231:
	cmp	dl,[F4F6]
	ja	0248

l26D1_0237:
	dec	dh
	add	dh,[F4F5]
	jc	0248

l26D1_023F:
	cmp	dh,[F4F7]
	ja	0248

l26D1_0245:
	call	050A

l26D1_0248:
	retf	0004

;; fn26D1_024B: 26D1:024B
fn26D1_024B proc
	call	0503
	mov	al,dl
	sub	al,[F4F4]
	inc	al
	retf

;; fn26D1_0257: 26D1:0257
fn26D1_0257 proc
	call	0503
	mov	al,dh
	sub	al,[F4F5]
	inc	al
	retf

;; fn26D1_0263: 26D1:0263
fn26D1_0263 proc
	mov	bx,sp
	mov	al,ss:[bx+04]
	test	al,F0
	jz	0271

l26D1_026D:
	and	al,0F
	or	al,80

l26D1_0271:
	and	byte ptr [F4F2],70
	or	[F4F2],al
	retf	0002

;; fn26D1_027D: 26D1:027D
fn26D1_027D proc
	mov	bx,sp
	mov	al,ss:[bx+04]
	and	al,07
	mov	cl,04
	shl	al,cl
	and	byte ptr [F4F2],8F
	or	[F4F2],al
	retf	0002
26D1:0295                80 26 F2 F4 F7 CB 80 0E F2 F4 08      .&.........
26D1:02A0 CB A0 FC F4 A2 F2 F4 CB                         ........       

;; fn26D1_02A8: 26D1:02A8
fn26D1_02A8 proc
	mov	bx,sp
	mov	dx,ss:[bx+04]
	or	dx,dx
	jz	02C5

l26D1_02B2:
	mov	es,[1086]
	xor	di,di
	mov	al,es:[di]

l26D1_02BB:
	mov	cx,[F4F8]
	call	02C8
	dec	dx
	jnz	02BB

l26D1_02C5:
	retf	0002

;; fn26D1_02C8: 26D1:02C8
fn26D1_02C8 proc
	mov	bx,0004

l26D1_02CB:
	dec	bx
	jnz	02CB

l26D1_02CE:
	cmp	al,es:[di]
	loope	02C8

l26D1_02D3:
	ret
26D1:02D4             8B DC 36 8B 5F 04 B8 DD 34 BA 12 00     ..6._...4...
26D1:02E0 3B D3 73 1A F7 F3 8B D8 E4 61 A8 03 75 08 0C 03 ;.s......a..u...
26D1:02F0 E6 61 B0 B6 E6 43 8A C3 E6 42 8A C7 E6 42 CA 02 .a...C...B...B..
26D1:0300 00 E4 61 24 FC E6 61 CB                         ..a$..a.       

;; fn26D1_0308: 26D1:0308
fn26D1_0308 proc
	cmp	byte ptr [F4FD],00
	jnz	0317

l26D1_030F:
	mov	ah,01
	int	16
	mov	al,00
	jz	0319

l26D1_0317:
	mov	al,01

l26D1_0319:
	retf

;; fn26D1_031A: 26D1:031A
fn26D1_031A proc
	mov	al,[F4FD]
	mov	byte ptr [F4FD],00
	or	al,al
	jnz	0338

l26D1_0326:
	xor	ah,ah
	int	16
	or	al,al
	jnz	0338

l26D1_032E:
	mov	[F4FD],ah
	or	ah,ah
	jnz	0338

l26D1_0336:
	mov	al,03

l26D1_0338:
	call	014E
	retf

;; fn26D1_033C: 26D1:033C
fn26D1_033C proc
	mov	bx,sp
	push	ds
	lds	di,ss:[bx+04]
	mov	word ptr [di+02],D7B0
	mov	word ptr [di+04],0080
	lea	ax,[di+0080]
	mov	[di+0C],ax
	mov	[di+0E],ds
	mov	word ptr [di+10],0367
	mov	[di+12],cs
	mov	byte ptr [di+30],00
	pop	ds
	retf	0004
26D1:0367                      8B DC 1E 36 C5 7F 04 B8 9F        ...6.....
26D1:0370 03 BB 7D 04 8B CB 81 7D 02 B1 D7 74 0A C7 45 02 ..}....}...t..E.
26D1:0380 B2 D7 B8 4C 04 8B D8 89 45 14 8C 4D 16 89 5D 18 ...L....E..M..].
26D1:0390 8C 4D 1A 89 4D 1C 8C 4D 1E 33 C0 1F CA 04 00 55 .M..M..M.3.....U
26D1:03A0 8B EC C4 7E 06 26 8B 55 04 4A 4A 26 8B 75 08 26 ...~.&.U.JJ&.u.&
26D1:03B0 C4 7D 0C 33 DB C6 06 FD F4 00 0E E8 5C FF B9 01 .}.3........\...
26D1:03C0 00 3C 08 74 34 3C 13 74 30 3C 04 74 44 49 3C 1B .<.t4<.t0<.tDI<.
26D1:03D0 74 27 3C 01 74 23 3C 06 74 37 3C 1A 74 46 3C 0D t'<.t#<.t7<.tF<.
26D1:03E0 74 4F 3C 20 72 CF 3B DA 74 CB 26 88 01 43 E8 98 tO< r.;.t.&..C..
26D1:03F0 00 3B DE 76 C0 8B F3 EB BC 0B DB 74 B8 B0 08 E8 .;.v.......t....
26D1:0400 87 00 B0 20 E8 82 00 B0 08 E8 7D 00 4B E2 EA EB ... ......}.K...
26D1:0410 A4 3B DE 74 A0 26 8A 01 3C 20 72 99 E8 6A 00 43 .;.t.&..< r..j.C
26D1:0420 E2 EF EB 91 80 3E ED F4 00 74 8A 26 88 01 43 EB .....>...t.&..C.
26D1:0430 0A E8 4E 00 26 C7 01 0D 0A 43 43 C4 7E 06 33 C0 ..N.&....CC.~.3.
26D1:0440 26 89 45 08 26 89 5D 0A 5D CA 04 00 8B DC 36 C4 &.E.&.].].....6.
26D1:0450 7F 04 26 8B 4D 08 26 29 4D 08 E3 19 26 C4 7D 0C ..&.M.&)M...&.}.
26D1:0460 80 3E EE F4 00 75 0B 26 8A 05 E8 1C 00 47 E2 F7 .>...u.&.....G..
26D1:0470 EB 03 E8 9C 00 E8 D6 FC 33 C0 CA 04 00 33 C0 CA ........3....3..
26D1:0480 04 00                                           ..             

;; fn26D1_0482: 26D1:0482
fn26D1_0482 proc
	mov	al,0D
	call	0489
	mov	al,0A

;; fn26D1_0489: 26D1:0489
fn26D1_0489 proc
	push	bx
	push	cx
	push	dx
	push	es
	push	ax
	call	0503
	pop	ax
	cmp	al,07
	jz	04C0

l26D1_0496:
	cmp	al,08
	jz	04C7

l26D1_049A:
	cmp	al,0D
	jz	04D1

l26D1_049E:
	cmp	al,0A
	jz	04D7

l26D1_04A2:
	mov	ah,09
	mov	bl,[F4F2]
	xor	bh,bh
	mov	cx,0001
	push	dx
	call	0614
	pop	dx
	inc	dl
	cmp	dl,[F4F6]
	jbe	04DA

l26D1_04BA:
	mov	dl,[F4F4]
	jmp	04D7

l26D1_04C0:
	mov	ah,0E
	call	0614
	jmp	04DA

l26D1_04C7:
	cmp	dl,[F4F4]
	jz	04DA

l26D1_04CD:
	dec	dl
	jmp	04DA

l26D1_04D1:
	mov	dl,[F4F4]
	jmp	04DA

l26D1_04D7:
	call	04E2

l26D1_04DA:
	call	050A
	pop	es
	pop	dx
	pop	cx
	pop	bx
	ret

;; fn26D1_04E2: 26D1:04E2
fn26D1_04E2 proc
	inc	dh
	cmp	dh,[F4F7]
	jbe	0502

l26D1_04EA:
	dec	dh
	push	cx
	push	dx
	mov	ax,0601
	mov	bh,[F4F2]
	mov	cx,[F4F4]
	mov	dx,[F4F6]
	call	0614
	pop	dx
	pop	cx

l26D1_0502:
	ret

;; fn26D1_0503: 26D1:0503
fn26D1_0503 proc
	mov	ah,03
	xor	bh,bh
	jmp	0614

;; fn26D1_050A: 26D1:050A
fn26D1_050A proc
	mov	ah,02
	xor	bh,bh
	jmp	0614
26D1:0511    1E 8E 1E 86 10 8B 16 50 00 1F 8B DA 8B F7 26  .......P......&
26D1:0520 8A 05 3C 07 74 21 3C 08 74 2C 3C 0A 74 35 3C 0D ..<.t!<.t,<.t5<.
26D1:0530 74 39 47 FE C2 3A 16 F6 F4 76 3C E8 6E 00 E8 A1 t9G..:...v<.n...
26D1:0540 FF 8A 16 F4 F4 EB 2C E8 62 00 51 52 B8 07 0E E8 ......,.b.QR....
26D1:0550 C2 00 5A 59 EB 1C E8 53 00 3A 16 F4 F4 74 13 FE ..ZY...S.:...t..
26D1:0560 CA EB 0F E8 46 00 E8 79 FF EB 07 E8 3E 00 8A 16 ....F..y....>...
26D1:0570 F4 F4 47 8B F7 8B DA E2 A6 E8 30 00 1E 8E 1E 86 ..G.......0.....
26D1:0580 10 89 16 50 00 8A C6 F6 26 4A 00 32 F6 03 C2 8B ...P....&J.2....
26D1:0590 C8 8B 16 63 00 B0 0E EE EB 00 8A C5 42 EE EB 00 ...c........B...
26D1:05A0 4A B0 0F EE EB 00 8A C1 42 EE 1F C3 3B F7 74 63 J.......B...;.tc
26D1:05B0 51 52 57 1E 06 8B CF 2B CE 1E 8E 1E 86 10 8A C7 QRW....+........
26D1:05C0 F6 26 4A 00 32 FF 03 C3 D1 E0 8B F8 8B 16 63 00 .&J.2.........c.
26D1:05D0 83 C2 06 80 3E 49 00 07 1F A1 8C 10 75 03 A1 8A ....>I......u...
26D1:05E0 10 8A 1E EF F4 8A 3E F2 F4 06 1F 8E C0 FC 0A DB ......>.........
26D1:05F0 74 16 AC 8A D8 EC A8 01 75 FB FA EC A8 01 74 FB t.......u.....t.
26D1:0600 8B C3 AB FB E2 EC EB 06 8A E7 AC AB E2 FC 07 1F ................
26D1:0610 5F 5A 59 C3                                     _ZY.           

;; fn26D1_0614: 26D1:0614
fn26D1_0614 proc
	push	si
	push	di
	push	bp
	push	es
	int	10
	pop	es
	pop	bp
	pop	di
	pop	si
	ret
26D1:061F                                              00                .
;;; Segment 2733 (2733:0000)

;; fn2733_0000: 2733:0000
fn2733_0000 proc
	mov	dx,28FB
	mov	ds,dx
	mov	[107A],es
	xor	bp,bp
	call	1C6C
	call	00B1
	mov	ax,sp
	add	ax,0013
	mov	cl,04
	shr	ax,cl
	mov	dx,ss
	add	ax,dx
	mov	[104C],ax
	mov	[104E],ax
	add	ax,[1046]
	mov	[1050],ax
	mov	[105A],ax
	mov	[105E],ax
	mov	[1066],ax
	mov	es,[107A]
	mov	ax,es:[0002]
	mov	[1062],ax
	mov	word ptr [106C],00D6
	mov	[106E],cs
	mov	di,F700
	mov	si,0239
	mov	cx,0013
	nop

l2733_0053:
	cld
	lodsb
	mov	ah,35
	int	21
	mov	[di],bx
	mov	[di+02],es
	add	di,04
	loop	0053

l2733_0064:
	push	ds
	push	cs
	pop	ds
	mov	dx,010C
	mov	ax,2500
	int	21
	mov	dx,0113
	mov	ax,2523
	int	21
	mov	dx,00DB
	mov	ax,2524
	int	21
	mov	dx,0104
	mov	ax,253F
	int	21
	pop	ds
	mov	ax,F500
	push	ds
	push	ax
	push	ds
	push	ax
	mov	ax,0263
	push	cs
	push	ax
	push	cs
	call	0549
	push	cs
	call	05C7
	mov	ax,F600
	push	ds
	push	ax
	push	ds
	push	ax
	mov	ax,0263
	push	cs
	push	ax
	push	cs
	call	0549
	push	cs
	call	05CC
	retf

;; fn2733_00B1: 2733:00B1
fn2733_00B1 proc
	xor	ax,ax
	pushf
	pop	bx
	and	bh,0F
	push	bx
	popf
	pushf
	pop	cx
	and	ch,F0
	cmp	ch,F0
	jz	00D2

l2733_00C4:
	inc	ax
	or	bh,F0
	push	bx
	popf
	pushf
	pop	cx
	and	ch,F0
	jz	00D2

l2733_00D1:
	inc	ax

l2733_00D2:
	mov	[108E],al
	ret
2733:00D6                   33 C0 CA 02 00 FB 83 C4 06 58       3........X
2733:00E0 83 E7 1F 81 C7 96 00 80 FC 39 73 03 BF FF FF 57 .........9s....W
2733:00F0 B4 54 CD 21 8B EC 80 4E 16 01 58 5B 59 5A 5E 5F .T.!...N..X[YZ^_
2733:0100 5D 1F 07 CF B8 D0 00 83 C4 06 EB 03 B8 C8 00    ]..............

;; fn2733_010F: 2733:010F
fn2733_010F proc
	pop	cx
	pop	bx
	jmp	011A
2733:0113          B8 FF 00                                  ...         

;; fn2733_0116: 2733:0116
fn2733_0116 proc
	xor	cx,cx
	xor	bx,bx

;; fn2733_011A: 2733:011A
fn2733_011A proc
	mov	dx,28FB
	mov	ds,dx
	sti
	mov	[1074],ax
	mov	ax,cx
	or	ax,bx
	jz	0166

l2733_0129:
	mov	ax,[1052]

l2733_012C:
	or	ax,ax
	jz	015F

l2733_0130:
	mov	es,ax
	mov	ax,es:[0010]
	or	ax,ax
	jz	0155

l2733_013A:
	sub	ax,bx
	ja	0155

l2733_013E:
	neg	ax
	cmp	ax,1000
	jnc	0155

l2733_0145:
	mov	dx,0010
	mul	dx
	add	ax,cx
	jc	0155

l2733_014E:
	cmp	ax,es:[0008]
	jc	015B

l2733_0155:
	mov	ax,es:[0014]
	jmp	012C

l2733_015B:
	mov	cx,ax
	mov	bx,es

l2733_015F:
	sub	bx,[107A]
	sub	bx,10

l2733_0166:
	mov	[1076],cx
	mov	[1078],bx
	les	bx,[1070]
	mov	ax,es
	or	ax,bx
	jz	018B

l2733_0178:
	xor	ax,ax
	mov	[1070],ax
	mov	[1072],ax
	mov	[107E],ax
	mov	ax,016E
	push	cs
	push	ax
	push	es
	push	bx
	retf

l2733_018B:
	mov	ax,F500
	push	ds
	push	ax
	push	cs
	call	0621
	mov	ax,F600
	push	ds
	push	ax
	push	cs
	call	0621
	mov	di,F700
	mov	si,0239
	mov	cx,0013
	nop

l2733_01A7:
	cld
	lodsb
	mov	ah,25
	push	ds
	lds	dx,[di]
	int	21
	pop	ds
	add	di,04
	loop	01A7

l2733_01B7:
	mov	ax,[1076]
	or	ax,[1078]
	jz	01E9

l2733_01C0:
	mov	bx,024C
	call	01F0
	mov	ax,[1074]
	call	01FE
	mov	bx,025B
	call	01F0
	mov	ax,[1078]
	call	0218
	mov	al,3A
	call	0232
	mov	ax,[1076]
	call	0218
	mov	bx,0260
	call	01F0

l2733_01E9:
	mov	ax,[1074]
	mov	ah,4C
	int	21

;; fn2733_01F0: 2733:01F0
fn2733_01F0 proc
	mov	al,cs:[bx]
	or	al,al
	jz	01FD

l2733_01F7:
	call	0232
	inc	bx
	jmp	01F0

l2733_01FD:
	ret

;; fn2733_01FE: 2733:01FE
fn2733_01FE proc
	mov	cl,64
	call	020A
	mov	cl,0A
	call	020A
	jmp	020E

;; fn2733_020A: 2733:020A
fn2733_020A proc
	xor	ah,ah
	div	cl

l2733_020E:
	add	al,30
	push	ax
	call	0232
	pop	ax
	mov	al,ah
	ret

;; fn2733_0218: 2733:0218
fn2733_0218 proc
	push	ax
	mov	al,ah
	call	021F
	pop	ax

;; fn2733_021F: 2733:021F
fn2733_021F proc
	push	ax
	mov	cl,04
	shr	al,cl
	call	022A
	pop	ax
	and	al,0F

;; fn2733_022A: 2733:022A
fn2733_022A proc
	add	al,30
	cmp	al,3A
	jc	0232

l2733_0230:
	add	al,07

;; fn2733_0232: 2733:0232
fn2733_0232 proc
	mov	dl,al
	mov	ah,06
	int	21
	ret
2733:0239                            00 02 1B 21 23 24 34          ...!#$4
2733:0240 35 36 37 38 39 3A 3B 3C 3D 3E 3F 75 52 75 6E 74 56789:;<=>?uRunt
2733:0250 69 6D 65 20 65 72 72 6F 72 20 00 20 61 74 20 00 ime error . at .
2733:0260 2E 0D 0A 00 50 6F 72 74 69 6F 6E 73 20 43 6F 70 ....Portions Cop
2733:0270 79 72 69 67 68 74 20 28 63 29 20 31 39 38 33 2C yright (c) 1983,
2733:0280 39 32 20 42 6F 72 6C 61 6E 64                   92 Borland     

;; fn2733_028A: 2733:028A
fn2733_028A proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+06]
	call	0353
	pop	bp
	jc	0299

l2733_0296:
	retf	0002

l2733_0299:
	mov	ax,00CB
	jmp	010F

;; fn2733_029F: 2733:029F
fn2733_029F proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+06]
	les	cx,[bp+08]
	mov	bx,es
	call	041E
	pop	bp
	jc	02B3

l2733_02B0:
	retf	0006

l2733_02B3:
	mov	ax,00CC
	jmp	010F
2733:02B9                            8B DC 36 C4 7F 04 FC          ..6....
2733:02C0 A1 5C 10 AB A1 5E 10 AB CA 04 00 8B DC 36 C4 7F .\...^.......6..
2733:02D0 04 26 C4 3D 89 3E 5C 10 8C 06 5E 10 89 3E 64 10 .&.=.>\...^..>d.
2733:02E0 8C 06 66 10 CA 04 00                            ..f....        

;; fn2733_02E7: 2733:02E7
fn2733_02E7 proc
	mov	bx,02FC
	jmp	0323
2733:02EC                                     81 C2 00 10             ....
2733:02F0 EB 05 03 44 04 72 F5 03 54 06 C5 34 8C DB 3B DF ...D.r..T..4..;.
2733:0300 75 F0 C3                                        u..            

;; fn2733_0303: 2733:0303
fn2733_0303 proc
	mov	bx,031C
	jmp	0323
2733:0308                         3B 54 06 77 0D 72 05 3B         ;T.w.r.;
2733:0310 44 04 73 06 8B 44 04 8B 54 06 C5 34 8C DB 3B DF D.s..D..T..4..;.
2733:0320 75 E6 C3                                        u..            

l2733_0323:
	mov	ax,[1060]
	mov	dx,[1062]
	sub	ax,[105C]
	sbb	dx,[105E]
	and	ax,000F
	push	ds
	mov	di,[105E]
	lds	si,[1064]
	call	bx
	pop	ds
	mov	cl,04
	rol	dx,cl
	mov	cx,dx
	and	cl,F0
	and	dx,0F
	add	ax,cx
	adc	dx,00
	retf

;; fn2733_0353: 2733:0353
fn2733_0353 proc
	or	ax,ax
	jz	03CE

l2733_0357:
	mov	[F74C],ax

l2733_035A:
	call	04DC
	mov	di,1064
	mov	cx,ds
	mov	es,cx

l2733_0364:
	mov	cx,di
	mov	bx,es
	les	di,es:[di]
	mov	si,es
	cmp	si,[105E]
	jz	03D2

l2733_0373:
	cmp	dx,es:[di+06]
	ja	0364

l2733_0379:
	jc	0381

l2733_037B:
	cmp	ax,es:[di+04]
	ja	0364

l2733_0381:
	push	es
	push	di
	push	bx
	push	cx
	mov	cx,es:[di]
	mov	bx,es:[di+02]
	jz	03C1

l2733_038E:
	push	bx
	push	cx
	mov	cx,es:[di+04]
	mov	bx,es:[di+06]
	sub	cx,ax
	sbb	bx,dx
	and	cx,0F
	add	ax,di
	add	dx,si
	add	al,F0
	adc	dx,00
	and	al,0F
	mov	di,ax
	mov	es,dx
	pop	word ptr es:[di]
	pop	word ptr es:[di+02]
	mov	es:[di+04],cx
	mov	es:[di+06],bx
	mov	cx,di
	mov	bx,es

l2733_03C1:
	pop	di
	pop	es
	mov	es:[di],cx
	mov	es:[di+02],bx
	pop	ax
	pop	dx
	clc

l2733_03CD:
	ret

l2733_03CE:
	xor	ax,ax
	cwd
	ret

l2733_03D2:
	add	ax,di
	add	dx,si
	add	al,F0
	adc	dx,00
	and	al,0F
	cmp	dx,[1062]
	jc	03EB

l2733_03E3:
	ja	040A

l2733_03E5:
	cmp	ax,[1060]
	ja	040A

l2733_03EB:
	push	es
	push	di
	mov	di,cx
	mov	es,bx
	mov	[105C],ax
	mov	[105E],dx
	mov	es:[di],ax
	mov	es:[di+02],dx
	xor	ax,ax
	push	ax
	call	dword ptr [106C]
	pop	ax
	pop	dx
	clc
	ret

l2733_040A:
	push	word ptr [F74C]
	call	dword ptr [106C]
	cmp	al,01
	jc	03CD

l2733_0416:
	jz	03CE

l2733_0418:
	mov	ax,[F74C]
	jmp	035A

;; fn2733_041E: 2733:041E
fn2733_041E proc
	or	ax,ax
	jz	047C

l2733_0422:
	test	cx,FFF7
	jnz	047B

l2733_0428:
	cmp	bx,[105A]
	ja	0436

l2733_042E:
	jc	047B

l2733_0430:
	cmp	cx,[1058]
	jc	047B

l2733_0436:
	cmp	bx,[105E]
	jc	0444

l2733_043C:
	ja	047B

l2733_043E:
	cmp	cx,[105C]
	jnc	047B

l2733_0444:
	call	04DC
	mov	di,cx
	mov	es,bx
	mov	es:[di+04],ax
	mov	es:[di+06],dx
	mov	di,1064
	mov	ax,ds
	mov	es,ax

l2733_045A:
	mov	ax,di
	mov	dx,es
	les	di,es:[di]
	mov	si,es
	cmp	bx,si
	ja	045A

l2733_0467:
	jc	046F

l2733_0469:
	cmp	cx,di
	ja	045A

l2733_046D:
	jz	047B

l2733_046F:
	push	dx
	push	ax
	call	047D
	pop	cx
	pop	bx
	call	047D
	clc
	ret

l2733_047B:
	stc

l2733_047C:
	ret

;; fn2733_047D: 2733:047D
fn2733_047D proc
	mov	ax,di
	mov	dx,es
	mov	di,cx
	mov	es,bx
	add	cx,es:[di+04]
	add	bx,es:[di+06]
	add	cl,F0
	adc	bx,00
	and	cl,0F
	cmp	bx,dx
	jnz	04D4

l2733_049A:
	cmp	cx,ax
	jnz	04D4

l2733_049E:
	cmp	dx,[105E]
	jnz	04B3

l2733_04A4:
	cmp	ax,[105C]
	jnz	04B3

l2733_04AA:
	mov	[105C],di
	mov	[105E],es
	ret

l2733_04B3:
	push	ds
	push	di
	mov	si,ax
	mov	ds,dx
	cld
	movsw
	movsw
	lodsw
	xchg	ax,dx
	lodsw
	xchg	ax,dx
	add	ax,es:[di]
	add	dx,es:[di+02]
	add	al,F0
	adc	dx,00
	and	al,0F
	stosw
	xchg	ax,dx
	stosw
	pop	di
	pop	ds
	ret

l2733_04D4:
	mov	es:[di],ax
	mov	es:[di+02],dx
	ret

;; fn2733_04DC: 2733:04DC
fn2733_04DC proc
	add	ax,0007
	mov	dx,ax
	rcr	dx,01
	shr	dx,01
	shr	dx,01
	shr	dx,01
	and	ax,0008
	ret

;; fn2733_04ED: 2733:04ED
fn2733_04ED proc
	xor	ax,ax
	xchg	[107E],ax
	retf

;; fn2733_04F4: 2733:04F4
fn2733_04F4 proc
	cmp	word ptr [107E],00
	jnz	04FC

l2733_04FB:
	retf

l2733_04FC:
	mov	ax,[107E]
	jmp	010F
2733:0502       8B F4 36 8E 44 02 26 3B 55 02 7F 07 7C 14   ..6.D.&;U...|.
2733:0510 26 3B 05 72 0F 26 3B 55 06 7C 08 7F 07 26 3B 45 &;.r.&;U.|...&;E
2733:0520 04 77 01 CB B8 C9 00 E9 E5 FB B8 D7 00 E9 DF FB .w..............

;; fn2733_0530: 2733:0530
fn2733_0530 proc
	add	ax,0200
	jc	0542

l2733_0535:
	sub	ax,sp
	jnc	0542

l2733_0539:
	neg	ax
	cmp	ax,[107C]
	jc	0542

l2733_0541:
	retf

l2733_0542:
	mov	ax,00CA
	jmp	010F
2733:0548                         BA                              .      

;; fn2733_0549: 2733:0549
fn2733_0549 proc
	xor	dx,dx
	mov	bx,sp
	push	ds
	les	di,ss:[bx+08]
	lds	si,ss:[bx+04]
	cld
	xor	ax,ax
	stosw
	mov	ax,D7B0
	stosw
	mov	ax,0080
	stosw
	xor	ax,ax
	stosw
	stosw
	stosw
	lea	ax,[di+74]
	stosw
	mov	ax,es
	stosw
	mov	ax,11B3
	stosw
	mov	ax,2733
	stosw
	xor	ax,ax
	mov	cx,000E

l2733_057B:
	rep stosw

l2733_057D:
	mov	cx,004F
	or	dx,dx
	jnz	058D

l2733_0584:
	lodsb
	cmp	cl,al
	jbe	058D

l2733_0589:
	mov	cl,al
	jcxz	0595

l2733_058D:
	lodsb
	or	al,al
	jz	0595

l2733_0592:
	stosb
	loop	058D

l2733_0595:
	xor	al,al
	stosb
	pop	ds
	retf	0008
2733:059C                                     8B DC 36 C4             ..6.
2733:05A0 7F 0A 36 8B 47 04 26 89 45 04 36 8B 47 06 26 89 ..6.G.&.E.6.G.&.
2733:05B0 45 0C 36 8B 47 08 26 89 45 0E 33 C0 26 89 45 08 E.6.G.&.E.3.&.E.
2733:05C0 26 89 45 0A CA 0A 00                            &.E....        

;; fn2733_05C7: 2733:05C7
fn2733_05C7 proc
	mov	dx,D7B1
	jmp	05D4

;; fn2733_05CC: 2733:05CC
fn2733_05CC proc
	mov	dx,D7B2
	jmp	05D4

;; fn2733_05D1: 2733:05D1
fn2733_05D1 proc
	mov	dx,D7B3

;; fn2733_05D4: 2733:05D4
fn2733_05D4 proc
	push	bp
	mov	bp,sp
	les	di,[bp+06]
	mov	ax,es:[di+02]
	cmp	ax,D7B1
	jz	05F5

l2733_05E3:
	cmp	ax,D7B2
	jz	05F5

l2733_05E8:
	cmp	ax,D7B0
	jz	05FD

l2733_05ED:
	mov	word ptr [107E],0066
	jmp	0619

l2733_05F5:
	push	dx
	push	es
	push	di
	push	cs
	call	0621
	pop	dx

l2733_05FD:
	xor	ax,ax
	mov	es:[di+02],dx
	mov	es:[di+08],ax
	mov	es:[di+0A],ax
	mov	bx,0010
	call	065D
	jz	0619

l2733_0613:
	mov	word ptr es:[di+02],D7B0

l2733_0619:
	pop	bp
	retf	0004
2733:061D                                        B0 00 EB              ...
2733:0620 02                                              .              

;; fn2733_0621: 2733:0621
fn2733_0621 proc
	mov	al,01
	push	bp
	mov	bp,sp
	les	di,[bp+06]
	cmp	word ptr es:[di+02],D7B1
	jz	0649

l2733_0631:
	cmp	word ptr es:[di+02],D7B2
	jz	0641

l2733_0639:
	mov	word ptr [107E],0067
	jmp	0659

l2733_0641:
	push	ax
	mov	bx,0014
	call	065D
	pop	ax

l2733_0649:
	or	al,al
	jz	0659

l2733_064D:
	mov	bx,001C
	call	065D
	mov	word ptr es:[di+02],D7B0

l2733_0659:
	pop	bp
	retf	0004

;; fn2733_065D: 2733:065D
fn2733_065D proc
	push	es
	push	di
	push	es
	push	di
	call	dword ptr es:[bx+di]
	or	ax,ax
	jz	066B

l2733_0668:
	mov	[107E],ax

l2733_066B:
	pop	di
	pop	es
	ret
2733:066E                                           8B DC               ..
2733:0670 1E 36 C4 7F 04 26 C5 55 0C 26 8B 4D 04 26 8B 1D .6...&.U.&.M.&..
2733:0680 B4 3F CD 21 72 10 26 89 45 0A 33 C0 26 C7 45 08 .?.!r.&.E.3.&.E.
2733:0690 00 00 1F CA 04 00 26 C7 45 0A 00 00 EB EE 8B DC ......&.E.......
2733:06A0 1E 36 C4 7F 04 26 C5 55 0C 33 C9 26 87 4D 08 26 .6...&.U.3.&.M.&
2733:06B0 8B 1D B4 40 CD 21 72 07 2B C1 74 03 B8 65 00 1F ...@.!r.+.t..e..
2733:06C0 CA 04 00 8B DC 1E 36 C4 7F 04 26 C5 55 0C 33 C9 ......6...&.U.3.
2733:06D0 26 87 4D 08 26 8B 1D B4 40 CD 21 72 02 33 C0 1F &.M.&...@.!r.3..
2733:06E0 CA 04 00 8B DC 36 C4 7F 04 26 8B 1D 83 FB 04 76 .....6...&.....v
2733:06F0 06 B4 3E CD 21 72 02 33 C0 CA 04 00             ..>.!r.3....   

;; fn2733_06FC: 2733:06FC
fn2733_06FC proc
	cmp	word ptr [107E],00
	jnz	0738

l2733_0703:
	cmp	word ptr es:[bx+02],D7B1
	jnz	0739

l2733_070B:
	mov	si,es:[bx+08]
	cmp	si,es:[bx+0A]
	jz	0740

l2733_0715:
	push	ds
	push	es
	push	bx
	push	dx
	lds	dx,es:[bx+0C]
	mov	bx,es:[bx+0A]
	pop	es
	add	bx,dx
	add	si,dx
	cld
	call	ax
	sub	si,dx
	mov	dx,es
	pop	bx
	pop	es
	pop	ds
	mov	es:[bx+08],si
	or	ax,ax
	jnz	0740

l2733_0738:
	ret

l2733_0739:
	mov	word ptr [107E],0068
	ret

l2733_0740:
	push	ax
	push	cx
	push	dx
	push	di
	push	es
	push	bx
	call	087C
	pop	bx
	pop	es
	pop	di
	pop	dx
	pop	cx
	pop	ax
	mov	si,es:[bx+08]
	cmp	si,es:[bx+0A]
	jnz	0715

l2733_0759:
	ret

;; fn2733_075A: 2733:075A
fn2733_075A proc
	cmp	word ptr [107E],00
	jnz	07A1

l2733_0761:
	cmp	word ptr es:[bx+02],D7B2
	jnz	07A2

l2733_0769:
	mov	cx,es:[bx+04]
	mov	di,es:[bx+08]
	sub	cx,di
	sub	dx,cx
	jnc	077B

l2733_0777:
	add	cx,dx
	xor	dx,dx

l2733_077B:
	push	es
	les	si,es:[bx+0C]
	add	di,si
	mov	al,20
	cld

l2733_0785:
	rep stosb

l2733_0787:
	sub	di,si
	pop	es
	mov	es:[bx+08],di
	cmp	di,es:[bx+04]
	jnz	079D

l2733_0794:
	push	dx
	push	es
	push	bx
	call	087C
	pop	bx
	pop	es
	pop	dx

l2733_079D:
	or	dx,dx
	jnz	0769

l2733_07A1:
	ret

l2733_07A2:
	mov	word ptr [107E],0069
	ret

;; fn2733_07A9: 2733:07A9
fn2733_07A9 proc
	cmp	word ptr [107E],00
	jnz	07F8

l2733_07B0:
	cmp	word ptr es:[bx+02],D7B2
	jnz	07F9

l2733_07B8:
	mov	cx,es:[bx+04]
	mov	di,es:[bx+08]
	sub	cx,di
	sub	ax,cx
	jnc	07CA

l2733_07C6:
	add	cx,ax
	xor	ax,ax

l2733_07CA:
	push	ds
	push	es
	push	bx
	mov	ds,dx
	les	bx,es:[bx+0C]
	add	di,bx
	cld

l2733_07D6:
	rep movsb

l2733_07D8:
	sub	di,bx
	pop	bx
	pop	es
	pop	ds
	mov	es:[bx+08],di
	cmp	di,es:[bx+04]
	jnz	07F4

l2733_07E7:
	push	ax
	push	dx
	push	si
	push	es
	push	bx
	call	087C
	pop	bx
	pop	es
	pop	si
	pop	dx
	pop	ax

l2733_07F4:
	or	ax,ax
	jnz	07B8

l2733_07F8:
	ret

l2733_07F9:
	mov	word ptr [107E],0069
	ret

;; fn2733_0800: 2733:0800
fn2733_0800 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+06]
	mov	ax,081E
	xor	dx,dx
	call	06FC
	jnz	081A

l2733_0810:
	cmp	word ptr es:[bx+1A],00
	jz	081A

l2733_0817:
	call	088A

l2733_081A:
	pop	bp
	retf	0004
2733:081E                                           AC 3C               .<
2733:0820 0D 74 0C 3C 1A 74 11 3B F3 75 F3 B8 1E 08 C3 3B .t.<.t.;.u.....;
2733:0830 F3 74 09 AC 3C 0A 74 01 4E 33 C0 C3 B8 33 08 C3 .t..<.t.N3...3..

;; fn2733_0840: 2733:0840
fn2733_0840 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+06]
	mov	ax,0002
	mov	si,1092
	mov	dx,ds
	call	07A9
	jnz	085D

l2733_0853:
	cmp	word ptr es:[bx+1A],00
	jz	085D

l2733_085A:
	call	088A

l2733_085D:
	pop	bp
	retf	0004

;; fn2733_0861: 2733:0861
fn2733_0861 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+06]
	cmp	word ptr es:[bx+1A],00
	jz	0878

l2733_086E:
	cmp	word ptr [107E],00
	jnz	0878

l2733_0875:
	call	088A

l2733_0878:
	pop	bp
	retf	0004

;; fn2733_087C: 2733:087C
fn2733_087C proc
	push	es
	push	bx
	call	dword ptr es:[bx+14]
	or	ax,ax
	jz	0889

l2733_0886:
	mov	[107E],ax

l2733_0889:
	ret

;; fn2733_088A: 2733:088A
fn2733_088A proc
	push	es
	push	bx
	call	dword ptr es:[bx+18]
	or	ax,ax
	jz	0897

l2733_0894:
	mov	[107E],ax

l2733_0897:
	ret
2733:0898                         55 8B EC 83 3E 7E 10 00         U...>~..
2733:08A0 75 38 C4 5E 06 26 81 7F 02 B1 D7 75 27 26 8B 7F u8.^.&.....u'&..
2733:08B0 08 26 3B 7F 0A 75 10 E8 C2 FF C4 5E 06 26 8B 7F .&;..u.....^.&..
2733:08C0 08 26 3B 7F 0A 74 13 26 FF 47 08 26 C4 5F 0C 26 .&;..t.&.G.&._.&
2733:08D0 8A 01 5D CB C7 06 7E 10 68 00 B0 1A EB F4       ..]...~.h..... 

;; fn2733_08DE: 2733:08DE
fn2733_08DE proc
	push	bp
	mov	bp,sp
	les	bx,[bp+0A]
	mov	dx,[bp+06]
	dec	dx
	jle	08ED

l2733_08EA:
	call	075A

l2733_08ED:
	cmp	word ptr [107E],00
	jnz	091D

l2733_08F4:
	cmp	word ptr es:[bx+02],D7B2
	jnz	0921

l2733_08FC:
	inc	word ptr es:[bx+08]
	mov	di,es:[bx+08]
	mov	dx,es:[bx+04]
	les	bx,es:[bx+0C]
	mov	al,[bp+08]
	mov	es:[bx+di-01],al
	cmp	di,dx
	jnz	091D

l2733_0917:
	les	bx,[bp+0A]
	call	087C

l2733_091D:
	pop	bp
	retf	0004

l2733_0921:
	mov	word ptr [107E],0069
	jmp	091D
2733:0929                            55 8B EC C4 5E 0C B8          U...^..
2733:0930 47 09 8B 4E 06 8B 7E 08 8B 56 0A E8 BE FD 8E C2 G..N..~..V......
2733:0940 33 C0 AA 5D CA 06 00 E3 15 AC 3C 0D 74 0F 3C 1A 3..]......<.t.<.
2733:0950 74 0B AA 3B F3 E0 F2 E3 05 B8 49 09 C3 4E 33 C0 t..;......I..N3.
2733:0960 C3                                              .              

;; fn2733_0961: 2733:0961
fn2733_0961 proc
	push	bp
	mov	bp,sp
	mov	ax,[bp+08]
	or	ax,[bp+0A]
	jz	097C

l2733_096C:
	les	di,[bp+08]
	mov	cx,FFFF
	xor	al,al
	cld

l2733_0975:
	repne scasb

l2733_0977:
	mov	ax,FFFE
	sub	ax,cx

l2733_097C:
	les	bx,[bp+0C]
	or	ax,ax
	js	098F

l2733_0983:
	mov	dx,[bp+06]
	sub	dx,ax
	jle	098F

l2733_098A:
	push	ax
	call	075A
	pop	ax

l2733_098F:
	or	ax,ax
	jz	099C

l2733_0993:
	mov	si,[bp+08]
	mov	dx,[bp+0A]
	call	07A9

l2733_099C:
	pop	bp
	retf	0006

;; fn2733_09A0: 2733:09A0
fn2733_09A0 proc
	push	bp
	mov	bp,sp
	les	bx,[bp+0C]
	mov	ax,09C3
	mov	cx,[bp+06]
	mov	di,[bp+08]
	mov	dx,[bp+0A]
	inc	di
	call	06FC
	mov	ax,di
	les	di,[bp+08]
	sub	ax,di
	dec	ax
	stosb
	pop	bp
	retf	0006
2733:09C3          AC 3C 0D 74 0F 3C 1A 74 0B AA 3B F3 E0    .<.t.<.t..;..
2733:09D0 F2 E3 05 B8 C3 09 C3 4E 33 C0 C3                .......N3..    

;; fn2733_09DB: 2733:09DB
fn2733_09DB proc
	push	bp
	mov	bp,sp
	les	bx,[bp+08]
	mov	al,es:[bx]
	xor	ah,ah
	les	bx,[bp+0C]
	mov	dx,[bp+06]
	sub	dx,ax
	jle	09F5

l2733_09F0:
	push	ax
	call	075A
	pop	ax

l2733_09F5:
	or	ax,ax
	jz	0A03

l2733_09F9:
	mov	si,[bp+08]
	mov	dx,[bp+0A]
	inc	si
	call	07A9

l2733_0A03:
	pop	bp
	retf	0006
2733:0A07                      55 8B EC 83 EC 20 C4 5E 06        U.... .^.
2733:0A10 B8 3E 0A B9 20 00 8D 7E E0 8C D2 E8 DE FC 8B CF .>.. ..~........
2733:0A20 8D 7E E0 2B CF 74 0F 16 07 E8 7E 10 72 02 E3 0A .~.+.t....~.r...
2733:0A30 C7 06 7E 10 6A 00 33 C0 8B D0 8B E5 5D CB AC 3C ..~.j.3.....]..<
2733:0A40 20 77 11 3C 1A 74 18 3B F3 75 F3 B8 3E 0A C3 AC  w.<.t.;.u..>...
2733:0A50 3C 20 76 0B AA 3B F3 E0 F6 E3 05 B8 4F 0A C3 4E < v..;......O..N
2733:0A60 33 C0 C3                                        3..            

;; fn2733_0A63: 2733:0A63
fn2733_0A63 proc
	push	bp
	mov	bp,sp
	sub	sp,20
	mov	ax,[bp+08]
	mov	dx,[bp+0A]
	lea	di,[bp+00]
	push	ss
	pop	es
	call	1A6E
	les	bx,[bp+0C]
	mov	dx,[bp+06]
	sub	dx,cx
	jle	0A88

l2733_0A81:
	push	cx
	push	di
	call	075A
	pop	di
	pop	cx

l2733_0A88:
	mov	ax,cx
	mov	si,di
	mov	dx,ss
	call	07A9
	mov	sp,bp
	pop	bp
	retf	0006
2733:0A97                      B9 01 03 EB 0D B9 01 02 EB        .........
2733:0AA0 08 B9 01 01 EB 03                               ......         

;; fn2733_0AA6: 2733:0AA6
fn2733_0AA6 proc
	mov	cx,0001
	push	bp
	mov	bp,sp
	les	bx,[bp+06]
	mov	ax,0ABD
	xor	dx,dx
	call	06FC
	mov	al,cl
	pop	bp
	retf	0004
2733:0ABD                                        AC 3C 1A              .<.
2733:0AC0 74 1B F6 C5 01 74 04 3C 0D 74 12 F6 C5 02 74 0C t....t.<.t....t.
2733:0AD0 3C 20 77 08 3B F3 75 E5 B8 BD 0A C3 49 4E 33 C0 < w.;.u.....IN3.
2733:0AE0 C3 BA                                           ..             

;; fn2733_0AE2: 2733:0AE2
fn2733_0AE2 proc
	xor	dx,dx
	mov	bx,sp
	push	ds
	les	di,ss:[bx+08]
	lds	si,ss:[bx+04]
	cld
	xor	ax,ax
	stosw
	mov	ax,D7B0
	stosw
	xor	ax,ax
	mov	cx,0016

l2733_0AFC:
	rep stosw

l2733_0AFE:
	mov	cx,004F
	or	dx,dx
	jnz	0B0E

l2733_0B05:
	lodsb
	cmp	cl,al
	jbe	0B0E

l2733_0B0A:
	mov	cl,al
	jcxz	0B16

l2733_0B0E:
	lodsb
	or	al,al
	jz	0B16

l2733_0B13:
	stosb
	loop	0B0E

l2733_0B16:
	xor	al,al
	stosb
	pop	ds
	retf	0008

;; fn2733_0B1D: 2733:0B1D
fn2733_0B1D proc
	mov	al,[1090]
	mov	ah,3D
	xor	dx,dx
	jmp	0B2C

;; fn2733_0B26: 2733:0B26
fn2733_0B26 proc
	mov	ax,3C00
	mov	dx,0001

;; fn2733_0B2C: 2733:0B2C
fn2733_0B2C proc
	push	bp
	mov	bp,sp
	les	di,[bp+08]
	cmp	word ptr es:[di+02],D7B0
	jz	0B54

l2733_0B3A:
	cmp	word ptr es:[di+02],D7B3
	jz	0B4A

l2733_0B42:
	mov	word ptr [107E],0066
	jmp	0B7E

l2733_0B4A:
	push	ax
	push	dx
	push	es
	push	di
	push	cs
	call	0B9E
	pop	dx
	pop	ax

l2733_0B54:
	cmp	byte ptr es:[di+30],00
	jz	0B6D

l2733_0B5B:
	push	ds
	lea	dx,[di+30]
	push	es
	pop	ds
	xor	cx,cx
	int	21
	pop	ds
	jnc	0B6E

l2733_0B68:
	mov	[107E],ax
	jmp	0B7E

l2733_0B6D:
	xchg	ax,dx

l2733_0B6E:
	mov	word ptr es:[di+02],D7B3
	mov	es:[di],ax
	mov	ax,[bp+06]
	mov	es:[di+04],ax

l2733_0B7E:
	pop	bp
	retf	0006
2733:0B82       8B DC 36 C4 7F 04 E8 38 00 75 0E 33 C9 26   ..6....8.u.3.&
2733:0B90 8B 1D B4 40 CD 21 73 03 A3 7E 10 CA 04 00       ...@.!s..~.... 

;; fn2733_0B9E: 2733:0B9E
fn2733_0B9E proc
	mov	bx,sp
	les	di,ss:[bx+04]
	call	0BC3
	jnz	0BC0

l2733_0BA9:
	mov	bx,es:[di]
	cmp	bx,04
	jbe	0BBA

l2733_0BB1:
	mov	ah,3E
	int	21
	jnc	0BBA

l2733_0BB7:
	mov	[107E],ax

l2733_0BBA:
	mov	word ptr es:[di+02],D7B0

l2733_0BC0:
	retf	0004

;; fn2733_0BC3: 2733:0BC3
fn2733_0BC3 proc
	cmp	word ptr es:[di+02],D7B3
	jz	0BD1

l2733_0BCB:
	mov	word ptr [107E],0067

l2733_0BD1:
	ret
2733:0BD2       B4 3F BA 64 00 EB 05 B4 40 BA 65 00 55 8B   .?.d....@.e.U.
2733:0BE0 EC C4 7E 0A E8 DC FF 75 1B 1E 52 C5 56 06 26 8B ..~....u..R.V.&.
2733:0BF0 4D 04 26 8B 1D CD 21 5A 1F 72 06 3B C1 74 05 8B M.&...!Z.r.;.t..
2733:0C00 C2 A3 7E 10 5D CA 04 00                         ..~.]...       

;; fn2733_0C08: 2733:0C08
fn2733_0C08 proc
	mov	bl,3F
	mov	cx,0064
	jmp	0C14

;; fn2733_0C0F: 2733:0C0F
fn2733_0C0F proc
	mov	bl,40
	mov	cx,0065

;; fn2733_0C14: 2733:0C14
fn2733_0C14 proc
	push	bp
	mov	bp,sp
	les	di,[bp+10]
	call	0BC3
	jnz	0C5E

l2733_0C1F:
	mov	ax,[bp+0A]
	or	ax,ax
	jz	0C42

l2733_0C26:
	push	ds
	push	cx
	mul	word ptr es:[di+04]
	mov	cx,ax
	lds	dx,[bp+0C]
	mov	ah,bl
	mov	bx,es:[di]
	int	21
	pop	cx
	pop	ds
	jc	0C5B

l2733_0C3C:
	xor	dx,dx
	div	word ptr es:[di+04]

l2733_0C42:
	les	di,[bp+06]
	mov	dx,es
	or	dx,di
	jz	0C50

l2733_0C4B:
	mov	es:[di],ax
	jmp	0C6C

l2733_0C50:
	cmp	ax,[bp+0A]
	jz	0C6C

l2733_0C55:
	mov	[107E],cx
	jmp	0C6C

l2733_0C5B:
	mov	[107E],ax

l2733_0C5E:
	les	di,[bp+06]
	mov	dx,es
	or	dx,di
	jz	0C6C

l2733_0C67:
	xor	ax,ax
	mov	es:[di],ax

l2733_0C6C:
	pop	bp
	retf	000E

;; fn2733_0C70: 2733:0C70
fn2733_0C70 proc
	push	bp
	mov	bp,sp
	les	di,[bp+0A]
	call	0BC3
	jnz	0C9C

l2733_0C7B:
	mov	ax,[bp+08]
	mul	word ptr es:[di+04]
	mov	cx,ax
	mov	ax,[bp+06]
	mul	word ptr es:[di+04]
	add	cx,dx
	mov	dx,ax
	mov	bx,es:[di]
	mov	ax,4200
	int	21
	jnc	0C9C

l2733_0C99:
	mov	[107E],ax

l2733_0C9C:
	pop	bp
	retf	0008

;; fn2733_0CA0: 2733:0CA0
fn2733_0CA0 proc
	mov	bx,sp
	push	ds
	lds	dx,ss:[bx+04]
	add	dx,30
	mov	ah,41
	int	21
	pop	ds
	jnc	0CB4

l2733_0CB1:
	mov	[107E],ax

l2733_0CB4:
	retf	0004
2733:0CB7                      BA 33 D2 55 8B EC 83 EC 50        .3.U....P
2733:0CC0 1E C5 76 06 8D 7E B0 16 07 FC B9 4F 00 0B D2 75 ..v..~.....O...u
2733:0CD0 09 AC 3A C8 76 04 8A C8 E3 08 AC 0A C0 74 03 AA ..:.v........t..
2733:0CE0 E2 F8 32 C0 AA C5 56 0A 83 C2 30 8D 7E B0 B4 56 ..2...V...0.~..V
2733:0CF0 CD 21 1F 73 05 A3 7E 10 EB 14 1E 8D 76 B0 16 1F .!.s..~.....v...
2733:0D00 C4 7E 0A 83 C7 30 FC AC AA 0A C0 75 FA 1F 8B E5 .~...0.....u....
2733:0D10 5D CA 08 00                                     ]...           

;; fn2733_0D14: 2733:0D14
fn2733_0D14 proc
	push	bp
	mov	bp,sp
	mov	dx,[bp+06]
	or	dx,dx
	jz	0D23

l2733_0D1E:
	call	0D6A
	jmp	0D53

l2733_0D23:
	mov	ah,30
	int	21
	cmp	al,03
	mov	ax,0000
	jc	0D53

l2733_0D2E:
	mov	es,[107A]
	mov	es,es:[002C]
	xor	di,di
	cld

l2733_0D3A:
	cmp	al,es:[di]
	jz	0D46

l2733_0D3F:
	mov	cx,FFFF

l2733_0D42:
	repne scasb

l2733_0D44:
	jmp	0D3A

l2733_0D46:
	add	di,03
	mov	si,di
	mov	cx,0100

l2733_0D4E:
	repne scasb

l2733_0D50:
	xchg	ax,cx
	not	al

l2733_0D53:
	push	ds
	push	es
	pop	ds
	les	di,[bp+08]
	cld
	stosb
	xchg	ax,cx

l2733_0D5C:
	rep movsb

l2733_0D5E:
	pop	ds
	pop	bp
	retf	0002
2733:0D63          33 D2 E8 02 00 93 CB                      3......     

;; fn2733_0D6A: 2733:0D6A
fn2733_0D6A proc
	mov	es,[107A]
	mov	di,0080
	mov	cl,es:[di]
	xor	ch,ch
	inc	di
	xor	bx,bx

l2733_0D79:
	jcxz	0D84

l2733_0D7B:
	cmp	byte ptr es:[di],20
	ja	0D84

l2733_0D81:
	inc	di
	loop	0D7B

l2733_0D84:
	mov	si,di
	jcxz	0D91

l2733_0D88:
	cmp	byte ptr es:[di],20
	jbe	0D91

l2733_0D8E:
	inc	di
	loop	0D88

l2733_0D91:
	mov	ax,di
	sub	ax,si
	jz	0D9B

l2733_0D97:
	inc	bx
	dec	dx
	jnz	0D79

l2733_0D9B:
	ret
2733:0D9C                                     55 8B EC 81             U...
2733:0DA0 EC 80 00 1E 8D 76 80 16 1F 8A 46 0C 0A C0 75 06 .....v....F...u.
2733:0DB0 B4 19 CD 21 FE C0 8A D0 04 40 88 04 46 C7 04 3A ...!.....@..F..:
2733:0DC0 5C 46 46 B4 47 CD 21 73 03 C6 04 00 8D 76 80 C4 \FF.G.!s.....v..
2733:0DD0 7E 08 8B 4E 06 33 DB FC AC 0A C0 74 06 43 26 88 ~..N.3.....t.C&.
2733:0DE0 01 E2 F5 26 88 1D 1F 8B E5 5D CA 08 00          ...&.....]...  

;; fn2733_0DED: 2733:0DED
fn2733_0DED proc
	push	bp
	mov	bp,sp
	sub	sp,0080
	call	0E58
	mov	ax,[bp-80]
	or	al,al
	jz	0E28

l2733_0DFE:
	cmp	ah,3A
	jnz	0E23

l2733_0E03:
	and	al,DF
	sub	al,41
	mov	dl,al
	mov	ah,0E
	int	21
	mov	ah,19
	int	21
	cmp	al,dl
	jz	0E1D

l2733_0E15:
	mov	word ptr [107E],000F
	jmp	0E28

l2733_0E1D:
	cmp	byte ptr [bp-7E],00
	jz	0E28

l2733_0E23:
	mov	ah,3B
	call	0E73

l2733_0E28:
	mov	sp,bp
	pop	bp
	retf	0004
2733:0E2E                                           55 8B               U.
2733:0E30 EC 81 EC 80 00 E8 20 00 B4 39 E8 36 00 8B E5 5D ...... ..9.6...]
2733:0E40 CA 04 00 55 8B EC 81 EC 80 00 E8 0B 00 B4 3A E8 ...U..........:.
2733:0E50 21 00 8B E5 5D CA 04 00                         !...]...       

;; fn2733_0E58: 2733:0E58
fn2733_0E58 proc
	push	ds
	lds	si,[bp+06]
	lea	di,[bp-80]
	push	ss
	pop	es
	cld
	lodsb
	cmp	al,7F
	jc	0E69

l2733_0E67:
	mov	al,7F

l2733_0E69:
	cbw
	mov	cx,ax

l2733_0E6C:
	rep movsb

l2733_0E6E:
	xor	al,al
	stosb
	pop	ds
	ret

;; fn2733_0E73: 2733:0E73
fn2733_0E73 proc
	push	ds
	lea	dx,[bp-80]
	push	ss
	pop	ds
	int	21
	pop	ds
	jnc	0E81

l2733_0E7E:
	mov	[107E],ax

l2733_0E81:
	ret

;; fn2733_0E82: 2733:0E82
fn2733_0E82 proc
	cmp	byte ptr [108E],02
	jc	0EA4

l2733_0E89:
	shl	eax,10
	shrd	eax,edx,10
	shl	ecx,10
	shrd	ecx,ebx,10
	imul	ecx
	shld	edx,eax,10
	retf

l2733_0EA4:
	mov	si,ax
	mov	di,dx
	mul	cx
	push	ax
	push	dx
	mov	ax,si
	mul	bx
	mov	bx,ax
	mov	ax,di
	mul	cx
	mov	cx,ax
	pop	dx
	pop	ax
	add	dx,bx
	add	dx,cx
	retf

;; fn2733_0EBF: 2733:0EBF
fn2733_0EBF proc
	cmp	byte ptr [108E],02
	jc	0EED

l2733_0EC6:
	shl	eax,10
	shrd	eax,edx,10
	shl	ecx,10
	shrd	ecx,ebx,10
	jz	0F38

l2733_0EDA:
	cdq
	idiv	ecx
	mov	ecx,edx
	shld	edx,eax,10
	shld	ebx,ecx,10
	retf

l2733_0EED:
	push	bp
	xor	bp,bp
	or	dx,dx
	jns	0EFC

l2733_0EF4:
	inc	bp
	neg	ax
	adc	dx,00
	neg	dx

l2733_0EFC:
	or	bx,bx
	jz	0F3E

l2733_0F00:
	jns	0F0D

l2733_0F02:
	inc	bp
	inc	bp
	neg	cx
	adc	bx,00
	neg	bx
	jz	0F40

l2733_0F0D:
	push	bp
	mov	si,cx
	mov	di,bx
	xor	bx,bx
	mov	cx,dx
	mov	dx,ax
	xor	ax,ax
	mov	bp,0010

l2733_0F1D:
	shl	ax,01
	rcl	dx,01
	rcl	cx,01
	rcl	bx,01
	inc	ax
	sub	cx,si
	sbb	bx,di
	jnc	0F31

l2733_0F2C:
	dec	ax
	add	cx,si
	adc	bx,di

l2733_0F31:
	dec	bp
	jnz	0F1D

l2733_0F34:
	pop	bp
	jmp	0F4D

l2733_0F37:
	pop	bp

l2733_0F38:
	mov	ax,00C8
	jmp	010F

l2733_0F3E:
	jcxz	0F37

l2733_0F40:
	xchg	ax,bx
	xchg	ax,dx
	div	cx
	xchg	ax,bx
	div	cx
	mov	cx,dx
	mov	dx,bx
	xor	bx,bx

l2733_0F4D:
	shr	bp,01
	jnc	0F59

l2733_0F51:
	neg	cx
	adc	bx,00
	neg	bx
	inc	bp

l2733_0F59:
	dec	bp
	jnz	0F63

l2733_0F5C:
	neg	ax
	adc	dx,00
	neg	dx

l2733_0F63:
	pop	bp
	retf
2733:0F65                80 3E 8E 10 02 72 06 0F AD D0 D3      .>...r.....
2733:0F70 EA CB 83 E1 1F 74 06 D1 EA D1 D8 E2 FA CB 80 3E .....t.........>
2733:0F80 8E 10 02 72 06 0F A5 C2 D3 E0 CB 83 E1 1F 74 06 ...r..........t.
2733:0F90 D1 E0 D1 D2 E2 FA CB                            .......        

;; fn2733_0F97: 2733:0F97
fn2733_0F97 proc
	cld
	mov	bx,sp
	mov	dx,ds
	les	di,ss:[bx+08]
	lds	si,ss:[bx+04]
	lodsb
	stosb
	mov	cl,al
	xor	ch,ch

l2733_0FAA:
	rep movsb

l2733_0FAC:
	mov	ds,dx
	retf	0004

;; fn2733_0FB1: 2733:0FB1
fn2733_0FB1 proc
	cld
	mov	bx,sp
	mov	dx,ds
	lds	si,ss:[bx+0A]
	les	di,ss:[bx+06]
	mov	cx,ss:[bx+04]
	lodsb
	cmp	al,cl
	jbe	0FC9

l2733_0FC7:
	mov	al,cl

l2733_0FC9:
	stosb
	mov	cl,al
	xor	ch,ch

l2733_0FCE:
	rep movsb

l2733_0FD0:
	mov	ds,dx
	retf	000A

;; fn2733_0FD5: 2733:0FD5
fn2733_0FD5 proc
	cld
	mov	bx,sp
	mov	dx,ds
	les	di,ss:[bx+0C]
	lds	si,ss:[bx+08]
	mov	al,[si]
	xor	ah,ah
	mov	cx,ss:[bx+06]
	or	cx,cx
	jg	0FF1

l2733_0FEE:
	mov	cx,0001

l2733_0FF1:
	add	si,cx
	sub	ax,cx
	jc	100A

l2733_0FF7:
	inc	ax
	mov	cx,ss:[bx+04]
	or	cx,cx
	jge	1002

l2733_1000:
	xor	cx,cx

l2733_1002:
	cmp	ax,cx
	jbe	100C

l2733_1006:
	mov	ax,cx
	jmp	100C

l2733_100A:
	xor	ax,ax

l2733_100C:
	stosb
	mov	cx,ax

l2733_100F:
	rep movsb

l2733_1011:
	mov	ds,dx
	retf	0008

;; fn2733_1016: 2733:1016
fn2733_1016 proc
	cld
	mov	bx,sp
	mov	dx,ds
	les	di,ss:[bx+08]
	lds	si,ss:[bx+04]
	mov	cl,es:[di]
	xor	ch,ch
	lodsb
	add	es:[di],al
	jnc	1036

l2733_102E:
	mov	byte ptr es:[di],FF
	mov	al,cl
	not	al

l2733_1036:
	add	di,cx
	inc	di
	mov	cl,al

l2733_103B:
	rep movsb

l2733_103D:
	mov	ds,dx
	retf	0004

;; fn2733_1042: 2733:1042
fn2733_1042 proc
	push	bp
	mov	bp,sp
	push	ds
	lds	si,[bp+0A]
	cld
	lodsb
	or	al,al
	jz	107B

l2733_104F:
	mov	dl,al
	xor	dh,dh
	les	di,[bp+06]
	mov	cl,es:[di]
	xor	ch,ch
	sub	cx,dx
	jc	107B

l2733_105F:
	inc	cx
	inc	di

l2733_1061:
	lodsb

l2733_1062:
	repne scasb

l2733_1064:
	jnz	107B

l2733_1066:
	mov	ax,di
	mov	bx,cx
	mov	cx,dx
	dec	cx

l2733_106D:
	rep cmpsb

l2733_106F:
	jz	107F

l2733_1071:
	mov	di,ax
	mov	cx,bx
	mov	si,[bp+0A]
	inc	si
	jmp	1061

l2733_107B:
	xor	ax,ax
	jmp	1083

l2733_107F:
	dec	ax
	sub	ax,[bp+06]

l2733_1083:
	pop	ds
	pop	bp
	retf	0008

;; fn2733_1088: 2733:1088
fn2733_1088 proc
	cld
	mov	bx,sp
	mov	dx,ds
	lds	si,ss:[bx+08]
	les	di,ss:[bx+04]
	lodsb
	mov	ah,es:[di]
	inc	di
	mov	cl,al
	cmp	cl,ah
	jbe	10A2

l2733_10A0:
	mov	cl,ah

l2733_10A2:
	or	cl,cl
	jz	10AC

l2733_10A6:
	xor	ch,ch

l2733_10A8:
	rep cmpsb

l2733_10AA:
	jnz	10AE

l2733_10AC:
	cmp	al,ah

l2733_10AE:
	mov	ds,dx
	retf	0008

;; fn2733_10B3: 2733:10B3
fn2733_10B3 proc
	cld
	mov	bx,sp
	les	di,ss:[bx+06]
	mov	al,01
	stosb
	mov	al,ss:[bx+04]
	stosb
	retf	0002
2733:10C5                FC 8B DC 8C DA 36 C4 7F 0A 36 C5      .....6...6.
2733:10D0 77 06 36 8B 47 04 AA 8B C8 F3 A4 8E DA CA 06 00 w.6.G...........

;; fn2733_10E0: 2733:10E0
fn2733_10E0 proc
	push	bp
	mov	bp,sp
	sub	sp,0200
	cmp	word ptr [bp+06],01
	jge	10F2

l2733_10ED:
	mov	word ptr [bp+06],0001

l2733_10F2:
	lea	di,[bp+FF00]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,0001
	push	ax
	mov	ax,[bp+06]
	dec	ax
	push	ax
	push	cs
	call	0FD5
	les	di,[bp+0E]
	push	es
	push	di
	push	cs
	call	1016
	lea	di,[bp+FE00]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	push	word ptr [bp+06]
	mov	ax,00FF
	push	ax
	push	cs
	call	0FD5
	push	cs
	call	1016
	les	di,[bp+0A]
	push	es
	push	di
	push	word ptr [bp+08]
	push	cs
	call	0FB1
	mov	sp,bp
	pop	bp
	retf	000C

;; fn2733_113F: 2733:113F
fn2733_113F proc
	push	bp
	mov	bp,sp
	sub	sp,0200
	cmp	word ptr [bp+06],00
	jle	11AD

l2733_114C:
	cmp	word ptr [bp+08],00FF
	jg	11AD

l2733_1153:
	cmp	word ptr [bp+06],00FF
	jle	115F

l2733_115A:
	mov	word ptr [bp+06],00FF

l2733_115F:
	cmp	word ptr [bp+08],01
	jge	116A

l2733_1165:
	mov	word ptr [bp+08],0001

l2733_116A:
	lea	di,[bp+FF00]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,0001
	push	ax
	mov	ax,[bp+08]
	dec	ax
	push	ax
	push	cs
	call	0FD5
	lea	di,[bp+FE00]
	push	ss
	push	di
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,[bp+08]
	add	ax,[bp+06]
	push	ax
	mov	ax,00FF
	push	ax
	push	cs
	call	0FD5
	push	cs
	call	1016
	les	di,[bp+0A]
	push	es
	push	di
	mov	ax,00FF
	push	ax
	push	cs
	call	0FB1

l2733_11AD:
	mov	sp,bp
	pop	bp
	retf	0008
2733:11B3          8B DC 1E 36 C5 7F 04 33 C9 89 0D B8 00    ...6...3.....
2733:11C0 3D 81 7D 02 B1 D7 74 0D B0 02 FF 05 81 7D 02 B3 =.}...t......}..
2733:11D0 D7 74 02 B4 3C 80 7D 30 00 74 09 8D 55 30 CD 21 .t..<.}0.t..U0.!
2733:11E0 72 5A 89 05 B8 6E 06 BA 33 27 33 C9 33 DB 81 7D rZ...n..3'3.3..}
2733:11F0 02 B1 D7 74 2F 8B 1D B8 00 44 CD 21 F6 C2 80 B8 ...t/....D.!....
2733:1200 C3 06 BA 33 27 8B C8 8B DA 75 14 81 7D 02 B3 D7 ...3'....u..}...
2733:1210 75 03 E8 2B 00 B8 9E 06 BA 33 27 33 C9 33 DB C7 u..+.....3'3.3..
2733:1220 45 02 B2 D7 89 45 14 89 55 16 89 4D 18 89 5D 1A E....E..U..M..].
2733:1230 C7 45 1C E3 06 C7 45 1E 33 27 33 C0 1F CA 04 00 .E....E.3'3.....
2733:1240 33 D2 33 C9 8B 1D B8 02 42 CD 21 2D 80 00 83 DA 3.3.....B.!-....
2733:1250 00 73 04 33 C0 33 D2 8B CA 8B D0 8B 1D B8 00 42 .s.3.3.........B
2733:1260 CD 21 8D 95 80 00 B9 80 00 8B 1D B4 3F CD 21 73 .!..........?.!s
2733:1270 02 33 C0 33 DB 3B D8 74 20 80 B9 80 00 1A 74 03 .3.3.;.t .....t.
2733:1280 43 EB F2 8B D3 2B D0 B9 FF FF 8B 1D B8 02 42 CD C....+........B.
2733:1290 21 33 C9 8B 1D B4 40 CD 21 C3                   !3....@.!.     

;; fn2733_129A: 2733:129A
fn2733_129A proc
	xor	di,8000

;; fn2733_129E: 2733:129E
fn2733_129E proc
	or	cl,cl
	jz	131D

;; fn2733_12A2: 2733:12A2
fn2733_12A2 proc
	or	al,al
	jz	131E

l2733_12A6:
	cmp	al,cl
	jbe	12AF

l2733_12AA:
	xchg	ax,cx
	xchg	si,bx
	xchg	di,dx

l2733_12AF:
	sub	al,cl
	neg	al
	cmp	al,29
	jnc	131E

l2733_12B7:
	xchg	cl,al
	push	bp
	push	ax
	mov	ah,dh
	and	ah,80
	mov	bp,ax
	xor	ax,di
	pop	ax
	pushf
	mov	al,00
	or	dh,80
	or	di,8000

l2733_12CF:
	cmp	cl,08
	jc	12E5

l2733_12D4:
	mov	al,ah
	mov	ah,bl
	mov	bl,bh
	mov	bh,dl
	mov	dl,dh
	xor	dh,dh
	sub	cl,08
	jmp	12CF

l2733_12E5:
	or	cl,cl
	jz	12F3

l2733_12E9:
	shr	dx,01
	rcr	bx,01
	rcr	ax,01
	dec	cl
	jnz	12E9

l2733_12F3:
	popf
	js	132D

l2733_12F6:
	add	ax,cx
	adc	bx,si
	adc	dx,di
	mov	cx,bp
	pop	bp
	jnc	130B

l2733_1301:
	rcr	dx,01
	rcr	bx,01
	rcr	ax,01
	inc	cl
	jz	132B

l2733_130B:
	add	ax,0080
	adc	bx,00
	adc	dx,00
	jc	1325

l2733_1316:
	mov	al,cl
	and	dh,7F
	or	dh,ch

l2733_131D:
	ret

l2733_131E:
	mov	ax,cx
	mov	bx,si
	mov	dx,di
	ret

l2733_1325:
	rcr	dx,01
	inc	cl
	jnz	1316

l2733_132B:
	stc
	ret

l2733_132D:
	sub	ax,cx
	sbb	bx,si
	sbb	dx,di
	mov	cx,bp
	pop	bp
	jnc	1348

l2733_1338:
	not	dx
	not	bx
	neg	ax
	cmc
	adc	bx,00
	adc	dx,00
	xor	ch,80

l2733_1348:
	mov	di,dx
	or	di,bx
	or	di,ax
	jz	131D

l2733_1350:
	or	dh,dh
	js	130B

l2733_1354:
	shl	ax,01
	rcl	bx,01
	rcl	dx,01
	dec	cl
	jnz	1350

;; fn2733_135E: 2733:135E
fn2733_135E proc
	jmp	145D

;; fn2733_1361: 2733:1361
fn2733_1361 proc
	or	al,al
	jz	135E

l2733_1365:
	or	cl,cl
	jz	135E

l2733_1369:
	push	bp
	mov	bp,dx
	xor	dx,di
	and	dx,8000
	xchg	al,dl
	add	dl,cl
	adc	dh,al
	mov	cl,al
	or	bp,8000
	or	di,8000
	push	dx
	or	ah,ah
	jnz	138B

l2733_1387:
	or	bx,bx
	jz	1398

l2733_138B:
	or	ch,ch
	jnz	13B5

l2733_138F:
	or	si,si
	jnz	13B5

l2733_1393:
	xchg	ax,cx
	xchg	si,bx
	xchg	di,bp

l2733_1398:
	mov	ax,cx
	mul	bp
	mov	bx,dx
	mov	ax,si
	mul	bp
	add	bx,ax
	adc	dx,00
	mov	cx,dx
	mov	ax,di
	mul	bp
	add	ax,cx
	adc	dx,00
	jmp	1430
2733:13B4             90                                      .          

l2733_13B5:
	push	di
	push	si
	push	cx
	push	bp
	push	bx
	push	ax
	mov	bp,sp
	xor	cx,cx
	mov	al,[bp+01]
	mul	byte ptr [bp+07]
	mov	si,ax
	mov	di,cx
	mov	bx,cx
	mov	ax,[bp+00]
	mul	word ptr [bp+08]
	add	si,ax
	adc	di,dx
	adc	bx,cx
	mov	ax,[bp+02]
	mul	word ptr [bp+06]
	add	si,ax
	adc	di,dx
	adc	bx,cx
	mov	si,cx
	mov	ax,[bp+00]
	mul	word ptr [bp+0A]
	add	di,ax
	adc	bx,dx
	adc	si,cx
	mov	ax,[bp+02]
	mul	word ptr [bp+08]
	add	di,ax
	adc	bx,dx
	adc	si,cx
	mov	ax,[bp+04]
	mul	word ptr [bp+06]
	add	di,ax
	adc	bx,dx
	adc	si,cx
	mov	di,cx
	mov	ax,[bp+02]
	mul	word ptr [bp+0A]
	add	bx,ax
	adc	si,dx
	adc	di,cx
	mov	ax,[bp+04]
	mul	word ptr [bp+08]
	add	bx,ax
	adc	si,dx
	adc	di,cx
	mov	ax,[bp+04]
	mul	word ptr [bp+0A]
	add	ax,si
	adc	dx,di
	add	sp,0C

l2733_1430:
	xchg	ax,bx
	pop	cx
	pop	bp
	or	dh,dh
	js	143E

l2733_1437:
	shl	ax,01
	rcl	bx,01
	rcl	dx,01
	dec	cx

l2733_143E:
	sub	cx,8081

;; fn2733_1442: 2733:1442
fn2733_1442 proc
	add	ax,0080
	adc	bx,00
	adc	dx,00
	jnc	1450

l2733_144D:
	rcr	dx,01
	inc	cx

l2733_1450:
	test	ch,40
	jnz	145D

l2733_1455:
	inc	cx
	mov	al,cl
	xor	dh,ch
	shr	ch,01
	ret

l2733_145D:
	xor	ax,ax
	mov	bx,ax
	mov	dx,ax
	ret

;; fn2733_1464: 2733:1464
fn2733_1464 proc
	or	al,al
	jz	145D

l2733_1468:
	push	bp
	mov	bp,dx
	xor	dx,di
	or	di,8000
	or	bp,8000
	and	dx,8000
	xchg	dl,al
	sub	dl,cl
	sbb	dh,al
	push	dx
	mov	al,02
	mov	dx,0001

l2733_1485:
	cmp	bp,di
	jnz	148F

l2733_1489:
	cmp	bx,si
	jnz	148F

l2733_148D:
	cmp	ah,ch

l2733_148F:
	jc	1497

l2733_1491:
	sub	ah,ch
	sbb	bx,si
	sbb	bp,di

l2733_1497:
	rcl	dx,01
	jc	14AC

l2733_149B:
	shl	ah,01
	rcl	bx,01
	rcl	bp,01
	jnc	1485

l2733_14A3:
	sub	ah,ch
	sbb	bx,si
	sbb	bp,di
	clc
	jmp	1497

l2733_14AC:
	dec	al
	js	14BA

l2733_14B0:
	push	dx
	mov	dx,0001
	jnz	149B

l2733_14B6:
	mov	dl,40
	jmp	149B

l2733_14BA:
	mov	ax,dx
	mov	cl,06
	shl	ax,cl
	pop	bx
	pop	dx
	pop	cx
	pop	bp
	not	ax
	not	bx
	xor	dx,FF
	js	14D4

l2733_14CD:
	rcl	ax,01
	rcl	bx,01
	rcl	dx,01
	dec	cx

l2733_14D4:
	add	cx,8080
	jmp	1442

;; fn2733_14DB: 2733:14DB
fn2733_14DB proc
	push	dx
	xor	dx,di
	pop	dx
	jns	14E6

l2733_14E1:
	push	dx
	rcl	dx,01
	pop	dx
	ret

l2733_14E6:
	test	dh,80
	jz	14F2

l2733_14EB:
	call	14F2
	jz	1504

l2733_14F0:
	cmc
	ret

;; fn2733_14F2: 2733:14F2
fn2733_14F2 proc
	cmp	al,cl
	jnz	1504
	or	al,al
	jz	1504
	cmp	dx,di
	jnz	1504
	cmp	bx,si
	jnz	1504
	cmp	ah,ch

;; fn2733_1504: 2733:1504
fn2733_1504 proc
	ret

;; fn2733_1505: 2733:1505
fn2733_1505 proc
	mov	bx,ax
	or	bx,dx
	jz	1540

l2733_150B:
	mov	ch,dh
	or	dx,dx
	jns	1518

l2733_1511:
	neg	dx
	neg	ax
	sbb	dx,00

l2733_1518:
	mov	bx,ax
	mov	ax,00A0
	or	dx,dx
	jnz	152D

l2733_1521:
	xchg	bx,dx
	mov	al,90
	or	dh,dh
	jnz	152D

l2733_1529:
	xchg	dl,dh
	mov	al,88

l2733_152D:
	or	dx,dx
	js	1539

l2733_1531:
	dec	al
	add	bx,bx
	adc	dx,dx
	jns	1531

l2733_1539:
	or	ch,ch
	js	1540

l2733_153D:
	and	dh,7F

l2733_1540:
	ret

;; fn2733_1541: 2733:1541
fn2733_1541 proc
	xchg	ax,bx
	mov	cl,A0
	sub	cl,bl
	jc	15A3

l2733_1548:
	mov	bl,dh
	or	dh,80
	cmp	cl,20
	jnc	15A4

l2733_1552:
	cmp	cl,10
	jc	1560

l2733_1557:
	mov	bh,ah
	mov	ax,dx
	xor	dx,dx
	sub	cl,10

l2733_1560:
	cmp	cl,08
	jc	1572

l2733_1565:
	mov	bh,al
	mov	al,ah
	mov	ah,dl
	mov	dl,dh
	xor	dh,dh
	sub	cl,08

l2733_1572:
	or	cl,cl
	jz	1580

l2733_1576:
	shr	dx,01
	rcr	ax,01
	rcr	bh,01
	dec	cl
	jnz	1576

l2733_1580:
	or	ch,ch
	jz	158E

l2733_1584:
	add	bh,bh
	adc	ax,0000
	adc	dx,00
	jc	15A3

l2733_158E:
	mov	cx,ax
	or	cx,dx
	jz	15A3

l2733_1594:
	or	bl,bl
	jns	159F

l2733_1598:
	neg	dx
	neg	ax
	sbb	dx,00

l2733_159F:
	xor	bl,dh
	add	bl,bl

l2733_15A3:
	ret

l2733_15A4:
	mov	bh,dh
	mov	ax,0000
	mov	dx,0000
	jz	1580

l2733_15AE:
	ret

;; fn2733_15AF: 2733:15AF
fn2733_15AF proc
	call	129E
	jc	15EF

l2733_15B4:
	retf

;; fn2733_15B5: 2733:15B5
fn2733_15B5 proc
	call	129A
	jc	15EF

l2733_15BA:
	retf
2733:15BB                                  8B C8 8B F3 8B            .....
2733:15C0 FA                                              .              

;; fn2733_15C1: 2733:15C1
fn2733_15C1 proc
	call	1361
	jc	15EF

l2733_15C6:
	retf

;; fn2733_15C7: 2733:15C7
fn2733_15C7 proc
	or	cl,cl
	jz	15F5

l2733_15CB:
	call	1464
	jc	15EF

l2733_15D0:
	retf

;; fn2733_15D1: 2733:15D1
fn2733_15D1 proc
	call	14DB
	retf

;; fn2733_15D5: 2733:15D5
fn2733_15D5 proc
	call	1505
	retf

;; fn2733_15D9: 2733:15D9
fn2733_15D9 proc
	mov	ch,00
	call	1541
	jc	15E9

l2733_15E0:
	retf

;; fn2733_15E1: 2733:15E1
fn2733_15E1 proc
	mov	ch,01
	call	1541
	jc	15E9

l2733_15E8:
	retf

;; fn2733_15E9: 2733:15E9
fn2733_15E9 proc
	mov	ax,00CF
	jmp	010F

;; fn2733_15EF: 2733:15EF
fn2733_15EF proc
	mov	ax,00CD
	jmp	010F

l2733_15F5:
	mov	ax,00C8
	jmp	010F

;; fn2733_15FB: 2733:15FB
fn2733_15FB proc
	push	di
	push	si
	push	cx
	call	129E
	pop	cx
	pop	si
	pop	di
	ret

;; fn2733_1605: 2733:1605
fn2733_1605 proc
	push	di
	push	si
	push	cx
	call	129A
	pop	cx
	pop	si
	pop	di
	ret

;; fn2733_160F: 2733:160F
fn2733_160F proc
	push	di
	push	si
	push	cx
	call	1361
	pop	cx
	pop	si
	pop	di
	ret

;; fn2733_1619: 2733:1619
fn2733_1619 proc
	push	di
	push	si
	push	cx
	call	1464
	pop	cx
	pop	si
	pop	di
	ret

;; fn2733_1623: 2733:1623
fn2733_1623 proc
	cmp	al,A8
	jnc	1670

l2733_1627:
	mov	cx,ax
	mov	si,bx
	mov	di,dx
	xor	ah,ah
	xor	bx,bx
	xor	dx,dx
	sub	cl,80
	jbe	1671

l2733_1638:
	cmp	cl,10
	jc	1649

l2733_163D:
	mov	ah,bh
	mov	bx,dx
	mov	dx,FFFF
	sub	cl,10
	jmp	1638

l2733_1649:
	cmp	cl,08
	jc	165B

l2733_164E:
	mov	ah,bl
	mov	bl,bh
	mov	bh,dl
	mov	dl,dh
	mov	dh,FF
	sub	cl,08

l2733_165B:
	or	cl,cl
	jz	166A

l2733_165F:
	stc
	rcr	dx,01
	rcr	bx,01
	rcr	ah,01
	dec	cl
	jnz	165F

l2733_166A:
	and	dx,di
	and	bx,si
	and	ah,ch

l2733_1670:
	retf

l2733_1671:
	xor	al,al
	retf

;; fn2733_1674: 2733:1674
fn2733_1674 proc
	push	dx
	push	bx
	push	ax
	push	cs
	call	1623
	mov	cx,ax
	mov	si,bx
	mov	di,dx
	pop	ax
	pop	bx
	pop	dx
	call	129A
	retf
2733:1688                         55 8B EC 83 EC 08 8B C8         U.......
2733:1690 8B F3 8B FA 0A C0 74 3C F6 C6 80 75 41 89 46 F8 ......t<...uA.F.
2733:16A0 89 5E FA 89 56 FC 80 C1 80 D0 F9 80 C1 80 8A C1 .^..V...........
2733:16B0 2C 14 88 46 FE 8B 46 F8 8B 5E FA 8B 56 FC E8 58 ,..F..F..^..V..X
2733:16C0 FF E8 37 FF FE C8 52 53 50 E8 CE FB 3A 46 FE 59 ..7...RSP...:F.Y
2733:16D0 5E 5F 73 E1 8B C1 8B DE 8B D7 8B E5 5D CB 8B E5 ^_s.........]...
2733:16E0 5D B8 CF 00 E9 28 EA B9 81 21 BE A2 DA BF 0F C9 ]....(...!......
2733:16F0 E8 AB FB 0A C0 74 03 80 F6 80                   .....t....     

;; fn2733_16FA: 2733:16FA
fn2733_16FA proc
	cmp	al,6C
	jc	175A

l2733_16FE:
	mov	cx,2183
	mov	si,DAA2
	mov	di,490F
	push	dx
	and	dh,7F
	call	14DB
	pop	dx
	jc	1721

l2733_1711:
	call	1619
	push	di
	push	si
	push	cx
	push	cs
	call	1674
	pop	cx
	pop	si
	pop	di
	call	160F

l2733_1721:
	test	dh,80
	jz	1729

l2733_1726:
	call	15FB

l2733_1729:
	dec	cl
	call	14DB
	pushf
	jc	1734

l2733_1731:
	call	1605

l2733_1734:
	dec	cl
	call	14DB
	jc	1743

l2733_173B:
	inc	cl
	or	dh,80
	call	129E

l2733_1743:
	cmp	al,6C
	jc	1750

l2733_1747:
	mov	di,175B
	mov	cx,0007
	call	1A06

l2733_1750:
	popf
	jc	175A

l2733_1753:
	or	al,al
	jz	175A

l2733_1757:
	xor	dh,80

l2733_175A:
	retf
2733:175B                                  58 9D 39 9F 3F            X.9.?
2733:1760 D7 60 43 9D 30 92 30 67 AA 3F 28 32 D7 6E B6 2A .`C.0.0g.?(2.n.*
2733:1770 1D EF 38 74 0D D0 00 0D D0 7A 88 88 88 88 08 7E ..8t.....z.....~
2733:1780 AB AA AA AA AA 0A C0 74 05 F6 C6 80 74 06 B8 CF .......t....t...
2733:1790 00 E9 7B E9 B1 81 2A C1 50 8A C1 B9 80 FB BE 33 ..{...*.P......3
2733:17A0 F3 BF 04 35 E8 BA FB 8B C8 8B F3 8B FA B8 81 00 ...5............
2733:17B0 33 DB 33 D2 E8 44 FE 52 53 50 B8 81 00 33 DB BA 3.3..D.RSP...3..
2733:17C0 00 80 E8 D9 FA 59 5E 5F E8 99 FC BF 0A 18 B9 06 .....Y^_........
2733:17D0 00 E8 32 02 FE C0 B9 7F D2 BE F7 17 BF 72 31 E8 ..2..........r1.
2733:17E0 BC FA 59 52 53 50 8A C1 98 99 E8 18 FD B9 80 D2 ..YRSP..........
2733:17F0 BE F7 17 BF 72 31 E8 68 FB 59 5E 5F E8 9F FA 3C ....r1.h.Y^_...<
2733:1800 67 73 06 33 C0 33 DB 33 D2 CB 7D 8A 9D D8 89 1D gs.3.3.3..}.....
2733:1810 7D E9 A2 8B 2E 3A 7D 8E E3 38 8E 63 7E 49 92 24 }....:}..8.c~I.$
2733:1820 49 12 7E CD CC CC CC 4C 7F AB AA AA AA 2A F6 C6 I.~....L.....*..
2733:1830 80 9C 80 E6 7F B9 80 D2 BE F7 17 BF 72 31 E8 23 ............r1.#
2733:1840 FC 3C 88 73 55 52 53 50 FE C0 B5 FF E8 F2 FC 59 .<.sURSP.......Y
2733:1850 5E 5F 50 51 E8 AE FC 59 0A C0 74 02 FE C8 91 87 ^_PQ...Y..t.....
2733:1860 DE 87 D7 E8 34 FA BF A1 18 B9 08 00 E8 B0 01 59 ....4..........Y
2733:1870 D1 E9 73 0E 51 B9 81 FB BE 33 F3 BF 04 35 E8 E0 ..s.Q....3...5..
2733:1880 FA 59 02 C1 72 14 9D 74 10 8B C8 8B F3 8B FA B8 .Y..r..t........
2733:1890 81 00 33 DB 33 D2 E8 CB FB CB 58 B8 CD 00 E9 6E ..3.3.....X....n
2733:18A0 E8 6D 2E 1D 11 60 31 70 46 2C FE E5 7F 74 36 7C .m...`1pF,...t6|
2733:18B0 89 84 21 77 53 3C FF C3 2E 7A D2 7D 5B 95 1D 7C ..!wS<...z.}[..|
2733:18C0 25 B8 46 58 63 7E 16 FC EF FD 75 80 D2 F7 17 72 %.FXc~....u....r
2733:18D0 31 55 8B EC 83 EC 06 0A C0 75 03 E9 D0 00 33 C9 1U.......u....3.
2733:18E0 F6 C6 80 74 04 41 80 E6 7F 51 B9 81 00 33 F6 33 ...t.A...Q...3.3
2733:18F0 FF E8 E7 FB 72 0C 91 87 DE 87 D7 E8 66 FB 59 41 ....r.......f.YA
2733:1900 41 51 B9 7E 4A BE 8E E9 BF 6F 0C E8 CD FB 73 05 AQ.~J....o....s.
2733:1910 E8 ED 00 EB 77 BF B2 19 B9 02 00 51 57 2E 8B 0D ....w......QW...
2733:1920 2E 8B 75 02 2E 8B 7D 04 E8 B0 FB 5F 59 72 08 83 ..u...}...._Yr..
2733:1930 C7 12 E2 E7 83 EF 06 83 C7 06 89 46 FA 89 5E FC ...........F..^.
2733:1940 89 56 FE 57 2E 8B 0D 2E 8B 75 02 2E 8B 7D 04 E8 .V.W.....u...}..
2733:1950 B3 FC 52 53 50 8B 46 FA 8B 5E FC 8B 56 FE E8 00 ..RSP.F..^..V...
2733:1960 FA B9 81 00 33 F6 33 FF E8 33 F9 8B C8 8B F3 8B ....3.3..3......
2733:1970 FA 58 5B 5A E8 ED FA E8 86 00 5F 83 C7 06 2E 8B .X[Z......_.....
2733:1980 0D 2E 8B 75 02 2E 8B 7D 04 E8 12 F9 59 F6 C1 02 ...u...}....Y...
2733:1990 74 14 51 8B C8 8B F3 8B FA B8 81 21 BB A2 DA BA t.Q........!....
2733:19A0 0F 49 E8 F5 F8 59 F6 C1 01 74 03 80 CE 80 8B E5 .I...Y...t......
2733:19B0 5D CB 7F E7 CF CC 13 54 7F F6 F4 A2 30 09 7F 6A ]......T....0..j
2733:19C0 C1 91 0A 06 80 B5 9E 8A 6F 44 80 82 2C 3A CD 13 ........oD..,:..
2733:19D0 80 6A C1 91 0A 06 81 00 00 00 00 00 80 21 A2 DA .j...........!..
2733:19E0 0F 49 7D E8 A2 8B 2E BA 7D 8E E3 38 8E 63 7E 49 .I}.....}..8.c~I
2733:19F0 92 24 49 92 7E CD CC CC CC 4C 7F AB AA AA AA AA .$I.~....L......
2733:1A00 BF E2 19 B9 05 00                               ......         

;; fn2733_1A06: 2733:1A06
fn2733_1A06 proc
	push	dx
	push	bx
	push	ax
	push	cx
	push	di
	mov	cx,ax
	mov	si,bx
	mov	di,dx
	call	1361
	pop	di
	pop	cx
	call	1A1F
	pop	cx
	pop	si
	pop	di
	jmp	1361

;; fn2733_1A1F: 2733:1A1F
fn2733_1A1F proc
	push	bp
	mov	bp,sp
	sub	sp,06
	mov	[bp-06],ax
	mov	[bp-04],bx
	mov	[bp-02],dx
	mov	ax,cs:[di]
	mov	bx,cs:[di+02]
	mov	dx,cs:[di+04]
	push	cx
	push	di
	jmp	1A4D

l2733_1A3D:
	push	cx
	push	di
	mov	cx,cs:[di]
	mov	si,cs:[di+02]
	mov	di,cs:[di+04]
	call	129E

l2733_1A4D:
	mov	cx,[bp-06]
	mov	si,[bp-04]
	mov	di,[bp-02]
	call	1361
	pop	di
	pop	cx
	add	di,06
	loop	1A3D

l2733_1A60:
	mov	cx,0081
	xor	si,si
	xor	di,di
	call	129E
	mov	sp,bp
	pop	bp
	ret

;; fn2733_1A6E: 2733:1A6E
fn2733_1A6E proc
	mov	cx,di
	mov	si,000A
	mov	bx,dx
	or	bx,bx
	jns	1A8A

l2733_1A79:
	neg	bx
	neg	ax
	sbb	bx,00
	call	1A8A
	dec	di
	mov	byte ptr es:[di],2D
	inc	cx
	ret

;; fn2733_1A8A: 2733:1A8A
fn2733_1A8A proc
	xor	dx,dx
	xchg	ax,bx
	div	si
	xchg	ax,bx
	div	si
	add	dl,30
	cmp	dl,3A
	jc	1A9D
	add	dl,07
	dec	di
	mov	es:[di],dl
	mov	dx,ax
	or	dx,bx
	jnz	1A8A
	sub	cx,di
	ret

;; fn2733_1AAA: 2733:1AAA
fn2733_1AAA proc
	xor	ax,ax
	xor	dx,dx
	xor	si,si
	jcxz	1B0F

l2733_1AB2:
	cmp	byte ptr es:[di],2B
	jz	1ABF

l2733_1AB8:
	cmp	byte ptr es:[di],2D
	jnz	1AC3

l2733_1ABE:
	dec	si

l2733_1ABF:
	inc	di
	dec	cx
	jz	1B0F

l2733_1AC3:
	cmp	byte ptr es:[di],24
	jz	1B11

l2733_1AC9:
	mov	bl,es:[di]
	sub	bl,3A
	add	bl,0A
	jnc	1AF9

l2733_1AD4:
	test	dh,F0
	jnz	1B0F

l2733_1AD9:
	push	bx
	shl	ax,01
	rcl	dx,01
	push	dx
	push	ax
	shl	ax,01
	rcl	dx,01
	shl	ax,01
	rcl	dx,01
	pop	bx
	add	ax,bx
	pop	bx
	adc	dx,bx
	pop	bx
	xor	bh,bh
	add	ax,bx
	adc	dx,00
	inc	di
	loop	1AC9

l2733_1AF9:
	mov	bx,ax
	or	bx,dx
	jz	1B0E

l2733_1AFF:
	or	si,si
	jns	1B0A

l2733_1B03:
	neg	dx
	neg	ax
	sbb	dx,00

l2733_1B0A:
	xor	si,dx
	js	1B0F

l2733_1B0E:
	ret

l2733_1B0F:
	stc
	ret

l2733_1B11:
	inc	di
	dec	cx
	jz	1B0F

l2733_1B15:
	mov	bl,es:[di]
	cmp	bl,61
	jc	1B20

l2733_1B1D:
	sub	bl,20

l2733_1B20:
	sub	bl,3A
	add	bl,0A
	jc	1B33

l2733_1B28:
	sub	bl,17
	add	bl,06
	jnc	1AF9

l2733_1B30:
	add	bl,0A

l2733_1B33:
	mov	bh,04

l2733_1B35:
	shl	ax,01
	rcl	dx,01
	jc	1B0F

l2733_1B3B:
	dec	bh
	jnz	1B35

l2733_1B3F:
	or	al,bl
	inc	di
	loop	1B15

l2733_1B44:
	or	si,si
	jns	1B4F

l2733_1B48:
	neg	dx
	neg	ax
	sbb	dx,00

l2733_1B4F:
	clc
	ret

;; fn2733_1B51: 2733:1B51
fn2733_1B51 proc
	push	bp
	mov	bp,sp
	sub	sp,20
	mov	ax,[bp+0E]
	mov	dx,[bp+10]
	lea	di,[bp+00]
	push	ss
	pop	es
	call	1A6E
	push	ds
	mov	si,di
	push	ss
	pop	ds
	les	di,[bp+08]
	mov	dx,[bp+06]
	mov	ax,[bp+0C]
	cmp	ax,dx
	jle	1B79

l2733_1B77:
	mov	ax,dx

l2733_1B79:
	cmp	cx,dx
	jle	1B7F

l2733_1B7D:
	mov	cx,dx

l2733_1B7F:
	cmp	ax,cx
	jge	1B85

l2733_1B83:
	mov	ax,cx

l2733_1B85:
	cld
	stosb
	sub	ax,cx
	jz	1B93

l2733_1B8B:
	push	cx
	mov	cx,ax
	mov	al,20

l2733_1B90:
	rep stosb

l2733_1B92:
	pop	cx

l2733_1B93:
	rep movsb

l2733_1B95:
	pop	ds
	mov	sp,bp
	pop	bp
	retf	000C

;; fn2733_1B9C: 2733:1B9C
fn2733_1B9C proc
	push	bp
	mov	bp,sp
	les	di,[bp+0A]
	mov	cl,es:[di]
	xor	ch,ch
	inc	di
	jcxz	1BB3

l2733_1BAA:
	cmp	byte ptr es:[di],20
	jnz	1BB3

l2733_1BB0:
	inc	di
	loop	1BAA

l2733_1BB3:
	call	1AAA
	jc	1BBA

l2733_1BB8:
	jcxz	1BC3

l2733_1BBA:
	mov	cx,di
	sub	cx,[bp+0A]
	xor	ax,ax
	xor	dx,dx

l2733_1BC3:
	les	di,[bp+06]
	mov	es:[di],cx
	pop	bp
	retf	0008

;; fn2733_1BCD: 2733:1BCD
fn2733_1BCD proc
	call	1C14
	jc	1BE1

l2733_1BD2:
	mov	cx,es:[di+04]
	cmp	cx,01
	jz	1BE1

l2733_1BDB:
	xor	bx,bx
	push	cs
	call	0EBF

l2733_1BE1:
	retf	0004

;; fn2733_1BE4: 2733:1BE4
fn2733_1BE4 proc
	call	1C14
	jc	1BFC

l2733_1BE9:
	mov	ax,cx
	mov	dx,bx
	mov	cx,es:[di+04]
	cmp	cx,01
	jz	1BFC

l2733_1BF6:
	xor	bx,bx
	push	cs
	call	0EBF

l2733_1BFC:
	retf	0004
2733:1BFF                                              E8                .
2733:1C00 12 00 72 0B 2B C1 1B D3 72 05 B0 01 CA 04 00 32 ..r.+...r......2
2733:1C10 C0 CA 04 00                                     ....           

;; fn2733_1C14: 2733:1C14
fn2733_1C14 proc
	mov	bx,sp
	les	di,ss:[bx+06]
	cmp	word ptr es:[di+02],D7B3
	jnz	1C4D

l2733_1C22:
	xor	cx,cx
	xor	dx,dx
	mov	bx,es:[di]
	mov	ax,4201
	int	21
	push	dx
	push	ax
	xor	cx,cx
	xor	dx,dx
	mov	bx,es:[di]
	mov	ax,4202
	int	21
	pop	bx
	pop	cx
	push	dx
	push	ax
	mov	dx,bx
	mov	bx,es:[di]
	mov	ax,4200
	int	21
	pop	cx
	pop	bx
	ret

l2733_1C4D:
	mov	word ptr [107E],0067
	xor	ax,ax
	xor	dx,dx
	stc
	ret
2733:1C59                            8B DC 36 8A 47 04 3C          ..6.G.<
2733:1C60 61 72 06 3C 7A 77 02 2C 20 CA 02 00             ar.<zw., ...   

;; fn2733_1C6C: 2733:1C6C
fn2733_1C6C proc
	mov	di,1094
	push	ds
	pop	es
	mov	cx,F74E
	sub	cx,di
	shr	cx,01
	xor	ax,ax
	cld

l2733_1C7B:
	rep stosw

l2733_1C7D:
	ret
2733:1C7E                                           00 00               ..
;;; Segment 28FB (28FB:0000)
28FB:0000 00 00 80 00 00 00 00 00 80 00 00 00 00 40 81 00 .............@..
28FB:0010 00 00 00 00 81 D7 A3 70 3D 2A 81 AE 47 E1 7A 54 .......p=*..G.zT
28FB:0020 82 00 00 00 00 00 82 EC 51 B8 1E 15 82 D7 A3 70 ........Q......p
28FB:0030 3D 2A 82 00 00 00 00 40 61 00 B4 01 A1 00 DC 01 =*.....@a.......
28FB:0040 C0 00 B4 01 00 01 DC 01 20 01 B4 01 60 01 DC 01 ........ ...`...
28FB:0050 80 01 B4 01 C0 01 DC 01 DD 01 B4 01 0E 02 DC 01 ................
28FB:0060 22 02 B3 01 49 02 DB 01 51 02 B3 01 79 02 DB 01 "...I...Q...y...
28FB:0070 0E 00 B4 01 46 00 DC 01 00 00 00 00 01 00 01 00 ....F...........
28FB:0080 02 00 02 00 03 00 03 00 04 00 04 00 05 00 05 00 ................
28FB:0090 06 00 06 00 07 00 07 00 00 00 01 00 02 00 02 00 ................
28FB:00A0 03 00 04 00 05 00 05 00 06 00 07 00 08 00 08 00 ................
28FB:00B0 09 00 0A 00 0B 00 0B 00 00 00 01 00 02 00 03 00 ................
28FB:00C0 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 0B 00 ................
28FB:00D0 0C 00 0D 00 0E 00 0F 00 00 00 01 00 02 00 03 00 ................
28FB:00E0 05 00 06 00 07 00 09 00 0A 00 0B 00 0D 00 0E 00 ................
28FB:00F0 0F 00 11 00 12 00 13 00 00 00 01 00 03 00 05 00 ................
28FB:0100 06 00 08 00 09 00 0B 00 0C 00 0E 00 0F 00 11 00 ................
28FB:0110 12 00 14 00 15 00 17 00 08 00 34 00 60 00 8C 00 ..........4.`...
28FB:0120 B8 00 E4 00 10 01 3D 01 6A 01 97 01 C4 01 F1 01 ......=.j.......
28FB:0130 1E 02 4B 02 78 02 07 53 50 45 41 4B 45 52 00 00 ..K.x..SPEAKER..
28FB:0140 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0230 00 00 00 00 00 00 03 44 41 43 00 00 00 00 00 00 .......DAC......
28FB:0240 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0330 00 00 00 00 00 00 02 53 42 00 00 00 00 00 00 00 .......SB.......
28FB:0340 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0430 00 00 00 00 00 00 06 53 42 20 50 72 6F 00 00 00 .......SB Pro...
28FB:0440 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0530 00 00 00 00 00 00 05 53 42 20 31 36 00 00 00 00 .......SB 16....
28FB:0540 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0630 00 00 00 00 00 00 03 47 55 53 00 00 00 00 00 00 .......GUS......
28FB:0640 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:0730 00 00 00 00 00 00 02 00 01 00 02 00 6B 01 FC 01 ............k...
28FB:0740 6B 01 20 02 6B 01 45 02 6B 01 75 02 00 02 FC 01 k. .k.E.k.u.....
28FB:0750 03 00 3F 00 FD 01 43 00 9B 00 FD 01 43 00 FB 00 ..?...C.....C...
28FB:0760 FD 01 43 00 DD 01 72 02 40 00 29 00 04 00 02 00 ..C...r.@.).....
28FB:0770 28 02 72 02 40 00 29 00 05 00 06 00 26 02 F0 01 (.r.@.).....&...
28FB:0780 43 00 29 00 03 00 01 00 00 00 00 00 00 00 00 00 C.).............
28FB:0790 00 00 00 00 DB 01 E5 01 40 00 1D 00 07 00 09 00 ........@.......
28FB:07A0 28 02 E5 01 40 00 1D 00 08 00 0A 00 01 00 02 00 (...@...........
28FB:07B0 03 00 04 00 05 00 06 00 07 00 08 00 09 00 0A 00 ................
28FB:07C0 8D 00 FF 00 B9 00 FF 00 30 00 FF 00 D2 E7 FB 28 ........0......(
28FB:07D0 70 E8 FB 28 0E E9 FB 28 AC E9 FB 28 4A EA FB 28 p..(...(...(J..(
28FB:07E0 8E 08 FB 28 B6 08 FB 28 02 00 03 00 04 00 05 00 ...(...(........
28FB:07F0 07 00 09 00 0A 00 0B 00 0C 00 0F 00 C7 08 FB 28 ...............(
28FB:0800 C9 08 FB 28 CB 08 FB 28 CD 08 FB 28 CF 08 FB 28 ...(...(...(...(
28FB:0810 D1 08 FB 28 D3 08 FB 28 D6 08 FB 28 D9 08 FB 28 ...(...(...(...(
28FB:0820 DC 08 FB 28 00 00 01 00 03 00 05 00 06 00 07 00 ...(............
28FB:0830 DF 08 FB 28 E1 08 FB 28 E3 08 FB 28 E5 08 FB 28 ...(...(...(...(
28FB:0840 E7 08 FB 28 E9 08 FB 28 40 1F 11 2B 80 3E 22 56 ...(...(@..+.>"V
28FB:0850 00 7D 70 94 44 AC EB 08 FB 28 F2 08 FB 28 FA 08 .}p.D....(...(..
28FB:0860 FB 28 02 09 FB 28 0A 09 FB 28 12 09 FB 28 1A 09 .(...(...(...(..
28FB:0870 FB 28 22 09 FB 28 05 00 06 00 09 00 0A 00 28 09 .("..(........(.
28FB:0880 FB 28 33 09 FB 28 40 09 FB 28 4C 09 FB 28 4D 49 .(3..(@..(L..(MI
28FB:0890 44 41 53 20 53 6F 75 6E 64 20 53 79 73 74 65 6D DAS Sound System
28FB:08A0 20 76 30 2E 34 30 61 20 63 6F 6E 66 69 67 75 72  v0.40a configur
28FB:08B0 61 74 69 6F 6E 00 30 31 32 33 34 35 36 37 38 39 ation.0123456789
28FB:08C0 41 42 43 44 45 46 00 32 00 33 00 34 00 35 00 37 ABCDEF.2.3.4.5.7
28FB:08D0 00 39 00 31 30 00 31 31 00 31 32 00 31 35 00 30 .9.10.11.12.15.0
28FB:08E0 00 31 00 33 00 35 00 36 00 37 00 38 30 30 30 48 .1.3.5.6.7.8000H
28FB:08F0 7A 00 31 31 30 32 35 48 7A 00 31 36 30 30 30 48 z.11025Hz.16000H
28FB:0900 7A 00 32 32 30 35 30 48 7A 00 33 32 30 30 30 48 z.22050Hz.32000H
28FB:0910 7A 00 33 38 30 30 30 48 7A 00 34 34 31 30 30 48 z.38000Hz.44100H
28FB:0920 7A 00 4F 74 68 65 72 00 38 2D 62 69 74 20 6D 6F z.Other.8-bit mo
28FB:0930 6E 6F 00 38 2D 62 69 74 20 73 74 65 72 65 6F 00 no.8-bit stereo.
28FB:0940 31 36 2D 62 69 74 20 6D 6F 6E 6F 00 31 36 2D 62 16-bit mono.16-b
28FB:0950 69 74 20 73 74 65 72 65 6F 00 FF 13 7F 27 C4 00 it stereo....'..
28FB:0960 55 73 65 20 61 72 72 6F 77 73 20 74 6F 20 73 65 Use arrows to se
28FB:0970 6C 65 63 74 2C 20 45 6E 74 65 72 20 74 6F 20 63 lect, Enter to c
28FB:0980 6F 6E 66 69 72 6D 20 6F 72 20 45 73 63 20 74 6F onfirm or Esc to
28FB:0990 20 63 61 6E 63 65 6C 00 FF 1F 7F 43 DC FF 18 DC  cancel....C....
28FB:09A0 00 FF 7F DB 7F 42 20 FF 78 DB 00 FF 7F DB 20 FF .....B .x..... .
28FB:09B0 78 DA 7F 3E C4 FF 7F BF 20 FF 78 DB 00 FF 7F DB x..>.... .x.....
28FB:09C0 20 FF 78 B3 7F 3E 20 FF 7F B3 20 FF 78 DB 00 FF  .x..> ... .x...
28FB:09D0 7F DB 20 FF 78 C0 FF 7F 7F 3E C4 D9 20 FF 78 DB .. .x....>.. .x.
28FB:09E0 00 FF 1F DF FF 18 7F 43 DF 00 00 00 FF 3B DB 20 .......C.....;. 
28FB:09F0 00 FF 38 20 DB 00 FF 3B DB 20 FF 38 DA 00 FF 3B ..8 ...;. .8...;
28FB:0A00 BF 20 FF 38 DB 00 FF 3B DB 20 FF 38 B3 00 FF 3B . .8...;. .8...;
28FB:0A10 B3 20 FF 38 DB 00 FF 3B DB 20 FF 38 C0 00 FF 3B . .8...;. .8...;
28FB:0A20 D9 20 FF 38 DB 00 53 65 6C 65 63 74 20 53 6F 75 . .8..Select Sou
28FB:0A30 6E 64 20 43 61 72 64 00 4F 74 68 65 72 00 53 65 nd Card.Other.Se
28FB:0A40 6C 65 63 74 20 53 6F 75 6E 64 20 43 61 72 64 20 lect Sound Card 
28FB:0A50 49 2F 4F 20 50 6F 72 74 20 41 64 64 72 65 73 73 I/O Port Address
28FB:0A60 00 45 6E 74 65 72 20 53 6F 75 6E 64 20 43 61 72 .Enter Sound Car
28FB:0A70 64 20 49 2F 4F 20 50 6F 72 74 20 41 64 64 72 65 d I/O Port Addre
28FB:0A80 73 73 20 28 69 6E 20 48 45 58 41 44 45 43 49 4D ss (in HEXADECIM
28FB:0A90 41 4C 29 00 53 65 6C 65 63 74 20 53 6F 75 6E 64 AL).Select Sound
28FB:0AA0 20 43 61 72 64 20 49 52 51 20 4E 75 6D 62 65 72  Card IRQ Number
28FB:0AB0 00 53 65 6C 65 63 74 20 53 6F 75 6E 64 20 43 61 .Select Sound Ca
28FB:0AC0 72 64 20 44 4D 41 20 43 68 61 6E 6E 65 6C 20 4E rd DMA Channel N
28FB:0AD0 75 6D 62 65 72 00 53 65 6C 65 63 74 20 6D 69 78 umber.Select mix
28FB:0AE0 69 6E 67 20 72 61 74 65 00 45 6E 74 65 72 20 4D ing rate.Enter M
28FB:0AF0 69 78 69 6E 67 20 52 61 74 65 20 28 69 6E 20 44 ixing Rate (in D
28FB:0B00 45 43 49 4D 41 4C 29 00 53 65 6C 65 63 74 20 6F ECIMAL).Select o
28FB:0B10 75 74 70 75 74 20 6D 6F 64 65 00 00 D2 E7 FB 28 utput mode.....(
28FB:0B20 70 E8 FB 28 0E E9 FB 28 AC E9 FB 28 4A EA FB 28 p..(...(...(J..(
28FB:0B30 4D 49 44 41 53 20 45 72 72 6F 72 3A 20 00 46 41 MIDAS Error: .FA
28FB:0B40 54 41 4C 20 4D 49 44 41 53 20 75 6E 69 6E 69 74 TAL MIDAS uninit
28FB:0B50 69 61 6C 69 7A 61 74 69 6F 6E 20 66 61 69 6C 75 ialization failu
28FB:0B60 72 65 3A 20 00 00 00 00 53 43 52 4D 00 53 43 52 re: ....SCRM.SCR
28FB:0B70 53 00 0A 0C FB 28 0D 0C FB 28 1D 0C FB 28 38 0C S....(...(...(8.
28FB:0B80 FB 28 5B 0C FB 28 7D 0C FB 28 8F 0C FB 28 A9 0C .([..(}..(...(..
28FB:0B90 FB 28 C2 0C FB 28 E2 0C FB 28 FA 0C FB 28 1A 0D .(...(...(...(..
28FB:0BA0 FB 28 39 0D FB 28 53 0D FB 28 67 0D FB 28 7B 0D .(9..(S..(g..({.
28FB:0BB0 FB 28 8F 0D FB 28 AC 0D FB 28 CB 0D FB 28 E2 0D .(...(...(...(..
28FB:0BC0 FB 28 FC 0D FB 28 1B 0E FB 28 39 0E FB 28 54 0E .(...(...(9..(T.
28FB:0BD0 FB 28 68 0E FB 28 7C 0E FB 28 8A 0E FB 28 96 0E .(h..(|..(...(..
28FB:0BE0 FB 28 AA 0E FB 28 B4 0E FB 28 CB 0E FB 28 D8 0E .(...(...(...(..
28FB:0BF0 FB 28 ED 0E FB 28 0F 0F FB 28 32 0F FB 28 56 0F .(...(...(2..(V.
28FB:0C00 FB 28 63 0F FB 28 7E 0F FB 28 4F 4B 00 55 6E 64 .(c..(~..(OK.Und
28FB:0C10 65 66 69 6E 65 64 20 65 72 72 6F 72 00 4F 75 74 efined error.Out
28FB:0C20 20 6F 66 20 63 6F 6E 76 65 6E 74 69 6F 6E 61 6C  of conventional
28FB:0C30 20 6D 65 6D 6F 72 79 00 43 6F 6E 76 65 6E 74 69  memory.Conventi
28FB:0C40 6F 6E 61 6C 20 6D 65 6D 6F 72 79 20 68 65 61 70 onal memory heap
28FB:0C50 20 63 6F 72 72 75 70 74 65 64 00 49 6E 76 61 6C  corrupted.Inval
28FB:0C60 69 64 20 63 6F 6E 76 65 6E 74 69 6F 6E 61 6C 20 id conventional 
28FB:0C70 6D 65 6D 6F 72 79 20 62 6C 6F 63 6B 00 4F 75 74 memory block.Out
28FB:0C80 20 6F 66 20 45 4D 53 20 6D 65 6D 6F 72 79 00 45  of EMS memory.E
28FB:0C90 4D 53 20 6D 65 6D 6F 72 79 20 68 65 61 70 20 63 MS memory heap c
28FB:0CA0 6F 72 72 75 70 74 65 64 00 49 6E 76 61 6C 69 64 orrupted.Invalid
28FB:0CB0 20 45 4D 53 20 6D 65 6D 6F 72 79 20 62 6C 6F 63  EMS memory bloc
28FB:0CC0 6B 00 45 78 70 61 6E 64 65 64 20 4D 65 6D 6F 72 k.Expanded Memor
28FB:0CD0 79 20 4D 61 6E 61 67 65 72 20 66 61 69 6C 75 72 y Manager failur
28FB:0CE0 65 00 4F 75 74 20 6F 66 20 73 6F 75 6E 64 63 61 e.Out of soundca
28FB:0CF0 72 64 20 6D 65 6D 6F 72 79 00 53 6F 75 6E 64 63 rd memory.Soundc
28FB:0D00 61 72 64 20 6D 65 6D 6F 72 79 20 68 65 61 70 20 ard memory heap 
28FB:0D10 63 6F 72 72 75 70 74 65 64 00 49 6E 76 61 6C 69 corrupted.Invali
28FB:0D20 64 20 73 6F 75 6E 64 63 61 72 64 20 6D 65 6D 6F d soundcard memo
28FB:0D30 72 79 20 62 6C 6F 63 6B 00 4F 75 74 20 6F 66 20 ry block.Out of 
28FB:0D40 69 6E 73 74 72 75 6D 65 6E 74 20 68 61 6E 64 6C instrument handl
28FB:0D50 65 73 00 55 6E 61 62 6C 65 20 74 6F 20 6F 70 65 es.Unable to ope
28FB:0D60 6E 20 66 69 6C 65 00 55 6E 61 62 6C 65 20 74 6F n file.Unable to
28FB:0D70 20 72 65 61 64 20 66 69 6C 65 00 49 6E 76 61 6C  read file.Inval
28FB:0D80 69 64 20 6D 6F 64 75 6C 65 20 66 69 6C 65 00 49 id module file.I
28FB:0D90 6E 76 61 6C 69 64 20 69 6E 73 74 72 75 6D 65 6E nvalid instrumen
28FB:0DA0 74 20 69 6E 20 6D 6F 64 75 6C 65 00 49 6E 76 61 t in module.Inva
28FB:0DB0 6C 69 64 20 70 61 74 74 65 72 6E 20 64 61 74 61 lid pattern data
28FB:0DC0 20 69 6E 20 6D 6F 64 75 6C 65 00 49 6E 76 61 6C  in module.Inval
28FB:0DD0 69 64 20 63 68 61 6E 6E 65 6C 20 6E 75 6D 62 65 id channel numbe
28FB:0DE0 72 00 49 6E 76 61 6C 69 64 20 69 6E 73 74 72 75 r.Invalid instru
28FB:0DF0 6D 65 6E 74 20 68 61 6E 64 6C 65 00 53 6F 75 6E ment handle.Soun
28FB:0E00 64 20 44 65 76 69 63 65 20 63 68 61 6E 6E 65 6C d Device channel
28FB:0E10 73 20 6E 6F 74 20 6F 70 65 6E 00 53 6F 75 6E 64 s not open.Sound
28FB:0E20 20 44 65 76 69 63 65 20 68 61 72 64 77 61 72 65  Device hardware
28FB:0E30 20 66 61 69 6C 75 72 65 00 49 6E 76 61 6C 69 64  failure.Invalid
28FB:0E40 20 66 75 6E 63 74 69 6F 6E 20 61 72 67 75 6D 65  function argume
28FB:0E50 6E 74 73 00 46 69 6C 65 20 64 6F 65 73 20 6E 6F nts.File does no
28FB:0E60 74 20 65 78 69 73 74 00 49 6E 76 61 6C 69 64 20 t exist.Invalid 
28FB:0E70 66 69 6C 65 20 68 61 6E 64 6C 65 00 41 63 63 65 file handle.Acce
28FB:0E80 73 73 20 64 65 6E 69 65 64 00 46 69 6C 65 20 65 ss denied.File e
28FB:0E90 78 69 73 74 73 00 54 6F 6F 20 6D 61 6E 79 20 6F xists.Too many o
28FB:0EA0 70 65 6E 20 66 69 6C 65 73 00 44 69 73 6B 20 66 pen files.Disk f
28FB:0EB0 75 6C 6C 00 55 6E 65 78 70 65 63 74 65 64 20 65 ull.Unexpected e
28FB:0EC0 6E 64 20 6F 66 20 66 69 6C 65 00 49 6E 76 61 6C nd of file.Inval
28FB:0ED0 69 64 20 70 61 74 68 00 55 6E 61 62 6C 65 20 74 id path.Unable t
28FB:0EE0 6F 20 77 72 69 74 65 20 66 69 6C 65 00 55 6E 61 o write file.Una
28FB:0EF0 62 6C 65 20 74 6F 20 6C 6F 63 6B 20 56 69 72 74 ble to lock Virt
28FB:0F00 75 61 6C 20 44 4D 41 20 62 75 66 66 65 72 00 55 ual DMA buffer.U
28FB:0F10 6E 61 62 6C 65 20 74 6F 20 75 73 65 20 56 69 72 nable to use Vir
28FB:0F20 74 75 61 6C 20 44 4D 41 20 53 65 72 76 69 63 65 tual DMA Service
28FB:0F30 73 00 49 6E 76 61 6C 69 64 20 56 69 72 74 75 61 s.Invalid Virtua
28FB:0F40 6C 20 44 4D 41 20 53 65 72 76 69 63 65 20 76 65 l DMA Service ve
28FB:0F50 72 73 69 6F 6E 00 44 50 4D 49 20 66 61 69 6C 75 rsion.DPMI failu
28FB:0F60 72 65 00 49 6E 76 61 6C 69 64 20 73 65 67 6D 65 re.Invalid segme
28FB:0F70 6E 74 20 64 65 73 63 72 69 70 74 6F 72 00 4F 75 nt descriptor.Ou
28FB:0F80 74 20 6F 66 20 73 79 73 74 65 6D 20 72 65 73 6F t of system reso
28FB:0F90 75 72 63 65 73 00 00 A0 00 00 00 0F 01 01 0F 08 urces...........
28FB:0FA0 07 08 0F 07 0F 08 03 08 0F 03 0F 08 07 00 00 00 ................
28FB:0FB0 08 00 7F FD FF FF 80 FD FF FF 81 FD FF FF 00 00 ................
28FB:0FC0 00 00 FF FF FF FF 00 00 00 00 01 00 00 00 00 00 ................
28FB:0FD0 00 00 7F 02 00 00 80 02 00 00 81 02 00 00 00 00 ................
28FB:0FE0 00 00 DF FC FF FF E0 FC FF FF E1 FC FF FF 00 00 ................
28FB:0FF0 00 00 FF FF FF FF 00 00 00 00 01 00 00 00 00 00 ................
28FB:1000 00 00 1F 03 00 00 20 03 00 00 21 03 00 00 00 00 ...... ...!.....
28FB:1010 00 00 FF FB FF FF 00 FC FF FF 01 FC FF FF 00 00 ................
28FB:1020 00 00 FF FF FF FF 00 00 00 00 01 00 00 00 00 00 ................
28FB:1030 00 00 FF 03 00 00 00 04 00 00 01 04 00 00 00 00 ................
28FB:1040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
28FB:1050 00 00 00 00 00 00 FF FF 00 00 00 00 00 00 00 00 ................
28FB:1060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ................
; ...
28FB:1080 00 00 00 00 00 10 40 00 00 A0 00 B0 00 B8 00 00 ......@.........
28FB:1090 02 00 0D 0A 00 00 00 00 00 00 00 00 00 00 00 00 ................
28FB:10A0 C7 CA CA D6 D1 C0 D7 94 A8 AF C7 94 FA A8 AF 97 ................
28FB:10B0 91 A8 AF 91 95 A8 AF 96 95 95 A8 AF 95 A8 AF 85 ................
28FB:10C0 85 85 85 85 85 94 9C 9C 93 85 E3 E0 E7 F7 F0 2A ...............*
