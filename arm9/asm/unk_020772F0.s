    .include "asm/macros.inc"
    .include "global.inc"
	.extern UNK_020F9D28
	.extern UNK_020F9D2C
	.extern UNK_020F9D30
	.extern UNK_020F9D38
	.extern UNK_020F9D40
	.extern UNK_020F9D4C
	.extern UNK_020F9D5C
	.extern UNK_020F9D6C
	.extern UNK_020F9DFC
	.extern UNK_020F9EC0
	.extern UNK_020F9FA0
	.extern UNK_020FA064
	.extern UNK_020FA0A0
	.extern UNK_020FA12C
	.extern UNK_020FA154
	.extern UNK_020FA158
	.extern UNK_020FA17C
	.extern UNK_020FA17E
	.extern UNK_020FA1A4
	.extern UNK_020FA1A6
	.extern UNK_020FA1D4
	.extern UNK_020FA1D8
	.extern UNK_020FA1DC
	.extern UNK_020FA224
	.extern UNK_020FA264
	.extern UNK_020FA40E
	.extern UNK_02106058
	.extern UNK_0210606C
	.extern UNK_021C48F8
	.extern gUnk021C4918
	.extern gUnknown21C48B8

	.section .bss

	.global UNK_021C5C54
UNK_021C5C54: ; 0x021C5C54
	.space 0x4

	.text

	thumb_func_start FUN_020772E8
FUN_020772E8: ; 0x020772E8
	push {r3-r6, lr}
	sub sp, #0xc
	add r5, r1, #0x0
	ldr r1, [r5, #0x0]
	add r6, r0, #0x0
	cmp r1, #0x0
	beq _020772FE
	cmp r1, #0x1
	bne _020772FC
	b _02077456
_020772FC:
	b _02077490
_020772FE:
	mov r0, #0x0
	add r1, r0, #0x0
	bl FUN_02015F10
	bl FUN_02015F1C
	bl FUN_0201E6D8
	bl FUN_0201E740
	mov r2, #0x1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0x0]
	ldr r0, _02077498 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0x0]
	ldr r2, _0207749C ; =0x04001000
	ldr r1, [r2, #0x0]
	and r0, r1
	str r0, [r2, #0x0]
	mov r2, #0xa
	mov r0, #0x3
	mov r1, #0x12
	lsl r2, r2, #0xe
	bl FUN_0201681C
	mov r1, #0x5d
	add r0, r6, #0x0
	lsl r1, r1, #0x4
	mov r2, #0x12
	bl FUN_02006268
	mov r2, #0x5d
	mov r1, #0x0
	lsl r2, r2, #0x4
	add r4, r0, #0x0
	bl memset
	mov r0, #0x12
	bl FUN_02016B94
	mov r1, #0x16
	lsl r1, r1, #0x4
	str r0, [r4, r1]
	mov r0, #0x12
	bl FUN_0200AA80
	mov r2, #0x5a
	lsl r2, r2, #0x2
	str r0, [r4, r2]
	mov r0, #0x0
	mov r1, #0x1a
	add r2, #0xb
	mov r3, #0x12
	bl FUN_0200A86C
	mov r2, #0x5b
	lsl r2, r2, #0x2
	str r0, [r4, r2]
	mov r0, #0x1
	mov r1, #0x1a
	add r2, #0xc
	mov r3, #0x12
	bl FUN_0200A86C
	mov r2, #0x17
	lsl r2, r2, #0x4
	str r0, [r4, r2]
	mov r0, #0x1
	mov r1, #0x1a
	sub r2, #0x2c
	mov r3, #0x12
	bl FUN_0200A86C
	mov r1, #0x5d
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	mov r0, #0x4
	mov r1, #0x8
	bl FUN_0201669C
	bl FUN_02077B24
	mov r0, #0x16
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_02077B44
	add r0, r6, #0x0
	bl FUN_0200628C
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02077B08
	add r0, r4, #0x0
	bl FUN_02077FE8
	mov r0, #0x2
	mov r1, #0x12
	bl FUN_02002C50
	ldr r0, _020774A0 ; =FUN_02077AE8
	mov r1, #0x0
	bl FUN_02015F10
	add r0, r4, #0x0
	add r1, r6, #0x0
	bl FUN_02077CD4
	mov r0, #0x0
	mov r1, #0x12
	bl FUN_02002C84
	bl FUN_02078110
	add r0, r4, #0x0
	bl FUN_02078140
	add r0, r4, #0x0
	bl FUN_0207835C
	add r0, r4, #0x0
	add r1, r6, #0x0
	bl FUN_0207890C
	ldr r0, _020774A4 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #0x2
	str r1, [sp, #0x0]
	ldr r1, [r4, r3]
	add r2, r3, #0x0
	str r1, [sp, #0x4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0x0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl FUN_0207907C
	mov r1, #0x0
	mov r0, #0x34
	add r2, r1, #0x0
	bl FUN_0200433C
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r1, #0x1
	str r1, [sp, #0x4]
	mov r0, #0x12
	str r0, [sp, #0x8]
	mov r0, #0x0
	add r2, r1, #0x0
	add r3, r0, #0x0
	bl FUN_0200E1D0
	mov r0, #0x1
	bl FUN_02077C84
	ldr r0, _020774A8 ; =gUnk021C4918
	mov r1, #0x1
	strb r1, [r0, #0x5]
	bl FUN_0201E7A0
	ldr r0, [r5, #0x0]
	add r0, r0, #0x1
	str r0, [r5, #0x0]
	b _02077490
_02077456:
	bl FUN_02006278
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	cmp r0, #0x1
	bne _02077472
	ldr r1, _020774AC ; =0x000004B8
	ldr r2, [r4, #0x4]
	ldr r0, [r4, r1]
	add r1, #0x8
	ldr r1, [r4, r1]
	ldr r3, [r4, #0x8]
	bl FUN_020774B8
_02077472:
	ldr r0, _020774B0 ; =UNK_021C5C54
	mov r1, #0x1
	str r4, [r0, #0x0]
	mov r0, #0x0
	mov r2, #0xc
	mov r3, #0x12
	bl FUN_020142EC
	ldr r1, _020774B4 ; =0x000005C4
	add sp, #0xc
	str r0, [r4, r1]
	mov r0, #0x0
	str r0, [r5, #0x0]
	mov r0, #0x1
	pop {r3-r6, pc}
_02077490:
	mov r0, #0x0
	add sp, #0xc
	pop {r3-r6, pc}
	nop
_02077498: .word 0xFFFFE0FF
_0207749C: .word 0x04001000
_020774A0: .word FUN_02077AE8
_020774A4: .word 0x000004C4
_020774A8: .word gUnk021C4918
_020774AC: .word 0x000004B8
_020774B0: .word UNK_021C5C54
_020774B4: .word 0x000005C4

	thumb_func_start FUN_020774B8
FUN_020774B8: ; 0x020774B8
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r2, #0x0
	mov r2, #0x2
	ldr r0, [r0, #0x14]
	ldr r1, _020774E8 ; =0x000057E0
	add r6, r3, #0x0
	lsl r2, r2, #0x8
	bl GX_LoadOBJ
	ldr r4, [r4, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r2, #0x0
	bl FUN_0206B7BC
	lsl r0, r0, #0x5
	add r0, r4, r0
	mov r1, #0xc0
	mov r2, #0x20
	bl GX_LoadOBJPltt
	pop {r4-r6, pc}
	nop
_020774E8: .word 0x000057E0

	thumb_func_start FUN_020774EC
FUN_020774EC: ; 0x020774EC
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r1, #0x0
	add r6, r0, #0x0
	bl FUN_02006278
	ldr r1, [r5, #0x0]
	add r4, r0, #0x0
	cmp r1, #0x3
	bhi _02077550
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207750C: ; jump table (using 16-bit offset)
	.short _02077514 - _0207750C - 2; case 0
	.short _02077528 - _0207750C - 2; case 1
	.short _0207755C - _0207750C - 2; case 2
	.short _0207768A - _0207750C - 2; case 3
_02077514:
	bl FUN_0200E308
	cmp r0, #0x0
	beq _02077550
	mov r0, #0x1
	str r0, [r5, #0x0]
	ldr r0, _020776A8 ; =0x000005CC
	mov r1, #0x0
	str r1, [r4, r0]
	b _02077698
_02077528:
	ldr r1, _020776A8 ; =0x000005CC
	ldr r2, [r4, r1]
	add r2, r2, #0x1
	str r2, [r4, r1]
	bl FUN_020798C4
	mov r2, #0x49
	lsl r2, r2, #0x4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #0x2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl FUN_02079834
	ldr r0, _020776A8 ; =0x000005CC
	ldr r1, [r4, r0]
	cmp r1, #0x5
	bgt _02077552
_02077550:
	b _02077698
_02077552:
	mov r1, #0x2
	str r1, [r5, #0x0]
	mov r1, #0x0
	str r1, [r4, r0]
	b _02077698
_0207755C:
	ldr r3, _020776AC ; =0x0000045C
	ldr r2, [r4, r3]
	cmp r2, #0x7
	bhi _02077636
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02077570: ; jump table (using 16-bit offset)
	.short _02077636 - _02077570 - 2; case 0
	.short _02077636 - _02077570 - 2; case 1
	.short _02077636 - _02077570 - 2; case 2
	.short _02077636 - _02077570 - 2; case 3
	.short _02077580 - _02077570 - 2; case 4
	.short _02077594 - _02077570 - 2; case 5
	.short _020775E0 - _02077570 - 2; case 6
	.short _0207760C - _02077570 - 2; case 7
_02077580:
	ldr r2, [r4, #0x34]
	cmp r2, #0x0
	bne _0207758C
	bl FUN_020776C4
	str r0, [r5, #0x0]
_0207758C:
	add r0, r4, #0x0
	bl FUN_020798C4
	b _02077636
_02077594:
	add r1, r6, #0x0
	bl FUN_02077E90
	ldr r0, _020776B0 ; =0x00000448
	mov r1, #0xf
	add r0, r4, r0
	bl FUN_02019620
	ldr r0, _020776B0 ; =0x00000448
	mov r2, #0x1
	add r0, r4, r0
	mov r1, #0x0
	lsl r2, r2, #0x8
	mov r3, #0xa
	bl FUN_0200D0BC
	mov r3, #0x0
	mov r2, #0x6
	ldr r0, _020776B0 ; =0x00000448
	str r3, [sp, #0x0]
	mov r1, #0x1
	str r1, [sp, #0x4]
	str r3, [sp, #0x8]
	lsl r2, r2, #0x6
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl FUN_0201BD84
	ldr r1, _020776B4 ; =0x00000458
	str r0, [r4, r1]
	sub r1, #0x10
	add r0, r4, r1
	bl FUN_020191D0
	ldr r0, _020776AC ; =0x0000045C
	mov r1, #0x6
	str r1, [r4, r0]
	b _02077636
_020775E0:
	sub r0, r3, #0x4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201BD70
	cmp r0, #0x0
	bne _02077636
	ldr r0, _020776B8 ; =0x000005E2
	bl FUN_020054C8
	ldr r1, _020776BC ; =0x000004A8
	mov r2, #0x0
	ldr r0, [r4, r1]
	add r0, r0, #0x1
	str r0, [r4, r1]
	ldr r0, _020776A8 ; =0x000005CC
	sub r1, #0x4c
	str r2, [r4, r0]
	mov r0, #0x7
	str r0, [r4, r1]
	b _02077636
_0207760C:
	ldr r0, _020776A8 ; =0x000005CC
	ldr r1, [r4, r0]
	add r1, r1, #0x1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _02077636
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r1, #0x0
	mov r0, #0x1
	str r0, [sp, #0x4]
	mov r0, #0x12
	str r0, [sp, #0x8]
	mov r0, #0x2
	add r2, r1, #0x0
	add r3, r1, #0x0
	bl FUN_0200E1D0
	mov r0, #0x3
	str r0, [r5, #0x0]
_02077636:
	ldr r3, _020776C0 ; =0x00000464
	mov r1, #0xcb
	add r0, r4, r3
	str r0, [sp, #0x0]
	add r0, r3, #0x4
	add r0, r4, r0
	lsl r1, r1, #0x2
	str r0, [sp, #0x4]
	add r0, r4, r1
	str r0, [sp, #0x8]
	add r0, r3, #0x0
	add r0, #0x4c
	ldr r0, [r4, r0]
	add r2, r3, #0x0
	ldr r0, [r0, #0x14]
	add r1, #0x8c
	str r0, [sp, #0xc]
	mov r0, #0x16
	lsl r0, r0, #0x4
	sub r3, r3, #0x4
	sub r2, #0x8
	ldr r0, [r4, r0]
	ldr r3, [r4, r3]
	add r1, r4, r1
	add r2, r4, r2
	bl FUN_020786B0
	mov r2, #0x49
	lsl r2, r2, #0x4
	add r0, r4, r2
	mov r1, #0xcb
	sub r2, #0x30
	lsl r1, r1, #0x2
	ldr r2, [r4, r2]
	add r1, r4, r1
	bl FUN_02079834
	add r0, r4, #0x0
	add r0, #0x38
	bl FUN_02078E3C
	b _02077698
_0207768A:
	bl FUN_0200E308
	cmp r0, #0x0
	beq _02077698
	add sp, #0x10
	mov r0, #0x1
	pop {r4-r6, pc}
_02077698:
	mov r0, #0x62
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0201FDEC
	mov r0, #0x0
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4
_020776A8: .word 0x000005CC
_020776AC: .word 0x0000045C
_020776B0: .word 0x00000448
_020776B4: .word 0x00000458
_020776B8: .word 0x000005E2
_020776BC: .word 0x000004A8
_020776C0: .word 0x00000464

	thumb_func_start FUN_020776C4
FUN_020776C4: ; 0x020776C4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_02078C98
	ldr r0, _020777BC ; =gUnknown21C48B8
	mov r1, #0x4
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02077746
	ldr r0, [r5, #0x0]
	cmp r0, #0x4
	beq _0207771E
	ldr r1, _020777C0 ; =0x0000045C
	mov r0, #0x0
	str r0, [r5, r1]
	add r2, r1, #0x4
	ldr r2, [r5, r2]
	add r3, r2, #0x1
	add r2, r1, #0x4
	str r3, [r5, r2]
	ldr r2, [r5, r2]
	cmp r2, #0x3
	blt _020776F8
	add r1, r1, #0x4
	str r0, [r5, r1]
_020776F8:
	mov r2, #0x49
	lsl r2, r2, #0x4
	add r1, r2, #0x0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #0x2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #0x1
	str r1, [r0, r3]
	add r0, r5, #0x0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl FUN_0207916C
	ldr r0, _020777C4 ; =0x0000069E
	bl FUN_020054C8
_0207771E:
	mov r2, #0x49
	lsl r2, r2, #0x4
	add r1, r2, #0x0
	sub r1, #0x30
	ldr r1, [r5, r1]
	add r0, r5, r2
	lsl r3, r1, #0x2
	ldr r1, [r0, r3]
	sub r2, #0x30
	add r1, r1, #0x1
	str r1, [r0, r3]
	add r0, r5, #0x0
	ldr r1, [r5, r2]
	add r0, #0x3a
	bl FUN_0207916C
	ldr r0, _020777C4 ; =0x0000069E
	bl FUN_020054C8
	b _020777B8
_02077746:
	mov r2, #0x1
	add r1, r0, #0x0
	tst r1, r2
	beq _0207776C
	ldr r3, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r3
	add r3, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0x0
	lsl r1, r1, #0x1
	add r1, r3, r1
	ldrh r1, [r1, #0x3a]
	bl FUN_020791C0
	add r4, r0, #0x0
	mov r0, #0x1
	str r0, [r5, #0x30]
	b _020777B8
_0207776C:
	ldr r1, _020777C8 ; =0x000005C8
	ldr r1, [r5, r1]
	cmp r1, #0x1
	bne _02077794
	ldr r2, [r5, #0x20]
	mov r1, #0x1a
	mul r1, r2
	add r2, r5, r1
	ldr r1, [r5, #0x1c]
	add r0, r5, #0x0
	lsl r1, r1, #0x1
	add r1, r2, r1
	ldrh r1, [r1, #0x3a]
	mov r2, #0x0
	bl FUN_020791C0
	add r4, r0, #0x0
	mov r0, #0x0
	str r0, [r5, #0x30]
	b _020777B8
_02077794:
	mov r1, #0x2
	add r3, r0, #0x0
	tst r3, r1
	beq _020777A8
	ldr r1, _020777CC ; =0x0000E007
	add r0, r5, #0x0
	bl FUN_020791C0
	add r4, r0, #0x0
	b _020777B8
_020777A8:
	add r1, #0xfe
	tst r0, r1
	beq _020777B8
	ldr r1, _020777D0 ; =0x0000E006
	add r0, r5, #0x0
	bl FUN_020791C0
	add r4, r0, #0x0
_020777B8:
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4
_020777BC: .word gUnknown21C48B8
_020777C0: .word 0x0000045C
_020777C4: .word 0x0000069E
_020777C8: .word 0x000005C8
_020777CC: .word 0x0000E007
_020777D0: .word 0x0000E006

	thumb_func_start FUN_020777D4
FUN_020777D4: ; 0x020777D4
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	cmp r0, #0x0
	bne _02077836
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _020777FE
	bl rand_LC
	mov r1, #0x12
	bl _s32_div_f
	mov r0, #0x17
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	bl FUN_0200A914
	add r6, r0, #0x0
	b _0207781A
_020777FE:
	cmp r0, #0x1
	bne _0207781A
	bl rand_LC
	mov r1, #0x12
	bl _s32_div_f
	mov r0, #0x17
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	add r1, #0x12
	bl FUN_0200A914
	add r6, r0, #0x0
_0207781A:
	ldr r0, [r4, #0x18]
	add r1, r6, #0x0
	bl FUN_02021A74
	add r0, r6, #0x0
	bl FUN_02021A20
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0x0
	mov r2, #0xa
	bl FUN_02021EF0
	pop {r4-r6, pc}
_02077836:
	cmp r0, #0x3
	bne _02077864
	mov r0, #0x17
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x58
	bl FUN_0200A914
	add r5, r0, #0x0
	ldr r0, [r4, #0x18]
	add r1, r5, #0x0
	bl FUN_02021A74
	add r0, r5, #0x0
	bl FUN_02021A20
	ldr r0, [r4, #0x18]
	add r4, #0x1c
	add r1, r4, #0x0
	mov r2, #0xa
	bl FUN_02021EF0
	pop {r4-r6, pc}
_02077864:
	mov r0, #0x1
	str r0, [r4, #0x14]
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0207786C
FUN_0207786C: ; 0x0207786C
	push {r4-r5}
	ldr r1, _0207788C ; =0x000001DE
	ldr r2, _02077890 ; =0x0000FFFF
	mov r5, #0x1
	mov r3, #0x0
_02077876:
	ldrh r4, [r0, #0x0]
	cmp r4, r2
	beq _02077886
	cmp r4, r1
	beq _02077882
	add r5, r3, #0x0
_02077882:
	add r0, r0, #0x2
	b _02077876
_02077886:
	add r0, r5, #0x0
	pop {r4-r5}
	bx lr
	.balign 4
_0207788C: .word 0x000001DE
_02077890: .word 0x0000FFFF

	thumb_func_start FUN_02077894
FUN_02077894: ; 0x02077894
	push {r4-r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	bl FUN_02006278
	add r4, r0, #0x0
	ldr r0, [sp, #0x10]
	bl FUN_0200628C
	add r5, r0, #0x0
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r0, [r4, r0]
	ldr r1, _02077A6C ; =0x0000FFFF
	lsl r0, r0, #0x1
	add r0, r4, r0
	add r0, #0xd8
	strh r1, [r0, #0x0]
	ldr r0, [r4, #0x0]
	cmp r0, #0x1
	bne _020778DE
	mov r0, #0x12
	bl FUN_020669C0
	mov r3, #0xa
	str r3, [sp, #0x0]
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x4]
	add r6, r0, #0x0
	mov r2, #0x5
	bl FUN_02066ACC
	add r0, r6, #0x0
	bl FUN_02016A18
_020778DE:
	mov r1, #0x56
	lsl r1, r1, #0x2
	ldrh r0, [r4, r1]
	cmp r0, #0x0
	beq _02077904
	add r0, r4, #0x0
	sub r1, #0x40
	add r0, #0xd8
	add r1, r4, r1
	bl StringNotEqual
	cmp r0, #0x0
	beq _02077904
	add r0, r4, #0x0
	add r0, #0xd8
	bl FUN_0207786C
	cmp r0, #0x0
	beq _0207790E
_02077904:
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_020777D4
	b _02077932
_0207790E:
	mov r0, #0x46
	lsl r0, r0, #0x2
	add r1, r4, #0x0
	add r0, r4, r0
	add r1, #0xd8
	bl StringCopy
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r0, #0x1c
	add r1, #0xd8
	bl StringCopy
	add r1, r4, #0x0
	ldr r0, [r5, #0x18]
	add r1, #0xd8
	bl FUN_02021E28
_02077932:
	mov r0, #0x61
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02021A20
	mov r7, #0xe7
	mov r6, #0x0
	add r5, r4, #0x0
	lsl r7, r7, #0x2
_02077944:
	ldr r0, [r5, r7]
	bl FUN_0200621C
	add r6, r6, #0x1
	add r5, r5, #0x4
	cmp r6, #0x7
	blt _02077944
	mov r0, #0xb1
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02009C0C
	mov r0, #0xb5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02009C0C
	mov r0, #0xb2
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02009E04
	mov r0, #0xb6
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02009E04
	mov r7, #0xad
	mov r6, #0x0
	add r5, r4, #0x0
	lsl r7, r7, #0x2
_02077982:
	ldr r0, [r5, r7]
	bl FUN_02008E2C
	add r6, r6, #0x1
	add r5, r5, #0x4
	cmp r6, #0x4
	blt _02077982
	mov r0, #0x62
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0201FD58
	bl FUN_02009FA0
	ldr r1, _02077A70 ; =0x000004AC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl FUN_02016A8C
	ldr r0, [r4, #0x0]
	cmp r0, #0x1
	bne _020779C2
	ldr r1, _02077A74 ; =0x000004B4
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl FUN_02016A8C
	ldr r1, _02077A78 ; =0x000004BC
	mov r0, #0x12
	ldr r1, [r4, r1]
	bl FUN_02016A8C
_020779C2:
	mov r0, #0x16
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	mov r1, #0x7
	bl FUN_020178A0
	bl FUN_0201D12C
	bl FUN_0201E08C
	mov r0, #0x16
	lsl r0, r0, #0x4
	mov r1, #0xee
	lsl r1, r1, #0x2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl FUN_02077FA8
	mov r0, #0x0
	bl FUN_02002CC0
	mov r2, #0x1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0x0]
	ldr r0, _02077A7C ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0x0]
	mov r0, #0x2
	bl FUN_02002CF8
	mov r0, #0x6
	lsl r0, r0, #0x6
	ldr r0, [r4, r0]
	cmp r0, #0x0
	beq _02077A0C
	bl FUN_02021A20
_02077A0C:
	mov r0, #0x5e
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02021A20
	mov r0, #0x5f
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02021A20
	mov r0, #0x5d
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0200A8B8
	mov r0, #0x17
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_0200A8B8
	mov r0, #0x5b
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0200A8B8
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0200AB18
	ldr r0, [sp, #0x10]
	bl FUN_0200627C
	mov r0, #0x0
	add r1, r0, #0x0
	bl FUN_02015F10
	mov r0, #0x12
	bl FUN_020168D0
	ldr r0, _02077A80 ; =gUnk021C4918
	mov r1, #0x0
	strb r1, [r0, #0x5]
	bl FUN_0201E7A0
	mov r0, #0x1
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02077A6C: .word 0x0000FFFF
_02077A70: .word 0x000004AC
_02077A74: .word 0x000004B4
_02077A78: .word 0x000004BC
_02077A7C: .word 0xFFFF1FFF
_02077A80: .word gUnk021C4918

	thumb_func_start FUN_02077A84
FUN_02077A84: ; 0x02077A84
	push {r3-r7, lr}
	add r6, r1, #0x0
	mov r1, #0x50
	str r0, [sp, #0x0]
	add r7, r2, #0x0
	add r5, r3, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	str r6, [r4, #0x0]
	str r7, [r4, #0x4]
	str r5, [r4, #0xc]
	mov r0, #0x0
	str r0, [r4, #0x14]
	ldr r0, _02077AC0 ; =0x0000FFFF
	ldr r1, [sp, #0x0]
	strh r0, [r4, #0x1c]
	add r0, r5, #0x1
	bl FUN_020219F4
	str r0, [r4, #0x18]
	mov r1, #0x0
	str r1, [r4, #0x44]
	str r1, [r4, #0x48]
	ldr r0, [sp, #0x18]
	str r1, [r4, #0x10]
	str r0, [r4, #0x4c]
	str r1, [r4, #0x8]
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4
_02077AC0: .word 0x0000FFFF

	thumb_func_start FUN_02077AC4
FUN_02077AC4: ; 0x02077AC4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x18]
	cmp r0, #0x0
	bne _02077AD2
	bl ErrorHandling
_02077AD2:
	cmp r4, #0x0
	bne _02077ADA
	bl ErrorHandling
_02077ADA:
	ldr r0, [r4, #0x18]
	bl FUN_02021A20
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_02077AE8
FUN_02077AE8: ; 0x02077AE8
	push {r3, lr}
	bl FUN_0201C30C
	bl FUN_02009F80
	ldr r3, _02077B00 ; =0x027E0000
	ldr r1, _02077B04 ; =0x00003FF8
	mov r0, #0x1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.balign 4
_02077B00: .word 0x027E0000
_02077B04: .word 0x00003FF8

	thumb_func_start FUN_02077B08
FUN_02077B08: ; 0x02077B08
	ldr r2, [r1, #0x0]
	str r2, [r0, #0x0]
	ldr r2, [r1, #0x4]
	str r2, [r0, #0x4]
	ldr r2, [r1, #0x8]
	str r2, [r0, #0x8]
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0x4c]
	str r1, [r0, #0x18]
	bx lr
	.balign 4

	thumb_func_start FUN_02077B24
FUN_02077B24: ; 0x02077B24
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02077B40 ; =UNK_020FA12C
	add r3, sp, #0x0
	mov r2, #0x5
_02077B2E:
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _02077B2E
	add r0, sp, #0x0
	bl FUN_0201E66C
	add sp, #0x28
	pop {r4, pc}
	.balign 4
_02077B40: .word UNK_020FA12C

	thumb_func_start FUN_02077B44
FUN_02077B44: ; 0x02077B44
	push {r3-r5, lr}
	sub sp, #0x80
	ldr r5, _02077C68 ; =UNK_020F9D4C
	add r3, sp, #0x70
	add r4, r0, #0x0
	add r2, r3, #0x0
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r2, #0x0
	bl FUN_02016BBC
	ldr r5, _02077C6C ; =UNK_020F9EC0
	add r3, sp, #0x54
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	mov r1, #0x0
	str r0, [r3, #0x0]
	add r0, r4, #0x0
	add r3, r1, #0x0
	bl FUN_02016C18
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_02018744
	ldr r5, _02077C70 ; =UNK_020F9FA0
	add r3, sp, #0x38
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	mov r1, #0x1
	str r0, [r3, #0x0]
	add r0, r4, #0x0
	mov r3, #0x0
	bl FUN_02016C18
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_02018744
	ldr r5, _02077C74 ; =UNK_020FA064
	add r3, sp, #0x1c
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	mov r1, #0x2
	str r0, [r3, #0x0]
	add r0, r4, #0x0
	mov r3, #0x0
	bl FUN_02016C18
	add r0, r4, #0x0
	mov r1, #0x2
	bl FUN_02018744
	ldr r5, _02077C78 ; =UNK_020F9DFC
	add r3, sp, #0x0
	ldmia r5!, {r0-r1}
	add r2, r3, #0x0
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r5, #0x0]
	mov r1, #0x4
	str r0, [r3, #0x0]
	add r0, r4, #0x0
	mov r3, #0x0
	bl FUN_02016C18
	add r0, r4, #0x0
	mov r1, #0x4
	bl FUN_02018744
	mov r0, #0x0
	bl FUN_02077C84
	mov r0, #0x0
	mov r1, #0x20
	add r2, r0, #0x0
	mov r3, #0x12
	bl FUN_02017F18
	mov r0, #0x4
	mov r1, #0x20
	mov r2, #0x0
	mov r3, #0x12
	bl FUN_02017F18
	mov r0, #0x1
	lsl r0, r0, #0x1a
	add r4, r0, #0x0
	ldr r2, [r0, #0x0]
	ldr r1, _02077C7C ; =0xFFFF1FFF
	add r4, #0x48
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0x0]
	ldrh r3, [r4, #0x0]
	mov r2, #0x3f
	mov r1, #0x14
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r4, #0x0]
	add r4, r0, #0x0
	add r4, #0x4a
	ldrh r5, [r4, #0x0]
	mov r1, #0x1f
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r4, #0x0]
	add r1, r0, #0x0
	mov r2, #0xff
	add r1, #0x40
	strh r2, [r1, #0x0]
	mov r1, #0x40
	add r0, #0x44
	strh r1, [r0, #0x0]
	ldr r0, _02077C80 ; =0x04001050
	mov r1, #0x0
	strh r1, [r0, #0x0]
	add sp, #0x80
	pop {r3-r5, pc}
	.balign 4
_02077C68: .word UNK_020F9D4C
_02077C6C: .word UNK_020F9EC0
_02077C70: .word UNK_020F9FA0
_02077C74: .word UNK_020FA064
_02077C78: .word UNK_020F9DFC
_02077C7C: .word 0xFFFF1FFF
_02077C80: .word 0x04001050

	thumb_func_start FUN_02077C84
FUN_02077C84: ; 0x02077C84
	push {r4, lr}
	add r4, r0, #0x0
	lsl r1, r4, #0x18
	mov r0, #0x1
	lsr r1, r1, #0x18
	bl FUN_0201E6E4
	lsl r1, r4, #0x18
	mov r0, #0x2
	lsr r1, r1, #0x18
	bl FUN_0201E6E4
	lsl r1, r4, #0x18
	mov r0, #0x4
	lsr r1, r1, #0x18
	bl FUN_0201E6E4
	mov r0, #0x8
	mov r1, #0x0
	bl FUN_0201E6E4
	lsl r1, r4, #0x18
	mov r0, #0x10
	lsr r1, r1, #0x18
	bl FUN_0201E6E4
	lsl r1, r4, #0x18
	mov r0, #0x1
	lsr r1, r1, #0x18
	bl FUN_0201E74C
	mov r0, #0x2
	mov r1, #0x0
	bl FUN_0201E74C
	mov r0, #0x10
	mov r1, #0x0
	bl FUN_0201E74C
	pop {r4, pc}

	thumb_func_start FUN_02077CD4
FUN_02077CD4: ; 0x02077CD4
	push {r3-r7, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	add r0, r1, #0x0
	bl FUN_0200628C
	add r7, r0, #0x0
	ldr r0, _02077E7C ; =0x0000045C
	mov r1, #0x4
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0x0
	bl FUN_02078BA8
	ldr r6, _02077E80 ; =0x00000464
	mov r0, #0x16
	ldr r3, [r4, r6]
	mov r5, #0xc
	lsl r0, r0, #0x4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #0x4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0x0
	bl FUN_020179E0
	ldr r3, [r4, r6]
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #0x4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #0x8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #0x3
	bl FUN_020179E0
	ldr r6, _02077E80 ; =0x00000464
	mov r0, #0x1
	ldr r1, [r4, r6]
	mov r5, #0xc
	add r3, r1, #0x0
	eor r3, r0
	mov r0, #0x16
	lsl r0, r0, #0x4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r5, r6, #0x4
	ldr r0, [r4, r0]
	ldr r3, [r3, r5]
	lsr r1, r1, #0x18
	mov r2, #0x0
	bl FUN_020179E0
	ldr r1, [r4, r6]
	mov r0, #0x1
	add r3, r1, #0x0
	eor r3, r0
	mov r5, #0xc
	mov r0, #0x16
	lsl r0, r0, #0x4
	lsl r1, r3, #0x18
	mul r5, r3
	add r3, r4, r5
	add r6, #0x8
	ldr r0, [r4, r0]
	ldr r3, [r3, r6]
	lsr r1, r1, #0x18
	mov r2, #0x3
	bl FUN_020179E0
	mov r1, #0x46
	ldr r0, _02077E84 ; =0x0000FFFF
	lsl r1, r1, #0x2
	strh r0, [r4, r1]
	ldr r0, [r7, #0x18]
	cmp r0, #0x0
	beq _02077D88
	add r1, r4, r1
	mov r2, #0x20
	bl FUN_02021EF0
_02077D88:
	add r1, r4, #0x0
	mov r0, #0x1
	add r1, #0xd8
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, [r4, #0x0]
	cmp r0, #0x1
	bne _02077DCE
	mov r0, #0x12
	bl FUN_020669C0
	mov r3, #0xa
	str r3, [sp, #0x0]
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x4]
	add r5, r0, #0x0
	mov r2, #0x5
	bl FUN_02066ACC
	add r0, r5, #0x0
	bl FUN_020690E4
	add r2, r0, #0x0
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x0
	bl FUN_0200AC60
	add r0, r5, #0x0
	bl FUN_02016A18
_02077DCE:
	ldr r0, [r7, #0x44]
	cmp r0, #0x0
	beq _02077DD8
	mov r0, #0x1
	str r0, [r4, #0x14]
_02077DD8:
	ldr r2, [r4, #0x0]
	mov r1, #0x5a
	lsl r1, r1, #0x2
	lsl r3, r2, #0x2
	ldr r2, _02077E88 ; =UNK_020FA0A0
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldr r2, [r2, r3]
	ldr r1, [r4, r1]
	mov r3, #0x12
	bl FUN_0200A9C4
	mov r1, #0x5e
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r1, #0x0
	sub r0, #0x10
	sub r1, #0xc
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x8
	mov r3, #0x12
	bl FUN_0200A9C4
	mov r1, #0x5f
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	sub r1, #0x10
	ldr r0, [r4, r1]
	mov r1, #0x7
	bl FUN_0200A914
	mov r1, #0x61
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	sub r1, #0x6c
	add r0, r4, r1
	bl StringLength
	mov r1, #0x56
	lsl r1, r1, #0x2
	strh r0, [r4, r1]
	mov r0, #0x0
	str r0, [r4, #0x1c]
	mov r1, #0x1
	str r1, [r4, #0x20]
	sub r1, r1, #0x2
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	str r0, [r4, #0x30]
	ldr r2, _02077E8C ; =0x00000484
	str r0, [r4, #0x34]
	str r1, [r4, r2]
	add r1, r2, #0x4
	str r0, [r4, r1]
	add r2, #0x8
	str r0, [r4, r2]
	ldr r1, [r4, #0xc]
	ldr r2, _02077E84 ; =0x0000FFFF
	lsl r1, r1, #0x1
	add r1, r4, r1
	add r1, #0xd8
	strh r2, [r1, #0x0]
	mov r1, #0x49
	add r3, r4, #0x0
	add r2, r0, #0x0
	lsl r1, r1, #0x4
_02077E5E:
	add r0, r0, #0x1
	str r2, [r3, r1]
	add r3, r3, #0x4
	cmp r0, #0x7
	blt _02077E5E
	ldr r0, [r4, #0x0]
	cmp r0, #0x4
	beq _02077E76
	mov r0, #0x49
	mov r1, #0x1
	lsl r0, r0, #0x4
	str r1, [r4, r0]
_02077E76:
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_02077E7C: .word 0x0000045C
_02077E80: .word 0x00000464
_02077E84: .word 0x0000FFFF
_02077E88: .word UNK_020FA0A0
_02077E8C: .word 0x00000484

	thumb_func_start FUN_02077E90
FUN_02077E90: ; 0x02077E90
	push {r4-r7, lr}
	sub sp, #0x14
	add r5, r0, #0x0
	add r0, r1, #0x0
	bl FUN_0200628C
	add r4, r0, #0x0
	ldr r0, [r4, #0x44]
	cmp r0, #0x0
	beq _02077FA0
	mov r0, #0xc8
	mov r1, #0x12
	bl FUN_020219F4
	add r7, r0, #0x0
	mov r0, #0x6
	mov r1, #0x0
	lsl r0, r0, #0x6
	str r1, [r5, r0]
	ldr r0, [r4, #0x48]
	bl FUN_0206B330
	add r6, r0, #0x0
	ldr r0, [r4, #0x48]
	bl FUN_0206B334
	str r0, [sp, #0x10]
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #0x1
	add r3, r6, #0x0
	bl FUN_0200B410
	ldr r0, [sp, #0x10]
	cmp r6, r0
	beq _02077EF4
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	ldr r3, [sp, #0x10]
	mov r1, #0x2
	bl FUN_0200B410
	ldr r0, [r4, #0x44]
	add r0, r0, #0x2
	str r0, [r4, #0x44]
	b _02077F04
_02077EF4:
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x48]
	mov r1, #0x2
	add r3, r6, #0x0
	bl FUN_0200B410
_02077F04:
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r0, [r5, r0]
	cmp r0, #0x0
	beq _02077F1A
	add r0, r5, #0x0
	add r0, #0xd8
	bl FUN_0207786C
	cmp r0, #0x0
	beq _02077F50
_02077F1A:
	mov r0, #0x12
	bl FUN_020669C0
	mov r3, #0x0
	str r3, [sp, #0x0]
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str r3, [sp, #0xc]
	ldr r1, [r5, #0x4]
	add r6, r0, #0x0
	mov r2, #0x1
	bl FUN_02066ACC
	add r0, r6, #0x0
	bl FUN_020690E4
	add r2, r0, #0x0
	mov r0, #0x5a
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_0200AC60
	add r0, r6, #0x0
	bl FUN_02016A18
	b _02077F7E
_02077F50:
	mov r1, #0x56
	lsl r1, r1, #0x2
	ldrh r1, [r5, r1]
	ldr r0, _02077FA4 ; =0x0000FFFF
	lsl r1, r1, #0x1
	add r1, r5, r1
	add r1, #0xd8
	strh r0, [r1, #0x0]
	add r1, r5, #0x0
	add r0, r7, #0x0
	add r1, #0xd8
	bl FUN_02021E28
	mov r1, #0x0
	str r1, [sp, #0x0]
	mov r0, #0x5a
	str r1, [sp, #0x4]
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	add r2, r7, #0x0
	add r3, r1, #0x0
	bl FUN_0200ABB4
_02077F7E:
	mov r1, #0x5a
	lsl r1, r1, #0x2
	ldr r0, [r5, r1]
	add r1, #0xc
	ldr r1, [r5, r1]
	ldr r2, [r4, #0x44]
	mov r3, #0x12
	bl FUN_0200A9C4
	mov r1, #0x6
	lsl r1, r1, #0x6
	str r0, [r5, r1]
	mov r0, #0x1
	str r0, [r5, #0x14]
	add r0, r7, #0x0
	bl FUN_02021A20
_02077FA0:
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02077FA4: .word 0x0000FFFF

	thumb_func_start FUN_02077FA8
FUN_02077FA8: ; 0x02077FA8
	push {r4-r6, lr}
	add r6, r0, #0x0
	add r5, r1, #0x0
	mov r4, #0x0
_02077FB0:
	add r0, r5, #0x0
	bl FUN_02019178
	add r4, r4, #0x1
	add r5, #0x10
	cmp r4, #0xa
	blt _02077FB0
	add r0, r6, #0x0
	mov r1, #0x4
	bl FUN_020178A0
	add r0, r6, #0x0
	mov r1, #0x2
	bl FUN_020178A0
	add r0, r6, #0x0
	mov r1, #0x1
	bl FUN_020178A0
	add r0, r6, #0x0
	mov r1, #0x0
	bl FUN_020178A0
	mov r0, #0x12
	add r1, r6, #0x0
	bl FUN_02016A8C
	pop {r4-r6, pc}

	thumb_func_start FUN_02077FE8
FUN_02077FE8: ; 0x02077FE8
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	mov r0, #0x16
	lsl r0, r0, #0x4
	ldr r4, [r5, r0]
	mov r1, #0x0
	mov r0, #0x60
	str r0, [sp, #0x0]
	mov r0, #0x12
	str r0, [sp, #0x4]
	mov r0, #0x1f
	add r2, r1, #0x0
	add r3, r1, #0x0
	bl FUN_02006930
	mov r0, #0x20
	str r0, [sp, #0x0]
	mov r0, #0x12
	str r0, [sp, #0x4]
	mov r0, #0xc
	add r1, r0, #0x0
	mov r2, #0x4
	mov r3, #0x0
	bl FUN_02006930
	mov r0, #0x4
	mov r1, #0x0
	bl FUN_02017FE4
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x2
	lsl r0, r0, #0xc
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	mov r0, #0x12
	mov r1, #0x2
	str r0, [sp, #0xc]
	mov r0, #0x1f
	add r2, r4, #0x0
	add r3, r1, #0x0
	bl FUN_0200687C
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x6
	lsl r0, r0, #0x8
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x1f
	mov r1, #0x4
	add r2, r4, #0x0
	mov r3, #0x2
	bl FUN_020068C8
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x2
	lsl r0, r0, #0xc
	str r0, [sp, #0x4]
	mov r3, #0x1
	str r3, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x1f
	mov r1, #0x2
	add r2, r4, #0x0
	bl FUN_0200687C
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0xe
	lsl r0, r0, #0x6
	str r0, [sp, #0x4]
	mov r3, #0x1
	str r3, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x1f
	mov r1, #0x6
	add r2, r4, #0x0
	bl FUN_020068C8
	mov r3, #0x0
	mov r0, #0xe
	str r3, [sp, #0x0]
	lsl r0, r0, #0x6
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	mov r0, #0x1f
	mov r1, #0x7
	add r2, r4, #0x0
	bl FUN_020068C8
	mov r1, #0x6
	mov r0, #0x0
	lsl r1, r1, #0x6
	mov r2, #0x12
	bl FUN_02002EEC
	ldr r0, [r5, #0x18]
	bl FUN_02025084
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x12
	str r0, [sp, #0x4]
	mov r0, #0x16
	lsl r0, r0, #0x4
	mov r1, #0x4
	add r2, r1, #0x0
	ldr r0, [r5, r0]
	add r2, #0xfc
	mov r3, #0xa
	bl FUN_0200CD68
	mov r1, #0x6
	mov r0, #0x4
	lsl r1, r1, #0x6
	mov r2, #0x12
	bl FUN_02002EEC
	mov r3, #0x4b
	mov r0, #0x12
	lsl r3, r3, #0x4
	str r0, [sp, #0x0]
	mov r0, #0x1f
	mov r1, #0x10
	mov r2, #0x1
	add r3, r5, r3
	bl FUN_02006BB0
	ldr r1, _0207810C ; =0x000004AC
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3-r5, pc}
	nop
_0207810C: .word 0x000004AC

	thumb_func_start FUN_02078110
FUN_02078110: ; 0x02078110
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0207813C ; =UNK_020F9D5C
	add r3, sp, #0x0
	add r2, r3, #0x0
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r2, #0x0
	bl FUN_0201D040
	mov r0, #0x14
	mov r1, #0x12
	bl FUN_0201E00C
	bl FUN_0201D168
	bl FUN_0201E0BC
	add sp, #0x10
	pop {r4, pc}
	.balign 4
_0207813C: .word UNK_020F9D5C

	thumb_func_start FUN_02078140
FUN_02078140: ; 0x02078140
	push {r4-r7, lr}
	sub sp, #0x14
	add r5, r0, #0x0
	bl FUN_020B0FC0
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r1, #0x80
	str r1, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x12
	str r2, [sp, #0x10]
	add r2, r0, #0x0
	bl FUN_02009EAC
	mov r1, #0x63
	lsl r1, r1, #0x2
	mov r0, #0x2c
	add r1, r5, r1
	mov r2, #0x12
	bl FUN_02008C9C
	mov r1, #0x62
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	add r0, r1, #0x4
	mov r2, #0x1
	add r0, r5, r0
	mov r1, #0x0
	lsl r2, r2, #0x14
	bl FUN_02008D24
	mov r7, #0xad
	mov r6, #0x0
	add r4, r5, #0x0
	lsl r7, r7, #0x2
_0207818C:
	mov r0, #0x2
	add r1, r6, #0x0
	mov r2, #0x12
	bl FUN_02008DEC
	str r0, [r4, r7]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, #0x4
	blt _0207818C
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r3, #0x1
	str r3, [sp, #0x4]
	mov r0, #0x12
	str r0, [sp, #0x8]
	mov r0, #0xad
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	mov r2, #0xa
	bl FUN_02008F34
	mov r1, #0xb1
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r3, #0x0
	str r3, [sp, #0x0]
	mov r2, #0x1
	str r2, [sp, #0x4]
	mov r0, #0x9
	str r0, [sp, #0x8]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	bl FUN_02008FEC
	mov r1, #0xb2
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #0x8]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	mov r2, #0xc
	mov r3, #0x1
	bl FUN_020090AC
	mov r1, #0xb3
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x3
	str r0, [sp, #0x4]
	mov r0, #0x12
	sub r1, #0xc
	str r0, [sp, #0x8]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	mov r2, #0xe
	mov r3, #0x1
	bl FUN_020090AC
	mov r1, #0x2d
	lsl r1, r1, #0x4
	str r0, [r5, r1]
	ldr r0, [r5, #0x0]
	cmp r0, #0x1
	bne _02078272
	ldr r0, [r5, #0x4]
	ldr r2, [r5, #0x8]
	mov r1, #0x0
	bl FUN_0206B6D4
	ldr r3, _0207831C ; =0x000004B8
	add r1, r0, #0x0
	mov r0, #0x12
	str r0, [sp, #0x0]
	mov r0, #0x13
	mov r2, #0x0
	add r3, r5, r3
	bl FUN_02006BB0
	ldr r1, _02078320 ; =0x000004B4
	str r0, [r5, r1]
	add r0, r1, #0x4
	mov r1, #0x2
	ldr r0, [r5, r0]
	lsl r1, r1, #0x8
	bl DC_FlushRange
	bl FUN_0206B888
	add r1, r0, #0x0
	mov r0, #0x13
	lsl r2, r0, #0x6
	add r2, r5, r2
	mov r3, #0x12
	bl FUN_02006C08
	ldr r1, _02078324 ; =0x000004BC
	str r0, [r5, r1]
	add r0, r1, #0x4
	ldr r0, [r5, r0]
	mov r1, #0x80
	bl DC_FlushRange
_02078272:
	mov r3, #0x1
	str r3, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	mov r0, #0x12
	str r0, [sp, #0x8]
	mov r0, #0xad
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1f
	mov r2, #0xb
	bl FUN_02008F34
	mov r1, #0xb5
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r2, #0x1
	str r2, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	mov r0, #0x3
	str r0, [sp, #0x8]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	mov r3, #0x0
	bl FUN_02008FEC
	mov r1, #0xb6
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r3, #0x1
	str r3, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #0x8]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	mov r2, #0xd
	bl FUN_020090AC
	mov r1, #0xb7
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	mov r3, #0x1
	str r3, [sp, #0x0]
	mov r0, #0x3
	str r0, [sp, #0x4]
	mov r0, #0x12
	sub r1, #0x1c
	str r0, [sp, #0x8]
	ldr r0, [r5, r1]
	mov r1, #0x1f
	mov r2, #0xf
	bl FUN_020090AC
	mov r1, #0x2e
	lsl r1, r1, #0x4
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	bl FUN_02009A50
	mov r0, #0xb5
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	bl FUN_02009A50
	mov r0, #0xb2
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	bl FUN_02009CF0
	mov r0, #0xb6
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	bl FUN_02009CF0
	add sp, #0x14
	pop {r4-r7, pc}
	nop
_0207831C: .word 0x000004B8
_02078320: .word 0x000004B4
_02078324: .word 0x000004BC

	thumb_func_start FUN_02078328
FUN_02078328: ; 0x02078328
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_0202011C
	ldr r1, [r0, #0x0]
	ldr r0, [r4, #0x8]
	add r0, r1, r0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0xc]
	lsl r1, r0, #0x4
	ldr r0, _02078358 ; =UNK_020FA1D8
	ldr r0, [r0, r1]
	add r1, sp, #0x0
	lsl r0, r0, #0xc
	str r0, [sp, #0x4]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x4]
	bl FUN_02020044
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4
_02078358: .word UNK_020FA1D8

	thumb_func_start FUN_0207835C
FUN_0207835C: ; 0x0207835C
	push {r4-r7, lr}
	sub sp, #0x5c
	mov r1, #0x0
	add r6, r0, #0x0
	str r1, [sp, #0x0]
	sub r0, r1, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r2, #0xad
	str r1, [sp, #0xc]
	mov r0, #0x1
	lsl r2, r2, #0x2
	str r0, [sp, #0x10]
	ldr r0, [r6, r2]
	add r3, r1, #0x0
	str r0, [sp, #0x14]
	add r0, r2, #0x4
	ldr r0, [r6, r0]
	str r0, [sp, #0x18]
	add r0, r2, #0x0
	add r0, #0x8
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	add r0, r2, #0x0
	add r0, #0xc
	ldr r0, [r6, r0]
	add r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r6, r2
	add r2, r1, #0x0
	str r1, [sp, #0x28]
	bl FUN_02008AA4
	mov r1, #0x1
	mov r3, #0xad
	str r1, [sp, #0x0]
	sub r0, r1, #0x2
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #0x2
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #0x4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0x0
	add r2, #0x8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0x0
	add r2, #0xc
	ldr r2, [r6, r2]
	add r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r2, r1, #0x0
	add r3, r1, #0x0
	bl FUN_02008AA4
	mov r0, #0x62
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	mov r1, #0x2
	str r0, [sp, #0x2c]
	mov r0, #0xb9
	lsl r0, r0, #0x2
	add r0, r6, r0
	str r0, [sp, #0x30]
	mov r0, #0x6
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	lsr r0, r1, #0x5
	mov r7, #0x0
	str r1, [sp, #0x34]
	str r7, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r7, [r0, #0x20]
	mov r0, #0x1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x12
	ldr r4, _02078528 ; =UNK_020FA1D4
	str r0, [sp, #0x58]
	add r5, r6, #0x0
_02078418:
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [r4, #0x4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_0201FE94
	mov r1, #0xcb
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	add r0, r1, #0x0
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200BC
	mov r0, #0xcb
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x8]
	bl FUN_02020130
	mov r0, #0xcb
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl FUN_02020310
	add r7, r7, #0x1
	add r4, #0x10
	add r5, r5, #0x4
	cmp r7, #0x9
	blt _02078418
	mov r0, #0xcf
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	mov r1, #0x0
	bl FUN_020200A0
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	mov r1, #0x0
	bl FUN_020200A0
	ldr r7, _02078528 ; =UNK_020FA1D4
	mov r5, #0x0
	add r4, r6, #0x0
_0207847A:
	ldr r0, _0207852C ; =FUN_02078328
	mov r1, #0x10
	mov r2, #0x5
	mov r3, #0x12
	bl FUN_020061E8
	mov r1, #0xe7
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r1, #0x0
	ldr r0, [r4, r0]
	bl FUN_0201B6C8
	mov r1, #0xd2
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	str r1, [r0, #0x0]
	mov r1, #0xcb
	lsl r1, r1, #0x2
	ldr r1, [r4, r1]
	add r4, r4, #0x4
	str r1, [r0, #0x4]
	ldr r1, [r7, #0x0]
	add r7, #0x10
	lsl r1, r1, #0xc
	str r1, [r0, #0x8]
	str r5, [r0, #0xc]
	add r5, r5, #0x1
	cmp r5, #0x7
	blt _0207847A
	ldr r2, [r6, #0xc]
	mov r7, #0x0
	cmp r2, #0x0
	ble _020784FA
	mov r5, #0x50
	add r4, r6, #0x0
_020784C2:
	lsl r0, r5, #0xc
	str r0, [sp, #0x34]
	mov r0, #0x27
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_0201FE94
	mov r1, #0xd9
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r1, #0x0
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_020200BC
	mov r0, #0xd9
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x2b
	bl FUN_02020130
	ldr r2, [r6, #0xc]
	add r7, r7, #0x1
	add r5, #0xc
	add r4, r4, #0x4
	cmp r7, r2
	blt _020784C2
_020784FA:
	mov r1, #0x56
	lsl r1, r1, #0x2
	mov r0, #0xd9
	lsl r0, r0, #0x2
	ldrh r1, [r6, r1]
	add r0, r6, r0
	bl FUN_02079710
	add r0, r6, #0x0
	add r1, sp, #0x2c
	bl FUN_02078530
	mov r0, #0x10
	mov r1, #0x1
	bl FUN_0201E6E4
	mov r0, #0x10
	mov r1, #0x1
	bl FUN_0201E74C
	add sp, #0x5c
	pop {r4-r7, pc}
	nop
_02078528: .word UNK_020FA1D4
_0207852C: .word FUN_02078328

	thumb_func_start FUN_02078530
FUN_02078530: ; 0x02078530
	push {r3-r5, lr}
	add r4, r0, #0x0
	mov r0, #0x6
	add r5, r1, #0x0
	lsl r0, r0, #0xe
	str r0, [r5, #0x8]
	mov r0, #0x2
	lsl r0, r0, #0xe
	str r0, [r5, #0xc]
	add r0, r5, #0x0
	bl FUN_0201FE94
	mov r1, #0xe5
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0x1
	bl FUN_020200BC
	ldr r0, [r4, #0x0]
	cmp r0, #0x7
	bhi _02078626
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02078568: ; jump table (using 16-bit offset)
	.short _02078578 - _02078568 - 2; case 0
	.short _020785E0 - _02078568 - 2; case 1
	.short _020785D2 - _02078568 - 2; case 2
	.short _0207859A - _02078568 - 2; case 3
	.short _020785C4 - _02078568 - 2; case 4
	.short _020785B6 - _02078568 - 2; case 5
	.short _020785A8 - _02078568 - 2; case 6
	.short _020785C4 - _02078568 - 2; case 7
_02078578:
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	bne _0207858C
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x30
	bl FUN_02020130
	pop {r3-r5, pc}
_0207858C:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x31
	bl FUN_02020130
	pop {r3-r5, pc}
_0207859A:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x33
	bl FUN_02020130
	pop {r3-r5, pc}
_020785A8:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x37
	bl FUN_02020130
	pop {r3-r5, pc}
_020785B6:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x36
	bl FUN_02020130
	pop {r3-r5, pc}
_020785C4:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x35
	bl FUN_02020130
	pop {r3-r5, pc}
_020785D2:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x2f
	bl FUN_02020130
	pop {r3-r5, pc}
_020785E0:
	mov r0, #0xe5
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x32
	bl FUN_02020130
	ldr r0, [r4, #0x10]
	cmp r0, #0x2
	beq _02078626
	ldr r1, [r4, #0xc]
	mov r0, #0xd
	mul r0, r1
	add r0, #0x50
	lsl r0, r0, #0xc
	str r0, [r5, #0x8]
	mov r0, #0x1b
	lsl r0, r0, #0xc
	str r0, [r5, #0xc]
	add r0, r5, #0x0
	bl FUN_0201FE94
	mov r1, #0xe6
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	cmp r0, #0x0
	ldr r0, [r4, r1]
	bne _02078620
	mov r1, #0x2d
	bl FUN_02020130
	pop {r3-r5, pc}
_02078620:
	mov r1, #0x2e
	bl FUN_02020130
_02078626:
	pop {r3-r5, pc}

	thumb_func_start FUN_02078628
FUN_02078628: ; 0x02078628
	push {r4-r5, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x4]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x4]
	cmp r0, #0x6
	bhi _020786A6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207864A: ; jump table (using 16-bit offset)
	.short _02078658 - _0207864A - 2; case 0
	.short _020786A6 - _0207864A - 2; case 1
	.short _0207866C - _0207864A - 2; case 2
	.short _020786A6 - _0207864A - 2; case 3
	.short _02078680 - _0207864A - 2; case 4
	.short _020786A6 - _0207864A - 2; case 5
	.short _02078694 - _0207864A - 2; case 6
_02078658:
	mov r0, #0x1
	ldr r1, [r4, #0x8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	add r1, sp, #0x0
	bl FUN_02020044
	b _020786A6
_0207866C:
	mov r0, #0x3
	ldr r1, [r4, #0x8]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	add r1, sp, #0x0
	bl FUN_02020044
	b _020786A6
_02078680:
	mov r0, #0x2
	ldr r1, [r4, #0x8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	add r1, sp, #0x0
	bl FUN_02020044
	b _020786A6
_02078694:
	ldr r0, [r4, #0x8]
	add r1, sp, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	bl FUN_02020044
	add r0, r5, #0x0
	bl FUN_0200621C
_020786A6:
	ldr r0, [r4, #0x4]
	add r0, r0, #0x1
	str r0, [r4, #0x4]
	add sp, #0xc
	pop {r4-r5, pc}

	thumb_func_start FUN_020786B0
FUN_020786B0: ; 0x020786B0
	push {r3-r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	add r5, r2, #0x0
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x48]
	mov r2, #0x1
	str r1, [sp, #0x48]
	ldr r1, [sp, #0x40]
	str r0, [sp, #0x10]
	ldr r6, [r1, #0x0]
	add r7, r3, #0x0
	add r1, r6, #0x0
	eor r1, r2
	str r1, [sp, #0x18]
	ldr r1, [r5, #0x0]
	ldr r4, [sp, #0x44]
	cmp r1, #0x4
	bls _020786DA
	b _0207887E
_020786DA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020786E6: ; jump table (using 16-bit offset)
	.short _020786F0 - _020786E6 - 2; case 0
	.short _0207873C - _020786E6 - 2; case 1
	.short _02078762 - _020786E6 - 2; case 2
	.short _020787FC - _020786E6 - 2; case 3
	.short _0207887E - _020786E6 - 2; case 4
_020786F0:
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0xe
	lsl r0, r0, #0x6
	str r0, [sp, #0x4]
	str r2, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, #0x1f
	add r1, r7, #0x6
	add r3, r6, #0x0
	bl FUN_020068C8
	add r0, r4, #0x0
	add r1, r6, #0x0
	bl FUN_02078BA8
	ldr r0, _02078884 ; =UNK_020F9D2C
	lsl r2, r6, #0x4
	ldrb r1, [r0, r7]
	ldr r0, [sp, #0x4c]
	ldr r3, _02078888 ; =0x000E0F00
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x14]
	add r0, r0, r2
	lsl r2, r1, #0x4
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r7, #0x0
	bl FUN_0207974C
	ldr r0, [r5, #0x0]
	add sp, #0x28
	add r0, r0, #0x1
	str r0, [r5, #0x0]
	pop {r3-r7, pc}
_0207873C:
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	mov r2, #0x0
	mov r3, #0xee
	bl FUN_020179E0
	mov r2, #0x3
	lsl r1, r6, #0x18
	add r3, r2, #0x0
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	sub r3, #0x53
	bl FUN_020179E0
	ldr r0, [r5, #0x0]
	add sp, #0x28
	add r0, r0, #0x1
	str r0, [r5, #0x0]
	pop {r3-r7, pc}
_02078762:
	mov r1, #0xc
	add r0, r6, #0x0
	mul r0, r1
	ldr r2, [r4, r0]
	str r0, [sp, #0x1c]
	sub r2, #0x18
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	sub r1, #0xd
	cmp r0, r1
	bge _020787BA
	ldr r0, _0207888C ; =FUN_02078628
	mov r1, #0x10
	mov r2, #0x0
	mov r3, #0x12
	bl FUN_020061E8
	bl FUN_0201B6C8
	add r7, r0, #0x0
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	str r0, [r7, #0x0]
	mov r0, #0x0
	str r0, [r7, #0x4]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl FUN_0202011C
	ldr r0, [r0, #0x0]
	str r0, [r7, #0x8]
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x1c]
	bl FUN_0202011C
	ldr r0, [r0, #0x4]
	mov r1, #0xa
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c]
	mvn r1, r1
	str r1, [r4, r0]
	ldr r0, [r5, #0x0]
	add r0, r0, #0x1
	str r0, [r5, #0x0]
_020787BA:
	ldr r0, [sp, #0x18]
	mov r1, #0xc
	add r7, r0, #0x0
	add r5, r4, #0x4
	mul r7, r1
	ldr r0, [r5, r7]
	sub r0, #0xa
	str r0, [r5, r7]
	add r0, r1, #0x0
	ldr r2, [r5, r7]
	sub r0, #0xd0
	cmp r2, r0
	bge _020787D8
	sub r1, #0xd0
	str r1, [r5, r7]
_020787D8:
	ldr r3, [sp, #0x1c]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0x0
	bl FUN_020179E0
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0x18
	ldr r3, [r5, r7]
	lsr r1, r1, #0x18
	mov r2, #0x3
	bl FUN_020179E0
	add sp, #0x28
	pop {r3-r7, pc}
_020787FC:
	ldr r1, [sp, #0x18]
	mov r0, #0xc
	add r2, r1, #0x0
	mul r2, r0
	str r2, [sp, #0x20]
	add r7, r4, #0x4
	ldr r2, [r7, r2]
	ldr r1, [sp, #0x20]
	sub r2, #0xa
	str r2, [r7, r1]
	ldr r2, [r7, r1]
	add r1, r0, #0x0
	sub r1, #0xd0
	cmp r2, r1
	bge _02078820
	ldr r1, [sp, #0x20]
	sub r0, #0xd0
	str r0, [r7, r1]
_02078820:
	mov r0, #0xc
	mul r0, r6
	str r0, [sp, #0x24]
	ldr r3, [sp, #0x24]
	lsl r1, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r4, r3]
	lsr r1, r1, #0x18
	mov r2, #0x0
	bl FUN_020179E0
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x10]
	ldr r3, [r7, r3]
	lsr r1, r1, #0x18
	mov r2, #0x3
	bl FUN_020179E0
	ldr r0, [sp, #0x24]
	mov r1, #0xa
	ldr r0, [r4, r0]
	mvn r1, r1
	cmp r0, r1
	bne _0207887E
	ldr r0, [sp, #0x20]
	sub r1, #0xb9
	ldr r0, [r7, r0]
	cmp r0, r1
	bne _0207887E
	ldr r0, [r5, #0x0]
	add r2, r4, #0x0
	add r0, r0, #0x1
	str r0, [r5, #0x0]
	ldr r0, [sp, #0x40]
	ldr r1, [r0, #0x0]
	mov r0, #0x1
	eor r1, r0
	ldr r0, [sp, #0x40]
	str r1, [r0, #0x0]
	ldr r0, [sp, #0x10]
	bl FUN_02078B88
	ldr r0, _02078890 ; =0x0000069B
	bl FUN_020054C8
_0207887E:
	add sp, #0x28
	pop {r3-r7, pc}
	nop
_02078884: .word UNK_020F9D2C
_02078888: .word 0x000E0F00
_0207888C: .word FUN_02078628
_02078890: .word 0x0000069B

	thumb_func_start FUN_02078894
FUN_02078894: ; 0x02078894
	push {r4-r5, lr}
	sub sp, #0xc
	add r4, r2, #0x0
	mov r2, #0x1
	mov r1, #0x0
	lsl r2, r2, #0x8
	mov r3, #0xa
	add r5, r0, #0x0
	bl FUN_0200D0BC
	mov r3, #0x0
	str r3, [sp, #0x0]
	str r3, [sp, #0x4]
	add r0, r5, #0x0
	mov r1, #0x1
	add r2, r4, #0x0
	str r3, [sp, #0x8]
	bl FUN_0201BD84
	add r0, r5, #0x0
	bl FUN_020191D0
	add sp, #0xc
	pop {r4-r5, pc}

	thumb_func_start FUN_020788C4
FUN_020788C4: ; 0x020788C4
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r0, #0x0
	add r1, r6, #0x0
	add r2, r0, #0x0
	mov r4, #0x10
	bl FUN_02002E14
	cmp r0, #0x82
	ble _020788DE
	mov r4, #0x0
_020788DE:
	add r0, r5, #0x0
	mov r1, #0x1
	bl FUN_02019620
	mov r1, #0x0
	str r1, [sp, #0x0]
	ldr r0, _02078908 ; =0x000E0F01
	str r1, [sp, #0x4]
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	add r2, r6, #0x0
	add r3, r4, #0x0
	str r1, [sp, #0xc]
	bl FUN_0201BDE0
	add r0, r5, #0x0
	bl FUN_020191D0
	add sp, #0x10
	pop {r4-r6, pc}
	nop
_02078908: .word 0x000E0F01

	thumb_func_start FUN_0207890C
FUN_0207890C: ; 0x0207890C
	push {r4-r7, lr}
	sub sp, #0x14
	add r6, r1, #0x0
	mov r1, #0x1
	add r5, r0, #0x0
	str r1, [sp, #0x0]
	mov r0, #0x1a
	str r0, [sp, #0x4]
	mov r0, #0xc
	str r0, [sp, #0x8]
	str r1, [sp, #0xc]
	add r0, #0xf4
	str r0, [sp, #0x10]
	mov r0, #0x16
	lsl r0, r0, #0x4
	mov r1, #0xee
	lsl r1, r1, #0x2
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r2, #0x0
	mov r3, #0x2
	bl FUN_02019064
	mov r2, #0x1
	mov r1, #0xf2
	lsl r1, r1, #0x2
	str r2, [sp, #0x0]
	mov r0, #0x1a
	str r0, [sp, #0x4]
	mov r0, #0xc
	str r0, [sp, #0x8]
	mov r0, #0x8e
	str r2, [sp, #0xc]
	lsl r0, r0, #0x2
	str r0, [sp, #0x10]
	sub r0, #0xd8
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0x2
	bl FUN_02019064
	ldr r0, [r5, #0x0]
	cmp r0, #0x4
	bne _020789AE
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0xe
	lsl r0, r0, #0x6
	str r0, [sp, #0x4]
	mov r3, #0x1
	mov r2, #0x16
	str r3, [sp, #0x8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	lsl r2, r2, #0x4
	ldr r2, [r5, r2]
	mov r0, #0x1f
	mov r1, #0x9
	bl FUN_020068C8
	mov r0, #0x46
	mov r1, #0x4
	lsl r0, r0, #0x4
	str r1, [r5, r0]
	add r0, r5, #0x0
	add r0, #0x3a
	bl FUN_0207916C
	mov r0, #0x4b
	lsl r0, r0, #0x4
	ldr r1, [r5, r0]
	sub r0, #0xe8
	ldr r1, [r1, #0x14]
	ldr r3, _02078B6C ; =0x000E0F00
	str r1, [sp, #0x0]
	ldr r1, _02078B70 ; =0x00000A0A
	add r0, r5, r0
	mov r2, #0x4
	bl FUN_0207974C
	b _020789D8
_020789AE:
	mov r0, #0x46
	mov r1, #0x0
	lsl r0, r0, #0x4
	str r1, [r5, r0]
	add r0, r5, #0x0
	add r0, #0x3a
	bl FUN_0207916C
	mov r1, #0x4b
	lsl r1, r1, #0x4
	ldr r0, [r5, r1]
	ldr r3, _02078B6C ; =0x000E0F00
	ldr r0, [r0, #0x14]
	mov r2, #0x0
	str r0, [sp, #0x0]
	add r0, r1, #0x0
	sub r0, #0xe8
	add r0, r5, r0
	sub r1, #0xac
	bl FUN_0207974C
_020789D8:
	mov r2, #0x2
	str r2, [sp, #0x0]
	mov r3, #0x16
	str r3, [sp, #0x4]
	mov r1, #0x37
	str r2, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	lsl r1, r1, #0x4
	str r1, [sp, #0x10]
	lsl r0, r3, #0x4
	add r1, #0x68
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0x7
	bl FUN_02019064
	ldr r1, [r5, #0xc]
	mov r0, #0xc
	add r2, r1, #0x0
	mul r2, r0
	asr r0, r2, #0x2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #0x3
	add r4, r0, #0x1
	mov r0, #0x3
	str r0, [sp, #0x0]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4]
	mov r2, #0x2
	mov r1, #0xe7
	str r2, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	lsl r1, r1, #0x2
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #0x4
	add r1, #0x4c
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0xa
	bl FUN_02019064
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r5, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0x3
	str r0, [sp, #0x0]
	mov r0, #0x7
	str r0, [sp, #0x4]
	mov r2, #0x2
	mov r1, #0xf
	add r4, #0x9
	lsl r3, r4, #0x18
	str r2, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	lsl r1, r1, #0x6
	mov r0, #0x16
	str r1, [sp, #0x10]
	lsl r0, r0, #0x4
	add r1, #0x78
	ldr r0, [r5, r0]
	add r1, r5, r1
	lsr r3, r3, #0x18
	bl FUN_02019064
	ldr r0, _02078B74 ; =0x00000438
	mov r1, #0x1
	add r0, r5, r0
	bl FUN_02019620
	ldr r1, [r5, #0x0]
	cmp r1, #0x5
	bne _02078A90
	mov r2, #0x61
	ldr r0, _02078B74 ; =0x00000438
	lsl r2, r2, #0x2
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl FUN_020788C4
	ldr r0, _02078B74 ; =0x00000438
	add r0, r5, r0
	bl FUN_020191D0
_02078A90:
	mov r0, #0x13
	str r0, [sp, #0x0]
	mov r0, #0x1b
	str r0, [sp, #0x4]
	mov r2, #0x4
	ldr r1, _02078B78 ; =0x00000448
	str r2, [sp, #0x8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	mov r3, #0x2
	bl FUN_02019064
	ldr r0, _02078B78 ; =0x00000448
	mov r1, #0xf
	add r0, r5, r0
	bl FUN_02019620
	mov r2, #0x5e
	ldr r0, _02078B78 ; =0x00000448
	lsl r2, r2, #0x2
	ldr r1, [r5, #0x0]
	ldr r2, [r5, r2]
	add r0, r5, r0
	bl FUN_02078894
	add r0, r6, #0x0
	bl FUN_0200628C
	mov r1, #0x46
	lsl r1, r1, #0x2
	ldrh r2, [r5, r1]
	ldr r0, _02078B7C ; =0x0000FFFF
	cmp r2, r0
	beq _02078B06
	add r0, r5, #0x0
	add r0, #0xd8
	add r1, r5, r1
	bl StringCopy
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	add r1, r5, #0x0
	ldr r0, _02078B80 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r5, r0
	add r1, #0xd8
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
_02078B06:
	mov r0, #0xee
	lsl r0, r0, #0x2
	mov r4, #0x0
	add r7, r5, r0
_02078B0E:
	add r0, r4, #0x4
	lsl r6, r0, #0x4
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x78
	str r0, [sp, #0x10]
	add r0, #0xe8
	ldr r0, [r5, r0]
	add r1, r7, r6
	mov r2, #0x2
	mov r3, #0x0
	bl FUN_02019064
	add r0, r7, r6
	mov r1, #0x0
	bl FUN_02019620
	add r4, r4, #0x1
	cmp r4, #0x3
	blt _02078B0E
	mov r3, #0x0
	str r3, [sp, #0x0]
	mov r0, #0x10
	str r0, [sp, #0x4]
	mov r2, #0x2
	str r2, [sp, #0x8]
	ldr r1, _02078B84 ; =0x00000428
	str r3, [sp, #0xc]
	mov r0, #0x84
	str r0, [sp, #0x10]
	add r0, #0xdc
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl FUN_02019064
	ldr r0, _02078B84 ; =0x00000428
	mov r1, #0x0
	add r0, r5, r0
	bl FUN_02019620
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02078B6C: .word 0x000E0F00
_02078B70: .word 0x00000A0A
_02078B74: .word 0x00000438
_02078B78: .word 0x00000448
_02078B7C: .word 0x0000FFFF
_02078B80: .word 0x000E0F01
_02078B84: .word 0x00000428

	thumb_func_start FUN_02078B88
FUN_02078B88: ; 0x02078B88
	push {r4, lr}
	add r4, r1, #0x0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x1
	bl FUN_020178BC
	mov r0, #0x1
	eor r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x2
	bl FUN_020178BC
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02078BA8
FUN_02078BA8: ; 0x02078BA8
	push {r3-r4}
	mov r3, #0xc
	add r4, r1, #0x0
	mul r4, r3
	mov r2, #0xee
	str r2, [r0, r4]
	add r2, r3, #0x0
	sub r2, #0x5c
	add r4, r0, r4
	str r2, [r4, #0x4]
	mov r4, #0x1
	eor r1, r4
	mul r3, r1
	sub r4, #0xc
	str r4, [r0, r3]
	add r0, r0, r3
	str r2, [r0, #0x4]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_02078BD0
FUN_02078BD0: ; 0x02078BD0
	cmp r0, r2
	blt _02078BD6
	add r0, r1, #0x0
_02078BD6:
	cmp r0, r1
	bge _02078BDC
	sub r0, r2, #0x1
_02078BDC:
	bx lr
	.balign 4

	thumb_func_start FUN_02078BE0
FUN_02078BE0: ; 0x02078BE0
	push {r3-r7, lr}
	add r5, r0, #0x0
	cmp r1, #0x0
	beq _02078C84
	ldr r3, [r5, #0x20]
	mov r2, #0x1a
	mul r2, r3
	ldr r0, [r5, #0x1c]
	add r3, r5, r2
	lsl r2, r0, #0x1
	add r2, r3, r2
	ldrh r2, [r2, #0x3a]
	lsl r6, r1, #0x3
	ldr r1, _02078C88 ; =UNK_020FA154
	str r2, [sp, #0x0]
	ldr r1, [r1, r6]
	mov r2, #0xd
	add r0, r0, r1
	mov r1, #0x0
	bl FUN_02078BD0
	add r4, r0, #0x0
	ldr r0, _02078C8C ; =UNK_020FA158
	ldr r1, [r5, #0x20]
	ldr r0, [r0, r6]
	mov r2, #0x6
	add r0, r1, r0
	mov r1, #0x0
	bl FUN_02078BD0
	add r7, r0, #0x0
	ldr r0, _02078C88 ; =UNK_020FA154
	add r6, r0, r6
	b _02078C62
_02078C24:
	ldr r1, [r5, #0x28]
	cmp r1, #0x0
	bne _02078C46
	ldr r1, _02078C90 ; =0x0000D004
	cmp r0, r1
	bne _02078C46
	ldr r0, [r6, #0x4]
	cmp r0, #0x0
	beq _02078C46
	ldr r0, [r5, #0x2c]
	mov r1, #0x0
	add r0, r4, r0
	mov r2, #0xd
	bl FUN_02078BD0
	add r4, r0, #0x0
	b _02078C62
_02078C46:
	ldr r0, [r6, #0x0]
	mov r1, #0x0
	add r0, r4, r0
	mov r2, #0xd
	bl FUN_02078BD0
	add r4, r0, #0x0
	ldr r0, [r6, #0x4]
	mov r1, #0x0
	add r0, r7, r0
	mov r2, #0x6
	bl FUN_02078BD0
	add r7, r0, #0x0
_02078C62:
	mov r0, #0x1a
	mul r0, r7
	lsl r1, r4, #0x1
	add r0, r5, r0
	add r0, r1, r0
	ldrh r0, [r0, #0x3a]
	ldr r1, _02078C90 ; =0x0000D004
	cmp r0, r1
	beq _02078C24
	ldr r1, [sp, #0x0]
	cmp r1, r0
	bne _02078C80
	ldr r1, _02078C94 ; =0x0000E001
	cmp r0, r1
	bhi _02078C24
_02078C80:
	str r4, [r5, #0x1c]
	str r7, [r5, #0x20]
_02078C84:
	pop {r3-r7, pc}
	nop
_02078C88: .word UNK_020FA154
_02078C8C: .word UNK_020FA158
_02078C90: .word 0x0000D004
_02078C94: .word 0x0000E001

	thumb_func_start FUN_02078C98
FUN_02078C98: ; 0x02078C98
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, _02078D70 ; =gUnknown21C48B8
	mov r4, #0x0
	ldr r1, [r0, #0x4c]
	mov r0, #0x40
	add r6, r4, #0x0
	tst r0, r1
	beq _02078CC0
	ldr r0, _02078D74 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r6, #0x1
	add r4, r4, #0x1
_02078CC0:
	ldr r0, _02078D70 ; =gUnknown21C48B8
	ldr r1, [r0, #0x4c]
	mov r0, #0x80
	tst r0, r1
	beq _02078CE0
	ldr r0, _02078D74 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r6, #0x2
	add r4, r4, #0x1
_02078CE0:
	ldr r0, _02078D70 ; =gUnknown21C48B8
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _02078D00
	ldr r0, _02078D74 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r6, #0x3
	add r4, r4, #0x1
_02078D00:
	ldr r0, _02078D70 ; =gUnknown21C48B8
	ldr r1, [r0, #0x4c]
	mov r0, #0x10
	tst r0, r1
	beq _02078D20
	ldr r0, _02078D74 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r6, #0x4
	add r4, r4, #0x1
_02078D20:
	ldr r0, _02078D70 ; =gUnknown21C48B8
	ldr r1, [r0, #0x48]
	mov r0, #0x8
	tst r0, r1
	beq _02078D46
	ldr r0, _02078D74 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r0, #0xc
	str r0, [r5, #0x1c]
	mov r0, #0x0
	str r0, [r5, #0x20]
	add r4, r4, #0x1
_02078D46:
	add r0, r5, #0x0
	bl FUN_02079930
	ldr r1, _02078D78 ; =0x000005C8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0x1
	bne _02078D5A
	mov r6, #0x0
	add r4, r4, #0x1
_02078D5A:
	cmp r4, #0x0
	beq _02078D6E
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_02078BE0
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_02078D7C
_02078D6E:
	pop {r4-r6, pc}
	.balign 4
_02078D70: .word gUnknown21C48B8
_02078D74: .word 0x000005DC
_02078D78: .word 0x000005C8

	thumb_func_start FUN_02078D7C
FUN_02078D7C: ; 0x02078D7C
	push {r3-r5, lr}
	sub sp, #0x18
	add r5, r0, #0x0
	add r4, r1, #0x0
	ldr r1, [r5, #0x20]
	cmp r1, #0x0
	beq _02078DC6
	ldr r0, [r5, #0x28]
	cmp r0, #0x0
	bne _02078DA0
	cmp r0, r1
	beq _02078DA0
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x27
	bl FUN_02020130
_02078DA0:
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x4
	add r0, #0x1a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	sub r1, r0, #0x1
	mov r0, #0x13
	mul r0, r1
	add r0, #0x5b
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	add r1, sp, #0xc
	bl FUN_02020044
	b _02078E02
_02078DC6:
	mov r0, #0x1a
	mul r0, r1
	add r1, r5, r0
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x1
	add r0, r1, r0
	ldrh r1, [r0, #0x3a]
	ldr r0, _02078E2C ; =0x0000E002
	sub r1, r1, r0
	ldr r0, _02078E30 ; =UNK_020F9D6C
	lsl r2, r1, #0x1
	ldrh r0, [r0, r2]
	ldr r2, _02078E34 ; =UNK_020F9D38
	lsl r0, r0, #0xc
	str r0, [sp, #0x0]
	mov r0, #0x11
	lsl r0, r0, #0xe
	str r0, [sp, #0x4]
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldrb r1, [r2, r1]
	ldr r0, [r5, r0]
	bl FUN_02020130
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	add r1, sp, #0x0
	bl FUN_02020044
_02078E02:
	mov r0, #0xb4
	strh r0, [r5, #0x38]
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	mov r1, #0x0
	bl FUN_02020208
	ldr r0, [r5, #0x1c]
	lsl r1, r4, #0x3
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x28]
	ldr r0, _02078E38 ; =UNK_020FA154
	ldr r0, [r0, r1]
	cmp r0, #0x0
	beq _02078E26
	str r0, [r5, #0x2c]
_02078E26:
	add sp, #0x18
	pop {r3-r5, pc}
	nop
_02078E2C: .word 0x0000E002
_02078E30: .word UNK_020F9D6C
_02078E34: .word UNK_020F9D38
_02078E38: .word UNK_020FA154

	thumb_func_start FUN_02078E3C
FUN_02078E3C: ; 0x02078E3C
	push {r3, lr}
	ldrh r1, [r0, #0x0]
	add r1, #0x14
	strh r1, [r0, #0x0]
	ldrh r2, [r0, #0x0]
	mov r1, #0x5a
	lsl r1, r1, #0x2
	cmp r2, r1
	bls _02078E52
	mov r1, #0x0
	strh r1, [r0, #0x0]
_02078E52:
	ldrh r0, [r0, #0x0]
	bl FUN_0201B970
	mov r1, #0xa
	mul r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r1, r0, #0x5
	mov r0, #0x1d
	orr r1, r0
	add r0, sp, #0x0
	strh r1, [r0, #0x0]
	add r0, sp, #0x0
	mov r1, #0x3a
	mov r2, #0x2
	bl GX_LoadOBJPltt
	pop {r3, pc}

	thumb_func_start FUN_02078E7C
FUN_02078E7C: ; 0x02078E7C
	push {r4-r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	add r7, r1, #0x0
	mov r0, #0x2
	mov r1, #0x12
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	mov r4, #0x0
	bl FUN_020219F4
	str r0, [sp, #0x28]
	ldrh r1, [r7, #0x0]
	ldr r0, _02078F6C ; =0x0000FFFF
	cmp r1, r0
	beq _02078F62
	ldr r0, [sp, #0x54]
	ldr r6, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r0, #0x2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x30]
_02078EB4:
	lsl r0, r4, #0x1
	ldrh r1, [r7, r0]
	ldr r0, _02078F70 ; =0x00002FFF
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x2
	bhi _02078F00
	mov r0, #0xc
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	add r2, r4, #0x0
	ldr r0, [sp, #0x1c]
	mul r2, r6
	add r0, r0, r2
	ldr r2, _02078F74 ; =0x0000D001
	lsl r0, r0, #0x10
	sub r1, r1, r2
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r2, r1, #0x8
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x2c]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	str r0, [sp, #0xc]
	mov r0, #0xc
	asr r2, r1, #0x1
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r1, r1, r2
	mov r2, #0x0
	ldr r0, [sp, #0x18]
	add r3, r2, #0x0
	bl FUN_02019658
	b _02078F56
_02078F00:
	ldr r0, _02078F78 ; =0x0000D004
	cmp r1, r0
	bne _02078F0A
	add r4, r4, #0x1
	b _02078F58
_02078F0A:
	add r0, sp, #0x38
	strh r1, [r0, #0x0]
	ldr r1, _02078F6C ; =0x0000FFFF
	strh r1, [r0, #0x2]
	mov r0, #0x0
	add r1, sp, #0x38
	add r2, r0, #0x0
	bl FUN_02002DE0
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	add r1, sp, #0x38
	bl FUN_02021E28
	ldr r0, [sp, #0x20]
	sub r3, r6, r5
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r3, r5, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x34]
	mov r12, r3
	add r5, r4, #0x0
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	mul r5, r6
	add r3, r3, r5
	mov r5, r12
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	mov r1, #0x0
	add r3, r5, r3
	bl FUN_0201BDE0
_02078F56:
	add r4, r4, #0x1
_02078F58:
	lsl r0, r4, #0x1
	ldrh r1, [r7, r0]
	ldr r0, _02078F6C ; =0x0000FFFF
	cmp r1, r0
	bne _02078EB4
_02078F62:
	ldr r0, [sp, #0x28]
	bl FUN_02021A20
	add sp, #0x3c
	pop {r4-r7, pc}
	.balign 4
_02078F6C: .word 0x0000FFFF
_02078F70: .word 0x00002FFF
_02078F74: .word 0x0000D001
_02078F78: .word 0x0000D004

	thumb_func_start FUN_02078F7C
FUN_02078F7C: ; 0x02078F7C
	push {r4-r6, lr}
	sub sp, #0x10
	mov r5, #0x0
	add r6, r1, #0x0
	str r5, [sp, #0x0]
	mov r1, #0xff
	str r1, [sp, #0x4]
	str r3, [sp, #0x8]
	add r1, r2, #0x0
	add r2, r6, #0x0
	add r3, r5, #0x0
	add r4, r0, #0x0
	str r5, [sp, #0xc]
	bl FUN_0201BDE0
	ldr r0, [r4, #0xc]
	add sp, #0x10
	pop {r4-r6, pc}

	thumb_func_start FUN_02078FA0
FUN_02078FA0: ; 0x02078FA0
	push {r3-r7, lr}
	sub sp, #0x38
	add r6, r0, #0x0
	str r1, [sp, #0x8]
	add r0, #0x30
	mov r1, #0x0
	add r5, r2, #0x0
	add r4, r3, #0x0
	bl FUN_02019620
	add r0, r6, #0x0
	ldr r3, _0207906C ; =0x000D0E0F
	add r0, #0x30
	add r1, r4, #0x0
	mov r2, #0x2
	bl FUN_02078F7C
	mov r1, #0x2
	lsl r1, r1, #0xa
	bl DC_FlushRange
	add r7, r6, #0x0
	mov r4, #0x0
	add r7, #0x30
_02078FD0:
	mov r0, #0x0
	str r0, [sp, #0x0]
	add r0, r7, #0x0
	mov r1, #0x4
	mov r2, #0x2
	lsl r3, r4, #0x2
	str r5, [sp, #0x4]
	bl FUN_02011B20
	mov r1, #0x1
	add r0, r5, #0x0
	lsl r1, r1, #0x8
	bl DC_FlushRange
	ldr r1, _02079070 ; =UNK_020F9D28
	mov r2, #0x1
	ldrb r1, [r1, r4]
	add r0, r5, #0x0
	lsl r2, r2, #0x8
	lsl r1, r1, #0x5
	bl GXS_LoadOBJ
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x4
	blo _02078FD0
	mov r0, #0x15
	mov r1, #0x12
	bl FUN_020219F4
	add r4, r0, #0x0
	mov r5, #0x0
_02079012:
	ldr r0, [sp, #0x8]
	lsl r1, r5, #0x1
	ldrh r1, [r0, r1]
	add r0, sp, #0xc
	lsl r7, r5, #0x4
	strh r1, [r0, #0x0]
	ldr r1, _02079074 ; =0x0000FFFF
	strh r1, [r0, #0x2]
	add r0, r6, r7
	mov r1, #0x0
	bl FUN_02019620
	add r0, r4, #0x0
	add r1, sp, #0xc
	bl FUN_02021E28
	ldr r3, _0207906C ; =0x000D0E0F
	add r0, r6, r7
	add r1, r4, #0x0
	mov r2, #0x2
	bl FUN_02078F7C
	mov r1, #0x80
	add r7, r0, #0x0
	bl DC_FlushRange
	ldr r1, _02079078 ; =UNK_020F9D40
	lsl r2, r5, #0x2
	ldr r1, [r1, r2]
	add r0, r7, #0x0
	lsl r1, r1, #0x5
	mov r2, #0x80
	bl GXS_LoadOBJ
	add r0, r5, #0x1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x3
	blo _02079012
	add r0, r4, #0x0
	bl FUN_02021A20
	add sp, #0x38
	pop {r3-r7, pc}
	nop
_0207906C: .word 0x000D0E0F
_02079070: .word UNK_020F9D28
_02079074: .word 0x0000FFFF
_02079078: .word UNK_020F9D40

	thumb_func_start FUN_0207907C
FUN_0207907C: ; 0x0207907C
	push {r3-r5, lr}
	cmp r2, #0x0
	bne _02079086
	ldr r1, _02079158 ; =0x0000D003
	b _0207908C
_02079086:
	sub r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrh r1, [r1, r2]
_0207908C:
	ldr r4, _0207915C ; =0x0000E003
	cmp r1, r4
	bgt _020790BC
	bge _020790E2
	ldr r2, _02079160 ; =0x0000D004
	cmp r1, r2
	bgt _020790B4
	sub r2, r2, #0x3
	sub r2, r1, r2
	bmi _020790E4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020790AC: ; jump table (using 16-bit offset)
	.short _020790E2 - _020790AC - 2; case 0
	.short _020790E2 - _020790AC - 2; case 1
	.short _020790E2 - _020790AC - 2; case 2
	.short _020790E2 - _020790AC - 2; case 3
_020790B4:
	ldr r2, _02079164 ; =0x0000E002
	cmp r1, r2
	beq _020790E2
	b _020790E4
_020790BC:
	add r2, r4, #0x1
	cmp r1, r2
	bgt _020790C6
	beq _020790E2
	b _020790E4
_020790C6:
	add r2, r4, #0x2
	sub r2, r1, r2
	cmp r2, #0x3
	bhi _020790E4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020790DA: ; jump table (using 16-bit offset)
	.short _020790E2 - _020790DA - 2; case 0
	.short _020790E2 - _020790DA - 2; case 1
	.short _020790E2 - _020790DA - 2; case 2
	.short _020790E2 - _020790DA - 2; case 3
_020790E2:
	mov r1, #0x1
_020790E4:
	mov r4, #0x0
	add r5, r3, #0x0
	mov r2, #0x1
_020790EA:
	add r4, r4, #0x1
	strh r2, [r5, #0x0]
	add r5, r5, #0x2
	cmp r4, #0x3
	blt _020790EA
	strh r1, [r3, #0x0]
	cmp r1, #0x1
	beq _0207914A
	ldr r5, _02079168 ; =UNK_020FA40E
	mov r2, #0x0
_020790FE:
	ldrh r4, [r5, #0x0]
	cmp r1, r4
	bne _02079120
	mov r4, #0x6
	ldr r5, _02079168 ; =UNK_020FA40E
	mul r4, r2
	add r4, r5, r4
	mov r1, #0x0
	add r5, r3, #0x0
_02079110:
	ldrh r2, [r4, #0x0]
	add r1, r1, #0x1
	add r4, r4, #0x2
	strh r2, [r5, #0x0]
	add r5, r5, #0x2
	cmp r1, #0x3
	blt _02079110
	b _0207914A
_02079120:
	ldrh r4, [r5, #0x4]
	cmp r1, r4
	bne _02079142
	mov r4, #0x6
	ldr r5, _02079168 ; =UNK_020FA40E
	mul r4, r2
	add r4, r5, r4
	mov r1, #0x0
	add r5, r3, #0x0
_02079132:
	ldrh r2, [r4, #0x0]
	add r1, r1, #0x1
	add r4, r4, #0x2
	strh r2, [r5, #0x0]
	add r5, r5, #0x2
	cmp r1, #0x3
	blt _02079132
	b _0207914A
_02079142:
	add r2, r2, #0x1
	add r5, r5, #0x6
	cmp r2, #0x52
	blo _020790FE
_0207914A:
	add r1, r3, #0x0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_02078FA0
	pop {r3-r5, pc}
	nop
_02079158: .word 0x0000D003
_0207915C: .word 0x0000E003
_02079160: .word 0x0000D004
_02079164: .word 0x0000E002
_02079168: .word UNK_020FA40E

	thumb_func_start FUN_0207916C
FUN_0207916C: ; 0x0207916C
	push {r4-r7}
	mov r4, #0x0
	ldr r3, _020791B8 ; =UNK_02106058
	add r5, r4, #0x0
	add r6, r0, #0x0
	lsl r2, r1, #0x2
_02079178:
	ldr r7, [r3, r2]
	add r4, r4, #0x1
	ldrh r7, [r7, r5]
	add r5, r5, #0x2
	strh r7, [r6, #0x0]
	add r6, r6, #0x2
	cmp r4, #0xd
	blt _02079178
	mov r3, #0x14
	ldr r4, _020791BC ; =UNK_0210606C
	mul r3, r1
	mov r2, #0x0
	add r3, r4, r3
	add r1, r2, #0x0
_02079194:
	add r6, r1, #0x0
	add r4, r1, #0x0
	add r5, r0, #0x0
_0207919A:
	ldr r7, [r3, #0x0]
	add r6, r6, #0x1
	ldrh r7, [r7, r4]
	add r4, r4, #0x2
	strh r7, [r5, #0x1a]
	add r5, r5, #0x2
	cmp r6, #0xd
	blt _0207919A
	add r2, r2, #0x1
	add r3, r3, #0x4
	add r0, #0x1a
	cmp r2, #0x5
	blt _02079194
	pop {r4-r7}
	bx lr
	.balign 4
_020791B8: .word UNK_02106058
_020791BC: .word UNK_0210606C

	thumb_func_start FUN_020791C0
FUN_020791C0: ; 0x020791C0
	push {r4-r6, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	ldr r0, _0207952C ; =0x00002FFD
	add r6, r2, #0x0
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x1
	bhi _020791D6
	mov r1, #0x1
_020791D6:
	ldr r0, [r4, #0x0]
	cmp r0, #0x4
	bne _020791EA
	ldr r0, _02079530 ; =0x00001FFE
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #0x3
	bhi _020791EA
	mov r1, #0x1
_020791EA:
	ldr r0, _02079534 ; =0x0000E002
	cmp r1, r0
	bgt _02079208
	blt _020791F4
	b _0207931C
_020791F4:
	ldr r3, _02079538 ; =0x0000D002
	cmp r1, r3
	bgt _02079206
	sub r0, r3, #0x1
	cmp r1, r0
	blt _02079206
	beq _0207922A
	cmp r1, r3
	beq _0207927C
_02079206:
	b _0207945C
_02079208:
	add r0, r0, #0x1
	sub r0, r1, r0
	cmp r0, #0x5
	bls _02079212
	b _0207945C
_02079212:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0207921E: ; jump table (using 16-bit offset)
	.short _0207931C - _0207921E - 2; case 0
	.short _0207931C - _0207921E - 2; case 1
	.short _0207931C - _0207921E - 2; case 2
	.short _020792CA - _0207921E - 2; case 3
	.short _0207935E - _0207921E - 2; case 4
	.short _0207940E - _0207921E - 2; case 5
_0207922A:
	add r0, r4, #0x0
	add r0, #0xd8
	str r0, [sp, #0x0]
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r0, [r4, r0]
	ldr r3, _0207953C ; =0x0000D001
	mov r1, #0x52
	str r0, [sp, #0x4]
	mov r0, #0x2a
	mov r2, #0x1
	bl FUN_020795FC
	cmp r0, #0x0
	bne _0207924A
	b _02079526
_0207924A:
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	ldr r0, _02079540 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0x0
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
	ldr r0, _02079544 ; =0x000005EB
	bl FUN_020054C8
	b _02079526
_0207927C:
	add r0, r4, #0x0
	add r0, #0xd8
	str r0, [sp, #0x0]
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r0, [r4, r0]
	mov r1, #0x52
	mov r2, #0x2
	str r0, [sp, #0x4]
	mov r0, #0x48
	bl FUN_020795FC
	cmp r0, #0x0
	beq _02079368
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	ldr r0, _02079540 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	add r4, #0xd8
	add r1, r4, #0x0
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
	ldr r0, _02079544 ; =0x000005EB
	bl FUN_020054C8
	b _02079526
_020792CA:
	mov r3, #0x56
	lsl r3, r3, #0x2
	ldrh r3, [r4, r3]
	add r2, r4, #0x0
	mov r0, #0x0
	mov r1, #0x52
	add r2, #0xd8
	bl FUN_02079590
	cmp r0, #0x0
	beq _02079368
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	add r1, r4, #0x0
	ldr r0, _02079540 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
	mov r0, #0x4a
	lsl r0, r0, #0x4
	ldr r1, [r4, r0]
	add r1, r1, #0x1
	str r1, [r4, r0]
	ldr r0, _02079544 ; =0x000005EB
	bl FUN_020054C8
	b _02079526
_0207931C:
	mov r2, #0x46
	lsl r2, r2, #0x4
	ldr r0, _02079534 ; =0x0000E002
	ldr r3, [r4, r2]
	sub r5, r1, r0
	cmp r3, r5
	beq _02079368
	mov r1, #0x0
	sub r0, r2, #0x4
	str r1, [r4, r0]
	str r5, [r4, r2]
	add r0, r4, #0x0
	ldr r1, [r4, r2]
	add r0, #0x3a
	bl FUN_0207916C
	mov r0, #0x49
	lsl r0, r0, #0x4
	add r2, r4, r0
	lsl r1, r5, #0x2
	ldr r0, [r2, r1]
	add r0, r0, #0x1
	str r0, [r2, r1]
	ldr r0, _02079548 ; =0x0000069E
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	add r1, r6, #0x0
	bl FUN_020200A0
	b _02079526
_0207935E:
	mov r1, #0x56
	lsl r1, r1, #0x2
	ldrh r0, [r4, r1]
	cmp r0, #0x0
	bne _0207936A
_02079368:
	b _02079526
_0207936A:
	sub r0, r0, #0x1
	lsl r0, r0, #0x1
	add r0, r4, r0
	ldr r2, _0207954C ; =0x0000FFFF
	add r0, #0xd8
	strh r2, [r0, #0x0]
	ldrh r0, [r4, r1]
	sub r0, r0, #0x1
	strh r0, [r4, r1]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r0, [r4, r0]
	cmp r0, #0x0
	bne _0207939E
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	bl FUN_020191D0
	b _020793BC
_0207939E:
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	ldr r0, _02079540 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r1, r4, #0x0
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
_020793BC:
	ldr r0, _02079550 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #0x2
	str r1, [sp, #0x0]
	ldr r1, [r4, r3]
	add r2, r3, #0x0
	str r1, [sp, #0x4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0x0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl FUN_0207907C
	mov r1, #0x56
	lsl r1, r1, #0x2
	mov r0, #0xd9
	lsl r0, r0, #0x2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl FUN_02079710
	ldr r0, _02079554 ; =0x000004A4
	ldr r1, [r4, r0]
	add r1, r1, #0x1
	str r1, [r4, r0]
	ldr r0, _02079558 ; =0x000005DC
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	add r1, r6, #0x0
	bl FUN_020200A0
	b _02079526
_0207940E:
	ldr r0, _0207955C ; =0x000005C4
	ldr r0, [r4, r0]
	bl FUN_020143D0
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	add r1, r6, #0x0
	bl FUN_020200A0
	ldr r0, [r4, #0x14]
	cmp r0, #0x0
	bne _02079454
	ldr r0, _02079560 ; =0x000005E2
	bl FUN_020054C8
	ldr r0, _02079564 ; =0x000004A8
	ldr r1, [r4, r0]
	add r1, r1, #0x1
	str r1, [r4, r0]
	mov r1, #0x0
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	mov r0, #0x12
	str r0, [sp, #0x8]
	mov r0, #0x2
	add r2, r1, #0x0
	add r3, r1, #0x0
	bl FUN_0200E1D0
	add sp, #0x10
	mov r0, #0x3
	pop {r4-r6, pc}
_02079454:
	ldr r0, _02079568 ; =0x0000045C
	mov r1, #0x5
	str r1, [r4, r0]
	b _02079526
_0207945C:
	mov r0, #0x46
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	cmp r0, #0x4
	bne _02079470
	cmp r1, #0x1
	bne _02079470
	add sp, #0x10
	mov r0, #0x2
	pop {r4-r6, pc}
_02079470:
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r2, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r2, r0
	beq _02079526
	lsl r0, r2, #0x1
	add r0, r4, r0
	add r0, #0xd8
	strh r1, [r0, #0x0]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	mov r1, #0x1
	bl FUN_02019620
	mov r0, #0xc
	str r0, [sp, #0x0]
	mov r2, #0x0
	add r1, r4, #0x0
	ldr r0, _02079540 ; =0x000E0F01
	str r2, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xfa
	lsl r0, r0, #0x2
	add r0, r4, r0
	add r1, #0xd8
	add r3, r2, #0x0
	str r2, [sp, #0xc]
	bl FUN_02078E7C
	mov r1, #0x56
	lsl r1, r1, #0x2
	ldrh r0, [r4, r1]
	add r0, r0, #0x1
	strh r0, [r4, r1]
	mov r0, #0xd9
	lsl r0, r0, #0x2
	ldrh r1, [r4, r1]
	ldr r2, [r4, #0xc]
	add r0, r4, r0
	bl FUN_02079710
	ldr r0, _02079544 ; =0x000005EB
	bl FUN_020054C8
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_020200A0
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x1
	bl FUN_02020398
	mov r3, #0x8
	ldr r0, _0207956C ; =0x04000050
	mov r1, #0x0
	mov r2, #0x7
	str r3, [sp, #0x0]
	bl G2x_SetBlendAlpha_
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x3c
	bl FUN_02020130
	mov r0, #0x1
	str r0, [r4, #0x34]
	ldr r0, _02079550 ; =0x000004C4
	mov r3, #0x5f
	add r1, r4, r0
	lsl r3, r3, #0x2
	str r1, [sp, #0x0]
	ldr r1, [r4, r3]
	add r2, r3, #0x0
	str r1, [sp, #0x4]
	sub r2, #0x24
	sub r0, #0xcc
	add r1, r4, #0x0
	sub r3, #0x22
	ldrh r2, [r4, r2]
	add r0, r4, r0
	add r1, #0xd8
	add r3, r4, r3
	bl FUN_0207907C
_02079526:
	mov r0, #0x2
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4
_0207952C: .word 0x00002FFD
_02079530: .word 0x00001FFE
_02079534: .word 0x0000E002
_02079538: .word 0x0000D002
_0207953C: .word 0x0000D001
_02079540: .word 0x000E0F01
_02079544: .word 0x000005EB
_02079548: .word 0x0000069E
_0207954C: .word 0x0000FFFF
_02079550: .word 0x000004C4
_02079554: .word 0x000004A4
_02079558: .word 0x000005DC
_0207955C: .word 0x000005C4
_02079560: .word 0x000005E2
_02079564: .word 0x000004A8
_02079568: .word 0x0000045C
_0207956C: .word 0x04000050

	thumb_func_start FUN_02079570
FUN_02079570: ; 0x02079570
	push {r4-r6, lr}
	add r5, r0, #0x0
	mov r4, #0x0
	mov r6, #0x3
_02079578:
	add r0, r1, #0x1
	add r1, r4, #0x0
	add r2, r6, #0x0
	bl FUN_02078BD0
	add r1, r0, #0x0
	lsl r0, r1, #0x1
	ldrh r0, [r5, r0]
	cmp r0, #0x1
	beq _02079578
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02079590
FUN_02079590: ; 0x02079590
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r0, r1, #0x0
	str r2, [sp, #0x0]
	cmp r3, #0x0
	bne _020795A4
	add sp, #0x8
	mov r0, #0x0
	pop {r3-r7, pc}
_020795A4:
	sub r1, r3, #0x1
	lsl r1, r1, #0x1
	str r1, [sp, #0x4]
	ldrh r3, [r2, r1]
	cmp r4, r0
	bge _020795F2
	mov r1, #0x6
	ldr r2, _020795F8 ; =UNK_020FA40E
	mul r1, r4
	add r5, r2, r1
	mov r7, #0x0
_020795BA:
	add r2, r7, #0x0
	add r6, r5, #0x0
_020795BE:
	ldrh r1, [r6, #0x0]
	cmp r3, r1
	bne _020795E2
	cmp r3, #0x1
	beq _020795E2
	mov r0, #0x6
	ldr r1, _020795F8 ; =UNK_020FA40E
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0x0
	bl FUN_02079570
	ldr r2, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add sp, #0x8
	strh r0, [r2, r1]
	mov r0, #0x1
	pop {r3-r7, pc}
_020795E2:
	add r2, r2, #0x1
	add r6, r6, #0x2
	cmp r2, #0x3
	blt _020795BE
	add r4, r4, #0x1
	add r5, r5, #0x6
	cmp r4, r0
	blt _020795BA
_020795F2:
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_020795F8: .word UNK_020FA40E

	thumb_func_start FUN_020795FC
FUN_020795FC: ; 0x020795FC
	push {r3-r7, lr}
	add r4, r0, #0x0
	add r0, r1, #0x0
	ldr r1, [sp, #0x1c]
	mov lr, r2
	mov r12, r3
	cmp r1, #0x0
	beq _02079618
	sub r1, r1, #0x1
	ldr r6, [sp, #0x18]
	lsl r7, r1, #0x1
	ldrh r5, [r6, r7]
	cmp r5, #0x1
	bne _0207961C
_02079618:
	mov r0, #0x0
	pop {r3-r7, pc}
_0207961C:
	add r2, r4, #0x0
	cmp r4, r0
	bge _0207964E
	mov r1, #0x6
	ldr r3, _020796F4 ; =UNK_020FA40E
	mul r1, r4
	add r3, r3, r1
_0207962A:
	ldrh r1, [r3, #0x0]
	cmp r5, r1
	bne _02079646
	add r3, r2, #0x0
	mov r0, #0x6
	mul r3, r0
	mov r0, lr
	ldr r2, _020796F4 ; =UNK_020FA40E
	lsl r1, r0, #0x1
	add r0, r2, r3
	ldrh r0, [r1, r0]
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_02079646:
	add r2, r2, #0x1
	add r3, r3, #0x6
	cmp r2, r0
	blt _0207962A
_0207964E:
	cmp r4, r0
	bge _0207967E
	mov r2, lr
	ldr r1, _020796F4 ; =UNK_020FA40E
	lsl r2, r2, #0x1
	add r1, r1, r2
	mov r2, #0x6
	mul r2, r4
	add r2, r1, r2
_02079660:
	ldrh r1, [r2, #0x0]
	cmp r5, r1
	bne _02079676
	mov r0, #0x6
	add r1, r4, #0x0
	mul r1, r0
	ldr r0, _020796F4 ; =UNK_020FA40E
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_02079676:
	add r4, r4, #0x1
	add r2, r2, #0x6
	cmp r4, r0
	blt _02079660
_0207967E:
	ldr r1, _020796F8 ; =0x0000D001
	mov r0, r12
	cmp r0, r1
	beq _02079698
	add r1, r1, #0x1
	mov r0, r12
	cmp r0, r1
	beq _020796B8
	ldr r1, _020796FC ; =0x0000E006
	mov r0, r12
	cmp r0, r1
	beq _020796D8
	b _020796F0
_02079698:
	ldr r1, _02079700 ; =UNK_020FA1A4
	mov r2, #0x0
_0207969C:
	ldrh r0, [r1, #0x0]
	cmp r5, r0
	bne _020796AE
	ldr r0, _02079704 ; =UNK_020FA1A6
	lsl r1, r2, #0x2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_020796AE:
	add r2, r2, #0x1
	add r1, r1, #0x4
	cmp r2, #0xc
	blo _0207969C
	b _020796F0
_020796B8:
	ldr r1, _02079708 ; =UNK_020FA17C
	mov r2, #0x0
_020796BC:
	ldrh r0, [r1, #0x0]
	cmp r5, r0
	bne _020796CE
	ldr r0, _0207970C ; =UNK_020FA17E
	lsl r1, r2, #0x2
	ldrh r0, [r0, r1]
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_020796CE:
	add r2, r2, #0x1
	add r1, r1, #0x4
	cmp r2, #0xa
	blo _020796BC
	b _020796F0
_020796D8:
	cmp r5, #0x26
	bne _020796E4
	mov r0, #0x24
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_020796E4:
	cmp r5, #0x76
	bne _020796F0
	mov r0, #0x74
	strh r0, [r6, r7]
	mov r0, #0x1
	pop {r3-r7, pc}
_020796F0:
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4
_020796F4: .word UNK_020FA40E
_020796F8: .word 0x0000D001
_020796FC: .word 0x0000E006
_02079700: .word UNK_020FA1A4
_02079704: .word UNK_020FA1A6
_02079708: .word UNK_020FA17C
_0207970C: .word UNK_020FA17E

	thumb_func_start FUN_02079710
FUN_02079710: ; 0x02079710
	push {r3-r7, lr}
	sub sp, #0x8
	add r6, r2, #0x0
	mov r4, #0x0
	str r0, [sp, #0x0]
	str r1, [sp, #0x4]
	cmp r6, #0x0
	ble _02079734
	add r5, r0, #0x0
	mov r7, #0x2b
_02079724:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	bl FUN_02020130
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, r6
	blt _02079724
_02079734:
	ldr r0, [sp, #0x4]
	cmp r0, r6
	beq _02079746
	lsl r1, r0, #0x2
	ldr r0, [sp, #0x0]
	ldr r0, [r0, r1]
	mov r1, #0x2c
	bl FUN_02020130
_02079746:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0207974C
FUN_0207974C: ; 0x0207974C
	push {r3-r7, lr}
	sub sp, #0x18
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x30]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0x0
	str r3, [sp, #0x14]
	str r2, [sp, #0x30]
	bl FUN_02019620
	ldr r1, _0207982C ; =UNK_020F9D30
	ldr r0, [sp, #0x10]
	mov r7, #0x0
	ldrb r4, [r1, r0]
	mov r6, #0x10
_0207976C:
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	mov r3, #0x0
	bl FUN_020196F4
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	mov r3, #0x26
	bl FUN_020196F4
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	mov r3, #0x4c
	bl FUN_020196F4
	add r7, r7, #0x1
	add r6, #0x20
	cmp r7, #0x6
	blt _0207976C
	mov r7, #0x0
	add r6, r7, #0x0
_020797BA:
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	mov r3, #0x13
	bl FUN_020196F4
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x13
	lsl r2, r6, #0x10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	mov r3, #0x39
	bl FUN_020196F4
	add r7, r7, #0x1
	add r6, #0x20
	cmp r7, #0x7
	blt _020797BA
	ldr r0, [sp, #0x10]
	mov r1, #0x14
	ldr r2, _02079830 ; =UNK_0210606C
	mul r1, r0
	mov r7, #0x0
	mov r6, #0x4
	add r4, r2, r1
_020797FC:
	mov r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0xff
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x14]
	mov r2, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x30]
	add r3, r6, #0x0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x0]
	add r0, r5, #0x0
	bl FUN_02078E7C
	add r7, r7, #0x1
	add r6, #0x13
	add r4, r4, #0x4
	cmp r7, #0x5
	blt _020797FC
	add r0, r5, #0x0
	bl FUN_020191D0
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4
_0207982C: .word UNK_020F9D30
_02079830: .word UNK_0210606C

	thumb_func_start FUN_02079834
FUN_02079834: ; 0x02079834
	push {r3-r7, lr}
	sub sp, #0x8
	add r6, r1, #0x0
	str r0, [sp, #0x0]
	mov r7, #0x0
	add r1, r0, #0x0
_02079840:
	ldr r0, [r1, #0x0]
	cmp r0, #0x0
	beq _02079876
	mov r0, #0x0
	ldr r4, _020798B8 ; =UNK_020FA1D4
	str r0, [sp, #0x4]
	add r5, r6, #0x0
_0207984E:
	ldr r0, [r5, #0x0]
	ldr r1, [r4, #0x8]
	bl FUN_02020130
	ldr r0, [sp, #0x4]
	add r4, #0x10
	add r0, r0, #0x1
	add r5, r5, #0x4
	str r0, [sp, #0x4]
	cmp r0, #0x3
	blt _0207984E
	ldr r1, _020798BC ; =UNK_020FA1DC
	lsl r2, r7, #0x4
	lsl r0, r7, #0x2
	ldr r1, [r1, r2]
	ldr r0, [r6, r0]
	sub r1, r1, #0x3
	bl FUN_02020130
	b _0207987E
_02079876:
	add r7, r7, #0x1
	add r1, r1, #0x4
	cmp r7, #0x3
	blt _02079840
_0207987E:
	ldr r4, [sp, #0x0]
	ldr r5, _020798C0 ; =UNK_020FA224
	mov r7, #0x5
	add r4, #0x14
	add r6, #0x14
_02079888:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _02079898
	ldr r1, [r5, #0x8]
	ldr r0, [r6, #0x0]
	add r1, r1, #0x1
	bl FUN_02020130
_02079898:
	add r7, r7, #0x1
	add r4, r4, #0x4
	add r5, #0x10
	add r6, r6, #0x4
	cmp r7, #0x7
	blt _02079888
	mov r2, #0x0
	add r1, r2, #0x0
_020798A8:
	ldr r0, [sp, #0x0]
	add r2, r2, #0x1
	stmia r0!, {r1}
	str r0, [sp, #0x0]
	cmp r2, #0x7
	blt _020798A8
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_020798B8: .word UNK_020FA1D4
_020798BC: .word UNK_020FA1DC
_020798C0: .word UNK_020FA224

	thumb_func_start FUN_020798C4
FUN_020798C4: ; 0x020798C4
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02020388
	cmp r0, #0x0
	bne _0207992E
	mov r0, #0x56
	lsl r0, r0, #0x2
	ldrh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _020798F8
	mov r0, #0xc
	str r0, [r4, #0x1c]
	mov r0, #0x0
	str r0, [r4, #0x20]
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl FUN_02020130
	b _02079904
_020798F8:
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x27
	bl FUN_02020130
_02079904:
	ldr r0, [r4, #0x30]
	cmp r0, #0x0
	bne _02079918
	mov r0, #0xd3
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x0
	bl FUN_020200A0
	b _02079920
_02079918:
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_02078D7C
_02079920:
	mov r1, #0x0
	mov r0, #0xd3
	str r1, [r4, #0x34]
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02020398
_0207992E:
	pop {r4, pc}

	thumb_func_start FUN_02079930
FUN_02079930: ; 0x02079930
	push {r3-r7, lr}
	str r0, [sp, #0x0]
	mov r0, #0x0
	mov r12, r0
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0x0]
	cmp r0, #0x4
	bne _02079944
	mov r0, #0x4
	mov r12, r0
_02079944:
	ldr r2, _020799E0 ; =UNK_021C48F8
	ldrh r0, [r2, #0x20]
	cmp r0, #0x0
	beq _020799DA
	ldrh r0, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov lr, r0
	ldrh r0, [r2, #0x1e]
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r0, r12
	cmp r0, #0x47
	bhs _020799DA
	mov r0, #0x6
	mov r2, r12
	mul r0, r2
	ldr r2, _020799E4 ; =UNK_020FA264
	add r2, r2, r0
	add r3, r2, #0x0
_0207996C:
	ldrh r4, [r3, #0x2]
	ldrb r0, [r2, #0x0]
	ldrb r6, [r2, #0x1]
	lsl r4, r4, #0x1e
	lsr r4, r4, #0x1e
	beq _02079982
	cmp r4, #0x1
	beq _02079988
	cmp r4, #0x2
	beq _0207998E
	b _02079992
_02079982:
	mov r5, #0x1f
	mov r1, #0x16
	b _02079992
_02079988:
	mov r5, #0x20
	mov r1, #0x16
	b _02079992
_0207998E:
	mov r5, #0x10
	mov r1, #0x13
_02079992:
	mov r4, lr
	cmp r4, r0
	blo _020799CC
	cmp r7, r6
	blo _020799CC
	add r4, r0, r5
	mov r0, lr
	cmp r0, r4
	bgt _020799CC
	add r0, r6, r1
	cmp r7, r0
	bgt _020799CC
	ldr r2, _020799E4 ; =UNK_020FA264
	mov r1, #0x6
	mov r0, r12
	mul r1, r0
	add r2, r2, r1
	ldrb r0, [r2, #0x4]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp, #0x0]
	str r1, [r0, #0x1c]
	ldrb r0, [r2, #0x5]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	ldr r0, [sp, #0x0]
	str r1, [r0, #0x20]
	mov r0, #0x1
	pop {r3-r7, pc}
_020799CC:
	mov r0, r12
	add r0, r0, #0x1
	add r2, r2, #0x6
	add r3, r3, #0x6
	mov r12, r0
	cmp r0, #0x47
	blo _0207996C
_020799DA:
	mov r0, #0x0
	pop {r3-r7, pc}
	nop
_020799E0: .word UNK_021C48F8
_020799E4: .word UNK_020FA264
