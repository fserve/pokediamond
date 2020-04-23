    .include "asm/macros.inc"
    .include "global.inc"

	.text

	thumb_func_start FUN_02006864
FUN_02006864: ; 0x02006864
	add r3, r1, #0x0
	add r1, r2, #0x0
	add r2, r3, #0x0
	ldr r3, _02006870 ; =0x020D180C
	bx r3
	nop
_02006870: .word 0x020D180C

	thumb_func_start FUN_02006874
FUN_02006874: ; 0x02006874
	add r0, #0x50
	ldrh r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0200687C
FUN_0200687C: ; 0x0200687C
	push {r3-r7, lr}
	sub sp, #0x8
	add r6, r2, #0x0
	mov r2, #0x0
	add r5, r3, #0x0
	str r2, [sp, #0x0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldr r4, [sp, #0x24]
	bl FUN_02006C98
	add r7, r0, #0x0
	beq _020068C2
	add r1, sp, #0x4
	blx FUN_020B0030
	cmp r0, #0x0
	beq _020068BC
	cmp r4, #0x0
	bne _020068A8
	ldr r0, [sp, #0x4]
	ldr r4, [r0, #0x10]
_020068A8:
	ldr r0, [sp, #0x20]
	lsl r1, r5, #0x18
	str r0, [sp, #0x0]
	ldr r2, [sp, #0x4]
	add r0, r6, #0x0
	ldr r2, [r2, #0x14]
	lsr r1, r1, #0x18
	add r3, r4, #0x0
	bl FUN_02017E14
_020068BC:
	add r0, r7, #0x0
	bl FUN_02016A18
_020068C2:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_020068C8
FUN_020068C8: ; 0x020068C8
	push {r3-r7, lr}
	sub sp, #0x8
	add r6, r2, #0x0
	mov r2, #0x1
	add r5, r3, #0x0
	str r2, [sp, #0x0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldr r4, [sp, #0x24]
	bl FUN_02006C98
	add r7, r0, #0x0
	beq _0200692C
	add r1, sp, #0x4
	blx FUN_020B0180
	cmp r0, #0x0
	beq _02006926
	cmp r4, #0x0
	bne _020068F4
	ldr r0, [sp, #0x4]
	ldr r4, [r0, #0x8]
_020068F4:
	lsl r1, r5, #0x18
	add r0, r6, #0x0
	lsr r1, r1, #0x18
	bl FUN_0201886C
	cmp r0, #0x0
	beq _02006912
	ldr r2, [sp, #0x4]
	lsl r1, r5, #0x18
	add r0, r6, #0x0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0x0
	bl FUN_02017DFC
_02006912:
	ldr r0, [sp, #0x20]
	lsl r1, r5, #0x18
	str r0, [sp, #0x0]
	ldr r2, [sp, #0x4]
	add r0, r6, #0x0
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r4, #0x0
	bl FUN_02017CE8
_02006926:
	add r0, r7, #0x0
	bl FUN_02016A18
_0200692C:
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02006930
FUN_02006930: ; 0x02006930
	push {lr}
	sub sp, #0xc
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0x4]
	ldr r3, [sp, #0x14]
	str r3, [sp, #0x8]
	mov r3, #0x0
	bl FUN_02006948
	add sp, #0xc
	pop {pc}

	thumb_func_start FUN_02006948
FUN_02006948: ; 0x02006948
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r2, #0x0
	add r7, r3, #0x0
	mov r2, #0x1
	str r2, [sp, #0x0]
	ldr r3, [sp, #0x28]
	mov r2, #0x0
	ldr r6, [sp, #0x20]
	ldr r5, [sp, #0x24]
	bl FUN_02006C98
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02006A2A
	add r1, sp, #0x8
	blx FUN_020B0138
	cmp r0, #0x0
	beq _02006A24
	ldr r0, [sp, #0x8]
	ldr r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0xc]
	cmp r5, #0x0
	bne _02006982
	ldr r0, [sp, #0x8]
	ldr r0, [r0, #0x8]
	sub r5, r0, r7
_02006982:
	ldr r0, [sp, #0x8]
	add r1, r5, #0x0
	ldr r0, [r0, #0xc]
	blx DC_FlushRange
	cmp r4, #0x7
	bhi _02006A14
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200699C: ; jump table (using 16-bit offset)
	.short _02006A14 - _0200699C - 2; case 0
	.short _02006A14 - _0200699C - 2; case 1
	.short _020069AC - _0200699C - 2; case 2
	.short _020069E0 - _0200699C - 2; case 3
	.short _02006A14 - _0200699C - 2; case 4
	.short _02006A14 - _0200699C - 2; case 5
	.short _020069C6 - _0200699C - 2; case 6
	.short _020069FA - _0200699C - 2; case 7
_020069AC:
	blx FUN_020C8B10
	ldr r0, [sp, #0x8]
	ldr r3, _02006A30 ; =0x020ECBB0
	lsl r4, r4, #0x2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx r3
	blx FUN_020C8A2C
	b _02006A24
_020069C6:
	blx FUN_020C88CC
	ldr r0, [sp, #0x8]
	ldr r3, _02006A30 ; =0x020ECBB0
	lsl r4, r4, #0x2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx r3
	blx FUN_020C880C
	b _02006A24
_020069E0:
	blx FUN_020C89BC
	ldr r0, [sp, #0x8]
	ldr r3, _02006A30 ; =0x020ECBB0
	lsl r4, r4, #0x2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx r3
	blx FUN_020C88F0
	b _02006A24
_020069FA:
	blx FUN_020C87E8
	ldr r0, [sp, #0x8]
	ldr r3, _02006A30 ; =0x020ECBB0
	lsl r4, r4, #0x2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx r3
	blx FUN_020C8728
	b _02006A24
_02006A14:
	ldr r0, [sp, #0x8]
	ldr r3, _02006A30 ; =0x020ECBB0
	lsl r4, r4, #0x2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx r3
_02006A24:
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
_02006A2A:
	add sp, #0xc
	pop {r4-r7, pc}
	nop
_02006A30: .word 0x020ECBB0

	thumb_func_start FUN_02006A34
FUN_02006A34: ; 0x02006A34
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r2, #0x0
	mov r2, #0x1
	add r6, r3, #0x0
	str r2, [sp, #0x0]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r4, [sp, #0x20]
	bl FUN_02006C98
	add r7, r0, #0x0
	beq _02006A80
	add r1, sp, #0x4
	blx FUN_020B0088
	cmp r0, #0x0
	beq _02006A7A
	cmp r4, #0x0
	bne _02006A60
	ldr r0, [sp, #0x4]
	ldr r4, [r0, #0x10]
_02006A60:
	ldr r0, [sp, #0x4]
	add r1, r4, #0x0
	ldr r0, [r0, #0x14]
	blx DC_FlushRange
	ldr r0, [sp, #0x4]
	ldr r3, _02006A88 ; =0x020ECBA0
	lsl r5, r5, #0x2
	ldr r0, [r0, #0x14]
	ldr r3, [r3, r5]
	add r1, r6, #0x0
	add r2, r4, #0x0
	blx r3
_02006A7A:
	add r0, r7, #0x0
	bl FUN_02016A18
_02006A80:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_02006A88: .word 0x020ECBA0

	thumb_func_start FUN_02006A8C
FUN_02006A8C: ; 0x02006A8C
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r2, #0x0
	add r4, r3, #0x0
	mov r2, #0x1
	str r2, [sp, #0x0]
	ldr r3, [sp, #0x20]
	mov r2, #0x0
	bl FUN_02006C98
	add r6, r0, #0x0
	beq _02006AE0
	add r1, sp, #0x4
	blx FUN_020B00F0
	add r7, r0, #0x0
	add r0, r6, #0x0
	add r1, sp, #0x8
	blx FUN_020B0138
	cmp r0, #0x0
	beq _02006ADA
	cmp r7, #0x0
	beq _02006ACE
	ldr r0, [sp, #0x24]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x4]
	add r3, r5, #0x0
	blx FUN_020B10E8
	b _02006ADA
_02006ACE:
	ldr r0, [sp, #0x8]
	ldr r3, [sp, #0x24]
	add r1, r4, #0x0
	add r2, r5, #0x0
	blx FUN_020B1240
_02006ADA:
	add r0, r6, #0x0
	bl FUN_02016A18
_02006AE0:
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_02006AE4
FUN_02006AE4: ; 0x02006AE4
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r3, #0x0
	mov r3, #0x1
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x24]
	bl FUN_02006C98
	add r6, r0, #0x0
	ldr r4, _02006B30 ; =0x00000000
	beq _02006B28
	add r1, sp, #0x4
	blx FUN_020B0088
	cmp r0, #0x0
	beq _02006B22
	ldr r1, [sp, #0x18]
	cmp r1, #0x0
	beq _02006B0E
	ldr r0, [sp, #0x4]
	str r1, [r0, #0x10]
_02006B0E:
	ldr r4, _02006B34 ; =0x020ECBA8
	lsl r5, r5, #0x2
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	ldr r4, [r4, r5]
	blx r4
	ldr r0, [sp, #0x4]
	ldr r4, [r0, #0x10]
_02006B22:
	add r0, r6, #0x0
	bl FUN_02016A18
_02006B28:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r4-r6, pc}
	nop
_02006B30: .word 0x00000000
_02006B34: .word 0x020ECBA8

	thumb_func_start FUN_02006B38
FUN_02006B38: ; 0x02006B38
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r3, #0x0
	mov r3, #0x1
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x24]
	bl FUN_02006C98
	add r4, r0, #0x0
	beq _02006B9E
	add r1, sp, #0x4
	blx FUN_020B0088
	cmp r0, #0x0
	beq _02006B98
	ldr r1, [sp, #0x18]
	cmp r1, #0x0
	beq _02006B60
	ldr r0, [sp, #0x4]
	str r1, [r0, #0x10]
_02006B60:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1
	beq _02006B6C
	cmp r0, #0x2
	beq _02006B7C
	b _02006B88
_02006B6C:
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	ldr r0, _02006BA4 ; =0x00300010
	and r1, r0
	ldr r0, [sp, #0x4]
	str r1, [r0, #0x8]
	b _02006B88
_02006B7C:
	ldr r0, _02006BA8 ; =0x04001000
	ldr r1, [r0, #0x0]
	ldr r0, _02006BA4 ; =0x00300010
	and r1, r0
	ldr r0, [sp, #0x4]
	str r1, [r0, #0x8]
_02006B88:
	lsl r6, r5, #0x2
	ldr r5, _02006BAC ; =0x020ECB98
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x28]
	ldr r5, [r5, r6]
	blx r5
_02006B98:
	add r0, r4, #0x0
	bl FUN_02016A18
_02006B9E:
	add sp, #0x8
	pop {r4-r6, pc}
	nop
_02006BA4: .word 0x00300010
_02006BA8: .word 0x04001000
_02006BAC: .word 0x020ECB98

	thumb_func_start FUN_02006BB0
FUN_02006BB0: ; 0x02006BB0
	push {r3-r5, lr}
	add r4, r3, #0x0
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x10]
	bl FUN_02006C98
	add r5, r0, #0x0
	beq _02006BD6
	add r1, r4, #0x0
	blx FUN_020B0030
	cmp r0, #0x0
	bne _02006BD6
	add r0, r5, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r5, pc}
_02006BD6:
	add r0, r5, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02006BDC
FUN_02006BDC: ; 0x02006BDC
	push {r3-r5, lr}
	add r4, r3, #0x0
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x10]
	bl FUN_02006C98
	add r5, r0, #0x0
	beq _02006C02
	add r1, r4, #0x0
	blx FUN_020B0180
	cmp r0, #0x0
	bne _02006C02
	add r0, r5, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r5, pc}
_02006C02:
	add r0, r5, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02006C08
FUN_02006C08: ; 0x02006C08
	push {r3-r5, lr}
	add r5, r2, #0x0
	mov r2, #0x0
	str r2, [sp, #0x0]
	bl FUN_02006C98
	add r4, r0, #0x0
	beq _02006C2C
	add r1, r5, #0x0
	blx FUN_020B0138
	cmp r0, #0x0
	bne _02006C2C
	add r0, r4, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r5, pc}
_02006C2C:
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_02006C30
FUN_02006C30: ; 0x02006C30
	push {r3-r5, lr}
	add r4, r3, #0x0
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x10]
	bl FUN_02006C98
	add r5, r0, #0x0
	beq _02006C56
	add r1, r4, #0x0
	blx FUN_020AFEB8
	cmp r0, #0x0
	bne _02006C56
	add r0, r5, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r5, pc}
_02006C56:
	add r0, r5, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02006C5C
FUN_02006C5C: ; 0x02006C5C
	push {r3-r5, lr}
	add r4, r3, #0x0
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r3, [sp, #0x10]
	bl FUN_02006C98
	add r5, r0, #0x0
	beq _02006C82
	add r1, r4, #0x0
	blx FUN_020AFD94
	cmp r0, #0x0
	bne _02006C82
	add r0, r5, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r5, pc}
_02006C82:
	add r0, r5, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02006C88
FUN_02006C88: ; 0x02006C88
	push {r3, lr}
	add r3, r2, #0x0
	mov r2, #0x0
	str r2, [sp, #0x0]
	mov r2, #0x1
	bl FUN_02006C98
	pop {r3, pc}

	thumb_func_start FUN_02006C98
FUN_02006C98: ; 0x02006C98
	push {r3-r7, lr}
	add r5, r2, #0x0
	add r7, r0, #0x0
	add r6, r3, #0x0
	str r1, [sp, #0x0]
	cmp r5, #0x0
	bne _02006CAC
	ldr r2, [sp, #0x18]
	cmp r2, #0x1
	bne _02006CC0
_02006CAC:
	ldr r1, [sp, #0x0]
	add r0, r7, #0x0
	bl LoadFromNARC_7
	add r1, r0, #0x0
	add r0, r6, #0x0
	bl FUN_020169D8
	add r4, r0, #0x0
	b _02006CCE
_02006CC0:
	bl LoadFromNARC_7
	add r1, r0, #0x0
	add r0, r6, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
_02006CCE:
	cmp r4, #0x0
	beq _02006D12
	ldr r2, [sp, #0x0]
	add r0, r4, #0x0
	add r1, r7, #0x0
	bl LoadFromNARC
	cmp r5, #0x0
	beq _02006D12
	ldr r0, [sp, #0x18]
	cmp r0, #0x0
	bne _02006CF2
	ldr r1, [r4, #0x0]
	add r0, r6, #0x0
	lsr r1, r1, #0x8
	bl FUN_02016998
	b _02006CFC
_02006CF2:
	ldr r1, [r4, #0x0]
	add r0, r6, #0x0
	lsr r1, r1, #0x8
	bl FUN_020169D8
_02006CFC:
	add r5, r0, #0x0
	cmp r5, #0x0
	beq _02006D10
	add r0, r4, #0x0
	add r1, r5, #0x0
	blx MI_UncompressLZ8
	add r0, r4, #0x0
	bl FUN_02016A18
_02006D10:
	add r4, r5, #0x0
_02006D12:
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02006D18
FUN_02006D18: ; 0x02006D18
	push {r3-r7, lr}
	sub sp, #0x8
	ldr r5, [sp, #0x24]
	str r0, [sp, #0x0]
	str r1, [sp, #0x4]
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl LoadFromNARC_7
	str r0, [r5, #0x0]
	cmp r6, #0x0
	bne _02006D36
	ldr r0, [sp, #0x20]
	cmp r0, #0x1
	bne _02006D42
_02006D36:
	ldr r1, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_020169D8
	add r4, r0, #0x0
	b _02006D4C
_02006D42:
	ldr r1, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
_02006D4C:
	cmp r4, #0x0
	beq _02006D92
	ldr r1, [sp, #0x0]
	ldr r2, [sp, #0x4]
	add r0, r4, #0x0
	bl LoadFromNARC
	cmp r6, #0x0
	beq _02006D92
	ldr r0, [r4, #0x0]
	lsr r0, r0, #0x8
	str r0, [r5, #0x0]
	ldr r0, [sp, #0x20]
	cmp r0, #0x0
	bne _02006D74
	ldr r1, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_02016998
	b _02006D7C
_02006D74:
	ldr r1, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_020169D8
_02006D7C:
	add r5, r0, #0x0
	cmp r5, #0x0
	beq _02006D90
	add r0, r4, #0x0
	add r1, r5, #0x0
	blx MI_UncompressLZ8
	add r0, r4, #0x0
	bl FUN_02016A18
_02006D90:
	add r4, r5, #0x0
_02006D92:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02006D98
FUN_02006D98: ; 0x02006D98
	push {r3-r7, lr}
	sub sp, #0x10
	mov r1, #0xba
	lsl r1, r1, #0x2
	add r5, r0, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	mov r0, #0xa6
	lsl r0, r0, #0x2
	add r1, r0, #0x0
	add r3, r0, #0x0
	str r5, [r4, r0]
	mov r2, #0x0
	add r1, #0x48
	strb r2, [r4, r1]
	add r1, r0, #0x4
	str r2, [r4, r1]
	mov r1, #0x2
	lsl r1, r1, #0xe
	add r3, #0x8
	str r1, [r4, r3]
	add r3, r0, #0x0
	add r3, #0xc
	str r2, [r4, r3]
	mov r2, #0x80
	add r0, #0x10
	str r2, [r4, r0]
	add r0, r5, #0x0
	bl FUN_02016998
	mov r1, #0xab
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r5, #0x0
	mov r1, #0xc0
	bl FUN_02016998
	mov r1, #0x2b
	lsl r1, r1, #0x4
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0x0
	mov r2, #0x4
	blx MIi_CpuClearFast
	add r0, r5, #0x0
	mov r1, #0xc0
	bl FUN_02016998
	mov r1, #0xad
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0x0
	mov r2, #0x4
	blx MIi_CpuClearFast
	mov r6, #0x0
	add r5, r4, #0x0
	add r7, r6, #0x0
_02006E12:
	add r0, r7, #0x0
	add r1, r5, #0x0
	mov r2, #0x98
	blx MIi_CpuClearFast
	add r6, r6, #0x1
	add r5, #0x98
	cmp r6, #0x4
	blt _02006E12
	blx FUN_020B02C8
	ldr r2, _02006EC8 ; =0x000002E3
	mov r0, #0x0
	strb r0, [r4, r2]
	sub r2, #0x4b
	ldr r2, [r4, r2]
	mov r0, #0x75
	mov r1, #0xd3
	bl LoadFromNarc_2
	add r1, sp, #0xc
	str r0, [sp, #0x4]
	blx FUN_020B0088
	ldr r0, [sp, #0xc]
	mov r1, #0xaf
	ldr r0, [r0, #0x4]
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0x8]
	add r0, r1, #0x4
	str r2, [r4, r0]
	ldr r0, [sp, #0xc]
	add r1, #0x8
	ldr r0, [r0, #0xc]
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x8]
	bl FUN_02008A74
	ldr r1, [sp, #0x8]
	mov r0, #0xab
	lsl r0, r0, #0x2
	mov r2, #0x2
	ldrb r1, [r1, #0x0]
	ldr r0, [r4, r0]
	lsl r2, r2, #0xe
	blx MI_CpuFill8
	mov r0, #0x0
	mov r7, #0xab
	ldr r6, _02006ECC ; =0x00005050
	mov r12, r0
	str r0, [sp, #0x0]
	add r3, r0, #0x0
	lsl r7, r7, #0x2
_02006E86:
	ldr r2, [sp, #0x8]
	ldr r0, [sp, #0x0]
	mov r1, #0x0
	add r2, r2, r0
_02006E8E:
	ldr r5, [r4, r7]
	ldrb r0, [r2, #0x0]
	add r5, r3, r5
	add r5, r1, r5
	add r1, r1, #0x1
	add r2, r2, #0x1
	strb r0, [r5, r6]
	cmp r1, #0x28
	blt _02006E8E
	ldr r0, [sp, #0x0]
	add r3, #0x80
	add r0, #0x50
	str r0, [sp, #0x0]
	mov r0, r12
	add r0, r0, #0x1
	mov r12, r0
	cmp r0, #0x50
	blt _02006E86
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
	ldr r0, _02006ED0 ; =0x000002E1
	mov r1, #0x1
	strb r1, [r4, r0]
	add r0, r0, #0x1
	strb r1, [r4, r0]
	add r0, r4, #0x0
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4
_02006EC8: .word 0x000002E3
_02006ECC: .word 0x00005050
_02006ED0: .word 0x000002E1

	thumb_func_start FUN_02006ED4
FUN_02006ED4: ; 0x02006ED4
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	bl FUN_020082A8
	add r0, r5, #0x0
	bl FUN_020086F4
	blx FUN_020BB394
	mov r6, #0x9f
	mov r0, #0x0
	ldr r4, _02007250 ; =0x04000444
	lsl r6, r6, #0x2
	str r0, [r4, #0x0]
	str r0, [sp, #0x18]
	add r0, r6, #0x0
	sub r0, #0xc
	ldr r1, [r5, r0]
	add r3, r6, #0x0
	ldr r2, [r5, r6]
	add r0, r6, #0x0
	sub r3, #0x8
	add r6, #0x20
	ldr r3, [r5, r3]
	ldr r6, [r5, r6]
	sub r0, #0x10
	ldr r0, [r5, r0]
	lsr r6, r6, #0x3
	lsl r3, r3, #0x1a
	orr r6, r3
	mov r3, #0x1
	lsl r3, r3, #0x1e
	lsl r0, r0, #0x14
	orr r3, r6
	lsl r1, r1, #0x17
	orr r0, r3
	lsl r2, r2, #0x1d
	orr r0, r1
	orr r0, r2
	str r0, [r4, #0x64]
	ldr r0, [sp, #0x18]
	add r4, r5, #0x0
	str r0, [sp, #0x14]
	ldr r0, _02007254 ; =0x020ECD4C
	str r0, [sp, #0x1c]
_02006F30:
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02006F46
	ldr r0, [r4, #0x54]
	lsl r1, r0, #0x1f
	lsr r1, r1, #0x1f
	bne _02006F46
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	beq _02006F48
_02006F46:
	b _020072BC
_02006F48:
	ldr r2, [r4, #0x68]
	cmp r2, #0x0
	beq _02006F56
	add r1, r4, #0x0
	add r0, r4, #0x0
	add r1, #0x24
	blx r2
_02006F56:
	blx FUN_020BB394
	ldr r0, _02007258 ; =0x000002E3
	ldrb r0, [r5, r0]
	cmp r0, #0x1
	beq _02006F68
	ldr r0, _0200725C ; =0x04000454
	mov r1, #0x0
	str r1, [r0, #0x0]
_02006F68:
	add r0, r4, #0x0
	bl FUN_02007F48
	mov r0, #0x9d
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	cmp r0, #0x2
	bne _02006F7C
	mov r0, #0x1
	b _02006F7E
_02006F7C:
	mov r0, #0x0
_02006F7E:
	mov r1, #0xa9
	lsl r1, r1, #0x2
	ldr r2, [r5, r1]
	ldr r1, [sp, #0x14]
	add r2, r2, r1
	mov r1, #0x4
	sub r0, r1, r0
	add r1, r2, #0x0
	lsr r1, r0
	ldr r0, _02007260 ; =0x040004AC
	str r1, [r0, #0x0]
	ldr r0, [r4, #0x28]
	lsl r1, r0, #0xc
	mov r0, #0x26
	ldrsh r2, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	mov r2, #0x24
	ldrsh r3, [r4, r2]
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0xc
	add r2, r3, r2
	lsl r3, r2, #0xc
	ldr r2, _02007264 ; =0x04000470
	str r3, [r2, #0x0]
	str r0, [r2, #0x0]
	add r0, r2, #0x0
	str r1, [r0, #0x0]
	ldrh r0, [r4, #0x38]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02007268 ; =0x020FFA38
	add r2, r0, r1
	ldrsh r0, [r0, r1]
	mov r1, #0x2
	ldrsh r1, [r2, r1]
	blx FUN_020C8068
	ldrh r0, [r4, #0x3a]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02007268 ; =0x020FFA38
	add r2, r0, r1
	ldrsh r0, [r0, r1]
	mov r1, #0x2
	ldrsh r1, [r2, r1]
	blx FUN_020C802C
	ldrh r0, [r4, #0x3c]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02007268 ; =0x020FFA38
	add r2, r0, r1
	ldrsh r0, [r0, r1]
	mov r1, #0x2
	ldrsh r1, [r2, r1]
	blx FUN_020C7FF0
	ldr r0, [r4, #0x28]
	lsl r0, r0, #0xc
	neg r1, r0
	mov r0, #0x26
	ldrsh r2, [r4, r0]
	mov r0, #0x42
	ldrsh r0, [r4, r0]
	add r0, r2, r0
	mov r2, #0x24
	ldrsh r3, [r4, r2]
	mov r2, #0x40
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0xc
	neg r0, r0
	add r2, r3, r2
	lsl r2, r2, #0xc
	neg r3, r2
	ldr r2, _02007264 ; =0x04000470
	str r3, [r2, #0x0]
	str r0, [r2, #0x0]
	add r0, r2, #0x0
	str r1, [r0, #0x0]
	ldr r3, [r4, #0x50]
	lsl r0, r3, #0x11
	lsr r0, r0, #0x1b
	lsl r2, r3, #0x16
	lsl r1, r0, #0xa
	lsl r0, r3, #0x1b
	lsr r2, r2, #0x1b
	lsr r0, r0, #0x1b
	lsl r2, r2, #0x5
	orr r0, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	lsl r0, r3, #0x2
	lsr r0, r0, #0x1b
	lsl r1, r0, #0xa
	lsl r0, r3, #0xc
	lsl r3, r3, #0x7
	lsr r3, r3, #0x1b
	lsr r0, r0, #0x1b
	lsl r3, r3, #0x5
	orr r0, r3
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	add r1, r2, #0x0
	orr r1, r0
	mov r0, #0x2
	lsl r0, r0, #0xe
	orr r1, r0
	ldr r0, _0200726C ; =0x040004C0
	str r1, [r0, #0x0]
	ldr r1, _02007270 ; =0x00004210
	add r0, r0, #0x4
	str r1, [r0, #0x0]
	ldr r1, [r4, #0x0]
	ldr r0, [r4, #0x54]
	lsl r1, r1, #0x19
	lsl r0, r0, #0x19
	lsr r1, r1, #0x1a
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x18
	mov r1, #0xc0
	lsl r0, r0, #0x10
	orr r1, r2
	orr r1, r0
	ldr r0, _02007274 ; =0x040004A4
	str r1, [r0, #0x0]
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _02007104
	add r0, r4, #0x0
	add r0, #0x5b
	ldrb r0, [r0, #0x0]
	add r2, r4, #0x0
	add r2, #0x44
	lsl r1, r0, #0x4
	ldr r0, [sp, #0x1c]
	ldrb r3, [r2, #0x0]
	add r0, r0, r1
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0x4]
	ldr r1, [r2, r1]
	add r6, r3, r1
	add r1, r4, #0x0
	add r1, #0x46
	ldrb r1, [r1, #0x0]
	mov r12, r1
	add r1, r4, #0x0
	add r1, #0x45
	ldrb r2, [r1, #0x0]
	add r1, r2, r0
	add r0, r4, #0x0
	add r0, #0x47
	ldrb r7, [r0, #0x0]
	mov r0, r12
	add r0, r0, r6
	str r7, [sp, #0x0]
	str r6, [sp, #0x4]
	str r1, [sp, #0x8]
	str r0, [sp, #0xc]
	add r0, r7, r1
	str r0, [sp, #0x10]
	mov r1, #0x24
	ldrsh r1, [r4, r1]
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r1, #0x28
	add r1, r1, r3
	add r0, r0, r1
	mov r3, #0x26
	ldrsh r3, [r4, r3]
	mov r1, #0x2e
	lsl r0, r0, #0x10
	sub r3, #0x28
	add r2, r3, r2
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0x28]
	asr r0, r0, #0x10
	add r2, r1, r2
	mov r1, #0x6e
	ldrsb r1, [r4, r1]
	sub r1, r2, r1
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	add r2, r3, r2
	asr r1, r1, #0x10
	mov r3, r12
	blx FUN_020B0250
	b _02007174
_02007104:
	mov r0, #0x34
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	ldr r2, [sp, #0x1c]
	mul r0, r1
	asr r3, r0, #0x8
	mov r0, #0x36
	ldrsh r1, [r4, r0]
	mov r0, #0x50
	ldr r6, [sp, #0x1c]
	mul r0, r1
	asr r1, r0, #0x8
	add r0, r4, #0x0
	add r0, #0x5b
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x4
	str r1, [sp, #0x0]
	add r2, r2, r0
	ldr r0, [r6, r0]
	lsr r6, r1, #0x1f
	str r0, [sp, #0x4]
	ldr r0, [r2, #0x4]
	add r6, r1, r6
	str r0, [sp, #0x8]
	ldr r0, [r2, #0x8]
	asr r1, r6, #0x1
	str r0, [sp, #0xc]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x24
	ldrsh r2, [r4, r0]
	lsr r0, r3, #0x1f
	add r0, r3, r0
	asr r0, r0, #0x1
	sub r2, r2, r0
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	ldr r6, [r4, #0x28]
	add r0, r2, r0
	mov r2, #0x26
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r2, r2, r1
	mov r1, #0x2e
	ldrsh r1, [r4, r1]
	add r2, r2, r1
	mov r1, #0x6e
	ldrsb r1, [r4, r1]
	sub r1, r2, r1
	ldr r2, [r4, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r6, r2
	blx FUN_020B0250
_02007174:
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r1, r0, #0x1e
	lsr r1, r1, #0x1e
	beq _0200719A
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	beq _0200719A
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bne _0200719A
	mov r0, #0xb9
	lsl r0, r0, #0x2
	ldr r1, [r5, r0]
	mov r0, #0x1
	tst r0, r1
	beq _0200719C
_0200719A:
	b _020072BC
_0200719C:
	ldr r0, _02007258 ; =0x000002E3
	ldrb r0, [r5, r0]
	cmp r0, #0x1
	beq _020071AA
	ldr r0, _0200725C ; =0x04000454
	mov r1, #0x0
	str r1, [r0, #0x0]
_020071AA:
	mov r0, #0x9d
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	cmp r0, #0x2
	bne _020071B8
	mov r1, #0x1
	b _020071BA
_020071B8:
	mov r1, #0x0
_020071BA:
	add r2, r4, #0x0
	add r2, #0x6c
	ldrh r2, [r2, #0x0]
	mov r0, #0xa9
	lsl r0, r0, #0x2
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	add r2, r2, #0x3
	ldr r0, [r5, r0]
	lsl r2, r2, #0x5
	add r2, r0, r2
	mov r0, #0x4
	sub r0, r0, r1
	add r1, r2, #0x0
	lsr r1, r0
	ldr r0, _02007260 ; =0x040004AC
	str r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	beq _020071FA
	mov r0, #0x34
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0x6
	asr r3, r0, #0x8
	mov r0, #0x36
	ldrsh r0, [r4, r0]
	lsl r0, r0, #0x4
	asr r1, r0, #0x8
	b _020071FE
_020071FA:
	mov r3, #0x40
	mov r1, #0x10
_020071FE:
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02007220
	mov r0, #0x74
	ldrsh r2, [r4, r0]
	mov r0, #0x24
	mov r6, #0x2c
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0x0
	add r0, #0x70
	strh r2, [r0, #0x0]
_02007220:
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	beq _02007242
	mov r0, #0x76
	ldrsh r2, [r4, r0]
	mov r0, #0x26
	mov r6, #0x2e
	ldrsh r0, [r4, r0]
	ldrsh r6, [r4, r6]
	add r0, r0, r6
	add r2, r2, r0
	add r0, r4, #0x0
	add r0, #0x72
	strh r2, [r0, #0x0]
_02007242:
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	ldr r2, _02007278 ; =0x020ECBD0
	ldr r6, _02007278 ; =0x020ECBD0
	b _0200727C
	nop
_02007250: .word 0x04000444
_02007254: .word 0x020ECD4C
_02007258: .word 0x000002E3
_0200725C: .word 0x04000454
_02007260: .word 0x040004AC
_02007264: .word 0x04000470
_02007268: .word 0x020FFA38
_0200726C: .word 0x040004C0
_02007270: .word 0x00004210
_02007274: .word 0x040004A4
_02007278: .word 0x020ECBD0
_0200727C:
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x4
	str r1, [sp, #0x0]
	add r2, r2, r0
	ldr r0, [r6, r0]
	lsr r6, r1, #0x1f
	str r0, [sp, #0x4]
	ldr r0, [r2, #0x4]
	add r6, r1, r6
	str r0, [sp, #0x8]
	ldr r0, [r2, #0x8]
	asr r1, r6, #0x1
	str r0, [sp, #0xc]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x70
	ldrsh r2, [r4, r0]
	lsr r0, r3, #0x1f
	add r0, r3, r0
	asr r0, r0, #0x1
	sub r0, r2, r0
	mov r2, #0x72
	ldrsh r2, [r4, r2]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	sub r1, r2, r1
	lsl r1, r1, #0x10
	ldr r2, _020072E0 ; =0xFFFFFC18
	asr r1, r1, #0x10
	blx FUN_020B0250
_020072BC:
	ldr r0, [sp, #0x14]
	add r4, #0x98
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #0x1
	str r0, [sp, #0x18]
	cmp r0, #0x4
	bge _020072D6
	b _02006F30
_020072D6:
	ldr r0, _020072E4 ; =0x04000448
	mov r1, #0x1
	str r1, [r0, #0x0]
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4
_020072E0: .word 0xFFFFFC18
_020072E4: .word 0x04000448

	thumb_func_start FUN_020072E8
FUN_020072E8: ; 0x020072E8
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02016A18
	mov r0, #0x2b
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_02016A18
	mov r0, #0xad
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02007314
FUN_02007314: ; 0x02007314
	push {r3-r4}
	add r1, r0, #0x0
	mov r3, #0x0
	add r1, #0x59
	strb r3, [r1, #0x0]
	add r1, r3, #0x0
_02007320:
	add r2, r0, r3
	add r2, #0x5c
	add r3, r3, #0x1
	strb r1, [r2, #0x0]
	cmp r3, #0xa
	blt _02007320
	add r2, r0, #0x0
	add r2, #0x59
	ldrb r2, [r2, #0x0]
	lsl r2, r2, #0x1
	add r3, r0, r2
	mov r2, #0x84
	ldrsb r4, [r3, r2]
	add r3, r2, #0x0
	sub r3, #0x85
	cmp r4, r3
	bne _0200734A
	add r0, #0x5b
	strb r1, [r0, #0x0]
	pop {r3-r4}
	bx lr
_0200734A:
	add r1, r0, #0x0
	mov r3, #0x1
	add r1, #0x58
	strb r3, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x59
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x1
	add r1, r0, r1
	ldrsb r2, [r1, r2]
	add r1, r0, #0x0
	add r1, #0x5b
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x59
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x1
	add r1, r0, r1
	add r1, #0x85
	ldrb r1, [r1, #0x0]
	add r0, #0x5a
	strb r1, [r0, #0x0]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_0200737C
FUN_0200737C: ; 0x0200737C
	add r2, r0, #0x0
	ldr r3, _0200738C ; =MI_CpuCopy8
	add r2, #0x84
	add r0, r1, #0x0
	add r1, r2, #0x0
	mov r2, #0x14
	bx r3
	nop
_0200738C: .word MI_CpuCopy8

	thumb_func_start FUN_02007390
FUN_02007390: ; 0x02007390
	add r0, #0x58
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0200739C
	mov r0, #0x1
	bx lr
_0200739C:
	mov r0, #0x0
	bx lr

	thumb_func_start FUN_020073A0
FUN_020073A0: ; 0x020073A0
	push {r3-r7, lr}
	sub sp, #0x18
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r7, r2, #0x0
	str r3, [sp, #0x14]
	mov r4, #0x0
_020073AE:
	ldr r1, [r0, #0x0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	beq _020073BE
	add r4, r4, #0x1
	add r0, #0x98
	cmp r4, #0x4
	blt _020073AE
_020073BE:
	cmp r4, #0x4
	bne _020073C6
	bl ErrorHandling
_020073C6:
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x14]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x34]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	add r2, r7, #0x0
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_020073E8
	add sp, #0x18
	pop {r3-r7, pc}

	thumb_func_start FUN_020073E8
FUN_020073E8: ; 0x020073E8
	push {r4-r7, lr}
	sub sp, #0xc
	str r1, [sp, #0x8]
	ldr r1, [sp, #0x28]
	add r4, r0, #0x0
	mov r0, #0x98
	add r6, r1, #0x0
	mul r6, r0
	ldr r0, [r4, r6]
	str r2, [sp, #0x0]
	lsl r0, r0, #0x1f
	str r3, [sp, #0x4]
	lsr r0, r0, #0x1f
	beq _02007408
	bl ErrorHandling
_02007408:
	add r5, r4, r6
	mov r0, #0x0
	add r1, r5, #0x0
	mov r2, #0x98
	blx MIi_CpuClearFast
	ldr r1, [r4, r6]
	mov r0, #0x1
	bic r1, r0
	mov r0, #0x1
	orr r0, r1
	str r0, [r4, r6]
	ldr r1, [r4, r6]
	mov r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	mov r0, #0x80
	ldr r1, [r4, r6]
	add r0, #0x80
	orr r0, r1
	str r0, [r4, r6]
	add r2, r5, #0x0
	ldr r0, [r4, r6]
	mov r1, #0x7e
	bic r0, r1
	ldr r1, [sp, #0x24]
	add r7, r2, #0x4
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x19
	orr r0, r1
	str r0, [r4, r6]
	ldr r0, [sp, #0x8]
	mov r12, r0
	mov r3, r12
	ldmia r3!, {r0-r1}
	stmia r7!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r7!, {r0-r1}
	add r7, r2, #0x0
	ldr r3, [sp, #0x8]
	add r7, #0x14
	ldmia r3!, {r0-r1}
	stmia r7!, {r0-r1}
	str r3, [sp, #0x8]
	ldmia r3!, {r0-r1}
	stmia r7!, {r0-r1}
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r7, r1, #0x10
	strh r0, [r2, #0x24]
	str r3, [sp, #0x8]
	ldr r1, [sp, #0x20]
	strh r7, [r2, #0x26]
	str r1, [r2, #0x28]
	mov r1, #0x80
	add r1, #0x80
	strh r1, [r2, #0x34]
	strh r1, [r2, #0x36]
	ldr r1, [r5, #0x54]
	mov r3, #0x7c
	bic r1, r3
	mov r3, #0x7c
	orr r1, r3
	str r1, [r5, #0x54]
	ldr r1, [r5, #0x50]
	mov r3, #0x1f
	bic r1, r3
	mov r3, #0x1f
	orr r3, r1
	ldr r1, _02007520 ; =0xFFFFFC1F
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #0x5
	orr r3, r1
	ldr r1, _02007524 ; =0xFFFF83FF
	and r1, r3
	mov r3, #0x1f
	lsl r3, r3, #0xa
	orr r3, r1
	ldr r1, _02007528 ; =0xFFF07FFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0xc
	orr r3, r1
	ldr r1, _0200752C ; =0xFE0FFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x11
	orr r3, r1
	ldr r1, _02007530 ; =0xC1FFFFFF
	and r1, r3
	mov r3, #0x80
	lsl r3, r3, #0x16
	orr r1, r3
	str r1, [r5, #0x50]
	ldr r1, [sp, #0x30]
	str r1, [r2, #0x68]
	add r1, r2, #0x0
	add r1, #0x70
	strh r0, [r1, #0x0]
	add r2, #0x72
	add r0, r5, #0x0
	strh r7, [r2, #0x0]
	add r0, #0x6c
	ldrh r1, [r0, #0x0]
	mov r0, #0x4
	orr r1, r0
	add r0, r5, #0x0
	add r0, #0x6c
	strh r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x6c
	ldrh r1, [r0, #0x0]
	mov r0, #0x8
	orr r1, r0
	add r0, r5, #0x0
	add r0, #0x6c
	strh r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x6c
	ldrh r1, [r0, #0x0]
	mov r0, #0x10
	add r5, #0x6c
	orr r0, r1
	strh r0, [r5, #0x0]
	ldr r0, [sp, #0x2c]
	cmp r0, #0x0
	beq _02007518
	add r1, r4, r6
	add r1, #0x84
	mov r2, #0x14
	blx MI_CpuCopy8
_02007518:
	add r0, r4, r6
	add sp, #0xc
	pop {r4-r7, pc}
	nop
_02007520: .word 0xFFFFFC1F
_02007524: .word 0xFFFF83FF
_02007528: .word 0xFFF07FFF
_0200752C: .word 0xFE0FFFFF
_02007530: .word 0xC1FFFFFF

	thumb_func_start FUN_02007534
FUN_02007534: ; 0x02007534
	ldr r2, [r0, #0x0]
	mov r1, #0x1
	bic r2, r1
	str r2, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02007540
FUN_02007540: ; 0x02007540
	push {r3-r5, lr}
	add r5, r0, #0x0
	mov r4, #0x0
_02007546:
	add r0, r5, #0x0
	bl FUN_02007534
	add r4, r4, #0x1
	add r5, #0x98
	cmp r4, #0x4
	blt _02007546
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02007558
FUN_02007558: ; 0x02007558
	cmp r1, #0x2e
	bls _0200755E
	b _02007800
_0200755E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200756A: ; jump table (using 16-bit offset)
	.short _020075C8 - _0200756A - 2; case 0
	.short _020075CC - _0200756A - 2; case 1
	.short _020075D0 - _0200756A - 2; case 2
	.short _020075D4 - _0200756A - 2; case 3
	.short _020075D8 - _0200756A - 2; case 4
	.short _020075DC - _0200756A - 2; case 5
	.short _020075E0 - _0200756A - 2; case 6
	.short _020075F0 - _0200756A - 2; case 7
	.short _020075F4 - _0200756A - 2; case 8
	.short _020075F8 - _0200756A - 2; case 9
	.short _020075FC - _0200756A - 2; case 10
	.short _02007602 - _0200756A - 2; case 11
	.short _02007608 - _0200756A - 2; case 12
	.short _0200760C - _0200756A - 2; case 13
	.short _02007610 - _0200756A - 2; case 14
	.short _02007620 - _0200756A - 2; case 15
	.short _02007626 - _0200756A - 2; case 16
	.short _0200762C - _0200756A - 2; case 17
	.short _02007632 - _0200756A - 2; case 18
	.short _02007638 - _0200756A - 2; case 19
	.short _0200763E - _0200756A - 2; case 20
	.short _02007644 - _0200756A - 2; case 21
	.short _0200764A - _0200756A - 2; case 22
	.short _02007650 - _0200756A - 2; case 23
	.short _02007660 - _0200756A - 2; case 24
	.short _02007670 - _0200756A - 2; case 25
	.short _02007680 - _0200756A - 2; case 26
	.short _02007690 - _0200756A - 2; case 27
	.short _020076A0 - _0200756A - 2; case 28
	.short _020076B0 - _0200756A - 2; case 29
	.short _020076C0 - _0200756A - 2; case 30
	.short _020076DA - _0200756A - 2; case 31
	.short _020076E8 - _0200756A - 2; case 32
	.short _020076FA - _0200756A - 2; case 33
	.short _0200770C - _0200756A - 2; case 34
	.short _02007712 - _0200756A - 2; case 35
	.short _0200772A - _0200756A - 2; case 36
	.short _02007742 - _0200756A - 2; case 37
	.short _02007752 - _0200756A - 2; case 38
	.short _02007800 - _0200756A - 2; case 39
	.short _02007758 - _0200756A - 2; case 40
	.short _02007770 - _0200756A - 2; case 41
	.short _02007776 - _0200756A - 2; case 42
	.short _0200779A - _0200756A - 2; case 43
	.short _020077B4 - _0200756A - 2; case 44
	.short _020077CE - _0200756A - 2; case 45
	.short _020077E8 - _0200756A - 2; case 46
_020075C8:
	strh r2, [r0, #0x24]
	bx lr
_020075CC:
	strh r2, [r0, #0x26]
	bx lr
_020075D0:
	str r2, [r0, #0x28]
	bx lr
_020075D4:
	strh r2, [r0, #0x2c]
	bx lr
_020075D8:
	strh r2, [r0, #0x2e]
	bx lr
_020075DC:
	str r2, [r0, #0x30]
	bx lr
_020075E0:
	ldr r3, [r0, #0x54]
	mov r1, #0x1
	bic r3, r1
	mov r1, #0x1
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_020075F0:
	strh r2, [r0, #0x38]
	bx lr
_020075F4:
	strh r2, [r0, #0x3a]
	bx lr
_020075F8:
	strh r2, [r0, #0x3c]
	bx lr
_020075FC:
	add r0, #0x40
	strh r2, [r0, #0x0]
	bx lr
_02007602:
	add r0, #0x42
	strh r2, [r0, #0x0]
	bx lr
_02007608:
	strh r2, [r0, #0x34]
	bx lr
_0200760C:
	strh r2, [r0, #0x36]
	bx lr
_02007610:
	ldr r3, [r0, #0x54]
	mov r1, #0x2
	bic r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x1e
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007620:
	add r0, #0x44
	strb r2, [r0, #0x0]
	bx lr
_02007626:
	add r0, #0x45
	strb r2, [r0, #0x0]
	bx lr
_0200762C:
	add r0, #0x46
	strb r2, [r0, #0x0]
	bx lr
_02007632:
	add r0, #0x47
	strb r2, [r0, #0x0]
	bx lr
_02007638:
	add r0, #0x70
	strh r2, [r0, #0x0]
	bx lr
_0200763E:
	add r0, #0x72
	strh r2, [r0, #0x0]
	bx lr
_02007644:
	add r0, #0x74
	strh r2, [r0, #0x0]
	bx lr
_0200764A:
	add r0, #0x76
	strh r2, [r0, #0x0]
	bx lr
_02007650:
	ldr r3, [r0, #0x54]
	mov r1, #0x7c
	bic r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x19
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007660:
	ldr r3, [r0, #0x50]
	mov r1, #0x1f
	bic r3, r1
	mov r1, #0x1f
	and r1, r2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007670:
	ldr r3, [r0, #0x50]
	ldr r1, _02007804 ; =0xFFFFFC1F
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007680:
	ldr r3, [r0, #0x50]
	ldr r1, _02007808 ; =0xFFFF83FF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x11
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_02007690:
	ldr r3, [r0, #0x50]
	ldr r1, _0200780C ; =0xFFF07FFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0xc
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020076A0:
	ldr r3, [r0, #0x50]
	ldr r1, _02007810 ; =0xFE0FFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x7
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020076B0:
	ldr r3, [r0, #0x50]
	ldr r1, _02007814 ; =0xC1FFFFFF
	and r3, r1
	lsl r1, r2, #0x1b
	lsr r1, r1, #0x2
	orr r1, r3
	str r1, [r0, #0x50]
	bx lr
_020076C0:
	ldr r3, [r0, #0x54]
	ldr r1, _02007818 ; =0xFFFFEFFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x13
	orr r1, r3
	str r1, [r0, #0x54]
	mov r1, #0x1
	ldr r2, [r0, #0x0]
	lsl r1, r1, #0x8
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_020076DA:
	str r2, [r0, #0x4c]
	mov r1, #0x1
	ldr r2, [r0, #0x0]
	lsl r1, r1, #0x8
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_020076E8:
	add r1, r0, #0x0
	add r1, #0x48
	strb r2, [r1, #0x0]
	mov r1, #0x1
	ldr r2, [r0, #0x0]
	lsl r1, r1, #0x8
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_020076FA:
	add r1, r0, #0x0
	add r1, #0x49
	strb r2, [r1, #0x0]
	mov r1, #0x1
	ldr r2, [r0, #0x0]
	lsl r1, r1, #0x8
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_0200770C:
	add r0, #0x4a
	strb r2, [r0, #0x0]
	bx lr
_02007712:
	ldr r3, [r0, #0x54]
	ldr r1, _0200781C ; =0xFFFFFDFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x16
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0x0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_0200772A:
	ldr r3, [r0, #0x54]
	ldr r1, _02007820 ; =0xFFFFFBFF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x15
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0x0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_02007742:
	ldr r3, [r0, #0x54]
	ldr r1, _02007824 ; =0xFFFFF7FF
	and r3, r1
	lsl r1, r2, #0x1f
	lsr r1, r1, #0x14
	orr r1, r3
	str r1, [r0, #0x54]
	bx lr
_02007752:
	add r0, #0x5b
	strb r2, [r0, #0x0]
	bx lr
_02007758:
	ldr r3, [r0, #0x54]
	ldr r1, _02007828 ; =0xFFFE1FFF
	and r3, r1
	lsl r1, r2, #0x1c
	lsr r1, r1, #0xf
	orr r1, r3
	str r1, [r0, #0x54]
	ldr r2, [r0, #0x0]
	mov r1, #0x80
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_02007770:
	add r0, #0x6e
	strb r2, [r0, #0x0]
	bx lr
_02007776:
	add r1, r0, #0x0
	add r1, #0x6c
	ldrh r3, [r1, #0x0]
	mov r1, #0x3
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x3
	and r1, r2
	orr r3, r1
	add r1, r0, #0x0
	add r1, #0x6c
	strh r3, [r1, #0x0]
	ldr r1, [r0, #0x0]
	add r2, #0xfd
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
_0200779A:
	add r1, r0, #0x0
	add r1, #0x6c
	ldrh r3, [r1, #0x0]
	mov r1, #0x4
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r1, r3
	strh r1, [r0, #0x0]
	bx lr
_020077B4:
	add r1, r0, #0x0
	add r1, #0x6c
	ldrh r3, [r1, #0x0]
	mov r1, #0x8
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r3
	strh r1, [r0, #0x0]
	bx lr
_020077CE:
	add r1, r0, #0x0
	add r1, #0x6c
	ldrh r3, [r1, #0x0]
	mov r1, #0x10
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1b
	orr r1, r3
	strh r1, [r0, #0x0]
	bx lr
_020077E8:
	add r1, r0, #0x0
	add r1, #0x6c
	ldrh r3, [r1, #0x0]
	mov r1, #0x60
	add r0, #0x6c
	bic r3, r1
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x19
	orr r1, r3
	strh r1, [r0, #0x0]
_02007800:
	bx lr
	nop
_02007804: .word 0xFFFFFC1F
_02007808: .word 0xFFFF83FF
_0200780C: .word 0xFFF07FFF
_02007810: .word 0xFE0FFFFF
_02007814: .word 0xC1FFFFFF
_02007818: .word 0xFFFFEFFF
_0200781C: .word 0xFFFFFDFF
_02007820: .word 0xFFFFFBFF
_02007824: .word 0xFFFFF7FF
_02007828: .word 0xFFFE1FFF

	thumb_func_start FUN_0200782C
FUN_0200782C: ; 0x0200782C
	push {r3, lr}
	cmp r1, #0x2e
	bls _02007834
	b _020079D6
_02007834:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02007840: ; jump table (using 16-bit offset)
	.short _0200789E - _02007840 - 2; case 0
	.short _020078A4 - _02007840 - 2; case 1
	.short _020078AA - _02007840 - 2; case 2
	.short _020078AE - _02007840 - 2; case 3
	.short _020078B4 - _02007840 - 2; case 4
	.short _020078BA - _02007840 - 2; case 5
	.short _020078BE - _02007840 - 2; case 6
	.short _020078C6 - _02007840 - 2; case 7
	.short _020078CA - _02007840 - 2; case 8
	.short _020078CE - _02007840 - 2; case 9
	.short _020078D2 - _02007840 - 2; case 10
	.short _020078D8 - _02007840 - 2; case 11
	.short _020078DE - _02007840 - 2; case 12
	.short _020078E4 - _02007840 - 2; case 13
	.short _020078EA - _02007840 - 2; case 14
	.short _020078F2 - _02007840 - 2; case 15
	.short _020078F8 - _02007840 - 2; case 16
	.short _020078FE - _02007840 - 2; case 17
	.short _02007904 - _02007840 - 2; case 18
	.short _0200790A - _02007840 - 2; case 19
	.short _02007910 - _02007840 - 2; case 20
	.short _02007916 - _02007840 - 2; case 21
	.short _0200791C - _02007840 - 2; case 22
	.short _02007922 - _02007840 - 2; case 23
	.short _0200792A - _02007840 - 2; case 24
	.short _02007932 - _02007840 - 2; case 25
	.short _0200793A - _02007840 - 2; case 26
	.short _02007942 - _02007840 - 2; case 27
	.short _0200794A - _02007840 - 2; case 28
	.short _02007952 - _02007840 - 2; case 29
	.short _0200795A - _02007840 - 2; case 30
	.short _02007962 - _02007840 - 2; case 31
	.short _02007966 - _02007840 - 2; case 32
	.short _0200796C - _02007840 - 2; case 33
	.short _02007972 - _02007840 - 2; case 34
	.short _02007978 - _02007840 - 2; case 35
	.short _02007980 - _02007840 - 2; case 36
	.short _02007988 - _02007840 - 2; case 37
	.short _02007990 - _02007840 - 2; case 38
	.short _020079D6 - _02007840 - 2; case 39
	.short _02007996 - _02007840 - 2; case 40
	.short _0200799E - _02007840 - 2; case 41
	.short _020079A4 - _02007840 - 2; case 42
	.short _020079AE - _02007840 - 2; case 43
	.short _020079B8 - _02007840 - 2; case 44
	.short _020079C2 - _02007840 - 2; case 45
	.short _020079CC - _02007840 - 2; case 46
_0200789E:
	mov r1, #0x24
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078A4:
	mov r1, #0x26
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078AA:
	ldr r0, [r0, #0x28]
	pop {r3, pc}
_020078AE:
	mov r1, #0x2c
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078B4:
	mov r1, #0x2e
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078BA:
	ldr r0, [r0, #0x30]
	pop {r3, pc}
_020078BE:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020078C6:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
_020078CA:
	ldrh r0, [r0, #0x3a]
	pop {r3, pc}
_020078CE:
	ldrh r0, [r0, #0x3c]
	pop {r3, pc}
_020078D2:
	mov r1, #0x40
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078D8:
	mov r1, #0x42
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078DE:
	mov r1, #0x34
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078E4:
	mov r1, #0x36
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_020078EA:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020078F2:
	add r0, #0x44
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_020078F8:
	add r0, #0x45
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_020078FE:
	add r0, #0x46
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_02007904:
	add r0, #0x47
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_0200790A:
	mov r1, #0x70
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02007910:
	mov r1, #0x72
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02007916:
	mov r1, #0x74
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_0200791C:
	mov r1, #0x76
	ldrsh r0, [r0, r1]
	pop {r3, pc}
_02007922:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0200792A:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02007932:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0200793A:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02007942:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0xc
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0200794A:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x7
	lsr r0, r0, #0x1b
	pop {r3, pc}
_02007952:
	ldr r0, [r0, #0x50]
	lsl r0, r0, #0x2
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0200795A:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02007962:
	ldr r0, [r0, #0x4c]
	pop {r3, pc}
_02007966:
	add r0, #0x48
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_0200796C:
	add r0, #0x49
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_02007972:
	add r0, #0x4a
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_02007978:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x16
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02007980:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02007988:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1f
	pop {r3, pc}
_02007990:
	add r0, #0x5b
	ldrb r0, [r0, #0x0]
	pop {r3, pc}
_02007996:
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	pop {r3, pc}
_0200799E:
	mov r1, #0x6e
	ldrsb r0, [r0, r1]
	pop {r3, pc}
_020079A4:
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	pop {r3, pc}
_020079AE:
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020079B8:
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020079C2:
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	pop {r3, pc}
_020079CC:
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	pop {r3, pc}
_020079D6:
	bl ErrorHandling
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_020079E0
FUN_020079E0: ; 0x020079E0
	push {r3-r4}
	add r3, r0, #0x0
	add r0, r2, #0x0
	cmp r1, #0x2e
	bls _020079EC
	b _02007E12
_020079EC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020079F8: ; jump table (using 16-bit offset)
	.short _02007A56 - _020079F8 - 2; case 0
	.short _02007A62 - _020079F8 - 2; case 1
	.short _02007A6E - _020079F8 - 2; case 2
	.short _02007A78 - _020079F8 - 2; case 3
	.short _02007A84 - _020079F8 - 2; case 4
	.short _02007A90 - _020079F8 - 2; case 5
	.short _02007A9A - _020079F8 - 2; case 6
	.short _02007AB4 - _020079F8 - 2; case 7
	.short _02007ABE - _020079F8 - 2; case 8
	.short _02007AC8 - _020079F8 - 2; case 9
	.short _02007AD2 - _020079F8 - 2; case 10
	.short _02007AE0 - _020079F8 - 2; case 11
	.short _02007AEE - _020079F8 - 2; case 12
	.short _02007AFA - _020079F8 - 2; case 13
	.short _02007B06 - _020079F8 - 2; case 14
	.short _02007B20 - _020079F8 - 2; case 15
	.short _02007B30 - _020079F8 - 2; case 16
	.short _02007B40 - _020079F8 - 2; case 17
	.short _02007B50 - _020079F8 - 2; case 18
	.short _02007B60 - _020079F8 - 2; case 19
	.short _02007B6E - _020079F8 - 2; case 20
	.short _02007B7C - _020079F8 - 2; case 21
	.short _02007B8A - _020079F8 - 2; case 22
	.short _02007B98 - _020079F8 - 2; case 23
	.short _02007BB2 - _020079F8 - 2; case 24
	.short _02007BCC - _020079F8 - 2; case 25
	.short _02007BE4 - _020079F8 - 2; case 26
	.short _02007BFC - _020079F8 - 2; case 27
	.short _02007C14 - _020079F8 - 2; case 28
	.short _02007C2C - _020079F8 - 2; case 29
	.short _02007C44 - _020079F8 - 2; case 30
	.short _02007C66 - _020079F8 - 2; case 31
	.short _02007C7A - _020079F8 - 2; case 32
	.short _02007C96 - _020079F8 - 2; case 33
	.short _02007CB2 - _020079F8 - 2; case 34
	.short _02007CC2 - _020079F8 - 2; case 35
	.short _02007CE2 - _020079F8 - 2; case 36
	.short _02007D02 - _020079F8 - 2; case 37
	.short _02007D1A - _020079F8 - 2; case 38
	.short _02007E12 - _020079F8 - 2; case 39
	.short _02007D2A - _020079F8 - 2; case 40
	.short _02007D4A - _020079F8 - 2; case 41
	.short _02007D58 - _020079F8 - 2; case 42
	.short _02007D86 - _020079F8 - 2; case 43
	.short _02007DAA - _020079F8 - 2; case 44
	.short _02007DCE - _020079F8 - 2; case 45
	.short _02007DF2 - _020079F8 - 2; case 46
_02007A56:
	mov r1, #0x24
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x24]
	pop {r3-r4}
	bx lr
_02007A62:
	mov r1, #0x26
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x26]
	pop {r3-r4}
	bx lr
_02007A6E:
	ldr r1, [r3, #0x28]
	add r0, r1, r0
	str r0, [r3, #0x28]
	pop {r3-r4}
	bx lr
_02007A78:
	mov r1, #0x2c
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2c]
	pop {r3-r4}
	bx lr
_02007A84:
	mov r1, #0x2e
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x2e]
	pop {r3-r4}
	bx lr
_02007A90:
	ldr r1, [r3, #0x30]
	add r0, r1, r0
	str r0, [r3, #0x30]
	pop {r3-r4}
	bx lr
_02007A9A:
	ldr r4, [r3, #0x54]
	mov r2, #0x1
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1f
	lsr r2, r2, #0x1f
	add r2, r2, r0
	mov r0, #0x1
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3-r4}
	bx lr
_02007AB4:
	ldrh r1, [r3, #0x38]
	add r0, r1, r0
	strh r0, [r3, #0x38]
	pop {r3-r4}
	bx lr
_02007ABE:
	ldrh r1, [r3, #0x3a]
	add r0, r1, r0
	strh r0, [r3, #0x3a]
	pop {r3-r4}
	bx lr
_02007AC8:
	ldrh r1, [r3, #0x3c]
	add r0, r1, r0
	strh r0, [r3, #0x3c]
	pop {r3-r4}
	bx lr
_02007AD2:
	mov r1, #0x40
	ldrsh r1, [r3, r1]
	add r3, #0x40
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007AE0:
	mov r1, #0x42
	ldrsh r1, [r3, r1]
	add r3, #0x42
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007AEE:
	mov r1, #0x34
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x34]
	pop {r3-r4}
	bx lr
_02007AFA:
	mov r1, #0x36
	ldrsh r1, [r3, r1]
	add r0, r1, r0
	strh r0, [r3, #0x36]
	pop {r3-r4}
	bx lr
_02007B06:
	ldr r4, [r3, #0x54]
	mov r2, #0x2
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1e
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3-r4}
	bx lr
_02007B20:
	add r1, r3, #0x0
	add r1, #0x44
	ldrb r1, [r1, #0x0]
	add r3, #0x44
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B30:
	add r1, r3, #0x0
	add r1, #0x45
	ldrb r1, [r1, #0x0]
	add r3, #0x45
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B40:
	add r1, r3, #0x0
	add r1, #0x46
	ldrb r1, [r1, #0x0]
	add r3, #0x46
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B50:
	add r1, r3, #0x0
	add r1, #0x47
	ldrb r1, [r1, #0x0]
	add r3, #0x47
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B60:
	mov r1, #0x70
	ldrsh r1, [r3, r1]
	add r3, #0x70
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B6E:
	mov r1, #0x72
	ldrsh r1, [r3, r1]
	add r3, #0x72
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B7C:
	mov r1, #0x74
	ldrsh r1, [r3, r1]
	add r3, #0x74
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B8A:
	mov r1, #0x76
	ldrsh r1, [r3, r1]
	add r3, #0x76
	add r0, r1, r0
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007B98:
	ldr r4, [r3, #0x54]
	mov r2, #0x7c
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x19
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3-r4}
	bx lr
_02007BB2:
	ldr r4, [r3, #0x50]
	mov r2, #0x1f
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1b
	add r2, r2, r0
	mov r0, #0x1f
	and r0, r2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007BCC:
	ldr r2, [r3, #0x50]
	ldr r1, _02007E18 ; =0xFFFFFC1F
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007BE4:
	ldr r2, [r3, #0x50]
	ldr r1, _02007E1C ; =0xFFFF83FF
	and r1, r2
	lsl r2, r2, #0x11
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x11
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007BFC:
	ldr r2, [r3, #0x50]
	ldr r1, _02007E20 ; =0xFFF07FFF
	and r1, r2
	lsl r2, r2, #0xc
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007C14:
	ldr r2, [r3, #0x50]
	ldr r1, _02007E24 ; =0xFE0FFFFF
	and r1, r2
	lsl r2, r2, #0x7
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x7
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007C2C:
	ldr r2, [r3, #0x50]
	ldr r1, _02007E28 ; =0xC1FFFFFF
	and r1, r2
	lsl r2, r2, #0x2
	lsr r2, r2, #0x1b
	add r0, r2, r0
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x2
	orr r0, r1
	str r0, [r3, #0x50]
	pop {r3-r4}
	bx lr
_02007C44:
	ldr r2, [r3, #0x54]
	ldr r1, _02007E2C ; =0xFFFFEFFF
	and r1, r2
	lsl r2, r2, #0x13
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x13
	orr r0, r1
	str r0, [r3, #0x54]
	mov r0, #0x1
	ldr r1, [r3, #0x0]
	lsl r0, r0, #0x8
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007C66:
	ldr r1, [r3, #0x4c]
	add r0, r1, r0
	str r0, [r3, #0x4c]
	mov r0, #0x1
	ldr r1, [r3, #0x0]
	lsl r0, r0, #0x8
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007C7A:
	add r1, r3, #0x0
	add r1, #0x48
	ldrb r1, [r1, #0x0]
	add r1, r1, r0
	add r0, r3, #0x0
	add r0, #0x48
	strb r1, [r0, #0x0]
	mov r0, #0x1
	ldr r1, [r3, #0x0]
	lsl r0, r0, #0x8
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007C96:
	add r1, r3, #0x0
	add r1, #0x49
	ldrb r1, [r1, #0x0]
	add r1, r1, r0
	add r0, r3, #0x0
	add r0, #0x49
	strb r1, [r0, #0x0]
	mov r0, #0x1
	ldr r1, [r3, #0x0]
	lsl r0, r0, #0x8
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007CB2:
	add r1, r3, #0x0
	add r1, #0x4a
	ldrb r1, [r1, #0x0]
	add r3, #0x4a
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007CC2:
	ldr r2, [r3, #0x54]
	ldr r1, _02007E30 ; =0xFFFFFDFF
	and r1, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x16
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0x0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007CE2:
	ldr r2, [r3, #0x54]
	ldr r1, _02007E34 ; =0xFFFFFBFF
	and r1, r2
	lsl r2, r2, #0x15
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x15
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0x0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007D02:
	ldr r2, [r3, #0x54]
	ldr r1, _02007E38 ; =0xFFFFF7FF
	and r1, r2
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x14
	orr r0, r1
	str r0, [r3, #0x54]
	pop {r3-r4}
	bx lr
_02007D1A:
	add r1, r3, #0x0
	add r1, #0x5b
	ldrb r1, [r1, #0x0]
	add r3, #0x5b
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007D2A:
	ldr r2, [r3, #0x54]
	ldr r1, _02007E3C ; =0xFFFE1FFF
	and r1, r2
	lsl r2, r2, #0xf
	lsr r2, r2, #0x1c
	add r0, r2, r0
	lsl r0, r0, #0x1c
	lsr r0, r0, #0xf
	orr r0, r1
	str r0, [r3, #0x54]
	ldr r1, [r3, #0x0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007D4A:
	mov r1, #0x6e
	ldrsb r1, [r3, r1]
	add r3, #0x6e
	add r0, r1, r0
	strb r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007D58:
	add r1, r3, #0x0
	add r1, #0x6c
	ldrh r4, [r1, #0x0]
	mov r2, #0x3
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1e
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #0x3
	and r0, r2
	orr r1, r0
	add r0, r3, #0x0
	add r0, #0x6c
	strh r1, [r0, #0x0]
	ldr r0, [r3, #0x0]
	add r2, #0xfd
	orr r0, r2
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007D86:
	add r1, r3, #0x0
	add r1, #0x6c
	ldrh r4, [r1, #0x0]
	mov r2, #0x4
	add r3, #0x6c
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1d
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1d
	orr r0, r1
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007DAA:
	add r1, r3, #0x0
	add r1, #0x6c
	ldrh r4, [r1, #0x0]
	mov r2, #0x8
	add r3, #0x6c
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1c
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1c
	orr r0, r1
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007DCE:
	add r1, r3, #0x0
	add r1, #0x6c
	ldrh r4, [r1, #0x0]
	mov r2, #0x10
	add r3, #0x6c
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x1b
	lsr r2, r2, #0x1f
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1b
	orr r0, r1
	strh r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_02007DF2:
	add r1, r3, #0x0
	add r1, #0x6c
	ldrh r4, [r1, #0x0]
	mov r2, #0x60
	add r3, #0x6c
	add r1, r4, #0x0
	bic r1, r2
	lsl r2, r4, #0x19
	lsr r2, r2, #0x1e
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x19
	orr r0, r1
	strh r0, [r3, #0x0]
_02007E12:
	pop {r3-r4}
	bx lr
	nop
_02007E18: .word 0xFFFFFC1F
_02007E1C: .word 0xFFFF83FF
_02007E20: .word 0xFFF07FFF
_02007E24: .word 0xFE0FFFFF
_02007E28: .word 0xC1FFFFFF
_02007E2C: .word 0xFFFFEFFF
_02007E30: .word 0xFFFFFDFF
_02007E34: .word 0xFFFFFBFF
_02007E38: .word 0xFFFFF7FF
_02007E3C: .word 0xFFFE1FFF

	thumb_func_start FUN_02007E40
FUN_02007E40: ; 0x02007E40
	push {r4-r5}
	ldr r5, [r0, #0x54]
	mov r4, #0x2
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0x0
	add r4, #0x44
	strb r1, [r4, #0x0]
	add r1, r0, #0x0
	add r1, #0x45
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x46
	strb r3, [r1, #0x0]
	ldr r1, [sp, #0x8]
	add r0, #0x47
	strb r1, [r0, #0x0]
	pop {r4-r5}
	bx lr
	.balign 4

	thumb_func_start FUN_02007E68
FUN_02007E68: ; 0x02007E68
	push {r4-r5}
	mov r4, #0x1
	ldr r5, [r0, #0x54]
	lsl r4, r4, #0xc
	orr r4, r5
	str r4, [r0, #0x54]
	add r4, r0, #0x0
	add r4, #0x48
	strb r1, [r4, #0x0]
	add r1, r0, #0x0
	add r1, #0x49
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	mov r2, #0x0
	add r1, #0x4a
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x4b
	strb r3, [r1, #0x0]
	ldr r1, [sp, #0x8]
	str r1, [r0, #0x4c]
	pop {r4-r5}
	bx lr
	.balign 4

	thumb_func_start FUN_02007E98
FUN_02007E98: ; 0x02007E98
	push {r4-r7}
	add r4, r0, #0x0
	add r0, r1, #0x0
	add r5, r2, #0x0
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	lsl r0, r5, #0x18
	lsr r5, r0, #0x18
	lsl r0, r3, #0x18
	ldr r2, [sp, #0x10]
	mov r1, #0x0
	lsr r0, r0, #0x18
_02007EB0:
	ldr r3, [r4, #0x0]
	lsl r3, r3, #0x1f
	lsr r3, r3, #0x1f
	beq _02007EDE
	mov r3, #0x1
	ldr r7, [r4, #0x54]
	lsl r3, r3, #0xc
	orr r3, r7
	str r3, [r4, #0x54]
	add r3, r4, #0x0
	add r3, #0x48
	strb r6, [r3, #0x0]
	add r3, r4, #0x0
	add r3, #0x49
	add r7, r4, #0x0
	strb r5, [r3, #0x0]
	add r7, #0x4a
	mov r3, #0x0
	strb r3, [r7, #0x0]
	add r3, r4, #0x0
	add r3, #0x4b
	strb r0, [r3, #0x0]
	str r2, [r4, #0x4c]
_02007EDE:
	add r1, r1, #0x1
	add r4, #0x98
	cmp r1, #0x4
	blt _02007EB0
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_02007EEC
FUN_02007EEC: ; 0x02007EEC
	ldr r2, [r0, #0x54]
	ldr r1, _02007F1C ; =0xFFFFEFFF
	and r1, r2
	str r1, [r0, #0x54]
	add r1, r0, #0x0
	mov r2, #0x0
	add r1, #0x48
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x49
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x4a
	strb r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x4b
	strb r2, [r1, #0x0]
	str r2, [r0, #0x4c]
	mov r1, #0x1
	ldr r2, [r0, #0x0]
	lsl r1, r1, #0x8
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_02007F1C: .word 0xFFFFEFFF

	thumb_func_start FUN_02007F20
FUN_02007F20: ; 0x02007F20
	ldr r0, [r0, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	cmp r0, #0x1
	bne _02007F2E
	mov r0, #0x1
	bx lr
_02007F2E:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_02007F34
FUN_02007F34: ; 0x02007F34
	mov r2, #0x28
	sub r2, r2, r1
	mov r1, #0x36
	ldrsh r1, [r0, r1]
	mul r1, r2
	asr r1, r1, #0x8
	sub r1, r2, r1
	strh r1, [r0, #0x2e]
	bx lr
	.balign 4

	thumb_func_start FUN_02007F48
FUN_02007F48: ; 0x02007F48
	push {r4-r7}
	add r1, r0, #0x0
	add r1, #0x58
	ldrb r1, [r1, #0x0]
	add r6, r0, #0x0
	add r6, #0x59
	cmp r1, #0x0
	beq _0200800A
	add r1, r0, #0x0
	add r1, #0x5a
	ldrb r1, [r1, #0x0]
	cmp r1, #0x0
	bne _02007FFE
	ldrb r1, [r6, #0x0]
	add r1, r1, #0x1
	strb r1, [r6, #0x0]
	ldrb r3, [r6, #0x0]
	mov r1, #0x84
	lsl r4, r3, #0x1
	add r2, r0, r4
	ldrsb r2, [r2, r1]
	sub r1, #0x85
	cmp r2, r1
	bge _02007FC6
	mov r2, #0x0
	sub r1, r2, #0x2
_02007F7C:
	add r4, r0, r3
	add r4, #0x5c
	ldrb r4, [r4, #0x0]
	add r3, r0, r3
	add r3, #0x5c
	add r4, r4, #0x1
	strb r4, [r3, #0x0]
	ldrb r5, [r6, #0x0]
	lsl r3, r5, #0x1
	add r4, r0, r3
	add r3, r4, #0x0
	add r7, r0, r5
	add r3, #0x85
	add r7, #0x5c
	ldrb r3, [r3, #0x0]
	ldrb r7, [r7, #0x0]
	cmp r3, r7
	beq _02007FA4
	cmp r3, #0x0
	bne _02007FAE
_02007FA4:
	add r3, r0, r5
	add r3, #0x5c
	strb r2, [r3, #0x0]
	add r6, r6, #0x1
	b _02007FB6
_02007FAE:
	mov r3, #0x84
	ldrsb r3, [r4, r3]
	sub r3, r1, r3
	strb r3, [r6, #0x0]
_02007FB6:
	ldrb r3, [r6, #0x0]
	mov r5, #0x84
	lsl r4, r3, #0x1
	add r7, r0, r4
	ldrsb r7, [r7, r5]
	sub r5, #0x85
	cmp r7, r5
	blt _02007F7C
_02007FC6:
	add r2, r0, r4
	mov r1, #0x84
	ldrsb r2, [r2, r1]
	sub r1, #0x85
	cmp r2, r1
	beq _02007FD6
	cmp r3, #0xa
	blo _02007FE6
_02007FD6:
	add r1, r0, #0x0
	mov r2, #0x0
	add r1, #0x5b
	strb r2, [r1, #0x0]
	add r0, #0x58
	strb r2, [r0, #0x0]
	pop {r4-r7}
	bx lr
_02007FE6:
	add r1, r0, #0x0
	add r1, #0x5b
	strb r2, [r1, #0x0]
	ldrb r1, [r6, #0x0]
	lsl r1, r1, #0x1
	add r1, r0, r1
	add r1, #0x85
	ldrb r1, [r1, #0x0]
	add r0, #0x5a
	strb r1, [r0, #0x0]
	pop {r4-r7}
	bx lr
_02007FFE:
	add r1, r0, #0x0
	add r1, #0x5a
	ldrb r1, [r1, #0x0]
	add r0, #0x5a
	sub r1, r1, #0x1
	strb r1, [r0, #0x0]
_0200800A:
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_02008010
FUN_02008010: ; 0x02008010
	mov r2, #0x1
	strb r2, [r0, #0x0]
	mov r3, #0x0
	strb r3, [r0, #0x2]
	ldrsb r2, [r1, r3]
	strb r2, [r0, #0x1]
	ldrb r2, [r1, #0x1]
	strb r2, [r0, #0x3]
	str r1, [r0, #0x10]
	add r2, r3, #0x0
_02008024:
	add r1, r0, r3
	add r3, r3, #0x1
	strb r2, [r1, #0x4]
	cmp r3, #0xa
	blt _02008024
	bx lr

	thumb_func_start FUN_02008030
FUN_02008030: ; 0x02008030
	push {r4-r7}
	ldrb r1, [r0, #0x0]
	cmp r1, #0x0
	beq _020080C6
	add r3, r0, #0x2
	ldr r4, [r0, #0x10]
	cmp r1, #0x0
	beq _020080C0
	ldrb r1, [r0, #0x3]
	cmp r1, #0x0
	bne _020080BC
	ldrb r1, [r3, #0x0]
	add r1, r1, #0x1
	strb r1, [r3, #0x0]
	ldrb r2, [r3, #0x0]
	mov r1, #0x0
	mvn r1, r1
	lsl r5, r2, #0x1
	ldrsb r6, [r4, r5]
	cmp r6, r1
	bge _02008098
	mov r1, #0x0
_0200805C:
	add r5, r0, r2
	ldrb r2, [r5, #0x4]
	add r2, r2, #0x1
	strb r2, [r5, #0x4]
	ldrb r2, [r3, #0x0]
	add r5, r0, r2
	lsl r2, r2, #0x1
	add r2, r4, r2
	ldrb r7, [r2, #0x1]
	ldrb r6, [r5, #0x4]
	cmp r7, r6
	beq _02008078
	cmp r7, #0x0
	bne _0200807E
_02008078:
	strb r1, [r5, #0x4]
	add r3, r3, #0x1
	b _0200808A
_0200807E:
	mov r5, #0x0
	ldrsb r5, [r2, r5]
	mov r2, #0x1
	mvn r2, r2
	sub r2, r2, r5
	strb r2, [r3, #0x0]
_0200808A:
	ldrb r2, [r3, #0x0]
	mov r6, #0x0
	mvn r6, r6
	lsl r5, r2, #0x1
	ldrsb r7, [r4, r5]
	cmp r7, r6
	blt _0200805C
_02008098:
	ldrsb r5, [r4, r5]
	mov r1, #0x0
	mvn r1, r1
	cmp r5, r1
	beq _020080A6
	cmp r2, #0xa
	blo _020080AE
_020080A6:
	mov r1, #0x0
	strb r1, [r0, #0x1]
	strb r1, [r0, #0x0]
	b _020080C0
_020080AE:
	strb r5, [r0, #0x1]
	ldrb r1, [r3, #0x0]
	lsl r1, r1, #0x1
	add r1, r4, r1
	ldrb r1, [r1, #0x1]
	strb r1, [r0, #0x3]
	b _020080C0
_020080BC:
	sub r1, r1, #0x1
	strb r1, [r0, #0x3]
_020080C0:
	ldrb r0, [r0, #0x1]
	pop {r4-r7}
	bx lr
_020080C6:
	mov r0, #0x0
	mvn r0, r0
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_020080D0
FUN_020080D0: ; 0x020080D0
	ldr r2, [r0, #0x0]
	mov r1, #0x80
	orr r2, r1
	add r1, #0x80
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_020080E0
FUN_020080E0: ; 0x020080E0
	push {r3-r4}
	add r2, r0, #0x0
	add r3, r2, #0x0
	add r4, r2, #0x4
	add r3, #0x14
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r2, #0x0
	add r0, #0x6c
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x78
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x6e
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7a
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x70
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7c
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x72
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7e
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x74
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x80
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x76
	ldrh r0, [r0, #0x0]
	add r2, #0x82
	strh r0, [r2, #0x0]
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0200813C
FUN_0200813C: ; 0x0200813C
	push {r3-r4}
	add r2, r0, #0x0
	add r4, r2, #0x0
	add r4, #0x14
	add r3, r2, #0x4
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r2, #0x0
	add r0, #0x78
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x6c
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7a
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x6e
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7c
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x70
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x7e
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x72
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x80
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x74
	strh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x82
	ldrh r1, [r0, #0x0]
	add r0, r2, #0x0
	add r0, #0x76
	strh r1, [r0, #0x0]
	ldr r1, [r2, #0x0]
	mov r0, #0x80
	orr r1, r0
	add r0, #0x80
	orr r0, r1
	str r0, [r2, #0x0]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_020081A8
FUN_020081A8: ; 0x020081A8
	mov r3, #0xa7
	lsl r3, r3, #0x2
	str r1, [r0, r3]
	add r1, r3, #0x4
	str r2, [r0, r1]
	bx lr

	thumb_func_start FUN_020081B4
FUN_020081B4: ; 0x020081B4
	mov r3, #0xa9
	lsl r3, r3, #0x2
	str r1, [r0, r3]
	add r1, r3, #0x4
	str r2, [r0, r1]
	bx lr

	thumb_func_start FUN_020081C0
FUN_020081C0: ; 0x020081C0
	add r0, r0, #0x4
	bx lr

	thumb_func_start FUN_020081C4
FUN_020081C4: ; 0x020081C4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _02008254 ; =0x000002E1
	ldrb r1, [r4, r0]
	cmp r1, #0x0
	beq _02008212
	mov r1, #0x0
	strb r1, [r4, r0]
	sub r0, #0x81
	add r0, r4, r0
	blx FUN_020B1A24
	mov r3, #0xae
	lsl r3, r3, #0x2
	mov r1, #0x20
	strh r1, [r4, r3]
	add r0, r3, #0x2
	strh r1, [r4, r0]
	add r0, r3, #0x0
	sub r0, #0x18
	ldr r1, [r4, r0]
	add r0, r3, #0x0
	add r0, #0x10
	str r1, [r4, r0]
	add r0, r3, #0x0
	sub r0, #0xc
	ldr r1, [r4, r0]
	add r0, r3, #0x0
	add r0, #0x14
	str r1, [r4, r0]
	add r1, r3, #0x0
	sub r1, #0x1c
	add r0, r4, r3
	sub r3, #0x58
	ldr r1, [r4, r1]
	mov r2, #0x0
	add r3, r4, r3
	blx FUN_020B1528
_02008212:
	ldr r0, _02008258 ; =0x000002E2
	ldrb r1, [r4, r0]
	cmp r1, #0x0
	beq _02008252
	mov r1, #0x0
	strb r1, [r4, r0]
	sub r0, #0x5e
	add r0, r4, r0
	blx FUN_020B19DC
	mov r3, #0xaa
	lsl r3, r3, #0x2
	add r0, r3, #0x0
	ldr r1, [r4, r3]
	add r0, #0x30
	str r1, [r4, r0]
	add r0, r3, #0x0
	add r0, #0x8
	ldr r1, [r4, r0]
	add r0, r3, #0x0
	add r0, #0x34
	str r1, [r4, r0]
	add r0, r3, #0x0
	sub r1, r3, #0x4
	add r0, #0x28
	sub r3, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0x0
	add r3, r4, r3
	blx FUN_020B1240
_02008252:
	pop {r4, pc}
	.balign 4
_02008254: .word 0x000002E1
_02008258: .word 0x000002E2

	thumb_func_start FUN_0200825C
FUN_0200825C: ; 0x0200825C
	ldr r2, _02008264 ; =0x000002E3
	strb r1, [r0, r2]
	bx lr
	nop
_02008264: .word 0x000002E3

	thumb_func_start FUN_02008268
FUN_02008268: ; 0x02008268
	push {r4, lr}
	add r4, r0, #0x0
	bne _02008272
	bl ErrorHandling
_02008272:
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0200827E
	mov r0, #0x1
	pop {r4, pc}
_0200827E:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02008284
FUN_02008284: ; 0x02008284
	mov r2, #0xb9
	lsl r2, r2, #0x2
	ldr r3, [r0, r2]
	orr r1, r3
	str r1, [r0, r2]
	bx lr

	thumb_func_start FUN_02008290
FUN_02008290: ; 0x02008290
	push {r3-r4}
	mov r3, #0xb9
	lsl r3, r3, #0x2
	mov r2, #0x0
	mvn r2, r2
	ldr r4, [r0, r3]
	eor r1, r2
	and r1, r4
	str r1, [r0, r3]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_020082A8
FUN_020082A8: ; 0x020082A8
	push {r4-r7, lr}
	sub sp, #0x5c
	add r6, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0x48]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x44]
	str r0, [sp, #0x38]
_020082BA:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _020082CA
	lsl r0, r1, #0x18
	lsr r0, r0, #0x1f
	bne _020082CC
_020082CA:
	b _020086C2
_020082CC:
	mov r0, #0x80
	bic r1, r0
	ldr r0, [sp, #0x44]
	mov r2, #0xa6
	str r1, [r0, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	lsl r2, r2, #0x2
	ldrh r0, [r0, #0x4]
	ldrh r1, [r1, #0x6]
	ldr r2, [r6, r2]
	bl LoadFromNarc_2
	add r1, sp, #0x58
	str r0, [sp, #0x4c]
	blx FUN_020B0088
	ldr r0, [sp, #0x58]
	mov r1, #0xaf
	ldr r0, [r0, #0x4]
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r2, [r0, #0x8]
	add r0, r1, #0x4
	str r2, [r6, r0]
	ldr r0, [sp, #0x58]
	add r1, #0x8
	ldr r0, [r0, #0xc]
	str r0, [r6, r1]
	ldr r0, [sp, #0x58]
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x50]
	bl FUN_02008A74
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x50]
	bl FUN_020088EC
	ldr r0, [sp, #0x54]
	cmp r0, #0x3
	beq _02008326
	b _02008554
_02008326:
	mov r5, #0x0
	add r0, r5, #0x0
	str r5, [sp, #0x14]
	str r0, [sp, #0x24]
_0200832E:
	ldr r0, [sp, #0x14]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0x0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0x0
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x24]
	add r7, r1, r0
	ldr r0, [sp, #0x20]
	str r7, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	sub r0, r0, #0x1
	lsl r0, r0, #0x7
	str r0, [sp, #0x10]
_02008356:
	cmp r4, #0x28
	bge _02008442
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008386
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008386
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_02008386:
	cmp r0, #0x0
	beq _020083A6
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_020083A6:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _020083C4
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0, #0x0]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_020083C4:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0xc]
	beq _02008430
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x1
	blx _u32_div_f
	cmp r1, #0x0
	beq _020083F4
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, r4, r0
	add r0, #0x50
	add r1, r5, r1
	add r1, r4, r1
	ldrb r0, [r0, #0x0]
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_020083F4:
	ldr r1, [sp, #0xc]
	add r0, r4, #0x0
	blx _u32_div_f
	cmp r1, #0x0
	beq _02008416
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	add r2, r5, r0
	add r0, r2, r4
	add r0, #0x4f
	ldrb r1, [r0, #0x0]
	add r0, r2, r4
	add r0, #0x50
	strb r1, [r0, #0x0]
	b _0200852E
_02008416:
	ldrb r1, [r7, #0x0]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #0x4
	orr r0, r1
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_02008430:
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	ldrb r0, [r7, #0x0]
	add r1, r5, r1
	add r1, r4, r1
	add r1, #0x50
	strb r0, [r1, #0x0]
	b _0200852E
_02008442:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _02008472
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _02008472
	add r1, r4, #0x0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
	b _0200852E
_02008472:
	cmp r0, #0x0
	beq _02008496
	add r1, r4, #0x0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
	b _0200852E
_02008496:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _020084B4
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r0, [sp, #0x20]
	ldr r1, [r6, r1]
	ldrb r0, [r0, #0x0]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
	b _0200852E
_020084B4:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0x8]
	beq _0200851E
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0x14]
	lsl r1, r1, #0x1
	blx _u32_div_f
	cmp r1, #0x0
	beq _020084E4
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r1, [r6, r0]
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r2, r4, r0
	ldr r0, _020086E8 ; =0x00002828
	add r1, r5, r1
	ldrb r0, [r2, r0]
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
	b _0200852E
_020084E4:
	ldr r1, [sp, #0x8]
	add r0, r4, #0x0
	blx _u32_div_f
	cmp r1, #0x0
	beq _02008504
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	ldr r1, _020086EC ; =0x00002827
	add r0, r5, r0
	add r0, r0, r4
	ldrb r2, [r0, r1]
	add r1, r1, #0x1
	strb r2, [r0, r1]
	b _0200852E
_02008504:
	ldrb r1, [r7, #0x0]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #0x4
	orr r0, r1
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
	b _0200852E
_0200851E:
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	ldrb r0, [r7, #0x0]
	add r1, r5, r1
	add r2, r4, r1
	ldr r1, _020086E8 ; =0x00002828
	strb r0, [r2, r1]
_0200852E:
	ldr r0, [sp, #0x20]
	add r4, r4, #0x1
	add r0, r0, #0x1
	add r7, r7, #0x1
	str r0, [sp, #0x20]
	cmp r4, #0x50
	bge _0200853E
	b _02008356
_0200853E:
	ldr r0, [sp, #0x24]
	add r5, #0x80
	add r0, #0x50
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #0x1
	str r0, [sp, #0x14]
	cmp r0, #0x50
	bge _02008552
	b _0200832E
_02008552:
	b _020086BC
_02008554:
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
_0200855C:
	ldr r0, [sp, #0x0]
	mov r1, #0x4f
	sub r2, r1, r0
	mov r0, #0x50
	add r1, r2, #0x0
	mul r1, r0
	ldr r0, [sp, #0x50]
	mov r4, #0x0
	add r0, r0, r1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x3c]
	add r7, r1, r0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x40]
	str r7, [sp, #0x2c]
	add r5, r1, r0
	ldr r0, [sp, #0x0]
	sub r0, r0, #0x1
	lsl r1, r0, #0x7
	ldr r0, [sp, #0x38]
	add r0, r0, r1
	str r0, [sp, #0x28]
_0200858E:
	ldr r0, [sp, #0x44]
	ldr r1, [r0, #0x54]
	lsl r0, r1, #0x16
	lsr r0, r0, #0x1f
	beq _020085D6
	lsl r1, r1, #0x15
	lsr r1, r1, #0x1f
	beq _020085D6
	cmp r4, #0x28
	bge _020085BA
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_020085BA:
	add r1, r4, #0x0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x30]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_020085D6:
	cmp r0, #0x0
	beq _02008612
	cmp r4, #0x28
	bge _020085F6
	mov r0, #0x27
	sub r1, r0, r4
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_020085F6:
	add r1, r4, #0x0
	sub r1, #0x28
	mov r0, #0x4f
	sub r1, r0, r1
	ldr r0, [sp, #0x2c]
	ldrb r0, [r0, r1]
	bl FUN_020088D8
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_02008612:
	ldr r0, [sp, #0x44]
	ldr r0, [r0, #0x54]
	lsl r1, r0, #0x15
	lsr r1, r1, #0x1f
	beq _0200862C
	ldr r0, [sp, #0x34]
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	ldrb r0, [r0, #0x0]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_0200862C:
	lsl r0, r0, #0xf
	lsr r0, r0, #0x1c
	str r0, [sp, #0x4]
	beq _02008688
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x0]
	lsl r1, r1, #0x1
	blx _u32_div_f
	cmp r1, #0x0
	beq _02008654
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x28]
	add r1, r1, r0
	ldrb r1, [r4, r1]
	add r0, r5, r0
	strb r1, [r4, r0]
	b _02008694
_02008654:
	ldr r1, [sp, #0x4]
	add r0, r4, #0x0
	blx _u32_div_f
	cmp r1, #0x0
	beq _02008672
	mov r0, #0xab
	lsl r0, r0, #0x2
	ldr r0, [r6, r0]
	add r1, r5, r0
	add r0, r1, r4
	sub r0, r0, #0x1
	ldrb r0, [r0, #0x0]
	strb r0, [r1, r4]
	b _02008694
_02008672:
	ldrb r1, [r7, #0x0]
	mov r0, #0xf
	and r1, r0
	lsl r0, r1, #0x4
	orr r0, r1
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	add r1, r5, r1
	strb r0, [r4, r1]
	b _02008694
_02008688:
	mov r1, #0xab
	lsl r1, r1, #0x2
	ldr r1, [r6, r1]
	ldrb r0, [r7, #0x0]
	add r1, r5, r1
	strb r0, [r4, r1]
_02008694:
	ldr r0, [sp, #0x34]
	add r4, r4, #0x1
	add r0, r0, #0x1
	add r7, r7, #0x1
	str r0, [sp, #0x34]
	cmp r4, #0x50
	bge _020086A4
	b _0200858E
_020086A4:
	ldr r0, [sp, #0x40]
	add r0, #0x80
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	add r0, #0x50
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x0]
	add r0, r0, #0x1
	str r0, [sp, #0x0]
	cmp r0, #0x50
	bge _020086BC
	b _0200855C
_020086BC:
	ldr r0, [sp, #0x4c]
	bl FUN_02016A18
_020086C2:
	ldr r0, [sp, #0x44]
	mov r1, #0xa
	add r0, #0x98
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x38]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x54]
	add r0, r0, #0x1
	str r0, [sp, #0x54]
	cmp r0, #0x4
	bge _020086DE
	b _020082BA
_020086DE:
	ldr r1, _020086F0 ; =0x000002E1
	ldr r0, [sp, #0x48]
	strb r0, [r6, r1]
	add sp, #0x5c
	pop {r4-r7, pc}
	.balign 4
_020086E8: .word 0x00002828
_020086EC: .word 0x00002827
_020086F0: .word 0x000002E1

	thumb_func_start FUN_020086F4
FUN_020086F4: ; 0x020086F4
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r5, #0x0
	str r0, [sp, #0x8]
_02008706:
	ldr r1, [r4, #0x0]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	beq _020087E0
	lsl r0, r1, #0x17
	lsr r0, r0, #0x1f
	beq _020087E0
	ldr r0, _020088CC ; =0xFFFFFEFF
	mov r2, #0xa6
	and r0, r1
	str r0, [r4, #0x0]
	mov r0, #0x1
	str r0, [sp, #0xc]
	lsl r2, r2, #0x2
	ldrh r0, [r4, #0x4]
	ldrh r1, [r4, #0x8]
	ldr r2, [r5, r2]
	bl LoadFromNarc_2
	add r1, sp, #0x18
	str r0, [sp, #0x10]
	blx FUN_020B0138
	ldr r0, [sp, #0x18]
	mov r7, #0x0
	ldr r1, [r0, #0x0]
	mov r0, #0x2d
	lsl r0, r0, #0x4
	str r1, [r5, r0]
	ldr r0, [sp, #0x18]
	add r2, r7, #0x0
	ldr r1, [r0, #0xc]
	ldr r0, [sp, #0x8]
	lsl r3, r0, #0x1
_0200874A:
	mov r6, #0x2b
	lsl r6, r6, #0x4
	ldr r6, [r5, r6]
	ldrh r0, [r1, #0x0]
	add r6, r3, r6
	add r7, r7, #0x1
	strh r0, [r2, r6]
	mov r6, #0xad
	lsl r6, r6, #0x2
	ldrh r0, [r1, #0x0]
	ldr r6, [r5, r6]
	add r1, r1, #0x2
	add r6, r3, r6
	strh r0, [r2, r6]
	add r2, r2, #0x2
	cmp r7, #0x10
	blt _0200874A
	ldr r0, [sp, #0x10]
	bl FUN_02016A18
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _020087E0
	mov r2, #0xa6
	lsl r2, r2, #0x2
	ldr r2, [r5, r2]
	mov r0, #0x75
	mov r1, #0xd4
	bl LoadFromNarc_2
	add r1, sp, #0x18
	str r0, [sp, #0x4]
	blx FUN_020B0138
	ldr r0, [sp, #0x18]
	mov r7, #0xad
	ldr r0, [r0, #0xc]
	mov r1, #0x0
	lsl r7, r7, #0x2
_0200879E:
	add r6, r4, #0x0
	add r6, #0x6c
	ldrh r6, [r6, #0x0]
	mov r2, #0x2b
	lsl r2, r2, #0x4
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #0x3
	lsl r6, r6, #0x4
	add r6, r1, r6
	ldrh r3, [r0, #0x0]
	ldr r2, [r5, r2]
	lsl r6, r6, #0x1
	strh r3, [r2, r6]
	add r6, r4, #0x0
	add r6, #0x6c
	ldrh r6, [r6, #0x0]
	ldrh r3, [r0, #0x0]
	ldr r2, [r5, r7]
	lsl r6, r6, #0x1e
	lsr r6, r6, #0x1e
	add r6, r6, #0x3
	lsl r6, r6, #0x4
	add r6, r1, r6
	lsl r6, r6, #0x1
	add r1, r1, #0x1
	add r0, r0, #0x2
	strh r3, [r2, r6]
	cmp r1, #0x10
	blt _0200879E
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
_020087E0:
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _020088AE
	ldr r0, [r4, #0x54]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	beq _020088AE
	add r0, r4, #0x0
	add r0, #0x4a
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020088A0
	mov r0, #0x1
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	add r0, #0x4b
	ldrb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x4a
	strb r1, [r0, #0x0]
	ldr r0, [sp, #0x8]
	mov r2, #0xad
	lsl r1, r0, #0x1
	ldr r0, [r4, #0x4c]
	add r3, r4, #0x0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r2, r2, #0x2
	str r0, [sp, #0x0]
	ldr r0, [r5, r2]
	sub r2, r2, #0x4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3, #0x0]
	mov r2, #0x10
	bl FUN_02003974
	add r0, r4, #0x0
	add r0, #0x6c
	ldrh r0, [r0, #0x0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	beq _02008862
	add r0, r0, #0x3
	lsl r1, r0, #0x5
	ldr r0, [r4, #0x4c]
	mov r2, #0xad
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r3, r4, #0x0
	lsl r2, r2, #0x2
	str r0, [sp, #0x0]
	ldr r0, [r5, r2]
	sub r2, r2, #0x4
	add r3, #0x48
	ldr r2, [r5, r2]
	add r0, r0, r1
	add r1, r2, r1
	ldrb r3, [r3, #0x0]
	mov r2, #0x10
	bl FUN_02003974
_02008862:
	add r0, r4, #0x0
	add r0, #0x49
	ldrb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x48
	ldrb r0, [r0, #0x0]
	cmp r0, r1
	bne _0200887C
	ldr r1, [r4, #0x54]
	ldr r0, _020088D0 ; =0xFFFFEFFF
	and r0, r1
	str r0, [r4, #0x54]
	b _020088AE
_0200887C:
	cmp r0, r1
	bls _02008890
	add r0, r4, #0x0
	add r0, #0x48
	ldrb r0, [r0, #0x0]
	sub r1, r0, #0x1
	add r0, r4, #0x0
	add r0, #0x48
	strb r1, [r0, #0x0]
	b _020088AE
_02008890:
	add r0, r4, #0x0
	add r0, #0x48
	ldrb r0, [r0, #0x0]
	add r1, r0, #0x1
	add r0, r4, #0x0
	add r0, #0x48
	strb r1, [r0, #0x0]
	b _020088AE
_020088A0:
	add r0, r4, #0x0
	add r0, #0x4a
	ldrb r0, [r0, #0x0]
	sub r1, r0, #0x1
	add r0, r4, #0x0
	add r0, #0x4a
	strb r1, [r0, #0x0]
_020088AE:
	ldr r0, [sp, #0x8]
	add r4, #0x98
	add r0, #0x10
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x14]
	add r0, r0, #0x1
	str r0, [sp, #0x14]
	cmp r0, #0x4
	bge _020088C2
	b _02008706
_020088C2:
	ldr r1, _020088D4 ; =0x000002E2
	ldr r0, [sp, #0xc]
	strb r0, [r5, r1]
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4
_020088CC: .word 0xFFFFFEFF
_020088D0: .word 0xFFFFEFFF
_020088D4: .word 0x000002E2

	thumb_func_start FUN_020088D8
FUN_020088D8: ; 0x020088D8
	mov r1, #0xf0
	and r1, r0
	lsl r1, r1, #0x14
	lsl r0, r0, #0x1c
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr

	thumb_func_start FUN_020088EC
FUN_020088EC: ; 0x020088EC
	push {r3, lr}
	add r2, r0, #0x0
	ldrh r0, [r2, #0xa]
	cmp r0, #0x0
	beq _02008900
	add r0, r1, #0x0
	ldr r1, [r2, #0x10]
	mov r2, #0x1
	bl FUN_02008904
_02008900:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02008904
FUN_02008904: ; 0x02008904
	push {r4-r7, lr}
	sub sp, #0x1c
	add r3, r0, #0x0
	add r0, r1, #0x0
	mov lr, r0
	mov r0, #0x0
	mov r12, r0
	ldr r0, _02008A50 ; =0x02105AE8
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	str r0, [sp, #0x10]
_0200891A:
	ldr r0, [sp, #0x10]
	mov r1, #0x0
	ldr r6, [r0, #0x0]
	ldrb r0, [r6, #0x0]
	cmp r0, #0xff
	beq _02008992
	ldr r0, [sp, #0x0]
	mov r2, #0xf
	and r0, r2
	str r0, [sp, #0xc]
	sub r0, #0x8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x0]
	mov r2, #0xf0
	and r0, r2
	lsr r7, r0, #0x4
	sub r7, #0x8
_0200893C:
	lsl r0, r1, #0x1
	add r2, r6, r0
	ldrb r4, [r6, r0]
	ldrb r2, [r2, #0x1]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r2, r7, r2
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r4, r2, #0x18
	mov r2, #0x50
	mul r2, r4
	lsr r5, r0, #0x1
	add r2, r5, r2
	mov r4, #0x1
	tst r0, r4
	ldrb r4, [r3, r2]
	beq _02008974
	mov r0, #0xf0
	and r0, r4
	cmp r0, #0x10
	blt _02008984
	cmp r0, #0x30
	bgt _02008984
	add r4, #0x50
	strb r4, [r3, r2]
	b _02008984
_02008974:
	mov r0, #0xf
	and r0, r4
	cmp r0, #0x1
	blt _02008984
	cmp r0, #0x3
	bgt _02008984
	add r0, r4, #0x5
	strb r0, [r3, r2]
_02008984:
	add r0, r1, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r1, #0x1
	ldrb r0, [r6, r0]
	cmp r0, #0xff
	bne _0200893C
_02008992:
	ldr r0, [sp, #0x0]
	lsr r0, r0, #0x8
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x10]
	add r0, r0, #0x4
	str r0, [sp, #0x10]
	mov r0, r12
	add r0, r0, #0x1
	mov r12, r0
	cmp r0, #0x4
	blt _0200891A
	mov r0, lr
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02008A4A
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, _02008A50 ; =0x02105AE8
	str r0, [sp, #0x18]
_020089BA:
	ldr r0, [sp, #0x18]
	mov r4, #0x0
	ldr r2, [r0, #0x0]
	ldrb r0, [r2, #0x0]
	cmp r0, #0xff
	beq _02008A34
	ldr r0, [sp, #0x0]
	mov r1, #0xf
	and r0, r1
	str r0, [sp, #0x14]
	add r0, #0x48
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x0]
	mov r1, #0xf0
	and r0, r1
	lsr r7, r0, #0x4
	sub r7, #0x8
_020089DC:
	lsl r0, r4, #0x1
	add r5, r2, r0
	ldrb r1, [r2, r0]
	ldrb r5, [r5, #0x1]
	ldr r0, [sp, #0x14]
	sub r1, #0xe
	add r0, r0, r1
	add r5, r7, r5
	lsl r0, r0, #0x18
	lsl r5, r5, #0x18
	lsr r1, r0, #0x18
	lsr r6, r5, #0x18
	mov r5, #0x50
	lsr r0, r1, #0x1
	mul r5, r6
	add r0, r0, r5
	mov r5, #0x1
	tst r1, r5
	ldrb r5, [r3, r0]
	beq _02008A16
	mov r1, #0xf0
	and r1, r5
	cmp r1, #0x10
	blt _02008A26
	cmp r1, #0x30
	bgt _02008A26
	add r5, #0x50
	strb r5, [r3, r0]
	b _02008A26
_02008A16:
	mov r1, #0xf
	and r1, r5
	cmp r1, #0x1
	blt _02008A26
	cmp r1, #0x3
	bgt _02008A26
	add r1, r5, #0x5
	strb r1, [r3, r0]
_02008A26:
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r4, #0x1
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	bne _020089DC
_02008A34:
	ldr r0, [sp, #0x0]
	lsr r0, r0, #0x8
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x18]
	add r0, r0, #0x4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x8]
	add r0, r0, #0x1
	str r0, [sp, #0x8]
	cmp r0, #0x4
	blt _020089BA
_02008A4A:
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_02008A50: .word 0x02105AE8

	thumb_func_start FUN_02008A54
FUN_02008A54: ; 0x02008A54
	ldr r2, [r0, #0x0]
	ldr r1, _02008A6C ; =0x41C64E6D
	add r3, r2, #0x0
	mul r3, r1
	ldr r1, _02008A70 ; =0x00006073
	add r1, r3, r1
	str r1, [r0, #0x0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_02008A6C: .word 0x41C64E6D
_02008A70: .word 0x00006073

	thumb_func_start FUN_02008A74
FUN_02008A74: ; 0x02008A74
	push {r3-r7, lr}
	ldr r1, _02008AA0 ; =0x000018FE
	mov r6, #0x0
	ldrh r2, [r0, r1]
	lsr r4, r1, #0x1
	add r5, r0, r1
	str r2, [sp, #0x0]
	add r7, sp, #0x0
	mvn r6, r6
_02008A86:
	ldrh r1, [r5, #0x0]
	ldr r0, [sp, #0x0]
	eor r0, r1
	strh r0, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_02008A54
	sub r4, r4, #0x1
	sub r5, r5, #0x2
	cmp r4, r6
	bgt _02008A86
	pop {r3-r7, pc}
	nop
_02008AA0: .word 0x000018FE

	thumb_func_start FUN_02008AA4
FUN_02008AA4: ; 0x02008AA4
	push {r3-r7, lr}
	sub sp, #0x18
	mov r4, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x44]
	add r6, r1, #0x0
	str r2, [sp, #0x0]
	str r3, [sp, #0x4]
	str r4, [sp, #0xc]
	cmp r0, #0x0
	bne _02008AC2
	bl ErrorHandling
_02008AC2:
	ldr r0, [sp, #0x48]
	cmp r0, #0x0
	bne _02008ACC
	bl ErrorHandling
_02008ACC:
	ldr r0, [sp, #0x50]
	cmp r0, #0x0
	bne _02008AD6
	bl ErrorHandling
_02008AD6:
	ldr r0, [sp, #0x4c]
	cmp r0, #0x0
	bne _02008AE0
	bl ErrorHandling
_02008AE0:
	cmp r5, #0x0
	bne _02008AE8
	bl ErrorHandling
_02008AE8:
	ldr r0, [sp, #0x44]
	add r1, r6, #0x0
	bl FUN_020094F0
	add r7, r0, #0x0
	bne _02008AF8
	bl ErrorHandling
_02008AF8:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x0]
	bl FUN_020094F0
	str r0, [sp, #0x14]
	cmp r0, #0x0
	bne _02008B0A
	bl ErrorHandling
_02008B0A:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x4]
	bl FUN_020094F0
	str r0, [sp, #0x10]
	cmp r0, #0x0
	bne _02008B1C
	bl ErrorHandling
_02008B1C:
	ldr r0, [sp, #0x50]
	cmp r0, #0x0
	beq _02008B3A
	mov r2, #0x0
	ldr r1, [sp, #0x30]
	mvn r2, r2
	cmp r1, r2
	beq _02008B3A
	bl FUN_020094F0
	str r0, [sp, #0xc]
	cmp r0, #0x0
	bne _02008B3A
	bl ErrorHandling
_02008B3A:
	ldr r0, [sp, #0x54]
	cmp r0, #0x0
	beq _02008B62
	mov r2, #0x0
	ldr r1, [sp, #0x34]
	mvn r2, r2
	cmp r1, r2
	beq _02008B50
	bl FUN_020094F0
	add r4, r0, #0x0
_02008B50:
	mov r0, #0x0
	ldr r1, [sp, #0x38]
	mvn r0, r0
	cmp r1, r0
	beq _02008B62
	ldr r0, [sp, #0x58]
	bl FUN_020094F0
	str r0, [sp, #0x8]
_02008B62:
	ldr r0, [sp, #0x3c]
	cmp r0, #0x0
	beq _02008B82
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	bl FUN_02009C80
	add r6, r0, #0x0
	bne _02008B78
	bl ErrorHandling
_02008B78:
	add r0, r7, #0x0
	bl FUN_02009544
	str r0, [r5, #0x4]
	b _02008B94
_02008B82:
	add r0, r7, #0x0
	bl FUN_02009C5C
	add r6, r0, #0x0
	bne _02008B90
	bl ErrorHandling
_02008B90:
	mov r0, #0x0
	str r0, [r5, #0x4]
_02008B94:
	ldr r0, [sp, #0x14]
	add r1, r6, #0x0
	bl FUN_02009E54
	str r0, [r5, #0x8]
	ldr r0, [sp, #0x10]
	str r6, [r5, #0x0]
	bl FUN_02009574
	str r0, [r5, #0xc]
	ldr r0, [sp, #0xc]
	cmp r0, #0x0
	beq _02008BB4
	bl FUN_0200958C
	b _02008BB6
_02008BB4:
	mov r0, #0x0
_02008BB6:
	str r0, [r5, #0x10]
	cmp r4, #0x0
	beq _02008BCC
	add r0, r4, #0x0
	bl FUN_020095A4
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x8]
	bl FUN_020095BC
	b _02008BD0
_02008BCC:
	mov r0, #0x0
	str r0, [r5, #0x14]
_02008BD0:
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	add r5, #0x20
	strb r0, [r5, #0x0]
	add sp, #0x18
	pop {r3-r7, pc}

	thumb_func_start FUN_02008BE0
FUN_02008BE0: ; 0x02008BE0
	push {r4-r7, lr}
	sub sp, #0x34
	add r5, r0, #0x0
	ldr r0, [sp, #0x48]
	add r7, r1, #0x0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	mov r4, #0x0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr r1, [r5, #0x0]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x2c]
	str r0, [sp, #0x54]
	sub r0, r4, #0x2
	str r3, [sp, #0x30]
	cmp r1, r0
	beq _02008C14
	add r2, r5, #0x0
	sub r0, r4, #0x2
_02008C0A:
	add r2, #0x20
	ldr r1, [r2, #0x0]
	add r4, r4, #0x1
	cmp r1, r0
	bne _02008C0A
_02008C14:
	add r0, r7, #0x0
	mov r1, #0x8
	bl FUN_02016998
	mov r1, #0x24
	add r6, r0, #0x0
	add r0, r7, #0x0
	mul r1, r4
	bl FUN_02016998
	str r0, [r6, #0x0]
	mov r7, #0x0
	str r4, [r6, #0x4]
	cmp r4, #0x0
	ble _02008C7A
	add r4, r7, #0x0
_02008C34:
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x28]
	ldr r0, [r6, #0x0]
	ldr r1, [r5, #0x0]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r0, r0, r4
	bl FUN_02008AA4
	ldr r0, [r6, #0x4]
	add r7, r7, #0x1
	add r5, #0x20
	add r4, #0x24
	cmp r7, r0
	blt _02008C34
_02008C7A:
	add r0, r6, #0x0
	add sp, #0x34
	pop {r4-r7, pc}

	thumb_func_start FUN_02008C80
FUN_02008C80: ; 0x02008C80
	push {r4, lr}
	add r4, r0, #0x0
	bne _02008C8A
	bl ErrorHandling
_02008C8A:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _02008C94
	bl FUN_02016A18
_02008C94:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_02008C9C
FUN_02008C9C: ; 0x02008C9C
	push {r3-r6, lr}
	sub sp, #0x1c
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r1, _02008D00 ; =0xFFFFF000
	add r0, r4, #0x0
	add r6, r2, #0x0
	bl FUN_0202134C
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r0, #0xff
	lsl r0, r0, #0xc
	str r0, [sp, #0x8]
	mov r0, #0x3
	lsl r0, r0, #0x12
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	add r0, #0x98
	add r1, sp, #0x0
	mov r2, #0x1
	add r3, r4, #0x0
	bl FUN_02009FD8
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0xff
	mov r1, #0x3
	lsl r1, r1, #0x12
	lsl r0, r0, #0xc
	str r0, [sp, #0x8]
	add r0, r4, #0x0
	str r1, [sp, #0x4]
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0x0
	mov r2, #0x2
	add r3, r4, #0x0
	bl FUN_02009FD8
	add r0, sp, #0x10
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r6, [sp, #0x18]
	bl FUN_0201FCB0
	add sp, #0x1c
	pop {r3-r6, pc}
	nop
_02008D00: .word 0xFFFFF000

	thumb_func_start FUN_02008D04
FUN_02008D04: ; 0x02008D04
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp, #0x0]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #0x8]
	mov r1, #0x3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0x98
	add r1, sp, #0x0
	str r2, [sp, #0x4]
	bl FUN_02021390
	add sp, #0x10
	pop {r3, pc}

	thumb_func_start FUN_02008D24
FUN_02008D24: ; 0x02008D24
	push {r3, lr}
	sub sp, #0x10
	str r1, [sp, #0x0]
	mov r1, #0xff
	lsl r1, r1, #0xc
	str r1, [sp, #0x8]
	mov r1, #0x3
	lsl r1, r1, #0x12
	str r1, [sp, #0xc]
	add r0, #0xe0
	add r1, sp, #0x0
	str r2, [sp, #0x4]
	bl FUN_02021390
	add sp, #0x10
	pop {r3, pc}

	thumb_func_start FUN_02008D44
FUN_02008D44: ; 0x02008D44
	push {r4, lr}
	add r4, r0, #0x0
	cmp r1, #0x10
	beq _02008D5A
	ldr r2, _02008DCC ; =0x00100010
	cmp r1, r2
	beq _02008D8A
	ldr r0, _02008DD0 ; =0x00200010
	cmp r1, r0
	beq _02008D98
	b _02008DC4
_02008D5A:
	blx FUN_020C5DBC
	cmp r0, #0x40
	beq _02008D6A
	blx FUN_020C5DBC
	cmp r0, #0x20
	bne _02008D7A
_02008D6A:
	mov r0, #0x3e
	mov r1, #0x2
	lsl r0, r0, #0x8
	lsl r1, r1, #0x8
	add r2, r4, #0x0
	bl FUN_0201D194
	pop {r4, pc}
_02008D7A:
	mov r0, #0x7e
	mov r1, #0x2
	lsl r0, r0, #0x8
	lsl r1, r1, #0x8
	add r2, r4, #0x0
	bl FUN_0201D194
	pop {r4, pc}
_02008D8A:
	mov r0, #0xfe
	lsr r1, r2, #0xb
	lsl r0, r0, #0x8
	add r2, r4, #0x0
	bl FUN_0201D194
	pop {r4, pc}
_02008D98:
	blx FUN_020C5DBC
	cmp r0, #0x30
	beq _02008DA8
	blx FUN_020C5DBC
	cmp r0, #0x50
	bne _02008DB6
_02008DA8:
	mov r1, #0x2
	ldr r0, _02008DD4 ; =0x00013E00
	lsl r1, r1, #0x8
	add r2, r4, #0x0
	bl FUN_0201D194
	pop {r4, pc}
_02008DB6:
	mov r1, #0x2
	ldr r0, _02008DD8 ; =0x0001FE00
	lsl r1, r1, #0x8
	add r2, r4, #0x0
	bl FUN_0201D194
	pop {r4, pc}
_02008DC4:
	bl ErrorHandling
	pop {r4, pc}
	nop
_02008DCC: .word 0x00100010
_02008DD0: .word 0x00200010
_02008DD4: .word 0x00013E00
_02008DD8: .word 0x0001FE00

	thumb_func_start FUN_02008DDC
FUN_02008DDC: ; 0x02008DDC
	ldr r3, _02008DE8 ; =0x0201E069
	add r1, r0, #0x0
	mov r0, #0x3
	lsl r0, r0, #0xe
	bx r3
	nop
_02008DE8: .word 0x0201E069

	thumb_func_start FUN_02008DEC
FUN_02008DEC: ; 0x02008DEC
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r1, #0x0
	str r2, [sp, #0x0]
	add r0, r2, #0x0
	mov r1, #0x14
	bl FUN_02016998
	add r4, r0, #0x0
	ldr r1, [sp, #0x0]
	add r0, r5, #0x0
	bl FUN_02020C44
	str r0, [r4, #0x0]
	mov r0, #0xc
	add r7, r5, #0x0
	mul r7, r0
	ldr r0, [sp, #0x0]
	add r1, r7, #0x0
	bl FUN_02016998
	mov r1, #0x0
	add r2, r7, #0x0
	str r0, [r4, #0x4]
	blx Call_FillMemWithValue
	str r5, [r4, #0x8]
	mov r0, #0x0
	str r0, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02008E2C
FUN_02008E2C: ; 0x02008E2C
	push {r4, lr}
	add r4, r0, #0x0
	bne _02008E36
	bl ErrorHandling
_02008E36:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02008E40
	bl ErrorHandling
_02008E40:
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	bne _02008E4A
	bl ErrorHandling
_02008E4A:
	add r0, r4, #0x0
	bl FUN_020094C4
	ldr r0, [r4, #0x0]
	bl FUN_02020C90
	mov r0, #0x0
	str r0, [r4, #0x0]
	ldr r0, [r4, #0x4]
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, #0x4]
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_02008E6C
FUN_02008E6C: ; 0x02008E6C
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r5, #0x0
	bne _02008E80
	bl ErrorHandling
_02008E80:
	cmp r4, #0x0
	bne _02008E88
	bl ErrorHandling
_02008E88:
	ldr r0, [r4, #0x4]
	cmp r0, r6
	bgt _02008E92
	bl ErrorHandling
_02008E92:
	ldr r1, [r5, #0x10]
	ldr r0, [r4, #0x8]
	cmp r1, r0
	beq _02008E9E
	bl ErrorHandling
_02008E9E:
	add r0, r5, #0x0
	bl FUN_020097D0
	str r0, [sp, #0x1c]
	cmp r0, #0x0
	bne _02008EAE
	bl ErrorHandling
_02008EAE:
	ldrb r0, [r4, #0xc]
	cmp r0, #0x0
	bne _02008EEA
	ldr r2, [r4, #0x0]
	mov r0, #0x4c
	add r1, r6, #0x0
	mul r1, r0
	add r6, r2, r1
	ldr r1, [r2, r1]
	add r0, r5, #0x0
	bl FUN_0200945C
	cmp r0, #0x1
	beq _02008ECE
	bl ErrorHandling
_02008ECE:
	ldr r0, [r6, #0x44]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x0]
	ldr r0, [r6, #0x48]
	add r2, r6, #0x4
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x8]
	str r0, [sp, #0x8]
	str r7, [sp, #0xc]
	ldr r3, [r6, #0x0]
	add r0, r5, #0x0
	bl FUN_0200994C
	b _02008F28
_02008EEA:
	mov r0, #0x18
	ldr r1, [r4, #0x0]
	mul r0, r6
	add r6, r1, r0
	ldr r1, [r6, #0xc]
	add r0, r5, #0x0
	bl FUN_0200945C
	cmp r0, #0x1
	beq _02008F02
	bl ErrorHandling
_02008F02:
	ldr r0, [r6, #0x8]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0x0]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x8]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x8]
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, #0x0
	str r0, [sp, #0x18]
	ldr r2, [r6, #0x0]
	ldr r3, [r6, #0x4]
	add r0, r5, #0x0
	bl FUN_02009978
_02008F28:
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_02008F34
FUN_02008F34: ; 0x02008F34
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _02008F48
	bl ErrorHandling
_02008F48:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _02008F52
	bl ErrorHandling
_02008F52:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02008F60
	bl ErrorHandling
_02008F60:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	mov r1, #0x0
	str r0, [sp, #0x8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl FUN_02009978
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02008F90
FUN_02008F90: ; 0x02008F90
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _02008FA4
	bl ErrorHandling
_02008FA4:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _02008FAE
	bl ErrorHandling
_02008FAE:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02008FBC
	bl ErrorHandling
_02008FBC:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_02009978
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_02008FEC
FUN_02008FEC: ; 0x02008FEC
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _02009000
	bl ErrorHandling
_02009000:
	ldr r0, [r5, #0x10]
	cmp r0, #0x1
	beq _0200900A
	bl ErrorHandling
_0200900A:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02009018
	bl ErrorHandling
_02009018:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x14]
	mov r0, #0x0
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_02009978
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200904C
FUN_0200904C: ; 0x0200904C
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _02009060
	bl ErrorHandling
_02009060:
	ldr r0, [r5, #0x10]
	cmp r0, #0x1
	beq _0200906A
	bl ErrorHandling
_0200906A:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02009078
	bl ErrorHandling
_02009078:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_02009978
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020090AC
FUN_020090AC: ; 0x020090AC
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _020090C0
	bl ErrorHandling
_020090C0:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _020090CE
	bl ErrorHandling
_020090CE:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl FUN_02009978
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_020090FC
FUN_020090FC: ; 0x020090FC
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	add r4, r1, #0x0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0x0
	bne _02009110
	bl ErrorHandling
_02009110:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _0200911A
	bl ErrorHandling
_0200911A:
	cmp r4, #0x0
	bne _02009122
	bl ErrorHandling
_02009122:
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	beq _0200912C
	bl ErrorHandling
_0200912C:
	add r0, r4, #0x0
	bl FUN_02009530
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl FUN_020095E4
	add r7, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02009490
	ldr r0, [sp, #0x38]
	mov r1, #0x0
	str r0, [sp, #0x0]
	str r6, [sp, #0x4]
	str r7, [sp, #0x8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02009978
	add sp, #0x24
	pop {r4-r7, pc}

	thumb_func_start FUN_02009168
FUN_02009168: ; 0x02009168
	push {r3-r7, lr}
	sub sp, #0x28
	add r5, r0, #0x0
	add r4, r1, #0x0
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	cmp r5, #0x0
	bne _0200917C
	bl ErrorHandling
_0200917C:
	ldr r0, [r5, #0x10]
	cmp r0, #0x1
	beq _02009186
	bl ErrorHandling
_02009186:
	cmp r4, #0x0
	bne _0200918E
	bl ErrorHandling
_0200918E:
	ldr r0, [r4, #0x4]
	cmp r0, #0x1
	beq _02009198
	bl ErrorHandling
_02009198:
	add r0, r4, #0x0
	bl FUN_02009530
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl FUN_020095E4
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02009610
	str r0, [sp, #0x24]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02009490
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x0]
	str r6, [sp, #0x4]
	ldr r0, [sp, #0x24]
	str r7, [sp, #0x8]
	str r0, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #0x0
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02009978
	add sp, #0x28
	pop {r3-r7, pc}

	thumb_func_start FUN_020091E0
FUN_020091E0: ; 0x020091E0
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _020091F4
	bl ErrorHandling
_020091F4:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _020091FE
	bl ErrorHandling
_020091FE:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _0200920C
	bl ErrorHandling
_0200920C:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	mov r1, #0x0
	str r0, [sp, #0x8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl FUN_020099B0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200923C
FUN_0200923C: ; 0x0200923C
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _02009250
	bl ErrorHandling
_02009250:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _0200925A
	bl ErrorHandling
_0200925A:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02009268
	bl ErrorHandling
_02009268:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_020099B0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_02009298
FUN_02009298: ; 0x02009298
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _020092AC
	bl ErrorHandling
_020092AC:
	ldr r0, [r5, #0x10]
	cmp r0, #0x1
	beq _020092B6
	bl ErrorHandling
_020092B6:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _020092C4
	bl ErrorHandling
_020092C4:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x14]
	mov r0, #0x0
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_020099B0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020092F8
FUN_020092F8: ; 0x020092F8
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _0200930C
	bl ErrorHandling
_0200930C:
	ldr r0, [r5, #0x10]
	cmp r0, #0x1
	beq _02009316
	bl ErrorHandling
_02009316:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _02009324
	bl ErrorHandling
_02009324:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x40]
	add r1, r6, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x44]
	add r2, r7, #0x0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_020099B0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02009358
FUN_02009358: ; 0x02009358
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r4, r3, #0x0
	str r2, [sp, #0x1c]
	cmp r5, #0x0
	bne _0200936C
	bl ErrorHandling
_0200936C:
	add r0, r5, #0x0
	bl FUN_020097D0
	add r6, r0, #0x0
	bne _0200937A
	bl ErrorHandling
_0200937A:
	ldr r0, [sp, #0x38]
	str r4, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl FUN_020099B0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add r0, r6, #0x0
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_020093A8
FUN_020093A8: ; 0x020093A8
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r5, #0x0
	bne _020093BC
	bl ErrorHandling
_020093BC:
	cmp r4, #0x0
	bne _020093C4
	bl ErrorHandling
_020093C4:
	str r6, [sp, #0x0]
	str r7, [sp, #0x4]
	ldr r3, [r4, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r2, #0x0
	bl FUN_020093DC
	ldr r0, [r4, #0x4]
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020093DC
FUN_020093DC: ; 0x020093DC
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	add r5, r2, #0x0
	ldr r0, [sp, #0x24]
	add r7, r5, r3
	str r1, [sp, #0x4]
	ldr r4, [sp, #0x20]
	str r0, [sp, #0x24]
	cmp r5, r7
	bge _02009420
	add r6, r4, #0x0
	add r6, #0x8
_020093F6:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r3, [sp, #0x24]
	add r2, r5, #0x0
	bl FUN_02008E6C
	cmp r4, #0x0
	beq _0200941A
	ldr r2, [r4, #0x8]
	ldr r1, [r4, #0x4]
	cmp r1, r2
	ble _0200941A
	ldr r1, [r4, #0x0]
	lsl r2, r2, #0x2
	str r0, [r1, r2]
	ldr r0, [r6, #0x0]
	add r0, r0, #0x1
	str r0, [r6, #0x0]
_0200941A:
	add r5, r5, #0x1
	cmp r5, r7
	blt _020093F6
_02009420:
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02009424
FUN_02009424: ; 0x02009424
	push {r4-r6, lr}
	add r6, r1, #0x0
	add r5, r0, #0x0
	add r0, r6, #0x0
	mov r1, #0xc
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r6, #0x0
	lsl r1, r5, #0x2
	bl FUN_02016998
	str r0, [r4, #0x0]
	str r5, [r4, #0x4]
	mov r0, #0x0
	str r0, [r4, #0x8]
	add r0, r4, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02009448
FUN_02009448: ; 0x02009448
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200945C
FUN_0200945C: ; 0x0200945C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0200946A
	bl ErrorHandling
_0200946A:
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	bl FUN_02020CB0
	pop {r3-r5, pc}

	thumb_func_start FUN_02009474
FUN_02009474: ; 0x02009474
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200947E
	bl ErrorHandling
_0200947E:
	add r0, r4, #0x0
	bl FUN_02009920
	ldr r0, [r4, #0x0]
	mov r1, #0x0
	bl FUN_02020E1C
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02009490
FUN_02009490: ; 0x02009490
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0200949E
	bl ErrorHandling
_0200949E:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _020094A8
	bl ErrorHandling
_020094A8:
	add r0, r4, #0x0
	bl FUN_02009920
	ldr r0, [r5, #0x0]
	ldr r1, [r4, #0x0]
	bl FUN_02020D68
	mov r0, #0x0
	str r0, [r4, #0x0]
	ldr r0, [r5, #0xc]
	sub r0, r0, #0x1
	str r0, [r5, #0xc]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020094C4
FUN_020094C4: ; 0x020094C4
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x8]
	mov r6, #0x0
	cmp r0, #0x0
	ble _020094EC
	add r4, r6, #0x0
_020094D2:
	ldr r1, [r5, #0x4]
	ldr r0, [r1, r4]
	cmp r0, #0x0
	beq _020094E2
	add r0, r5, #0x0
	add r1, r1, r4
	bl FUN_02009490
_020094E2:
	ldr r0, [r5, #0x8]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _020094D2
_020094EC:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_020094F0
FUN_020094F0: ; 0x020094F0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _020094FE
	bl ErrorHandling
_020094FE:
	ldr r0, [r5, #0x8]
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200952C
	add r4, r6, #0x0
_02009508:
	ldr r0, [r5, #0x4]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009522
	bl FUN_02020E38
	cmp r0, r7
	bne _02009522
	mov r0, #0xc
	ldr r1, [r5, #0x4]
	mul r0, r6
	add r0, r1, r0
	pop {r3-r7, pc}
_02009522:
	ldr r0, [r5, #0x8]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02009508
_0200952C:
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02009530
FUN_02009530: ; 0x02009530
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200953A
	bl ErrorHandling
_0200953A:
	ldr r0, [r4, #0x0]
	bl FUN_02020E38
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02009544
FUN_02009544: ; 0x02009544
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	beq _02009552
	bl ErrorHandling
_02009552:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_0200955C
FUN_0200955C: ; 0x0200955C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x1
	beq _0200956A
	bl ErrorHandling
_0200956A:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02009574
FUN_02009574: ; 0x02009574
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x2
	beq _02009582
	bl ErrorHandling
_02009582:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_0200958C
FUN_0200958C: ; 0x0200958C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x3
	beq _0200959A
	bl ErrorHandling
_0200959A:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_020095A4
FUN_020095A4: ; 0x020095A4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x4
	beq _020095B2
	bl ErrorHandling
_020095B2:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_020095BC
FUN_020095BC: ; 0x020095BC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x5
	beq _020095CA
	bl ErrorHandling
_020095CA:
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_020095D4
FUN_020095D4: ; 0x020095D4
	push {r4, lr}
	add r4, r0, #0x0
	bne _020095DE
	bl ErrorHandling
_020095DE:
	ldr r0, [r4, #0x4]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020095E4
FUN_020095E4: ; 0x020095E4
	push {r4, lr}
	add r4, r0, #0x0
	bne _020095EE
	bl ErrorHandling
_020095EE:
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	bne _020095FE
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x4]
	pop {r4, pc}
_020095FE:
	cmp r0, #0x1
	bne _0200960C
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x4]
	pop {r4, pc}
_0200960C:
	mov r0, #0x0
	pop {r4, pc}

	thumb_func_start FUN_02009610
FUN_02009610: ; 0x02009610
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200961A
	bl ErrorHandling
_0200961A:
	ldr r0, [r4, #0x4]
	cmp r0, #0x1
	bne _0200962A
	add r0, r4, #0x0
	bl FUN_02009934
	ldr r0, [r0, #0x8]
	pop {r4, pc}
_0200962A:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02009630
FUN_02009630: ; 0x02009630
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0200963E
	bl ErrorHandling
_0200963E:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _0200964C
	add r0, r5, #0x0
	bl FUN_02009934
	str r4, [r0, #0x4]
_0200964C:
	ldr r0, [r5, #0x4]
	cmp r0, #0x1
	bne _0200965A
	add r0, r5, #0x0
	bl FUN_02009934
	str r4, [r0, #0x4]
_0200965A:
	pop {r3-r5, pc}

	thumb_func_start FUN_0200965C
FUN_0200965C: ; 0x0200965C
	mov r0, #0x10
	bx lr

	thumb_func_start FUN_02009660
FUN_02009660: ; 0x02009660
	lsl r1, r1, #0x4
	add r0, r0, r1
	bx lr
	.balign 4

	thumb_func_start FUN_02009668
FUN_02009668: ; 0x02009668
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r6, r2, #0x0
	cmp r4, #0x0
	bne _02009678
	bl ErrorHandling
_02009678:
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x8]
	mov r0, #0x1
	strb r0, [r4, #0xc]
	add r0, r5, #0x4
	bl FUN_020099E8
	add r2, r0, #0x0
	str r0, [r4, #0x4]
	cmp r2, #0x0
	ble _0200969A
	mov r1, #0x18
	add r0, r6, #0x0
	mul r1, r2
	bl FUN_02016998
	b _0200969C
_0200969A:
	mov r0, #0x0
_0200969C:
	str r0, [r4, #0x0]
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _020096B0
	ldr r3, [r4, #0x4]
	mov r2, #0x18
	add r1, r5, #0x4
	mul r2, r3
	blx memcpy
_020096B0:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_020096B4
FUN_020096B4: ; 0x020096B4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _020096C2
	bl FUN_02016A18
_020096C2:
	mov r0, #0x0
	str r0, [r4, #0x0]
	str r0, [r4, #0x4]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020096CC
FUN_020096CC: ; 0x020096CC
	push {r4, lr}
	add r4, r0, #0x0
	bne _020096D6
	bl ErrorHandling
_020096D6:
	ldr r0, [r4, #0x4]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020096DC
FUN_020096DC: ; 0x020096DC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020096EA
	bl ErrorHandling
_020096EA:
	ldr r0, [r5, #0x4]
	cmp r0, r4
	bgt _020096F4
	bl ErrorHandling
_020096F4:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0x0]
	cmp r0, #0x0
	bne _02009704
	mov r0, #0x4c
	mul r0, r4
	ldr r0, [r1, r0]
	pop {r3-r5, pc}
_02009704:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0xc]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009710
FUN_02009710: ; 0x02009710
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0200971E
	bl ErrorHandling
_0200971E:
	ldr r0, [r5, #0x4]
	cmp r0, r4
	bgt _02009728
	bl ErrorHandling
_02009728:
	ldrb r0, [r5, #0xc]
	cmp r0, #0x1
	bne _02009738
	mov r0, #0x18
	ldr r1, [r5, #0x0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #0x4]
_02009738:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0200973C
FUN_0200973C: ; 0x0200973C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0200974A
	bl ErrorHandling
_0200974A:
	ldr r0, [r5, #0x4]
	cmp r0, r4
	bgt _02009754
	bl ErrorHandling
_02009754:
	ldrb r0, [r5, #0xc]
	cmp r0, #0x1
	bne _02009764
	mov r0, #0x18
	ldr r1, [r5, #0x0]
	mul r0, r4
	add r0, r1, r0
	ldr r6, [r0, #0x8]
_02009764:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02009768
FUN_02009768: ; 0x02009768
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _02009776
	bl ErrorHandling
_02009776:
	ldr r0, [r5, #0x4]
	cmp r0, r4
	bgt _02009780
	bl ErrorHandling
_02009780:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0x0]
	cmp r0, #0x0
	bne _02009792
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x44]
	pop {r3-r5, pc}
_02009792:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x10]
	pop {r3-r5, pc}

	thumb_func_start FUN_0200979C
FUN_0200979C: ; 0x0200979C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020097AA
	bl ErrorHandling
_020097AA:
	ldr r0, [r5, #0x4]
	cmp r0, r4
	bgt _020097B4
	bl ErrorHandling
_020097B4:
	ldrb r0, [r5, #0xc]
	ldr r1, [r5, #0x0]
	cmp r0, #0x0
	bne _020097C6
	mov r0, #0x4c
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x48]
	pop {r3-r5, pc}
_020097C6:
	mov r0, #0x18
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x14]
	pop {r3-r5, pc}

	thumb_func_start FUN_020097D0
FUN_020097D0: ; 0x020097D0
	push {r3-r4}
	ldr r4, [r0, #0x8]
	mov r1, #0x0
	cmp r4, #0x0
	ble _020097F6
	ldr r3, [r0, #0x4]
	add r2, r3, #0x0
_020097DE:
	ldr r0, [r2, #0x0]
	cmp r0, #0x0
	bne _020097EE
	mov r0, #0xc
	mul r0, r1
	add r0, r3, r0
	pop {r3-r4}
	bx lr
_020097EE:
	add r1, r1, #0x1
	add r2, #0xc
	cmp r1, r4
	blt _020097DE
_020097F6:
	mov r0, #0x0
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_020097FC
FUN_020097FC: ; 0x020097FC
	push {r3-r7, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	add r6, r1, #0x0
	add r7, r2, #0x0
	str r3, [sp, #0x0]
	ldr r5, [sp, #0x18]
	bl FUN_02020E0C
	cmp r6, #0x5
	bhi _0200986A
	add r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0200981E: ; jump table (using 16-bit offset)
	.short _0200982A - _0200981E - 2; case 0
	.short _02009836 - _0200981E - 2; case 1
	.short _02009844 - _0200981E - 2; case 2
	.short _0200984E - _0200981E - 2; case 3
	.short _02009858 - _0200981E - 2; case 4
	.short _02009862 - _0200981E - 2; case 5
_0200982A:
	add r1, r7, #0x0
	add r2, r5, #0x0
	bl FUN_0200986C
	str r0, [r4, #0x8]
	pop {r3-r7, pc}
_02009836:
	ldr r2, [sp, #0x0]
	add r1, r7, #0x0
	add r3, r5, #0x0
	bl FUN_0200988C
	str r0, [r4, #0x8]
	pop {r3-r7, pc}
_02009844:
	add r1, r5, #0x0
	bl FUN_020098B0
	str r0, [r4, #0x8]
	pop {r3-r7, pc}
_0200984E:
	add r1, r5, #0x0
	bl FUN_020098CC
	str r0, [r4, #0x8]
	pop {r3-r7, pc}
_02009858:
	add r1, r5, #0x0
	bl FUN_020098E8
	str r0, [r4, #0x8]
	pop {r3-r7, pc}
_02009862:
	add r1, r5, #0x0
	bl FUN_02009904
	str r0, [r4, #0x8]
_0200986A:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200986C
FUN_0200986C: ; 0x0200986C
	push {r4-r6, lr}
	add r6, r0, #0x0
	add r5, r1, #0x0
	add r0, r2, #0x0
	mov r1, #0x8
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r6, #0x0
	add r1, r4, #0x0
	blx FUN_020B0088
	str r5, [r4, #0x4]
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200988C
FUN_0200988C: ; 0x0200988C
	push {r3-r7, lr}
	add r7, r0, #0x0
	add r5, r1, #0x0
	add r0, r3, #0x0
	mov r1, #0xc
	add r6, r2, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r7, #0x0
	add r1, r4, #0x0
	blx FUN_020B0138
	str r5, [r4, #0x4]
	str r6, [r4, #0x8]
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020098B0
FUN_020098B0: ; 0x020098B0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x4
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FUN_020AFEB8
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020098CC
FUN_020098CC: ; 0x020098CC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x4
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FUN_020AFD94
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020098E8
FUN_020098E8: ; 0x020098E8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x4
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FUN_020AFFD8
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009904
FUN_02009904: ; 0x02009904
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x4
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FUN_020AFD88
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009920
FUN_02009920: ; 0x02009920
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	beq _0200992E
	bl FUN_02016A18
_0200992E:
	mov r0, #0x0
	str r0, [r4, #0x8]
	pop {r4, pc}

	thumb_func_start FUN_02009934
FUN_02009934: ; 0x02009934
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200993E
	bl ErrorHandling
_0200993E:
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	bne _02009948
	bl ErrorHandling
_02009948:
	ldr r0, [r4, #0x8]
	pop {r4, pc}

	thumb_func_start FUN_0200994C
FUN_0200994C: ; 0x0200994C
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r1, #0x0
	add r1, r2, #0x0
	add r2, r3, #0x0
	ldr r0, [r0, #0x0]
	ldr r3, [sp, #0x1c]
	bl FUN_02020D10
	str r0, [r4, #0x0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x4]
	str r0, [sp, #0x0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, #0x0
	bl FUN_020097FC
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_02009978
FUN_02009978: ; 0x02009978
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	add r4, r1, #0x0
	str r0, [sp, #0x0]
	add r0, r2, #0x0
	add r1, r3, #0x0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl FUN_02006C98
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r2, [sp, #0x14]
	bl FUN_02020CD4
	str r0, [r4, #0x0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x4]
	str r0, [sp, #0x0]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0x0
	bl FUN_020097FC
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020099B0
FUN_020099B0: ; 0x020099B0
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	add r4, r1, #0x0
	str r0, [sp, #0x0]
	add r0, r2, #0x0
	add r1, r3, #0x0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x24]
	bl FUN_02009A04
	add r1, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r2, [sp, #0x14]
	bl FUN_02020CD4
	str r0, [r4, #0x0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r1, [r4, #0x4]
	str r0, [sp, #0x0]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0x0
	bl FUN_020097FC
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020099E8
FUN_020099E8: ; 0x020099E8
	mov r3, #0x0
	ldr r2, [r0, #0x0]
	sub r1, r3, #0x2
	cmp r2, r1
	beq _020099FE
	sub r1, r3, #0x2
_020099F4:
	add r0, #0x18
	ldr r2, [r0, #0x0]
	add r3, r3, #0x1
	cmp r2, r1
	bne _020099F4
_020099FE:
	add r0, r3, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_02009A04
FUN_02009A04: ; 0x02009A04
	push {r4-r6, lr}
	add r6, r3, #0x0
	add r5, r2, #0x0
	add r2, r6, #0x0
	bl FUN_02006704
	add r4, r0, #0x0
	beq _02009A4A
	cmp r5, #0x0
	beq _02009A4A
	ldr r0, [sp, #0x10]
	cmp r0, #0x0
	bne _02009A2A
	ldr r1, [r4, #0x0]
	add r0, r6, #0x0
	lsr r1, r1, #0x8
	bl FUN_02016998
	b _02009A34
_02009A2A:
	ldr r1, [r4, #0x0]
	add r0, r6, #0x0
	lsr r1, r1, #0x8
	bl FUN_020169D8
_02009A34:
	add r5, r0, #0x0
	cmp r5, #0x0
	beq _02009A48
	add r0, r4, #0x0
	add r1, r5, #0x0
	blx MI_UncompressLZ8
	add r0, r4, #0x0
	bl FUN_02016A18
_02009A48:
	add r4, r5, #0x0
_02009A4A:
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02009A50
FUN_02009A50: ; 0x02009A50
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009A5C
	bl ErrorHandling
_02009A5C:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009A6A
	bl ErrorHandling
_02009A6A:
	add r0, r4, #0x0
	bl FUN_02009544
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	add r0, sp, #0x0
	bl FUN_0201D1F8
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009A90
FUN_02009A90: ; 0x02009A90
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009A9A
	bl ErrorHandling
_02009A9A:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009AC2
	add r4, r6, #0x0
_02009AA4:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009AB8
	bl FUN_02009A50
	cmp r0, #0x0
	bne _02009AB8
	bl ErrorHandling
_02009AB8:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009AA4
_02009AC2:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009AC4
FUN_02009AC4: ; 0x02009AC4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009AD0
	bl ErrorHandling
_02009AD0:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009ADE
	bl ErrorHandling
_02009ADE:
	add r0, r4, #0x0
	bl FUN_02009544
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0x8]
	mov r0, #0x0
	str r0, [sp, #0xc]
	add r0, sp, #0x0
	bl FUN_0201D250
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009B04
FUN_02009B04: ; 0x02009B04
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009B10
	bl ErrorHandling
_02009B10:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009B1E
	bl ErrorHandling
_02009B1E:
	add r0, r4, #0x0
	bl FUN_02009544
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0x8]
	mov r0, #0x1
	str r0, [sp, #0xc]
	add r0, sp, #0x0
	bl FUN_0201D1F8
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009B44
FUN_02009B44: ; 0x02009B44
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009B4E
	bl ErrorHandling
_02009B4E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009B76
	add r4, r6, #0x0
_02009B58:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009B6C
	bl FUN_02009B04
	cmp r0, #0x0
	bne _02009B6C
	bl ErrorHandling
_02009B6C:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009B58
_02009B76:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009B78
FUN_02009B78: ; 0x02009B78
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009B84
	bl ErrorHandling
_02009B84:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009B92
	bl ErrorHandling
_02009B92:
	add r0, r4, #0x0
	bl FUN_02009544
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0x8]
	mov r0, #0x1
	str r0, [sp, #0xc]
	add r0, sp, #0x0
	bl FUN_0201D250
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009BB8
FUN_02009BB8: ; 0x02009BB8
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	bne _02009BC6
	bl ErrorHandling
_02009BC6:
	cmp r5, #0x0
	bne _02009BCE
	bl ErrorHandling
_02009BCE:
	add r0, r4, #0x0
	bl FUN_02009530
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_02009544
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0201D2DC
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009BE8
FUN_02009BE8: ; 0x02009BE8
	push {r3-r5, lr}
	add r5, r0, #0x0
	bne _02009BF2
	bl ErrorHandling
_02009BF2:
	add r0, r5, #0x0
	bl FUN_02009530
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_02009544
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0201D2DC
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009C0C
FUN_02009C0C: ; 0x02009C0C
	push {r4, lr}
	add r4, r0, #0x0
	bne _02009C16
	bl ErrorHandling
_02009C16:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009C24
	bl ErrorHandling
_02009C24:
	add r0, r4, #0x0
	bl FUN_02009530
	bl FUN_0201D324
	pop {r4, pc}

	thumb_func_start FUN_02009C30
FUN_02009C30: ; 0x02009C30
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009C3A
	bl ErrorHandling
_02009C3A:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009C5A
	add r4, r6, #0x0
_02009C44:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009C50
	bl FUN_02009C0C
_02009C50:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009C44
_02009C5A:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009C5C
FUN_02009C5C: ; 0x02009C5C
	push {r4, lr}
	add r4, r0, #0x0
	bne _02009C66
	bl ErrorHandling
_02009C66:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009C74
	bl ErrorHandling
_02009C74:
	add r0, r4, #0x0
	bl FUN_02009530
	bl FUN_0201D3B0
	pop {r4, pc}

	thumb_func_start FUN_02009C80
FUN_02009C80: ; 0x02009C80
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	bne _02009C8E
	bl ErrorHandling
_02009C8E:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x0
	beq _02009C9C
	bl ErrorHandling
_02009C9C:
	cmp r5, #0x0
	bne _02009CA4
	bl ErrorHandling
_02009CA4:
	add r0, r5, #0x0
	bl FUN_020095D4
	cmp r0, #0x2
	beq _02009CB2
	bl ErrorHandling
_02009CB2:
	add r0, r4, #0x0
	bl FUN_02009530
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_02009574
	add r1, r0, #0x0
	ldr r1, [r1, #0xc]
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	bl FUN_0201D3D4
	cmp r0, #0x0
	bne _02009CDA
	add r0, r4, #0x0
	bl FUN_0201D3B0
	bl FUN_0201D458
_02009CDA:
	pop {r3-r5, pc}

	thumb_func_start FUN_02009CDC
FUN_02009CDC: ; 0x02009CDC
	push {r4, lr}
	add r4, r0, #0x0
	bne _02009CE6
	bl ErrorHandling
_02009CE6:
	add r0, r4, #0x0
	bl FUN_0201D4F0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02009CF0
FUN_02009CF0: ; 0x02009CF0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009CFC
	bl ErrorHandling
_02009CFC:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x1
	beq _02009D0A
	bl ErrorHandling
_02009D0A:
	add r0, r4, #0x0
	bl FUN_0200955C
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	bl FUN_02009610
	str r0, [sp, #0x8]
	add r0, sp, #0x0
	bl FUN_0201E0E4
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009D34
FUN_02009D34: ; 0x02009D34
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009D3E
	bl ErrorHandling
_02009D3E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009D66
	add r4, r6, #0x0
_02009D48:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009D5C
	bl FUN_02009CF0
	cmp r0, #0x0
	bne _02009D5C
	bl ErrorHandling
_02009D5C:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009D48
_02009D66:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009D68
FUN_02009D68: ; 0x02009D68
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	bne _02009D74
	bl ErrorHandling
_02009D74:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x1
	beq _02009D82
	bl ErrorHandling
_02009D82:
	add r0, r4, #0x0
	bl FUN_0200955C
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_020095E4
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	bl FUN_02009530
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	bl FUN_02009610
	str r0, [sp, #0x8]
	add r0, sp, #0x0
	bl FUN_0201E128
	add sp, #0x10
	pop {r4, pc}

	thumb_func_start FUN_02009DAC
FUN_02009DAC: ; 0x02009DAC
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009DB6
	bl ErrorHandling
_02009DB6:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009DDE
	add r4, r6, #0x0
_02009DC0:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009DD4
	bl FUN_02009D68
	cmp r0, #0x0
	bne _02009DD4
	bl ErrorHandling
_02009DD4:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009DC0
_02009DDE:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009DE0
FUN_02009DE0: ; 0x02009DE0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bne _02009DEA
	bl ErrorHandling
_02009DEA:
	add r0, r5, #0x0
	bl FUN_02009530
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0200955C
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0201E168
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02009E04
FUN_02009E04: ; 0x02009E04
	push {r4, lr}
	add r4, r0, #0x0
	bne _02009E0E
	bl ErrorHandling
_02009E0E:
	add r0, r4, #0x0
	bl FUN_020095D4
	cmp r0, #0x1
	beq _02009E1C
	bl ErrorHandling
_02009E1C:
	add r0, r4, #0x0
	bl FUN_02009530
	bl FUN_0201E1C8
	pop {r4, pc}

	thumb_func_start FUN_02009E28
FUN_02009E28: ; 0x02009E28
	push {r4-r6, lr}
	add r5, r0, #0x0
	bne _02009E32
	bl ErrorHandling
_02009E32:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02009E52
	add r4, r6, #0x0
_02009E3C:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _02009E48
	bl FUN_02009E04
_02009E48:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _02009E3C
_02009E52:
	pop {r4-r6, pc}

	thumb_func_start FUN_02009E54
FUN_02009E54: ; 0x02009E54
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _02009E62
	bl ErrorHandling
_02009E62:
	add r0, r5, #0x0
	bl FUN_020095D4
	cmp r0, #0x1
	beq _02009E70
	bl ErrorHandling
_02009E70:
	add r0, r5, #0x0
	bl FUN_02009530
	cmp r4, #0x0
	beq _02009E82
	add r1, r4, #0x0
	bl FUN_0201E258
	pop {r3-r5, pc}
_02009E82:
	bl FUN_0201E230
	pop {r3-r5, pc}

	thumb_func_start FUN_02009E88
FUN_02009E88: ; 0x02009E88
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x0
	bl FUN_02009E54
	add r1, r4, #0x0
	blx FUN_020B19C4
	mov r1, #0x0
	mvn r1, r1
	cmp r0, r1
	beq _02009EA8
	asr r1, r0, #0x4
	lsr r1, r1, #0x1b
	add r1, r0, r1
	asr r0, r1, #0x5
_02009EA8:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02009EAC
FUN_02009EAC: ; 0x02009EAC
	push {r3-r4, lr}
	sub sp, #0x14
	add r4, r0, #0x0
	cmp r4, #0x4
	bge _02009EC0
	mov r0, #0x4
	cmp r1, #0x7c
	ble _02009EC0
	sub r4, r0, r4
	sub r1, r1, r4
_02009EC0:
	cmp r2, #0x1
	bge _02009ED0
	mov r4, #0x1
	cmp r3, #0x1e
	ble _02009ED2
	sub r2, r4, r2
	sub r3, r3, r2
	b _02009ED2
_02009ED0:
	add r4, r2, #0x0
_02009ED2:
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x0]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x4]
	ldr r2, [sp, #0x28]
	str r2, [sp, #0x8]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x30]
	str r2, [sp, #0x10]
	add r2, r4, #0x0
	bl FUN_02009EF0
	add sp, #0x14
	pop {r3-r4, pc}

	thumb_func_start FUN_02009EF0
FUN_02009EF0: ; 0x02009EF0
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, _02009F7C ; =0x021C4670
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r0, #0x0
	beq _02009F08
	bl ErrorHandling
_02009F08:
	ldr r0, [sp, #0x30]
	mov r1, #0x3c
	bl FUN_02016998
	ldr r1, _02009F7C ; =0x021C4670
	cmp r0, #0x0
	str r0, [r1, #0x0]
	bne _02009F1C
	bl ErrorHandling
_02009F1C:
	ldr r1, _02009F7C ; =0x021C4670
	lsl r3, r6, #0x10
	ldr r2, [sp, #0x30]
	ldr r0, [r1, #0x0]
	lsr r3, r3, #0x10
	str r2, [r0, #0x38]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r1, #0x0]
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	blx FUN_020B0E34
	cmp r0, #0x0
	bne _02009F48
	bl ErrorHandling
_02009F48:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, _02009F7C ; =0x021C4670
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	add r0, #0x1c
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	blx FUN_020B0E34
	cmp r0, #0x0
	bne _02009F78
	bl ErrorHandling
_02009F78:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_02009F7C: .word 0x021C4670

	thumb_func_start FUN_02009F80
FUN_02009F80: ; 0x02009F80
	push {r3, lr}
	ldr r0, _02009F9C ; =0x021C4670
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02009F98
	blx FUN_020B0870
	ldr r0, _02009F9C ; =0x021C4670
	ldr r0, [r0, #0x0]
	add r0, #0x1c
	blx FUN_020B0870
_02009F98:
	pop {r3, pc}
	nop
_02009F9C: .word 0x021C4670

	thumb_func_start FUN_02009FA0
FUN_02009FA0: ; 0x02009FA0
	push {r3, lr}
	ldr r0, _02009FD4 ; =0x021C4670
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _02009FAE
	bl ErrorHandling
_02009FAE:
	ldr r0, _02009FD4 ; =0x021C4670
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_0200A064
	ldr r0, _02009FD4 ; =0x021C4670
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_0200A06C
	ldr r0, _02009FD4 ; =0x021C4670
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _02009FD4 ; =0x021C4670
	mov r1, #0x0
	str r1, [r0, #0x0]
	pop {r3, pc}
	nop
_02009FD4: .word 0x021C4670

	thumb_func_start FUN_02009FD8
FUN_02009FD8: ; 0x02009FD8
	push {r4-r7, lr}
	sub sp, #0xc
	add r6, r0, #0x0
	ldr r0, _0200A024 ; =0x021C4670
	add r7, r1, #0x0
	ldr r0, [r0, #0x0]
	add r5, r2, #0x0
	add r4, r3, #0x0
	cmp r0, #0x0
	bne _02009FF0
	bl ErrorHandling
_02009FF0:
	cmp r5, #0x1
	bne _0200A00C
	ldr r0, _0200A028 ; =FUN_020213A0
	ldr r2, _0200A02C ; =FUN_0200A074
	str r0, [sp, #0x0]
	str r5, [sp, #0x4]
	ldr r3, _0200A030 ; =FUN_0200A0B8
	add r0, r6, #0x0
	add r1, r7, #0x0
	str r4, [sp, #0x8]
	bl FUN_0202135C
	add sp, #0xc
	pop {r4-r7, pc}
_0200A00C:
	ldr r0, _0200A028 ; =FUN_020213A0
	ldr r2, _0200A034 ; =FUN_0200A094
	str r0, [sp, #0x0]
	str r5, [sp, #0x4]
	ldr r3, _0200A038 ; =FUN_0200A0DC
	add r0, r6, #0x0
	add r1, r7, #0x0
	str r4, [sp, #0x8]
	bl FUN_0202135C
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0200A024: .word 0x021C4670
_0200A028: .word FUN_020213A0 
_0200A02C: .word FUN_0200A074 
_0200A030: .word FUN_0200A0B8 
_0200A034: .word FUN_0200A094 
_0200A038: .word FUN_0200A0DC 

	thumb_func_start FUN_0200A03C
FUN_0200A03C: ; 0x0200A03C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0200A060 ; =0x021C4670
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0200A04C
	bl ErrorHandling
_0200A04C:
	cmp r4, #0x0
	bne _0200A056
	ldr r0, _0200A060 ; =0x021C4670
	ldr r0, [r0, #0x0]
	pop {r4, pc}
_0200A056:
	ldr r0, _0200A060 ; =0x021C4670
	ldr r0, [r0, #0x0]
	add r0, #0x1c
	pop {r4, pc}
	nop
_0200A060: .word 0x021C4670

	thumb_func_start FUN_0200A064
FUN_0200A064: ; 0x0200A064
	ldr r3, _0200A068 ; =FUN_020203CC
	bx r3
	.balign 4
_0200A068: .word FUN_020203CC 

	thumb_func_start FUN_0200A06C
FUN_0200A06C: ; 0x0200A06C
	ldr r3, _0200A070 ; =FUN_02020404
	bx r3
	.balign 4
_0200A070: .word FUN_02020404 

	thumb_func_start FUN_0200A074
FUN_0200A074: ; 0x0200A074
	push {r4, lr}
	add r3, r0, #0x0
	ldr r0, _0200A090 ; =0x021C4670
	add r2, r1, #0x0
	ldr r0, [r0, #0x0]
	add r1, r3, #0x0
	blx FUN_020B0C7C
	add r4, r0, #0x0
	bne _0200A08C
	bl ErrorHandling
_0200A08C:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_0200A090: .word 0x021C4670

	thumb_func_start FUN_0200A094
FUN_0200A094: ; 0x0200A094
	push {r4, lr}
	add r3, r0, #0x0
	ldr r0, _0200A0B4 ; =0x021C4670
	add r2, r1, #0x0
	ldr r0, [r0, #0x0]
	add r1, r3, #0x0
	add r0, #0x1c
	blx FUN_020B0C7C
	add r4, r0, #0x0
	bne _0200A0AE
	bl ErrorHandling
_0200A0AE:
	add r0, r4, #0x0
	pop {r4, pc}
	nop
_0200A0B4: .word 0x021C4670

	thumb_func_start FUN_0200A0B8
FUN_0200A0B8: ; 0x0200A0B8
	push {r4, lr}
	add r1, r0, #0x0
	ldr r0, _0200A0D4 ; =0x021C4670
	ldr r0, [r0, #0x0]
	blx FUN_020B0BB0
	add r4, r0, #0x0
	ldr r0, _0200A0D8 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A0D0
	bl ErrorHandling
_0200A0D0:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_0200A0D4: .word 0x021C4670
_0200A0D8: .word 0x0000FFFE

	thumb_func_start FUN_0200A0DC
FUN_0200A0DC: ; 0x0200A0DC
	push {r4, lr}
	add r1, r0, #0x0
	ldr r0, _0200A0FC ; =0x021C4670
	ldr r0, [r0, #0x0]
	add r0, #0x1c
	blx FUN_020B0BB0
	add r4, r0, #0x0
	ldr r0, _0200A100 ; =0x0000FFFE
	cmp r4, r0
	bne _0200A0F6
	bl ErrorHandling
_0200A0F6:
	add r0, r4, #0x0
	pop {r4, pc}
	nop
_0200A0FC: .word 0x021C4670
_0200A100: .word 0x0000FFFE

	thumb_func_start FUN_0200A104
FUN_0200A104: ; 0x0200A104
	push {r3-r7, lr}
	add r5, r0, #0x0
	mov r0, #0x10
	ldrsb r2, [r5, r0]
	mov r0, #0x14
	ldrsh r0, [r5, r0]
	add r1, r2, #0x0
	mov r7, #0x1a
	ldrsh r2, [r5, r7]
	mul r1, r0
	mov r6, #0xa
	ldrsh r0, [r5, r6]
	add r1, r2, r1
	mov r4, #0x0
	cmp r0, r1
	beq _0200A162
	cmp r2, r0
	beq _0200A162
	strh r1, [r5, #0x1a]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #0x16]
	add r2, r5, #0x0
	add r1, r5, #0x0
	add r0, r3, r0
	strh r0, [r5, #0x18]
	ldrh r3, [r5, #0x18]
	ldrh r0, [r5, #0x8]
	add r2, #0x1a
	add r1, #0x18
	cmp r3, r0
	blo _0200A166
	mov r3, #0x10
	ldrsh r0, [r2, r4]
	ldrsb r3, [r5, r3]
	add r0, r0, r3
	strh r0, [r2, #0x0]
	ldrsh r2, [r5, r7]
	ldrsh r0, [r5, r6]
	cmp r2, r0
	beq _0200A15E
	ldrh r2, [r1, #0x0]
	ldrh r0, [r5, #0x8]
	sub r0, r2, r0
	strh r0, [r1, #0x0]
	b _0200A166
_0200A15E:
	mov r4, #0x1
	b _0200A166
_0200A162:
	strh r0, [r5, #0x1a]
	mov r4, #0x1
_0200A166:
	ldr r1, [r5, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0200A17C
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200A198 ; =0x04000050
	ldr r1, [r5, #0x0]
	blx FUN_020C74B8
	b _0200A18E
_0200A17C:
	mov r0, #0x2
	tst r0, r1
	beq _0200A18E
	mov r2, #0x1a
	ldrsh r2, [r5, r2]
	ldr r0, _0200A19C ; =0x04001050
	ldr r1, [r5, #0x0]
	blx FUN_020C74B8
_0200A18E:
	cmp r4, #0x1
	bne _0200A196
	mov r0, #0x0
	str r0, [r5, #0x1c]
_0200A196:
	pop {r3-r7, pc}
	.balign 4
_0200A198: .word 0x04000050
_0200A19C: .word 0x04001050

	thumb_func_start FUN_0200A1A0
FUN_0200A1A0: ; 0x0200A1A0
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r0, #0x0
	beq _0200A1B4
	bl ErrorHandling
_0200A1B4:
	ldr r1, [sp, #0x18]
	mov r0, #0x1
	lsl r1, r1, #0x18
	str r0, [r5, #0x1c]
	lsr r1, r1, #0x18
	str r1, [r5, #0x0]
	ldr r1, [sp, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [r5, #0x4]
	strh r4, [r5, #0x8]
	strh r6, [r5, #0xa]
	strh r7, [r5, #0x1a]
	sub r1, r7, r6
	strh r1, [r5, #0x12]
	mov r1, #0x12
	ldrsh r2, [r5, r1]
	cmp r2, #0x0
	ble _0200A1E0
	sub r1, #0x13
	strb r1, [r5, #0x10]
	b _0200A1EA
_0200A1E0:
	strb r0, [r5, #0x10]
	ldrsh r0, [r5, r1]
	sub r1, #0x13
	mul r1, r0
	strh r1, [r5, #0x12]
_0200A1EA:
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0x0
	blx _s32_div_f
	strh r0, [r5, #0x14]
	mov r0, #0x12
	ldrsh r0, [r5, r0]
	add r1, r4, #0x0
	blx _s32_div_f
	strh r1, [r5, #0x16]
	mov r0, #0x0
	strh r0, [r5, #0x18]
	pop {r3-r7, pc}

	thumb_func_start FUN_0200A208
FUN_0200A208: ; 0x0200A208
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r6, r2, #0x0
	add r4, r3, #0x0
	cmp r5, #0x0
	beq _0200A25E
	ldr r1, [sp, #0x20]
	mov r0, #0x1
	tst r0, r1
	beq _0200A23A
	ldr r0, _0200A264 ; =0x04000050
	add r1, r4, #0x0
	blx FUN_020C74B8
	str r4, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, _0200A268 ; =0x021C4694
	add r1, r5, #0x0
	add r2, r7, #0x0
	add r3, r6, #0x0
	bl FUN_0200A1A0
_0200A23A:
	ldr r1, [sp, #0x20]
	mov r0, #0x2
	tst r0, r1
	beq _0200A25E
	ldr r0, _0200A26C ; =0x04001050
	add r1, r4, #0x0
	add r2, r6, #0x0
	blx FUN_020C74B8
	str r4, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, _0200A270 ; =0x021C4674
	add r1, r5, #0x0
	add r2, r7, #0x0
	add r3, r6, #0x0
	bl FUN_0200A1A0
_0200A25E:
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_0200A264: .word 0x04000050
_0200A268: .word 0x021C4694
_0200A26C: .word 0x04001050
_0200A270: .word 0x021C4674

	thumb_func_start FUN_0200A274
FUN_0200A274: ; 0x0200A274
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	mov r0, #0x1
	add r6, r1, #0x0
	tst r0, r4
	beq _0200A28A
	ldr r0, _0200A2A4 ; =0x04000050
	add r2, r5, #0x0
	blx FUN_020C74B8
_0200A28A:
	mov r0, #0x2
	tst r0, r4
	beq _0200A29A
	ldr r0, _0200A2A8 ; =0x04001050
	add r1, r6, #0x0
	add r2, r5, #0x0
	blx FUN_020C74B8
_0200A29A:
	add r0, r4, #0x0
	bl FUN_0200A2D8
	pop {r4-r6, pc}
	nop
_0200A2A4: .word 0x04000050
_0200A2A8: .word 0x04001050

	thumb_func_start FUN_0200A2AC
FUN_0200A2AC: ; 0x0200A2AC
	push {r3, lr}
	ldr r0, _0200A2CC ; =0x021C4694
	mov r1, #0x0
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r0, _0200A2D0 ; =0x021C4674
	mov r1, #0x0
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r0, _0200A2D4 ; =0x021C4674
	mov r1, #0x0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x1c]
	pop {r3, pc}
	.balign 4
_0200A2CC: .word 0x021C4694
_0200A2D0: .word 0x021C4674
_0200A2D4: .word 0x021C4674

	thumb_func_start FUN_0200A2D8
FUN_0200A2D8: ; 0x0200A2D8
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0x1
	tst r0, r4
	beq _0200A2F2
	ldr r0, _0200A30C ; =0x021C4694
	mov r1, #0x0
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r0, _0200A310 ; =0x021C4674
	mov r1, #0x0
	str r1, [r0, #0x3c]
_0200A2F2:
	mov r0, #0x2
	tst r0, r4
	beq _0200A308
	ldr r0, _0200A314 ; =0x021C4674
	mov r1, #0x0
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r0, _0200A310 ; =0x021C4674
	mov r1, #0x0
	str r1, [r0, #0x1c]
_0200A308:
	pop {r4, pc}
	nop
_0200A30C: .word 0x021C4694
_0200A310: .word 0x021C4674
_0200A314: .word 0x021C4674

	thumb_func_start FUN_0200A318
FUN_0200A318: ; 0x0200A318
	push {r3, lr}
	ldr r0, _0200A338 ; =0x021C4674
	ldr r0, [r0, #0x3c]
	cmp r0, #0x0
	beq _0200A328
	ldr r0, _0200A33C ; =0x021C4694
	bl FUN_0200A104
_0200A328:
	ldr r0, _0200A338 ; =0x021C4674
	ldr r0, [r0, #0x1c]
	cmp r0, #0x0
	beq _0200A336
	ldr r0, _0200A340 ; =0x021C4674
	bl FUN_0200A104
_0200A336:
	pop {r3, pc}
	.balign 4
_0200A338: .word 0x021C4674
_0200A33C: .word 0x021C4694
_0200A340: .word 0x021C4674

	thumb_func_start FUN_0200A344
FUN_0200A344: ; 0x0200A344
	cmp r0, #0x3
	bne _0200A35A
	ldr r0, _0200A380 ; =0x021C4674
	ldr r1, [r0, #0x3c]
	cmp r1, #0x0
	bne _0200A37A
	ldr r0, [r0, #0x1c]
	cmp r0, #0x0
	bne _0200A37A
	mov r0, #0x1
	bx lr
_0200A35A:
	cmp r0, #0x1
	bne _0200A36A
	ldr r0, _0200A380 ; =0x021C4674
	ldr r0, [r0, #0x3c]
	cmp r0, #0x0
	bne _0200A37A
	mov r0, #0x1
	bx lr
_0200A36A:
	cmp r0, #0x2
	bne _0200A37A
	ldr r0, _0200A380 ; =0x021C4674
	ldr r0, [r0, #0x1c]
	cmp r0, #0x0
	bne _0200A37A
	mov r0, #0x1
	bx lr
_0200A37A:
	mov r0, #0x0
	bx lr
	nop
_0200A380: .word 0x021C4674

	thumb_func_start FUN_0200A384
FUN_0200A384: ; 0x0200A384
	ldr r3, _0200A388 ; =LoadFromNarc_2
	bx r3
	.balign 4
_0200A388: .word LoadFromNarc_2 

	thumb_func_start FUN_0200A38C
FUN_0200A38C: ; 0x0200A38C
	ldr r3, _0200A390 ; =FUN_02016A18
	bx r3
	.balign 4
_0200A390: .word FUN_02016A18 

	thumb_func_start FUN_0200A394
FUN_0200A394: ; 0x0200A394
	push {r3-r7, lr}
	sub sp, #0x8
	add r3, r0, #0x0
	ldrh r0, [r3, #0x0]
	add r5, r1, #0x0
	add r4, r2, #0x0
	cmp r5, r0
	bhs _0200A404
	lsl r0, r5, #0x3
	add r0, r3, r0
	ldr r2, [r0, #0x4]
	ldr r1, [r0, #0x8]
	ldr r6, _0200A40C ; =0x000002FD
	str r2, [sp, #0x0]
	str r1, [sp, #0x4]
	ldrh r0, [r3, #0x2]
	add r7, r5, #0x1
	mul r6, r0
	add r0, r7, #0x0
	mul r0, r6
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	lsl r0, r6, #0x10
	orr r0, r6
	eor r2, r0
	eor r0, r1
	str r0, [sp, #0x4]
	str r2, [sp, #0x0]
	add r1, r3, r2
	add r0, r4, #0x0
	add r2, sp, #0x0
	bl FUN_0200A4C0
	ldr r2, [sp, #0x4]
	ldr r0, _0200A410 ; =0x00091BD3
	add r1, r7, #0x0
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	sub r3, r2, #0x1
	cmp r2, #0x0
	beq _0200A408
	ldr r0, _0200A414 ; =0x0000493D
_0200A3EA:
	ldrh r1, [r4, #0x0]
	eor r1, r5
	strh r1, [r4, #0x0]
	add r1, r5, r0
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	add r1, r3, #0x0
	add r4, r4, #0x2
	sub r3, r3, #0x1
	cmp r1, #0x0
	bne _0200A3EA
	add sp, #0x8
	pop {r3-r7, pc}
_0200A404:
	bl ErrorHandling
_0200A408:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_0200A40C: .word 0x000002FD
_0200A410: .word 0x00091BD3
_0200A414: .word 0x0000493D

	thumb_func_start FUN_0200A418
FUN_0200A418: ; 0x0200A418
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r1, #0x0
	add r1, r3, #0x0
	add r4, r2, #0x0
	bl FUN_02006670
	add r6, r0, #0x0
	beq _0200A4AE
	add r1, sp, #0xc
	str r1, [sp, #0x0]
	add r1, r5, #0x0
	mov r2, #0x0
	mov r3, #0x4
	bl FUN_02006814
	add r0, sp, #0x4
	lsl r2, r4, #0x3
	str r0, [sp, #0x0]
	add r0, r6, #0x0
	add r1, r5, #0x0
	add r2, r2, #0x4
	mov r3, #0x8
	bl FUN_02006814
	add r0, sp, #0x4
	ldrh r2, [r0, #0xa]
	ldr r0, _0200A4B4 ; =0x000002FD
	add r1, r4, #0x1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0x4]
	eor r0, r1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x8]
	eor r0, r1
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x20]
	add r1, r5, #0x0
	str r0, [sp, #0x0]
	ldr r3, [sp, #0x8]
	ldr r2, [sp, #0x4]
	add r0, r6, #0x0
	lsl r3, r3, #0x1
	bl FUN_02006814
	ldr r2, _0200A4B8 ; =0x00091BD3
	add r3, r4, #0x1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x8]
	lsr r3, r2, #0x10
	sub r2, r0, #0x1
	ldr r1, [sp, #0x20]
	cmp r0, #0x0
	beq _0200A4A8
	ldr r0, _0200A4BC ; =0x0000493D
_0200A492:
	ldrh r4, [r1, #0x0]
	eor r4, r3
	strh r4, [r1, #0x0]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0x0
	add r1, r1, #0x2
	lsr r3, r3, #0x10
	sub r2, r2, #0x1
	cmp r4, #0x0
	bne _0200A492
_0200A4A8:
	add r0, r6, #0x0
	bl FUN_020066F4
_0200A4AE:
	add sp, #0x10
	pop {r4-r6, pc}
	nop
_0200A4B4: .word 0x000002FD
_0200A4B8: .word 0x00091BD3
_0200A4BC: .word 0x0000493D

	thumb_func_start FUN_0200A4C0
FUN_0200A4C0: ; 0x0200A4C0
	add r3, r0, #0x0
	add r0, r1, #0x0
	add r1, r3, #0x0
	ldr r2, [r2, #0x4]
	ldr r3, _0200A4D0 ; =MIi_CpuCopy16
	lsl r2, r2, #0x1
	bx r3
	nop
_0200A4D0: .word MIi_CpuCopy16

	thumb_func_start FUN_0200A4D4
FUN_0200A4D4: ; 0x0200A4D4
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldrh r0, [r5, #0x0]
	add r4, r1, #0x0
	str r2, [sp, #0x0]
	cmp r4, r0
	bhs _0200A56A
	lsl r0, r4, #0x3
	add r0, r5, r0
	ldr r3, [r0, #0x4]
	ldr r2, [r0, #0x8]
	ldrh r1, [r5, #0x2]
	ldr r6, _0200A578 ; =0x000002FD
	add r0, r4, #0x1
	mul r6, r1
	add r1, r0, #0x0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0x0
	add r6, r2, #0x0
	str r3, [sp, #0x8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #0x8]
	lsl r0, r6, #0x1
	str r0, [sp, #0x4]
	str r2, [sp, #0xc]
	ldr r1, [sp, #0x4]
	mov r0, #0x0
	str r6, [sp, #0xc]
	bl FUN_020169D8
	add r7, r0, #0x0
	beq _0200A574
	ldr r0, [sp, #0x8]
	ldr r2, [sp, #0x4]
	add r0, r5, r0
	add r1, r7, #0x0
	blx MIi_CpuCopy16
	ldr r1, _0200A57C ; =0x00091BD3
	add r2, r4, #0x1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0x0
	sub r1, r6, #0x1
	cmp r6, #0x0
	beq _0200A556
	ldr r3, _0200A580 ; =0x0000493D
_0200A540:
	ldrh r4, [r0, #0x0]
	eor r4, r2
	strh r4, [r0, #0x0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0x0
	add r0, r0, #0x2
	lsr r2, r2, #0x10
	sub r1, r1, #0x1
	cmp r4, #0x0
	bne _0200A540
_0200A556:
	ldr r0, [sp, #0x0]
	add r1, r7, #0x0
	add r2, r6, #0x0
	bl FUN_02021E8C
	add r0, r7, #0x0
	bl FUN_02016A18
	add sp, #0x10
	pop {r3-r7, pc}
_0200A56A:
	bl ErrorHandling
	ldr r0, [sp, #0x0]
	bl FUN_02021A4C
_0200A574:
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4
_0200A578: .word 0x000002FD
_0200A57C: .word 0x00091BD3
_0200A580: .word 0x0000493D

	thumb_func_start FUN_0200A584
FUN_0200A584: ; 0x0200A584
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldrh r0, [r5, #0x0]
	add r4, r1, #0x0
	str r2, [sp, #0x0]
	cmp r4, r0
	bhs _0200A62C
	lsl r0, r4, #0x3
	add r0, r5, r0
	ldr r3, [r0, #0x4]
	ldr r2, [r0, #0x8]
	ldrh r1, [r5, #0x2]
	ldr r6, _0200A63C ; =0x000002FD
	add r0, r4, #0x1
	mul r6, r1
	add r1, r0, #0x0
	mul r1, r6
	lsl r0, r1, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	add r0, r3, #0x0
	add r6, r2, #0x0
	str r3, [sp, #0x8]
	eor r0, r1
	eor r6, r1
	str r0, [sp, #0x8]
	lsl r0, r6, #0x1
	str r0, [sp, #0x4]
	str r2, [sp, #0xc]
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	str r6, [sp, #0xc]
	bl FUN_020169D8
	add r7, r0, #0x0
	beq _0200A626
	ldr r0, [sp, #0x8]
	ldr r2, [sp, #0x4]
	add r0, r5, r0
	add r1, r7, #0x0
	blx MIi_CpuCopy16
	ldr r1, _0200A640 ; =0x00091BD3
	add r2, r4, #0x1
	mul r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	add r0, r7, #0x0
	sub r1, r6, #0x1
	cmp r6, #0x0
	beq _0200A606
	ldr r3, _0200A644 ; =0x0000493D
_0200A5F0:
	ldrh r4, [r0, #0x0]
	eor r4, r2
	strh r4, [r0, #0x0]
	add r2, r2, r3
	lsl r2, r2, #0x10
	add r4, r1, #0x0
	add r0, r0, #0x2
	lsr r2, r2, #0x10
	sub r1, r1, #0x1
	cmp r4, #0x0
	bne _0200A5F0
_0200A606:
	ldr r1, [sp, #0x0]
	add r0, r6, #0x0
	bl FUN_020219F4
	add r4, r0, #0x0
	beq _0200A61A
	add r1, r7, #0x0
	add r2, r6, #0x0
	bl FUN_02021E8C
_0200A61A:
	add r0, r7, #0x0
	bl FUN_02016A18
	add sp, #0x10
	add r0, r4, #0x0
	pop {r3-r7, pc}
_0200A626:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0200A62C:
	bl ErrorHandling
	ldr r1, [sp, #0x0]
	mov r0, #0x4
	bl FUN_020219F4
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4
_0200A63C: .word 0x000002FD
_0200A640: .word 0x00091BD3
_0200A644: .word 0x0000493D

	thumb_func_start FUN_0200A648
FUN_0200A648: ; 0x0200A648
	push {r3-r7, lr}
	add r7, r3, #0x0
	add r5, r1, #0x0
	add r1, r7, #0x0
	add r4, r2, #0x0
	bl FUN_02006670
	add r6, r0, #0x0
	beq _0200A66E
	ldr r1, [sp, #0x18]
	add r2, r4, #0x0
	str r1, [sp, #0x0]
	add r1, r5, #0x0
	add r3, r7, #0x0
	bl FUN_0200A670
	add r0, r6, #0x0
	bl FUN_020066F4
_0200A66E:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200A670
FUN_0200A670: ; 0x0200A670
	push {r4-r7, lr}
	sub sp, #0x14
	add r5, r2, #0x0
	add r2, sp, #0x10
	add r4, r3, #0x0
	str r2, [sp, #0x0]
	mov r2, #0x0
	mov r3, #0x4
	add r7, r0, #0x0
	str r1, [sp, #0x4]
	bl FUN_02006814
	add r0, sp, #0x8
	ldrh r0, [r0, #0x8]
	cmp r5, r0
	bhs _0200A71E
	add r0, sp, #0x8
	lsl r2, r5, #0x3
	str r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add r0, r7, #0x0
	add r2, r2, #0x4
	mov r3, #0x8
	bl FUN_02006814
	add r0, sp, #0x8
	ldrh r2, [r0, #0xa]
	ldr r0, _0200A72C ; =0x000002FD
	add r1, r5, #0x1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0x8]
	eor r0, r1
	str r0, [sp, #0x8]
	ldr r0, [sp, #0xc]
	eor r0, r1
	lsl r6, r0, #0x1
	str r0, [sp, #0xc]
	add r0, r4, #0x0
	add r1, r6, #0x0
	bl FUN_020169D8
	add r4, r0, #0x0
	beq _0200A728
	str r4, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x8]
	add r0, r7, #0x0
	add r3, r6, #0x0
	bl FUN_02006814
	ldr r2, _0200A730 ; =0x00091BD3
	add r3, r5, #0x1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0xc]
	lsr r3, r2, #0x10
	add r1, r4, #0x0
	sub r2, r0, #0x1
	cmp r0, #0x0
	beq _0200A70A
	ldr r0, _0200A734 ; =0x0000493D
_0200A6F4:
	ldrh r5, [r1, #0x0]
	eor r5, r3
	strh r5, [r1, #0x0]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r5, r2, #0x0
	add r1, r1, #0x2
	lsr r3, r3, #0x10
	sub r2, r2, #0x1
	cmp r5, #0x0
	bne _0200A6F4
_0200A70A:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0xc]
	add r1, r4, #0x0
	bl FUN_02021E8C
	add r0, r4, #0x0
	bl FUN_02016A18
	add sp, #0x14
	pop {r4-r7, pc}
_0200A71E:
	bl ErrorHandling
	ldr r0, [sp, #0x28]
	bl FUN_02021A4C
_0200A728:
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_0200A72C: .word 0x000002FD
_0200A730: .word 0x00091BD3
_0200A734: .word 0x0000493D

	thumb_func_start FUN_0200A738
FUN_0200A738: ; 0x0200A738
	push {r3-r7, lr}
	add r6, r3, #0x0
	add r5, r1, #0x0
	add r1, r6, #0x0
	add r4, r2, #0x0
	bl FUN_02006670
	add r7, r0, #0x0
	beq _0200A75E
	add r1, r5, #0x0
	add r2, r4, #0x0
	add r3, r6, #0x0
	bl FUN_0200A76C
	add r4, r0, #0x0
	add r0, r7, #0x0
	bl FUN_020066F4
	b _0200A768
_0200A75E:
	mov r0, #0x4
	add r1, r6, #0x0
	bl FUN_020219F4
	add r4, r0, #0x0
_0200A768:
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_0200A76C
FUN_0200A76C: ; 0x0200A76C
	push {r3-r7, lr}
	sub sp, #0x18
	add r4, r2, #0x0
	add r2, sp, #0x14
	add r5, r3, #0x0
	str r2, [sp, #0x0]
	mov r2, #0x0
	mov r3, #0x4
	add r7, r0, #0x0
	str r1, [sp, #0x4]
	bl FUN_02006814
	add r0, sp, #0xc
	ldrh r0, [r0, #0x8]
	cmp r4, r0
	bhs _0200A82A
	add r0, sp, #0xc
	lsl r2, r4, #0x3
	str r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add r0, r7, #0x0
	add r2, r2, #0x4
	mov r3, #0x8
	bl FUN_02006814
	add r0, sp, #0xc
	ldrh r2, [r0, #0xa]
	ldr r0, _0200A83C ; =0x000002FD
	add r1, r4, #0x1
	mul r0, r2
	mul r0, r1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r1, #0x10
	orr r1, r0
	ldr r0, [sp, #0xc]
	eor r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	eor r0, r1
	add r1, r5, #0x0
	str r0, [sp, #0x10]
	bl FUN_020219F4
	str r0, [sp, #0x8]
	cmp r0, #0x0
	beq _0200A824
	ldr r0, [sp, #0x10]
	lsl r6, r0, #0x1
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_020169D8
	add r5, r0, #0x0
	beq _0200A824
	str r5, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0xc]
	add r0, r7, #0x0
	add r3, r6, #0x0
	bl FUN_02006814
	ldr r2, _0200A840 ; =0x00091BD3
	add r3, r4, #0x1
	mul r2, r3
	lsl r2, r2, #0x10
	ldr r0, [sp, #0x10]
	lsr r3, r2, #0x10
	add r1, r5, #0x0
	sub r2, r0, #0x1
	cmp r0, #0x0
	beq _0200A814
	ldr r0, _0200A844 ; =0x0000493D
_0200A7FE:
	ldrh r4, [r1, #0x0]
	eor r4, r3
	strh r4, [r1, #0x0]
	add r3, r3, r0
	lsl r3, r3, #0x10
	add r4, r2, #0x0
	add r1, r1, #0x2
	lsr r3, r3, #0x10
	sub r2, r2, #0x1
	cmp r4, #0x0
	bne _0200A7FE
_0200A814:
	ldr r0, [sp, #0x8]
	ldr r2, [sp, #0x10]
	add r1, r5, #0x0
	bl FUN_02021E8C
	add r0, r5, #0x0
	bl FUN_02016A18
_0200A824:
	ldr r0, [sp, #0x8]
	add sp, #0x18
	pop {r3-r7, pc}
_0200A82A:
	bl ErrorHandling
	mov r0, #0x4
	add r1, r5, #0x0
	bl FUN_020219F4
	add sp, #0x18
	pop {r3-r7, pc}
	nop
_0200A83C: .word 0x000002FD
_0200A840: .word 0x00091BD3
_0200A844: .word 0x0000493D

	thumb_func_start FUN_0200A848
FUN_0200A848: ; 0x0200A848
	ldrh r0, [r0, #0x0]
	bx lr

	thumb_func_start FUN_0200A84C
FUN_0200A84C: ; 0x0200A84C
	push {r3, lr}
	sub sp, #0x8
	add r3, r0, #0x0
	mov r0, #0x4
	add r2, r1, #0x0
	str r0, [sp, #0x0]
	add r1, r3, #0x0
	add r0, sp, #0x4
	mov r3, #0x0
	bl FUN_02006548
	add r0, sp, #0x4
	ldrh r0, [r0, #0x0]
	add sp, #0x8
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200A86C
FUN_0200A86C: ; 0x0200A86C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r0, r3, #0x0
	mov r1, #0xc
	add r7, r2, #0x0
	str r3, [sp, #0x0]
	bl FUN_020169D8
	add r4, r0, #0x0
	beq _0200A8B4
	cmp r5, #0x0
	bne _0200A8A0
	ldr r2, [sp, #0x0]
	add r0, r6, #0x0
	add r1, r7, #0x0
	bl FUN_0200A384
	str r0, [r4, #0x8]
	cmp r0, #0x0
	bne _0200A8AA
	add r0, r4, #0x0
	bl FUN_02016A18
	mov r0, #0x0
	pop {r3-r7, pc}
_0200A8A0:
	ldr r1, [sp, #0x0]
	add r0, r6, #0x0
	bl FUN_02006670
	str r0, [r4, #0x8]
_0200A8AA:
	strh r5, [r4, #0x0]
	strh r6, [r4, #0x4]
	ldr r0, [sp, #0x0]
	strh r7, [r4, #0x6]
	strh r0, [r4, #0x2]
_0200A8B4:
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_0200A8B8
FUN_0200A8B8: ; 0x0200A8B8
	push {r4, lr}
	add r4, r0, #0x0
	beq _0200A8DE
	ldrh r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0200A8CA
	cmp r0, #0x1
	beq _0200A8D2
	b _0200A8D8
_0200A8CA:
	ldr r0, [r4, #0x8]
	bl FUN_0200A38C
	b _0200A8D8
_0200A8D2:
	ldr r0, [r4, #0x8]
	bl FUN_020066F4
_0200A8D8:
	add r0, r4, #0x0
	bl FUN_02016A18
_0200A8DE:
	pop {r4, pc}

	thumb_func_start FUN_0200A8E0
FUN_0200A8E0: ; 0x0200A8E0
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	ldrh r0, [r4, #0x0]
	add r3, r1, #0x0
	cmp r0, #0x0
	beq _0200A8F6
	cmp r0, #0x1
	beq _0200A900
	add sp, #0x4
	pop {r3-r4, pc}
_0200A8F6:
	ldr r0, [r4, #0x8]
	bl FUN_0200A4D4
	add sp, #0x4
	pop {r3-r4, pc}
_0200A900:
	str r2, [sp, #0x0]
	add r2, r3, #0x0
	ldrh r1, [r4, #0x6]
	ldrh r3, [r4, #0x2]
	ldr r0, [r4, #0x8]
	bl FUN_0200A670
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0200A914
FUN_0200A914: ; 0x0200A914
	push {r3, lr}
	add r3, r0, #0x0
	ldrh r0, [r3, #0x0]
	add r2, r1, #0x0
	cmp r0, #0x0
	beq _0200A926
	cmp r0, #0x1
	beq _0200A930
	b _0200A93C
_0200A926:
	ldrh r2, [r3, #0x2]
	ldr r0, [r3, #0x8]
	bl FUN_0200A584
	pop {r3, pc}
_0200A930:
	ldr r0, [r3, #0x8]
	ldrh r1, [r3, #0x6]
	ldrh r3, [r3, #0x2]
	bl FUN_0200A76C
	pop {r3, pc}
_0200A93C:
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start FUN_0200A940
FUN_0200A940: ; 0x0200A940
	push {r3, lr}
	add r1, r0, #0x0
	ldrh r0, [r1, #0x0]
	cmp r0, #0x0
	beq _0200A950
	cmp r0, #0x1
	beq _0200A958
	b _0200A962
_0200A950:
	ldr r0, [r1, #0x8]
	bl FUN_0200A848
	pop {r3, pc}
_0200A958:
	ldrh r0, [r1, #0x4]
	ldrh r1, [r1, #0x6]
	bl FUN_0200A84C
	pop {r3, pc}
_0200A962:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200A968
FUN_0200A968: ; 0x0200A968
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	ldrh r0, [r4, #0x0]
	add r3, r1, #0x0
	cmp r0, #0x0
	beq _0200A97E
	cmp r0, #0x1
	beq _0200A988
	add sp, #0x4
	pop {r3-r4, pc}
_0200A97E:
	ldr r0, [r4, #0x8]
	bl FUN_0200A394
	add sp, #0x4
	pop {r3-r4, pc}
_0200A988:
	str r2, [sp, #0x0]
	add r2, r3, #0x0
	ldrh r0, [r4, #0x4]
	ldrh r1, [r4, #0x6]
	ldrh r3, [r4, #0x2]
	bl FUN_0200A418
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0200A99C
FUN_0200A99C: ; 0x0200A99C
	push {r4-r6, lr}
	add r4, r2, #0x0
	add r5, r0, #0x0
	add r3, r1, #0x0
	ldr r2, _0200A9C0 ; =0x0000016A
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r6, r0, #0x0
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0200A968
	add r0, r6, #0x0
	bl FUN_0200A8B8
	pop {r4-r6, pc}
	.balign 4
_0200A9C0: .word 0x0000016A

	thumb_func_start FUN_0200A9C4
FUN_0200A9C4: ; 0x0200A9C4
	push {r3-r7, lr}
	sub sp, #0x8
	add r7, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0x4]
	add r5, r1, #0x0
	mov r0, #0x1
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0xa
	add r6, r2, #0x0
	str r3, [sp, #0x0]
	bl FUN_020219F4
	add r4, r0, #0x0
	beq _0200AA0E
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_0200A914
	add r5, r0, #0x0
	beq _0200AA08
	add r0, r7, #0x0
	add r1, r4, #0x0
	add r2, r5, #0x0
	bl FUN_0200B7B8
	ldr r1, [sp, #0x0]
	add r0, r4, #0x0
	bl FUN_02021ACC
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	bl FUN_02021A20
_0200AA08:
	add r0, r4, #0x0
	bl FUN_02021A20
_0200AA0E:
	ldr r0, [sp, #0x4]
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_0200AA14
FUN_0200AA14: ; 0x0200AA14
	push {r4-r6, lr}
	add r5, r1, #0x0
	mov r2, #0x93
	add r6, r0, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	add r3, r5, #0x0
	bl FUN_0200A86C
	add r4, r0, #0x0
	beq _0200AA4C
	mov r0, #0x10
	add r1, r5, #0x0
	bl FUN_020219F4
	add r5, r0, #0x0
	beq _0200AA42
	add r0, r4, #0x0
	add r1, r6, #0x0
	add r2, r5, #0x0
	bl FUN_0200A8E0
_0200AA42:
	add r0, r4, #0x0
	bl FUN_0200A8B8
	add r0, r5, #0x0
	pop {r4-r6, pc}
_0200AA4C:
	mov r0, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0200AA50
FUN_0200AA50: ; 0x0200AA50
	push {r3-r5, lr}
	ldr r2, _0200AA7C ; =0x0000016A
	add r4, r0, #0x0
	add r3, r1, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r5, r0, #0x0
	beq _0200AA76
	add r1, r4, #0x0
	bl FUN_0200A914
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0200A8B8
	add r0, r4, #0x0
	pop {r3-r5, pc}
_0200AA76:
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_0200AA7C: .word 0x0000016A

	thumb_func_start FUN_0200AA80
FUN_0200AA80: ; 0x0200AA80
	ldr r3, _0200AA8C ; =FUN_0200AA90
	add r2, r0, #0x0
	mov r0, #0x8
	mov r1, #0x20
	bx r3
	nop
_0200AA8C: .word FUN_0200AA90 

	thumb_func_start FUN_0200AA90
FUN_0200AA90: ; 0x0200AA90
	push {r3-r7, lr}
	sub sp, #0x8
	add r7, r0, #0x0
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	bne _0200AAA0
	bl ErrorHandling
_0200AAA0:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	bne _0200AAAA
	bl ErrorHandling
_0200AAAA:
	ldr r0, [sp, #0x4]
	mov r1, #0x10
	bl FUN_020169D8
	add r4, r0, #0x0
	beq _0200AB10
	ldr r0, [sp, #0x4]
	str r7, [r4, #0x0]
	str r0, [r4, #0x4]
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	bl FUN_020219F4
	str r0, [r4, #0xc]
	cmp r0, #0x0
	beq _0200AB10
	ldr r0, [sp, #0x4]
	lsl r1, r7, #0x3
	bl FUN_020169D8
	str r0, [r4, #0x8]
	cmp r0, #0x0
	beq _0200AB10
	mov r6, #0x0
	cmp r7, #0x0
	bls _0200AB06
	add r5, r6, #0x0
_0200AAE0:
	add r0, r0, r5
	bl FUN_0200AB6C
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	bl FUN_020219F4
	ldr r1, [r4, #0x8]
	add r1, r1, r5
	str r0, [r1, #0x4]
	ldr r0, [r4, #0x8]
	add r1, r0, r5
	ldr r1, [r1, #0x4]
	cmp r1, #0x0
	beq _0200AB06
	add r6, r6, #0x1
	add r5, #0x8
	cmp r6, r7
	blo _0200AAE0
_0200AB06:
	cmp r6, r7
	bne _0200AB10
	add sp, #0x8
	add r0, r4, #0x0
	pop {r3-r7, pc}
_0200AB10:
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AB18
FUN_0200AB18: ; 0x0200AB18
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	bne _0200AB26
	bl ErrorHandling
_0200AB26:
	ldr r0, [r5, #0x8]
	cmp r0, #0x0
	beq _0200AB54
	ldr r0, [r5, #0x0]
	mov r6, #0x0
	cmp r0, #0x0
	bls _0200AB4E
	add r4, r6, #0x0
_0200AB36:
	ldr r0, [r5, #0x8]
	add r0, r0, r4
	ldr r0, [r0, #0x4]
	cmp r0, #0x0
	beq _0200AB4E
	bl FUN_02021A20
	ldr r0, [r5, #0x0]
	add r6, r6, #0x1
	add r4, #0x8
	cmp r6, r0
	blo _0200AB36
_0200AB4E:
	ldr r0, [r5, #0x8]
	bl FUN_02016A18
_0200AB54:
	ldr r0, [r5, #0xc]
	cmp r0, #0x0
	beq _0200AB5E
	bl FUN_02021A20
_0200AB5E:
	mov r0, #0x0
	str r0, [r5, #0x0]
	add r0, r5, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200AB6C
FUN_0200AB6C: ; 0x0200AB6C
	bx lr
	.balign 4

	thumb_func_start FUN_0200AB70
FUN_0200AB70: ; 0x0200AB70
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r6, r1, #0x0
	add r7, r2, #0x0
	add r4, r3, #0x0
	cmp r6, r0
	blo _0200AB84
	bl ErrorHandling
_0200AB84:
	ldr r0, [r5, #0x0]
	cmp r6, r0
	bhs _0200ABB2
	cmp r4, #0x0
	beq _0200ABA4
	ldrb r0, [r4, #0x0]
	ldr r3, [r5, #0x8]
	lsl r2, r6, #0x3
	strb r0, [r3, r2]
	ldrb r0, [r4, #0x1]
	add r1, r3, r2
	strb r0, [r1, #0x1]
	ldrb r0, [r4, #0x2]
	strb r0, [r1, #0x2]
	ldrb r0, [r4, #0x3]
	strb r0, [r1, #0x3]
_0200ABA4:
	ldr r1, [r5, #0x8]
	lsl r0, r6, #0x3
	add r0, r1, r0
	ldr r0, [r0, #0x4]
	add r1, r7, #0x0
	bl FUN_02021A74
_0200ABB2:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200ABB4
FUN_0200ABB4: ; 0x0200ABB4
	push {r3, lr}
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200ABC0
FUN_0200ABC0: ; 0x0200ABC0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r4, r1, #0x0
	bl FUN_0202398C
	add r1, r0, #0x0
	ldr r0, [r5, #0xc]
	bl FUN_02021E28
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200ABE4
FUN_0200ABE4: ; 0x0200ABE4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r4, r1, #0x0
	bl FUN_02024EC0
	bl FUN_02024EE8
	add r1, r0, #0x0
	ldr r0, [r5, #0xc]
	bl FUN_02021E28
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200AC0C
FUN_0200AC0C: ; 0x0200AC0C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r6, r1, #0x0
	bl FUN_020238F4
	add r7, r0, #0x0
	ldr r2, _0200AC5C ; =0x000001F1
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r4, r0, #0x0
	add r0, r7, #0x0
	bl FUN_020239CC
	cmp r0, #0x0
	bne _0200AC3E
	ldr r2, [r5, #0xc]
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0200A8E0
	b _0200AC48
_0200AC3E:
	ldr r2, [r5, #0xc]
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_0200A8E0
_0200AC48:
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r4, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
	.balign 4
_0200AC5C: .word 0x000001F1

	thumb_func_start FUN_0200AC60
FUN_0200AC60: ; 0x0200AC60
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r2, #0x0
	add r6, r1, #0x0
	ldr r2, _0200ACA0 ; =0x0000016A
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r4, r0, #0x0
	add r0, r7, #0x0
	mov r1, #0x5
	mov r2, #0x0
	bl FUN_020672BC
	add r1, r0, #0x0
	ldr r2, [r5, #0xc]
	add r0, r4, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r4, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
	nop
_0200ACA0: .word 0x0000016A

	thumb_func_start FUN_0200ACA4
FUN_0200ACA4: ; 0x0200ACA4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r0, r2, #0x0
	mov r1, #0x5
	mov r2, #0x0
	bl FUN_020672BC
	add r2, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0200ACC0
	pop {r3-r5, pc}

	thumb_func_start FUN_0200ACC0
FUN_0200ACC0: ; 0x0200ACC0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200ACF4 ; =0x0000016B
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	add r7, r0, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
	nop
_0200ACF4: .word 0x0000016B

	thumb_func_start FUN_0200ACF8
FUN_0200ACF8: ; 0x0200ACF8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r4, r1, #0x0
	ldr r2, [r5, #0xc]
	mov r1, #0x76
	bl FUN_020672BC
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200AD18
FUN_0200AD18: ; 0x0200AD18
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r4, r1, #0x0
	ldr r2, [r5, #0xc]
	mov r1, #0x90
	bl FUN_020672BC
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200AD38
FUN_0200AD38: ; 0x0200AD38
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [sp, #0x14]
	add r4, r1, #0x0
	str r0, [sp, #0x0]
	add r1, r2, #0x0
	add r2, r3, #0x0
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x10]
	bl FUN_02021B04
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}

	thumb_func_start FUN_0200AD5C
FUN_0200AD5C: ; 0x0200AD5C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x93
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AD90
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AD90:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AD94
FUN_0200AD94: ; 0x0200AD94
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x79
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200ADC8
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200ADC8:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200ADCC
FUN_0200ADCC: ; 0x0200ADCC
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x8a
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AE00
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AE00:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AE04
FUN_0200AE04: ; 0x0200AE04
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xbe
	bl FUN_0200A86C
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	add r7, r0, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AE38
FUN_0200AE38: ; 0x0200AE38
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x56
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AE6C
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AE6C:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AE70
FUN_0200AE70: ; 0x0200AE70
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200AEA4 ; =0x0000015A
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AEA2
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AEA2:
	pop {r3-r7, pc}
	.balign 4
_0200AEA4: .word 0x0000015A

	thumb_func_start FUN_0200AEA8
FUN_0200AEA8: ; 0x0200AEA8
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200AEDC ; =0x0000015B
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AEDA
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AEDA:
	pop {r3-r7, pc}
	.balign 4
_0200AEDC: .word 0x0000015B

	thumb_func_start FUN_0200AEE0
FUN_0200AEE0: ; 0x0200AEE0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200AF14 ; =0x0000015D
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AF12
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AF12:
	pop {r3-r7, pc}
	.balign 4
_0200AF14: .word 0x0000015D

	thumb_func_start FUN_0200AF18
FUN_0200AF18: ; 0x0200AF18
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200AF4C ; =0x00000235
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AF4A
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AF4A:
	pop {r3-r7, pc}
	.balign 4
_0200AF4C: .word 0x00000235

	thumb_func_start FUN_0200AF50
FUN_0200AF50: ; 0x0200AF50
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200AF84 ; =0x000001EF
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AF82
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AF82:
	pop {r3-r7, pc}
	.balign 4
_0200AF84: .word 0x000001EF

	thumb_func_start FUN_0200AF88
FUN_0200AF88: ; 0x0200AF88
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xcd
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AFBA
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AFBA:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200AFBC
FUN_0200AFBC: ; 0x0200AFBC
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x89
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200AFF0
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200AFF0:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200AFF4
FUN_0200AFF4: ; 0x0200AFF4
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B028 ; =0x0000017E
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B026
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B026:
	pop {r3-r7, pc}
	.balign 4
_0200B028: .word 0x0000017E

	thumb_func_start FUN_0200B02C
FUN_0200B02C: ; 0x0200B02C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B060 ; =0x00000196
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B05E
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B05E:
	pop {r3-r7, pc}
	.balign 4
_0200B060: .word 0x00000196

	thumb_func_start FUN_0200B064
FUN_0200B064: ; 0x0200B064
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x23
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x4
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B098
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B098:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B09C
FUN_0200B09C: ; 0x0200B09C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B0D0 ; =0x00000231
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B0CE
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B0CE:
	pop {r3-r7, pc}
	.balign 4
_0200B0D0: .word 0x00000231

	thumb_func_start FUN_0200B0D4
FUN_0200B0D4: ; 0x0200B0D4
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	mov r2, #0x23
	add r6, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x4
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B108
	ldrb r1, [r4, #0x1]
	ldr r2, [r5, #0xc]
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B108:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B10C
FUN_0200B10C: ; 0x0200B10C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B140 ; =0x0000022F
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B13E
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B13E:
	pop {r3-r7, pc}
	.balign 4
_0200B140: .word 0x0000022F

	thumb_func_start FUN_0200B144
FUN_0200B144: ; 0x0200B144
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	add r2, #0x14
	add r4, r1, #0x0
	add r1, r2, #0x0
	bl FUN_02021E28
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200B164
FUN_0200B164: ; 0x0200B164
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B198 ; =0x00000239
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B196
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B196:
	pop {r3-r7, pc}
	.balign 4
_0200B198: .word 0x00000239

	thumb_func_start FUN_0200B19C
FUN_0200B19C: ; 0x0200B19C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B1D0 ; =0x0000023A
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B1CE
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B1CE:
	pop {r3-r7, pc}
	.balign 4
_0200B1D0: .word 0x0000023A

	thumb_func_start FUN_0200B1D4
FUN_0200B1D4: ; 0x0200B1D4
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B208 ; =0x0000023B
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B206
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B206:
	pop {r3-r7, pc}
	.balign 4
_0200B208: .word 0x0000023B

	thumb_func_start FUN_0200B20C
FUN_0200B20C: ; 0x0200B20C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x8f
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B240
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B240:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B244
FUN_0200B244: ; 0x0200B244
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xc2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B276
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B276:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B278
FUN_0200B278: ; 0x0200B278
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xbf
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B2AA
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B2AA:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B2AC
FUN_0200B2AC: ; 0x0200B2AC
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xbf
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B2DE
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B2DE:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B2E0
FUN_0200B2E0: ; 0x0200B2E0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B314 ; =0x0000023E
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B312
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B312:
	pop {r3-r7, pc}
	.balign 4
_0200B314: .word 0x0000023E

	thumb_func_start FUN_0200B318
FUN_0200B318: ; 0x0200B318
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B34C ; =0x0000023D
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B34A
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B34A:
	pop {r3-r7, pc}
	.balign 4
_0200B34C: .word 0x0000023D

	thumb_func_start FUN_0200B350
FUN_0200B350: ; 0x0200B350
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B384 ; =0x00000237
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B382
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B382:
	pop {r3-r7, pc}
	.balign 4
_0200B384: .word 0x00000237

	thumb_func_start FUN_0200B388
FUN_0200B388: ; 0x0200B388
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x8e
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B3BC
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B3BC:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B3C0
FUN_0200B3C0: ; 0x0200B3C0
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r6, r1, #0x0
	add r4, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xc7
	bl FUN_0200A86C
	add r7, r0, #0x0
	cmp r4, #0x0
	beq _0200B3E0
	cmp r4, #0x1
	beq _0200B3EA
	b _0200B3F4
_0200B3E0:
	ldr r2, [r5, #0xc]
	mov r1, #0x44
	bl FUN_0200A8E0
	b _0200B3FA
_0200B3EA:
	ldr r2, [r5, #0xc]
	mov r1, #0x45
	bl FUN_0200A8E0
	b _0200B3FA
_0200B3F4:
	ldr r0, [r5, #0xc]
	bl FUN_02021A4C
_0200B3FA:
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B410
FUN_0200B410: ; 0x0200B410
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r4, r1, #0x0
	ldr r2, [r5, #0xc]
	add r1, r3, #0x0
	bl FUN_0206B484
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200B430
FUN_0200B430: ; 0x0200B430
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B464 ; =0x0000014B
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B462
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B462:
	pop {r3-r7, pc}
	.balign 4
_0200B464: .word 0x0000014B

	thumb_func_start FUN_0200B468
FUN_0200B468: ; 0x0200B468
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B49C ; =0x00000226
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B49A
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B49A:
	pop {r3-r7, pc}
	.balign 4
_0200B49C: .word 0x00000226

	thumb_func_start FUN_0200B4A0
FUN_0200B4A0: ; 0x0200B4A0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x99
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B4D4
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B4D4:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B4D8
FUN_0200B4D8: ; 0x0200B4D8
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r0, r2, #0x0
	add r6, r1, #0x0
	add r4, r3, #0x0
	bl FUN_02088D40
	add r2, r0, #0x0
	beq _0200B516
	cmp r4, #0x0
	beq _0200B516
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B516
	ldr r2, [r5, #0xc]
	add r1, r4, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B516:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B518
FUN_0200B518: ; 0x0200B518
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	ldr r1, [r5, #0xc]
	add r0, r2, #0x0
	bl FUN_02013A58
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	pop {r3-r5, pc}

	thumb_func_start FUN_0200B534
FUN_0200B534: ; 0x0200B534
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xa
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B566
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B566:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B568
FUN_0200B568: ; 0x0200B568
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r3, [r5, #0x4]
	add r4, r1, #0x0
	add r6, r2, #0x0
	mov r0, #0x1
	mov r1, #0x1a
	mov r2, #0xb
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B59A
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B59A:
	pop {r3-r7, pc}

	thumb_func_start FUN_0200B59C
FUN_0200B59C: ; 0x0200B59C
	push {r3-r7, lr}
	add r4, r2, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r7, r1, #0x0
	bl FUN_02015CC0
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02015CE0
	add r4, r0, #0x0
	ldr r2, _0200B620 ; =0x020ECE64
	lsl r3, r6, #0x1
	ldrh r2, [r2, r3]
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r6, r0, #0x0
	beq _0200B61E
	bl FUN_0200A940
	cmp r4, r0
	bhs _0200B5EE
	ldr r2, [r5, #0xc]
	add r0, r6, #0x0
	add r1, r4, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r7, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r6, #0x0
	bl FUN_0200A8B8
	pop {r3-r7, pc}
_0200B5EE:
	add r0, r6, #0x0
	bl FUN_0200A8B8
	ldr r2, _0200B624 ; =0x0000017E
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r4, r0, #0x0
	beq _0200B61E
	ldr r2, [r5, #0xc]
	mov r1, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r7, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r4, #0x0
	bl FUN_0200A8B8
_0200B61E:
	pop {r3-r7, pc}
	.balign 4
_0200B620: .word 0x020ECE64
_0200B624: .word 0x0000017E

	thumb_func_start FUN_0200B628
FUN_0200B628: ; 0x0200B628
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B65C ; =0x0000019E
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B65A
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B65A:
	pop {r3-r7, pc}
	.balign 4
_0200B65C: .word 0x0000019E

	thumb_func_start FUN_0200B660
FUN_0200B660: ; 0x0200B660
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B694 ; =0x00000152
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B692
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B692:
	pop {r3-r7, pc}
	.balign 4
_0200B694: .word 0x00000152

	thumb_func_start FUN_0200B698
FUN_0200B698: ; 0x0200B698
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	add r4, r1, #0x0
	ldr r2, _0200B6CC ; =0x00000153
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B6CA
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B6CA:
	pop {r3-r7, pc}
	.balign 4
_0200B6CC: .word 0x00000153

	thumb_func_start FUN_0200B6D0
FUN_0200B6D0: ; 0x0200B6D0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r2, #0x0
	mov r2, #0x55
	add r4, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r7, r0, #0x0
	beq _0200B704
	ldr r2, [r5, #0xc]
	add r1, r6, #0x0
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r4, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r7, #0x0
	bl FUN_0200A8B8
_0200B704:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B708
FUN_0200B708: ; 0x0200B708
	push {r4-r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x8]
	add r5, r2, #0x0
	add r0, r1, #0x0
	str r3, [sp, #0xc]
	bl FUN_0202881C
	add r6, r0, #0x0
	add r1, r5, #0x0
	bl FUN_020287F8
	str r0, [sp, #0x10]
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_02028804
	add r7, r0, #0x0
	mov r0, #0x40
	mov r1, #0x4
	bl FUN_020219F4
	add r4, r0, #0x0
	ldr r2, [sp, #0x28]
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_020287A8
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_02021E28
	mov r0, #0x1
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r2, r4, #0x0
	str r7, [sp, #0x4]
	bl FUN_0200ABB4
	add r0, r4, #0x0
	bl FUN_02021A20
	add sp, #0x14
	pop {r4-r7, pc}

	thumb_func_start FUN_0200B764
FUN_0200B764: ; 0x0200B764
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	mov r2, #0x5b
	add r7, r1, #0x0
	ldr r3, [r5, #0x4]
	mov r0, #0x1
	mov r1, #0x1a
	lsl r2, r2, #0x2
	bl FUN_0200A86C
	add r6, r0, #0x0
	beq _0200B7A4
	cmp r4, #0x1
	blo _0200B786
	cmp r4, #0xc
	bls _0200B788
_0200B786:
	mov r4, #0x1
_0200B788:
	ldr r2, [r5, #0xc]
	add r0, r6, #0x0
	sub r1, r4, #0x1
	bl FUN_0200A8E0
	ldr r2, [r5, #0xc]
	add r0, r5, #0x0
	add r1, r7, #0x0
	mov r3, #0x0
	bl FUN_0200AB70
	add r0, r6, #0x0
	bl FUN_0200A8B8
_0200B7A4:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200B7A8
FUN_0200B7A8: ; 0x0200B7A8
	ldr r2, [r0, #0x8]
	lsl r0, r1, #0x3
	add r0, r2, r0
	ldr r3, _0200B7B4 ; =FUN_02021FF8
	ldr r0, [r0, #0x4]
	bx r3
	.balign 4
_0200B7B4: .word FUN_02021FF8 

	thumb_func_start FUN_0200B7B8
FUN_0200B7B8: ; 0x0200B7B8
	push {r3-r7, lr}
	add r7, r0, #0x0
	add r6, r1, #0x0
	add r0, r2, #0x0
	bl FUN_02021F2C
	add r5, r0, #0x0
	add r0, r6, #0x0
	bl FUN_02021A4C
	ldrh r1, [r5, #0x0]
	ldr r0, _0200B844 ; =0x0000FFFF
	cmp r1, r0
	beq _0200B840
_0200B7D4:
	ldr r0, _0200B848 ; =0x0000FFFE
	cmp r1, r0
	bne _0200B82E
	add r0, r5, #0x0
	bl FUN_0201B8F8
	cmp r0, #0x0
	beq _0200B810
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0201B914
	add r4, r0, #0x0
	ldr r0, [r7, #0x0]
	cmp r4, r0
	blo _0200B7F8
	bl ErrorHandling
_0200B7F8:
	ldr r2, [r7, #0x8]
	lsl r1, r4, #0x3
	add r1, r2, r1
	ldr r1, [r1, #0x4]
	add r0, r6, #0x0
	bl FUN_02022048
	add r0, r5, #0x0
	bl FUN_0201B8B8
	add r5, r0, #0x0
	b _0200B838
_0200B810:
	add r0, r5, #0x0
	add r4, r5, #0x0
	bl FUN_0201B8B8
	add r5, r0, #0x0
	cmp r4, r5
	bhs _0200B838
_0200B81E:
	ldrh r1, [r4, #0x0]
	add r0, r6, #0x0
	add r4, r4, #0x2
	bl FUN_02021FB0
	cmp r4, r5
	blo _0200B81E
	b _0200B838
_0200B82E:
	ldrh r1, [r5, #0x0]
	add r0, r6, #0x0
	add r5, r5, #0x2
	bl FUN_02021FB0
_0200B838:
	ldrh r1, [r5, #0x0]
	ldr r0, _0200B844 ; =0x0000FFFF
	cmp r1, r0
	bne _0200B7D4
_0200B840:
	pop {r3-r7, pc}
	nop
_0200B844: .word 0x0000FFFF
_0200B848: .word 0x0000FFFE

	thumb_func_start FUN_0200B84C
FUN_0200B84C: ; 0x0200B84C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	mov r6, #0x0
	cmp r0, #0x0
	bls _0200B86E
	add r4, r6, #0x0
_0200B85A:
	ldr r0, [r5, #0x8]
	add r0, r0, r4
	ldr r0, [r0, #0x4]
	bl FUN_02021A4C
	ldr r0, [r5, #0x0]
	add r6, r6, #0x1
	add r4, #0x8
	cmp r6, r0
	blo _0200B85A
_0200B86E:
	pop {r4-r6, pc}

	thumb_func_start FUN_0200B870
FUN_0200B870: ; 0x0200B870
	push {r4-r7, lr}
	sub sp, #0x2c
	add r4, r3, #0x0
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r0, r4, #0x0
	mov r1, #0x2c
	str r2, [sp, #0x4]
	bl FUN_02016998
	str r0, [sp, #0x8]
	cmp r0, #0x0
	beq _0200B98A
	ldr r3, [sp, #0x8]
	mov r0, #0xe
	mov r1, #0x4
	mov r2, #0x1
	add r3, r3, #0x4
	str r4, [sp, #0x0]
	bl FUN_02006BB0
	ldr r1, [sp, #0x8]
	mov r3, #0x0
	str r0, [r1, #0x0]
	add r0, r1, #0x0
	ldr r0, [r0, #0x4]
	ldr r4, [r0, #0x14]
	ldr r0, [r0, #0x10]
	cmp r0, #0x0
	bls _0200B984
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0x4
	orr r1, r0
	str r1, [sp, #0xc]
	add r1, r0, #0x0
	orr r1, r5
	str r1, [sp, #0x10]
	orr r0, r6
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x4]
	lsl r0, r5, #0x4
	orr r1, r0
	str r1, [sp, #0x18]
	add r1, r5, #0x0
	orr r1, r0
	str r1, [sp, #0x1c]
	orr r0, r6
	lsl r2, r6, #0x4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x4]
	add r7, r2, #0x0
	orr r7, r1
	add r1, r2, #0x0
	orr r1, r5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r2, r6
	str r1, [sp, #0x28]
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp, #0x18]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	mov r12, r2
	str r1, [sp, #0x24]
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
_0200B914:
	ldrb r5, [r4, r3]
	cmp r5, #0x12
	bgt _0200B93C
	bge _0200B962
	cmp r5, #0x10
	bgt _0200B936
	bge _0200B95A
	cmp r5, #0x2
	bgt _0200B978
	cmp r5, #0x0
	blt _0200B978
	beq _0200B94E
	cmp r5, #0x1
	beq _0200B952
	cmp r5, #0x2
	beq _0200B956
	b _0200B978
_0200B936:
	cmp r5, #0x11
	beq _0200B95E
	b _0200B978
_0200B93C:
	cmp r5, #0x21
	bgt _0200B948
	bge _0200B96E
	cmp r5, #0x20
	beq _0200B968
	b _0200B978
_0200B948:
	cmp r5, #0x22
	beq _0200B974
	b _0200B978
_0200B94E:
	strb r2, [r4, r3]
	b _0200B978
_0200B952:
	strb r1, [r4, r3]
	b _0200B978
_0200B956:
	strb r0, [r4, r3]
	b _0200B978
_0200B95A:
	strb r6, [r4, r3]
	b _0200B978
_0200B95E:
	strb r7, [r4, r3]
	b _0200B978
_0200B962:
	ldr r5, [sp, #0x20]
	strb r5, [r4, r3]
	b _0200B978
_0200B968:
	ldr r5, [sp, #0x24]
	strb r5, [r4, r3]
	b _0200B978
_0200B96E:
	ldr r5, [sp, #0x28]
	strb r5, [r4, r3]
	b _0200B978
_0200B974:
	mov r5, r12
	strb r5, [r4, r3]
_0200B978:
	ldr r5, [sp, #0x8]
	add r3, r3, #0x1
	ldr r5, [r5, #0x4]
	ldr r5, [r5, #0x10]
	cmp r3, r5
	blo _0200B914
_0200B984:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x8]
	str r1, [r0, #0x28]
_0200B98A:
	ldr r0, [sp, #0x8]
	add sp, #0x2c
	pop {r4-r7, pc}

	thumb_func_start FUN_0200B990
FUN_0200B990: ; 0x0200B990
	push {r4, lr}
	add r4, r0, #0x0
	beq _0200B9A6
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0200B9A0
	bl FUN_02016A18
_0200B9A0:
	add r0, r4, #0x0
	bl FUN_02016A18
_0200B9A6:
	pop {r4, pc}

	thumb_func_start FUN_0200B9A8
FUN_0200B9A8: ; 0x0200B9A8
	push {r3-r5, lr}
	sub sp, #0x18
	add r4, r0, #0x0
	ldr r0, _0200B9E4 ; =0x020ECE6E
	lsl r5, r1, #0x2
	ldrh r1, [r0, r5]
	lsl r3, r3, #0x10
	mov r0, #0x8
	str r1, [sp, #0x0]
	str r0, [sp, #0x4]
	lsr r3, r3, #0x10
	str r3, [sp, #0x8]
	ldr r3, [sp, #0x28]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r4, #0x4]
	add r0, r2, #0x0
	ldr r2, [r1, #0x14]
	ldr r1, _0200B9E8 ; =0x020ECE6C
	ldrh r1, [r1, r5]
	add r1, r2, r1
	mov r2, #0x0
	add r3, r2, #0x0
	bl FUN_02019658
	add sp, #0x18
	pop {r3-r5, pc}
	.balign 4
_0200B9E4: .word 0x020ECE6E
_0200B9E8: .word 0x020ECE6C

	thumb_func_start FUN_0200B9EC
FUN_0200B9EC: ; 0x0200B9EC
	push {r3-r7, lr}
	sub sp, #0x18
	add r6, r0, #0x0
	ldr r0, [sp, #0x30]
	add r4, r2, #0x0
	str r0, [sp, #0x30]
	add r0, r6, #0x0
	add r2, r3, #0x0
	add r0, #0x8
	add r3, r4, #0x0
	ldr r5, [sp, #0x34]
	ldr r7, [sp, #0x38]
	bl ConvertUIntToDecimalString
	ldrh r1, [r6, #0x8]
	ldr r0, _0200BA74 ; =0x0000FFFF
	cmp r1, r0
	beq _0200BA6E
	lsl r0, r7, #0x10
	add r4, r6, #0x0
	lsr r7, r0, #0x10
_0200BA16:
	ldrh r2, [r4, #0x8]
	cmp r2, #0xa2
	blo _0200BA4A
	cmp r2, #0xab
	bhi _0200BA4A
	mov r0, #0x8
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x8]
	str r7, [sp, #0xc]
	mov r0, #0x8
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [r6, #0x4]
	sub r2, #0xa2
	ldr r1, [r1, #0x14]
	lsl r2, r2, #0x5
	add r1, r1, r2
	mov r2, #0x0
	ldr r0, [sp, #0x30]
	add r3, r2, #0x0
	bl FUN_02019658
	b _0200BA62
_0200BA4A:
	mov r0, #0x8
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r1, [r6, #0x28]
	lsl r2, r5, #0x10
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x10
	add r3, r7, #0x0
	bl FUN_020196F4
_0200BA62:
	add r4, r4, #0x2
	ldrh r1, [r4, #0x8]
	ldr r0, _0200BA74 ; =0x0000FFFF
	add r5, #0x8
	cmp r1, r0
	bne _0200BA16
_0200BA6E:
	add sp, #0x18
	pop {r3-r7, pc}
	nop
_0200BA74: .word 0x0000FFFF

	thumb_func_start FUN_0200BA78
FUN_0200BA78: ; 0x0200BA78
	push {r3-r6, lr}
	sub sp, #0xc
	add r4, r2, #0x0
	ldr r2, [sp, #0x2c]
	add r6, r3, #0x0
	str r2, [sp, #0x0]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r5, r0, #0x0
	bl FUN_0200B9A8
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x28]
	add r1, r4, #0x0
	add r0, #0x10
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0x0
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	bl FUN_0200B9EC
	add sp, #0xc
	pop {r3-r6, pc}

	thumb_func_start FUN_0200BAAC
FUN_0200BAAC: ; 0x0200BAAC
	push {r3-r7, lr}
	add r7, r0, #0x0
	add r4, r2, #0x0
	ldr r2, [r7, #0x28]
	ldr r6, [sp, #0x18]
	lsl r0, r2, #0x4
	orr r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	add r0, r7, #0x0
	add r2, r3, #0x0
	add r0, #0x8
	add r3, r4, #0x0
	bl ConvertUIntToDecimalString
	ldrh r1, [r7, #0x8]
	ldr r0, _0200BB10 ; =0x0000FFFF
	cmp r1, r0
	beq _0200BB0C
	add r4, r7, #0x0
	mov r5, #0x0
_0200BAD8:
	ldrh r2, [r4, #0x8]
	cmp r2, #0xa2
	blo _0200BAF6
	cmp r2, #0xab
	bhi _0200BAF6
	ldr r0, [r7, #0x4]
	sub r2, #0xa2
	ldr r1, [r0, #0x14]
	lsl r0, r2, #0x5
	add r0, r1, r0
	add r1, r6, r5
	mov r2, #0x20
	blx MIi_CpuCopy32
	b _0200BB00
_0200BAF6:
	ldr r1, [sp, #0x0]
	add r0, r6, r5
	mov r2, #0x20
	blx MI_CpuFill8
_0200BB00:
	add r4, r4, #0x2
	ldrh r1, [r4, #0x8]
	ldr r0, _0200BB10 ; =0x0000FFFF
	add r5, #0x20
	cmp r1, r0
	bne _0200BAD8
_0200BB0C:
	pop {r3-r7, pc}
	nop
_0200BB10: .word 0x0000FFFF

	thumb_func_start FUN_0200BB14
FUN_0200BB14: ; 0x0200BB14
	push {r4, lr}
	mov r1, #0x4e
	lsl r1, r1, #0x2
	add r4, r0, #0x0
	bl FUN_02016998
	cmp r0, #0x0
	bne _0200BB28
	mov r0, #0x0
	pop {r4, pc}
_0200BB28:
	str r4, [r0, #0x0]
	mov r1, #0x0
	str r1, [r0, #0x4]
	mov r1, #0x1
	str r1, [r0, #0x8]
	pop {r4, pc}

	thumb_func_start FUN_0200BB34
FUN_0200BB34: ; 0x0200BB34
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200BB3E
	bl ErrorHandling
_0200BB3E:
	ldr r0, [r4, #0x0]
	mov r1, #0x58
	bl FUN_02016998
	cmp r0, #0x0
	bne _0200BB4E
	mov r0, #0x0
	pop {r4, pc}
_0200BB4E:
	ldr r1, [r4, #0x4]
	mov r2, #0x0
	add r1, r1, #0x1
	str r1, [r4, #0x4]
	add r3, r0, #0x0
	add r1, r2, #0x0
_0200BB5A:
	add r2, r2, #0x1
	str r1, [r3, #0xc]
	add r3, r3, #0x4
	cmp r2, #0x6
	blt _0200BB5A
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200BB68
FUN_0200BB68: ; 0x0200BB68
	add r0, #0x10
	bx lr

	thumb_func_start FUN_0200BB6C
FUN_0200BB6C: ; 0x0200BB6C
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r5, #0x0
	bne _0200BB80
	bl ErrorHandling
_0200BB80:
	cmp r5, #0x0
	bne _0200BB8A
	add sp, #0x24
	mov r0, #0x0
	pop {r4-r7, pc}
_0200BB8A:
	ldr r0, [r6, #0x0]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x4]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x0]
	str r0, [sp, #0x20]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	add r0, sp, #0x14
	bl FUN_0201D060
	ldr r1, [r5, #0x0]
	add r0, r7, #0x0
	bl FUN_0201E00C
	blx FUN_020B0FC0
	ldr r0, [r5, #0x8]
	cmp r0, #0x1
	bne _0200BBD6
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x0]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0x8]
	ldr r3, [r4, #0xc]
	bl FUN_02009EAC
_0200BBD6:
	ldr r1, [r5, #0x0]
	mov r0, #0x20
	bl FUN_0201C328
	str r0, [r5, #0xc]
	bl FUN_0201D168
	bl FUN_0201E0BC
	mov r0, #0x1
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200BBF0
FUN_0200BBF0: ; 0x0200BBF0
	push {r4, lr}
	add r3, r0, #0x0
	add r4, r1, #0x0
	cmp r3, #0x0
	beq _0200BBFE
	cmp r4, #0x0
	bne _0200BC02
_0200BBFE:
	mov r0, #0x0
	pop {r4, pc}
_0200BC02:
	add r0, r2, #0x0
	add r1, r3, #0x0
	ldr r2, [r3, #0x0]
	add r1, #0x10
	bl FUN_02008C9C
	str r0, [r4, #0x0]
	mov r0, #0x1
	pop {r4, pc}

	thumb_func_start FUN_0200BC14
FUN_0200BC14: ; 0x0200BC14
	ldr r3, _0200BC18 ; =FUN_0201FFC8
	bx r3
	.balign 4
_0200BC18: .word FUN_0201FFC8 

	thumb_func_start FUN_0200BC1C
FUN_0200BC1C: ; 0x0200BC1C
	push {r4, lr}
	add r4, r0, #0x0
	bne _0200BC26
	bl ErrorHandling
_0200BC26:
	ldr r0, [r4, #0x0]
	bl FUN_0201FDEC
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200BC30
FUN_0200BC30: ; 0x0200BC30
	ldr r3, _0200BC34 ; =FUN_02009F80
	bx r3
	.balign 4
_0200BC34: .word FUN_02009F80 

	thumb_func_start FUN_0200BC38
FUN_0200BC38: ; 0x0200BC38
	ldr r3, _0200BC3C ; =FUN_0201C348
	bx r3
	.balign 4
_0200BC3C: .word FUN_0201C348 

	thumb_func_start FUN_0200BC40
FUN_0200BC40: ; 0x0200BC40
	ldr r3, _0200BC48 ; =FUN_0201FD58
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200BC48: .word FUN_0201FD58 

	thumb_func_start FUN_0200BC4C
FUN_0200BC4C: ; 0x0200BC4C
	push {r3, lr}
	ldr r0, [r0, #0x4]
	cmp r0, #0x0
	beq _0200BC58
	bl FUN_02008C80
_0200BC58:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200BC5C
FUN_0200BC5C: ; 0x0200BC5C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x54]
	mov r4, #0x0
	cmp r0, #0x0
	ble _0200BC7C
_0200BC68:
	ldr r0, [r5, #0x8]
	add r1, r4, #0x0
	bl FUN_02009660
	bl FUN_020096B4
	ldr r0, [r5, #0x54]
	add r4, r4, #0x1
	cmp r4, r0
	blt _0200BC68
_0200BC7C:
	ldr r0, [r5, #0x8]
	bl FUN_02016A18
	ldr r0, [r5, #0x24]
	bl FUN_02009C30
	ldr r0, [r5, #0x28]
	bl FUN_02009E28
	ldr r0, [r5, #0x54]
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200BCAE
	add r4, r5, #0x0
_0200BC98:
	ldr r0, [r4, #0x24]
	bl FUN_02009448
	ldr r0, [r4, #0xc]
	bl FUN_02008E2C
	ldr r0, [r5, #0x54]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _0200BC98
_0200BCAE:
	pop {r4-r6, pc}

	thumb_func_start FUN_0200BCB0
FUN_0200BCB0: ; 0x0200BCB0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl FUN_0201C350
	bl FUN_0201D12C
	bl FUN_0201E08C
	ldr r0, [r4, #0x8]
	cmp r0, #0x1
	bne _0200BCCC
	bl FUN_02009FA0
_0200BCCC:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200BCD0
FUN_0200BCD0: ; 0x0200BCD0
	ldr r2, [r0, #0x4]
	ldr r3, _0200BCDC ; =FUN_02016A18
	sub r2, r2, #0x1
	str r2, [r0, #0x4]
	add r0, r1, #0x0
	bx r3
	.balign 4
_0200BCDC: .word FUN_02016A18 

	thumb_func_start FUN_0200BCE0
FUN_0200BCE0: ; 0x0200BCE0
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0200BC40
	add r0, r4, #0x0
	bl FUN_0200BC4C
	add r0, r4, #0x0
	bl FUN_0200BC5C
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0200BCD0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200BD04
FUN_0200BD04: ; 0x0200BD04
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	beq _0200BD12
	bl ErrorHandling
_0200BD12:
	add r0, r4, #0x0
	bl FUN_0200BCB0
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_0200BD20
FUN_0200BD20: ; 0x0200BD20
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	mov r0, #0x6
	add r4, r1, #0x0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	cmp r5, #0x0
	beq _0200BD36
	cmp r4, #0x0
	bne _0200BD3C
_0200BD36:
	add sp, #0x24
	mov r0, #0x0
	pop {r4-r7, pc}
_0200BD3C:
	add r0, r2, #0x0
	ldr r0, [r0, #0x10]
	cmp r0, #0x0
	bne _0200BD48
	mov r0, #0x4
	str r0, [sp, #0x14]
_0200BD48:
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x54]
	bl FUN_0200965C
	add r2, r0, #0x0
	ldr r1, [sp, #0x14]
	ldr r0, [r5, #0x0]
	mul r1, r2
	bl FUN_02016998
	str r0, [r4, #0x8]
	ldr r0, [sp, #0x14]
	mov r7, #0x0
	cmp r0, #0x0
	ble _0200BD94
	ldr r6, [sp, #0x10]
_0200BD68:
	ldr r0, [r4, #0x8]
	add r1, r7, #0x0
	bl FUN_02009660
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x0]
	ldr r1, [r6, #0x0]
	bl FUN_020161A4
	ldr r1, [sp, #0x18]
	ldr r2, [r5, #0x0]
	str r0, [sp, #0x1c]
	bl FUN_02009668
	ldr r0, [sp, #0x1c]
	bl FUN_02016A18
	ldr r0, [sp, #0x14]
	add r7, r7, #0x1
	add r6, r6, #0x4
	cmp r7, r0
	blt _0200BD68
_0200BD94:
	ldr r0, [sp, #0x14]
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200BDBE
	add r7, r4, #0x0
_0200BD9E:
	ldr r0, [r4, #0x8]
	add r1, r6, #0x0
	bl FUN_02009660
	bl FUN_020096CC
	ldr r2, [r5, #0x0]
	add r1, r6, #0x0
	bl FUN_02008DEC
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x14]
	add r6, r6, #0x1
	add r7, r7, #0x4
	cmp r6, r0
	blt _0200BD9E
_0200BDBE:
	ldr r0, [sp, #0x14]
	mov r7, #0x0
	cmp r0, #0x0
	ble _0200BDF6
	add r6, r4, #0x0
_0200BDC8:
	ldr r0, [r4, #0x8]
	add r1, r7, #0x0
	bl FUN_02009660
	str r0, [sp, #0x20]
	bl FUN_020096CC
	ldr r1, [r5, #0x0]
	bl FUN_02009424
	add r2, r0, #0x0
	str r2, [r6, #0x24]
	ldr r0, [r6, #0xc]
	ldr r1, [sp, #0x20]
	ldr r3, [r5, #0x0]
	bl FUN_020093A8
	str r0, [r6, #0x3c]
	ldr r0, [sp, #0x14]
	add r7, r7, #0x1
	add r6, r6, #0x4
	cmp r7, r0
	blt _0200BDC8
_0200BDF6:
	ldr r0, [r4, #0x24]
	bl FUN_02009A90
	ldr r0, [r4, #0x28]
	bl FUN_02009D34
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x0]
	ldr r1, [r1, #0x18]
	bl FUN_020161A4
	ldr r1, [r4, #0x14]
	add r6, r0, #0x0
	str r1, [sp, #0x0]
	ldr r1, [r4, #0x18]
	str r1, [sp, #0x4]
	ldr r1, [r4, #0x1c]
	str r1, [sp, #0x8]
	ldr r1, [r4, #0x20]
	str r1, [sp, #0xc]
	ldr r1, [r5, #0x0]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl FUN_02008BE0
	str r0, [r4, #0x4]
	add r0, r6, #0x0
	bl FUN_02016A18
	mov r0, #0x1
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200BE38
FUN_0200BE38: ; 0x0200BE38
	push {r4, lr}
	sub sp, #0x28
	mov r3, #0x4
	mov r4, #0x6
	ldrsh r3, [r2, r3]
	ldrsh r4, [r2, r4]
	str r4, [sp, #0x0]
	str r3, [sp, #0x4]
	ldrh r4, [r2, #0xa]
	str r4, [sp, #0x8]
	ldr r4, [r2, #0xc]
	str r4, [sp, #0xc]
	ldr r4, [r2, #0x10]
	str r4, [sp, #0x10]
	ldr r4, [r2, #0x14]
	str r4, [sp, #0x14]
	ldr r4, [r2, #0x18]
	str r4, [sp, #0x18]
	ldr r4, [r2, #0x1c]
	str r4, [sp, #0x1c]
	ldr r4, [r2, #0x20]
	str r4, [sp, #0x20]
	ldr r4, [r2, #0x24]
	str r4, [sp, #0x24]
	ldr r2, [r2, #0x0]
	bl FUN_0200BE74
	add sp, #0x28
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200BE74
FUN_0200BE74: ; 0x0200BE74
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0x0
	ldr r0, [r1, #0x0]
	str r0, [sp, #0x0]
	ldr r0, [r1, #0x4]
	ldr r1, [r0, #0x0]
	mov r0, #0x24
	mul r0, r2
	add r0, r1, r0
	str r0, [sp, #0x4]
	cmp r3, #0x0
	ble _0200BEA0
	lsl r0, r3, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200BEAE
_0200BEA0:
	lsl r0, r3, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200BEAE:
	blx _ffix
	str r0, [sp, #0x8]
	add r1, sp, #0x28
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	cmp r0, #0x0
	ble _0200BED0
	lsl r0, r0, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200BEDE
_0200BED0:
	lsl r0, r0, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200BEDE:
	blx _ffix
	str r0, [sp, #0xc]
	add r1, sp, #0x28
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0x0
	ble _0200BF00
	lsl r0, r0, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200BF0E
_0200BF00:
	lsl r0, r0, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200BF0E:
	blx _ffix
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	cmp r0, #0x2
	bne _0200BF24
	mov r0, #0x3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0xc]
_0200BF24:
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r1, #0x0
	add r0, sp, #0x0
	strh r1, [r0, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x0
	bl FUN_0201FE94
	add r4, r0, #0x0
	beq _0200BF5A
	add r1, sp, #0x28
	ldrh r1, [r1, #0x18]
	bl FUN_02020130
	ldr r1, [sp, #0x48]
	add r0, r4, #0x0
	bl FUN_02020248
_0200BF5A:
	add r0, r4, #0x0
	add sp, #0x30
	pop {r4, pc}

	thumb_func_start FUN_0200BF60
FUN_0200BF60: ; 0x0200BF60
	push {r4-r7, lr}
	sub sp, #0xc
	str r0, [sp, #0x0]
	mov r0, #0x6
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x0]
	add r5, r1, #0x0
	add r6, r2, #0x0
	cmp r0, #0x0
	beq _0200BF78
	cmp r5, #0x0
	bne _0200BF7E
_0200BF78:
	add sp, #0xc
	mov r0, #0x0
	pop {r4-r7, pc}
_0200BF7E:
	ldr r0, [r6, #0x10]
	cmp r0, #0x0
	beq _0200BF8A
	ldr r0, [r6, #0x14]
	cmp r0, #0x0
	bne _0200BF8E
_0200BF8A:
	mov r0, #0x4
	str r0, [sp, #0x4]
_0200BF8E:
	ldr r0, [sp, #0x4]
	str r0, [r5, #0x54]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _0200BFBE
	add r7, r6, #0x0
	add r4, r5, #0x0
_0200BFA0:
	ldr r2, [sp, #0x0]
	ldr r0, [r7, #0x0]
	ldr r1, [sp, #0x8]
	ldr r2, [r2, #0x0]
	bl FUN_02008DEC
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x8]
	add r7, r7, #0x4
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	add r4, r4, #0x4
	str r1, [sp, #0x8]
	cmp r1, r0
	blt _0200BFA0
_0200BFBE:
	ldr r0, [sp, #0x4]
	mov r7, #0x0
	cmp r0, #0x0
	ble _0200C004
	add r4, r7, #0x0
_0200BFC8:
	ldr r0, [r6, #0x0]
	cmp r0, #0x0
	beq _0200BFF8
	ldr r1, [sp, #0x0]
	ldr r1, [r1, #0x0]
	bl FUN_02009424
	str r0, [r5, #0x24]
	mov r0, #0x0
	str r0, [r5, #0x3c]
	ldr r3, [r5, #0x24]
	add r1, r0, #0x0
	ldr r0, [r3, #0x4]
	cmp r0, #0x0
	ble _0200BFF8
	add r2, r1, #0x0
_0200BFE8:
	ldr r0, [r3, #0x0]
	add r1, r1, #0x1
	str r4, [r0, r2]
	ldr r3, [r5, #0x24]
	add r2, r2, #0x4
	ldr r0, [r3, #0x4]
	cmp r1, r0
	blt _0200BFE8
_0200BFF8:
	ldr r0, [sp, #0x4]
	add r7, r7, #0x1
	add r6, r6, #0x4
	add r5, r5, #0x4
	cmp r7, r0
	blt _0200BFC8
_0200C004:
	mov r0, #0x1
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200C00C
FUN_0200C00C: ; 0x0200C00C
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C02A
	add sp, #0xc
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C02A:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	add r2, r7, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r4, #0xc]
	bl FUN_02008F34
	add r5, r0, #0x0
	beq _0200C058
	bl FUN_02009B04
	ldr r0, [r4, #0x24]
	add r1, r5, #0x0
	bl FUN_0200C474
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C058:
	bl ErrorHandling
	cmp r5, #0x0
	beq _0200C066
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C066:
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200C06C
FUN_0200C06C: ; 0x0200C06C
	push {r3-r7, lr}
	sub sp, #0x10
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x34]
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C08C
	mov r0, #0x0
	add sp, #0x10
	mvn r0, r0
	pop {r3-r7, pc}
_0200C08C:
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x30]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl FUN_02008FEC
	add r5, r0, #0x0
	beq _0200C0D0
	bl FUN_02009D68
	cmp r0, #0x1
	beq _0200C0B8
	bl ErrorHandling
_0200C0B8:
	ldr r0, [r4, #0x28]
	add r1, r5, #0x0
	bl FUN_0200C474
	ldr r1, [sp, #0x30]
	add r0, r5, #0x0
	bl FUN_02009E88
	lsl r0, r0, #0x18
	add sp, #0x10
	asr r0, r0, #0x18
	pop {r3-r7, pc}
_0200C0D0:
	bl ErrorHandling
	mov r0, #0x0
	mvn r0, r0
	add sp, #0x10
	pop {r3-r7, pc}

	thumb_func_start FUN_0200C0DC
FUN_0200C0DC: ; 0x0200C0DC
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	add r6, r1, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	add r1, r3, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x24]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	add r0, r2, #0x0
	ldr r2, [sp, #0x20]
	bl FUN_0200C06C
	add r4, r0, #0x0
	mov r0, #0x0
	mvn r0, r0
	cmp r4, r0
	beq _0200C11A
	ldr r3, [sp, #0x2c]
	lsl r2, r4, #0x14
	add r0, r5, #0x0
	add r1, r6, #0x0
	lsr r2, r2, #0x10
	lsl r3, r3, #0x5
	bl FUN_02003108
_0200C11A:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200C124
FUN_0200C124: ; 0x0200C124
	push {r3-r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp, #0x0]
	mov r4, #0x2
	str r4, [sp, #0x4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #0x8]
	bl FUN_0200C404
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_0200C13C
FUN_0200C13C: ; 0x0200C13C
	push {r3-r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp, #0x0]
	mov r4, #0x3
	str r4, [sp, #0x4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #0x8]
	bl FUN_0200C404
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_0200C154
FUN_0200C154: ; 0x0200C154
	push {r4-r7, lr}
	sub sp, #0x74
	add r7, r0, #0x0
	ldr r0, [r7, #0x0]
	add r6, r1, #0x0
	mov r1, #0x10
	add r5, r2, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	bne _0200C170
	add sp, #0x74
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C170:
	ldr r0, [r7, #0x0]
	mov r1, #0x8
	bl FUN_02016998
	str r0, [r4, #0x8]
	cmp r0, #0x0
	bne _0200C184
	add sp, #0x74
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C184:
	ldr r0, [r7, #0x0]
	mov r1, #0x24
	bl FUN_02016998
	ldr r1, [r4, #0x8]
	str r0, [r1, #0x0]
	ldr r0, [r4, #0x8]
	ldr r0, [r0, #0x0]
	str r0, [r4, #0x4]
	ldr r0, [r4, #0x8]
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	bne _0200C1AC
	cmp r0, #0x0
	beq _0200C1A6
	bl FUN_02016A18
_0200C1A6:
	add sp, #0x74
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C1AC:
	mov r1, #0x0
	add r2, r5, #0x0
	add r3, sp, #0x2c
_0200C1B2:
	ldr r0, [r2, #0x14]
	add r1, r1, #0x1
	add r2, r2, #0x4
	stmia r3!, {r0}
	cmp r1, #0x6
	blt _0200C1B2
	ldr r0, [r6, #0x1c]
	cmp r0, #0x0
	beq _0200C1CA
	ldr r1, [r6, #0x20]
	cmp r1, #0x0
	bne _0200C1D4
_0200C1CA:
	mov r0, #0x0
	mvn r0, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	b _0200C206
_0200C1D4:
	mov r2, #0x0
	ldr r1, [sp, #0x3c]
	mvn r2, r2
	cmp r1, r2
	beq _0200C1EC
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C1EC
	mov r0, #0x0
	mvn r0, r0
	str r0, [sp, #0x3c]
_0200C1EC:
	mov r0, #0x0
	ldr r1, [sp, #0x40]
	mvn r0, r0
	cmp r1, r0
	beq _0200C206
	ldr r0, [r6, #0x20]
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C206
	mov r0, #0x0
	mvn r0, r0
	str r0, [sp, #0x40]
_0200C206:
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r6, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r6, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x4]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	bl FUN_02008AA4
	ldr r0, [r6, #0x0]
	str r0, [sp, #0x44]
	ldr r0, [r4, #0x4]
	str r0, [sp, #0x48]
	mov r0, #0x0
	ldrsh r0, [r5, r0]
	cmp r0, #0x0
	ble _0200C260
	lsl r0, r0, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200C26E
_0200C260:
	lsl r0, r0, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200C26E:
	blx _ffix
	str r0, [sp, #0x4c]
	mov r0, #0x2
	ldrsh r0, [r5, r0]
	cmp r0, #0x0
	ble _0200C28E
	lsl r0, r0, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200C29C
_0200C28E:
	lsl r0, r0, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200C29C:
	blx _ffix
	str r0, [sp, #0x50]
	mov r0, #0x4
	ldrsh r0, [r5, r0]
	cmp r0, #0x0
	ble _0200C2BC
	lsl r0, r0, #0xc
	blx _fflt
	add r1, r0, #0x0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	blx _fadd
	b _0200C2CA
_0200C2BC:
	lsl r0, r0, #0xc
	blx _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	blx _fsub
_0200C2CA:
	blx _ffix
	str r0, [sp, #0x54]
	ldr r0, [r5, #0x10]
	cmp r0, #0x2
	bne _0200C2E0
	mov r0, #0x3
	ldr r1, [sp, #0x50]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x50]
_0200C2E0:
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	mov r1, #0x0
	add r0, sp, #0x2c
	strh r1, [r0, #0x38]
	ldr r0, [r5, #0x8]
	str r0, [sp, #0x68]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0x0]
	str r0, [sp, #0x70]
	add r0, sp, #0x44
	bl FUN_0201FE94
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0200C328
	bl FUN_020202A0
	add r6, r0, #0x0
	ldrh r1, [r5, #0x6]
	ldr r0, [r4, #0x0]
	bl FUN_02020130
	ldr r1, [r5, #0xc]
	ldr r0, [r4, #0x0]
	add r1, r6, r1
	bl FUN_02020248
	b _0200C32C
_0200C328:
	bl ErrorHandling
_0200C32C:
	add r0, r4, #0x0
	add sp, #0x74
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200C334
FUN_0200C334: ; 0x0200C334
	push {r3, lr}
	ldr r0, [r0, #0x10]
	bl FUN_020094F0
	mov r1, #0x0
	bl FUN_02009E54
	pop {r3, pc}

	thumb_func_start FUN_0200C344
FUN_0200C344: ; 0x0200C344
	push {r4, lr}
	ldr r0, [r0, #0x10]
	add r4, r2, #0x0
	bl FUN_020094F0
	add r1, r4, #0x0
	bl FUN_02009E88
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200C358
FUN_0200C358: ; 0x0200C358
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x24]
	ldr r3, _0200C364 ; =FUN_0200C4F4
	bx r3
	.balign 4
_0200C364: .word FUN_0200C4F4 

	thumb_func_start FUN_0200C368
FUN_0200C368: ; 0x0200C368
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x28]
	ldr r3, _0200C374 ; =FUN_0200C548
	bx r3
	.balign 4
_0200C374: .word FUN_0200C548 

	thumb_func_start FUN_0200C378
FUN_0200C378: ; 0x0200C378
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldr r0, [r3, #0x14]
	ldr r1, [r3, #0x2c]
	ldr r3, _0200C384 ; =FUN_0200C4A8
	bx r3
	.balign 4
_0200C384: .word FUN_0200C4A8 

	thumb_func_start FUN_0200C388
FUN_0200C388: ; 0x0200C388
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldr r0, [r3, #0x18]
	ldr r1, [r3, #0x30]
	ldr r3, _0200C394 ; =FUN_0200C4A8
	bx r3
	.balign 4
_0200C394: .word FUN_0200C4A8 

	thumb_func_start FUN_0200C398
FUN_0200C398: ; 0x0200C398
	push {r3-r7, lr}
	add r6, r1, #0x0
	add r7, r0, #0x0
	add r0, r6, #0x0
	bl FUN_0200BC40
	ldr r0, [r6, #0x24]
	bl FUN_02009C30
	ldr r0, [r6, #0x28]
	bl FUN_02009E28
	ldr r0, [r6, #0x54]
	mov r4, #0x0
	cmp r0, #0x0
	ble _0200C3D0
	add r5, r6, #0x0
_0200C3BA:
	ldr r0, [r5, #0x24]
	bl FUN_02009448
	ldr r0, [r5, #0xc]
	bl FUN_02008E2C
	ldr r0, [r6, #0x54]
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, r0
	blt _0200C3BA
_0200C3D0:
	add r0, r7, #0x0
	add r1, r6, #0x0
	bl FUN_0200BCD0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200C3DC
FUN_0200C3DC: ; 0x0200C3DC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	cmp r0, #0x0
	beq _0200C3EE
	ldr r0, [r4, #0x4]
	ldr r0, [r0, #0x0]
	bl FUN_02009CDC
_0200C3EE:
	ldr r0, [r4, #0x0]
	bl FUN_0201FFC8
	ldr r0, [r4, #0x8]
	bl FUN_02008C80
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200C404
FUN_0200C404: ; 0x0200C404
	push {r4-r7, lr}
	sub sp, #0x14
	add r6, r1, #0x0
	add r7, r0, #0x0
	ldr r0, [sp, #0x2c]
	add r5, r6, #0x0
	lsl r4, r0, #0x2
	add r5, #0xc
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x30]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C42A
	add sp, #0x14
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C42A:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x4]
	ldr r0, [r7, #0x0]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x8]
	ldr r0, [r5, r4]
	bl FUN_020090AC
	add r5, r0, #0x0
	beq _0200C460
	add r0, r6, r4
	ldr r0, [r0, #0x24]
	add r1, r5, #0x0
	bl FUN_0200C474
	add r4, r0, #0x0
	cmp r4, #0x1
	beq _0200C45A
	bl ErrorHandling
_0200C45A:
	add sp, #0x14
	add r0, r4, #0x0
	pop {r4-r7, pc}
_0200C460:
	bl ErrorHandling
	cmp r5, #0x0
	beq _0200C46E
	add sp, #0x14
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C46E:
	mov r0, #0x0
	add sp, #0x14
	pop {r4-r7, pc}

	thumb_func_start FUN_0200C474
FUN_0200C474: ; 0x0200C474
	push {r3-r6}
	ldr r6, [r0, #0x4]
	mov r3, #0x0
	cmp r6, #0x0
	ble _0200C4A0
	ldr r5, [r0, #0x0]
	add r4, r5, #0x0
_0200C482:
	ldr r2, [r4, #0x0]
	cmp r2, #0x0
	bne _0200C498
	lsl r2, r3, #0x2
	str r1, [r5, r2]
	ldr r1, [r0, #0x8]
	add r1, r1, #0x1
	str r1, [r0, #0x8]
	mov r0, #0x1
	pop {r3-r6}
	bx lr
_0200C498:
	add r3, r3, #0x1
	add r4, r4, #0x4
	cmp r3, r6
	blt _0200C482
_0200C4A0:
	mov r0, #0x0
	pop {r3-r6}
	bx lr
	.balign 4

	thumb_func_start FUN_0200C4A8
FUN_0200C4A8: ; 0x0200C4A8
	push {r3-r7, lr}
	add r5, r1, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x4]
	add r7, r2, #0x0
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200C4F0
	add r4, r6, #0x0
_0200C4BA:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _0200C4E6
	bl FUN_02009530
	cmp r0, r7
	bne _0200C4E6
	ldr r1, [r5, #0x0]
	lsl r4, r6, #0x2
	ldr r0, [sp, #0x0]
	ldr r1, [r1, r4]
	bl FUN_02009490
	ldr r0, [r5, #0x0]
	mov r1, #0x0
	str r1, [r0, r4]
	ldr r0, [r5, #0x8]
	sub r0, r0, #0x1
	str r0, [r5, #0x8]
	mov r0, #0x1
	pop {r3-r7, pc}
_0200C4E6:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _0200C4BA
_0200C4F0:
	mov r0, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_0200C4F4
FUN_0200C4F4: ; 0x0200C4F4
	push {r3-r7, lr}
	add r5, r1, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x4]
	add r7, r2, #0x0
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200C542
	add r4, r6, #0x0
_0200C506:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _0200C538
	bl FUN_02009530
	cmp r0, r7
	bne _0200C538
	add r0, r7, #0x0
	bl FUN_0201D324
	ldr r1, [r5, #0x0]
	lsl r4, r6, #0x2
	ldr r0, [sp, #0x0]
	ldr r1, [r1, r4]
	bl FUN_02009490
	ldr r0, [r5, #0x0]
	mov r1, #0x0
	str r1, [r0, r4]
	ldr r0, [r5, #0x8]
	sub r0, r0, #0x1
	str r0, [r5, #0x8]
	mov r0, #0x1
	pop {r3-r7, pc}
_0200C538:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _0200C506
_0200C542:
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200C548
FUN_0200C548: ; 0x0200C548
	push {r3-r7, lr}
	add r5, r1, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x4]
	add r7, r2, #0x0
	mov r6, #0x0
	cmp r0, #0x0
	ble _0200C596
	add r4, r6, #0x0
_0200C55A:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _0200C58C
	bl FUN_02009530
	cmp r0, r7
	bne _0200C58C
	add r0, r7, #0x0
	bl FUN_0201E1C8
	ldr r1, [r5, #0x0]
	lsl r4, r6, #0x2
	ldr r0, [sp, #0x0]
	ldr r1, [r1, r4]
	bl FUN_02009490
	ldr r0, [r5, #0x0]
	mov r1, #0x0
	str r1, [r0, r4]
	ldr r0, [r5, #0x8]
	sub r0, r0, #0x1
	str r0, [r5, #0x8]
	mov r0, #0x1
	pop {r3-r7, pc}
_0200C58C:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, r0
	blt _0200C55A
_0200C596:
	mov r0, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200C59C
FUN_0200C59C: ; 0x0200C59C
	ldr r3, _0200C5A4 ; =FUN_020201E4
	mov r1, #0x1
	lsl r1, r1, #0xc
	bx r3
	.balign 4
_0200C5A4: .word FUN_020201E4 

	thumb_func_start FUN_0200C5A8
FUN_0200C5A8: ; 0x0200C5A8
	ldr r3, _0200C5B0 ; =0x0200C59D
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5B0: .word 0x0200C59D

	thumb_func_start FUN_0200C5B4
FUN_0200C5B4: ; 0x0200C5B4
	ldr r3, _0200C5BC ; =FUN_020201E4
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5BC: .word FUN_020201E4 

	thumb_func_start FUN_0200C5C0
FUN_0200C5C0: ; 0x0200C5C0
	ldr r3, _0200C5C8 ; =FUN_02020130
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5C8: .word FUN_02020130 

	thumb_func_start FUN_0200C5CC
FUN_0200C5CC: ; 0x0200C5CC
	ldr r3, _0200C5D4 ; =FUN_020201DC
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5D4: .word FUN_020201DC 

	thumb_func_start FUN_0200C5D8
FUN_0200C5D8: ; 0x0200C5D8
	ldr r3, _0200C5DC ; =FUN_020200BC
	bx r3
	.balign 4
_0200C5DC: .word FUN_020200BC 

	thumb_func_start FUN_0200C5E0
FUN_0200C5E0: ; 0x0200C5E0
	ldr r3, _0200C5E8 ; =FUN_0200C5D8
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5E8: .word FUN_0200C5D8 

	thumb_func_start FUN_0200C5EC
FUN_0200C5EC: ; 0x0200C5EC
	ldr r3, _0200C5F0 ; =FUN_020200D8
	bx r3
	.balign 4
_0200C5F0: .word FUN_020200D8 

	thumb_func_start FUN_0200C5F4
FUN_0200C5F4: ; 0x0200C5F4
	ldr r3, _0200C5FC ; =FUN_0200C5EC
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C5FC: .word FUN_0200C5EC 

	thumb_func_start FUN_0200C600
FUN_0200C600: ; 0x0200C600
	ldr r3, _0200C604 ; =FUN_02020388
	bx r3
	.balign 4
_0200C604: .word FUN_02020388 

	thumb_func_start FUN_0200C608
FUN_0200C608: ; 0x0200C608
	ldr r3, _0200C610 ; =FUN_0200C600
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C610: .word FUN_0200C600 

	thumb_func_start FUN_0200C614
FUN_0200C614: ; 0x0200C614
	ldr r3, _0200C618 ; =FUN_02020208
	bx r3
	.balign 4
_0200C618: .word FUN_02020208 

	thumb_func_start FUN_0200C61C
FUN_0200C61C: ; 0x0200C61C
	ldr r3, _0200C624 ; =0x0200C615
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C624: .word 0x0200C615

	thumb_func_start FUN_0200C628
FUN_0200C628: ; 0x0200C628
	ldr r3, _0200C62C ; =FUN_0202022C
	bx r3
	.balign 4
_0200C62C: .word FUN_0202022C 

	thumb_func_start FUN_0200C630
FUN_0200C630: ; 0x0200C630
	ldr r3, _0200C638 ; =FUN_0200C628
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C638: .word FUN_0200C628 

	thumb_func_start FUN_0200C63C
FUN_0200C63C: ; 0x0200C63C
	ldr r3, _0200C640 ; =FUN_020200A0
	bx r3
	.balign 4
_0200C640: .word FUN_020200A0 

	thumb_func_start FUN_0200C644
FUN_0200C644: ; 0x0200C644
	ldr r3, _0200C64C ; =FUN_0200C63C
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C64C: .word FUN_0200C63C 

	thumb_func_start FUN_0200C650
FUN_0200C650: ; 0x0200C650
	ldr r3, _0200C654 ; =FUN_02020128
	bx r3
	.balign 4
_0200C654: .word FUN_02020128 

	thumb_func_start FUN_0200C658
FUN_0200C658: ; 0x0200C658
	ldr r3, _0200C660 ; =FUN_0200C650
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C660: .word FUN_0200C650 

	thumb_func_start FUN_0200C664
FUN_0200C664: ; 0x0200C664
	ldr r3, _0200C668 ; =FUN_02020248
	bx r3
	.balign 4
_0200C668: .word FUN_02020248 

	thumb_func_start FUN_0200C66C
FUN_0200C66C: ; 0x0200C66C
	ldr r3, _0200C674 ; =FUN_0200C664
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C674: .word FUN_0200C664 

	thumb_func_start FUN_0200C678
FUN_0200C678: ; 0x0200C678
	ldr r3, _0200C67C ; =FUN_020202A8
	bx r3
	.balign 4
_0200C67C: .word FUN_020202A8 

	thumb_func_start FUN_0200C680
FUN_0200C680: ; 0x0200C680
	ldr r3, _0200C688 ; =FUN_0200C678
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C688: .word FUN_0200C678 

	thumb_func_start FUN_0200C68C
FUN_0200C68C: ; 0x0200C68C
	ldr r3, _0200C694 ; =FUN_02020300
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C694: .word FUN_02020300 

	thumb_func_start FUN_0200C698
FUN_0200C698: ; 0x0200C698
	ldr r3, _0200C6A0 ; =FUN_02020238
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
	.balign 4
_0200C6A0: .word FUN_02020238 

	thumb_func_start FUN_0200C6A4
FUN_0200C6A4: ; 0x0200C6A4
	ldr r3, _0200C6AC ; =0x02020241
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C6AC: .word 0x02020241

	thumb_func_start FUN_0200C6B0
FUN_0200C6B0: ; 0x0200C6B0
	ldr r3, _0200C6B8 ; =FUN_0200C698
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C6B8: .word FUN_0200C698 

	thumb_func_start FUN_0200C6BC
FUN_0200C6BC: ; 0x0200C6BC
	ldr r3, _0200C6C0 ; =FUN_02020310
	bx r3
	.balign 4
_0200C6C0: .word FUN_02020310 

	thumb_func_start FUN_0200C6C4
FUN_0200C6C4: ; 0x0200C6C4
	ldr r3, _0200C6CC ; =FUN_0200C6BC
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C6CC: .word FUN_0200C6BC 

	thumb_func_start FUN_0200C6D0
FUN_0200C6D0: ; 0x0200C6D0
	ldr r3, _0200C6D4 ; =FUN_0202032C
	bx r3
	.balign 4
_0200C6D4: .word FUN_0202032C 

	thumb_func_start FUN_0200C6D8
FUN_0200C6D8: ; 0x0200C6D8
	ldr r3, _0200C6E0 ; =FUN_0200C6D0
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C6E0: .word FUN_0200C6D0 

	thumb_func_start FUN_0200C6E4
FUN_0200C6E4: ; 0x0200C6E4
	push {r3-r4, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp, #0x0]
	lsl r1, r2, #0xc
	add r4, r0, #0x0
	str r1, [sp, #0x4]
	bl FUN_02020380
	cmp r0, #0x2
	bne _0200C704
	mov r0, #0x3
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x4]
_0200C704:
	mov r0, #0x0
	str r0, [sp, #0x8]
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02020044
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_0200C714
FUN_0200C714: ; 0x0200C714
	ldr r3, _0200C71C ; =FUN_0200C6E4
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C71C: .word FUN_0200C6E4 

	thumb_func_start FUN_0200C720
FUN_0200C720: ; 0x0200C720
	push {r4-r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp, #0x0]
	lsl r1, r2, #0xc
	add r5, r0, #0x0
	add r4, r3, #0x0
	str r1, [sp, #0x4]
	bl FUN_02020380
	cmp r0, #0x2
	bne _0200C73E
	ldr r0, [sp, #0x4]
	add r0, r0, r4
	str r0, [sp, #0x4]
_0200C73E:
	mov r0, #0x0
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02020044
	add sp, #0xc
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_0200C750
FUN_0200C750: ; 0x0200C750
	push {r3, lr}
	ldr r0, [r0, #0x0]
	bl FUN_0200C720
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200C75C
FUN_0200C75C: ; 0x0200C75C
	push {r3-r7, lr}
	add r7, r0, #0x0
	add r6, r1, #0x0
	add r5, r2, #0x0
	bl FUN_0202011C
	add r4, r0, #0x0
	ldr r1, [r4, #0x0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6, #0x0]
	add r0, r7, #0x0
	bl FUN_02020380
	cmp r0, #0x2
	ldr r1, [r4, #0x4]
	bne _0200C794
	mov r0, #0x3
	lsl r0, r0, #0x12
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x0]
	pop {r3-r7, pc}
_0200C794:
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x0]
	pop {r3-r7, pc}

	thumb_func_start FUN_0200C7A0
FUN_0200C7A0: ; 0x0200C7A0
	ldr r3, _0200C7A8 ; =FUN_0200C75C
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C7A8: .word FUN_0200C75C 

	thumb_func_start FUN_0200C7AC
FUN_0200C7AC: ; 0x0200C7AC
	push {r3-r7, lr}
	str r0, [sp, #0x0]
	add r6, r1, #0x0
	add r5, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0202011C
	add r4, r0, #0x0
	ldr r1, [r4, #0x0]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r6, #0x0]
	ldr r0, [sp, #0x0]
	bl FUN_02020380
	cmp r0, #0x2
	bne _0200C7E2
	ldr r0, [r4, #0x4]
	sub r1, r0, r7
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x0]
	pop {r3-r7, pc}
_0200C7E2:
	ldr r1, [r4, #0x4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x0]
	pop {r3-r7, pc}

	thumb_func_start FUN_0200C7F0
FUN_0200C7F0: ; 0x0200C7F0
	push {r3, lr}
	ldr r0, [r0, #0x0]
	bl FUN_0200C7AC
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200C7FC
FUN_0200C7FC: ; 0x0200C7FC
	push {r3-r6, lr}
	sub sp, #0xc
	add r6, r0, #0x0
	add r5, r1, #0x0
	add r4, r2, #0x0
	bl FUN_0202011C
	ldr r2, [r0, #0x0]
	lsl r1, r5, #0xc
	add r1, r2, r1
	str r1, [sp, #0x0]
	ldr r2, [r0, #0x4]
	lsl r1, r4, #0xc
	add r1, r2, r1
	str r1, [sp, #0x4]
	ldr r0, [r0, #0x8]
	add r1, sp, #0x0
	str r0, [sp, #0x8]
	add r0, r6, #0x0
	bl FUN_02020044
	add sp, #0xc
	pop {r3-r6, pc}
	.balign 4

	thumb_func_start FUN_0200C82C
FUN_0200C82C: ; 0x0200C82C
	ldr r3, _0200C834 ; =FUN_0200C7FC
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C834: .word FUN_0200C7FC 

	thumb_func_start FUN_0200C838
FUN_0200C838: ; 0x0200C838
	ldr r3, _0200C83C ; =FUN_020200EC
	bx r3
	.balign 4
_0200C83C: .word FUN_020200EC 

	thumb_func_start FUN_0200C840
FUN_0200C840: ; 0x0200C840
	ldr r3, _0200C848 ; =0x0200C839
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C848: .word 0x0200C839

	thumb_func_start FUN_0200C84C
FUN_0200C84C: ; 0x0200C84C
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r7, r2, #0x0
	bl FUN_02020120
	add r4, r0, #0x0
	ldr r0, _0200C880 ; =0x45800000
	add r1, r6, #0x0
	blx _fmul
	blx _ffix
	str r0, [r4, #0x0]
	ldr r0, _0200C880 ; =0x45800000
	add r1, r7, #0x0
	blx _fmul
	blx _ffix
	str r0, [r4, #0x4]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02020064
	pop {r3-r7, pc}
	.balign 4
_0200C880: .word 0x45800000

	thumb_func_start FUN_0200C884
FUN_0200C884: ; 0x0200C884
	ldr r3, _0200C88C ; =FUN_0200C84C
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C88C: .word FUN_0200C84C 

	thumb_func_start FUN_0200C890
FUN_0200C890: ; 0x0200C890
	ldr r3, _0200C894 ; =FUN_02020088
	bx r3
	.balign 4
_0200C894: .word FUN_02020088 

	thumb_func_start FUN_0200C898
FUN_0200C898: ; 0x0200C898
	ldr r3, _0200C8A0 ; =FUN_0200C890
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C8A0: .word FUN_0200C890 

	thumb_func_start FUN_0200C8A4
FUN_0200C8A4: ; 0x0200C8A4
	push {r3-r5, lr}
	add r5, r1, #0x0
	add r4, r0, #0x0
	bl FUN_02020124
	add r0, r0, r5
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0x0
	bl FUN_02020088
	pop {r3-r5, pc}

	thumb_func_start FUN_0200C8BC
FUN_0200C8BC: ; 0x0200C8BC
	ldr r3, _0200C8C4 ; =FUN_0200C8A4
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C8C4: .word FUN_0200C8A4 

	thumb_func_start FUN_0200C8C8
FUN_0200C8C8: ; 0x0200C8C8
	ldr r3, _0200C8CC ; =FUN_02020100
	bx r3
	.balign 4
_0200C8CC: .word FUN_02020100 

	thumb_func_start FUN_0200C8D0
FUN_0200C8D0: ; 0x0200C8D0
	ldr r3, _0200C8D8 ; =FUN_0200C8C8
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C8D8: .word FUN_0200C8C8 

	thumb_func_start FUN_0200C8DC
FUN_0200C8DC: ; 0x0200C8DC
	push {lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	str r1, [sp, #0x0]
	lsl r1, r2, #0xc
	str r1, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	ldr r0, [r0, #0x0]
	add r1, sp, #0x0
	bl FUN_02020054
	add sp, #0xc
	pop {pc}

	thumb_func_start FUN_0200C8F8
FUN_0200C8F8: ; 0x0200C8F8
	ldr r3, _0200C900 ; =0x02020359
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C900: .word 0x02020359

	thumb_func_start FUN_0200C904
FUN_0200C904: ; 0x0200C904
	ldr r3, _0200C908 ; =FUN_02020398
	bx r3
	.balign 4
_0200C908: .word FUN_02020398 

	thumb_func_start FUN_0200C90C
FUN_0200C90C: ; 0x0200C90C
	ldr r3, _0200C914 ; =FUN_0200C904
	ldr r0, [r0, #0x0]
	bx r3
	nop
_0200C914: .word FUN_0200C904 

	thumb_func_start FUN_0200C918
FUN_0200C918: ; 0x0200C918
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C936
	add sp, #0xc
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C936:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	add r2, r7, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r4, #0xc]
	bl FUN_02008F34
	add r5, r0, #0x0
	beq _0200C964
	bl FUN_02009AC4
	ldr r0, [r4, #0x24]
	add r1, r5, #0x0
	bl FUN_0200C474
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C964:
	bl ErrorHandling
	cmp r5, #0x0
	beq _0200C972
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C972:
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200C978
FUN_0200C978: ; 0x0200C978
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x28]
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0200945C
	cmp r0, #0x0
	bne _0200C996
	add sp, #0xc
	mov r0, #0x0
	pop {r4-r7, pc}
_0200C996:
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	add r2, r7, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r4, #0xc]
	bl FUN_02008F34
	add r5, r0, #0x0
	beq _0200C9C4
	bl FUN_02009B78
	ldr r0, [r4, #0x24]
	add r1, r5, #0x0
	bl FUN_0200C474
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C9C4:
	bl ErrorHandling
	cmp r5, #0x0
	beq _0200C9D2
	add sp, #0xc
	mov r0, #0x1
	pop {r4-r7, pc}
_0200C9D2:
	mov r0, #0x0
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200C9D8
FUN_0200C9D8: ; 0x0200C9D8
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x24]
	add r7, r2, #0x0
	str r3, [sp, #0x8]
	bl FUN_020094F0
	add r6, r0, #0x0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r4, #0xc]
	add r2, r7, #0x0
	bl FUN_020090FC
	add r0, r6, #0x0
	bl FUN_02009BE8
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200CA0C
FUN_0200CA0C: ; 0x0200CA0C
	push {r4-r7, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x24]
	add r7, r2, #0x0
	str r3, [sp, #0x8]
	bl FUN_020094F0
	add r6, r0, #0x0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x0]
	add r1, r6, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x10]
	add r2, r7, #0x0
	bl FUN_02009168
	add r0, r6, #0x0
	bl FUN_02009DE0
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200CA40
FUN_0200CA40: ; 0x0200CA40
	ldr r0, [r0, #0x0]
	bx lr

	thumb_func_start FUN_0200CA44
FUN_0200CA44: ; 0x0200CA44
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0200CA5C ; =0x021C48B8
	add r4, r1, #0x0
	add r3, r2, #0x0
	ldr r0, [r0, #0x18]
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201B60C
	pop {r3-r5, pc}
	nop
_0200CA5C: .word 0x021C48B8

	thumb_func_start FUN_0200CA60
FUN_0200CA60: ; 0x0200CA60
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0200CA78 ; =0x021C48B8
	add r4, r1, #0x0
	add r3, r2, #0x0
	ldr r0, [r0, #0x1c]
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201B60C
	pop {r3-r5, pc}
	nop
_0200CA78: .word 0x021C48B8

	thumb_func_start FUN_0200CA7C
FUN_0200CA7C: ; 0x0200CA7C
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0200CA94 ; =0x021C48B8
	add r4, r1, #0x0
	add r3, r2, #0x0
	ldr r0, [r0, #0x24]
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201B60C
	pop {r3-r5, pc}
	nop
_0200CA94: .word 0x021C48B8

	thumb_func_start FUN_0200CA98
FUN_0200CA98: ; 0x0200CA98
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0200CAB0 ; =0x021C48B8
	add r4, r1, #0x0
	add r3, r2, #0x0
	ldr r0, [r0, #0x20]
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201B60C
	pop {r3-r5, pc}
	nop
_0200CAB0: .word 0x021C48B8

	thumb_func_start FUN_0200CAB4
FUN_0200CAB4: ; 0x0200CAB4
	ldr r3, _0200CAB8 ; =FUN_0201B6A0
	bx r3
	.balign 4
_0200CAB8: .word FUN_0201B6A0 

	thumb_func_start FUN_0200CABC
FUN_0200CABC: ; 0x0200CABC
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r3, #0x0
	str r2, [sp, #0x0]
	bne _0200CAE2
	mov r1, #0x0
	str r1, [sp, #0x4]
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x8]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0x0
	add r3, r4, #0x0
	bl FUN_0200687C
	add sp, #0x10
	pop {r3-r5, pc}
_0200CAE2:
	mov r0, #0x0
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x20]
	mov r1, #0x1
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r5, #0x0
	add r3, r4, #0x0
	bl FUN_0200687C
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_0200CAFC
FUN_0200CAFC: ; 0x0200CAFC
	mov r0, #0x18
	bx lr

	thumb_func_start FUN_0200CB00
FUN_0200CB00: ; 0x0200CB00
	push {r4-r6, lr}
	sub sp, #0x10
	add r6, r0, #0x0
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	add r5, r1, #0x0
	add r4, r3, #0x0
	cmp r0, #0x0
	beq _0200CB16
	mov r1, #0x1
	b _0200CB18
_0200CB16:
	mov r1, #0x0
_0200CB18:
	str r2, [sp, #0x0]
	mov r0, #0x0
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x24]
	add r2, r6, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0x0
	bl FUN_0200687C
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	cmp r0, #0x2
	bne _0200CB3A
	mov r1, #0x2d
	b _0200CB3C
_0200CB3A:
	mov r1, #0x18
_0200CB3C:
	cmp r5, #0x4
	bhs _0200CB56
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	mov r2, #0x0
	str r0, [sp, #0x4]
	mov r0, #0x26
	lsl r3, r4, #0x5
	bl FUN_02006930
	add sp, #0x10
	pop {r4-r6, pc}
_0200CB56:
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	mov r2, #0x4
	str r0, [sp, #0x4]
	mov r0, #0x26
	lsl r3, r4, #0x5
	bl FUN_02006930
	add sp, #0x10
	pop {r4-r6, pc}

	thumb_func_start FUN_0200CB6C
FUN_0200CB6C: ; 0x0200CB6C
	push {r4-r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r5, [sp, #0x40]
	sub r7, r2, #0x1
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	sub r6, r2, #0x1
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x0]
	mov r2, #0x1
	str r2, [sp, #0x4]
	str r2, [sp, #0x8]
	lsl r3, r6, #0x18
	str r5, [sp, #0xc]
	add r2, sp, #0x28
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r1, sp, #0x28
	ldrh r4, [r1, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	ldrb r0, [r1, #0x10]
	add r2, r4, #0x1
	lsl r2, r2, #0x10
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl FUN_02018540
	add r0, sp, #0x28
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x18]
	add r2, r4, #0x2
	add r0, r0, r1
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x3
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x14]
	add r2, r4, #0x5
	lsl r2, r2, #0x10
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r0, sp, #0x28
	ldrb r1, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x6
	add r7, r0, r1
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r6, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	add r2, r4, #0x7
	lsl r2, r2, #0x10
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x18]
	lsr r2, r2, #0x10
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r4, #0x8
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200CCA4
FUN_0200CCA4: ; 0x0200CCA4
	push {r3-r7, lr}
	sub sp, #0x20
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_0201AB08
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_0201AB14
	str r0, [sp, #0x14]
	add r0, r5, #0x0
	bl FUN_0201AB18
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_0201AB0C
	str r0, [sp, #0x1c]
	add r0, r5, #0x0
	bl FUN_0201AB10
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	str r1, [sp, #0x0]
	str r0, [sp, #0x4]
	str r7, [sp, #0x8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl FUN_0200CB6C
	cmp r4, #0x0
	bne _0200CCF4
	add r0, r5, #0x0
	bl FUN_020191D0
_0200CCF4:
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_0200CCF8
FUN_0200CCF8: ; 0x0200CCF8
	push {r3-r7, lr}
	sub sp, #0x18
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_0201AB08
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_0201AB14
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB18
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB0C
	str r0, [sp, #0x14]
	add r0, r5, #0x0
	bl FUN_0201AB10
	sub r1, r7, #0x1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x14]
	add r0, r0, #0x2
	add r1, r1, #0x2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #0x4]
	lsr r0, r0, #0x18
	sub r3, r6, #0x1
	lsl r3, r3, #0x18
	str r0, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl FUN_02018540
	cmp r4, #0x0
	bne _0200CD5A
	add r0, r5, #0x0
	bl FUN_02019570
_0200CD5A:
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200CD60
FUN_0200CD60: ; 0x0200CD60
	add r0, r0, #0x2
	bx lr

	thumb_func_start FUN_0200CD64
FUN_0200CD64: ; 0x0200CD64
	add r0, #0x19
	bx lr

	thumb_func_start FUN_0200CD68
FUN_0200CD68: ; 0x0200CD68
	push {r4-r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	ldrb r7, [r0, #0x10]
	add r6, r2, #0x0
	add r5, r1, #0x0
	add r0, r7, #0x0
	add r4, r3, #0x0
	bl FUN_0200CD60
	add r1, r0, #0x0
	str r6, [sp, #0x0]
	mov r0, #0x0
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r3, r5, #0x0
	bl FUN_0200687C
	cmp r5, #0x4
	bhs _0200CDB8
	add r0, r7, #0x0
	bl FUN_0200CD64
	add r1, r0, #0x0
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	mov r2, #0x0
	str r0, [sp, #0x4]
	mov r0, #0x26
	lsl r3, r4, #0x5
	bl FUN_02006930
	add sp, #0x14
	pop {r4-r7, pc}
_0200CDB8:
	add r0, r7, #0x0
	bl FUN_0200CD64
	add r1, r0, #0x0
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	mov r2, #0x4
	str r0, [sp, #0x4]
	mov r0, #0x26
	lsl r3, r4, #0x5
	bl FUN_02006930
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200CDD8
FUN_0200CDD8: ; 0x0200CDD8
	push {r3-r7, lr}
	sub sp, #0x30
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r2, [sp, #0x4c]
	add r7, r0, #0x0
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x50]
	sub r6, r2, #0x1
	ldr r2, [sp, #0x14]
	sub r2, r2, #0x2
	str r2, [sp, #0x28]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x0]
	mov r2, #0x1
	str r2, [sp, #0x4]
	str r2, [sp, #0x8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, sp, #0x38
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x14]
	sub r0, r0, #0x1
	str r0, [sp, #0x24]
	add r0, sp, #0x38
	ldrh r4, [r0, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, r4, #0x1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #0x2
	lsl r2, r2, #0x10
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	bl FUN_02018540
	add r0, sp, #0x38
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x14]
	add r2, r4, #0x3
	add r0, r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x2c]
	add r2, r4, #0x4
	add r0, r0, #0x1
	str r0, [sp, #0x20]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x2c]
	add r2, r4, #0x5
	add r0, r0, #0x2
	str r0, [sp, #0x1c]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x28]
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #0x6
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x4c]
	add r2, r4, #0x7
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x2c]
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	add r2, #0x9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r2, r4, #0x0
	ldr r3, [sp, #0x28]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x4c]
	lsr r2, r2, #0x10
	add r6, r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x24]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	add r0, sp, #0x38
	ldrb r0, [r0, #0x10]
	add r2, r4, #0x0
	add r2, #0xe
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x1c]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r1, [sp, #0x10]
	add r0, r7, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add sp, #0x30
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D06C
FUN_0200D06C: ; 0x0200D06C
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl FUN_0201AB08
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_0201AB14
	str r0, [sp, #0x14]
	add r0, r5, #0x0
	bl FUN_0201AB18
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_0201AB0C
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB10
	str r7, [sp, #0x0]
	str r0, [sp, #0x4]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x8]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_0200CDD8
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D0BC
FUN_0200D0BC: ; 0x0200D0BC
	push {r4-r6, lr}
	add r6, r2, #0x0
	add r4, r1, #0x0
	add r1, r6, #0x0
	add r2, r3, #0x0
	add r5, r0, #0x0
	bl FUN_0200D06C
	cmp r4, #0x0
	bne _0200D0D6
	add r0, r5, #0x0
	bl FUN_020191D0
_0200D0D6:
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_0200D18C
	pop {r4-r6, pc}

	thumb_func_start FUN_0200D0E0
FUN_0200D0E0: ; 0x0200D0E0
	push {r3-r7, lr}
	sub sp, #0x18
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_0201AB08
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_0201AB14
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB18
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB0C
	str r0, [sp, #0x14]
	add r0, r5, #0x0
	bl FUN_0201AB10
	sub r1, r7, #0x1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x14]
	add r0, r0, #0x2
	add r1, r1, #0x5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #0x4]
	lsr r0, r0, #0x18
	sub r3, r6, #0x2
	lsl r3, r3, #0x18
	str r0, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x18
	bl FUN_02018540
	cmp r4, #0x0
	bne _0200D142
	add r0, r5, #0x0
	bl FUN_02019570
_0200D142:
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D148
FUN_0200D148: ; 0x0200D148
	push {r4-r5, lr}
	sub sp, #0x24
	add r5, r1, #0x0
	str r0, [sp, #0x1c]
	add r1, sp, #0x14
	strh r3, [r1, #0xc]
	add r4, r2, #0x0
	add r0, sp, #0x20
	ldrh r2, [r0, #0x10]
	add r3, r4, #0x0
	strh r2, [r1, #0xe]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0x14]
	ldrh r2, [r0, #0x18]
	strh r2, [r1, #0x4]
	ldrh r2, [r0, #0x1c]
	strh r2, [r1, #0x6]
	ldrh r1, [r0, #0x20]
	add r2, r5, #0x0
	str r1, [sp, #0x0]
	ldrh r1, [r0, #0x24]
	str r1, [sp, #0x4]
	ldrh r1, [r0, #0x28]
	str r1, [sp, #0x8]
	ldrh r0, [r0, #0x2c]
	add r1, sp, #0x14
	str r0, [sp, #0xc]
	mov r0, #0x0
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl FUN_02018A60
	add sp, #0x24
	pop {r4-r5, pc}

	thumb_func_start FUN_0200D18C
FUN_0200D18C: ; 0x0200D18C
	push {r3-r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x24]
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x0]
	bl FUN_02016BB8
	add r6, r0, #0x0
	ldr r0, [sp, #0x20]
	bl FUN_0201AB08
	mov r1, #0x6
	str r0, [sp, #0x28]
	add r0, r6, #0x0
	lsl r1, r1, #0x6
	bl FUN_02016998
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	bl FUN_020187B0
	add r4, r0, #0x0
	str r6, [sp, #0x0]
	mov r0, #0x26
	mov r1, #0x16
	mov r2, #0x0
	add r3, sp, #0x3c
	bl FUN_02006BB0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x3c]
	mov r7, #0x0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r0, #0xa
	lsl r0, r0, #0x5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x24]
	add r0, #0xb
	lsl r0, r0, #0x5
	str r0, [sp, #0x38]
_0200D1E0:
	ldr r1, [sp, #0x34]
	lsl r6, r7, #0x7
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	blx memcpy
	add r0, r6, #0x0
	ldr r1, [sp, #0x38]
	add r0, #0x20
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	blx memcpy
	add r0, r6, #0x0
	ldr r1, [sp, #0x34]
	add r0, #0x40
	add r0, r5, r0
	add r1, r4, r1
	mov r2, #0x20
	blx memcpy
	ldr r1, [sp, #0x38]
	add r6, #0x60
	add r0, r5, r6
	add r1, r4, r1
	mov r2, #0x20
	blx memcpy
	add r0, r7, #0x1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	cmp r7, #0x3
	blo _0200D1E0
	mov r1, #0x30
	str r1, [sp, #0x0]
	str r5, [sp, #0x4]
	mov r3, #0xc
	str r3, [sp, #0x8]
	str r1, [sp, #0xc]
	mov r0, #0x1
	str r0, [sp, #0x10]
	mov r2, #0x0
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	mov r1, #0x4
	bl FUN_0200D148
	ldr r0, [sp, #0x24]
	mov r3, #0x6
	add r0, #0x12
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x0]
	add r2, r5, #0x0
	lsl r3, r3, #0x6
	bl FUN_02017E14
	ldr r0, [sp, #0x24]
	bl FUN_02002840
	ldr r0, [sp, #0x2c]
	bl FUN_02016A18
	add r0, r5, #0x0
	bl FUN_02016A18
	add sp, #0x40
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D274
FUN_0200D274: ; 0x0200D274
	push {r4-r7, lr}
	sub sp, #0x14
	str r0, [sp, #0x4]
	str r1, [sp, #0x8]
	add r0, sp, #0x18
	ldrb r0, [r0, #0x10]
	add r7, r2, #0x0
	add r5, r3, #0x0
	bl FUN_0200CD60
	add r1, r0, #0x0
	ldr r0, [sp, #0x2c]
	mov r2, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x26
	add r3, sp, #0x10
	bl FUN_02006BB0
	str r0, [sp, #0xc]
	mov r1, #0x9
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0x6
	bl FUN_02016998
	ldr r1, [sp, #0x10]
	mov r2, #0x9
	ldr r1, [r1, #0x14]
	lsl r2, r2, #0x6
	add r4, r0, #0x0
	blx memcpy
	mov r0, #0x9
	mov r3, #0x0
	lsl r0, r0, #0x6
	mov r1, #0xf
_0200D2BA:
	ldrb r2, [r4, r3]
	lsl r6, r2, #0x14
	and r2, r1
	lsl r2, r2, #0x18
	lsr r6, r6, #0x18
	lsr r2, r2, #0x18
	cmp r6, #0x0
	bne _0200D2CC
	add r6, r5, #0x0
_0200D2CC:
	cmp r2, #0x0
	bne _0200D2D2
	add r2, r5, #0x0
_0200D2D2:
	lsl r6, r6, #0x4
	orr r2, r6
	strb r2, [r4, r3]
	add r3, r3, #0x1
	cmp r3, r0
	blo _0200D2BA
	str r7, [sp, #0x0]
	mov r3, #0x9
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x8]
	add r2, r4, #0x0
	lsl r3, r3, #0x6
	bl FUN_02017E14
	ldr r0, [sp, #0xc]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D300
FUN_0200D300: ; 0x0200D300
	push {r4-r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	add r5, r2, #0x0
	mov r0, #0xf
	add r6, r1, #0x0
	add r7, r3, #0x0
	str r5, [sp, #0x0]
	lsl r0, r0, #0x6
	str r0, [sp, #0x4]
	mov r1, #0x0
	ldr r4, [sp, #0x38]
	str r1, [sp, #0x8]
	ldr r2, [sp, #0x10]
	mov r0, #0x24
	add r3, r6, #0x0
	str r4, [sp, #0xc]
	bl FUN_0200687C
	mov r0, #0x24
	mov r1, #0x1
	add r2, r4, #0x0
	bl LoadFromNarc_2
	add r1, sp, #0x18
	str r0, [sp, #0x14]
	blx FUN_020B0138
	add r2, sp, #0x20
	ldr r1, [sp, #0x18]
	ldrb r2, [r2, #0x10]
	lsl r3, r7, #0x15
	ldr r1, [r1, #0xc]
	lsl r2, r2, #0x5
	add r1, r1, r2
	add r0, r6, #0x0
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl FUN_02017FB4
	ldr r1, [sp, #0x14]
	add r0, r4, #0x0
	bl FUN_02016A8C
	add r0, sp, #0x20
	ldrb r3, [r0, #0x10]
	cmp r3, #0x1
	bhi _0200D374
	ldrh r0, [r0, #0x14]
	add r5, #0x1e
	lsl r2, r5, #0x10
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x10]
	add r1, r6, #0x0
	lsr r2, r2, #0x10
	str r4, [sp, #0x4]
	bl FUN_0200D378
_0200D374:
	add sp, #0x1c
	pop {r4-r7, pc}

	thumb_func_start FUN_0200D378
FUN_0200D378: ; 0x0200D378
	push {r3-r5, lr}
	sub sp, #0x10
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r1, [sp, #0x20]
	cmp r3, #0x0
	bne _0200D38C
	add r1, #0x21
	lsl r0, r1, #0x10
	b _0200D390
_0200D38C:
	add r0, r1, #0x2
	lsl r0, r0, #0x10
_0200D390:
	lsr r1, r0, #0x10
	mov r0, #0x3
	str r2, [sp, #0x0]
	lsl r0, r0, #0x8
	str r0, [sp, #0x4]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x24]
	add r2, r5, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x24
	add r3, r4, #0x0
	bl FUN_0200687C
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_0200D3B0
FUN_0200D3B0: ; 0x0200D3B0
	push {r3-r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	ldr r6, [sp, #0x5c]
	sub r7, r2, #0x1
	ldr r2, [sp, #0x18]
	ldr r5, [sp, #0x60]
	str r2, [sp, #0x34]
	sub r2, #0x9
	str r2, [sp, #0x34]
	lsl r2, r7, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0x0]
	mov r2, #0x1
	str r2, [sp, #0x4]
	str r2, [sp, #0x8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, sp, #0x48
	lsl r3, r3, #0x18
	ldrh r2, [r2, #0x1c]
	lsr r3, r3, #0x18
	str r0, [sp, #0x10]
	bl FUN_02018540
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x30]
	sub r0, #0x8
	str r0, [sp, #0x30]
	add r0, sp, #0x48
	ldrh r4, [r0, #0x1c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, r4, #0x1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r0, sp, #0x48
	ldrb r0, [r0, #0x10]
	add r2, r4, #0x2
	lsl r2, r2, #0x10
	str r0, [sp, #0x3c]
	add r0, r0, #0x7
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	lsr r2, r2, #0x10
	sub r0, r0, #0x7
	str r0, [sp, #0x20]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r2, r4, #0x3
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	lsr r2, r2, #0x10
	add r0, r1, r0
	str r0, [sp, #0x38]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x38]
	add r2, r4, #0x4
	add r0, r0, #0x1
	str r0, [sp, #0x2c]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x38]
	add r0, r0, #0x2
	str r0, [sp, #0x28]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, r4, #0x5
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	str r5, [sp, #0xc]
	add r2, r4, #0x6
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	str r5, [sp, #0xc]
	add r2, r4, #0x7
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	str r5, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, #0x8
	sub r3, r3, #0x1
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #0x9
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r2, #0xb
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	add r2, r4, #0x0
	add r6, r0, r6
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x34]
	str r5, [sp, #0xc]
	add r2, #0xc
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x30]
	str r5, [sp, #0xc]
	add r2, #0xd
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	add r2, r4, #0x0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x20]
	str r5, [sp, #0xc]
	add r2, #0xe
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x38]
	str r5, [sp, #0xc]
	add r2, #0xf
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r2, r4, #0x0
	ldr r3, [sp, #0x2c]
	str r5, [sp, #0xc]
	add r2, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r3, [sp, #0x28]
	str r5, [sp, #0xc]
	add r4, #0x11
	lsl r2, r4, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add sp, #0x40
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D678
FUN_0200D678: ; 0x0200D678
	push {r3-r7, lr}
	sub sp, #0x28
	str r1, [sp, #0x10]
	add r7, r0, #0x0
	str r2, [sp, #0x14]
	bl FUN_0201AB08
	str r0, [sp, #0x20]
	add r0, r7, #0x0
	bl FUN_0201AB14
	sub r0, r0, #0x7
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, r7, #0x0
	bl FUN_0201AB18
	str r0, [sp, #0x1c]
	mov r0, #0x0
	str r0, [sp, #0x24]
_0200D6A2:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	add r3, r2, #0x0
	add r0, r1, r0
	mov r1, #0x6
	mul r3, r1
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x18
	mov r4, #0x0
	add r5, r1, r3
	lsr r6, r0, #0x18
_0200D6BA:
	str r6, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	add r2, r4, r5
	add r3, r3, r4
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r7, #0x0]
	ldr r1, [sp, #0x20]
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x6
	blo _0200D6BA
	ldr r0, [sp, #0x24]
	add r0, r0, #0x1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x24]
	cmp r0, #0x4
	blo _0200D6A2
	add sp, #0x28
	pop {r3-r7, pc}

	thumb_func_start FUN_0200D6F8
FUN_0200D6F8: ; 0x0200D6F8
	push {r3-r7, lr}
	sub sp, #0x28
	add r5, r0, #0x0
	str r1, [sp, #0x10]
	add r4, r2, #0x0
	add r6, r3, #0x0
	bl FUN_0201AB08
	str r0, [sp, #0x14]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x10]
	cmp r0, #0x1
	bhi _0200D756
	add r0, r5, #0x0
	bl FUN_0201AB14
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	bl FUN_0201AB18
	str r0, [sp, #0x1c]
	add r0, r5, #0x0
	bl FUN_0201AB0C
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB10
	str r7, [sp, #0x0]
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	str r4, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl FUN_0200D3B0
	add r1, r4, #0x0
	add r1, #0x1e
	lsl r1, r1, #0x10
	add r0, r5, #0x0
	lsr r1, r1, #0x10
	add r2, r6, #0x0
	bl FUN_0200D678
	b _0200D788
_0200D756:
	add r0, r5, #0x0
	bl FUN_0201AB14
	str r0, [sp, #0x20]
	add r0, r5, #0x0
	bl FUN_0201AB18
	str r0, [sp, #0x24]
	add r0, r5, #0x0
	bl FUN_0201AB0C
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB10
	str r7, [sp, #0x0]
	str r0, [sp, #0x4]
	str r6, [sp, #0x8]
	str r4, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0200CDD8
_0200D788:
	ldr r0, [sp, #0x10]
	cmp r0, #0x0
	bne _0200D794
	add r0, r5, #0x0
	bl FUN_020191D0
_0200D794:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0200D18C
	add sp, #0x28
	pop {r3-r7, pc}

	thumb_func_start FUN_0200D7A0
FUN_0200D7A0: ; 0x0200D7A0
	push {r3-r7, lr}
	sub sp, #0x18
	add r5, r0, #0x0
	add r4, r1, #0x0
	str r2, [sp, #0x10]
	bl FUN_0201AB08
	str r0, [sp, #0x14]
	cmp r4, #0x1
	bhi _0200D7FE
	add r0, r5, #0x0
	bl FUN_0201AB14
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB18
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB0C
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB10
	sub r1, r7, #0x1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, #0x2
	lsl r0, r0, #0x18
	sub r4, #0x9
	lsl r3, r4, #0x18
	add r6, #0xb
	str r1, [sp, #0x0]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x4]
	lsr r0, r0, #0x18
	str r0, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl FUN_02018540
	b _0200D846
_0200D7FE:
	add r0, r5, #0x0
	bl FUN_0201AB14
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB18
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB0C
	add r7, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0201AB10
	sub r1, r6, #0x1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x0]
	add r1, r7, #0x4
	lsl r1, r1, #0x18
	add r0, r0, #0x2
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	str r1, [sp, #0x4]
	lsr r0, r0, #0x18
	sub r3, r4, #0x2
	lsl r3, r3, #0x18
	str r0, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x14]
	lsr r3, r3, #0x18
	bl FUN_02018540
_0200D846:
	ldr r0, [sp, #0x10]
	cmp r0, #0x0
	bne _0200D852
	add r0, r5, #0x0
	bl FUN_02019570
_0200D852:
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200D858
FUN_0200D858: ; 0x0200D858
	push {r4-r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x0]
	str r1, [sp, #0x24]
	bl FUN_02016BB8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	bl FUN_0201AB08
	bl FUN_020187B0
	add r5, r0, #0x0
	ldr r0, [sp, #0x28]
	ldr r1, _0200D970 ; =0x0000048C
	bl FUN_02016998
	ldr r1, [sp, #0x24]
	add r4, r0, #0x0
	ldr r0, _0200D974 ; =0x00000404
	add r1, #0x12
	lsl r1, r1, #0x5
	add r0, r4, r0
	add r1, r5, r1
	mov r2, #0x80
	blx memcpy
	ldr r0, [sp, #0x28]
	mov r1, #0x80
	bl FUN_02016998
	ldr r1, [sp, #0x24]
	mov r2, #0x20
	add r1, #0xa
	lsl r1, r1, #0x5
	str r1, [sp, #0x2c]
	add r1, r5, r1
	add r6, r0, #0x0
	blx memcpy
	ldr r0, [sp, #0x24]
	mov r2, #0x20
	add r0, #0xb
	lsl r7, r0, #0x5
	add r0, r6, #0x0
	add r0, #0x20
	add r1, r5, r7
	blx memcpy
	ldr r1, [sp, #0x2c]
	add r0, r6, #0x0
	add r0, #0x40
	add r1, r5, r1
	mov r2, #0x20
	blx memcpy
	add r0, r6, #0x0
	add r0, #0x60
	add r1, r5, r7
	mov r2, #0x20
	blx memcpy
	mov r5, #0x0
	add r7, r4, #0x4
_0200D8DA:
	lsl r0, r5, #0x7
	add r0, r7, r0
	add r1, r6, #0x0
	mov r2, #0x80
	blx memcpy
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x8
	blo _0200D8DA
	add r0, r6, #0x0
	bl FUN_02016A18
	ldr r0, [sp, #0x28]
	mov r1, #0x17
	str r0, [sp, #0x0]
	mov r0, #0x26
	mov r2, #0x0
	add r3, sp, #0x30
	bl FUN_02006BB0
	mov r2, #0x80
	add r5, r0, #0x0
	str r2, [sp, #0x0]
	add r0, r4, #0x4
	str r0, [sp, #0x4]
	mov r3, #0x10
	str r3, [sp, #0x8]
	str r2, [sp, #0xc]
	mov r1, #0x0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r2, r1, #0x0
	ldr r0, [r0, #0x14]
	bl FUN_0200D148
	add r0, r5, #0x0
	bl FUN_02016A18
	ldr r0, [sp, #0x20]
	ldr r1, _0200D978 ; =0x00000484
	str r0, [r4, #0x0]
	ldr r0, [sp, #0x24]
	mov r2, #0x0
	strh r0, [r4, r1]
	add r0, r1, #0x2
	strb r2, [r4, r0]
	add r0, r1, #0x3
	ldrb r3, [r4, r0]
	mov r0, #0x7f
	bic r3, r0
	add r0, r1, #0x3
	strb r3, [r4, r0]
	add r0, r1, #0x4
	ldrb r3, [r4, r0]
	mov r0, #0x3
	bic r3, r0
	add r0, r1, #0x4
	strb r3, [r4, r0]
	ldr r0, _0200D97C ; =FUN_0200DB7C
	add r1, r4, #0x0
	bl FUN_0200CA60
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0200D980
	add r0, r4, #0x0
	add sp, #0x34
	pop {r4-r7, pc}
	nop
_0200D970: .word 0x0000048C
_0200D974: .word 0x00000404
_0200D978: .word 0x00000484
_0200D97C: .word FUN_0200DB7C 

	thumb_func_start FUN_0200D980
FUN_0200D980: ; 0x0200D980
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r6, r1, #0x0
	bl FUN_0201AB08
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_0201AB14
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x0]
	bl FUN_0201AB18
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x0]
	bl FUN_0201AB0C
	str r0, [sp, #0x20]
	cmp r6, #0x2
	bne _0200DA8A
	ldr r2, _0200DB78 ; =0x00000484
	add r1, r4, #0x0
	ldrh r0, [r5, r2]
	sub r2, #0x80
	add r2, r5, r2
	add r0, #0x12
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x0]
	mov r3, #0x80
	ldr r0, [r0, #0x0]
	bl FUN_02017E14
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #0x2
	ldr r0, [sp, #0x20]
	ldr r2, _0200DB78 ; =0x00000484
	add r6, r1, r0
	add r0, r6, #0x1
	str r0, [sp, #0x14]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0x0]
	ldr r3, [sp, #0x14]
	add r2, #0xa
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	add r6, r6, #0x2
	lsl r3, r6, #0x18
	add r2, #0xb
	lsl r2, r2, #0x10
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	add r7, r0, #0x3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x0]
	add r2, #0xa
	lsl r2, r2, #0x10
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0x0]
	add r2, #0xb
	lsl r2, r2, #0x10
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_02017CD0
	add sp, #0x24
	pop {r4-r7, pc}
_0200DA8A:
	ldr r3, _0200DB78 ; =0x00000484
	add r2, r5, #0x4
	ldrh r0, [r5, r3]
	add r3, r3, #0x3
	add r1, r4, #0x0
	add r0, #0x12
	str r0, [sp, #0x0]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x0]
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	lsl r3, r3, #0x7
	add r2, r2, r3
	ldr r0, [r0, #0x0]
	mov r3, #0x80
	bl FUN_02017E14
	cmp r6, #0x0
	beq _0200DB72
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r7, r0, #0x2
	ldr r0, [sp, #0x20]
	ldr r2, _0200DB78 ; =0x00000484
	add r6, r1, r0
	add r0, r6, #0x1
	str r0, [sp, #0x10]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldrh r2, [r5, r2]
	ldr r0, [r5, #0x0]
	ldr r3, [sp, #0x10]
	add r2, #0x12
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	add r6, r6, #0x2
	lsl r3, r6, #0x18
	add r2, #0x13
	lsl r2, r2, #0x10
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x10]
	add r7, r0, #0x3
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x0]
	add r2, #0x14
	lsl r2, r2, #0x10
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r2, _0200DB78 ; =0x00000484
	ldr r0, [r5, #0x0]
	ldrh r2, [r5, r2]
	lsl r3, r6, #0x18
	ldr r0, [r0, #0x0]
	add r2, #0x15
	lsl r2, r2, #0x10
	add r1, r4, #0x0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0x0]
	bl FUN_02017CD0
_0200DB72:
	add sp, #0x24
	pop {r4-r7, pc}
	nop
_0200DB78: .word 0x00000484

	thumb_func_start FUN_0200DB7C
FUN_0200DB7C: ; 0x0200DB7C
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, _0200DBE4 ; =0x00000488
	ldrb r2, [r1, r0]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1e
	beq _0200DB9E
	cmp r2, #0x1
	bne _0200DB96
	add r0, r1, #0x0
	mov r1, #0x2
	bl FUN_0200D980
_0200DB96:
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r3-r5, pc}
_0200DB9E:
	sub r2, r0, #0x2
	ldrb r2, [r1, r2]
	add r3, r2, #0x1
	sub r2, r0, #0x2
	strb r3, [r1, r2]
	ldrb r2, [r1, r2]
	cmp r2, #0x10
	bne _0200DBE0
	mov r3, #0x0
	sub r2, r0, #0x2
	strb r3, [r1, r2]
	sub r2, r0, #0x1
	ldrb r2, [r1, r2]
	mov r4, #0x7f
	bic r2, r4
	sub r4, r0, #0x1
	ldrb r4, [r1, r4]
	sub r0, r0, #0x1
	lsl r4, r4, #0x19
	lsr r4, r4, #0x19
	add r5, r4, #0x1
	mov r4, #0x7
	and r4, r5
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	mov r4, #0x7f
	and r4, r5
	orr r2, r4
	strb r2, [r1, r0]
	add r0, r1, #0x0
	add r1, r3, #0x0
	bl FUN_0200D980
_0200DBE0:
	pop {r3-r5, pc}
	nop
_0200DBE4: .word 0x00000488

	thumb_func_start FUN_0200DBE8
FUN_0200DBE8: ; 0x0200DBE8
	push {r4, lr}
	add r4, r0, #0x0
	add r0, r1, #0x0
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200DBFC
FUN_0200DBFC: ; 0x0200DBFC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0200DC1C ; =FUN_0200DBE8
	add r1, r4, #0x0
	mov r2, #0x0
	bl FUN_0200CA98
	ldr r1, _0200DC20 ; =0x00000488
	mov r0, #0x3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #0x1
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200DC1C: .word FUN_0200DBE8 
_0200DC20: .word 0x00000488

	thumb_func_start FUN_0200DC24
FUN_0200DC24: ; 0x0200DC24
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0200DC44 ; =FUN_0200DBE8
	add r1, r4, #0x0
	mov r2, #0x0
	bl FUN_0200CA98
	ldr r1, _0200DC48 ; =0x00000488
	mov r0, #0x3
	ldrb r2, [r4, r1]
	bic r2, r0
	mov r0, #0x2
	orr r0, r2
	strb r0, [r4, r1]
	pop {r4, pc}
	nop
_0200DC44: .word FUN_0200DBE8 
_0200DC48: .word 0x00000488

	thumb_func_start FUN_0200DC4C
FUN_0200DC4C: ; 0x0200DC4C
	push {r4-r7, lr}
	sub sp, #0xc
	str r2, [sp, #0x4]
	ldr r5, [sp, #0x30]
	str r3, [sp, #0x8]
	add r6, r0, #0x0
	add r7, r1, #0x0
	str r5, [sp, #0x0]
	bl FUN_0200DD70
	add r4, r0, #0x0
	add r1, r5, #0x0
	bl FUN_0200DDAC
	add r0, r4, #0x0
	bl FUN_0200DDD8
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x8]
	add r0, r4, #0x0
	bl FUN_0200DE30
	add r2, sp, #0x10
	ldrh r1, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	add r0, r4, #0x0
	bl FUN_0200DE80
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0x0
	bl FUN_0200DFD8
	add r0, r6, #0x0
	add r1, r7, #0x0
	bl FUN_02017CD0
	ldr r0, _0200DCA0 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0200DCA0: .word 0x0000016F

	thumb_func_start FUN_0200DCA4
FUN_0200DCA4: ; 0x0200DCA4
	push {r4-r7, lr}
	sub sp, #0xc
	str r2, [sp, #0x4]
	ldr r5, [sp, #0x2c]
	str r3, [sp, #0x8]
	add r6, r0, #0x0
	add r7, r1, #0x0
	str r5, [sp, #0x0]
	bl FUN_0200DD70
	add r4, r0, #0x0
	add r1, r5, #0x0
	bl FUN_0200DDAC
	add r0, r4, #0x0
	bl FUN_0200DDD8
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x8]
	add r0, r4, #0x0
	bl FUN_0200DE30
	ldr r1, [sp, #0x28]
	add r0, r4, #0x0
	bl FUN_0200DEC0
	add r2, sp, #0x10
	ldrb r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	add r0, r4, #0x0
	bl FUN_0200DFD8
	add r0, r6, #0x0
	add r1, r7, #0x0
	bl FUN_02017CD0
	ldr r0, _0200DCF4 ; =0x0000016F
	add r0, r4, r0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0200DCF4: .word 0x0000016F

	thumb_func_start FUN_0200DCF8
FUN_0200DCF8: ; 0x0200DCF8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0200DD6C ; =0x0000016F
	add r4, r1, #0x0
	ldrb r1, [r4, r0]
	cmp r1, #0x1
	beq _0200DD10
	cmp r1, #0x2
	beq _0200DD2E
	cmp r1, #0x3
	beq _0200DD40
	b _0200DD54
_0200DD10:
	add r0, r4, #0x0
	bl FUN_0200E188
	mov r0, #0x59
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_0200C3DC
	add r0, r4, #0x0
	bl FUN_021D99F8
	add r0, r5, #0x0
	bl FUN_0200621C
	pop {r3-r5, pc}
_0200DD2E:
	mov r1, #0x3
	strb r1, [r4, r0]
	sub r0, #0xb
	ldr r0, [r4, r0]
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	bl FUN_02020130
	b _0200DD54
_0200DD40:
	sub r0, #0xb
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x0]
	bl FUN_0202022C
	cmp r0, #0x6
	bne _0200DD54
	ldr r0, _0200DD6C ; =0x0000016F
	mov r1, #0x0
	strb r1, [r4, r0]
_0200DD54:
	mov r0, #0x59
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xc
	bl FUN_020201E4
	ldr r0, [r4, #0x0]
	bl FUN_0201FDEC
	pop {r3-r5, pc}
	.balign 4
_0200DD6C: .word 0x0000016F

	thumb_func_start FUN_0200DD70
FUN_0200DD70: ; 0x0200DD70
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r7, r3, #0x0
	mov r1, #0x17
	add r6, r2, #0x0
	ldr r0, _0200DDA4 ; =FUN_0200DCF8
	ldr r3, [sp, #0x18]
	lsl r1, r1, #0x4
	mov r2, #0x0
	bl FUN_020061E8
	bl FUN_0201B6C8
	ldr r1, _0200DDA8 ; =0x0000016F
	mov r2, #0x0
	strb r2, [r0, r1]
	sub r2, r1, #0x7
	str r5, [r0, r2]
	sub r2, r1, #0x3
	strb r4, [r0, r2]
	sub r2, r1, #0x2
	strb r6, [r0, r2]
	sub r1, r1, #0x1
	strb r7, [r0, r1]
	pop {r3-r7, pc}
	.balign 4
_0200DDA4: .word FUN_0200DCF8 
_0200DDA8: .word 0x0000016F

	thumb_func_start FUN_0200DDAC
FUN_0200DDAC: ; 0x0200DDAC
	push {r4-r6, lr}
	sub sp, #0x18
	ldr r5, _0200DDD4 ; =0x020ECEA8
	add r4, sp, #0x0
	add r6, r0, #0x0
	add r3, r1, #0x0
	add r2, r4, #0x0
	ldmia r5!, {r0-r1}
	stmia r4!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r4!, {r0-r1}
	ldmia r5!, {r0-r1}
	stmia r4!, {r0-r1}
	add r1, r2, #0x0
	add r0, r6, #0x0
	mov r2, #0x1
	bl FUN_021D959C
	add sp, #0x18
	pop {r4-r6, pc}
	.balign 4
_0200DDD4: .word 0x020ECEA8

	thumb_func_start FUN_0200DDD8
FUN_0200DDD8: ; 0x0200DDD8
	push {r3-r4, lr}
	sub sp, #0xc
	mov r1, #0x1
	str r1, [sp, #0x0]
	str r1, [sp, #0x4]
	ldr r1, _0200DE2C ; =0x00015CD5
	mov r2, #0x31
	str r1, [sp, #0x8]
	mov r1, #0x26
	mov r3, #0x0
	add r4, r0, #0x0
	bl FUN_021D967C
	ldr r0, _0200DE2C ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	mov r2, #0x2f
	mov r3, #0x0
	bl FUN_021D96F4
	ldr r0, _0200DE2C ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	mov r2, #0x2e
	mov r3, #0x0
	bl FUN_021D9708
	mov r0, #0x1
	str r0, [sp, #0x0]
	ldr r0, _0200DE2C ; =0x00015CD5
	mov r1, #0x26
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	mov r2, #0x30
	mov r3, #0x0
	bl FUN_021D971C
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_0200DE2C: .word 0x00015CD5

	thumb_func_start FUN_0200DE30
FUN_0200DE30: ; 0x0200DE30
	push {r4-r7, lr}
	sub sp, #0x34
	ldr r5, _0200DE7C ; =0x020ECEC0
	add r6, r2, #0x0
	add r4, r0, #0x0
	add r7, r1, #0x0
	add r3, sp, #0x0
	mov r2, #0x6
_0200DE40:
	ldmia r5!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _0200DE40
	ldr r0, [r5, #0x0]
	str r0, [r3, #0x0]
	add r0, r7, #0x5
	lsl r1, r0, #0x3
	add r0, sp, #0x0
	strh r1, [r0, #0x0]
	add r1, r6, #0x5
	lsl r1, r1, #0x3
	strh r1, [r0, #0x2]
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_021D9820
	mov r1, #0x59
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r0, [r4, #0x0]
	bl FUN_0201FDEC
	mov r0, #0x10
	mov r1, #0x1
	bl FUN_0201E74C
	add sp, #0x34
	pop {r4-r7, pc}
	nop
_0200DE7C: .word 0x020ECEC0

	thumb_func_start FUN_0200DE80
FUN_0200DE80: ; 0x0200DE80
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r0, #0x0
	ldr r0, _0200DEBC ; =0x00000162
	add r4, r1, #0x0
	ldrh r0, [r5, r0]
	add r6, r2, #0x0
	bl FUN_02006D98
	add r7, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r0, sp, #0xc
	add r1, r4, #0x0
	add r2, r6, #0x0
	mov r3, #0x2
	bl FUN_02068C00
	add r0, r5, #0x0
	add r1, sp, #0xc
	bl FUN_0200DEF4
	add r0, r7, #0x0
	bl FUN_020072E8
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_0200DEBC: .word 0x00000162

	thumb_func_start FUN_0200DEC0
FUN_0200DEC0: ; 0x0200DEC0
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, _0200DEF0 ; =0x00000162
	add r4, r1, #0x0
	ldrh r0, [r5, r0]
	bl FUN_02006D98
	add r6, r0, #0x0
	add r0, sp, #0x0
	add r1, r4, #0x0
	mov r2, #0x2
	bl FUN_02068B68
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_0200DEF4
	add r0, r6, #0x0
	bl FUN_020072E8
	add sp, #0x10
	pop {r4-r6, pc}
	nop
_0200DEF0: .word 0x00000162

	thumb_func_start FUN_0200DEF4
FUN_0200DEF4: ; 0x0200DEF4
	push {r3-r7, lr}
	sub sp, #0x28
	add r5, r0, #0x0
	ldr r0, _0200DFC8 ; =0x00000162
	add r6, r1, #0x0
	mov r1, #0x19
	ldrh r0, [r5, r0]
	lsl r1, r1, #0x8
	bl FUN_02016998
	add r2, sp, #0x18
	ldr r3, _0200DFCC ; =0x020ECE98
	add r4, r0, #0x0
	add r7, r2, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	str r4, [sp, #0x0]
	ldr r2, _0200DFC8 ; =0x00000162
	ldrh r0, [r6, #0x0]
	ldrh r1, [r6, #0x2]
	ldrh r2, [r5, r2]
	add r3, r7, #0x0
	bl FUN_02012400
	ldr r3, _0200DFD0 ; =0x020ECE88
	add r2, sp, #0x8
	add r7, r2, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	mov r0, #0x32
	lsl r0, r0, #0x6
	add r0, r4, r0
	str r0, [sp, #0x0]
	ldr r2, _0200DFC8 ; =0x00000162
	ldrh r0, [r6, #0x0]
	ldrh r1, [r6, #0x2]
	ldrh r2, [r5, r2]
	add r3, r7, #0x0
	bl FUN_02012400
	mov r0, #0x13
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	ldr r1, _0200DFD4 ; =0x00015CD5
	bl FUN_020094F0
	bl FUN_02009C5C
	mov r1, #0x1
	str r0, [sp, #0x4]
	blx FUN_020B1A14
	mov r1, #0x19
	add r7, r0, #0x0
	add r0, r4, #0x0
	lsl r1, r1, #0x8
	blx DC_FlushRange
	mov r2, #0x19
	add r0, r4, #0x0
	add r1, r7, #0x0
	lsl r2, r2, #0x8
	blx FUN_020C92F4
	add r0, r4, #0x0
	bl FUN_02016A18
	ldr r2, _0200DFC8 ; =0x00000162
	ldrh r0, [r6, #0x0]
	ldrh r1, [r6, #0x4]
	ldrh r2, [r5, r2]
	bl FUN_02012470
	add r4, r0, #0x0
	mov r0, #0x4d
	lsl r0, r0, #0x2
	ldr r0, [r5, r0]
	ldr r1, _0200DFD4 ; =0x00015CD5
	bl FUN_020094F0
	ldr r1, [sp, #0x4]
	bl FUN_02009E54
	mov r1, #0x1
	blx FUN_020B19C4
	add r5, r0, #0x0
	add r0, r4, #0x0
	mov r1, #0x20
	blx DC_FlushRange
	add r0, r4, #0x0
	add r1, r5, #0x0
	mov r2, #0x20
	blx FUN_020C9480
	add r0, r4, #0x0
	bl FUN_02016A18
	add sp, #0x28
	pop {r3-r7, pc}
	nop
_0200DFC8: .word 0x00000162
_0200DFCC: .word 0x020ECE98
_0200DFD0: .word 0x020ECE88
_0200DFD4: .word 0x00015CD5

	thumb_func_start FUN_0200DFD8
FUN_0200DFD8: ; 0x0200DFD8
	push {r4-r6, lr}
	sub sp, #0x10
	ldr r3, _0200E184 ; =0x0000016E
	add r5, r0, #0x0
	ldrb r0, [r5, r3]
	add r4, r1, #0x0
	sub r1, r3, #0x2
	sub r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #0x1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	add r6, r2, #0x0
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x1
	ldrb r0, [r5, r3]
	sub r1, r3, #0x2
	lsl r2, r2, #0x10
	sub r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0xa
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x2
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #0x2
	sub r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x4
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #0x2
	str r0, [sp, #0x0]
	mov r0, #0xa
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x3
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #0x2
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	mov r0, #0xa
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #0x1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x5
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #0x2
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	mov r0, #0xa
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x6
	ldrb r0, [r5, r3]
	lsl r2, r2, #0x10
	sub r1, r3, #0x2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	sub r3, r3, #0x1
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r2, r6, #0x7
	ldrb r0, [r5, r3]
	sub r1, r3, #0x2
	lsl r2, r2, #0x10
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0xa
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r1, [r5, r1]
	ldrb r3, [r5, r3]
	ldr r0, [r5, r0]
	lsr r2, r2, #0x10
	bl FUN_02018540
	ldr r3, _0200E184 ; =0x0000016E
	add r6, #0x8
	ldrb r0, [r5, r3]
	lsl r2, r6, #0x10
	sub r1, r3, #0x2
	add r0, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r4, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r5, r3]
	ldrb r1, [r5, r1]
	ldr r0, [r5, r0]
	add r3, #0xa
	lsl r3, r3, #0x18
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl FUN_02018540
	mov r1, #0x5a
	lsl r1, r1, #0x2
	ldr r0, [r5, r1]
	add r1, r1, #0x4
	ldrb r1, [r5, r1]
	bl FUN_0201AC68
	add sp, #0x10
	pop {r4-r6, pc}
	nop
_0200E184: .word 0x0000016E

	thumb_func_start FUN_0200E188
FUN_0200E188: ; 0x0200E188
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _0200E1CC ; =0x0000016E
	add r4, r0, #0x0
	ldrb r0, [r4, r3]
	mov r2, #0x0
	sub r1, r3, #0x2
	sub r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x0]
	mov r0, #0xc
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	str r2, [sp, #0xc]
	sub r0, r3, #0x6
	sub r3, r3, #0x1
	ldrb r3, [r4, r3]
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	sub r3, r3, #0x1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl FUN_02018540
	mov r1, #0x5a
	lsl r1, r1, #0x2
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	ldrb r1, [r4, r1]
	bl FUN_0201AC68
	add sp, #0x10
	pop {r4, pc}
	.balign 4
_0200E1CC: .word 0x0000016E

	thumb_func_start FUN_0200E1D0
FUN_0200E1D0: ; 0x0200E1D0
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r0, #0x0
	ldr r0, [sp, #0x30]
	add r4, r1, #0x0
	add r7, r2, #0x0
	add r6, r3, #0x0
	cmp r0, #0x0
	bne _0200E1E6
	bl ErrorHandling
_0200E1E6:
	ldr r0, [sp, #0x34]
	cmp r0, #0x0
	bne _0200E1F0
	bl ErrorHandling
_0200E1F0:
	ldr r0, _0200E2AC ; =0x021C47F4
	ldrh r0, [r0, #0xc]
	cmp r0, #0x0
	beq _0200E1FC
	bl ErrorHandling
_0200E1FC:
	ldr r0, _0200E2B0 ; =0x021C46B4
	bl FUN_0200E808
	ldr r1, _0200E2B0 ; =0x021C46B4
	add r0, r5, #0x0
	bl FUN_0200E558
	ldr r0, _0200E2B4 ; =0x021C4728
	bl FUN_0200E5F4
	ldr r0, _0200E2B0 ; =0x021C46B4
	add r1, r6, #0x0
	bl FUN_0200E75C
	add r5, r0, #0x0
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, _0200E2B8 ; =0x021C4740
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200E2B4 ; =0x021C4728
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r4, #0x0
	str r0, [sp, #0x14]
	ldr r0, _0200E2BC ; =0x021C46C8
	str r5, [sp, #0x18]
	bl FUN_0200E5C8
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r0, #0x1
	str r0, [sp, #0x8]
	ldr r0, _0200E2B8 ; =0x021C4740
	ldr r2, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, _0200E2B4 ; =0x021C4728
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	add r1, r7, #0x0
	str r0, [sp, #0x14]
	ldr r0, _0200E2C0 ; =0x021C46F8
	str r5, [sp, #0x18]
	bl FUN_0200E5C8
	ldr r0, _0200E2AC ; =0x021C47F4
	mov r1, #0x1
	strh r1, [r0, #0xc]
	ldr r0, _0200E2C4 ; =0x021C46B8
	ldr r1, _0200E2BC ; =0x021C46C8
	bl FUN_0200E528
	ldr r0, _0200E2C8 ; =0x021C46BC
	ldr r1, _0200E2C0 ; =0x021C46F8
	bl FUN_0200E528
	ldr r0, _0200E2CC ; =0x021C46B4
	ldr r0, [r0, #0xc]
	cmp r0, #0x0
	beq _0200E28E
	ldr r0, _0200E2B0 ; =0x021C46B4
	add r0, #0x14
	bl FUN_0200E7A8
	ldr r1, _0200E2D0 ; =0x0000014E
	ldr r0, _0200E2B0 ; =0x021C46B4
	mov r2, #0x1
	strb r2, [r0, r1]
_0200E28E:
	ldr r0, _0200E2B0 ; =0x021C46B4
	ldr r0, [r0, #0x10]
	cmp r0, #0x0
	beq _0200E2A6
	ldr r0, _0200E2B0 ; =0x021C46B4
	add r0, #0x44
	bl FUN_0200E7A8
	ldr r1, _0200E2D4 ; =0x0000014F
	ldr r0, _0200E2B0 ; =0x021C46B4
	mov r2, #0x1
	strb r2, [r0, r1]
_0200E2A6:
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_0200E2AC: .word 0x021C47F4
_0200E2B0: .word 0x021C46B4
_0200E2B4: .word 0x021C4728
_0200E2B8: .word 0x021C4740
_0200E2BC: .word 0x021C46C8
_0200E2C0: .word 0x021C46F8
_0200E2C4: .word 0x021C46B8
_0200E2C8: .word 0x021C46BC
_0200E2CC: .word 0x021C46B4
_0200E2D0: .word 0x0000014E
_0200E2D4: .word 0x0000014F

	thumb_func_start FUN_0200E2D8
FUN_0200E2D8: ; 0x0200E2D8
	push {r4, lr}
	ldr r0, _0200E300 ; =0x021C47F4
	ldr r4, _0200E304 ; =0x021C46B4
	ldrh r0, [r0, #0xc]
	cmp r0, #0x0
	beq _0200E2FC
	add r1, r4, #0x0
	add r2, r4, #0x0
	add r0, r4, #0x0
	add r1, #0x14
	add r2, #0x44
	bl FUN_0200E4B8
	cmp r0, #0x1
	bne _0200E2FC
	add r0, r4, #0x0
	bl FUN_0200E460
_0200E2FC:
	pop {r4, pc}
	nop
_0200E300: .word 0x021C47F4
_0200E304: .word 0x021C46B4

	thumb_func_start FUN_0200E308
FUN_0200E308: ; 0x0200E308
	ldr r0, _0200E318 ; =0x021C47F4
	ldrh r0, [r0, #0xc]
	cmp r0, #0x0
	bne _0200E314
	mov r0, #0x1
	bx lr
_0200E314:
	mov r0, #0x0
	bx lr
	.balign 4
_0200E318: .word 0x021C47F4

	thumb_func_start FUN_0200E31C
FUN_0200E31C: ; 0x0200E31C
	push {r3, lr}
	ldr r0, _0200E368 ; =0x021C4728
	mov r1, #0x0
	bl FUN_0200E6A0
	ldr r0, _0200E368 ; =0x021C4728
	mov r1, #0x1
	bl FUN_0200E6A0
	ldr r0, _0200E36C ; =0x021C46B4
	ldr r1, [r0, #0x4]
	cmp r1, #0x0
	beq _0200E33A
	mov r1, #0x2
	str r1, [r0, #0x20]
_0200E33A:
	ldr r0, _0200E36C ; =0x021C46B4
	ldr r1, [r0, #0x8]
	cmp r1, #0x0
	beq _0200E346
	mov r1, #0x2
	str r1, [r0, #0x50]
_0200E346:
	ldr r0, _0200E370 ; =0x021C46B8
	ldr r1, _0200E374 ; =0x021C46C8
	bl FUN_0200E528
	ldr r0, _0200E378 ; =0x021C46BC
	ldr r1, _0200E37C ; =0x021C46F8
	bl FUN_0200E528
	ldr r0, _0200E380 ; =0x021C47F4
	mov r1, #0x0
	strh r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xf]
	ldr r0, _0200E384 ; =0x021C46B4
	bl FUN_0200E808
	pop {r3, pc}
	.balign 4
_0200E368: .word 0x021C4728
_0200E36C: .word 0x021C46B4
_0200E370: .word 0x021C46B8
_0200E374: .word 0x021C46C8
_0200E378: .word 0x021C46BC
_0200E37C: .word 0x021C46F8
_0200E380: .word 0x021C47F4
_0200E384: .word 0x021C46B4

	thumb_func_start FUN_0200E388
FUN_0200E388: ; 0x0200E388
	ldr r3, _0200E390 ; =FUN_02011480
	add r1, r0, #0x0
	mov r0, #0x0
	bx r3
	.balign 4
_0200E390: .word FUN_02011480 

	thumb_func_start FUN_0200E394
FUN_0200E394: ; 0x0200E394
	ldr r3, _0200E39C ; =FUN_0200E440
	mov r1, #0x0
	bx r3
	nop
_0200E39C: .word FUN_0200E440 

	thumb_func_start FUN_0200E3A0
FUN_0200E3A0: ; 0x0200E3A0
	ldr r2, _0200E3B4 ; =0x00007FFF
	cmp r1, r2
	bne _0200E3AA
	mov r1, #0x10
	b _0200E3AE
_0200E3AA:
	mov r1, #0xf
	mvn r1, r1
_0200E3AE:
	ldr r3, _0200E3B8 ; =FUN_0200E440
	bx r3
	nop
_0200E3B4: .word 0x00007FFF
_0200E3B8: .word FUN_0200E440 

	thumb_func_start FUN_0200E3BC
FUN_0200E3BC: ; 0x0200E3BC
	push {r0-r3}
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	add r0, sp, #0x1c
	bne _0200E3D2
	mov r1, #0x0
	mov r2, #0x2
	blx FUN_020C9550
	b _0200E3DA
_0200E3D2:
	mov r1, #0x0
	mov r2, #0x2
	blx FUN_020C94E8
_0200E3DA:
	ldr r0, _0200E41C ; =0x021C4740
	mov r1, #0x1
	add r2, r4, #0x0
	bl FUN_02011634
	mov r2, #0x0
	ldr r0, _0200E41C ; =0x021C4740
	mov r1, #0x3f
	add r3, r2, #0x0
	str r4, [sp, #0x0]
	bl FUN_02011650
	mov r1, #0x0
	str r1, [sp, #0x0]
	str r1, [sp, #0x4]
	ldr r0, _0200E41C ; =0x021C4740
	add r2, r1, #0x0
	add r3, r1, #0x0
	str r4, [sp, #0x8]
	bl FUN_02011698
	ldr r0, _0200E41C ; =0x021C4740
	mov r1, #0x20
	mov r2, #0x0
	add r3, r4, #0x0
	bl FUN_02011678
	add sp, #0xc
	pop {r3-r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0200E41C: .word 0x021C4740

	thumb_func_start FUN_0200E420
FUN_0200E420: ; 0x0200E420
	push {r0-r3}
	push {r3, lr}
	add r0, sp, #0x8
	mov r1, #0x0
	mov r2, #0x2
	blx FUN_020C9550
	add r0, sp, #0x8
	mov r1, #0x0
	mov r2, #0x2
	blx FUN_020C94E8
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3

	thumb_func_start FUN_0200E440
FUN_0200E440: ; 0x0200E440
	push {r3, lr}
	cmp r0, #0x0
	bne _0200E44E
	ldr r0, _0200E458 ; =0x0400006C
	blx FUN_020C5978
	pop {r3, pc}
_0200E44E:
	ldr r0, _0200E45C ; =0x0400106C
	blx FUN_020C5978
	pop {r3, pc}
	nop
_0200E458: .word 0x0400006C
_0200E45C: .word 0x0400106C

	thumb_func_start FUN_0200E460
FUN_0200E460: ; 0x0200E460
	push {r4, lr}
	mov r1, #0x53
	add r4, r0, #0x0
	mov r2, #0x0
	lsl r1, r1, #0x2
	strh r2, [r4, r1]
	bl FUN_0200E770
	mov r1, #0x15
	lsl r1, r1, #0x4
	strh r0, [r4, r1]
	ldr r0, [r4, #0xc]
	cmp r0, #0x0
	beq _0200E490
	add r0, r4, #0x0
	add r0, #0x14
	bl FUN_0200E7D8
	ldr r0, [r4, #0x3c]
	cmp r0, #0x0
	bne _0200E490
	ldr r0, _0200E4B4 ; =0x021C47F4
	mov r1, #0x0
	strb r1, [r0, #0xe]
_0200E490:
	ldr r0, [r4, #0x10]
	cmp r0, #0x0
	beq _0200E4AA
	add r0, r4, #0x0
	add r0, #0x44
	bl FUN_0200E7D8
	ldr r0, [r4, #0x3c]
	cmp r0, #0x0
	bne _0200E4AA
	ldr r0, _0200E4B4 ; =0x021C47F4
	mov r1, #0x0
	strb r1, [r0, #0xf]
_0200E4AA:
	add r0, r4, #0x0
	bl FUN_0200E808
	pop {r4, pc}
	nop
_0200E4B4: .word 0x021C47F4

	thumb_func_start FUN_0200E4B8
FUN_0200E4B8: ; 0x0200E4B8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r2, #0x0
	cmp r0, #0x0
	beq _0200E4CE
	cmp r0, #0x1
	beq _0200E4E0
	cmp r0, #0x2
	beq _0200E4FA
	b _0200E512
_0200E4CE:
	add r0, r5, #0x4
	bl FUN_0200E528
	add r0, r5, #0x0
	add r0, #0x8
	add r1, r4, #0x0
	bl FUN_0200E528
	b _0200E512
_0200E4E0:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	beq _0200E4EE
	add r0, r5, #0x4
	bl FUN_0200E528
	b _0200E512
_0200E4EE:
	add r0, r5, #0x0
	add r0, #0x8
	add r1, r4, #0x0
	bl FUN_0200E528
	b _0200E512
_0200E4FA:
	ldr r0, [r5, #0x8]
	cmp r0, #0x0
	beq _0200E50C
	add r0, r5, #0x0
	add r0, #0x8
	add r1, r4, #0x0
	bl FUN_0200E528
	b _0200E512
_0200E50C:
	add r0, r5, #0x4
	bl FUN_0200E528
_0200E512:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _0200E522
	ldr r0, [r5, #0x8]
	cmp r0, #0x0
	bne _0200E522
	mov r0, #0x1
	pop {r3-r5, pc}
_0200E522:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200E528
FUN_0200E528: ; 0x0200E528
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0200E540
	add r0, r1, #0x0
	bl FUN_0200E544
	cmp r0, #0x1
	bne _0200E540
	mov r0, #0x0
	str r0, [r4, #0x0]
_0200E540:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200E544
FUN_0200E544: ; 0x0200E544
	push {r3, lr}
	ldr r1, [r0, #0x0]
	lsl r2, r1, #0x2
	ldr r1, _0200E554 ; =0x020ECEF4
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0200E554: .word 0x020ECEF4

	thumb_func_start FUN_0200E558
FUN_0200E558: ; 0x0200E558
	push {r3, lr}
	cmp r0, #0x4
	bhi _0200E5B8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0200E56A: ; jump table (using 16-bit offset)
	.short _0200E574 - _0200E56A - 2; case 0
	.short _0200E582 - _0200E56A - 2; case 1
	.short _0200E590 - _0200E56A - 2; case 2
	.short _0200E59E - _0200E56A - 2; case 3
	.short _0200E5AC - _0200E56A - 2; case 4
_0200E574:
	mov r2, #0x1
	add r0, r1, #0x0
	mov r1, #0x0
	add r3, r2, #0x0
	bl FUN_0200E5BC
	pop {r3, pc}
_0200E582:
	add r0, r1, #0x0
	mov r1, #0x1
	add r2, r1, #0x0
	add r3, r1, #0x0
	bl FUN_0200E5BC
	pop {r3, pc}
_0200E590:
	mov r2, #0x1
	add r0, r1, #0x0
	mov r1, #0x2
	add r3, r2, #0x0
	bl FUN_0200E5BC
	pop {r3, pc}
_0200E59E:
	add r0, r1, #0x0
	mov r1, #0x1
	add r2, r1, #0x0
	mov r3, #0x0
	bl FUN_0200E5BC
	pop {r3, pc}
_0200E5AC:
	add r0, r1, #0x0
	mov r1, #0x2
	mov r2, #0x0
	mov r3, #0x1
	bl FUN_0200E5BC
_0200E5B8:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200E5BC
FUN_0200E5BC: ; 0x0200E5BC
	str r1, [r0, #0x0]
	str r2, [r0, #0x4]
	str r3, [r0, #0x8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr

	thumb_func_start FUN_0200E5C8
FUN_0200E5C8: ; 0x0200E5C8
	str r1, [r0, #0x0]
	str r2, [r0, #0x4]
	ldr r1, [sp, #0x0]
	str r3, [r0, #0x8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #0x4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x8]
	str r1, [r0, #0x10]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x14]
	str r1, [r0, #0x20]
	ldr r1, _0200E5F0 ; =0xFFFFFFF0
	add r1, sp
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0x24]
	bx lr
	.balign 4
_0200E5F0: .word 0xFFFFFFF0

	thumb_func_start FUN_0200E5F4
FUN_0200E5F4: ; 0x0200E5F4
	mov r3, #0x0
	ldr r1, _0200E60C ; =FUN_0200E758
	add r2, r3, #0x0
_0200E5FA:
	str r2, [r0, #0x0]
	str r1, [r0, #0x8]
	str r2, [r0, #0x10]
	add r3, r3, #0x1
	add r0, r0, #0x4
	cmp r3, #0x2
	blt _0200E5FA
	bx lr
	nop
_0200E60C: .word FUN_0200E758 

	thumb_func_start FUN_0200E610
FUN_0200E610: ; 0x0200E610
	push {r3-r5, lr}
	add r5, r0, #0x0
	mov r4, #0x0
_0200E616:
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x8]
	blx r1
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x2
	blt _0200E616
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0200E628
FUN_0200E628: ; 0x0200E628
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	mov r0, #0x1
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	str r0, [sp, #0x8]
	add r0, #0x10
	lsl r4, r3, #0x2
	str r0, [sp, #0x8]
	ldr r0, [r0, r4]
	add r7, r2, #0x0
	str r1, [sp, #0x0]
	cmp r0, #0x0
	beq _0200E64A
	bl ErrorHandling
_0200E64A:
	add r6, r5, #0x0
	add r6, #0x8
	ldr r0, [r6, r4]
	cmp r0, #0x0
	bne _0200E658
	bl ErrorHandling
_0200E658:
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	bne _0200E672
	ldr r0, [r5, #0x14]
	cmp r0, #0x0
	bne _0200E672
	ldr r0, _0200E698 ; =FUN_0200E610
	add r1, r5, #0x0
	bl FUN_02015F34
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4]
_0200E672:
	ldr r0, [sp, #0x4]
	cmp r0, #0x1
	beq _0200E67C
	bl ErrorHandling
_0200E67C:
	ldr r0, [sp, #0x0]
	cmp r7, #0x0
	str r0, [r5, r4]
	beq _0200E688
	str r7, [r6, r4]
	b _0200E68C
_0200E688:
	ldr r0, _0200E69C ; =FUN_0200E758
	str r0, [r6, r4]
_0200E68C:
	ldr r0, [sp, #0x8]
	mov r1, #0x1
	str r1, [r0, r4]
	add sp, #0xc
	pop {r4-r7, pc}
	nop
_0200E698: .word FUN_0200E610 
_0200E69C: .word FUN_0200E758 

	thumb_func_start FUN_0200E6A0
FUN_0200E6A0: ; 0x0200E6A0
	push {r3-r5, lr}
	lsl r4, r1, #0x2
	add r5, r0, #0x0
	mov r1, #0x0
	add r0, r5, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	bne _0200E6BC
	ldr r0, [r5, #0x14]
	cmp r0, #0x0
	bne _0200E6BC
	bl FUN_02015F1C
_0200E6BC:
	ldr r1, _0200E6C8 ; =FUN_0200E758
	add r0, r5, r4
	str r1, [r0, #0x8]
	mov r0, #0x0
	str r0, [r5, r4]
	pop {r3-r5, pc}
	.balign 4
_0200E6C8: .word FUN_0200E758 

	thumb_func_start FUN_0200E6CC
FUN_0200E6CC: ; 0x0200E6CC
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	add r6, r2, #0x0
	add r7, r3, #0x0
	bl FUN_020169D8
	add r1, r0, #0x0
	str r5, [r1, #0x0]
	str r4, [r1, #0x4]
	mov r2, #0x1
	str r6, [r1, #0x8]
	ldr r0, _0200E6F4 ; =FUN_0200E71C
	lsl r2, r2, #0xa
	str r7, [r1, #0xc]
	bl FUN_0200CA98
	pop {r3-r7, pc}
	.balign 4
_0200E6F4: .word FUN_0200E71C 

	thumb_func_start FUN_0200E6F8
FUN_0200E6F8: ; 0x0200E6F8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r0, r2, #0x0
	mov r1, #0x8
	bl FUN_020169D8
	add r1, r0, #0x0
	mov r2, #0x1
	str r5, [r1, #0x0]
	ldr r0, _0200E718 ; =FUN_0200E73C
	lsl r2, r2, #0xa
	str r4, [r1, #0x4]
	bl FUN_0200CA98
	pop {r3-r5, pc}
	.balign 4
_0200E718: .word FUN_0200E73C 

	thumb_func_start FUN_0200E71C
FUN_0200E71C: ; 0x0200E71C
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0x8]
	ldr r3, [r4, #0xc]
	bl FUN_0200E628
	add r0, r5, #0x0
	bl FUN_0200CAB4
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r3-r5, pc}

	thumb_func_start FUN_0200E73C
FUN_0200E73C: ; 0x0200E73C
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	bl FUN_0200E6A0
	add r0, r5, #0x0
	bl FUN_0200CAB4
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r3-r5, pc}

	thumb_func_start FUN_0200E758
FUN_0200E758: ; 0x0200E758
	bx lr
	.balign 4

	thumb_func_start FUN_0200E75C
FUN_0200E75C: ; 0x0200E75C
	ldr r2, _0200E76C ; =0x0000FFFF
	cmp r1, r2
	bne _0200E768
	mov r1, #0x15
	lsl r1, r1, #0x4
	ldrh r1, [r0, r1]
_0200E768:
	add r0, r1, #0x0
	bx lr
	.balign 4
_0200E76C: .word 0x0000FFFF

	thumb_func_start FUN_0200E770
FUN_0200E770: ; 0x0200E770
	ldr r1, [r0, #0xc]
	cmp r1, #0x1
	bne _0200E77C
	add r2, r0, #0x0
	add r2, #0x14
	b _0200E780
_0200E77C:
	add r2, r0, #0x0
	add r2, #0x44
_0200E780:
	ldr r1, [r2, #0x28]
	cmp r1, #0x1
	bne _0200E78A
	ldrh r0, [r2, #0x24]
	bx lr
_0200E78A:
	mov r1, #0x15
	lsl r1, r1, #0x4
	ldrh r0, [r0, r1]
	bx lr
	.balign 4

	thumb_func_start FUN_0200E794
FUN_0200E794: ; 0x0200E794
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r1, #0x10]
	mov r1, #0x0
	bl FUN_0200E440
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}

	thumb_func_start FUN_0200E7A8
FUN_0200E7A8: ; 0x0200E7A8
	push {r3, lr}
	add r1, r0, #0x0
	ldr r0, [r1, #0x28]
	cmp r0, #0x0
	bne _0200E7CE
	ldrh r2, [r1, #0x24]
	ldr r0, _0200E7D0 ; =0x00007FFF
	cmp r2, r0
	beq _0200E7BE
	cmp r2, #0x0
	bne _0200E7CE
_0200E7BE:
	ldr r0, [r1, #0x2c]
	cmp r0, #0x0
	bne _0200E7CE
	mov r2, #0x1
	ldr r0, _0200E7D4 ; =FUN_0200E794
	lsl r2, r2, #0xa
	bl FUN_0200CA98
_0200E7CE:
	pop {r3, pc}
	.balign 4
_0200E7D0: .word 0x00007FFF
_0200E7D4: .word FUN_0200E794 

	thumb_func_start FUN_0200E7D8
FUN_0200E7D8: ; 0x0200E7D8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x28]
	cmp r0, #0x1
	bne _0200E800
	ldrh r1, [r4, #0x24]
	ldr r0, _0200E804 ; =0x00007FFF
	cmp r1, r0
	beq _0200E7EE
	cmp r1, #0x0
	bne _0200E800
_0200E7EE:
	ldr r0, [r4, #0x2c]
	cmp r0, #0x0
	bne _0200E800
	ldr r0, [r4, #0x10]
	bl FUN_0200E3A0
	ldr r0, [r4, #0x10]
	bl FUN_0200E388
_0200E800:
	pop {r4, pc}
	nop
_0200E804: .word 0x00007FFF

	thumb_func_start FUN_0200E808
FUN_0200E808: ; 0x0200E808
	push {r4, lr}
	add r4, r0, #0x0
	add r2, r4, #0x0
	mov r1, #0x14
	mov r0, #0x0
_0200E812:
	strb r0, [r2, #0x0]
	add r2, r2, #0x1
	sub r1, r1, #0x1
	bne _0200E812
	add r0, r4, #0x0
	add r0, #0x14
	mov r1, #0x0
	mov r2, #0x30
	blx Call_FillMemWithValue
	add r0, r4, #0x0
	add r0, #0x44
	mov r1, #0x0
	mov r2, #0x30
	blx Call_FillMemWithValue
	add r2, r4, #0x0
	add r2, #0x74
	mov r1, #0x18
	mov r0, #0x0
_0200E83A:
	strb r0, [r2, #0x0]
	add r2, r2, #0x1
	sub r1, r1, #0x1
	bne _0200E83A
	add r4, #0x8c
	add r0, r4, #0x0
	mov r1, #0x0
	mov r2, #0xc0
	blx Call_FillMemWithValue
	pop {r4, pc}

	thumb_func_start FUN_0200E850
FUN_0200E850: ; 0x0200E850
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0x0
	bne _0200E866
	mov r1, #0x1
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	bl FUN_0200F20C
	mov r0, #0x0
	pop {r3, pc}
_0200E866:
	bl FUN_0200F2AC
	pop {r3, pc}

	thumb_func_start FUN_0200E86C
FUN_0200E86C: ; 0x0200E86C
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0x0
	bne _0200E884
	mov r1, #0x0
	str r1, [r0, #0x28]
	mov r2, #0x1
	str r2, [r0, #0x2c]
	bl FUN_0200F20C
	mov r0, #0x0
	pop {r3, pc}
_0200E884:
	bl FUN_0200F2AC
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200E88C
FUN_0200E88C: ; 0x0200E88C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E8B4
	ldr r1, _0200E8BC ; =0x020ECF9F
	ldr r0, _0200E8C0 ; =0x02105AF8
	str r1, [r0, #0x30]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E8C4 ; =0x02105B28
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E8B4:
	bl FUN_02010F70
	pop {r4, pc}
	nop
_0200E8BC: .word 0x020ECF9F
_0200E8C0: .word 0x02105AF8
_0200E8C4: .word 0x02105B28

	thumb_func_start FUN_0200E8C8
FUN_0200E8C8: ; 0x0200E8C8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E8EE
	ldr r1, _0200E8F4 ; =0x020ECF9C
	ldr r0, _0200E8F8 ; =0x02105AF8
	str r1, [r0, #0x40]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E8FC ; =0x02105B38
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E8EE:
	bl FUN_02010F70
	pop {r4, pc}
	.balign 4
_0200E8F4: .word 0x020ECF9C
_0200E8F8: .word 0x02105AF8
_0200E8FC: .word 0x02105B38

	thumb_func_start FUN_0200E900
FUN_0200E900: ; 0x0200E900
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E928
	ldr r1, _0200E930 ; =0x020ECFA5
	ldr r0, _0200E934 ; =0x02105AF8
	str r1, [r0, #0x48]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E938 ; =0x02105B40
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E928:
	bl FUN_02010F70
	pop {r4, pc}
	nop
_0200E930: .word 0x020ECFA5
_0200E934: .word 0x02105AF8
_0200E938: .word 0x02105B40

	thumb_func_start FUN_0200E93C
FUN_0200E93C: ; 0x0200E93C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E962
	ldr r1, _0200E968 ; =0x020ECFA2
	ldr r0, _0200E96C ; =0x02105AF8
	str r1, [r0, #0x38]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E970 ; =0x02105B30
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E962:
	bl FUN_02010F70
	pop {r4, pc}
	.balign 4
_0200E968: .word 0x020ECFA2
_0200E96C: .word 0x02105AF8
_0200E970: .word 0x02105B30

	thumb_func_start FUN_0200E974
FUN_0200E974: ; 0x0200E974
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E996
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E99C ; =0x020ED0E8
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E996:
	bl FUN_0200FD1C
	pop {r4, pc}
	.balign 4
_0200E99C: .word 0x020ED0E8

	thumb_func_start FUN_0200E9A0
FUN_0200E9A0: ; 0x0200E9A0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E9C0
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200E9C8 ; =0x020ED154
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E9C0:
	bl FUN_0200FD1C
	pop {r4, pc}
	nop
_0200E9C8: .word 0x020ED154

	thumb_func_start FUN_0200E9CC
FUN_0200E9CC: ; 0x0200E9CC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200E9F4
	ldr r1, _0200E9FC ; =0x020ECFC0
	ldr r0, _0200EA00 ; =0x02105AF8
	str r1, [r0, #0x20]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EA04 ; =0x02105B18
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200E9F4:
	bl FUN_02010F70
	pop {r4, pc}
	nop
_0200E9FC: .word 0x020ECFC0
_0200EA00: .word 0x02105AF8
_0200EA04: .word 0x02105B18

	thumb_func_start FUN_0200EA08
FUN_0200EA08: ; 0x0200EA08
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EA2E
	ldr r1, _0200EA34 ; =0x020ECFC6
	ldr r0, _0200EA38 ; =0x02105AF8
	str r1, [r0, #0x28]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EA3C ; =0x02105B20
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EA2E:
	bl FUN_02010F70
	pop {r4, pc}
	.balign 4
_0200EA34: .word 0x020ECFC6
_0200EA38: .word 0x02105AF8
_0200EA3C: .word 0x02105B20

	thumb_func_start FUN_0200EA40
FUN_0200EA40: ; 0x0200EA40
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EA68
	ldr r1, _0200EA70 ; =0x020ECFA8
	ldr r0, _0200EA74 ; =0x02105AF8
	str r1, [r0, #0x10]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EA78 ; =0x02105B08
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EA68:
	bl FUN_02010F70
	pop {r4, pc}
	nop
_0200EA70: .word 0x020ECFA8
_0200EA74: .word 0x02105AF8
_0200EA78: .word 0x02105B08

	thumb_func_start FUN_0200EA7C
FUN_0200EA7C: ; 0x0200EA7C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EAA2
	ldr r1, _0200EAA8 ; =0x020ECFB4
	ldr r0, _0200EAAC ; =0x02105AF8
	str r1, [r0, #0x18]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EAB0 ; =0x02105B10
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EAA2:
	bl FUN_02010F70
	pop {r4, pc}
	.balign 4
_0200EAA8: .word 0x020ECFB4
_0200EAAC: .word 0x02105AF8
_0200EAB0: .word 0x02105B10

	thumb_func_start FUN_0200EAB4
FUN_0200EAB4: ; 0x0200EAB4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EAD6
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EADC ; =0x020ED1C0
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EAD6:
	bl FUN_0200FD1C
	pop {r4, pc}
	.balign 4
_0200EADC: .word 0x020ED1C0

	thumb_func_start FUN_0200EAE0
FUN_0200EAE0: ; 0x0200EAE0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EB00
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EB08 ; =0x020ED1E4
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EB00:
	bl FUN_0200FD1C
	pop {r4, pc}
	nop
_0200EB08: .word 0x020ED1E4

	thumb_func_start FUN_0200EB0C
FUN_0200EB0C: ; 0x0200EB0C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EB30
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EB38 ; =0x020ED208
	ldr r2, _0200EB3C ; =0x020ED22C
	add r0, r4, #0x0
	bl FUN_0200FD6C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EB30:
	bl FUN_0200FDC4
	pop {r4, pc}
	nop
_0200EB38: .word 0x020ED208
_0200EB3C: .word 0x020ED22C

	thumb_func_start FUN_0200EB40
FUN_0200EB40: ; 0x0200EB40
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EB62
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EB68 ; =0x020ED250
	ldr r2, _0200EB6C ; =0x020ED274
	add r0, r4, #0x0
	bl FUN_0200FD6C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EB62:
	bl FUN_0200FDC4
	pop {r4, pc}
	.balign 4
_0200EB68: .word 0x020ED250
_0200EB6C: .word 0x020ED274

	thumb_func_start FUN_0200EB70
FUN_0200EB70: ; 0x0200EB70
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EB92
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EB98 ; =0x020ED090
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EB92:
	bl FUN_0200FF50
	pop {r4, pc}
	.balign 4
_0200EB98: .word 0x020ED090

	thumb_func_start FUN_0200EB9C
FUN_0200EB9C: ; 0x0200EB9C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EBBC
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EBC4 ; =0x020ED040
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EBBC:
	bl FUN_0200FF50
	pop {r4, pc}
	nop
_0200EBC4: .word 0x020ED040

	thumb_func_start FUN_0200EBC8
FUN_0200EBC8: ; 0x0200EBC8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EBEA
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EBF0 ; =0x020ED050
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EBEA:
	bl FUN_0200FF50
	pop {r4, pc}
	.balign 4
_0200EBF0: .word 0x020ED050

	thumb_func_start FUN_0200EBF4
FUN_0200EBF4: ; 0x0200EBF4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EC14
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EC1C ; =0x020ED060
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EC14:
	bl FUN_0200FF50
	pop {r4, pc}
	nop
_0200EC1C: .word 0x020ED060

	thumb_func_start FUN_0200EC20
FUN_0200EC20: ; 0x0200EC20
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EC42
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EC48 ; =0x020ECFE0
	add r0, r4, #0x0
	bl FUN_020101EC
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EC42:
	bl FUN_02010224
	pop {r4, pc}
	.balign 4
_0200EC48: .word 0x020ECFE0

	thumb_func_start FUN_0200EC4C
FUN_0200EC4C: ; 0x0200EC4C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EC6C
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EC74 ; =0x020ECFEC
	add r0, r4, #0x0
	bl FUN_020101EC
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EC6C:
	bl FUN_02010224
	pop {r4, pc}
	nop
_0200EC74: .word 0x020ECFEC

	thumb_func_start FUN_0200EC78
FUN_0200EC78: ; 0x0200EC78
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EC9A
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ECA0 ; =0x020ED0A0
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EC9A:
	bl FUN_0200FD1C
	pop {r4, pc}
	.balign 4
_0200ECA0: .word 0x020ED0A0

	thumb_func_start FUN_0200ECA4
FUN_0200ECA4: ; 0x0200ECA4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200ECC4
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ECCC ; =0x020ED0C4
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200ECC4:
	bl FUN_0200FD1C
	pop {r4, pc}
	nop
_0200ECCC: .word 0x020ED0C4

	thumb_func_start FUN_0200ECD0
FUN_0200ECD0: ; 0x0200ECD0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200ECF2
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ECF8 ; =0x020ED10C
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200ECF2:
	bl FUN_0200FD1C
	pop {r4, pc}
	.balign 4
_0200ECF8: .word 0x020ED10C

	thumb_func_start FUN_0200ECFC
FUN_0200ECFC: ; 0x0200ECFC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200ED1C
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ED24 ; =0x020ED178
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200ED1C:
	bl FUN_0200FD1C
	pop {r4, pc}
	nop
_0200ED24: .word 0x020ED178

	thumb_func_start FUN_0200ED28
FUN_0200ED28: ; 0x0200ED28
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200ED4A
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ED50 ; =0x020ED004
	add r0, r4, #0x0
	bl FUN_020103F0
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200ED4A:
	bl FUN_02010428
	pop {r4, pc}
	.balign 4
_0200ED50: .word 0x020ED004

	thumb_func_start FUN_0200ED54
FUN_0200ED54: ; 0x0200ED54
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200ED74
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200ED7C ; =0x020ED010
	add r0, r4, #0x0
	bl FUN_020103F0
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200ED74:
	bl FUN_02010428
	pop {r4, pc}
	nop
_0200ED7C: .word 0x020ED010

	thumb_func_start FUN_0200ED80
FUN_0200ED80: ; 0x0200ED80
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EDC4
	ldr r0, _0200EDCC ; =0x020ED298
	mov r1, #0x4
	str r0, [sp, #0x0]
	ldr r0, _0200EDD0 ; =0x020ED2D8
	str r0, [sp, #0x4]
	add r0, sp, #0x0
	strb r1, [r0, #0x8]
	mov r1, #0x0
	strb r1, [r0, #0x9]
	mov r1, #0x3f
	strb r1, [r0, #0xa]
	mov r1, #0x20
	strb r1, [r0, #0xb]
	mov r1, #0x1
	strb r1, [r0, #0xc]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010688
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EDC4:
	bl FUN_020106C0
	add sp, #0x10
	pop {r4, pc}
	.balign 4
_0200EDCC: .word 0x020ED298
_0200EDD0: .word 0x020ED2D8

	thumb_func_start FUN_0200EDD4
FUN_0200EDD4: ; 0x0200EDD4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EE14
	ldr r0, _0200EE1C ; =0x020ED318
	mov r1, #0x4
	str r0, [sp, #0x0]
	ldr r0, _0200EE20 ; =0x020ED358
	mov r2, #0x0
	str r0, [sp, #0x4]
	add r0, sp, #0x0
	strb r1, [r0, #0x8]
	strb r2, [r0, #0x9]
	mov r1, #0x3f
	strb r1, [r0, #0xa]
	mov r1, #0x20
	strb r1, [r0, #0xb]
	strb r2, [r0, #0xc]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010688
	mov r0, #0x0
	str r0, [r4, #0x28]
	add sp, #0x10
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EE14:
	bl FUN_020106C0
	add sp, #0x10
	pop {r4, pc}
	.balign 4
_0200EE1C: .word 0x020ED318
_0200EE20: .word 0x020ED358

	thumb_func_start FUN_0200EE24
FUN_0200EE24: ; 0x0200EE24
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EE4C
	ldr r1, _0200EE54 ; =0x020ECFD5
	ldr r0, _0200EE58 ; =0x02105AF8
	str r1, [r0, #0x0]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EE5C ; =0x02105AF8
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EE4C:
	bl FUN_02010F70
	pop {r4, pc}
	nop
_0200EE54: .word 0x020ECFD5
_0200EE58: .word 0x02105AF8
_0200EE5C: .word 0x02105AF8

	thumb_func_start FUN_0200EE60
FUN_0200EE60: ; 0x0200EE60
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EE86
	ldr r1, _0200EE8C ; =0x020ECFCC
	ldr r0, _0200EE90 ; =0x02105AF8
	str r1, [r0, #0x8]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EE94 ; =0x02105B00
	add r0, r4, #0x0
	bl FUN_02010F2C
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EE86:
	bl FUN_02010F70
	pop {r4, pc}
	.balign 4
_0200EE8C: .word 0x020ECFCC
_0200EE90: .word 0x02105AF8
_0200EE94: .word 0x02105B00

	thumb_func_start FUN_0200EE98
FUN_0200EE98: ; 0x0200EE98
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EECA
	ldr r3, _0200EED4 ; =0x020ECFF8
	add r2, sp, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010948
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	add sp, #0xc
	str r0, [r4, #0x2c]
	pop {r3-r4, pc}
_0200EECA:
	bl FUN_02010988
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_0200EED4: .word 0x020ECFF8

	thumb_func_start FUN_0200EED8
FUN_0200EED8: ; 0x0200EED8
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EF08
	ldr r3, _0200EF10 ; =0x020ED034
	add r2, sp, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010948
	mov r0, #0x0
	str r0, [r4, #0x28]
	add sp, #0xc
	str r0, [r4, #0x2c]
	pop {r3-r4, pc}
_0200EF08:
	bl FUN_02010988
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4
_0200EF10: .word 0x020ED034

	thumb_func_start FUN_0200EF14
FUN_0200EF14: ; 0x0200EF14
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EF46
	ldr r3, _0200EF50 ; =0x020ED01C
	add r2, sp, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010C7C
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	add sp, #0xc
	str r0, [r4, #0x2c]
	pop {r3-r4, pc}
_0200EF46:
	bl FUN_02010CBC
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_0200EF50: .word 0x020ED01C

	thumb_func_start FUN_0200EF54
FUN_0200EF54: ; 0x0200EF54
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EF84
	ldr r3, _0200EF8C ; =0x020ED028
	add r2, sp, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02010C7C
	mov r0, #0x0
	str r0, [r4, #0x28]
	add sp, #0xc
	str r0, [r4, #0x2c]
	pop {r3-r4, pc}
_0200EF84:
	bl FUN_02010CBC
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4
_0200EF8C: .word 0x020ED028

	thumb_func_start FUN_0200EF90
FUN_0200EF90: ; 0x0200EF90
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EFB2
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EFB8 ; =0x020ED080
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EFB2:
	bl FUN_0200FF50
	pop {r4, pc}
	.balign 4
_0200EFB8: .word 0x020ED080

	thumb_func_start FUN_0200EFBC
FUN_0200EFBC: ; 0x0200EFBC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200EFDC
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200EFE4 ; =0x020ED070
	add r0, r4, #0x0
	bl FUN_0200FF18
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200EFDC:
	bl FUN_0200FF50
	pop {r4, pc}
	nop
_0200EFE4: .word 0x020ED070

	thumb_func_start FUN_0200EFE8
FUN_0200EFE8: ; 0x0200EFE8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200F00A
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200F010 ; =0x020ED130
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F00A:
	bl FUN_0200FD1C
	pop {r4, pc}
	.balign 4
_0200F010: .word 0x020ED130

	thumb_func_start FUN_0200F014
FUN_0200F014: ; 0x0200F014
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200F034
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200F03C ; =0x020ED19C
	add r0, r4, #0x0
	bl FUN_0200FCC8
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F034:
	bl FUN_0200FD1C
	pop {r4, pc}
	nop
_0200F03C: .word 0x020ED19C

	thumb_func_start FUN_0200F040
FUN_0200F040: ; 0x0200F040
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200F068
	ldr r1, _0200F070 ; =0x020ECFAE
	ldr r0, _0200F074 ; =0x02105AF8
	str r1, [r0, #0x74]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200F078 ; =0x02105B48
	add r0, r4, #0x0
	bl FUN_020111AC
	mov r0, #0x1
	str r0, [r4, #0x28]
	mov r0, #0x0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F068:
	bl FUN_02011214
	pop {r4, pc}
	nop
_0200F070: .word 0x020ECFAE
_0200F074: .word 0x02105AF8
_0200F078: .word 0x02105B48

	thumb_func_start FUN_0200F07C
FUN_0200F07C: ; 0x0200F07C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	cmp r1, #0x0
	bne _0200F0A2
	ldr r1, _0200F0A8 ; =0x020ECFBA
	ldr r0, _0200F0AC ; =0x02105B78
	str r1, [r0, #0x24]
	ldrh r0, [r4, #0x24]
	bl FUN_0200E420
	ldr r1, _0200F0B0 ; =0x02105B78
	add r0, r4, #0x0
	bl FUN_020111AC
	mov r0, #0x0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0200F0A2:
	bl FUN_02011214
	pop {r4, pc}
	.balign 4
_0200F0A8: .word 0x020ECFBA
_0200F0AC: .word 0x02105B78
_0200F0B0: .word 0x02105B78

	thumb_func_start FUN_0200F0B4
FUN_0200F0B4: ; 0x0200F0B4
	asr r0, r0, #0x4
	lsl r1, r0, #0x1
	lsl r0, r1, #0x1
	ldr r2, _0200F0C8 ; =0x020FFA38
	add r1, r1, #0x1
	lsl r1, r1, #0x1
	ldr r3, _0200F0CC ; =FUN_020C50B8
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	bx r3
	.balign 4
_0200F0C8: .word 0x020FFA38
_0200F0CC: .word FUN_020C50B8

	thumb_func_start FUN_0200F0D0
FUN_0200F0D0: ; 0x0200F0D0
	push {r4, lr}
	add r4, r1, #0x0
	bl FUN_0200F0B4
	lsl r2, r4, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xc
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200F0F8
FUN_0200F0F8: ; 0x0200F0F8
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r1, #0x0
	add r7, r2, #0x0
	add r6, r3, #0x0
	bl FUN_0200F0B4
	cmp r6, r7
	bge _0200F142
	lsl r1, r6, #0x2
	str r0, [sp, #0x0]
	asr r0, r0, #0x1f
	lsl r4, r6, #0xc
	add r5, r5, r1
	str r0, [sp, #0x4]
_0200F116:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	asr r3, r4, #0x1f
	add r2, r4, #0x0
	blx _ll_mul
	mov r2, #0x2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0200F148 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	stmia r5!, {r0}
	mov r0, #0x1
	lsl r0, r0, #0xc
	add r6, r6, #0x1
	add r4, r4, r0
	cmp r6, r7
	blt _0200F116
_0200F142:
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_0200F148: .word 0x00000000

	thumb_func_start FUN_0200F14C
FUN_0200F14C: ; 0x0200F14C
	push {r4, lr}
	add r4, r1, #0x0
	bl FUN_0200F0B4
	add r1, r0, #0x0
	lsr r0, r4, #0x1f
	add r0, r4, r0
	asr r0, r0, #0x1
	lsl r0, r0, #0xc
	blx FUN_020C50B8
	pop {r4, pc}

	thumb_func_start FUN_0200F164
FUN_0200F164: ; 0x0200F164
	ldr r3, _0200F170 ; =_s32_div_f
	sub r0, r1, r0
	lsl r0, r0, #0x7
	add r1, r2, #0x0
	bx r3
	nop
_0200F170: .word _s32_div_f

	thumb_func_start FUN_0200F174
FUN_0200F174: ; 0x0200F174
	add r0, r0, r1
	bpl _0200F17A
	mov r0, #0x0
_0200F17A:
	cmp r0, #0xff
	ble _0200F180
	mov r0, #0xff
_0200F180:
	bx lr
	.balign 4

	thumb_func_start FUN_0200F184
FUN_0200F184: ; 0x0200F184
	ldr r3, [r0, #0x0]
	ldr r2, [r1, #0x0]
	add r2, r3, r2
	str r2, [r0, #0x0]
	ldr r3, [r0, #0x4]
	ldr r2, [r1, #0x4]
	add r2, r3, r2
	str r2, [r0, #0x4]
	ldr r3, [r0, #0x8]
	ldr r2, [r1, #0x8]
	add r2, r3, r2
	str r2, [r0, #0x8]
	ldr r2, [r0, #0xc]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0xc]
	bx lr
	.balign 4

	thumb_func_start FUN_0200F1A8
FUN_0200F1A8: ; 0x0200F1A8
	push {r3-r7, lr}
	add r7, r1, #0x0
	ldr r1, [sp, #0x1c]
	add r5, r3, #0x0
	str r1, [sp, #0x1c]
	ldr r1, [r5, #0x0]
	ldr r4, [sp, #0x18]
	lsl r1, r1, #0x7
	str r1, [r0, #0x0]
	ldr r1, [r5, #0x4]
	add r6, r2, #0x0
	lsl r1, r1, #0x7
	str r1, [r0, #0x4]
	ldr r1, [r5, #0x8]
	add r2, r4, #0x0
	lsl r1, r1, #0x7
	str r1, [r0, #0x8]
	ldr r1, [r5, #0xc]
	lsl r1, r1, #0x7
	str r1, [r0, #0xc]
	ldmia r2!, {r0-r1}
	stmia r7!, {r0-r1}
	ldmia r2!, {r0-r1}
	stmia r7!, {r0-r1}
	ldr r0, [r5, #0x0]
	ldr r1, [r4, #0x0]
	ldr r2, [sp, #0x1c]
	bl FUN_0200F164
	str r0, [r6, #0x0]
	ldr r0, [r5, #0x4]
	ldr r1, [r4, #0x4]
	ldr r2, [sp, #0x1c]
	bl FUN_0200F164
	str r0, [r6, #0x4]
	ldr r0, [r5, #0x8]
	ldr r1, [r4, #0x8]
	ldr r2, [sp, #0x1c]
	bl FUN_0200F164
	str r0, [r6, #0x8]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0xc]
	ldr r2, [sp, #0x1c]
	bl FUN_0200F164
	str r0, [r6, #0xc]
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200F20C
FUN_0200F20C: ; 0x0200F20C
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r6, r1, #0x0
	mov r1, #0x1c
	bl FUN_02016998
	str r0, [r5, #0x14]
	mov r2, #0x1c
	mov r1, #0x0
_0200F220:
	strb r1, [r0, #0x0]
	add r0, r0, #0x1
	sub r2, r2, #0x1
	bne _0200F220
	ldr r4, [r5, #0x14]
	cmp r6, #0x0
	ldrh r1, [r5, #0x24]
	ldr r0, _0200F2A8 ; =0x00007FFF
	bne _0200F254
	cmp r1, r0
	bne _0200F23C
	mov r7, #0x10
	mov r6, #0x0
	b _0200F274
_0200F23C:
	cmp r1, #0x0
	bne _0200F248
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0x0
	b _0200F274
_0200F248:
	mov r7, #0xf
	mvn r7, r7
	mov r6, #0x0
	bl ErrorHandling
	b _0200F274
_0200F254:
	cmp r1, r0
	bne _0200F25E
	mov r7, #0x0
	mov r6, #0x10
	b _0200F274
_0200F25E:
	cmp r1, #0x0
	bne _0200F26A
	mov r7, #0x0
	add r6, r7, #0x0
	sub r6, #0x10
	b _0200F274
_0200F26A:
	mov r7, #0x0
	add r6, r7, #0x0
	sub r6, #0x10
	bl ErrorHandling
_0200F274:
	ldr r0, [r5, #0x10]
	add r1, r7, #0x0
	bl FUN_0200E440
	ldr r0, [r5, #0x4]
	add r1, r6, #0x0
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x8]
	str r0, [r4, #0x4]
	mov r0, #0x0
	str r0, [r4, #0x8]
	lsl r0, r7, #0x7
	str r0, [r4, #0xc]
	lsl r0, r6, #0x7
	str r0, [r4, #0x10]
	ldr r2, [r5, #0x4]
	add r0, r7, #0x0
	bl FUN_0200F164
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	pop {r3-r7, pc}
	.balign 4
_0200F2A8: .word 0x00007FFF

	thumb_func_start FUN_0200F2AC
FUN_0200F2AC: ; 0x0200F2AC
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r1, [r5, #0xc]
	mov r4, #0x0
	ldr r0, [r5, #0x14]
	cmp r1, #0x1
	beq _0200F2C4
	cmp r1, #0x2
	beq _0200F2D4
	cmp r1, #0x3
	beq _0200F2E6
	b _0200F2E8
_0200F2C4:
	bl FUN_0200F2EC
	cmp r0, #0x1
	bne _0200F2E8
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200F2E8
_0200F2D4:
	bl FUN_02016A18
	add r0, r4, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200F2E8
_0200F2E6:
	mov r4, #0x1
_0200F2E8:
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_0200F2EC
FUN_0200F2EC: ; 0x0200F2EC
	push {r4, lr}
	add r1, r0, #0x0
	ldr r0, [r1, #0x8]
	mov r4, #0x0
	add r2, r0, #0x1
	str r2, [r1, #0x8]
	ldr r0, [r1, #0x4]
	cmp r2, r0
	blt _0200F32A
	str r4, [r1, #0x8]
	ldr r0, [r1, #0x0]
	sub r0, r0, #0x1
	cmp r0, #0x0
	ble _0200F314
	str r0, [r1, #0x0]
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x14]
	add r0, r2, r0
	str r0, [r1, #0xc]
	b _0200F31A
_0200F314:
	ldr r0, [r1, #0x10]
	mov r4, #0x1
	str r0, [r1, #0xc]
_0200F31A:
	ldr r2, [r1, #0xc]
	ldr r0, [r1, #0x18]
	asr r1, r2, #0x6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r1, r1, #0x7
	bl FUN_0200E440
_0200F32A:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0200F330
FUN_0200F330: ; 0x0200F330
	push {r4-r6, lr}
	add r4, r0, #0x0
	bne _0200F33A
	bl ErrorHandling
_0200F33A:
	ldr r0, _0200F54C ; =0x04000006
	ldrh r0, [r0, #0x0]
	cmp r0, #0xc0
	bge _0200F3E0
	add r5, r0, #0x1
	cmp r5, #0xbf
	ble _0200F34A
	sub r5, #0xc0
_0200F34A:
	ldr r0, [r4, #0x4]
	cmp r0, #0x1
	bne _0200F3FA
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	ldr r3, [r4, #0x8]
	lsl r5, r5, #0x1
	mov r4, #0x6
	add r1, r0, r5
	lsl r4, r4, #0x6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #0x2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	ldr r0, _0200F550 ; =0x04000004
	bne _0200F3B4
	cmp r3, #0x0
	bne _0200F394
	ldrh r4, [r0, #0x0]
	mov r3, #0x2
	tst r3, r4
	beq _0200F3E0
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0, #0x0]
	pop {r4-r6, pc}
_0200F394:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	beq _0200F3E0
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F554 ; =0x04001040
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
	pop {r4-r6, pc}
_0200F3B4:
	cmp r3, #0x0
	bne _0200F3D8
	ldrh r4, [r0, #0x0]
	mov r3, #0x2
	tst r3, r4
	beq _0200F3E0
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0, #0x0]
	pop {r4-r6, pc}
_0200F3D8:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	bne _0200F3E2
_0200F3E0:
	b _0200F548
_0200F3E2:
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F558 ; =0x04001042
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
	pop {r4-r6, pc}
_0200F3FA:
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	add r3, r0, #0x0
	lsl r5, r5, #0x1
	mov r6, #0x6
	add r1, r3, r5
	lsl r6, r6, #0x6
	ldrsh r2, [r1, r6]
	lsl r6, r6, #0x2
	ldrsh r1, [r3, r5]
	ldr r3, [r3, r6]
	ldr r0, [r4, #0x8]
	cmp r3, #0x0
	bne _0200F460
	cmp r0, #0x0
	ldr r0, _0200F550 ; =0x04000004
	bne _0200F440
	ldrh r6, [r0, #0x0]
	mov r3, #0x2
	tst r3, r6
	beq _0200F4A4
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0, #0x0]
	b _0200F4A4
_0200F440:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	beq _0200F4A4
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F554 ; =0x04001040
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
	b _0200F4A4
_0200F460:
	cmp r0, #0x0
	ldr r0, _0200F550 ; =0x04000004
	bne _0200F486
	ldrh r6, [r0, #0x0]
	mov r3, #0x2
	tst r3, r6
	beq _0200F4A4
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0, #0x0]
	b _0200F4A4
_0200F486:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	beq _0200F4A4
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F558 ; =0x04001042
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
_0200F4A4:
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0200F5D8
	ldr r3, [r4, #0x8]
	mov r4, #0x6
	add r1, r0, r5
	lsl r4, r4, #0x6
	ldrsh r2, [r1, r4]
	lsl r4, r4, #0x2
	ldrsh r1, [r0, r5]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	ldr r0, _0200F550 ; =0x04000004
	bne _0200F506
	cmp r3, #0x0
	bne _0200F4E6
	ldrh r4, [r0, #0x0]
	mov r3, #0x2
	tst r3, r4
	beq _0200F548
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3c]
	mov r1, #0xc0
	add r0, #0x40
	strh r1, [r0, #0x0]
	pop {r4-r6, pc}
_0200F4E6:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	beq _0200F548
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F554 ; =0x04001040
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
	pop {r4-r6, pc}
_0200F506:
	cmp r3, #0x0
	bne _0200F52A
	ldrh r4, [r0, #0x0]
	mov r3, #0x2
	tst r3, r4
	beq _0200F548
	lsl r3, r1, #0x8
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	orr r1, r3
	strh r1, [r0, #0x3e]
	mov r1, #0xc0
	add r0, #0x42
	strh r1, [r0, #0x0]
	pop {r4-r6, pc}
_0200F52A:
	ldrh r3, [r0, #0x0]
	mov r0, #0x2
	tst r0, r3
	beq _0200F548
	mov r0, #0xff
	lsl r1, r1, #0x8
	lsl r0, r0, #0x8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0200F558 ; =0x04001042
	strh r0, [r1, #0x0]
	mov r0, #0xc0
	strh r0, [r1, #0x4]
_0200F548:
	pop {r4-r6, pc}
	nop
_0200F54C: .word 0x04000006
_0200F550: .word 0x04000004
_0200F554: .word 0x04001040
_0200F558: .word 0x04001042

	thumb_func_start FUN_0200F55C
FUN_0200F55C: ; 0x0200F55C
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r6, r2, #0x0
	cmp r4, #0x0
	beq _0200F572
	cmp r4, #0x1
	beq _0200F572
	cmp r4, #0x2
	beq _0200F58C
	pop {r4-r6, pc}
_0200F572:
	ldr r1, _0200F5B8 ; =0x00000604
	add r0, r3, #0x0
	bl FUN_02016998
	str r0, [r5, #0x0]
	mov r0, #0x1
	str r0, [r5, #0x4]
	str r6, [r5, #0x8]
	mov r0, #0x6
	ldr r1, [r5, #0x0]
	lsl r0, r0, #0x8
	str r4, [r1, r0]
	pop {r4-r6, pc}
_0200F58C:
	ldr r1, _0200F5BC ; =0x00000C08
	add r0, r3, #0x0
	bl FUN_02016998
	str r0, [r5, #0x0]
	mov r0, #0x2
	str r0, [r5, #0x4]
	mov r0, #0x6
	mov r3, #0x0
	lsl r0, r0, #0x8
	str r6, [r5, #0x8]
	add r4, r3, #0x0
	add r1, r0, #0x4
_0200F5A6:
	ldr r2, [r5, #0x0]
	add r2, r2, r4
	str r3, [r2, r0]
	add r3, r3, #0x1
	add r4, r4, r1
	cmp r3, #0x2
	blt _0200F5A6
	pop {r4-r6, pc}
	nop
_0200F5B8: .word 0x00000604
_0200F5BC: .word 0x00000C08

	thumb_func_start FUN_0200F5C0
FUN_0200F5C0: ; 0x0200F5C0
	ldr r3, _0200F5C4 ; =FUN_0200F5C8
	bx r3
	.balign 4
_0200F5C4: .word FUN_0200F5C8 

	thumb_func_start FUN_0200F5C8
FUN_0200F5C8: ; 0x0200F5C8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_0200F5D8
FUN_0200F5D8: ; 0x0200F5D8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x4]
	add r4, r1, #0x0
	cmp r0, r4
	bgt _0200F5E8
	bl ErrorHandling
_0200F5E8:
	ldr r0, _0200F5F4 ; =0x00000604
	ldr r1, [r5, #0x0]
	mul r0, r4
	add r0, r1, r0
	pop {r3-r5, pc}
	nop
_0200F5F4: .word 0x00000604

	thumb_func_start FUN_0200F5F8
FUN_0200F5F8: ; 0x0200F5F8
	push {r3-r7, lr}
	add r5, r1, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x4]
	mov r4, #0x0
	cmp r0, #0x0
	ble _0200F624
	mov r7, #0x3
	lsl r7, r7, #0x8
	add r6, r7, #0x0
_0200F60C:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0200F5D8
	add r1, r0, r6
	add r2, r7, #0x0
	blx memcpy
	ldr r0, [r5, #0x4]
	add r4, r4, #0x1
	cmp r4, r0
	blt _0200F60C
_0200F624:
	ldr r0, [sp, #0x0]
	bl FUN_0200CAB4
	pop {r3-r7, pc}

	thumb_func_start FUN_0200F62C
FUN_0200F62C: ; 0x0200F62C
	push {r4-r5, lr}
	sub sp, #0xc
	add r5, r1, #0x0
	add r4, r2, #0x0
	cmp r0, #0x0
	bne _0200F644
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_02011634
	add sp, #0xc
	pop {r4-r5, pc}
_0200F644:
	add r0, r5, #0x0
	mov r1, #0x1
	bl FUN_02011634
	mov r2, #0x0
	add r0, r5, #0x0
	mov r1, #0x3f
	add r3, r2, #0x0
	str r4, [sp, #0x0]
	bl FUN_02011650
	mov r1, #0x0
	str r1, [sp, #0x0]
	str r1, [sp, #0x4]
	add r0, r5, #0x0
	add r2, r1, #0x0
	add r3, r1, #0x0
	str r4, [sp, #0x8]
	bl FUN_02011698
	add r0, r5, #0x0
	mov r1, #0x20
	mov r2, #0x0
	add r3, r4, #0x0
	bl FUN_02011678
	add sp, #0xc
	pop {r4-r5, pc}

	thumb_func_start FUN_0200F67C
FUN_0200F67C: ; 0x0200F67C
	push {r4-r7, lr}
	sub sp, #0xc
	add r7, r2, #0x0
	ldr r2, [sp, #0x34]
	add r6, r0, #0x0
	add r5, r3, #0x0
	ldr r4, [sp, #0x20]
	cmp r2, #0x0
	bne _0200F6B8
	add r0, r1, #0x0
	mov r1, #0x0
	add r2, r5, #0x0
	add r3, r4, #0x0
	bl FUN_020114AC
	add r0, r7, #0x0
	mov r1, #0x0
	add r2, r4, #0x0
	bl FUN_02011534
	str r5, [sp, #0x0]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r4, [sp, #0x4]
	bl FUN_02011574
	add sp, #0xc
	pop {r4-r7, pc}
_0200F6B8:
	mov r2, #0x0
	str r4, [sp, #0x0]
	bl FUN_02011650
	add r0, r6, #0x0
	add r1, r7, #0x0
	mov r2, #0x0
	add r3, r4, #0x0
	bl FUN_02011678
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x0]
	str r5, [sp, #0x4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r6, #0x0
	str r4, [sp, #0x8]
	bl FUN_02011698
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_0200F6E4
FUN_0200F6E4: ; 0x0200F6E4
	push {r3, lr}
	cmp r3, #0x0
	bne _0200F6F4
	add r0, r1, #0x0
	add r1, r2, #0x0
	bl FUN_02011480
	pop {r3, pc}
_0200F6F4:
	bl FUN_02011634
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0200F6FC
FUN_0200F6FC: ; 0x0200F6FC
	push {r3-r7, lr}
	add r4, r2, #0x0
	mov r2, #0xc3
	add r6, r1, #0x0
	mov r1, #0x0
	lsl r2, r2, #0x2
	add r5, r0, #0x0
	add r7, r3, #0x0
	blx Call_FillMemWithValue
	cmp r4, #0x1
	bne _0200F726
	mov r0, #0x6
	lsl r0, r0, #0x6
	str r7, [r5, r0]
	mov r0, #0xc2
	lsl r0, r0, #0x2
	strb r4, [r5, r0]
	add r0, r0, #0x1
	strb r6, [r5, r0]
	pop {r3-r7, pc}
_0200F726:
	mov r0, #0x6
	lsl r0, r0, #0x6
	str r7, [r5, r0]
	mov r0, #0xc1
	ldr r1, [sp, #0x18]
	lsl r0, r0, #0x2
	str r1, [r5, r0]
	add r1, r0, #0x4
	strb r4, [r5, r1]
	add r0, r0, #0x5
	strb r6, [r5, r0]
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200F740
FUN_0200F740: ; 0x0200F740
	ldr r3, _0200F74C ; =FUN_0200CA98
	add r1, r0, #0x0
	ldr r0, _0200F750 ; =FUN_0200F780
	ldr r2, _0200F754 ; =0x000003FF
	bx r3
	nop
_0200F74C: .word FUN_0200CA98 
_0200F750: .word FUN_0200F780 
_0200F754: .word 0x000003FF

	thumb_func_start FUN_0200F758
FUN_0200F758: ; 0x0200F758
	push {r3, lr}
	ldr r3, _0200F768 ; =0x00000309
	str r2, [sp, #0x0]
	ldrb r3, [r1, r3]
	ldr r2, _0200F76C ; =FUN_0200F7AC
	bl FUN_0200E6CC
	pop {r3, pc}
	.balign 4
_0200F768: .word 0x00000309
_0200F76C: .word FUN_0200F7AC 

	thumb_func_start FUN_0200F770
FUN_0200F770: ; 0x0200F770
	ldr r3, _0200F778 ; =0x00000309
	ldrb r1, [r1, r3]
	ldr r3, _0200F77C ; =FUN_0200E6F8
	bx r3
	.balign 4
_0200F778: .word 0x00000309
_0200F77C: .word FUN_0200E6F8 

	thumb_func_start FUN_0200F780
FUN_0200F780: ; 0x0200F780
	push {r3-r7, lr}
	mov r7, #0xc0
	add r6, r7, #0x0
	str r0, [sp, #0x0]
	add r5, r1, #0x0
	mov r4, #0x0
	add r6, #0xc4
_0200F78E:
	add r0, r5, #0x0
	add r0, #0xc0
	add r1, r5, #0x0
	add r2, r7, #0x0
	blx memcpy
	add r4, r4, #0x1
	add r5, r5, r6
	cmp r4, #0x2
	blt _0200F78E
	ldr r0, [sp, #0x0]
	bl FUN_0200CAB4
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200F7AC
FUN_0200F7AC: ; 0x0200F7AC
	push {r3-r5, lr}
	add r4, r0, #0x0
	bne _0200F7B6
	bl ErrorHandling
_0200F7B6:
	ldr r0, _0200FAC0 ; =0x04000006
	ldrh r0, [r0, #0x0]
	cmp r0, #0xc0
	bge _0200F838
	add r0, r0, #0x1
	cmp r0, #0xbf
	ble _0200F7C6
	sub r0, #0xc0
_0200F7C6:
	mov r2, #0xc2
	lsl r2, r2, #0x2
	ldrb r1, [r4, r2]
	cmp r1, #0x1
	beq _0200F7D2
	b _0200F96C
_0200F7D2:
	add r0, r4, r0
	add r0, #0xc0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0200F8A2
	add r0, r2, #0x1
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, _0200FAC4 ; =0x04000004
	bne _0200F802
	ldrh r2, [r0, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200F81C
	add r0, #0x46
	ldrh r2, [r0, #0x0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0200F81C
_0200F802:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200F81C
	ldr r1, _0200FAC8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1, #0x0]
_0200F81C:
	ldr r0, _0200FACC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #0x6
	lsl r0, r0, #0x6
	ldr r0, [r4, r0]
	cmp r0, #0x0
	bne _0200F868
	cmp r1, #0x0
	bne _0200F84C
	ldr r2, _0200FAC4 ; =0x04000004
	mov r0, #0x2
	ldrh r1, [r2, #0x0]
	tst r0, r1
	bne _0200F83A
_0200F838:
	b _0200FCB0
_0200F83A:
	add r2, #0x44
	ldrh r1, [r2, #0x0]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2, #0x0]
	pop {r3-r5, pc}
_0200F84C:
	ldr r0, _0200FAC4 ; =0x04000004
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200F954
	ldr r1, _0200FAD0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1, #0x0]
	pop {r3-r5, pc}
_0200F868:
	cmp r1, #0x0
	ldr r0, _0200FAC4 ; =0x04000004
	bne _0200F888
	ldrh r1, [r0, #0x0]
	mov r2, #0x2
	tst r1, r2
	beq _0200F954
	add r0, #0x44
	ldrh r3, [r0, #0x0]
	ldr r1, _0200FAD4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200F888:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200F954
	ldr r2, _0200FAD0 ; =0x04001048
	ldr r0, _0200FAD4 ; =0xFFFFC0FF
	ldrh r1, [r2, #0x0]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2, #0x0]
	pop {r3-r5, pc}
_0200F8A2:
	add r0, r2, #0x1
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, _0200FAC4 ; =0x04000004
	bne _0200F8C6
	ldrh r2, [r0, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200F8DE
	add r0, #0x46
	ldrh r2, [r0, #0x0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x20
	orr r2, r1
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0200F8DE
_0200F8C6:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200F8DE
	ldr r1, _0200FAC8 ; =0x0400104A
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1, #0x0]
_0200F8DE:
	ldr r0, _0200FACC ; =0x00000309
	ldrb r1, [r4, r0]
	mov r0, #0x6
	lsl r0, r0, #0x6
	ldr r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, _0200FAC4 ; =0x04000004
	bne _0200F92A
	cmp r1, #0x0
	bne _0200F90E
	ldrh r2, [r0, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200F954
	add r0, #0x44
	ldrh r2, [r0, #0x0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200F90E:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200F954
	ldr r1, _0200FAD0 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1, #0x0]
	pop {r3-r5, pc}
_0200F92A:
	cmp r1, #0x0
	bne _0200F94C
	ldrh r1, [r0, #0x0]
	mov r2, #0x2
	tst r1, r2
	beq _0200F954
	add r0, #0x44
	ldrh r3, [r0, #0x0]
	ldr r1, _0200FAD4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #0x8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200F94C:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	bne _0200F956
_0200F954:
	b _0200FCB0
_0200F956:
	ldr r2, _0200FAD0 ; =0x04001048
	ldr r0, _0200FAD4 ; =0xFFFFC0FF
	ldrh r1, [r2, #0x0]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #0x8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2, #0x0]
	pop {r3-r5, pc}
_0200F96C:
	add r1, r4, r0
	add r1, #0xc0
	ldrb r1, [r1, #0x0]
	cmp r1, #0x0
	bne _0200FA38
	add r1, r2, #0x1
	ldrb r1, [r4, r1]
	cmp r1, #0x0
	ldr r1, _0200FAC4 ; =0x04000004
	bne _0200F99C
	ldrh r3, [r1, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200F9B6
	add r1, #0x46
	ldrh r3, [r1, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1, #0x0]
	b _0200F9B6
_0200F99C:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200F9B6
	ldr r2, _0200FAC8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2, #0x0]
_0200F9B6:
	ldr r1, _0200FACC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #0x6
	lsl r1, r1, #0x6
	ldr r1, [r4, r1]
	cmp r1, #0x0
	ldr r1, _0200FAC4 ; =0x04000004
	bne _0200F9FE
	cmp r2, #0x0
	bne _0200F9E4
	ldrh r3, [r1, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200FA0A
	add r1, #0x44
	ldrh r3, [r1, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1, #0x0]
	b _0200FB16
_0200F9E4:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FA0A
	ldr r2, _0200FAD0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2, #0x0]
	b _0200FB16
_0200F9FE:
	cmp r2, #0x0
	bne _0200FA1E
	ldrh r2, [r1, #0x0]
	mov r3, #0x2
	tst r2, r3
	bne _0200FA0C
_0200FA0A:
	b _0200FB16
_0200FA0C:
	add r1, #0x44
	ldrh r5, [r1, #0x0]
	ldr r2, _0200FAD4 ; =0xFFFFC0FF
	and r5, r2
	lsl r2, r3, #0xc
	orr r5, r2
	orr r2, r5
	strh r2, [r1, #0x0]
	b _0200FB16
_0200FA1E:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FB16
	ldr r3, _0200FAD0 ; =0x04001048
	ldr r1, _0200FAD4 ; =0xFFFFC0FF
	ldrh r2, [r3, #0x0]
	and r2, r1
	lsr r1, r3, #0xd
	orr r2, r1
	orr r1, r2
	strh r1, [r3, #0x0]
	b _0200FB16
_0200FA38:
	add r1, r2, #0x1
	ldrb r1, [r4, r1]
	cmp r1, #0x0
	ldr r1, _0200FAC4 ; =0x04000004
	bne _0200FA5C
	ldrh r3, [r1, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200FA74
	add r1, #0x46
	ldrh r3, [r1, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r1, #0x0]
	b _0200FA74
_0200FA5C:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FA74
	ldr r2, _0200FAC8 ; =0x0400104A
	mov r1, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r1
	mov r1, #0x20
	orr r3, r1
	orr r1, r3
	strh r1, [r2, #0x0]
_0200FA74:
	ldr r1, _0200FACC ; =0x00000309
	ldrb r2, [r4, r1]
	mov r1, #0x6
	lsl r1, r1, #0x6
	ldr r1, [r4, r1]
	cmp r1, #0x0
	ldr r1, _0200FAC4 ; =0x04000004
	bne _0200FAD8
	cmp r2, #0x0
	bne _0200FAA4
	ldrh r3, [r1, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200FB16
	add r1, #0x44
	ldrh r3, [r1, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r1, #0x0]
	b _0200FB16
_0200FAA4:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FB16
	ldr r2, _0200FAD0 ; =0x04001048
	mov r1, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r1
	mov r1, #0x3f
	orr r3, r1
	mov r1, #0x20
	orr r1, r3
	strh r1, [r2, #0x0]
	b _0200FB16
	.balign 4
_0200FAC0: .word 0x04000006
_0200FAC4: .word 0x04000004
_0200FAC8: .word 0x0400104A
_0200FACC: .word 0x00000309
_0200FAD0: .word 0x04001048
_0200FAD4: .word 0xFFFFC0FF
_0200FAD8:
	cmp r2, #0x0
	bne _0200FAFA
	ldrh r2, [r1, #0x0]
	mov r3, #0x2
	tst r2, r3
	beq _0200FB16
	add r1, #0x44
	ldrh r5, [r1, #0x0]
	ldr r2, _0200FCB4 ; =0xFFFFC0FF
	and r5, r2
	mov r2, #0x3f
	lsl r2, r2, #0x8
	orr r5, r2
	lsl r2, r3, #0xc
	orr r2, r5
	strh r2, [r1, #0x0]
	b _0200FB16
_0200FAFA:
	ldrh r2, [r1, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FB16
	ldr r3, _0200FCB8 ; =0x04001048
	ldr r1, _0200FCB4 ; =0xFFFFC0FF
	ldrh r2, [r3, #0x0]
	and r2, r1
	mov r1, #0x3f
	lsl r1, r1, #0x8
	orr r2, r1
	lsr r1, r3, #0xd
	orr r1, r2
	strh r1, [r3, #0x0]
_0200FB16:
	mov r1, #0x61
	lsl r1, r1, #0x2
	add r1, r4, r1
	add r0, r1, r0
	add r0, #0xc0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	ldr r0, _0200FCBC ; =0x00000309
	bne _0200FBEC
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, _0200FCC0 ; =0x04000004
	bne _0200FB4C
	ldrh r3, [r0, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200FB66
	add r0, #0x46
	ldrh r3, [r0, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x3f
	orr r3, r2
	mov r2, #0x20
	orr r2, r3
	strh r2, [r0, #0x0]
	b _0200FB66
_0200FB4C:
	ldrh r2, [r0, #0x0]
	mov r0, #0x2
	tst r0, r2
	beq _0200FB66
	ldr r2, _0200FCC4 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r0
	mov r0, #0x3f
	orr r3, r0
	mov r0, #0x20
	orr r0, r3
	strh r0, [r2, #0x0]
_0200FB66:
	ldr r0, _0200FCBC ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #0x6
	lsl r0, r0, #0x6
	ldr r0, [r1, r0]
	cmp r0, #0x0
	bne _0200FBB2
	cmp r2, #0x0
	bne _0200FB94
	ldr r2, _0200FCC0 ; =0x04000004
	mov r0, #0x2
	ldrh r1, [r2, #0x0]
	tst r0, r1
	beq _0200FB9E
	add r2, #0x44
	ldrh r1, [r2, #0x0]
	mov r0, #0x3f
	bic r1, r0
	mov r0, #0x20
	orr r1, r0
	orr r0, r1
	strh r0, [r2, #0x0]
	pop {r3-r5, pc}
_0200FB94:
	ldr r0, _0200FCC0 ; =0x04000004
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	bne _0200FBA0
_0200FB9E:
	b _0200FCB0
_0200FBA0:
	ldr r1, _0200FCB8 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x20
	orr r2, r0
	orr r0, r2
	strh r0, [r1, #0x0]
	pop {r3-r5, pc}
_0200FBB2:
	cmp r2, #0x0
	ldr r0, _0200FCC0 ; =0x04000004
	bne _0200FBD2
	ldrh r1, [r0, #0x0]
	mov r2, #0x2
	tst r1, r2
	beq _0200FCB0
	add r0, #0x44
	ldrh r3, [r0, #0x0]
	ldr r1, _0200FCB4 ; =0xFFFFC0FF
	and r3, r1
	lsl r1, r2, #0xc
	orr r3, r1
	orr r1, r3
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200FBD2:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200FCB0
	ldr r2, _0200FCB8 ; =0x04001048
	ldr r0, _0200FCB4 ; =0xFFFFC0FF
	ldrh r1, [r2, #0x0]
	and r1, r0
	lsr r0, r2, #0xd
	orr r1, r0
	orr r0, r1
	strh r0, [r2, #0x0]
	pop {r3-r5, pc}
_0200FBEC:
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, _0200FCC0 ; =0x04000004
	bne _0200FC0E
	ldrh r3, [r0, #0x0]
	mov r2, #0x2
	tst r2, r3
	beq _0200FC26
	add r0, #0x46
	ldrh r3, [r0, #0x0]
	mov r2, #0x3f
	bic r3, r2
	mov r2, #0x20
	orr r3, r2
	orr r2, r3
	strh r2, [r0, #0x0]
	b _0200FC26
_0200FC0E:
	ldrh r2, [r0, #0x0]
	mov r0, #0x2
	tst r0, r2
	beq _0200FC26
	ldr r2, _0200FCC4 ; =0x0400104A
	mov r0, #0x3f
	ldrh r3, [r2, #0x0]
	bic r3, r0
	mov r0, #0x20
	orr r3, r0
	orr r0, r3
	strh r0, [r2, #0x0]
_0200FC26:
	ldr r0, _0200FCBC ; =0x00000309
	ldrb r2, [r4, r0]
	mov r0, #0x6
	lsl r0, r0, #0x6
	ldr r0, [r1, r0]
	cmp r0, #0x0
	ldr r0, _0200FCC0 ; =0x04000004
	bne _0200FC72
	cmp r2, #0x0
	bne _0200FC56
	ldrh r2, [r0, #0x0]
	mov r1, #0x2
	tst r1, r2
	beq _0200FCB0
	add r0, #0x44
	ldrh r2, [r0, #0x0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x3f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200FC56:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200FCB0
	ldr r1, _0200FCB8 ; =0x04001048
	mov r0, #0x3f
	ldrh r2, [r1, #0x0]
	bic r2, r0
	mov r0, #0x3f
	orr r2, r0
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1, #0x0]
	pop {r3-r5, pc}
_0200FC72:
	cmp r2, #0x0
	bne _0200FC94
	ldrh r1, [r0, #0x0]
	mov r2, #0x2
	tst r1, r2
	beq _0200FCB0
	add r0, #0x44
	ldrh r3, [r0, #0x0]
	ldr r1, _0200FCB4 ; =0xFFFFC0FF
	and r3, r1
	mov r1, #0x3f
	lsl r1, r1, #0x8
	orr r3, r1
	lsl r1, r2, #0xc
	orr r1, r3
	strh r1, [r0, #0x0]
	pop {r3-r5, pc}
_0200FC94:
	ldrh r1, [r0, #0x0]
	mov r0, #0x2
	tst r0, r1
	beq _0200FCB0
	ldr r2, _0200FCB8 ; =0x04001048
	ldr r0, _0200FCB4 ; =0xFFFFC0FF
	ldrh r1, [r2, #0x0]
	and r1, r0
	mov r0, #0x3f
	lsl r0, r0, #0x8
	orr r1, r0
	lsr r0, r2, #0xd
	orr r0, r1
	strh r0, [r2, #0x0]
_0200FCB0:
	pop {r3-r5, pc}
	nop
_0200FCB4: .word 0xFFFFC0FF
_0200FCB8: .word 0x04001048
_0200FCBC: .word 0x00000309
_0200FCC0: .word 0x04000004
_0200FCC4: .word 0x0400104A

	thumb_func_start FUN_0200FCC8
FUN_0200FCC8: ; 0x0200FCC8
	push {r4-r6, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r6, r1, #0x0
	mov r1, #0x4c
	bl FUN_02016998
	str r0, [r5, #0x14]
	add r4, r0, #0x0
	ldr r0, [r5, #0x10]
	add r1, r6, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r0, r4, #0x0
	bl FUN_0200FE20
	add r6, #0x20
	ldrb r0, [r6, #0x0]
	cmp r0, #0x0
	ldr r0, [r5, #0x18]
	bne _0200FD06
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #0x1
	bl FUN_0200F6E4
	b _0200FD10
_0200FD06:
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x44]
	mov r1, #0x2
	bl FUN_0200F6E4
_0200FD10:
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x8
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200FD1C
FUN_0200FD1C: ; 0x0200FD1C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _0200FD34
	cmp r0, #0x2
	beq _0200FD50
	cmp r0, #0x3
	beq _0200FD64
	b _0200FD66
_0200FD34:
	add r0, r4, #0x0
	bl FUN_0200FE90
	cmp r0, #0x1
	bne _0200FD66
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FD66
_0200FD50:
	add r0, r4, #0x0
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FD66
_0200FD64:
	mov r6, #0x1
_0200FD66:
	add r0, r6, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200FD6C
FUN_0200FD6C: ; 0x0200FD6C
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r6, r1, #0x0
	mov r1, #0x98
	add r7, r2, #0x0
	bl FUN_02016998
	str r0, [r5, #0x14]
	add r4, r0, #0x0
	ldr r0, [r5, #0x10]
	add r1, r6, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r0, r4, #0x0
	bl FUN_0200FE20
	ldr r0, [r5, #0x10]
	add r1, r7, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r0, #0x4c
	bl FUN_0200FE20
	ldr r0, [r5, #0x18]
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0x44]
	mov r1, #0x3
	bl FUN_0200F6E4
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200FDC4
FUN_0200FDC4: ; 0x0200FDC4
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _0200FDDC
	cmp r0, #0x2
	beq _0200FE04
	cmp r0, #0x3
	beq _0200FE18
	b _0200FE1A
_0200FDDC:
	add r0, r4, #0x0
	bl FUN_0200FE90
	add r7, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x4c
	bl FUN_0200FE90
	add r0, r7, r0
	cmp r0, #0x2
	bne _0200FE1A
	ldr r0, [r4, #0x44]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FE1A
_0200FE04:
	add r0, r4, #0x0
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FE1A
_0200FE18:
	mov r6, #0x1
_0200FE1A:
	add r0, r6, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200FE20
FUN_0200FE20: ; 0x0200FE20
	push {r3-r7, lr}
	sub sp, #0x18
	add r4, r1, #0x0
	add r1, #0x10
	add r7, r3, #0x0
	add r5, r0, #0x0
	add r6, r2, #0x0
	str r1, [sp, #0x0]
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r1, #0x20
	add r2, #0x10
	add r3, r4, #0x0
	str r6, [sp, #0x4]
	bl FUN_0200F1A8
	ldr r1, [sp, #0x30]
	add r0, r4, #0x0
	add r2, r4, #0x0
	str r1, [r5, #0x30]
	add r0, #0x20
	ldrb r0, [r0, #0x0]
	add r2, #0x23
	str r0, [r5, #0x34]
	str r6, [r5, #0x38]
	str r7, [r5, #0x3c]
	mov r0, #0x0
	str r0, [r5, #0x40]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x48]
	ldrb r2, [r2, #0x0]
	str r2, [r5, #0x44]
	str r1, [sp, #0x0]
	ldr r1, [r4, #0x0]
	add r2, r4, #0x0
	str r1, [sp, #0x4]
	ldr r1, [r4, #0x4]
	add r2, #0x22
	str r1, [sp, #0x8]
	ldr r1, [r4, #0x8]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r5, #0x44]
	str r1, [sp, #0x14]
	add r1, r4, #0x0
	add r1, #0x21
	add r4, #0x20
	ldrb r1, [r1, #0x0]
	ldrb r2, [r2, #0x0]
	ldrb r3, [r4, #0x0]
	bl FUN_0200F67C
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0200FE90
FUN_0200FE90: ; 0x0200FE90
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r1, [r4, #0x40]
	add r2, r1, #0x1
	str r2, [r4, #0x40]
	ldr r1, [r4, #0x3c]
	cmp r2, r1
	blt _0200FF10
	mov r1, #0x0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x38]
	sub r1, r1, #0x1
	cmp r1, #0x0
	ble _0200FEBA
	str r1, [r4, #0x38]
	add r1, r4, #0x0
	add r1, #0x10
	bl FUN_0200F184
	b _0200FED8
_0200FEBA:
	ldr r0, [r4, #0x2c]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	bl FUN_02011698
	add sp, #0xc
	mov r0, #0x1
	pop {r3-r4, pc}
_0200FED8:
	ldr r1, [r4, #0xc]
	asr r0, r1, #0x6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #0x7
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x34]
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x30]
	str r0, [sp, #0x8]
	ldr r2, [r4, #0x0]
	ldr r3, [r4, #0x4]
	asr r1, r2, #0x6
	lsr r1, r1, #0x19
	add r1, r2, r1
	ldr r0, [r4, #0x48]
	asr r2, r3, #0x6
	lsr r2, r2, #0x19
	add r2, r3, r2
	ldr r4, [r4, #0x8]
	asr r1, r1, #0x7
	asr r3, r4, #0x6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r2, r2, #0x7
	asr r3, r3, #0x7
	bl FUN_02011698
_0200FF10:
	mov r0, #0x0
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0200FF18
FUN_0200FF18: ; 0x0200FF18
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x38
	bl FUN_02016998
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_0200FFAC
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_0200FF50
FUN_0200FF50: ; 0x0200FF50
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _0200FF68
	cmp r0, #0x2
	beq _0200FF84
	cmp r0, #0x3
	beq _0200FF9E
	b _0200FFA2
_0200FF68:
	add r0, r4, #0x0
	bl FUN_02010084
	cmp r0, #0x1
	bne _0200FFA6
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FFA6
_0200FF84:
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0200FFA6
_0200FF9E:
	mov r6, #0x1
	b _0200FFA6
_0200FFA2:
	bl ErrorHandling
_0200FFA6:
	add r0, r6, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0200FFAC
FUN_0200FFAC: ; 0x0200FFAC
	push {r4-r7, lr}
	sub sp, #0x24
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl FUN_0200F164
	str r0, [sp, #0x20]
	ldrb r1, [r4, #0xc]
	ldr r3, [sp, #0x44]
	add r0, r5, #0x0
	add r2, r6, #0x0
	bl FUN_0200F55C
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0x7
	str r0, [r5, #0xc]
	mov r0, #0x8
	ldrsh r0, [r4, r0]
	str r0, [r5, #0x10]
	mov r0, #0xa
	ldrsh r0, [r4, r0]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x20]
	mov r0, #0x0
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x28]
	ldrb r0, [r4, #0xf]
	str r0, [r5, #0x2c]
	add r0, r5, #0x0
	bl FUN_02010168
	ldr r0, _02010078 ; =FUN_0200F5F8
	ldr r2, _0201007C ; =0x000003FF
	add r1, r5, #0x0
	bl FUN_0200CA98
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	mov r1, #0x3
	str r6, [sp, #0x0]
	lsl r1, r1, #0x8
	ldrsh r1, [r0, r1]
	str r1, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	mov r1, #0x12
	lsl r1, r1, #0x6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	ldrb r3, [r4, #0xc]
	add r0, r7, #0x0
	bl FUN_0200F67C
	ldrb r0, [r4, #0xc]
	cmp r0, #0x0
	bne _02010058
	ldr r3, [r5, #0x2c]
	add r0, r7, #0x0
	mov r1, #0x1
	add r2, r6, #0x0
	bl FUN_0200F6E4
	b _02010064
_02010058:
	ldr r3, [r5, #0x2c]
	add r0, r7, #0x0
	mov r1, #0x2
	add r2, r6, #0x0
	bl FUN_0200F6E4
_02010064:
	ldr r0, [sp, #0x44]
	ldr r2, _02010080 ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x34]
	add r1, r5, #0x0
	add r3, r6, #0x0
	bl FUN_0200E6CC
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4
_02010078: .word FUN_0200F5F8 
_0201007C: .word 0x000003FF
_02010080: .word FUN_0200F330 

	thumb_func_start FUN_02010084
FUN_02010084: ; 0x02010084
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x24]
	add r2, r1, #0x1
	str r2, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r2, r1
	blt _020100C8
	mov r1, #0x0
	str r1, [r4, #0x24]
	ldr r1, [r4, #0x1c]
	sub r1, r1, #0x1
	cmp r1, #0x0
	ble _020100BA
	str r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x18]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl FUN_02010168
	ldr r0, _020100CC ; =FUN_0200F5F8
	ldr r2, _020100D0 ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _020100C8
_020100BA:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x28]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_020100C8:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4
_020100CC: .word FUN_0200F5F8 
_020100D0: .word 0x000003FF

	thumb_func_start FUN_020100D4
FUN_020100D4: ; 0x020100D4
	push {r4-r7, lr}
	sub sp, #0xc
	str r1, [sp, #0x0]
	asr r1, r0, #0x6
	lsr r1, r1, #0x19
	add r1, r0, r1
	asr r1, r1, #0x7
	ldr r5, [sp, #0x20]
	ldr r4, [sp, #0x24]
	sub r0, r3, r2
	bpl _020100EC
	neg r0, r0
_020100EC:
	cmp r0, r1
	blt _020100FA
	mov r0, #0x0
	str r0, [r5, #0x0]
	add sp, #0xc
	str r0, [r4, #0x0]
	pop {r4-r7, pc}
_020100FA:
	lsl r0, r0, #0xc
	str r0, [sp, #0x4]
	asr r7, r0, #0x1f
	lsl r0, r1, #0xc
	asr r1, r0, #0x1f
	add r2, r0, #0x0
	add r3, r1, #0x0
	blx _ll_mul
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x4]
	add r6, r1, #0x0
	add r1, r7, #0x0
	add r2, r0, #0x0
	add r3, r7, #0x0
	blx _ll_mul
	add r2, r0, #0x0
	add r3, r1, #0x0
	mov r0, #0x2
	ldr r1, [sp, #0x8]
	mov r7, #0x0
	lsl r0, r0, #0xa
	add r0, r1, r0
	adc r6, r7
	lsl r1, r6, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0x2
	lsl r1, r1, #0xa
	add r2, r2, r1
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	sub r0, r0, r2
	blx FUN_020C504C
	asr r2, r0, #0xc
	ldr r0, [sp, #0x0]
	sub r0, r0, r2
	str r0, [r5, #0x0]
	bpl _02010154
	add r0, r7, #0x0
	str r0, [r5, #0x0]
_02010154:
	ldr r1, [r5, #0x0]
	lsl r0, r2, #0x1
	add r0, r1, r0
	str r0, [r4, #0x0]
	cmp r0, #0xff
	ble _02010164
	mov r0, #0xff
	str r0, [r4, #0x0]
_02010164:
	add sp, #0xc
	pop {r4-r7, pc}

	thumb_func_start FUN_02010168
FUN_02010168: ; 0x02010168
	push {r3-r7, lr}
	sub sp, #0x10
	mov r1, #0x0
	add r5, r0, #0x0
	bl FUN_0200F5D8
	add r7, r0, #0x0
	mov r4, #0x0
	add r6, r7, #0x0
_0201017A:
	ldr r2, [r5, #0x14]
	cmp r4, r2
	bgt _02010194
	add r0, sp, #0xc
	str r0, [sp, #0x0]
	add r0, sp, #0x8
	str r0, [sp, #0x4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0x0
	bl FUN_020100D4
	b _020101CE
_02010194:
	lsl r0, r2, #0x1
	cmp r4, r0
	bgt _020101BC
	sub r0, r0, r4
	lsl r0, r0, #0x1
	add r1, r7, r0
	mov r0, #0x3
	lsl r0, r0, #0x8
	ldrsh r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x1
	sub r0, r0, r4
	lsl r0, r0, #0x1
	add r1, r7, r0
	mov r0, #0x12
	lsl r0, r0, #0x6
	ldrsh r0, [r1, r0]
	str r0, [sp, #0x8]
	b _020101CE
_020101BC:
	add r0, sp, #0xc
	str r0, [sp, #0x0]
	add r0, sp, #0x8
	str r0, [sp, #0x4]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	add r3, r4, #0x0
	bl FUN_020100D4
_020101CE:
	mov r0, #0x3
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0x8
	strh r1, [r6, r0]
	mov r0, #0x12
	ldr r1, [sp, #0x8]
	lsl r0, r0, #0x6
	strh r1, [r6, r0]
	add r4, r4, #0x1
	add r6, r6, #0x2
	cmp r4, #0xc0
	blt _0201017A
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020101EC
FUN_020101EC: ; 0x020101EC
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x30
	bl FUN_02016998
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_02010280
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02010224
FUN_02010224: ; 0x02010224
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _0201023C
	cmp r0, #0x2
	beq _02010258
	cmp r0, #0x3
	beq _02010272
	b _02010276
_0201023C:
	add r0, r4, #0x0
	bl FUN_02010348
	cmp r0, #0x1
	bne _0201027A
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0201027A
_02010258:
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0201027A
_02010272:
	mov r6, #0x1
	b _0201027A
_02010276:
	bl ErrorHandling
_0201027A:
	add r0, r6, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02010280
FUN_02010280: ; 0x02010280
	push {r3-r7, lr}
	sub sp, #0x20
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	bl FUN_0200F164
	str r0, [r5, #0x10]
	ldrb r1, [r4, #0x8]
	ldr r3, [sp, #0x44]
	add r0, r5, #0x0
	add r2, r6, #0x0
	bl FUN_0200F55C
	ldr r0, [r4, #0x0]
	lsl r0, r0, #0x7
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x18]
	mov r0, #0x0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x20]
	add r0, r5, #0x0
	bl FUN_02010398
	ldr r0, _0201033C ; =FUN_0200F5F8
	ldr r2, _02010340 ; =0x000003FF
	add r1, r5, #0x0
	bl FUN_0200CA98
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	mov r1, #0x3
	str r6, [sp, #0x0]
	lsl r1, r1, #0x8
	ldrsh r1, [r0, r1]
	str r1, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	mov r1, #0x12
	lsl r1, r1, #0x6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #0x8]
	add r0, r7, #0x0
	bl FUN_0200F67C
	ldrb r0, [r4, #0x8]
	cmp r0, #0x0
	bne _0201031C
	ldr r3, [r5, #0x20]
	add r0, r7, #0x0
	mov r1, #0x1
	add r2, r6, #0x0
	bl FUN_0200F6E4
	b _02010328
_0201031C:
	ldr r3, [r5, #0x20]
	add r0, r7, #0x0
	mov r1, #0x2
	add r2, r6, #0x0
	bl FUN_0200F6E4
_02010328:
	ldr r0, [sp, #0x44]
	ldr r2, _02010344 ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x28]
	add r1, r5, #0x0
	add r3, r6, #0x0
	bl FUN_0200E6CC
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4
_0201033C: .word FUN_0200F5F8 
_02010340: .word 0x000003FF
_02010344: .word FUN_0200F330 

	thumb_func_start FUN_02010348
FUN_02010348: ; 0x02010348
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x1c]
	add r2, r1, #0x1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _0201038C
	mov r1, #0x0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #0x1
	cmp r1, #0x0
	ble _0201037E
	str r1, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r1, r2, r1
	str r1, [r4, #0xc]
	bl FUN_02010398
	ldr r0, _02010390 ; =FUN_0200F5F8
	ldr r2, _02010394 ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _0201038C
_0201037E:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x2c]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_0201038C:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4
_02010390: .word FUN_0200F5F8 
_02010394: .word 0x000003FF

	thumb_func_start FUN_02010398
FUN_02010398: ; 0x02010398
	push {r3-r7, lr}
	sub sp, #0x1fc
	sub sp, #0x104
	add r4, r0, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	ldr r1, [r4, #0xc]
	add r5, r0, #0x0
	asr r0, r1, #0x6
	lsr r0, r0, #0x19
	add r0, r1, r0
	asr r0, r0, #0x7
	add r1, sp, #0x0
	mov r2, #0xc0
	mov r3, #0x0
	bl FUN_0200F0F8
	mov r7, #0x12
	mov r6, #0x0
	add r4, sp, #0x0
	lsl r7, r7, #0x6
_020103C4:
	ldr r1, [r4, #0x0]
	mov r0, #0x80
	neg r1, r1
	bl FUN_0200F174
	mov r1, #0x3
	lsl r1, r1, #0x8
	strh r0, [r5, r1]
	ldr r1, [r4, #0x0]
	mov r0, #0x80
	bl FUN_0200F174
	strh r0, [r5, r7]
	add r6, r6, #0x1
	add r4, r4, #0x4
	add r5, r5, #0x2
	cmp r6, #0xc0
	blt _020103C4
	add sp, #0x1fc
	add sp, #0x104
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020103F0
FUN_020103F0: ; 0x020103F0
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x34
	bl FUN_02016998
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_0201047C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02010428
FUN_02010428: ; 0x02010428
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _02010440
	cmp r0, #0x2
	beq _0201045C
	cmp r0, #0x3
	beq _02010476
	b _02010478
_02010440:
	add r0, r4, #0x0
	bl FUN_02010550
	cmp r0, #0x1
	bne _02010478
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010478
_0201045C:
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010478
_02010476:
	mov r6, #0x1
_02010478:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0201047C
FUN_0201047C: ; 0x0201047C
	push {r4-r7, lr}
	sub sp, #0x24
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	str r2, [sp, #0x18]
	sub r0, r1, r0
	add r1, r2, #0x0
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	blx _s32_div_f
	str r0, [sp, #0x20]
	ldrb r1, [r4, #0x8]
	ldr r3, [sp, #0x44]
	add r0, r5, #0x0
	add r2, r6, #0x0
	bl FUN_0200F55C
	mov r0, #0x2
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x0]
	str r0, [r5, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0x1c]
	mov r0, #0x0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x30]
	ldrb r0, [r4, #0xb]
	str r0, [r5, #0x24]
	add r0, r5, #0x0
	bl FUN_020105A0
	ldr r0, _02010544 ; =FUN_0200F5F8
	ldr r2, _02010548 ; =0x000003FF
	add r1, r5, #0x0
	bl FUN_0200CA98
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	mov r1, #0xf
	str r6, [sp, #0x0]
	lsl r1, r1, #0x6
	ldrsh r1, [r0, r1]
	str r1, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	mov r1, #0x15
	lsl r1, r1, #0x6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x9]
	ldrb r2, [r4, #0xa]
	ldrb r3, [r4, #0x8]
	add r0, r7, #0x0
	bl FUN_0200F67C
	ldrb r0, [r4, #0x8]
	cmp r0, #0x0
	bne _02010524
	ldr r3, [r5, #0x24]
	add r0, r7, #0x0
	mov r1, #0x1
	add r2, r6, #0x0
	bl FUN_0200F6E4
	b _02010530
_02010524:
	ldr r3, [r5, #0x24]
	add r0, r7, #0x0
	mov r1, #0x2
	add r2, r6, #0x0
	bl FUN_0200F6E4
_02010530:
	ldr r0, [sp, #0x44]
	ldr r2, _0201054C ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x2c]
	add r1, r5, #0x0
	add r3, r6, #0x0
	bl FUN_0200E6CC
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4
_02010544: .word FUN_0200F5F8 
_02010548: .word 0x000003FF
_0201054C: .word FUN_0200F330 

	thumb_func_start FUN_02010550
FUN_02010550: ; 0x02010550
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x20]
	add r2, r1, #0x1
	str r2, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	cmp r2, r1
	blt _02010594
	mov r1, #0x0
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	sub r1, r1, #0x1
	cmp r1, #0x0
	ble _02010586
	str r1, [r4, #0x18]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r1, r2, r1
	str r1, [r4, #0x10]
	bl FUN_020105A0
	ldr r0, _02010598 ; =FUN_0200F5F8
	ldr r2, _0201059C ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _02010594
_02010586:
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x30]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_02010594:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4
_02010598: .word FUN_0200F5F8 
_0201059C: .word 0x000003FF

	thumb_func_start FUN_020105A0
FUN_020105A0: ; 0x020105A0
	push {r4-r7, lr}
	sub sp, #0x1fc
	sub sp, #0x110
	add r4, r0, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0xc]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02010680 ; =0x020FFA38
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r7, r1, #0xc
	lsl r0, r7, #0x1
	mov r1, #0x15
	blx _s32_div_f
	add r0, r0, #0x1
	lsl r0, r0, #0x1
	mov r1, #0xb4
	sub r2, r1, r0
	ldr r0, _02010684 ; =0x0000FFFF
	add r1, #0xb4
	mul r0, r2
	blx _s32_div_f
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r4, r1, #0x1
	mov r1, #0x1
	add r0, r4, #0x0
	lsl r1, r1, #0x8
	bl FUN_0200F14C
	asr r0, r0, #0xc
	str r0, [sp, #0x4]
	cmp r0, #0xc0
	blt _0201060C
	bl ErrorHandling
_0201060C:
	ldr r2, [sp, #0x4]
	add r0, r4, #0x0
	add r1, sp, #0xc
	mov r3, #0x0
	bl FUN_0200F0F8
	ldr r5, [sp, #0x0]
	mov r4, #0x0
_0201061C:
	ldr r0, [sp, #0x4]
	add r1, r4, #0x1
	sub r0, r0, r1
	add r6, r7, #0x0
	cmp r0, #0x0
	ble _02010634
	lsl r1, r0, #0x2
	add r0, sp, #0xc
	ldr r0, [r0, r1]
	cmp r0, r7
	ble _02010634
	add r6, r0, #0x0
_02010634:
	mov r0, #0x80
	neg r1, r6
	bl FUN_0200F174
	str r0, [sp, #0x8]
	mov r0, #0x80
	add r1, r6, #0x0
	bl FUN_0200F174
	ldr r1, [sp, #0x8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #0x3
	lsl r1, r1, #0x8
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #0x6
	strh r1, [r5, r0]
	mov r0, #0xbf
	sub r0, r0, r4
	lsl r3, r0, #0x1
	ldr r0, [sp, #0x0]
	add r4, r4, #0x1
	add r0, r0, r3
	mov r3, #0x3
	lsl r3, r3, #0x8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #0x6
	add r5, r5, #0x2
	strh r1, [r0, r2]
	cmp r4, #0x60
	blt _0201061C
	add sp, #0x1fc
	add sp, #0x110
	pop {r4-r7, pc}
	.balign 4
_02010680: .word 0x020FFA38
_02010684: .word 0x0000FFFF

	thumb_func_start FUN_02010688
FUN_02010688: ; 0x02010688
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x30
	bl FUN_02016998
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_02010720
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_020106C0
FUN_020106C0: ; 0x020106C0
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _020106D8
	cmp r0, #0x2
	beq _020106F4
	cmp r0, #0x3
	beq _02010714
	b _02010718
_020106D8:
	add r0, r4, #0x0
	bl FUN_02010834
	cmp r0, #0x1
	bne _0201071C
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0201071C
_020106F4:
	add r0, r4, #0x0
	bl FUN_02010884
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _0201071C
_02010714:
	mov r6, #0x1
	b _0201071C
_02010718:
	bl ErrorHandling
_0201071C:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02010720
FUN_02010720: ; 0x02010720
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r1, #0x0
	add r7, r0, #0x0
	str r2, [sp, #0x18]
	ldr r0, [sp, #0x38]
	ldrb r2, [r5, #0x8]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r1, #0x30
	mul r1, r2
	str r3, [sp, #0x1c]
	str r0, [sp, #0x44]
	bl FUN_02016998
	str r0, [r7, #0xc]
	cmp r0, #0x0
	bne _02010748
	bl ErrorHandling
_02010748:
	ldrb r0, [r5, #0x8]
	str r0, [r7, #0x10]
	mov r0, #0x0
	str r0, [sp, #0x20]
	ldrb r0, [r5, #0x8]
	cmp r0, #0x0
	ble _02010788
	ldr r6, [sp, #0x20]
	add r4, r6, #0x0
_0201075A:
	ldr r0, [r5, #0x4]
	ldr r2, [r7, #0xc]
	add r0, r0, r6
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x4]
	add r0, r2, r4
	ldr r3, [r5, #0x0]
	add r1, r0, #0x0
	add r2, r2, r4
	add r1, #0x20
	add r2, #0x10
	add r3, r3, r6
	bl FUN_0200F1A8
	ldr r0, [sp, #0x20]
	ldrb r1, [r5, #0x8]
	add r0, r0, #0x1
	add r6, #0x10
	add r4, #0x30
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0201075A
_02010788:
	ldrb r1, [r5, #0x9]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x44]
	add r0, r7, #0x0
	bl FUN_0200F55C
	ldr r0, [sp, #0x18]
	str r0, [r7, #0x14]
	ldr r0, [sp, #0x1c]
	str r0, [r7, #0x18]
	mov r0, #0x0
	str r0, [r7, #0x1c]
	ldr r0, [sp, #0x3c]
	str r0, [r7, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [r7, #0x28]
	ldr r0, [sp, #0x44]
	str r0, [r7, #0x2c]
	ldrb r0, [r5, #0xc]
	str r0, [r7, #0x20]
	add r0, r7, #0x0
	bl FUN_02010894
	ldr r0, _02010828 ; =FUN_0200F5F8
	ldr r2, _0201082C ; =0x000003FF
	add r1, r7, #0x0
	bl FUN_0200CA98
	add r0, r7, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	ldr r1, [sp, #0x38]
	str r1, [sp, #0x0]
	mov r1, #0x3
	lsl r1, r1, #0x8
	ldrsh r1, [r0, r1]
	str r1, [sp, #0x4]
	mov r1, #0x0
	str r1, [sp, #0x8]
	mov r1, #0x12
	lsl r1, r1, #0x6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x20]
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0xa]
	ldrb r2, [r5, #0xb]
	ldrb r3, [r5, #0x9]
	ldr r0, [sp, #0x3c]
	bl FUN_0200F67C
	ldrb r0, [r5, #0x9]
	cmp r0, #0x0
	ldr r0, [r7, #0x24]
	bne _02010808
	ldr r2, [sp, #0x38]
	ldr r3, [r7, #0x20]
	mov r1, #0x1
	bl FUN_0200F6E4
	b _02010812
_02010808:
	ldr r2, [sp, #0x38]
	ldr r3, [r7, #0x20]
	mov r1, #0x2
	bl FUN_0200F6E4
_02010812:
	ldr r0, [sp, #0x44]
	ldr r2, _02010830 ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r7, #0x28]
	ldr r3, [sp, #0x38]
	add r1, r7, #0x0
	bl FUN_0200E6CC
	add sp, #0x24
	pop {r4-r7, pc}
	nop
_02010828: .word FUN_0200F5F8 
_0201082C: .word 0x000003FF
_02010830: .word FUN_0200F330 

	thumb_func_start FUN_02010834
FUN_02010834: ; 0x02010834
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x1c]
	add r2, r1, #0x1
	str r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	cmp r2, r1
	blt _02010876
	mov r1, #0x0
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	sub r1, r1, #0x1
	cmp r1, #0x0
	ble _02010868
	str r1, [r4, #0x14]
	bl FUN_02010920
	add r0, r4, #0x0
	bl FUN_02010894
	ldr r0, _0201087C ; =FUN_0200F5F8
	ldr r2, _02010880 ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _02010876
_02010868:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x2c]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_02010876:
	mov r0, #0x0
	pop {r4, pc}
	nop
_0201087C: .word FUN_0200F5F8 
_02010880: .word 0x000003FF

	thumb_func_start FUN_02010884
FUN_02010884: ; 0x02010884
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start FUN_02010894
FUN_02010894: ; 0x02010894
	push {r4-r6, lr}
	mov r1, #0x0
	add r6, r0, #0x0
	bl FUN_0200F5D8
	mov r2, #0x3
	lsl r2, r2, #0x8
	add r0, r0, r2
	mov r1, #0x0
	blx Call_FillMemWithValue
	ldr r0, [r6, #0x10]
	sub r4, r0, #0x1
	bmi _020108C6
	mov r0, #0x30
	add r5, r4, #0x0
	mul r5, r0
_020108B6:
	ldr r1, [r6, #0xc]
	add r0, r6, #0x0
	add r1, r1, r5
	bl FUN_020108C8
	sub r5, #0x30
	sub r4, r4, #0x1
	bpl _020108B6
_020108C6:
	pop {r4-r6, pc}

	thumb_func_start FUN_020108C8
FUN_020108C8: ; 0x020108C8
	push {r4-r6, lr}
	add r4, r1, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	ldr r2, [r4, #0x0]
	ldr r3, [r4, #0x8]
	asr r1, r2, #0x6
	lsr r1, r1, #0x19
	add r1, r2, r1
	asr r2, r1, #0x7
	asr r1, r3, #0x6
	ldr r5, [r4, #0xc]
	lsr r1, r1, #0x19
	add r1, r3, r1
	asr r3, r5, #0x6
	lsr r3, r3, #0x19
	add r3, r5, r3
	ldr r4, [r4, #0x4]
	asr r5, r3, #0x7
	asr r3, r4, #0x6
	lsr r3, r3, #0x19
	add r3, r4, r3
	asr r3, r3, #0x7
	asr r1, r1, #0x7
	cmp r3, r5
	bge _0201091E
	lsl r4, r3, #0x1
	lsl r1, r1, #0x10
	add r4, r0, r4
	lsl r0, r2, #0x10
	asr r6, r1, #0x10
	mov r1, #0x3
	mov r2, #0x12
	asr r0, r0, #0x10
	lsl r1, r1, #0x8
	lsl r2, r2, #0x6
_02010912:
	strh r0, [r4, r1]
	strh r6, [r4, r2]
	add r3, r3, #0x1
	add r4, r4, #0x2
	cmp r3, r5
	blt _02010912
_0201091E:
	pop {r4-r6, pc}

	thumb_func_start FUN_02010920
FUN_02010920: ; 0x02010920
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x10]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02010944
	add r4, r6, #0x0
_0201092E:
	ldr r1, [r5, #0xc]
	add r0, r1, r4
	add r1, r1, r4
	add r1, #0x10
	bl FUN_0200F184
	ldr r0, [r5, #0x10]
	add r6, r6, #0x1
	add r4, #0x30
	cmp r6, r0
	blt _0201092E
_02010944:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02010948
FUN_02010948: ; 0x02010948
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x38
	bl FUN_02016998
	str r0, [r5, #0x14]
	mov r1, #0x0
	mov r2, #0x38
	blx Call_FillMemWithValue
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_020109E8
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02010988
FUN_02010988: ; 0x02010988
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _020109A0
	cmp r0, #0x2
	beq _020109BC
	cmp r0, #0x3
	beq _020109DC
	b _020109E0
_020109A0:
	add r0, r4, #0x0
	bl FUN_02010AE4
	cmp r0, #0x1
	bne _020109E4
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _020109E4
_020109BC:
	add r0, r4, #0x0
	bl FUN_02010B3C
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _020109E4
_020109DC:
	mov r6, #0x1
	b _020109E4
_020109E0:
	bl ErrorHandling
_020109E4:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_020109E8
FUN_020109E8: ; 0x020109E8
	push {r3-r7, lr}
	sub sp, #0x28
	add r4, r1, #0x0
	add r5, r0, #0x0
	mov r1, #0x0
	str r1, [r5, #0xc]
	ldr r1, [r4, #0x0]
	str r2, [sp, #0x18]
	str r1, [r5, #0x10]
	str r3, [sp, #0x1c]
	ldr r2, [r4, #0x4]
	ldr r1, [r4, #0x0]
	ldr r6, [sp, #0x40]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	ldr r3, [sp, #0x4c]
	mov r1, #0x2
	add r2, r6, #0x0
	ldr r7, [sp, #0x44]
	bl FUN_0200F55C
	ldr r0, [sp, #0x18]
	mov r1, #0x0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x48]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x4c]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #0xa]
	str r0, [r5, #0x28]
	add r0, r5, #0x0
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	add r0, #0xc
	bl FUN_02010C64
	add r0, r5, #0x0
	bl FUN_02010B40
	ldr r0, _02010AD8 ; =FUN_0200F5F8
	ldr r2, _02010ADC ; =0x000003FF
	add r1, r5, #0x0
	bl FUN_0200CA98
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	str r0, [sp, #0x20]
	add r0, r5, #0x0
	mov r1, #0x1
	bl FUN_0200F5D8
	str r0, [sp, #0x24]
	mov r1, #0x3
	ldr r0, [sp, #0x20]
	str r6, [sp, #0x0]
	lsl r1, r1, #0x8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	mov r3, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x20]
	str r3, [sp, #0x8]
	lsl r1, r1, #0x6
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x8]
	ldrb r2, [r4, #0x9]
	add r0, r7, #0x0
	bl FUN_0200F67C
	mov r1, #0x3
	ldr r0, [sp, #0x24]
	str r6, [sp, #0x0]
	lsl r1, r1, #0x8
	ldrsh r0, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #0x6
	str r0, [sp, #0x4]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x24]
	mov r3, #0x1
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x8]
	ldrb r2, [r4, #0x9]
	add r0, r7, #0x0
	bl FUN_0200F67C
	ldr r3, [r5, #0x28]
	add r0, r7, #0x0
	mov r1, #0x3
	add r2, r6, #0x0
	bl FUN_0200F6E4
	ldr r0, [sp, #0x4c]
	ldr r2, _02010AE0 ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x34]
	add r1, r5, #0x0
	add r3, r6, #0x0
	bl FUN_0200E6CC
	add sp, #0x28
	pop {r3-r7, pc}
	.balign 4
_02010AD8: .word FUN_0200F5F8 
_02010ADC: .word 0x000003FF
_02010AE0: .word FUN_0200F330 

	thumb_func_start FUN_02010AE4
FUN_02010AE4: ; 0x02010AE4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x24]
	add r1, r0, #0x1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02010B2E
	mov r0, #0x0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #0x1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02010B20
	str r1, [r4, #0x1c]
	add r0, r4, #0x0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl FUN_02010C64
	add r0, r4, #0x0
	bl FUN_02010B40
	ldr r0, _02010B34 ; =FUN_0200F5F8
	ldr r2, _02010B38 ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _02010B2E
_02010B20:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x2c]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_02010B2E:
	mov r0, #0x0
	pop {r4, pc}
	nop
_02010B34: .word FUN_0200F5F8 
_02010B38: .word 0x000003FF

	thumb_func_start FUN_02010B3C
FUN_02010B3C: ; 0x02010B3C
	bx lr
	.balign 4

	thumb_func_start FUN_02010B40
FUN_02010B40: ; 0x02010B40
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	ldr r1, _02010C60 ; =0x00003FFF
	blx _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x0]
	mov r1, #0x0
	bl FUN_0200F5D8
	add r7, r0, #0x0
	ldr r0, [sp, #0x0]
	mov r1, #0x1
	bl FUN_0200F5D8
	add r4, r0, #0x0
	mov r6, #0x0
	add r5, r4, #0x0
_02010B6C:
	ldr r0, [sp, #0x0]
	ldr r1, [r0, #0xc]
	ldr r0, _02010C60 ; =0x00003FFF
	cmp r1, r0
	bge _02010BB0
	mov r1, #0x60
	ldr r0, [sp, #0x4]
	sub r1, r1, r6
	bl FUN_0200F0D0
	cmp r0, #0x7f
	ble _02010B86
	mov r0, #0x7f
_02010B86:
	mov r1, #0xbf
	sub r1, r1, r6
	lsl r1, r1, #0x1
	add r3, r7, r1
	mov r1, #0x80
	sub r2, r1, r0
	mov r1, #0x3
	lsl r1, r1, #0x8
	strh r2, [r3, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #0x6
	strh r2, [r3, r1]
	mov r1, #0x3
	lsl r1, r1, #0x8
	strh r2, [r5, r1]
	mov r1, #0x12
	add r0, #0x80
	lsl r1, r1, #0x6
	strh r0, [r5, r1]
	b _02010BD8
_02010BB0:
	mov r0, #0xbf
	sub r0, r0, r6
	lsl r0, r0, #0x1
	mov r1, #0x3
	add r0, r7, r0
	mov r2, #0x0
	lsl r1, r1, #0x8
	strh r2, [r0, r1]
	mov r1, #0x12
	mov r2, #0x80
	lsl r1, r1, #0x6
	strh r2, [r0, r1]
	mov r0, #0x3
	add r1, r2, #0x0
	lsl r0, r0, #0x8
	strh r1, [r5, r0]
	mov r0, #0x12
	mov r1, #0xff
	lsl r0, r0, #0x6
	strh r1, [r5, r0]
_02010BD8:
	add r6, r6, #0x1
	add r5, r5, #0x2
	cmp r6, #0x60
	blt _02010B6C
	ldr r1, _02010C60 ; =0x00003FFF
	ldr r0, [sp, #0x4]
	mov r5, #0x60
	add r4, #0xc0
	sub r6, r1, r0
_02010BEA:
	ldr r0, [sp, #0x0]
	ldr r1, [r0, #0xc]
	ldr r0, _02010C60 ; =0x00003FFF
	cmp r1, r0
	bge _02010C1A
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #0x1
	mov r1, #0x3
	add r0, r7, r0
	mov r2, #0x80
	lsl r1, r1, #0x8
	strh r2, [r0, r1]
	mov r1, #0x12
	lsl r1, r1, #0x6
	strh r2, [r0, r1]
	mov r0, #0x3
	add r1, r2, #0x0
	lsl r0, r0, #0x8
	strh r1, [r4, r0]
	mov r0, #0x12
	lsl r0, r0, #0x6
	strh r1, [r4, r0]
	b _02010C54
_02010C1A:
	add r1, r5, #0x0
	add r0, r6, #0x0
	sub r1, #0x60
	bl FUN_0200F0D0
	add r1, r0, #0x0
	cmp r1, #0x7f
	ble _02010C2C
	mov r1, #0x7f
_02010C2C:
	mov r0, #0xbf
	sub r0, r0, r5
	lsl r0, r0, #0x1
	mov r2, #0x3
	add r0, r7, r0
	mov r3, #0x0
	lsl r2, r2, #0x8
	strh r3, [r0, r2]
	mov r2, #0x80
	sub r3, r2, r1
	mov r2, #0x12
	lsl r2, r2, #0x6
	strh r3, [r0, r2]
	mov r0, #0x3
	add r1, #0x80
	lsl r0, r0, #0x8
	strh r1, [r4, r0]
	mov r1, #0xff
	add r0, r2, #0x0
	strh r1, [r4, r0]
_02010C54:
	add r5, r5, #0x1
	add r4, r4, #0x2
	cmp r5, #0xc0
	blt _02010BEA
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_02010C60: .word 0x00003FFF

	thumb_func_start FUN_02010C64
FUN_02010C64: ; 0x02010C64
	push {r4, lr}
	add r4, r0, #0x0
	ldr r3, [r4, #0x8]
	add r0, r3, #0x0
	mul r0, r1
	add r1, r2, #0x0
	blx _s32_div_f
	ldr r1, [r4, #0x4]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02010C7C
FUN_02010C7C: ; 0x02010C7C
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r0, [r5, #0x20]
	add r4, r1, #0x0
	mov r1, #0x38
	bl FUN_02016998
	str r0, [r5, #0x14]
	mov r1, #0x0
	mov r2, #0x38
	blx Call_FillMemWithValue
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_02010D1C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02010CBC
FUN_02010CBC: ; 0x02010CBC
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _02010CD4
	cmp r0, #0x2
	beq _02010CF0
	cmp r0, #0x3
	beq _02010D10
	b _02010D14
_02010CD4:
	add r0, r4, #0x0
	bl FUN_02010DEC
	cmp r0, #0x1
	bne _02010D18
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x30]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010D18
_02010CF0:
	add r0, r4, #0x0
	bl FUN_02010E44
	add r0, r4, #0x0
	bl FUN_0200F5C0
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010D18
_02010D10:
	mov r6, #0x1
	b _02010D18
_02010D14:
	bl ErrorHandling
_02010D18:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02010D1C
FUN_02010D1C: ; 0x02010D1C
	push {r3-r7, lr}
	sub sp, #0x20
	add r4, r1, #0x0
	ldr r1, [r4, #0x0]
	add r5, r0, #0x0
	str r1, [r5, #0xc]
	ldr r1, [r4, #0x0]
	str r3, [sp, #0x1c]
	str r1, [r5, #0x10]
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x4]
	ldr r1, [r4, #0x0]
	ldr r6, [sp, #0x38]
	sub r1, r2, r1
	str r1, [r5, #0x14]
	ldr r3, [sp, #0x44]
	mov r1, #0x2
	add r2, r6, #0x0
	ldr r7, [sp, #0x3c]
	bl FUN_0200F55C
	ldr r0, [sp, #0x18]
	mov r1, #0x0
	str r0, [r5, #0x18]
	ldr r0, [sp, #0x1c]
	str r1, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r1, [r5, #0x24]
	ldr r0, [sp, #0x40]
	str r7, [r5, #0x30]
	str r0, [r5, #0x34]
	ldr r0, [sp, #0x44]
	str r0, [r5, #0x2c]
	ldrb r0, [r4, #0xa]
	str r0, [r5, #0x28]
	add r0, r5, #0x0
	bl FUN_02010E48
	ldr r0, _02010DE0 ; =FUN_0200F5F8
	ldr r2, _02010DE4 ; =0x000003FF
	add r1, r5, #0x0
	bl FUN_0200CA98
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_0200F5D8
	add r0, r5, #0x0
	mov r1, #0x1
	bl FUN_0200F5D8
	str r6, [sp, #0x0]
	mov r3, #0x0
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x8]
	ldrb r2, [r4, #0x9]
	add r0, r7, #0x0
	bl FUN_0200F67C
	str r6, [sp, #0x0]
	mov r0, #0x0
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	mov r0, #0xc0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #0x1
	str r0, [sp, #0x14]
	ldrb r1, [r4, #0x8]
	ldrb r2, [r4, #0x9]
	add r0, r7, #0x0
	bl FUN_0200F67C
	ldr r3, [r5, #0x28]
	add r0, r7, #0x0
	mov r1, #0x3
	add r2, r6, #0x0
	bl FUN_0200F6E4
	ldr r0, [sp, #0x44]
	ldr r2, _02010DE8 ; =FUN_0200F330
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x34]
	add r1, r5, #0x0
	add r3, r6, #0x0
	bl FUN_0200E6CC
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4
_02010DE0: .word FUN_0200F5F8 
_02010DE4: .word 0x000003FF
_02010DE8: .word FUN_0200F330 

	thumb_func_start FUN_02010DEC
FUN_02010DEC: ; 0x02010DEC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x24]
	add r1, r0, #0x1
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	blt _02010E36
	mov r0, #0x0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x1c]
	add r1, r0, #0x1
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bgt _02010E28
	str r1, [r4, #0x1c]
	add r0, r4, #0x0
	ldr r2, [r4, #0x18]
	add r0, #0xc
	bl FUN_02010F14
	add r0, r4, #0x0
	bl FUN_02010E48
	ldr r0, _02010E3C ; =FUN_0200F5F8
	ldr r2, _02010E40 ; =0x000003FF
	add r1, r4, #0x0
	bl FUN_0200CA98
	b _02010E36
_02010E28:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x8]
	ldr r2, [r4, #0x2c]
	bl FUN_0200E6F8
	mov r0, #0x1
	pop {r4, pc}
_02010E36:
	mov r0, #0x0
	pop {r4, pc}
	nop
_02010E3C: .word FUN_0200F5F8 
_02010E40: .word 0x000003FF

	thumb_func_start FUN_02010E44
FUN_02010E44: ; 0x02010E44
	bx lr
	.balign 4

	thumb_func_start FUN_02010E48
FUN_02010E48: ; 0x02010E48
	push {r4-r7, lr}
	sub sp, #0x1c
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0x8]
	mov r1, #0x0
	bl FUN_0200F5D8
	str r0, [sp, #0x10]
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0200F5D8
	str r0, [sp, #0xc]
	add r5, r0, #0x0
	ldr r1, _02010F10 ; =0x00003FFF
	ldr r0, [sp, #0x8]
	ldr r6, [sp, #0x10]
	sub r0, r1, r0
	mov r7, #0x0
	str r0, [sp, #0x4]
_02010E76:
	mov r0, #0x60
	sub r0, r0, r7
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x0]
	bl FUN_0200F0D0
	add r4, r0, #0x0
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x0]
	bl FUN_0200F0D0
	cmp r4, #0x7f
	ble _02010E94
	mov r4, #0x7f
_02010E94:
	cmp r0, #0x7f
	ble _02010E9A
	mov r0, #0x7f
_02010E9A:
	mov r1, #0x80
	sub r1, r1, r0
	lsl r1, r1, #0x10
	mov r2, #0x3
	asr r1, r1, #0x10
	lsl r2, r2, #0x8
	str r1, [sp, #0x14]
	strh r1, [r6, r2]
	mov r1, #0x80
	sub r1, r1, r4
	lsl r1, r1, #0x10
	asr r2, r1, #0x10
	mov r1, #0x12
	lsl r1, r1, #0x6
	strh r2, [r6, r1]
	mov r1, #0xbf
	sub r1, r1, r7
	mov r12, r2
	lsl r1, r1, #0x1
	ldr r2, [sp, #0x10]
	add r0, #0x80
	add r3, r2, r1
	str r1, [sp, #0x18]
	mov r2, #0x3
	ldr r1, [sp, #0x14]
	lsl r2, r2, #0x8
	strh r1, [r3, r2]
	mov r1, #0x12
	mov r2, r12
	lsl r1, r1, #0x6
	strh r2, [r3, r1]
	add r4, #0x80
	lsl r1, r4, #0x10
	asr r2, r1, #0x10
	mov r1, #0x3
	lsl r1, r1, #0x8
	lsl r0, r0, #0x10
	strh r2, [r5, r1]
	asr r1, r0, #0x10
	mov r0, #0x12
	lsl r0, r0, #0x6
	strh r1, [r5, r0]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r7, r7, #0x1
	add r0, r3, r0
	mov r3, #0x3
	lsl r3, r3, #0x8
	strh r2, [r0, r3]
	mov r2, #0x12
	lsl r2, r2, #0x6
	strh r1, [r0, r2]
	add r6, r6, #0x2
	add r5, r5, #0x2
	cmp r7, #0x60
	blt _02010E76
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_02010F10: .word 0x00003FFF

	thumb_func_start FUN_02010F14
FUN_02010F14: ; 0x02010F14
	push {r4, lr}
	add r4, r0, #0x0
	ldr r3, [r4, #0x8]
	add r0, r3, #0x0
	mul r0, r1
	add r1, r2, #0x0
	blx _s32_div_f
	ldr r1, [r4, #0x4]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02010F2C
FUN_02010F2C: ; 0x02010F2C
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r1, #0xcd
	ldr r0, [r5, #0x20]
	lsl r1, r1, #0x2
	bl FUN_02016998
	mov r2, #0xcd
	str r0, [r5, #0x14]
	mov r1, #0x0
	lsl r2, r2, #0x2
	blx Call_FillMemWithValue
	ldr r0, [r5, #0x10]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	bl FUN_02010FD0
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02010F70
FUN_02010F70: ; 0x02010F70
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	ldr r4, [r5, #0x14]
	cmp r0, #0x1
	beq _02010F88
	cmp r0, #0x2
	beq _02010FAA
	cmp r0, #0x3
	beq _02010FC4
	b _02010FC8
_02010F88:
	add r0, r4, #0x0
	bl FUN_020110BC
	cmp r0, #0x1
	bne _02010FCC
	mov r1, #0xc9
	lsl r1, r1, #0x2
	ldr r0, [r4, r1]
	add r1, #0x8
	ldr r1, [r4, r1]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010FCC
_02010FAA:
	add r0, r4, #0x0
	bl FUN_0201111C
	ldr r0, [r5, #0x14]
	bl FUN_02016A18
	add r0, r6, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r6, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02010FCC
_02010FC4:
	mov r6, #0x1
	b _02010FCC
_02010FC8:
	bl ErrorHandling
_02010FCC:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_02010FD0
FUN_02010FD0: ; 0x02010FD0
	push {r3-r7, lr}
	sub sp, #0x20
	ldr r7, [sp, #0x38]
	str r3, [sp, #0x1c]
	mov r3, #0x0
	add r4, r1, #0x0
	str r2, [sp, #0x18]
	str r3, [sp, #0x0]
	add r1, r7, #0x0
	mov r2, #0x1
	add r5, r0, #0x0
	ldr r6, [sp, #0x3c]
	bl FUN_0200F6FC
	ldrb r0, [r4, #0x5]
	cmp r0, #0x0
	bne _0201100A
	add r0, r5, #0x0
	mov r1, #0x1
	mov r2, #0xc0
	blx Call_FillMemWithValue
	add r0, r5, #0x0
	add r0, #0xc0
	mov r1, #0x1
	mov r2, #0xc0
	blx Call_FillMemWithValue
	b _02011020
_0201100A:
	add r0, r5, #0x0
	mov r1, #0x0
	mov r2, #0xc0
	blx Call_FillMemWithValue
	add r0, r5, #0x0
	add r0, #0xc0
	mov r1, #0x0
	mov r2, #0xc0
	blx Call_FillMemWithValue
_02011020:
	mov r1, #0xc3
	lsl r1, r1, #0x2
	ldr r0, [r4, #0x0]
	add r3, r1, #0x0
	str r0, [r5, r1]
	ldrb r2, [r4, #0x4]
	add r0, r1, #0x4
	add r3, #0x8
	str r2, [r5, r0]
	add r0, r1, #0x0
	ldrb r2, [r4, #0x5]
	add r0, #0x18
	str r2, [r5, r0]
	add r0, r1, #0x0
	ldr r2, [sp, #0x44]
	add r0, #0x1c
	str r2, [r5, r0]
	ldr r0, [sp, #0x18]
	str r0, [r5, r3]
	add r3, r1, #0x0
	add r3, #0xc
	mov r0, #0x0
	str r0, [r5, r3]
	add r3, r1, #0x0
	ldr r0, [sp, #0x1c]
	add r3, #0x10
	str r0, [r5, r3]
	add r3, r1, #0x0
	add r3, #0x14
	mov r0, #0x0
	str r0, [r5, r3]
	add r0, r1, #0x0
	add r0, #0x20
	str r6, [r5, r0]
	ldr r0, [sp, #0x40]
	add r1, #0x24
	str r0, [r5, r1]
	add r1, r5, #0x0
	bl FUN_0200F758
	ldrb r0, [r4, #0x5]
	cmp r0, #0x1
	str r7, [sp, #0x0]
	bne _02011090
	mov r3, #0x0
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0x0
	mov r1, #0x20
	mov r2, #0x3f
	bl FUN_0200F67C
	b _020110A6
_02011090:
	mov r3, #0x0
	str r3, [sp, #0x4]
	str r3, [sp, #0x8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r6, #0x0
	mov r1, #0x3f
	mov r2, #0x20
	bl FUN_0200F67C
_020110A6:
	mov r3, #0xc9
	lsl r3, r3, #0x2
	ldr r3, [r5, r3]
	add r0, r6, #0x0
	mov r1, #0x1
	add r2, r7, #0x0
	bl FUN_0200F6E4
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020110BC
FUN_020110BC: ; 0x020110BC
	push {r4, lr}
	mov r2, #0x32
	add r4, r0, #0x0
	lsl r2, r2, #0x4
	ldr r1, [r4, r2]
	add r1, r1, #0x1
	str r1, [r4, r2]
	sub r1, r2, #0x4
	ldr r3, [r4, r2]
	ldr r1, [r4, r1]
	cmp r3, r1
	blt _02011116
	mov r1, #0x0
	str r1, [r4, r2]
	add r1, r2, #0x0
	sub r1, #0x8
	ldr r1, [r4, r1]
	add r3, r1, #0x1
	add r1, r2, #0x0
	sub r1, #0xc
	ldr r1, [r4, r1]
	cmp r3, r1
	bgt _02011102
	add r1, r2, #0x0
	sub r1, #0x8
	ldr r1, [r4, r1]
	sub r2, #0x8
	add r1, r1, #0x1
	str r1, [r4, r2]
	bl FUN_02011120
	add r0, r4, #0x0
	bl FUN_0200F740
	b _02011116
_02011102:
	add r0, r2, #0x0
	add r0, #0x10
	add r2, #0x8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	add r1, r4, #0x0
	bl FUN_0200F770
	mov r0, #0x1
	pop {r4, pc}
_02011116:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201111C
FUN_0201111C: ; 0x0201111C
	bx lr
	.balign 4

	thumb_func_start FUN_02011120
FUN_02011120: ; 0x02011120
	push {r3-r7, lr}
	add r5, r0, #0x0
	mov r0, #0x31
	lsl r0, r0, #0x4
	ldr r0, [r5, r0]
	mov r6, #0x0
	cmp r0, #0x0
	ble _0201115A
	mov r7, #0x31
	add r4, r6, #0x0
	lsl r7, r7, #0x4
_02011136:
	mov r0, #0xc3
	lsl r0, r0, #0x2
	mov r2, #0xc6
	mov r3, #0xc5
	ldr r0, [r5, r0]
	lsl r2, r2, #0x2
	lsl r3, r3, #0x2
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r0, r0, r4
	add r1, r5, #0x0
	bl FUN_0201115C
	ldr r0, [r5, r7]
	add r6, r6, #0x1
	add r4, r4, #0x3
	cmp r6, r0
	blt _02011136
_0201115A:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201115C
FUN_0201115C: ; 0x0201115C
	push {r3-r7, lr}
	add r7, r0, #0x0
	ldrb r6, [r7, #0x0]
	ldrb r4, [r7, #0x1]
	add r5, r1, #0x0
	add r1, r3, #0x0
	sub r0, r4, r6
	mul r0, r2
	blx _s32_div_f
	add r0, r0, r6
	cmp r6, r4
	bhi _0201117C
	add r1, r6, #0x0
	ldrb r6, [r7, #0x2]
	b _0201118C
_0201117C:
	ldrb r2, [r7, #0x2]
	add r1, r4, #0x0
	add r4, r6, #0x0
	cmp r2, #0x0
	bne _0201118A
	mov r6, #0x1
	b _0201118C
_0201118A:
	mov r6, #0x0
_0201118C:
	cmp r1, r4
	bge _020111AA
	mov r2, #0x0
	mov r3, #0x1
_02011194:
	cmp r1, r0
	bne _020111A2
	cmp r6, #0x0
	bne _020111A0
	add r6, r3, #0x0
	b _020111A2
_020111A0:
	add r6, r2, #0x0
_020111A2:
	strb r6, [r5, r1]
	add r1, r1, #0x1
	cmp r1, r4
	blt _02011194
_020111AA:
	pop {r3-r7, pc}

	thumb_func_start FUN_020111AC
FUN_020111AC: ; 0x020111AC
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r1, #0xe2
	ldr r0, [r5, #0x20]
	lsl r1, r1, #0x2
	bl FUN_02016998
	mov r2, #0xe2
	mov r1, #0x0
	lsl r2, r2, #0x2
	str r0, [r5, #0x14]
	blx Call_FillMemWithValue
	add r1, r4, #0x0
	add r1, #0x23
	ldrb r1, [r1, #0x0]
	ldr r0, [r5, #0x14]
	cmp r1, #0x0
	ldr r1, [r5, #0x10]
	bne _020111F2
	str r1, [sp, #0x0]
	ldr r1, [r5, #0x18]
	str r1, [sp, #0x4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #0x8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r1, r4, #0x0
	bl FUN_0201127C
	b _0201120A
_020111F2:
	str r1, [sp, #0x0]
	ldr r1, [r5, #0x18]
	str r1, [sp, #0x4]
	ldr r1, [r5, #0x1c]
	str r1, [sp, #0x8]
	ldr r1, [r5, #0x20]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x4]
	ldr r3, [r5, #0x8]
	add r1, r4, #0x0
	bl FUN_0201137C
_0201120A:
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_02011214
FUN_02011214: ; 0x02011214
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r1, [r5, #0xc]
	mov r4, #0x0
	ldr r0, [r5, #0x14]
	cmp r1, #0x1
	beq _0201122C
	cmp r1, #0x2
	beq _02011258
	cmp r1, #0x3
	beq _0201126A
	b _0201126E
_0201122C:
	ldr r1, _02011278 ; =0x00000386
	ldrb r1, [r0, r1]
	cmp r1, #0x0
	bne _0201123C
	add r1, r5, #0x0
	bl FUN_02011308
	b _02011242
_0201123C:
	add r1, r5, #0x0
	bl FUN_020113EC
_02011242:
	cmp r0, #0x1
	bne _02011272
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x10]
	bl FUN_0200F62C
	ldr r0, [r5, #0xc]
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02011272
_02011258:
	bl FUN_02016A18
	add r0, r4, #0x0
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r4, #0x1
	add r0, r0, #0x1
	str r0, [r5, #0xc]
	b _02011272
_0201126A:
	mov r4, #0x1
	b _02011272
_0201126E:
	bl ErrorHandling
_02011272:
	add r0, r4, #0x0
	pop {r3-r5, pc}
	nop
_02011278: .word 0x00000386

	thumb_func_start FUN_0201127C
FUN_0201127C: ; 0x0201127C
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r5, r0, #0x0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x2c]
	add r7, r3, #0x0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	add r2, r0, #0x0
	mov r0, #0x2
	mov r3, #0x0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r2, r0, #0xc
	mov r0, #0xe1
	sub r1, r6, r2
	lsl r0, r0, #0x2
	strb r1, [r5, r0]
	sub r1, r0, #0x4
	str r4, [r5, r1]
	add r1, r4, #0x0
	add r1, #0x23
	ldrb r1, [r1, #0x0]
	add r0, r0, #0x2
	add r3, r7, #0x0
	strb r1, [r5, r0]
	ldr r0, [sp, #0x20]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	bl FUN_0200FE20
	add r0, r4, #0x0
	add r0, #0x20
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020112EA
	add r4, #0x23
	ldrb r3, [r4, #0x0]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #0x1
	bl FUN_0200F6E4
	b _020112F8
_020112EA:
	add r4, #0x23
	ldrb r3, [r4, #0x0]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x20]
	mov r1, #0x2
	bl FUN_0200F6E4
_020112F8:
	ldr r0, _02011304 ; =0x00000385
	mov r1, #0x0
	strb r1, [r5, r0]
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_02011304: .word 0x00000385

	thumb_func_start FUN_02011308
FUN_02011308: ; 0x02011308
	push {r4-r6, lr}
	sub sp, #0x10
	add r4, r1, #0x0
	ldr r1, _02011378 ; =0x00000385
	add r5, r0, #0x0
	ldrb r1, [r5, r1]
	mov r6, #0x0
	cmp r1, #0x0
	beq _02011324
	cmp r1, #0x1
	beq _0201135A
	cmp r1, #0x2
	beq _02011370
	b _02011372
_02011324:
	bl FUN_0200FE90
	cmp r0, #0x1
	bne _02011372
	ldr r2, _02011378 ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #0x5
	add r0, r0, #0x1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #0x1
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x8]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0x0
	ldrb r2, [r5, r2]
	ldr r3, [r4, #0x8]
	add r0, #0x4c
	add r1, #0x24
	bl FUN_02010FD0
	b _02011372
_0201135A:
	add r0, #0x4c
	bl FUN_020110BC
	cmp r0, #0x1
	bne _02011372
	ldr r0, _02011378 ; =0x00000385
	mov r6, #0x1
	ldrb r1, [r5, r0]
	add r1, r1, #0x1
	strb r1, [r5, r0]
	b _02011372
_02011370:
	mov r6, #0x1
_02011372:
	add r0, r6, #0x0
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4
_02011378: .word 0x00000385

	thumb_func_start FUN_0201137C
FUN_0201137C: ; 0x0201137C
	push {r3-r7, lr}
	sub sp, #0x10
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r5, r0, #0x0
	lsl r0, r6, #0xc
	ldr r2, [r4, #0x2c]
	add r7, r3, #0x0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	add r2, r0, #0x0
	mov r0, #0x2
	mov r3, #0x0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	mov r1, #0xe1
	asr r0, r0, #0xc
	lsl r1, r1, #0x2
	strb r0, [r5, r1]
	ldrb r0, [r5, r1]
	sub r2, r6, r0
	sub r0, r1, #0x4
	str r4, [r5, r0]
	add r4, #0x23
	add r0, r1, #0x2
	ldrb r3, [r4, #0x0]
	sub r1, r1, #0x4
	strb r3, [r5, r0]
	ldr r0, [sp, #0x28]
	add r3, r7, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0xc]
	ldr r1, [r5, r1]
	add r0, r5, #0x0
	add r0, #0x4c
	add r1, #0x24
	bl FUN_02010FD0
	ldr r0, _020113E8 ; =0x00000385
	mov r1, #0x0
	strb r1, [r5, r0]
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4
_020113E8: .word 0x00000385

	thumb_func_start FUN_020113EC
FUN_020113EC: ; 0x020113EC
	push {r4-r6, lr}
	sub sp, #0x8
	add r4, r1, #0x0
	ldr r1, _0201147C ; =0x00000385
	add r5, r0, #0x0
	ldrb r1, [r5, r1]
	mov r6, #0x0
	cmp r1, #0x0
	beq _02011408
	cmp r1, #0x1
	beq _02011460
	cmp r1, #0x2
	beq _02011474
	b _02011476
_02011408:
	add r0, #0x4c
	bl FUN_020110BC
	cmp r0, #0x1
	bne _02011476
	ldr r2, _0201147C ; =0x00000385
	ldrb r0, [r5, r2]
	sub r1, r2, #0x5
	add r0, r0, #0x1
	strb r0, [r5, r2]
	ldr r0, [r4, #0x10]
	sub r2, r2, #0x1
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	ldr r3, [r4, #0x8]
	add r0, r5, #0x0
	bl FUN_0200FE20
	mov r0, #0xe
	lsl r0, r0, #0x6
	ldr r3, [r5, r0]
	add r0, r3, #0x0
	add r0, #0x20
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	ldr r0, [r4, #0x18]
	bne _02011452
	add r3, #0x23
	ldrb r3, [r3, #0x0]
	ldr r2, [r4, #0x10]
	mov r1, #0x1
	bl FUN_0200F6E4
	b _02011476
_02011452:
	add r3, #0x23
	ldrb r3, [r3, #0x0]
	ldr r2, [r4, #0x10]
	mov r1, #0x2
	bl FUN_0200F6E4
	b _02011476
_02011460:
	bl FUN_0200FE90
	cmp r0, #0x1
	bne _02011476
	ldr r0, _0201147C ; =0x00000385
	mov r6, #0x1
	ldrb r1, [r5, r0]
	add r1, r1, #0x1
	strb r1, [r5, r0]
	b _02011476
_02011474:
	mov r6, #0x1
_02011476:
	add r0, r6, #0x0
	add sp, #0x8
	pop {r4-r6, pc}
	.balign 4
_0201147C: .word 0x00000385

	thumb_func_start FUN_02011480
FUN_02011480: ; 0x02011480
	cmp r1, #0x0
	ldr r1, _020114A4 ; =0xFFFF1FFF
	bne _02011496
	mov r3, #0x1
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0x0]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3, #0x0]
	bx lr
_02011496:
	ldr r3, _020114A8 ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3, #0x0]
	and r1, r2
	orr r0, r1
	str r0, [r3, #0x0]
	bx lr
	.balign 4
_020114A4: .word 0xFFFF1FFF
_020114A8: .word 0x04001000

	thumb_func_start FUN_020114AC
FUN_020114AC: ; 0x020114AC
	push {r3-r4}
	cmp r2, #0x0
	bne _020114EE
	cmp r3, #0x0
	bne _020114D2
	ldr r2, _02011528 ; =0x04000048
	ldrh r3, [r2, #0x0]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0x0
	orr r2, r0
	cmp r1, #0x0
	beq _020114CA
	mov r0, #0x20
	orr r2, r0
_020114CA:
	ldr r0, _02011528 ; =0x04000048
	strh r2, [r0, #0x0]
	pop {r3-r4}
	bx lr
_020114D2:
	ldr r2, _0201152C ; =0x04001048
	ldrh r3, [r2, #0x0]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0x0
	orr r2, r0
	cmp r1, #0x0
	beq _020114E6
	mov r0, #0x20
	orr r2, r0
_020114E6:
	ldr r0, _0201152C ; =0x04001048
	strh r2, [r0, #0x0]
	pop {r3-r4}
	bx lr
_020114EE:
	cmp r3, #0x0
	ldr r2, _02011530 ; =0xFFFFC0FF
	bne _0201150E
	ldr r4, _02011528 ; =0x04000048
	lsl r0, r0, #0x8
	ldrh r3, [r4, #0x0]
	and r2, r3
	orr r2, r0
	cmp r1, #0x0
	beq _02011506
	lsr r0, r4, #0xd
	orr r2, r0
_02011506:
	ldr r0, _02011528 ; =0x04000048
	strh r2, [r0, #0x0]
	pop {r3-r4}
	bx lr
_0201150E:
	ldr r4, _0201152C ; =0x04001048
	lsl r0, r0, #0x8
	ldrh r3, [r4, #0x0]
	and r2, r3
	orr r2, r0
	cmp r1, #0x0
	beq _02011520
	lsr r0, r4, #0xd
	orr r2, r0
_02011520:
	ldr r0, _0201152C ; =0x04001048
	strh r2, [r0, #0x0]
	pop {r3-r4}
	bx lr
	.balign 4
_02011528: .word 0x04000048
_0201152C: .word 0x04001048
_02011530: .word 0xFFFFC0FF

	thumb_func_start FUN_02011534
FUN_02011534: ; 0x02011534
	cmp r2, #0x0
	bne _02011552
	ldr r2, _0201156C ; =0x0400004A
	ldrh r3, [r2, #0x0]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0x0
	orr r2, r0
	cmp r1, #0x0
	beq _0201154C
	mov r0, #0x20
	orr r2, r0
_0201154C:
	ldr r0, _0201156C ; =0x0400004A
	strh r2, [r0, #0x0]
	bx lr
_02011552:
	ldr r2, _02011570 ; =0x0400104A
	ldrh r3, [r2, #0x0]
	mov r2, #0x3f
	bic r3, r2
	add r2, r3, #0x0
	orr r2, r0
	cmp r1, #0x0
	beq _02011566
	mov r0, #0x20
	orr r2, r0
_02011566:
	ldr r0, _02011570 ; =0x0400104A
	strh r2, [r0, #0x0]
	bx lr
	.balign 4
_0201156C: .word 0x0400004A
_02011570: .word 0x0400104A

	thumb_func_start FUN_02011574
FUN_02011574: ; 0x02011574
	push {r4-r5}
	add r4, r2, #0x0
	add r2, r3, #0x0
	ldr r3, [sp, #0x8]
	cmp r3, #0x0
	bne _020115D2
	ldr r3, [sp, #0xc]
	cmp r3, #0x0
	bne _020115AC
	lsl r0, r0, #0x8
	mov r3, #0xff
	add r5, r0, #0x0
	lsl r3, r3, #0x8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0x0
	orr r4, r0
	ldr r0, _02011624 ; =0x04000040
	orr r1, r3
	strh r4, [r0, #0x0]
	strh r1, [r0, #0x4]
	pop {r4-r5}
	bx lr
_020115AC:
	lsl r0, r0, #0x8
	mov r3, #0xff
	add r5, r0, #0x0
	lsl r3, r3, #0x8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0x0
	orr r4, r0
	ldr r0, _02011628 ; =0x04001040
	orr r1, r3
	strh r4, [r0, #0x0]
	strh r1, [r0, #0x4]
	pop {r4-r5}
	bx lr
_020115D2:
	ldr r3, [sp, #0xc]
	cmp r3, #0x0
	bne _020115FE
	lsl r0, r0, #0x8
	mov r3, #0xff
	add r5, r0, #0x0
	lsl r3, r3, #0x8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0x0
	orr r4, r0
	ldr r0, _0201162C ; =0x04000042
	orr r1, r3
	strh r4, [r0, #0x0]
	strh r1, [r0, #0x4]
	pop {r4-r5}
	bx lr
_020115FE:
	lsl r0, r0, #0x8
	mov r3, #0xff
	add r5, r0, #0x0
	lsl r3, r3, #0x8
	lsl r0, r4, #0x18
	and r5, r3
	lsl r1, r1, #0x8
	and r3, r1
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	add r4, r5, #0x0
	orr r4, r0
	ldr r0, _02011630 ; =0x04001042
	orr r1, r3
	strh r4, [r0, #0x0]
	strh r1, [r0, #0x4]
	pop {r4-r5}
	bx lr
	.balign 4
_02011624: .word 0x04000040
_02011628: .word 0x04001040
_0201162C: .word 0x04000042
_02011630: .word 0x04001042

	thumb_func_start FUN_02011634
FUN_02011634: ; 0x02011634
	push {r4, lr}
	lsl r3, r2, #0x3
	add r4, r0, r3
	str r1, [r0, r3]
	str r2, [r4, #0x4]
	ldr r0, _0201164C ; =FUN_020116CC
	add r1, r4, #0x0
	mov r2, #0x1
	bl FUN_0200CA98
	pop {r4, pc}
	nop
_0201164C: .word FUN_020116CC 

	thumb_func_start FUN_02011650
FUN_02011650: ; 0x02011650
	push {r4-r6, lr}
	ldr r5, [sp, #0x10]
	add r0, #0x10
	lsl r4, r5, #0x5
	add r6, r0, r4
	lsl r0, r3, #0x4
	add r4, r6, r0
	str r1, [r6, r0]
	str r2, [r4, #0x4]
	str r3, [r4, #0x8]
	ldr r0, _02011674 ; =FUN_020116E0
	add r1, r4, #0x0
	mov r2, #0x1
	str r5, [r4, #0xc]
	bl FUN_0200CA98
	pop {r4-r6, pc}
	nop
_02011674: .word FUN_020116E0 

	thumb_func_start FUN_02011678
FUN_02011678: ; 0x02011678
	push {r3-r5, lr}
	mov r4, #0xc
	add r0, #0x68
	mul r4, r3
	add r5, r0, r4
	str r1, [r0, r4]
	str r2, [r5, #0x4]
	ldr r0, _02011694 ; =FUN_020116FC
	add r1, r5, #0x0
	mov r2, #0x1
	str r3, [r5, #0x8]
	bl FUN_0200CA98
	pop {r3-r5, pc}
	.balign 4
_02011694: .word FUN_020116FC 

	thumb_func_start FUN_02011698
FUN_02011698: ; 0x02011698
	push {r3-r7, lr}
	ldr r5, [sp, #0x20]
	add r7, r1, #0x0
	add r0, #0x80
	lsl r1, r5, #0x5
	add r6, r0, r1
	add r4, r2, #0x0
	ldr r0, [sp, #0x1c]
	add r2, r3, #0x0
	lsl r3, r0, #0x4
	add r1, r6, r3
	strh r7, [r6, r3]
	strh r4, [r1, #0x2]
	strh r2, [r1, #0x4]
	ldr r2, [sp, #0x18]
	strh r2, [r1, #0x6]
	str r0, [r1, #0x8]
	ldr r0, _020116C8 ; =FUN_02011714
	mov r2, #0x1
	str r5, [r1, #0xc]
	bl FUN_0200CA98
	pop {r3-r7, pc}
	nop
_020116C8: .word FUN_02011714 

	thumb_func_start FUN_020116CC
FUN_020116CC: ; 0x020116CC
	push {r4, lr}
	add r4, r0, #0x0
	ldmia r1!, {r0-r1}
	bl FUN_02011480
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020116E0
FUN_020116E0: ; 0x020116E0
	push {r4, lr}
	add r3, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r3, #0x0]
	ldr r1, [r3, #0x4]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_020114AC
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020116FC
FUN_020116FC: ; 0x020116FC
	push {r4, lr}
	add r2, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r2, #0x0]
	ldr r1, [r2, #0x4]
	ldr r2, [r2, #0x8]
	bl FUN_02011534
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}

	thumb_func_start FUN_02011714
FUN_02011714: ; 0x02011714
	push {r3-r5, lr}
	sub sp, #0x8
	add r3, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r3, #0x8]
	mov r1, #0x2
	str r0, [sp, #0x0]
	ldr r0, [r3, #0xc]
	mov r2, #0x4
	str r0, [sp, #0x4]
	mov r0, #0x0
	mov r5, #0x6
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl FUN_02011574
	add r0, r4, #0x0
	bl FUN_0200CAB4
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02011744
FUN_02011744: ; 0x02011744
	push {r4-r7, lr}
	sub sp, #0xc
	add r7, r1, #0x0
	str r0, [sp, #0x4]
	add r0, r7, #0x0
	mov r1, #0x68
	bl FUN_02016998
	str r0, [sp, #0x8]
	cmp r0, #0x0
	bne _0201175E
	bl ErrorHandling
_0201175E:
	ldr r4, [sp, #0x8]
	ldr r5, [sp, #0x8]
	mov r6, #0x0
	add r4, #0x30
_02011766:
	mov r0, #0x23
	add r1, r6, #0x0
	mov r2, #0x0
	add r3, r4, #0x0
	str r7, [sp, #0x0]
	bl FUN_02006C30
	str r0, [r5, #0x0]
	cmp r0, #0x0
	bne _0201177E
	bl ErrorHandling
_0201177E:
	add r6, r6, #0x1
	add r4, r4, #0x4
	add r5, r5, #0x4
	cmp r6, #0xc
	blt _02011766
	ldr r0, [sp, #0x4]
	mov r1, #0x14
	add r4, r0, #0x0
	mul r4, r1
	add r0, r7, #0x0
	add r1, r4, #0x0
	bl FUN_02016998
	ldr r1, [sp, #0x8]
	cmp r0, #0x0
	str r0, [r1, #0x60]
	bne _020117A4
	bl ErrorHandling
_020117A4:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x8]
	add r2, r4, #0x0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x60]
	mov r1, #0x0
	blx Call_FillMemWithValue
	ldr r0, [sp, #0x8]
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_020117BC
FUN_020117BC: ; 0x020117BC
	push {r4-r6, lr}
	add r6, r0, #0x0
	bne _020117C6
	bl ErrorHandling
_020117C6:
	mov r4, #0x0
	add r5, r6, #0x0
_020117CA:
	ldr r0, [r5, #0x0]
	bl FUN_02016A18
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0xc
	blt _020117CA
	ldr r0, [r6, #0x60]
	bl FUN_02016A18
	add r0, r6, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_020117E8
FUN_020117E8: ; 0x020117E8
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r0, #0x0
	bne _020117F4
	bl ErrorHandling
_020117F4:
	ldr r0, [r5, #0x0]
	bl FUN_02011BA0
	add r4, r0, #0x0
	bne _02011802
	bl ErrorHandling
_02011802:
	ldr r0, [r5, #0x10]
	add r3, sp, #0x8
	str r0, [r4, #0x8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r1, [r5, #0x4]
	ldr r2, [r5, #0x2c]
	ldrb r0, [r1, #0x7]
	ldrb r1, [r1, #0x8]
	bl FUN_02011CA4
	add r6, r0, #0x0
	mov r1, #0x24
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl FUN_020169D8
	add r7, r0, #0x0
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl FUN_02016998
	str r0, [r4, #0x0]
	str r6, [r4, #0x4]
	ldr r0, [r5, #0x28]
	add r1, sp, #0x8
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x2c]
	add r2, r7, #0x0
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x4]
	ldr r3, [r5, #0x14]
	bl FUN_02011D2C
	add r0, r5, #0x0
	add r1, sp, #0x8
	add r2, r7, #0x0
	add r3, r4, #0x0
	bl FUN_02011EAC
	add r0, r7, #0x0
	bl FUN_02016A18
	add r0, sp, #0x8
	bl FUN_02011FDC
	add r0, r4, #0x0
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_02011870
FUN_02011870: ; 0x02011870
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201187A
	bl ErrorHandling
_0201187A:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02011884
	bl ErrorHandling
_02011884:
	add r0, r4, #0x0
	bl FUN_02011F00
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02011B90
	pop {r4, pc}

	thumb_func_start FUN_02011898
FUN_02011898: ; 0x02011898
	push {r4-r5, lr}
	sub sp, #0x14
	add r3, sp, #0x0
	add r5, r0, #0x0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r4, r1, #0x0
	ldrb r0, [r5, #0x7]
	ldrb r1, [r5, #0x8]
	bl FUN_02011CA4
	add r0, sp, #0x0
	add r1, r4, #0x0
	bl FUN_02011E58
	add r4, r0, #0x0
	add r0, sp, #0x0
	bl FUN_02011FDC
	add r0, r4, #0x0
	add sp, #0x14
	pop {r4-r5, pc}

	thumb_func_start FUN_020118C4
FUN_020118C4: ; 0x020118C4
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	add r7, r2, #0x0
	str r1, [sp, #0x0]
	cmp r5, #0x0
	bne _020118D6
	bl ErrorHandling
_020118D6:
	ldr r0, [sp, #0x0]
	str r0, [r5, #0xc]
	str r7, [r5, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x8]
	lsl r7, r7, #0xc
	cmp r0, #0x0
	beq _020118F8
	bl FUN_0202011C
	ldr r2, [r0, #0x0]
	ldr r1, [sp, #0x0]
	ldr r0, [r0, #0x4]
	add r1, r1, r2
	str r1, [sp, #0x0]
	add r7, r7, r0
_020118F8:
	mov r6, #0x0
	str r6, [sp, #0xc]
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	ble _02011932
	add r4, r6, #0x0
_02011904:
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	ldr r0, [r0, #0x4]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x0]
	add r0, r0, r1
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	add r1, sp, #0x4
	add r0, r0, r4
	ldr r0, [r0, #0x8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	bl FUN_02020044
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011904
_02011932:
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011938
FUN_02011938: ; 0x02011938
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	bne _02011944
	bl ErrorHandling
_02011944:
	ldr r0, [r5, #0x8]
	cmp r0, #0x0
	beq _0201199E
	ldr r1, [r5, #0xc]
	lsl r1, r1, #0xc
	str r1, [sp, #0x0]
	ldr r1, [r5, #0x10]
	lsl r7, r1, #0xc
	bl FUN_0202011C
	ldr r2, [r0, #0x0]
	ldr r0, [r0, #0x4]
	mov r6, #0x0
	ldr r1, [sp, #0x0]
	str r6, [sp, #0xc]
	add r7, r7, r0
	add r1, r1, r2
	ldr r0, [r5, #0x4]
	str r1, [sp, #0x0]
	cmp r0, #0x0
	ble _0201199E
	add r4, r6, #0x0
_02011970:
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	ldr r0, [r0, #0x4]
	lsl r1, r0, #0xc
	ldr r0, [sp, #0x0]
	add r0, r0, r1
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	add r1, sp, #0x4
	add r0, r0, r4
	ldr r0, [r0, #0x8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	bl FUN_02020044
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011970
_0201199E:
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020119A4
FUN_020119A4: ; 0x020119A4
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	cmp r5, #0x0
	bne _020119B4
	bl ErrorHandling
_020119B4:
	cmp r4, #0x0
	bne _020119BC
	bl ErrorHandling
_020119BC:
	cmp r6, #0x0
	bne _020119C4
	bl ErrorHandling
_020119C4:
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0x0]
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_020119D0
FUN_020119D0: ; 0x020119D0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _020119DE
	bl ErrorHandling
_020119DE:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _020119FC
	add r4, r6, #0x0
_020119E8:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_020200A0
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _020119E8
_020119FC:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011A00
FUN_02011A00: ; 0x02011A00
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011A0E
	bl ErrorHandling
_02011A0E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011A2C
	add r4, r6, #0x0
_02011A18:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_02020238
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011A18
_02011A2C:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011A30
FUN_02011A30: ; 0x02011A30
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011A3E
	bl ErrorHandling
_02011A3E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011A5C
	add r4, r6, #0x0
_02011A48:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_02020310
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011A48
_02011A5C:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011A60
FUN_02011A60: ; 0x02011A60
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011A6E
	bl ErrorHandling
_02011A6E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011A8C
	add r4, r6, #0x0
_02011A78:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_02020248
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011A78
_02011A8C:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011A90
FUN_02011A90: ; 0x02011A90
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011A9E
	bl ErrorHandling
_02011A9E:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011ABC
	add r4, r6, #0x0
_02011AA8:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_020202A8
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011AA8
_02011ABC:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011AC0
FUN_02011AC0: ; 0x02011AC0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011ACE
	bl ErrorHandling
_02011ACE:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011AEC
	add r4, r6, #0x0
_02011AD8:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_020202DC
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011AD8
_02011AEC:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011AF0
FUN_02011AF0: ; 0x02011AF0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r7, r1, #0x0
	cmp r5, #0x0
	bne _02011AFE
	bl ErrorHandling
_02011AFE:
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011B1C
	add r4, r6, #0x0
_02011B08:
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	ldr r0, [r0, r4]
	bl FUN_02020398
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011B08
_02011B1C:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02011B20
FUN_02011B20: ; 0x02011B20
	push {r4-r7, lr}
	sub sp, #0xc
	add r6, r0, #0x0
	ldr r0, [sp, #0x20]
	add r7, r1, #0x0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, #0x7]
	str r0, [sp, #0x24]
	add r0, r3, #0x0
	add r0, r7, r0
	str r2, [sp, #0x0]
	str r3, [sp, #0x4]
	cmp r1, r0
	bge _02011B42
	bl ErrorHandling
_02011B42:
	ldrb r2, [r6, #0x8]
	ldr r1, [sp, #0x0]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	cmp r2, r0
	bge _02011B52
	bl ErrorHandling
_02011B52:
	ldr r0, [sp, #0x0]
	mov r4, #0x0
	cmp r0, #0x0
	ble _02011B8A
	lsl r0, r7, #0x5
	add r5, r4, #0x0
	str r0, [sp, #0x8]
_02011B60:
	ldrb r1, [r6, #0x7]
	ldr r0, [sp, #0x20]
	add r2, r1, #0x0
	add r0, r4, r0
	mul r2, r0
	ldr r0, [sp, #0x4]
	lsl r1, r5, #0x5
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x5
	add r0, r0, r1
	ldr r1, [r6, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #0x8]
	blx memcpy
	ldr r0, [sp, #0x0]
	add r4, r4, #0x1
	add r5, r5, r7
	cmp r4, r0
	blt _02011B60
_02011B8A:
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_02011B90
FUN_02011B90: ; 0x02011B90
	mov r2, #0x14
	mov r1, #0x0
_02011B94:
	strb r1, [r0, #0x0]
	add r0, r0, #0x1
	sub r2, r2, #0x1
	bne _02011B94
	bx lr
	.balign 4

	thumb_func_start FUN_02011BA0
FUN_02011BA0: ; 0x02011BA0
	ldr r1, [r0, #0x64]
	mov r2, #0x0
	cmp r1, #0x0
	ble _02011BC4
	ldr r3, [r0, #0x60]
_02011BAA:
	ldr r1, [r3, #0x0]
	cmp r1, #0x0
	bne _02011BBA
	ldr r1, [r0, #0x60]
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02011BBA:
	ldr r1, [r0, #0x64]
	add r2, r2, #0x1
	add r3, #0x14
	cmp r2, r1
	blt _02011BAA
_02011BC4:
	mov r0, #0x0
	bx lr

	thumb_func_start FUN_02011BC8
FUN_02011BC8: ; 0x02011BC8
	push {r3-r4}
	ldr r4, _02011BF0 ; =0x020ED398
	mov r3, #0x0
_02011BCE:
	ldrb r2, [r4, #0x0]
	cmp r2, r0
	bgt _02011BE0
	ldrb r2, [r4, #0x1]
	cmp r2, r1
	bgt _02011BE0
	add r0, r3, #0x0
	pop {r3-r4}
	bx lr
_02011BE0:
	add r3, r3, #0x1
	add r4, r4, #0x2
	cmp r3, #0xc
	blt _02011BCE
	mov r0, #0xc
	pop {r3-r4}
	bx lr
	nop
_02011BF0: .word 0x020ED398

	thumb_func_start FUN_02011BF4
FUN_02011BF4: ; 0x02011BF4
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r0, r2, #0x0
	bl FUN_02011FAC
	ldr r1, [r6, #0x10]
	add r4, r0, #0x0
	bl FUN_02011FF4
	ldr r0, [r5, #0x8]
	ldr r1, [r5, #0xc]
	bl FUN_02011BC8
	str r0, [r4, #0x8]
	ldr r0, [r5, #0x4]
	ldr r1, _02011C9C ; =0x020ED398
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x0]
	ldr r6, _02011CA0 ; =0x020ED399
	str r0, [r4, #0x4]
	ldr r0, [r4, #0x8]
	ldr r2, [r5, #0x8]
	lsl r3, r0, #0x1
	ldrb r0, [r1, r3]
	ldrb r3, [r6, r3]
	sub r2, r2, r0
	ldr r0, [r5, #0xc]
	sub r6, r0, r3
	cmp r2, #0x0
	ble _02011C5C
	str r0, [r5, #0x1c]
	str r2, [r5, #0x18]
	ldr r0, [r5, #0x0]
	str r0, [r5, #0x10]
	ldr r2, [r4, #0x8]
	ldr r0, [r5, #0x4]
	lsl r2, r2, #0x1
	ldrb r1, [r1, r2]
	add r0, r0, r1
	str r0, [r5, #0x14]
	add r0, r5, #0x0
	add r0, #0x20
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _02011C54
	bl ErrorHandling
_02011C54:
	add r0, r5, #0x0
	mov r1, #0x1
	add r0, #0x20
	strb r1, [r0, #0x0]
_02011C5C:
	cmp r6, #0x0
	ble _02011C72
	ldr r0, [r4, #0x8]
	ldr r2, [r5, #0x0]
	lsl r1, r0, #0x1
	ldr r0, _02011CA0 ; =0x020ED399
	ldrb r0, [r0, r1]
	add r0, r2, r0
	str r0, [r5, #0x0]
	str r6, [r5, #0xc]
	b _02011C96
_02011C72:
	add r0, r5, #0x0
	add r0, #0x20
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _02011C92
	add r3, r5, #0x0
	add r3, #0x10
	add r2, r5, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	mov r0, #0x0
	add r5, #0x20
	strb r0, [r5, #0x0]
	b _02011C96
_02011C92:
	mov r0, #0x1
	pop {r4-r6, pc}
_02011C96:
	mov r0, #0x0
	pop {r4-r6, pc}
	nop
_02011C9C: .word 0x020ED398
_02011CA0: .word 0x020ED399

	thumb_func_start FUN_02011CA4
FUN_02011CA4: ; 0x02011CA4
	push {r3-r7, lr}
	sub sp, #0x38
	add r7, r0, #0x0
	str r1, [sp, #0x0]
	add r5, r2, #0x0
	add r6, r3, #0x0
	cmp r7, #0x0
	bne _02011CB8
	bl ErrorHandling
_02011CB8:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	bne _02011CC2
	bl ErrorHandling
_02011CC2:
	ldr r0, [sp, #0x0]
	mov r4, #0x0
	str r0, [sp, #0x10]
	str r4, [sp, #0x4]
	str r4, [sp, #0x8]
	str r7, [sp, #0xc]
	add r0, sp, #0x24
	strb r4, [r0, #0x0]
	ldr r0, [sp, #0x0]
	str r4, [sp, #0x2c]
	str r7, [sp, #0x30]
	cmp r0, #0x0
	beq _02011D20
	add r7, sp, #0x4
_02011CDE:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x0]
	bl FUN_02011BC8
	lsl r1, r0, #0x1
	ldr r0, _02011D28 ; =0x020ED398
	add r0, r0, r1
	ldrb r0, [r0, #0x1]
	ldr r1, [sp, #0x4]
	add r1, r1, r0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x10]
	sub r1, r1, r0
	str r1, [sp, #0x34]
	str r0, [sp, #0x10]
_02011CFC:
	add r0, r7, #0x0
	add r1, r6, #0x0
	add r2, r5, #0x0
	add r4, r4, #0x1
	bl FUN_02011BF4
	cmp r0, #0x0
	beq _02011CFC
	add r3, sp, #0x28
	add r2, sp, #0x4
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x0]
	cmp r0, #0x0
	bne _02011CDE
_02011D20:
	add r0, r4, #0x0
	add sp, #0x38
	pop {r3-r7, pc}
	nop
_02011D28: .word 0x020ED398

	thumb_func_start FUN_02011D2C
FUN_02011D2C: ; 0x02011D2C
	push {r4-r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0x0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r6, r3, #0x0
	cmp r0, #0x1
	bne _02011D4E
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	b _02011D52
_02011D4E:
	ldr r0, _02011D98 ; =0x04001000
	ldr r1, [r0, #0x0]
_02011D52:
	ldr r0, _02011D9C ; =0x00300010
	add r7, r1, #0x0
	and r7, r0
	add r0, r7, #0x0
	bl FUN_0201DED0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r4, [r0, #0xc]
	cmp r4, r0
	beq _02011D92
_02011D68:
	add r0, r5, #0x0
	blx FUN_020B1A24
	str r7, [sp, #0x0]
	ldr r0, [sp, #0x30]
	str r6, [sp, #0x4]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0x0
	add r2, r5, #0x0
	bl FUN_02011DA0
	add r6, r0, #0x0
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0x24
	cmp r4, r0
	bne _02011D68
_02011D92:
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_02011D98: .word 0x04001000
_02011D9C: .word 0x00300010

	thumb_func_start FUN_02011DA0
FUN_02011DA0: ; 0x02011DA0
	push {r4-r7, lr}
	sub sp, #0x14
	add r6, r1, #0x0
	str r0, [sp, #0x8]
	ldr r0, [r6, #0x8]
	add r5, r2, #0x0
	lsl r1, r0, #0x1
	ldr r0, _02011E44 ; =0x020ED398
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	ldr r0, _02011E48 ; =0x020ED399
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	add r4, r1, #0x0
	mul r4, r0
	str r0, [sp, #0xc]
	cmp r4, r3
	bge _02011DC6
	add r4, r3, #0x0
_02011DC6:
	lsl r4, r4, #0x5
	ldr r0, [sp, #0x34]
	add r1, r4, #0x0
	bl FUN_020169D8
	add r7, r0, #0x0
	ldr r0, [r6, #0x4]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x0]
	str r7, [sp, #0x4]
	ldr r0, [sp, #0x8]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, #0x0]
	bl FUN_02011B20
	add r0, r7, #0x0
	add r1, r4, #0x0
	blx DC_FlushRange
	ldr r0, [sp, #0x30]
	cmp r0, #0x1
	bne _02011E08
	ldr r6, [sp, #0x2c]
	add r0, r7, #0x0
	add r1, r6, #0x0
	add r2, r4, #0x0
	blx FUN_020C92F4
	mov r0, #0x1
	str r6, [r5, #0x4]
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	b _02011E1A
_02011E08:
	ldr r6, [sp, #0x2c]
	add r0, r7, #0x0
	add r1, r6, #0x0
	add r2, r4, #0x0
	blx FUN_020C9294
	ldr r0, _02011E4C ; =0x04001000
	str r6, [r5, #0x8]
	ldr r1, [r0, #0x0]
_02011E1A:
	ldr r0, _02011E50 ; =0x00300010
	and r0, r1
	str r0, [r5, #0x20]
	ldr r0, _02011E54 ; =0x0000FFFF
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #0x3
	str r0, [r5, #0x14]
	mov r0, #0x0
	str r0, [r5, #0x18]
	mov r0, #0x1
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x20]
	add r0, r7, #0x0
	bl FUN_02016A18
	ldr r0, [sp, #0x2c]
	add r0, r0, r4
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02011E44: .word 0x020ED398
_02011E48: .word 0x020ED399
_02011E4C: .word 0x04001000
_02011E50: .word 0x00300010
_02011E54: .word 0x0000FFFF

	thumb_func_start FUN_02011E58
FUN_02011E58: ; 0x02011E58
	push {r3-r7, lr}
	add r4, r0, #0x0
	cmp r1, #0x1
	bne _02011E68
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0x0]
	b _02011E6C
_02011E68:
	ldr r0, _02011EA0 ; =0x04001000
	ldr r1, [r0, #0x0]
_02011E6C:
	ldr r0, _02011EA4 ; =0x00300010
	and r0, r1
	bl FUN_0201DED0
	ldr r2, [r4, #0xc]
	mov r3, #0x0
	cmp r2, r4
	beq _02011E9A
	ldr r1, _02011EA8 ; =0x020ED398
_02011E7E:
	ldr r5, [r2, #0x8]
	lsl r5, r5, #0x1
	add r7, r1, r5
	ldrb r6, [r1, r5]
	ldrb r5, [r7, #0x1]
	mul r5, r6
	cmp r5, r0
	bge _02011E90
	add r5, r0, #0x0
_02011E90:
	ldr r2, [r2, #0xc]
	lsl r5, r5, #0x5
	add r3, r3, r5
	cmp r2, r4
	bne _02011E7E
_02011E9A:
	add r0, r3, #0x0
	pop {r3-r7, pc}
	nop
_02011EA0: .word 0x04001000
_02011EA4: .word 0x00300010
_02011EA8: .word 0x020ED398

	thumb_func_start FUN_02011EAC
FUN_02011EAC: ; 0x02011EAC
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	add r0, r1, #0x0
	ldr r4, [r0, #0xc]
	str r1, [sp, #0x4]
	add r7, r2, #0x0
	add r6, r3, #0x0
	cmp r4, r0
	beq _02011EFC
	mov r5, #0x0
_02011EC2:
	ldr r0, [sp, #0x0]
	add r1, r4, #0x0
	add r2, r7, #0x0
	bl FUN_02011F24
	ldr r1, [r6, #0x0]
	str r0, [r1, r5]
	ldr r0, [r6, #0x0]
	ldr r0, [r0, r5]
	cmp r0, #0x0
	bne _02011EDC
	bl ErrorHandling
_02011EDC:
	ldr r0, [r4, #0x0]
	add r7, #0x24
	lsl r1, r0, #0x3
	ldr r0, [r6, #0x0]
	add r0, r0, r5
	str r1, [r0, #0x4]
	ldr r0, [r4, #0x4]
	lsl r1, r0, #0x3
	ldr r0, [r6, #0x0]
	add r0, r0, r5
	str r1, [r0, #0x8]
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #0x4]
	add r5, #0xc
	cmp r4, r0
	bne _02011EC2
_02011EFC:
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02011F00
FUN_02011F00: ; 0x02011F00
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02011F20
	add r4, r6, #0x0
_02011F0E:
	ldr r0, [r5, #0x0]
	ldr r0, [r0, r4]
	bl FUN_0201FFC8
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0xc
	cmp r6, r0
	blt _02011F0E
_02011F20:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02011F24
FUN_02011F24: ; 0x02011F24
	push {r4-r5, lr}
	sub sp, #0x44
	add r5, r0, #0x0
	mov r0, #0x0
	str r2, [sp, #0x0]
	str r0, [sp, #0x4]
	add r4, r1, #0x0
	ldr r1, [r5, #0xc]
	str r1, [sp, #0x8]
	ldr r1, [r4, #0x8]
	ldr r2, [r5, #0x0]
	lsl r1, r1, #0x2
	add r1, r2, r1
	ldr r1, [r1, #0x30]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	add r1, sp, #0x20
	strb r2, [r1, #0x0]
	ldr r1, [r5, #0x8]
	str r1, [sp, #0x24]
	add r1, sp, #0x0
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x24]
	str r1, [sp, #0x38]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0x2c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _02011F80
	bl FUN_0202011C
	add r3, r0, #0x0
	ldmia r3!, {r0-r1}
	add r2, sp, #0x2c
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
_02011F80:
	ldr r1, [r4, #0x0]
	ldr r2, [r5, #0x18]
	lsl r1, r1, #0x3
	add r1, r2, r1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r1, [r4, #0x4]
	ldr r2, [r5, #0x1c]
	lsl r1, r1, #0x3
	add r1, r2, r1
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl FUN_0201FF84
	add sp, #0x44
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_02011FAC
FUN_02011FAC: ; 0x02011FAC
	push {r4, lr}
	mov r1, #0x14
	bl FUN_020169D8
	add r4, r0, #0x0
	bne _02011FBC
	bl ErrorHandling
_02011FBC:
	mov r0, #0x0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02011FC8
FUN_02011FC8: ; 0x02011FC8
	push {r4, lr}
	add r4, r0, #0x0
	bne _02011FD2
	bl ErrorHandling
_02011FD2:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02011FDC
FUN_02011FDC: ; 0x02011FDC
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	cmp r0, r5
	beq _02011FF2
_02011FE6:
	ldr r4, [r0, #0xc]
	bl FUN_02011FC8
	add r0, r4, #0x0
	cmp r4, r5
	bne _02011FE6
_02011FF2:
	pop {r3-r5, pc}

	thumb_func_start FUN_02011FF4
FUN_02011FF4: ; 0x02011FF4
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r2, [r1, #0xc]
	str r0, [r2, #0x10]
	str r0, [r1, #0xc]
	bx lr
	.balign 4

	thumb_func_start FUN_02012004
FUN_02012004: ; 0x02012004
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	ldr r6, [sp, #0x20]
	str r1, [sp, #0x4]
	add r5, r2, #0x0
	add r4, r3, #0x0
	str r0, [sp, #0x24]
	mov r7, #0x0
_02012018:
	ldr r1, [r4, #0x0]
	ldr r0, [sp, #0x4]
	ldr r2, [r5, #0x0]
	add r0, r0, r1
	ldr r1, [sp, #0x0]
	add r1, r1, r2
	add r2, r6, #0x0
	blx memcpy
	ldr r1, [r5, #0x0]
	ldr r0, [sp, #0x24]
	add r7, r7, #0x1
	add r0, r1, r0
	str r0, [r5, #0x0]
	ldr r0, [r4, #0x0]
	add r0, r0, r6
	str r0, [r4, #0x0]
	cmp r7, #0x8
	blt _02012018
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02012044
FUN_02012044: ; 0x02012044
	push {r4-r6, lr}
	add r5, r3, #0x0
	bl LoadFromNarc_2
	add r4, r0, #0x0
	bne _02012054
	bl ErrorHandling
_02012054:
	add r0, r4, #0x0
	add r1, r5, #0x0
	blx FUN_020B0088
	add r6, r0, #0x0
	cmp r5, #0x0
	bne _02012066
	bl ErrorHandling
_02012066:
	cmp r6, #0x0
	bne _0201206E
	bl ErrorHandling
_0201206E:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02012078
FUN_02012078: ; 0x02012078
	push {r4-r7, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x40]
	str r0, [sp, #0x8]
	add r6, r0, r2
	ldrh r0, [r4, #0x2]
	str r1, [sp, #0xc]
	add r5, r3, #0x0
	cmp r0, r6
	bge _02012090
	bl ErrorHandling
_02012090:
	ldr r0, [sp, #0xc]
	ldrh r1, [r4, #0x0]
	add r0, r0, r5
	str r0, [sp, #0x14]
	cmp r1, r0
	bge _020120A0
	bl ErrorHandling
_020120A0:
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #0x2]
	lsl r7, r0, #0x2
	ldr r0, [sp, #0xc]
	add r1, r0, #0x0
	mul r1, r7
	ldr r0, [sp, #0x8]
	str r1, [sp, #0x18]
	lsl r1, r0, #0x2
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _0201210A
_020120CC:
	ldr r4, [sp, #0x8]
	add r0, r4, #0x0
	cmp r0, r6
	bge _020120F8
	ldr r0, [sp, #0x18]
	lsl r1, r0, #0x3
	ldr r0, [sp, #0x10]
	add r5, r0, r1
_020120DC:
	str r5, [sp, #0x28]
	mov r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #0x4]
	bl FUN_02012004
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, r6
	blt _020120DC
_020120F8:
	ldr r0, [sp, #0x18]
	add r0, r0, r7
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r0, #0x1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020120CC
_0201210A:
	add sp, #0x2c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_02012110
FUN_02012110: ; 0x02012110
	push {r4-r5}
	sub sp, #0x8
	ldr r2, _02012148 ; =0x020ED3B0
	add r1, sp, #0x0
	ldr r3, [r2, #0x0]
	ldr r2, [r2, #0x4]
	str r3, [sp, #0x0]
	str r2, [sp, #0x4]
	ldr r2, _0201214C ; =0x000001EF
	mov r5, #0x0
	add r3, r2, #0x0
_02012126:
	ldr r4, [r1, #0x0]
	cmp r4, r3
	beq _02012140
	cmp r4, r0
	bne _02012138
	add sp, #0x8
	mov r0, #0x1
	pop {r4-r5}
	bx lr
_02012138:
	add r5, r5, #0x1
	add r1, r1, #0x4
	cmp r5, r2
	blt _02012126
_02012140:
	mov r0, #0x0
	add sp, #0x8
	pop {r4-r5}
	bx lr
	.balign 4
_02012148: .word 0x020ED3B0
_0201214C: .word 0x000001EF

	thumb_func_start FUN_02012150
FUN_02012150: ; 0x02012150
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r3, #0x0
	mov r3, #0x0
	str r3, [sp, #0x8]
	add r3, sp, #0x8
	bl FUN_02012044
	ldr r0, [sp, #0x8]
	ldr r0, [r0, #0x14]
	bl FUN_02008A74
	ldr r0, [sp, #0x34]
	bl FUN_02012110
	ldr r1, [sp, #0x30]
	cmp r1, #0x2
	bne _02012184
	cmp r0, #0x1
	bne _02012184
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x2c]
	bl FUN_02008904
_02012184:
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x4]
	ldr r3, [sp, #0x20]
	add r0, r4, #0x0
	bl FUN_02012078
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_0201219C
FUN_0201219C: ; 0x0201219C
	push {r4-r7, lr}
	sub sp, #0x24
	add r7, r1, #0x0
	add r5, r2, #0x0
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	add r6, r0, #0x0
	mul r1, r2
	add r0, r5, #0x0
	lsl r1, r1, #0x5
	str r3, [sp, #0x20]
	bl FUN_02016998
	add r4, r0, #0x0
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x20]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x3c]
	add r1, r7, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x40]
	add r2, r5, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x44]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, r6, #0x0
	bl FUN_02012150
	add r0, r4, #0x0
	add sp, #0x24
	pop {r4-r7, pc}

	thumb_func_start FUN_020121E8
FUN_020121E8: ; 0x020121E8
	push {r3-r7, lr}
	sub sp, #0x30
	str r3, [sp, #0x8]
	ldr r3, [sp, #0x48]
	str r3, [sp, #0x48]
	mov r3, #0x0
	str r3, [sp, #0x2c]
	bl LoadFromNarc_2
	str r0, [sp, #0x20]
	cmp r0, #0x0
	bne _02012204
	bl ErrorHandling
_02012204:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x2c
	blx FUN_020B0088
	cmp r0, #0x0
	bne _02012214
	bl ErrorHandling
_02012214:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #0x8]
	add r6, r0, r1
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #0x2]
	cmp r0, r6
	bge _02012226
	bl ErrorHandling
_02012226:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0, #0x0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201223C
	bl ErrorHandling
_0201223C:
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x1c]
	bl FUN_02008A74
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #0x2]
	lsl r7, r0, #0x2
	ldr r0, [sp, #0x48]
	add r1, r0, #0x0
	mul r1, r7
	ldr r0, [sp, #0x8]
	str r1, [sp, #0x14]
	lsl r1, r0, #0x2
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0x0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _020122AE
_02012270:
	ldr r4, [sp, #0x8]
	add r0, r4, #0x0
	cmp r0, r6
	bge _0201229C
	ldr r0, [sp, #0x14]
	lsl r1, r0, #0x3
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_02012280:
	str r5, [sp, #0x28]
	mov r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #0x4]
	bl FUN_02012004
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, r6
	blt _02012280
_0201229C:
	ldr r0, [sp, #0x14]
	add r0, r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	add r1, r0, #0x1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _02012270
_020122AE:
	ldr r0, [sp, #0x20]
	bl FUN_02016A18
	add sp, #0x30
	pop {r3-r7, pc}

	thumb_func_start FUN_020122B8
FUN_020122B8: ; 0x020122B8
	push {r4-r7, lr}
	sub sp, #0x14
	add r7, r1, #0x0
	add r5, r2, #0x0
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r6, r0, #0x0
	mul r1, r2
	add r0, r5, #0x0
	lsl r1, r1, #0x5
	str r3, [sp, #0x10]
	bl FUN_02016998
	add r4, r0, #0x0
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0x0
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x30]
	add r2, r5, #0x0
	str r0, [sp, #0x8]
	add r0, r6, #0x0
	str r4, [sp, #0xc]
	bl FUN_020121E8
	add r0, r4, #0x0
	add sp, #0x14
	pop {r4-r7, pc}

	thumb_func_start FUN_020122F4
FUN_020122F4: ; 0x020122F4
	push {r3-r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x4]
	str r0, [sp, #0x14]
	add r0, r2, #0x0
	add r7, r0, r1
	ldr r1, [sp, #0x3c]
	add r0, r3, #0x0
	add r0, r0, r1
	add r1, r3, #0x0
	str r3, [sp, #0x8]
	ldr r5, [sp, #0x40]
	str r0, [sp, #0x10]
	cmp r1, r0
	bge _0201236C
	add r0, r3, #0x0
	lsl r0, r0, #0x5
	str r0, [sp, #0xc]
	add r0, r2, #0x0
	lsl r0, r0, #0x5
	str r0, [sp, #0x1c]
_02012328:
	ldr r6, [sp, #0x4]
	add r0, r6, #0x0
	cmp r0, r7
	bge _0201235A
	ldr r1, [sp, #0x0]
	ldr r0, [sp, #0xc]
	add r2, r1, #0x0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r4, r0, r2
_0201233C:
	ldr r1, [r5, #0x0]
	ldr r0, [sp, #0x14]
	mov r2, #0x20
	add r0, r0, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r4
	blx memcpy
	ldr r0, [r5, #0x0]
	add r6, r6, #0x1
	add r0, #0x20
	str r0, [r5, #0x0]
	add r4, #0x20
	cmp r6, r7
	blt _0201233C
_0201235A:
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x8]
	add r1, r0, #0x1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x8]
	cmp r1, r0
	blt _02012328
_0201236C:
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_02012370
FUN_02012370: ; 0x02012370
	push {r3-r4, lr}
	sub sp, #0x14
	add r4, r2, #0x0
	ldr r2, [r4, #0x8]
	str r2, [sp, #0x0]
	ldr r2, [r4, #0xc]
	str r2, [sp, #0x4]
	ldr r2, [sp, #0x20]
	str r3, [sp, #0x8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x0]
	ldr r3, [r4, #0x4]
	bl FUN_020122F4
	add sp, #0x14
	pop {r3-r4, pc}

	thumb_func_start FUN_02012394
FUN_02012394: ; 0x02012394
	push {r4-r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov r12, r3
	add r5, r2, #0x0
	ldr r6, [sp, #0x94]
	ldr r7, [sp, #0x98]
	ldr r3, _020123FC ; =0x020ED3D8
	str r1, [sp, #0x10]
	str r0, [sp, #0x9c]
	add r2, sp, #0x1c
	mov r4, #0xc
_020123AE:
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	sub r4, r4, #0x1
	bne _020123AE
	mov r0, #0x0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x0]
	str r6, [sp, #0x4]
	ldr r0, [sp, #0xc]
	add r2, r5, #0x0
	mov r3, r12
	str r7, [sp, #0x8]
	bl FUN_020122B8
	str r0, [sp, #0x14]
	mov r4, #0x0
	add r5, sp, #0x1c
_020123D4:
	ldr r0, [sp, #0x14]
	add r1, r7, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x9c]
	add r2, r5, #0x0
	str r0, [sp, #0x4]
	add r0, r6, #0x0
	add r3, sp, #0x18
	bl FUN_02012370
	add r4, r4, #0x1
	add r5, #0x10
	cmp r4, #0x6
	blt _020123D4
	ldr r0, [sp, #0x14]
	bl FUN_02016A18
	add sp, #0x7c
	pop {r4-r7, pc}
	nop
_020123FC: .word 0x020ED3D8

	thumb_func_start FUN_02012400
FUN_02012400: ; 0x02012400
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r3, #0x4]
	str r4, [sp, #0x0]
	ldr r4, [r3, #0x8]
	str r4, [sp, #0x4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #0x8]
	ldr r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r3, [r3, #0x0]
	bl FUN_02012394
	add sp, #0x10
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02012420
FUN_02012420: ; 0x02012420
	push {r4-r7, lr}
	sub sp, #0x14
	ldr r4, _02012448 ; =0x020ED3B8
	add r5, r3, #0x0
	add r3, sp, #0x4
	add r7, r0, #0x0
	mov r12, r1
	add r6, r3, #0x0
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r7, #0x0
	mov r1, r12
	add r3, r6, #0x0
	str r5, [sp, #0x0]
	bl FUN_02012400
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02012448: .word 0x020ED3B8

	thumb_func_start FUN_0201244C
FUN_0201244C: ; 0x0201244C
	push {r3-r7, lr}
	add r6, r1, #0x0
	mov r1, #0x32
	add r7, r2, #0x0
	add r5, r0, #0x0
	add r0, r7, #0x0
	lsl r1, r1, #0x6
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	add r3, r4, #0x0
	bl FUN_02012420
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02012470
FUN_02012470: ; 0x02012470
	push {r3-r7, lr}
	add r7, r2, #0x0
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r0, r7, #0x0
	mov r1, #0x20
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, r6, #0x0
	add r2, r7, #0x0
	bl LoadFromNarc_2
	add r1, sp, #0x0
	add r5, r0, #0x0
	blx FUN_020B0138
	cmp r0, #0x1
	beq _0201249C
	bl ErrorHandling
_0201249C:
	ldr r0, [sp, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	blx MIi_CpuCopy16
	add r0, r5, #0x0
	bl FUN_02016A18
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020124B4
FUN_020124B4: ; 0x020124B4
	push {r4-r7, lr}
	sub sp, #0x8c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xac]
	mov r12, r3
	add r5, r2, #0x0
	ldr r6, [sp, #0xa4]
	ldr r7, [sp, #0xa8]
	ldr r3, _0201252C ; =0x020ED438
	str r1, [sp, #0x20]
	str r0, [sp, #0xac]
	add r2, sp, #0x2c
	mov r4, #0xc
_020124CE:
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	sub r4, r4, #0x1
	bne _020124CE
	mov r0, #0x0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x0]
	str r6, [sp, #0x4]
	ldr r0, [sp, #0xb0]
	str r7, [sp, #0x8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb4]
	add r2, r5, #0x0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xb8]
	mov r3, r12
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl FUN_0201219C
	str r0, [sp, #0x24]
	mov r4, #0x0
	add r5, sp, #0x2c
_02012504:
	ldr r0, [sp, #0x24]
	add r1, r7, #0x0
	str r0, [sp, #0x0]
	ldr r0, [sp, #0xac]
	add r2, r5, #0x0
	str r0, [sp, #0x4]
	add r0, r6, #0x0
	add r3, sp, #0x28
	bl FUN_02012370
	add r4, r4, #0x1
	add r5, #0x10
	cmp r4, #0x6
	blt _02012504
	ldr r0, [sp, #0x24]
	bl FUN_02016A18
	add sp, #0x8c
	pop {r4-r7, pc}
	nop
_0201252C: .word 0x020ED438

	thumb_func_start FUN_02012530
FUN_02012530: ; 0x02012530
	push {r4, lr}
	sub sp, #0x20
	ldr r4, [r3, #0x4]
	str r4, [sp, #0x0]
	ldr r4, [r3, #0x8]
	str r4, [sp, #0x4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #0x8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x1c]
	ldr r3, [r3, #0x0]
	bl FUN_020124B4
	add sp, #0x20
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02012560
FUN_02012560: ; 0x02012560
	push {r4-r7, lr}
	sub sp, #0x24
	ldr r4, _02012598 ; =0x020ED3C8
	add r5, r3, #0x0
	add r3, sp, #0x14
	add r7, r0, #0x0
	mov r12, r1
	add r6, r3, #0x0
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [sp, #0x38]
	str r5, [sp, #0x0]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x3c]
	mov r1, r12
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x40]
	add r3, r6, #0x0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	add r0, r7, #0x0
	bl FUN_02012530
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4
_02012598: .word 0x020ED3C8

	thumb_func_start FUN_0201259C
FUN_0201259C: ; 0x0201259C
	push {r3, lr}
	blx RTC_Init
	ldr r3, _020125CC ; =0x021C4808
	mov r0, #0x0
	add r2, r3, #0x0
	add r1, r0, #0x0
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r1, _020125D0 ; =0x021C4808
	str r0, [r1, #0x0]
	str r0, [r1, #0x4]
	str r0, [r1, #0x8]
	add r0, r3, #0x0
	bl FUN_02012634
	pop {r3, pc}
	.balign 4
_020125CC: .word 0x021C4808
_020125D0: .word 0x021C4808

	thumb_func_start FUN_020125D4
FUN_020125D4: ; 0x020125D4
	push {r3, lr}
	ldr r0, _020125F4 ; =0x021C4808
	ldr r1, [r0, #0x4]
	cmp r1, #0x0
	bne _020125F2
	ldr r1, [r0, #0x8]
	add r1, r1, #0x1
	str r1, [r0, #0x8]
	cmp r1, #0xa
	ble _020125F2
	mov r1, #0x0
	str r1, [r0, #0x8]
	ldr r0, _020125F8 ; =0x021C4808
	bl FUN_02012634
_020125F2:
	pop {r3, pc}
	.balign 4
_020125F4: .word 0x021C4808
_020125F8: .word 0x021C4808

	thumb_func_start FUN_020125FC
FUN_020125FC: ; 0x020125FC
	push {r4, lr}
	add r4, r1, #0x0
	str r0, [r4, #0xc]
	cmp r0, #0x0
	beq _0201260A
	bl ErrorHandling
_0201260A:
	add r3, r4, #0x0
	mov r0, #0x1
	add r2, r4, #0x0
	add r3, #0x2c
	str r0, [r4, #0x0]
	ldmia r3!, {r0-r1}
	add r2, #0x10
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	add r3, r4, #0x0
	add r3, #0x3c
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x20
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x4]
	pop {r4, pc}

	thumb_func_start FUN_02012634
FUN_02012634: ; 0x02012634
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0x1
	str r0, [r4, #0x4]
	add r0, r4, #0x0
	add r1, r4, #0x0
	ldr r2, _02012658 ; =FUN_020125FC
	add r0, #0x2c
	add r1, #0x3c
	add r3, r4, #0x0
	blx RTC_GetDateTimeAsync
	str r0, [r4, #0xc]
	cmp r0, #0x0
	beq _02012656
	bl ErrorHandling
_02012656:
	pop {r4, pc}
	.balign 4
_02012658: .word FUN_020125FC 

	thumb_func_start FUN_0201265C
FUN_0201265C: ; 0x0201265C
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _02012684 ; =0x021C4808
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _0201266E
	bl ErrorHandling
_0201266E:
	ldr r2, _02012688 ; =0x021C4818
	ldmia r2!, {r0-r1}
	stmia r5!, {r0-r1}
	ldmia r2!, {r0-r1}
	ldr r2, _0201268C ; =0x021C4828
	stmia r5!, {r0-r1}
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r4, #0x0]
	pop {r3-r5, pc}
	.balign 4
_02012684: .word 0x021C4808
_02012688: .word 0x021C4818
_0201268C: .word 0x021C4828

	thumb_func_start FUN_02012690
FUN_02012690: ; 0x02012690
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _020126AC ; =0x021C4808
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _020126A0
	bl ErrorHandling
_020126A0:
	ldr r2, _020126B0 ; =0x021C4828
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r4, #0x0]
	pop {r4, pc}
	.balign 4
_020126AC: .word 0x021C4808
_020126B0: .word 0x021C4828

	thumb_func_start FUN_020126B4
FUN_020126B4: ; 0x020126B4
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _020126D0 ; =0x021C4808
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _020126C4
	bl ErrorHandling
_020126C4:
	ldr r2, _020126D4 ; =0x021C4818
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	pop {r4, pc}
	.balign 4
_020126D0: .word 0x021C4808
_020126D4: .word 0x021C4818

	thumb_func_start FUN_020126D8
FUN_020126D8: ; 0x020126D8
	push {r3-r4}
	ldr r4, _020126F8 ; =0x021C4828
	mov r0, #0x3c
	ldr r1, [r4, #0x4]
	ldr r3, [r4, #0x8]
	add r2, r1, #0x0
	mul r2, r0
	mov r0, #0xe1
	ldr r1, [r4, #0x0]
	lsl r0, r0, #0x4
	mul r0, r1
	add r0, r2, r0
	add r0, r3, r0
	pop {r3-r4}
	bx lr
	nop
_020126F8: .word 0x021C4828

	thumb_func_start FUN_020126FC
FUN_020126FC: ; 0x020126FC
	ldr r3, _02012704 ; =RTC_ConvertDateTimeToSecond
	ldr r0, _02012708 ; =0x021C4818
	ldr r1, _0201270C ; =0x021C4828
	bx r3
	.balign 4
_02012704: .word RTC_ConvertDateTimeToSecond
_02012708: .word 0x021C4818
_0201270C: .word 0x021C4828

	thumb_func_start FUN_02012710
FUN_02012710: ; 0x02012710
	push {r4-r6, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	ldr r2, [r5, #0x4]
	ldr r0, _02012778 ; =0x020ED4B2
	lsl r1, r2, #0x1
	ldrh r0, [r0, r1]
	ldr r3, [r5, #0x8]
	add r4, r3, r0
	cmp r2, #0x3
	blo _02012752
	ldr r6, [r5, #0x0]
	mov r0, #0x1e
	lsr r2, r6, #0x1f
	lsl r1, r6, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _02012742
	add r0, r6, #0x0
	mov r1, #0x64
	blx _s32_div_f
	cmp r1, #0x0
	bne _02012750
_02012742:
	mov r1, #0x19
	add r0, r6, #0x0
	lsl r1, r1, #0x4
	blx _s32_div_f
	cmp r1, #0x0
	bne _02012752
_02012750:
	add r4, r4, #0x1
_02012752:
	add r6, r5, #0x0
	add r3, sp, #0x0
	add r2, r3, #0x0
	ldmia r6!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r6!, {r0-r1}
	stmia r3!, {r0-r1}
	mov r0, #0x1
	str r0, [sp, #0x4]
	str r0, [sp, #0x8]
	add r0, r2, #0x0
	blx RTC_ConvertDateToDay
	add r0, r5, #0x0
	blx RTC_ConvertDateToDay
	add r0, r4, #0x0
	add sp, #0x10
	pop {r4-r6, pc}
	.balign 4
_02012778: .word 0x020ED4B2

	thumb_func_start FUN_0201277C
FUN_0201277C: ; 0x0201277C
	push {r3, lr}
	bl FUN_02012794
	cmp r0, #0x3
	beq _0201278A
	cmp r0, #0x4
	bne _0201278E
_0201278A:
	mov r0, #0x1
	pop {r3, pc}
_0201278E:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02012794
FUN_02012794: ; 0x02012794
	push {lr}
	sub sp, #0xc
	add r0, sp, #0x0
	bl FUN_02012690
	ldr r0, [sp, #0x0]
	bl FUN_020127A8
	add sp, #0xc
	pop {pc}

	thumb_func_start FUN_020127A8
FUN_020127A8: ; 0x020127A8
	push {r4, lr}
	add r4, r0, #0x0
	bmi _020127B2
	cmp r4, #0x18
	blt _020127B6
_020127B2:
	bl ErrorHandling
_020127B6:
	ldr r0, _020127BC ; =0x020ED4CC
	ldrb r0, [r0, r4]
	pop {r4, pc}
	.balign 4
_020127BC: .word 0x020ED4CC

	thumb_func_start FUN_020127C0
FUN_020127C0: ; 0x020127C0
	push {r4-r7, lr}
	sub sp, #0x24
	add r6, r3, #0x0
	ldr r3, _0201282C ; =0x020ED4A4
	add r4, r0, #0x0
	add r7, r1, #0x0
	add r5, r2, #0x0
	add r2, sp, #0x14
	ldmia r3!, {r0-r1}
	str r2, [sp, #0x0]
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r3, _02012830 ; =0x020ED498
	add r2, sp, #0x8
	ldmia r3!, {r0-r1}
	str r2, [sp, #0x4]
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	ldr r1, [sp, #0x4]
	str r0, [r2, #0x0]
	ldr r0, [sp, #0x0]
	blx RTC_ConvertDateTimeToSecond
	add r2, r1, #0x0
	add r3, r0, #0x0
	mov r1, #0x0
	ldr r0, _02012834 ; =0xBC19137F
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _02012804
	bl ErrorHandling
_02012804:
	sub r0, r4, r5
	mov r12, r7
	mov r0, r12
	sbc r0, r6
	bge _02012818
	sub r0, r5, r4
	sbc r6, r7
	add sp, #0x24
	add r1, r6, #0x0
	pop {r4-r7, pc}
_02012818:
	ldr r0, _02012834 ; =0xBC19137F
	mov r1, #0x0
	sub r0, r0, r4
	sbc r1, r7
	add r0, r5, r0
	adc r6, r1
	add r1, r6, #0x0
	add sp, #0x24
	pop {r4-r7, pc}
	nop
_0201282C: .word 0x020ED4A4
_02012830: .word 0x020ED498
_02012834: .word 0xBC19137F

	thumb_func_start FUN_02012838
FUN_02012838: ; 0x02012838
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x1
	add r0, r4, #0x0
	lsl r1, r1, #0x3
	bl FUN_02016998
	cmp r0, #0x0
	beq _0201286E
	mov r2, #0x0
	cmp r5, #0x0
	bls _02012862
	add r3, r0, #0x0
	add r1, r2, #0x0
_02012856:
	str r1, [r3, #0x0]
	str r1, [r3, #0x4]
	add r2, r2, #0x1
	add r3, #0x8
	cmp r2, r5
	blo _02012856
_02012862:
	mov r1, #0x0
	lsl r2, r2, #0x3
	mvn r1, r1
	str r1, [r0, r2]
	add r1, r0, r2
	str r4, [r1, #0x4]
_0201286E:
	pop {r3-r5, pc}

	thumb_func_start FUN_02012870
FUN_02012870: ; 0x02012870
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_0201291C
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_02012880
FUN_02012880: ; 0x02012880
	push {r3-r7, lr}
	add r6, r1, #0x0
	add r1, sp, #0x0
	add r7, r2, #0x0
	add r5, r3, #0x0
	bl FUN_020128E0
	add r4, r0, #0x0
	beq _0201289E
	add r0, r6, #0x0
	add r1, r7, #0x0
	bl FUN_0200A914
	str r0, [r4, #0x0]
	str r5, [r4, #0x4]
_0201289E:
	pop {r3-r7, pc}

	thumb_func_start FUN_020128A0
FUN_020128A0: ; 0x020128A0
	push {r3-r6, lr}
	sub sp, #0x4
	add r6, r1, #0x0
	add r1, sp, #0x0
	add r5, r2, #0x0
	bl FUN_020128E0
	add r4, r0, #0x0
	beq _020128BE
	ldr r1, [sp, #0x0]
	add r0, r6, #0x0
	bl FUN_02021ACC
	str r0, [r4, #0x0]
	str r5, [r4, #0x4]
_020128BE:
	add sp, #0x4
	pop {r3-r6, pc}
	.balign 4

	thumb_func_start FUN_020128C4
FUN_020128C4: ; 0x020128C4
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r1, #0x0
	add r1, sp, #0x0
	bl FUN_020128E0
	cmp r0, #0x0
	beq _020128DC
	ldr r1, [r4, #0x0]
	str r1, [r0, #0x0]
	ldr r1, [r4, #0x4]
	str r1, [r0, #0x4]
_020128DC:
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_020128E0
FUN_020128E0: ; 0x020128E0
	push {r4, lr}
	ldr r3, [r0, #0x0]
	cmp r3, #0x0
	beq _02012900
	mov r2, #0x0
	mvn r2, r2
_020128EC:
	cmp r3, r2
	bne _020128F8
	bl ErrorHandling
	mov r0, #0x0
	pop {r4, pc}
_020128F8:
	add r0, #0x8
	ldr r3, [r0, #0x0]
	cmp r3, #0x0
	bne _020128EC
_02012900:
	mov r2, #0x0
	mvn r2, r2
	add r4, r0, #0x0
	cmp r3, r2
	beq _02012912
_0201290A:
	add r0, #0x8
	ldr r3, [r0, #0x0]
	cmp r3, r2
	bne _0201290A
_02012912:
	ldr r0, [r0, #0x4]
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201291C
FUN_0201291C: ; 0x0201291C
	push {r4-r6, lr}
	add r5, r0, #0x0
	mov r0, #0x0
	ldr r1, [r5, #0x0]
	mvn r0, r0
	cmp r1, r0
	beq _02012942
	mov r4, #0x0
	add r6, r0, #0x0
_0201292E:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _02012942
	bl FUN_02021A20
	str r4, [r5, #0x0]
	add r5, #0x8
	ldr r0, [r5, #0x0]
	cmp r0, r6
	bne _0201292E
_02012942:
	pop {r4-r6, pc}

	thumb_func_start FUN_02012944
FUN_02012944: ; 0x02012944
	push {r3-r5, lr}
	add r5, r1, #0x0
	mov r1, #0xc
	add r4, r2, #0x0
	bl FUN_02016998
	mov r1, #0x0
	strb r1, [r0, #0x0]
	strb r1, [r0, #0x1]
	strb r1, [r0, #0x2]
	strb r1, [r0, #0x3]
	strb r1, [r0, #0x4]
	strb r1, [r0, #0x5]
	strb r1, [r0, #0x6]
	strb r1, [r0, #0x7]
	strb r1, [r0, #0x8]
	strb r1, [r0, #0x9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	mov r1, #0x1
	strb r1, [r0, #0x9]
	str r5, [r0, #0x0]
	str r4, [r0, #0x4]
	pop {r3-r5, pc}

	thumb_func_start FUN_02012974
FUN_02012974: ; 0x02012974
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201297E
	bl ErrorHandling
_0201297E:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02012988
FUN_02012988: ; 0x02012988
	push {r4, lr}
	add r4, r0, #0x0
	bne _02012992
	bl ErrorHandling
_02012992:
	ldrb r0, [r4, #0x8]
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201299C
FUN_0201299C: ; 0x0201299C
	push {r4, lr}
	add r4, r0, #0x0
	bne _020129A6
	bl ErrorHandling
_020129A6:
	ldrb r1, [r4, #0x8]
	mov r0, #0x1
	eor r0, r1
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020129B4
FUN_020129B4: ; 0x020129B4
	cmp r0, #0x0
	beq _020129C6
	ldrb r1, [r0, #0x9]
	cmp r1, #0x0
	beq _020129C6
	ldrb r2, [r0, #0x8]
	mov r1, #0x1
	eor r1, r2
	strb r1, [r0, #0x8]
_020129C6:
	bx lr

	thumb_func_start FUN_020129C8
FUN_020129C8: ; 0x020129C8
	push {r3, lr}
	mov r0, #0x0
	blx MI_StopDma
	mov r0, #0x0
	blx MI_WaitDma
	pop {r3, pc}

	thumb_func_start FUN_020129D8
FUN_020129D8: ; 0x020129D8
	push {r4-r6, lr}
	add r6, r0, #0x0
	add r5, r1, #0x0
	add r4, r2, #0x0
	cmp r3, #0x1
	bne _020129F2
	mov r0, #0x0
	add r1, r6, #0x0
	add r2, r5, #0x0
	add r3, r4, #0x0
	blx MI_HBlankDmaCopy32
	pop {r4-r6, pc}
_020129F2:
	mov r0, #0x0
	add r1, r6, #0x0
	add r2, r5, #0x0
	add r3, r4, #0x0
	blx MI_HBlankDmaCopy16
	pop {r4-r6, pc}

	thumb_func_start FUN_02012A00
FUN_02012A00: ; 0x02012A00
	push {r3-r5, lr}
	ldr r1, _02012A2C ; =0x0000079C
	add r5, r0, #0x0
	bl FUN_02016998
	ldr r2, _02012A2C ; =0x0000079C
	mov r1, #0x0
	add r4, r0, #0x0
	blx Call_FillMemWithValue
	mov r2, #0x3
	lsl r2, r2, #0x8
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r2, r4, r2
	bl FUN_02012944
	mov r1, #0x6
	lsl r1, r1, #0x8
	str r0, [r4, r1]
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4
_02012A2C: .word 0x0000079C

	thumb_func_start FUN_02012A30
FUN_02012A30: ; 0x02012A30
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r5, #0x0
	bne _02012A42
	bl ErrorHandling
_02012A42:
	ldr r0, _02012AB0 ; =0x00000604
	ldr r0, [r5, r0]
	cmp r0, #0x0
	beq _02012A4E
	bl ErrorHandling
_02012A4E:
	ldr r0, _02012AB4 ; =0x0000078C
	mov r2, #0x0
	strb r4, [r5, r0]
	add r1, r0, #0x1
	strb r6, [r5, r1]
	add r1, r0, #0x0
	add r1, #0xc
	strh r2, [r5, r1]
	add r2, sp, #0x8
	mov r1, #0x14
	ldrsh r2, [r2, r1]
	add r1, r0, #0x0
	add r1, #0xe
	strh r2, [r5, r1]
	add r1, r0, #0x4
	ldr r2, [sp, #0x20]
	add r0, #0x8
	str r2, [r5, r1]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r1, [r5, r0]
	ldr r0, _02012AB8 ; =0x0000060C
	mov r1, #0xc0
	add r0, r5, r0
	add r2, r7, #0x0
	bl FUN_02012B88
	ldr r0, _02012ABC ; =FUN_02012BE4
	ldr r2, [sp, #0x28]
	add r1, r5, #0x0
	bl FUN_0200CA44
	ldr r1, _02012AB0 ; =0x00000604
	mov r2, #0x3
	str r0, [r5, r1]
	ldr r0, _02012AC0 ; =0x00000794
	add r1, r5, #0x0
	ldr r0, [r5, r0]
	lsl r2, r2, #0x8
	blx MIi_CpuClear32
	ldr r0, _02012AC0 ; =0x00000794
	mov r2, #0x3
	lsl r2, r2, #0x8
	ldr r0, [r5, r0]
	add r1, r5, r2
	blx MIi_CpuClear32
	pop {r3-r7, pc}
	.balign 4
_02012AB0: .word 0x00000604
_02012AB4: .word 0x0000078C
_02012AB8: .word 0x0000060C
_02012ABC: .word FUN_02012BE4 
_02012AC0: .word 0x00000794

	thumb_func_start FUN_02012AC4
FUN_02012AC4: ; 0x02012AC4
	push {r4, lr}
	add r4, r0, #0x0
	bne _02012ACE
	bl ErrorHandling
_02012ACE:
	ldr r0, _02012AF8 ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0x0
	beq _02012AF4
	bl FUN_0200CAB4
	ldr r0, _02012AF8 ; =0x00000604
	mov r1, #0x0
	str r1, [r4, r0]
	sub r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_02012988
	ldr r1, _02012AFC ; =0x00000794
	mov r2, #0x3
	ldr r1, [r4, r1]
	lsl r2, r2, #0x8
	blx Call_FillMemWithValue
_02012AF4:
	pop {r4, pc}
	nop
_02012AF8: .word 0x00000604
_02012AFC: .word 0x00000794

	thumb_func_start FUN_02012B00
FUN_02012B00: ; 0x02012B00
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02012AC4
	bl FUN_02012C90
	mov r0, #0x6
	lsl r0, r0, #0x8
	ldr r0, [r4, r0]
	bl FUN_02012974
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02012B20
FUN_02012B20: ; 0x02012B20
	mov r1, #0x6
	lsl r1, r1, #0x8
	ldr r3, _02012B2C ; =FUN_02012988
	ldr r0, [r0, r1]
	bx r3
	nop
_02012B2C: .word FUN_02012988 

	thumb_func_start FUN_02012B30
FUN_02012B30: ; 0x02012B30
	push {r4, lr}
	add r4, r0, #0x0
	beq _02012B5E
	ldr r0, _02012B60 ; =0x00000604
	ldr r1, [r4, r0]
	cmp r1, #0x0
	beq _02012B5E
	sub r0, r0, #0x4
	ldr r0, [r4, r0]
	bl FUN_020129B4
	mov r0, #0x6
	lsl r0, r0, #0x8
	ldr r0, [r4, r0]
	bl FUN_02012988
	add r1, r0, #0x0
	ldr r0, _02012B64 ; =0x00000794
	mov r2, #0x3
	ldr r0, [r4, r0]
	lsl r2, r2, #0x8
	blx MIi_CpuClear32
_02012B5E:
	pop {r4, pc}
	.balign 4
_02012B60: .word 0x00000604
_02012B64: .word 0x00000794

	thumb_func_start FUN_02012B68
FUN_02012B68: ; 0x02012B68
	push {r4, lr}
	add r4, r0, #0x0
	beq _02012B80
	ldr r0, _02012B84 ; =0x00000604
	ldr r0, [r4, r0]
	cmp r0, #0x0
	beq _02012B80
	bl FUN_02012C90
	add r0, r4, #0x0
	bl FUN_02012C98
_02012B80:
	pop {r4, pc}
	nop
_02012B84: .word 0x00000604

	thumb_func_start FUN_02012B88
FUN_02012B88: ; 0x02012B88
	push {r4-r7, lr}
	sub sp, #0xc
	mov r4, #0x0
	add r7, r1, #0x0
	add r5, r0, #0x0
	add r6, r4, #0x0
	str r2, [sp, #0x0]
	cmp r7, #0x0
	bls _02012BD6
	asr r0, r3, #0x1f
	str r3, [sp, #0x4]
	str r0, [sp, #0x8]
_02012BA0:
	asr r0, r4, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02012BDC ; =0x020FFA38
	ldr r2, [sp, #0x4]
	ldrsh r0, [r0, r1]
	ldr r3, [sp, #0x8]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _02012BE0 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r0, r0, #0xc
	strh r0, [r5, #0x0]
	ldr r0, [sp, #0x0]
	add r6, r6, #0x1
	add r0, r4, r0
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r5, r5, #0x2
	cmp r6, r7
	blo _02012BA0
_02012BD6:
	add sp, #0xc
	pop {r4-r7, pc}
	nop
_02012BDC: .word 0x020FFA38
_02012BE0: .word 0x00000000

	thumb_func_start FUN_02012BE4
FUN_02012BE4: ; 0x02012BE4
	push {r3-r7, lr}
	mov r0, #0x6
	add r6, r1, #0x0
	lsl r0, r0, #0x8
	ldr r0, [r6, r0]
	bl FUN_02012988
	add r5, r0, #0x0
	ldr r0, _02012C80 ; =0x00000798
	mov r1, #0x64
	ldrsh r0, [r6, r0]
	blx _s32_div_f
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02012C84 ; =0x0000078C
	ldrb r4, [r6, r0]
	add r0, r0, #0x1
	ldrb r0, [r6, r0]
	cmp r4, r0
	bgt _02012C4C
	lsl r0, r4, #0x2
	add r5, r5, r0
_02012C12:
	ldr r2, [r5, #0x0]
	lsl r0, r2, #0x10
	asr r7, r0, #0x10
	lsl r0, r3, #0x1
	add r1, r6, r0
	ldr r0, _02012C88 ; =0x0000060C
	ldrsh r0, [r1, r0]
	add r0, r7, r0
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	stmia r5!, {r0}
	add r0, r3, #0x1
	mov r1, #0xc0
	blx _s32_div_f
	lsl r0, r1, #0x18
	lsr r3, r0, #0x18
	ldr r0, _02012C8C ; =0x0000078D
	add r4, r4, #0x1
	ldrb r0, [r6, r0]
	cmp r4, r0
	ble _02012C12
_02012C4C:
	ldr r1, _02012C80 ; =0x00000798
	add r0, r1, #0x2
	ldrsh r2, [r6, r1]
	ldrsh r0, [r6, r0]
	add r4, r6, r1
	add r0, r2, r0
	strh r0, [r4, #0x0]
	ldrsh r0, [r6, r1]
	mov r1, #0x4b
	lsl r1, r1, #0x8
	cmp r0, r1
	blt _02012C70
	mov r0, #0x0
	ldrsh r0, [r4, r0]
	blx _s32_div_f
	strh r1, [r4, #0x0]
	pop {r3-r7, pc}
_02012C70:
	cmp r0, #0x0
	bge _02012C7C
	mov r0, #0x0
	ldrsh r0, [r4, r0]
	add r0, r0, r1
	strh r0, [r4, #0x0]
_02012C7C:
	pop {r3-r7, pc}
	nop
_02012C80: .word 0x00000798
_02012C84: .word 0x0000078C
_02012C88: .word 0x0000060C
_02012C8C: .word 0x0000078D

	thumb_func_start FUN_02012C90
FUN_02012C90: ; 0x02012C90
	ldr r3, _02012C94 ; =FUN_020129C8
	bx r3
	.balign 4
_02012C94: .word FUN_020129C8 

	thumb_func_start FUN_02012C98
FUN_02012C98: ; 0x02012C98
	push {r3-r5, lr}
	add r4, r0, #0x0
	bne _02012CA2
	bl ErrorHandling
_02012CA2:
	mov r0, #0x6
	lsl r0, r0, #0x8
	ldr r0, [r4, r0]
	bl FUN_0201299C
	mov r1, #0x3
	lsl r1, r1, #0x8
	add r5, r0, #0x0
	blx DC_FlushRange
	mov r1, #0x79
	lsl r1, r1, #0x4
	ldr r1, [r4, r1]
	add r0, r5, #0x0
	mov r2, #0x4
	mov r3, #0x1
	bl FUN_020129D8
	pop {r3-r5, pc}

	thumb_func_start FUN_02012CC8
FUN_02012CC8: ; 0x02012CC8
	mov r1, #0x0
	ldr r2, _02012CD8 ; =0x021C4858
	add r0, r1, #0x0
_02012CCE:
	add r1, r1, #0x1
	stmia r2!, {r0}
	cmp r1, #0x10
	blt _02012CCE
	bx lr
	.balign 4
_02012CD8: .word 0x021C4858

	thumb_func_start FUN_02012CDC
FUN_02012CDC: ; 0x02012CDC
	push {r3-r7, lr}
	sub sp, #0x10
	str r1, [sp, #0x8]
	ldr r1, _02012DD0 ; =0x021C4858
	add r7, r0, #0x0
	add r6, r2, #0x0
	str r3, [sp, #0xc]
	mov r5, #0x0
_02012CEC:
	ldr r0, [r1, #0x0]
	cmp r0, #0x0
	beq _02012CFA
	add r5, r5, #0x1
	add r1, r1, #0x4
	cmp r5, #0x10
	blt _02012CEC
_02012CFA:
	cmp r5, #0x10
	blt _02012D04
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_02012D04:
	ldr r0, [sp, #0x2c]
	mov r1, #0xdc
	bl FUN_02016998
	add r4, r0, #0x0
	bne _02012D14
	bl ErrorHandling
_02012D14:
	add r0, r4, #0x0
	mov r1, #0x0
	mov r2, #0xdc
	blx Call_FillMemWithValue
	add r2, r4, #0x0
	ldr r0, [sp, #0x8]
	str r7, [r4, #0x18]
	ldr r3, _02012DD4 ; =0x020ED4FC
	str r0, [r4, #0x1c]
	ldmia r3!, {r0-r1}
	add r2, #0x34
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	ldr r3, _02012DD8 ; =0x020ED4E4
	str r0, [r2, #0x0]
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x40
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	ldr r3, _02012DDC ; =0x020ED4F0
	str r0, [r2, #0x0]
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x4c
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	mov r1, #0x0
	str r0, [r2, #0x0]
	ldr r2, [sp, #0xc]
	add r0, r6, #0x0
	blx Call_FillMemWithValue
	ldr r0, [sp, #0xc]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	add r0, r6, r0
	str r0, [r4, #0x14]
	add r0, r4, #0x0
	add r0, #0xda
	strb r5, [r0, #0x0]
	ldr r0, _02012DD0 ; =0x021C4858
	lsl r5, r5, #0x2
	str r4, [r0, r5]
	ldr r0, [sp, #0x28]
	cmp r0, #0x1
	bne _02012DA8
	ldr r0, [sp, #0x2c]
	bl FUN_0201EB64
	str r0, [r4, #0x20]
	mov r3, #0x0
	str r3, [r4, #0x24]
	str r3, [r4, #0x28]
	mov r0, #0x2
	str r3, [r4, #0x2c]
	lsl r0, r0, #0xc
	strh r0, [r4, #0x30]
	str r3, [sp, #0x0]
	ldr r0, [r4, #0x20]
	ldr r1, _02012DD4 ; =0x020ED4FC
	str r0, [sp, #0x4]
	ldrh r2, [r4, #0x30]
	ldr r0, _02012DDC ; =0x020ED4F0
	bl FUN_0201ED5C
	add r0, r4, #0x0
	mov r1, #0x0
	add r0, #0xdb
	strb r1, [r0, #0x0]
	ldr r0, [r4, #0x20]
	bl FUN_0201EB8C
_02012DA8:
	mov r0, #0x6
	str r0, [sp, #0x0]
	mov r0, #0x3f
	str r0, [sp, #0x4]
	ldr r0, _02012DE0 ; =0x020ED508
	mov r1, #0x14
	ldr r0, [r0, r5]
	mov r2, #0xc8
	mov r3, #0x5
	blx FUN_0208B4A0
	str r0, [r4, #0x0]
	ldr r1, _02012DD8 ; =0x020ED4E4
	add r0, r4, #0x0
	bl FUN_020133FC
	add r0, r4, #0x0
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_02012DD0: .word 0x021C4858
_02012DD4: .word 0x020ED4FC
_02012DD8: .word 0x020ED4E4
_02012DDC: .word 0x020ED4F0
_02012DE0: .word 0x020ED508

	thumb_func_start FUN_02012DE4
FUN_02012DE4: ; 0x02012DE4
	push {r3-r7, lr}
	add r5, r0, #0x0
	bl FUN_020133D0
	add r0, r5, #0x0
	add r0, #0xd8
	ldrb r1, [r0, #0x0]
	mov r0, #0x1
	tst r0, r1
	beq _02012E02
	add r0, r5, #0x0
	add r0, #0x58
	blx FUN_020AE8CC
	b _02012E22
_02012E02:
	mov r0, #0x2
	tst r0, r1
	beq _02012E22
	mov r6, #0x0
	add r4, r5, #0x0
	add r7, r6, #0x0
_02012E0E:
	ldr r0, [r4, #0x58]
	cmp r0, #0x0
	beq _02012E1A
	blx FUN_020AF894
	str r7, [r4, #0x58]
_02012E1A:
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, #0x10
	blt _02012E0E
_02012E22:
	add r0, r5, #0x0
	add r0, #0xd8
	ldrb r1, [r0, #0x0]
	mov r0, #0x4
	tst r0, r1
	beq _02012E38
	add r0, r5, #0x0
	add r0, #0x98
	blx FUN_020AEC7C
	b _02012E60
_02012E38:
	mov r0, #0x8
	tst r0, r1
	beq _02012E60
	mov r6, #0x0
	add r4, r5, #0x0
	add r7, r6, #0x0
_02012E44:
	add r0, r4, #0x0
	add r0, #0x98
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02012E58
	blx FUN_020AFA80
	add r0, r4, #0x0
	add r0, #0x98
	str r7, [r0, #0x0]
_02012E58:
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, #0x10
	blt _02012E44
_02012E60:
	add r0, r5, #0x0
	mov r1, #0x0
	add r0, #0xd8
	strb r1, [r0, #0x0]
	str r1, [r5, #0x8]
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	beq _02012E78
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r5, #0x4]
_02012E78:
	ldr r2, _02012EA8 ; =0x021C4858
	mov r1, #0x0
_02012E7C:
	ldr r0, [r2, #0x0]
	cmp r0, r5
	bne _02012E8C
	ldr r0, _02012EA8 ; =0x021C4858
	mov r2, #0x0
	lsl r1, r1, #0x2
	str r2, [r0, r1]
	b _02012E94
_02012E8C:
	add r1, r1, #0x1
	add r2, r2, #0x4
	cmp r1, #0x10
	blt _02012E7C
_02012E94:
	ldr r0, [r5, #0x20]
	cmp r0, #0x0
	beq _02012E9E
	bl FUN_0201EB70
_02012E9E:
	add r0, r5, #0x0
	bl FUN_02016A18
	pop {r3-r7, pc}
	nop
_02012EA8: .word 0x021C4858

	thumb_func_start FUN_02012EAC
FUN_02012EAC: ; 0x02012EAC
	push {r3-r5, lr}
	ldr r5, _02012EC8 ; =0x021C4858
	mov r4, #0x0
_02012EB2:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _02012EBC
	bl FUN_02012DE4
_02012EBC:
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x10
	blt _02012EB2
	pop {r3-r5, pc}
	nop
_02012EC8: .word 0x021C4858

	thumb_func_start FUN_02012ECC
FUN_02012ECC: ; 0x02012ECC
	push {r4, lr}
	ldr r1, _02012EF4 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x8]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012EE4
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012EE4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012EF0
	bl ErrorHandling
_02012EF0:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012EF4: .word 0x021C4850

	thumb_func_start FUN_02012EF8
FUN_02012EF8: ; 0x02012EF8
	push {r4, lr}
	ldr r1, _02012F20 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0xc]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012F10
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012F10:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012F1C
	bl ErrorHandling
_02012F1C:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012F20: .word 0x021C4850

	thumb_func_start FUN_02012F24
FUN_02012F24: ; 0x02012F24
	push {r4, lr}
	ldr r1, _02012F4C ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x10]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012F3C
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012F3C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012F48
	bl ErrorHandling
_02012F48:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012F4C: .word 0x021C4850

	thumb_func_start FUN_02012F50
FUN_02012F50: ; 0x02012F50
	push {r4, lr}
	ldr r1, _02012F78 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x14]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012F68
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012F68:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012F74
	bl ErrorHandling
_02012F74:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012F78: .word 0x021C4850

	thumb_func_start FUN_02012F7C
FUN_02012F7C: ; 0x02012F7C
	push {r4, lr}
	ldr r1, _02012FA4 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x18]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012F94
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012F94:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012FA0
	bl ErrorHandling
_02012FA0:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012FA4: .word 0x021C4850

	thumb_func_start FUN_02012FA8
FUN_02012FA8: ; 0x02012FA8
	push {r4, lr}
	ldr r1, _02012FD0 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x1c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012FC0
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012FC0:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012FCC
	bl ErrorHandling
_02012FCC:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012FD0: .word 0x021C4850

	thumb_func_start FUN_02012FD4
FUN_02012FD4: ; 0x02012FD4
	push {r4, lr}
	ldr r1, _02012FFC ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x20]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02012FEC
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02012FEC:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02012FF8
	bl ErrorHandling
_02012FF8:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02012FFC: .word 0x021C4850

	thumb_func_start FUN_02013000
FUN_02013000: ; 0x02013000
	push {r4, lr}
	ldr r1, _02013028 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x24]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02013018
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02013018:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02013024
	bl ErrorHandling
_02013024:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013028: .word 0x021C4850

	thumb_func_start FUN_0201302C
FUN_0201302C: ; 0x0201302C
	push {r4, lr}
	ldr r1, _02013054 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x28]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02013044
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02013044:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02013050
	bl ErrorHandling
_02013050:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013054: .word 0x021C4850

	thumb_func_start FUN_02013058
FUN_02013058: ; 0x02013058
	push {r4, lr}
	ldr r1, _02013080 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x2c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02013070
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02013070:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201307C
	bl ErrorHandling
_0201307C:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013080: .word 0x021C4850

	thumb_func_start FUN_02013084
FUN_02013084: ; 0x02013084
	push {r4, lr}
	ldr r1, _020130AC ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x30]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _0201309C
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_0201309C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020130A8
	bl ErrorHandling
_020130A8:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_020130AC: .word 0x021C4850

	thumb_func_start FUN_020130B0
FUN_020130B0: ; 0x020130B0
	push {r4, lr}
	ldr r1, _020130D8 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x34]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _020130C8
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_020130C8:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _020130D4
	bl ErrorHandling
_020130D4:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_020130D8: .word 0x021C4850

	thumb_func_start FUN_020130DC
FUN_020130DC: ; 0x020130DC
	push {r4, lr}
	ldr r1, _02013104 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x38]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _020130F4
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_020130F4:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02013100
	bl ErrorHandling
_02013100:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013104: .word 0x021C4850

	thumb_func_start FUN_02013108
FUN_02013108: ; 0x02013108
	push {r4, lr}
	ldr r1, _02013130 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x3c]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02013120
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02013120:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _0201312C
	bl ErrorHandling
_0201312C:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013130: .word 0x021C4850

	thumb_func_start FUN_02013134
FUN_02013134: ; 0x02013134
	push {r4, lr}
	ldr r1, _0201315C ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x40]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _0201314C
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_0201314C:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02013158
	bl ErrorHandling
_02013158:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_0201315C: .word 0x021C4850

	thumb_func_start FUN_02013160
FUN_02013160: ; 0x02013160
	push {r4, lr}
	ldr r1, _02013188 ; =0x021C4850
	mov r2, #0x3
	ldr r1, [r1, #0x44]
	ldr r4, [r1, #0x10]
	add r0, r4, r0
	add r3, r0, #0x0
	and r3, r2
	beq _02013178
	mov r2, #0x4
	sub r2, r2, r3
	add r0, r0, r2
_02013178:
	str r0, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r0, r1
	blo _02013184
	bl ErrorHandling
_02013184:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_02013188: .word 0x021C4850

	thumb_func_start FUN_0201318C
FUN_0201318C: ; 0x0201318C
	ldr r3, _02013190 ; =LoadFromNarc_2
	bx r3
	.balign 4
_02013190: .word LoadFromNarc_2 

	thumb_func_start FUN_02013194
FUN_02013194: ; 0x02013194
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r6, r1, #0x0
	add r4, r2, #0x0
	add r7, r3, #0x0
	cmp r0, #0x0
	bne _020131A8
	bl ErrorHandling
_020131A8:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	beq _020131B2
	bl ErrorHandling
_020131B2:
	add r0, r5, #0x0
	add r0, #0xd8
	strb r4, [r0, #0x0]
	mov r0, #0x1
	tst r0, r4
	beq _020131C8
	add r0, r5, #0x0
	add r0, #0x58
	blx FUN_020AE918
	b _020131DE
_020131C8:
	mov r0, #0x2
	tst r0, r4
	beq _020131DE
	mov r1, #0x0
	add r2, r5, #0x0
	add r0, r1, #0x0
_020131D4:
	add r1, r1, #0x1
	str r0, [r2, #0x58]
	add r2, r2, #0x4
	cmp r1, #0x10
	blt _020131D4
_020131DE:
	mov r0, #0x4
	tst r0, r4
	beq _020131EE
	add r0, r5, #0x0
	add r0, #0x98
	blx FUN_020AEC98
	b _02013208
_020131EE:
	mov r0, #0x8
	tst r0, r4
	beq _02013208
	mov r2, #0x0
	add r3, r5, #0x0
	add r1, r2, #0x0
_020131FA:
	add r0, r3, #0x0
	add r0, #0x98
	add r2, r2, #0x1
	add r3, r3, #0x4
	str r1, [r0, #0x0]
	cmp r2, #0x10
	blt _020131FA
_02013208:
	str r6, [r5, #0x4]
	cmp r7, #0x1
	bne _02013216
	add r0, r5, #0x0
	bl FUN_02013228
	pop {r3-r7, pc}
_02013216:
	ldr r0, _02013224 ; =FUN_02013268
	add r1, r5, #0x0
	mov r2, #0x5
	bl FUN_0200CA98
	pop {r3-r7, pc}
	nop
_02013224: .word FUN_02013268 

	thumb_func_start FUN_02013228
FUN_02013228: ; 0x02013228
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	blx FUN_0208B128
	ldr r0, _02013264 ; =0x021C4850
	str r4, [r0, #0x0]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x0]
	cmp r1, #0x0
	bne _02013246
	blx FUN_0208AF94
	b _0201324A
_02013246:
	blx FUN_0208B05C
_0201324A:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x0]
	cmp r1, #0x0
	bne _02013258
	blx FUN_0208AF80
	b _0201325C
_02013258:
	blx FUN_0208AFA8
_0201325C:
	ldr r0, _02013264 ; =0x021C4850
	mov r1, #0x0
	str r1, [r0, #0x0]
	pop {r4, pc}
	.balign 4
_02013264: .word 0x021C4850

	thumb_func_start FUN_02013268
FUN_02013268: ; 0x02013268
	push {r4, lr}
	add r4, r0, #0x0
	add r0, r1, #0x0
	bl FUN_02013228
	add r0, r4, #0x0
	bl FUN_0200CAB4
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201327C
FUN_0201327C: ; 0x0201327C
	push {r4, lr}
	add r4, r0, #0x0
	bne _02013286
	bl ErrorHandling
_02013286:
	ldr r0, _020132B8 ; =0x021C4850
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _02013292
	bl ErrorHandling
_02013292:
	ldr r0, _020132B8 ; =0x021C4850
	mov r1, #0x0
	ldr r3, [r0, #0x0]
	add r2, r3, #0x0
_0201329A:
	ldr r0, [r2, #0x58]
	cmp r0, #0x0
	bne _020132A8
	lsl r0, r1, #0x2
	add r0, r3, r0
	str r4, [r0, #0x58]
	pop {r4, pc}
_020132A8:
	add r1, r1, #0x1
	add r2, r2, #0x4
	cmp r1, #0x10
	blt _0201329A
	bl ErrorHandling
	pop {r4, pc}
	nop
_020132B8: .word 0x021C4850

	thumb_func_start FUN_020132BC
FUN_020132BC: ; 0x020132BC
	push {r4, lr}
	add r4, r0, #0x0
	bne _020132C6
	bl ErrorHandling
_020132C6:
	ldr r0, _020132FC ; =0x021C4850
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020132D2
	bl ErrorHandling
_020132D2:
	ldr r0, _020132FC ; =0x021C4850
	mov r1, #0x0
	ldr r3, [r0, #0x0]
	add r2, r3, #0x0
_020132DA:
	add r0, r2, #0x0
	add r0, #0x98
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020132EE
	lsl r0, r1, #0x2
	add r0, r3, r0
	add r0, #0x98
	str r4, [r0, #0x0]
	pop {r4, pc}
_020132EE:
	add r1, r1, #0x1
	add r2, r2, #0x4
	cmp r1, #0x10
	blt _020132DA
	bl ErrorHandling
	pop {r4, pc}
	.balign 4
_020132FC: .word 0x021C4850

	thumb_func_start FUN_02013300
FUN_02013300: ; 0x02013300
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x20]
	cmp r1, #0x0
	beq _0201331C
	add r0, #0xdb
	ldrb r0, [r0, #0x0]
	bl FUN_0201EE2C
	ldr r0, [r4, #0x20]
	bl FUN_0201EB8C
	bl FUN_0201EBA4
_0201331C:
	blx FUN_020B849C
	ldr r0, [r4, #0x0]
	ldr r1, _02013338 ; =0x021CED64
	blx FUN_0208AD80
	ldr r0, [r4, #0x20]
	cmp r0, #0x0
	beq _02013332
	bl FUN_0201EB98
_02013332:
	blx FUN_020B849C
	pop {r4, pc}
	.balign 4
_02013338: .word 0x021CED64

	thumb_func_start FUN_0201333C
FUN_0201333C: ; 0x0201333C
	ldr r3, _02013344 ; =0x0208AE48
	ldr r0, [r0, #0x0]
	bx r3
	nop
_02013344: .word 0x0208AE48

	thumb_func_start FUN_02013348
FUN_02013348: ; 0x02013348
	mov r0, #0x0
	ldr r3, _02013360 ; =0x021C4858
	add r2, r0, #0x0
_0201334E:
	ldr r1, [r3, #0x0]
	cmp r1, #0x0
	beq _02013356
	add r0, r0, #0x1
_02013356:
	add r2, r2, #0x1
	add r3, r3, #0x4
	cmp r2, #0x10
	blt _0201334E
	bx lr
	.balign 4
_02013360: .word 0x021C4858

	thumb_func_start FUN_02013364
FUN_02013364: ; 0x02013364
	push {r4-r6, lr}
	mov r4, #0x0
	ldr r5, _02013384 ; =0x021C4858
	add r6, r4, #0x0
_0201336C:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _02013378
	bl FUN_02013300
	add r4, r4, #0x1
_02013378:
	add r6, r6, #0x1
	add r5, r5, #0x4
	cmp r6, #0x10
	blt _0201336C
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4
_02013384: .word 0x021C4858

	thumb_func_start FUN_02013388
FUN_02013388: ; 0x02013388
	push {r4-r6, lr}
	mov r4, #0x0
	ldr r5, _020133A8 ; =0x021C4858
	add r6, r4, #0x0
_02013390:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _0201339C
	bl FUN_0201333C
	add r4, r4, #0x1
_0201339C:
	add r6, r6, #0x1
	add r5, r5, #0x4
	cmp r6, #0x10
	blt _02013390
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4
_020133A8: .word 0x021C4858

	thumb_func_start FUN_020133AC
FUN_020133AC: ; 0x020133AC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _020133C4 ; =0x021C4850
	str r3, [r0, #0x4]
	ldr r0, [r4, #0x0]
	blx FUN_0208ACEC
	ldr r1, _020133C4 ; =0x021C4850
	mov r2, #0x0
	str r2, [r1, #0x4]
	str r0, [r4, #0x8]
	pop {r4, pc}
	.balign 4
_020133C4: .word 0x021C4850

	thumb_func_start FUN_020133C8
FUN_020133C8: ; 0x020133C8
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x8]
	bx lr
	.balign 4

	thumb_func_start FUN_020133D0
FUN_020133D0: ; 0x020133D0
	ldr r3, _020133D8 ; =0x0208AC14
	ldr r0, [r0, #0x0]
	bx r3
	nop
_020133D8: .word 0x0208AC14

	thumb_func_start FUN_020133DC
FUN_020133DC: ; 0x020133DC
	ldr r3, _020133E4 ; =0x0208AC58
	ldr r0, [r0, #0x0]
	bx r3
	nop
_020133E4: .word 0x0208AC58

	thumb_func_start FUN_020133E8
FUN_020133E8: ; 0x020133E8
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start FUN_020133EC
FUN_020133EC: ; 0x020133EC
	add r2, r0, #0x0
	add r2, #0x40
	add r3, r1, #0x0
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	bx lr

	thumb_func_start FUN_020133FC
FUN_020133FC: ; 0x020133FC
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r3, r4, #0x0
	add r2, r5, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x40
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldr r1, [r5, #0x20]
	add r0, r4, #0x0
	bl FUN_0201EC58
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201341C
FUN_0201341C: ; 0x0201341C
	ldr r0, _02013424 ; =0x021C4850
	ldr r0, [r0, #0x4]
	bx lr
	nop
_02013424: .word 0x021C4850

	thumb_func_start FUN_02013428
FUN_02013428: ; 0x02013428
	ldr r2, _02013438 ; =0x020ED4E4
	add r3, r0, #0x0
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	bx lr
	nop
_02013438: .word 0x020ED4E4

	thumb_func_start FUN_0201343C
FUN_0201343C: ; 0x0201343C
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start FUN_02013440
FUN_02013440: ; 0x02013440
	add r0, #0xdb
	strb r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02013448
FUN_02013448: ; 0x02013448
	add r0, #0xdb
	ldrb r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02013450
FUN_02013450: ; 0x02013450
	ldr r0, [r0, #0x20]
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x10]
	bx lr

	thumb_func_start FUN_02013458
FUN_02013458: ; 0x02013458
	push {r4-r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0x0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0x0
	bne _0201346A
	mov r0, #0x0
	pop {r4-r7}
	bx lr
_0201346A:
	mov r1, #0x0
	cmp r2, #0x0
	ble _020134F4
	ldr r3, [r0, #0x18]
	ldr r7, _020134FC ; =0x020908DC
	ldr r0, _02013500 ; =0x020909A4
_02013476:
	cmp r3, #0x0
	beq _020134EC
	cmp r4, #0x5
	bhi _020134E6
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #0x6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0201348A: ; jump table (using 16-bit offset)
	.short _02013496 - _0201348A - 2; case 0
	.short _020134A2 - _0201348A - 2; case 1
	.short _020134AE - _0201348A - 2; case 2
	.short _020134BC - _0201348A - 2; case 3
	.short _020134CA - _0201348A - 2; case 4
	.short _020134D8 - _0201348A - 2; case 5
_02013496:
	ldr r5, [r3, #0x0]
	cmp r5, r0
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134A2:
	ldr r5, [r3, #0x0]
	cmp r5, r7
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134AE:
	ldr r6, [r3, #0x0]
	ldr r5, _02013504 ; =0x02090858
	cmp r6, r5
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134BC:
	ldr r6, [r3, #0x0]
	ldr r5, _02013508 ; =0x02090780
	cmp r6, r5
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134CA:
	ldr r6, [r3, #0x0]
	ldr r5, _0201350C ; =0x02090664
	cmp r6, r5
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134D8:
	ldr r6, [r3, #0x0]
	ldr r5, _02013510 ; =0x020905D0
	cmp r6, r5
	bne _020134EC
	ldr r0, [r3, #0x4]
	pop {r4-r7}
	bx lr
_020134E6:
	mov r0, #0x0
	pop {r4-r7}
	bx lr
_020134EC:
	add r1, r1, #0x1
	add r3, #0x8
	cmp r1, r2
	blt _02013476
_020134F4:
	mov r0, #0x0
	pop {r4-r7}
	bx lr
	nop
_020134FC: .word 0x020908DC
_02013500: .word 0x020909A4
_02013504: .word 0x02090858
_02013508: .word 0x02090780
_0201350C: .word 0x02090664
_02013510: .word 0x020905D0

	thumb_func_start FUN_02013514
FUN_02013514: ; 0x02013514
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x0
	bl FUN_02013458
	cmp r0, #0x0
	beq _0201352E
	ldrh r1, [r4, #0x0]
	strh r1, [r0, #0x0]
	ldrh r1, [r4, #0x2]
	strh r1, [r0, #0x2]
	ldrh r1, [r4, #0x4]
	strh r1, [r0, #0x4]
_0201352E:
	pop {r4, pc}

	thumb_func_start FUN_02013530
FUN_02013530: ; 0x02013530
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x2
	bl FUN_02013458
	add r2, r0, #0x0
	beq _02013546
	ldmia r4!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r4, #0x0]
	str r0, [r2, #0x0]
_02013546:
	pop {r4, pc}

	thumb_func_start FUN_02013548
FUN_02013548: ; 0x02013548
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	mov r1, #0x2
	bl FUN_02013458
	add r2, r0, #0x0
	bne _0201356E
	add r2, sp, #0x0
	mov r0, #0x0
	str r0, [r2, #0x0]
	str r0, [r2, #0x4]
	str r0, [r2, #0x8]
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	add sp, #0xc
	str r0, [r4, #0x0]
	pop {r3-r4, pc}
_0201356E:
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r4, #0x0]
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201357C
FUN_0201357C: ; 0x0201357C
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x2
	bl FUN_02013458
	cmp r0, #0x0
	beq _02013590
	mov r1, #0x0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02013590:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02013594
FUN_02013594: ; 0x02013594
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x2
	bl FUN_02013458
	cmp r0, #0x0
	bne _020135A8
	mov r0, #0x0
	strh r0, [r4, #0x0]
	pop {r4, pc}
_020135A8:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_020135B0
FUN_020135B0: ; 0x020135B0
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x3
	bl FUN_02013458
	cmp r0, #0x0
	beq _020135C2
	ldrh r1, [r4, #0x0]
	strh r1, [r0, #0x0]
_020135C2:
	pop {r4, pc}

	thumb_func_start FUN_020135C4
FUN_020135C4: ; 0x020135C4
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x3
	bl FUN_02013458
	cmp r0, #0x0
	bne _020135D8
	mov r0, #0x0
	strh r0, [r4, #0x0]
	pop {r4, pc}
_020135D8:
	ldrh r0, [r0, #0x0]
	strh r0, [r4, #0x0]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020135E0
FUN_020135E0: ; 0x020135E0
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x3
	bl FUN_02013458
	cmp r0, #0x0
	beq _020135F2
	ldrh r1, [r4, #0x0]
	strh r1, [r0, #0x2]
_020135F2:
	pop {r4, pc}

	thumb_func_start FUN_020135F4
FUN_020135F4: ; 0x020135F4
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x3
	bl FUN_02013458
	cmp r0, #0x0
	bne _02013608
	mov r0, #0x0
	strh r0, [r4, #0x0]
	pop {r4, pc}
_02013608:
	ldrh r0, [r0, #0x2]
	strh r0, [r4, #0x0]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02013610
FUN_02013610: ; 0x02013610
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x5
	bl FUN_02013458
	add r2, r0, #0x0
	beq _02013626
	ldmia r4!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r4, #0x0]
	str r0, [r2, #0x0]
_02013626:
	pop {r4, pc}

	thumb_func_start FUN_02013628
FUN_02013628: ; 0x02013628
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	mov r1, #0x5
	bl FUN_02013458
	add r2, r0, #0x0
	bne _0201364E
	add r2, sp, #0x0
	mov r0, #0x0
	str r0, [r2, #0x0]
	str r0, [r2, #0x4]
	str r0, [r2, #0x8]
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	add sp, #0xc
	str r0, [r4, #0x0]
	pop {r3-r4, pc}
_0201364E:
	ldmia r2!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r4, #0x0]
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201365C
FUN_0201365C: ; 0x0201365C
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x5
	bl FUN_02013458
	cmp r0, #0x0
	beq _02013670
	mov r1, #0x0
	ldrsh r1, [r4, r1]
	strh r1, [r0, #0xc]
_02013670:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02013674
FUN_02013674: ; 0x02013674
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x5
	bl FUN_02013458
	cmp r0, #0x0
	bne _02013688
	mov r0, #0x0
	strh r0, [r4, #0x0]
	pop {r4, pc}
_02013688:
	mov r1, #0xc
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02013690
FUN_02013690: ; 0x02013690
	push {r3-r5, lr}
	mov r1, #0x8
	add r5, r0, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	beq _020136B2
	ldr r0, _020136B8 ; =0x0001020F
	add r1, r5, #0x0
	str r0, [r4, #0x0]
	mov r0, #0x4
	bl FUN_020219F4
	ldr r1, _020136BC ; =0x020ED548
	str r0, [r4, #0x4]
	bl FUN_02021E28
_020136B2:
	add r0, r4, #0x0
	pop {r3-r5, pc}
	nop
_020136B8: .word 0x0001020F
_020136BC: .word 0x020ED548

	thumb_func_start FUN_020136C0
FUN_020136C0: ; 0x020136C0
	push {r4, lr}
	add r4, r0, #0x0
	bne _020136CA
	bl ErrorHandling
_020136CA:
	cmp r4, #0x0
	beq _020136DE
	ldr r0, [r4, #0x4]
	cmp r0, #0x0
	beq _020136D8
	bl FUN_02021A20
_020136D8:
	add r0, r4, #0x0
	bl FUN_02016A18
_020136DE:
	pop {r4, pc}

	thumb_func_start FUN_020136E0
FUN_020136E0: ; 0x020136E0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020136EE
	bl ErrorHandling
_020136EE:
	cmp r5, #0x0
	beq _020136F4
	str r4, [r5, #0x0]
_020136F4:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020136F8
FUN_020136F8: ; 0x020136F8
	push {r4-r6, lr}
	sub sp, #0x10
	add r6, r0, #0x0
	str r3, [sp, #0x0]
	mov r0, #0xff
	str r0, [sp, #0x4]
	ldr r0, [r6, #0x0]
	add r5, r1, #0x0
	str r0, [sp, #0x8]
	mov r1, #0x0
	add r4, r2, #0x0
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x4]
	add r0, r5, #0x0
	add r3, r4, #0x0
	bl FUN_0201BDE0
	add r0, r5, #0x0
	bl FUN_02019548
	add sp, #0x10
	pop {r4-r6, pc}

	thumb_func_start FUN_02013724
FUN_02013724: ; 0x02013724
	ldr r1, _02013738 ; =0x0000FFFF
	mov r2, #0x0
	strh r1, [r0, #0x0]
_0201372A:
	add r2, r2, #0x1
	strh r1, [r0, #0x4]
	add r0, r0, #0x2
	cmp r2, #0x2
	blt _0201372A
	bx lr
	nop
_02013738: .word 0x0000FFFF

	thumb_func_start FUN_0201373C
FUN_0201373C: ; 0x0201373C
	strh r1, [r0, #0x0]
	mov r2, #0x0
	ldr r1, _02013750 ; =0x0000FFFF
	strh r2, [r0, #0x2]
_02013744:
	add r2, r2, #0x1
	strh r1, [r0, #0x4]
	add r0, r0, #0x2
	cmp r2, #0x2
	blt _02013744
	bx lr
	.balign 4
_02013750: .word 0x0000FFFF

	thumb_func_start FUN_02013754
FUN_02013754: ; 0x02013754
	push {r4, lr}
	mov r1, #0x4
	add r4, r0, #0x0
	bl FUN_0201373C
	mov r0, #0x5
	strh r0, [r4, #0x2]
	pop {r4, pc}

	thumb_func_start FUN_02013764
FUN_02013764: ; 0x02013764
	push {r4-r6, lr}
	add r6, r1, #0x0
	add r5, r0, #0x0
	cmp r6, #0x4
	blo _02013772
	bl ErrorHandling
_02013772:
	cmp r6, #0x4
	bhs _020137B8
	mov r0, #0xa
	add r4, r6, #0x0
	mul r4, r0
	ldr r1, _020137BC ; =0x020ED556
	add r0, r5, #0x0
	ldrb r1, [r1, r4]
	bl FUN_0201373C
	ldr r0, _020137C0 ; =0x020ED557
	mov r1, #0x0
	ldrb r0, [r0, r4]
	mvn r1, r1
	strh r0, [r5, #0x2]
	ldr r0, _020137C4 ; =0x020ED558
	ldrsh r0, [r0, r4]
	cmp r0, r1
	beq _020137A2
	ldr r1, _020137C8 ; =0x020ED55A
	ldrh r1, [r1, r4]
	bl FUN_02013A9C
	strh r0, [r5, #0x4]
_020137A2:
	ldr r0, _020137CC ; =0x020ED55C
	mov r1, #0x0
	ldrsh r0, [r0, r4]
	mvn r1, r1
	cmp r0, r1
	beq _020137B8
	ldr r1, _020137D0 ; =0x020ED55E
	ldrh r1, [r1, r4]
	bl FUN_02013A9C
	strh r0, [r5, #0x6]
_020137B8:
	pop {r4-r6, pc}
	nop
_020137BC: .word 0x020ED556
_020137C0: .word 0x020ED557
_020137C4: .word 0x020ED558
_020137C8: .word 0x020ED55A
_020137CC: .word 0x020ED55C
_020137D0: .word 0x020ED55E

	thumb_func_start FUN_020137D4
FUN_020137D4: ; 0x020137D4
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	add r0, r1, #0x0
	str r1, [sp, #0x4]
	bl FUN_0200AA80
	ldr r5, [sp, #0x0]
	ldr r7, _02013838 ; =0x0000FFFF
	add r6, r0, #0x0
	mov r4, #0x0
_020137EA:
	ldrh r2, [r5, #0x4]
	cmp r2, r7
	beq _02013800
	add r0, r6, #0x0
	add r1, r4, #0x0
	bl FUN_0200B518
	add r4, r4, #0x1
	add r5, r5, #0x2
	cmp r4, #0x2
	blt _020137EA
_02013800:
	ldr r2, [sp, #0x0]
	mov r0, #0x1
	ldrh r2, [r2, #0x0]
	mov r1, #0x1a
	lsl r3, r2, #0x1
	ldr r2, _0201383C ; =0x020ED54C
	ldrh r2, [r2, r3]
	ldr r3, [sp, #0x4]
	bl FUN_0200A86C
	add r5, r0, #0x0
	ldr r2, [sp, #0x0]
	ldr r3, [sp, #0x4]
	ldrh r2, [r2, #0x2]
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0200A9C4
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl FUN_0200A8B8
	add r0, r6, #0x0
	bl FUN_0200AB18
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_02013838: .word 0x0000FFFF
_0201383C: .word 0x020ED54C

	thumb_func_start FUN_02013840
FUN_02013840: ; 0x02013840
	push {r4, lr}
	add r4, r0, #0x0
	add r3, r1, #0x0
	ldrh r1, [r4, #0x0]
	mov r0, #0x1a
	lsl r2, r1, #0x1
	ldr r1, _02013858 ; =0x020ED54C
	ldrh r1, [r1, r2]
	ldrh r2, [r4, #0x2]
	bl FUN_0200A738
	pop {r4, pc}
	.balign 4
_02013858: .word 0x020ED54C

	thumb_func_start FUN_0201385C
FUN_0201385C: ; 0x0201385C
	ldrh r1, [r0, #0x0]
	ldr r0, _0201386C ; =0x0000FFFF
	cmp r1, r0
	beq _02013868
	mov r0, #0x1
	bx lr
_02013868:
	mov r0, #0x0
	bx lr
	.balign 4
_0201386C: .word 0x0000FFFF

	thumb_func_start FUN_02013870
FUN_02013870: ; 0x02013870
	push {r4, lr}
	add r4, r0, #0x0
	ldrh r0, [r4, #0x0]
	ldrh r1, [r4, #0x2]
	bl FUN_020138A0
	mov r3, #0x0
	cmp r0, #0x0
	bls _02013896
	ldr r1, _0201389C ; =0x0000FFFF
_02013884:
	ldrh r2, [r4, #0x4]
	cmp r2, r1
	bne _0201388E
	mov r0, #0x0
	pop {r4, pc}
_0201388E:
	add r3, r3, #0x1
	add r4, r4, #0x2
	cmp r3, r0
	blo _02013884
_02013896:
	mov r0, #0x1
	pop {r4, pc}
	nop
_0201389C: .word 0x0000FFFF

	thumb_func_start FUN_020138A0
FUN_020138A0: ; 0x020138A0
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x5
	blo _020138AE
	bl ErrorHandling
_020138AE:
	add r0, r5, #0x0
	bl FUN_02013974
	cmp r4, r0
	blo _020138BC
	bl ErrorHandling
_020138BC:
	ldr r1, _02013910 ; =0x020ED54C
	lsl r2, r5, #0x1
	ldrh r1, [r1, r2]
	mov r0, #0x1a
	add r2, r4, #0x0
	mov r3, #0x0
	bl FUN_0200A738
	str r0, [sp, #0x0]
	bl FUN_02021F2C
	add r4, r0, #0x0
	ldrh r1, [r4, #0x0]
	ldr r0, _02013914 ; =0x0000FFFF
	mov r5, #0x0
	cmp r1, r0
	beq _02013904
	add r7, r0, #0x0
	sub r6, r0, #0x1
_020138E2:
	cmp r1, r6
	bne _020138FC
	add r0, r4, #0x0
	bl FUN_0201B8F8
	cmp r0, #0x0
	beq _020138F2
	add r5, r5, #0x1
_020138F2:
	add r0, r4, #0x0
	bl FUN_0201B8B8
	add r4, r0, #0x0
	b _020138FE
_020138FC:
	add r4, r4, #0x2
_020138FE:
	ldrh r1, [r4, #0x0]
	cmp r1, r7
	bne _020138E2
_02013904:
	ldr r0, [sp, #0x0]
	bl FUN_02021A20
	add r0, r5, #0x0
	pop {r3-r7, pc}
	nop
_02013910: .word 0x020ED54C
_02013914: .word 0x0000FFFF

	thumb_func_start FUN_02013918
FUN_02013918: ; 0x02013918
	lsl r1, r1, #0x1
	add r0, r0, r1
	ldrh r0, [r0, #0x4]
	bx lr

	thumb_func_start FUN_02013920
FUN_02013920: ; 0x02013920
	ldrh r0, [r0, #0x0]
	bx lr

	thumb_func_start FUN_02013924
FUN_02013924: ; 0x02013924
	ldrh r0, [r0, #0x2]
	bx lr

	thumb_func_start FUN_02013928
FUN_02013928: ; 0x02013928
	push {r3-r4}
	ldrh r3, [r0, #0x0]
	ldrh r2, [r1, #0x0]
	cmp r3, r2
	bne _0201393A
	ldrh r3, [r0, #0x2]
	ldrh r2, [r1, #0x2]
	cmp r3, r2
	beq _02013940
_0201393A:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
_02013940:
	mov r4, #0x0
_02013942:
	ldrh r3, [r0, #0x4]
	ldrh r2, [r1, #0x4]
	cmp r3, r2
	beq _02013950
	mov r0, #0x0
	pop {r3-r4}
	bx lr
_02013950:
	add r4, r4, #0x1
	add r1, r1, #0x2
	add r0, r0, #0x2
	cmp r4, #0x2
	blt _02013942
	mov r0, #0x1
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_02013960
FUN_02013960: ; 0x02013960
	ldrh r2, [r1, #0x0]
	strh r2, [r0, #0x0]
	ldrh r2, [r1, #0x2]
	strh r2, [r0, #0x2]
	ldrh r2, [r1, #0x4]
	strh r2, [r0, #0x4]
	ldrh r1, [r1, #0x6]
	strh r1, [r0, #0x6]
	bx lr
	.balign 4

	thumb_func_start FUN_02013974
FUN_02013974: ; 0x02013974
	cmp r0, #0x5
	bhs _0201397C
	mov r0, #0x14
	bx lr
_0201397C:
	mov r0, #0x0
	bx lr

	thumb_func_start FUN_02013980
FUN_02013980: ; 0x02013980
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r6, r2, #0x0
	cmp r4, #0x5
	blo _02013990
	bl ErrorHandling
_02013990:
	strh r4, [r5, #0x0]
	strh r6, [r5, #0x2]
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02013998
FUN_02013998: ; 0x02013998
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r6, r2, #0x0
	cmp r4, #0x2
	blo _020139A8
	bl ErrorHandling
_020139A8:
	lsl r0, r4, #0x1
	add r0, r5, r0
	strh r6, [r0, #0x4]
	pop {r4-r6, pc}

	thumb_func_start FUN_020139B0
FUN_020139B0: ; 0x020139B0
	push {r4, lr}
	add r4, r0, #0x0
	ldrh r0, [r4, #0x0]
	ldrh r1, [r4, #0x2]
	bl FUN_020138A0
	cmp r0, #0x2
	bhs _020139D0
	lsl r1, r0, #0x1
	add r2, r4, r1
	ldr r1, _020139D4 ; =0x0000FFFF
_020139C6:
	add r0, r0, #0x1
	strh r1, [r2, #0x4]
	add r2, r2, #0x2
	cmp r0, #0x2
	blo _020139C6
_020139D0:
	pop {r4, pc}
	nop
_020139D4: .word 0x0000FFFF

	thumb_func_start FUN_020139D8
FUN_020139D8: ; 0x020139D8
	push {r3-r7, lr}
	mov r1, #0x30
	add r6, r0, #0x0
	bl FUN_02016998
	ldr r4, _02013A0C ; =0x020ED5C0
	str r0, [sp, #0x0]
	mov r7, #0x0
	add r5, r0, #0x0
_020139EA:
	ldr r0, [sp, #0x0]
	mov r1, #0x1a
	str r6, [r0, #0x0]
	ldrh r2, [r4, #0x0]
	mov r0, #0x1
	add r3, r6, #0x0
	bl FUN_0200A86C
	str r0, [r5, #0x4]
	add r7, r7, #0x1
	add r4, r4, #0x2
	add r5, r5, #0x4
	cmp r7, #0xb
	blt _020139EA
	ldr r0, [sp, #0x0]
	pop {r3-r7, pc}
	nop
_02013A0C: .word 0x020ED5C0

	thumb_func_start FUN_02013A10
FUN_02013A10: ; 0x02013A10
	push {r4-r6, lr}
	add r6, r0, #0x0
	mov r4, #0x0
	add r5, r6, #0x0
_02013A18:
	ldr r0, [r5, #0x4]
	bl FUN_0200A8B8
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0xb
	blt _02013A18
	add r0, r6, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_02013A30
FUN_02013A30: ; 0x02013A30
	push {r3-r5, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r4, r2, #0x0
	add r0, r1, #0x0
	add r1, sp, #0x4
	add r2, sp, #0x0
	bl FUN_02013AEC
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x0]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x4]
	add r2, r4, #0x0
	bl FUN_0200A8E0
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02013A58
FUN_02013A58: ; 0x02013A58
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r1, #0x0
	ldr r1, _02013A94 ; =0x0000FFFF
	cmp r0, r1
	beq _02013A88
	add r1, sp, #0x8
	add r2, sp, #0x4
	bl FUN_02013AEC
	ldr r0, [sp, #0x8]
	mov r3, #0x0
	lsl r1, r0, #0x1
	ldr r0, _02013A98 ; =0x020ED5C0
	ldrh r0, [r0, r1]
	str r0, [sp, #0x8]
	str r4, [sp, #0x0]
	ldr r1, [sp, #0x8]
	ldr r2, [sp, #0x4]
	mov r0, #0x1a
	bl FUN_0200A648
	add sp, #0xc
	pop {r3-r4, pc}
_02013A88:
	add r0, r4, #0x0
	bl FUN_02021A4C
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_02013A94: .word 0x0000FFFF
_02013A98: .word 0x020ED5C0

	thumb_func_start FUN_02013A9C
FUN_02013A9C: ; 0x02013A9C
	push {r4-r5}
	ldr r4, _02013AE0 ; =0x020ED5C0
	mov r2, #0x0
_02013AA2:
	ldrh r3, [r4, #0x0]
	cmp r0, r3
	bne _02013AD0
	mov r4, #0x0
	add r3, r4, #0x0
	cmp r2, #0x0
	bls _02013AC6
	ldr r0, _02013AE4 ; =0x020ED5D6
_02013AB2:
	lsl r5, r4, #0x1
	ldrh r5, [r0, r5]
	add r4, r4, #0x1
	lsl r4, r4, #0x10
	add r3, r3, r5
	lsl r3, r3, #0x10
	lsr r4, r4, #0x10
	lsr r3, r3, #0x10
	cmp r4, r2
	blo _02013AB2
_02013AC6:
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r4-r5}
	bx lr
_02013AD0:
	add r2, r2, #0x1
	add r4, r4, #0x2
	cmp r2, #0xb
	blo _02013AA2
	ldr r0, _02013AE8 ; =0x0000FFFF
	pop {r4-r5}
	bx lr
	nop
_02013AE0: .word 0x020ED5C0
_02013AE4: .word 0x020ED5D6
_02013AE8: .word 0x0000FFFF

	thumb_func_start FUN_02013AEC
FUN_02013AEC: ; 0x02013AEC
	push {r3-r6}
	ldr r3, _02013B20 ; =0x00000FFF
	ldr r6, _02013B24 ; =0x020ED5D6
	and r3, r0
	mov r0, #0x0
	add r5, r0, #0x0
_02013AF8:
	ldrh r4, [r6, #0x0]
	add r0, r0, r4
	cmp r3, r0
	bhs _02013B12
	str r5, [r1, #0x0]
	ldr r1, _02013B24 ; =0x020ED5D6
	lsl r4, r5, #0x1
	ldrh r1, [r1, r4]
	sub r0, r0, r1
	sub r0, r3, r0
	str r0, [r2, #0x0]
	pop {r3-r6}
	bx lr
_02013B12:
	add r5, r5, #0x1
	add r6, r6, #0x2
	cmp r5, #0xb
	blo _02013AF8
	pop {r3-r6}
	bx lr
	nop
_02013B20: .word 0x00000FFF
_02013B24: .word 0x020ED5D6

	thumb_func_start FUN_02013B28
FUN_02013B28: ; 0x02013B28
	mov r0, #0x8
	bx lr

	thumb_func_start FUN_02013B2C
FUN_02013B2C: ; 0x02013B2C
	push {r3, lr}
	mov r2, #0x0
	str r2, [r0, #0x0]
	ldr r3, _02013B54 ; =0x020ED5B4
	str r2, [r0, #0x4]
_02013B36:
	ldrb r1, [r3, #0x0]
	cmp r1, #0x2
	bne _02013B48
	ldr r1, _02013B58 ; =0x020ED5B5
	lsl r2, r2, #0x1
	ldrb r1, [r1, r2]
	bl FUN_02013C18
	pop {r3, pc}
_02013B48:
	add r2, r2, #0x1
	add r3, r3, #0x2
	cmp r2, #0x6
	blo _02013B36
	pop {r3, pc}
	nop
_02013B54: .word 0x020ED5B4
_02013B58: .word 0x020ED5B5

	thumb_func_start FUN_02013B5C
FUN_02013B5C: ; 0x02013B5C
	ldr r3, _02013B64 ; =FUN_02022610
	mov r1, #0x22
	bx r3
	nop
_02013B64: .word FUN_02022610 

	thumb_func_start FUN_02013B68
FUN_02013B68: ; 0x02013B68
	ldr r0, [r0, #0x4]
	add r2, r0, #0x0
	lsr r2, r1
	mov r0, #0x1
	and r0, r2
	bx lr

	thumb_func_start FUN_02013B74
FUN_02013B74: ; 0x02013B74
	push {r3-r5, lr}
	add r5, r0, #0x0
	mov r2, #0x0
	ldr r3, [r5, #0x4]
	add r4, r2, #0x0
	mov r0, #0x1
_02013B80:
	add r1, r3, #0x0
	lsr r1, r2
	tst r1, r0
	bne _02013B8A
	add r4, r4, #0x1
_02013B8A:
	add r2, r2, #0x1
	cmp r2, #0x20
	blo _02013B80
	cmp r4, #0x0
	beq _02013BC4
	bl FUN_0201B9EC
	add r1, r4, #0x0
	blx _u32_div_f
	ldr r4, [r5, #0x4]
	mov r0, #0x0
	mov r2, #0x1
_02013BA4:
	add r3, r4, #0x0
	lsr r3, r0
	tst r3, r2
	bne _02013BBE
	cmp r1, #0x0
	bne _02013BBC
	mov r1, #0x1
	ldr r2, [r5, #0x4]
	lsl r1, r0
	orr r1, r2
	str r1, [r5, #0x4]
	pop {r3-r5, pc}
_02013BBC:
	sub r1, r1, #0x1
_02013BBE:
	add r0, r0, #0x1
	cmp r0, #0x20
	blo _02013BA4
_02013BC4:
	mov r0, #0x20
	pop {r3-r5, pc}

	thumb_func_start FUN_02013BC8
FUN_02013BC8: ; 0x02013BC8
	ldr r3, [r0, #0x4]
	mov r2, #0x0
	mov r0, #0x1
_02013BCE:
	add r1, r3, #0x0
	lsr r1, r2
	tst r1, r0
	bne _02013BDA
	mov r0, #0x0
	bx lr
_02013BDA:
	add r2, r2, #0x1
	cmp r2, #0x20
	blo _02013BCE
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_02013BE4
FUN_02013BE4: ; 0x02013BE4
	push {r3-r4}
	mov r3, #0x0
	ldr r4, _02013C08 ; =0x020ED5D6
	add r2, r3, #0x0
_02013BEC:
	ldrh r1, [r4, #0x0]
	add r2, r2, #0x1
	add r4, r4, #0x2
	add r1, r3, r1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r2, #0x9
	blt _02013BEC
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3-r4}
	bx lr
	nop
_02013C08: .word 0x020ED5D6

	thumb_func_start FUN_02013C0C
FUN_02013C0C: ; 0x02013C0C
	ldr r0, [r0, #0x0]
	add r2, r0, #0x0
	lsr r2, r1
	mov r0, #0x1
	and r0, r2
	bx lr

	thumb_func_start FUN_02013C18
FUN_02013C18: ; 0x02013C18
	mov r2, #0x1
	ldr r3, [r0, #0x0]
	lsl r2, r1
	add r1, r3, #0x0
	orr r1, r2
	str r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02013C28
FUN_02013C28: ; 0x02013C28
	push {r4-r7}
	mov r3, #0x0
	ldr r5, _02013C64 ; =0x020ED5EC
	add r2, r3, #0x0
_02013C30:
	ldr r7, [r5, #0x4]
	add r4, r2, #0x0
	cmp r7, #0x0
	ble _02013C54
	ldr r6, [r5, #0x0]
_02013C3A:
	ldrh r1, [r6, #0x0]
	cmp r0, r1
	bne _02013C4C
	ldr r0, _02013C68 ; =0x020ED5F0
	lsl r1, r3, #0x3
	ldr r0, [r0, r1]
	sub r0, r0, #0x1
	pop {r4-r7}
	bx lr
_02013C4C:
	add r4, r4, #0x1
	add r6, r6, #0x2
	cmp r4, r7
	blt _02013C3A
_02013C54:
	add r3, r3, #0x1
	add r5, #0x8
	cmp r3, #0xc
	blo _02013C30
	mov r0, #0x0
	pop {r4-r7}
	bx lr
	nop
_02013C64: .word 0x020ED5EC
_02013C68: .word 0x020ED5F0

	thumb_func_start FUN_02013C6C
FUN_02013C6C: ; 0x02013C6C
	push {r3-r7, lr}
	ldr r3, _02013CC8 ; =0x020ED5EC
	add r6, r1, #0x0
	mov r7, #0x0
_02013C74:
	ldr r5, [r3, #0x4]
	mov r2, #0x0
	cmp r5, #0x0
	ble _02013CBC
	ldr r4, [r3, #0x0]
_02013C7E:
	ldrh r1, [r4, #0x0]
	cmp r0, r1
	bne _02013CB4
	ldr r2, _02013CCC ; =0x020ED5F0
	lsl r1, r7, #0x3
	ldr r2, [r2, r1]
	mov r0, #0x0
	cmp r2, #0x0
	beq _02013CAC
	ldr r2, _02013CC8 ; =0x020ED5EC
	add r2, r2, r1
	ldr r2, [r2, #0x4]
_02013C96:
	cmp r6, #0x0
	bne _02013CA4
	ldr r2, _02013CC8 ; =0x020ED5EC
	lsl r0, r0, #0x1
	ldr r1, [r2, r1]
	ldrh r0, [r1, r0]
	pop {r3-r7, pc}
_02013CA4:
	sub r6, r6, #0x1
	add r0, r0, #0x1
	cmp r2, #0x0
	bne _02013C96
_02013CAC:
	bl ErrorHandling
	ldr r0, _02013CD0 ; =0x0000FFFF
	pop {r3-r7, pc}
_02013CB4:
	add r2, r2, #0x1
	add r4, r4, #0x2
	cmp r2, r5
	blt _02013C7E
_02013CBC:
	add r7, r7, #0x1
	add r3, #0x8
	cmp r7, #0xc
	blo _02013C74
	pop {r3-r7, pc}
	nop
_02013CC8: .word 0x020ED5EC
_02013CCC: .word 0x020ED5F0
_02013CD0: .word 0x0000FFFF

	thumb_func_start FUN_02013CD4
FUN_02013CD4: ; 0x02013CD4
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r1, #0x18
	bl FUN_02016998
	add r4, r0, #0x0
	bne _02013CE8
	bl ErrorHandling
_02013CE8:
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0xc]
	bl FUN_02013F68
	str r0, [r4, #0x0]
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x4]
	ldr r0, [r5, #0x4]
	ldr r1, [r5, #0xc]
	bl FUN_02013F98
	str r0, [r4, #0x8]
	ldr r0, [r5, #0x4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x8]
	ldr r1, [r5, #0xc]
	bl FUN_02013FC8
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x8]
	str r0, [r4, #0x14]
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02013D18
FUN_02013D18: ; 0x02013D18
	push {r4, lr}
	add r4, r0, #0x0
	bne _02013D22
	bl ErrorHandling
_02013D22:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02013D2C
	bl ErrorHandling
_02013D2C:
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	bne _02013D36
	bl ErrorHandling
_02013D36:
	ldr r0, [r4, #0x10]
	cmp r0, #0x0
	bne _02013D40
	bl ErrorHandling
_02013D40:
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	ldr r0, [r4, #0x8]
	bl FUN_02016A18
	ldr r0, [r4, #0x10]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02013D5C
FUN_02013D5C: ; 0x02013D5C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, _02013D90 ; =0x04000444
	mov r6, #0x0
	str r6, [r0, #0x0]
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	ble _02013D86
	add r4, r6, #0x0
_02013D6E:
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	ldr r1, [r0, #0x20]
	cmp r1, #0x0
	beq _02013D7C
	bl FUN_020140D8
_02013D7C:
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0x40
	cmp r6, r0
	blt _02013D6E
_02013D86:
	ldr r0, _02013D94 ; =0x04000448
	mov r1, #0x1
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
	nop
_02013D90: .word 0x04000444
_02013D94: .word 0x04000448

	thumb_func_start FUN_02013D98
FUN_02013D98: ; 0x02013D98
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_02014024
	add r4, r0, #0x0
	bne _02013DAA
	bl ErrorHandling
_02013DAA:
	ldr r0, [r5, #0x4]
	ldr r0, [r0, #0x8]
	cmp r0, #0x0
	beq _02013DB6
	bl ErrorHandling
_02013DB6:
	ldr r0, [r5, #0x4]
	bl FUN_0201407C
	str r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02013DC6
	bl ErrorHandling
_02013DC6:
	ldr r0, [r5, #0x4]
	ldr r1, [r4, #0x0]
	add r2, r4, #0x4
	bl FUN_020140A4
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_02013DD4
FUN_02013DD4: ; 0x02013DD4
	push {r4, lr}
	ldr r1, _02013DE8 ; =0x021064BC
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r1, #0x0]
	blx r1
	add r0, r4, #0x0
	bl FUN_02013F50
	pop {r4, pc}
	.balign 4
_02013DE8: .word 0x021064BC

	thumb_func_start FUN_02013DEC
FUN_02013DEC: ; 0x02013DEC
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02013E12
	add r4, r6, #0x0
_02013DFA:
	ldr r1, [r5, #0x8]
	ldr r0, [r1, r4]
	cmp r0, #0x0
	beq _02013E08
	add r0, r1, r4
	bl FUN_02013DD4
_02013E08:
	ldr r0, [r5, #0xc]
	add r6, r6, #0x1
	add r4, #0x28
	cmp r6, r0
	blt _02013DFA
_02013E12:
	pop {r4-r6, pc}

	thumb_func_start FUN_02013E14
FUN_02013E14: ; 0x02013E14
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_02014050
	add r4, r0, #0x0
	bne _02013E26
	bl ErrorHandling
_02013E26:
	ldr r0, [r5, #0x8]
	bl FUN_02014090
	str r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02013E36
	bl ErrorHandling
_02013E36:
	ldr r0, [r5, #0x4]
	ldr r1, [r4, #0x0]
	add r2, r4, #0x4
	bl FUN_020140B4
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_02013E44
FUN_02013E44: ; 0x02013E44
	push {r4, lr}
	ldr r1, _02013E58 ; =0x021064C4
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r1, #0x0]
	blx r1
	add r0, r4, #0x0
	bl FUN_02013F5C
	pop {r4, pc}
	.balign 4
_02013E58: .word 0x021064C4

	thumb_func_start FUN_02013E5C
FUN_02013E5C: ; 0x02013E5C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x14]
	mov r6, #0x0
	cmp r0, #0x0
	ble _02013E82
	add r4, r6, #0x0
_02013E6A:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #0x0
	beq _02013E78
	add r0, r1, r4
	bl FUN_02013E44
_02013E78:
	ldr r0, [r5, #0x14]
	add r6, r6, #0x1
	add r4, #0x18
	cmp r6, r0
	blt _02013E6A
_02013E82:
	pop {r4-r6, pc}

	thumb_func_start FUN_02013E84
FUN_02013E84: ; 0x02013E84
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_02013FF8
	add r4, r0, #0x0
	bne _02013E96
	bl ErrorHandling
_02013E96:
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_02014218
	mov r0, #0x1
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_02013EA8
FUN_02013EA8: ; 0x02013EA8
	ldr r3, _02013EAC ; =FUN_02013F30
	bx r3
	.balign 4
_02013EAC: .word FUN_02013F30 

	thumb_func_start FUN_02013EB0
FUN_02013EB0: ; 0x02013EB0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _02013EBE
	bl ErrorHandling
_02013EBE:
	str r4, [r5, #0x20]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02013EC4
FUN_02013EC4: ; 0x02013EC4
	strh r1, [r0, #0x0]
	strh r2, [r0, #0x2]
	bx lr
	.balign 4

	thumb_func_start FUN_02013ECC
FUN_02013ECC: ; 0x02013ECC
	ldrh r1, [r0, #0x2]
	ldrh r0, [r0, #0x0]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4

	thumb_func_start FUN_02013ED8
FUN_02013ED8: ; 0x02013ED8
	strh r1, [r0, #0x4]
	strh r2, [r0, #0x6]
	bx lr
	.balign 4

	thumb_func_start FUN_02013EE0
FUN_02013EE0: ; 0x02013EE0
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.balign 4

	thumb_func_start FUN_02013EE8
FUN_02013EE8: ; 0x02013EE8
	strh r1, [r0, #0x8]
	strh r2, [r0, #0xa]
	bx lr
	.balign 4

	thumb_func_start FUN_02013EF0
FUN_02013EF0: ; 0x02013EF0
	ldrh r1, [r0, #0xa]
	ldrh r0, [r0, #0x8]
	lsl r1, r1, #0x10
	orr r0, r1
	bx lr
	.balign 4

	thumb_func_start FUN_02013EFC
FUN_02013EFC: ; 0x02013EFC
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start FUN_02013F00
FUN_02013F00: ; 0x02013F00
	ldr r0, [r0, #0x14]
	bx lr

	thumb_func_start FUN_02013F04
FUN_02013F04: ; 0x02013F04
	add r0, #0x3e
	strb r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02013F0C
FUN_02013F0C: ; 0x02013F0C
	strh r1, [r0, #0x3c]
	bx lr

	thumb_func_start FUN_02013F10
FUN_02013F10: ; 0x02013F10
	str r1, [r0, #0x24]
	bx lr

	thumb_func_start FUN_02013F14
FUN_02013F14: ; 0x02013F14
	str r1, [r0, #0x28]
	bx lr

	thumb_func_start FUN_02013F18
FUN_02013F18: ; 0x02013F18
	str r1, [r0, #0x2c]
	bx lr

	thumb_func_start FUN_02013F1C
FUN_02013F1C: ; 0x02013F1C
	str r1, [r0, #0x30]
	bx lr

	thumb_func_start FUN_02013F20
FUN_02013F20: ; 0x02013F20
	cmp r1, #0x0
	bne _02013F28
	str r2, [r0, #0x34]
	bx lr
_02013F28:
	str r2, [r0, #0x38]
	bx lr

	thumb_func_start FUN_02013F2C
FUN_02013F2C: ; 0x02013F2C
	str r1, [r0, #0x18]
	bx lr

	thumb_func_start FUN_02013F30
FUN_02013F30: ; 0x02013F30
	push {r4, lr}
	add r4, r0, #0x0
	mov r1, #0x0
	mov r2, #0x40
	blx Call_FillMemWithValue
	add r0, r4, #0x0
	mov r1, #0x1f
	add r0, #0x3e
	strb r1, [r0, #0x0]
	ldr r0, _02013F4C ; =0x00007FFF
	strh r0, [r4, #0x3c]
	pop {r4, pc}
	nop
_02013F4C: .word 0x00007FFF

	thumb_func_start FUN_02013F50
FUN_02013F50: ; 0x02013F50
	ldr r3, _02013F58 ; =FUN_020B1A24
	mov r1, #0x0
	stmia r0!, {r1}
	bx r3
	.balign 4
_02013F58: .word FUN_020B1A24

	thumb_func_start FUN_02013F5C
FUN_02013F5C: ; 0x02013F5C
	ldr r3, _02013F64 ; =FUN_020B19DC
	mov r1, #0x0
	stmia r0!, {r1}
	bx r3
	.balign 4
_02013F64: .word FUN_020B19DC

	thumb_func_start FUN_02013F68
FUN_02013F68: ; 0x02013F68
	push {r3-r7, lr}
	add r6, r0, #0x0
	add r0, r1, #0x0
	lsl r1, r6, #0x6
	bl FUN_02016998
	add r7, r0, #0x0
	bne _02013F7C
	bl ErrorHandling
_02013F7C:
	mov r4, #0x0
	cmp r6, #0x0
	ble _02013F92
	add r5, r7, #0x0
_02013F84:
	add r0, r5, #0x0
	bl FUN_02013F30
	add r4, r4, #0x1
	add r5, #0x40
	cmp r4, r6
	blt _02013F84
_02013F92:
	add r0, r7, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02013F98
FUN_02013F98: ; 0x02013F98
	push {r3-r7, lr}
	add r6, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x28
	mul r1, r6
	bl FUN_02016998
	add r7, r0, #0x0
	bne _02013FAE
	bl ErrorHandling
_02013FAE:
	mov r4, #0x0
	cmp r6, #0x0
	ble _02013FC4
	add r5, r7, #0x0
_02013FB6:
	add r0, r5, #0x0
	bl FUN_02013F50
	add r4, r4, #0x1
	add r5, #0x28
	cmp r4, r6
	blt _02013FB6
_02013FC4:
	add r0, r7, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02013FC8
FUN_02013FC8: ; 0x02013FC8
	push {r3-r7, lr}
	add r6, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x18
	mul r1, r6
	bl FUN_02016998
	add r7, r0, #0x0
	bne _02013FDE
	bl ErrorHandling
_02013FDE:
	mov r4, #0x0
	cmp r6, #0x0
	ble _02013FF4
	add r5, r7, #0x0
_02013FE6:
	add r0, r5, #0x0
	bl FUN_02013F5C
	add r4, r4, #0x1
	add r5, #0x18
	cmp r4, r6
	blt _02013FE6
_02013FF4:
	add r0, r7, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02013FF8
FUN_02013FF8: ; 0x02013FF8
	push {r3-r4}
	ldr r4, [r0, #0x4]
	mov r1, #0x0
	cmp r4, #0x0
	ble _0201401C
	ldr r3, [r0, #0x0]
	add r2, r3, #0x0
_02014006:
	ldr r0, [r2, #0x1c]
	cmp r0, #0x0
	bne _02014014
	lsl r0, r1, #0x6
	add r0, r3, r0
	pop {r3-r4}
	bx lr
_02014014:
	add r1, r1, #0x1
	add r2, #0x40
	cmp r1, r4
	blt _02014006
_0201401C:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_02014024
FUN_02014024: ; 0x02014024
	push {r3-r4}
	ldr r4, [r0, #0x4]
	mov r1, #0x0
	cmp r4, #0x0
	ble _0201404A
	ldr r3, [r0, #0x8]
	add r2, r3, #0x0
_02014032:
	ldr r0, [r2, #0x0]
	cmp r0, #0x0
	bne _02014042
	mov r0, #0x28
	mul r0, r1
	add r0, r3, r0
	pop {r3-r4}
	bx lr
_02014042:
	add r1, r1, #0x1
	add r2, #0x28
	cmp r1, r4
	blt _02014032
_0201404A:
	mov r0, #0x0
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_02014050
FUN_02014050: ; 0x02014050
	push {r3-r4}
	ldr r4, [r0, #0x4]
	mov r1, #0x0
	cmp r4, #0x0
	ble _02014076
	ldr r3, [r0, #0x10]
	add r2, r3, #0x0
_0201405E:
	ldr r0, [r2, #0x0]
	cmp r0, #0x0
	bne _0201406E
	mov r0, #0x18
	mul r0, r1
	add r0, r3, r0
	pop {r3-r4}
	bx lr
_0201406E:
	add r1, r1, #0x1
	add r2, #0x18
	cmp r1, r4
	blt _0201405E
_02014076:
	mov r0, #0x0
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201407C
FUN_0201407C: ; 0x0201407C
	push {r3, lr}
	ldr r3, _0201408C ; =0x021064B8
	mov r1, #0x0
	ldr r0, [r0, #0x10]
	ldr r3, [r3, #0x0]
	add r2, r1, #0x0
	blx r3
	pop {r3, pc}
	.balign 4
_0201408C: .word 0x021064B8

	thumb_func_start FUN_02014090
FUN_02014090: ; 0x02014090
	push {r3, lr}
	ldr r3, _020140A0 ; =0x021064C0
	mov r1, #0x0
	ldr r3, [r3, #0x0]
	lsl r0, r0, #0x5
	add r2, r1, #0x0
	blx r3
	pop {r3, pc}
	.balign 4
_020140A0: .word 0x021064C0

	thumb_func_start FUN_020140A4
FUN_020140A4: ; 0x020140A4
	push {r3, lr}
	lsl r1, r1, #0x10
	add r3, r2, #0x0
	lsr r1, r1, #0xd
	mov r2, #0x0
	blx FUN_020B1528
	pop {r3, pc}

	thumb_func_start FUN_020140B4
FUN_020140B4: ; 0x020140B4
	push {r3-r5, lr}
	add r3, r2, #0x0
	ldr r2, _020140D4 ; =0xFFFF0000
	add r5, r0, #0x0
	and r2, r1
	lsr r2, r2, #0x10
	lsl r1, r1, #0x10
	ldr r4, [r5, #0x8]
	lsl r2, r2, #0x3
	str r2, [r5, #0x8]
	lsr r1, r1, #0xd
	mov r2, #0x0
	blx FUN_020B1240
	str r4, [r5, #0x8]
	pop {r3-r5, pc}
	.balign 4
_020140D4: .word 0xFFFF0000

	thumb_func_start FUN_020140D8
FUN_020140D8: ; 0x020140D8
	push {r3-r7, lr}
	sub sp, #0x18
	ldr r7, _020141F8 ; =0x04000444
	mov r6, #0x0
	add r5, r0, #0x0
	str r6, [r7, #0x0]
	ldrh r1, [r5, #0x3c]
	ldr r0, _020141FC ; =0x7FFF8000
	orr r0, r1
	str r0, [r7, #0x7c]
	add r0, r7, #0x0
	ldr r1, _02014200 ; =0x00004210
	add r0, #0x80
	str r1, [r0, #0x0]
	ldr r3, [r5, #0x24]
	ldr r4, [r3, #0x8]
	ldr r2, [r3, #0x10]
	ldr r1, [r3, #0x4]
	ldr r0, [r3, #0x0]
	lsl r3, r2, #0x1d
	lsl r2, r1, #0x17
	lsl r1, r0, #0x14
	ldr r0, [r5, #0x28]
	lsl r4, r4, #0x1a
	lsr r0, r0, #0x3
	orr r4, r0
	mov r0, #0x1
	lsl r0, r0, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	str r0, [r7, #0x64]
	ldr r0, [r5, #0x24]
	ldr r0, [r0, #0x8]
	cmp r0, #0x2
	bne _02014124
	mov r6, #0x1
_02014124:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #0x5
	add r1, r1, r0
	mov r0, #0x4
	sub r0, r0, r6
	lsr r1, r0
	ldr r2, _02014204 ; =0x040004AC
	add r0, r5, #0x0
	str r1, [r2, #0x0]
	add r0, #0x3e
	ldrb r0, [r0, #0x0]
	sub r2, #0x8
	lsl r1, r0, #0x10
	mov r0, #0xc0
	orr r0, r1
	str r0, [r2, #0x0]
	ldr r0, [r5, #0x34]
	cmp r0, #0x0
	beq _02014156
	mov r0, #0x8
	ldrsh r0, [r5, r0]
	mov r7, #0x0
	str r0, [sp, #0x14]
	b _0201415E
_02014156:
	mov r0, #0x8
	ldrsh r7, [r5, r0]
	mov r0, #0x0
	str r0, [sp, #0x14]
_0201415E:
	ldr r0, [r5, #0x38]
	cmp r0, #0x0
	beq _0201416C
	mov r0, #0xa
	ldrsh r6, [r5, r0]
	mov r4, #0x0
	b _02014172
_0201416C:
	mov r0, #0xa
	ldrsh r4, [r5, r0]
	mov r6, #0x0
_02014172:
	ldr r0, [r5, #0x14]
	mov r1, #0x6
	lsl r2, r0, #0xc
	mov r0, #0x2
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	mov r3, #0x4
	ldrsh r3, [r5, r3]
	add r0, r0, r1
	lsl r1, r0, #0xc
	mov r0, #0x0
	ldrsh r0, [r5, r0]
	add r0, r0, r3
	ldr r3, _02014208 ; =0x04000470
	lsl r0, r0, #0xc
	str r0, [r3, #0x0]
	str r1, [r3, #0x0]
	str r2, [r3, #0x0]
	ldr r0, [r5, #0x18]
	ldr r1, _0201420C ; =0x020FFA38
	asr r0, r0, #0x4
	lsl r2, r0, #0x1
	lsl r0, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	blx FUN_020C7FF0
	ldr r2, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, _02014210 ; =0x0400046C
	mov r3, #0x8
	str r0, [r1, #0x0]
	str r2, [r1, #0x0]
	lsr r0, r1, #0xe
	str r0, [r1, #0x0]
	mov r2, #0x4
	mov r0, #0x6
	ldrsh r2, [r5, r2]
	ldrsh r0, [r5, r0]
	neg r2, r2
	neg r0, r0
	lsl r2, r2, #0xc
	lsl r0, r0, #0xc
	str r2, [r1, #0x4]
	str r0, [r1, #0x4]
	mov r0, #0x0
	str r0, [r1, #0x4]
	mov r1, #0xa
	ldrsh r1, [r5, r1]
	add r2, r0, #0x0
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x14]
	str r1, [sp, #0x4]
	str r6, [sp, #0x8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrsh r3, [r5, r3]
	add r1, r0, #0x0
	blx FUN_020B0250
	ldr r0, _02014214 ; =0x04000448
	mov r1, #0x1
	str r1, [r0, #0x0]
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4
_020141F8: .word 0x04000444
_020141FC: .word 0x7FFF8000
_02014200: .word 0x00004210
_02014204: .word 0x040004AC
_02014208: .word 0x04000470
_0201420C: .word 0x020FFA38
_02014210: .word 0x0400046C
_02014214: .word 0x04000448

	thumb_func_start FUN_02014218
FUN_02014218: ; 0x02014218
	push {r3-r7, lr}
	add r5, r1, #0x0
	ldr r1, [r5, #0x4]
	add r7, r0, #0x0
	ldr r2, [r1, #0x10]
	mov r6, #0x8
	mov r0, #0x0
	cmp r2, #0x0
	ble _02014236
_0201422A:
	ldr r2, [r5, #0x4]
	add r0, r0, #0x1
	ldr r2, [r2, #0x10]
	lsl r6, r6, #0x1
	cmp r0, r2
	blt _0201422A
_02014236:
	ldr r1, [r1, #0x14]
	mov r4, #0x8
	mov r0, #0x0
	cmp r1, #0x0
	ble _0201424C
_02014240:
	ldr r1, [r5, #0x4]
	add r0, r0, #0x1
	ldr r1, [r1, #0x14]
	lsl r4, r4, #0x1
	cmp r0, r1
	blt _02014240
_0201424C:
	mov r1, #0xc
	mov r2, #0xe
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	add r0, r7, #0x0
	bl FUN_02013EC4
	lsr r1, r6, #0x1f
	lsr r2, r4, #0x1f
	add r1, r6, r1
	add r2, r4, r2
	lsl r1, r1, #0xf
	lsl r2, r2, #0xf
	add r0, r7, #0x0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl FUN_02013ED8
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	add r0, r7, #0x0
	add r1, r6, #0x0
	add r2, r4, #0x0
	bl FUN_02013EE8
	ldr r1, [r5, #0x18]
	add r0, r7, #0x0
	bl FUN_02013EFC
	ldr r1, [r5, #0x14]
	add r0, r7, #0x0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FUN_02013F04
	ldr r1, [r5, #0x4]
	add r0, r7, #0x0
	add r1, #0x10
	bl FUN_02013F10
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	add r0, r0, #0x4
	blx FUN_020B1A14
	add r1, r0, #0x0
	add r0, r7, #0x0
	bl FUN_02013F14
	ldr r0, [r5, #0x8]
	mov r1, #0x0
	add r0, r0, #0x4
	blx FUN_020B19C4
	add r1, r0, #0x0
	add r0, r7, #0x0
	bl FUN_02013F18
	ldrh r1, [r5, #0x1c]
	add r0, r7, #0x0
	bl FUN_02013F1C
	mov r1, #0x0
	add r0, r7, #0x0
	add r2, r1, #0x0
	bl FUN_02013F20
	add r0, r7, #0x0
	mov r1, #0x1
	mov r2, #0x0
	bl FUN_02013F20
	ldrh r1, [r5, #0x10]
	add r0, r7, #0x0
	bl FUN_02013F2C
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_020142EC
FUN_020142EC: ; 0x020142EC
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r7, r2, #0x0
	ldr r0, _02014394 ; =FUN_020143DC
	mov r1, #0x50
	mov r2, #0x0
	bl FUN_020061E8
	str r0, [sp, #0x4]
	bl FUN_0201B6C8
	add r4, r0, #0x0
	cmp r5, #0x0
	beq _02014330
	cmp r6, #0x0
	bne _02014320
	add r0, r5, #0x0
	mov r1, #0x0
	bl FUN_020031FC
	str r0, [sp, #0x0]
	ldr r0, _02014398 ; =FUN_020144E0
	str r0, [r4, #0x4]
	b _0201434A
_02014320:
	add r0, r5, #0x0
	mov r1, #0x1
	bl FUN_020031FC
	str r0, [sp, #0x0]
	ldr r0, _0201439C ; =FUN_020144FC
	str r0, [r4, #0x4]
	b _0201434A
_02014330:
	cmp r6, #0x0
	bne _02014340
	bl FUN_020222E8
	str r0, [sp, #0x0]
	ldr r0, _020143A0 ; =FUN_020144B0
	str r0, [r4, #0x4]
	b _0201434A
_02014340:
	bl FUN_020222F8
	str r0, [sp, #0x0]
	ldr r0, _020143A4 ; =FUN_020144C8
	str r0, [r4, #0x4]
_0201434A:
	ldr r1, [sp, #0x0]
	lsl r0, r7, #0x5
	str r0, [sp, #0x8]
	add r0, r1, r0
	add r1, r4, #0x0
	add r1, #0xc
	mov r2, #0x20
	blx MIi_CpuCopy16
	ldr r1, [sp, #0x0]
	ldr r0, [sp, #0x8]
	mov r2, #0x20
	add r0, r1, r0
	add r1, r4, #0x0
	add r1, #0x2c
	blx MIi_CpuCopy16
	ldr r0, [sp, #0x4]
	mov r1, #0x1
	str r0, [r4, #0x0]
	add r0, r4, #0x0
	str r5, [r4, #0x8]
	add r0, #0x4c
	strb r6, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x4d
	strb r7, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x4e
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	mov r1, #0x0
	add r0, #0x4f
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_02014394: .word FUN_020143DC 
_02014398: .word FUN_020144E0 
_0201439C: .word FUN_020144FC 
_020143A0: .word FUN_020144B0 
_020143A4: .word FUN_020144C8 

	thumb_func_start FUN_020143A8
FUN_020143A8: ; 0x020143A8
	cmp r1, #0x0
	beq _020143B6
	cmp r1, #0x1
	beq _020143BE
	cmp r1, #0x2
	beq _020143C6
	bx lr
_020143B6:
	mov r1, #0x0
	add r0, #0x4e
	strb r1, [r0, #0x0]
	bx lr
_020143BE:
	mov r1, #0x2
	add r0, #0x4e
	strb r1, [r0, #0x0]
	bx lr
_020143C6:
	mov r1, #0x3
	add r0, #0x4e
	strb r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_020143D0
FUN_020143D0: ; 0x020143D0
	ldr r3, _020143D8 ; =FUN_0200621C
	ldr r0, [r0, #0x0]
	bx r3
	nop
_020143D8: .word FUN_0200621C 

	thumb_func_start FUN_020143DC
FUN_020143DC: ; 0x020143DC
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x4e
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	bhi _02014452
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020143F8: ; jump table (using 16-bit offset)
	.short _02014400 - _020143F8 - 2; case 0
	.short _02014410 - _020143F8 - 2; case 1
	.short _02014452 - _020143F8 - 2; case 2
	.short _02014444 - _020143F8 - 2; case 3
_02014400:
	add r0, r4, #0x0
	mov r1, #0x0
	add r0, #0x4f
	strb r1, [r0, #0x0]
	mov r0, #0x1
	add r4, #0x4e
	strb r0, [r4, #0x0]
	pop {r3-r5, pc}
_02014410:
	add r0, r4, #0x0
	bl FUN_02014454
	cmp r0, #0x1
	bne _02014424
	add r1, r4, #0x0
	ldr r2, [r4, #0x4]
	add r0, r4, #0x0
	add r1, #0x2c
	blx r2
_02014424:
	add r0, r4, #0x0
	add r0, #0x4f
	ldrb r0, [r0, #0x0]
	add r1, r0, #0x1
	add r0, r4, #0x0
	add r0, #0x4f
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x4f
	ldrb r0, [r0, #0x0]
	cmp r0, #0x20
	bne _02014452
	mov r0, #0x0
	add r4, #0x4f
	strb r0, [r4, #0x0]
	pop {r3-r5, pc}
_02014444:
	ldr r2, [r4, #0x4]
	add r0, r4, #0x0
	add r1, #0xc
	blx r2
	add r0, r5, #0x0
	bl FUN_0200621C
_02014452:
	pop {r3-r5, pc}

	thumb_func_start FUN_02014454
FUN_02014454: ; 0x02014454
	push {r4-r5}
	add r1, r0, #0x0
	add r1, #0x4f
	ldrb r1, [r1, #0x0]
	cmp r1, #0x0
	bne _02014482
	mov r1, #0x1e
	mov r4, #0x0
	mov r3, #0x1
	lsl r1, r1, #0xa
_02014468:
	add r2, r3, #0x0
	lsl r2, r4
	tst r2, r1
	beq _02014474
	ldrh r2, [r0, #0xc]
	strh r2, [r0, #0x2c]
_02014474:
	add r4, r4, #0x1
	add r0, r0, #0x2
	cmp r4, #0x10
	blo _02014468
	mov r0, #0x1
	pop {r4-r5}
	bx lr
_02014482:
	cmp r1, #0x18
	bne _020144AA
	mov r1, #0x1e
	mov r5, #0x0
	add r4, r0, #0x0
	mov r3, #0x1
	lsl r1, r1, #0xa
_02014490:
	add r2, r3, #0x0
	lsl r2, r5
	tst r2, r1
	beq _0201449C
	ldrh r2, [r0, #0x2a]
	strh r2, [r4, #0x2c]
_0201449C:
	add r5, r5, #0x1
	add r4, r4, #0x2
	cmp r5, #0x10
	blo _02014490
	mov r0, #0x1
	pop {r4-r5}
	bx lr
_020144AA:
	mov r0, #0x0
	pop {r4-r5}
	bx lr

	thumb_func_start FUN_020144B0
FUN_020144B0: ; 0x020144B0
	push {r3, lr}
	add r3, r0, #0x0
	add r3, #0x4d
	ldrb r3, [r3, #0x0]
	mov r0, #0x0
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl FUN_02017FB4
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_020144C8
FUN_020144C8: ; 0x020144C8
	push {r3, lr}
	add r3, r0, #0x0
	add r3, #0x4d
	ldrb r3, [r3, #0x0]
	mov r0, #0x4
	mov r2, #0x20
	lsl r3, r3, #0x15
	lsr r3, r3, #0x10
	bl FUN_02017FB4
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_020144E0
FUN_020144E0: ; 0x020144E0
	push {r3, lr}
	add r3, r0, #0x0
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [r3, #0x8]
	add r3, #0x4d
	ldrb r3, [r3, #0x0]
	mov r2, #0x0
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl FUN_02003054
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_020144FC
FUN_020144FC: ; 0x020144FC
	push {r3, lr}
	add r3, r0, #0x0
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [r3, #0x8]
	add r3, #0x4d
	ldrb r3, [r3, #0x0]
	mov r2, #0x1
	lsl r3, r3, #0x14
	lsr r3, r3, #0x10
	bl FUN_02003054
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02014518
FUN_02014518: ; 0x02014518
	push {r3-r7, lr}
	mov r1, #0x78
	add r7, r0, #0x0
	bl FUN_02016998
	mov r1, #0x0
	mov r2, #0x78
	add r6, r0, #0x0
	blx MI_CpuFill8
	ldr r2, _02014560 ; =0x0000019E
	mov r0, #0x0
	mov r1, #0x1a
	add r3, r7, #0x0
	bl FUN_0200A86C
	str r0, [r6, #0x0]
	mov r4, #0x0
	add r5, r6, #0x0
_0201453E:
	mov r0, #0x16
	add r1, r7, #0x0
	bl FUN_020219F4
	str r0, [r5, #0x4]
	ldr r0, [r6, #0x0]
	ldr r2, [r5, #0x4]
	add r1, r4, #0x0
	bl FUN_0200A8E0
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x1d
	blt _0201453E
	add r0, r6, #0x0
	pop {r3-r7, pc}
	nop
_02014560: .word 0x0000019E

	thumb_func_start FUN_02014564
FUN_02014564: ; 0x02014564
	push {r4-r6, lr}
	add r6, r0, #0x0
	add r5, r6, #0x0
	mov r4, #0x1c
	add r5, #0x70
_0201456E:
	ldr r0, [r5, #0x4]
	bl FUN_02021A20
	sub r5, r5, #0x4
	sub r4, r4, #0x1
	bpl _0201456E
	ldr r0, [r6, #0x0]
	bl FUN_0200A8B8
	add r0, r6, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}

	thumb_func_start FUN_02014588
FUN_02014588: ; 0x02014588
	lsl r1, r1, #0x2
	add r0, r0, r1
	ldr r0, [r0, #0x4]
	bx lr

	thumb_func_start FUN_02014590
FUN_02014590: ; 0x02014590
	push {r3-r5, lr}
	add r5, r0, #0x0
	mov r1, #0x9c
	bl FUN_02016998
	add r1, r5, #0x0
	add r4, r0, #0x0
	bl FUN_020146F0
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020145A8
FUN_020145A8: ; 0x020145A8
	push {r4, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x9b
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #0x1
	bne _020145BE
	bl FUN_020146C4
_020145BE:
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020145C8
FUN_020145C8: ; 0x020145C8
	push {r3-r5, lr}
	add r4, r1, #0x0
	ldr r2, [r4, #0x0]
	add r5, r0, #0x0
	str r2, [r5, #0x7c]
	add r2, r5, #0x0
	ldr r3, [r4, #0x4]
	add r2, #0x80
	str r3, [r2, #0x0]
	add r2, r5, #0x0
	ldrb r3, [r4, #0x10]
	add r2, #0x98
	strb r3, [r2, #0x0]
	add r2, r5, #0x0
	ldrb r3, [r4, #0x11]
	add r2, #0x99
	strb r3, [r2, #0x0]
	bl FUN_02014730
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02014754
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02014784
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02014814
	add r0, r5, #0x0
	add r0, #0x9b
	ldrb r1, [r0, #0x0]
	mov r0, #0xf
	bic r1, r0
	mov r0, #0x1
	orr r1, r0
	add r0, r5, #0x0
	add r0, #0x9b
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x9b
	ldrb r1, [r0, #0x0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5, #0x0]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02014630
FUN_02014630: ; 0x02014630
	push {r4, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x9b
	ldrb r2, [r1, #0x0]
	mov r1, #0xf0
	bic r2, r1
	mov r1, #0x80
	orr r2, r1
	add r1, r4, #0x0
	add r1, #0x9b
	strb r2, [r1, #0x0]
	bl FUN_0201466C
	cmp r0, #0x0
	bne _0201466A
	add r1, r4, #0x0
	add r1, #0x9b
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bne _0201466A
	add r4, #0x9a
	ldrb r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02014668
	mov r0, #0x3
	pop {r4, pc}
_02014668:
	mov r0, #0x4
_0201466A:
	pop {r4, pc}

	thumb_func_start FUN_0201466C
FUN_0201466C: ; 0x0201466C
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x9b
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #0x1
	beq _02014680
	bl ErrorHandling
_02014680:
	add r0, r4, #0x0
	add r0, #0x9a
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	bne _02014690
	ldr r0, [r4, #0x0]
	bl FUN_02022144
_02014690:
	add r1, r4, #0x0
	add r1, #0x9a
	ldrb r2, [r1, #0x0]
	mov r0, #0x0
	cmp r2, #0x3
	beq _020146AA
	add r1, r4, #0x0
	mov r0, #0x38
	add r1, #0xc
	mul r0, r2
	add r0, r1, r0
	bl FUN_02014930
_020146AA:
	cmp r0, #0x1
	bne _020146BE
	add r4, #0x9a
	ldrb r0, [r4, #0x0]
	cmp r0, #0x0
	bne _020146BA
	mov r0, #0x1
	pop {r4, pc}
_020146BA:
	mov r0, #0x2
	pop {r4, pc}
_020146BE:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020146C4
FUN_020146C4: ; 0x020146C4
	push {r4-r6, lr}
	add r6, r0, #0x0
	ldr r0, [r6, #0x0]
	bl FUN_0202212C
	add r5, r6, #0x0
	mov r4, #0x0
	add r5, #0xc
_020146D4:
	add r0, r5, #0x0
	bl FUN_02014970
	add r4, r4, #0x1
	add r5, #0x38
	cmp r4, #0x2
	blt _020146D4
	add r0, r6, #0x0
	add r6, #0x84
	ldr r1, [r6, #0x0]
	bl FUN_020146F0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_020146F0
FUN_020146F0: ; 0x020146F0
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	mov r1, #0x0
	mov r2, #0x9c
	blx Call_FillMemWithValue
	add r0, r5, #0x0
	add r0, #0x9b
	ldrb r1, [r0, #0x0]
	mov r0, #0xf
	bic r1, r0
	add r0, r5, #0x0
	add r0, #0x9b
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x84
	str r4, [r0, #0x0]
	add r0, r5, #0x0
	mov r1, #0x3
	add r0, #0x9a
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x9b
	ldrb r1, [r0, #0x0]
	mov r0, #0xf0
	add r5, #0x9b
	bic r1, r0
	mov r0, #0x80
	orr r0, r1
	strb r0, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_02014730
FUN_02014730: ; 0x02014730
	push {r3, lr}
	sub sp, #0x8
	add r3, r0, #0x0
	ldr r0, [r1, #0x8]
	mov r1, #0x1
	str r0, [sp, #0x0]
	add r0, r3, #0x0
	add r0, #0x84
	ldr r0, [r0, #0x0]
	str r0, [sp, #0x4]
	ldr r2, [r3, #0x7c]
	add r3, #0x80
	ldr r3, [r3, #0x0]
	mov r0, #0x54
	bl FUN_02014A3C
	add sp, #0x8
	pop {r3, pc}

	thumb_func_start FUN_02014754
FUN_02014754: ; 0x02014754
	push {r3, lr}
	sub sp, #0x8
	add r3, r1, #0x0
	add r1, r0, #0x0
	add r1, #0x80
	ldr r1, [r1, #0x0]
	cmp r1, #0x4
	bhs _02014768
	mov r2, #0x0
	b _0201476A
_02014768:
	mov r2, #0x4
_0201476A:
	mov r1, #0x40
	str r1, [sp, #0x0]
	add r0, #0x84
	ldr r0, [r0, #0x0]
	mov r1, #0x0
	str r0, [sp, #0x4]
	ldr r3, [r3, #0xc]
	mov r0, #0x54
	lsl r3, r3, #0x5
	bl FUN_02014A8C
	add sp, #0x8
	pop {r3, pc}

	thumb_func_start FUN_02014784
FUN_02014784: ; 0x02014784
	push {r3-r7, lr}
	sub sp, #0x30
	add r7, r0, #0x0
	mov r3, #0x0
	add r4, r7, #0x0
_0201478E:
	add r0, r4, #0x0
	add r3, r3, #0x1
	lsl r2, r3, #0xc
	add r0, #0x88
	add r4, r4, #0x4
	str r2, [r0, #0x0]
	cmp r3, #0x4
	blt _0201478E
	ldr r0, [r7, #0x7c]
	mov r5, #0x0
	str r0, [sp, #0x0]
	add r0, r7, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	add r4, r7, #0x0
	str r0, [sp, #0x4]
	mov r0, #0x54
	str r0, [sp, #0x8]
	ldr r0, [r1, #0x8]
	add r6, r5, #0x0
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0xc]
	add r4, #0xc
	str r0, [sp, #0x20]
	add r0, r7, #0x0
	add r0, #0x88
	str r0, [sp, #0x24]
	mov r0, #0x4
	str r0, [sp, #0x28]
	add r0, r7, #0x0
	add r0, #0x98
	ldrb r1, [r0, #0x0]
	add r0, sp, #0x20
	strb r1, [r0, #0xc]
_020147D2:
	mov r1, #0x0
	mov r2, #0x2
	add r3, sp, #0x0
_020147D8:
	add r0, r5, r2
	str r0, [r3, #0xc]
	add r1, r1, #0x1
	add r2, r2, #0x2
	add r3, r3, #0x4
	cmp r1, #0x4
	blt _020147D8
	add r0, r7, #0x0
	add r0, #0x99
	ldrb r0, [r0, #0x0]
	add r2, r7, #0x0
	add r2, #0x84
	add r1, r0, r6
	add r0, sp, #0x20
	strb r1, [r0, #0xd]
	ldr r0, [sp, #0x20]
	add r1, sp, #0x0
	add r0, r0, r5
	str r0, [sp, #0x20]
	ldr r2, [r2, #0x0]
	add r0, r4, #0x0
	bl FUN_020148A8
	add r5, r5, #0x1
	add r6, r6, #0x4
	add r4, #0x38
	cmp r5, #0x2
	blt _020147D2
	add sp, #0x30
	pop {r3-r7, pc}

	thumb_func_start FUN_02014814
FUN_02014814: ; 0x02014814
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	mov r0, #0x0
	add r1, r0, #0x0
	add r2, r4, #0x0
_02014820:
	add r3, r4, #0x0
	add r3, #0x99
	ldrb r3, [r3, #0x0]
	add r0, r0, #0x1
	lsl r3, r3, #0x3
	add r3, r3, r1
	strb r3, [r2, #0x4]
	add r3, r4, #0x0
	add r3, #0x99
	ldrb r3, [r3, #0x0]
	lsl r3, r3, #0x3
	add r3, r3, r1
	add r3, #0x20
	strb r3, [r2, #0x5]
	add r3, r4, #0x0
	add r3, #0x98
	ldrb r3, [r3, #0x0]
	add r1, #0x20
	lsl r3, r3, #0x3
	strb r3, [r2, #0x6]
	add r3, r4, #0x0
	add r3, #0x98
	ldrb r3, [r3, #0x0]
	lsl r3, r3, #0x3
	add r3, #0x30
	strb r3, [r2, #0x7]
	add r2, r2, #0x4
	cmp r0, #0x2
	blt _02014820
	add r0, r4, #0x0
	add r0, #0x84
	ldr r0, [r0, #0x0]
	ldr r2, _02014874 ; =FUN_02014878
	str r0, [sp, #0x0]
	add r0, r4, #0x4
	mov r1, #0x2
	add r3, r4, #0x0
	bl FUN_020220C4
	str r0, [r4, #0x0]
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4
_02014874: .word FUN_02014878 

	thumb_func_start FUN_02014878
FUN_02014878: ; 0x02014878
	push {r4, lr}
	add r3, r2, #0x0
	add r3, #0x9b
	ldrb r3, [r3, #0x0]
	mov r4, #0xf0
	bic r3, r4
	lsl r4, r1, #0x18
	lsr r4, r4, #0x18
	lsl r4, r4, #0x1c
	lsr r4, r4, #0x18
	orr r4, r3
	add r3, r2, #0x0
	add r3, #0x9b
	strb r4, [r3, #0x0]
	cmp r1, #0x0
	bne _020148A2
	add r2, #0x9a
	strb r0, [r2, #0x0]
	ldr r0, _020148A4 ; =0x000005E4
	bl FUN_020054C8
_020148A2:
	pop {r4, pc}
	.balign 4
_020148A4: .word 0x000005E4

	thumb_func_start FUN_020148A8
FUN_020148A8: ; 0x020148A8
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r1, #0x0
	str r2, [sp, #0x8]
	str r0, [sp, #0x4]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	add r0, #0x28
	bl FUN_020149FC
	ldr r1, [r5, #0x0]
	ldr r0, [sp, #0x4]
	ldr r6, [sp, #0x4]
	str r1, [r0, #0x0]
	ldr r1, [r5, #0x4]
	ldr r4, [sp, #0x4]
	str r1, [r0, #0x4]
	add r0, r5, #0x0
	add r0, #0x2c
	ldrb r1, [r0, #0x0]
	ldr r0, [sp, #0x4]
	add r6, #0x18
	add r0, #0x34
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x2d
	ldrb r1, [r0, #0x0]
	ldr r0, [sp, #0x4]
	add r7, r5, #0x0
	add r0, #0x35
	strb r1, [r0, #0x0]
	mov r0, #0x0
	str r0, [sp, #0xc]
_020148EA:
	ldr r0, [sp, #0x8]
	mov r2, #0x1
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x8]
	ldr r1, [r7, #0xc]
	add r3, r6, #0x0
	bl FUN_02006BDC
	str r0, [r4, #0x8]
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	bl FUN_02014BA4
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0x20]
	bl FUN_02014BC4
	ldr r0, [sp, #0xc]
	add r6, r6, #0x4
	add r0, r0, #0x1
	add r7, r7, #0x4
	add r4, r4, #0x4
	str r0, [sp, #0xc]
	cmp r0, #0x4
	blt _020148EA
	ldr r0, [sp, #0x4]
	bl FUN_020149D0
	ldr r0, [sp, #0x4]
	mov r1, #0x0
	add r0, #0x36
	str r0, [sp, #0x4]
	strb r1, [r0, #0x0]
	add sp, #0x10
	pop {r3-r7, pc}

	thumb_func_start FUN_02014930
FUN_02014930: ; 0x02014930
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x28
	bl FUN_02014A10
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x36
	ldrb r0, [r0, #0x0]
	cmp r0, r4
	beq _02014952
	add r0, r5, #0x0
	bl FUN_020149D0
	add r0, r5, #0x0
	add r0, #0x36
	strb r4, [r0, #0x0]
_02014952:
	ldr r0, [r5, #0x2c]
	sub r0, r0, #0x1
	cmp r4, r0
	bne _0201495E
	mov r0, #0x1
	pop {r3-r5, pc}
_0201495E:
	add r5, #0x28
	mov r1, #0x1
	add r0, r5, #0x0
	lsl r1, r1, #0xc
	bl FUN_02014A08
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02014970
FUN_02014970: ; 0x02014970
	push {r4-r6, lr}
	sub sp, #0x10
	add r6, r0, #0x0
	add r0, #0x35
	ldrb r0, [r0, #0x0]
	ldr r1, [r6, #0x18]
	add r3, r6, #0x0
	str r0, [sp, #0x0]
	ldrh r0, [r1, #0x0]
	mov r2, #0x0
	add r3, #0x34
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x4]
	ldrh r0, [r1, #0x2]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x8]
	str r2, [sp, #0xc]
	ldr r1, [r6, #0x4]
	ldrb r3, [r3, #0x0]
	lsl r1, r1, #0x18
	ldr r0, [r6, #0x0]
	lsr r1, r1, #0x18
	bl FUN_02018540
	ldr r1, [r6, #0x4]
	ldr r0, [r6, #0x0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FUN_0201AC68
	mov r4, #0x0
	add r5, r6, #0x0
_020149B4:
	ldr r0, [r5, #0x8]
	bl FUN_02016A18
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x4
	blt _020149B4
	add r0, r6, #0x0
	mov r1, #0x0
	mov r2, #0x38
	blx Call_FillMemWithValue
	add sp, #0x10
	pop {r4-r6, pc}

	thumb_func_start FUN_020149D0
FUN_020149D0: ; 0x020149D0
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r0, #0x28
	bl FUN_02014A10
	add r2, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x35
	ldrb r0, [r0, #0x0]
	lsl r2, r2, #0x2
	add r2, r4, r2
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	add r4, #0x34
	ldrb r3, [r4, #0x0]
	ldr r2, [r2, #0x18]
	bl FUN_02014B58
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_020149FC
FUN_020149FC: ; 0x020149FC
	str r1, [r0, #0x0]
	str r2, [r0, #0x4]
	mov r1, #0x0
	str r1, [r0, #0x8]
	bx lr
	.balign 4

	thumb_func_start FUN_02014A08
FUN_02014A08: ; 0x02014A08
	ldr r2, [r0, #0x8]
	add r1, r2, r1
	str r1, [r0, #0x8]
	bx lr

	thumb_func_start FUN_02014A10
FUN_02014A10: ; 0x02014A10
	push {r4-r5}
	ldr r5, [r0, #0x4]
	mov r2, #0x0
	cmp r5, #0x0
	bls _02014A34
	ldr r3, [r0, #0x0]
	ldr r4, [r0, #0x8]
_02014A1E:
	ldr r1, [r3, #0x0]
	cmp r1, r4
	blt _02014A2A
	add r0, r2, #0x0
	pop {r4-r5}
	bx lr
_02014A2A:
	ldr r1, [r0, #0x4]
	add r2, r2, #0x1
	add r3, r3, #0x4
	cmp r2, r1
	blo _02014A1E
_02014A34:
	sub r0, r5, #0x1
	pop {r4-r5}
	bx lr
	.balign 4

	thumb_func_start FUN_02014A3C
FUN_02014A3C: ; 0x02014A3C
	push {r3-r7, lr}
	sub sp, #0x8
	add r7, r0, #0x0
	str r1, [sp, #0x4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0x0
	add r6, r3, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	add r2, r4, #0x0
	mov r1, #0x14
	mov r0, #0x0
_02014A58:
	strb r0, [r2, #0x0]
	add r2, r2, #0x1
	sub r1, r1, #0x1
	bne _02014A58
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x4]
	str r0, [sp, #0x0]
	add r0, r7, #0x0
	mov r2, #0x1
	add r3, r4, #0x4
	bl FUN_02006BB0
	str r0, [r4, #0x8]
	str r5, [r4, #0x0]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02014A88 ; =FUN_02014AD4
	add r1, r4, #0x0
	mov r2, #0x80
	bl FUN_0200CA98
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_02014A88: .word FUN_02014AD4 

	thumb_func_start FUN_02014A8C
FUN_02014A8C: ; 0x02014A8C
	push {r3-r7, lr}
	add r7, r0, #0x0
	str r1, [sp, #0x0]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0x0
	add r6, r3, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	add r2, r4, #0x0
	mov r1, #0x14
	mov r0, #0x0
_02014AA6:
	strb r0, [r2, #0x0]
	add r2, r2, #0x1
	sub r1, r1, #0x1
	bne _02014AA6
	ldr r1, [sp, #0x0]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0x0
	add r2, r4, #0x0
	bl FUN_02006C08
	str r0, [r4, #0x4]
	str r5, [r4, #0x8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02014AD0 ; =FUN_02014B10
	add r1, r4, #0x0
	mov r2, #0x80
	bl FUN_0200CA98
	pop {r3-r7, pc}
	.balign 4
_02014AD0: .word FUN_02014B10 

	thumb_func_start FUN_02014AD4
FUN_02014AD4: ; 0x02014AD4
	push {r3-r5, lr}
	add r4, r1, #0x0
	ldr r1, [r4, #0x4]
	add r5, r0, #0x0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	blx DC_FlushRange
	ldr r3, [r4, #0x4]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x0]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0x0]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl FUN_02017E14
	add r0, r5, #0x0
	bl FUN_0200CAB4
	ldr r0, [r4, #0x8]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02014B10
FUN_02014B10: ; 0x02014B10
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	blx DC_FlushRange
	ldr r0, [r4, #0x8]
	cmp r0, #0x0
	bne _02014B34
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	blx FUN_020C9550
	b _02014B44
_02014B34:
	cmp r0, #0x4
	bne _02014B44
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	blx FUN_020C94E8
_02014B44:
	add r0, r5, #0x0
	bl FUN_0200CAB4
	ldr r0, [r4, #0x4]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r3-r5, pc}

	thumb_func_start FUN_02014B58
FUN_02014B58: ; 0x02014B58
	push {r3-r6, lr}
	sub sp, #0x1c
	add r4, r1, #0x0
	add r1, r2, #0x0
	add r2, r3, #0x0
	ldrh r6, [r1, #0x0]
	ldrh r3, [r1, #0x2]
	lsl r2, r2, #0x18
	lsl r6, r6, #0x15
	lsr r6, r6, #0x18
	lsl r3, r3, #0x15
	str r6, [sp, #0x0]
	lsr r3, r3, #0x18
	str r3, [sp, #0x4]
	add r1, #0xc
	str r1, [sp, #0x8]
	mov r1, #0x0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r3, [sp, #0x30]
	lsl r1, r4, #0x18
	lsl r3, r3, #0x18
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	add r5, r0, #0x0
	bl FUN_02018170
	lsl r1, r4, #0x18
	add r0, r5, #0x0
	lsr r1, r1, #0x18
	bl FUN_0201AC68
	add sp, #0x1c
	pop {r3-r6, pc}
	.balign 4

	thumb_func_start FUN_02014BA4
FUN_02014BA4: ; 0x02014BA4
	push {r3-r4}
	ldr r2, [r0, #0x8]
	add r0, #0xc
	lsr r4, r2, #0x1
	mov r3, #0x0
	cmp r4, #0x0
	ble _02014BC0
_02014BB2:
	ldrh r2, [r0, #0x0]
	add r3, r3, #0x1
	add r2, r2, r1
	strh r2, [r0, #0x0]
	add r0, r0, #0x2
	cmp r3, r4
	blt _02014BB2
_02014BC0:
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_02014BC4
FUN_02014BC4: ; 0x02014BC4
	push {r4-r5}
	ldr r2, [r0, #0x8]
	add r0, #0xc
	lsr r3, r2, #0x1
	mov r2, #0x0
	cmp r3, #0x0
	ble _02014BEA
	ldr r4, _02014BF0 ; =0x00000FFF
	lsl r1, r1, #0xc
_02014BD6:
	ldrh r5, [r0, #0x0]
	add r2, r2, #0x1
	and r5, r4
	strh r5, [r0, #0x0]
	ldrh r5, [r0, #0x0]
	orr r5, r1
	strh r5, [r0, #0x0]
	add r0, r0, #0x2
	cmp r2, r3
	blt _02014BD6
_02014BEA:
	pop {r4-r5}
	bx lr
	nop
_02014BF0: .word 0x00000FFF

	thumb_func_start FUN_02014BF4
FUN_02014BF4: ; 0x02014BF4
	push {r3-r7, lr}
	add r7, r1, #0x0
	mov r1, #0xc
	add r5, r0, #0x0
	add r6, r2, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	strb r6, [r4, #0x8]
	mov r0, #0x1d
	strb r7, [r4, #0x9]
	lsl r0, r0, #0x4
	add r6, r7, #0x0
	mul r6, r0
	add r0, r5, #0x0
	add r1, r6, #0x0
	str r5, [r4, #0x4]
	bl FUN_02016998
	mov r1, #0x0
	add r2, r6, #0x0
	str r0, [r4, #0x0]
	blx MI_CpuFill8
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02014C28
FUN_02014C28: ; 0x02014C28
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02014C3C
FUN_02014C3C: ; 0x02014C3C
	push {r4, lr}
	add r4, r0, #0x0
	cmp r4, #0x19
	blo _02014C48
	bl ErrorHandling
_02014C48:
	ldr r0, _02014C50 ; =0x020ED64C
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_02014C50: .word 0x020ED64C

	thumb_func_start FUN_02014C54
FUN_02014C54: ; 0x02014C54
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	str r3, [sp, #0x4]
	add r0, r2, #0x0
	ldrh r6, [r0, #0x0]
	ldrh r0, [r0, #0x2]
	add r7, r1, #0x0
	ldrb r1, [r5, #0x9]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x4]
	str r2, [sp, #0x0]
	cmp r0, r1
	blo _02014C74
	bl ErrorHandling
_02014C74:
	ldr r0, [sp, #0x4]
	mov r1, #0x1d
	add r4, r0, #0x0
	lsl r1, r1, #0x4
	ldr r0, [r5, #0x0]
	mul r4, r1
	add r0, r0, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0x0
	beq _02014C8C
	bl ErrorHandling
_02014C8C:
	ldr r0, [r5, #0x0]
	mov r2, #0x1d
	add r0, r0, r4
	mov r1, #0x0
	lsl r2, r2, #0x4
	blx MI_CpuFill8
	ldr r0, [r5, #0x0]
	mov r1, #0x1
	add r0, r0, r4
	str r1, [r0, #0x10]
	ldr r0, [r5, #0x0]
	cmp r6, #0x86
	str r7, [r0, r4]
	blt _02014CAE
	mov r6, #0x0
	str r6, [sp, #0x8]
_02014CAE:
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	str r6, [r0, #0x14]
	ldrb r0, [r5, #0x8]
	cmp r0, #0x0
	beq _02014CC0
	ldr r0, [sp, #0x0]
	ldrb r2, [r0, #0x4]
	b _02014CC2
_02014CC0:
	mov r2, #0x0
_02014CC2:
	ldr r0, [r5, #0x0]
	add r1, r0, r4
	mov r0, #0x73
	lsl r0, r0, #0x2
	strb r2, [r1, r0]
	ldr r1, [r5, #0x0]
	ldr r2, [r5, #0x4]
	add r1, r1, r4
	ldr r1, [r1, #0x14]
	mov r0, #0x5e
	bl FUN_02006528
	ldr r1, [r5, #0x0]
	mov r2, #0x0
	add r1, r1, r4
	str r0, [r1, #0x8]
	ldr r0, [r5, #0x0]
	mov r6, #0x1c
	add r1, r0, r4
	ldr r0, [r1, #0x8]
	str r0, [r1, #0xc]
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	str r2, [r0, #0x1c]
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	str r2, [r0, #0x20]
	ldr r0, [r5, #0x0]
	add r1, r0, r4
	ldr r0, _02014D74 ; =0x000001CD
	strb r2, [r1, r0]
	ldr r1, [r5, #0x0]
	add r3, r1, r4
	add r1, r0, #0x1
	strb r6, [r3, r1]
	ldr r1, [r5, #0x0]
	add r0, r0, #0x2
	add r1, r1, r4
	strb r2, [r1, r0]
	ldr r1, [r5, #0x0]
	ldr r0, _02014D78 ; =FUN_02014DD8
	add r1, r1, r4
	bl FUN_0200CA44
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x4]
	ldr r0, [r5, #0x0]
	add r1, r0, r4
	ldr r0, [sp, #0x8]
	str r0, [r1, #0x54]
	add r0, r7, #0x0
	mov r1, #0x0
	bl FUN_0200782C
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x58]
	add r0, r7, #0x0
	mov r1, #0x1
	bl FUN_0200782C
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x5c]
	ldr r1, [r5, #0x0]
	mov r0, #0x0
	add r1, r1, r4
	str r0, [r1, #0x60]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x64]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x68]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x6c]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x70]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x74]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x78]
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_02014D74: .word 0x000001CD
_02014D78: .word FUN_02014DD8 

	thumb_func_start FUN_02014D7C
FUN_02014D7C: ; 0x02014D7C
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldrb r0, [r5, #0x9]
	add r4, r1, #0x0
	cmp r4, r0
	blo _02014D8C
	bl ErrorHandling
_02014D8C:
	mov r0, #0x1d
	lsl r0, r0, #0x4
	ldr r1, [r5, #0x0]
	mul r0, r4
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02014D9C
FUN_02014D9C: ; 0x02014D9C
	push {r3-r5, lr}
	add r5, r0, #0x0
	mov r0, #0x1d
	lsl r0, r0, #0x4
	add r4, r1, #0x0
	mul r4, r0
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	ldr r0, [r0, #0x4]
	cmp r0, #0x0
	beq _02014DD6
	bl FUN_0200CAB4
	ldr r1, [r5, #0x0]
	mov r0, #0x0
	add r1, r1, r4
	str r0, [r1, #0x4]
	ldr r1, [r5, #0x0]
	mov r2, #0x1
	add r1, r1, r4
	str r2, [r1, #0x20]
	ldr r1, [r5, #0x0]
	add r1, r1, r4
	str r0, [r1, #0x10]
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	ldr r0, [r0, #0x8]
	bl FUN_02016A18
_02014DD6:
	pop {r3-r5, pc}

	thumb_func_start FUN_02014DD8
FUN_02014DD8: ; 0x02014DD8
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0x54]
	cmp r0, #0x0
	bne _02014DEC
	add r0, r4, #0x0
	bl FUN_02014E10
	b _02014DF0
_02014DEC:
	sub r0, r0, #0x1
	str r0, [r4, #0x54]
_02014DF0:
	ldr r0, [r4, #0x1c]
	cmp r0, #0x0
	beq _02014E0E
	mov r0, #0x1
	str r0, [r4, #0x20]
	mov r0, #0x0
	str r0, [r4, #0x10]
	add r0, r5, #0x0
	bl FUN_0200CAB4
	mov r0, #0x0
	str r0, [r4, #0x4]
	ldr r0, [r4, #0x8]
	bl FUN_02016A18
_02014E0E:
	pop {r3-r5, pc}

	thumb_func_start FUN_02014E10
FUN_02014E10: ; 0x02014E10
	push {r3-r7, lr}
	add r5, r0, #0x0
	mov r6, #0x0
	str r6, [r5, #0x18]
	add r7, r5, #0x0
	str r6, [r5, #0x44]
	add r4, r6, #0x0
	add r7, #0x7c
_02014E20:
	mov r0, #0x54
	add r1, r4, #0x0
	mul r1, r0
	add r0, r7, r1
	ldr r1, [r7, r1]
	cmp r1, #0x0
	beq _02014E4E
	add r1, r0, #0x0
	add r1, #0x2d
	ldrb r1, [r1, #0x0]
	cmp r1, #0x0
	bne _02014E40
	ldr r2, [r0, #0x50]
	add r1, r5, #0x0
	blx r2
	b _02014E54
_02014E40:
	add r1, r0, #0x0
	add r1, #0x2d
	ldrb r1, [r1, #0x0]
	add r0, #0x2d
	sub r1, r1, #0x1
	strb r1, [r0, #0x0]
	b _02014E54
_02014E4E:
	add r0, r6, #0x1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
_02014E54:
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0x4
	blo _02014E20
	cmp r6, #0x4
	bne _02014E68
	ldr r0, _02014EFC ; =0x000001CD
	mov r1, #0x0
	strb r1, [r5, r0]
_02014E68:
	ldr r0, _02014EFC ; =0x000001CD
	ldrb r1, [r5, r0]
	cmp r1, #0x0
	beq _02014E7E
	add r0, r5, #0x0
	bl FUN_020156E8
	add r0, r5, #0x0
	bl FUN_02015730
	pop {r3-r7, pc}
_02014E7E:
	add r0, r0, #0x2
	ldrb r0, [r5, r0]
	cmp r0, #0x0
	beq _02014E96
	ldr r0, [r5, #0x0]
	bl FUN_02007F20
	cmp r0, #0x0
	bne _02014EF8
	ldr r0, _02014F00 ; =0x000001CF
	mov r1, #0x0
	strb r1, [r5, r0]
_02014E96:
	add r6, r5, #0x0
	add r4, r5, #0x0
	ldr r7, _02014F04 ; =0x020ED6A4
	add r6, #0xc
	add r4, #0x44
_02014EA0:
	ldr r0, [r4, #0x0]
	add r0, r0, #0x1
	str r0, [r4, #0x0]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x0]
	cmp r0, #0x22
	blo _02014EB2
	bl ErrorHandling
_02014EB2:
	ldr r1, [r5, #0xc]
	add r0, r5, #0x0
	ldr r1, [r1, #0x0]
	lsl r1, r1, #0x2
	ldr r1, [r7, r1]
	blx r1
	ldr r0, [r5, #0x1c]
	cmp r0, #0x0
	bne _02014EF8
	ldr r0, [r6, #0x0]
	add r0, r0, #0x4
	str r0, [r6, #0x0]
	ldr r0, [r5, #0x18]
	cmp r0, #0x0
	bne _02014EF8
	ldr r0, _02014EFC ; =0x000001CD
	ldrb r0, [r5, r0]
	cmp r0, #0x0
	beq _02014EE6
	add r0, r5, #0x0
	bl FUN_020156E8
	add r0, r5, #0x0
	bl FUN_02015730
	pop {r3-r7, pc}
_02014EE6:
	mov r0, #0x1
	ldr r1, [r5, #0x44]
	lsl r0, r0, #0x8
	cmp r1, r0
	blt _02014EA0
	bl ErrorHandling
	mov r0, #0x1
	str r0, [r5, #0x1c]
_02014EF8:
	pop {r3-r7, pc}
	nop
_02014EFC: .word 0x000001CD
_02014F00: .word 0x000001CF
_02014F04: .word 0x020ED6A4

	thumb_func_start FUN_02014F08
FUN_02014F08: ; 0x02014F08
	push {r4, lr}
	lsl r1, r1, #0x2
	ldr r4, [r0, r1]
	cmp r2, #0x1
	beq _02014F16
	bl ErrorHandling
_02014F16:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02014F1C
FUN_02014F1C: ; 0x02014F1C
	ldr r3, _02014F24 ; =FUN_02014F08
	add r2, r1, #0x0
	mov r1, #0x0
	bx r3
	.balign 4
_02014F24: .word FUN_02014F08 

	thumb_func_start FUN_02014F28
FUN_02014F28: ; 0x02014F28
	ldr r3, _02014F30 ; =0x02014F1D
	mov r1, #0x1
	bx r3
	nop
_02014F30: .word 0x02014F1D

	thumb_func_start FUN_02014F34
FUN_02014F34: ; 0x02014F34
	push {r3-r5, lr}
	add r5, r1, #0x0
	mov r3, #0x0
	add r0, #0x7c
	mov r2, #0x54
_02014F3E:
	add r1, r3, #0x0
	mul r1, r2
	add r4, r0, r1
	ldr r1, [r0, r1]
	cmp r1, #0x0
	bne _02014F68
	add r0, r4, #0x0
	mov r1, #0x0
	mov r2, #0x54
	blx MI_CpuFill8
	mov r0, #0x1
	str r0, [r4, #0x0]
	mov r0, #0xc
	add r1, r5, #0x0
	mul r1, r0
	ldr r0, _02014F7C ; =0x020ED668
	ldr r0, [r0, r1]
	str r0, [r4, #0x50]
	add r0, r4, #0x0
	pop {r3-r5, pc}
_02014F68:
	add r1, r3, #0x1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0x4
	blo _02014F3E
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
	nop
_02014F7C: .word 0x020ED668

	thumb_func_start FUN_02014F80
FUN_02014F80: ; 0x02014F80
	push {r4, lr}
	add r4, r1, #0x0
	ldr r1, [r0, #0xc]
	add r1, r1, #0x4
	str r1, [r0, #0xc]
	add r0, r1, #0x0
	bl FUN_02014F28
	str r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02014F94
FUN_02014F94: ; 0x02014F94
	push {r4, lr}
	add r4, r1, #0x0
	ldr r1, [r0, #0xc]
	add r1, r1, #0x4
	str r1, [r0, #0xc]
	add r0, r1, #0x0
	bl FUN_02014F28
	strb r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02014FA8
FUN_02014FA8: ; 0x02014FA8
	push {r4, lr}
	add r4, r1, #0x0
	ldr r1, [r0, #0xc]
	add r1, r1, #0x4
	str r1, [r0, #0xc]
	add r0, r1, #0x0
	bl FUN_02014F28
	strb r0, [r4, #0x0]
	ldrb r0, [r4, #0x0]
	cmp r0, #0x8
	blo _02014FC4
	bl ErrorHandling
_02014FC4:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02014FC8
FUN_02014FC8: ; 0x02014FC8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	bl FUN_02014FA8
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02014FA8
	pop {r3-r5, pc}

	thumb_func_start FUN_02014FDC
FUN_02014FDC: ; 0x02014FDC
	push {r3-r6, lr}
	sub sp, #0x4
	add r5, r0, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	bl FUN_02014FA8
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x12
	bne _0201501C
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x2
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	add r1, r6, #0x0
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x0]
	add r0, r5, #0x0
	bl FUN_02014F80
	add sp, #0x4
	pop {r3-r6, pc}
_0201501C:
	cmp r0, #0x13
	bne _02015048
	add r1, sp, #0x0
	add r2, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x2
	add r2, #0x1
	bl FUN_02014FC8
	add r0, sp, #0x0
	ldrb r1, [r0, #0x2]
	add sp, #0x4
	lsl r1, r1, #0x2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [r4, #0x0]
	ldrb r0, [r0, #0x1]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0x0]
	pop {r3-r6, pc}
_02015048:
	bl ErrorHandling
	add sp, #0x4
	pop {r3-r6, pc}

	thumb_func_start FUN_02015050
FUN_02015050: ; 0x02015050
	push {r3-r6, lr}
	sub sp, #0x4
	add r5, r0, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	bl FUN_02014FA8
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x1
	bl FUN_02014F94
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x1]
	cmp r0, #0x12
	bne _02015082
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02014F80
	b _020150A2
_02015082:
	cmp r0, #0x13
	bne _0201509E
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x3
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x3]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x0]
	b _020150A2
_0201509E:
	bl ErrorHandling
_020150A2:
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x12
	bne _020150B6
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_02014F80
	add sp, #0x4
	pop {r3-r6, pc}
_020150B6:
	cmp r0, #0x13
	bne _020150D4
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x2
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0x0]
	pop {r3-r6, pc}
_020150D4:
	bl ErrorHandling
	add sp, #0x4
	pop {r3-r6, pc}

	thumb_func_start FUN_020150DC
FUN_020150DC: ; 0x020150DC
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r2, #0x0
	add r2, sp, #0x0
	add r2, #0x3
	add r5, r0, #0x0
	add r6, r3, #0x0
	bl FUN_02014FC8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x3]
	add r1, sp, #0x0
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r7, [r0, #0x24]
	add r0, r5, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x14
	bne _02015112
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_02014F80
	b _02015132
_02015112:
	cmp r0, #0x15
	bne _0201512E
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x2
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [r6, #0x0]
	b _02015132
_0201512E:
	bl ErrorHandling
_02015132:
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x14
	bne _0201514C
	add r0, r5, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	b _0201516C
_0201514C:
	cmp r0, #0x15
	bne _02015168
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x1
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x1]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x4]
	b _0201516C
_02015168:
	bl ErrorHandling
_0201516C:
	ldr r0, [sp, #0x4]
	add r0, r7, r0
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x10
	sub r1, r1, r2
	mov r0, #0x10
	ror r1, r0
	add r0, r2, r1
	str r0, [r4, #0x0]
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02015184
FUN_02015184: ; 0x02015184
	ldr r2, [r0, #0x0]
	ldr r0, [r1, #0x0]
	sub r0, r2, r0
	bpl _02015190
	mov r0, #0xf
	bx lr
_02015190:
	cmp r0, #0x0
	ble _02015198
	mov r0, #0x10
	bx lr
_02015198:
	mov r0, #0x11
	bx lr

	thumb_func_start FUN_0201519C
FUN_0201519C: ; 0x0201519C
	add r2, r0, #0x0
	ldr r0, [r2, #0x0]
	ldr r2, [r2, #0x74]
	mov r1, #0x1
	neg r3, r2
	asr r2, r3, #0x2
	lsr r2, r2, #0x1d
	add r2, r3, r2
	ldr r3, _020151B4 ; =FUN_020079E0
	asr r2, r2, #0x3
	bx r3
	nop
_020151B4: .word FUN_020079E0 

	thumb_func_start FUN_020151B8
FUN_020151B8: ; 0x020151B8
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_020151D0
	mov r0, #0x1
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}

	thumb_func_start FUN_020151C8
FUN_020151C8: ; 0x020151C8
	mov r1, #0x1
	str r1, [r0, #0x18]
	bx lr
	.balign 4

	thumb_func_start FUN_020151D0
FUN_020151D0: ; 0x020151D0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r2, [r4, #0x58]
	mov r1, #0x0
	bl FUN_02007558
	ldr r0, [r4, #0x0]
	ldr r2, [r4, #0x5c]
	mov r1, #0x1
	bl FUN_02007558
	ldr r0, [r4, #0x0]
	mov r1, #0x9
	mov r2, #0x0
	bl FUN_02007558
	ldr r0, [r4, #0x0]
	mov r1, #0xa
	mov r2, #0x0
	bl FUN_02007558
	mov r1, #0xc
	add r2, r1, #0x0
	ldr r0, [r4, #0x0]
	add r2, #0xf4
	bl FUN_02007558
	mov r1, #0xd
	add r2, r1, #0x0
	ldr r0, [r4, #0x0]
	add r2, #0xf3
	bl FUN_02007558
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02015218
FUN_02015218: ; 0x02015218
	push {r3-r4, lr}
	sub sp, #0x4
	add r1, sp, #0x0
	add r1, #0x1
	add r2, sp, #0x0
	add r4, r0, #0x0
	bl FUN_02014FC8
	add r0, sp, #0x0
	ldrb r1, [r0, #0x0]
	ldrb r0, [r0, #0x1]
	lsl r1, r1, #0x2
	add r1, r4, r1
	lsl r0, r0, #0x2
	ldr r1, [r1, #0x24]
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_02015240
FUN_02015240: ; 0x02015240
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_02014FDC
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0x4]
	add r1, r1, r0
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_02015264
FUN_02015264: ; 0x02015264
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_02014FDC
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0x4]
	add r2, r1, #0x0
	mul r2, r0
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r2, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201528C
FUN_0201528C: ; 0x0201528C
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_02015050
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0x4]
	sub r1, r1, r0
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_020152B0
FUN_020152B0: ; 0x020152B0
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_02015050
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x4]
	blx _s32_div_f
	add r1, sp, #0x0
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_020152D8
FUN_020152D8: ; 0x020152D8
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_02015050
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x4]
	blx _s32_div_f
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_02015300
FUN_02015300: ; 0x02015300
	push {r3-r5, lr}
	sub sp, #0x10
	add r1, sp, #0x0
	add r5, r0, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x14
	bne _02015334
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x3
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x3]
	add r1, sp, #0x8
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	add r0, r5, #0x0
	bl FUN_02014F80
	b _02015362
_02015334:
	cmp r0, #0x15
	bne _0201535E
	add r1, sp, #0x0
	add r2, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x3
	add r2, #0x2
	bl FUN_02014FC8
	add r0, sp, #0x0
	ldrb r1, [r0, #0x3]
	lsl r1, r1, #0x2
	add r1, r5, r1
	ldr r1, [r1, #0x24]
	str r1, [sp, #0xc]
	ldrb r0, [r0, #0x2]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x8]
	b _02015362
_0201535E:
	bl ErrorHandling
_02015362:
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x1
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x1]
	cmp r0, #0x11
	bls _02015378
	bl ErrorHandling
_02015378:
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_02015184
	add r4, r0, #0x0
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x14
	bne _020153A6
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x3
	bl FUN_02014FA8
	add r0, r5, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	b _020153CA
_020153A6:
	cmp r0, #0x15
	bne _020153C6
	add r1, sp, #0x0
	add r2, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x3
	add r2, #0x2
	bl FUN_02014FC8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x4]
	b _020153CA
_020153C6:
	bl ErrorHandling
_020153CA:
	add r0, sp, #0x0
	ldrb r1, [r0, #0x1]
	cmp r1, r4
	bne _020153DC
	ldrb r0, [r0, #0x3]
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0x2
	add r0, r5, r0
	str r1, [r0, #0x24]
_020153DC:
	add sp, #0x10
	pop {r3-r5, pc}

	thumb_func_start FUN_020153E0
FUN_020153E0: ; 0x020153E0
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r1, sp, #0x0
	bl FUN_02014FA8
	ldr r0, [r4, #0xc]
	add r0, r0, #0x4
	str r0, [r4, #0xc]
	bl FUN_02014F28
	add r1, sp, #0x0
	ldrb r1, [r1, #0x0]
	lsl r1, r1, #0x2
	add r1, r4, r1
	str r0, [r1, #0x24]
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_02015404
FUN_02015404: ; 0x02015404
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x50]
	cmp r0, #0x0
	beq _02015412
	bl ErrorHandling
_02015412:
	ldr r0, [r4, #0xc]
	add r0, r0, #0x4
	str r0, [r4, #0xc]
	str r0, [r4, #0x50]
	ldr r0, [r4, #0xc]
	bl FUN_02014F28
	str r0, [r4, #0x48]
	mov r0, #0x0
	str r0, [r4, #0x4c]
	pop {r4, pc}

	thumb_func_start FUN_02015428
FUN_02015428: ; 0x02015428
	ldr r1, [r0, #0x4c]
	add r2, r1, #0x1
	str r2, [r0, #0x4c]
	ldr r1, [r0, #0x48]
	cmp r2, r1
	blt _0201543E
	mov r1, #0x0
	str r1, [r0, #0x50]
	str r1, [r0, #0x4c]
	str r1, [r0, #0x48]
	bx lr
_0201543E:
	ldr r1, [r0, #0x50]
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start FUN_02015444
FUN_02015444: ; 0x02015444
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02014FA8
	add r2, sp, #0x0
	ldrb r2, [r2, #0x0]
	ldr r0, [r4, #0x0]
	ldr r1, [sp, #0x4]
	lsl r2, r2, #0x2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl FUN_02007558
	add sp, #0x8
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02015470
FUN_02015470: ; 0x02015470
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02014FA8
	add r2, sp, #0x0
	ldrb r2, [r2, #0x0]
	ldr r0, [r4, #0x0]
	ldr r1, [sp, #0x4]
	lsl r2, r2, #0x2
	add r2, r4, r2
	ldr r2, [r2, #0x24]
	bl FUN_020079E0
	add sp, #0x8
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201549C
FUN_0201549C: ; 0x0201549C
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x8
	add r4, r0, #0x0
	bl FUN_02014F80
	add r1, sp, #0x0
	add r0, r4, #0x0
	add r1, #0x1
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x1]
	cmp r0, #0x14
	bne _020154C4
	add r0, r4, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	b _020154E4
_020154C4:
	cmp r0, #0x15
	bne _020154E0
	add r1, sp, #0x0
	add r0, r4, #0x0
	add r1, #0x2
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x4]
	b _020154E4
_020154E0:
	bl ErrorHandling
_020154E4:
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x16
	bne _02015502
	ldr r0, [r4, #0x0]
	ldr r1, [sp, #0x8]
	ldr r2, [sp, #0x4]
	bl FUN_02007558
	add sp, #0xc
	pop {r3-r4, pc}
_02015502:
	cmp r0, #0x17
	bne _02015514
	ldr r0, [r4, #0x0]
	ldr r1, [sp, #0x8]
	ldr r2, [sp, #0x4]
	bl FUN_020079E0
	add sp, #0xc
	pop {r3-r4, pc}
_02015514:
	bl ErrorHandling
	add sp, #0xc
	pop {r3-r4, pc}

	thumb_func_start FUN_0201551C
FUN_0201551C: ; 0x0201551C
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_020150DC
	ldr r0, [sp, #0x8]
	ldr r2, [sp, #0x4]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _0201554C ; =0x020FFA38
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_0201554C: .word 0x020FFA38

	thumb_func_start FUN_02015550
FUN_02015550: ; 0x02015550
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x0
	add r2, sp, #0x8
	add r3, sp, #0x4
	add r4, r0, #0x0
	bl FUN_020150DC
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0x4]
	asr r1, r1, #0x4
	lsl r1, r1, #0x1
	add r1, r1, #0x1
	lsl r2, r1, #0x1
	ldr r1, _02015584 ; =0x020FFA38
	ldrsh r1, [r1, r2]
	mul r1, r0
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	asr r1, r1, #0xc
	lsl r0, r0, #0x2
	add r0, r4, r0
	str r1, [r0, #0x24]
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_02015584: .word 0x020FFA38

	thumb_func_start FUN_02015588
FUN_02015588: ; 0x02015588
	push {r3-r4, lr}
	sub sp, #0x4
	add r1, sp, #0x0
	add r4, r0, #0x0
	add r1, #0x1
	bl FUN_02014FA8
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r1, [r0, #0x0]
	cmp r1, #0x8
	bne _020155B4
	ldrb r0, [r0, #0x1]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x60]
	pop {r3-r4, pc}
_020155B4:
	cmp r1, #0x9
	bne _020155C6
	ldrb r0, [r0, #0x1]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x64]
	pop {r3-r4, pc}
_020155C6:
	bl ErrorHandling
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_020155D0
FUN_020155D0: ; 0x020155D0
	push {r3-r4, lr}
	sub sp, #0x4
	add r1, sp, #0x0
	add r4, r0, #0x0
	add r1, #0x1
	bl FUN_02014FA8
	add r0, r4, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r1, [r0, #0x0]
	cmp r1, #0x8
	bne _02015600
	ldrb r0, [r0, #0x1]
	ldr r1, [r4, #0x60]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x60]
	pop {r3-r4, pc}
_02015600:
	cmp r1, #0x9
	bne _02015616
	ldrb r0, [r0, #0x1]
	ldr r1, [r4, #0x64]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	add r0, r1, r0
	str r0, [r4, #0x64]
	pop {r3-r4, pc}
_02015616:
	bl ErrorHandling
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_02015620
FUN_02015620: ; 0x02015620
	push {r3-r5, lr}
	sub sp, #0x8
	add r1, sp, #0x0
	add r1, #0x3
	add r5, r0, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x3]
	cmp r0, #0x8
	bne _0201563C
	add r4, r5, #0x0
	add r4, #0x60
	b _0201567C
_0201563C:
	cmp r0, #0x9
	bne _02015646
	add r4, r5, #0x0
	add r4, #0x64
	b _0201567C
_02015646:
	cmp r0, #0xa
	bne _02015650
	add r4, r5, #0x0
	add r4, #0x68
	b _0201567C
_02015650:
	cmp r0, #0xb
	bne _0201565A
	add r4, r5, #0x0
	add r4, #0x6c
	b _0201567C
_0201565A:
	cmp r0, #0xc
	bne _02015664
	add r4, r5, #0x0
	add r4, #0x70
	b _0201567C
_02015664:
	cmp r0, #0xd
	bne _0201566E
	add r4, r5, #0x0
	add r4, #0x74
	b _0201567C
_0201566E:
	cmp r0, #0xe
	bne _02015678
	add r4, r5, #0x0
	add r4, #0x78
	b _0201567C
_02015678:
	bl ErrorHandling
_0201567C:
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x1
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x1]
	cmp r0, #0x14
	bne _02015698
	add r0, r5, #0x0
	add r1, sp, #0x4
	bl FUN_02014F80
	b _020156B8
_02015698:
	cmp r0, #0x15
	bne _020156B4
	add r1, sp, #0x0
	add r0, r5, #0x0
	add r1, #0x2
	bl FUN_02014FA8
	add r0, sp, #0x0
	ldrb r0, [r0, #0x2]
	lsl r0, r0, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x4]
	b _020156B8
_020156B4:
	bl ErrorHandling
_020156B8:
	add r0, r5, #0x0
	add r1, sp, #0x0
	bl FUN_02014F94
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x16
	bne _020156D0
	ldr r0, [sp, #0x4]
	add sp, #0x8
	str r0, [r4, #0x0]
	pop {r3-r5, pc}
_020156D0:
	cmp r0, #0x17
	bne _020156E0
	ldr r0, [sp, #0x4]
	ldr r1, [r4, #0x0]
	add sp, #0x8
	add r0, r1, r0
	str r0, [r4, #0x0]
	pop {r3-r5, pc}
_020156E0:
	bl ErrorHandling
	add sp, #0x8
	pop {r3-r5, pc}

	thumb_func_start FUN_020156E8
FUN_020156E8: ; 0x020156E8
	push {r3-r5, lr}
	add r4, r0, #0x0
	mov r0, #0x73
	lsl r0, r0, #0x2
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	ldr r0, [r4, #0x0]
	beq _0201570A
	ldr r3, [r4, #0x60]
	ldr r2, [r4, #0x68]
	ldr r5, [r4, #0x58]
	add r2, r3, r2
	mov r1, #0x0
	sub r2, r5, r2
	bl FUN_02007558
	b _0201571A
_0201570A:
	ldr r3, [r4, #0x58]
	ldr r2, [r4, #0x60]
	ldr r5, [r4, #0x68]
	add r2, r3, r2
	mov r1, #0x0
	add r2, r5, r2
	bl FUN_02007558
_0201571A:
	ldr r3, [r4, #0x5c]
	ldr r2, [r4, #0x64]
	ldr r5, [r4, #0x6c]
	add r2, r3, r2
	ldr r0, [r4, #0x0]
	mov r1, #0x1
	add r2, r5, r2
	bl FUN_02007558
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02015730
FUN_02015730: ; 0x02015730
	push {r4, lr}
	add r4, r0, #0x0
	mov r1, #0xc
	add r2, r1, #0x0
	ldr r3, [r4, #0x70]
	add r2, #0xf4
	ldr r0, [r4, #0x0]
	add r2, r3, r2
	bl FUN_02007558
	mov r1, #0xd
	add r2, r1, #0x0
	ldr r3, [r4, #0x74]
	add r2, #0xf3
	ldr r0, [r4, #0x0]
	add r2, r3, r2
	bl FUN_02007558
	ldr r2, [r4, #0x78]
	ldr r0, [r4, #0x0]
	lsl r2, r2, #0x10
	mov r1, #0x9
	lsr r2, r2, #0x10
	bl FUN_02007558
	ldr r0, _02015794 ; =0x000001CE
	ldrb r0, [r4, r0]
	cmp r0, #0x1b
	bne _02015778
	ldr r0, [r4, #0x74]
	cmp r0, #0x0
	bge _02015792
	add r0, r4, #0x0
	bl FUN_0201519C
	pop {r4, pc}
_02015778:
	cmp r0, #0x1d
	bne _0201578A
	ldr r0, [r4, #0x74]
	cmp r0, #0x0
	beq _02015792
	add r0, r4, #0x0
	bl FUN_0201519C
	pop {r4, pc}
_0201578A:
	cmp r0, #0x1c
	beq _02015792
	bl ErrorHandling
_02015792:
	pop {r4, pc}
	.balign 4
_02015794: .word 0x000001CE

	thumb_func_start FUN_02015798
FUN_02015798: ; 0x02015798
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r1, sp, #0x0
	bl FUN_02014FA8
	ldr r0, [r4, #0xc]
	add r0, r0, #0x4
	str r0, [r4, #0xc]
	bl FUN_02014F28
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x8
	beq _020157BA
	cmp r0, #0xa
	bne _020157CA
_020157BA:
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x68]
	pop {r3-r4, pc}
_020157CA:
	cmp r0, #0x9
	beq _020157D2
	cmp r0, #0xb
	bne _020157E2
_020157D2:
	add r0, sp, #0x0
	ldrb r0, [r0, #0x0]
	add sp, #0x4
	lsl r0, r0, #0x2
	add r0, r4, r0
	ldr r0, [r0, #0x24]
	str r0, [r4, #0x6c]
	pop {r3-r4, pc}
_020157E2:
	bl ErrorHandling
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_020157EC
FUN_020157EC: ; 0x020157EC
	push {r4, lr}
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0x54
	bl FUN_02014F80
	mov r0, #0x1
	str r0, [r4, #0x18]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02015800
FUN_02015800: ; 0x02015800
	push {r3-r4, lr}
	sub sp, #0xc
	add r1, sp, #0x4
	add r1, #0x2
	add r4, r0, #0x0
	bl FUN_02014F94
	add r1, sp, #0x4
	add r0, r4, #0x0
	add r1, #0x1
	bl FUN_02014F94
	add r0, r4, #0x0
	add r1, sp, #0x4
	bl FUN_02014F94
	add r0, r4, #0x0
	add r1, sp, #0x8
	bl FUN_02014F80
	ldr r0, [sp, #0x8]
	add r3, sp, #0x4
	str r0, [sp, #0x0]
	ldrb r1, [r3, #0x2]
	ldrb r2, [r3, #0x1]
	ldrb r3, [r3, #0x0]
	ldr r0, [r4, #0x0]
	bl FUN_02007E68
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_02015840
FUN_02015840: ; 0x02015840
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02007F20
	cmp r0, #0x0
	beq _02015856
	ldr r0, _02015858 ; =0x000001CF
	mov r1, #0x1
	strb r1, [r4, r0]
	str r1, [r4, #0x18]
_02015856:
	pop {r4, pc}
	.balign 4
_02015858: .word 0x000001CF

	thumb_func_start FUN_0201585C
FUN_0201585C: ; 0x0201585C
	ldr r1, _02015864 ; =0x000001CD
	mov r2, #0x1
	strb r2, [r0, r1]
	bx lr
	.balign 4
_02015864: .word 0x000001CD

	thumb_func_start FUN_02015868
FUN_02015868: ; 0x02015868
	push {r4, lr}
	ldr r1, _0201589C ; =0x000001CE
	add r4, r0, #0x0
	add r1, r4, r1
	bl FUN_02014F94
	ldr r0, _0201589C ; =0x000001CE
	mov r1, #0x1
	ldrb r0, [r4, r0]
	add r2, r1, #0x0
	cmp r0, #0x1b
	beq _02015886
	cmp r0, #0x1d
	beq _02015886
	mov r2, #0x0
_02015886:
	cmp r2, #0x0
	bne _02015890
	cmp r0, #0x1c
	beq _02015890
	mov r1, #0x0
_02015890:
	cmp r1, #0x0
	bne _02015898
	bl ErrorHandling
_02015898:
	pop {r4, pc}
	nop
_0201589C: .word 0x000001CE

	thumb_func_start FUN_020158A0
FUN_020158A0: ; 0x020158A0
	ldr r3, _020158A8 ; =FUN_0201598C
	mov r1, #0x0
	bx r3
	nop
_020158A8: .word FUN_0201598C 

	thumb_func_start FUN_020158AC
FUN_020158AC: ; 0x020158AC
	ldr r3, _020158B4 ; =FUN_0201598C
	mov r1, #0x1
	bx r3
	nop
_020158B4: .word FUN_0201598C 

	thumb_func_start FUN_020158B8
FUN_020158B8: ; 0x020158B8
	ldr r3, _020158C0 ; =FUN_0201598C
	mov r1, #0x2
	bx r3
	nop
_020158C0: .word FUN_0201598C 

	thumb_func_start FUN_020158C4
FUN_020158C4: ; 0x020158C4
	ldr r3, _020158CC ; =FUN_0201598C
	mov r1, #0x3
	bx r3
	nop
_020158CC: .word FUN_0201598C 

	thumb_func_start FUN_020158D0
FUN_020158D0: ; 0x020158D0
	ldr r3, _020158D8 ; =FUN_0201598C
	mov r1, #0x4
	bx r3
	nop
_020158D8: .word FUN_0201598C 

	thumb_func_start FUN_020158DC
FUN_020158DC: ; 0x020158DC
	push {r3, lr}
	cmp r0, #0x18
	bne _020158E8
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	pop {r3, pc}
_020158E8:
	cmp r0, #0x19
	bne _020158F6
	ldr r1, [r1, #0x0]
	ldr r0, [r2, #0x0]
	add r0, r1, r0
	str r0, [r3, #0x0]
	pop {r3, pc}
_020158F6:
	cmp r0, #0x1a
	bne _02015904
	ldr r1, [r3, #0x0]
	ldr r0, [r2, #0x0]
	add r0, r1, r0
	str r0, [r3, #0x0]
	pop {r3, pc}
_02015904:
	bl ErrorHandling
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201590C
FUN_0201590C: ; 0x0201590C
	push {r3, lr}
	sub r0, #0x23
	cmp r0, #0x4
	bhi _02015984
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015920: ; jump table (using 16-bit offset)
	.short _0201592A - _02015920 - 2; case 0
	.short _0201593C - _02015920 - 2; case 1
	.short _0201594E - _02015920 - 2; case 2
	.short _02015960 - _02015920 - 2; case 3
	.short _02015972 - _02015920 - 2; case 4
_0201592A:
	add r0, r1, #0x0
	add r0, #0x3c
	str r0, [r1, #0x24]
	add r0, r2, #0x0
	add r0, #0x68
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x68]
	str r0, [r1, #0x30]
	pop {r3, pc}
_0201593C:
	add r0, r1, #0x0
	add r0, #0x40
	str r0, [r1, #0x24]
	add r0, r2, #0x0
	add r0, #0x6c
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x6c]
	str r0, [r1, #0x30]
	pop {r3, pc}
_0201594E:
	add r0, r1, #0x0
	add r0, #0x44
	str r0, [r1, #0x24]
	add r0, r2, #0x0
	add r0, #0x70
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x70]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02015960:
	add r0, r1, #0x0
	add r0, #0x48
	str r0, [r1, #0x24]
	add r0, r2, #0x0
	add r0, #0x74
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x74]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02015972:
	add r0, r1, #0x0
	add r0, #0x4c
	str r0, [r1, #0x24]
	add r0, r2, #0x0
	add r0, #0x78
	str r0, [r1, #0x28]
	ldr r0, [r2, #0x78]
	str r0, [r1, #0x30]
	pop {r3, pc}
_02015984:
	bl ErrorHandling
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201598C
FUN_0201598C: ; 0x0201598C
	push {r3-r7, lr}
	sub sp, #0x8
	add r6, r1, #0x0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	add r5, r0, #0x0
	bl FUN_02014F34
	str r0, [sp, #0x4]
	ldr r1, [sp, #0x4]
	add r0, r5, #0x0
	add r1, #0x2c
	bl FUN_02014F94
	ldr r1, [sp, #0x4]
	add r0, r5, #0x0
	add r1, #0x2d
	bl FUN_02014F94
	mov r0, #0xc
	mul r0, r6
	ldr r1, _02015A28 ; =0x020ED66C
	str r0, [sp, #0x0]
	ldr r0, [r1, r0]
	mov r4, #0x0
	cmp r0, #0x0
	ble _020159E2
	ldr r1, _02015A2C ; =0x020ED668
	ldr r0, [sp, #0x0]
	add r6, r1, r0
	ldr r0, [sp, #0x4]
	add r7, r0, #0x4
_020159CC:
	lsl r1, r4, #0x2
	add r0, r5, #0x0
	add r1, r7, r1
	bl FUN_02014F80
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [r6, #0x4]
	cmp r4, r0
	blt _020159CC
_020159E2:
	ldr r1, _02015A30 ; =0x020ED670
	ldr r0, [sp, #0x0]
	add r2, r5, #0x0
	ldr r0, [r1, r0]
	lsl r1, r0, #0x2
	ldr r0, [sp, #0x4]
	add r0, r0, r1
	ldr r0, [r0, #0x4]
	ldr r1, [sp, #0x4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201590C
	ldr r0, [sp, #0x4]
	add r0, #0x2d
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _02015A14
	ldr r0, [sp, #0x4]
	add r1, r5, #0x0
	add r2, r0, #0x0
	ldr r2, [r2, #0x50]
	blx r2
	add sp, #0x8
	pop {r3-r7, pc}
_02015A14:
	ldr r0, [sp, #0x4]
	add r0, #0x2d
	ldrb r0, [r0, #0x0]
	sub r1, r0, #0x1
	ldr r0, [sp, #0x4]
	add r0, #0x2d
	str r0, [sp, #0x4]
	strb r1, [r0, #0x0]
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_02015A28: .word 0x020ED66C
_02015A2C: .word 0x020ED668
_02015A30: .word 0x020ED670

	thumb_func_start FUN_02015A34
FUN_02015A34: ; 0x02015A34
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #0x1
	ldr r2, [r4, #0x14]
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #0x4]
	sub r0, #0x1e
	cmp r0, #0x3
	bhi _02015AC0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015A5C: ; jump table (using 16-bit offset)
	.short _02015A64 - _02015A5C - 2; case 0
	.short _02015A78 - _02015A5C - 2; case 1
	.short _02015A90 - _02015A5C - 2; case 2
	.short _02015AA6 - _02015A5C - 2; case 3
_02015A64:
	asr r0, r1, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02015AE8 ; =0x020FFA38
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015AC4
_02015A78:
	asr r1, r1, #0x4
	lsl r1, r1, #0x1
	add r1, r1, #0x1
	lsl r2, r1, #0x1
	ldr r1, _02015AE8 ; =0x020FFA38
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0x0]
	b _02015AC4
_02015A90:
	asr r0, r1, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02015AE8 ; =0x020FFA38
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015AC4
_02015AA6:
	asr r1, r1, #0x4
	lsl r1, r1, #0x1
	add r1, r1, #0x1
	lsl r2, r1, #0x1
	ldr r1, _02015AE8 ; =0x020FFA38
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015AC4
_02015AC0:
	bl ErrorHandling
_02015AC4:
	add r0, r4, #0x0
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	add r1, r4, #0x0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl FUN_020158DC
	ldr r0, [r4, #0x1c]
	add r1, r0, #0x1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02015AE6
	mov r0, #0x0
	str r0, [r4, #0x0]
_02015AE6:
	pop {r4, pc}
	.balign 4
_02015AE8: .word 0x020FFA38

	thumb_func_start FUN_02015AEC
FUN_02015AEC: ; 0x02015AEC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x10]
	add r0, r0, #0x1
	mul r0, r1
	ldr r1, [r4, #0x18]
	blx _s32_div_f
	ldr r1, [r4, #0x14]
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, [r4, #0x4]
	sub r0, #0x1e
	cmp r0, #0x3
	bhi _02015B7E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015B1A: ; jump table (using 16-bit offset)
	.short _02015B22 - _02015B1A - 2; case 0
	.short _02015B36 - _02015B1A - 2; case 1
	.short _02015B4E - _02015B1A - 2; case 2
	.short _02015B64 - _02015B1A - 2; case 3
_02015B22:
	asr r0, r1, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02015BA8 ; =0x020FFA38
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r1, r0, #0xc
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015B82
_02015B36:
	asr r1, r1, #0x4
	lsl r1, r1, #0x1
	add r1, r1, #0x1
	lsl r2, r1, #0x1
	ldr r1, _02015BA8 ; =0x020FFA38
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	ldr r0, [r4, #0x24]
	asr r1, r1, #0xc
	str r1, [r0, #0x0]
	b _02015B82
_02015B4E:
	asr r0, r1, #0x4
	lsl r1, r0, #0x2
	ldr r0, _02015BA8 ; =0x020FFA38
	ldr r2, [r4, #0xc]
	ldrsh r0, [r0, r1]
	mul r0, r2
	asr r0, r0, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015B82
_02015B64:
	asr r1, r1, #0x4
	lsl r1, r1, #0x1
	add r1, r1, #0x1
	lsl r2, r1, #0x1
	ldr r1, _02015BA8 ; =0x020FFA38
	ldr r0, [r4, #0xc]
	ldrsh r1, [r1, r2]
	mul r1, r0
	asr r0, r1, #0xc
	neg r1, r0
	ldr r0, [r4, #0x24]
	str r1, [r0, #0x0]
	b _02015B82
_02015B7E:
	bl ErrorHandling
_02015B82:
	add r0, r4, #0x0
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	add r1, r4, #0x0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl FUN_020158DC
	ldr r0, [r4, #0x1c]
	add r1, r0, #0x1
	str r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	blt _02015BA4
	mov r0, #0x0
	str r0, [r4, #0x0]
_02015BA4:
	pop {r4, pc}
	nop
_02015BA8: .word 0x020FFA38

	thumb_func_start FUN_02015BAC
FUN_02015BAC: ; 0x02015BAC
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0xc]
	ldr r2, [r4, #0x14]
	ldr r5, [r4, #0x8]
	mul r2, r3
	ldr r0, [r1, #0x0]
	add r2, r5, r2
	add r0, r0, r2
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0x2c
	add r1, r4, #0x0
	ldrb r0, [r0, #0x0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl FUN_020158DC
	ldr r0, [r4, #0x14]
	add r1, r0, #0x1
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _02015BE4
	mov r0, #0x0
	str r0, [r4, #0x0]
_02015BE4:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02015BE8
FUN_02015BE8: ; 0x02015BE8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x10]
	add r1, r0, #0x1
	ldr r0, [r4, #0x8]
	mul r0, r1
	ldr r1, [r4, #0xc]
	blx _s32_div_f
	ldr r1, [r4, #0x24]
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0x2c
	add r1, r4, #0x0
	ldrb r0, [r0, #0x0]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl FUN_020158DC
	ldr r0, [r4, #0x10]
	add r1, r0, #0x1
	str r1, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	blt _02015C20
	mov r0, #0x0
	str r0, [r4, #0x0]
_02015C20:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02015C24
FUN_02015C24: ; 0x02015C24
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x8]
	mul r0, r1
	ldr r1, [r4, #0x24]
	add r2, r2, r0
	ldr r0, [r1, #0x0]
	add r0, r0, r2
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x18
	beq _02015C48
	cmp r0, #0x1a
	bne _02015C6E
_02015C48:
	cmp r2, #0x0
	ldr r2, [r4, #0x10]
	bge _02015C5E
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0x0]
	cmp r0, r2
	bgt _02015CA4
	str r2, [r1, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x0]
	b _02015CA4
_02015C5E:
	ldr r1, [r4, #0x24]
	ldr r0, [r1, #0x0]
	cmp r0, r2
	blt _02015CA4
	str r2, [r1, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x0]
	b _02015CA4
_02015C6E:
	cmp r0, #0x19
	bne _02015CA0
	ldr r1, [r4, #0x24]
	ldr r3, [r4, #0x30]
	ldr r0, [r1, #0x0]
	add r3, r3, r0
	cmp r2, #0x0
	ldr r2, [r4, #0x10]
	bge _02015C90
	cmp r3, r2
	bgt _02015CA4
	sub r2, r2, r3
	add r0, r0, r2
	str r0, [r1, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x0]
	b _02015CA4
_02015C90:
	cmp r3, r2
	blt _02015CA4
	sub r2, r3, r2
	sub r0, r0, r2
	str r0, [r1, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x0]
	b _02015CA4
_02015CA0:
	bl ErrorHandling
_02015CA4:
	add r0, r4, #0x0
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	add r1, r4, #0x0
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	add r1, #0x30
	bl FUN_020158DC
	ldr r0, [r4, #0x14]
	add r0, r0, #0x1
	str r0, [r4, #0x14]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02015CC0
FUN_02015CC0: ; 0x02015CC0
	ldr r3, _02015CDC ; =0x020ED72C
	mov r2, #0x0
_02015CC4:
	ldrh r1, [r3, #0x2]
	cmp r0, r1
	bhs _02015CCE
	add r0, r2, #0x0
	bx lr
_02015CCE:
	add r2, r2, #0x1
	add r3, r3, #0x2
	cmp r2, #0x2
	blt _02015CC4
	add r0, r2, #0x0
	bx lr
	nop
_02015CDC: .word 0x020ED72C

	thumb_func_start FUN_02015CE0
FUN_02015CE0: ; 0x02015CE0
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02015CC0
	lsl r1, r0, #0x1
	ldr r0, _02015CF4 ; =0x020ED72C
	ldrh r0, [r0, r1]
	sub r0, r4, r0
	pop {r4, pc}
	nop
_02015CF4: .word 0x020ED72C

	thumb_func_start FUN_02015CF8
FUN_02015CF8: ; 0x02015CF8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x3
	blt _02015D06
	bl ErrorHandling
_02015D06:
	ldr r0, _02015D10 ; =0x020ED72C
	lsl r1, r5, #0x1
	ldrh r0, [r0, r1]
	add r0, r4, r0
	pop {r3-r5, pc}
	.balign 4
_02015D10: .word 0x020ED72C

	thumb_func_start FUN_02015D14
FUN_02015D14: ; 0x02015D14
	cmp r0, #0x7
	bhi _02015D34
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015D24: ; jump table (using 16-bit offset)
	.short _02015D34 - _02015D24 - 2; case 0
	.short _02015D34 - _02015D24 - 2; case 1
	.short _02015D38 - _02015D24 - 2; case 2
	.short _02015D3E - _02015D24 - 2; case 3
	.short _02015D38 - _02015D24 - 2; case 4
	.short _02015D42 - _02015D24 - 2; case 5
	.short _02015D34 - _02015D24 - 2; case 6
	.short _02015D38 - _02015D24 - 2; case 7
_02015D34:
	mov r0, #0xea
	bx lr
_02015D38:
	mov r0, #0x6d
	lsl r0, r0, #0x2
	bx lr
_02015D3E:
	ldr r0, _02015D48 ; =0x000001B7
	bx lr
_02015D42:
	ldr r0, _02015D4C ; =0x000001B6
	bx lr
	nop
_02015D48: .word 0x000001B7
_02015D4C: .word 0x000001B6

	thumb_func_start FUN_02015D50
FUN_02015D50: ; 0x02015D50
	cmp r0, #0x7
	bhi _02015D70
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02015D60: ; jump table (using 16-bit offset)
	.short _02015D70 - _02015D60 - 2; case 0
	.short _02015D70 - _02015D60 - 2; case 1
	.short _02015D74 - _02015D60 - 2; case 2
	.short _02015D78 - _02015D60 - 2; case 3
	.short _02015D74 - _02015D60 - 2; case 4
	.short _02015D7E - _02015D60 - 2; case 5
	.short _02015D70 - _02015D60 - 2; case 6
	.short _02015D74 - _02015D60 - 2; case 7
_02015D70:
	mov r0, #0xeb
	bx lr
_02015D74:
	ldr r0, _02015D84 ; =0x000001B5
	bx lr
_02015D78:
	mov r0, #0x6e
	lsl r0, r0, #0x2
	bx lr
_02015D7E:
	mov r0, #0x6d
	lsl r0, r0, #0x2
	bx lr
	.balign 4
_02015D84: .word 0x000001B5

	thumb_func_start FUN_02015D88
FUN_02015D88: ; 0x02015D88
	push {r3-r7, lr}
	sub sp, #0x10
	add r6, r3, #0x0
	str r0, [sp, #0x0]
	str r1, [sp, #0x4]
	str r2, [sp, #0x8]
	cmp r6, #0x1
	beq _02015D9C
	mov r2, #0x1
	b _02015D9E
_02015D9C:
	mov r2, #0x0
_02015D9E:
	ldr r0, [sp, #0x8]
	mov r4, #0x0
	sub r0, r0, #0x1
	str r0, [sp, #0xc]
	beq _02015E18
	ldr r1, _02015E28 ; =0x020ED734
	lsl r0, r2, #0x1
	ldr r5, [sp, #0x4]
	add r7, r1, r0
_02015DB0:
	ldr r0, [sp, #0x0]
	ldrb r0, [r0, r4]
	cmp r0, #0xff
	beq _02015E18
	cmp r0, #0xf7
	blo _02015DEA
	ldr r0, [sp, #0x8]
	sub r3, r0, #0x1
	cmp r3, #0xa
	blo _02015DC6
	mov r3, #0xa
_02015DC6:
	mov r1, #0x0
	cmp r3, #0x0
	ble _02015DDC
	mov r0, #0x6b
	ldr r2, [sp, #0x4]
	lsl r0, r0, #0x2
_02015DD2:
	add r1, r1, #0x1
	strh r0, [r2, #0x0]
	add r2, r2, #0x2
	cmp r1, r3
	blt _02015DD2
_02015DDC:
	ldr r0, [sp, #0x4]
	ldr r2, _02015E2C ; =0x0000FFFF
	lsl r1, r1, #0x1
	strh r2, [r0, r1]
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_02015DEA:
	lsl r0, r0, #0x2
	ldrh r0, [r7, r0]
	cmp r0, #0xea
	beq _02015DF8
	cmp r0, #0xeb
	beq _02015E02
	b _02015E0C
_02015DF8:
	add r0, r6, #0x0
	bl FUN_02015D14
	strh r0, [r5, #0x0]
	b _02015E0E
_02015E02:
	add r0, r6, #0x0
	bl FUN_02015D50
	strh r0, [r5, #0x0]
	b _02015E0E
_02015E0C:
	strh r0, [r5, #0x0]
_02015E0E:
	ldr r0, [sp, #0xc]
	add r4, r4, #0x1
	add r5, r5, #0x2
	cmp r4, r0
	blo _02015DB0
_02015E18:
	ldr r2, _02015E2C ; =0x0000FFFF
	ldr r0, [sp, #0x4]
	lsl r1, r4, #0x1
	strh r2, [r0, r1]
	mov r0, #0x1
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_02015E28: .word 0x020ED734
_02015E2C: .word 0x0000FFFF

	thumb_func_start FUN_02015E30
FUN_02015E30: ; 0x02015E30
	ldr r0, _02015E38 ; =0x021C4898
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_02015E38: .word 0x021C4898

	thumb_func_start FUN_02015E3C
FUN_02015E3C: ; 0x02015E3C
	push {r3, lr}
	ldr r1, _02015E5C ; =0x021C4898
	mov r2, #0x1
	str r2, [r1, #0x0]
	mov r2, #0x0
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	str r2, [r1, #0x8]
	str r2, [r1, #0xc]
	str r0, [r1, #0x4]
	bl FUN_02020BF4
	ldr r2, _02015E5C ; =0x021C4898
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	pop {r3, pc}
	.balign 4
_02015E5C: .word 0x021C4898

	thumb_func_start FUN_02015E60
FUN_02015E60: ; 0x02015E60
	push {r3-r5, lr}
	ldr r0, _02015E9C ; =0x021C4898
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _02015E9A
	bl FUN_02020BF4
	ldr r2, _02015E9C ; =0x021C4898
	ldr r3, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	sub r0, r0, r3
	sbc r1, r2
	bl FUN_02020C14
	add r5, r1, #0x0
	ldr r1, _02015E9C ; =0x021C4898
	add r4, r0, #0x0
	ldr r3, [r1, #0x8]
	ldr r2, [r1, #0xc]
	sub r0, r3, r4
	sbc r2, r5
	bhs _02015E9A
	ldr r0, [r1, #0x4]
	sub r1, r4, r3
	bl FUN_02029E54
	ldr r0, _02015E9C ; =0x021C4898
	str r4, [r0, #0x8]
	str r5, [r0, #0xc]
_02015E9A:
	pop {r3-r5, pc}
	.balign 4
_02015E9C: .word 0x021C4898

	thumb_func_start FUN_02015EA0
FUN_02015EA0: ; 0x02015EA0
	push {r3, lr}
	ldr r3, _02015EC8 ; =0x027E0000
	ldr r1, _02015ECC ; =0x00003FF8
	mov r0, #0x1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #0x3
	blx MI_WaitDma
	ldr r0, _02015ED0 ; =0x021C48B8
	ldr r0, [r0, #0x1c]
	bl FUN_0201B5CC
	ldr r0, _02015ED0 ; =0x021C48B8
	ldr r1, [r0, #0x30]
	add r1, r1, #0x1
	str r1, [r0, #0x30]
	pop {r3, pc}
	nop
_02015EC8: .word 0x027E0000
_02015ECC: .word 0x00003FF8
_02015ED0: .word 0x021C48B8

	thumb_func_start FUN_02015ED4
FUN_02015ED4: ; 0x02015ED4
	ldr r3, _02015EE8 ; =0x027E0000
	ldr r1, _02015EEC ; =0x00003FF8
	mov r0, #0x1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _02015EF0 ; =MI_WaitDma
	mov r0, #0x3
	bx r3
	nop
_02015EE8: .word 0x027E0000
_02015EEC: .word 0x00003FF8
_02015EF0: .word MI_WaitDma

	thumb_func_start FUN_02015EF4
FUN_02015EF4: ; 0x02015EF4
	push {r3, lr}
	mov r0, #0x1
	blx OS_DisableIrqMask
	ldr r1, _02015F0C ; =FUN_02015ED4
	mov r0, #0x1
	blx OS_SetIrqFunction
	mov r0, #0x1
	blx OS_EnableIrqMask
	pop {r3, pc}
	.balign 4
_02015F0C: .word FUN_02015ED4 

	thumb_func_start FUN_02015F10
FUN_02015F10: ; 0x02015F10
	ldr r2, _02015F18 ; =0x021C48B8
	str r0, [r2, #0x0]
	str r1, [r2, #0x4]
	bx lr
	.balign 4
_02015F18: .word 0x021C48B8

	thumb_func_start FUN_02015F1C
FUN_02015F1C: ; 0x02015F1C
	push {r3, lr}
	mov r0, #0x0
	bl FUN_02015F80
	ldr r0, _02015F30 ; =0x021C48B8
	mov r1, #0x0
	str r1, [r0, #0x8]
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_02015F30: .word 0x021C48B8

	thumb_func_start FUN_02015F34
FUN_02015F34: ; 0x02015F34
	push {r3, lr}
	cmp r0, #0x0
	bne _02015F4C
	mov r0, #0x0
	bl FUN_02015F80
	ldr r0, _02015F68 ; =0x021C48B8
	mov r1, #0x0
	str r1, [r0, #0x8]
	str r1, [r0, #0xc]
	mov r0, #0x1
	pop {r3, pc}
_02015F4C:
	ldr r2, _02015F68 ; =0x021C48B8
	ldr r3, [r2, #0x8]
	cmp r3, #0x0
	bne _02015F62
	str r1, [r2, #0xc]
	str r0, [r2, #0x8]
	mov r0, #0x1
	bl FUN_02015F80
	mov r0, #0x1
	pop {r3, pc}
_02015F62:
	mov r0, #0x0
	pop {r3, pc}
	nop
_02015F68: .word 0x021C48B8

	thumb_func_start FUN_02015F6C
FUN_02015F6C: ; 0x02015F6C
	push {r3, lr}
	ldr r0, _02015F7C ; =0x021C48B8
	ldr r1, [r0, #0x8]
	cmp r1, #0x0
	beq _02015F7A
	ldr r0, [r0, #0xc]
	blx r1
_02015F7A:
	pop {r3, pc}
	.balign 4
_02015F7C: .word 0x021C48B8

	thumb_func_start FUN_02015F80
FUN_02015F80: ; 0x02015F80
	push {r3, lr}
	ldr r2, _02015FC0 ; =0x04000208
	ldrh r1, [r2, #0x0]
	mov r1, #0x0
	strh r1, [r2, #0x0]
	cmp r0, #0x0
	bne _02015F9E
	ldr r0, [r2, #0x8]
	mov r0, #0x2
	blx OS_DisableIrqMask
	mov r0, #0x0
	blx FUN_020C5AF8
	b _02015FB4
_02015F9E:
	ldr r0, [r2, #0x8]
	ldr r1, _02015FC4 ; =FUN_02015F6C
	mov r0, #0x2
	blx OS_SetIrqFunction
	mov r0, #0x2
	blx OS_EnableIrqMask
	mov r0, #0x1
	blx FUN_020C5AF8
_02015FB4:
	ldr r1, _02015FC0 ; =0x04000208
	ldrh r0, [r1, #0x0]
	mov r0, #0x1
	strh r0, [r1, #0x0]
	pop {r3, pc}
	nop
_02015FC0: .word 0x04000208
_02015FC4: .word FUN_02015F6C 

	thumb_func_start FUN_02015FC8
FUN_02015FC8: ; 0x02015FC8
	push {r3, lr}
	sub sp, #0x30
	add r0, sp, #0x10
	blx OS_GetLowEntropyData
	add r0, sp, #0x0
	add r1, sp, #0x10
	mov r2, #0x20
	blx MATH_CalcMD5
	mov r3, #0x0
	add r1, r3, #0x0
	add r2, sp, #0x0
_02015FE2:
	ldrb r0, [r2, #0x0]
	add r1, r1, #0x1
	add r2, r2, #0x1
	add r3, r3, r0
	cmp r1, #0x10
	blo _02015FE2
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	mov r0, #0x3
	tst r0, r3
	beq _02016002
	mov r0, #0x3
_02015FFA:
	add r3, r3, #0x1
	add r1, r3, #0x0
	tst r1, r0
	bne _02015FFA
_02016002:
	ldr r0, _02016010 ; =0x020EDB10
	mov r1, #0x4
	mov r2, #0x5c
	bl FUN_020166C8
	add sp, #0x30
	pop {r3, pc}
	.balign 4
_02016010: .word 0x020EDB10

	thumb_func_start InitSystemForTheGame
InitSystemForTheGame: ; 0x02016014
	push {r3-r5, lr}
	blx OS_Init
	blx FUN_020C5974
	ldr r2, _02016124 ; =0x04000304
	ldr r0, _02016128 ; =0xFFFFFDF1
	ldrh r1, [r2, #0x0]
	and r1, r0
	ldr r0, _0201612C ; =0x0000020E
	orr r0, r1
	strh r0, [r2, #0x0]
	blx FUN_020C5B28
	blx OS_InitTick
	bl FUN_02015FC8
	mov r0, #0xa0
	bl FUN_0201B578
	add r1, r0, #0x0
	mov r0, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	add r1, r0, #0x0
	mov r0, #0xa0
	bl FUN_0201B580
	ldr r1, _02016130 ; =0x021C48B8
	str r0, [r1, #0x18]
	mov r0, #0x10
	bl FUN_0201B578
	add r1, r0, #0x0
	mov r0, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	add r1, r0, #0x0
	mov r0, #0x10
	bl FUN_0201B580
	ldr r1, _02016130 ; =0x021C48B8
	str r0, [r1, #0x1c]
	mov r0, #0x20
	bl FUN_0201B578
	add r1, r0, #0x0
	mov r0, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	add r1, r0, #0x0
	mov r0, #0x20
	bl FUN_0201B580
	ldr r1, _02016130 ; =0x021C48B8
	str r0, [r1, #0x20]
	mov r0, #0x4
	bl FUN_0201B578
	add r1, r0, #0x0
	mov r0, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	add r1, r0, #0x0
	mov r0, #0x4
	bl FUN_0201B580
	ldr r1, _02016130 ; =0x021C48B8
	str r0, [r1, #0x24]
	blx FUN_020C5A80
	ldr r2, _02016134 ; =0x04001000
	ldr r0, _02016138 ; =0xFFFEFFFF
	ldr r1, [r2, #0x0]
	and r0, r1
	str r0, [r2, #0x0]
	ldr r2, _02016124 ; =0x04000304
	ldrh r1, [r2, #0x0]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2, #0x0]
	ldr r1, _0201613C ; =FUN_02015EA0
	mov r0, #0x1
	blx OS_SetIrqFunction
	mov r0, #0x1
	blx OS_EnableIrqMask
	mov r0, #0x1
	lsl r0, r0, #0x12
	blx OS_EnableIrqMask
	ldr r1, _02016140 ; =0x04000208
	ldrh r0, [r1, #0x0]
	mov r0, #0x1
	strh r0, [r1, #0x0]
	blx FUN_020C5AC8
	mov r0, #0x1
	blx FS_Init
	bl FUN_02022450
	mov r0, #0x0
	add r1, r0, #0x0
	blx FS_TryLoadTable
	add r4, r0, #0x0
	mov r0, #0x0
	add r1, r4, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	add r5, r0, #0x0
	bne _02016108
	bl ErrorHandling
_02016108:
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FS_TryLoadTable
	ldr r0, _02016130 ; =0x021C48B8
	mov r1, #0x0
	str r1, [r0, #0x0]
	str r1, [r0, #0x8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x2c]
	ldr r0, _02016144 ; =0x021C4918
	strb r1, [r0, #0x5]
	pop {r3-r5, pc}
	.balign 4
_02016124: .word 0x04000304
_02016128: .word 0xFFFFFDF1
_0201612C: .word 0x0000020E
_02016130: .word 0x021C48B8
_02016134: .word 0x04001000
_02016138: .word 0xFFFEFFFF
_0201613C: .word FUN_02015EA0 
_02016140: .word 0x04000208
_02016144: .word 0x021C4918

	thumb_func_start InitGraphicMemory
InitGraphicMemory: ; 0x02016148
	push {r3, lr}
	ldr r0, _02016198 ; =0x000001FF
	blx FUN_020C63A8
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0x0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	blx MIi_CpuClearFast
	blx FUN_020C5E54
	mov r1, #0x7
	mov r2, #0x1
	mov r0, #0xc0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	blx MIi_CpuClearFast
	mov r2, #0x1
	ldr r1, _0201619C ; =0x07000400
	mov r0, #0xc0
	lsl r2, r2, #0xa
	blx MIi_CpuClearFast
	mov r1, #0x5
	mov r2, #0x1
	mov r0, #0x0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	blx MIi_CpuClearFast
	mov r2, #0x1
	ldr r1, _020161A0 ; =0x05000400
	mov r0, #0x0
	lsl r2, r2, #0xa
	blx MIi_CpuClearFast
	pop {r3, pc}
	.balign 4
_02016198: .word 0x000001FF
_0201619C: .word 0x07000400
_020161A0: .word 0x05000400

	thumb_func_start FUN_020161A4
FUN_020161A4: ; 0x020161A4
	push {r4-r6, lr}
	sub sp, #0x48
	add r6, r0, #0x0
	add r4, r1, #0x0
	add r0, sp, #0x0
	blx FS_InitFile
	add r0, sp, #0x0
	add r1, r4, #0x0
	blx FS_OpenFile
	cmp r0, #0x0
	beq _020161F0
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r5, r1, r0
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	beq _020161E8
	add r0, sp, #0x0
	add r1, r4, #0x0
	add r2, r5, #0x0
	blx FS_ReadFile
	cmp r5, r0
	beq _020161E8
	add r0, r6, #0x0
	add r1, r4, #0x0
	bl FUN_02016A8C
	mov r4, #0x0
_020161E8:
	add r0, sp, #0x0
	blx FS_CloseFile
	b _020161F2
_020161F0:
	mov r4, #0x0
_020161F2:
	add r0, r4, #0x0
	add sp, #0x48
	pop {r4-r6, pc}

	thumb_func_start FUN_020161F8
FUN_020161F8: ; 0x020161F8
	push {r3-r5, lr}
	sub sp, #0x48
	add r5, r0, #0x0
	add r0, sp, #0x0
	add r4, r1, #0x0
	blx FS_InitFile
	add r0, sp, #0x0
	add r1, r5, #0x0
	blx FS_OpenFile
	cmp r0, #0x0
	beq _0201622A
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r2, r1, r0
	ldr r1, [r4, #0x0]
	cmp r1, #0x0
	beq _02016224
	add r0, sp, #0x0
	blx FS_ReadFile
_02016224:
	add r0, sp, #0x0
	blx FS_CloseFile
_0201622A:
	add sp, #0x48
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02016230
FUN_02016230: ; 0x02016230
	push {r3-r7, lr}
	sub sp, #0x8
	str r0, [sp, #0x0]
	blx strlen
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	beq _02016258
	lsr r0, r3, #0x2
	add r0, r0, #0x1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x4]
	b _0201625E
_02016258:
	lsl r0, r3, #0xe
	lsr r0, r0, #0x10
	str r0, [sp, #0x4]
_0201625E:
	ldr r0, [sp, #0x4]
	mov r7, #0x0
	mov r12, r7
	cmp r0, #0x0
	ble _0201629A
	add r6, r7, #0x0
	add r4, r7, #0x0
_0201626C:
	ldr r2, [sp, #0x0]
	mov r1, #0x0
	add r0, r1, #0x0
	add r2, r2, r6
	add r3, r1, #0x0
_02016276:
	ldrsb r5, [r2, r4]
	cmp r5, #0x0
	beq _0201628A
	lsl r5, r3
	add r0, r0, #0x1
	orr r1, r5
	add r2, r2, #0x1
	add r3, #0x8
	cmp r0, #0x4
	blt _02016276
_0201628A:
	mov r0, r12
	eor r7, r1
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	add r6, r6, #0x4
	mov r12, r1
	cmp r1, r0
	blt _0201626C
_0201629A:
	add r0, r7, #0x0
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_020162A0
FUN_020162A0: ; 0x020162A0
	ldr r3, _020162C4 ; =0x021C4928
	mov r2, #0x0
_020162A4:
	ldr r1, [r3, #0x4]
	cmp r0, r1
	bne _020162B4
	ldr r1, [r3, #0x0]
	cmp r1, #0x0
	beq _020162B4
	add r0, r2, #0x0
	bx lr
_020162B4:
	add r2, r2, #0x1
	add r3, #0x8
	cmp r2, #0x80
	blt _020162A4
	mov r0, #0x0
	mvn r0, r0
	bx lr
	nop
_020162C4: .word 0x021C4928

	thumb_func_start FUN_020162C8
FUN_020162C8: ; 0x020162C8
	push {r3-r4}
	ldr r3, _020162F4 ; =0x021C4928
	mov r4, #0x0
_020162CE:
	ldr r2, [r3, #0x0]
	cmp r2, #0x0
	bne _020162E4
	ldr r2, _020162F4 ; =0x021C4928
	lsl r3, r4, #0x3
	str r0, [r2, r3]
	ldr r0, _020162F8 ; =0x021C492C
	str r1, [r0, r3]
	add r0, r4, #0x0
	pop {r3-r4}
	bx lr
_020162E4:
	add r4, r4, #0x1
	add r3, #0x8
	cmp r4, #0x80
	blt _020162CE
	mov r0, #0x0
	mvn r0, r0
	pop {r3-r4}
	bx lr
	.balign 4
_020162F4: .word 0x021C4928
_020162F8: .word 0x021C492C

	thumb_func_start FUN_020162FC
FUN_020162FC: ; 0x020162FC
	push {r3-r7, lr}
	mov r6, #0x0
	ldr r5, _02016320 ; =0x021C4D20
	mov r4, #0x7f
	sub r7, r6, #0x1
_02016306:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _02016314
	bl FUN_02016A18
	str r6, [r5, #0x0]
	str r6, [r5, #0x4]
_02016314:
	sub r4, r4, #0x1
	sub r5, #0x8
	cmp r4, r7
	bgt _02016306
	pop {r3-r7, pc}
	nop
_02016320: .word 0x021C4D20

	thumb_func_start FUN_02016324
FUN_02016324: ; 0x02016324
	push {r3-r7, lr}
	sub sp, #0x68
	add r2, r0, #0x0
	mov r5, #0x0
	ldrsb r0, [r2, r5]
	add r4, r1, #0x0
	cmp r0, #0x21
	add r0, sp, #0x0
	bne _02016340
	add r1, r2, #0x1
	blx strcpy
	mov r5, #0x1
	b _02016346
_02016340:
	add r1, r2, #0x0
	blx strcpy
_02016346:
	add r0, sp, #0x0
	bl FUN_02016230
	add r7, r0, #0x0
	bl FUN_020162A0
	cmp r0, #0x0
	blt _02016362
	cmp r5, #0x0
	bne _02016362
	lsl r1, r0, #0x3
	ldr r0, _020163B8 ; =0x021C4928
	ldr r4, [r0, r1]
	b _020163B2
_02016362:
	add r0, sp, #0x20
	blx FS_InitFile
	add r0, sp, #0x20
	add r1, sp, #0x0
	blx FS_OpenFile
	cmp r0, #0x0
	beq _020163B0
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x44]
	sub r6, r1, r0
	add r0, r4, #0x0
	add r1, r6, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	beq _0201639C
	add r0, sp, #0x20
	add r1, r4, #0x0
	add r2, r6, #0x0
	blx FS_ReadFile
	cmp r6, r0
	beq _0201639C
	add r0, r4, #0x0
	bl FUN_02016A18
	mov r4, #0x0
_0201639C:
	add r0, sp, #0x20
	blx FS_CloseFile
	cmp r5, #0x0
	bne _020163B2
	add r0, r4, #0x0
	add r1, r7, #0x0
	bl FUN_020162C8
	b _020163B2
_020163B0:
	mov r4, #0x0
_020163B2:
	add r0, r4, #0x0
	add sp, #0x68
	pop {r3-r7, pc}
	.balign 4
_020163B8: .word 0x021C4928

	thumb_func_start FUN_020163BC
FUN_020163BC: ; 0x020163BC
	push {r3, lr}
	sub sp, #0x8
	ldr r0, _0201641C ; =0x021C48B8
	mov r2, #0x0
	str r2, [r0, #0x34]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	mov r1, #0x8
	str r1, [r0, #0x54]
	mov r1, #0xf
	str r1, [r0, #0x58]
	ldr r0, _02016420 ; =0x021C48F8
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	ldr r0, _02016424 ; =0x021C4918
	strb r2, [r0, #0x4]
	blx TP_Init
	add r0, sp, #0x0
	blx TP_GetUserInfo
	cmp r0, #0x1
	add r0, sp, #0x0
	bne _02016402
	blx TP_SetCalibrateParam
	add sp, #0x8
	pop {r3, pc}
_02016402:
	ldr r1, _02016428 ; =0x000002AE
	strh r1, [r0, #0x0]
	ldr r1, _0201642C ; =0x0000058C
	strh r1, [r0, #0x2]
	ldr r1, _02016430 ; =0x00000E25
	strh r1, [r0, #0x4]
	ldr r1, _02016434 ; =0x00001208
	strh r1, [r0, #0x6]
	add r0, sp, #0x0
	blx TP_SetCalibrateParam
	add sp, #0x8
	pop {r3, pc}
	.balign 4
_0201641C: .word 0x021C48B8
_02016420: .word 0x021C48F8
_02016424: .word 0x021C4918
_02016428: .word 0x000002AE
_0201642C: .word 0x0000058C
_02016430: .word 0x00000E25
_02016434: .word 0x00001208

	thumb_func_start FUN_02016438
FUN_02016438: ; 0x02016438
	ldr r1, _02016440 ; =0x021C4918
	strb r0, [r1, #0x6]
	bx lr
	nop
_02016440: .word 0x021C4918

	thumb_func_start FUN_02016444
FUN_02016444: ; 0x02016444
	ldr r1, _02016450 ; =0x021C4918
	ldrb r2, [r1, #0x7]
	orr r0, r2
	strb r0, [r1, #0x7]
	bx lr
	nop
_02016450: .word 0x021C4918

	thumb_func_start FUN_02016454
FUN_02016454: ; 0x02016454
	ldr r1, _02016460 ; =0x021C4918
	mvn r0, r0
	ldrb r2, [r1, #0x7]
	and r0, r2
	strb r0, [r1, #0x7]
	bx lr
	.balign 4
_02016460: .word 0x021C4918

	thumb_func_start FUN_02016464
FUN_02016464: ; 0x02016464
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _02016550 ; =0x027FFFA8
	mov r0, #0x2
	ldrh r1, [r2, #0x0]
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _0201648A
	ldr r0, _02016554 ; =0x021C48B8
	mov r1, #0x0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x4c]
	ldr r0, _02016558 ; =0x021C48F8
	add sp, #0x10
	strh r1, [r0, #0x20]
	strh r1, [r0, #0x22]
	pop {r4, pc}
_0201648A:
	ldr r0, _0201655C ; =0x04000130
	ldrh r1, [r0, #0x0]
	ldrh r0, [r2, #0x0]
	orr r1, r0
	ldr r0, _02016560 ; =0x00002FFF
	eor r1, r0
	and r0, r1
	ldr r1, _02016554 ; =0x021C48B8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r2, [r1, #0x38]
	add r3, r0, #0x0
	eor r3, r2
	and r3, r0
	str r3, [r1, #0x3c]
	str r3, [r1, #0x40]
	cmp r0, #0x0
	beq _020164C2
	cmp r2, r0
	bne _020164C2
	ldr r2, [r1, #0x50]
	sub r2, r2, #0x1
	str r2, [r1, #0x50]
	bne _020164C8
	str r0, [r1, #0x40]
	ldr r2, [r1, #0x54]
	str r2, [r1, #0x50]
	b _020164C8
_020164C2:
	ldr r1, _02016554 ; =0x021C48B8
	ldr r2, [r1, #0x58]
	str r2, [r1, #0x50]
_020164C8:
	ldr r1, _02016554 ; =0x021C48B8
	str r0, [r1, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r1, #0x48]
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r1, #0x4c]
	bl FUN_02016568
	ldr r0, _02016564 ; =0x021C4918
	ldrb r0, [r0, #0x4]
	cmp r0, #0x0
	bne _020164F4
	add r4, sp, #0x8
_020164E4:
	blx TP_RequestSamplingAsync
	add r0, r4, #0x0
	blx TP_WaitRawResult
	cmp r0, #0x0
	bne _020164E4
	b _020164FA
_020164F4:
	add r0, sp, #0x8
	blx TP_GetLatestRawPointInAuto
_020164FA:
	add r0, sp, #0x0
	add r1, sp, #0x8
	blx TP_GetCalibratedPoint
	add r1, sp, #0x0
	ldrh r3, [r1, #0x6]
	cmp r3, #0x0
	bne _02016516
	ldrh r2, [r1, #0x0]
	ldr r0, _02016558 ; =0x021C48F8
	strh r2, [r0, #0x1c]
	ldrh r1, [r1, #0x2]
	strh r1, [r0, #0x1e]
	b _0201653A
_02016516:
	ldr r0, _02016558 ; =0x021C48F8
	ldrh r2, [r0, #0x22]
	cmp r2, #0x0
	beq _02016536
	cmp r3, #0x1
	beq _0201652A
	cmp r3, #0x2
	beq _02016530
	cmp r3, #0x3
	b _0201653A
_0201652A:
	ldrh r1, [r1, #0x2]
	strh r1, [r0, #0x1e]
	b _0201653A
_02016530:
	ldrh r1, [r1, #0x0]
	strh r1, [r0, #0x1c]
	b _0201653A
_02016536:
	mov r0, #0x0
	strh r0, [r1, #0x4]
_0201653A:
	add r0, sp, #0x0
	ldrh r2, [r0, #0x4]
	ldr r0, _02016558 ; =0x021C48F8
	ldrh r1, [r0, #0x22]
	eor r1, r2
	and r1, r2
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	add sp, #0x10
	pop {r4, pc}
	nop
_02016550: .word 0x027FFFA8
_02016554: .word 0x021C48B8
_02016558: .word 0x021C48F8
_0201655C: .word 0x04000130
_02016560: .word 0x00002FFF
_02016564: .word 0x021C4918

	thumb_func_start FUN_02016568
FUN_02016568: ; 0x02016568
	ldr r0, _02016690 ; =0x021C48B8
	ldr r1, [r0, #0x34]
	cmp r1, #0x3
	bls _02016572
	b _0201668C
_02016572:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201657E: ; jump table (using 16-bit offset)
	.short _0201668C - _0201657E - 2; case 0
	.short _02016586 - _0201657E - 2; case 1
	.short _020165BC - _0201657E - 2; case 2
	.short _02016642 - _0201657E - 2; case 3
_02016586:
	ldr r2, [r0, #0x48]
	mov r1, #0x8
	add r3, r2, #0x0
	tst r3, r1
	beq _02016596
	lsl r1, r1, #0x7
	orr r1, r2
	str r1, [r0, #0x48]
_02016596:
	ldr r1, _02016690 ; =0x021C48B8
	mov r0, #0x8
	ldr r2, [r1, #0x44]
	add r3, r2, #0x0
	tst r3, r0
	beq _020165A8
	lsl r0, r0, #0x7
	orr r0, r2
	str r0, [r1, #0x44]
_020165A8:
	ldr r1, _02016690 ; =0x021C48B8
	mov r0, #0x8
	ldr r2, [r1, #0x4c]
	add r3, r2, #0x0
	tst r3, r0
	beq _0201668C
	lsl r0, r0, #0x7
	orr r0, r2
	str r0, [r1, #0x4c]
	bx lr
_020165BC:
	ldr r3, [r0, #0x48]
	mov r0, #0x1
	lsl r0, r0, #0xa
	add r2, r3, #0x0
	mov r1, #0x0
	tst r2, r0
	beq _020165CE
	lsl r0, r0, #0x1
	orr r1, r0
_020165CE:
	mov r0, #0x2
	lsl r0, r0, #0xa
	add r2, r3, #0x0
	tst r2, r0
	beq _020165DC
	lsr r0, r0, #0x1
	orr r1, r0
_020165DC:
	ldr r2, _02016690 ; =0x021C48B8
	ldr r0, _02016694 ; =0x0000F3FF
	ldr r3, [r2, #0x48]
	and r0, r3
	orr r0, r1
	str r0, [r2, #0x48]
	ldr r3, [r2, #0x44]
	mov r1, #0x1
	lsl r1, r1, #0xa
	add r2, r3, #0x0
	mov r0, #0x0
	tst r2, r1
	beq _020165FA
	lsl r1, r1, #0x1
	orr r0, r1
_020165FA:
	mov r1, #0x2
	lsl r1, r1, #0xa
	add r2, r3, #0x0
	tst r2, r1
	beq _02016608
	lsr r1, r1, #0x1
	orr r0, r1
_02016608:
	ldr r2, _02016690 ; =0x021C48B8
	ldr r1, _02016694 ; =0x0000F3FF
	ldr r3, [r2, #0x44]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x44]
	ldr r3, [r2, #0x4c]
	mov r1, #0x1
	lsl r1, r1, #0xa
	add r2, r3, #0x0
	mov r0, #0x0
	tst r2, r1
	beq _02016626
	lsl r1, r1, #0x1
	orr r0, r1
_02016626:
	mov r1, #0x2
	lsl r1, r1, #0xa
	add r2, r3, #0x0
	tst r2, r1
	beq _02016634
	lsr r1, r1, #0x1
	orr r0, r1
_02016634:
	ldr r2, _02016690 ; =0x021C48B8
	ldr r1, _02016694 ; =0x0000F3FF
	ldr r3, [r2, #0x4c]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x4c]
	bx lr
_02016642:
	mov r1, #0x2
	ldr r2, [r0, #0x48]
	lsl r1, r1, #0x8
	tst r1, r2
	beq _02016652
	mov r1, #0x1
	orr r1, r2
	str r1, [r0, #0x48]
_02016652:
	ldr r1, _02016690 ; =0x021C48B8
	mov r0, #0x2
	ldr r2, [r1, #0x44]
	lsl r0, r0, #0x8
	tst r0, r2
	beq _02016664
	mov r0, #0x1
	orr r0, r2
	str r0, [r1, #0x44]
_02016664:
	ldr r1, _02016690 ; =0x021C48B8
	mov r0, #0x2
	ldr r2, [r1, #0x4c]
	lsl r0, r0, #0x8
	tst r0, r2
	beq _02016676
	mov r0, #0x1
	orr r0, r2
	str r0, [r1, #0x4c]
_02016676:
	ldr r1, _02016690 ; =0x021C48B8
	ldr r0, _02016698 ; =0x0000FCFF
	ldr r2, [r1, #0x48]
	and r2, r0
	str r2, [r1, #0x48]
	ldr r2, [r1, #0x44]
	and r2, r0
	str r2, [r1, #0x44]
	ldr r2, [r1, #0x4c]
	and r0, r2
	str r0, [r1, #0x4c]
_0201668C:
	bx lr
	nop
_02016690: .word 0x021C48B8
_02016694: .word 0x0000F3FF
_02016698: .word 0x0000FCFF

	thumb_func_start FUN_0201669C
FUN_0201669C: ; 0x0201669C
	ldr r2, _020166A4 ; =0x021C48B8
	str r0, [r2, #0x54]
	str r1, [r2, #0x58]
	bx lr
	.balign 4
_020166A4: .word 0x021C48B8

	thumb_func_start FUN_020166A8
FUN_020166A8: ; 0x020166A8
	ldr r1, _020166B4 ; =0x021C4918
	ldrb r2, [r1, #0x8]
	orr r0, r2
	strb r0, [r1, #0x8]
	bx lr
	nop
_020166B4: .word 0x021C4918

	thumb_func_start FUN_020166B8
FUN_020166B8: ; 0x020166B8
	ldr r1, _020166C4 ; =0x021C4918
	mvn r0, r0
	ldrb r2, [r1, #0x8]
	and r0, r2
	strb r0, [r1, #0x8]
	bx lr
	.balign 4
_020166C4: .word 0x021C4918

	thumb_func_start FUN_020166C8
FUN_020166C8: ; 0x020166C8
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	str r0, [sp, #0x4]
	add r0, #0x18
	add r6, r2, #0x0
	str r0, [sp, #0x4]
	cmp r6, r0
	bhs _020166E0
	add r6, r0, #0x0
_020166E0:
	cmp r3, #0x0
	beq _020166FE
	mov r0, #0x3
	tst r0, r3
	beq _020166F4
	mov r0, #0x3
_020166EC:
	add r3, r3, #0x1
	add r1, r3, #0x0
	tst r1, r0
	bne _020166EC
_020166F4:
	mov r0, #0x0
	add r1, r3, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
_020166FE:
	ldr r1, [sp, #0x4]
	lsl r7, r6, #0x1
	lsl r2, r1, #0x1
	add r1, r1, r2
	add r1, r1, #0x1
	lsl r1, r1, #0x2
	add r1, r7, r1
	mov r0, #0x0
	add r1, r6, r1
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	ldr r1, _020167F0 ; =0x021C4D28
	str r0, [r1, #0x0]
	ldr r1, [sp, #0x4]
	add r1, r1, #0x1
	lsl r1, r1, #0x2
	add r1, r0, r1
	ldr r0, _020167F0 ; =0x021C4D28
	str r1, [r0, #0x4]
	ldr r0, [sp, #0x4]
	lsl r0, r0, #0x2
	add r2, r1, r0
	ldr r1, _020167F0 ; =0x021C4D28
	str r2, [r1, #0x8]
	add r1, r2, r0
	ldr r0, _020167F0 ; =0x021C4D28
	str r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0x10]
	strh r6, [r0, #0x14]
	strh r4, [r0, #0x16]
	ldr r0, [sp, #0x4]
	mov r7, #0x0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020167F0 ; =0x021C4D28
	cmp r4, #0x0
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	bls _020167A0
	str r7, [sp, #0x0]
_02016752:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	beq _0201675C
	cmp r0, #0x2
	beq _02016768
_0201675C:
	ldr r1, [r5, #0x0]
	mov r0, #0x0
	mov r2, #0x4
	blx OS_AllocFromArenaLo
	b _02016772
_02016768:
	ldr r1, [r5, #0x0]
	mov r0, #0x2
	mov r2, #0x4
	blx OS_AllocFromArenaHi
_02016772:
	cmp r0, #0x0
	beq _0201678E
	ldr r1, [r5, #0x0]
	mov r2, #0x0
	blx FUN_020ADFE8
	ldr r1, _020167F0 ; =0x021C4D28
	ldr r2, [r1, #0x0]
	ldr r1, [sp, #0x0]
	str r0, [r2, r1]
	ldr r0, _020167F0 ; =0x021C4D28
	ldr r0, [r0, #0x10]
	strb r7, [r0, r7]
	b _02016792
_0201678E:
	bl ErrorHandling
_02016792:
	ldr r0, [sp, #0x0]
	add r7, r7, #0x1
	add r0, r0, #0x4
	add r5, #0x8
	str r0, [sp, #0x0]
	cmp r7, r4
	blo _02016752
_020167A0:
	ldr r0, [sp, #0x4]
	add r1, r0, #0x1
	cmp r4, r1
	bhs _020167C0
	ldr r3, _020167F0 ; =0x021C4D28
	lsl r2, r4, #0x2
	mov r0, #0x0
_020167AE:
	ldr r5, [r3, #0x0]
	str r0, [r5, r2]
	ldrh r7, [r3, #0x1a]
	ldr r5, [r3, #0x10]
	add r2, r2, #0x4
	strb r7, [r5, r4]
	add r4, r4, #0x1
	cmp r4, r1
	blo _020167AE
_020167C0:
	cmp r4, r6
	bhs _020167D2
	ldr r0, _020167F0 ; =0x021C4D28
_020167C6:
	ldrh r2, [r0, #0x1a]
	ldr r1, [r0, #0x10]
	strb r2, [r1, r4]
	add r4, r4, #0x1
	cmp r4, r6
	blo _020167C6
_020167D2:
	mov r4, #0x0
	cmp r6, #0x0
	bls _020167EA
	ldr r0, _020167F0 ; =0x021C4D28
	add r3, r4, #0x0
	add r2, r4, #0x0
_020167DE:
	ldr r1, [r0, #0xc]
	add r4, r4, #0x1
	strh r2, [r1, r3]
	add r3, r3, #0x2
	cmp r4, r6
	blo _020167DE
_020167EA:
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_020167F0: .word 0x021C4D28

	thumb_func_start FUN_020167F4
FUN_020167F4: ; 0x020167F4
	ldr r1, _02016818 ; =0x021C4D28
	ldrh r0, [r1, #0x16]
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bge _02016812
	ldr r2, [r1, #0x0]
	lsl r1, r0, #0x2
	add r2, r2, r1
_02016804:
	ldr r1, [r2, #0x0]
	cmp r1, #0x0
	beq _02016816
	add r0, r0, #0x1
	add r2, r2, #0x4
	cmp r0, r3
	blt _02016804
_02016812:
	mov r0, #0x0
	mvn r0, r0
_02016816:
	bx lr
	.balign 4
_02016818: .word 0x021C4D28

	thumb_func_start FUN_0201681C
FUN_0201681C: ; 0x0201681C
	push {r3, lr}
	mov r3, #0x4
	bl FUN_02016834
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02016828
FUN_02016828: ; 0x02016828
	push {r3, lr}
	mov r3, #0x3
	mvn r3, r3
	bl FUN_02016834
	pop {r3, pc}

	thumb_func_start FUN_02016834
FUN_02016834: ; 0x02016834
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r5, r1, #0x0
	str r2, [sp, #0x0]
	add r7, r3, #0x0
	blx OS_GetProcMode
	cmp r0, #0x12
	bne _0201684C
	bl ErrorHandling
_0201684C:
	ldr r1, _020168CC ; =0x021C4D28
	ldr r0, [r1, #0x10]
	ldrh r3, [r1, #0x1a]
	ldrb r2, [r0, r5]
	cmp r3, r2
	bne _020168C2
	ldrb r0, [r0, r4]
	ldr r1, [r1, #0x0]
	lsl r0, r0, #0x2
	ldr r6, [r1, r0]
	cmp r6, #0x0
	beq _020168BC
	ldr r1, [sp, #0x0]
	add r0, r6, #0x0
	add r2, r7, #0x0
	blx FUN_020ADFA0
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _020168B6
	bl FUN_020167F4
	add r7, r0, #0x0
	bmi _020168B0
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x0]
	mov r2, #0x0
	lsl r4, r7, #0x2
	blx FUN_020ADFE8
	ldr r1, _020168CC ; =0x021C4D28
	ldr r2, [r1, #0x0]
	str r0, [r2, r4]
	ldr r0, [r1, #0x0]
	ldr r0, [r0, r4]
	cmp r0, #0x0
	beq _020168AA
	ldr r0, [r1, #0x4]
	str r6, [r0, r4]
	ldr r0, [sp, #0x4]
	ldr r2, [r1, #0x8]
	add sp, #0x8
	str r0, [r2, r4]
	ldr r0, [r1, #0x10]
	strb r7, [r0, r5]
	mov r0, #0x1
	pop {r3-r7, pc}
_020168AA:
	bl ErrorHandling
	b _020168C6
_020168B0:
	bl ErrorHandling
	b _020168C6
_020168B6:
	bl ErrorHandling
	b _020168C6
_020168BC:
	bl ErrorHandling
	b _020168C6
_020168C2:
	bl ErrorHandling
_020168C6:
	mov r0, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_020168CC: .word 0x021C4D28

	thumb_func_start FUN_020168D0
FUN_020168D0: ; 0x020168D0
	push {r4, lr}
	add r4, r0, #0x0
	blx OS_GetProcMode
	cmp r0, #0x12
	bne _020168E0
	bl ErrorHandling
_020168E0:
	ldr r0, _02016940 ; =0x021C4D28
	ldr r1, [r0, #0x0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x2
	ldr r0, [r1, r0]
	cmp r0, #0x0
	beq _0201693E
	blx FUN_020ADFDC
	ldr r1, _02016940 ; =0x021C4D28
	ldr r0, [r1, #0x10]
	ldrb r0, [r0, r4]
	lsl r2, r0, #0x2
	ldr r0, [r1, #0x4]
	ldr r1, [r1, #0x8]
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	cmp r0, #0x0
	beq _02016912
	cmp r1, #0x0
	beq _02016912
	blx FUN_020ADDF0
	b _02016916
_02016912:
	bl ErrorHandling
_02016916:
	ldr r1, _02016940 ; =0x021C4D28
	mov r0, #0x0
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x0]
	ldrb r2, [r2, r4]
	lsl r2, r2, #0x2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x4]
	ldrb r2, [r2, r4]
	lsl r2, r2, #0x2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0x8]
	ldrb r2, [r2, r4]
	lsl r2, r2, #0x2
	str r0, [r3, r2]
	ldrh r2, [r1, #0x1a]
	ldr r0, [r1, #0x10]
	strb r2, [r0, r4]
_0201693E:
	pop {r4, pc}
	.balign 4
_02016940: .word 0x021C4D28

	thumb_func_start FUN_02016944
FUN_02016944: ; 0x02016944
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r7, r2, #0x0
	add r6, r3, #0x0
	cmp r5, #0x0
	bne _02016956
	bl ErrorHandling
_02016956:
	blx OS_DisableInterrupts
	add r4, #0x10
	str r0, [sp, #0x0]
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r2, r7, #0x0
	blx FUN_020ADFA0
	add r4, r0, #0x0
	ldr r0, [sp, #0x0]
	blx OS_RestoreInterrupts
	cmp r4, #0x0
	beq _02016984
	ldr r1, [r4, #0xc]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0xc]
	add r4, #0x10
_02016984:
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_02016988
FUN_02016988: ; 0x02016988
	push {r3, lr}
	bl FUN_02031810
	cmp r0, #0x0
	beq _02016996
	bl FUN_0208A9B8
_02016996:
	pop {r3, pc}

	thumb_func_start FUN_02016998
FUN_02016998: ; 0x02016998
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _020169D4 ; =0x021C4D28
	mov r4, #0x0
	ldrh r2, [r0, #0x14]
	cmp r5, r2
	bhs _020169BA
	ldr r2, [r0, #0x0]
	ldr r0, [r0, #0x10]
	add r3, r5, #0x0
	ldrb r0, [r0, r5]
	lsl r0, r0, #0x2
	ldr r0, [r2, r0]
	mov r2, #0x4
	bl FUN_02016944
	add r4, r0, #0x0
_020169BA:
	cmp r4, #0x0
	beq _020169CC
	ldr r0, _020169D4 ; =0x021C4D28
	lsl r1, r5, #0x1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #0x1
	strh r0, [r2, r1]
	b _020169D0
_020169CC:
	bl FUN_02016988
_020169D0:
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4
_020169D4: .word 0x021C4D28

	thumb_func_start FUN_020169D8
FUN_020169D8: ; 0x020169D8
	push {r3-r5, lr}
	ldr r2, _02016A14 ; =0x021C4D28
	add r5, r0, #0x0
	ldrh r0, [r2, #0x14]
	mov r4, #0x0
	cmp r5, r0
	bhs _020169FA
	ldr r0, [r2, #0x0]
	ldr r2, [r2, #0x10]
	add r3, r5, #0x0
	ldrb r2, [r2, r5]
	lsl r2, r2, #0x2
	ldr r0, [r0, r2]
	sub r2, r4, #0x4
	bl FUN_02016944
	add r4, r0, #0x0
_020169FA:
	cmp r4, #0x0
	beq _02016A0C
	ldr r0, _02016A14 ; =0x021C4D28
	lsl r1, r5, #0x1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #0x1
	strh r0, [r2, r1]
	b _02016A10
_02016A0C:
	bl FUN_02016988
_02016A10:
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4
_02016A14: .word 0x021C4D28

	thumb_func_start FUN_02016A18
FUN_02016A18: ; 0x02016A18
	push {r3-r7, lr}
	add r6, r0, #0x0
	sub r0, r6, #0x4
	ldr r0, [r0, #0x0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02016A88 ; =0x021C4D28
	ldrh r1, [r0, #0x14]
	cmp r4, r1
	bhs _02016A80
	ldr r1, [r0, #0x0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #0x2
	ldr r7, [r1, r0]
	cmp r7, #0x0
	bne _02016A3E
	bl ErrorHandling
_02016A3E:
	ldr r0, _02016A88 ; =0x021C4D28
	lsl r5, r4, #0x1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0x0
	bne _02016A50
	add r0, r4, #0x0
	bl FUN_02016B90
_02016A50:
	ldr r0, _02016A88 ; =0x021C4D28
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0x0
	bne _02016A5E
	bl ErrorHandling
_02016A5E:
	ldr r0, _02016A88 ; =0x021C4D28
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r5]
	sub r0, r0, #0x1
	strh r0, [r1, r5]
	blx OS_DisableInterrupts
	sub r6, #0x10
	add r4, r0, #0x0
	add r0, r7, #0x0
	add r1, r6, #0x0
	blx FUN_020ADDF0
	add r0, r4, #0x0
	blx OS_RestoreInterrupts
	pop {r3-r7, pc}
_02016A80:
	bl ErrorHandling
	pop {r3-r7, pc}
	nop
_02016A88: .word 0x021C4D28

	thumb_func_start FUN_02016A8C
FUN_02016A8C: ; 0x02016A8C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	blx OS_GetProcMode
	cmp r0, #0x12
	bne _02016A9E
	bl ErrorHandling
_02016A9E:
	ldr r0, _02016AF4 ; =0x021C4D28
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	bhs _02016AEE
	ldr r1, [r0, #0x0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r5]
	lsl r0, r0, #0x2
	ldr r6, [r1, r0]
	cmp r6, #0x0
	bne _02016AB8
	bl ErrorHandling
_02016AB8:
	sub r0, r4, #0x4
	ldr r0, [r0, #0x0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	beq _02016AC8
	bl ErrorHandling
_02016AC8:
	sub r4, #0x10
	add r0, r6, #0x0
	add r1, r4, #0x0
	blx FUN_020ADDF0
	ldr r0, _02016AF4 ; =0x021C4D28
	lsl r4, r5, #0x1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r4]
	cmp r0, #0x0
	bne _02016AE2
	bl ErrorHandling
_02016AE2:
	ldr r0, _02016AF4 ; =0x021C4D28
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r4]
	sub r0, r0, #0x1
	strh r0, [r1, r4]
	pop {r4-r6, pc}
_02016AEE:
	bl ErrorHandling
	pop {r4-r6, pc}
	.balign 4
_02016AF4: .word 0x021C4D28

	thumb_func_start FUN_02016AF8
FUN_02016AF8: ; 0x02016AF8
	push {r3, lr}
	ldr r1, _02016B1C ; =0x021C4D28
	ldrh r2, [r1, #0x14]
	cmp r0, r2
	bhs _02016B12
	ldr r2, [r1, #0x0]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, r0]
	lsl r0, r0, #0x2
	ldr r0, [r2, r0]
	blx FUN_020ADDC8
	pop {r3, pc}
_02016B12:
	bl ErrorHandling
	mov r0, #0x0
	pop {r3, pc}
	nop
_02016B1C: .word 0x021C4D28

	thumb_func_start FUN_02016B20
FUN_02016B20: ; 0x02016B20
	push {r4, lr}
	ldr r4, _02016B40 ; =0x021C4D28
	ldrh r3, [r4, #0x14]
	cmp r1, r3
	bhs _02016B3A
	ldr r3, [r4, #0x0]
	ldr r4, [r4, #0x10]
	ldrb r1, [r4, r1]
	lsl r1, r1, #0x2
	ldr r1, [r3, r1]
	blx FUN_020AE82C
	pop {r4, pc}
_02016B3A:
	bl ErrorHandling
	pop {r4, pc}
	.balign 4
_02016B40: .word 0x021C4D28

	thumb_func_start FUN_02016B44
FUN_02016B44: ; 0x02016B44
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	blx OS_GetProcMode
	cmp r0, #0x12
	bne _02016B56
	bl ErrorHandling
_02016B56:
	add r0, r5, #0x0
	sub r0, #0x10
	blx FUN_020ADDC0
	add r4, #0x10
	cmp r0, r4
	blo _02016B84
	sub r2, r5, #0x4
	ldr r0, _02016B8C ; =0x021C4D28
	ldr r2, [r2, #0x0]
	ldr r1, [r0, #0x0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	lsr r2, r2, #0x18
	ldrb r0, [r0, r2]
	sub r5, #0x10
	add r2, r4, #0x0
	lsl r0, r0, #0x2
	ldr r0, [r1, r0]
	add r1, r5, #0x0
	blx FUN_020ADE2C
	pop {r3-r5, pc}
_02016B84:
	bl ErrorHandling
	pop {r3-r5, pc}
	nop
_02016B8C: .word 0x021C4D28

	thumb_func_start FUN_02016B90
FUN_02016B90: ; 0x02016B90
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_02016B94
FUN_02016B94: ; 0x02016B94
	push {r3-r5, lr}
	mov r1, #0x5a
	lsl r1, r1, #0x2
	add r5, r0, #0x0
	bl FUN_02016998
	mov r2, #0x5a
	mov r1, #0x0
	lsl r2, r2, #0x2
	add r4, r0, #0x0
	blx Call_FillMemWithValue
	str r5, [r4, #0x0]
	mov r0, #0x0
	strh r0, [r4, #0x4]
	strh r0, [r4, #0x6]
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_02016BB8
FUN_02016BB8: ; 0x02016BB8
	ldr r0, [r0, #0x0]
	bx lr

	thumb_func_start FUN_02016BBC
FUN_02016BBC: ; 0x02016BBC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x4]
	ldr r2, [r4, #0xc]
	blx FUN_020C59C0
	ldr r0, [r4, #0x8]
	blx FUN_020C59A4
	mov r2, #0x1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0x0]
	ldr r0, _02016BF0 ; =0xC7FFFFFF
	and r1, r0
	str r1, [r2, #0x0]
	ldr r1, [r2, #0x0]
	asr r0, r0, #0x3
	and r0, r1
	str r0, [r2, #0x0]
	bl FUN_0201E6D8
	bl FUN_0201E740
	pop {r4, pc}
	nop
_02016BF0: .word 0xC7FFFFFF

	thumb_func_start FUN_02016BF4
FUN_02016BF4: ; 0x02016BF4
	push {r3, lr}
	add r2, r0, #0x0
	cmp r1, #0x0
	bne _02016C0C
	ldr r0, [r2, #0x0]
	ldr r1, [r2, #0x4]
	ldr r2, [r2, #0xc]
	blx FUN_020C59C0
	bl FUN_0201E6D8
	pop {r3, pc}
_02016C0C:
	ldr r0, [r2, #0x8]
	blx FUN_020C59A4
	bl FUN_0201E740
	pop {r3, pc}

	thumb_func_start FUN_02016C18
FUN_02016C18: ; 0x02016C18
	push {r3-r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x4]
	str r3, [sp, #0x8]
	add r4, r2, #0x0
	str r0, [sp, #0x0]
	ldrb r0, [r4, #0x10]
	ldr r1, [sp, #0x8]
	bl FUN_020177DC
	add r5, r0, #0x0
	ldr r0, [sp, #0x4]
	cmp r0, #0x7
	bls _02016C36
	b _0201705A
_02016C36:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02016C42: ; jump table (using 16-bit offset)
	.short _02016C52 - _02016C42 - 2; case 0
	.short _02016CAA - _02016C42 - 2; case 1
	.short _02016D02 - _02016C42 - 2; case 2
	.short _02016DA4 - _02016C42 - 2; case 3
	.short _02016E46 - _02016C42 - 2; case 4
	.short _02016E9E - _02016C42 - 2; case 5
	.short _02016EF6 - _02016C42 - 2; case 6
	.short _02016F98 - _02016C42 - 2; case 7
_02016C52:
	mov r0, #0x1
	add r1, r0, #0x0
	bl FUN_0201E6E4
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #0x7
	lsl r3, r2, #0x2
	str r0, [sp, #0xc]
	ldr r2, _02016FB4 ; =0x04000008
	lsl r7, r1, #0x8
	ldrh r1, [r2, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0xc]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2, #0x0]
	ldrh r1, [r2, #0x0]
	mov r0, #0x3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2, #0x0]
	ldr r0, [r4, #0x18]
	cmp r0, #0x0
	beq _02016CA0
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2, #0x0]
	b _0201705A
_02016CA0:
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2, #0x0]
	b _0201705A
_02016CAA:
	mov r0, #0x2
	mov r1, #0x1
	bl FUN_0201E6E4
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #0x7
	lsl r3, r2, #0x2
	str r0, [sp, #0x10]
	ldr r2, _02016FB8 ; =0x0400000A
	lsl r7, r1, #0x8
	ldrh r1, [r2, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x10]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2, #0x0]
	ldrh r1, [r2, #0x0]
	mov r0, #0x3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2, #0x0]
	ldr r0, [r4, #0x18]
	cmp r0, #0x0
	beq _02016CF8
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2, #0x0]
	b _0201705A
_02016CF8:
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2, #0x0]
	b _0201705A
_02016D02:
	mov r0, #0x4
	mov r1, #0x1
	bl FUN_0201E6E4
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	beq _02016D18
	cmp r0, #0x1
	beq _02016D3A
	cmp r0, #0x2
	beq _02016D5C
_02016D18:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FBC ; =0x0400000C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #0x8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #0x2
	ldrh r1, [r7, #0x0]
	lsl r2, r0, #0x7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016D7C
_02016D3A:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #0x2
	ldr r7, _02016FBC ; =0x0400000C
	lsl r2, r1, #0x8
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016D7C
_02016D5C:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FBC ; =0x0400000C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #0x8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	lsl r2, r2, #0x2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
_02016D7C:
	ldr r0, _02016FBC ; =0x0400000C
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0, #0x0]
	ldr r1, [r4, #0x18]
	cmp r1, #0x0
	beq _02016D9A
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0201705A
_02016D9A:
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0, #0x0]
	b _0201705A
_02016DA4:
	mov r0, #0x8
	mov r1, #0x1
	bl FUN_0201E6E4
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	beq _02016DBA
	cmp r0, #0x1
	beq _02016DDC
	cmp r0, #0x2
	beq _02016DFE
_02016DBA:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FC0 ; =0x0400000E
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #0x8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #0x2
	ldrh r1, [r7, #0x0]
	lsl r2, r0, #0x7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016E1E
_02016DDC:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #0x2
	ldr r7, _02016FC0 ; =0x0400000E
	lsl r2, r1, #0x8
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016E1E
_02016DFE:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FC0 ; =0x0400000E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #0x8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	lsl r2, r2, #0x2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
_02016E1E:
	ldr r0, _02016FC0 ; =0x0400000E
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0, #0x0]
	ldr r1, [r4, #0x18]
	cmp r1, #0x0
	beq _02016E3C
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0201705A
_02016E3C:
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0, #0x0]
	b _0201705A
_02016E46:
	mov r0, #0x1
	add r1, r0, #0x0
	bl FUN_0201E74C
	ldrb r3, [r4, #0x14]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	ldrb r2, [r4, #0x13]
	lsl r6, r3, #0xd
	lsl r0, r0, #0x7
	lsl r3, r2, #0x2
	str r0, [sp, #0x14]
	ldr r2, _02016FC4 ; =0x04001008
	lsl r7, r1, #0x8
	ldrh r1, [r2, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r1, r0
	ldr r0, [sp, #0x14]
	orr r0, r1
	orr r0, r7
	orr r0, r3
	orr r0, r6
	strh r0, [r2, #0x0]
	ldrh r1, [r2, #0x0]
	mov r0, #0x3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2, #0x0]
	ldr r0, [r4, #0x18]
	cmp r0, #0x0
	beq _02016E94
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2, #0x0]
	b _0201705A
_02016E94:
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2, #0x0]
	b _0201705A
_02016E9E:
	mov r0, #0x2
	mov r1, #0x1
	bl FUN_0201E74C
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #0x2
	ldrb r3, [r4, #0x14]
	lsl r0, r0, #0x7
	mov r12, r0
	ldr r2, _02016FC8 ; =0x0400100A
	lsl r7, r1, #0x8
	ldrh r1, [r2, #0x0]
	mov r0, #0x43
	lsl r3, r3, #0xd
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	mov r1, r12
	orr r0, r1
	orr r0, r7
	orr r0, r6
	orr r0, r3
	strh r0, [r2, #0x0]
	ldrh r1, [r2, #0x0]
	mov r0, #0x3
	bic r1, r0
	ldrb r0, [r4, #0x15]
	orr r0, r1
	strh r0, [r2, #0x0]
	ldr r0, [r4, #0x18]
	cmp r0, #0x0
	beq _02016EEC
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	orr r0, r1
	strh r0, [r2, #0x0]
	b _0201705A
_02016EEC:
	ldrh r1, [r2, #0x0]
	mov r0, #0x40
	bic r1, r0
	strh r1, [r2, #0x0]
	b _0201705A
_02016EF6:
	mov r0, #0x4
	mov r1, #0x1
	bl FUN_0201E74C
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	beq _02016F0C
	cmp r0, #0x1
	beq _02016F2E
	cmp r0, #0x2
	beq _02016F50
_02016F0C:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FCC ; =0x0400100C
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #0x8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #0x2
	ldrh r1, [r7, #0x0]
	lsl r2, r0, #0x7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016F70
_02016F2E:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #0x2
	ldr r7, _02016FCC ; =0x0400100C
	lsl r2, r1, #0x8
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02016F70
_02016F50:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FCC ; =0x0400100C
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #0x8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	lsl r2, r2, #0x2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
_02016F70:
	ldr r0, _02016FCC ; =0x0400100C
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0, #0x0]
	ldr r1, [r4, #0x18]
	cmp r1, #0x0
	beq _02016F8E
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0201705A
_02016F8E:
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0, #0x0]
	b _0201705A
_02016F98:
	mov r0, #0x8
	mov r1, #0x1
	bl FUN_0201E74C
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	beq _02016FAE
	cmp r0, #0x1
	beq _02016FF2
	cmp r0, #0x2
	beq _02017014
_02016FAE:
	ldrb r1, [r4, #0x12]
	ldr r7, _02016FD0 ; =0x0400100E
	b _02016FD4
	.balign 4
_02016FB4: .word 0x04000008
_02016FB8: .word 0x0400000A
_02016FBC: .word 0x0400000C
_02016FC0: .word 0x0400000E
_02016FC4: .word 0x04001008
_02016FC8: .word 0x0400100A
_02016FCC: .word 0x0400100C
_02016FD0: .word 0x0400100E
_02016FD4:
	ldrb r2, [r4, #0x13]
	lsl r3, r1, #0x8
	ldrb r0, [r4, #0x11]
	lsl r6, r2, #0x2
	ldrh r1, [r7, #0x0]
	lsl r2, r0, #0x7
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02017034
_02016FF2:
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x12]
	ldrb r0, [r4, #0x16]
	lsl r3, r2, #0x2
	ldr r7, _020170F0 ; =0x0400100E
	lsl r2, r1, #0x8
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
	b _02017034
_02017014:
	ldrb r1, [r4, #0x12]
	ldr r7, _020170F0 ; =0x0400100E
	ldrb r0, [r4, #0x16]
	lsl r3, r1, #0x8
	ldrb r2, [r4, #0x13]
	lsl r6, r0, #0xd
	ldrh r1, [r7, #0x0]
	mov r0, #0x43
	lsl r2, r2, #0x2
	and r0, r1
	lsl r1, r5, #0xe
	orr r0, r1
	orr r0, r2
	orr r0, r3
	orr r0, r6
	strh r0, [r7, #0x0]
_02017034:
	ldr r0, _020170F0 ; =0x0400100E
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	ldrb r1, [r4, #0x15]
	orr r1, r2
	strh r1, [r0, #0x0]
	ldr r1, [r4, #0x18]
	cmp r1, #0x0
	beq _02017052
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	orr r1, r2
	strh r1, [r0, #0x0]
	b _0201705A
_02017052:
	ldrh r2, [r0, #0x0]
	mov r1, #0x40
	bic r2, r1
	strh r2, [r0, #0x0]
_0201705A:
	ldr r0, [sp, #0x4]
	mov r1, #0x2c
	add r5, r0, #0x0
	ldr r0, [sp, #0x0]
	mul r5, r1
	add r2, r0, r5
	mov r3, #0x0
	mov r0, #0x1
	strh r3, [r2, #0x20]
	lsl r0, r0, #0xc
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	str r3, [r2, #0x30]
	ldr r1, [r4, #0x8]
	cmp r1, #0x0
	beq _020170A2
	ldr r0, [sp, #0x0]
	ldr r6, [sp, #0x0]
	ldr r0, [r0, #0x0]
	add r6, #0x8
	bl FUN_02016998
	str r0, [r6, r5]
	ldr r1, [r6, r5]
	ldr r2, [r4, #0x8]
	mov r0, #0x0
	blx MIi_CpuClear16
	ldr r0, [sp, #0x0]
	ldr r2, [r4, #0x8]
	add r1, r0, r5
	str r2, [r1, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0x10]
	b _020170A8
_020170A2:
	str r3, [r2, #0x8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
_020170A8:
	ldr r0, [sp, #0x0]
	ldrb r1, [r4, #0x10]
	add r0, r0, r5
	strb r1, [r0, #0x1d]
	ldr r1, [sp, #0x8]
	strb r1, [r0, #0x1c]
	ldrb r1, [r4, #0x11]
	strb r1, [r0, #0x1e]
	ldr r1, [sp, #0x8]
	cmp r1, #0x0
	bne _020170CA
	ldrb r1, [r4, #0x11]
	cmp r1, #0x0
	bne _020170CA
	mov r1, #0x20
	strb r1, [r0, #0x1f]
	b _020170D2
_020170CA:
	ldr r0, [sp, #0x0]
	mov r1, #0x40
	add r0, r0, r5
	strb r1, [r0, #0x1f]
_020170D2:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r3, [r4, #0x0]
	mov r2, #0x0
	bl FUN_020179E0
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r3, [r4, #0x4]
	mov r2, #0x3
	bl FUN_020179E0
	add sp, #0x18
	pop {r3-r7, pc}
	nop
_020170F0: .word 0x0400100E

	thumb_func_start FUN_020170F4
FUN_020170F4: ; 0x020170F4
	push {r3-r7, lr}
	sub sp, #0x20
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r1, r2, #0x0
	add r0, r3, #0x0
	cmp r1, #0x0
	bne _0201710C
	mov r2, #0x2c
	mul r2, r4
	add r2, r5, r2
	strb r0, [r2, #0x1e]
_0201710C:
	cmp r4, #0x7
	bls _02017112
	b _020177C4
_02017112:
	add r2, r4, r4
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201711E: ; jump table (using 16-bit offset)
	.short _0201712E - _0201711E - 2; case 0
	.short _0201719A - _0201711E - 2; case 1
	.short _02017206 - _0201711E - 2; case 2
	.short _0201733A - _0201711E - 2; case 3
	.short _0201746E - _0201711E - 2; case 4
	.short _020174F4 - _0201711E - 2; case 5
	.short _02017560 - _0201711E - 2; case 6
	.short _02017694 - _0201711E - 2; case 7
_0201712E:
	ldr r2, _02017480 ; =0x04000008
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x1e]
	bne _0201714A
	ldrh r3, [r2, #0x1e]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1e]
	b _0201715C
_0201714A:
	cmp r1, #0x2
	bne _0201715C
	ldrh r3, [r2, #0x1e]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1e]
_0201715C:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x1e]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #0x2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #0x8
	lsl r4, r6, #0xd
	lsl r1, r0, #0x7
	ldr r0, _02017480 ; =0x04000008
	mov r6, #0x43
	ldrh r7, [r0, #0x0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0, #0x0]
	pop {r3-r7, pc}
_0201719A:
	ldr r2, _02017488 ; =0x0400000A
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x1c]
	bne _020171B6
	ldrh r3, [r2, #0x1c]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x1c]
	b _020171C8
_020171B6:
	cmp r1, #0x2
	bne _020171C8
	ldrh r3, [r2, #0x1c]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x1c]
_020171C8:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x1c]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #0x2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #0x8
	lsl r4, r6, #0xd
	lsl r1, r0, #0x7
	ldr r0, _02017488 ; =0x0400000A
	mov r6, #0x43
	ldrh r7, [r0, #0x0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0, #0x0]
	pop {r3-r7, pc}
_02017206:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0x0
	beq _0201721A
	cmp r3, #0x1
	beq _0201727A
	cmp r3, #0x2
	beq _020172DA
_0201721A:
	ldr r3, _0201748C ; =0x0400000C
	cmp r1, #0x1
	ldrh r4, [r3, #0x0]
	add r3, sp, #0x0
	strh r4, [r3, #0x1a]
	bne _02017236
	ldrh r4, [r3, #0x1a]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x1a]
	b _02017248
_02017236:
	cmp r1, #0x2
	bne _02017248
	ldrh r4, [r3, #0x1a]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x1a]
_02017248:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x1a]
	add r2, r5, r2
	ldr r6, _0201748C ; =0x0400000C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6, #0x0]
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x2
	lsl r1, r0, #0x8
	lsl r0, r4, #0x7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_0201727A:
	ldr r2, _0201748C ; =0x0400000C
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x18]
	bne _02017296
	ldrh r3, [r2, #0x18]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x18]
	b _020172A8
_02017296:
	cmp r1, #0x2
	bne _020172A8
	ldrh r3, [r2, #0x18]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x18]
_020172A8:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x18]
	ldr r6, _0201748C ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #0x2
	lsl r0, r4, #0x8
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_020172DA:
	ldr r2, _0201748C ; =0x0400000C
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x16]
	bne _020172F6
	ldrh r3, [r2, #0x16]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x16]
	b _02017308
_020172F6:
	cmp r1, #0x2
	bne _02017308
	ldrh r3, [r2, #0x16]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x16]
_02017308:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x16]
	ldr r6, _0201748C ; =0x0400000C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #0x8
	lsr r0, r0, #0x1d
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #0x2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_0201733A:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0x0
	beq _0201734E
	cmp r3, #0x1
	beq _020173AE
	cmp r3, #0x2
	beq _0201740E
_0201734E:
	ldr r3, _02017490 ; =0x0400000E
	cmp r1, #0x1
	ldrh r4, [r3, #0x0]
	add r3, sp, #0x0
	strh r4, [r3, #0x14]
	bne _0201736A
	ldrh r4, [r3, #0x14]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x14]
	b _0201737C
_0201736A:
	cmp r1, #0x2
	bne _0201737C
	ldrh r4, [r3, #0x14]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x14]
_0201737C:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x14]
	add r2, r5, r2
	ldr r6, _02017490 ; =0x0400000E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6, #0x0]
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x2
	lsl r1, r0, #0x8
	lsl r0, r4, #0x7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_020173AE:
	ldr r2, _02017490 ; =0x0400000E
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x12]
	bne _020173CA
	ldrh r3, [r2, #0x12]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x12]
	b _020173DC
_020173CA:
	cmp r1, #0x2
	bne _020173DC
	ldrh r3, [r2, #0x12]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x12]
_020173DC:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x12]
	ldr r6, _02017490 ; =0x0400000E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #0x2
	lsl r0, r4, #0x8
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_0201740E:
	ldr r2, _02017490 ; =0x0400000E
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x10]
	bne _0201742A
	ldrh r3, [r2, #0x10]
	ldr r1, _02017484 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x10]
	b _0201743C
_0201742A:
	cmp r1, #0x2
	bne _0201743C
	ldrh r3, [r2, #0x10]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x10]
_0201743C:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x10]
	ldr r6, _02017490 ; =0x0400000E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #0x8
	lsr r0, r0, #0x1d
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #0x2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_0201746E:
	ldr r2, _02017494 ; =0x04001008
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0xe]
	bne _020174A4
	ldrh r3, [r2, #0xe]
	ldr r1, _02017484 ; =0xFFFFE0FF
	b _02017498
	.balign 4
_02017480: .word 0x04000008
_02017484: .word 0xFFFFE0FF
_02017488: .word 0x0400000A
_0201748C: .word 0x0400000C
_02017490: .word 0x0400000E
_02017494: .word 0x04001008
_02017498:
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xe]
	b _020174B6
_020174A4:
	cmp r1, #0x2
	bne _020174B6
	ldrh r3, [r2, #0xe]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xe]
_020174B6:
	add r0, sp, #0x0
	ldrh r3, [r0, #0xe]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #0x2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #0x8
	lsl r4, r6, #0xd
	lsl r1, r0, #0x7
	ldr r0, _020177C8 ; =0x04001008
	mov r6, #0x43
	ldrh r7, [r0, #0x0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0, #0x0]
	pop {r3-r7, pc}
_020174F4:
	ldr r2, _020177CC ; =0x0400100A
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0xc]
	bne _02017510
	ldrh r3, [r2, #0xc]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0xc]
	b _02017522
_02017510:
	cmp r1, #0x2
	bne _02017522
	ldrh r3, [r2, #0xc]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0xc]
_02017522:
	add r0, sp, #0x0
	ldrh r3, [r0, #0xc]
	add sp, #0x20
	lsl r0, r3, #0x12
	lsr r6, r0, #0x1f
	lsl r0, r3, #0x1a
	lsr r2, r0, #0x1c
	lsl r0, r3, #0x13
	lsr r1, r0, #0x1b
	mov r0, #0x2c
	mul r0, r4
	add r0, r5, r0
	lsl r3, r3, #0x10
	lsr r5, r3, #0x1e
	lsl r3, r2, #0x2
	ldrb r0, [r0, #0x1e]
	lsl r2, r1, #0x8
	lsl r4, r6, #0xd
	lsl r1, r0, #0x7
	ldr r0, _020177CC ; =0x0400100A
	mov r6, #0x43
	ldrh r7, [r0, #0x0]
	lsl r5, r5, #0xe
	and r6, r7
	orr r5, r6
	orr r1, r5
	orr r1, r2
	orr r1, r3
	orr r1, r4
	strh r1, [r0, #0x0]
	pop {r3-r7, pc}
_02017560:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0x0
	beq _02017574
	cmp r3, #0x1
	beq _020175D4
	cmp r3, #0x2
	beq _02017634
_02017574:
	ldr r3, _020177D4 ; =0x0400100C
	cmp r1, #0x1
	ldrh r4, [r3, #0x0]
	add r3, sp, #0x0
	strh r4, [r3, #0xa]
	bne _02017590
	ldrh r4, [r3, #0xa]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0xa]
	b _020175A2
_02017590:
	cmp r1, #0x2
	bne _020175A2
	ldrh r4, [r3, #0xa]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0xa]
_020175A2:
	add r0, sp, #0x0
	ldrh r3, [r0, #0xa]
	add r2, r5, r2
	ldr r6, _020177D4 ; =0x0400100C
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6, #0x0]
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x2
	lsl r1, r0, #0x8
	lsl r0, r4, #0x7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_020175D4:
	ldr r2, _020177D4 ; =0x0400100C
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x8]
	bne _020175F0
	ldrh r3, [r2, #0x8]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x8]
	b _02017602
_020175F0:
	cmp r1, #0x2
	bne _02017602
	ldrh r3, [r2, #0x8]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x8]
_02017602:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x8]
	ldr r6, _020177D4 ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #0x2
	lsl r0, r4, #0x8
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_02017634:
	ldr r2, _020177D4 ; =0x0400100C
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x6]
	bne _02017650
	ldrh r3, [r2, #0x6]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x6]
	b _02017662
_02017650:
	cmp r1, #0x2
	bne _02017662
	ldrh r3, [r2, #0x6]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x6]
_02017662:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x6]
	ldr r6, _020177D4 ; =0x0400100C
	add sp, #0x20
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #0x8
	lsr r0, r0, #0x1d
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #0x2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_02017694:
	mov r2, #0x2c
	mul r2, r4
	add r3, r5, r2
	ldrb r3, [r3, #0x1c]
	cmp r3, #0x0
	beq _020176A8
	cmp r3, #0x1
	beq _02017708
	cmp r3, #0x2
	beq _02017768
_020176A8:
	ldr r3, _020177D8 ; =0x0400100E
	cmp r1, #0x1
	ldrh r4, [r3, #0x0]
	add r3, sp, #0x0
	strh r4, [r3, #0x4]
	bne _020176C4
	ldrh r4, [r3, #0x4]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r4
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r3, #0x4]
	b _020176D6
_020176C4:
	cmp r1, #0x2
	bne _020176D6
	ldrh r4, [r3, #0x4]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r4, r1
	lsr r0, r0, #0x1a
	orr r0, r4
	strh r0, [r3, #0x4]
_020176D6:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x4]
	add r2, r5, r2
	ldr r6, _020177D8 ; =0x0400100E
	lsl r0, r3, #0x1a
	ldrb r4, [r2, #0x1e]
	lsr r1, r0, #0x1c
	lsl r0, r3, #0x13
	lsl r2, r3, #0x10
	lsr r3, r2, #0x1e
	ldrh r5, [r6, #0x0]
	lsr r0, r0, #0x1b
	lsl r2, r1, #0x2
	lsl r1, r0, #0x8
	lsl r0, r4, #0x7
	mov r4, #0x43
	and r4, r5
	lsl r3, r3, #0xe
	orr r3, r4
	orr r0, r3
	orr r0, r1
	orr r0, r2
	add sp, #0x20
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_02017708:
	ldr r2, _020177D8 ; =0x0400100E
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x2]
	bne _02017724
	ldrh r3, [r2, #0x2]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x2]
	b _02017736
_02017724:
	cmp r1, #0x2
	bne _02017736
	ldrh r3, [r2, #0x2]
	mov r1, #0x3c
	lsl r0, r0, #0x1c
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x2]
_02017736:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x2]
	ldr r6, _020177D8 ; =0x0400100E
	add sp, #0x20
	lsl r1, r3, #0x13
	lsl r0, r3, #0x1a
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsr r0, r0, #0x1c
	lsl r1, r0, #0x2
	lsl r0, r4, #0x8
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
	pop {r3-r7, pc}
_02017768:
	ldr r2, _020177D8 ; =0x0400100E
	cmp r1, #0x1
	ldrh r3, [r2, #0x0]
	add r2, sp, #0x0
	strh r3, [r2, #0x0]
	bne _02017784
	ldrh r3, [r2, #0x0]
	ldr r1, _020177D0 ; =0xFFFFE0FF
	lsl r0, r0, #0x1b
	and r1, r3
	lsr r0, r0, #0x13
	orr r0, r1
	strh r0, [r2, #0x0]
	b _02017796
_02017784:
	cmp r1, #0x2
	bne _02017796
	ldrh r3, [r2, #0x0]
	mov r1, #0x38
	lsl r0, r0, #0x1d
	bic r3, r1
	lsr r0, r0, #0x1a
	orr r0, r3
	strh r0, [r2, #0x0]
_02017796:
	add r0, sp, #0x0
	ldrh r3, [r0, #0x0]
	ldr r6, _020177D8 ; =0x0400100E
	lsl r1, r3, #0x13
	lsr r4, r1, #0x1b
	lsl r1, r3, #0x12
	lsr r2, r1, #0x1f
	lsl r0, r3, #0x1a
	lsl r1, r3, #0x10
	lsr r3, r1, #0x1e
	lsl r1, r4, #0x8
	lsr r0, r0, #0x1d
	ldrh r5, [r6, #0x0]
	mov r4, #0x43
	lsl r3, r3, #0xe
	and r4, r5
	lsl r0, r0, #0x2
	orr r3, r4
	orr r0, r3
	lsl r2, r2, #0xd
	orr r0, r1
	orr r0, r2
	strh r0, [r6, #0x0]
_020177C4:
	add sp, #0x20
	pop {r3-r7, pc}
	.balign 4
_020177C8: .word 0x04001008
_020177CC: .word 0x0400100A
_020177D0: .word 0xFFFFE0FF
_020177D4: .word 0x0400100C
_020177D8: .word 0x0400100E

	thumb_func_start FUN_020177DC
FUN_020177DC: ; 0x020177DC
	cmp r1, #0x0
	beq _020177EA
	cmp r1, #0x1
	beq _0201780A
	cmp r1, #0x2
	beq _0201782A
	b _0201784A
_020177EA:
	cmp r0, #0x1
	bne _020177F2
	mov r0, #0x0
	bx lr
_020177F2:
	cmp r0, #0x2
	bne _020177FA
	mov r0, #0x2
	bx lr
_020177FA:
	cmp r0, #0x3
	bne _02017802
	mov r0, #0x1
	bx lr
_02017802:
	cmp r0, #0x4
	bne _0201784A
	mov r0, #0x3
	bx lr
_0201780A:
	cmp r0, #0x0
	bne _02017812
	mov r0, #0x0
	bx lr
_02017812:
	cmp r0, #0x1
	bne _0201781A
	mov r0, #0x1
	bx lr
_0201781A:
	cmp r0, #0x4
	bne _02017822
	mov r0, #0x2
	bx lr
_02017822:
	cmp r0, #0x5
	bne _0201784A
	mov r0, #0x3
	bx lr
_0201782A:
	cmp r0, #0x0
	bne _02017832
	mov r0, #0x0
	bx lr
_02017832:
	cmp r0, #0x1
	bne _0201783A
	mov r0, #0x1
	bx lr
_0201783A:
	cmp r0, #0x4
	bne _02017842
	mov r0, #0x2
	bx lr
_02017842:
	cmp r0, #0x5
	bne _0201784A
	mov r0, #0x3
	bx lr
_0201784A:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_02017850
FUN_02017850: ; 0x02017850
	cmp r0, #0x5
	bhi _0201789E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017860: ; jump table (using 16-bit offset)
	.short _0201786C - _02017860 - 2; case 0
	.short _02017874 - _02017860 - 2; case 1
	.short _0201787C - _02017860 - 2; case 2
	.short _02017886 - _02017860 - 2; case 3
	.short _02017890 - _02017860 - 2; case 4
	.short _02017898 - _02017860 - 2; case 5
_0201786C:
	mov r0, #0x10
	strb r0, [r1, #0x0]
	strb r0, [r2, #0x0]
	bx lr
_02017874:
	mov r0, #0x20
	strb r0, [r1, #0x0]
	strb r0, [r2, #0x0]
	bx lr
_0201787C:
	mov r0, #0x20
	strb r0, [r1, #0x0]
	mov r0, #0x40
	strb r0, [r2, #0x0]
	bx lr
_02017886:
	mov r0, #0x40
	strb r0, [r1, #0x0]
	mov r0, #0x20
	strb r0, [r2, #0x0]
	bx lr
_02017890:
	mov r0, #0x40
	strb r0, [r1, #0x0]
	strb r0, [r2, #0x0]
	bx lr
_02017898:
	mov r0, #0x80
	strb r0, [r1, #0x0]
	strb r0, [r2, #0x0]
_0201789E:
	bx lr

	thumb_func_start FUN_020178A0
FUN_020178A0: ; 0x020178A0
	push {r3-r5, lr}
	add r4, r0, #0x0
	mov r2, #0x2c
	add r5, r1, #0x0
	mul r5, r2
	add r4, #0x8
	ldr r0, [r4, r5]
	cmp r0, #0x0
	beq _020178BA
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, r5]
_020178BA:
	pop {r3-r5, pc}

	thumb_func_start FUN_020178BC
FUN_020178BC: ; 0x020178BC
	cmp r0, #0x7
	bhi _0201795A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020178CC: ; jump table (using 16-bit offset)
	.short _020178DC - _020178CC - 2; case 0
	.short _020178EC - _020178CC - 2; case 1
	.short _020178FC - _020178CC - 2; case 2
	.short _0201790C - _020178CC - 2; case 3
	.short _0201791C - _020178CC - 2; case 4
	.short _0201792C - _020178CC - 2; case 5
	.short _0201793C - _020178CC - 2; case 6
	.short _0201794C - _020178CC - 2; case 7
_020178DC:
	ldr r2, _0201795C ; =0x04000008
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_020178EC:
	ldr r2, _02017960 ; =0x0400000A
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_020178FC:
	ldr r2, _02017964 ; =0x0400000C
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201790C:
	ldr r2, _02017968 ; =0x0400000E
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201791C:
	ldr r2, _0201796C ; =0x04001008
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201792C:
	ldr r2, _02017970 ; =0x0400100A
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201793C:
	ldr r2, _02017974 ; =0x0400100C
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201794C:
	ldr r2, _02017978 ; =0x0400100E
	mov r0, #0x3
	ldrh r3, [r2, #0x0]
	bic r3, r0
	add r0, r3, #0x0
	orr r0, r1
	strh r0, [r2, #0x0]
_0201795A:
	bx lr
	.balign 4
_0201795C: .word 0x04000008
_02017960: .word 0x0400000A
_02017964: .word 0x0400000C
_02017968: .word 0x0400000E
_0201796C: .word 0x04001008
_02017970: .word 0x0400100A
_02017974: .word 0x0400100C
_02017978: .word 0x0400100E

	thumb_func_start FUN_0201797C
FUN_0201797C: ; 0x0201797C
	push {r3, lr}
	cmp r0, #0x7
	bhi _020179DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201798E: ; jump table (using 16-bit offset)
	.short _0201799E - _0201798E - 2; case 0
	.short _020179A6 - _0201798E - 2; case 1
	.short _020179AE - _0201798E - 2; case 2
	.short _020179B6 - _0201798E - 2; case 3
	.short _020179BE - _0201798E - 2; case 4
	.short _020179C6 - _0201798E - 2; case 5
	.short _020179CE - _0201798E - 2; case 6
	.short _020179D6 - _0201798E - 2; case 7
_0201799E:
	mov r0, #0x1
	bl FUN_0201E6E4
	pop {r3, pc}
_020179A6:
	mov r0, #0x2
	bl FUN_0201E6E4
	pop {r3, pc}
_020179AE:
	mov r0, #0x4
	bl FUN_0201E6E4
	pop {r3, pc}
_020179B6:
	mov r0, #0x8
	bl FUN_0201E6E4
	pop {r3, pc}
_020179BE:
	mov r0, #0x1
	bl FUN_0201E74C
	pop {r3, pc}
_020179C6:
	mov r0, #0x2
	bl FUN_0201E74C
	pop {r3, pc}
_020179CE:
	mov r0, #0x4
	bl FUN_0201E74C
	pop {r3, pc}
_020179D6:
	mov r0, #0x8
	bl FUN_0201E74C
_020179DC:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_020179E0
FUN_020179E0: ; 0x020179E0
	push {r4-r6, lr}
	add r5, r1, #0x0
	add r4, r0, #0x0
	mov r0, #0x2c
	add r6, r5, #0x0
	mul r6, r0
	add r0, r4, #0x0
	add r0, #0x8
	add r1, r2, #0x0
	add r2, r3, #0x0
	add r0, r0, r6
	bl FUN_02017B8C
	add r0, r4, r6
	ldr r1, [r0, #0x14]
	ldr r0, [r0, #0x18]
	cmp r5, #0x7
	bls _02017A06
	b _02017B1C
_02017A06:
	add r2, r5, r5
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02017A12: ; jump table (using 16-bit offset)
	.short _02017A22 - _02017A12 - 2; case 0
	.short _02017A38 - _02017A12 - 2; case 1
	.short _02017A4E - _02017A12 - 2; case 2
	.short _02017A78 - _02017A12 - 2; case 3
	.short _02017AA2 - _02017A12 - 2; case 4
	.short _02017AB8 - _02017A12 - 2; case 5
	.short _02017ACE - _02017A12 - 2; case 6
	.short _02017AF6 - _02017A12 - 2; case 7
_02017A22:
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B24 ; =0x04000010
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017A38:
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B28 ; =0x04000014
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017A4E:
	add r2, r4, #0x0
	add r2, #0x74
	ldrb r2, [r2, #0x0]
	cmp r2, #0x0
	bne _02017A6E
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B2C ; =0x04000018
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017A6E:
	add r0, r4, #0x0
	mov r1, #0x2
	bl FUN_02017C6C
	pop {r4-r6, pc}
_02017A78:
	add r2, r4, #0x0
	add r2, #0xa0
	ldrb r2, [r2, #0x0]
	cmp r2, #0x0
	bne _02017A98
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B30 ; =0x0400001C
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017A98:
	add r0, r4, #0x0
	mov r1, #0x3
	bl FUN_02017C6C
	pop {r4-r6, pc}
_02017AA2:
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B34 ; =0x04001010
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017AB8:
	ldr r2, _02017B20 ; =0x000001FF
	add r3, r1, #0x0
	lsl r1, r0, #0x10
	lsl r0, r2, #0x10
	and r3, r2
	and r0, r1
	add r1, r3, #0x0
	orr r1, r0
	ldr r0, _02017B38 ; =0x04001014
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017ACE:
	mov r2, #0x49
	lsl r2, r2, #0x2
	ldrb r3, [r4, r2]
	cmp r3, #0x0
	bne _02017AEC
	add r2, #0xdb
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _02017B3C ; =0x01FF0000
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _02017B40 ; =0x04001018
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017AEC:
	add r0, r4, #0x0
	mov r1, #0x6
	bl FUN_02017C6C
	pop {r4-r6, pc}
_02017AF6:
	mov r2, #0x15
	lsl r2, r2, #0x4
	ldrb r3, [r4, r2]
	cmp r3, #0x0
	bne _02017B14
	add r2, #0xaf
	and r2, r1
	lsl r1, r0, #0x10
	ldr r0, _02017B3C ; =0x01FF0000
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _02017B44 ; =0x0400101C
	str r1, [r0, #0x0]
	pop {r4-r6, pc}
_02017B14:
	add r0, r4, #0x0
	mov r1, #0x7
	bl FUN_02017C6C
_02017B1C:
	pop {r4-r6, pc}
	nop
_02017B20: .word 0x000001FF
_02017B24: .word 0x04000010
_02017B28: .word 0x04000014
_02017B2C: .word 0x04000018
_02017B30: .word 0x0400001C
_02017B34: .word 0x04001010
_02017B38: .word 0x04001014
_02017B3C: .word 0x01FF0000
_02017B40: .word 0x04001018
_02017B44: .word 0x0400101C

	thumb_func_start FUN_02017B48
FUN_02017B48: ; 0x02017B48
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	bx lr
	.balign 4

	thumb_func_start FUN_02017B54
FUN_02017B54: ; 0x02017B54
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x18]
	bx lr
	.balign 4

	thumb_func_start FUN_02017B60
FUN_02017B60: ; 0x02017B60
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	mov r0, #0x2c
	add r1, #0x8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0x0
	add r2, r3, #0x0
	bl FUN_02017B8C
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x0]
	ldr r3, [sp, #0x14]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02017BD0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02017B8C
FUN_02017B8C: ; 0x02017B8C
	cmp r1, #0x5
	bhi _02017BCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02017B9C: ; jump table (using 16-bit offset)
	.short _02017BA8 - _02017B9C - 2; case 0
	.short _02017BAC - _02017B9C - 2; case 1
	.short _02017BB4 - _02017B9C - 2; case 2
	.short _02017BBC - _02017B9C - 2; case 3
	.short _02017BC0 - _02017B9C - 2; case 4
	.short _02017BC8 - _02017B9C - 2; case 5
_02017BA8:
	str r2, [r0, #0xc]
	bx lr
_02017BAC:
	ldr r1, [r0, #0xc]
	add r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02017BB4:
	ldr r1, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0xc]
	bx lr
_02017BBC:
	str r2, [r0, #0x10]
	bx lr
_02017BC0:
	ldr r1, [r0, #0x10]
	add r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
_02017BC8:
	ldr r1, [r0, #0x10]
	sub r1, r1, r2
	str r1, [r0, #0x10]
_02017BCE:
	bx lr

	thumb_func_start FUN_02017BD0
FUN_02017BD0: ; 0x02017BD0
	push {r3-r5, lr}
	sub sp, #0x8
	add r4, r1, #0x0
	add r1, r2, #0x0
	add r2, r3, #0x0
	ldr r3, [sp, #0x18]
	cmp r4, #0x7
	bhi _02017C58
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #0x6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02017BEC: ; jump table (using 16-bit offset)
	.short _02017C58 - _02017BEC - 2; case 0
	.short _02017C58 - _02017BEC - 2; case 1
	.short _02017BFC - _02017BEC - 2; case 2
	.short _02017C14 - _02017BEC - 2; case 3
	.short _02017C58 - _02017BEC - 2; case 4
	.short _02017C58 - _02017BEC - 2; case 5
	.short _02017C2C - _02017BEC - 2; case 6
	.short _02017C44 - _02017BEC - 2; case 7
_02017BFC:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldr r0, _02017C5C ; =0x04000020
	blx FUN_020C74F8
	add sp, #0x8
	pop {r3-r5, pc}
_02017C14:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldr r0, _02017C60 ; =0x04000030
	blx FUN_020C74F8
	add sp, #0x8
	pop {r3-r5, pc}
_02017C2C:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldr r0, _02017C64 ; =0x04001020
	blx FUN_020C74F8
	add sp, #0x8
	pop {r3-r5, pc}
_02017C44:
	mov r5, #0x2c
	mul r5, r4
	add r4, r0, r5
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x4]
	ldr r0, _02017C68 ; =0x04001030
	blx FUN_020C74F8
_02017C58:
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4
_02017C5C: .word 0x04000020
_02017C60: .word 0x04000030
_02017C64: .word 0x04001020
_02017C68: .word 0x04001030

	thumb_func_start FUN_02017C6C
FUN_02017C6C: ; 0x02017C6C
	push {r4-r5, lr}
	sub sp, #0x14
	mov r2, #0x1
	lsl r2, r2, #0xc
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r1, #0x0
	add r0, sp, #0x4
	add r3, r2, #0x0
	str r1, [sp, #0x0]
	bl FUN_0201BB74
	mov r3, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r2, sp, #0x4
	str r3, [sp, #0x0]
	bl FUN_02017BD0
	add sp, #0x14
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_02017C98
FUN_02017C98: ; 0x02017C98
	push {r3-r5, lr}
	cmp r2, #0x0
	bne _02017CA4
	blx MI_UncompressLZ8
	pop {r3-r5, pc}
_02017CA4:
	mov r4, #0x3
	add r3, r0, #0x0
	tst r3, r4
	bne _02017CCA
	add r3, r1, #0x0
	tst r3, r4
	bne _02017CCA
	lsl r3, r2, #0x10
	lsr r3, r3, #0x10
	lsr r4, r3, #0x1f
	lsl r5, r3, #0x1e
	sub r5, r5, r4
	mov r3, #0x1e
	ror r5, r3
	add r3, r4, r5
	bne _02017CCA
	blx MIi_CpuCopy32
	pop {r3-r5, pc}
_02017CCA:
	blx MIi_CpuCopy16
	pop {r3-r5, pc}

	thumb_func_start FUN_02017CD0
FUN_02017CD0: ; 0x02017CD0
	push {r3, lr}
	mov r2, #0x2c
	mul r2, r1
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp, #0x0]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_02017CE8
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02017CE8
FUN_02017CE8: ; 0x02017CE8
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	str r3, [sp, #0x0]
	cmp r3, #0x0
	bne _02017D56
	mov r0, #0x2c
	add r7, r4, #0x0
	mul r7, r0
	add r0, r5, r7
	ldr r0, [r0, #0x8]
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02017D26
	ldr r1, [sp, #0x4]
	add r0, r6, #0x0
	add r2, r3, #0x0
	bl FUN_02017C98
	add r3, r5, r7
	ldr r2, [r3, #0x10]
	ldr r1, [sp, #0x4]
	ldr r3, [r3, #0xc]
	add r0, r4, #0x0
	lsl r2, r2, #0x1
	bl FUN_02017D68
	add sp, #0x8
	pop {r3-r7, pc}
_02017D26:
	ldr r0, [r6, #0x0]
	lsr r7, r0, #0x8
	ldr r0, [r5, #0x0]
	add r1, r7, #0x0
	bl FUN_020169D8
	add r5, r0, #0x0
	ldr r2, [sp, #0x0]
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_02017C98
	ldr r2, [sp, #0x20]
	add r0, r4, #0x0
	add r1, r5, #0x0
	lsl r2, r2, #0x1
	add r3, r7, #0x0
	bl FUN_02017D68
	add r0, r5, #0x0
	bl FUN_02016A18
	add sp, #0x8
	pop {r3-r7, pc}
_02017D56:
	ldr r2, [sp, #0x20]
	add r0, r4, #0x0
	add r1, r6, #0x0
	lsl r2, r2, #0x1
	bl FUN_02017D68
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02017D68
FUN_02017D68: ; 0x02017D68
	push {r3-r7, lr}
	add r4, r1, #0x0
	add r6, r3, #0x0
	add r7, r0, #0x0
	add r0, r4, #0x0
	add r1, r6, #0x0
	add r5, r2, #0x0
	blx DC_FlushRange
	cmp r7, #0x7
	bhi _02017DF8
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017D8A: ; jump table (using 16-bit offset)
	.short _02017D9A - _02017D8A - 2; case 0
	.short _02017DA6 - _02017D8A - 2; case 1
	.short _02017DB2 - _02017D8A - 2; case 2
	.short _02017DBE - _02017D8A - 2; case 3
	.short _02017DCA - _02017D8A - 2; case 4
	.short _02017DD6 - _02017D8A - 2; case 5
	.short _02017DE2 - _02017D8A - 2; case 6
	.short _02017DEE - _02017D8A - 2; case 7
_02017D9A:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C922C
	pop {r3-r7, pc}
_02017DA6:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C915C
	pop {r3-r7, pc}
_02017DB2:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C908C
	pop {r3-r7, pc}
_02017DBE:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8FBC
	pop {r3-r7, pc}
_02017DCA:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C91C4
	pop {r3-r7, pc}
_02017DD6:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C90F4
	pop {r3-r7, pc}
_02017DE2:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C9024
	pop {r3-r7, pc}
_02017DEE:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8F54
_02017DF8:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02017DFC
FUN_02017DFC: ; 0x02017DFC
	push {r4, lr}
	add r4, r0, #0x0
	add r0, r2, #0x0
	mov r2, #0x2c
	mul r2, r1
	add r1, r4, r2
	ldr r1, [r1, #0x8]
	add r2, r3, #0x0
	bl FUN_02017C98
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02017E14
FUN_02017E14: ; 0x02017E14
	push {r3-r4, lr}
	sub sp, #0x4
	mov r4, #0x2c
	mul r4, r1
	add r4, r0, r4
	ldrb r4, [r4, #0x1e]
	cmp r4, #0x0
	bne _02017E32
	ldr r4, [sp, #0x10]
	lsl r4, r4, #0x5
	str r4, [sp, #0x0]
	bl FUN_02017E40
	add sp, #0x4
	pop {r3-r4, pc}
_02017E32:
	ldr r4, [sp, #0x10]
	lsl r4, r4, #0x6
	str r4, [sp, #0x0]
	bl FUN_02017E40
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_02017E40
FUN_02017E40: ; 0x02017E40
	push {r3-r7, lr}
	add r7, r1, #0x0
	add r5, r2, #0x0
	str r3, [sp, #0x0]
	cmp r3, #0x0
	bne _02017E78
	ldr r1, [r5, #0x0]
	ldr r0, [r0, #0x0]
	lsr r4, r1, #0x8
	add r1, r4, #0x0
	bl FUN_020169D8
	add r6, r0, #0x0
	ldr r2, [sp, #0x0]
	add r0, r5, #0x0
	add r1, r6, #0x0
	bl FUN_02017C98
	ldr r2, [sp, #0x18]
	add r0, r7, #0x0
	add r1, r6, #0x0
	add r3, r4, #0x0
	bl FUN_02017E84
	add r0, r6, #0x0
	bl FUN_02016A18
	pop {r3-r7, pc}
_02017E78:
	ldr r2, [sp, #0x18]
	add r0, r7, #0x0
	add r1, r5, #0x0
	bl FUN_02017E84
	pop {r3-r7, pc}

	thumb_func_start FUN_02017E84
FUN_02017E84: ; 0x02017E84
	push {r3-r7, lr}
	add r4, r1, #0x0
	add r6, r3, #0x0
	add r7, r0, #0x0
	add r0, r4, #0x0
	add r1, r6, #0x0
	add r5, r2, #0x0
	blx DC_FlushRange
	cmp r7, #0x7
	bhi _02017F14
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02017EA6: ; jump table (using 16-bit offset)
	.short _02017EB6 - _02017EA6 - 2; case 0
	.short _02017EC2 - _02017EA6 - 2; case 1
	.short _02017ECE - _02017EA6 - 2; case 2
	.short _02017EDA - _02017EA6 - 2; case 3
	.short _02017EE6 - _02017EA6 - 2; case 4
	.short _02017EF2 - _02017EA6 - 2; case 5
	.short _02017EFE - _02017EA6 - 2; case 6
	.short _02017F0A - _02017EA6 - 2; case 7
_02017EB6:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8EEC
	pop {r3-r7, pc}
_02017EC2:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8E1C
	pop {r3-r7, pc}
_02017ECE:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8D4C
	pop {r3-r7, pc}
_02017EDA:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8C7C
	pop {r3-r7, pc}
_02017EE6:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8E84
	pop {r3-r7, pc}
_02017EF2:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8DB4
	pop {r3-r7, pc}
_02017EFE:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8CE4
	pop {r3-r7, pc}
_02017F0A:
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r6, #0x0
	blx FUN_020C8C14
_02017F14:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02017F18
FUN_02017F18: ; 0x02017F18
	push {r3-r7, lr}
	add r6, r0, #0x0
	add r5, r1, #0x0
	add r0, r3, #0x0
	add r7, r2, #0x0
	str r3, [sp, #0x0]
	bl FUN_020169D8
	add r4, r0, #0x0
	mov r1, #0x0
	add r2, r5, #0x0
	blx Call_FillMemWithValue
	add r0, r6, #0x0
	add r1, r4, #0x0
	add r2, r7, #0x0
	add r3, r5, #0x0
	bl FUN_02017E84
	ldr r0, [sp, #0x0]
	add r1, r4, #0x0
	bl FUN_02016A8C
	pop {r3-r7, pc}

	thumb_func_start FUN_02017F48
FUN_02017F48: ; 0x02017F48
	push {r3-r7, lr}
	sub sp, #0x8
	add r7, r1, #0x0
	add r4, r0, #0x0
	mov r1, #0x2c
	add r6, r7, #0x0
	add r4, #0x1f
	mul r6, r1
	ldrb r1, [r4, r6]
	ldr r0, [r0, #0x0]
	add r5, r2, #0x0
	mul r1, r3
	str r1, [sp, #0x0]
	bl FUN_020169D8
	str r0, [sp, #0x4]
	ldrb r0, [r4, r6]
	cmp r0, #0x20
	bne _02017F82
	lsl r2, r5, #0xc
	lsl r1, r5, #0x8
	lsl r0, r5, #0x4
	orr r1, r2
	orr r0, r1
	add r1, r5, #0x0
	orr r1, r0
	lsl r0, r1, #0x10
	add r5, r1, #0x0
	b _02017F8C
_02017F82:
	lsl r2, r5, #0x18
	lsl r1, r5, #0x10
	lsl r0, r5, #0x8
	orr r1, r2
	orr r0, r1
_02017F8C:
	orr r5, r0
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x0]
	add r0, r5, #0x0
	blx MIi_CpuClearFast
	lsl r0, r7, #0x18
	ldrb r2, [r4, r6]
	ldr r3, [sp, #0x20]
	ldr r1, [sp, #0x4]
	mul r2, r3
	ldr r3, [sp, #0x0]
	lsr r0, r0, #0x18
	bl FUN_02017E84
	ldr r0, [sp, #0x4]
	bl FUN_02016A18
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02017FB4
FUN_02017FB4: ; 0x02017FB4
	push {r3-r7, lr}
	add r5, r1, #0x0
	add r4, r2, #0x0
	add r6, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r7, r3, #0x0
	blx DC_FlushRange
	cmp r6, #0x4
	bhs _02017FD6
	add r0, r5, #0x0
	add r1, r7, #0x0
	add r2, r4, #0x0
	blx FUN_020C9550
	pop {r3-r7, pc}
_02017FD6:
	add r0, r5, #0x0
	add r1, r7, #0x0
	add r2, r4, #0x0
	blx FUN_020C94E8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_02017FE4
FUN_02017FE4: ; 0x02017FE4
	push {r0-r3}
	push {r3, lr}
	add r1, sp, #0xc
	mov r2, #0x2
	mov r3, #0x0
	bl FUN_02017FB4
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4

	thumb_func_start FUN_02017FFC
FUN_02017FFC: ; 0x02017FFC
	cmp r2, #0x5
	bhi _02018066
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0201800C: ; jump table (using 16-bit offset)
	.short _02018018 - _0201800C - 2; case 0
	.short _02018022 - _0201800C - 2; case 1
	.short _02018022 - _0201800C - 2; case 2
	.short _0201802C - _0201800C - 2; case 3
	.short _02018042 - _0201800C - 2; case 4
	.short _02018064 - _0201800C - 2; case 5
_02018018:
	lsl r1, r1, #0x4
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02018022:
	lsl r1, r1, #0x5
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_0201802C:
	mov r2, #0x1f
	add r3, r0, #0x0
	and r3, r2
	mov r2, #0x1f
	bic r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x5
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02018042:
	asr r2, r1, #0x5
	asr r3, r0, #0x5
	lsl r2, r2, #0x1
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r2, r2, #0x1a
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r0, r0, #0x16
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02018064:
	mov r0, #0x0
_02018066:
	bx lr

	thumb_func_start FUN_02018068
FUN_02018068: ; 0x02018068
	push {r3-r7}
	sub sp, #0x4
	str r3, [sp, #0x0]
	add r6, r2, #0x0
	ldr r5, [sp, #0x0]
	add r4, r6, #0x0
	sub r4, #0x20
	sub r5, #0x20
	mov r2, #0x0
	lsl r4, r4, #0x10
	lsl r5, r5, #0x10
	add r3, r2, #0x0
	asr r4, r4, #0x10
	asr r7, r5, #0x10
	lsr r5, r0, #0x5
	beq _0201808E
	add r2, r2, #0x1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0201808E:
	lsr r5, r1, #0x5
	beq _02018098
	add r2, r2, #0x2
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_02018098:
	cmp r2, #0x3
	bhi _02018140
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020180A8: ; jump table (using 16-bit offset)
	.short _020180B0 - _020180A8 - 2; case 0
	.short _020180CE - _020180A8 - 2; case 1
	.short _020180F4 - _020180A8 - 2; case 2
	.short _02018120 - _020180A8 - 2; case 3
_020180B0:
	cmp r4, #0x0
	blt _020180C0
	lsl r1, r1, #0x5
	add r0, r0, r1
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _02018140
_020180C0:
	add r2, r1, #0x0
	mul r2, r6
	add r0, r0, r2
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _02018140
_020180CE:
	cmp r7, #0x0
	blt _020180D8
	mov r2, #0x1
	lsl r2, r2, #0xa
	b _020180DC
_020180D8:
	ldr r2, [sp, #0x0]
	lsl r2, r2, #0x5
_020180DC:
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x1f
	and r2, r0
	add r0, r1, #0x0
	mul r0, r4
	add r0, r2, r0
	add r0, r3, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _02018140
_020180F4:
	lsl r2, r6, #0x5
	add r2, r3, r2
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r4, #0x0
	blt _0201810E
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x16
	add r0, r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _02018140
_0201810E:
	mov r3, #0x1f
	and r1, r3
	add r3, r1, #0x0
	mul r3, r6
	add r0, r0, r3
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	b _02018140
_02018120:
	add r2, r6, r7
	lsl r2, r2, #0x5
	add r2, r3, r2
	add r5, r0, #0x0
	mov r3, #0x1f
	add r0, r1, #0x0
	and r0, r3
	add r1, r0, #0x0
	lsl r2, r2, #0x10
	and r5, r3
	mul r1, r4
	lsr r2, r2, #0x10
	add r0, r5, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
_02018140:
	add r0, r3, #0x0
	add sp, #0x4
	pop {r3-r7}
	bx lr

	thumb_func_start FUN_02018148
FUN_02018148: ; 0x02018148
	push {r3-r6, lr}
	sub sp, #0x1c
	add r6, sp, #0x20
	ldrb r5, [r6, #0x14]
	str r5, [sp, #0x0]
	ldrb r4, [r6, #0x18]
	str r4, [sp, #0x4]
	str r2, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	add r2, r3, #0x0
	ldrb r3, [r6, #0x10]
	bl FUN_02018170
	add sp, #0x1c
	pop {r3-r6, pc}
	.balign 4

	thumb_func_start FUN_02018170
FUN_02018170: ; 0x02018170
	push {r4-r5, lr}
	sub sp, #0x1c
	add r4, r2, #0x0
	add r2, r3, #0x0
	mov r3, #0x2c
	add r5, r1, #0x0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #0x1
	beq _020181BA
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #0x8]
	add r1, sp, #0x38
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x14]
	mov r1, #0x0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0x0
	bl FUN_02018268
	add sp, #0x1c
	pop {r4-r5, pc}
_020181BA:
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #0x8]
	add r1, sp, #0x38
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x14]
	mov r1, #0x0
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0x0
	bl FUN_020183DC
	add sp, #0x1c
	pop {r4-r5, pc}

	thumb_func_start FUN_020181EC
FUN_020181EC: ; 0x020181EC
	push {r4-r5, lr}
	sub sp, #0x1c
	add r4, r2, #0x0
	add r2, r3, #0x0
	mov r3, #0x2c
	add r5, r1, #0x0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x18
	cmp r1, #0x1
	beq _02018236
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #0x8]
	add r1, sp, #0x38
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x14]
	mov r1, #0x1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0x0
	bl FUN_02018268
	add sp, #0x1c
	pop {r4-r5, pc}
_02018236:
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #0x8]
	add r1, sp, #0x38
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x10]
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	str r1, [sp, #0x14]
	mov r1, #0x1
	str r1, [sp, #0x18]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0x0
	bl FUN_020183DC
	add sp, #0x1c
	pop {r4-r5, pc}

	thumb_func_start FUN_02018268
FUN_02018268: ; 0x02018268
	push {r4-r7, lr}
	sub sp, #0x44
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	add r7, r0, #0x0
	ldr r0, [sp, #0x58]
	add r6, r3, #0x0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0x0]
	str r0, [sp, #0x2c]
	cmp r0, #0x0
	bne _0201828C
	b _020183D6
_0201828C:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #0x1
	add r2, sp, #0x40
	bl FUN_02017850
	add r0, sp, #0x70
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201833A
	mov r0, #0x0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0x0
	bls _020182CA
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x18]
	lsl r1, r0, #0x1
	ldr r0, [sp, #0x5c]
	add r0, r0, r1
	str r0, [sp, #0x14]
_020182BC:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	cmp r0, r1
	blt _020182CC
_020182CA:
	b _020183D6
_020182CC:
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _020183D6
	mov r5, #0x0
	cmp r6, #0x0
	bls _02018326
	add r1, r4, #0x0
	mul r1, r2
	lsl r2, r1, #0x1
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_020182F0:
	add r1, sp, #0x40
	ldr r0, [sp, #0x0]
	ldrb r1, [r1, #0x1]
	add r0, r0, r5
	cmp r0, r1
	bge _02018326
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02018326
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl FUN_02017FFC
	ldr r1, [sp, #0x10]
	lsl r2, r5, #0x1
	ldrh r1, [r1, r2]
	lsl r2, r0, #0x1
	ldr r0, [sp, #0x2c]
	strh r1, [r0, r2]
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _020182F0
_02018326:
	ldr r0, [sp, #0x28]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _020182BC
	add sp, #0x44
	pop {r4-r7, pc}
_0201833A:
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x58]
	cmp r0, #0x0
	bls _020183D6
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_0201834E:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0, #0x0]
	cmp r1, r0
	bge _020183D6
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _020183D6
	mov r5, #0x0
	cmp r6, #0x0
	bls _020183C6
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_0201837A:
	add r1, sp, #0x40
	ldr r0, [sp, #0x0]
	ldrb r1, [r1, #0x1]
	add r0, r0, r5
	cmp r0, r1
	bge _020183C6
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _020183C6
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl FUN_02017FFC
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0x0
	bl FUN_02018068
	lsl r1, r0, #0x1
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, r1]
	ldr r1, [sp, #0x38]
	lsl r2, r1, #0x1
	ldr r1, [sp, #0x2c]
	strh r0, [r1, r2]
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201837A
_020183C6:
	ldr r0, [sp, #0x8]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _0201834E
_020183D6:
	add sp, #0x44
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_020183DC
FUN_020183DC: ; 0x020183DC
	push {r4-r7, lr}
	sub sp, #0x44
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	add r7, r0, #0x0
	ldr r0, [sp, #0x58]
	add r6, r3, #0x0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x5c]
	ldr r4, [sp, #0x68]
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x6c]
	str r0, [sp, #0x6c]
	ldr r0, [r7, #0x0]
	str r0, [sp, #0x2c]
	cmp r0, #0x0
	bne _02018400
	b _0201853C
_02018400:
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x40
	add r1, #0x1
	add r2, sp, #0x40
	bl FUN_02017850
	add r0, sp, #0x70
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _020184A4
	mov r0, #0x0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r0, #0x0
	bhi _02018420
	b _0201853C
_02018420:
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x18]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x14]
_02018430:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	add r1, sp, #0x40
	ldrb r1, [r1, #0x0]
	cmp r0, r1
	bge _0201853C
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	add r2, r2, r1
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	bge _0201853C
	mov r5, #0x0
	cmp r6, #0x0
	bls _02018490
	ldr r1, [sp, #0x14]
	mul r2, r4
	lsl r0, r0, #0x18
	add r1, r1, r2
	lsr r0, r0, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x30]
_0201845E:
	add r1, sp, #0x40
	ldr r0, [sp, #0x0]
	ldrb r1, [r1, #0x1]
	add r0, r0, r5
	cmp r0, r1
	bge _02018490
	ldr r1, [sp, #0x18]
	add r1, r1, r5
	cmp r1, r4
	bge _02018490
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x30]
	lsr r0, r0, #0x18
	bl FUN_02017FFC
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r5]
	ldr r1, [sp, #0x2c]
	strb r2, [r1, r0]
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0201845E
_02018490:
	ldr r0, [sp, #0x28]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _02018430
	add sp, #0x44
	pop {r4-r7, pc}
_020184A4:
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x58]
	cmp r0, #0x0
	bls _0201853C
	add r1, sp, #0x48
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x24]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x20]
_020184B8:
	ldr r1, [sp, #0x4]
	ldr r0, [sp, #0x8]
	add r1, r1, r0
	add r0, sp, #0x40
	ldrb r0, [r0, #0x0]
	cmp r1, r0
	bge _0201853C
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x8]
	add r0, r2, r0
	ldr r2, [sp, #0x6c]
	cmp r0, r2
	bge _0201853C
	mov r5, #0x0
	cmp r6, #0x0
	bls _0201852C
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x34]
	str r0, [sp, #0x3c]
_020184E4:
	add r1, sp, #0x40
	ldr r0, [sp, #0x0]
	ldrb r1, [r1, #0x1]
	add r0, r0, r5
	cmp r0, r1
	bge _0201852C
	ldr r1, [sp, #0x20]
	add r1, r1, r5
	str r1, [sp, #0xc]
	cmp r1, r4
	bge _0201852C
	ldrb r2, [r7, #0x15]
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x34]
	lsr r0, r0, #0x18
	bl FUN_02017FFC
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x18
	ldr r3, [sp, #0x6c]
	lsr r0, r0, #0x18
	add r2, r4, #0x0
	bl FUN_02018068
	ldr r1, [sp, #0x5c]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	strb r2, [r1, r0]
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _020184E4
_0201852C:
	ldr r0, [sp, #0x8]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	str r1, [sp, #0x8]
	ldr r0, [sp, #0x58]
	cmp r1, r0
	blo _020184B8
_0201853C:
	add sp, #0x44
	pop {r4-r7, pc}

	thumb_func_start FUN_02018540
FUN_02018540: ; 0x02018540
	push {r4-r5, lr}
	sub sp, #0xc
	add r4, r2, #0x0
	add r2, r3, #0x0
	mov r3, #0x2c
	add r5, r1, #0x0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #0x1c]
	add r3, sp, #0x8
	cmp r1, #0x1
	beq _02018574
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #0x4]
	ldrb r1, [r3, #0x1c]
	str r1, [sp, #0x8]
	ldrb r3, [r3, #0x10]
	add r1, r4, #0x0
	bl FUN_02018590
	add sp, #0xc
	pop {r4-r5, pc}
_02018574:
	ldrb r1, [r3, #0x14]
	add r0, #0x8
	add r0, r0, r5
	str r1, [sp, #0x0]
	ldrb r1, [r3, #0x18]
	str r1, [sp, #0x4]
	lsl r1, r4, #0x18
	ldrb r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl FUN_02018640
	add sp, #0xc
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_02018590
FUN_02018590: ; 0x02018590
	push {r4-r7, lr}
	sub sp, #0x1c
	str r2, [sp, #0x4]
	str r3, [sp, #0x8]
	ldr r4, [r0, #0x0]
	add r7, r1, #0x0
	str r0, [sp, #0x0]
	ldr r6, [sp, #0x38]
	cmp r4, #0x0
	beq _0201863A
	ldrb r0, [r0, #0x15]
	add r1, sp, #0x18
	add r1, #0x1
	add r2, sp, #0x18
	bl FUN_02017850
	add r0, sp, #0x20
	ldrb r2, [r0, #0x14]
	ldr r1, [sp, #0x8]
	add r1, r1, r2
	ldr r2, [sp, #0x8]
	str r1, [sp, #0xc]
	cmp r2, r1
	bge _0201863A
	ldrb r2, [r0, #0x10]
	ldr r0, [sp, #0x4]
	lsl r1, r6, #0xc
	add r0, r0, r2
	add r1, r1, r7
	str r0, [sp, #0x10]
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x14]
_020185D2:
	add r0, sp, #0x18
	ldrb r1, [r0, #0x0]
	ldr r0, [sp, #0x8]
	cmp r0, r1
	bhs _0201863A
	ldr r5, [sp, #0x4]
	ldr r0, [sp, #0x10]
	add r1, r5, #0x0
	cmp r1, r0
	bge _0201862A
_020185E6:
	add r0, sp, #0x18
	ldrb r0, [r0, #0x1]
	cmp r5, r0
	bhs _0201862A
	ldr r2, [sp, #0x0]
	ldr r1, [sp, #0x8]
	ldrb r2, [r2, #0x15]
	add r0, r5, #0x0
	bl FUN_02017FFC
	cmp r6, #0x11
	bne _02018604
	lsl r0, r0, #0x1
	strh r7, [r4, r0]
	b _0201861E
_02018604:
	cmp r6, #0x10
	bne _02018618
	lsl r0, r0, #0x1
	ldrh r2, [r4, r0]
	mov r1, #0xf
	lsl r1, r1, #0xc
	and r1, r2
	add r1, r7, r1
	strh r1, [r4, r0]
	b _0201861E
_02018618:
	lsl r1, r0, #0x1
	ldr r0, [sp, #0x14]
	strh r0, [r4, r1]
_0201861E:
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r5, r0
	blt _020185E6
_0201862A:
	ldr r0, [sp, #0x8]
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x8]
	cmp r1, r0
	blt _020185D2
_0201863A:
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_02018640
FUN_02018640: ; 0x02018640
	push {r4-r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x0]
	add r7, r0, #0x0
	str r2, [sp, #0x4]
	ldr r0, [r7, #0x0]
	add r5, r3, #0x0
	str r0, [sp, #0xc]
	cmp r0, #0x0
	beq _020186B0
	ldrb r0, [r7, #0x15]
	add r1, sp, #0x10
	add r1, #0x1
	add r2, sp, #0x10
	bl FUN_02017850
	add r1, sp, #0x18
	ldrb r0, [r1, #0x14]
	add r0, r5, r0
	str r0, [sp, #0x8]
	cmp r5, r0
	bge _020186B0
	ldrb r1, [r1, #0x10]
	ldr r0, [sp, #0x4]
	add r6, r0, r1
_02018672:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x0]
	cmp r5, r0
	bhs _020186B0
	ldr r4, [sp, #0x4]
	add r0, r4, #0x0
	cmp r0, r6
	bge _020186A4
_02018682:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x1]
	cmp r4, r0
	bhs _020186A4
	ldrb r2, [r7, #0x15]
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_02017FFC
	ldr r2, [sp, #0x0]
	ldr r1, [sp, #0xc]
	strb r2, [r1, r0]
	add r0, r4, #0x1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, r6
	blt _02018682
_020186A4:
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	ldr r0, [sp, #0x8]
	cmp r5, r0
	blt _02018672
_020186B0:
	add sp, #0x14
	pop {r4-r7, pc}

	thumb_func_start FUN_020186B4
FUN_020186B4: ; 0x020186B4
	push {r4-r7, lr}
	sub sp, #0x14
	add r5, r0, #0x0
	mov r0, #0x2c
	add r7, r1, #0x0
	mul r7, r0
	str r2, [sp, #0x0]
	add r0, r5, r7
	ldr r4, [r0, #0x8]
	add r6, r3, #0x0
	cmp r4, #0x0
	beq _0201873C
	ldrb r0, [r0, #0x1d]
	add r1, sp, #0x10
	add r1, #0x1
	add r2, sp, #0x10
	bl FUN_02017850
	add r0, sp, #0x18
	ldrb r1, [r0, #0x14]
	add r1, r6, r1
	str r1, [sp, #0x4]
	cmp r6, r1
	bge _0201873C
	add r1, r5, r7
	str r1, [sp, #0xc]
	ldrb r1, [r0, #0x18]
	lsl r1, r1, #0xc
	str r1, [sp, #0x8]
	ldrb r1, [r0, #0x10]
	ldr r0, [sp, #0x0]
	add r7, r0, r1
_020186F4:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x0]
	cmp r6, r0
	bhs _0201873C
	ldr r5, [sp, #0x0]
	add r0, r5, #0x0
	cmp r0, r7
	bge _02018730
_02018704:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x1]
	cmp r5, r0
	bhs _02018730
	ldr r2, [sp, #0xc]
	add r0, r5, #0x0
	ldrb r2, [r2, #0x1d]
	add r1, r6, #0x0
	bl FUN_02017FFC
	lsl r0, r0, #0x1
	ldrh r2, [r4, r0]
	ldr r1, _02018740 ; =0x00000FFF
	and r2, r1
	ldr r1, [sp, #0x8]
	orr r1, r2
	strh r1, [r4, r0]
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r7
	blt _02018704
_02018730:
	add r0, r6, #0x1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [sp, #0x4]
	cmp r6, r0
	blt _020186F4
_0201873C:
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02018740: .word 0x00000FFF

	thumb_func_start FUN_02018744
FUN_02018744: ; 0x02018744
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r0, #0x2c
	mul r0, r4
	add r2, r5, r0
	ldr r1, [r2, #0x8]
	cmp r1, #0x0
	beq _02018766
	ldr r2, [r2, #0xc]
	mov r0, #0x0
	blx MIi_CpuClear16
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02017CD0
_02018766:
	pop {r3-r5, pc}

	thumb_func_start FUN_02018768
FUN_02018768: ; 0x02018768
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #0x8]
	cmp r1, #0x0
	beq _0201878A
	add r0, r2, #0x0
	ldr r2, [r3, #0xc]
	blx MIi_CpuClear16
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_02017CD0
_0201878A:
	pop {r3-r5, pc}

	thumb_func_start FUN_0201878C
FUN_0201878C: ; 0x0201878C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r0, #0x2c
	mul r0, r4
	add r3, r5, r0
	ldr r1, [r3, #0x8]
	cmp r1, #0x0
	beq _020187AE
	add r0, r2, #0x0
	ldr r2, [r3, #0xc]
	blx MIi_CpuClear16
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201AC68
_020187AE:
	pop {r3-r5, pc}

	thumb_func_start FUN_020187B0
FUN_020187B0: ; 0x020187B0
	push {r3, lr}
	cmp r0, #0x7
	bhi _02018802
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020187C2: ; jump table (using 16-bit offset)
	.short _020187D2 - _020187C2 - 2; case 0
	.short _020187D8 - _020187C2 - 2; case 1
	.short _020187DE - _020187C2 - 2; case 2
	.short _020187E4 - _020187C2 - 2; case 3
	.short _020187EA - _020187C2 - 2; case 4
	.short _020187F0 - _020187C2 - 2; case 5
	.short _020187F6 - _020187C2 - 2; case 6
	.short _020187FC - _020187C2 - 2; case 7
_020187D2:
	blx FUN_020C7124
	pop {r3, pc}
_020187D8:
	blx FUN_020C70D0
	pop {r3, pc}
_020187DE:
	blx FUN_020C7058
	pop {r3, pc}
_020187E4:
	blx FUN_020C6FB0
	pop {r3, pc}
_020187EA:
	blx FUN_020C7104
	pop {r3, pc}
_020187F0:
	blx FUN_020C70B0
	pop {r3, pc}
_020187F6:
	blx FUN_020C7010
	pop {r3, pc}
_020187FC:
	blx FUN_020C6F60
	pop {r3, pc}
_02018802:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02018808
FUN_02018808: ; 0x02018808
	push {r4-r7}
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x18
	mov r4, #0x0
	cmp r1, #0x0
	bls _02018842
	mov r5, #0xf
	add r6, r5, #0x0
_02018818:
	ldrb r7, [r0, r4]
	and r7, r6
	strb r7, [r2, #0x0]
	ldrb r7, [r2, #0x0]
	cmp r7, #0x0
	beq _02018828
	add r7, r7, r3
	strb r7, [r2, #0x0]
_02018828:
	ldrb r7, [r0, r4]
	asr r7, r7, #0x4
	and r7, r5
	strb r7, [r2, #0x1]
	ldrb r7, [r2, #0x1]
	cmp r7, #0x0
	beq _0201883A
	add r7, r7, r3
	strb r7, [r2, #0x1]
_0201883A:
	add r4, r4, #0x1
	add r2, r2, #0x2
	cmp r4, r1
	blo _02018818
_02018842:
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_02018848
FUN_02018848: ; 0x02018848
	push {r3-r7, lr}
	add r5, r1, #0x0
	add r6, r0, #0x0
	add r0, r3, #0x0
	lsl r1, r5, #0x1
	add r7, r2, #0x0
	bl FUN_02016998
	add r4, r0, #0x0
	add r0, r6, #0x0
	add r1, r5, #0x0
	add r2, r4, #0x0
	add r3, r7, #0x0
	bl FUN_02018808
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201886C
FUN_0201886C: ; 0x0201886C
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x8]
	bx lr
	.balign 4

	thumb_func_start FUN_02018878
FUN_02018878: ; 0x02018878
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrh r0, [r0, #0x20]
	bx lr
	.balign 4

	thumb_func_start FUN_02018884
FUN_02018884: ; 0x02018884
	sub sp, #0x20
	cmp r1, #0x7
	bls _0201888C
	b _02018A38
_0201888C:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #0x6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02018898: ; jump table (using 16-bit offset)
	.short _020188A8 - _02018898 - 2; case 0
	.short _020188BC - _02018898 - 2; case 1
	.short _020188D0 - _02018898 - 2; case 2
	.short _02018920 - _02018898 - 2; case 3
	.short _02018970 - _02018898 - 2; case 4
	.short _02018984 - _02018898 - 2; case 5
	.short _02018998 - _02018898 - 2; case 6
	.short _020189E8 - _02018898 - 2; case 7
_020188A8:
	ldr r0, _02018A40 ; =0x04000008
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x1e]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020188BC:
	ldr r0, _02018A44 ; =0x0400000A
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x1c]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020188D0:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x0
	beq _020188E4
	cmp r0, #0x1
	beq _020188F8
	cmp r0, #0x2
	beq _0201890C
_020188E4:
	ldr r0, _02018A48 ; =0x0400000C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x1a]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020188F8:
	ldr r0, _02018A48 ; =0x0400000C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x18]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201890C:
	ldr r0, _02018A48 ; =0x0400000C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x16]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018920:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x0
	beq _02018934
	cmp r0, #0x1
	beq _02018948
	cmp r0, #0x2
	beq _0201895C
_02018934:
	ldr r0, _02018A4C ; =0x0400000E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x14]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018948:
	ldr r0, _02018A4C ; =0x0400000E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x12]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_0201895C:
	ldr r0, _02018A4C ; =0x0400000E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x10]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018970:
	ldr r0, _02018A50 ; =0x04001008
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0xe]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018984:
	ldr r0, _02018A54 ; =0x0400100A
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0xc]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018998:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x0
	beq _020189AC
	cmp r0, #0x1
	beq _020189C0
	cmp r0, #0x2
	beq _020189D4
_020189AC:
	ldr r0, _02018A58 ; =0x0400100C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0xa]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020189C0:
	ldr r0, _02018A58 ; =0x0400100C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x8]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020189D4:
	ldr r0, _02018A58 ; =0x0400100C
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x6]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_020189E8:
	mov r2, #0x2c
	mul r2, r1
	add r0, r0, r2
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x0
	beq _020189FC
	cmp r0, #0x1
	beq _02018A10
	cmp r0, #0x2
	beq _02018A24
_020189FC:
	ldr r0, _02018A5C ; =0x0400100E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x4]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018A10:
	ldr r0, _02018A5C ; =0x0400100E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x2]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018A24:
	ldr r0, _02018A5C ; =0x0400100E
	ldrh r1, [r0, #0x0]
	add r0, sp, #0x0
	add sp, #0x20
	strh r1, [r0, #0x0]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
_02018A38:
	mov r0, #0x0
	add sp, #0x20
	bx lr
	nop
_02018A40: .word 0x04000008
_02018A44: .word 0x0400000A
_02018A48: .word 0x0400000C
_02018A4C: .word 0x0400000E
_02018A50: .word 0x04001008
_02018A54: .word 0x0400100A
_02018A58: .word 0x0400100C
_02018A5C: .word 0x0400100E

	thumb_func_start FUN_02018A60
FUN_02018A60: ; 0x02018A60
	push {r3-r7, lr}
	sub sp, #0x68
	str r2, [sp, #0x8]
	str r3, [sp, #0xc]
	add r2, sp, #0x70
	str r0, [sp, #0x0]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #0x4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0x0
	ldrh r1, [r0, #0x4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _02018A88
	ldr r0, [sp, #0x8]
	add r0, r0, r3
	str r0, [sp, #0x50]
	b _02018A8E
_02018A88:
	ldr r0, [sp, #0x8]
	add r0, r2, r0
	str r0, [sp, #0x50]
_02018A8E:
	ldr r2, [sp, #0x4]
	add r3, sp, #0x70
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #0x6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _02018AA6
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	str r2, [sp, #0x4c]
	b _02018AAC
_02018AA6:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [sp, #0x4c]
_02018AAC:
	ldr r2, [sp, #0x0]
	mov r3, #0x7
	ldrh r4, [r2, #0x4]
	add r2, r4, #0x0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #0x3
	str r2, [sp, #0x48]
	add r2, r1, #0x0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #0x3
	str r1, [sp, #0x44]
	add r1, sp, #0x70
	ldrh r1, [r1, #0x20]
	ldr r2, _02018C98 ; =0x0000FFFF
	str r1, [sp, #0x38]
	cmp r1, r2
	bne _02018BB4
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _02018ADE
	cmp r2, r1
	blt _02018AE0
_02018ADE:
	b _02018C92
_02018AE0:
	add r1, r2, #0x0
	lsl r1, r1, #0x2
	lsl r0, r0, #0x2
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_02018AEA:
	ldr r3, [sp, #0x8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0x0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _02018B96
	cmp r1, r0
	bge _02018B96
	add r0, r3, #0x0
	lsl r5, r0, #0x2
	add r0, r4, #0x0
	lsl r6, r0, #0x2
	ldr r0, _02018C9C ; =0x00003FE0
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x48]
	and r1, r0
	mul r2, r1
	str r2, [sp, #0x20]
	ldr r2, [sp, #0x28]
	mov r1, #0x1c
	and r2, r1
	str r2, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	and r0, r2
	ldr r2, [sp, #0x44]
	mul r2, r0
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x18]
	and r0, r1
	str r0, [sp, #0x14]
_02018B26:
	ldr r0, [sp, #0x4]
	asr r2, r4, #0x1
	mov r1, #0x3
	ldr r0, [r0, #0x0]
	and r1, r2
	add r1, r0, r1
	ldr r0, _02018C9C ; =0x00003FE0
	and r0, r6
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	add r6, r6, #0x4
	add r0, r1, r0
	str r0, [sp, #0x64]
	lsl r0, r4, #0x1f
	lsr r2, r0, #0x1d
	ldr r0, [sp, #0x0]
	asr r1, r3, #0x1
	ldr r7, [r0, #0x0]
	mov r0, #0x3
	and r0, r1
	ldr r1, _02018C9C ; =0x00003FE0
	add r4, r4, #0x1
	and r1, r5
	str r1, [sp, #0x54]
	add r1, r7, r0
	ldr r0, [sp, #0x54]
	add r5, r5, #0x4
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	ldrb r1, [r0, r1]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r1, r0
	mov r0, #0xf
	and r0, r1
	add r7, r0, #0x0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	lsl r7, r2
	ldrb r0, [r0, r1]
	add r3, r3, #0x1
	str r0, [sp, #0x58]
	mov r0, #0xf0
	asr r0, r2
	ldr r1, [sp, #0x58]
	add r2, r7, #0x0
	and r0, r1
	orr r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x64]
	strb r2, [r0, r1]
	ldr r0, [sp, #0x50]
	cmp r3, r0
	blt _02018B26
_02018B96:
	ldr r0, [sp, #0x28]
	add r0, r0, #0x4
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, r0, #0x4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _02018AEA
	add sp, #0x68
	pop {r3-r7, pc}
_02018BB4:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bge _02018C92
	cmp r2, r1
	bge _02018C92
	add r1, r2, #0x0
	lsl r1, r1, #0x2
	lsl r0, r0, #0x2
	str r1, [sp, #0x40]
	str r0, [sp, #0x3c]
_02018BCA:
	ldr r3, [sp, #0x8]
	ldr r0, [sp, #0x50]
	add r1, r3, #0x0
	ldr r4, [sp, #0x10]
	cmp r1, r0
	bge _02018C78
	cmp r1, r0
	bge _02018C78
	add r0, r3, #0x0
	lsl r1, r0, #0x2
	add r0, r4, #0x0
	lsl r2, r0, #0x2
	ldr r0, _02018C9C ; =0x00003FE0
	ldr r5, [sp, #0x40]
	ldr r6, [sp, #0x48]
	and r5, r0
	mul r6, r5
	str r6, [sp, #0x34]
	ldr r6, [sp, #0x40]
	mov r5, #0x1c
	and r6, r5
	str r6, [sp, #0x30]
	ldr r6, [sp, #0x3c]
	and r0, r6
	ldr r6, [sp, #0x44]
	mul r6, r0
	ldr r0, [sp, #0x3c]
	str r6, [sp, #0x2c]
	and r0, r5
	str r0, [sp, #0x60]
_02018C06:
	ldr r0, [sp, #0x4]
	asr r6, r4, #0x1
	mov r5, #0x3
	and r5, r6
	ldr r0, [r0, #0x0]
	asr r6, r3, #0x1
	add r5, r0, r5
	ldr r0, _02018C9C ; =0x00003FE0
	and r0, r2
	add r5, r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r5, r0
	ldr r0, [sp, #0x0]
	ldr r7, [r0, #0x0]
	mov r0, #0x3
	and r0, r6
	ldr r6, _02018C9C ; =0x00003FE0
	and r6, r1
	str r6, [sp, #0x5c]
	add r6, r7, r0
	ldr r0, [sp, #0x5c]
	add r6, r0, r6
	ldr r0, [sp, #0x34]
	add r6, r0, r6
	ldr r0, [sp, #0x30]
	ldrb r6, [r0, r6]
	lsl r0, r3, #0x1f
	lsr r0, r0, #0x1d
	asr r6, r0
	mov r0, #0xf
	and r0, r6
	ldr r6, [sp, #0x38]
	cmp r0, r6
	beq _02018C6A
	lsl r6, r4, #0x1f
	lsr r7, r6, #0x1d
	lsl r0, r7
	mov lr, r0
	ldr r0, [sp, #0x60]
	ldrb r0, [r5, r0]
	mov r12, r0
	mov r0, #0xf0
	add r6, r0, #0x0
	asr r6, r7
	mov r0, r12
	and r0, r6
	mov r6, lr
	orr r6, r0
	ldr r0, [sp, #0x60]
	strb r6, [r5, r0]
_02018C6A:
	ldr r0, [sp, #0x50]
	add r3, r3, #0x1
	add r1, r1, #0x4
	add r2, r2, #0x4
	add r4, r4, #0x1
	cmp r3, r0
	blt _02018C06
_02018C78:
	ldr r0, [sp, #0x40]
	add r0, r0, #0x4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	add r0, r0, #0x4
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	blt _02018BCA
_02018C92:
	add sp, #0x68
	pop {r3-r7, pc}
	nop
_02018C98: .word 0x0000FFFF
_02018C9C: .word 0x00003FE0

	thumb_func_start FUN_02018CA0
FUN_02018CA0: ; 0x02018CA0
	push {r3-r7, lr}
	sub sp, #0x50
	str r2, [sp, #0x8]
	str r3, [sp, #0xc]
	add r2, sp, #0x58
	str r0, [sp, #0x0]
	ldrh r0, [r2, #0x10]
	str r1, [sp, #0x4]
	ldrh r2, [r2, #0x18]
	str r0, [sp, #0x10]
	add r0, r1, #0x0
	ldrh r1, [r0, #0x4]
	ldr r0, [sp, #0x10]
	sub r3, r1, r0
	cmp r3, r2
	bge _02018CC6
	ldr r0, [sp, #0x8]
	add r0, r0, r3
	b _02018CCA
_02018CC6:
	ldr r0, [sp, #0x8]
	add r0, r2, r0
_02018CCA:
	ldr r2, [sp, #0x4]
	add r3, sp, #0x58
	mov r12, r0
	ldrh r0, [r3, #0x14]
	ldrh r2, [r2, #0x6]
	ldrh r3, [r3, #0x1c]
	sub r4, r2, r0
	cmp r4, r3
	bge _02018CE2
	ldr r2, [sp, #0xc]
	add r2, r2, r4
	b _02018CE6
_02018CE2:
	ldr r2, [sp, #0xc]
	add r2, r3, r2
_02018CE6:
	mov lr, r2
	ldr r2, [sp, #0x0]
	mov r3, #0x7
	ldrh r4, [r2, #0x4]
	add r2, r4, #0x0
	and r2, r3
	add r2, r4, r2
	asr r2, r2, #0x3
	str r2, [sp, #0x4c]
	add r2, r1, #0x0
	and r2, r3
	add r1, r1, r2
	asr r1, r1, #0x3
	str r1, [sp, #0x48]
	add r1, sp, #0x58
	ldrh r1, [r1, #0x20]
	ldr r2, _02018E80 ; =0x0000FFFF
	str r1, [sp, #0x3c]
	cmp r1, r2
	bne _02018DC6
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _02018D1C
	mov r1, lr
	cmp r2, r1
	blt _02018D1E
_02018D1C:
	b _02018E7C
_02018D1E:
	add r1, r2, #0x0
	lsl r1, r1, #0x3
	lsl r0, r0, #0x3
	str r1, [sp, #0x28]
	str r0, [sp, #0x24]
_02018D28:
	ldr r1, [sp, #0x8]
	mov r0, r12
	add r2, r1, #0x0
	ldr r7, [sp, #0x10]
	cmp r2, r0
	bge _02018DA8
	mov r0, r12
	cmp r2, r0
	bge _02018DA8
	add r0, r1, #0x0
	lsl r2, r0, #0x3
	add r0, r7, #0x0
	lsl r3, r0, #0x3
	ldr r6, _02018E84 ; =0x00007FC0
	ldr r0, [sp, #0x28]
	ldr r4, [sp, #0x4c]
	and r0, r6
	mul r4, r0
	str r4, [sp, #0x20]
	ldr r0, [sp, #0x28]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x48]
	and r0, r6
	mul r4, r0
	ldr r0, [sp, #0x24]
	str r4, [sp, #0x18]
	and r0, r5
	str r0, [sp, #0x14]
_02018D66:
	ldr r0, [sp, #0x0]
	add r5, r1, #0x0
	mov r4, #0x7
	and r5, r4
	ldr r0, [r0, #0x0]
	ldr r4, _02018E84 ; =0x00007FC0
	add r0, r0, r5
	and r4, r2
	add r4, r4, r0
	ldr r0, [sp, #0x20]
	add r5, r7, #0x0
	add r4, r0, r4
	ldr r0, [sp, #0x1c]
	add r1, r1, #0x1
	ldrb r6, [r0, r4]
	ldr r0, [sp, #0x4]
	mov r4, #0x7
	and r5, r4
	ldr r0, [r0, #0x0]
	ldr r4, _02018E84 ; =0x00007FC0
	add r0, r0, r5
	and r4, r3
	add r4, r4, r0
	ldr r0, [sp, #0x18]
	add r2, #0x8
	add r4, r0, r4
	ldr r0, [sp, #0x14]
	add r3, #0x8
	strb r6, [r0, r4]
	mov r0, r12
	add r7, r7, #0x1
	cmp r1, r0
	blt _02018D66
_02018DA8:
	ldr r0, [sp, #0x28]
	add r0, #0x8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	add r0, #0x8
	str r0, [sp, #0x24]
	mov r0, lr
	cmp r1, r0
	blt _02018D28
	add sp, #0x50
	pop {r3-r7, pc}
_02018DC6:
	ldr r2, [sp, #0xc]
	mov r1, lr
	cmp r2, r1
	bge _02018E7C
	mov r1, lr
	cmp r2, r1
	bge _02018E7C
	add r1, r2, #0x0
	lsl r1, r1, #0x3
	lsl r0, r0, #0x3
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
_02018DDE:
	ldr r2, [sp, #0x8]
	mov r0, r12
	add r1, r2, #0x0
	ldr r3, [sp, #0x10]
	cmp r1, r0
	bge _02018E62
	mov r0, r12
	cmp r1, r0
	bge _02018E62
	add r0, r2, #0x0
	lsl r6, r0, #0x3
	add r0, r3, #0x0
	lsl r1, r0, #0x3
	ldr r7, _02018E84 ; =0x00007FC0
	ldr r0, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	and r0, r7
	mul r4, r0
	str r4, [sp, #0x38]
	ldr r0, [sp, #0x44]
	mov r5, #0x38
	and r0, r5
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	and r0, r7
	mul r4, r0
	ldr r0, [sp, #0x40]
	str r4, [sp, #0x30]
	and r0, r5
	str r0, [sp, #0x2c]
_02018E1C:
	ldr r0, [sp, #0x4]
	mov r4, #0x7
	ldr r0, [r0, #0x0]
	and r4, r3
	add r0, r0, r4
	ldr r4, _02018E84 ; =0x00007FC0
	add r5, r2, #0x0
	and r4, r1
	add r4, r0, r4
	ldr r0, [sp, #0x30]
	add r7, r4, r0
	ldr r0, [sp, #0x0]
	mov r4, #0x7
	and r5, r4
	ldr r0, [r0, #0x0]
	ldr r4, _02018E84 ; =0x00007FC0
	add r0, r0, r5
	and r4, r6
	add r4, r4, r0
	ldr r0, [sp, #0x38]
	add r4, r0, r4
	ldr r0, [sp, #0x34]
	ldrb r0, [r0, r4]
	ldr r4, [sp, #0x3c]
	cmp r0, r4
	beq _02018E54
	ldr r4, [sp, #0x2c]
	strb r0, [r7, r4]
_02018E54:
	add r2, r2, #0x1
	mov r0, r12
	add r6, #0x8
	add r1, #0x8
	add r3, r3, #0x1
	cmp r2, r0
	blt _02018E1C
_02018E62:
	ldr r0, [sp, #0x44]
	add r0, #0x8
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0xc]
	add r0, #0x8
	str r0, [sp, #0x40]
	mov r0, lr
	cmp r1, r0
	blt _02018DDE
_02018E7C:
	add sp, #0x50
	pop {r3-r7, pc}
	.balign 4
_02018E80: .word 0x0000FFFF
_02018E84: .word 0x00007FC0

	thumb_func_start FUN_02018E88
FUN_02018E88: ; 0x02018E88
	push {r4-r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x4]
	str r2, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x4]
	add r6, r0, r3
	ldr r0, [sp, #0x0]
	ldrh r0, [r0, #0x4]
	cmp r6, r0
	ble _02018EA4
	add r6, r0, #0x0
_02018EA4:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #0x8]
	add r1, r1, r2
	mov r12, r1
	ldr r1, [sp, #0x0]
	ldrh r2, [r1, #0x6]
	mov r1, r12
	cmp r1, r2
	ble _02018EBA
	mov r12, r2
_02018EBA:
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	mov lr, r0
	ldr r1, [sp, #0x8]
	mov r0, r12
	cmp r1, r0
	bge _02018F44
	add r0, r1, #0x0
	lsl r0, r0, #0x2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	lsl r0, r0, #0x4
	str r0, [sp, #0x10]
_02018ED8:
	ldr r1, [sp, #0x4]
	add r0, r1, #0x0
	cmp r0, r6
	bge _02018F32
	lsl r5, r0, #0x2
	ldr r2, _02018F48 ; =0x00003FE0
	ldr r0, [sp, #0xc]
	and r0, r2
	add r7, r0, #0x0
	mov r2, lr
	mul r7, r2
	ldr r0, [sp, #0xc]
	mov r2, #0x1c
	and r2, r0
_02018EF4:
	ldr r0, [sp, #0x0]
	asr r3, r1, #0x1
	ldr r4, [r0, #0x0]
	mov r0, #0x3
	and r0, r3
	ldr r3, _02018F48 ; =0x00003FE0
	add r0, r4, r0
	and r3, r5
	add r0, r0, r3
	add r0, r0, r7
	mov r3, #0x1
	tst r3, r1
	ldrb r4, [r0, r2]
	beq _02018F1C
	mov r3, #0xf
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x10]
	b _02018F26
_02018F1C:
	mov r3, #0xf0
	and r3, r4
	strb r3, [r0, r2]
	ldrb r4, [r0, r2]
	ldr r3, [sp, #0x2c]
_02018F26:
	orr r3, r4
	add r1, r1, #0x1
	strb r3, [r0, r2]
	add r5, r5, #0x4
	cmp r1, r6
	blt _02018EF4
_02018F32:
	ldr r0, [sp, #0xc]
	add r0, r0, #0x4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x8]
	add r1, r0, #0x1
	mov r0, r12
	str r1, [sp, #0x8]
	cmp r1, r0
	blt _02018ED8
_02018F44:
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4
_02018F48: .word 0x00003FE0

	thumb_func_start FUN_02018F4C
FUN_02018F4C: ; 0x02018F4C
	push {r4-r7, lr}
	sub sp, #0x14
	str r1, [sp, #0x4]
	str r2, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x4]
	add r5, r0, r3
	ldr r0, [sp, #0x0]
	ldrh r0, [r0, #0x4]
	cmp r5, r0
	ble _02018F68
	add r5, r0, #0x0
_02018F68:
	add r1, sp, #0x18
	ldrh r2, [r1, #0x10]
	ldr r1, [sp, #0x8]
	add r1, r1, r2
	mov lr, r1
	ldr r1, [sp, #0x0]
	ldrh r2, [r1, #0x6]
	mov r1, lr
	cmp r1, r2
	ble _02018F7E
	mov lr, r2
_02018F7E:
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x8]
	mov r0, lr
	cmp r1, r0
	bge _02018FEA
	add r0, r1, #0x0
	lsl r0, r0, #0x3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4]
	lsl r0, r0, #0x3
	mov r12, r0
_02018F9C:
	ldr r2, [sp, #0x4]
	add r0, r2, #0x0
	cmp r0, r5
	bge _02018FD8
	ldr r1, [sp, #0xc]
	ldr r0, _02018FF0 ; =0x00007FC0
	mov r3, r12
	and r0, r1
	add r7, r0, #0x0
	ldr r1, [sp, #0x10]
	mov r0, #0x38
	mul r7, r1
	ldr r1, [sp, #0xc]
	add r6, r1, #0x0
	and r6, r0
_02018FBA:
	ldr r0, [sp, #0x0]
	ldr r4, _02018FF0 ; =0x00007FC0
	ldr r1, [r0, #0x0]
	mov r0, #0x7
	and r0, r2
	and r4, r3
	add r0, r1, r0
	add r0, r4, r0
	add r1, r7, r0
	ldr r0, [sp, #0x2c]
	add r2, r2, #0x1
	strb r0, [r6, r1]
	add r3, #0x8
	cmp r2, r5
	blt _02018FBA
_02018FD8:
	ldr r0, [sp, #0xc]
	add r0, #0x8
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x8]
	add r1, r0, #0x1
	mov r0, lr
	str r1, [sp, #0x8]
	cmp r1, r0
	blt _02018F9C
_02018FEA:
	add sp, #0x14
	pop {r4-r7, pc}
	nop
_02018FF0: .word 0x00007FC0

	thumb_func_start FUN_02018FF4
FUN_02018FF4: ; 0x02018FF4
	push {r4-r6, lr}
	add r5, r1, #0x0
	lsl r1, r5, #0x4
	bl FUN_02016998
	add r6, r0, #0x0
	mov r4, #0x0
	cmp r5, #0x0
	ble _02019018
_02019006:
	lsl r0, r4, #0x4
	add r0, r6, r0
	bl FUN_0201901C
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r5
	blt _02019006
_02019018:
	add r0, r6, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0201901C
FUN_0201901C: ; 0x0201901C
	mov r3, #0x0
	str r3, [r0, #0x0]
	mov r1, #0xff
	strb r1, [r0, #0x4]
	strb r3, [r0, #0x5]
	strb r3, [r0, #0x6]
	strb r3, [r0, #0x7]
	strb r3, [r0, #0x8]
	strb r3, [r0, #0x9]
	ldrh r2, [r0, #0xa]
	ldr r1, _02019044 ; =0xFFFF8000
	and r2, r1
	strh r2, [r0, #0xa]
	str r3, [r0, #0xc]
	ldrh r2, [r0, #0xa]
	sub r1, r1, #0x1
	and r1, r2
	strh r1, [r0, #0xa]
	bx lr
	nop
_02019044: .word 0xFFFF8000

	thumb_func_start FUN_02019048
FUN_02019048: ; 0x02019048
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	beq _0201905A
	ldrb r1, [r0, #0x4]
	cmp r1, #0xff
	beq _0201905A
	ldr r0, [r0, #0xc]
	cmp r0, #0x0
	bne _0201905E
_0201905A:
	mov r0, #0x0
	bx lr
_0201905E:
	mov r0, #0x1
	bx lr
	.balign 4

	thumb_func_start FUN_02019064
FUN_02019064: ; 0x02019064
	push {r3-r7, lr}
	add r6, r2, #0x0
	add r5, r0, #0x0
	mov r0, #0x2c
	add r7, r6, #0x0
	mul r7, r0
	add r4, r1, #0x0
	str r3, [sp, #0x0]
	add r1, r5, r7
	ldr r0, [r1, #0x8]
	cmp r0, #0x0
	beq _020190E0
	add r3, sp, #0x8
	ldrb r2, [r1, #0x1f]
	ldrb r1, [r3, #0x14]
	ldrb r3, [r3, #0x18]
	ldr r0, [r5, #0x0]
	mul r3, r1
	add r1, r2, #0x0
	mul r1, r3
	bl FUN_02016998
	add r1, r0, #0x0
	beq _020190E0
	str r5, [r4, #0x0]
	strb r6, [r4, #0x4]
	ldr r0, [sp, #0x0]
	add r3, sp, #0x8
	strb r0, [r4, #0x5]
	ldrb r0, [r3, #0x10]
	ldr r2, _020190E4 ; =0xFFFF8000
	strb r0, [r4, #0x6]
	ldrb r0, [r3, #0x14]
	strb r0, [r4, #0x7]
	ldrb r0, [r3, #0x18]
	strb r0, [r4, #0x8]
	ldrb r0, [r3, #0x1c]
	strb r0, [r4, #0x9]
	ldrh r0, [r4, #0xa]
	ldrh r3, [r3, #0x20]
	and r0, r2
	lsr r2, r2, #0x11
	and r2, r3
	orr r0, r2
	strh r0, [r4, #0xa]
	str r1, [r4, #0xc]
	add r0, r5, r7
	ldrb r0, [r0, #0x1e]
	cmp r0, #0x0
	bne _020190CC
	mov r2, #0x0
	b _020190CE
_020190CC:
	mov r2, #0x1
_020190CE:
	ldrh r1, [r4, #0xa]
	ldr r0, _020190E8 ; =0xFFFF7FFF
	and r1, r0
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x10
	orr r0, r1
	strh r0, [r4, #0xa]
_020190E0:
	pop {r3-r7, pc}
	nop
_020190E4: .word 0xFFFF8000
_020190E8: .word 0xFFFF7FFF

	thumb_func_start FUN_020190EC
FUN_020190EC: ; 0x020190EC
	push {r3-r7, lr}
	sub sp, #0x8
	str r3, [sp, #0x0]
	add r5, r0, #0x0
	ldr r0, [sp, #0x24]
	add r6, r2, #0x0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x0]
	add r4, r1, #0x0
	mul r0, r6
	lsl r0, r0, #0x5
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x0]
	ldr r1, [sp, #0x4]
	bl FUN_02016998
	ldr r1, [sp, #0x24]
	add r7, r0, #0x0
	lsl r2, r1, #0x4
	orr r1, r2
	lsl r1, r1, #0x18
	ldr r2, [sp, #0x4]
	lsr r1, r1, #0x18
	blx Call_FillMemWithValue
	cmp r7, #0x0
	beq _02019148
	str r5, [r4, #0x0]
	strb r6, [r4, #0x7]
	ldr r0, [sp, #0x0]
	strb r0, [r4, #0x8]
	ldrh r1, [r4, #0xa]
	ldr r0, _0201914C ; =0xFFFF8000
	add r3, r1, #0x0
	add r1, sp, #0x10
	ldrh r2, [r1, #0x10]
	lsr r1, r0, #0x11
	and r3, r0
	and r1, r2
	orr r1, r3
	strh r1, [r4, #0xa]
	str r7, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	sub r0, r0, #0x1
	and r0, r1
	strh r0, [r4, #0xa]
_02019148:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_0201914C: .word 0xFFFF8000

	thumb_func_start FUN_02019150
FUN_02019150: ; 0x02019150
	push {lr}
	sub sp, #0x14
	add r3, r2, #0x0
	ldrb r2, [r3, #0x2]
	str r2, [sp, #0x0]
	ldrb r2, [r3, #0x3]
	str r2, [sp, #0x4]
	ldrb r2, [r3, #0x4]
	str r2, [sp, #0x8]
	ldrb r2, [r3, #0x5]
	str r2, [sp, #0xc]
	ldrh r2, [r3, #0x6]
	str r2, [sp, #0x10]
	ldrb r2, [r3, #0x0]
	ldrb r3, [r3, #0x1]
	bl FUN_02019064
	add sp, #0x14
	pop {pc}
	.balign 4

	thumb_func_start FUN_02019178
FUN_02019178: ; 0x02019178
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl FUN_02016A18
	mov r2, #0x0
	str r2, [r4, #0x0]
	mov r0, #0xff
	strb r0, [r4, #0x4]
	strb r2, [r4, #0x5]
	strb r2, [r4, #0x6]
	strb r2, [r4, #0x7]
	strb r2, [r4, #0x8]
	strb r2, [r4, #0x9]
	ldrh r1, [r4, #0xa]
	ldr r0, _020191A0 ; =0xFFFF8000
	and r0, r1
	strh r0, [r4, #0xa]
	str r2, [r4, #0xc]
	pop {r4, pc}
	.balign 4
_020191A0: .word 0xFFFF8000

	thumb_func_start FUN_020191A4
FUN_020191A4: ; 0x020191A4
	push {r4-r6, lr}
	add r6, r1, #0x0
	add r5, r0, #0x0
	mov r4, #0x0
	cmp r6, #0x0
	ble _020191C8
_020191B0:
	lsl r0, r4, #0x4
	add r0, r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0x0
	beq _020191BE
	bl FUN_02016A18
_020191BE:
	add r0, r4, #0x1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blt _020191B0
_020191C8:
	add r0, r5, #0x0
	bl FUN_02016A18
	pop {r4-r6, pc}

	thumb_func_start FUN_020191D0
FUN_020191D0: ; 0x020191D0
	push {r4, lr}
	add r4, r0, #0x0
	bne _020191DA
	bl ErrorHandling
_020191DA:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _020191E4
	bl ErrorHandling
_020191E4:
	ldrb r0, [r4, #0x4]
	cmp r0, #0x8
	blo _020191EE
	bl ErrorHandling
_020191EE:
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	ldr r2, [r4, #0x0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x3
	blo _02019202
	bl ErrorHandling
_02019202:
	ldrb r2, [r4, #0x4]
	mov r1, #0x2c
	ldr r3, [r4, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0x0
	lsl r2, r1, #0x2
	ldr r1, _0201921C ; =0x020EDB68
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201921C: .word 0x020EDB68

	thumb_func_start FUN_02019220
FUN_02019220: ; 0x02019220
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201922A
	bl ErrorHandling
_0201922A:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	bne _02019234
	bl ErrorHandling
_02019234:
	ldrb r0, [r4, #0x4]
	cmp r0, #0x8
	blo _0201923E
	bl ErrorHandling
_0201923E:
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	ldr r2, [r4, #0x0]
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0x1c]
	cmp r0, #0x3
	blo _02019252
	bl ErrorHandling
_02019252:
	ldrb r2, [r4, #0x4]
	mov r1, #0x2c
	ldr r3, [r4, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	add r0, r4, #0x0
	lsl r2, r1, #0x2
	ldr r1, _0201926C ; =0x020EDB5C
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0201926C: .word 0x020EDB5C

	thumb_func_start FUN_02019270
FUN_02019270: ; 0x02019270
	push {r3, lr}
	ldrb r2, [r0, #0x4]
	mov r1, #0x2c
	ldr r3, [r0, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #0x2
	ldr r1, _02019288 ; =0x020EDB38
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4
_02019288: .word 0x020EDB38

	thumb_func_start FUN_0201928C
FUN_0201928C: ; 0x0201928C
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldrb r6, [r5, #0x7]
	ldrb r4, [r5, #0x8]
	strb r1, [r5, #0x7]
	strb r2, [r5, #0x8]
	ldrb r3, [r5, #0x4]
	mov r2, #0x2c
	ldr r1, [r5, #0x0]
	mul r2, r3
	add r1, r1, r2
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #0x2
	ldr r1, _020192B4 ; =0x020EDB38
	ldr r1, [r1, r2]
	blx r1
	strb r6, [r5, #0x7]
	strb r4, [r5, #0x8]
	pop {r4-r6, pc}
	nop
_020192B4: .word 0x020EDB38

	thumb_func_start FUN_020192B8
FUN_020192B8: ; 0x020192B8
	push {r3, lr}
	ldrb r2, [r0, #0x4]
	mov r1, #0x2c
	ldr r3, [r0, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #0x2
	ldr r1, _020192D0 ; =0x020EDB74
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4
_020192D0: .word 0x020EDB74

	thumb_func_start FUN_020192D4
FUN_020192D4: ; 0x020192D4
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldrb r1, [r5, #0x4]
	mov r0, #0x2c
	ldr r2, [r5, #0x0]
	mul r0, r1
	add r0, r2, r0
	ldr r0, [r0, #0x8]
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _02019354
	ldrh r0, [r5, #0xa]
	ldrb r1, [r5, #0x5]
	lsl r0, r0, #0x11
	lsr r3, r0, #0x11
	ldrb r0, [r5, #0x7]
	add r7, r1, r0
	ldrb r0, [r5, #0x6]
	ldrb r1, [r5, #0x8]
	mov r12, r0
	add r0, r0, r1
	mov r1, r12
	mov lr, r0
	cmp r1, r0
	bhs _02019354
_02019308:
	ldrb r2, [r5, #0x5]
	cmp r2, r7
	bhs _02019348
	mov r0, r12
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x16
	lsl r1, r0, #0x1
	ldr r0, [sp, #0x4]
	add r0, r0, r1
	mov r1, r12
	str r0, [sp, #0x0]
	mov r0, #0x20
	add r6, r1, #0x0
	and r6, r0
_02019324:
	ldrb r0, [r5, #0x9]
	mov r4, #0x20
	add r1, r3, #0x0
	lsl r0, r0, #0xc
	and r4, r2
	orr r1, r0
	mov r0, #0x1f
	add r4, r6, r4
	and r0, r2
	lsl r4, r4, #0x5
	add r0, r0, r4
	lsl r4, r0, #0x1
	ldr r0, [sp, #0x0]
	add r2, r2, #0x1
	strh r1, [r0, r4]
	add r3, r3, #0x1
	cmp r2, r7
	blo _02019324
_02019348:
	mov r0, r12
	add r1, r0, #0x1
	mov r0, lr
	mov r12, r1
	cmp r1, r0
	blo _02019308
_02019354:
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start FUN_02019358
FUN_02019358: ; 0x02019358
	push {r4-r7}
	ldrb r3, [r0, #0x4]
	mov r1, #0x2c
	add r2, r3, #0x0
	mul r2, r1
	ldr r1, [r0, #0x0]
	add r1, r1, r2
	ldr r3, [r1, #0x8]
	cmp r3, #0x0
	beq _020193AC
	ldrb r2, [r1, #0x1d]
	ldr r1, _020193B0 ; =0x020EDB30
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #0x6]
	add r2, r1, #0x0
	mul r2, r6
	add r2, r3, r2
	ldrb r1, [r0, #0x5]
	mov r3, #0x0
	add r4, r2, r1
	ldrh r1, [r0, #0xa]
	lsl r1, r1, #0x11
	lsr r5, r1, #0x11
	ldrb r1, [r0, #0x8]
	cmp r1, #0x0
	ble _020193AC
	add r1, r3, #0x0
_0201938E:
	ldrb r7, [r0, #0x7]
	add r2, r1, #0x0
	cmp r7, #0x0
	ble _020193A2
_02019396:
	strb r5, [r4, r2]
	ldrb r7, [r0, #0x7]
	add r2, r2, #0x1
	add r5, r5, #0x1
	cmp r2, r7
	blt _02019396
_020193A2:
	ldrb r2, [r0, #0x8]
	add r3, r3, #0x1
	add r4, r4, r6
	cmp r3, r2
	blt _0201938E
_020193AC:
	pop {r4-r7}
	bx lr
	.balign 4
_020193B0: .word 0x020EDB30

	thumb_func_start FUN_020193B4
FUN_020193B4: ; 0x020193B4
	push {r4-r7, lr}
	sub sp, #0xc
	ldrb r2, [r0, #0x4]
	str r0, [sp, #0x0]
	mov r0, #0x2c
	add r1, r2, #0x0
	mul r1, r0
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0x0]
	add r1, r0, r1
	ldr r0, [r1, #0x8]
	str r0, [sp, #0x4]
	cmp r0, #0x0
	beq _0201943C
	ldrb r1, [r1, #0x1d]
	ldr r0, _02019440 ; =0x020EDB30
	ldrb r0, [r0, r1]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x0]
	ldrb r1, [r0, #0x5]
	ldrb r0, [r0, #0x7]
	add r2, r1, r0
	ldr r0, [sp, #0x0]
	ldrb r0, [r0, #0x6]
	mov r12, r0
	ldr r0, [sp, #0x0]
	ldrb r1, [r0, #0x8]
	mov r0, r12
	add r0, r0, r1
	mov r1, r12
	mov lr, r0
	cmp r1, r0
	bhs _0201943C
	mov r6, #0x0
	mov r7, #0x20
_020193FA:
	ldr r0, [sp, #0x0]
	ldrb r1, [r0, #0x5]
	cmp r1, r2
	bhs _02019430
	mov r3, r12
	mov r0, #0x1f
	and r3, r0
	ldr r0, [sp, #0x8]
	mul r0, r3
	lsl r3, r0, #0x1
	ldr r0, [sp, #0x4]
	add r5, r0, r3
	mov r3, r12
	mov r0, #0x20
	and r3, r0
_02019418:
	add r4, r1, #0x0
	and r4, r7
	mov r0, #0x1f
	add r4, r3, r4
	and r0, r1
	lsl r4, r4, #0x5
	add r0, r0, r4
	lsl r0, r0, #0x1
	add r1, r1, #0x1
	strh r6, [r5, r0]
	cmp r1, r2
	blo _02019418
_02019430:
	mov r0, r12
	add r1, r0, #0x1
	mov r0, lr
	mov r12, r1
	cmp r1, r0
	blo _020193FA
_0201943C:
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_02019440: .word 0x020EDB30

	thumb_func_start FUN_02019444
FUN_02019444: ; 0x02019444
	push {r4-r7}
	ldrb r3, [r0, #0x4]
	mov r1, #0x2c
	add r2, r3, #0x0
	mul r2, r1
	ldr r1, [r0, #0x0]
	add r1, r1, r2
	ldr r3, [r1, #0x8]
	cmp r3, #0x0
	beq _02019492
	ldrb r2, [r1, #0x1d]
	ldr r1, _02019498 ; =0x020EDB30
	mov r4, #0x0
	ldrb r6, [r1, r2]
	ldrb r1, [r0, #0x6]
	add r2, r1, #0x0
	mul r2, r6
	ldrb r1, [r0, #0x5]
	add r2, r3, r2
	add r5, r2, r1
	ldrb r1, [r0, #0x8]
	cmp r1, #0x0
	ble _02019492
	add r1, r4, #0x0
	add r2, r4, #0x0
_02019476:
	ldrb r7, [r0, #0x7]
	add r3, r2, #0x0
	cmp r7, #0x0
	ble _02019488
_0201947E:
	strb r1, [r5, r3]
	ldrb r7, [r0, #0x7]
	add r3, r3, #0x1
	cmp r3, r7
	blt _0201947E
_02019488:
	ldrb r3, [r0, #0x8]
	add r4, r4, #0x1
	add r5, r5, r6
	cmp r4, r3
	blt _02019476
_02019492:
	pop {r4-r7}
	bx lr
	nop
_02019498: .word 0x020EDB30

	thumb_func_start FUN_0201949C
FUN_0201949C: ; 0x0201949C
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	bl FUN_020192D4
	add r0, r4, #0x0
	bl FUN_02019548
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	add r2, r1, #0x0
	mul r2, r0
	ldr r0, [r4, #0x0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp, #0x0]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_02017CE8
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_020194C8
FUN_020194C8: ; 0x020194C8
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_020192D4
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	bl FUN_0201AC68
	add r0, r4, #0x0
	bl FUN_02019548
	pop {r4, pc}

	thumb_func_start FUN_020194E0
FUN_020194E0: ; 0x020194E0
	push {r3-r5, lr}
	add r4, r0, #0x0
	bl FUN_02019358
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	add r2, r1, #0x0
	mul r2, r0
	ldr r0, [r4, #0x0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp, #0x0]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_02017CE8
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp, #0x0]
	ldrb r5, [r4, #0x7]
	ldrb r3, [r4, #0x8]
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #0x6
	bl FUN_02017E14
	pop {r3-r5, pc}

	thumb_func_start FUN_0201951C
FUN_0201951C: ; 0x0201951C
	push {r3-r5, lr}
	add r4, r0, #0x0
	bl FUN_02019358
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	bl FUN_0201AC68
	ldrh r0, [r4, #0xa]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x11
	str r0, [sp, #0x0]
	ldrb r5, [r4, #0x7]
	ldrb r3, [r4, #0x8]
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	mul r3, r5
	ldr r2, [r4, #0xc]
	lsl r3, r3, #0x6
	bl FUN_02017E14
	pop {r3-r5, pc}

	thumb_func_start FUN_02019548
FUN_02019548: ; 0x02019548
	push {r3-r5, lr}
	add r3, r0, #0x0
	ldrh r2, [r3, #0xa]
	ldrb r1, [r3, #0x4]
	mov r4, #0x2c
	lsl r2, r2, #0x11
	ldr r0, [r3, #0x0]
	lsr r2, r2, #0x11
	str r2, [sp, #0x0]
	mul r4, r1
	add r4, r0, r4
	ldr r2, [r3, #0xc]
	ldrb r5, [r3, #0x7]
	ldrb r3, [r3, #0x8]
	ldrb r4, [r4, #0x1f]
	mul r3, r5
	mul r3, r4
	bl FUN_02017E14
	pop {r3-r5, pc}

	thumb_func_start FUN_02019570
FUN_02019570: ; 0x02019570
	push {r3, lr}
	ldrb r2, [r0, #0x4]
	mov r1, #0x2c
	ldr r3, [r0, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #0x2
	ldr r1, _02019588 ; =0x020EDB50
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4
_02019588: .word 0x020EDB50

	thumb_func_start FUN_0201958C
FUN_0201958C: ; 0x0201958C
	push {r3, lr}
	ldrb r2, [r0, #0x4]
	mov r1, #0x2c
	ldr r3, [r0, #0x0]
	mul r1, r2
	add r1, r3, r1
	ldrb r1, [r1, #0x1c]
	lsl r2, r1, #0x2
	ldr r1, _020195A4 ; =0x020EDB44
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	.balign 4
_020195A4: .word 0x020EDB44

	thumb_func_start FUN_020195A8
FUN_020195A8: ; 0x020195A8
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	bl FUN_020193B4
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	add r2, r1, #0x0
	mul r2, r0
	ldr r0, [r4, #0x0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp, #0x0]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_02017CE8
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_020195D0
FUN_020195D0: ; 0x020195D0
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_020193B4
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	bl FUN_0201AC68
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_020195E4
FUN_020195E4: ; 0x020195E4
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	bl FUN_02019444
	ldrb r1, [r4, #0x4]
	mov r0, #0x2c
	add r2, r1, #0x0
	mul r2, r0
	ldr r0, [r4, #0x0]
	add r3, r0, r2
	ldr r2, [r3, #0x10]
	str r2, [sp, #0x0]
	ldr r2, [r3, #0x8]
	ldr r3, [r3, #0xc]
	bl FUN_02017CE8
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201960C
FUN_0201960C: ; 0x0201960C
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02019444
	ldrb r1, [r4, #0x4]
	ldr r0, [r4, #0x0]
	bl FUN_0201AC68
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02019620
FUN_02019620: ; 0x02019620
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldrb r2, [r4, #0x4]
	mov r0, #0x2c
	ldr r3, [r4, #0x0]
	mul r0, r2
	add r0, r3, r0
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x20
	bne _0201963C
	lsl r0, r1, #0x4
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
_0201963C:
	lsl r3, r1, #0x18
	lsl r0, r1, #0x10
	orr r0, r3
	lsl r5, r1, #0x8
	orr r0, r5
	orr r0, r1
	ldr r1, [r4, #0xc]
	ldrb r3, [r4, #0x8]
	ldrb r4, [r4, #0x7]
	mul r2, r4
	mul r2, r3
	blx MIi_CpuClearFast
	pop {r3-r5, pc}

	thumb_func_start FUN_02019658
FUN_02019658: ; 0x02019658
	push {r4-r5, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r5, [r4, #0x10]
	str r5, [sp, #0x0]
	ldrh r5, [r4, #0x14]
	str r5, [sp, #0x4]
	ldrh r5, [r4, #0x18]
	str r5, [sp, #0x8]
	ldrh r5, [r4, #0x1c]
	str r5, [sp, #0xc]
	ldrh r5, [r4, #0x20]
	str r5, [sp, #0x10]
	ldrh r4, [r4, #0x24]
	str r4, [sp, #0x14]
	mov r4, #0x0
	str r4, [sp, #0x18]
	bl FUN_02019684
	add sp, #0x1c
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_02019684
FUN_02019684: ; 0x02019684
	push {r4-r5, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	add r4, sp, #0x20
	ldrh r5, [r4, #0x10]
	add r1, sp, #0x14
	strh r5, [r1, #0xc]
	ldrh r5, [r4, #0x14]
	strh r5, [r1, #0xe]
	ldr r5, [r0, #0xc]
	str r5, [sp, #0x14]
	ldrb r5, [r0, #0x7]
	lsl r5, r5, #0x3
	strh r5, [r1, #0x4]
	ldrb r5, [r0, #0x8]
	lsl r5, r5, #0x3
	strh r5, [r1, #0x6]
	ldrb r5, [r0, #0x4]
	ldr r1, [r0, #0x0]
	mov r0, #0x2c
	mul r0, r5
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r1, sp, #0x14
	cmp r0, #0x0
	ldrh r0, [r4, #0x18]
	bne _020196D6
	str r0, [sp, #0x0]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #0x4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #0x8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl FUN_02018A60
	add sp, #0x24
	pop {r4-r5, pc}
_020196D6:
	str r0, [sp, #0x0]
	ldrh r0, [r4, #0x1c]
	str r0, [sp, #0x4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #0x8]
	ldrh r0, [r4, #0x24]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0x28]
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	bl FUN_02018CA0
	add sp, #0x24
	pop {r4-r5, pc}
	.balign 4

	thumb_func_start FUN_020196F4
FUN_020196F4: ; 0x020196F4
	push {r3-r5, lr}
	sub sp, #0x10
	add r5, r1, #0x0
	ldr r1, [r0, #0xc]
	add r4, r2, #0x0
	str r1, [sp, #0x8]
	ldrb r1, [r0, #0x7]
	add r2, r3, #0x0
	lsl r3, r1, #0x3
	add r1, sp, #0x8
	strh r3, [r1, #0x4]
	ldrb r3, [r0, #0x8]
	lsl r3, r3, #0x3
	strh r3, [r1, #0x6]
	ldrb r3, [r0, #0x4]
	ldr r1, [r0, #0x0]
	mov r0, #0x2c
	mul r0, r3
	add r0, r1, r0
	ldrb r0, [r0, #0x1e]
	add r3, sp, #0x10
	cmp r0, #0x0
	bne _02019736
	ldrh r0, [r3, #0x14]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	str r5, [sp, #0x4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #0x8
	bl FUN_02018E88
	add sp, #0x10
	pop {r3-r5, pc}
_02019736:
	ldrh r0, [r3, #0x14]
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	str r5, [sp, #0x4]
	ldrh r3, [r3, #0x10]
	add r0, sp, #0x8
	bl FUN_02018F4C
	add sp, #0x10
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201974C
FUN_0201974C: ; 0x0201974C
	push {r4-r7, lr}
	sub sp, #0x1fc
	sub sp, #0x118
	add r5, r0, #0x0
	ldr r0, [sp, #0x330]
	str r1, [sp, #0x0]
	str r0, [sp, #0x330]
	add r1, sp, #0x318
	ldrh r1, [r1, #0x10]
	ldr r0, [r5, #0xc]
	str r1, [sp, #0x5c]
	ldrb r1, [r5, #0x7]
	str r0, [sp, #0x278]
	ldrb r0, [r5, #0x8]
	lsl r1, r1, #0x13
	lsr r4, r1, #0x10
	ldr r1, [sp, #0x5c]
	lsl r0, r0, #0x13
	sub r1, r4, r1
	lsr r0, r0, #0x10
	str r4, [sp, #0x58]
	str r1, [sp, #0x8]
	cmp r1, r2
	blt _0201977E
	str r2, [sp, #0x8]
_0201977E:
	add r1, sp, #0x318
	ldrh r1, [r1, #0x14]
	sub r0, r0, r1
	str r1, [sp, #0x48]
	str r0, [sp, #0x4]
	cmp r0, r3
	blt _0201978E
	str r3, [sp, #0x4]
_0201978E:
	ldr r0, [sp, #0x8]
	mov r4, #0x0
	cmp r0, #0x8
	ble _0201979E
	mov r0, #0x1
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0201979E:
	ldr r0, [sp, #0x4]
	cmp r0, #0x8
	ble _020197AC
	mov r0, #0x2
	orr r0, r4
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_020197AC:
	ldrh r0, [r5, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	beq _020197B8
	bl FUN_0201A12C
_020197B8:
	cmp r4, #0x3
	bls _020197C0
	bl FUN_0201A8BC
_020197C0:
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020197CC: ; jump table (using 16-bit offset)
	.short _020197D4 - _020197CC - 2; case 0
	.short _020198D6 - _020197CC - 2; case 1
	.short _02019AE6 - _020197CC - 2; case 2
	.short _02019D06 - _020197CC - 2; case 3
_020197D4:
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x70]
	mov r0, #0x0
	str r0, [sp, #0x274]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bgt _020197EA
	bl FUN_0201A8BC
_020197EA:
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x6c]
_020197F6:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x70]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x274]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x270]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	cmp r0, #0x0
	ble _020198AA
	ble _020198AA
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x6c]
	lsl r5, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x68]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	ldr r5, [sp, #0x6c]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0x64]
	str r0, [sp, #0x60]
_02019848:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019B68 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x68]
	str r5, [sp, #0x27c]
	add r0, r5, r0
	ldr r5, [sp, #0x26c]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201989C
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x280]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x284]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x284]
	and r6, r5
	ldr r5, [sp, #0x280]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x270]
	cmp r0, #0x0
	beq _0201989C
	ldr r6, [sp, #0x27c]
	ldr r0, [sp, #0x64]
	add r6, r6, r0
	ldr r0, [sp, #0x60]
	strb r5, [r0, r6]
_0201989C:
	ldr r0, [sp, #0x8]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _02019848
_020198AA:
	ldr r0, [sp, #0x270]
	cmp r0, #0x0
	beq _020198B8
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _020198BE
_020198B8:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_020198BE:
	ldr r0, [sp, #0x0]
	add r0, r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x274]
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x274]
	cmp r1, r0
	blt _020197F6
	add sp, #0x1fc
	add sp, #0x118
	pop {r4-r7, pc}
_020198D6:
	ldr r0, [sp, #0x0]
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	mov r0, #0x0
	str r0, [sp, #0x268]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _020199D2
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x80]
_02019902:
	ldr r0, [sp, #0x25c]
	ldr r1, [sp, #0x84]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x258]
	ldr r0, [sp, #0x268]
	ldr r6, [sp, #0x80]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x260]
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x264]
	mov r1, #0x0
	lsl r5, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x264]
	str r6, [sp, #0x7c]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	ldr r5, [sp, #0x80]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0x78]
	str r0, [sp, #0x74]
_0201994C:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019B68 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x7c]
	str r5, [sp, #0x288]
	add r0, r5, r0
	ldr r5, [sp, #0x258]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _020199A0
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x28c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x290]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x290]
	and r6, r5
	ldr r5, [sp, #0x28c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x260]
	cmp r0, #0x0
	beq _020199A0
	ldr r6, [sp, #0x288]
	ldr r0, [sp, #0x78]
	add r6, r6, r0
	ldr r0, [sp, #0x74]
	strb r5, [r0, r6]
_020199A0:
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, #0x8
	blt _0201994C
	ldr r0, [sp, #0x260]
	cmp r0, #0x0
	beq _020199BA
	ldr r0, [sp, #0x264]
	add r0, r0, #0x2
	str r0, [sp, #0x264]
	b _020199C0
_020199BA:
	ldr r0, [sp, #0x264]
	add r0, r0, #0x1
	str r0, [sp, #0x264]
_020199C0:
	ldr r0, [sp, #0x25c]
	add r0, r0, #0x4
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x268]
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x268]
	cmp r1, r0
	blt _02019902
_020199D2:
	ldr r0, [sp, #0x0]
	add r0, #0x20
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x54]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r0, #0x0
	str r0, [sp, #0x254]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bgt _020199EE
	bl FUN_0201A8BC
_020199EE:
	ldr r0, [sp, #0x5c]
	mov r1, #0x7
	add r0, #0x8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x94]
_02019A00:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x98]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x24c]
	ldr r0, [sp, #0x254]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x250]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	str r0, [sp, #0x294]
	sub r0, #0x8
	str r0, [sp, #0x294]
	cmp r0, #0x0
	ble _02019ABA
	ble _02019ABA
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x94]
	lsl r5, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x90]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	ldr r5, [sp, #0x94]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0x8c]
	str r0, [sp, #0x88]
_02019A58:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019B68 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0x90]
	str r5, [sp, #0x298]
	add r0, r5, r0
	ldr r5, [sp, #0x24c]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019AAC
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x29c]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2a0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2a0]
	and r6, r5
	ldr r5, [sp, #0x29c]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x250]
	cmp r0, #0x0
	beq _02019AAC
	ldr r6, [sp, #0x298]
	ldr r0, [sp, #0x8c]
	add r6, r6, r0
	ldr r0, [sp, #0x88]
	strb r5, [r0, r6]
_02019AAC:
	ldr r0, [sp, #0x294]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _02019A58
_02019ABA:
	ldr r0, [sp, #0x250]
	cmp r0, #0x0
	beq _02019AC8
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _02019ACE
_02019AC8:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_02019ACE:
	ldr r0, [sp, #0x0]
	add r0, r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x254]
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x254]
	cmp r1, r0
	blt _02019A00
	add sp, #0x1fc
	add sp, #0x118
	pop {r4-r7, pc}
_02019AE6:
	ldr r0, [sp, #0x0]
	mov r1, #0x7
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x244]
	mov r0, #0x0
	str r0, [sp, #0x248]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x40]
_02019B06:
	ldr r0, [sp, #0x23c]
	ldr r1, [sp, #0xa8]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x238]
	ldr r0, [sp, #0x248]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x240]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	cmp r0, #0x0
	ble _02019BC2
	ble _02019BC2
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x244]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x244]
	str r6, [sp, #0xa4]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019B68 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0xa0]
	str r0, [sp, #0x9c]
_02019B58:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019B68 ; =0x00003FE0
	b _02019B6C
	nop
_02019B68: .word 0x00003FE0
_02019B6C:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xa4]
	str r5, [sp, #0x2a4]
	add r0, r5, r0
	ldr r5, [sp, #0x238]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019BB4
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2a8]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2ac]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2ac]
	and r6, r5
	ldr r5, [sp, #0x2a8]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x240]
	cmp r0, #0x0
	beq _02019BB4
	ldr r6, [sp, #0x2a4]
	ldr r0, [sp, #0xa0]
	add r6, r6, r0
	ldr r0, [sp, #0x9c]
	strb r5, [r0, r6]
_02019BB4:
	ldr r0, [sp, #0x8]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _02019B58
_02019BC2:
	ldr r0, [sp, #0x240]
	cmp r0, #0x0
	beq _02019BD0
	ldr r0, [sp, #0x244]
	add r0, r0, #0x2
	str r0, [sp, #0x244]
	b _02019BD6
_02019BD0:
	ldr r0, [sp, #0x244]
	add r0, r0, #0x1
	str r0, [sp, #0x244]
_02019BD6:
	ldr r0, [sp, #0x23c]
	add r0, r0, #0x4
	str r0, [sp, #0x23c]
	ldr r0, [sp, #0x248]
	add r0, r0, #0x1
	str r0, [sp, #0x248]
	cmp r0, #0x8
	blt _02019B06
	ldr r0, [sp, #0x0]
	mov r2, #0x0
	add r0, #0x40
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x48]
	mov r1, #0x1
	add r0, #0x8
	str r0, [sp, #0x48]
_02019BF6:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _02019C04
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_02019C04:
	add r2, r2, #0x1
	cmp r2, #0x8
	blt _02019BF6
	ldr r0, [sp, #0x330]
	asr r0, r0, #0x8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xb8]
	mov r0, #0x0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	bgt _02019C24
	bl FUN_0201A8BC
_02019C24:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x230]
	ldr r0, [sp, #0x20]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x234]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	cmp r0, #0x0
	ble _02019CD8
	ble _02019CD8
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x40]
	lsl r5, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xb4]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	ldr r5, [sp, #0x40]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0xb0]
	str r0, [sp, #0xac]
_02019C76:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019F88 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xb4]
	str r5, [sp, #0x2b0]
	add r0, r5, r0
	ldr r5, [sp, #0x230]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019CCA
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2b4]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2b8]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2b8]
	and r6, r5
	ldr r5, [sp, #0x2b4]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x234]
	cmp r0, #0x0
	beq _02019CCA
	ldr r6, [sp, #0x2b0]
	ldr r0, [sp, #0xb0]
	add r6, r6, r0
	ldr r0, [sp, #0xac]
	strb r5, [r0, r6]
_02019CCA:
	ldr r0, [sp, #0x8]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _02019C76
_02019CD8:
	ldr r0, [sp, #0x234]
	cmp r0, #0x0
	beq _02019CE6
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _02019CEC
_02019CE6:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_02019CEC:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x20]
	sub r1, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02019C24
	add sp, #0x1fc
	add sp, #0x118
	pop {r4-r7, pc}
_02019D06:
	ldr r0, [sp, #0x0]
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x228]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x0
	str r0, [sp, #0x22c]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x38]
_02019D2A:
	ldr r0, [sp, #0x220]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x21c]
	ldr r0, [sp, #0x22c]
	ldr r6, [sp, #0x38]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x224]
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x228]
	mov r1, #0x0
	lsl r5, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x228]
	str r6, [sp, #0xc4]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	str r3, [sp, #0x34]
	add r4, r1, #0x0
	str r5, [sp, #0xc0]
	str r0, [sp, #0xbc]
_02019D76:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019F88 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xc4]
	str r5, [sp, #0x2bc]
	add r0, r5, r0
	ldr r5, [sp, #0x21c]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019DCA
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2c0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2c4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2c4]
	and r6, r5
	ldr r5, [sp, #0x2c0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x224]
	cmp r0, #0x0
	beq _02019DCA
	ldr r6, [sp, #0x2bc]
	ldr r0, [sp, #0xc0]
	add r6, r6, r0
	ldr r0, [sp, #0xbc]
	strb r5, [r0, r6]
_02019DCA:
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, #0x8
	blt _02019D76
	ldr r0, [sp, #0x224]
	cmp r0, #0x0
	beq _02019DE4
	ldr r0, [sp, #0x228]
	add r0, r0, #0x2
	str r0, [sp, #0x228]
	b _02019DEA
_02019DE4:
	ldr r0, [sp, #0x228]
	add r0, r0, #0x1
	str r0, [sp, #0x228]
_02019DEA:
	ldr r0, [sp, #0x220]
	add r0, r0, #0x4
	str r0, [sp, #0x220]
	ldr r0, [sp, #0x22c]
	add r0, r0, #0x1
	str r0, [sp, #0x22c]
	cmp r0, #0x8
	blt _02019D2A
	ldr r0, [sp, #0x0]
	str r0, [sp, #0x20c]
	add r0, #0x20
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x214]
	mov r0, #0x0
	str r0, [sp, #0x218]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0xd4]
	add r0, #0x8
	str r0, [sp, #0xd4]
_02019E12:
	ldr r0, [sp, #0x20c]
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0xd4]
	str r0, [sp, #0x208]
	ldr r0, [sp, #0x218]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x210]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	str r0, [sp, #0x2c8]
	sub r0, #0x8
	str r0, [sp, #0x2c8]
	cmp r0, #0x0
	ble _02019ECC
	ble _02019ECC
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x214]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x214]
	str r6, [sp, #0xd0]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0xcc]
	str r0, [sp, #0xc8]
_02019E6A:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019F88 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xd0]
	str r5, [sp, #0x2cc]
	add r0, r5, r0
	ldr r5, [sp, #0x208]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019EBE
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2d0]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2d4]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2d4]
	and r6, r5
	ldr r5, [sp, #0x2d0]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x210]
	cmp r0, #0x0
	beq _02019EBE
	ldr r6, [sp, #0x2cc]
	ldr r0, [sp, #0xcc]
	add r6, r6, r0
	ldr r0, [sp, #0xc8]
	strb r5, [r0, r6]
_02019EBE:
	ldr r0, [sp, #0x2c8]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _02019E6A
_02019ECC:
	ldr r0, [sp, #0x210]
	cmp r0, #0x0
	beq _02019EDA
	ldr r0, [sp, #0x214]
	add r0, r0, #0x2
	str r0, [sp, #0x214]
	b _02019EE0
_02019EDA:
	ldr r0, [sp, #0x214]
	add r0, r0, #0x1
	str r0, [sp, #0x214]
_02019EE0:
	ldr r0, [sp, #0x20c]
	add r0, r0, #0x4
	str r0, [sp, #0x20c]
	ldr r0, [sp, #0x218]
	add r0, r0, #0x1
	str r0, [sp, #0x218]
	cmp r0, #0x8
	blt _02019E12
	ldr r0, [sp, #0x0]
	mov r2, #0x0
	str r0, [sp, #0x1fc]
	add r0, #0x40
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x48]
	mov r1, #0x1
	add r0, #0x8
	str r0, [sp, #0x48]
	str r0, [sp, #0x204]
_02019F04:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _02019F12
	ldr r0, [sp, #0x204]
	add r0, r0, #0x1
	str r0, [sp, #0x204]
_02019F12:
	add r2, r2, #0x1
	cmp r2, #0x8
	blt _02019F04
	ldr r0, [sp, #0x330]
	asr r0, r0, #0x8
	str r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xe4]
	mov r0, #0x0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	ble _0201A008
_02019F30:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0xe4]
	ldr r0, [r0, #0x0]
	ldr r6, [sp, #0x38]
	str r0, [sp, #0x1f8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x5c]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x200]
	ldr r0, [sp, #0x204]
	mov r1, #0x0
	lsl r5, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x204]
	str r6, [sp, #0xe0]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _02019F88 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	ldr r3, [sp, #0x34]
	add r4, r1, #0x0
	str r5, [sp, #0xdc]
	str r0, [sp, #0xd8]
_02019F78:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _02019F88 ; =0x00003FE0
	b _02019F8C
	nop
_02019F88: .word 0x00003FE0
_02019F8C:
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xe0]
	str r5, [sp, #0x2d8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f8]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _02019FD4
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2dc]
	ldrb r5, [r0, r7]
	str r5, [sp, #0x2e0]
	mov r5, #0xf0
	asr r5, r6
	ldr r6, [sp, #0x2e0]
	and r6, r5
	ldr r5, [sp, #0x2dc]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x200]
	cmp r0, #0x0
	beq _02019FD4
	ldr r6, [sp, #0x2d8]
	ldr r0, [sp, #0xdc]
	add r6, r6, r0
	ldr r0, [sp, #0xd8]
	strb r5, [r0, r6]
_02019FD4:
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, #0x8
	blt _02019F78
	ldr r0, [sp, #0x200]
	cmp r0, #0x0
	beq _02019FEE
	ldr r0, [sp, #0x204]
	add r0, r0, #0x2
	str r0, [sp, #0x204]
	b _02019FF4
_02019FEE:
	ldr r0, [sp, #0x204]
	add r0, r0, #0x1
	str r0, [sp, #0x204]
_02019FF4:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x4
	str r0, [sp, #0x1fc]
	ldr r0, [sp, #0x1c]
	sub r1, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _02019F30
_0201A008:
	ldr r0, [sp, #0x0]
	mov r2, #0x0
	add r0, #0x60
	str r0, [sp, #0x0]
	mov r1, #0x1
_0201A012:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201A020
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A020:
	add r2, r2, #0x1
	cmp r2, #0x8
	blt _0201A012
	ldr r0, [sp, #0x50]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xf4]
	mov r0, #0x0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	bgt _0201A03E
	bl FUN_0201A8BC
_0201A03E:
	ldr r0, [sp, #0x5c]
	add r0, #0x8
	str r0, [sp, #0x5c]
_0201A044:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0xf4]
	ldr r0, [r0, #0x0]
	ldr r2, [sp, #0x5c]
	str r0, [sp, #0x1f0]
	ldr r0, [sp, #0x18]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1f4]
	ldr r0, [sp, #0x8]
	mov r1, #0x0
	str r0, [sp, #0x2e4]
	sub r0, #0x8
	str r0, [sp, #0x2e4]
	cmp r0, #0x0
	ble _0201A0FE
	ble _0201A0FE
	add r0, r2, #0x0
	lsl r3, r0, #0x2
	ldr r0, [sp, #0x48]
	ldr r6, [sp, #0x38]
	lsl r5, r0, #0x2
	ldr r0, _0201A3A8 ; =0x00003FE0
	add r7, r5, #0x0
	and r0, r5
	mul r6, r0
	mov r0, #0x1c
	and r7, r0
	ldr r0, [sp, #0x48]
	str r6, [sp, #0xf0]
	add r0, r0, #0x1
	lsl r6, r0, #0x2
	ldr r0, _0201A3A8 ; =0x00003FE0
	ldr r5, [sp, #0x38]
	and r0, r6
	mul r5, r0
	mov r0, #0x1c
	and r0, r6
	add r4, r1, #0x0
	str r5, [sp, #0xec]
	str r0, [sp, #0xe8]
_0201A09C:
	asr r5, r2, #0x1
	mov r0, #0x3
	and r5, r0
	ldr r0, [sp, #0x278]
	add r0, r0, r5
	ldr r5, _0201A3A8 ; =0x00003FE0
	and r5, r3
	add r5, r0, r5
	ldr r0, [sp, #0xf0]
	str r5, [sp, #0x2e8]
	add r0, r5, r0
	ldr r5, [sp, #0x1f0]
	add r6, r5, #0x0
	lsr r6, r4
	mov r5, #0xf
	and r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	beq _0201A0F0
	lsl r6, r2, #0x1f
	lsr r6, r6, #0x1d
	lsl r5, r6
	str r5, [sp, #0x2ec]
	ldrb r5, [r0, r7]
	mov r12, r5
	mov r5, #0xf0
	asr r5, r6
	mov r6, r12
	and r6, r5
	ldr r5, [sp, #0x2ec]
	orr r5, r6
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	strb r5, [r0, r7]
	ldr r0, [sp, #0x1f4]
	cmp r0, #0x0
	beq _0201A0F0
	ldr r6, [sp, #0x2e8]
	ldr r0, [sp, #0xec]
	add r6, r6, r0
	ldr r0, [sp, #0xe8]
	strb r5, [r0, r6]
_0201A0F0:
	ldr r0, [sp, #0x2e4]
	add r1, r1, #0x1
	add r4, r4, #0x4
	add r3, r3, #0x4
	add r2, r2, #0x1
	cmp r1, r0
	blt _0201A09C
_0201A0FE:
	ldr r0, [sp, #0x1f4]
	cmp r0, #0x0
	beq _0201A10C
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _0201A112
_0201A10C:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A112:
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x18]
	sub r1, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0201A044
	add sp, #0x1fc
	add sp, #0x118
	pop {r4-r7, pc}

	thumb_func_start FUN_0201A12C
FUN_0201A12C: ; 0x0201A12C
	lsl r1, r2, #0x2
	mul r1, r3
	ldr r3, [r5, #0x0]
	ldrb r2, [r5, #0x9]
	ldr r0, [sp, #0x0]
	ldr r3, [r3, #0x0]
	lsl r1, r1, #0x3
	bl FUN_02018848
	str r0, [sp, #0x1ec]
	cmp r4, #0x3
	bhi _0201A21E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201A150: ; jump table (using 16-bit offset)
	.short _0201A158 - _0201A150 - 2; case 0
	.short _0201A220 - _0201A150 - 2; case 1
	.short _0201A3CA - _0201A150 - 2; case 2
	.short _0201A56E - _0201A150 - 2; case 3
_0201A158:
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10c]
	mov r0, #0x0
	str r0, [sp, #0x1e8]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _0201A21E
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x108]
_0201A178:
	ldr r1, [sp, #0x10c]
	ldr r0, [sp, #0x1e8]
	mov r4, #0x0
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x310]
	ldr r0, [sp, #0x8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0x0
	ble _0201A1FC
	ble _0201A1FC
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x108]
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x100]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x104]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	ldr r2, [sp, #0x108]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0xfc]
	str r0, [sp, #0xf8]
_0201A1C4:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A3AC ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x104]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A1F0
	ldr r0, [sp, #0x100]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x310]
	cmp r0, #0x0
	beq _0201A1F0
	ldr r0, [sp, #0xfc]
	add r2, r3, r0
	ldr r0, [sp, #0xf8]
	strb r1, [r0, r2]
_0201A1F0:
	ldr r0, [sp, #0x8]
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r0
	blt _0201A1C4
_0201A1FC:
	ldr r0, [sp, #0x310]
	cmp r0, #0x0
	beq _0201A20A
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _0201A210
_0201A20A:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A210:
	ldr r0, [sp, #0x1e8]
	add r7, #0x8
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x1e8]
	cmp r1, r0
	blt _0201A178
_0201A21E:
	b _0201A8B6
_0201A220:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1e0]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x124]
	mov r0, #0x0
	str r0, [sp, #0x1e4]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _0201A2E6
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x120]
_0201A24A:
	ldr r1, [sp, #0x124]
	ldr r0, [sp, #0x1e4]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x30c]
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x1e0]
	ldr r2, [sp, #0x120]
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x118]
	ldr r0, [sp, #0x1e0]
	str r2, [sp, #0x11c]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	ldr r2, [sp, #0x120]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	mov r4, #0x0
	str r2, [sp, #0x114]
	str r0, [sp, #0x110]
_0201A28E:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A3AC ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x11c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A2BA
	ldr r0, [sp, #0x118]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x30c]
	cmp r0, #0x0
	beq _0201A2BA
	ldr r0, [sp, #0x114]
	add r2, r3, r0
	ldr r0, [sp, #0x110]
	strb r1, [r0, r2]
_0201A2BA:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, #0x8
	blt _0201A28E
	ldr r0, [sp, #0x30c]
	cmp r0, #0x0
	beq _0201A2D2
	ldr r0, [sp, #0x1e0]
	add r0, r0, #0x2
	str r0, [sp, #0x1e0]
	b _0201A2D8
_0201A2D2:
	ldr r0, [sp, #0x1e0]
	add r0, r0, #0x1
	str r0, [sp, #0x1e0]
_0201A2D8:
	ldr r0, [sp, #0x1e4]
	add r7, #0x8
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x1e4]
	cmp r1, r0
	blt _0201A24A
_0201A2E6:
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x308]
	add r0, #0x40
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x13c]
	mov r0, #0x0
	str r0, [sp, #0x1dc]
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _0201A3C8
	ldr r0, [sp, #0x5c]
	mov r1, #0x7
	add r0, #0x8
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x138]
_0201A312:
	ldr r1, [sp, #0x13c]
	ldr r0, [sp, #0x1dc]
	ldr r7, [sp, #0x8]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #0x8
	mov r4, #0x0
	str r0, [sp, #0x1d8]
	ldr r5, [sp, #0x5c]
	cmp r7, #0x0
	ble _0201A398
	ble _0201A398
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x138]
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x130]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x134]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A3AC ; =0x00007FC0
	ldr r2, [sp, #0x138]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0x12c]
	str r0, [sp, #0x128]
_0201A360:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A3AC ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x134]
	add r2, r3, r0
	ldr r0, [sp, #0x308]
	ldrb r1, [r0, r4]
	cmp r1, #0x0
	beq _0201A38E
	ldr r0, [sp, #0x130]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1d8]
	cmp r0, #0x0
	beq _0201A38E
	ldr r0, [sp, #0x12c]
	add r2, r3, r0
	ldr r0, [sp, #0x128]
	strb r1, [r0, r2]
_0201A38E:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r7
	blt _0201A360
_0201A398:
	ldr r0, [sp, #0x1d8]
	cmp r0, #0x0
	beq _0201A3B0
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _0201A3B6
	nop
_0201A3A8: .word 0x00003FE0
_0201A3AC: .word 0x00007FC0
_0201A3B0:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A3B6:
	ldr r0, [sp, #0x308]
	add r0, #0x8
	str r0, [sp, #0x308]
	ldr r0, [sp, #0x1dc]
	add r1, r0, #0x1
	ldr r0, [sp, #0x4]
	str r1, [sp, #0x1dc]
	cmp r1, r0
	blt _0201A312
_0201A3C8:
	b _0201A8B6
_0201A3CA:
	ldr r0, [sp, #0x48]
	mov r1, #0x7
	str r0, [sp, #0x1d0]
	mov r0, #0x0
	str r0, [sp, #0x1d4]
	ldr r0, [sp, #0x330]
	ldr r7, [sp, #0x1ec]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x58]
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x30]
_0201A3E8:
	ldr r1, [sp, #0x150]
	ldr r0, [sp, #0x1d4]
	mov r4, #0x0
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x304]
	ldr r0, [sp, #0x8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0x0
	ble _0201A46C
	ble _0201A46C
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x1d0]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x148]
	ldr r0, [sp, #0x1d0]
	str r2, [sp, #0x14c]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0x144]
	str r0, [sp, #0x140]
_0201A434:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A748 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x14c]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A460
	ldr r0, [sp, #0x148]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x304]
	cmp r0, #0x0
	beq _0201A460
	ldr r0, [sp, #0x144]
	add r2, r3, r0
	ldr r0, [sp, #0x140]
	strb r1, [r0, r2]
_0201A460:
	ldr r0, [sp, #0x8]
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r0
	blt _0201A434
_0201A46C:
	ldr r0, [sp, #0x304]
	cmp r0, #0x0
	beq _0201A47A
	ldr r0, [sp, #0x1d0]
	add r0, r0, #0x2
	str r0, [sp, #0x1d0]
	b _0201A480
_0201A47A:
	ldr r0, [sp, #0x1d0]
	add r0, r0, #0x1
	str r0, [sp, #0x1d0]
_0201A480:
	ldr r0, [sp, #0x1d4]
	add r7, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0x1d4]
	cmp r0, #0x8
	blt _0201A3E8
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #0x8
	str r0, [sp, #0x48]
	add r7, #0x80
	mov r0, #0x0
	mov r2, #0x1
_0201A49A:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201A4A8
	ldr r1, [sp, #0x48]
	add r1, r1, #0x1
	str r1, [sp, #0x48]
_0201A4A8:
	add r0, r0, #0x1
	cmp r0, #0x8
	blt _0201A49A
	ldr r0, [sp, #0x330]
	asr r0, r0, #0x8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x164]
	mov r0, #0x0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	ble _0201A56C
_0201A4C4:
	ldr r1, [sp, #0x164]
	ldr r0, [sp, #0x14]
	mov r4, #0x0
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x300]
	ldr r0, [sp, #0x8]
	ldr r5, [sp, #0x5c]
	cmp r0, #0x0
	ble _0201A548
	ble _0201A548
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x30]
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x15c]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x160]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	ldr r2, [sp, #0x30]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0x158]
	str r0, [sp, #0x154]
_0201A510:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A748 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x160]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A53C
	ldr r0, [sp, #0x15c]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x300]
	cmp r0, #0x0
	beq _0201A53C
	ldr r0, [sp, #0x158]
	add r2, r3, r0
	ldr r0, [sp, #0x154]
	strb r1, [r0, r2]
_0201A53C:
	ldr r0, [sp, #0x8]
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r0
	blt _0201A510
_0201A548:
	ldr r0, [sp, #0x300]
	cmp r0, #0x0
	beq _0201A556
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _0201A55C
_0201A556:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A55C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x1
	sub r1, #0x8
	add r7, #0x8
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0201A4C4
_0201A56C:
	b _0201A8B6
_0201A56E:
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	str r0, [sp, #0x1c8]
	ldr r0, [sp, #0x330]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x0
	str r0, [sp, #0x1cc]
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x58]
	mov r1, #0x7
	and r1, r0
	add r0, r0, r1
	asr r0, r0, #0x3
	str r0, [sp, #0x28]
_0201A590:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1cc]
	ldr r5, [sp, #0x5c]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2fc]
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x1c8]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x170]
	ldr r0, [sp, #0x1c8]
	str r2, [sp, #0x174]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	mov r4, #0x0
	str r6, [sp, #0x24]
	str r2, [sp, #0x16c]
	str r0, [sp, #0x168]
_0201A5D6:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A748 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x174]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A602
	ldr r0, [sp, #0x170]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2fc]
	cmp r0, #0x0
	beq _0201A602
	ldr r0, [sp, #0x16c]
	add r2, r3, r0
	ldr r0, [sp, #0x168]
	strb r1, [r0, r2]
_0201A602:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, #0x8
	blt _0201A5D6
	ldr r0, [sp, #0x2fc]
	cmp r0, #0x0
	beq _0201A61A
	ldr r0, [sp, #0x1c8]
	add r0, r0, #0x2
	str r0, [sp, #0x1c8]
	b _0201A620
_0201A61A:
	ldr r0, [sp, #0x1c8]
	add r0, r0, #0x1
	str r0, [sp, #0x1c8]
_0201A620:
	ldr r0, [sp, #0x1cc]
	add r7, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0x1cc]
	cmp r0, #0x8
	blt _0201A590
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x2f8]
	add r0, #0x40
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x1c0]
	mov r0, #0x0
	str r0, [sp, #0x1c4]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x188]
	add r0, #0x8
	str r0, [sp, #0x188]
_0201A644:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c4]
	ldr r7, [sp, #0x8]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #0x8
	mov r4, #0x0
	str r0, [sp, #0x1bc]
	ldr r5, [sp, #0x188]
	cmp r7, #0x0
	ble _0201A6CA
	ble _0201A6CA
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x1c0]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x180]
	ldr r0, [sp, #0x1c0]
	str r2, [sp, #0x184]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0x17c]
	str r0, [sp, #0x178]
_0201A692:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A748 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x184]
	add r2, r3, r0
	ldr r0, [sp, #0x2f8]
	ldrb r1, [r0, r4]
	cmp r1, #0x0
	beq _0201A6C0
	ldr r0, [sp, #0x180]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1bc]
	cmp r0, #0x0
	beq _0201A6C0
	ldr r0, [sp, #0x17c]
	add r2, r3, r0
	ldr r0, [sp, #0x178]
	strb r1, [r0, r2]
_0201A6C0:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r7
	blt _0201A692
_0201A6CA:
	ldr r0, [sp, #0x1bc]
	cmp r0, #0x0
	beq _0201A6D8
	ldr r0, [sp, #0x1c0]
	add r0, r0, #0x2
	str r0, [sp, #0x1c0]
	b _0201A6DE
_0201A6D8:
	ldr r0, [sp, #0x1c0]
	add r0, r0, #0x1
	str r0, [sp, #0x1c0]
_0201A6DE:
	ldr r0, [sp, #0x2f8]
	add r0, #0x8
	str r0, [sp, #0x2f8]
	ldr r0, [sp, #0x1c4]
	add r0, r0, #0x1
	str r0, [sp, #0x1c4]
	cmp r0, #0x8
	blt _0201A644
	ldr r0, [sp, #0x48]
	ldr r7, [sp, #0x1ec]
	add r0, #0x8
	add r7, #0x80
	str r0, [sp, #0x48]
	str r0, [sp, #0x1b8]
	mov r0, #0x0
	mov r2, #0x1
_0201A6FE:
	ldr r1, [sp, #0x330]
	asr r1, r0
	tst r1, r2
	beq _0201A70C
	ldr r1, [sp, #0x1b8]
	add r1, r1, #0x1
	str r1, [sp, #0x1b8]
_0201A70C:
	add r0, r0, #0x1
	cmp r0, #0x8
	blt _0201A6FE
	ldr r0, [sp, #0x330]
	asr r0, r0, #0x8
	str r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x19c]
	mov r0, #0x0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	ble _0201A7CE
_0201A72A:
	ldr r1, [sp, #0x19c]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x28]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x1b8]
	mov r3, #0x38
	lsl r1, r0, #0x3
	ldr r0, _0201A748 ; =0x00007FC0
	b _0201A74C
	nop
_0201A748: .word 0x00007FC0
_0201A74C:
	ldr r5, [sp, #0x5c]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x194]
	ldr r0, [sp, #0x1b8]
	str r2, [sp, #0x198]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A8C4 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	ldr r6, [sp, #0x24]
	mov r4, #0x0
	str r2, [sp, #0x190]
	str r0, [sp, #0x18c]
_0201A774:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A8C4 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x198]
	ldrb r1, [r7, r4]
	add r2, r3, r0
	cmp r1, #0x0
	beq _0201A7A0
	ldr r0, [sp, #0x194]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0x0
	beq _0201A7A0
	ldr r0, [sp, #0x190]
	add r2, r3, r0
	ldr r0, [sp, #0x18c]
	strb r1, [r0, r2]
_0201A7A0:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, #0x8
	blt _0201A774
	ldr r0, [sp, #0x2f4]
	cmp r0, #0x0
	beq _0201A7B8
	ldr r0, [sp, #0x1b8]
	add r0, r0, #0x2
	str r0, [sp, #0x1b8]
	b _0201A7BE
_0201A7B8:
	ldr r0, [sp, #0x1b8]
	add r0, r0, #0x1
	str r0, [sp, #0x1b8]
_0201A7BE:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x4]
	add r0, r0, #0x1
	sub r1, #0x8
	add r7, #0x8
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0201A72A
_0201A7CE:
	ldr r0, [sp, #0x1ec]
	mov r2, #0x0
	str r0, [sp, #0x2f0]
	add r0, #0xc0
	str r0, [sp, #0x2f0]
	mov r1, #0x1
_0201A7DA:
	ldr r0, [sp, #0x330]
	asr r0, r2
	tst r0, r1
	beq _0201A7E8
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A7E8:
	add r2, r2, #0x1
	cmp r2, #0x8
	blt _0201A7DA
	ldr r0, [sp, #0x44]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1b0]
	mov r0, #0x0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4]
	sub r0, #0x8
	cmp r0, #0x0
	ble _0201A8B6
	ldr r0, [sp, #0x5c]
	add r0, #0x8
	str r0, [sp, #0x5c]
_0201A808:
	ldr r1, [sp, #0x1b0]
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x8]
	asr r1, r0
	mov r0, #0x1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	sub r7, #0x8
	mov r4, #0x0
	str r0, [sp, #0x1b4]
	ldr r5, [sp, #0x5c]
	cmp r7, #0x0
	ble _0201A88E
	ble _0201A88E
	add r0, r5, #0x0
	lsl r6, r0, #0x3
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x28]
	lsl r1, r0, #0x3
	ldr r0, _0201A8C4 ; =0x00007FC0
	mov r3, #0x38
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r0, [sp, #0x1a8]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x1ac]
	add r0, r0, #0x1
	lsl r1, r0, #0x3
	ldr r0, _0201A8C4 ; =0x00007FC0
	ldr r2, [sp, #0x28]
	and r0, r1
	mul r2, r0
	add r0, r1, #0x0
	and r0, r3
	str r2, [sp, #0x1a4]
	str r0, [sp, #0x1a0]
_0201A856:
	mov r0, #0x7
	add r1, r5, #0x0
	and r1, r0
	ldr r0, [sp, #0x278]
	add r1, r0, r1
	ldr r0, _0201A8C4 ; =0x00007FC0
	and r0, r6
	add r3, r1, r0
	ldr r0, [sp, #0x1ac]
	add r2, r3, r0
	ldr r0, [sp, #0x2f0]
	ldrb r1, [r0, r4]
	cmp r1, #0x0
	beq _0201A884
	ldr r0, [sp, #0x1a8]
	strb r1, [r2, r0]
	ldr r0, [sp, #0x1b4]
	cmp r0, #0x0
	beq _0201A884
	ldr r0, [sp, #0x1a4]
	add r2, r3, r0
	ldr r0, [sp, #0x1a0]
	strb r1, [r0, r2]
_0201A884:
	add r4, r4, #0x1
	add r6, #0x8
	add r5, r5, #0x1
	cmp r4, r7
	blt _0201A856
_0201A88E:
	ldr r0, [sp, #0x1b4]
	cmp r0, #0x0
	beq _0201A89C
	ldr r0, [sp, #0x48]
	add r0, r0, #0x2
	str r0, [sp, #0x48]
	b _0201A8A2
_0201A89C:
	ldr r0, [sp, #0x48]
	add r0, r0, #0x1
	str r0, [sp, #0x48]
_0201A8A2:
	ldr r0, [sp, #0x2f0]
	ldr r1, [sp, #0x4]
	add r0, #0x8
	str r0, [sp, #0x2f0]
	ldr r0, [sp, #0xc]
	sub r1, #0x8
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0201A808
_0201A8B6:
	ldr r0, [sp, #0x1ec]
	bl FUN_02016A18

	thumb_func_start FUN_0201A8BC
FUN_0201A8BC: ; 0x0201A8BC
	add sp, #0x1fc
	add sp, #0x118
	pop {r4-r7, pc}
	nop
_0201A8C4: .word 0x00007FC0

	thumb_func_start FUN_0201A8C8
FUN_0201A8C8: ; 0x0201A8C8
	push {r4-r6, lr}
	ldrb r6, [r0, #0x4]
	mov r5, #0x2c
	ldr r4, [r0, #0x0]
	mul r5, r6
	add r4, r4, r5
	ldrb r4, [r4, #0x1e]
	cmp r4, #0x0
	bne _0201A8E0
	bl FUN_0201A8E8
	pop {r4-r6, pc}
_0201A8E0:
	bl FUN_0201A9D4
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201A8E8
FUN_0201A8E8: ; 0x0201A8E8
	push {r3-r7, lr}
	sub sp, #0x10
	add r6, r3, #0x0
	add r4, r0, #0x0
	add r0, r1, #0x0
	lsl r3, r6, #0x18
	lsl r1, r6, #0x10
	str r2, [sp, #0x0]
	orr r1, r3
	lsl r5, r6, #0x8
	orr r1, r5
	orr r1, r6
	str r1, [sp, #0x4]
	ldrb r1, [r4, #0x7]
	ldrb r3, [r4, #0x8]
	ldr r2, [r4, #0xc]
	str r1, [sp, #0x8]
	mul r1, r3
	lsl r1, r1, #0x5
	str r1, [sp, #0xc]
	cmp r0, #0x3
	bhi _0201A9CE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0201A920: ; jump table (using 16-bit offset)
	.short _0201A928 - _0201A920 - 2; case 0
	.short _0201A976 - _0201A920 - 2; case 1
	.short _0201A9CE - _0201A920 - 2; case 2
	.short _0201A9CE - _0201A920 - 2; case 3
_0201A928:
	add r0, r1, #0x0
	mov r7, #0x0
	cmp r0, #0x0
	ble _0201A9CE
	mov r0, #0x7
	mov lr, r0
_0201A934:
	ldr r3, [sp, #0x0]
	mov r4, #0x0
	add r5, r7, #0x0
_0201A93A:
	mov r0, #0x7
	add r6, r3, #0x0
	and r6, r0
	add r1, r3, #0x0
	mov r0, lr
	bic r1, r0
	ldr r0, [sp, #0x8]
	mul r1, r0
	add r0, r6, #0x0
	orr r0, r1
	lsl r0, r0, #0x2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201A95C
	ldr r0, [r2, r1]
	b _0201A95E
_0201A95C:
	ldr r0, [sp, #0x4]
_0201A95E:
	add r4, r4, #0x1
	str r0, [r2, r5]
	add r3, r3, #0x1
	add r5, r5, #0x4
	cmp r4, #0x8
	blt _0201A93A
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201A934
	add sp, #0x10
	pop {r3-r7, pc}
_0201A976:
	add r0, r1, #0x0
	sub r0, r0, #0x4
	add r2, r2, r0
	add r0, r1, #0x0
	mov r7, #0x0
	cmp r0, #0x0
	ble _0201A9CE
	mov r0, #0x7
	mov r12, r0
_0201A988:
	ldr r4, [sp, #0x0]
	mov r5, #0x0
	add r3, r7, #0x0
_0201A98E:
	mov r0, #0x7
	add r6, r4, #0x0
	and r6, r0
	add r1, r4, #0x0
	mov r0, r12
	bic r1, r0
	ldr r0, [sp, #0x8]
	mul r1, r0
	add r0, r6, #0x0
	orr r0, r1
	lsl r0, r0, #0x2
	add r1, r7, r0
	ldr r0, [sp, #0xc]
	cmp r1, r0
	bge _0201A9B6
	sub r0, r2, r1
	ldr r1, [r0, #0x0]
	sub r0, r2, r3
	str r1, [r0, #0x0]
	b _0201A9BC
_0201A9B6:
	ldr r0, [sp, #0x4]
	sub r1, r2, r3
	str r0, [r1, #0x0]
_0201A9BC:
	add r5, r5, #0x1
	add r4, r4, #0x1
	add r3, r3, #0x4
	cmp r5, #0x8
	blt _0201A98E
	ldr r0, [sp, #0xc]
	add r7, #0x20
	cmp r7, r0
	blt _0201A988
_0201A9CE:
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201A9D4
FUN_0201A9D4: ; 0x0201A9D4
	push {r3-r7, lr}
	sub sp, #0x20
	add r6, r3, #0x0
	add r4, r0, #0x0
	str r2, [sp, #0x0]
	lsl r2, r6, #0x18
	lsl r0, r6, #0x10
	orr r0, r2
	ldrb r2, [r4, #0x7]
	ldr r3, [r4, #0xc]
	lsl r5, r6, #0x8
	orr r0, r5
	ldrb r4, [r4, #0x8]
	str r2, [sp, #0x10]
	orr r0, r6
	mul r2, r4
	lsl r2, r2, #0x6
	str r2, [sp, #0x1c]
	cmp r1, #0x3
	bls _0201A9FE
	b _0201AB04
_0201A9FE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201AA0A: ; jump table (using 16-bit offset)
	.short _0201AA12 - _0201AA0A - 2; case 0
	.short _0201AA80 - _0201AA0A - 2; case 1
	.short _0201AB04 - _0201AA0A - 2; case 2
	.short _0201AB04 - _0201AA0A - 2; case 3
_0201AA12:
	mov r1, #0x0
	str r1, [sp, #0xc]
	add r1, r2, #0x0
	cmp r1, #0x0
	ble _0201AB04
	add r1, r1, #0x4
	str r1, [sp, #0x14]
	mov r1, #0x7
	mov lr, r1
_0201AA24:
	ldr r4, [sp, #0x0]
	ldr r5, [sp, #0xc]
	mov r7, #0x0
_0201AA2A:
	mov r1, #0x7
	add r6, r4, #0x0
	and r6, r1
	add r2, r4, #0x0
	mov r1, lr
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0x0
	orr r1, r2
	lsl r2, r1, #0x3
	ldr r1, [sp, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bge _0201AA50
	ldr r2, [r3, r1]
	str r2, [r3, r5]
	b _0201AA52
_0201AA50:
	str r0, [r3, r5]
_0201AA52:
	add r2, r1, #0x4
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bge _0201AA62
	ldr r2, [r3, r2]
	add r1, r5, #0x4
	str r2, [r3, r1]
	b _0201AA66
_0201AA62:
	add r1, r5, #0x4
	str r0, [r3, r1]
_0201AA66:
	add r7, r7, #0x1
	add r4, r4, #0x1
	add r5, #0x8
	cmp r7, #0x8
	blt _0201AA2A
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #0xc]
	cmp r2, r1
	blt _0201AA24
	add sp, #0x20
	pop {r3-r7, pc}
_0201AA80:
	add r1, r2, #0x0
	sub r1, #0x8
	add r3, r3, r1
	mov r1, #0x0
	str r1, [sp, #0x8]
	add r1, r2, #0x0
	cmp r1, #0x0
	ble _0201AB04
_0201AA90:
	mov r1, #0x0
	str r1, [sp, #0x4]
	ldr r1, [sp, #0x1c]
	ldr r5, [sp, #0x0]
	sub r1, r1, #0x4
	str r1, [sp, #0x18]
	mov r1, #0x7
	ldr r4, [sp, #0x8]
	mov r12, r1
_0201AAA2:
	mov r1, #0x7
	add r6, r5, #0x0
	and r6, r1
	add r2, r5, #0x0
	mov r1, r12
	bic r2, r1
	ldr r1, [sp, #0x10]
	mul r2, r1
	add r1, r6, #0x0
	orr r1, r2
	lsl r2, r1, #0x3
	ldr r1, [sp, #0x8]
	add r6, r1, r2
	ldr r1, [sp, #0x1c]
	cmp r6, r1
	bge _0201AACC
	sub r1, r3, r6
	ldr r2, [r1, #0x0]
	sub r1, r3, r4
	str r2, [r1, #0x0]
	b _0201AAD0
_0201AACC:
	sub r1, r3, r4
	str r0, [r1, #0x0]
_0201AAD0:
	ldr r1, [sp, #0x18]
	sub r2, r6, #0x4
	cmp r2, r1
	bge _0201AAE4
	sub r1, r3, r2
	sub r2, r4, #0x4
	ldr r1, [r1, #0x0]
	sub r2, r3, r2
	str r1, [r2, #0x0]
	b _0201AAEA
_0201AAE4:
	sub r1, r4, #0x4
	sub r1, r3, r1
	str r0, [r1, #0x0]
_0201AAEA:
	ldr r1, [sp, #0x4]
	add r5, r5, #0x1
	add r1, r1, #0x1
	add r4, #0x8
	str r1, [sp, #0x4]
	cmp r1, #0x8
	blt _0201AAA2
	ldr r2, [sp, #0x8]
	ldr r1, [sp, #0x1c]
	add r2, #0x40
	str r2, [sp, #0x8]
	cmp r2, r1
	blt _0201AA90
_0201AB04:
	add sp, #0x20
	pop {r3-r7, pc}

	thumb_func_start FUN_0201AB08
FUN_0201AB08: ; 0x0201AB08
	ldrb r0, [r0, #0x4]
	bx lr

	thumb_func_start FUN_0201AB0C
FUN_0201AB0C: ; 0x0201AB0C
	ldrb r0, [r0, #0x7]
	bx lr

	thumb_func_start FUN_0201AB10
FUN_0201AB10: ; 0x0201AB10
	ldrb r0, [r0, #0x8]
	bx lr

	thumb_func_start FUN_0201AB14
FUN_0201AB14: ; 0x0201AB14
	ldrb r0, [r0, #0x5]
	bx lr

	thumb_func_start FUN_0201AB18
FUN_0201AB18: ; 0x0201AB18
	ldrb r0, [r0, #0x6]
	bx lr

	thumb_func_start FUN_0201AB1C
FUN_0201AB1C: ; 0x0201AB1C
	strb r1, [r0, #0x5]
	bx lr

	thumb_func_start FUN_0201AB20
FUN_0201AB20: ; 0x0201AB20
	strb r1, [r0, #0x6]
	bx lr

	thumb_func_start FUN_0201AB24
FUN_0201AB24: ; 0x0201AB24
	strb r1, [r0, #0x9]
	bx lr

	thumb_func_start FUN_0201AB28
FUN_0201AB28: ; 0x0201AB28
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r0, r1, #0x0
	add r1, r2, #0x0
	bl FUN_020161A4
	add r1, sp, #0x0
	str r0, [r4, #0x0]
	blx FUN_020B0030
	ldr r0, [sp, #0x0]
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_0201AB44
FUN_0201AB44: ; 0x0201AB44
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r0, r1, #0x0
	add r1, r2, #0x0
	bl FUN_020161A4
	add r1, sp, #0x0
	str r0, [r4, #0x0]
	blx FUN_020B0138
	ldr r0, [sp, #0x0]
	add sp, #0x4
	pop {r3-r4, pc}

	thumb_func_start FUN_0201AB60
FUN_0201AB60: ; 0x0201AB60
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_0201AC78
	add r0, r4, #0x0
	bl FUN_0201AB78
	mov r0, #0x0
	strh r0, [r4, #0x4]
	strh r0, [r4, #0x6]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201AB78
FUN_0201AB78: ; 0x0201AB78
	push {r4, lr}
	add r4, r0, #0x0
	ldrh r1, [r4, #0x6]
	mov r0, #0x1
	tst r0, r1
	beq _0201AB92
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x8]
	ldr r3, [r4, #0xc]
	mov r0, #0x0
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201AB92:
	ldrh r1, [r4, #0x6]
	mov r0, #0x2
	tst r0, r1
	beq _0201ABA8
	ldr r2, [r4, #0x3c]
	ldr r1, [r4, #0x34]
	ldr r3, [r4, #0x38]
	mov r0, #0x1
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201ABA8:
	ldrh r1, [r4, #0x6]
	mov r0, #0x4
	tst r0, r1
	beq _0201ABBE
	ldr r2, [r4, #0x68]
	ldr r1, [r4, #0x60]
	ldr r3, [r4, #0x64]
	mov r0, #0x2
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201ABBE:
	ldrh r1, [r4, #0x6]
	mov r0, #0x8
	tst r0, r1
	beq _0201ABE0
	add r2, r4, #0x0
	add r1, r4, #0x0
	add r2, #0x94
	add r3, r4, #0x0
	add r1, #0x8c
	ldr r2, [r2, #0x0]
	add r3, #0x90
	ldr r1, [r1, #0x0]
	ldr r3, [r3, #0x0]
	mov r0, #0x3
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201ABE0:
	ldrh r1, [r4, #0x6]
	mov r0, #0x10
	tst r0, r1
	beq _0201AC02
	add r2, r4, #0x0
	add r1, r4, #0x0
	add r2, #0xc0
	add r3, r4, #0x0
	add r1, #0xb8
	ldr r2, [r2, #0x0]
	add r3, #0xbc
	ldr r1, [r1, #0x0]
	ldr r3, [r3, #0x0]
	mov r0, #0x4
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201AC02:
	ldrh r1, [r4, #0x6]
	mov r0, #0x20
	tst r0, r1
	beq _0201AC24
	add r2, r4, #0x0
	add r1, r4, #0x0
	add r2, #0xec
	add r3, r4, #0x0
	add r1, #0xe4
	ldr r2, [r2, #0x0]
	add r3, #0xe8
	ldr r1, [r1, #0x0]
	ldr r3, [r3, #0x0]
	mov r0, #0x5
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201AC24:
	ldrh r0, [r4, #0x6]
	mov r3, #0x40
	tst r0, r3
	beq _0201AC44
	add r2, r3, #0x0
	add r1, r3, #0x0
	add r2, #0xd8
	add r1, #0xd0
	ldr r2, [r4, r2]
	add r3, #0xd4
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #0x6
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201AC44:
	ldrh r0, [r4, #0x6]
	mov r3, #0x80
	tst r0, r3
	beq _0201AC64
	add r2, r3, #0x0
	add r1, r3, #0x0
	add r2, #0xc4
	add r1, #0xbc
	ldr r2, [r4, r2]
	add r3, #0xc0
	ldr r1, [r4, r1]
	ldr r3, [r4, r3]
	mov r0, #0x7
	lsl r2, r2, #0x1
	bl FUN_02017D68
_0201AC64:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201AC68
FUN_0201AC68: ; 0x0201AC68
	ldrh r3, [r0, #0x6]
	mov r2, #0x1
	lsl r2, r1
	add r1, r3, #0x0
	orr r1, r2
	strh r1, [r0, #0x6]
	bx lr
	.balign 4

	thumb_func_start FUN_0201AC78
FUN_0201AC78: ; 0x0201AC78
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0x0
	ldrh r1, [r4, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201AC9E
	ldr r1, [r4, #0x14]
	ldr r0, _0201AEB0 ; =0x000001FF
	add r2, r1, #0x0
	ldr r1, [r4, #0x18]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _0201AEB4 ; =0x04000010
	str r1, [r0, #0x0]
_0201AC9E:
	ldrh r1, [r4, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201ACBE
	ldr r1, [r4, #0x40]
	ldr r0, _0201AEB0 ; =0x000001FF
	add r2, r1, #0x0
	ldr r1, [r4, #0x44]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _0201AEB8 ; =0x04000014
	str r1, [r0, #0x0]
_0201ACBE:
	ldrh r1, [r4, #0x4]
	mov r0, #0x4
	tst r0, r1
	beq _0201AD1E
	add r0, r4, #0x0
	add r0, #0x74
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201ACEA
	ldr r1, [r4, #0x6c]
	ldr r0, _0201AEB0 ; =0x000001FF
	add r2, r1, #0x0
	ldr r1, [r4, #0x70]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _0201AEBC ; =0x04000018
	str r1, [r0, #0x0]
	b _0201AD1E
_0201ACEA:
	mov r0, #0x2
	str r0, [sp, #0x0]
	add r1, r4, #0x0
	add r1, #0x78
	add r3, r4, #0x0
	add r3, #0x80
	ldrh r1, [r1, #0x0]
	ldr r2, [r4, #0x7c]
	ldr r3, [r3, #0x0]
	add r0, sp, #0x38
	bl FUN_0201BB74
	ldr r0, [r4, #0x6c]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x70]
	add r3, r4, #0x0
	str r0, [sp, #0x4]
	add r2, #0x84
	add r3, #0x88
	ldr r0, _0201AEC0 ; =0x04000020
	ldr r2, [r2, #0x0]
	ldr r3, [r3, #0x0]
	add r1, sp, #0x38
	blx FUN_020C74F8
_0201AD1E:
	ldrh r1, [r4, #0x4]
	mov r0, #0x8
	tst r0, r1
	beq _0201AD8E
	add r0, r4, #0x0
	add r0, #0xa0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201AD4E
	add r0, r4, #0x0
	add r2, r4, #0x0
	add r0, #0x98
	add r2, #0x9c
	ldr r2, [r2, #0x0]
	ldr r0, [r0, #0x0]
	ldr r1, _0201AEB0 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201AEC4 ; =0x0400001C
	str r1, [r0, #0x0]
	b _0201AD8E
_0201AD4E:
	mov r0, #0x2
	add r1, r4, #0x0
	str r0, [sp, #0x0]
	add r1, #0xa4
	add r2, r4, #0x0
	add r3, r4, #0x0
	add r2, #0xa8
	add r3, #0xac
	ldrh r1, [r1, #0x0]
	ldr r2, [r2, #0x0]
	ldr r3, [r3, #0x0]
	add r0, sp, #0x28
	bl FUN_0201BB74
	add r0, r4, #0x0
	add r0, #0x98
	ldr r0, [r0, #0x0]
	add r2, r4, #0x0
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	add r0, #0x9c
	ldr r0, [r0, #0x0]
	add r3, r4, #0x0
	str r0, [sp, #0x4]
	add r2, #0xb0
	add r3, #0xb4
	ldr r0, _0201AEC8 ; =0x04000030
	ldr r2, [r2, #0x0]
	ldr r3, [r3, #0x0]
	add r1, sp, #0x28
	blx FUN_020C74F8
_0201AD8E:
	ldrh r1, [r4, #0x4]
	mov r0, #0x10
	tst r0, r1
	beq _0201ADB2
	add r0, r4, #0x0
	add r2, r4, #0x0
	add r0, #0xc4
	add r2, #0xc8
	ldr r2, [r2, #0x0]
	ldr r0, [r0, #0x0]
	ldr r1, _0201AEB0 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201AECC ; =0x04001010
	str r1, [r0, #0x0]
_0201ADB2:
	ldrh r1, [r4, #0x4]
	mov r0, #0x20
	tst r0, r1
	beq _0201ADD6
	add r0, r4, #0x0
	add r2, r4, #0x0
	add r0, #0xf0
	add r2, #0xf4
	ldr r2, [r2, #0x0]
	ldr r0, [r0, #0x0]
	ldr r1, _0201AEB0 ; =0x000001FF
	lsl r2, r2, #0x10
	and r0, r1
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201AED0 ; =0x04001014
	str r1, [r0, #0x0]
_0201ADD6:
	ldrh r0, [r4, #0x4]
	mov r3, #0x40
	tst r0, r3
	beq _0201AE3E
	add r0, r3, #0x0
	add r0, #0xe4
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	bne _0201AE04
	ldr r1, _0201AEB0 ; =0x000001FF
	add r3, #0xdc
	add r2, r1, #0x0
	sub r2, #0xdf
	ldr r0, [r4, r3]
	ldr r2, [r4, r2]
	and r0, r1
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	and r1, r2
	orr r1, r0
	ldr r0, _0201AED4 ; =0x04001018
	str r1, [r0, #0x0]
	b _0201AE3E
_0201AE04:
	mov r0, #0x2
	add r1, r3, #0x0
	add r2, r3, #0x0
	str r0, [sp, #0x0]
	add r1, #0xe8
	add r2, #0xec
	add r3, #0xf0
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #0x18
	bl FUN_0201BB74
	mov r3, #0x47
	lsl r3, r3, #0x2
	ldr r0, [r4, r3]
	add r2, r3, #0x0
	str r0, [sp, #0x0]
	add r0, r3, #0x4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #0x4]
	add r3, #0x1c
	ldr r0, _0201AED8 ; =0x04001020
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #0x18
	blx FUN_020C74F8
_0201AE3E:
	ldrh r0, [r4, #0x4]
	mov r3, #0x80
	tst r0, r3
	beq _0201AEAC
	add r0, r3, #0x0
	add r0, #0xd0
	ldrb r0, [r4, r0]
	cmp r0, #0x0
	bne _0201AE72
	add r3, #0xc8
	ldr r1, [r4, r3]
	ldr r0, _0201AEB0 ; =0x000001FF
	add r2, r1, #0x0
	add r1, r0, #0x0
	sub r1, #0xb3
	ldr r1, [r4, r1]
	and r2, r0
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	ldr r0, _0201AEDC ; =0x0400101C
	add sp, #0x48
	str r1, [r0, #0x0]
	pop {r4, pc}
_0201AE72:
	mov r0, #0x2
	add r1, r3, #0x0
	add r2, r3, #0x0
	str r0, [sp, #0x0]
	add r1, #0xd4
	add r2, #0xd8
	add r3, #0xdc
	ldrh r1, [r4, r1]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r0, sp, #0x8
	bl FUN_0201BB74
	mov r3, #0x52
	lsl r3, r3, #0x2
	ldr r0, [r4, r3]
	add r2, r3, #0x0
	str r0, [sp, #0x0]
	add r0, r3, #0x4
	ldr r0, [r4, r0]
	add r2, #0x18
	str r0, [sp, #0x4]
	add r3, #0x1c
	ldr r0, _0201AEE0 ; =0x04001030
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	add r1, sp, #0x8
	blx FUN_020C74F8
_0201AEAC:
	add sp, #0x48
	pop {r4, pc}
	.balign 4
_0201AEB0: .word 0x000001FF
_0201AEB4: .word 0x04000010
_0201AEB8: .word 0x04000014
_0201AEBC: .word 0x04000018
_0201AEC0: .word 0x04000020
_0201AEC4: .word 0x0400001C
_0201AEC8: .word 0x04000030
_0201AECC: .word 0x04001010
_0201AED0: .word 0x04001014
_0201AED4: .word 0x04001018
_0201AED8: .word 0x04001020
_0201AEDC: .word 0x0400101C
_0201AEE0: .word 0x04001030

	thumb_func_start FUN_0201AEE4
FUN_0201AEE4: ; 0x0201AEE4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	mov r0, #0x2c
	add r1, #0x8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0x0
	add r2, r3, #0x0
	bl FUN_02017B8C
	mov r0, #0x1
	ldrh r1, [r5, #0x4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #0x4]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201AF08
FUN_0201AF08: ; 0x0201AF08
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	mov r0, #0x2c
	add r1, #0x8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0x0
	add r2, r3, #0x0
	bl FUN_0201AF2C
	mov r0, #0x1
	ldrh r1, [r5, #0x4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #0x4]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201AF2C
FUN_0201AF2C: ; 0x0201AF2C
	cmp r1, #0x0
	beq _0201AF3A
	cmp r1, #0x1
	beq _0201AF3E
	cmp r1, #0x2
	beq _0201AF46
	bx lr
_0201AF3A:
	strh r2, [r0, #0x18]
	bx lr
_0201AF3E:
	ldrh r1, [r0, #0x18]
	add r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
_0201AF46:
	ldrh r1, [r0, #0x18]
	sub r1, r1, r2
	strh r1, [r0, #0x18]
	bx lr
	.balign 4

	thumb_func_start FUN_0201AF50
FUN_0201AF50: ; 0x0201AF50
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	mov r0, #0x2c
	add r1, #0x8
	mul r0, r4
	add r0, r1, r0
	add r1, r2, #0x0
	add r2, r3, #0x0
	bl FUN_0201AF74
	mov r0, #0x1
	ldrh r1, [r5, #0x4]
	lsl r0, r4
	orr r0, r1
	strh r0, [r5, #0x4]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201AF74
FUN_0201AF74: ; 0x0201AF74
	sub r1, #0x9
	cmp r1, #0x5
	bhi _0201AFB8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201AF86: ; jump table (using 16-bit offset)
	.short _0201AF92 - _0201AF86 - 2; case 0
	.short _0201AF96 - _0201AF86 - 2; case 1
	.short _0201AF9E - _0201AF86 - 2; case 2
	.short _0201AFA6 - _0201AF86 - 2; case 3
	.short _0201AFAA - _0201AF86 - 2; case 4
	.short _0201AFB2 - _0201AF86 - 2; case 5
_0201AF92:
	str r2, [r0, #0x24]
	bx lr
_0201AF96:
	ldr r1, [r0, #0x24]
	add r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201AF9E:
	ldr r1, [r0, #0x24]
	sub r1, r1, r2
	str r1, [r0, #0x24]
	bx lr
_0201AFA6:
	str r2, [r0, #0x28]
	bx lr
_0201AFAA:
	ldr r1, [r0, #0x28]
	add r1, r1, r2
	str r1, [r0, #0x28]
	bx lr
_0201AFB2:
	ldr r1, [r0, #0x28]
	sub r1, r1, r2
	str r1, [r0, #0x28]
_0201AFB8:
	bx lr
	.balign 4

	thumb_func_start FUN_0201AFBC
FUN_0201AFBC: ; 0x0201AFBC
	push {r4-r7, lr}
	sub sp, #0x1c
	str r1, [sp, #0x0]
	add r7, r0, #0x0
	str r2, [sp, #0x4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #0x8]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x0]
	add r4, r7, #0x0
	mov r1, #0x2c
	add r5, r0, #0x0
	mul r5, r1
	add r4, #0x8
	ldr r0, [r4, r5]
	cmp r0, #0x0
	bne _0201AFE4
	add sp, #0x1c
	mov r0, #0x0
	pop {r4-r7, pc}
_0201AFE4:
	ldr r0, [sp, #0x4]
	ldr r1, [sp, #0x8]
	add r2, r7, r5
	lsl r0, r0, #0x15
	lsl r1, r1, #0x15
	ldrb r2, [r2, #0x1d]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl FUN_02017FFC
	add r6, r0, #0x0
	ldr r0, [sp, #0x0]
	bl FUN_020187B0
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x4]
	mov r0, #0x7
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x8]
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r7, r5
	str r0, [sp, #0x10]
	ldrb r0, [r1, #0x1e]
	cmp r0, #0x0
	bne _0201B096
	ldr r0, [r4, r5]
	mov r1, #0x40
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x0]
	bl FUN_020169D8
	add r4, r0, #0x0
	lsl r0, r6, #0x1
	ldr r1, [sp, #0xc]
	mov r12, r0
	ldrh r0, [r1, r0]
	mov r3, #0x0
	mov r6, #0xf
	lsl r0, r0, #0x16
	lsr r1, r0, #0x11
	ldr r0, [sp, #0x18]
	add r2, r0, r1
_0201B042:
	ldrb r5, [r2, r3]
	lsl r0, r3, #0x1
	add r1, r4, r0
	and r5, r6
	strb r5, [r4, r0]
	ldrb r0, [r2, r3]
	asr r0, r0, #0x4
	strb r0, [r1, #0x1]
	add r0, r3, #0x1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	cmp r3, #0x20
	blo _0201B042
	ldr r2, [sp, #0xc]
	mov r1, r12
	ldrh r1, [r2, r1]
	add r0, r7, #0x0
	asr r2, r1, #0xa
	mov r1, #0x3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0x0
	bl FUN_0201B118
	ldr r0, [sp, #0x10]
	lsl r1, r0, #0x3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r5, [r4, r0]
	add r0, r4, #0x0
	bl FUN_02016A18
	ldr r0, [sp, #0x30]
	ldrh r2, [r0, #0x0]
	mov r0, #0x1
	add r1, r0, #0x0
	lsl r1, r5
	tst r1, r2
	beq _0201B10C
	add sp, #0x1c
	pop {r4-r7, pc}
_0201B096:
	ldrb r0, [r1, #0x1c]
	cmp r0, #0x1
	beq _0201B0E0
	ldr r0, [r7, #0x0]
	ldr r4, [r4, r5]
	mov r1, #0x40
	bl FUN_020169D8
	lsl r6, r6, #0x1
	ldrh r1, [r4, r6]
	add r5, r0, #0x0
	lsl r1, r1, #0x16
	lsr r2, r1, #0x10
	ldr r1, [sp, #0x18]
	add r1, r1, r2
	mov r2, #0x40
	blx memcpy
	ldrh r1, [r4, r6]
	add r0, r7, #0x0
	asr r2, r1, #0xa
	mov r1, #0x3
	and r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r5, #0x0
	bl FUN_0201B118
	ldr r0, [sp, #0x10]
	lsl r1, r0, #0x3
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	ldrb r4, [r5, r0]
	add r0, r5, #0x0
	bl FUN_02016A18
	b _0201B0F4
_0201B0E0:
	ldr r1, [r4, r5]
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r6]
	lsl r0, r0, #0x3
	lsl r2, r1, #0x6
	ldr r1, [sp, #0x14]
	add r1, r1, r2
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	ldrb r4, [r0, r1]
_0201B0F4:
	ldr r0, [sp, #0x30]
	ldrh r2, [r0, #0x0]
	lsl r0, r2, #0x18
	lsr r1, r0, #0x18
	ldr r0, _0201B114 ; =0x0000FFFF
_0201B0FE:
	cmp r2, r0
	beq _0201B10C
	cmp r4, r1
	bne _0201B0FE
	add sp, #0x1c
	mov r0, #0x1
	pop {r4-r7, pc}
_0201B10C:
	mov r0, #0x0
	add sp, #0x1c
	pop {r4-r7, pc}
	nop
_0201B114: .word 0x0000FFFF

	thumb_func_start FUN_0201B118
FUN_0201B118: ; 0x0201B118
	push {r3-r7, lr}
	str r1, [sp, #0x0]
	ldr r1, [sp, #0x0]
	add r7, r2, #0x0
	cmp r1, #0x0
	beq _0201B1A4
	ldr r0, [r0, #0x0]
	mov r1, #0x40
	bl FUN_020169D8
	add r4, r0, #0x0
	ldr r0, [sp, #0x0]
	mov r1, #0x1
	tst r0, r1
	beq _0201B166
	mov r0, #0x0
	mov r5, #0x7
_0201B13A:
	lsl r3, r0, #0x3
	add r2, r7, r3
	mov r1, #0x0
	add r3, r4, r3
_0201B142:
	sub r6, r5, r1
	ldrb r6, [r2, r6]
	strb r6, [r3, r1]
	add r1, r1, #0x1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0x8
	blo _0201B142
	add r0, r0, #0x1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0x8
	blo _0201B13A
	add r0, r7, #0x0
	add r1, r4, #0x0
	mov r2, #0x40
	blx memcpy
_0201B166:
	ldr r0, [sp, #0x0]
	mov r1, #0x2
	tst r0, r1
	beq _0201B19E
	mov r5, #0x0
	mov r6, #0x7
_0201B172:
	lsl r0, r5, #0x3
	add r3, r4, r0
	sub r0, r6, r5
	lsl r0, r0, #0x3
	add r2, r7, r0
	mov r1, #0x8
_0201B17E:
	ldrb r0, [r2, #0x0]
	add r2, r2, #0x1
	strb r0, [r3, #0x0]
	add r3, r3, #0x1
	sub r1, r1, #0x1
	bne _0201B17E
	add r0, r5, #0x1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x8
	blo _0201B172
	add r0, r7, #0x0
	add r1, r4, #0x0
	mov r2, #0x40
	blx memcpy
_0201B19E:
	add r0, r4, #0x0
	bl FUN_02016A18
_0201B1A4:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201B1A8
FUN_0201B1A8: ; 0x0201B1A8
	push {r3-r5, lr}
	add r5, r3, #0x0
	add r4, r2, #0x0
	bl FUN_020161A4
	str r0, [r5, #0x0]
	blx FUN_020BC0FC
	cmp r0, #0x0
	beq _0201B1D2
	bl FUN_0201B254
	cmp r0, #0x0
	bne _0201B1D2
	ldr r0, [r5, #0x0]
	ldr r1, [r0, #0x8]
	blx DC_FlushRange
	ldr r0, [r5, #0x0]
	blx FUN_020BB59C
_0201B1D2:
	ldr r0, [r5, #0x0]
	blx FUN_020BC13C
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201B1E4
FUN_0201B1E4: ; 0x0201B1E4
	push {r3-r5, lr}
	add r5, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	blx FUN_020BC0FC
	cmp r0, #0x0
	beq _0201B20A
	bl FUN_0201B254
	cmp r0, #0x0
	bne _0201B20A
	ldr r0, [r5, #0x0]
	ldr r1, [r0, #0x8]
	blx DC_FlushRange
	ldr r0, [r5, #0x0]
	blx FUN_020BB59C
_0201B20A:
	ldr r0, [r5, #0x0]
	blx FUN_020BC13C
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201B21C
FUN_0201B21C: ; 0x0201B21C
	push {r3-r5, lr}
	add r4, r3, #0x0
	add r5, r2, #0x0
	ldr r3, [sp, #0x10]
	add r2, r4, #0x0
	bl FUN_0201B1A8
	ldr r1, [r4, #0x0]
	add r0, r5, #0x0
	blx FUN_020B80B4
	pop {r3-r5, pc}

	thumb_func_start FUN_0201B234
FUN_0201B234: ; 0x0201B234
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r1, r2, #0x0
	bl FUN_0201B1E4
	cmp r4, #0x0
	bne _0201B24A
	bl ErrorHandling
_0201B24A:
	ldr r1, [r4, #0x0]
	add r0, r5, #0x0
	blx FUN_020B80B4
	pop {r3-r5, pc}

	thumb_func_start FUN_0201B254
FUN_0201B254: ; 0x0201B254
	ldrh r2, [r0, #0x10]
	mov r1, #0x1
	tst r2, r1
	bne _0201B262
	ldrh r0, [r0, #0x20]
	tst r0, r1
	beq _0201B266
_0201B262:
	mov r0, #0x1
	bx lr
_0201B266:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_0201B26C
FUN_0201B26C: ; 0x0201B26C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	blx FUN_020B8474
	ldr r1, _0201B2A0 ; =0x021CEDD4
	add r0, r4, #0x0
	blx MI_Copy36B
	ldr r1, _0201B2A4 ; =0x021CED98
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r6, #0x0
	str r2, [r1, #0x7c]
	blx FUN_020B844C
	blx FUN_020B849C
	add r0, r5, #0x0
	blx FUN_020BAC98
	pop {r4-r6, pc}
	nop
_0201B2A0: .word 0x021CEDD4
_0201B2A4: .word 0x021CED98

	thumb_func_start FUN_0201B2A8
FUN_0201B2A8: ; 0x0201B2A8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	blx FUN_020B8474
	ldr r1, _0201B2E4 ; =0x021CEDD4
	add r0, r4, #0x0
	blx MI_Copy36B
	ldr r1, _0201B2E8 ; =0x021CED98
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	add r0, r6, #0x0
	blx FUN_020B844C
	blx FUN_020B849C
	mov r1, #0x0
	ldr r0, [r5, #0x4]
	add r2, r1, #0x0
	mov r3, #0x1
	blx FUN_020BAFB8
	blx FUN_020BB394
	pop {r4-r6, pc}
	.balign 4
_0201B2E4: .word 0x021CEDD4
_0201B2E8: .word 0x021CED98

	thumb_func_start FUN_0201B2EC
FUN_0201B2EC: ; 0x0201B2EC
	push {r3, lr}
	sub sp, #0x8
	mov r1, #0x4
	str r1, [sp, #0x0]
	ldr r1, _0201B30C ; =FUN_0201B314
	mov r2, #0x2
	str r1, [sp, #0x4]
	mov r1, #0x0
	add r3, r1, #0x0
	bl FUN_02022318
	ldr r1, _0201B310 ; =0x021C4D44
	str r0, [r1, #0x0]
	add sp, #0x8
	pop {r3, pc}
	nop
_0201B30C: .word FUN_0201B314 
_0201B310: .word 0x021C4D44

	thumb_func_start FUN_0201B314
FUN_0201B314: ; 0x0201B314
	push {r3, lr}
	mov r0, #0x1
	add r1, r0, #0x0
	bl FUN_0201E6E4
	ldr r0, _0201B380 ; =0x04000008
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	mov r1, #0x1
	orr r1, r2
	strh r1, [r0, #0x0]
	add r0, #0x58
	ldrh r2, [r0, #0x0]
	ldr r1, _0201B384 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0, #0x0]
	add r2, r1, #0x2
	ldrh r3, [r0, #0x0]
	add r1, r1, #0x2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0, #0x0]
	ldrh r3, [r0, #0x0]
	ldr r2, _0201B388 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0, #0x0]
	ldrh r3, [r0, #0x0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #0x8
	orr r1, r3
	strh r1, [r0, #0x0]
	ldrh r1, [r0, #0x0]
	and r1, r2
	strh r1, [r0, #0x0]
	mov r0, #0x0
	add r1, r0, #0x0
	add r2, r0, #0x0
	add r3, r0, #0x0
	blx FUN_020C7C28
	mov r0, #0x0
	ldr r2, _0201B38C ; =0x00007FFF
	add r1, r0, #0x0
	mov r3, #0x3f
	str r0, [sp, #0x0]
	blx FUN_020C7B3C
	ldr r1, _0201B390 ; =0xBFFF0000
	ldr r0, _0201B394 ; =0x04000580
	str r1, [r0, #0x0]
	pop {r3, pc}
	.balign 4
_0201B380: .word 0x04000008
_0201B384: .word 0xFFFFCFFD
_0201B388: .word 0x0000CFFB
_0201B38C: .word 0x00007FFF
_0201B390: .word 0xBFFF0000
_0201B394: .word 0x04000580

	thumb_func_start FUN_0201B398
FUN_0201B398: ; 0x0201B398
	ldr r0, _0201B3A0 ; =0x021C4D44
	ldr r3, _0201B3A4 ; =FUN_020223BC
	ldr r0, [r0, #0x0]
	bx r3
	.balign 4
_0201B3A0: .word 0x021C4D44
_0201B3A4: .word FUN_020223BC 

	thumb_func_start FUN_0201B3A8
FUN_0201B3A8: ; 0x0201B3A8
	push {r4, lr}
	add r4, r1, #0x0
	blx FUN_020BC13C
	cmp r4, #0x0
	beq _0201B3BE
	add r1, r4, #0x0
	blx FUN_020B7790
	mov r0, #0x1
	pop {r4, pc}
_0201B3BE:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201B3C4
FUN_0201B3C4: ; 0x0201B3C4
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	bne _0201B3D2
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B3D2:
	mov r1, #0x0
	str r1, [r5, #0x8]
	mov r1, #0x1
	str r1, [sp, #0x8]
	str r1, [sp, #0x4]
	str r1, [sp, #0x0]
	cmp r5, #0x0
	beq _0201B4D0
	blx FUN_020B7E1C
	add r6, r0, #0x0
	add r0, r5, #0x0
	blx FUN_020B7E10
	add r4, r0, #0x0
	add r0, r5, #0x0
	blx FUN_020B7CE4
	str r0, [sp, #0xc]
	cmp r6, #0x0
	beq _0201B412
	ldr r3, _0201B4D8 ; =0x021064B8
	mov r1, #0x0
	ldr r3, [r3, #0x0]
	add r0, r6, #0x0
	add r2, r1, #0x0
	blx r3
	add r7, r0, #0x0
	bne _0201B414
	mov r0, #0x0
	str r0, [sp, #0x8]
	b _0201B414
_0201B412:
	mov r7, #0x0
_0201B414:
	cmp r4, #0x0
	beq _0201B42E
	ldr r3, _0201B4D8 ; =0x021064B8
	add r0, r4, #0x0
	ldr r3, [r3, #0x0]
	mov r1, #0x1
	mov r2, #0x0
	blx r3
	add r6, r0, #0x0
	bne _0201B430
	mov r0, #0x0
	str r0, [sp, #0x4]
	b _0201B430
_0201B42E:
	mov r6, #0x0
_0201B430:
	ldr r0, [sp, #0xc]
	cmp r0, #0x0
	beq _0201B450
	ldr r3, _0201B4DC ; =0x021064C0
	mov r1, #0x2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0x0]
	and r1, r2
	mov r2, #0x0
	blx r3
	add r4, r0, #0x0
	bne _0201B452
	mov r0, #0x0
	str r0, [sp, #0x0]
	b _0201B452
_0201B450:
	mov r4, #0x0
_0201B452:
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	bne _0201B46E
	ldr r1, _0201B4E0 ; =0x021064BC
	add r0, r7, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B468
	bl ErrorHandling
_0201B468:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B46E:
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bne _0201B48A
	ldr r1, _0201B4E0 ; =0x021064BC
	add r0, r6, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B484
	bl ErrorHandling
_0201B484:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B48A:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	bne _0201B4A6
	ldr r1, _0201B4E4 ; =0x021064C4
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B4A0
	bl ErrorHandling
_0201B4A0:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B4A6:
	add r0, r5, #0x0
	add r1, r7, #0x0
	add r2, r6, #0x0
	blx FUN_020B7DFC
	add r0, r5, #0x0
	add r1, r4, #0x0
	blx FUN_020B7CDC
	ldr r1, [r5, #0x4]
	add r0, r5, #0x0
	blx DC_FlushRange
	add r0, r5, #0x0
	mov r1, #0x1
	blx FUN_020B7D28
	add r0, r5, #0x0
	mov r1, #0x1
	blx FUN_020B7C78
_0201B4D0:
	mov r0, #0x1
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_0201B4D8: .word 0x021064B8
_0201B4DC: .word 0x021064C0
_0201B4E0: .word 0x021064BC
_0201B4E4: .word 0x021064C4

	thumb_func_start FUN_0201B4E8
FUN_0201B4E8: ; 0x0201B4E8
	str r0, [r1, #0x0]
	add r0, r0, #0x4
	str r0, [r1, #0x8]
	str r0, [r1, #0x4]
	mov r0, #0x0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	bx lr
	.balign 4

	thumb_func_start FUN_0201B4FC
FUN_0201B4FC: ; 0x0201B4FC
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldrh r0, [r5, #0x0]
	mov r7, #0x0
	cmp r0, #0x0
	ble _0201B52A
	add r4, r7, #0x0
	add r6, r7, #0x0
_0201B50C:
	ldr r1, [r5, #0x24]
	add r0, r5, #0x0
	add r1, r1, r4
	bl FUN_0201B4E8
	ldr r0, [r5, #0x24]
	add r7, r7, #0x1
	add r1, r0, r4
	ldr r0, [r5, #0x20]
	add r4, #0x1c
	str r1, [r0, r6]
	ldrh r0, [r5, #0x0]
	add r6, r6, #0x4
	cmp r7, r0
	blt _0201B50C
_0201B52A:
	mov r0, #0x0
	strh r0, [r5, #0x2]
	pop {r3-r7, pc}

	thumb_func_start FUN_0201B530
FUN_0201B530: ; 0x0201B530
	ldrh r3, [r0, #0x2]
	ldrh r1, [r0, #0x0]
	cmp r3, r1
	bne _0201B53C
	mov r0, #0x0
	bx lr
_0201B53C:
	ldr r2, [r0, #0x20]
	lsl r1, r3, #0x2
	ldr r2, [r2, r1]
	add r1, r3, #0x1
	strh r1, [r0, #0x2]
	add r0, r2, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_0201B54C
FUN_0201B54C: ; 0x0201B54C
	ldrh r2, [r0, #0x2]
	cmp r2, #0x0
	bne _0201B556
	mov r0, #0x0
	bx lr
_0201B556:
	str r0, [r1, #0x0]
	add r2, r0, #0x4
	str r2, [r1, #0x8]
	str r2, [r1, #0x4]
	mov r2, #0x0
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldrh r2, [r0, #0x2]
	sub r2, r2, #0x1
	strh r2, [r0, #0x2]
	ldr r2, [r0, #0x20]
	ldrh r0, [r0, #0x2]
	lsl r0, r0, #0x2
	str r1, [r2, r0]
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_0201B578
FUN_0201B578: ; 0x0201B578
	lsl r0, r0, #0x5
	add r0, #0x34
	bx lr
	.balign 4

	thumb_func_start FUN_0201B580
FUN_0201B580: ; 0x0201B580
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	bne _0201B58C
	bl ErrorHandling
_0201B58C:
	add r1, r4, #0x0
	add r1, #0x34
	lsl r0, r5, #0x2
	str r1, [r4, #0x20]
	add r0, r1, r0
	str r0, [r4, #0x24]
	strh r5, [r4, #0x0]
	mov r0, #0x0
	strh r0, [r4, #0x2]
	str r0, [r4, #0x28]
	add r0, r4, #0x0
	bl FUN_0201B5AC
	add r0, r4, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201B5AC
FUN_0201B5AC: ; 0x0201B5AC
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_0201B4FC
	str r4, [r4, #0x4]
	add r0, r4, #0x4
	str r0, [r4, #0xc]
	str r0, [r4, #0x8]
	mov r0, #0x0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201B5CC
FUN_0201B5CC: ; 0x0201B5CC
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x28]
	cmp r0, #0x0
	bne _0201B608
	ldr r1, [r5, #0xc]
	add r4, r5, #0x4
	str r1, [r5, #0x2c]
	cmp r1, r4
	beq _0201B604
	mov r6, #0x0
_0201B5E2:
	ldr r0, [r1, #0x8]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	ldr r1, [r0, #0x18]
	cmp r1, #0x0
	bne _0201B5FA
	ldr r2, [r0, #0x14]
	cmp r2, #0x0
	beq _0201B5FC
	ldr r1, [r0, #0x10]
	blx r2
	b _0201B5FC
_0201B5FA:
	str r6, [r0, #0x18]
_0201B5FC:
	ldr r1, [r5, #0x30]
	str r1, [r5, #0x2c]
	cmp r1, r4
	bne _0201B5E2
_0201B604:
	mov r0, #0x0
	str r0, [r1, #0x14]
_0201B608:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201B60C
FUN_0201B60C: ; 0x0201B60C
	push {r3-r5, lr}
	add r4, r0, #0x0
	mov r5, #0x1
	str r5, [r4, #0x28]
	bl FUN_0201B620
	mov r1, #0x0
	str r1, [r4, #0x28]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201B620
FUN_0201B620: ; 0x0201B620
	push {r3-r7, lr}
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r7, r2, #0x0
	add r4, r3, #0x0
	bl FUN_0201B530
	cmp r0, #0x0
	bne _0201B636
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B636:
	str r4, [r0, #0xc]
	str r7, [r0, #0x10]
	str r6, [r0, #0x14]
	ldr r2, [r5, #0x2c]
	ldr r1, [r2, #0x14]
	cmp r1, #0x0
	beq _0201B656
	ldr r1, [r2, #0xc]
	cmp r1, r4
	bhi _0201B650
	mov r1, #0x1
	str r1, [r0, #0x18]
	b _0201B65A
_0201B650:
	mov r1, #0x0
	str r1, [r0, #0x18]
	b _0201B65A
_0201B656:
	mov r1, #0x0
	str r1, [r0, #0x18]
_0201B65A:
	ldr r3, [r5, #0xc]
	add r2, r5, #0x4
	cmp r3, r2
	beq _0201B686
	ldr r4, [r0, #0xc]
_0201B664:
	ldr r1, [r3, #0xc]
	cmp r1, r4
	bls _0201B680
	ldr r1, [r3, #0x4]
	str r1, [r0, #0x4]
	str r3, [r0, #0x8]
	ldr r1, [r3, #0x4]
	str r0, [r1, #0x8]
	str r0, [r3, #0x4]
	ldr r1, [r5, #0x30]
	cmp r3, r1
	bne _0201B69E
	str r0, [r5, #0x30]
	pop {r3-r7, pc}
_0201B680:
	ldr r3, [r3, #0x8]
	cmp r3, r2
	bne _0201B664
_0201B686:
	ldr r2, [r5, #0x30]
	add r1, r5, #0x4
	cmp r2, r1
	bne _0201B690
	str r0, [r5, #0x30]
_0201B690:
	ldr r1, [r5, #0x8]
	str r1, [r0, #0x4]
	add r1, r5, #0x4
	str r1, [r0, #0x8]
	ldr r1, [r5, #0x8]
	str r0, [r1, #0x8]
	str r0, [r5, #0x8]
_0201B69E:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201B6A0
FUN_0201B6A0: ; 0x0201B6A0
	add r1, r0, #0x0
	ldr r2, [r1, #0x0]
	ldr r0, [r2, #0x30]
	cmp r0, r1
	bne _0201B6AE
	ldr r0, [r1, #0x8]
	str r0, [r2, #0x30]
_0201B6AE:
	ldr r2, [r1, #0x8]
	ldr r0, [r1, #0x4]
	ldr r3, _0201B6C0 ; =0x0201B54D
	str r2, [r0, #0x8]
	ldr r2, [r1, #0x4]
	ldr r0, [r1, #0x8]
	str r2, [r0, #0x4]
	ldr r0, [r1, #0x0]
	bx r3
	.balign 4
_0201B6C0: .word 0x0201B54D

	thumb_func_start FUN_0201B6C4
FUN_0201B6C4: ; 0x0201B6C4
	str r1, [r0, #0x14]
	bx lr

	thumb_func_start FUN_0201B6C8
FUN_0201B6C8: ; 0x0201B6C8
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start FUN_0201B6CC
FUN_0201B6CC: ; 0x0201B6CC
	ldr r0, [r0, #0xc]
	bx lr

	thumb_func_start FUN_0201B6D0
FUN_0201B6D0: ; 0x0201B6D0
	push {r4-r7, lr}
	sub sp, #0x34
	add r6, r1, #0x0
	add r4, r0, #0x0
	add r5, r2, #0x0
	ldmia r6!, {r0-r1}
	add r2, sp, #0x1c
	stmia r2!, {r0-r1}
	ldr r0, [r6, #0x0]
	add r4, #0x14
	str r0, [r2, #0x0]
	mov r0, #0x20
	ldrsh r0, [r4, r0]
	add r7, r3, #0x0
	mov r1, #0x1a
	str r0, [sp, #0x0]
	mov r0, #0x22
	ldrsh r0, [r4, r0]
	mov r2, #0x1c
	mov r3, #0x1e
	str r0, [sp, #0x4]
	add r0, sp, #0x28
	str r0, [sp, #0x8]
	mov r0, #0x18
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	bl FUN_0201B808
	add r0, sp, #0x1c
	blx FUN_020B8474
	ldr r1, _0201B764 ; =0x021CEDD4
	add r0, r5, #0x0
	blx MI_Copy36B
	ldr r1, _0201B768 ; =0x021CED98
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r7, #0x0
	str r2, [r1, #0x7c]
	blx FUN_020B844C
	blx FUN_020B849C
	mov r1, #0x0
	mov r0, #0x11
	add r2, r1, #0x0
	blx FUN_020BB1C0
	ldr r0, [r4, #0x24]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r0, #0x1b
	mov r2, #0x3
	blx FUN_020BB1C0
	add r0, sp, #0x28
	bl FUN_0201B82C
	add r4, r0, #0x0
	mov r2, #0x1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	blx FUN_020BB1C0
	add r0, r4, #0x0
	add sp, #0x34
	pop {r4-r7, pc}
	.balign 4
_0201B764: .word 0x021CEDD4
_0201B768: .word 0x021CED98

	thumb_func_start FUN_0201B76C
FUN_0201B76C: ; 0x0201B76C
	push {r3-r5, lr}
	sub sp, #0x28
	add r5, r0, #0x0
	add r4, r1, #0x0
	mov r0, #0x2
	ldrsh r0, [r4, r0]
	str r0, [sp, #0x0]
	mov r0, #0x4
	ldrsh r0, [r4, r0]
	str r0, [sp, #0x4]
	add r0, sp, #0x1c
	str r0, [sp, #0x8]
	mov r0, #0x0
	ldrsh r3, [r4, r0]
	add r1, r0, #0x0
	add r2, r0, #0x0
	bl FUN_0201B808
	add r0, r5, #0x0
	blx FUN_020B8474
	blx FUN_020B849C
	mov r1, #0x0
	mov r0, #0x11
	add r2, r1, #0x0
	blx FUN_020BB1C0
	ldr r0, [r4, #0x10]
	lsl r2, r0, #0xc
	ldr r0, [r4, #0xc]
	lsl r1, r0, #0xc
	ldr r0, [r4, #0x8]
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	mov r0, #0x1b
	add r1, sp, #0x10
	mov r2, #0x3
	blx FUN_020BB1C0
	add r0, sp, #0x1c
	bl FUN_0201B82C
	add r4, r0, #0x0
	mov r2, #0x1
	mov r0, #0x12
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	blx FUN_020BB1C0
	add r0, r4, #0x0
	add sp, #0x28
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201B7DC
FUN_0201B7DC: ; 0x0201B7DC
	push {r4-r6, lr}
	add r6, r3, #0x0
	add r4, r2, #0x0
	add r2, r6, #0x0
	add r5, r1, #0x0
	add r1, r6, #0x0
	add r2, #0x8
	bl FUN_0201B880
	add r2, r6, #0x0
	add r0, r5, #0x0
	add r1, r6, #0x2
	add r2, #0xc
	bl FUN_0201B880
	add r1, r6, #0x4
	add r6, #0x10
	add r0, r4, #0x0
	add r2, r6, #0x0
	bl FUN_0201B880
	pop {r4-r6, pc}

	thumb_func_start FUN_0201B808
FUN_0201B808: ; 0x0201B808
	push {r3-r4}
	ldr r4, [sp, #0x10]
	strh r0, [r4, #0x0]
	strh r1, [r4, #0x2]
	ldr r1, _0201B828 ; =0xFFFFFFF8
	strh r2, [r4, #0x4]
	strh r3, [r4, #0x6]
	add r1, sp
	mov r0, #0x10
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0x8]
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0xa]
	pop {r3-r4}
	bx lr
	.balign 4
_0201B828: .word 0xFFFFFFF8

	thumb_func_start FUN_0201B82C
FUN_0201B82C: ; 0x0201B82C
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r0, _0201B87C ; =0x000030C1
	mov r2, #0x1
	str r0, [sp, #0x4]
	mov r0, #0x29
	add r1, sp, #0x4
	str r2, [sp, #0x8]
	blx FUN_020BB1C0
	mov r0, #0x0
	str r0, [sp, #0x0]
	mov r0, #0x40
	add r1, sp, #0x0
	mov r2, #0x1
	blx FUN_020BB1C0
	mov r1, #0x0
	mov r0, #0x41
	add r2, r1, #0x0
	blx FUN_020BB1C0
	mov r0, #0x70
	add r1, r4, #0x0
	mov r2, #0x3
	blx FUN_020BB1C0
	blx FUN_020BB394
	add r4, sp, #0x8
_0201B86A:
	add r0, r4, #0x0
	blx FUN_020C7A14
	cmp r0, #0x0
	bne _0201B86A
	ldr r0, [sp, #0x8]
	add sp, #0xc
	pop {r3-r4, pc}
	nop
_0201B87C: .word 0x000030C1

	thumb_func_start FUN_0201B880
FUN_0201B880: ; 0x0201B880
	push {r3-r4}
	ldr r4, _0201B8B4 ; =0x00007FFF
	mov r3, #0x0
	cmp r0, r4
	blo _0201B896
_0201B88A:
	add r3, r3, #0x1
	lsl r3, r3, #0x18
	lsr r0, r0, #0x1
	lsr r3, r3, #0x18
	cmp r0, r4
	bhs _0201B88A
_0201B896:
	strh r0, [r1, #0x0]
	mov r0, #0x1
	mov r1, #0x0
	str r0, [r2, #0x0]
	cmp r3, #0x0
	ble _0201B8AE
_0201B8A2:
	ldr r0, [r2, #0x0]
	add r1, r1, #0x1
	lsl r0, r0, #0x1
	str r0, [r2, #0x0]
	cmp r1, r3
	blt _0201B8A2
_0201B8AE:
	pop {r3-r4}
	bx lr
	nop
_0201B8B4: .word 0x00007FFF

	thumb_func_start FUN_0201B8B8
FUN_0201B8B8: ; 0x0201B8B8
	push {r4, lr}
	add r4, r0, #0x0
	ldrh r1, [r4, #0x0]
	ldr r0, _0201B8DC ; =0x0000FFFE
	cmp r1, r0
	beq _0201B8C8
	bl ErrorHandling
_0201B8C8:
	ldrh r1, [r4, #0x0]
	ldr r0, _0201B8DC ; =0x0000FFFE
	cmp r1, r0
	bne _0201B8D8
	ldrh r0, [r4, #0x4]
	add r1, r4, #0x6
	lsl r0, r0, #0x1
	add r4, r1, r0
_0201B8D8:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4
_0201B8DC: .word 0x0000FFFE

	thumb_func_start FUN_0201B8E0
FUN_0201B8E0: ; 0x0201B8E0
	push {r4, lr}
	add r4, r0, #0x0
	ldrh r1, [r4, #0x0]
	ldr r0, _0201B8F4 ; =0x0000FFFE
	cmp r1, r0
	beq _0201B8F0
	bl ErrorHandling
_0201B8F0:
	ldrh r0, [r4, #0x2]
	pop {r4, pc}
	.balign 4
_0201B8F4: .word 0x0000FFFE

	thumb_func_start FUN_0201B8F8
FUN_0201B8F8: ; 0x0201B8F8
	push {r3, lr}
	bl FUN_0201B8E0
	mov r1, #0xff
	lsl r1, r1, #0x8
	and r1, r0
	mov r0, #0x1
	lsl r0, r0, #0x8
	cmp r1, r0
	bne _0201B910
	mov r0, #0x1
	pop {r3, pc}
_0201B910:
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start FUN_0201B914
FUN_0201B914: ; 0x0201B914
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	ldrh r1, [r5, #0x0]
	ldr r0, _0201B938 ; =0x0000FFFE
	cmp r1, r0
	beq _0201B926
	bl ErrorHandling
_0201B926:
	ldrh r0, [r5, #0x4]
	cmp r4, r0
	blo _0201B930
	bl ErrorHandling
_0201B930:
	lsl r0, r4, #0x1
	add r0, r5, r0
	ldrh r0, [r0, #0x6]
	pop {r3-r5, pc}
	.balign 4
_0201B938: .word 0x0000FFFE

	thumb_func_start FUN_0201B93C
FUN_0201B93C: ; 0x0201B93C
	mov r1, #0x5a
	lsl r1, r1, #0x2
	cmp r0, r1
	blo _0201B948
	mov r0, #0x0
	bx lr
_0201B948:
	lsl r1, r0, #0x2
	ldr r0, _0201B950 ; =0x020EDF50
	ldr r0, [r0, r1]
	bx lr
	.balign 4
_0201B950: .word 0x020EDF50

	thumb_func_start FUN_0201B954
FUN_0201B954: ; 0x0201B954
	mov r1, #0x5a
	lsl r1, r1, #0x2
	cmp r0, r1
	blo _0201B960
	mov r0, #0x0
	bx lr
_0201B960:
	add r0, #0x5a
	lsl r1, r0, #0x2
	ldr r0, _0201B96C ; =0x020EDF50
	ldr r0, [r0, r1]
	bx lr
	nop
_0201B96C: .word 0x020EDF50

	thumb_func_start FUN_0201B970
FUN_0201B970: ; 0x0201B970
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #0x2
	blx _s32_div_f
	ldr r0, _0201B984 ; =0x020EDF50
	lsl r1, r1, #0x2
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_0201B984: .word 0x020EDF50

	thumb_func_start FUN_0201B988
FUN_0201B988: ; 0x0201B988
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #0x2
	blx _s32_div_f
	add r1, #0x5a
	ldr r0, _0201B99C ; =0x020EDF50
	lsl r1, r1, #0x2
	ldr r0, [r0, r1]
	pop {r3, pc}
	.balign 4
_0201B99C: .word 0x020EDF50

	thumb_func_start FUN_0201B9A0
FUN_0201B9A0: ; 0x0201B9A0
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #0x2
	blx _s32_div_f
	ldr r0, _0201B9B4 ; =0x020EDC7E
	lsl r1, r1, #0x1
	ldrh r0, [r0, r1]
	pop {r3, pc}
	nop
_0201B9B4: .word 0x020EDC7E

	thumb_func_start FUN_0201B9B8
FUN_0201B9B8: ; 0x0201B9B8
	push {r3, lr}
	lsl r0, r0, #0x4
	mov r1, #0x5a
	lsr r0, r0, #0x10
	lsl r1, r1, #0x2
	blx _s32_div_f
	ldr r0, _0201B9D0 ; =0x020EDF50
	lsl r1, r1, #0x2
	ldr r0, [r0, r1]
	pop {r3, pc}
	nop
_0201B9D0: .word 0x020EDF50

	thumb_func_start FUN_0201B9D4
FUN_0201B9D4: ; 0x0201B9D4
	ldr r0, _0201B9DC ; =0x021C4D48
	ldr r0, [r0, #0x0]
	bx lr
	nop
_0201B9DC: .word 0x021C4D48

	thumb_func_start FUN_0201B9E0
FUN_0201B9E0: ; 0x0201B9E0
	ldr r1, _0201B9E8 ; =0x021C4D48
	str r0, [r1, #0x0]
	bx lr
	nop
_0201B9E8: .word 0x021C4D48

	thumb_func_start FUN_0201B9EC
FUN_0201B9EC: ; 0x0201B9EC
	ldr r1, _0201BA04 ; =0x021C4D48
	ldr r0, _0201BA08 ; =0x41C64E6D
	ldr r2, [r1, #0x0]
	add r3, r2, #0x0
	mul r3, r0
	ldr r0, _0201BA0C ; =0x00006073
	add r0, r3, r0
	str r0, [r1, #0x0]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	.balign 4
_0201BA04: .word 0x021C4D48
_0201BA08: .word 0x41C64E6D
_0201BA0C: .word 0x00006073

	thumb_func_start FUN_0201BA10
FUN_0201BA10: ; 0x0201BA10
	ldr r1, _0201BA18 ; =0x6C078965
	mul r1, r0
	add r0, r1, #0x1
	bx lr
	.balign 4
_0201BA18: .word 0x6C078965

	thumb_func_start FUN_0201BA1C
FUN_0201BA1C: ; 0x0201BA1C
	push {r4-r5}
	ldr r1, _0201BA50 ; =0x021C4D48
	mov r4, #0x27
	str r0, [r1, #0x4]
	ldr r1, _0201BA54 ; =0x02105BA8
	mov r0, #0x1
	str r0, [r1, #0x0]
	ldr r1, _0201BA58 ; =0x021C4D50
	ldr r3, _0201BA5C ; =0x6C078965
	lsl r4, r4, #0x4
_0201BA30:
	sub r2, r1, #0x4
	ldr r5, [r2, #0x0]
	lsr r2, r5, #0x1e
	eor r2, r5
	add r5, r2, #0x0
	mul r5, r3
	add r2, r0, r5
	add r0, r0, #0x1
	stmia r1!, {r2}
	cmp r0, r4
	blt _0201BA30
	ldr r1, _0201BA54 ; =0x02105BA8
	str r0, [r1, #0x0]
	pop {r4-r5}
	bx lr
	nop
_0201BA50: .word 0x021C4D48
_0201BA54: .word 0x02105BA8
_0201BA58: .word 0x021C4D50
_0201BA5C: .word 0x6C078965

	thumb_func_start FUN_0201BA60
FUN_0201BA60: ; 0x0201BA60
	push {r3-r7, lr}
	ldr r0, _0201BB44 ; =0x02105BA8
	ldr r1, [r0, #0x0]
	mov r0, #0x27
	lsl r0, r0, #0x4
	cmp r1, r0
	blt _0201BB18
	add r0, r0, #0x1
	cmp r1, r0
	bne _0201BA7A
	ldr r0, _0201BB48 ; =0x00001571
	bl FUN_0201BA1C
_0201BA7A:
	ldr r4, _0201BB4C ; =0x021C4D4C
	ldr r1, _0201BB50 ; =0x02105BAC
	ldr r5, _0201BB54 ; =0x7FFFFFFF
	ldr r6, _0201BB58 ; =0x00000634
	mov r0, #0x0
_0201BA84:
	mov r2, #0x2
	ldr r3, [r4, #0x0]
	lsl r2, r2, #0x1e
	and r3, r2
	ldr r2, [r4, #0x4]
	add r0, r0, #0x1
	and r2, r5
	orr r3, r2
	lsr r7, r3, #0x1
	lsl r3, r3, #0x1f
	ldr r2, [r4, r6]
	lsr r3, r3, #0x1d
	ldr r3, [r1, r3]
	eor r2, r7
	eor r2, r3
	stmia r4!, {r2}
	cmp r0, #0xe3
	blt _0201BA84
	ldr r1, _0201BB5C ; =0x0000026F
	cmp r0, r1
	bge _0201BAE4
	ldr r2, _0201BB4C ; =0x021C4D4C
	lsl r1, r0, #0x2
	add r1, r2, r1
	mov r2, #0xe3
	ldr r4, _0201BB50 ; =0x02105BAC
	ldr r3, _0201BB5C ; =0x0000026F
	lsl r2, r2, #0x2
_0201BABC:
	mov r5, #0x2
	ldr r6, [r1, #0x0]
	lsl r5, r5, #0x1e
	and r5, r6
	ldr r7, [r1, #0x4]
	ldr r6, _0201BB54 ; =0x7FFFFFFF
	add r0, r0, #0x1
	and r6, r7
	orr r6, r5
	lsr r5, r6, #0x1
	sub r7, r1, r2
	lsl r6, r6, #0x1f
	ldr r7, [r7, #0x0]
	lsr r6, r6, #0x1d
	ldr r6, [r4, r6]
	eor r5, r7
	eor r5, r6
	stmia r1!, {r5}
	cmp r0, r3
	blt _0201BABC
_0201BAE4:
	ldr r2, _0201BB60 ; =0x021C56C8
	mov r0, #0x2
	ldr r1, [r2, #0x40]
	lsl r0, r0, #0x1e
	add r3, r1, #0x0
	ldr r1, _0201BB64 ; =0x021C4D48
	and r3, r0
	ldr r1, [r1, #0x4]
	sub r0, r0, #0x1
	and r0, r1
	add r4, r3, #0x0
	orr r4, r0
	ldr r0, _0201BB68 ; =0x021C5348
	ldr r1, [r0, #0x34]
	lsr r0, r4, #0x1
	add r3, r1, #0x0
	eor r3, r0
	lsl r0, r4, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0201BB50 ; =0x02105BAC
	ldr r0, [r0, r1]
	mov r1, #0x0
	eor r0, r3
	str r0, [r2, #0x40]
	ldr r0, _0201BB44 ; =0x02105BA8
	str r1, [r0, #0x0]
_0201BB18:
	ldr r0, _0201BB44 ; =0x02105BA8
	ldr r2, [r0, #0x0]
	add r1, r2, #0x1
	str r1, [r0, #0x0]
	ldr r0, _0201BB4C ; =0x021C4D4C
	lsl r1, r2, #0x2
	ldr r1, [r0, r1]
	lsr r0, r1, #0xb
	add r2, r1, #0x0
	eor r2, r0
	ldr r0, _0201BB6C ; =0x9D2C5680
	lsl r1, r2, #0x7
	and r0, r1
	eor r2, r0
	ldr r0, _0201BB70 ; =0xEFC60000
	lsl r1, r2, #0xf
	and r0, r1
	add r1, r2, #0x0
	eor r1, r0
	lsr r0, r1, #0x12
	eor r0, r1
	pop {r3-r7, pc}
	.balign 4
_0201BB44: .word 0x02105BA8
_0201BB48: .word 0x00001571
_0201BB4C: .word 0x021C4D4C
_0201BB50: .word 0x02105BAC
_0201BB54: .word 0x7FFFFFFF
_0201BB58: .word 0x00000634
_0201BB5C: .word 0x0000026F
_0201BB60: .word 0x021C56C8
_0201BB64: .word 0x021C4D48
_0201BB68: .word 0x021C5348
_0201BB6C: .word 0x9D2C5680
_0201BB70: .word 0xEFC60000

	thumb_func_start FUN_0201BB74
FUN_0201BB74: ; 0x0201BB74
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, sp, #0x0
	ldrb r0, [r0, #0x10]
	add r4, r2, #0x0
	add r6, r3, #0x0
	cmp r0, #0x1
	bne _0201BB8E
	ldr r0, _0201BBC8 ; =0x0000FFFF
	mul r0, r1
	lsl r0, r0, #0x8
	lsr r1, r0, #0x10
	b _0201BBA2
_0201BB8E:
	cmp r0, #0x2
	bne _0201BBA2
	ldr r0, _0201BBC8 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #0x2
	blx _u32_div_f
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0201BBA2:
	asr r0, r1, #0x4
	lsl r3, r0, #0x1
	lsl r1, r3, #0x1
	ldr r2, _0201BBCC ; =0x020FFA38
	add r3, r3, #0x1
	lsl r3, r3, #0x1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0x0
	bl FUN_020C3EA4
	add r0, r5, #0x0
	add r1, r5, #0x0
	add r2, r4, #0x0
	add r3, r6, #0x0
	blx FUN_020C3EB0
	pop {r4-r6, pc}
	nop
_0201BBC8: .word 0x0000FFFF
_0201BBCC: .word 0x020FFA38

	thumb_func_start FUN_0201BBD0
FUN_0201BBD0: ; 0x0201BBD0
	push {r3-r7, lr}
	sub sp, #0x38
	lsl r5, r0, #0xc
	lsl r4, r1, #0xc
	mov r1, #0x0
	lsl r0, r2, #0xc
	lsl r6, r3, #0xc
	str r1, [sp, #0x34]
	str r0, [sp, #0x0]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	str r1, [sp, #0x8]
	str r1, [sp, #0xc]
	asr r1, r5, #0x1f
	add r0, r5, #0x0
	asr r3, r6, #0x1f
	add r2, r6, #0x0
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	blx _ll_mul
	str r0, [sp, #0x4]
	add r2, r4, #0x0
	ldr r0, [sp, #0x20]
	add r7, r1, #0x0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	ldr r3, [sp, #0x4]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201BC80 ; =0x00000000
	str r4, [sp, #0x2c]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #0x2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201BC80 ; =0x00000000
	str r5, [sp, #0x30]
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	sub r2, r3, r0
	ldr r1, [sp, #0x8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r0, r1, r0
	add r7, r2, r0
	mov r0, #0x0
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	add r1, sp, #0x14
	blx FUN_020C5288
	mov r1, #0x0
	ldr r0, [sp, #0x0]
	str r1, [sp, #0x34]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	add r0, sp, #0x20
	add r1, sp, #0x2c
	add r2, sp, #0x8
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	blx FUN_020C5600
	add r0, sp, #0x14
	add r1, sp, #0x8
	blx FUN_020C5588
	asr r0, r0, #0xc
	bpl _0201BC72
	neg r0, r0
_0201BC72:
	cmp r7, #0x0
	bgt _0201BC7C
	mov r1, #0x0
	mvn r1, r1
	mul r0, r1
_0201BC7C:
	add sp, #0x38
	pop {r3-r7, pc}
	.balign 4
_0201BC80: .word 0x00000000

	thumb_func_start FUN_0201BC84
FUN_0201BC84: ; 0x0201BC84
	push {r3-r5, lr}
	lsl r0, r0, #0xd
	add r4, r1, #0x0
	ldr r2, _0201BCB4 ; =0x0000323D
	asr r1, r0, #0x1f
	mov r3, #0x0
	blx _ll_mul
	add r5, r0, #0x0
	ldr r0, _0201BCB8 ; =0x0000FFFF
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	mul r0, r4
	add r2, r5, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	asr r1, r2, #0xc
	blx _s32_div_f
	pop {r3-r5, pc}
	nop
_0201BCB4: .word 0x0000323D
_0201BCB8: .word 0x0000FFFF

	thumb_func_start FUN_0201BCBC
FUN_0201BCBC: ; 0x0201BCBC
	ldr r1, _0201BCC4 ; =0x02105BB4
	str r0, [r1, #0x0]
	bx lr
	nop
_0201BCC4: .word 0x02105BB4

	thumb_func_start FUN_0201BCC8
FUN_0201BCC8: ; 0x0201BCC8
	push {r4-r6, lr}
	ldr r4, _0201BCF8 ; =0x021C5714
	mov r5, #0x0
_0201BCCE:
	ldr r3, [r4, #0x0]
	cmp r3, #0x0
	bne _0201BCE8
	ldr r6, _0201BCF8 ; =0x021C5714
	lsl r4, r5, #0x2
	bl FUN_0200CA7C
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	cmp r0, #0x0
	bne _0201BCF0
	mov r5, #0x8
	b _0201BCF0
_0201BCE8:
	add r5, r5, #0x1
	add r4, r4, #0x4
	cmp r5, #0x8
	blt _0201BCCE
_0201BCF0:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	pop {r4-r6, pc}
	nop
_0201BCF8: .word 0x021C5714

	thumb_func_start FUN_0201BCFC
FUN_0201BCFC: ; 0x0201BCFC
	push {r4-r6, lr}
	add r5, r0, #0x0
	cmp r5, #0x8
	blo _0201BD08
	bl ErrorHandling
_0201BD08:
	ldr r6, _0201BD40 ; =0x021C5714
	lsl r4, r5, #0x2
	ldr r0, [r6, r4]
	cmp r0, #0x0
	bne _0201BD16
	bl ErrorHandling
_0201BD16:
	cmp r5, #0x8
	bhs _0201BD3C
	ldr r0, [r6, r4]
	cmp r0, #0x0
	beq _0201BD3C
	bl FUN_0201B6C8
	add r5, r0, #0x0
	beq _0201BD32
	bl FUN_0201C238
	add r0, r5, #0x0
	bl FUN_02016A18
_0201BD32:
	ldr r0, [r6, r4]
	bl FUN_0200CAB4
	mov r0, #0x0
	str r0, [r6, r4]
_0201BD3C:
	pop {r4-r6, pc}
	nop
_0201BD40: .word 0x021C5714

	thumb_func_start FUN_0201BD44
FUN_0201BD44: ; 0x0201BD44
	lsl r1, r0, #0x2
	ldr r0, _0201BD58 ; =0x021C5714
	ldr r0, [r0, r1]
	cmp r0, #0x0
	beq _0201BD52
	mov r0, #0x1
	bx lr
_0201BD52:
	mov r0, #0x0
	bx lr
	nop
_0201BD58: .word 0x021C5714

	thumb_func_start FUN_0201BD5C
FUN_0201BD5C: ; 0x0201BD5C
	mov r1, #0x0
	ldr r2, _0201BD6C ; =0x021C5714
	add r0, r1, #0x0
_0201BD62:
	add r1, r1, #0x1
	stmia r2!, {r0}
	cmp r1, #0x8
	blt _0201BD62
	bx lr
	.balign 4
_0201BD6C: .word 0x021C5714

	thumb_func_start FUN_0201BD70
FUN_0201BD70: ; 0x0201BD70
	push {r3, lr}
	bl FUN_0201BD44
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}

	thumb_func_start FUN_0201BD7C
FUN_0201BD7C: ; 0x0201BD7C
	ldr r3, _0201BD80 ; =FUN_0201BCFC
	bx r3
	.balign 4
_0201BD80: .word FUN_0201BCFC 

	thumb_func_start FUN_0201BD84
FUN_0201BD84: ; 0x0201BD84
	push {r3, lr}
	sub sp, #0x18
	str r0, [sp, #0x4]
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x0]
	add r2, sp, #0x0
	strb r1, [r2, #0x9]
	lsl r0, r0, #0x18
	strb r3, [r2, #0xa]
	lsr r0, r0, #0x18
	strb r0, [r2, #0xb]
	strb r3, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldr r0, _0201BDDC ; =0x02105BB4
	lsl r1, r1, #0x3
	ldr r0, [r0, #0x0]
	add r1, r0, r1
	ldrb r0, [r1, #0x2]
	strb r0, [r2, #0xe]
	ldrb r0, [r1, #0x3]
	strb r0, [r2, #0xf]
	ldrb r0, [r1, #0x4]
	strb r0, [r2, #0x10]
	ldrb r0, [r1, #0x5]
	strb r0, [r2, #0x11]
	ldrb r0, [r1, #0x6]
	strb r0, [r2, #0x12]
	ldrb r0, [r1, #0x7]
	ldr r1, [sp, #0x24]
	strb r0, [r2, #0x13]
	mov r0, #0x0
	strh r0, [r2, #0x14]
	strb r0, [r2, #0x16]
	mov r0, #0xff
	strb r0, [r2, #0x17]
	ldr r2, [sp, #0x28]
	add r0, sp, #0x0
	bl FUN_0201BE98
	add sp, #0x18
	pop {r3, pc}
	nop
_0201BDDC: .word 0x02105BB4

	thumb_func_start FUN_0201BDE0
FUN_0201BDE0: ; 0x0201BDE0
	push {r3, lr}
	sub sp, #0x18
	str r0, [sp, #0x4]
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x0]
	add r2, sp, #0x0
	strb r1, [r2, #0x9]
	lsl r0, r0, #0x18
	strb r3, [r2, #0xa]
	lsr r0, r0, #0x18
	strb r0, [r2, #0xb]
	strb r3, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldr r0, _0201BE38 ; =0x02105BB4
	lsl r1, r1, #0x3
	ldr r0, [r0, #0x0]
	add r1, r0, r1
	ldrb r0, [r1, #0x2]
	strb r0, [r2, #0xe]
	ldrb r0, [r1, #0x3]
	strb r0, [r2, #0xf]
	ldrb r0, [r1, #0x4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x10]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x11]
	lsr r0, r1, #0x8
	strb r0, [r2, #0x13]
	strb r1, [r2, #0x12]
	mov r0, #0x0
	strh r0, [r2, #0x14]
	strb r0, [r2, #0x16]
	mov r0, #0xff
	strb r0, [r2, #0x17]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x2c]
	add r0, sp, #0x0
	bl FUN_0201BE98
	add sp, #0x18
	pop {r3, pc}
	nop
_0201BE38: .word 0x02105BB4

	thumb_func_start FUN_0201BE3C
FUN_0201BE3C: ; 0x0201BE3C
	push {r3, lr}
	sub sp, #0x18
	str r0, [sp, #0x4]
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x20]
	str r2, [sp, #0x0]
	add r2, sp, #0x0
	strb r1, [r2, #0x9]
	lsl r0, r0, #0x18
	strb r3, [r2, #0xa]
	lsr r0, r0, #0x18
	strb r0, [r2, #0xb]
	strb r3, [r2, #0xc]
	strb r0, [r2, #0xd]
	ldr r0, [sp, #0x2c]
	strb r0, [r2, #0xe]
	ldr r0, [sp, #0x30]
	strb r0, [r2, #0xf]
	ldr r0, _0201BE94 ; =0x02105BB4
	ldr r3, [r0, #0x0]
	lsl r0, r1, #0x3
	add r0, r3, r0
	ldrb r0, [r0, #0x4]
	ldr r1, [sp, #0x28]
	strb r0, [r2, #0x10]
	lsr r0, r1, #0x10
	strb r0, [r2, #0x11]
	lsr r0, r1, #0x8
	strb r0, [r2, #0x13]
	strb r1, [r2, #0x12]
	mov r0, #0x0
	strh r0, [r2, #0x14]
	strb r0, [r2, #0x16]
	mov r0, #0xff
	strb r0, [r2, #0x17]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x34]
	add r0, sp, #0x0
	bl FUN_0201BE98
	add sp, #0x18
	pop {r3, pc}
	nop
_0201BE94: .word 0x02105BB4

	thumb_func_start FUN_0201BE98
FUN_0201BE98: ; 0x0201BE98
	push {r3-r7, lr}
	add r7, r0, #0x0
	ldr r0, _0201BFD0 ; =0x02105BB4
	add r6, r1, #0x0
	ldr r0, [r0, #0x0]
	add r5, r2, #0x0
	cmp r0, #0x0
	bne _0201BEAC
	mov r0, #0xff
	pop {r3-r7, pc}
_0201BEAC:
	mov r0, #0x0
	mov r1, #0x30
	bl FUN_02016998
	add r4, r0, #0x0
	mov r1, #0x1
	add r0, #0x23
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	mov r3, #0x0
	add r0, #0x24
	strb r3, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x25
	ldrb r2, [r0, #0x0]
	mov r0, #0x7f
	bic r2, r0
	lsl r0, r6, #0x18
	lsr r1, r0, #0x18
	mov r0, #0x7f
	and r0, r1
	add r1, r2, #0x0
	orr r1, r0
	add r0, r4, #0x0
	add r0, #0x25
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x26
	strb r3, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x27
	strb r3, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x29
	strb r3, [r0, #0x0]
	add r1, r3, #0x0
_0201BEF4:
	add r0, r4, r3
	add r3, r3, #0x1
	strb r1, [r0, #0x1c]
	cmp r3, #0x7
	blt _0201BEF4
	add r3, r7, #0x0
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r4, #0x0]
	bl FUN_02021F2C
	str r0, [r4, #0x0]
	ldr r0, _0201BFD4 ; =0x021C570C
	str r5, [r4, #0x18]
	mov r1, #0x0
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	bl FUN_0201C1A8
	cmp r6, #0xff
	beq _0201BF74
	cmp r6, #0x0
	beq _0201BF74
	add r0, r4, #0x0
	add r0, #0x25
	ldrb r2, [r0, #0x0]
	mov r1, #0x7f
	add r0, r2, #0x0
	bic r0, r1
	lsl r1, r2, #0x19
	lsr r1, r1, #0x19
	add r1, #0xff
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	mov r1, #0x7f
	and r1, r2
	orr r1, r0
	add r0, r4, #0x0
	add r0, #0x25
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x25
	ldrb r1, [r0, #0x0]
	mov r0, #0x80
	mov r2, #0x1
	orr r1, r0
	add r0, r4, #0x0
	add r0, #0x25
	strb r1, [r0, #0x0]
	ldr r0, _0201BFD8 ; =FUN_0201BFDC
	add r1, r4, #0x0
	bl FUN_0201BCC8
	add r1, r4, #0x0
	add r1, #0x28
	strb r0, [r1, #0x0]
	add r4, #0x28
	ldrb r0, [r4, #0x0]
	pop {r3-r7, pc}
_0201BF74:
	add r0, r4, #0x0
	add r0, #0x25
	ldrb r1, [r0, #0x0]
	mov r0, #0x7f
	mov r5, #0x0
	bic r1, r0
	add r0, r4, #0x0
	add r0, #0x25
	strb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x25
	ldrb r1, [r0, #0x0]
	mov r0, #0x80
	bic r1, r0
	add r0, r4, #0x0
	add r0, #0x25
	strb r1, [r0, #0x0]
	ldrb r0, [r7, #0x11]
	ldrb r1, [r7, #0x12]
	ldrb r2, [r7, #0x13]
	bl FUN_0201C05C
	mov r7, #0x1
	lsl r7, r7, #0xa
_0201BFA4:
	add r0, r4, #0x0
	bl FUN_0201C048
	cmp r0, #0x1
	beq _0201BFB4
	add r5, r5, #0x1
	cmp r5, r7
	blo _0201BFA4
_0201BFB4:
	cmp r6, #0xff
	beq _0201BFBE
	ldr r0, [r4, #0x4]
	bl FUN_020191D0
_0201BFBE:
	add r0, r4, #0x0
	bl FUN_0201C238
	add r0, r4, #0x0
	bl FUN_02016A18
	mov r0, #0x8
	pop {r3-r7, pc}
	nop
_0201BFD0: .word 0x02105BB4
_0201BFD4: .word 0x021C570C
_0201BFD8: .word FUN_0201BFDC 

	thumb_func_start FUN_0201BFDC
FUN_0201BFDC: ; 0x0201BFDC
	push {r4, lr}
	ldr r0, _0201C044 ; =0x021C570C
	add r4, r1, #0x0
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201C042
	add r0, r4, #0x0
	add r0, #0x29
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201C036
	mov r0, #0x0
	strh r0, [r4, #0x2a]
	ldrb r0, [r4, #0x11]
	ldrb r1, [r4, #0x12]
	ldrb r2, [r4, #0x13]
	bl FUN_0201C05C
	add r0, r4, #0x0
	bl FUN_0201C048
	cmp r0, #0x0
	beq _0201C014
	cmp r0, #0x1
	beq _0201C02C
	cmp r0, #0x3
	beq _0201C01A
	pop {r4, pc}
_0201C014:
	ldr r0, [r4, #0x4]
	bl FUN_020191D0
_0201C01A:
	ldr r2, [r4, #0x18]
	cmp r2, #0x0
	beq _0201C042
	ldrh r1, [r4, #0x2a]
	add r0, r4, #0x0
	blx r2
	add r4, #0x29
	strb r0, [r4, #0x0]
	pop {r4, pc}
_0201C02C:
	add r4, #0x28
	ldrb r0, [r4, #0x0]
	bl FUN_0201BCFC
	pop {r4, pc}
_0201C036:
	ldrh r1, [r4, #0x2a]
	ldr r2, [r4, #0x18]
	add r0, r4, #0x0
	blx r2
	add r4, #0x29
	strb r0, [r4, #0x0]
_0201C042:
	pop {r4, pc}
	.balign 4
_0201C044: .word 0x021C570C

	thumb_func_start FUN_0201C048
FUN_0201C048: ; 0x0201C048
	push {r4, lr}
	add r4, r0, #0x0
_0201C04C:
	ldrb r0, [r4, #0x9]
	add r1, r4, #0x0
	bl FUN_02002DB0
	cmp r0, #0x2
	beq _0201C04C
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201C05C
FUN_0201C05C: ; 0x0201C05C
	push {r3-r7, lr}
	sub sp, #0x30
	ldr r3, _0201C0F8 ; =0x021C570C
	mov r5, #0x0
	str r5, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	strh r1, [r3, #0x6]
	strh r0, [r3, #0x2]
	add r0, sp, #0x20
	strh r2, [r3, #0x4]
	str r5, [sp, #0x14]
	str r0, [sp, #0x8]
	mov r12, r0
	mov lr, r0
	str r0, [sp, #0x18]
_0201C07E:
	mov r0, #0x0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x8]
	ldr r0, [r0, #0x0]
	str r0, [sp, #0x1c]
_0201C08C:
	mov r0, #0x0
	str r0, [sp, #0xc]
	mov r0, lr
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x4]
	ldr r0, [r0, #0x0]
	lsl r7, r0, #0x4
_0201C09A:
	ldr r0, [sp, #0x0]
	mov r3, #0x0
	ldr r0, [r0, #0x0]
	mov r4, r12
	lsl r6, r0, #0x8
_0201C0A4:
	ldr r0, [r4, #0x0]
	add r1, r7, #0x0
	lsl r0, r0, #0xc
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x1c]
	add r3, r3, #0x1
	add r2, r0, #0x0
	orr r2, r1
	lsl r1, r5, #0x1
	ldr r0, _0201C0FC ; =0x021C5734
	add r5, r5, #0x1
	add r4, r4, #0x4
	strh r2, [r0, r1]
	cmp r3, #0x4
	blt _0201C0A4
	ldr r0, [sp, #0x0]
	add r0, r0, #0x4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0xc]
	add r0, r0, #0x1
	str r0, [sp, #0xc]
	cmp r0, #0x4
	blt _0201C09A
	ldr r0, [sp, #0x4]
	add r0, r0, #0x4
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x10]
	add r0, r0, #0x1
	str r0, [sp, #0x10]
	cmp r0, #0x4
	blt _0201C08C
	ldr r0, [sp, #0x8]
	add r0, r0, #0x4
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x14]
	add r0, r0, #0x1
	str r0, [sp, #0x14]
	cmp r0, #0x4
	blt _0201C07E
	add sp, #0x30
	pop {r3-r7, pc}
	.balign 4
_0201C0F8: .word 0x021C570C
_0201C0FC: .word 0x021C5734

	thumb_func_start FUN_0201C100
FUN_0201C100: ; 0x0201C100
	ldrh r2, [r0, #0x0]
	lsr r2, r2, #0x8
	lsl r3, r2, #0x1
	ldr r2, _0201C1A4 ; =0x021C5734
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x0]
	ldrh r3, [r0, #0x0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x2]
	ldrh r3, [r0, #0x2]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x4]
	ldrh r3, [r0, #0x2]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x6]
	ldrh r3, [r0, #0x4]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x8]
	ldrh r3, [r0, #0x4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xa]
	ldrh r3, [r0, #0x6]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xc]
	ldrh r3, [r0, #0x6]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0xe]
	ldrh r3, [r0, #0x8]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x10]
	ldrh r3, [r0, #0x8]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x12]
	ldrh r3, [r0, #0xa]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x14]
	ldrh r3, [r0, #0xa]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x16]
	ldrh r3, [r0, #0xc]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x18]
	ldrh r3, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x17
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1a]
	ldrh r3, [r0, #0xe]
	lsr r3, r3, #0x8
	lsl r3, r3, #0x1
	ldrh r3, [r2, r3]
	strh r3, [r1, #0x1c]
	ldrh r0, [r0, #0xe]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x17
	ldrh r0, [r2, r0]
	strh r0, [r1, #0x1e]
	bx lr
	.balign 4
_0201C1A4: .word 0x021C5734

	thumb_func_start FUN_0201C1A8
FUN_0201C1A8: ; 0x0201C1A8
	mov r1, #0x0
	str r1, [r0, #0x2c]
	bx lr
	.balign 4

	thumb_func_start FUN_0201C1B0
FUN_0201C1B0: ; 0x0201C1B0
	push {r3-r5, lr}
	sub sp, #0x8
	mov r1, #0x6
	mov r0, #0x0
	lsl r1, r1, #0x8
	bl FUN_02016998
	mov r2, #0x0
	add r5, r0, #0x0
	str r2, [sp, #0x0]
	mov r0, #0xe
	mov r1, #0x5
	add r3, sp, #0x4
	bl FUN_02006BB0
	add r4, r0, #0x0
	ldr r0, [sp, #0x4]
	mov r2, #0x6
	ldr r0, [r0, #0x14]
	add r1, r5, #0x0
	lsl r2, r2, #0x8
	blx MIi_CpuCopy32
	add r0, r4, #0x0
	bl FUN_02016A18
	add r0, r5, #0x0
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201C1EC
FUN_0201C1EC: ; 0x0201C1EC
	push {r3-r7, lr}
	sub sp, #0x18
	add r4, r0, #0x0
	ldr r0, [r4, #0x2c]
	add r7, r3, #0x0
	ldr r5, [r4, #0x4]
	cmp r0, #0x0
	bne _0201C202
	bl FUN_0201C1B0
	str r0, [r4, #0x2c]
_0201C202:
	mov r0, #0x6
	lsl r0, r0, #0x6
	add r6, r7, #0x0
	mul r6, r0
	add r0, r5, #0x0
	ldr r4, [r4, #0x2c]
	bl FUN_0201AB0C
	sub r0, r0, #0x3
	lsl r0, r0, #0x13
	mov r1, #0x18
	lsr r2, r0, #0x10
	str r1, [sp, #0x0]
	mov r0, #0x20
	str r0, [sp, #0x4]
	str r2, [sp, #0x8]
	mov r2, #0x0
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0x0
	add r1, r4, r6
	add r3, r2, #0x0
	bl FUN_02019658
	add sp, #0x18
	pop {r3-r7, pc}

	thumb_func_start FUN_0201C238
FUN_0201C238: ; 0x0201C238
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x2c]
	cmp r0, #0x0
	beq _0201C24A
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, #0x2c]
_0201C24A:
	pop {r4, pc}

	thumb_func_start FUN_0201C24C
FUN_0201C24C: ; 0x0201C24C
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, _0201C298 ; =0x021C5934
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201C25E
	bl ErrorHandling
_0201C25E:
	add r0, r4, #0x0
	mov r1, #0xc
	bl FUN_02016998
	ldr r1, _0201C298 ; =0x021C5934
	cmp r0, #0x0
	str r0, [r1, #0x0]
	bne _0201C272
	bl ErrorHandling
_0201C272:
	add r0, r4, #0x0
	lsl r1, r5, #0x4
	bl FUN_02016998
	ldr r1, _0201C298 ; =0x021C5934
	ldr r2, [r1, #0x0]
	str r0, [r2, #0x8]
	ldr r0, [r1, #0x0]
	mov r2, #0x0
	str r5, [r0, #0x0]
	ldr r0, [r1, #0x0]
	str r2, [r0, #0x4]
	ldr r1, [r1, #0x0]
	ldr r0, [r1, #0x8]
	ldr r1, [r1, #0x0]
	blx FUN_020AEF1C
	pop {r3-r5, pc}
	nop
_0201C298: .word 0x021C5934

	thumb_func_start FUN_0201C29C
FUN_0201C29C: ; 0x0201C29C
	push {r3, lr}
	ldr r0, _0201C2C4 ; =0x021C5934
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201C2AA
	bl ErrorHandling
_0201C2AA:
	ldr r0, _0201C2C4 ; =0x021C5934
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x8]
	bl FUN_02016A18
	ldr r0, _0201C2C4 ; =0x021C5934
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201C2C4 ; =0x021C5934
	mov r1, #0x0
	str r1, [r0, #0x0]
	pop {r3, pc}
	.balign 4
_0201C2C4: .word 0x021C5934

	thumb_func_start FUN_0201C2C8
FUN_0201C2C8: ; 0x0201C2C8
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, _0201C308 ; =0x021C5934
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	add r6, r2, #0x0
	add r7, r3, #0x0
	cmp r0, #0x0
	bne _0201C2DE
	bl ErrorHandling
_0201C2DE:
	ldr r1, _0201C308 ; =0x021C5934
	ldr r0, [r1, #0x0]
	ldr r2, [r0, #0x4]
	add r2, r2, #0x1
	str r2, [r0, #0x4]
	ldr r0, [r1, #0x0]
	ldr r1, [r0, #0x4]
	ldr r0, [r0, #0x0]
	cmp r1, r0
	blo _0201C2FA
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r7, pc}
_0201C2FA:
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r2, r6, #0x0
	add r3, r7, #0x0
	blx FUN_020AEE40
	pop {r3-r7, pc}
	.balign 4
_0201C308: .word 0x021C5934

	thumb_func_start FUN_0201C30C
FUN_0201C30C: ; 0x0201C30C
	push {r3, lr}
	ldr r0, _0201C324 ; =0x021C5934
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201C322
	blx FUN_020AEEB8
	ldr r0, _0201C324 ; =0x021C5934
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x4]
_0201C322:
	pop {r3, pc}
	.balign 4
_0201C324: .word 0x021C5934

	thumb_func_start FUN_0201C328
FUN_0201C328: ; 0x0201C328
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, r1, #0x0
	mov r1, #0x30
	mul r1, r4
	bl FUN_02016998
	ldr r2, _0201C344 ; =FUN_0201C358
	add r1, r4, #0x0
	add r5, r0, #0x0
	blx FUN_020B4568
	add r0, r5, #0x0
	pop {r3-r5, pc}
	.balign 4
_0201C344: .word FUN_0201C358 

	thumb_func_start FUN_0201C348
FUN_0201C348: ; 0x0201C348
	ldr r3, _0201C34C ; =FUN_020B442C
	bx r3
	.balign 4
_0201C34C: .word FUN_020B442C

	thumb_func_start FUN_0201C350
FUN_0201C350: ; 0x0201C350
	ldr r3, _0201C354 ; =FUN_02016A18
	bx r3
	.balign 4
_0201C354: .word FUN_02016A18 

	thumb_func_start FUN_0201C358
FUN_0201C358: ; 0x0201C358
	push {r3, lr}
	bl FUN_0201C2C8
	pop {r3, pc}

	thumb_func_start FUN_0201C360
FUN_0201C360: ; 0x0201C360
	push {r4-r6, lr}
	add r6, r1, #0x0
	add r5, r0, #0x0
	add r0, r6, #0x0
	mov r1, #0x8
	bl FUN_02016998
	mov r1, #0x14
	add r4, r0, #0x0
	add r0, r6, #0x0
	mul r1, r5
	bl FUN_02016998
	str r0, [r4, #0x0]
	mov r6, #0x0
	str r5, [r4, #0x4]
	cmp r5, #0x0
	ble _0201C398
	add r5, r6, #0x0
_0201C386:
	ldr r0, [r4, #0x0]
	add r0, r0, r5
	bl FUN_0201C444
	ldr r0, [r4, #0x4]
	add r6, r6, #0x1
	add r5, #0x14
	cmp r6, r0
	blt _0201C386
_0201C398:
	add r0, r4, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0201C39C
FUN_0201C39C: ; 0x0201C39C
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_0201C414
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201C3B4
FUN_0201C3B4: ; 0x0201C3B4
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r4, #0x0
	add r7, r2, #0x0
	mov r12, r1
	add r6, r3, #0x0
	add r2, r4, #0x0
	cmp r0, #0x0
	ble _0201C3E2
	ldr r5, [r5, #0x0]
	add r3, r5, #0x0
_0201C3CC:
	ldr r1, [r3, #0x0]
	cmp r1, #0x0
	bne _0201C3DA
	mov r0, #0x14
	mul r0, r2
	add r4, r5, r0
	b _0201C3E2
_0201C3DA:
	add r2, r2, #0x1
	add r3, #0x14
	cmp r2, r0
	blt _0201C3CC
_0201C3E2:
	cmp r4, #0x0
	bne _0201C3EA
	mov r0, #0x0
	pop {r3-r7, pc}
_0201C3EA:
	mov r0, r12
	str r0, [r4, #0x0]
	str r7, [r4, #0x4]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0x8]
	str r0, [r4, #0xc]
	mov r0, #0xff
	strb r0, [r4, #0x10]
	lsl r1, r1, #0x4
	strb r0, [r4, #0x11]
	add r0, r4, #0x0
	lsr r1, r1, #0x10
	bl FUN_0201C454
	add r0, r4, #0x0
	pop {r3-r7, pc}

	thumb_func_start FUN_0201C40C
FUN_0201C40C: ; 0x0201C40C
	ldr r3, _0201C410 ; =FUN_0201C444
	bx r3
	.balign 4
_0201C410: .word FUN_0201C444 

	thumb_func_start FUN_0201C414
FUN_0201C414: ; 0x0201C414
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r6, #0x0
	cmp r0, #0x0
	ble _0201C434
	add r4, r6, #0x0
_0201C422:
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	bl FUN_0201C444
	ldr r0, [r5, #0x4]
	add r6, r6, #0x1
	add r4, #0x14
	cmp r6, r0
	blt _0201C422
_0201C434:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201C438
FUN_0201C438: ; 0x0201C438
	ldr r3, _0201C440 ; =FUN_0201C454
	lsl r1, r1, #0x4
	lsr r1, r1, #0x10
	bx r3
	.balign 4
_0201C440: .word FUN_0201C454 

	thumb_func_start FUN_0201C444
FUN_0201C444: ; 0x0201C444
	mov r1, #0x0
	str r1, [r0, #0x0]
	str r1, [r0, #0x4]
	str r1, [r0, #0x8]
	str r1, [r0, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	bx lr

	thumb_func_start FUN_0201C454
FUN_0201C454: ; 0x0201C454
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	ldr r0, [r4, #0x0]
	bl FUN_02022244
	add r2, sp, #0x0
	strb r0, [r2, #0x0]
	lsr r0, r0, #0x8
	strb r0, [r2, #0x1]
	ldrb r0, [r2, #0x0]
	add r1, sp, #0x0
	add r1, #0x2
	strb r0, [r2, #0x2]
	ldrb r0, [r2, #0x1]
	strb r0, [r2, #0x3]
	ldrb r3, [r4, #0x10]
	ldrb r0, [r2, #0x2]
	cmp r3, r0
	beq _0201C482
	add r0, r4, #0x0
	bl FUN_0201C49C
_0201C482:
	add r0, sp, #0x0
	ldrb r1, [r4, #0x11]
	ldrb r0, [r0, #0x3]
	cmp r1, r0
	beq _0201C496
	add r1, sp, #0x0
	add r0, r4, #0x0
	add r1, #0x2
	bl FUN_0201C4C8
_0201C496:
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201C49C
FUN_0201C49C: ; 0x0201C49C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_0201C4F4
	ldr r3, [r5, #0x8]
	add r2, r0, #0x0
	lsl r1, r3, #0x10
	ldr r6, _0201C4C4 ; =0x7FFF0000
	mov r0, #0x0
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #0x4
	bl FUN_0201C2C8
	ldrb r0, [r4, #0x0]
	strb r0, [r5, #0x10]
	pop {r4-r6, pc}
	nop
_0201C4C4: .word 0x7FFF0000

	thumb_func_start FUN_0201C4C8
FUN_0201C4C8: ; 0x0201C4C8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	bl FUN_0201C500
	ldr r3, [r5, #0xc]
	add r2, r0, #0x0
	lsl r1, r3, #0x10
	ldr r6, _0201C4F0 ; =0xFFFF0000
	mov r0, #0x1
	and r3, r6
	lsr r3, r3, #0x10
	lsr r1, r1, #0xd
	lsl r3, r3, #0x3
	bl FUN_0201C2C8
	ldrb r0, [r4, #0x1]
	strb r0, [r5, #0x11]
	pop {r4-r6, pc}
	nop
_0201C4F0: .word 0xFFFF0000

	thumb_func_start FUN_0201C4F4
FUN_0201C4F4: ; 0x0201C4F4
	ldr r3, _0201C4FC ; =0x0201C50D
	ldr r0, [r0, #0x4]
	ldrb r1, [r1, #0x0]
	bx r3
	.balign 4
_0201C4FC: .word 0x0201C50D

	thumb_func_start FUN_0201C500
FUN_0201C500: ; 0x0201C500
	ldr r3, _0201C508 ; =0x0201C541
	ldr r0, [r0, #0x4]
	ldrb r1, [r1, #0x1]
	bx r3
	.balign 4
_0201C508: .word 0x0201C541

	thumb_func_start FUN_0201C50C
FUN_0201C50C: ; 0x0201C50C
	push {r3-r4}
	add r2, r0, #0x0
	add r2, #0x42
	ldrh r2, [r2, #0x0]
	add r4, r0, #0x0
	add r4, #0x3c
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #0x4
	mul r1, r2
	add r3, r3, r1
	bne _0201C52A
	mov r0, #0x0
	pop {r3-r4}
	bx lr
_0201C52A:
	ldr r1, [r0, #0x14]
	add r2, r0, r1
	ldr r1, [r3, #0x0]
	ldr r0, [r0, #0x8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x3
	add r0, r2, r0
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201C540
FUN_0201C540: ; 0x0201C540
	push {r3-r4}
	ldrh r2, [r0, #0x34]
	add r4, r0, r2
	ldrh r2, [r4, #0x6]
	add r3, r4, r2
	ldrh r2, [r4, r2]
	add r3, r3, #0x4
	mul r1, r2
	add r2, r3, r1
	bne _0201C55A
	mov r0, #0x0
	pop {r3-r4}
	bx lr
_0201C55A:
	ldr r1, [r0, #0x38]
	add r1, r0, r1
	ldrh r0, [r2, #0x0]
	lsl r0, r0, #0x3
	add r0, r1, r0
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201C568
FUN_0201C568: ; 0x0201C568
	ldr r1, [r1, #0x0]
	ldr r0, [r0, #0x8]
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	lsr r1, r1, #0xd
	lsr r0, r0, #0xd
	add r0, r1, r0
	bx lr

	thumb_func_start FUN_0201C578
FUN_0201C578: ; 0x0201C578
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	add r0, sp, #0x0
	bl FUN_0201C750
	add r0, r4, #0x0
	add r0, #0x3c
	add r1, sp, #0x0
	blx FUN_020BC2A0
	add r1, r0, #0x0
	bne _0201C598
	add sp, #0x10
	mov r0, #0x0
	pop {r4, pc}
_0201C598:
	add r0, r4, #0x0
	bl FUN_0201C568
	add sp, #0x10
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201C5A4
FUN_0201C5A4: ; 0x0201C5A4
	push {r3, lr}
	ldr r0, [r1, #0x0]
	mov r1, #0x7
	lsl r1, r1, #0x1a
	and r1, r0
	lsr r1, r1, #0x1a
	cmp r1, #0x4
	bhi _0201C5DA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201C5C0: ; jump table (using 16-bit offset)
	.short _0201C5DA - _0201C5C0 - 2; case 0
	.short _0201C5D6 - _0201C5C0 - 2; case 1
	.short _0201C5CA - _0201C5C0 - 2; case 2
	.short _0201C5CE - _0201C5C0 - 2; case 3
	.short _0201C5D2 - _0201C5C0 - 2; case 4
_0201C5CA:
	mov r1, #0x4
	b _0201C5DE
_0201C5CE:
	mov r1, #0x2
	b _0201C5DE
_0201C5D2:
	mov r1, #0x1
	b _0201C5DE
_0201C5D6:
	mov r1, #0x1
	b _0201C5DE
_0201C5DA:
	mov r0, #0x0
	pop {r3, pc}
_0201C5DE:
	mov r3, #0x7
	lsl r3, r3, #0x14
	add r2, r0, #0x0
	and r2, r3
	lsl r3, r3, #0x3
	and r0, r3
	lsr r2, r2, #0x14
	lsr r0, r0, #0x17
	lsl r2, r2, #0x4
	lsl r0, r0, #0x4
	mul r0, r2
	blx _u32_div_f
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201C5FC
FUN_0201C5FC: ; 0x0201C5FC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0x0
	add r0, sp, #0x0
	bl FUN_0201C750
	add r0, r4, #0x0
	add r0, #0x3c
	add r1, sp, #0x0
	blx FUN_020BC2A0
	add r1, r0, #0x0
	add r0, r4, #0x0
	bl FUN_0201C5A4
	add sp, #0x10
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201C620
FUN_0201C620: ; 0x0201C620
	ldrb r3, [r0, #0x0]
	strb r3, [r1, #0x0]
	ldrb r0, [r0, #0x1]
	strb r0, [r2, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0201C62C
FUN_0201C62C: ; 0x0201C62C
	ldrb r3, [r0, #0x2]
	strb r3, [r1, #0x0]
	ldrb r0, [r0, #0x3]
	strb r0, [r2, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0201C638
FUN_0201C638: ; 0x0201C638
	push {r4-r5}
	ldr r5, _0201C6B0 ; =0xFFFFFFF8
	ldr r4, [sp, #0xc]
	add r5, sp
	ldrb r5, [r5, #0x18]
	cmp r5, #0x3
	bhi _0201C678
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #0x6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0201C652: ; jump table (using 16-bit offset)
	.short _0201C65A - _0201C652 - 2; case 0
	.short _0201C662 - _0201C652 - 2; case 1
	.short _0201C66A - _0201C652 - 2; case 2
	.short _0201C672 - _0201C652 - 2; case 3
_0201C65A:
	lsl r4, r4, #0x3
	add r4, r0, r4
	ldrb r4, [r4, #0x4]
	b _0201C678
_0201C662:
	lsl r4, r4, #0x3
	add r4, r0, r4
	ldrb r4, [r4, #0x5]
	b _0201C678
_0201C66A:
	lsl r4, r4, #0x3
	add r4, r0, r4
	ldrb r4, [r4, #0x6]
	b _0201C678
_0201C672:
	lsl r4, r4, #0x3
	add r4, r0, r4
	ldrb r4, [r4, #0x7]
_0201C678:
	cmp r1, #0x0
	beq _0201C682
	lsl r5, r4, #0x3
	ldrb r5, [r0, r5]
	strb r5, [r1, #0x0]
_0201C682:
	cmp r2, #0x0
	beq _0201C68E
	lsl r1, r4, #0x3
	add r1, r0, r1
	ldrb r1, [r1, #0x1]
	strb r1, [r2, #0x0]
_0201C68E:
	cmp r3, #0x0
	beq _0201C69A
	lsl r1, r4, #0x3
	add r1, r0, r1
	ldrb r1, [r1, #0x2]
	strb r1, [r3, #0x0]
_0201C69A:
	ldr r2, [sp, #0x8]
	cmp r2, #0x0
	beq _0201C6A8
	lsl r1, r4, #0x3
	add r0, r0, r1
	ldrb r0, [r0, #0x3]
	strb r0, [r2, #0x0]
_0201C6A8:
	add r0, r4, #0x0
	pop {r4-r5}
	bx lr
	nop
_0201C6B0: .word 0xFFFFFFF8

	thumb_func_start FUN_0201C6B4
FUN_0201C6B4: ; 0x0201C6B4
	mov r2, #0x0
	ldrsb r1, [r0, r2]
	cmp r1, #0x0
	beq _0201C6C4
_0201C6BC:
	add r2, r2, #0x1
	ldrsb r1, [r0, r2]
	cmp r1, #0x0
	bne _0201C6BC
_0201C6C4:
	add r0, r2, #0x0
	bx lr

	thumb_func_start FUN_0201C6C8
FUN_0201C6C8: ; 0x0201C6C8
	push {r4-r5}
	mov r4, #0x1
	mov r3, #0x0
	lsl r4, r4, #0x8
_0201C6D0:
	ldrsb r5, [r0, r3]
	strb r5, [r1, r3]
	ldrsb r5, [r0, r3]
	cmp r2, r5
	beq _0201C6DE
	cmp r5, #0x0
	bne _0201C6FE
_0201C6DE:
	mov r4, #0x0
	strb r4, [r1, r3]
	cmp r2, #0xd
	bne _0201C6F6
	add r1, r3, #0x1
	ldrsb r1, [r0, r1]
	cmp r1, #0xa
	bne _0201C6F6
	add r1, r3, #0x2
	add r0, r0, r1
	pop {r4-r5}
	bx lr
_0201C6F6:
	add r1, r3, #0x1
	add r0, r0, r1
	pop {r4-r5}
	bx lr
_0201C6FE:
	add r3, r3, #0x1
	cmp r3, r4
	blt _0201C6D0
	mov r0, #0x0
	pop {r4-r5}
	bx lr
	.balign 4

	thumb_func_start FUN_0201C70C
FUN_0201C70C: ; 0x0201C70C
	push {r4-r6, lr}
	add r4, r0, #0x0
	bl FUN_0201C6B4
	mov r5, #0x1
	mov r6, #0x0
	sub r3, r0, #0x1
	bmi _0201C74A
	sub r1, r6, #0x1
	mov r0, #0xa
_0201C720:
	ldrsb r2, [r4, r3]
	cmp r2, #0x30
	blt _0201C732
	cmp r2, #0x39
	bgt _0201C732
	sub r2, #0x30
	mul r2, r5
	add r6, r6, r2
	b _0201C744
_0201C732:
	cmp r3, #0x0
	bne _0201C73E
	cmp r2, #0x2d
	bne _0201C744
	mul r6, r1
	b _0201C744
_0201C73E:
	mov r0, #0x0
	mvn r0, r0
	pop {r4-r6, pc}
_0201C744:
	mul r5, r0
	sub r3, r3, #0x1
	bpl _0201C720
_0201C74A:
	add r0, r6, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201C750
FUN_0201C750: ; 0x0201C750
	push {r3-r5, lr}
	mov r2, #0x0
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r1, r2, #0x0
_0201C75A:
	lsl r0, r2, #0x2
	str r1, [r5, r0]
	add r0, r2, #0x1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #0x4
	blo _0201C75A
	add r0, r4, #0x0
	bl FUN_0201C6B4
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r2, _0201C788 ; =0x00000000
	beq _0201C784
_0201C776:
	ldrsb r0, [r4, r2]
	strb r0, [r5, r2]
	add r0, r2, #0x1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, r1
	blo _0201C776
_0201C784:
	pop {r3-r5, pc}
	nop
_0201C788: .word 0x00000000

	thumb_func_start FUN_0201C78C
FUN_0201C78C: ; 0x0201C78C
	ldr r1, _0201C79C ; =0x00000121
	cmp r0, r1
	bhs _0201C796
	mov r0, #0x1
	bx lr
_0201C796:
	mov r0, #0x0
	bx lr
	nop
_0201C79C: .word 0x00000121

	thumb_func_start FUN_0201C7A0
FUN_0201C7A0: ; 0x0201C7A0
	cmp r0, r1
	blt _0201C7A6
	add r0, r1, #0x0
_0201C7A6:
	bx lr

	thumb_func_start FUN_0201C7A8
FUN_0201C7A8: ; 0x0201C7A8
	cmp r0, r1
	bgt _0201C7AE
	add r0, r1, #0x0
_0201C7AE:
	bx lr

	thumb_func_start FUN_0201C7B0
FUN_0201C7B0: ; 0x0201C7B0
	push {r3-r7, lr}
	sub sp, #0x30
	add r4, r1, #0x0
	add r1, sp, #0x24
	blx FUN_020C5288
	add r0, r4, #0x0
	add r1, sp, #0x18
	blx FUN_020C5288
	ldr r0, [sp, #0x24]
	ldr r4, [sp, #0x18]
	str r0, [sp, #0x0]
	asr r0, r0, #0x1f
	str r0, [sp, #0x4]
	ldr r0, [sp, #0x20]
	asr r6, r4, #0x1f
	str r0, [sp, #0x8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x8]
	asr r7, r0, #0x1f
	ldr r3, [sp, #0xc]
	add r1, r7, #0x0
	str r0, [sp, #0x10]
	blx _ll_mul
	str r0, [sp, #0x14]
	add r5, r1, #0x0
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	add r2, r4, #0x0
	add r3, r6, #0x0
	blx _ll_mul
	mov r2, #0x2
	ldr r3, [sp, #0x14]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201C874 ; =0x00000000
	adc r5, r2
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #0x2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201C874 ; =0x00000000
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	add r5, r3, r0
	ldr r0, [sp, #0x10]
	add r1, r7, #0x0
	add r2, r4, #0x0
	add r3, r6, #0x0
	blx _ll_mul
	add r6, r0, #0x0
	add r4, r1, #0x0
	ldr r0, [sp, #0x0]
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x8]
	ldr r3, [sp, #0xc]
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r6, r6, r2
	adc r4, r3
	lsl r4, r4, #0x14
	lsr r6, r6, #0xc
	orr r6, r4
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	sub r0, r6, r1
	cmp r5, #0x0
	bne _0201C86A
	cmp r0, #0x0
	ble _0201C862
	add sp, #0x30
	lsl r0, r2, #0x3
	pop {r3-r7, pc}
_0201C862:
	mov r0, #0x3
	add sp, #0x30
	lsl r0, r0, #0xe
	pop {r3-r7, pc}
_0201C86A:
	add r1, r5, #0x0
	blx FUN_020C5668
	add sp, #0x30
	pop {r3-r7, pc}
	.balign 4
_0201C874: .word 0x00000000

	thumb_func_start FUN_0201C878
FUN_0201C878: ; 0x0201C878
	push {r0-r3}
	push {r4-r7, lr}
	sub sp, #0x54
	ldr r0, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x8c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x88]
	ldr r4, [sp, #0x70]
	str r0, [sp, #0x10]
	sub r0, r2, r1
	str r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x8]
	asr r0, r0, #0x1f
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x74]
	sub r3, r0, r2
	sub r0, r1, r0
	str r3, [sp, #0x20]
	asr r3, r3, #0x1f
	str r3, [sp, #0x24]
	ldr r3, [sp, #0xc]
	str r0, [sp, #0x2c]
	asr r0, r0, #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x10]
	asr r3, r3, #0x1f
	str r3, [sp, #0x28]
	asr r0, r0, #0x1f
	ldr r3, [sp, #0x68]
	str r0, [sp, #0x34]
	asr r0, r4, #0x1f
	str r0, [sp, #0x38]
	sub r2, r2, r3
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x1c]
	asr r3, r2, #0x1f
	blx _ll_mul
	add r7, r0, #0x0
	add r6, r1, #0x0
	ldr r3, [sp, #0x68]
	ldr r2, [sp, #0x74]
	ldr r0, [sp, #0x10]
	sub r2, r3, r2
	ldr r1, [sp, #0x34]
	asr r3, r2, #0x1f
	blx _ll_mul
	add r5, r1, #0x0
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	add r0, r4, #0x0
	blx _ll_mul
	mov r2, #0x2
	str r0, [sp, #0x4c]
	add r0, r1, #0x0
	mov r1, #0x0
	lsl r2, r2, #0xa
	add r3, r7, r2
	adc r6, r1
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #0x2
	ldr r6, [sp, #0x3c]
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r5, r1
	mov r6, #0x2
	lsl r5, r5, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	ldr r5, [sp, #0x4c]
	lsl r6, r6, #0xa
	add r5, r5, r6
	adc r0, r1
	lsl r0, r0, #0x14
	lsr r1, r5, #0xc
	orr r1, r0
	add r0, r2, r1
	add r0, r3, r0
	str r0, [sp, #0x4]
	ldr r3, [sp, #0x8c]
	ldr r2, [sp, #0x68]
	ldr r0, [sp, #0x10]
	sub r2, r3, r2
	ldr r1, [sp, #0x34]
	asr r3, r2, #0x1f
	blx _ll_mul
	add r7, r0, #0x0
	add r6, r1, #0x0
	ldr r3, [sp, #0x68]
	ldr r2, [sp, #0x80]
	ldr r0, [sp, #0xc]
	sub r2, r3, r2
	ldr r1, [sp, #0x28]
	asr r3, r2, #0x1f
	blx _ll_mul
	str r0, [sp, #0x40]
	add r5, r1, #0x0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r4, #0x0
	blx _ll_mul
	mov r2, #0x2
	str r0, [sp, #0x50]
	add r0, r1, #0x0
	mov r1, #0x0
	lsl r2, r2, #0xa
	add r3, r7, r2
	adc r6, r1
	lsl r2, r6, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #0x2
	ldr r6, [sp, #0x40]
	lsl r2, r2, #0xa
	add r2, r6, r2
	adc r5, r1
	mov r6, #0x2
	lsl r5, r5, #0x14
	lsr r2, r2, #0xc
	orr r2, r5
	ldr r5, [sp, #0x50]
	lsl r6, r6, #0xa
	add r5, r5, r6
	adc r0, r1
	lsl r0, r0, #0x14
	lsr r1, r5, #0xc
	orr r1, r0
	add r0, r2, r1
	add r0, r3, r0
	str r0, [sp, #0x0]
	ldr r3, [sp, #0x74]
	ldr r2, [sp, #0x68]
	ldr r0, [sp, #0xc]
	sub r2, r3, r2
	ldr r1, [sp, #0x28]
	asr r3, r2, #0x1f
	blx _ll_mul
	add r7, r0, #0x0
	add r6, r1, #0x0
	ldr r3, [sp, #0x68]
	ldr r2, [sp, #0x8c]
	ldr r0, [sp, #0x8]
	sub r2, r3, r2
	ldr r1, [sp, #0x1c]
	asr r3, r2, #0x1f
	blx _ll_mul
	add r5, r1, #0x0
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	add r0, r4, #0x0
	blx _ll_mul
	mov r3, #0x2
	mov r2, #0x0
	lsl r3, r3, #0xa
	add r4, r7, r3
	adc r6, r2
	lsl r3, r6, #0x14
	lsr r4, r4, #0xc
	orr r4, r3
	mov r3, #0x2
	ldr r6, [sp, #0x44]
	lsl r3, r3, #0xa
	add r3, r6, r3
	adc r5, r2
	lsl r5, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r5
	mov r5, #0x2
	lsl r5, r5, #0xa
	add r5, r0, r5
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r5, #0xc
	orr r1, r0
	add r0, r3, r1
	add r6, r4, r0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	blx _ll_mul
	add r7, r0, #0x0
	add r5, r1, #0x0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	blx _ll_mul
	str r0, [sp, #0x48]
	add r4, r1, #0x0
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	blx _ll_mul
	mov r12, r0
	mov r0, #0x2
	add r2, r1, #0x0
	mov r1, #0x0
	lsl r0, r0, #0xa
	add r0, r7, r0
	adc r5, r1
	lsl r3, r5, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	mov r3, #0x2
	ldr r5, [sp, #0x48]
	lsl r3, r3, #0xa
	add r3, r5, r3
	adc r4, r1
	lsl r4, r4, #0x14
	lsr r3, r3, #0xc
	orr r3, r4
	mov r4, #0x2
	lsl r4, r4, #0xa
	mov r5, r12
	add r4, r5, r4
	adc r2, r1
	lsl r2, r2, #0x14
	lsr r4, r4, #0xc
	orr r4, r2
	add r2, r3, r4
	add r0, r0, r2
	bpl _0201CA72
	add sp, #0x54
	add r0, r1, #0x0
	pop {r4-r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0201CA72:
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bge _0201CA84
	add sp, #0x54
	add r0, r1, #0x0
	pop {r4-r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0201CA84:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	bge _0201CA96
	add sp, #0x54
	add r0, r1, #0x0
	pop {r4-r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0201CA96:
	cmp r6, #0x0
	blt _0201CA9C
	mov r1, #0x1
_0201CA9C:
	add r0, r1, #0x0
	add sp, #0x54
	pop {r4-r7}
	pop {r3}
	add sp, #0x10
	bx r3

	thumb_func_start FUN_0201CAA8
FUN_0201CAA8: ; 0x0201CAA8
	push {r4-r5, lr}
	sub sp, #0x24
	add r4, r1, #0x0
	ldr r1, [r4, #0x0]
	ldr r3, _0201CB1C ; =0x020FFA38
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	asr r1, r1, #0x4
	lsl r2, r1, #0x1
	lsl r1, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r5, r0, #0x0
	bl FUN_020C3F38
	ldr r0, [r4, #0x4]
	ldr r3, _0201CB1C ; =0x020FFA38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #0x4
	lsl r2, r0, #0x1
	lsl r1, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0x0
	bl FUN_020C3F54
	add r0, r5, #0x0
	add r1, sp, #0x0
	add r2, r5, #0x0
	blx FUN_020C400C
	ldr r0, [r4, #0x8]
	ldr r3, _0201CB1C ; =0x020FFA38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #0x4
	lsl r2, r0, #0x1
	lsl r1, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0x0
	bl FUN_020C3F70
	add r0, r5, #0x0
	add r1, sp, #0x0
	add r2, r5, #0x0
	blx FUN_020C400C
	add sp, #0x24
	pop {r4-r5, pc}
	nop
_0201CB1C: .word 0x020FFA38

	thumb_func_start FUN_0201CB20
FUN_0201CB20: ; 0x0201CB20
	push {r4-r7, lr}
	sub sp, #0x24
	add r6, r1, #0x0
	add r5, r2, #0x0
	lsl r1, r6, #0x2
	ldr r2, _0201CB78 ; =0x020EDF50
	add r6, #0x5a
	add r4, r3, #0x0
	lsl r3, r6, #0x2
	ldr r1, [r2, r1]
	ldr r2, [r2, r3]
	add r7, r0, #0x0
	bl FUN_020C3F38
	lsl r1, r5, #0x2
	ldr r3, _0201CB78 ; =0x020EDF50
	add r5, #0x5a
	lsl r2, r5, #0x2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	add r0, sp, #0x0
	bl FUN_020C3F54
	add r0, r7, #0x0
	add r1, sp, #0x0
	add r2, r7, #0x0
	blx FUN_020C400C
	lsl r1, r4, #0x2
	ldr r3, _0201CB78 ; =0x020EDF50
	add r4, #0x5a
	lsl r2, r4, #0x2
	ldr r1, [r3, r1]
	ldr r2, [r3, r2]
	add r0, sp, #0x0
	bl FUN_020C3F70
	add r0, r7, #0x0
	add r1, sp, #0x0
	add r2, r7, #0x0
	blx FUN_020C400C
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4
_0201CB78: .word 0x020EDF50

	thumb_func_start FUN_0201CB7C
FUN_0201CB7C: ; 0x0201CB7C
	push {r3-r7, lr}
	asr r0, r0, #0x4
	add r7, r2, #0x0
	lsl r2, r0, #0x1
	add r6, r1, #0x0
	lsl r0, r2, #0x1
	ldr r1, _0201CBE8 ; =0x020FFA38
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	add r5, r3, #0x0
	ldr r4, [sp, #0x18]
	blx FUN_020C50B8
	add r2, r0, #0x0
	asr r1, r6, #0x1f
	add r0, r6, #0x0
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r6, #0x2
	mov r2, #0x0
	lsl r6, r6, #0xa
	add r0, r0, r6
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r3, r0, #0x1f
	lsr r1, r0, #0x13
	lsl r3, r3, #0xd
	orr r3, r1
	lsl r0, r0, #0xd
	add r0, r0, r6
	adc r3, r2
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0x0
	str r0, [r4, #0x0]
	blx _ll_mul
	mov r3, #0x0
	add r2, r6, #0x0
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x0]
	pop {r3-r7, pc}
	.balign 4
_0201CBE8: .word 0x020FFA38

	thumb_func_start FUN_0201CBEC
FUN_0201CBEC: ; 0x0201CBEC
	push {r3, lr}
	sub r0, r0, r2
	sub r2, r1, r3
	add r1, r0, #0x0
	mul r1, r0
	add r0, r2, #0x0
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0xc
	blx FUN_020C504C
	asr r0, r0, #0xc
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201CC08
FUN_0201CC08: ; 0x0201CC08
	push {r3, lr}
	ldr r0, _0201CC20 ; =0x021C5978
	ldrh r0, [r0, #0x1a]
	cmp r0, #0x0
	beq _0201CC16
	bl ErrorHandling
_0201CC16:
	ldr r0, _0201CC20 ; =0x021C5978
	mov r1, #0x0
	strh r1, [r0, #0x18]
	strh r1, [r0, #0x1a]
	pop {r3, pc}
	.balign 4
_0201CC20: .word 0x021C5978

	thumb_func_start FUN_0201CC24
FUN_0201CC24: ; 0x0201CC24
	push {r4, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	ldr r0, _0201CC74 ; =0x021C5978
	ldrh r0, [r0, #0x1a]
	cmp r0, #0x0
	beq _0201CC36
	bl ErrorHandling
_0201CC36:
	cmp r4, #0x5
	bhs _0201CC3E
	cmp r4, #0x0
	bne _0201CC44
_0201CC3E:
	add sp, #0x8
	mov r0, #0x0
	pop {r4, pc}
_0201CC44:
	ldr r0, _0201CC74 ; =0x021C5978
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0201CC52
	add sp, #0x8
	mov r0, #0x0
	pop {r4, pc}
_0201CC52:
	add r0, r4, #0x0
	bl FUN_0201CE2C
	cmp r0, #0x1
	bne _0201CC70
	mov r2, #0x0
	str r2, [sp, #0x0]
	lsl r0, r4, #0x1
	str r0, [sp, #0x4]
	mov r0, #0x2
	mov r1, #0x1
	add r3, r2, #0x0
	bl FUN_0201CC78
	mov r0, #0x1
_0201CC70:
	add sp, #0x8
	pop {r4, pc}
	.balign 4
_0201CC74: .word 0x021C5978

	thumb_func_start FUN_0201CC78
FUN_0201CC78: ; 0x0201CC78
	push {r4, lr}
	ldr r4, _0201CC9C ; =0x021C5978
	strh r0, [r4, #0x18]
	ldr r0, _0201CCA0 ; =0x021C4918
	strb r1, [r0, #0x4]
	ldr r0, _0201CCA4 ; =0x021C5938
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x0]
	str r3, [r0, #0x4]
	str r1, [r0, #0x8]
	ldr r1, [sp, #0x8]
	str r1, [r0, #0x54]
	ldr r0, _0201CCA8 ; =0x021C5944
	mov r1, #0x9
	bl FUN_0201CCAC
	pop {r4, pc}
	nop
_0201CC9C: .word 0x021C5978
_0201CCA0: .word 0x021C4918
_0201CCA4: .word 0x021C5938
_0201CCA8: .word 0x021C5944

	thumb_func_start FUN_0201CCAC
FUN_0201CCAC: ; 0x0201CCAC
	mov r3, #0x0
	cmp r1, #0x0
	ble _0201CCBE
	add r2, r3, #0x0
_0201CCB4:
	add r3, r3, #0x1
	strh r2, [r0, #0x4]
	add r0, #0x8
	cmp r3, r1
	blt _0201CCB4
_0201CCBE:
	bx lr

	thumb_func_start FUN_0201CCC0
FUN_0201CCC0: ; 0x0201CCC0
	push {r4-r6, lr}
	ldr r0, _0201CD00 ; =0x021C5978
	mov r5, #0x0
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	bne _0201CCD0
	mov r0, #0x1
	pop {r4-r6, pc}
_0201CCD0:
	mov r4, #0x4
	add r6, r4, #0x0
_0201CCD4:
	blx TP_RequestAutoSamplingStopAsync
	add r0, r4, #0x0
	blx TP_WaitBusy
	add r0, r6, #0x0
	blx TP_CheckError
	cmp r0, #0x0
	beq _0201CCEA
	add r5, r5, #0x1
_0201CCEA:
	cmp r0, #0x0
	beq _0201CCF2
	cmp r5, #0x5
	bls _0201CCD4
_0201CCF2:
	cmp r5, #0x5
	bls _0201CCFA
	mov r0, #0x2
	pop {r4-r6, pc}
_0201CCFA:
	mov r0, #0x1
	pop {r4-r6, pc}
	nop
_0201CD00: .word 0x021C5978

	thumb_func_start FUN_0201CD04
FUN_0201CD04: ; 0x0201CD04
	push {r4, lr}
	sub sp, #0x8
	ldr r0, _0201CD34 ; =0x021C5978
	ldrh r0, [r0, #0x1a]
	cmp r0, #0x0
	beq _0201CD14
	bl ErrorHandling
_0201CD14:
	bl FUN_0201CCC0
	add r4, r0, #0x0
	cmp r4, #0x1
	bne _0201CD2E
	mov r0, #0x0
	str r0, [sp, #0x0]
	add r1, r0, #0x0
	add r2, r0, #0x0
	add r3, r0, #0x0
	str r0, [sp, #0x4]
	bl FUN_0201CC78
_0201CD2E:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r4, pc}
	.balign 4
_0201CD34: .word 0x021C5978

	thumb_func_start FUN_0201CD38
FUN_0201CD38: ; 0x0201CD38
	push {r3-r7, lr}
	add r4, r0, #0x0
	ldr r0, _0201CD8C ; =0x021C5978
	add r6, r1, #0x0
	ldrh r0, [r0, #0x1a]
	add r7, r2, #0x0
	mov r5, #0x3
	cmp r0, #0x0
	beq _0201CD4E
	bl ErrorHandling
_0201CD4E:
	ldr r0, _0201CD8C ; =0x021C5978
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0201CD88
	blx TP_GetLatestIndexInAuto
	add r5, r0, #0x0
	ldr r0, _0201CD90 ; =0x021C5944
	mov r1, #0x9
	bl FUN_0201CD94
	cmp r4, #0x0
	beq _0201CD70
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_0201CFD0
_0201CD70:
	ldr r0, _0201CD8C ; =0x021C5978
	ldrh r0, [r0, #0x18]
	cmp r0, #0x1
	bne _0201CD86
	add r0, r6, #0x0
	add r1, r5, #0x0
	add r2, r7, #0x0
	bl FUN_0201CE70
	add r5, r0, #0x0
	b _0201CD88
_0201CD86:
	mov r5, #0x1
_0201CD88:
	add r0, r5, #0x0
	pop {r3-r7, pc}
	.balign 4
_0201CD8C: .word 0x021C5978
_0201CD90: .word 0x021C5944

	thumb_func_start FUN_0201CD94
FUN_0201CD94: ; 0x0201CD94
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	mov r7, #0x0
	str r1, [sp, #0x0]
	add r0, r1, #0x0
	beq _0201CDCA
	add r4, r5, #0x0
	add r6, sp, #0x4
_0201CDA6:
	add r0, sp, #0x4
	add r1, r5, #0x0
	blx TP_GetCalibratedPoint
	ldrh r0, [r6, #0x0]
	add r7, r7, #0x1
	add r5, #0x8
	strh r0, [r4, #0x0]
	ldrh r0, [r6, #0x2]
	strh r0, [r4, #0x2]
	ldrh r0, [r6, #0x4]
	strh r0, [r4, #0x4]
	ldrh r0, [r6, #0x6]
	strh r0, [r4, #0x6]
	ldr r0, [sp, #0x0]
	add r4, #0x8
	cmp r7, r0
	blo _0201CDA6
_0201CDCA:
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0201CDD0
FUN_0201CDD0: ; 0x0201CDD0
	push {r3, lr}
	ldr r0, _0201CDFC ; =0x021C5978
	ldrh r1, [r0, #0x1a]
	cmp r1, #0x0
	beq _0201CDF8
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0201CDF8
	ldr r0, _0201CE00 ; =0x021C5938
	ldr r0, [r0, #0x8]
	lsr r0, r0, #0x1
	bl FUN_0201CE2C
	cmp r0, #0x1
	beq _0201CDF2
	bl ErrorHandling
_0201CDF2:
	ldr r0, _0201CDFC ; =0x021C5978
	mov r1, #0x0
	strh r1, [r0, #0x1a]
_0201CDF8:
	pop {r3, pc}
	nop
_0201CDFC: .word 0x021C5978
_0201CE00: .word 0x021C5938

	thumb_func_start FUN_0201CE04
FUN_0201CE04: ; 0x0201CE04
	push {r3, lr}
	ldr r0, _0201CE28 ; =0x021C5978
	ldrh r1, [r0, #0x1a]
	cmp r1, #0x1
	beq _0201CE26
	ldrh r0, [r0, #0x18]
	cmp r0, #0x0
	beq _0201CE26
	bl FUN_0201CCC0
	cmp r0, #0x1
	beq _0201CE20
	bl ErrorHandling
_0201CE20:
	ldr r0, _0201CE28 ; =0x021C5978
	mov r1, #0x1
	strh r1, [r0, #0x1a]
_0201CE26:
	pop {r3, pc}
	.balign 4
_0201CE28: .word 0x021C5978

	thumb_func_start FUN_0201CE2C
FUN_0201CE2C: ; 0x0201CE2C
	push {r3-r7, lr}
	mov r5, #0x0
	lsl r0, r0, #0x10
	ldr r7, _0201CE6C ; =0x021C5944
	add r6, r5, #0x0
	lsr r4, r0, #0x10
_0201CE38:
	add r0, r6, #0x0
	add r1, r4, #0x0
	add r2, r7, #0x0
	mov r3, #0x9
	blx TP_RequestAutoSamplingStartAsync
	mov r0, #0x2
	blx TP_WaitBusy
	mov r0, #0x2
	blx TP_CheckError
	cmp r0, #0x0
	beq _0201CE56
	add r5, r5, #0x1
_0201CE56:
	cmp r0, #0x0
	beq _0201CE5E
	cmp r5, #0x5
	ble _0201CE38
_0201CE5E:
	cmp r5, #0x5
	ble _0201CE66
	mov r0, #0x2
	pop {r3-r7, pc}
_0201CE66:
	mov r0, #0x1
	pop {r3-r7, pc}
	nop
_0201CE6C: .word 0x021C5944

	thumb_func_start FUN_0201CE70
FUN_0201CE70: ; 0x0201CE70
	push {r3, lr}
	cmp r0, #0x5
	bhi _0201CE9A
	add r3, r0, r0
	add r3, pc
	ldrh r3, [r3, #0x6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0201CE82: ; jump table (using 16-bit offset)
	.short _0201CE9A - _0201CE82 - 2; case 0
	.short _0201CE8E - _0201CE82 - 2; case 1
	.short _0201CE9A - _0201CE82 - 2; case 2
	.short _0201CE8E - _0201CE82 - 2; case 3
	.short _0201CE94 - _0201CE82 - 2; case 4
	.short _0201CE94 - _0201CE82 - 2; case 5
_0201CE8E:
	bl FUN_0201CEA0
	pop {r3, pc}
_0201CE94:
	bl FUN_0201CF58
	pop {r3, pc}
_0201CE9A:
	mov r0, #0x1
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201CEA0
FUN_0201CEA0: ; 0x0201CEA0
	push {r3-r7, lr}
	sub sp, #0x8
	ldr r5, _0201CF50 ; =0x021C5938
	str r1, [sp, #0x4]
	ldr r1, [r5, #0x8]
	str r0, [sp, #0x0]
	add r7, r2, #0x0
	mov r4, #0x0
	cmp r1, #0x0
	bls _0201CF46
_0201CEB4:
	ldr r0, [sp, #0x4]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #0x1
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	bpl _0201CEC8
	add r0, #0x9
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
_0201CEC8:
	lsl r1, r0, #0x3
	ldr r0, _0201CF54 ; =0x021C5938
	add r1, r0, r1
	ldrh r0, [r1, #0x10]
	cmp r0, #0x1
	bne _0201CF3E
	ldrh r0, [r1, #0x12]
	cmp r0, #0x0
	bne _0201CF3E
	ldr r2, [r5, #0x54]
	ldr r0, [r5, #0x0]
	lsl r2, r2, #0x3
	add r2, r0, r2
	add r0, r2, #0x0
	sub r0, #0x8
	ldrh r3, [r1, #0xc]
	ldrh r0, [r0, #0x0]
	cmp r0, r3
	blt _0201CEF2
	sub r3, r0, r3
	b _0201CEF4
_0201CEF2:
	sub r3, r3, r0
_0201CEF4:
	sub r6, r2, #0x6
	ldrh r0, [r1, #0xe]
	ldrh r6, [r6, #0x0]
	cmp r6, r0
	blt _0201CF02
	sub r0, r6, r0
	b _0201CF04
_0201CF02:
	sub r0, r0, r6
_0201CF04:
	cmp r3, r7
	bhs _0201CF0C
	cmp r0, r7
	blo _0201CF3E
_0201CF0C:
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #0x0]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #0x2]
	ldrh r0, [r1, #0x10]
	strh r0, [r2, #0x4]
	ldrh r0, [r1, #0x12]
	strh r0, [r2, #0x6]
	ldr r0, [r5, #0x54]
	add r0, r0, #0x1
	str r0, [r5, #0x54]
	ldr r1, [r5, #0x4]
	cmp r0, r1
	blo _0201CF3E
	ldr r2, [sp, #0x0]
	cmp r2, #0x1
	bne _0201CF36
	blx _u32_div_f
	str r1, [r5, #0x54]
	b _0201CF3E
_0201CF36:
	mov r0, #0x0
	add sp, #0x8
	mvn r0, r0
	pop {r3-r7, pc}
_0201CF3E:
	ldr r1, [r5, #0x8]
	add r4, r4, #0x1
	cmp r4, r1
	blo _0201CEB4
_0201CF46:
	ldr r0, _0201CF50 ; =0x021C5938
	ldr r0, [r0, #0x54]
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_0201CF50: .word 0x021C5938
_0201CF54: .word 0x021C5938

	thumb_func_start FUN_0201CF58
FUN_0201CF58: ; 0x0201CF58
	push {r3-r7, lr}
	ldr r5, _0201CFC8 ; =0x021C5938
	str r1, [sp, #0x0]
	ldr r1, [r5, #0x8]
	add r7, r0, #0x0
	mov r4, #0x0
	cmp r1, #0x0
	bls _0201CFC0
_0201CF68:
	ldr r0, [sp, #0x0]
	sub r0, r0, r1
	add r0, r4, r0
	add r0, r0, #0x1
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	bpl _0201CF7C
	add r1, #0x9
	lsl r0, r1, #0x10
	asr r1, r0, #0x10
_0201CF7C:
	ldr r0, [r5, #0x54]
	lsl r1, r1, #0x3
	lsl r3, r0, #0x3
	ldr r0, _0201CFCC ; =0x021C5938
	ldr r6, [r5, #0x0]
	add r2, r0, r1
	ldrh r0, [r2, #0xc]
	add r1, r6, r3
	strh r0, [r6, r3]
	ldrh r0, [r2, #0xe]
	strh r0, [r1, #0x2]
	ldrh r0, [r2, #0x10]
	strh r0, [r1, #0x4]
	ldrh r0, [r2, #0x12]
	strh r0, [r1, #0x6]
	ldr r0, [r5, #0x54]
	add r0, r0, #0x1
	str r0, [r5, #0x54]
	ldr r1, [r5, #0x4]
	cmp r0, r1
	blo _0201CFB8
	cmp r7, #0x4
	bne _0201CFB2
	blx _u32_div_f
	str r1, [r5, #0x54]
	b _0201CFB8
_0201CFB2:
	mov r0, #0x0
	mvn r0, r0
	pop {r3-r7, pc}
_0201CFB8:
	ldr r1, [r5, #0x8]
	add r4, r4, #0x1
	cmp r4, r1
	blo _0201CF68
_0201CFC0:
	ldr r0, _0201CFC8 ; =0x021C5938
	ldr r0, [r0, #0x54]
	pop {r3-r7, pc}
	nop
_0201CFC8: .word 0x021C5938
_0201CFCC: .word 0x021C5938

	thumb_func_start FUN_0201CFD0
FUN_0201CFD0: ; 0x0201CFD0
	push {r4-r7}
	mov r2, #0x0
	strh r2, [r0, #0x0]
	add r3, r0, #0x0
	add r6, r2, #0x0
_0201CFDA:
	strh r6, [r3, #0x8]
	strh r6, [r3, #0x6]
	strh r6, [r3, #0x2]
	strh r6, [r3, #0x4]
	add r2, r2, #0x1
	add r3, #0x8
	cmp r2, #0x8
	blt _0201CFDA
	ldr r2, _0201D038 ; =0x021C5938
	ldr r3, [r2, #0x8]
	cmp r3, #0x0
	bls _0201D034
	ldr r4, _0201D03C ; =0x021C5938
_0201CFF4:
	sub r3, r1, r3
	add r3, r6, r3
	add r3, r3, #0x1
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	bpl _0201D006
	add r3, #0x9
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
_0201D006:
	lsl r3, r3, #0x3
	add r5, r4, r3
	ldrh r3, [r5, #0x12]
	cmp r3, #0x0
	bne _0201D02C
	ldrh r3, [r0, #0x0]
	ldrh r7, [r5, #0xc]
	lsl r3, r3, #0x3
	add r3, r0, r3
	strh r7, [r3, #0x2]
	ldrh r7, [r5, #0xe]
	strh r7, [r3, #0x4]
	ldrh r7, [r5, #0x10]
	strh r7, [r3, #0x6]
	ldrh r5, [r5, #0x12]
	strh r5, [r3, #0x8]
	ldrh r3, [r0, #0x0]
	add r3, r3, #0x1
	strh r3, [r0, #0x0]
_0201D02C:
	ldr r3, [r2, #0x8]
	add r6, r6, #0x1
	cmp r6, r3
	blo _0201CFF4
_0201D034:
	pop {r4-r7}
	bx lr
	.balign 4
_0201D038: .word 0x021C5938
_0201D03C: .word 0x021C5938

	thumb_func_start FUN_0201D040
FUN_0201D040: ; 0x0201D040
	ldr r1, _0201D054 ; =0x04001000
	ldr r2, [r1, #0x0]
	ldr r1, _0201D058 ; =0x00300010
	lsl r3, r1, #0x16
	ldr r3, [r3, #0x0]
	and r2, r1
	and r1, r3
	ldr r3, _0201D05C ; =FUN_0201D060
	bx r3
	nop
_0201D054: .word 0x04001000
_0201D058: .word 0x00300010
_0201D05C: .word FUN_0201D060 

	thumb_func_start FUN_0201D060
FUN_0201D060: ; 0x0201D060
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, _0201D120 ; =0x021C5994
	str r1, [sp, #0x0]
	ldr r0, [r0, #0x0]
	str r2, [sp, #0x4]
	cmp r0, #0x0
	bne _0201D11A
	ldr r0, [r5, #0xc]
	mov r1, #0x3c
	bl FUN_02016998
	add r1, r0, #0x0
	ldr r0, _0201D120 ; =0x021C5994
	mov r2, #0x3c
	str r1, [r0, #0x0]
	mov r0, #0x0
	blx MIi_CpuClear32
	ldr r1, _0201D120 ; =0x021C5994
	ldr r2, [r5, #0x0]
	ldr r0, [r1, #0x0]
	str r2, [r0, #0x4]
	ldr r1, [r1, #0x0]
	ldr r0, [r5, #0xc]
	ldr r2, [r1, #0x4]
	mov r1, #0x54
	mul r1, r2
	bl FUN_02016998
	ldr r7, _0201D120 ; =0x021C5994
	mov r6, #0x0
	ldr r1, [r7, #0x0]
	str r0, [r1, #0x0]
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	ble _0201D0C2
	add r4, r6, #0x0
_0201D0AE:
	ldr r0, [r7, #0x0]
	ldr r0, [r0, #0x0]
	add r0, r0, r4
	bl FUN_0201D690
	ldr r0, [r5, #0x0]
	add r6, r6, #0x1
	add r4, #0x54
	cmp r6, r0
	blt _0201D0AE
_0201D0C2:
	ldr r0, [sp, #0x0]
	bl FUN_0201DED0
	ldr r1, _0201D120 ; =0x021C5994
	ldr r1, [r1, #0x0]
	str r0, [r1, #0x2c]
	ldr r0, [sp, #0x4]
	bl FUN_0201DED0
	ldr r2, _0201D120 ; =0x021C5994
	mov r3, #0x1
	ldr r1, [r2, #0x0]
	lsl r3, r3, #0x1a
	str r0, [r1, #0x30]
	ldr r0, [r3, #0x0]
	ldr r1, _0201D124 ; =0xFFCFFFEF
	add r4, r0, #0x0
	ldr r0, [sp, #0x0]
	and r4, r1
	orr r0, r4
	str r0, [r3, #0x0]
	ldr r3, _0201D128 ; =0x04001000
	ldr r0, [r3, #0x0]
	and r1, r0
	ldr r0, [sp, #0x4]
	orr r0, r1
	str r0, [r3, #0x0]
	ldr r1, [r2, #0x0]
	ldr r0, [r5, #0x4]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	ldr r1, _0201D120 ; =0x021C5994
	add r4, r0, #0x0
	ldr r1, [r1, #0x0]
	ldr r0, [r5, #0x8]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	add r1, r0, #0x0
	ldr r2, [r5, #0xc]
	add r0, r4, #0x0
	bl FUN_0201DC58
_0201D11A:
	add sp, #0x8
	pop {r3-r7, pc}
	nop
_0201D120: .word 0x021C5994
_0201D124: .word 0xFFCFFFEF
_0201D128: .word 0x04001000

	thumb_func_start FUN_0201D12C
FUN_0201D12C: ; 0x0201D12C
	push {r3, lr}
	ldr r0, _0201D164 ; =0x021C5994
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201D162
	ldr r0, [r0, #0x34]
	bl FUN_0201DCC0
	ldr r0, _0201D164 ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_0201DCC0
	bl FUN_0201D374
	ldr r0, _0201D164 ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201D164 ; =0x021C5994
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201D164 ; =0x021C5994
	mov r1, #0x0
	str r1, [r0, #0x0]
_0201D162:
	pop {r3, pc}
	.balign 4
_0201D164: .word 0x021C5994

	thumb_func_start FUN_0201D168
FUN_0201D168: ; 0x0201D168
	push {r3, lr}
	ldr r0, _0201D190 ; =0x021C5994
	mov r2, #0x0
	ldr r1, [r0, #0x0]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x10]
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x34]
	bl FUN_0201DD00
	ldr r0, _0201D190 ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_0201DD00
	bl FUN_0201DAE8
	pop {r3, pc}
	nop
_0201D190: .word 0x021C5994

	thumb_func_start FUN_0201D194
FUN_0201D194: ; 0x0201D194
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	add r3, r1, #0x0
	cmp r2, #0x1
	add r0, sp, #0x4
	bne _0201D1CA
	str r0, [sp, #0x0]
	ldr r0, _0201D1F4 ; =0x021C5994
	add r2, r3, #0x0
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0x1c]
	add r3, sp, #0x8
	bl FUN_0201DFF0
	ldr r3, [sp, #0x4]
	cmp r3, #0x0
	ble _0201D1F0
	mov r2, #0x0
	str r2, [sp, #0x0]
	ldr r1, [sp, #0x8]
	mov r0, #0x1
	bl FUN_0201D948
	add sp, #0xc
	pop {r3-r4, pc}
_0201D1CA:
	str r0, [sp, #0x0]
	ldr r0, _0201D1F4 ; =0x021C5994
	add r2, r3, #0x0
	ldr r0, [r0, #0x0]
	add r1, r4, #0x0
	ldr r0, [r0, #0x20]
	add r3, sp, #0x8
	bl FUN_0201DFF0
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	ble _0201D1F0
	str r0, [sp, #0x0]
	mov r1, #0x0
	ldr r2, [sp, #0x8]
	mov r0, #0x2
	add r3, r1, #0x0
	bl FUN_0201D948
_0201D1F0:
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4
_0201D1F4: .word 0x021C5994

	thumb_func_start FUN_0201D1F8
FUN_0201D1F8: ; 0x0201D1F8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x8]
	bl FUN_0201D2AC
	cmp r0, #0x1
	bne _0201D20A
	bl ErrorHandling
_0201D20A:
	bl FUN_0201DAAC
	add r4, r0, #0x0
	bne _0201D21A
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D21A:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201D6B4
	cmp r0, #0x0
	bne _0201D22A
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D22A:
	add r0, r4, #0x0
	bl FUN_0201D724
	cmp r0, #0x0
	bne _0201D23E
	ldr r0, [r4, #0xc]
	bl FUN_0201D324
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D23E:
	ldr r0, _0201D24C ; =0x021C5994
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x8]
	add r0, r0, #0x1
	str r0, [r1, #0x8]
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4
_0201D24C: .word 0x021C5994

	thumb_func_start FUN_0201D250
FUN_0201D250: ; 0x0201D250
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x8]
	bl FUN_0201D2AC
	cmp r0, #0x1
	bne _0201D262
	bl ErrorHandling
_0201D262:
	bl FUN_0201DAAC
	add r4, r0, #0x0
	bne _0201D272
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D272:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201D6B4
	cmp r0, #0x0
	bne _0201D282
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D282:
	mov r0, #0x1
	str r0, [r4, #0x40]
	add r0, r4, #0x0
	bl FUN_0201D724
	cmp r0, #0x0
	bne _0201D29A
	ldr r0, [r4, #0xc]
	bl FUN_0201D324
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D29A:
	ldr r0, _0201D2A8 ; =0x021C5994
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x8]
	add r0, r0, #0x1
	str r0, [r1, #0x8]
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4
_0201D2A8: .word 0x021C5994

	thumb_func_start FUN_0201D2AC
FUN_0201D2AC: ; 0x0201D2AC
	push {r3-r4}
	ldr r1, _0201D2D8 ; =0x021C5994
	mov r2, #0x0
	ldr r4, [r1, #0x0]
	ldr r1, [r4, #0x4]
	cmp r1, #0x0
	ble _0201D2D2
	ldr r3, [r4, #0x0]
_0201D2BC:
	ldr r1, [r3, #0xc]
	cmp r0, r1
	bne _0201D2C8
	mov r0, #0x1
	pop {r3-r4}
	bx lr
_0201D2C8:
	ldr r1, [r4, #0x4]
	add r2, r2, #0x1
	add r3, #0x54
	cmp r2, r1
	blt _0201D2BC
_0201D2D2:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
	.balign 4
_0201D2D8: .word 0x021C5994

	thumb_func_start FUN_0201D2DC
FUN_0201D2DC: ; 0x0201D2DC
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	bne _0201D2E8
	bl ErrorHandling
_0201D2E8:
	add r0, r4, #0x0
	bl FUN_0201D7F8
	add r4, r0, #0x0
	bne _0201D2F6
	bl ErrorHandling
_0201D2F6:
	str r5, [r4, #0x0]
	ldr r1, [r4, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201D30C
	ldr r1, [r4, #0x34]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x13
	bl FUN_0201C2C8
_0201D30C:
	ldr r1, [r4, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201D320
	ldr r1, [r4, #0x38]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x10]
	mov r0, #0x23
	bl FUN_0201C2C8
_0201D320:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201D324
FUN_0201D324: ; 0x0201D324
	push {r3-r7, lr}
	add r6, r0, #0x0
	mov r5, #0x1
	mov r7, #0x0
_0201D32C:
	add r0, r6, #0x0
	bl FUN_0201D7F8
	add r4, r0, #0x0
	bne _0201D33A
	bl ErrorHandling
_0201D33A:
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x4
	bne _0201D34E
	add r0, r4, #0x0
	add r0, #0x10
	bl FUN_0201D4F0
	b _0201D350
_0201D34E:
	add r5, r7, #0x0
_0201D350:
	cmp r5, #0x0
	bne _0201D32C
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201D36E
	add r0, r4, #0x0
	bl FUN_0201D7E0
	ldr r0, _0201D370 ; =0x021C5994
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x8]
	sub r0, r0, #0x1
	str r0, [r1, #0x8]
_0201D36E:
	pop {r3-r7, pc}
	.balign 4
_0201D370: .word 0x021C5994

	thumb_func_start FUN_0201D374
FUN_0201D374: ; 0x0201D374
	push {r4-r6, lr}
	ldr r6, _0201D3AC ; =0x021C5994
	mov r4, #0x0
	ldr r1, [r6, #0x0]
	ldr r0, [r1, #0x4]
	cmp r0, #0x0
	ble _0201D3AA
	add r5, r4, #0x0
_0201D384:
	ldr r1, [r1, #0x0]
	add r0, r1, r5
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201D39E
	add r0, r1, r5
	bl FUN_0201D7E0
	ldr r1, [r6, #0x0]
	ldr r0, [r1, #0x8]
	sub r0, r0, #0x1
	str r0, [r1, #0x8]
_0201D39E:
	ldr r1, [r6, #0x0]
	add r4, r4, #0x1
	ldr r0, [r1, #0x4]
	add r5, #0x54
	cmp r4, r0
	blt _0201D384
_0201D3AA:
	pop {r4-r6, pc}
	.balign 4
_0201D3AC: .word 0x021C5994

	thumb_func_start FUN_0201D3B0
FUN_0201D3B0: ; 0x0201D3B0
	push {r4, lr}
	bl FUN_0201D7F8
	add r4, r0, #0x0
	bne _0201D3BE
	bl ErrorHandling
_0201D3BE:
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201D3CC
	mov r0, #0x0
	pop {r4, pc}
_0201D3CC:
	add r4, #0x10
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201D3D4
FUN_0201D3D4: ; 0x0201D3D4
	push {r3-r5, lr}
	sub sp, #0x18
	add r5, r1, #0x0
	bl FUN_0201D7F8
	add r4, r0, #0x0
	bne _0201D3E6
	bl ErrorHandling
_0201D3E6:
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201D3F6
	add sp, #0x18
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D3F6:
	add r0, sp, #0xc
	str r0, [sp, #0x0]
	add r0, sp, #0x8
	str r0, [sp, #0x4]
	ldr r0, [r4, #0x4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r5, #0x0
	bl FUN_0201D86C
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	bne _0201D41A
	add sp, #0x18
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D41A:
	add r0, r4, #0x0
	mov r1, #0x3
	add r0, #0x3c
	strb r1, [r0, #0x0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0x0
	bl FUN_0201D918
	mov r0, #0x1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x8]
	str r0, [r4, #0x50]
	add r0, r4, #0x0
	bl FUN_0201DA38
	ldr r0, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_0201D948
	add r4, #0x10
	add r0, r4, #0x0
	add sp, #0x18
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201D458
FUN_0201D458: ; 0x0201D458
	push {r3-r5, lr}
	sub sp, #0x18
	bl FUN_0201D6D8
	add r4, r0, #0x0
	bne _0201D468
	bl ErrorHandling
_0201D468:
	bl FUN_0201DAAC
	add r5, r0, #0x0
	bne _0201D474
	bl ErrorHandling
_0201D474:
	add r0, r4, #0x0
	add r0, #0x3c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	beq _0201D484
	add sp, #0x18
	mov r0, #0x0
	pop {r3-r5, pc}
_0201D484:
	add r3, r5, #0x0
	mov r2, #0xa
_0201D488:
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _0201D488
	ldr r0, [r4, #0x0]
	mov r1, #0x4
	str r0, [r3, #0x0]
	add r0, r5, #0x0
	add r0, #0x3c
	strb r1, [r0, #0x0]
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	tst r1, r0
	beq _0201D4A8
	ldr r3, [r5, #0x4c]
	b _0201D4AA
_0201D4A8:
	ldr r3, [r5, #0x50]
_0201D4AA:
	add r1, sp, #0xc
	str r1, [sp, #0x0]
	add r1, sp, #0x8
	str r1, [sp, #0x4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl FUN_0201D86C
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r5, #0x0
	bl FUN_0201D918
	mov r0, #0x1
	str r0, [r5, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x4c]
	ldr r0, [sp, #0x8]
	str r0, [r5, #0x50]
	add r0, r5, #0x0
	bl FUN_0201DA38
	ldr r0, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_0201D948
	add r5, #0x10
	add r0, r5, #0x0
	add sp, #0x18
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201D4F0
FUN_0201D4F0: ; 0x0201D4F0
	push {r4-r6, lr}
	ldr r2, _0201D564 ; =0x021C5994
	mov r1, #0x0
	ldr r5, [r2, #0x0]
	ldr r4, [r5, #0x4]
	cmp r4, #0x0
	ble _0201D52E
	ldr r2, [r5, #0x0]
	add r3, r1, #0x0
_0201D502:
	add r6, r2, #0x0
	add r6, #0x3c
	ldrb r6, [r6, #0x0]
	cmp r6, #0x3
	beq _0201D518
	ldr r6, [r5, #0x0]
	add r6, r6, r3
	add r6, #0x3c
	ldrb r6, [r6, #0x0]
	cmp r6, #0x4
	bne _0201D522
_0201D518:
	ldr r6, [r5, #0x0]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _0201D52E
_0201D522:
	ldr r6, [r5, #0x4]
	add r1, r1, #0x1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _0201D502
_0201D52E:
	cmp r1, r4
	bge _0201D562
	mov r0, #0x54
	add r4, r1, #0x0
	mul r4, r0
	ldr r0, [r5, #0x0]
	add r0, r0, r4
	bl FUN_0201DE4C
	ldr r0, _0201D564 ; =0x021C5994
	ldr r1, [r0, #0x0]
	ldr r2, [r1, #0x0]
	add r2, #0x3c
	ldrb r1, [r2, r4]
	cmp r1, #0x3
	bne _0201D554
	mov r0, #0x2
	strb r0, [r2, r4]
	pop {r4-r6, pc}
_0201D554:
	mov r1, #0x0
	strb r1, [r2, r4]
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x0]
	add r0, r0, r4
	bl FUN_0201D690
_0201D562:
	pop {r4-r6, pc}
	.balign 4
_0201D564: .word 0x021C5994

	thumb_func_start FUN_0201D568
FUN_0201D568: ; 0x0201D568
	push {r3-r7, lr}
	sub sp, #0x18
	add r6, r0, #0x0
	add r5, r2, #0x0
	add r4, r3, #0x0
	cmp r1, #0x0
	bne _0201D5A0
	add r1, r5, #0x0
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_0201DF44
	add r7, r0, #0x0
	beq _0201D5E0
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0201DF94
	str r5, [r4, #0x8]
	str r6, [r4, #0x0]
	cmp r5, #0x1
	bne _0201D59A
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x4]
	b _0201D5E0
_0201D59A:
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x4]
	b _0201D5E0
_0201D5A0:
	add r0, sp, #0xc
	str r0, [sp, #0x0]
	add r0, sp, #0x8
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, r6, #0x0
	bl FUN_0201D86C
	add r7, r0, #0x0
	beq _0201D5E0
	ldr r0, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r0, r5, #0x0
	bl FUN_0201D948
	str r5, [r4, #0x8]
	cmp r5, #0x1
	bne _0201D5D8
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x0]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x4]
	b _0201D5E0
_0201D5D8:
	ldr r0, [sp, #0x8]
	str r0, [r4, #0x0]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x4]
_0201D5E0:
	add r0, r7, #0x0
	add sp, #0x18
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201D5E8
FUN_0201D5E8: ; 0x0201D5E8
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x8]
	mov r0, #0x1
	tst r0, r1
	beq _0201D61E
	ldr r1, _0201D654 ; =0x021C5994
	ldr r0, [r4, #0x0]
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	add r5, r0, #0x0
	ldr r0, _0201D654 ; =0x021C5994
	ldr r1, [r4, #0x4]
	ldr r2, [r0, #0x0]
	ldr r0, [r2, #0x1c]
	sub r0, r1, r0
	ldr r1, [r2, #0x2c]
	bl FUN_0201DF2C
	ldr r2, _0201D654 ; =0x021C5994
	add r1, r5, #0x0
	ldr r2, [r2, #0x0]
	ldr r2, [r2, #0x34]
	bl FUN_0201DDFC
_0201D61E:
	ldr r1, [r4, #0x8]
	mov r0, #0x2
	tst r0, r1
	beq _0201D650
	ldr r1, _0201D654 ; =0x021C5994
	ldr r0, [r4, #0x0]
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	add r5, r0, #0x0
	ldr r0, _0201D654 ; =0x021C5994
	ldr r1, [r4, #0x4]
	ldr r2, [r0, #0x0]
	ldr r0, [r2, #0x20]
	sub r0, r1, r0
	ldr r1, [r2, #0x30]
	bl FUN_0201DF2C
	ldr r2, _0201D654 ; =0x021C5994
	add r1, r5, #0x0
	ldr r2, [r2, #0x0]
	ldr r2, [r2, #0x38]
	bl FUN_0201DDFC
_0201D650:
	pop {r3-r5, pc}
	nop
_0201D654: .word 0x021C5994

	thumb_func_start FUN_0201D658
FUN_0201D658: ; 0x0201D658
	push {r3, lr}
	ldr r0, _0201D670 ; =0x021C5994
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201D666
	bl ErrorHandling
_0201D666:
	ldr r1, _0201D670 ; =0x021C5994
	mov r2, #0x0
	ldr r0, [r1, #0x0]
	str r2, [r1, #0x0]
	pop {r3, pc}
	.balign 4
_0201D670: .word 0x021C5994

	thumb_func_start FUN_0201D674
FUN_0201D674: ; 0x0201D674
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, _0201D68C ; =0x021C5994
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201D684
	bl ErrorHandling
_0201D684:
	ldr r0, _0201D68C ; =0x021C5994
	str r4, [r0, #0x0]
	pop {r4, pc}
	nop
_0201D68C: .word 0x021C5994

	thumb_func_start FUN_0201D690
FUN_0201D690: ; 0x0201D690
	mov r2, #0x0
	str r2, [r0, #0x0]
	str r2, [r0, #0x4]
	strb r2, [r0, #0x8]
	sub r1, r2, #0x1
	str r1, [r0, #0xc]
	str r2, [r0, #0x34]
	add r1, r0, #0x0
	str r2, [r0, #0x38]
	add r1, #0x3c
	strb r2, [r1, #0x0]
	str r2, [r0, #0x40]
	ldr r3, _0201D6B0 ; =FUN_020B1A24
	add r0, #0x10
	bx r3
	nop
_0201D6B0: .word FUN_020B1A24

	thumb_func_start FUN_0201D6B4
FUN_0201D6B4: ; 0x0201D6B4
	ldr r2, [r0, #0x0]
	str r2, [r1, #0x0]
	ldr r2, [r0, #0x8]
	str r2, [r1, #0xc]
	ldr r2, [r0, #0x4]
	str r2, [r1, #0x4]
	ldr r2, [r1, #0x0]
	ldr r2, [r2, #0xc]
	lsr r2, r2, #0x8
	strb r2, [r1, #0x8]
	ldr r0, [r0, #0xc]
	str r0, [r1, #0x44]
	mov r0, #0x0
	str r0, [r1, #0x48]
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_0201D6D8
FUN_0201D6D8: ; 0x0201D6D8
	push {r3-r6}
	ldr r2, _0201D720 ; =0x021C5994
	mov r1, #0x0
	ldr r5, [r2, #0x0]
	ldr r4, [r5, #0x4]
	cmp r4, #0x0
	ble _0201D70A
	ldr r2, [r5, #0x0]
	add r3, r1, #0x0
_0201D6EA:
	add r6, r2, #0x0
	add r6, #0x3c
	ldrb r6, [r6, #0x0]
	cmp r6, #0x0
	beq _0201D6FE
	ldr r6, [r5, #0x0]
	add r6, r6, r3
	add r6, #0x10
	cmp r6, r0
	beq _0201D70A
_0201D6FE:
	ldr r6, [r5, #0x4]
	add r1, r1, #0x1
	add r2, #0x54
	add r3, #0x54
	cmp r1, r6
	blt _0201D6EA
_0201D70A:
	cmp r1, r4
	blt _0201D714
	mov r0, #0x0
	pop {r3-r6}
	bx lr
_0201D714:
	mov r0, #0x54
	ldr r2, [r5, #0x0]
	mul r0, r1
	add r0, r2, r0
	pop {r3-r6}
	bx lr
	.balign 4
_0201D720: .word 0x021C5994

	thumb_func_start FUN_0201D724
FUN_0201D724: ; 0x0201D724
	push {r3, lr}
	ldrb r1, [r0, #0x8]
	mov r2, #0x1
	cmp r1, #0x0
	beq _0201D736
	mov r1, #0x2
	add r0, #0x3c
	strb r1, [r0, #0x0]
	b _0201D750
_0201D736:
	add r1, r0, #0x0
	add r1, #0x3c
	strb r2, [r1, #0x0]
	ldr r1, [r0, #0x44]
	cmp r1, #0x0
	bne _0201D74A
	bl FUN_0201D754
	add r2, r0, #0x0
	b _0201D750
_0201D74A:
	bl FUN_0201D788
	add r2, r0, #0x0
_0201D750:
	add r0, r2, #0x0
	pop {r3, pc}

	thumb_func_start FUN_0201D754
FUN_0201D754: ; 0x0201D754
	push {r3-r5, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	ldr r0, [r0, #0x10]
	add r2, sp, #0x4
	add r3, sp, #0x0
	bl FUN_0201DF44
	add r4, r0, #0x0
	beq _0201D780
	ldr r1, [sp, #0x4]
	ldr r2, [sp, #0x0]
	add r0, r5, #0x0
	bl FUN_0201D858
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	ldr r0, [r0, #0x10]
	bl FUN_0201DF94
_0201D780:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201D788
FUN_0201D788: ; 0x0201D788
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0x0
	add r0, sp, #0xc
	str r0, [sp, #0x0]
	add r0, sp, #0x8
	str r0, [sp, #0x4]
	ldr r3, [r4, #0x0]
	ldr r0, [r4, #0x4]
	ldr r3, [r3, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl FUN_0201D86C
	cmp r0, #0x0
	bne _0201D7AE
	add sp, #0x18
	mov r0, #0x0
	pop {r4, pc}
_0201D7AE:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	add r0, r4, #0x0
	bl FUN_0201D918
	mov r0, #0x1
	str r0, [r4, #0x48]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x8]
	str r0, [r4, #0x50]
	add r0, r4, #0x0
	bl FUN_0201D9B0
	ldr r0, [sp, #0x8]
	str r0, [sp, #0x0]
	ldr r0, [r4, #0x4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_0201D948
	mov r0, #0x1
	add sp, #0x18
	pop {r4, pc}

	thumb_func_start FUN_0201D7E0
FUN_0201D7E0: ; 0x0201D7E0
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x48]
	cmp r1, #0x0
	beq _0201D7EE
	bl FUN_0201DE4C
_0201D7EE:
	add r0, r4, #0x0
	bl FUN_0201D690
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201D7F8
FUN_0201D7F8: ; 0x0201D7F8
	push {r4-r5}
	ldr r2, _0201D82C ; =0x021C5994
	mov r1, #0x0
	ldr r5, [r2, #0x0]
	ldr r2, [r5, #0x4]
	cmp r2, #0x0
	ble _0201D824
	ldr r2, [r5, #0x0]
	add r4, r2, #0x0
_0201D80A:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0201D81A
	mov r0, #0x54
	mul r0, r1
	add r0, r2, r0
	pop {r4-r5}
	bx lr
_0201D81A:
	ldr r3, [r5, #0x4]
	add r1, r1, #0x1
	add r4, #0x54
	cmp r1, r3
	blt _0201D80A
_0201D824:
	mov r0, #0x0
	pop {r4-r5}
	bx lr
	nop
_0201D82C: .word 0x021C5994

	thumb_func_start FUN_0201D830
FUN_0201D830: ; 0x0201D830
	cmp r1, #0x1
	bne _0201D83C
	mov r1, #0x1
	lsl r1, r1, #0x1a
	ldr r2, [r1, #0x0]
	b _0201D840
_0201D83C:
	ldr r1, _0201D850 ; =0x04001000
	ldr r2, [r1, #0x0]
_0201D840:
	ldr r1, _0201D854 ; =0x00300010
	and r2, r1
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x8]
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x8]
	bx lr
	nop
_0201D850: .word 0x04001000
_0201D854: .word 0x00300010

	thumb_func_start FUN_0201D858
FUN_0201D858: ; 0x0201D858
	push {r3, lr}
	str r1, [r0, #0x34]
	str r2, [r0, #0x38]
	ldrb r1, [r0, #0x8]
	cmp r1, #0x0
	bne _0201D868
	bl FUN_0201D9B0
_0201D868:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201D86C
FUN_0201D86C: ; 0x0201D86C
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [sp, #0x1c]
	add r6, r2, #0x0
	str r0, [sp, #0x1c]
	mov r2, #0x1
	add r0, r5, #0x0
	add r4, r1, #0x0
	str r3, [sp, #0x0]
	ldr r7, [sp, #0x18]
	tst r0, r2
	beq _0201D8C4
	ldr r1, _0201D914 ; =0x021C5994
	add r0, r3, #0x0
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF10
	ldr r1, _0201D914 ; =0x021C5994
	str r0, [r7, #0x0]
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	ldr r1, _0201D914 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x34]
	bl FUN_0201DD74
	mov r1, #0x0
	mvn r1, r1
	str r0, [r4, #0x0]
	cmp r0, r1
	bne _0201D8B8
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r7, pc}
_0201D8B8:
	ldr r1, _0201D914 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF3C
	str r0, [r4, #0x0]
_0201D8C4:
	mov r0, #0x2
	tst r0, r5
	beq _0201D90E
	ldr r1, _0201D914 ; =0x021C5994
	ldr r0, [sp, #0x0]
	ldr r1, [r1, #0x0]
	mov r2, #0x1
	ldr r1, [r1, #0x30]
	bl FUN_0201DF10
	ldr r1, [sp, #0x1c]
	str r0, [r1, #0x0]
	ldr r1, _0201D914 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	ldr r1, _0201D914 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x38]
	bl FUN_0201DD74
	mov r1, #0x0
	mvn r1, r1
	str r0, [r6, #0x0]
	cmp r0, r1
	bne _0201D902
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r7, pc}
_0201D902:
	ldr r1, _0201D914 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF3C
	str r0, [r6, #0x0]
_0201D90E:
	mov r0, #0x1
	pop {r3-r7, pc}
	nop
_0201D914: .word 0x021C5994

	thumb_func_start FUN_0201D918
FUN_0201D918: ; 0x0201D918
	push {r3-r4}
	ldr r4, [r0, #0x4]
	mov r3, #0x1
	tst r3, r4
	beq _0201D92C
	ldr r3, _0201D944 ; =0x021C5994
	ldr r3, [r3, #0x0]
	ldr r3, [r3, #0x1c]
	add r1, r1, r3
	str r1, [r0, #0x34]
_0201D92C:
	ldr r3, [r0, #0x4]
	mov r1, #0x2
	tst r1, r3
	beq _0201D93E
	ldr r1, _0201D944 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x20]
	add r1, r2, r1
	str r1, [r0, #0x38]
_0201D93E:
	pop {r3-r4}
	bx lr
	nop
_0201D944: .word 0x021C5994

	thumb_func_start FUN_0201D948
FUN_0201D948: ; 0x0201D948
	push {r3-r7, lr}
	add r5, r0, #0x0
	mov r0, #0x1
	add r4, r1, #0x0
	add r6, r2, #0x0
	tst r0, r5
	beq _0201D97C
	ldr r1, _0201D9AC ; =0x021C5994
	add r0, r3, #0x0
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	ldr r1, _0201D9AC ; =0x021C5994
	add r7, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r4, #0x0
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	ldr r2, _0201D9AC ; =0x021C5994
	add r1, r7, #0x0
	ldr r2, [r2, #0x0]
	ldr r2, [r2, #0x34]
	bl FUN_0201DD18
_0201D97C:
	mov r0, #0x2
	tst r0, r5
	beq _0201D9A8
	ldr r1, _0201D9AC ; =0x021C5994
	ldr r0, [sp, #0x18]
	ldr r1, [r1, #0x0]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	ldr r1, _0201D9AC ; =0x021C5994
	add r4, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r6, #0x0
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	ldr r2, _0201D9AC ; =0x021C5994
	add r1, r4, #0x0
	ldr r2, [r2, #0x0]
	ldr r2, [r2, #0x38]
	bl FUN_0201DD18
_0201D9A8:
	pop {r3-r7, pc}
	nop
_0201D9AC: .word 0x021C5994

	thumb_func_start FUN_0201D9B0
FUN_0201D9B0: ; 0x0201D9B0
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x10
	blx FUN_020B1A24
	ldr r1, [r4, #0x4]
	cmp r1, #0x3
	beq _0201D9C8
	add r0, r4, #0x0
	bl FUN_0201D9DC
	pop {r4, pc}
_0201D9C8:
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0201D9DC
	add r0, r4, #0x0
	mov r1, #0x2
	bl FUN_0201D9DC
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201D9DC
FUN_0201D9DC: ; 0x0201D9DC
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x40]
	add r4, r1, #0x0
	cmp r2, #0x0
	beq _0201D9EE
	bl FUN_0201D830
	b _0201D9F0
_0201D9EE:
	add r0, r4, #0x0
_0201D9F0:
	cmp r4, #0x1
	bne _0201D9FE
	mov r2, #0x1
	lsl r2, r2, #0x1a
	ldr r1, [r5, #0x34]
	ldr r2, [r2, #0x0]
	b _0201DA04
_0201D9FE:
	ldr r2, _0201DA34 ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r2, [r2, #0x0]
_0201DA04:
	cmp r0, #0x0
	ldr r0, [r5, #0x0]
	bne _0201DA16
	add r5, #0x10
	add r2, r4, #0x0
	add r3, r5, #0x0
	blx FUN_020B1528
	b _0201DA20
_0201DA16:
	add r5, #0x10
	add r2, r4, #0x0
	add r3, r5, #0x0
	blx FUN_020B1768
_0201DA20:
	cmp r4, #0x1
	bne _0201DA2C
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r0, [r0, #0x0]
	pop {r3-r5, pc}
_0201DA2C:
	ldr r0, _0201DA34 ; =0x04001000
	ldr r0, [r0, #0x0]
	pop {r3-r5, pc}
	nop
_0201DA34: .word 0x04001000

	thumb_func_start FUN_0201DA38
FUN_0201DA38: ; 0x0201DA38
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x10
	blx FUN_020B1A24
	ldr r1, [r4, #0x4]
	cmp r1, #0x3
	beq _0201DA50
	add r0, r4, #0x0
	bl FUN_0201DA64
	pop {r4, pc}
_0201DA50:
	add r0, r4, #0x0
	mov r1, #0x1
	bl FUN_0201DA64
	add r0, r4, #0x0
	mov r1, #0x2
	bl FUN_0201DA64
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201DA64
FUN_0201DA64: ; 0x0201DA64
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r2, [r5, #0x40]
	add r4, r1, #0x0
	cmp r2, #0x0
	beq _0201DA74
	bl FUN_0201D830
_0201DA74:
	cmp r4, #0x1
	bne _0201DA82
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r1, [r5, #0x34]
	ldr r0, [r0, #0x0]
	b _0201DA88
_0201DA82:
	ldr r0, _0201DAA8 ; =0x04001000
	ldr r1, [r5, #0x38]
	ldr r0, [r0, #0x0]
_0201DA88:
	ldr r0, [r5, #0x0]
	add r5, #0x10
	add r2, r4, #0x0
	add r3, r5, #0x0
	blx FUN_020B1340
	cmp r4, #0x1
	bne _0201DAA0
	mov r0, #0x1
	lsl r0, r0, #0x1a
	ldr r0, [r0, #0x0]
	pop {r3-r5, pc}
_0201DAA0:
	ldr r0, _0201DAA8 ; =0x04001000
	ldr r0, [r0, #0x0]
	pop {r3-r5, pc}
	nop
_0201DAA8: .word 0x04001000

	thumb_func_start FUN_0201DAAC
FUN_0201DAAC: ; 0x0201DAAC
	push {r3-r4}
	ldr r1, _0201DAE4 ; =0x021C5994
	mov r0, #0x0
	ldr r4, [r1, #0x0]
	ldr r1, [r4, #0x4]
	cmp r1, #0x0
	ble _0201DADC
	ldr r1, [r4, #0x0]
	add r3, r1, #0x0
_0201DABE:
	add r2, r3, #0x0
	add r2, #0x3c
	ldrb r2, [r2, #0x0]
	cmp r2, #0x0
	bne _0201DAD2
	mov r2, #0x54
	mul r2, r0
	add r0, r1, r2
	pop {r3-r4}
	bx lr
_0201DAD2:
	ldr r2, [r4, #0x4]
	add r0, r0, #0x1
	add r3, #0x54
	cmp r0, r2
	blt _0201DABE
_0201DADC:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
	nop
_0201DAE4: .word 0x021C5994

	thumb_func_start FUN_0201DAE8
FUN_0201DAE8: ; 0x0201DAE8
	push {r3, lr}
	blx FUN_020C5DBC
	cmp r0, #0x30
	bgt _0201DB18
	bge _0201DB60
	cmp r0, #0x10
	bgt _0201DB12
	bge _0201DB54
	cmp r0, #0x3
	bhi _0201DB90
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #0x6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0201DB0A: ; jump table (using 16-bit offset)
	.short _0201DB32 - _0201DB0A - 2; case 0
	.short _0201DB78 - _0201DB0A - 2; case 1
	.short _0201DB78 - _0201DB0A - 2; case 2
	.short _0201DB84 - _0201DB0A - 2; case 3
_0201DB12:
	cmp r0, #0x20
	beq _0201DB3C
	b _0201DB90
_0201DB18:
	cmp r0, #0x50
	bgt _0201DB24
	bge _0201DB60
	cmp r0, #0x40
	beq _0201DB3C
	b _0201DB90
_0201DB24:
	cmp r0, #0x60
	bgt _0201DB2C
	beq _0201DB48
	b _0201DB90
_0201DB2C:
	cmp r0, #0x70
	beq _0201DB6C
	b _0201DB90
_0201DB32:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB3C:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB48:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x2
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB54:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB60:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x5
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB6C:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x6
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xe
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB78:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x2
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB84:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0x12
	str r1, [r0, #0x14]
	b _0201DB98
_0201DB90:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x14]
_0201DB98:
	blx FUN_020C5D4C
	cmp r0, #0x0
	beq _0201DBAE
	cmp r0, #0x8
	beq _0201DBC2
	mov r1, #0x1
	lsl r1, r1, #0x8
	cmp r0, r1
	beq _0201DBB8
	b _0201DBCE
_0201DBAE:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x18]
	b _0201DBD6
_0201DBB8:
	ldr r0, _0201DC38 ; =0x021C5994
	lsl r1, r1, #0x6
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x18]
	b _0201DBD6
_0201DBC2:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x2
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0x10
	str r1, [r0, #0x18]
	b _0201DBD6
_0201DBCE:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x18]
_0201DBD6:
	ldr r0, _0201DC38 ; =0x021C5994
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF3C
	ldr r1, _0201DC38 ; =0x021C5994
	ldr r3, [r1, #0x0]
	ldr r2, [r3, #0x14]
	sub r0, r2, r0
	str r0, [r3, #0x1c]
	ldr r1, [r1, #0x0]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF3C
	ldr r1, _0201DC38 ; =0x021C5994
	ldr r3, [r1, #0x0]
	ldr r2, [r3, #0x18]
	sub r0, r2, r0
	str r0, [r3, #0x20]
	ldr r1, [r1, #0x0]
	mov r2, #0x0
	ldr r0, [r1, #0x1c]
	cmp r0, #0x0
	blt _0201DC12
	ldr r0, [r1, #0x20]
	cmp r0, #0x0
	blt _0201DC12
	mov r2, #0x1
_0201DC12:
	cmp r2, #0x0
	bne _0201DC1A
	bl ErrorHandling
_0201DC1A:
	ldr r0, _0201DC38 ; =0x021C5994
	mov r2, #0x0
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0x1c]
	cmp r0, #0x0
	blt _0201DC2E
	ldr r0, [r1, #0x20]
	cmp r0, #0x0
	blt _0201DC2E
	mov r2, #0x1
_0201DC2E:
	cmp r2, #0x0
	bne _0201DC36
	bl ErrorHandling
_0201DC36:
	pop {r3, pc}
	.balign 4
_0201DC38: .word 0x021C5994

	thumb_func_start FUN_0201DC3C
FUN_0201DC3C: ; 0x0201DC3C
	push {r3, lr}
	ldr r0, _0201DC54 ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x34]
	bl FUN_0201DD00
	ldr r0, _0201DC54 ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	bl FUN_0201DD00
	pop {r3, pc}
	.balign 4
_0201DC54: .word 0x021C5994

	thumb_func_start FUN_0201DC58
FUN_0201DC58: ; 0x0201DC58
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, _0201DCBC ; =0x021C5994
	add r4, r1, #0x0
	ldr r1, [r0, #0x0]
	add r6, r2, #0x0
	str r5, [r1, #0x24]
	ldr r1, [r0, #0x0]
	str r4, [r1, #0x28]
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x34]
	cmp r0, #0x0
	beq _0201DC76
	bl FUN_02016A18
_0201DC76:
	ldr r0, _0201DCBC ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x38]
	cmp r0, #0x0
	beq _0201DC84
	bl FUN_02016A18
_0201DC84:
	ldr r0, _0201DCBC ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x24]
	cmp r0, #0x0
	beq _0201DC9C
	add r0, r6, #0x0
	lsr r1, r5, #0x3
	bl FUN_02016998
	ldr r1, _0201DCBC ; =0x021C5994
	ldr r1, [r1, #0x0]
	str r0, [r1, #0x34]
_0201DC9C:
	ldr r0, _0201DCBC ; =0x021C5994
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x28]
	cmp r0, #0x0
	beq _0201DCB4
	add r0, r6, #0x0
	lsr r1, r4, #0x3
	bl FUN_02016998
	ldr r1, _0201DCBC ; =0x021C5994
	ldr r1, [r1, #0x0]
	str r0, [r1, #0x38]
_0201DCB4:
	bl FUN_0201DC3C
	pop {r4-r6, pc}
	nop
_0201DCBC: .word 0x021C5994

	thumb_func_start FUN_0201DCC0
FUN_0201DCC0: ; 0x0201DCC0
	push {r3, lr}
	cmp r0, #0x0
	beq _0201DCE2
	ldr r1, _0201DCE4 ; =0x021C5994
	ldr r2, [r1, #0x0]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _0201DCDA
	mov r1, #0x0
	str r1, [r2, #0x24]
	bl FUN_02016A18
	pop {r3, pc}
_0201DCDA:
	mov r1, #0x0
	str r1, [r2, #0x28]
	bl FUN_02016A18
_0201DCE2:
	pop {r3, pc}
	.balign 4
_0201DCE4: .word 0x021C5994

	thumb_func_start FUN_0201DCE8
FUN_0201DCE8: ; 0x0201DCE8
	ldr r1, _0201DCFC ; =0x021C5994
	ldr r2, [r1, #0x0]
	ldr r1, [r2, #0x34]
	cmp r0, r1
	bne _0201DCF6
	ldr r0, [r2, #0x24]
	bx lr
_0201DCF6:
	ldr r0, [r2, #0x28]
	bx lr
	nop
_0201DCFC: .word 0x021C5994

	thumb_func_start FUN_0201DD00
FUN_0201DD00: ; 0x0201DD00
	push {r4, lr}
	add r4, r0, #0x0
	beq _0201DD16
	bl FUN_0201DCE8
	add r2, r0, #0x0
	add r0, r4, #0x0
	mov r1, #0x0
	lsr r2, r2, #0x3
	blx Call_FillMemWithValue
_0201DD16:
	pop {r4, pc}

	thumb_func_start FUN_0201DD18
FUN_0201DD18: ; 0x0201DD18
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r4, r2, #0x0
	beq _0201DD6E
	add r0, r4, #0x0
	bl FUN_0201DCE8
	add r6, r5, r6
	add r7, r0, #0x0
	cmp r5, r6
	bhs _0201DD6E
_0201DD32:
	cmp r5, r7
	bhs _0201DD6E
	add r0, r5, #0x0
	add r1, sp, #0x4
	add r2, sp, #0x0
	bl FUN_0201DFE4
	add r0, sp, #0x0
	ldrb r1, [r0, #0x0]
	mov r0, #0x1
	lsl r0, r1
	ldr r1, [sp, #0x4]
	ldrb r1, [r4, r1]
	tst r0, r1
	beq _0201DD54
	bl ErrorHandling
_0201DD54:
	add r2, sp, #0x0
	ldrb r3, [r2, #0x0]
	ldr r1, [sp, #0x4]
	mov r2, #0x1
	lsl r2, r3
	lsl r2, r2, #0x18
	ldrb r0, [r4, r1]
	lsr r2, r2, #0x18
	add r5, r5, #0x1
	orr r0, r2
	strb r0, [r4, r1]
	cmp r5, r6
	blo _0201DD32
_0201DD6E:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201DD74
FUN_0201DD74: ; 0x0201DD74
	push {r3-r7, lr}
	sub sp, #0x10
	add r7, r0, #0x0
	str r1, [sp, #0x0]
	cmp r1, #0x0
	beq _0201DDF2
	add r0, r1, #0x0
	bl FUN_0201DCE8
	mov r6, #0x0
	str r0, [sp, #0x4]
	cmp r0, #0x0
	bls _0201DDF2
_0201DD8E:
	add r0, r6, #0x0
	add r1, sp, #0xc
	add r2, sp, #0x8
	bl FUN_0201DFE4
	add r0, sp, #0x8
	ldrb r1, [r0, #0x0]
	mov r0, #0x1
	mov r4, #0x0
	lsl r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	b _0201DDD0
_0201DDA8:
	add r5, r6, r4
	add r0, r5, #0x0
	add r1, sp, #0xc
	add r2, sp, #0x8
	bl FUN_0201DFE4
	add r0, sp, #0x8
	ldrb r1, [r0, #0x0]
	mov r0, #0x1
	lsl r0, r1
	lsl r0, r0, #0x18
	ldr r1, [sp, #0x4]
	lsr r0, r0, #0x18
	cmp r5, r1
	blo _0201DDCE
	mov r0, #0x0
	add sp, #0x10
	mvn r0, r0
	pop {r3-r7, pc}
_0201DDCE:
	add r4, r4, #0x1
_0201DDD0:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x0]
	ldrb r1, [r1, r2]
	tst r0, r1
	bne _0201DDDE
	cmp r4, r7
	bls _0201DDA8
_0201DDDE:
	cmp r4, r7
	bls _0201DDE8
	add sp, #0x10
	add r0, r6, #0x0
	pop {r3-r7, pc}
_0201DDE8:
	add r0, r6, r4
	add r6, r0, #0x1
	ldr r0, [sp, #0x4]
	cmp r6, r0
	blo _0201DD8E
_0201DDF2:
	mov r0, #0x0
	mvn r0, r0
	add sp, #0x10
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201DDFC
FUN_0201DDFC: ; 0x0201DDFC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	add r4, r2, #0x0
	beq _0201DE46
	add r6, r5, r1
	cmp r5, r6
	bhs _0201DE46
	add r7, sp, #0x0
_0201DE0E:
	add r0, r5, #0x0
	add r1, sp, #0x4
	add r2, sp, #0x0
	bl FUN_0201DFE4
	ldrb r1, [r7, #0x0]
	mov r0, #0x1
	lsl r0, r1
	ldr r1, [sp, #0x4]
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0201DE2A
	bl ErrorHandling
_0201DE2A:
	ldrb r0, [r7, #0x0]
	mov r1, #0x1
	ldr r3, [sp, #0x4]
	lsl r1, r0
	mov r0, #0xff
	eor r0, r1
	lsl r0, r0, #0x18
	ldrb r2, [r4, r3]
	lsr r0, r0, #0x18
	add r5, r5, #0x1
	and r0, r2
	strb r0, [r4, r3]
	cmp r5, r6
	blo _0201DE0E
_0201DE46:
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201DE4C
FUN_0201DE4C: ; 0x0201DE4C
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	mov r1, #0x1
	tst r0, r1
	beq _0201DE8A
	add r0, r4, #0x0
	add r0, #0x10
	blx FUN_020B1A14
	ldr r1, _0201DECC ; =0x021C5994
	ldr r2, [r1, #0x0]
	ldr r1, [r2, #0x1c]
	sub r0, r0, r1
	ldr r1, [r2, #0x2c]
	bl FUN_0201DF2C
	ldr r1, _0201DECC ; =0x021C5994
	add r5, r0, #0x0
	ldr r1, [r1, #0x0]
	ldr r0, [r4, #0x4c]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF2C
	ldr r2, _0201DECC ; =0x021C5994
	add r1, r0, #0x0
	ldr r2, [r2, #0x0]
	add r0, r5, #0x0
	ldr r2, [r2, #0x34]
	bl FUN_0201DDFC
_0201DE8A:
	ldr r0, [r4, #0x4]
	mov r1, #0x2
	tst r0, r1
	beq _0201DEC4
	add r0, r4, #0x0
	add r0, #0x10
	blx FUN_020B1A14
	ldr r1, _0201DECC ; =0x021C5994
	ldr r2, [r1, #0x0]
	ldr r1, [r2, #0x20]
	sub r0, r0, r1
	ldr r1, [r2, #0x30]
	bl FUN_0201DF2C
	ldr r1, _0201DECC ; =0x021C5994
	add r5, r0, #0x0
	ldr r1, [r1, #0x0]
	ldr r0, [r4, #0x50]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF2C
	ldr r2, _0201DECC ; =0x021C5994
	add r1, r0, #0x0
	ldr r2, [r2, #0x0]
	add r0, r5, #0x0
	ldr r2, [r2, #0x38]
	bl FUN_0201DDFC
_0201DEC4:
	mov r0, #0x0
	str r0, [r4, #0x48]
	pop {r3-r5, pc}
	nop
_0201DECC: .word 0x021C5994

	thumb_func_start FUN_0201DED0
FUN_0201DED0: ; 0x0201DED0
	ldr r1, _0201DF04 ; =0x00100010
	cmp r0, r1
	bgt _0201DEDE
	bge _0201DEF4
	cmp r0, #0x10
	beq _0201DEF0
	b _0201DF00
_0201DEDE:
	ldr r1, _0201DF08 ; =0x00200010
	cmp r0, r1
	bgt _0201DEE8
	beq _0201DEF8
	b _0201DF00
_0201DEE8:
	ldr r1, _0201DF0C ; =0x00300010
	cmp r0, r1
	beq _0201DEFC
	b _0201DF00
_0201DEF0:
	mov r0, #0x1
	bx lr
_0201DEF4:
	mov r0, #0x2
	bx lr
_0201DEF8:
	mov r0, #0x4
	bx lr
_0201DEFC:
	mov r0, #0x8
	bx lr
_0201DF00:
	mov r0, #0x1
	bx lr
	.balign 4
_0201DF04: .word 0x00100010
_0201DF08: .word 0x00200010
_0201DF0C: .word 0x00300010

	thumb_func_start FUN_0201DF10
FUN_0201DF10: ; 0x0201DF10
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	blx _s32_div_f
	cmp r1, #0x0
	beq _0201DF28
	sub r5, r5, r1
	cmp r6, #0x1
	bne _0201DF28
	add r5, r5, r4
_0201DF28:
	add r0, r5, #0x0
	pop {r4-r6, pc}

	thumb_func_start FUN_0201DF2C
FUN_0201DF2C: ; 0x0201DF2C
	asr r2, r0, #0x4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	ldr r3, _0201DF38 ; =_s32_div_f
	asr r0, r2, #0x5
	bx r3
	.balign 4
_0201DF38: .word _s32_div_f

	thumb_func_start FUN_0201DF3C
FUN_0201DF3C: ; 0x0201DF3C
	mul r1, r0
	lsl r0, r1, #0x5
	bx lr
	.balign 4

	thumb_func_start FUN_0201DF44
FUN_0201DF44: ; 0x0201DF44
	push {r3-r7, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r1, r2, #0x0
	mov r0, #0x1
	add r2, r4, #0x0
	add r7, r3, #0x0
	tst r2, r0
	beq _0201DF6E
	ldr r2, _0201DF90 ; =0x021C5994
	ldr r2, [r2, #0x0]
	ldr r6, [r2, #0xc]
	ldr r2, [r2, #0x1c]
	add r3, r6, r5
	cmp r3, r2
	bls _0201DF6C
	bl ErrorHandling
	mov r0, #0x0
	b _0201DF6E
_0201DF6C:
	str r6, [r1, #0x0]
_0201DF6E:
	mov r1, #0x2
	tst r1, r4
	beq _0201DF8C
	ldr r1, _0201DF90 ; =0x021C5994
	ldr r1, [r1, #0x0]
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #0x20]
	add r2, r3, r5
	cmp r2, r1
	bls _0201DF8A
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r7, pc}
_0201DF8A:
	str r3, [r7, #0x0]
_0201DF8C:
	pop {r3-r7, pc}
	nop
_0201DF90: .word 0x021C5994

	thumb_func_start FUN_0201DF94
FUN_0201DF94: ; 0x0201DF94
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	mov r2, #0x1
	add r0, r4, #0x0
	tst r0, r2
	beq _0201DFBC
	ldr r0, _0201DFE0 ; =0x021C5994
	ldr r3, [r0, #0x0]
	ldr r1, [r3, #0xc]
	add r1, r1, r5
	str r1, [r3, #0xc]
	ldr r1, [r0, #0x0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x2c]
	bl FUN_0201DF10
	ldr r1, _0201DFE0 ; =0x021C5994
	ldr r1, [r1, #0x0]
	str r0, [r1, #0xc]
_0201DFBC:
	mov r0, #0x2
	tst r0, r4
	beq _0201DFDE
	ldr r0, _0201DFE0 ; =0x021C5994
	ldr r2, [r0, #0x0]
	ldr r1, [r2, #0x10]
	add r1, r1, r5
	str r1, [r2, #0x10]
	ldr r1, [r0, #0x0]
	mov r2, #0x1
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x30]
	bl FUN_0201DF10
	ldr r1, _0201DFE0 ; =0x021C5994
	ldr r1, [r1, #0x0]
	str r0, [r1, #0x10]
_0201DFDE:
	pop {r3-r5, pc}
	.balign 4
_0201DFE0: .word 0x021C5994

	thumb_func_start FUN_0201DFE4
FUN_0201DFE4: ; 0x0201DFE4
	asr r3, r0, #0x3
	str r3, [r1, #0x0]
	mov r1, #0x7
	and r0, r1
	strb r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_0201DFF0
FUN_0201DFF0: ; 0x0201DFF0
	push {r3-r4}
	sub r0, r1, r0
	ldr r4, [sp, #0x8]
	str r0, [r3, #0x0]
	bpl _0201E006
	add r0, r2, r0
	str r0, [r4, #0x0]
	mov r0, #0x0
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
_0201E006:
	str r2, [r4, #0x0]
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201E00C
FUN_0201E00C: ; 0x0201E00C
	push {r3-r7, lr}
	add r6, r0, #0x0
	ldr r0, _0201E064 ; =0x021C5998
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0201E060
	add r0, r4, #0x0
	mov r1, #0x28
	bl FUN_02016998
	add r1, r0, #0x0
	ldr r0, _0201E064 ; =0x021C5998
	mov r2, #0x28
	str r1, [r0, #0x0]
	mov r0, #0x0
	blx MIi_CpuClear32
	ldr r0, _0201E064 ; =0x021C5998
	mov r1, #0x30
	ldr r0, [r0, #0x0]
	mul r1, r6
	str r6, [r0, #0x4]
	add r0, r4, #0x0
	bl FUN_02016998
	ldr r7, _0201E064 ; =0x021C5998
	mov r4, #0x0
	ldr r1, [r7, #0x0]
	cmp r6, #0x0
	str r0, [r1, #0x0]
	ble _0201E060
	add r5, r4, #0x0
_0201E04E:
	ldr r0, [r7, #0x0]
	ldr r0, [r0, #0x0]
	add r0, r0, r5
	bl FUN_0201E2F8
	add r4, r4, #0x1
	add r5, #0x30
	cmp r4, r6
	blt _0201E04E
_0201E060:
	pop {r3-r7, pc}
	nop
_0201E064: .word 0x021C5998

	thumb_func_start FUN_0201E068
FUN_0201E068: ; 0x0201E068
	cmp r1, #0x1
	bne _0201E078
	ldr r1, _0201E088 ; =0x021C5998
	ldr r2, [r1, #0x0]
	ldrh r1, [r2, #0x24]
	orr r0, r1
	strh r0, [r2, #0x24]
	bx lr
_0201E078:
	cmp r1, #0x2
	bne _0201E086
	ldr r1, _0201E088 ; =0x021C5998
	ldr r2, [r1, #0x0]
	ldrh r1, [r2, #0x26]
	orr r0, r1
	strh r0, [r2, #0x26]
_0201E086:
	bx lr
	.balign 4
_0201E088: .word 0x021C5998

	thumb_func_start FUN_0201E08C
FUN_0201E08C: ; 0x0201E08C
	push {r3, lr}
	ldr r0, _0201E0B4 ; =0x021C5998
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201E0B2
	bl FUN_0201E1F0
	ldr r0, _0201E0B4 ; =0x021C5998
	ldr r0, [r0, #0x0]
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201E0B4 ; =0x021C5998
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201E0B4 ; =0x021C5998
	mov r1, #0x0
	str r1, [r0, #0x0]
_0201E0B2:
	pop {r3, pc}
	.balign 4
_0201E0B4: .word 0x021C5998

	thumb_func_start FUN_0201E0B8
FUN_0201E0B8: ; 0x0201E0B8
	bx lr
	.balign 4

	thumb_func_start FUN_0201E0BC
FUN_0201E0BC: ; 0x0201E0BC
	push {r3, lr}
	ldr r0, _0201E0E0 ; =0x021C5998
	mov r2, #0x0
	ldr r1, [r0, #0x0]
	str r2, [r1, #0xc]
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x10]
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x14]
	ldr r0, [r0, #0x0]
	str r2, [r0, #0x18]
	bl FUN_0201E464
	ldr r0, _0201E0E0 ; =0x021C5998
	ldr r0, [r0, #0x0]
	bl FUN_0201E574
	pop {r3, pc}
	.balign 4
_0201E0E0: .word 0x021C5998

	thumb_func_start FUN_0201E0E4
FUN_0201E0E4: ; 0x0201E0E4
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl FUN_0201E428
	add r4, r0, #0x0
	bne _0201E0F8
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E0F8:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201E2C4
	cmp r0, #0x0
	bne _0201E108
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E108:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201E314
	cmp r0, #0x0
	bne _0201E11E
	ldr r0, [r5, #0xc]
	bl FUN_0201E1C8
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E11E:
	add r0, r4, #0x0
	bl FUN_0201E57C
	mov r0, #0x1
	pop {r3-r5, pc}

	thumb_func_start FUN_0201E128
FUN_0201E128: ; 0x0201E128
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl FUN_0201E428
	add r4, r0, #0x0
	bne _0201E13C
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E13C:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201E2C4
	cmp r0, #0x0
	bne _0201E14C
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E14C:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201E36C
	cmp r0, #0x0
	bne _0201E162
	ldr r0, [r5, #0xc]
	bl FUN_0201E1C8
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E162:
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201E168
FUN_0201E168: ; 0x0201E168
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	bne _0201E174
	bl ErrorHandling
_0201E174:
	add r0, r4, #0x0
	bl FUN_0201E3F0
	add r4, r0, #0x0
	bne _0201E182
	bl ErrorHandling
_0201E182:
	str r5, [r4, #0x0]
	ldr r1, [r4, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201E19A
	ldr r3, [r4, #0x8]
	ldr r1, [r4, #0x24]
	ldr r2, [r5, #0xc]
	mov r0, #0xe
	lsl r3, r3, #0x5
	bl FUN_0201C2C8
_0201E19A:
	ldr r1, [r4, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201E1B0
	ldr r3, [r4, #0x8]
	ldr r1, [r4, #0x28]
	ldr r2, [r5, #0xc]
	mov r0, #0x1e
	lsl r3, r3, #0x5
	bl FUN_0201C2C8
_0201E1B0:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201E1B4
FUN_0201E1B4: ; 0x0201E1B4
	push {r3, lr}
	bl FUN_0201E3F0
	cmp r0, #0x0
	beq _0201E1C2
	mov r0, #0x1
	pop {r3, pc}
_0201E1C2:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201E1C8
FUN_0201E1C8: ; 0x0201E1C8
	push {r4, lr}
	bl FUN_0201E3F0
	add r4, r0, #0x0
	bne _0201E1D6
	bl ErrorHandling
_0201E1D6:
	add r0, r4, #0x0
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _0201E1EC
	add r0, r4, #0x0
	bl FUN_0201E5B8
	add r0, r4, #0x0
	bl FUN_0201E2BC
_0201E1EC:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201E1F0
FUN_0201E1F0: ; 0x0201E1F0
	push {r4-r6, lr}
	ldr r6, _0201E22C ; =0x021C5998
	mov r4, #0x0
	ldr r1, [r6, #0x0]
	ldr r0, [r1, #0x4]
	cmp r0, #0x0
	ble _0201E228
	add r5, r4, #0x0
_0201E200:
	ldr r1, [r1, #0x0]
	add r0, r1, r5
	add r0, #0x2c
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _0201E21C
	add r0, r1, r5
	bl FUN_0201E5B8
	ldr r0, [r6, #0x0]
	ldr r0, [r0, #0x0]
	add r0, r0, r5
	bl FUN_0201E2BC
_0201E21C:
	ldr r1, [r6, #0x0]
	add r4, r4, #0x1
	ldr r0, [r1, #0x4]
	add r5, #0x30
	cmp r4, r0
	blt _0201E200
_0201E228:
	pop {r4-r6, pc}
	nop
_0201E22C: .word 0x021C5998

	thumb_func_start FUN_0201E230
FUN_0201E230: ; 0x0201E230
	push {r3, lr}
	bl FUN_0201E3F0
	cmp r0, #0x0
	bne _0201E244
	bne _0201E240
	bl ErrorHandling
_0201E240:
	mov r0, #0x0
	pop {r3, pc}
_0201E244:
	add r1, r0, #0x0
	add r1, #0x2c
	ldrb r1, [r1, #0x0]
	cmp r1, #0x1
	bne _0201E252
	add r0, #0x10
	pop {r3, pc}
_0201E252:
	mov r0, #0x0
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201E258
FUN_0201E258: ; 0x0201E258
	push {r4, lr}
	add r4, r1, #0x0
	bl FUN_0201E3F0
	cmp r0, #0x0
	bne _0201E26E
	bne _0201E26A
	bl ErrorHandling
_0201E26A:
	mov r0, #0x0
	pop {r4, pc}
_0201E26E:
	add r1, r0, #0x0
	add r1, #0x2c
	ldrb r1, [r1, #0x0]
	cmp r1, #0x1
	beq _0201E27C
	mov r0, #0x0
	pop {r4, pc}
_0201E27C:
	ldr r1, [r0, #0x0]
	ldr r1, [r1, #0x4]
	cmp r1, #0x0
	beq _0201E288
	mov r1, #0x1
	str r1, [r4, #0x18]
_0201E288:
	add r0, #0x10
	pop {r4, pc}

	thumb_func_start FUN_0201E28C
FUN_0201E28C: ; 0x0201E28C
	push {r4, lr}
	ldr r2, [r0, #0x4]
	cmp r2, #0x0
	beq _0201E29A
	mov r4, #0x2
	lsl r4, r4, #0x8
	b _0201E2A6
_0201E29A:
	ldr r2, [r0, #0x0]
	cmp r2, #0x4
	bne _0201E2A4
	mov r4, #0x0
	b _0201E2A6
_0201E2A4:
	mov r4, #0x20
_0201E2A6:
	cmp r4, #0x0
	beq _0201E2B6
	blx FUN_020B19C4
	add r1, r4, #0x0
	blx _u32_div_f
	pop {r4, pc}
_0201E2B6:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201E2BC
FUN_0201E2BC: ; 0x0201E2BC
	ldr r3, _0201E2C0 ; =FUN_0201E2F8
	bx r3
	.balign 4
_0201E2C0: .word FUN_0201E2F8 

	thumb_func_start FUN_0201E2C4
FUN_0201E2C4: ; 0x0201E2C4
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	str r0, [r4, #0x0]
	ldr r0, [r5, #0xc]
	bl FUN_0201E1B4
	cmp r0, #0x1
	bne _0201E2E0
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E2E0:
	ldr r0, [r5, #0xc]
	add r1, r4, #0x0
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x4]
	add r1, #0x2c
	str r0, [r4, #0x4]
	mov r0, #0x1
	strb r0, [r1, #0x0]
	ldr r1, [r5, #0x8]
	str r1, [r4, #0x8]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201E2F8
FUN_0201E2F8: ; 0x0201E2F8
	push {r4, lr}
	mov r1, #0x0
	mov r2, #0x30
	add r4, r0, #0x0
	blx Call_FillMemWithValue
	mov r0, #0x0
	mvn r0, r0
	str r0, [r4, #0xc]
	add r4, #0x10
	add r0, r4, #0x0
	blx FUN_020B19DC
	pop {r4, pc}

	thumb_func_start FUN_0201E314
FUN_0201E314: ; 0x0201E314
	push {r3-r6, lr}
	sub sp, #0x4
	add r6, r1, #0x0
	ldr r0, [r6, #0x0]
	ldr r0, [r0, #0x4]
	cmp r0, #0x0
	beq _0201E334
	ldr r0, _0201E368 ; =0x021C5998
	ldr r0, [r0, #0x0]
	add r4, r0, #0x0
	add r5, r0, #0x0
	ldr r3, [r0, #0x1c]
	add r4, #0x14
	add r5, #0x18
	ldr r0, [r0, #0x20]
	b _0201E344
_0201E334:
	ldr r0, _0201E368 ; =0x021C5998
	mov r3, #0x2
	ldr r5, [r0, #0x0]
	lsl r3, r3, #0x8
	add r4, r5, #0x0
	add r4, #0xc
	add r5, #0x10
	add r0, r3, #0x0
_0201E344:
	str r0, [sp, #0x0]
	ldr r1, [r4, #0x0]
	ldr r2, [r5, #0x0]
	add r0, r6, #0x0
	bl FUN_0201E5F4
	add r0, r6, #0x0
	bl FUN_0201E4AC
	add r0, r6, #0x0
	add r1, r4, #0x0
	add r2, r5, #0x0
	bl FUN_0201E640
	mov r0, #0x1
	add sp, #0x4
	pop {r3-r6, pc}
	nop
_0201E368: .word 0x021C5998

	thumb_func_start FUN_0201E36C
FUN_0201E36C: ; 0x0201E36C
	push {r4-r6, lr}
	add r5, r1, #0x0
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0x4]
	cmp r0, #0x0
	beq _0201E37C
	bl ErrorHandling
_0201E37C:
	ldr r1, [r5, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201E39E
	ldr r0, _0201E3EC ; =0x021C5998
	ldr r1, [r5, #0x8]
	ldr r0, [r0, #0x0]
	ldrh r0, [r0, #0x24]
	bl FUN_0201E534
	add r6, r0, #0x0
	mov r0, #0x0
	mvn r0, r0
	cmp r6, r0
	bne _0201E39E
	mov r0, #0x0
	pop {r4-r6, pc}
_0201E39E:
	ldr r1, [r5, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201E3C0
	ldr r0, _0201E3EC ; =0x021C5998
	ldr r1, [r5, #0x8]
	ldr r0, [r0, #0x0]
	ldrh r0, [r0, #0x26]
	bl FUN_0201E534
	add r4, r0, #0x0
	mov r0, #0x0
	mvn r0, r0
	cmp r4, r0
	bne _0201E3C0
	mov r0, #0x0
	pop {r4-r6, pc}
_0201E3C0:
	ldr r1, [r5, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201E3CA
	str r6, [r5, #0x24]
_0201E3CA:
	ldr r1, [r5, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201E3D4
	str r4, [r5, #0x28]
_0201E3D4:
	ldr r0, [r5, #0x8]
	lsl r1, r0, #0x5
	ldr r0, [r5, #0x0]
	str r1, [r0, #0x8]
	add r0, r5, #0x0
	bl FUN_0201E4BC
	add r0, r5, #0x0
	bl FUN_0201E57C
	mov r0, #0x1
	pop {r4-r6, pc}
	.balign 4
_0201E3EC: .word 0x021C5998

	thumb_func_start FUN_0201E3F0
FUN_0201E3F0: ; 0x0201E3F0
	push {r4-r5}
	ldr r2, _0201E424 ; =0x021C5998
	mov r1, #0x0
	ldr r5, [r2, #0x0]
	ldr r2, [r5, #0x4]
	cmp r2, #0x0
	ble _0201E41C
	ldr r2, [r5, #0x0]
	add r4, r2, #0x0
_0201E402:
	ldr r3, [r4, #0xc]
	cmp r0, r3
	bne _0201E412
	mov r0, #0x30
	mul r0, r1
	add r0, r2, r0
	pop {r4-r5}
	bx lr
_0201E412:
	ldr r3, [r5, #0x4]
	add r1, r1, #0x1
	add r4, #0x30
	cmp r1, r3
	blt _0201E402
_0201E41C:
	mov r0, #0x0
	pop {r4-r5}
	bx lr
	nop
_0201E424: .word 0x021C5998

	thumb_func_start FUN_0201E428
FUN_0201E428: ; 0x0201E428
	push {r3-r4}
	ldr r1, _0201E460 ; =0x021C5998
	mov r0, #0x0
	ldr r4, [r1, #0x0]
	ldr r1, [r4, #0x4]
	cmp r1, #0x0
	ble _0201E458
	ldr r1, [r4, #0x0]
	add r3, r1, #0x0
_0201E43A:
	add r2, r3, #0x0
	add r2, #0x2c
	ldrb r2, [r2, #0x0]
	cmp r2, #0x0
	bne _0201E44E
	mov r2, #0x30
	mul r2, r0
	add r0, r1, r2
	pop {r3-r4}
	bx lr
_0201E44E:
	ldr r2, [r4, #0x4]
	add r0, r0, #0x1
	add r3, #0x30
	cmp r0, r2
	blt _0201E43A
_0201E458:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
	nop
_0201E460: .word 0x021C5998

	thumb_func_start FUN_0201E464
FUN_0201E464: ; 0x0201E464
	push {r3, lr}
	blx FUN_020C5D9C
	cmp r0, #0x20
	beq _0201E472
	cmp r0, #0x40
	bne _0201E47E
_0201E472:
	ldr r0, _0201E4A8 ; =0x021C5998
	mov r1, #0x2
	ldr r0, [r0, #0x0]
	lsl r1, r1, #0xc
	str r1, [r0, #0x1c]
	b _0201E486
_0201E47E:
	ldr r0, _0201E4A8 ; =0x021C5998
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x1c]
_0201E486:
	blx FUN_020C5D2C
	mov r1, #0x1
	lsl r1, r1, #0x8
	cmp r0, r1
	bne _0201E49C
	ldr r0, _0201E4A8 ; =0x021C5998
	lsl r1, r1, #0x5
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x20]
	pop {r3, pc}
_0201E49C:
	ldr r0, _0201E4A8 ; =0x021C5998
	mov r1, #0x0
	ldr r0, [r0, #0x0]
	str r1, [r0, #0x20]
	pop {r3, pc}
	nop
_0201E4A8: .word 0x021C5998

	thumb_func_start FUN_0201E4AC
FUN_0201E4AC: ; 0x0201E4AC
	ldr r1, [r0, #0x8]
	ldr r3, _0201E4B8 ; =FUN_0201E4BC
	lsl r2, r1, #0x5
	ldr r1, [r0, #0x0]
	str r2, [r1, #0x8]
	bx r3
	.balign 4
_0201E4B8: .word FUN_0201E4BC 

	thumb_func_start FUN_0201E4BC
FUN_0201E4BC: ; 0x0201E4BC
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0x10
	blx FUN_020B19DC
	ldr r0, [r4, #0x4]
	mov r2, #0x1
	tst r0, r2
	beq _0201E4DA
	add r3, r4, #0x0
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x24]
	add r3, #0x10
	blx FUN_020B1240
_0201E4DA:
	ldr r0, [r4, #0x4]
	mov r2, #0x2
	tst r0, r2
	beq _0201E4EE
	ldr r0, [r4, #0x0]
	ldr r1, [r4, #0x28]
	add r4, #0x10
	add r3, r4, #0x0
	blx FUN_020B1240
_0201E4EE:
	pop {r4, pc}

	thumb_func_start FUN_0201E4F0
FUN_0201E4F0: ; 0x0201E4F0
	push {r4-r7}
	mov r3, #0x0
	cmp r1, #0x0
	ble _0201E50E
	mov r5, #0x1
_0201E4FA:
	ldrh r7, [r0, #0x0]
	add r4, r2, r3
	add r6, r5, #0x0
	lsl r6, r4
	add r4, r7, #0x0
	orr r4, r6
	add r3, r3, #0x1
	strh r4, [r0, #0x0]
	cmp r3, r1
	blt _0201E4FA
_0201E50E:
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_0201E514
FUN_0201E514: ; 0x0201E514
	push {r4-r7}
	mov r4, #0x0
	cmp r1, #0x0
	ble _0201E530
	mov r6, #0x1
_0201E51E:
	add r5, r2, r4
	add r7, r6, #0x0
	ldrh r3, [r0, #0x0]
	lsl r7, r5
	bic r3, r7
	add r4, r4, #0x1
	strh r3, [r0, #0x0]
	cmp r4, r1
	blt _0201E51E
_0201E530:
	pop {r4-r7}
	bx lr

	thumb_func_start FUN_0201E534
FUN_0201E534: ; 0x0201E534
	push {r4-r7}
	mov r3, #0x0
	mov r6, #0x1
	add r2, r3, #0x0
_0201E53C:
	add r4, r2, #0x0
	b _0201E546
_0201E540:
	cmp r5, #0x10
	bge _0201E554
	add r4, r4, #0x1
_0201E546:
	add r5, r3, r4
	add r7, r6, #0x0
	lsl r7, r5
	tst r7, r0
	bne _0201E554
	cmp r4, r1
	blt _0201E540
_0201E554:
	cmp r4, r1
	bge _0201E560
	add r3, r3, r4
	add r3, r3, #0x1
	cmp r3, #0x10
	blt _0201E53C
_0201E560:
	cmp r3, #0x10
	blt _0201E56C
	mov r0, #0x0
	mvn r0, r0
	pop {r4-r7}
	bx lr
_0201E56C:
	lsl r0, r3, #0x5
	pop {r4-r7}
	bx lr
	.balign 4

	thumb_func_start FUN_0201E574
FUN_0201E574: ; 0x0201E574
	mov r1, #0x0
	strh r1, [r0, #0x24]
	strh r1, [r0, #0x26]
	bx lr

	thumb_func_start FUN_0201E57C
FUN_0201E57C: ; 0x0201E57C
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201E598
	ldr r0, _0201E5B4 ; =0x021C5998
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0x0]
	ldr r1, [r4, #0x8]
	add r0, #0x24
	lsr r2, r2, #0x5
	bl FUN_0201E4F0
_0201E598:
	ldr r1, [r4, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201E5B0
	ldr r0, _0201E5B4 ; =0x021C5998
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0x0]
	ldr r1, [r4, #0x8]
	add r0, #0x26
	lsr r2, r2, #0x5
	bl FUN_0201E4F0
_0201E5B0:
	pop {r4, pc}
	nop
_0201E5B4: .word 0x021C5998

	thumb_func_start FUN_0201E5B8
FUN_0201E5B8: ; 0x0201E5B8
	push {r4, lr}
	add r4, r0, #0x0
	ldr r1, [r4, #0x4]
	mov r0, #0x1
	tst r0, r1
	beq _0201E5D4
	ldr r0, _0201E5F0 ; =0x021C5998
	ldr r2, [r4, #0x24]
	ldr r0, [r0, #0x0]
	ldr r1, [r4, #0x8]
	add r0, #0x24
	lsr r2, r2, #0x5
	bl FUN_0201E514
_0201E5D4:
	ldr r1, [r4, #0x4]
	mov r0, #0x2
	tst r0, r1
	beq _0201E5EC
	ldr r0, _0201E5F0 ; =0x021C5998
	ldr r2, [r4, #0x28]
	ldr r0, [r0, #0x0]
	ldr r1, [r4, #0x8]
	add r0, #0x26
	lsr r2, r2, #0x5
	bl FUN_0201E514
_0201E5EC:
	pop {r4, pc}
	nop
_0201E5F0: .word 0x021C5998

	thumb_func_start FUN_0201E5F4
FUN_0201E5F4: ; 0x0201E5F4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	ldr r2, [r5, #0x4]
	mov r0, #0x1
	tst r2, r0
	beq _0201E61A
	ldr r2, [r5, #0x8]
	lsl r2, r2, #0x5
	add r2, r1, r2
	cmp r2, r3
	bls _0201E618
	bl ErrorHandling
	bl FUN_0201E0B8
	mov r0, #0x0
	b _0201E61A
_0201E618:
	str r1, [r5, #0x24]
_0201E61A:
	ldr r2, [r5, #0x4]
	mov r1, #0x2
	tst r1, r2
	beq _0201E63C
	ldr r1, [r5, #0x8]
	lsl r1, r1, #0x5
	add r2, r4, r1
	ldr r1, [sp, #0x10]
	cmp r2, r1
	bls _0201E63A
	bl ErrorHandling
	bl FUN_0201E0B8
	mov r0, #0x0
	pop {r3-r5, pc}
_0201E63A:
	str r4, [r5, #0x28]
_0201E63C:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201E640
FUN_0201E640: ; 0x0201E640
	push {r3-r4}
	ldr r4, [r0, #0x4]
	mov r3, #0x1
	tst r3, r4
	beq _0201E654
	ldr r3, [r0, #0x8]
	ldr r4, [r1, #0x0]
	lsl r3, r3, #0x5
	add r3, r4, r3
	str r3, [r1, #0x0]
_0201E654:
	ldr r3, [r0, #0x4]
	mov r1, #0x2
	tst r1, r3
	beq _0201E666
	ldr r0, [r0, #0x8]
	ldr r1, [r2, #0x0]
	lsl r0, r0, #0x5
	add r0, r1, r0
	str r0, [r2, #0x0]
_0201E666:
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_0201E66C
FUN_0201E66C: ; 0x0201E66C
	push {r4, lr}
	add r4, r0, #0x0
	blx FUN_020C611C
	blx FUN_020C60E4
	blx FUN_020C6070
	blx FUN_020C6034
	blx FUN_020C6108
	blx FUN_020C60C0
	blx FUN_020C605C
	blx FUN_020C600C
	blx FUN_020C60AC
	blx FUN_020C6098
	ldr r0, [r4, #0x0]
	blx FUN_020C6BF0
	ldr r0, [r4, #0x4]
	blx FUN_020C6970
	ldr r0, [r4, #0x8]
	blx FUN_020C62FC
	ldr r0, [r4, #0xc]
	blx FUN_020C61F4
	ldr r0, [r4, #0x10]
	blx FUN_020C6A84
	ldr r0, [r4, #0x14]
	blx FUN_020C68B8
	ldr r0, [r4, #0x18]
	blx FUN_020C6280
	ldr r0, [r4, #0x1c]
	blx FUN_020C6168
	ldr r0, [r4, #0x20]
	blx FUN_020C66B4
	ldr r0, [r4, #0x24]
	blx FUN_020C65C0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201E6D8
FUN_0201E6D8: ; 0x0201E6D8
	ldr r0, _0201E6E0 ; =0x021C599C
	mov r1, #0x0
	str r1, [r0, #0x4]
	bx lr
	.balign 4
_0201E6E0: .word 0x021C599C

	thumb_func_start FUN_0201E6E4
FUN_0201E6E4: ; 0x0201E6E4
	cmp r1, #0x1
	bne _0201E6F2
	ldr r1, _0201E718 ; =0x021C599C
	ldr r1, [r1, #0x4]
	tst r1, r0
	beq _0201E6FA
	bx lr
_0201E6F2:
	ldr r1, _0201E718 ; =0x021C599C
	ldr r1, [r1, #0x4]
	tst r1, r0
	beq _0201E714
_0201E6FA:
	ldr r1, _0201E718 ; =0x021C599C
	ldr r2, [r1, #0x4]
	add r3, r2, #0x0
	eor r3, r0
	mov r2, #0x1
	lsl r2, r2, #0x1a
	str r3, [r1, #0x4]
	ldr r1, [r2, #0x0]
	ldr r0, _0201E71C ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #0x8
	orr r0, r1
	str r0, [r2, #0x0]
_0201E714:
	bx lr
	nop
_0201E718: .word 0x021C599C
_0201E71C: .word 0xFFFFE0FF

	thumb_func_start FUN_0201E720
FUN_0201E720: ; 0x0201E720
	ldr r1, _0201E738 ; =0x021C599C
	mov r3, #0x1
	str r0, [r1, #0x4]
	lsl r3, r3, #0x1a
	ldr r2, [r3, #0x0]
	ldr r1, _0201E73C ; =0xFFFFE0FF
	lsl r0, r0, #0x8
	and r1, r2
	orr r0, r1
	str r0, [r3, #0x0]
	bx lr
	nop
_0201E738: .word 0x021C599C
_0201E73C: .word 0xFFFFE0FF

	thumb_func_start FUN_0201E740
FUN_0201E740: ; 0x0201E740
	ldr r0, _0201E748 ; =0x021C599C
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_0201E748: .word 0x021C599C

	thumb_func_start FUN_0201E74C
FUN_0201E74C: ; 0x0201E74C
	cmp r1, #0x1
	bne _0201E75A
	ldr r1, _0201E77C ; =0x021C599C
	ldr r1, [r1, #0x0]
	tst r1, r0
	beq _0201E762
	bx lr
_0201E75A:
	ldr r1, _0201E77C ; =0x021C599C
	ldr r1, [r1, #0x0]
	tst r1, r0
	beq _0201E77A
_0201E762:
	ldr r1, _0201E77C ; =0x021C599C
	ldr r2, [r1, #0x0]
	add r3, r2, #0x0
	eor r3, r0
	ldr r2, _0201E780 ; =0x04001000
	str r3, [r1, #0x0]
	ldr r1, [r2, #0x0]
	ldr r0, _0201E784 ; =0xFFFFE0FF
	and r1, r0
	lsl r0, r3, #0x8
	orr r0, r1
	str r0, [r2, #0x0]
_0201E77A:
	bx lr
	.balign 4
_0201E77C: .word 0x021C599C
_0201E780: .word 0x04001000
_0201E784: .word 0xFFFFE0FF

	thumb_func_start FUN_0201E788
FUN_0201E788: ; 0x0201E788
	push {r3, lr}
	blx FUN_020C5A34
	ldr r2, _0201E79C ; =0x04001000
	mov r0, #0x1
	ldr r1, [r2, #0x0]
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r2, #0x0]
	pop {r3, pc}
	.balign 4
_0201E79C: .word 0x04001000

	thumb_func_start FUN_0201E7A0
FUN_0201E7A0: ; 0x0201E7A0
	ldr r0, _0201E7C0 ; =0x021C4918
	ldr r2, _0201E7C4 ; =0x04000304
	ldrb r0, [r0, #0x5]
	cmp r0, #0x0
	bne _0201E7B4
	ldrh r1, [r2, #0x0]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2, #0x0]
	bx lr
_0201E7B4:
	ldrh r1, [r2, #0x0]
	ldr r0, _0201E7C8 ; =0xFFFF7FFF
	and r0, r1
	strh r0, [r2, #0x0]
	bx lr
	nop
_0201E7C0: .word 0x021C4918
_0201E7C4: .word 0x04000304
_0201E7C8: .word 0xFFFF7FFF

	thumb_func_start FUN_0201E7CC
FUN_0201E7CC: ; 0x0201E7CC
	ldr r0, _0201E7D4 ; =0x021C599C
	ldr r0, [r0, #0x4]
	bx lr
	nop
_0201E7D4: .word 0x021C599C

	thumb_func_start FUN_0201E7D8
FUN_0201E7D8: ; 0x0201E7D8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _0201E8B4 ; =0x020FFA38
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r3, r2, #0x1
	ldr r2, _0201E8B4 ; =0x020FFA38
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #0x4
	lsl r0, r0, #0x1
	add r0, r0, #0x1
	lsl r1, r0, #0x1
	ldr r0, _0201E8B4 ; =0x020FFA38
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	lsl r2, r2, #0xa
	mov r3, #0x0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r3, r2, #0x1
	ldr r2, _0201E8B4 ; =0x020FFA38
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _0201E8B4 ; =0x020FFA38
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0x0
	str r1, [r5, #0x18]
	add r0, #0x14
	add r5, #0x20
	add r1, r5, #0x0
	add r2, r0, #0x0
	blx FUN_020C5634
	pop {r3-r5, pc}
	nop
_0201E8B4: .word 0x020FFA38

	thumb_func_start FUN_0201E8B8
FUN_0201E8B8: ; 0x0201E8B8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _0201E998 ; =0x020FFA38
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r3, r2, #0x1
	ldr r2, _0201E998 ; =0x020FFA38
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x20]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #0x4
	lsl r0, r0, #0x1
	add r0, r0, #0x1
	lsl r1, r0, #0x1
	ldr r0, _0201E998 ; =0x020FFA38
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	lsl r2, r2, #0xa
	mov r3, #0x0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r3, r2, #0x1
	ldr r2, _0201E998 ; =0x020FFA38
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x28]
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #0x4
	lsl r1, r0, #0x2
	ldr r0, _0201E998 ; =0x020FFA38
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x24]
	add r0, r5, #0x0
	add r0, #0x20
	add r5, #0x14
	add r1, r5, #0x0
	add r2, r0, #0x0
	blx FUN_020C5634
	pop {r3-r5, pc}
	.balign 4
_0201E998: .word 0x020FFA38

	thumb_func_start FUN_0201E99C
FUN_0201E99C: ; 0x0201E99C
	add r2, r1, #0x0
	add r2, #0x46
	strh r0, [r2, #0x0]
	asr r0, r0, #0x4
	lsl r3, r0, #0x1
	ldr r2, _0201E9E0 ; =0x020FFA38
	lsl r0, r3, #0x1
	ldrsh r0, [r2, r0]
	str r0, [r1, #0x0]
	add r0, r3, #0x1
	lsl r0, r0, #0x1
	ldrsh r0, [r2, r0]
	mov r2, #0x0
	str r0, [r1, #0x4]
	ldr r0, _0201E9E4 ; =0x00001555
	str r0, [r1, #0x8]
	mov r0, #0x96
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	mov r0, #0xe1
	lsl r0, r0, #0xe
	str r0, [r1, #0x10]
	mov r0, #0x1
	str r2, [r1, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x54]
	str r2, [r1, #0x58]
	str r2, [r1, #0x5c]
	str r2, [r1, #0x60]
	str r2, [r1, #0x64]
	bx lr
	nop
_0201E9E0: .word 0x020FFA38
_0201E9E4: .word 0x00001555

	thumb_func_start FUN_0201E9E8
FUN_0201E9E8: ; 0x0201E9E8
	ldr r2, [r0, #0x58]
	cmp r2, #0x0
	bne _0201E9F2
	mov r2, #0x0
	str r2, [r1, #0x0]
_0201E9F2:
	ldr r2, [r0, #0x5c]
	cmp r2, #0x0
	bne _0201E9FC
	mov r2, #0x0
	str r2, [r1, #0x4]
_0201E9FC:
	ldr r0, [r0, #0x60]
	cmp r0, #0x0
	bne _0201EA06
	mov r0, #0x0
	str r0, [r1, #0x8]
_0201EA06:
	bx lr

	thumb_func_start FUN_0201EA08
FUN_0201EA08: ; 0x0201EA08
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r7, [r5, #0x64]
	add r4, r1, #0x0
	add r6, r2, #0x0
	cmp r7, #0x0
	bne _0201EA20
	ldmia r4!, {r0-r1}
	stmia r6!, {r0-r1}
	ldr r0, [r4, #0x0]
	str r0, [r6, #0x0]
	pop {r3-r7, pc}
_0201EA20:
	add r0, r7, #0x0
	str r0, [sp, #0x0]
	add r0, #0x8
	str r0, [sp, #0x0]
	ldr r0, [r7, #0x10]
	cmp r0, #0x0
	bne _0201EA48
	add r3, r4, #0x0
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldr r0, [r5, #0x64]
	ldr r2, [r7, #0x4]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bne _0201EA5C
	mov r1, #0x1
	str r1, [r0, #0x10]
	b _0201EA5C
_0201EA48:
	ldr r2, [r7, #0x4]
	mov r1, #0xc
	mul r1, r2
	ldr r0, [r7, #0x20]
	add r2, r6, #0x0
	add r3, r0, r1
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
_0201EA5C:
	ldr r1, [r5, #0x64]
	ldr r0, [r7, #0x4]
	ldr r1, [r1, #0x0]
	add r0, r0, #0x1
	blx _s32_div_f
	str r1, [r7, #0x4]
	ldr r1, [sp, #0x0]
	ldr r0, [r5, #0x64]
	ldr r2, [r1, #0x0]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	mul r1, r2
	add r3, r4, #0x0
	add r2, r0, r1
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	ldr r0, [sp, #0x0]
	ldr r1, [r5, #0x64]
	ldr r0, [r0, #0x0]
	ldr r1, [r1, #0x0]
	add r0, r0, #0x1
	blx _s32_div_f
	ldr r0, [sp, #0x0]
	str r1, [r0, #0x0]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x14]
	cmp r0, #0x0
	bne _0201EAA0
	ldr r0, [r4, #0x0]
	str r0, [r6, #0x0]
_0201EAA0:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0x0
	bne _0201EAAC
	ldr r0, [r4, #0x4]
	str r0, [r6, #0x4]
_0201EAAC:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x1c]
	cmp r0, #0x0
	bne _0201EAB8
	ldr r0, [r4, #0x8]
	str r0, [r6, #0x8]
_0201EAB8:
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201EABC
FUN_0201EABC: ; 0x0201EABC
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [sp, #0x18]
	add r7, r1, #0x0
	str r0, [sp, #0x18]
	ldr r0, [r0, #0x54]
	add r6, r2, #0x0
	str r3, [sp, #0x0]
	cmp r0, #0x0
	beq _0201EB46
	add r0, r7, #0x1
	cmp r0, r5
	ble _0201EADA
	bl ErrorHandling
_0201EADA:
	ldr r0, [sp, #0x0]
	mov r1, #0x24
	bl FUN_02016998
	add r4, r0, #0x0
	mov r1, #0xc
	ldr r0, [sp, #0x0]
	mul r1, r5
	bl FUN_02016998
	mov r1, #0x0
	str r0, [r4, #0x20]
	cmp r5, #0x0
	ble _0201EB12
	add r2, r1, #0x0
	add r0, r1, #0x0
_0201EAFA:
	ldr r3, [r4, #0x20]
	add r1, r1, #0x1
	str r0, [r3, r2]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #0x4]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #0x8]
	add r2, #0xc
	cmp r1, r5
	blt _0201EAFA
_0201EB12:
	str r5, [r4, #0x0]
	mov r0, #0x0
	str r0, [r4, #0x4]
	str r7, [r4, #0x8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #0x1
	add r1, r6, #0x0
	tst r1, r0
	beq _0201EB2E
	str r0, [r4, #0x14]
_0201EB2E:
	mov r0, #0x2
	tst r0, r6
	beq _0201EB38
	mov r0, #0x1
	str r0, [r4, #0x18]
_0201EB38:
	mov r0, #0x4
	tst r0, r6
	beq _0201EB42
	mov r0, #0x1
	str r0, [r4, #0x1c]
_0201EB42:
	ldr r0, [sp, #0x18]
	str r4, [r0, #0x64]
_0201EB46:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201EB48
FUN_0201EB48: ; 0x0201EB48
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x64]
	cmp r0, #0x0
	beq _0201EB62
	ldr r0, [r0, #0x20]
	bl FUN_02016A18
	ldr r0, [r4, #0x64]
	bl FUN_02016A18
	mov r0, #0x0
	str r0, [r4, #0x64]
_0201EB62:
	pop {r4, pc}

	thumb_func_start FUN_0201EB64
FUN_0201EB64: ; 0x0201EB64
	ldr r3, _0201EB6C ; =FUN_02016998
	mov r1, #0x68
	bx r3
	nop
_0201EB6C: .word FUN_02016998 

	thumb_func_start FUN_0201EB70
FUN_0201EB70: ; 0x0201EB70
	ldr r3, _0201EB74 ; =FUN_02016A18
	bx r3
	.balign 4
_0201EB74: .word FUN_02016A18 

	thumb_func_start FUN_0201EB78
FUN_0201EB78: ; 0x0201EB78
	push {r3-r4}
	add r4, r0, #0x0
	add r3, r1, #0x0
	mov r2, #0xd
_0201EB80:
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _0201EB80
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201EB8C
FUN_0201EB8C: ; 0x0201EB8C
	ldr r1, _0201EB94 ; =0x021C59A4
	str r0, [r1, #0x0]
	bx lr
	nop
_0201EB94: .word 0x021C59A4

	thumb_func_start FUN_0201EB98
FUN_0201EB98: ; 0x0201EB98
	ldr r0, _0201EBA0 ; =0x021C59A4
	mov r1, #0x0
	str r1, [r0, #0x0]
	bx lr
	.balign 4
_0201EBA0: .word 0x021C59A4

	thumb_func_start FUN_0201EBA4
FUN_0201EBA4: ; 0x0201EBA4
	push {r3-r6, lr}
	sub sp, #0x1c
	ldr r0, _0201EC40 ; =0x021C59A4
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	beq _0201EC3A
	ldr r0, [r1, #0x54]
	cmp r0, #0x0
	beq _0201EBEE
	add r1, #0x48
	add r2, sp, #0x10
	blx FUN_020C5600
	ldr r0, _0201EC40 ; =0x021C59A4
	add r1, sp, #0x10
	ldr r0, [r0, #0x0]
	bl FUN_0201E9E8
	ldr r0, _0201EC40 ; =0x021C59A4
	add r1, sp, #0x10
	ldr r0, [r0, #0x0]
	add r2, sp, #0x4
	bl FUN_0201EA08
	ldr r1, _0201EC40 ; =0x021C59A4
	add r0, sp, #0x4
	ldr r1, [r1, #0x0]
	bl FUN_0201EF70
	ldr r0, _0201EC40 ; =0x021C59A4
	ldr r3, [r0, #0x0]
	ldr r2, [r3, #0x54]
	add r3, #0x48
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
_0201EBEE:
	ldr r0, _0201EC40 ; =0x021C59A4
	ldr r5, _0201EC44 ; =0x021CEF58
	ldr r4, [r0, #0x0]
	add r3, r4, #0x0
	add r2, r4, #0x0
	add r4, #0x14
	add r6, r4, #0x0
	ldmia r6!, {r0-r1}
	stmia r5!, {r0-r1}
	ldr r0, [r6, #0x0]
	add r2, #0x2c
	str r0, [r5, #0x0]
	add r6, r2, #0x0
	ldr r5, _0201EC48 ; =0x021CEF64
	ldmia r6!, {r0-r1}
	stmia r5!, {r0-r1}
	ldr r0, [r6, #0x0]
	add r3, #0x20
	str r0, [r5, #0x0]
	add r6, r3, #0x0
	ldr r5, _0201EC4C ; =0x021CEF70
	ldmia r6!, {r0-r1}
	stmia r5!, {r0-r1}
	ldr r0, [r6, #0x0]
	add r1, r2, #0x0
	str r0, [r5, #0x0]
	ldr r0, _0201EC50 ; =0x021CED64
	add r2, r3, #0x0
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	mov r3, #0x0
	blx FUN_020C80A4
	ldr r1, _0201EC54 ; =0x021CED98
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_0201EC3A:
	add sp, #0x1c
	pop {r3-r6, pc}
	nop
_0201EC40: .word 0x021C59A4
_0201EC44: .word 0x021CEF58
_0201EC48: .word 0x021CEF64
_0201EC4C: .word 0x021CEF70
_0201EC50: .word 0x021CED64
_0201EC54: .word 0x021CED98

	thumb_func_start FUN_0201EC58
FUN_0201EC58: ; 0x0201EC58
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x2c
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_0201EC68
FUN_0201EC68: ; 0x0201EC68
	push {r3-r4}
	add r3, r1, #0x0
	add r4, r0, #0x0
	str r4, [r3, #0x54]
	add r2, r3, #0x0
	ldmia r4!, {r0-r1}
	add r2, #0x48
	stmia r2!, {r0-r1}
	ldr r0, [r4, #0x0]
	str r0, [r2, #0x0]
	mov r0, #0x1
	str r0, [r3, #0x58]
	str r0, [r3, #0x5c]
	str r0, [r3, #0x60]
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201EC88
FUN_0201EC88: ; 0x0201EC88
	mov r1, #0x0
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	bx lr

	thumb_func_start FUN_0201EC94
FUN_0201EC94: ; 0x0201EC94
	str r0, [r2, #0xc]
	add r0, r2, #0x0
	str r1, [r2, #0x10]
	add r0, #0x44
	ldr r3, _0201ECA4 ; =FUN_0201EE2C
	ldrb r0, [r0, #0x0]
	add r1, r2, #0x0
	bx r3
	.balign 4
_0201ECA4: .word FUN_0201EE2C 

	thumb_func_start FUN_0201ECA8
FUN_0201ECA8: ; 0x0201ECA8
	push {r3-r7, lr}
	ldr r4, [sp, #0x20]
	add r5, r0, #0x0
	add r7, r1, #0x0
	add r0, r3, #0x0
	add r1, r4, #0x0
	add r6, r2, #0x0
	bl FUN_0201E99C
	add r3, r5, #0x0
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x20
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	str r7, [r4, #0x38]
	ldrh r0, [r6, #0x0]
	strh r0, [r4, #0x3c]
	ldrh r0, [r6, #0x2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0x0
	ldrh r1, [r6, #0x4]
	add r0, #0x40
	strh r1, [r0, #0x0]
	add r0, r4, #0x0
	ldrh r1, [r6, #0x6]
	add r0, #0x42
	strh r1, [r0, #0x0]
	add r0, r4, #0x0
	bl FUN_0201E7D8
	add r0, sp, #0x8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0x0
	bl FUN_0201EE2C
	ldr r0, [sp, #0x1c]
	cmp r0, #0x0
	beq _0201ED0E
	str r5, [r4, #0x54]
	add r2, r4, #0x0
	ldmia r5!, {r0-r1}
	add r2, #0x48
	stmia r2!, {r0-r1}
	ldr r0, [r5, #0x0]
	str r0, [r2, #0x0]
	mov r0, #0x1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_0201ED0E:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201ED10
FUN_0201ED10: ; 0x0201ED10
	push {r3-r7, lr}
	ldr r4, [sp, #0x1c]
	add r6, r0, #0x0
	add r7, r1, #0x0
	add r0, r3, #0x0
	add r1, r4, #0x0
	add r5, r2, #0x0
	bl FUN_0201E99C
	add r2, r4, #0x0
	ldmia r6!, {r0-r1}
	add r2, #0x14
	stmia r2!, {r0-r1}
	ldr r0, [r6, #0x0]
	str r0, [r2, #0x0]
	str r7, [r4, #0x38]
	ldrh r0, [r5, #0x0]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #0x2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0x0
	ldrh r1, [r5, #0x4]
	add r0, #0x40
	strh r1, [r0, #0x0]
	add r0, r4, #0x0
	ldrh r1, [r5, #0x6]
	add r0, #0x42
	strh r1, [r0, #0x0]
	add r0, r4, #0x0
	bl FUN_0201E8B8
	add r0, sp, #0x8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0x0
	bl FUN_0201EE2C
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201ED5C
FUN_0201ED5C: ; 0x0201ED5C
	push {r4-r7, lr}
	sub sp, #0x3c
	ldr r4, [sp, #0x54]
	add r5, r0, #0x0
	add r6, r1, #0x0
	add r0, r2, #0x0
	add r1, r4, #0x0
	add r7, r3, #0x0
	bl FUN_0201E99C
	add r3, r5, #0x0
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x20
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	add r3, r6, #0x0
	str r0, [r2, #0x0]
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x14
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	add r1, r5, #0x0
	str r0, [r2, #0x0]
	add r0, r6, #0x0
	add r2, sp, #0x30
	blx FUN_020C5600
	add r0, sp, #0x30
	blx FUN_020C53C8
	str r0, [r4, #0x38]
	mov r6, #0x0
	add r0, sp, #0x24
	str r6, [r0, #0x0]
	str r6, [r0, #0x4]
	str r6, [r0, #0x8]
	add r0, sp, #0x18
	str r6, [r0, #0x0]
	str r6, [r0, #0x4]
	str r6, [r0, #0x8]
	add r0, sp, #0xc
	str r6, [r0, #0x0]
	str r6, [r0, #0x4]
	str r6, [r0, #0x8]
	mov r0, #0x1
	lsl r0, r0, #0xc
	add r3, sp, #0x30
	str r0, [sp, #0x8]
	ldmia r3!, {r0-r1}
	add r2, sp, #0xc
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r6, [sp, #0x0]
	str r0, [r2, #0x0]
	str r6, [sp, #0x4]
	str r6, [sp, #0x10]
	add r0, sp, #0x0
	add r1, sp, #0xc
	bl FUN_0201C7B0
	strh r0, [r4, #0x3e]
	add r1, r6, #0x0
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x38]
	str r1, [sp, #0x4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, sp, #0x0
	add r1, sp, #0xc
	bl FUN_0201C7B0
	strh r0, [r4, #0x3c]
	add r0, r4, #0x0
	add r1, r6, #0x0
	add r0, #0x40
	strh r1, [r0, #0x0]
	add r0, r7, #0x0
	add r1, r4, #0x0
	bl FUN_0201EE2C
	ldr r0, [sp, #0x50]
	cmp r0, #0x0
	beq _0201EE26
	str r5, [r4, #0x54]
	add r2, r4, #0x0
	ldmia r5!, {r0-r1}
	add r2, #0x48
	stmia r2!, {r0-r1}
	ldr r0, [r5, #0x0]
	str r0, [r2, #0x0]
	mov r0, #0x1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_0201EE26:
	add sp, #0x3c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start FUN_0201EE2C
FUN_0201EE2C: ; 0x0201EE2C
	push {r3-r6, lr}
	sub sp, #0x14
	add r5, r1, #0x0
	cmp r0, #0x0
	bne _0201EE6C
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x0]
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [sp, #0x4]
	mov r0, #0x0
	str r0, [sp, #0x8]
	ldr r0, _0201EEE4 ; =0x021CED20
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	ldr r2, [r5, #0x8]
	ldr r3, [r5, #0xc]
	blx FUN_020C8538
	ldr r1, _0201EEE8 ; =0x021CED98
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r1, #0x0
	ldr r0, _0201EEEC ; =0x02105BB8
	strb r1, [r5, #0x0]
	str r1, [r0, #0x0]
	add sp, #0x14
	pop {r3-r6, pc}
_0201EE6C:
	ldr r4, [r5, #0x38]
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	blx FUN_020C50B8
	asr r1, r0, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0x0
	blx _ll_mul
	mov r2, #0x2
	mov r3, #0x0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	ldr r2, [r5, #0x8]
	asr r1, r4, #0x1f
	add r0, r4, #0x0
	asr r3, r2, #0x1f
	blx _ll_mul
	mov r6, #0x2
	mov r2, #0x0
	lsl r6, r6, #0xa
	add r3, r0, r6
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r3, r3, #0xc
	orr r3, r0
	ldr r0, [r5, #0xc]
	neg r1, r4
	str r0, [sp, #0x0]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x4]
	lsl r0, r6, #0x1
	str r0, [sp, #0x8]
	str r2, [sp, #0xc]
	ldr r0, _0201EEE4 ; =0x021CED20
	neg r2, r3
	str r0, [sp, #0x10]
	add r0, r4, #0x0
	blx FUN_020C823C
	ldr r1, _0201EEE8 ; =0x021CED98
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r0, #0x1
	strb r0, [r5, #0x0]
	ldr r0, _0201EEEC ; =0x02105BB8
	mov r1, #0x0
	str r1, [r0, #0x0]
	add sp, #0x14
	pop {r3-r6, pc}
	nop
_0201EEE4: .word 0x021CED20
_0201EEE8: .word 0x021CED98
_0201EEEC: .word 0x02105BB8

	thumb_func_start FUN_0201EEF0
FUN_0201EEF0: ; 0x0201EEF0
	add r2, r1, #0x0
	add r2, #0x46
	strh r0, [r2, #0x0]
	add r0, r1, #0x0
	add r0, #0x46
	ldrh r0, [r0, #0x0]
	ldr r3, _0201EF24 ; =FUN_0201EE2C
	asr r0, r0, #0x4
	lsl r2, r0, #0x2
	ldr r0, _0201EF28 ; =0x020FFA38
	ldrsh r2, [r0, r2]
	str r2, [r1, #0x0]
	add r2, r1, #0x0
	add r2, #0x46
	ldrh r2, [r2, #0x0]
	asr r2, r2, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r0, [r0, r2]
	str r0, [r1, #0x4]
	add r0, r1, #0x0
	add r0, #0x44
	ldrb r0, [r0, #0x0]
	bx r3
	nop
_0201EF24: .word FUN_0201EE2C 
_0201EF28: .word 0x020FFA38

	thumb_func_start FUN_0201EF2C
FUN_0201EF2C: ; 0x0201EF2C
	add r2, r1, #0x0
	add r2, #0x46
	ldrh r2, [r2, #0x0]
	ldr r3, _0201EF68 ; =FUN_0201EE2C
	add r2, r2, r0
	add r0, r1, #0x0
	add r0, #0x46
	strh r2, [r0, #0x0]
	add r0, r1, #0x0
	add r0, #0x46
	ldrh r0, [r0, #0x0]
	asr r0, r0, #0x4
	lsl r2, r0, #0x2
	ldr r0, _0201EF6C ; =0x020FFA38
	ldrsh r2, [r0, r2]
	str r2, [r1, #0x0]
	add r2, r1, #0x0
	add r2, #0x46
	ldrh r2, [r2, #0x0]
	asr r2, r2, #0x4
	lsl r2, r2, #0x1
	add r2, r2, #0x1
	lsl r2, r2, #0x1
	ldrsh r0, [r0, r2]
	str r0, [r1, #0x4]
	add r0, r1, #0x0
	add r0, #0x44
	ldrb r0, [r0, #0x0]
	bx r3
	nop
_0201EF68: .word FUN_0201EE2C 
_0201EF6C: .word 0x020FFA38

	thumb_func_start FUN_0201EF70
FUN_0201EF70: ; 0x0201EF70
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x14
	add r1, r5, #0x0
	add r2, r0, #0x0
	blx FUN_020C5634
	add r4, #0x20
	add r0, r4, #0x0
	add r1, r5, #0x0
	add r2, r4, #0x0
	blx FUN_020C5634
	pop {r3-r5, pc}

	thumb_func_start FUN_0201EF90
FUN_0201EF90: ; 0x0201EF90
	ldrh r2, [r0, #0x0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #0x2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0x0
	ldrh r3, [r0, #0x4]
	add r2, #0x40
	strh r3, [r2, #0x0]
	ldrh r2, [r0, #0x6]
	add r0, r1, #0x0
	add r0, #0x42
	strh r2, [r0, #0x0]
	ldr r3, _0201EFB0 ; =FUN_0201E7D8
	add r0, r1, #0x0
	bx r3
	nop
_0201EFB0: .word FUN_0201E7D8 

	thumb_func_start FUN_0201EFB4
FUN_0201EFB4: ; 0x0201EFB4
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0, #0x0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #0x2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0x0
	add r2, #0x40
	ldrh r2, [r2, #0x0]
	ldrh r0, [r0, #0x4]
	ldr r3, _0201EFDC ; =FUN_0201E8B8
	add r2, r2, r0
	add r0, r1, #0x0
	add r0, #0x40
	strh r2, [r0, #0x0]
	add r0, r1, #0x0
	bx r3
	nop
_0201EFDC: .word FUN_0201E8B8 

	thumb_func_start FUN_0201EFE0
FUN_0201EFE0: ; 0x0201EFE0
	ldr r3, _0201EFE8 ; =FUN_0201E7D8
	str r0, [r1, #0x38]
	add r0, r1, #0x0
	bx r3
	.balign 4
_0201EFE8: .word FUN_0201E7D8 

	thumb_func_start FUN_0201EFEC
FUN_0201EFEC: ; 0x0201EFEC
	push {r4, lr}
	add r3, r1, #0x0
	add r4, r0, #0x0
	add r2, r3, #0x0
	ldmia r4!, {r0-r1}
	add r2, #0x20
	stmia r2!, {r0-r1}
	ldr r0, [r4, #0x0]
	str r0, [r2, #0x0]
	add r0, r3, #0x0
	bl FUN_0201E7D8
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F008
FUN_0201F008: ; 0x0201F008
	add r0, #0x46
	ldrh r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0201F010
FUN_0201F010: ; 0x0201F010
	ldr r0, [r0, #0x38]
	bx lr

	thumb_func_start FUN_0201F014
FUN_0201F014: ; 0x0201F014
	ldrh r2, [r1, #0x3c]
	strh r2, [r0, #0x0]
	ldrh r2, [r1, #0x3e]
	strh r2, [r0, #0x2]
	add r2, r1, #0x0
	add r2, #0x40
	ldrh r2, [r2, #0x0]
	add r1, #0x42
	strh r2, [r0, #0x4]
	ldrh r1, [r1, #0x0]
	strh r1, [r0, #0x6]
	bx lr

	thumb_func_start FUN_0201F02C
FUN_0201F02C: ; 0x0201F02C
	add r2, r1, #0x0
	add r2, #0x20
	add r3, r0, #0x0
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	bx lr

	thumb_func_start FUN_0201F03C
FUN_0201F03C: ; 0x0201F03C
	add r2, r1, #0x0
	add r2, #0x14
	add r3, r0, #0x0
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	bx lr

	thumb_func_start FUN_0201F04C
FUN_0201F04C: ; 0x0201F04C
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x20
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_0201F05C
FUN_0201F05C: ; 0x0201F05C
	add r3, r0, #0x0
	add r2, r1, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x14
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_0201F06C
FUN_0201F06C: ; 0x0201F06C
	mov r2, #0x0
	strb r2, [r0, #0x0]
	strb r2, [r0, #0x1]
	str r2, [r0, #0x4]
	add r1, r0, #0x0
	str r2, [r0, #0x8]
	add r1, #0xc4
	str r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0xc8
	str r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0xcc
	str r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0xd0
	str r2, [r1, #0x0]
	strb r2, [r0, #0x3]
	bx lr
	.balign 4

	thumb_func_start FUN_0201F094
FUN_0201F094: ; 0x0201F094
	mov r3, #0x0
	str r3, [r0, #0x1c]
	str r3, [r0, #0x20]
	str r3, [r0, #0x78]
	add r1, r0, #0x0
	str r3, [r0, #0x7c]
	add r1, #0x80
	str r3, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0x84
	add r2, r0, #0x0
	str r3, [r1, #0x0]
	add r2, #0x94
	mov r1, #0x10
_0201F0B0:
	strb r3, [r2, #0x0]
	add r2, r2, #0x1
	sub r1, r1, #0x1
	bne _0201F0B0
	add r2, r0, #0x0
	mov r1, #0x0
	add r2, #0x88
	str r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0x8c
	str r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0x90
	str r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xa4
	str r1, [r2, #0x0]
	str r1, [r0, #0x0]
	str r1, [r0, #0x4]
	mov r2, #0x1
	str r1, [r0, #0x8]
	lsl r2, r2, #0xc
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	add r2, r0, #0x0
	add r2, #0xaa
	strh r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xa8
	strb r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xb0
	str r1, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xb4
	str r1, [r2, #0x0]
	strb r1, [r0, #0x18]
	bx lr
	.balign 4

	thumb_func_start FUN_0201F100
FUN_0201F100: ; 0x0201F100
	push {r3-r7, lr}
	add r6, r0, #0x0
	ldr r0, _0201F13C ; =0x021C59A8
	add r4, r1, #0x0
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201F112
	bl ErrorHandling
_0201F112:
	mov r1, #0xd4
	add r0, r4, #0x0
	mul r1, r6
	bl FUN_02016998
	ldr r7, _0201F13C ; =0x021C59A8
	mov r4, #0x0
	str r0, [r7, #0x0]
	str r6, [r7, #0x4]
	cmp r6, #0x0
	ble _0201F13A
	add r5, r4, #0x0
_0201F12A:
	ldr r0, [r7, #0x0]
	add r0, r0, r5
	bl FUN_0201F06C
	add r4, r4, #0x1
	add r5, #0xd4
	cmp r4, r6
	blt _0201F12A
_0201F13A:
	pop {r3-r7, pc}
	.balign 4
_0201F13C: .word 0x021C59A8

	thumb_func_start FUN_0201F140
FUN_0201F140: ; 0x0201F140
	push {r4-r6, lr}
	ldr r6, _0201F174 ; =0x021C59A8
	mov r4, #0x0
	ldr r0, [r6, #0x4]
	cmp r0, #0x0
	ble _0201F160
	add r5, r4, #0x0
_0201F14E:
	ldr r0, [r6, #0x0]
	add r0, r0, r5
	bl FUN_0201F23C
	ldr r0, [r6, #0x4]
	add r4, r4, #0x1
	add r5, #0xd4
	cmp r4, r0
	blt _0201F14E
_0201F160:
	ldr r0, _0201F174 ; =0x021C59A8
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	ldr r0, _0201F174 ; =0x021C59A8
	mov r1, #0x0
	str r1, [r0, #0x0]
	str r1, [r0, #0x4]
	pop {r4-r6, pc}
	nop
_0201F174: .word 0x021C59A8

	thumb_func_start FUN_0201F178
FUN_0201F178: ; 0x0201F178
	push {r3-r7, lr}
	ldr r6, _0201F1B0 ; =0x021C59A8
	mov r4, #0x0
	ldr r0, [r6, #0x4]
	cmp r0, #0x0
	ble _0201F1AC
	add r5, r4, #0x0
	mov r7, #0x2
_0201F188:
	ldr r0, [r6, #0x0]
	add r0, r0, r5
	ldrb r1, [r0, #0x1]
	cmp r1, #0x1
	bne _0201F196
	bl FUN_0201F318
_0201F196:
	ldr r0, [r6, #0x0]
	add r1, r0, r5
	ldrb r0, [r1, #0x3]
	cmp r0, #0x1
	bne _0201F1A2
	strb r7, [r1, #0x3]
_0201F1A2:
	ldr r0, [r6, #0x4]
	add r4, r4, #0x1
	add r5, #0xd4
	cmp r4, r0
	blt _0201F188
_0201F1AC:
	pop {r3-r7, pc}
	nop
_0201F1B0: .word 0x021C59A8

	thumb_func_start FUN_0201F1B4
FUN_0201F1B4: ; 0x0201F1B4
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl FUN_0201F2E4
	add r4, r0, #0x0
	bne _0201F1C8
	bl ErrorHandling
	mov r0, #0x0
	pop {r3-r5, pc}
_0201F1C8:
	mov r0, #0x1
	strb r0, [r4, #0x0]
	strb r0, [r4, #0x1]
	ldr r2, [r5, #0x0]
	mov r1, #0xb8
	ldr r0, [r5, #0x4]
	mul r1, r2
	bl FUN_02016998
	str r0, [r4, #0x4]
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x8]
	add r0, r4, #0x0
	add r0, #0xc
	bl FUN_0201F094
	add r1, r4, #0x0
	add r0, r4, #0x0
	add r1, #0xc
	add r0, #0xbc
	str r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0xc0
	str r1, [r0, #0x0]
	ldr r1, [r5, #0x0]
	ldr r0, [r5, #0x4]
	lsl r1, r1, #0x2
	bl FUN_02016998
	add r1, r4, #0x0
	add r1, #0xc4
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	bl FUN_0201FABC
	ldr r0, [r5, #0x4]
	mov r1, #0x10
	bl FUN_02016998
	add r1, r4, #0x0
	add r1, #0xcc
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0xcc
	ldr r0, [r0, #0x0]
	ldr r1, [r5, #0x4]
	mov r2, #0x4
	bl FUN_02016B20
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	bl FUN_0201C360
	add r1, r4, #0x0
	add r1, #0xd0
	str r0, [r1, #0x0]
	add r0, r4, #0x0
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F23C
FUN_0201F23C: ; 0x0201F23C
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F24A
	bl ErrorHandling
	mov r0, #0x0
	pop {r4, pc}
_0201F24A:
	ldrb r1, [r4, #0x0]
	cmp r1, #0x0
	beq _0201F27E
	bl FUN_0201F284
	ldr r0, [r4, #0x4]
	bl FUN_02016A18
	add r0, r4, #0x0
	add r0, #0xc4
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	add r0, #0xcc
	ldr r0, [r0, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	add r0, #0xd0
	ldr r0, [r0, #0x0]
	bl FUN_0201C39C
	add r0, r4, #0x0
	bl FUN_0201F06C
_0201F27E:
	mov r0, #0x1
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F284
FUN_0201F284: ; 0x0201F284
	push {r3-r5, lr}
	cmp r0, #0x0
	bne _0201F294
	bne _0201F290
	bl ErrorHandling
_0201F290:
	mov r0, #0x0
	pop {r3-r5, pc}
_0201F294:
	ldrb r1, [r0, #0x0]
	cmp r1, #0x0
	beq _0201F2BA
	add r1, r0, #0x0
	add r1, #0xbc
	add r4, r0, #0x0
	ldr r1, [r1, #0x0]
	add r4, #0xc
	cmp r1, r4
	beq _0201F2BA
_0201F2A8:
	add r0, r1, #0x0
	add r0, #0xb0
	ldr r5, [r0, #0x0]
	add r0, r1, #0x0
	bl FUN_0201F744
	add r1, r5, #0x0
	cmp r5, r4
	bne _0201F2A8
_0201F2BA:
	mov r0, #0x1
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F2C0
FUN_0201F2C0: ; 0x0201F2C0
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F2CA
	bl ErrorHandling
_0201F2CA:
	ldrb r0, [r4, #0x3]
	cmp r0, #0x0
	bne _0201F2D4
	mov r0, #0x0
	pop {r4, pc}
_0201F2D4:
	mov r0, #0x1
	pop {r4, pc}

	thumb_func_start FUN_0201F2D8
FUN_0201F2D8: ; 0x0201F2D8
	ldrb r1, [r0, #0x3]
	cmp r1, #0x2
	bne _0201F2E2
	mov r1, #0x0
	strb r1, [r0, #0x3]
_0201F2E2:
	bx lr

	thumb_func_start FUN_0201F2E4
FUN_0201F2E4: ; 0x0201F2E4
	push {r3-r4}
	ldr r0, _0201F314 ; =0x021C59A8
	mov r1, #0x0
	ldr r3, [r0, #0x4]
	cmp r3, #0x0
	ble _0201F30C
	ldr r4, [r0, #0x0]
	add r2, r4, #0x0
_0201F2F4:
	ldrb r0, [r2, #0x0]
	cmp r0, #0x0
	bne _0201F304
	mov r0, #0xd4
	mul r0, r1
	add r0, r4, r0
	pop {r3-r4}
	bx lr
_0201F304:
	add r1, r1, #0x1
	add r2, #0xd4
	cmp r1, r3
	blt _0201F2F4
_0201F30C:
	mov r0, #0x0
	pop {r3-r4}
	bx lr
	nop
_0201F314: .word 0x021C59A8

	thumb_func_start FUN_0201F318
FUN_0201F318: ; 0x0201F318
	push {r3-r6, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	bne _0201F324
	bl ErrorHandling
_0201F324:
	add r0, sp, #0x0
	blx FUN_020C3F14
	add r0, r5, #0x0
	add r0, #0xbc
	ldr r4, [r0, #0x0]
	add r5, #0xc
	cmp r4, r5
	beq _0201F37E
	add r6, sp, #0x0
_0201F338:
	ldrb r0, [r4, #0x18]
	cmp r0, #0x1
	bne _0201F376
	add r0, r4, #0x0
	bl FUN_0201FC54
	add r0, r4, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	bne _0201F356
	add r0, r4, #0x0
	bl FUN_0201F90C
	b _0201F360
_0201F356:
	cmp r0, #0x2
	bne _0201F360
	add r0, r4, #0x0
	bl FUN_0201F8F0
_0201F360:
	add r0, r4, #0x0
	add r3, r4, #0x0
	add r0, #0x24
	add r1, r4, #0x0
	add r2, r6, #0x0
	add r3, #0xc
	bl FUN_0201B26C
	add r0, r4, #0x0
	bl FUN_0201FC70
_0201F376:
	add r4, #0xb0
	ldr r4, [r4, #0x0]
	cmp r4, r5
	bne _0201F338
_0201F37E:
	add sp, #0x24
	pop {r3-r6, pc}
	.balign 4

	thumb_func_start FUN_0201F384
FUN_0201F384: ; 0x0201F384
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r6, [r5, #0x1c]
	add r4, r1, #0x0
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0201F5B8
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201F5D4
	add r0, r6, #0x0
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201F648
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _0201F3BA
	add r6, #0xc
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0201FB58
_0201F3BA:
	add r0, r5, #0x0
	mov r1, #0x2
	add r0, #0xa8
	strb r1, [r0, #0x0]
	ldr r0, [r4, #0x8]
	mov r1, #0x0
	str r0, [r5, #0x20]
	add r0, r5, #0x0
	add r0, #0xaa
	strh r1, [r0, #0x0]
	add r5, #0xac
	str r1, [r5, #0x0]
	pop {r4-r6, pc}

	thumb_func_start FUN_0201F3D4
FUN_0201F3D4: ; 0x0201F3D4
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r6, [r5, #0x1c]
	add r4, r1, #0x0
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0201F5B8
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x2
	bne _0201F3FE
	add r0, r5, #0x0
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r0, #0x88
	add r1, #0x8c
	add r2, #0x90
	bl FUN_0201F524
_0201F3FE:
	add r0, r5, #0x0
	ldr r1, [r4, #0x1c]
	add r0, #0x88
	str r1, [r0, #0x0]
	add r0, r5, #0x0
	ldr r1, [r4, #0x20]
	add r0, #0x8c
	str r1, [r0, #0x0]
	add r0, r5, #0x0
	ldr r1, [r4, #0x24]
	add r0, #0x90
	str r1, [r0, #0x0]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201F69C
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201F6C8
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _0201F43A
	add r6, #0xc
	add r0, r6, #0x0
	add r1, r5, #0x0
	bl FUN_0201FB58
_0201F43A:
	add r0, r5, #0x0
	mov r1, #0x3
	add r0, #0xa8
	strb r1, [r0, #0x0]
	ldr r0, [r4, #0x8]
	mov r1, #0x0
	str r0, [r5, #0x20]
	add r0, r5, #0x0
	add r0, #0xaa
	strh r1, [r0, #0x0]
	add r5, #0xac
	str r1, [r5, #0x0]
	pop {r4-r6, pc}

	thumb_func_start FUN_0201F454
FUN_0201F454: ; 0x0201F454
	push {r4-r7, lr}
	sub sp, #0xc
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r6, r2, #0x0
	add r7, r3, #0x0
	blx FUN_020B7E1C
	str r0, [sp, #0x8]
	add r0, r5, #0x0
	blx FUN_020B7E10
	str r0, [sp, #0x4]
	add r0, r5, #0x0
	blx FUN_020B7CE4
	str r0, [sp, #0x0]
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	beq _0201F492
	ldr r3, _0201F4E4 ; =0x021064B8
	mov r1, #0x0
	ldr r3, [r3, #0x0]
	add r2, r1, #0x0
	blx r3
	str r0, [r4, #0x0]
	cmp r0, #0x0
	bne _0201F496
	bl ErrorHandling
	b _0201F496
_0201F492:
	mov r0, #0x0
	str r0, [r4, #0x0]
_0201F496:
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	beq _0201F4B2
	ldr r3, _0201F4E4 ; =0x021064B8
	mov r1, #0x1
	ldr r3, [r3, #0x0]
	mov r2, #0x0
	blx r3
	str r0, [r6, #0x0]
	cmp r0, #0x0
	bne _0201F4B6
	bl ErrorHandling
	b _0201F4B6
_0201F4B2:
	mov r0, #0x0
	str r0, [r6, #0x0]
_0201F4B6:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	beq _0201F4DA
	ldr r3, _0201F4E8 ; =0x021064C0
	mov r1, #0x2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0x0]
	and r1, r2
	mov r2, #0x0
	blx r3
	str r0, [r7, #0x0]
	cmp r0, #0x0
	bne _0201F4DE
	bl ErrorHandling
	add sp, #0xc
	pop {r4-r7, pc}
_0201F4DA:
	mov r0, #0x0
	str r0, [r7, #0x0]
_0201F4DE:
	add sp, #0xc
	pop {r4-r7, pc}
	nop
_0201F4E4: .word 0x021064B8
_0201F4E8: .word 0x021064C0

	thumb_func_start FUN_0201F4EC
FUN_0201F4EC: ; 0x0201F4EC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r3, #0x0
	blx FUN_020B7CF0
	add r0, r5, #0x0
	blx FUN_020B7C58
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F500
FUN_0201F500: ; 0x0201F500
	push {r3-r5, lr}
	add r4, r1, #0x0
	ldr r1, [r2, #0x0]
	ldr r2, [r3, #0x0]
	add r5, r0, #0x0
	blx FUN_020B7DFC
	ldr r1, [sp, #0x10]
	add r0, r5, #0x0
	ldr r1, [r1, #0x0]
	blx FUN_020B7CDC
	add r0, r4, #0x0
	add r1, r5, #0x0
	blx FUN_020B7790
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F524
FUN_0201F524: ; 0x0201F524
	push {r3-r5, lr}
	ldr r0, [r0, #0x0]
	add r5, r1, #0x0
	add r4, r2, #0x0
	cmp r0, #0x0
	beq _0201F536
	ldr r1, _0201F550 ; =0x021064BC
	ldr r1, [r1, #0x0]
	blx r1
_0201F536:
	ldr r0, [r5, #0x0]
	cmp r0, #0x0
	beq _0201F542
	ldr r1, _0201F550 ; =0x021064BC
	ldr r1, [r1, #0x0]
	blx r1
_0201F542:
	ldr r0, [r4, #0x0]
	cmp r0, #0x0
	beq _0201F54E
	ldr r1, _0201F554 ; =0x021064C4
	ldr r1, [r1, #0x0]
	blx r1
_0201F54E:
	pop {r3-r5, pc}
	.balign 4
_0201F550: .word 0x021064BC
_0201F554: .word 0x021064C4

	thumb_func_start FUN_0201F558
FUN_0201F558: ; 0x0201F558
	push {r3-r7, lr}
	sub sp, #0x8
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	beq _0201F568
	cmp r5, #0x0
	bne _0201F56E
_0201F568:
	add sp, #0x8
	mov r0, #0x0
	pop {r3-r7, pc}
_0201F56E:
	blx FUN_020B7E1C
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	blx FUN_020B7E10
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	blx FUN_020B7CE4
	add r4, r0, #0x0
	add r0, r5, #0x0
	blx FUN_020B7E1C
	add r6, r0, #0x0
	add r0, r5, #0x0
	blx FUN_020B7E10
	add r7, r0, #0x0
	add r0, r5, #0x0
	blx FUN_020B7CE4
	ldr r1, [sp, #0x0]
	cmp r1, r6
	bne _0201F5AA
	ldr r1, [sp, #0x4]
	cmp r1, r7
	bne _0201F5AA
	cmp r4, r0
	beq _0201F5B0
_0201F5AA:
	add sp, #0x8
	mov r0, #0x0
	pop {r3-r7, pc}
_0201F5B0:
	mov r0, #0x1
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201F5B8
FUN_0201F5B8: ; 0x0201F5B8
	push {r4, lr}
	add r4, r1, #0x0
	add r0, r4, #0x0
	add r0, #0xa4
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	beq _0201F5D0
	bl FUN_0201C40C
	mov r0, #0x0
	add r4, #0xa4
	str r0, [r4, #0x0]
_0201F5D0:
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F5D4
FUN_0201F5D4: ; 0x0201F5D4
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0x80
	ldr r4, [r0, #0x0]
	add r0, r1, #0x0
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r1, #0x7c
	add r2, #0x80
	bl FUN_0201FB9C
	str r0, [r5, #0x78]
	add r0, r5, #0x0
	ldr r1, [r5, #0x7c]
	add r0, #0x24
	blx FUN_020B80B4
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x3
	beq _0201F60E
	add r1, r5, #0x0
	add r1, #0x80
	ldr r1, [r1, #0x0]
	add r0, r4, #0x0
	bl FUN_0201F558
	b _0201F610
_0201F60E:
	mov r0, #0x0
_0201F610:
	cmp r0, #0x0
	bne _0201F644
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x2
	bne _0201F62E
	add r0, r5, #0x0
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r0, #0x88
	add r1, #0x8c
	add r2, #0x90
	bl FUN_0201F524
_0201F62E:
	add r0, r5, #0x0
	add r0, #0x80
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r5, #0x90
	ldr r0, [r0, #0x0]
	add r1, #0x88
	add r2, #0x8c
	add r3, r5, #0x0
	bl FUN_0201F454
_0201F644:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F648
FUN_0201F648: ; 0x0201F648
	push {r4-r6, lr}
	sub sp, #0x8
	add r4, r2, #0x0
	add r6, r0, #0x0
	add r5, r1, #0x0
	add r0, r4, #0x0
	bl FUN_0201FBCC
	add r1, r5, #0x0
	add r1, #0x84
	add r3, r5, #0x0
	add r3, #0x94
	str r0, [r1, #0x0]
	add r4, #0xc
	add r2, r3, #0x0
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	add r0, r5, #0x0
	add r0, #0x90
	ldr r0, [r0, #0x0]
	add r1, r2, #0x0
	str r0, [sp, #0x0]
	add r0, r5, #0x0
	add r0, #0xac
	ldr r0, [r0, #0x0]
	add r2, r5, #0x0
	add r3, r5, #0x0
	str r0, [sp, #0x4]
	add r6, #0xd0
	add r2, #0x84
	add r3, #0x88
	ldr r0, [r6, #0x0]
	ldr r2, [r2, #0x0]
	ldr r3, [r3, #0x0]
	bl FUN_0201C3B4
	add r5, #0xa4
	str r0, [r5, #0x0]
	add sp, #0x8
	pop {r4-r6, pc}

	thumb_func_start FUN_0201F69C
FUN_0201F69C: ; 0x0201F69C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r0, r4, #0x0
	add r1, #0x7c
	add r2, #0x80
	bl FUN_0201FB9C
	str r0, [r5, #0x78]
	add r0, r5, #0x0
	ldr r1, [r5, #0x7c]
	add r0, #0x24
	blx FUN_020B80B4
	add r0, r4, #0x0
	bl FUN_0201FBCC
	add r5, #0x84
	str r0, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F6C8
FUN_0201F6C8: ; 0x0201F6C8
	push {r3-r4}
	add r4, r0, #0x0
	add r2, r4, #0x0
	add r3, r1, #0x0
	add r3, #0xc
	add r2, #0x94
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	mov r0, #0x0
	add r4, #0xa4
	str r0, [r4, #0x0]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_0201F6E8
FUN_0201F6E8: ; 0x0201F6E8
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r6, [r5, #0x0]
	cmp r6, #0x0
	bne _0201F6F6
	mov r0, #0x0
	pop {r4-r6, pc}
_0201F6F6:
	add r0, r6, #0x0
	bl FUN_0201FAF4
	add r4, r0, #0x0
	bne _0201F704
	mov r0, #0x0
	pop {r4-r6, pc}
_0201F704:
	add r3, r5, #0x0
	str r6, [r4, #0x1c]
	add r3, #0x8
	ldmia r3!, {r0-r1}
	add r2, r4, #0x0
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	add r3, r5, #0x0
	str r0, [r2, #0x0]
	add r3, #0x14
	add r2, r4, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0xc
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	mov r1, #0x0
	str r0, [r2, #0x0]
	add r0, r4, #0x0
	add r0, #0xaa
	strh r1, [r0, #0x0]
	mov r1, #0x1
	add r0, r4, #0x0
	strb r1, [r4, #0x18]
	add r0, #0xa8
	strb r1, [r0, #0x0]
	ldr r1, [r5, #0x4]
	add r0, r4, #0x0
	bl FUN_0201FBD8
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201F744
FUN_0201F744: ; 0x0201F744
	push {r3-r5, lr}
	add r5, r0, #0x0
	bne _0201F74E
	bl ErrorHandling
_0201F74E:
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x1
	bne _0201F75C
	bl ErrorHandling
_0201F75C:
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	ldr r4, [r5, #0x1c]
	cmp r0, #0x0
	bne _0201F76C
	mov r0, #0x0
	pop {r3-r5, pc}
_0201F76C:
	add r0, r5, #0x0
	bl FUN_0201FB7C
	add r0, r5, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x2
	bne _0201F78C
	add r0, r5, #0x0
	add r1, r5, #0x0
	add r2, r5, #0x0
	add r0, #0x88
	add r1, #0x8c
	add r2, #0x90
	bl FUN_0201F524
_0201F78C:
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_0201F5B8
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_0201FB20
	mov r0, #0x1
	strb r0, [r4, #0x3]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F7A4
FUN_0201F7A4: ; 0x0201F7A4
	push {r3-r4}
	add r4, r0, #0x0
	str r1, [r4, #0x0]
	str r2, [r4, #0x4]
	str r3, [r4, #0x8]
	ldr r3, [sp, #0x8]
	add r2, r4, #0x0
	add r2, #0xc
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	mov r0, #0x0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	pop {r3-r4}
	bx lr

	thumb_func_start FUN_0201F7C8
FUN_0201F7C8: ; 0x0201F7C8
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	bne _0201F7D6
	bl ErrorHandling
_0201F7D6:
	ldmia r5!, {r0-r1}
	stmia r4!, {r0-r1}
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F7E0
FUN_0201F7E0: ; 0x0201F7E0
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F7EA
	bl ErrorHandling
_0201F7EA:
	add r0, r4, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F7F0
FUN_0201F7F0: ; 0x0201F7F0
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	bne _0201F7FE
	bl ErrorHandling
_0201F7FE:
	ldmia r5!, {r0-r1}
	add r4, #0xc
	stmia r4!, {r0-r1}
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x0]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F80C
FUN_0201F80C: ; 0x0201F80C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0201F81A
	bl ErrorHandling
_0201F81A:
	strb r4, [r5, #0x18]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F820
FUN_0201F820: ; 0x0201F820
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F82A
	bl ErrorHandling
_0201F82A:
	ldrb r0, [r4, #0x18]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F830
FUN_0201F830: ; 0x0201F830
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0201F83E
	bl ErrorHandling
_0201F83E:
	add r5, #0xaa
	strh r4, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F844
FUN_0201F844: ; 0x0201F844
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F84E
	bl ErrorHandling
_0201F84E:
	add r4, #0xaa
	ldrh r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_0201F854
FUN_0201F854: ; 0x0201F854
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0201F862
	bl ErrorHandling
_0201F862:
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_0201FBFC
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F86C
FUN_0201F86C: ; 0x0201F86C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0201F87A
	bl ErrorHandling
_0201F87A:
	add r5, #0xac
	str r4, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0201F880
FUN_0201F880: ; 0x0201F880
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F88A
	bl ErrorHandling
_0201F88A:
	add r4, #0xac
	ldr r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_0201F890
FUN_0201F890: ; 0x0201F890
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0201F89E
	bl ErrorHandling
_0201F89E:
	add r1, r5, #0x0
	add r1, #0xaa
	ldrh r1, [r1, #0x0]
	add r0, r5, #0x0
	bl FUN_0201FBEC
	add r1, r5, #0x0
	add r1, #0xac
	str r0, [r1, #0x0]
	add r0, r5, #0x0
	add r0, #0xac
	ldr r0, [r0, #0x0]
	add r5, #0xac
	add r0, r0, r4
	str r0, [r5, #0x0]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201F8C0
FUN_0201F8C0: ; 0x0201F8C0
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F8CA
	bl ErrorHandling
_0201F8CA:
	add r1, r4, #0x0
	add r1, #0xaa
	ldrh r1, [r1, #0x0]
	add r0, r4, #0x0
	bl FUN_0201FBEC
	add r4, #0xac
	ldr r1, [r4, #0x0]
	sub r0, r1, r0
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F8E0
FUN_0201F8E0: ; 0x0201F8E0
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201F8EA
	bl ErrorHandling
_0201F8EA:
	ldr r0, [r4, #0x7c]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201F8F0
FUN_0201F8F0: ; 0x0201F8F0
	push {r3, lr}
	add r1, r0, #0x0
	add r0, #0xa8
	ldrb r0, [r0, #0x0]
	cmp r0, #0x2
	bne _0201F90A
	add r0, r1, #0x0
	add r0, #0xa4
	add r1, #0xac
	ldr r0, [r0, #0x0]
	ldr r1, [r1, #0x0]
	bl FUN_0201C438
_0201F90A:
	pop {r3, pc}

	thumb_func_start FUN_0201F90C
FUN_0201F90C: ; 0x0201F90C
	push {r3-r4, lr}
	sub sp, #0x4
	add r4, r0, #0x0
	add r1, r4, #0x0
	add r1, #0xac
	ldr r1, [r1, #0x0]
	add r0, #0x94
	lsl r1, r1, #0x4
	lsr r1, r1, #0x10
	bl FUN_02022244
	add r2, sp, #0x0
	strb r0, [r2, #0x0]
	lsr r0, r0, #0x8
	strb r0, [r2, #0x1]
	ldrb r0, [r2, #0x0]
	add r1, r4, #0x0
	add r1, #0x84
	strb r0, [r2, #0x2]
	ldrb r0, [r2, #0x1]
	strb r0, [r2, #0x3]
	ldrb r2, [r2, #0x2]
	ldr r0, [r4, #0x7c]
	ldr r1, [r1, #0x0]
	bl FUN_0201F954
	add r2, sp, #0x0
	ldr r0, [r4, #0x7c]
	add r4, #0x84
	ldrb r2, [r2, #0x3]
	ldr r1, [r4, #0x0]
	bl FUN_0201FA04
	add sp, #0x4
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201F954
FUN_0201F954: ; 0x0201F954
	push {r3-r7, lr}
	ldr r3, [r0, #0x8]
	mov r5, #0x0
	add r6, r0, r3
	ldrh r0, [r0, r3]
	add r3, r1, #0x0
	add r1, #0x42
	ldrh r1, [r1, #0x0]
	add r3, #0x3c
	add r4, r6, r0
	add r0, r3, r1
	ldrh r1, [r3, r1]
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x4]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldrb r0, [r4, #0x1]
	cmp r0, #0x0
	ble _0201F9A2
_0201F97C:
	ldrh r0, [r4, #0x6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #0x4
	add r1, r0, #0x0
	mul r1, r5
	add r1, r2, r1
	ldrb r2, [r1, #0x3]
	mov r0, #0x1
	tst r0, r2
	beq _0201F99A
	add r0, r6, #0x0
	add r2, r7, #0x0
	bl FUN_0201F9A4
_0201F99A:
	ldrb r0, [r4, #0x1]
	add r5, r5, #0x1
	cmp r5, r0
	blt _0201F97C
_0201F9A2:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201F9A4
FUN_0201F9A4: ; 0x0201F9A4
	push {r4-r7, lr}
	sub sp, #0xc
	add r6, r0, #0x0
	add r0, r1, #0x0
	ldrh r0, [r0, #0x0]
	str r1, [sp, #0x0]
	add r7, r2, #0x0
	add r0, r6, r0
	str r0, [sp, #0x4]
	add r0, r1, #0x0
	ldrb r0, [r0, #0x2]
	mov r4, #0x0
	cmp r0, #0x0
	ble _0201F9FC
	add r0, r6, #0x4
	str r0, [sp, #0x8]
_0201F9C4:
	ldrh r2, [r6, #0xa]
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x8]
	add r0, r0, r2
	ldrh r2, [r1, r2]
	ldr r1, [sp, #0x4]
	ldrb r1, [r1, r4]
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x4]
	add r5, r6, r0
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r0, r7
	ldr r0, _0201FA00 ; =0x0000FFFF
	cmp r1, r0
	bls _0201F9EC
	bl ErrorHandling
_0201F9EC:
	ldr r0, [r5, #0x14]
	add r4, r4, #0x1
	add r0, r0, r7
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x0]
	ldrb r0, [r0, #0x2]
	cmp r4, r0
	blt _0201F9C4
_0201F9FC:
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0201FA00: .word 0x0000FFFF

	thumb_func_start FUN_0201FA04
FUN_0201FA04: ; 0x0201FA04
	push {r3-r7, lr}
	ldr r3, [r0, #0x8]
	add r7, r0, r3
	ldrh r0, [r7, #0x2]
	add r4, r7, r0
	ldrh r0, [r1, #0x34]
	add r5, r1, r0
	ldrh r0, [r5, #0x6]
	add r1, r5, r0
	ldrh r0, [r5, r0]
	add r3, r1, #0x4
	add r1, r0, #0x0
	mul r1, r2
	add r0, r3, r1
	ldrh r6, [r3, r1]
	ldrh r1, [r0, #0x2]
	mov r0, #0x1
	tst r0, r1
	bne _0201FA2C
	lsr r6, r6, #0x1
_0201FA2C:
	ldrb r0, [r4, #0x1]
	mov r5, #0x0
	cmp r0, #0x0
	bls _0201FA5A
_0201FA34:
	ldrh r0, [r4, #0x6]
	add r1, r4, r0
	ldrh r0, [r4, r0]
	add r2, r1, #0x4
	add r1, r0, #0x0
	mul r1, r5
	add r1, r2, r1
	ldrb r2, [r1, #0x3]
	mov r0, #0x1
	tst r0, r2
	beq _0201FA52
	add r0, r7, #0x0
	add r2, r6, #0x0
	bl FUN_0201FA5C
_0201FA52:
	ldrb r0, [r4, #0x1]
	add r5, r5, #0x1
	cmp r5, r0
	blo _0201FA34
_0201FA5A:
	pop {r3-r7, pc}

	thumb_func_start FUN_0201FA5C
FUN_0201FA5C: ; 0x0201FA5C
	push {r4-r7, lr}
	sub sp, #0xc
	add r6, r0, #0x0
	add r0, r1, #0x0
	ldrh r0, [r0, #0x0]
	str r1, [sp, #0x0]
	add r7, r2, #0x0
	add r0, r6, r0
	str r0, [sp, #0x4]
	add r0, r1, #0x0
	ldrb r0, [r0, #0x2]
	mov r4, #0x0
	cmp r0, #0x0
	bls _0201FAB4
	add r0, r6, #0x4
	str r0, [sp, #0x8]
_0201FA7C:
	ldrh r2, [r6, #0xa]
	ldr r0, [sp, #0x8]
	ldr r1, [sp, #0x8]
	add r0, r0, r2
	ldrh r2, [r1, r2]
	ldr r1, [sp, #0x4]
	ldrb r1, [r1, r4]
	mul r1, r2
	add r0, r0, r1
	ldr r0, [r0, #0x4]
	add r5, r6, r0
	ldrh r1, [r5, #0x1c]
	ldr r0, _0201FAB8 ; =0x00001FFF
	and r0, r1
	add r1, r0, r7
	ldr r0, _0201FAB8 ; =0x00001FFF
	cmp r1, r0
	bls _0201FAA4
	bl ErrorHandling
_0201FAA4:
	ldrh r0, [r5, #0x1c]
	add r4, r4, #0x1
	add r0, r0, r7
	strh r0, [r5, #0x1c]
	ldr r0, [sp, #0x0]
	ldrb r0, [r0, #0x2]
	cmp r4, r0
	blo _0201FA7C
_0201FAB4:
	add sp, #0xc
	pop {r4-r7, pc}
	.balign 4
_0201FAB8: .word 0x00001FFF

	thumb_func_start FUN_0201FABC
FUN_0201FABC: ; 0x0201FABC
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x8]
	mov r7, #0x0
	cmp r0, #0x0
	ble _0201FAEC
	add r4, r7, #0x0
	add r6, r7, #0x0
_0201FACC:
	ldr r0, [r5, #0x4]
	add r0, r0, r4
	bl FUN_0201F094
	ldr r0, [r5, #0x4]
	add r7, r7, #0x1
	add r1, r0, r4
	add r0, r5, #0x0
	add r0, #0xc4
	ldr r0, [r0, #0x0]
	add r4, #0xb8
	str r1, [r0, r6]
	ldr r0, [r5, #0x8]
	add r6, r6, #0x4
	cmp r7, r0
	blt _0201FACC
_0201FAEC:
	mov r0, #0x0
	add r5, #0xc8
	str r0, [r5, #0x0]
	pop {r3-r7, pc}

	thumb_func_start FUN_0201FAF4
FUN_0201FAF4: ; 0x0201FAF4
	add r1, r0, #0x0
	add r1, #0xc8
	ldr r3, [r1, #0x0]
	ldr r1, [r0, #0x8]
	cmp r3, r1
	blt _0201FB04
	mov r0, #0x0
	bx lr
_0201FB04:
	add r1, r0, #0x0
	add r1, #0xc4
	ldr r2, [r1, #0x0]
	lsl r1, r3, #0x2
	ldr r2, [r2, r1]
	add r1, r0, #0x0
	add r1, #0xc8
	ldr r1, [r1, #0x0]
	add r0, #0xc8
	add r1, r1, #0x1
	str r1, [r0, #0x0]
	add r0, r2, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_0201FB20
FUN_0201FB20: ; 0x0201FB20
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r0, #0xc8
	ldr r0, [r0, #0x0]
	add r4, r1, #0x0
	cmp r0, #0x0
	bgt _0201FB32
	mov r0, #0x0
	pop {r3-r5, pc}
_0201FB32:
	add r0, r4, #0x0
	bl FUN_0201F094
	add r0, r5, #0x0
	add r0, #0xc8
	ldr r0, [r0, #0x0]
	sub r1, r0, #0x1
	add r0, r5, #0x0
	add r0, #0xc8
	str r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0xc4
	add r5, #0xc8
	ldr r1, [r0, #0x0]
	ldr r0, [r5, #0x0]
	lsl r0, r0, #0x2
	str r4, [r1, r0]
	mov r0, #0x1
	pop {r3-r5, pc}

	thumb_func_start FUN_0201FB58
FUN_0201FB58: ; 0x0201FB58
	add r2, r0, #0x0
	add r2, #0xb4
	ldr r3, [r2, #0x0]
	add r2, r1, #0x0
	add r2, #0xb4
	str r3, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xb4
	ldr r2, [r2, #0x0]
	add r2, #0xb0
	str r1, [r2, #0x0]
	add r2, r1, #0x0
	add r2, #0xb0
	str r0, [r2, #0x0]
	add r0, #0xb4
	str r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0201FB7C
FUN_0201FB7C: ; 0x0201FB7C
	add r1, r0, #0x0
	add r1, #0xb0
	ldr r2, [r1, #0x0]
	add r1, r0, #0x0
	add r1, #0xb4
	ldr r1, [r1, #0x0]
	add r1, #0xb0
	str r2, [r1, #0x0]
	add r1, r0, #0x0
	add r0, #0xb0
	add r1, #0xb4
	ldr r0, [r0, #0x0]
	ldr r1, [r1, #0x0]
	add r0, #0xb4
	str r1, [r0, #0x0]
	bx lr

	thumb_func_start FUN_0201FB9C
FUN_0201FB9C: ; 0x0201FB9C
	push {r3-r7, lr}
	add r6, r1, #0x0
	mov r1, #0x0
	add r5, r2, #0x0
	bl FUN_0201FC90
	add r7, r0, #0x0
	blx FUN_020BC13C
	add r4, r0, #0x0
	ldrh r0, [r4, #0xe]
	add r0, r4, r0
	ldr r0, [r0, #0xc]
	add r0, r4, r0
	str r0, [r6, #0x0]
	cmp r5, #0x0
	beq _0201FBC6
	add r0, r7, #0x0
	blx FUN_020BC0FC
	str r0, [r5, #0x0]
_0201FBC6:
	add r0, r4, #0x0
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start FUN_0201FBCC
FUN_0201FBCC: ; 0x0201FBCC
	ldr r3, _0201FBD4 ; =FUN_0201FC90
	mov r1, #0x1
	bx r3
	nop
_0201FBD4: .word FUN_0201FC90 

	thumb_func_start FUN_0201FBD8
FUN_0201FBD8: ; 0x0201FBD8
	push {r3, lr}
	ldr r2, [r1, #0x1c]
	cmp r2, #0x0
	bne _0201FBE6
	bl FUN_0201F384
	pop {r3, pc}
_0201FBE6:
	bl FUN_0201F3D4
	pop {r3, pc}

	thumb_func_start FUN_0201FBEC
FUN_0201FBEC: ; 0x0201FBEC
	push {r3, lr}
	ldr r0, [r0, #0x20]
	bl FUN_0201FCA8
	ldr r0, [r0, #0x0]
	lsl r0, r0, #0xc
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_0201FBFC
FUN_0201FBFC: ; 0x0201FBFC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	add r1, r5, #0x0
	add r1, #0xaa
	ldrh r1, [r1, #0x0]
	ldr r0, [r5, #0x20]
	bl FUN_0201FCA8
	add r5, #0xac
	add r1, r5, #0x0
	add r2, r4, #0x0
	bl FUN_0201FC1C
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0201FC1C
FUN_0201FC1C: ; 0x0201FC1C
	push {r3-r6}
	ldr r4, [r0, #0x0]
	ldr r6, [r1, #0x0]
	lsl r4, r4, #0xc
	mov r3, #0x0
	cmp r4, r6
	bgt _0201FC32
	ldr r5, [r0, #0x4]
	lsl r5, r5, #0xc
	cmp r5, r6
	bge _0201FC36
_0201FC32:
	str r4, [r1, #0x0]
	b _0201FC4E
_0201FC36:
	add r2, r6, r2
	cmp r5, r2
	bge _0201FC4C
	ldr r0, [r0, #0x8]
	cmp r0, #0x0
	bne _0201FC46
	str r4, [r1, #0x0]
	b _0201FC4E
_0201FC46:
	mov r3, #0x1
	str r5, [r1, #0x0]
	b _0201FC4E
_0201FC4C:
	str r2, [r1, #0x0]
_0201FC4E:
	add r0, r3, #0x0
	pop {r3-r6}
	bx lr

	thumb_func_start FUN_0201FC54
FUN_0201FC54: ; 0x0201FC54
	push {r3, lr}
	add r3, r0, #0x0
	add r0, #0x90
	str r0, [sp, #0x0]
	add r0, r3, #0x0
	add r0, #0x80
	add r2, r3, #0x0
	ldr r1, [r3, #0x78]
	ldr r0, [r0, #0x0]
	add r2, #0x88
	add r3, #0x8c
	bl FUN_0201F500
	pop {r3, pc}

	thumb_func_start FUN_0201FC70
FUN_0201FC70: ; 0x0201FC70
	push {r3-r4, lr}
	sub sp, #0xc
	add r4, r0, #0x0
	ldr r0, [r4, #0x78]
	blx FUN_020B772C
	add r4, #0x80
	ldr r0, [r4, #0x0]
	add r1, sp, #0x4
	add r2, sp, #0x8
	add r3, sp, #0x0
	bl FUN_0201F4EC
	add sp, #0xc
	pop {r3-r4, pc}
	.balign 4

	thumb_func_start FUN_0201FC90
FUN_0201FC90: ; 0x0201FC90
	cmp r1, #0x0
	beq _0201FC9A
	cmp r1, #0x1
	beq _0201FC9E
	b _0201FCA2
_0201FC9A:
	ldr r0, [r0, #0x0]
	bx lr
_0201FC9E:
	ldr r0, [r0, #0x4]
	bx lr
_0201FCA2:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start FUN_0201FCA8
FUN_0201FCA8: ; 0x0201FCA8
	mov r2, #0xc
	mul r2, r1
	add r0, r0, r2
	bx lr

	thumb_func_start FUN_0201FCB0
FUN_0201FCB0: ; 0x0201FCB0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bne _0201FCBA
	bl ErrorHandling
_0201FCBA:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _0201FCC4
	bl ErrorHandling
_0201FCC4:
	mov r1, #0x49
	ldr r0, [r5, #0x8]
	lsl r1, r1, #0x2
	bl FUN_02016998
	add r4, r0, #0x0
	bne _0201FCD6
	bl ErrorHandling
_0201FCD6:
	add r0, r4, #0x0
	bl FUN_0201FE44
	ldr r2, [r5, #0x0]
	ldr r0, [r5, #0x8]
	lsl r1, r2, #0x6
	add r1, r2, r1
	lsl r1, r1, #0x2
	bl FUN_02016998
	str r0, [r4, #0x0]
	cmp r0, #0x0
	bne _0201FCF4
	bl ErrorHandling
_0201FCF4:
	ldr r0, [r5, #0x0]
	str r0, [r4, #0x4]
	ldr r1, [r5, #0x0]
	ldr r0, [r5, #0x8]
	lsl r1, r1, #0x2
	bl FUN_02016998
	str r0, [r4, #0x8]
	cmp r0, #0x0
	bne _0201FD0C
	bl ErrorHandling
_0201FD0C:
	add r0, r4, #0x0
	bl FUN_0202083C
	add r0, r4, #0x0
	add r0, #0x10
	bl FUN_0201FE6C
	add r2, r4, #0x0
	mov r1, #0x43
	lsl r1, r1, #0x2
	add r2, #0x10
	str r2, [r4, r1]
	add r0, r1, #0x4
	str r2, [r4, r0]
	ldr r0, [r5, #0x4]
	add r1, #0x8
	str r0, [r4, r1]
	ldr r0, [r5, #0x8]
	ldr r1, _0201FD54 ; =0x02105BBC
	bl FUN_020161A4
	mov r1, #0x46
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #0x4
	add r1, r4, r1
	blx FUN_020AFD94
	mov r0, #0x12
	mov r1, #0x1
	lsl r0, r0, #0x4
	str r1, [r4, r0]
	add r0, r4, #0x0
	pop {r3-r5, pc}
	nop
_0201FD54: .word 0x02105BBC

	thumb_func_start FUN_0201FD58
FUN_0201FD58: ; 0x0201FD58
	push {r4, lr}
	add r4, r0, #0x0
	bne _0201FD62
	mov r0, #0x0
	pop {r4, pc}
_0201FD62:
	ldr r1, [r4, #0x0]
	cmp r1, #0x0
	bne _0201FD6C
	mov r0, #0x1
	pop {r4, pc}
_0201FD6C:
	bl FUN_0201FDB4
	mov r0, #0x46
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FUN_02016A18
	ldr r0, [r4, #0x8]
	bl FUN_02016A18
	ldr r0, [r4, #0x0]
	bl FUN_02016A18
	add r0, r4, #0x0
	bl FUN_0201FE44
	add r0, r4, #0x0
	bl FUN_02016A18
	mov r0, #0x1
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201FD98
FUN_0201FD98: ; 0x0201FD98
	cmp r0, #0x0
	bne _0201FDA0
	mov r0, #0x0
	bx lr
_0201FDA0:
	ldr r2, [r0, #0x0]
	cmp r2, #0x0
	bne _0201FDAA
	mov r0, #0x0
	bx lr
_0201FDAA:
	mov r2, #0x12
	lsl r2, r2, #0x4
	str r1, [r0, r2]
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_0201FDB4
FUN_0201FDB4: ; 0x0201FDB4
	push {r4-r6, lr}
	cmp r0, #0x0
	bne _0201FDBE
	mov r0, #0x0
	pop {r4-r6, pc}
_0201FDBE:
	ldr r1, [r0, #0x0]
	cmp r1, #0x0
	bne _0201FDC8
	mov r0, #0x1
	pop {r4-r6, pc}
_0201FDC8:
	mov r1, #0x11
	lsl r1, r1, #0x4
	add r4, r0, #0x0
	ldr r1, [r0, r1]
	add r4, #0x10
	cmp r1, r4
	beq _0201FDE8
	mov r6, #0x1
	lsl r6, r6, #0x8
_0201FDDA:
	ldr r5, [r1, r6]
	add r0, r1, #0x0
	bl FUN_0201FFC8
	add r1, r5, #0x0
	cmp r5, r4
	bne _0201FDDA
_0201FDE8:
	mov r0, #0x1
	pop {r4-r6, pc}

	thumb_func_start FUN_0201FDEC
FUN_0201FDEC: ; 0x0201FDEC
	push {r3-r7, lr}
	add r5, r0, #0x0
	bne _0201FDF6
	bl ErrorHandling
_0201FDF6:
	mov r0, #0x12
	lsl r0, r0, #0x4
	ldr r1, [r5, r0]
	cmp r1, #0x0
	beq _0201FE38
	sub r0, #0x10
	add r6, r5, #0x0
	ldr r4, [r5, r0]
	add r6, #0x10
	cmp r4, r6
	beq _0201FE38
	ldr r7, _0201FE3C ; =0x020EE658
_0201FE0E:
	add r2, r4, #0x0
	add r2, #0x34
	ldrb r2, [r2, #0x0]
	add r0, r5, #0x0
	add r1, r4, #0x0
	lsl r2, r2, #0x2
	ldr r2, [r7, r2]
	blx r2
	add r1, r4, #0x0
	add r1, #0x35
	ldrb r1, [r1, #0x0]
	add r0, r4, #0x0
	lsl r2, r1, #0x2
	ldr r1, _0201FE40 ; =0x020EE660
	ldr r1, [r1, r2]
	blx r1
	mov r0, #0x1
	lsl r0, r0, #0x8
	ldr r4, [r4, r0]
	cmp r4, r6
	bne _0201FE0E
_0201FE38:
	pop {r3-r7, pc}
	nop
_0201FE3C: .word 0x020EE658
_0201FE40: .word 0x020EE660

	thumb_func_start FUN_0201FE44
FUN_0201FE44: ; 0x0201FE44
	push {r4, lr}
	add r4, r0, #0x0
	mov r1, #0x0
	str r1, [r4, #0x0]
	str r1, [r4, #0x4]
	str r1, [r4, #0x8]
	mov r0, #0x45
	str r1, [r4, #0xc]
	lsl r0, r0, #0x2
	str r1, [r4, r0]
	add r0, r4, #0x0
	add r0, #0x10
	bl FUN_0201FE6C
	mov r0, #0x12
	mov r1, #0x0
	lsl r0, r0, #0x4
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201FE6C
FUN_0201FE6C: ; 0x0201FE6C
	push {r4, lr}
	mov r2, #0x41
	add r4, r0, #0x0
	mov r1, #0x0
	lsl r2, r2, #0x2
	str r1, [r4, #0x3c]
	blx Call_FillMemWithValue
	add r0, r4, #0x0
	add r0, #0xb4
	blx FUN_020B1A24
	add r0, r4, #0x0
	add r0, #0xd8
	blx FUN_020B19DC
	mov r0, #0x0
	str r0, [r4, #0x30]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201FE94
FUN_0201FE94: ; 0x0201FE94
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	bl FUN_02020874
	add r4, r0, #0x0
	bne _0201FEA6
	mov r0, #0x0
	pop {r4-r6, pc}
_0201FEA6:
	ldr r0, [r5, #0x0]
	add r6, r5, #0x0
	str r0, [r4, #0x3c]
	add r0, r4, #0x0
	mov r2, #0x0
	add r0, #0xf0
	add r6, #0x8
	strh r2, [r0, #0x0]
	ldmia r6!, {r0-r1}
	add r3, r4, #0x0
	stmia r3!, {r0-r1}
	ldr r0, [r6, #0x0]
	add r6, r5, #0x0
	str r0, [r3, #0x0]
	add r6, #0x14
	add r3, r4, #0x0
	ldmia r6!, {r0-r1}
	add r3, #0x18
	stmia r3!, {r0-r1}
	ldr r0, [r6, #0x0]
	str r0, [r3, #0x0]
	ldrh r0, [r5, #0x20]
	strh r0, [r4, #0x24]
	add r0, r4, #0x0
	ldr r1, [r5, #0x28]
	add r0, #0xf8
	str r1, [r0, #0x0]
	add r0, r4, #0x0
	ldr r1, [r5, #0x24]
	add r0, #0xf4
	strh r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x26
	strb r2, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x27
	strb r2, [r0, #0x0]
	str r2, [r4, #0x2c]
	add r0, r4, #0x0
	str r2, [r4, #0x30]
	mov r1, #0x11
	add r0, #0x28
	strb r1, [r0, #0x0]
	mov r0, #0x45
	ldr r1, [r5, #0x0]
	lsl r0, r0, #0x2
	ldr r0, [r1, r0]
	add r1, r4, #0x0
	add r1, #0x26
	ldrb r1, [r1, #0x0]
	blx FUN_020B502C
	add r0, r4, #0x0
	add r0, #0x27
	ldrb r2, [r0, #0x0]
	mov r0, #0x45
	ldr r1, [r5, #0x0]
	lsl r0, r0, #0x2
	ldr r0, [r1, r0]
	mov r1, #0x1
	mov r3, #0x2
	and r1, r2
	and r2, r3
	blx FUN_020B4F38
	add r0, r4, #0x0
	mov r2, #0x1
	add r0, #0x34
	strb r2, [r0, #0x0]
	add r0, r4, #0x0
	mov r1, #0x0
	add r0, #0x35
	strb r1, [r0, #0x0]
	lsl r0, r2, #0xd
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x0]
	ldr r1, [r5, #0x4]
	ldr r3, [r5, #0x2c]
	add r2, r4, #0x0
	bl FUN_02020434
	cmp r0, #0x0
	bne _0201FF56
	add r0, r4, #0x0
	bl FUN_0201FFC8
	mov r0, #0x0
	pop {r4-r6, pc}
_0201FF56:
	add r1, r4, #0x0
	add r1, #0xf8
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	add r0, #0xd8
	bl FUN_020205E8
	add r1, r4, #0x0
	add r1, #0x2a
	strb r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0x2a
	ldrb r1, [r0, #0x0]
	add r0, r4, #0x0
	add r0, #0x29
	strb r1, [r0, #0x0]
	ldr r0, [r5, #0x0]
	add r1, r4, #0x0
	bl FUN_02020788
	add r0, r4, #0x0
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start FUN_0201FF84
FUN_0201FF84: ; 0x0201FF84
	push {r4, lr}
	sub sp, #0x30
	add r2, r0, #0x0
	ldr r0, [r2, #0x0]
	add r4, r2, #0x0
	str r0, [sp, #0x0]
	ldr r0, [r2, #0x4]
	add r4, #0x8
	str r0, [sp, #0x4]
	ldmia r4!, {r0-r1}
	add r3, sp, #0x8
	stmia r3!, {r0-r1}
	ldr r0, [r4, #0x0]
	mov r1, #0x0
	str r0, [r3, #0x0]
	mov r0, #0x1
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r0, sp, #0x0
	strh r1, [r0, #0x20]
	ldr r0, [r2, #0x14]
	str r0, [sp, #0x24]
	ldr r0, [r2, #0x18]
	str r0, [sp, #0x28]
	ldr r0, [r2, #0x1c]
	str r0, [sp, #0x2c]
	add r0, sp, #0x0
	bl FUN_0201FE94
	add sp, #0x30
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_0201FFC8
FUN_0201FFC8: ; 0x0201FFC8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r1, r5, #0x0
	add r1, #0xec
	ldr r1, [r1, #0x0]
	cmp r1, #0x0
	beq _02020040
	add r1, r5, #0x0
	add r1, #0xfc
	ldr r1, [r1, #0x0]
	cmp r1, #0x0
	beq _0201FFE4
	bl FUN_02020820
_0201FFE4:
	add r0, r5, #0x0
	add r0, #0xec
	ldr r0, [r0, #0x0]
	cmp r0, #0x3
	bne _0202000E
	add r1, r5, #0x0
	add r1, #0xf8
	add r0, r5, #0x0
	add r4, r5, #0x0
	ldr r1, [r1, #0x0]
	add r0, #0xb4
	add r4, #0x40
	blx FUN_020B1A14
	mov r1, #0x0
	mvn r1, r1
	cmp r0, r1
	beq _0202000E
	ldr r0, [r4, #0x5c]
	blx FUN_020B4358
_0202000E:
	add r0, r5, #0x0
	add r0, #0xec
	ldr r0, [r0, #0x0]
	cmp r0, #0x2
	bne _02020030
	add r4, r5, #0x0
	add r4, #0x40
	ldr r0, [r4, #0x70]
	cmp r0, #0x0
	beq _02020026
	bl FUN_02016A18
_02020026:
	ldr r0, [r4, #0x74]
	cmp r0, #0x0
	beq _02020030
	bl FUN_02016A18
_02020030:
	add r0, r5, #0x0
	mov r1, #0x0
	add r0, #0xec
	str r1, [r0, #0x0]
	ldr r0, [r5, #0x3c]
	add r1, r5, #0x0
	bl FUN_02020890
_02020040:
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_02020044
FUN_02020044: ; 0x02020044
	add r2, r1, #0x0
	add r3, r0, #0x0
	ldmia r2!, {r0-r1}
	stmia r3!, {r0-r1}
	ldr r0, [r2, #0x0]
	str r0, [r3, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020054
FUN_02020054: ; 0x02020054
	add r3, r1, #0x0
	add r2, r0, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0xc
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_02020064
FUN_02020064: ; 0x02020064
	add r3, r1, #0x0
	add r2, r0, #0x0
	ldmia r3!, {r0-r1}
	add r2, #0x18
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	str r0, [r2, #0x0]
	bx lr

	thumb_func_start FUN_02020074
FUN_02020074: ; 0x02020074
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	bl FUN_02020064
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_020200EC
	pop {r3-r5, pc}

	thumb_func_start FUN_02020088
FUN_02020088: ; 0x02020088
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start FUN_0202008C
FUN_0202008C: ; 0x0202008C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r2, #0x0
	bl FUN_02020088
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl FUN_020200EC
	pop {r3-r5, pc}

	thumb_func_start FUN_020200A0
FUN_020200A0: ; 0x020200A0
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020200AE
	bl ErrorHandling
_020200AE:
	cmp r4, #0x2
	blt _020200B6
	bl ErrorHandling
_020200B6:
	add r5, #0x34
	strb r4, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_020200BC
FUN_020200BC: ; 0x020200BC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020200CA
	bl ErrorHandling
_020200CA:
	cmp r4, #0x2
	blt _020200D2
	bl ErrorHandling
_020200D2:
	add r5, #0x35
	strb r4, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_020200D8
FUN_020200D8: ; 0x020200D8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020200E6
	bl ErrorHandling
_020200E6:
	str r4, [r5, #0x38]
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_020200EC
FUN_020200EC: ; 0x020200EC
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020200FA
	bl ErrorHandling
_020200FA:
	add r5, #0x26
	strb r4, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_02020100
FUN_02020100: ; 0x02020100
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _0202010E
	bl ErrorHandling
_0202010E:
	add r0, r5, #0x0
	add r0, #0x27
	strb r4, [r0, #0x0]
	mov r0, #0x0
	add r5, #0x26
	strb r0, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0202011C
FUN_0202011C: ; 0x0202011C
	bx lr
	.balign 4

	thumb_func_start FUN_02020120
FUN_02020120: ; 0x02020120
	add r0, #0x18
	bx lr

	thumb_func_start FUN_02020124
FUN_02020124: ; 0x02020124
	ldrh r0, [r0, #0x24]
	bx lr

	thumb_func_start FUN_02020128
FUN_02020128: ; 0x02020128
	add r0, #0x34
	ldrb r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020130
FUN_02020130: ; 0x02020130
	push {r4, lr}
	lsl r2, r1, #0x10
	lsr r3, r2, #0x10
	add r2, r0, #0x0
	add r2, #0xf0
	strh r3, [r2, #0x0]
	add r2, r0, #0x0
	add r2, #0xec
	ldr r2, [r2, #0x0]
	cmp r2, #0x1
	beq _0202014A
	cmp r2, #0x3
	bne _02020168
_0202014A:
	add r4, r0, #0x0
	add r4, #0x40
	lsl r1, r1, #0x10
	ldr r0, [r4, #0x4]
	lsr r1, r1, #0x10
	blx FUN_020AFC04
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x8
	blx FUN_020B1EE4
	mov r0, #0x1
	str r0, [r4, #0x10]
	pop {r4, pc}
_02020168:
	add r4, r0, #0x0
	add r4, #0x40
	ldr r0, [r4, #0x6c]
	add r1, r3, #0x0
	blx FUN_020AFC04
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x8
	blx FUN_020B242C
	mov r0, #0x1
	str r0, [r4, #0x10]
	pop {r4, pc}

	thumb_func_start FUN_02020184
FUN_02020184: ; 0x02020184
	push {r3, lr}
	add r2, r0, #0x0
	add r2, #0xf0
	ldrh r2, [r2, #0x0]
	cmp r2, r1
	beq _02020194
	bl FUN_02020130
_02020194:
	pop {r3, pc}
	.balign 4

	thumb_func_start FUN_02020198
FUN_02020198: ; 0x02020198
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r0, #0xec
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _020201A8
	cmp r0, #0x3
	bne _020201C2
_020201A8:
	add r5, r4, #0x0
	add r5, #0x40
	add r0, r5, #0x0
	add r0, #0x8
	blx FUN_020B0448
	mov r0, #0x1
	str r0, [r5, #0x10]
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_02020208
	pop {r3-r5, pc}
_020201C2:
	add r5, r4, #0x0
	add r5, #0x40
	add r0, r5, #0x0
	add r0, #0x8
	blx FUN_020B0448
	mov r0, #0x1
	str r0, [r5, #0x10]
	add r0, r4, #0x0
	mov r1, #0x0
	bl FUN_02020208
	pop {r3-r5, pc}

	thumb_func_start FUN_020201DC
FUN_020201DC: ; 0x020201DC
	add r0, #0xf0
	ldrh r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_020201E4
FUN_020201E4: ; 0x020201E4
	push {r3, lr}
	add r2, r0, #0x0
	add r2, #0xec
	ldr r2, [r2, #0x0]
	cmp r2, #0x1
	beq _020201F4
	cmp r2, #0x3
	bne _020201FE
_020201F4:
	add r0, #0x40
	add r0, #0x8
	blx FUN_020B1EC4
	pop {r3, pc}
_020201FE:
	add r0, #0x40
	add r0, #0x8
	blx FUN_020B224C
	pop {r3, pc}

	thumb_func_start FUN_02020208
FUN_02020208: ; 0x02020208
	push {r3, lr}
	add r2, r0, #0x0
	add r2, #0xec
	ldr r2, [r2, #0x0]
	cmp r2, #0x1
	beq _02020218
	cmp r2, #0x3
	bne _02020222
_02020218:
	add r0, #0x40
	add r0, #0x8
	blx FUN_020B1EA4
	pop {r3, pc}
_02020222:
	add r0, #0x40
	add r0, #0x8
	blx FUN_020B2194
	pop {r3, pc}

	thumb_func_start FUN_0202022C
FUN_0202022C: ; 0x0202022C
	ldr r3, _02020234 ; =0x020B04FC
	add r0, #0x40
	add r0, #0x8
	bx r3
	.balign 4
_02020234: .word 0x020B04FC

	thumb_func_start FUN_02020238
FUN_02020238: ; 0x02020238
	add r0, #0xf2
	strb r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020240
FUN_02020240: ; 0x02020240
	add r0, #0xf2
	ldrb r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020248
FUN_02020248: ; 0x02020248
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _02020256
	bl ErrorHandling
_02020256:
	add r0, r5, #0x0
	add r0, #0x29
	strb r4, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x2
	orr r1, r0
	add r0, r5, #0x0
	add r0, #0x28
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x10
	add r5, #0x28
	bic r1, r0
	strb r1, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_0202027C
FUN_0202027C: ; 0x0202027C
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_02020248
	add r1, r4, #0x0
	add r1, #0xf8
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	add r0, #0xd8
	bl FUN_020205E8
	add r1, r4, #0x0
	add r1, #0x29
	ldrb r1, [r1, #0x0]
	add r4, #0x29
	add r0, r1, r0
	strb r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_020202A0
FUN_020202A0: ; 0x020202A0
	add r0, #0x29
	ldrb r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_020202A8
FUN_020202A8: ; 0x020202A8
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r1, #0x0
	cmp r5, #0x0
	bne _020202B6
	bl ErrorHandling
_020202B6:
	add r0, r5, #0x0
	add r0, #0x2a
	strb r4, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x10
	orr r1, r0
	add r0, r5, #0x0
	add r0, #0x28
	strb r1, [r0, #0x0]
	add r0, r5, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x2
	add r5, #0x28
	bic r1, r0
	strb r1, [r5, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_020202DC
FUN_020202DC: ; 0x020202DC
	push {r4, lr}
	add r4, r0, #0x0
	bl FUN_020202A8
	add r1, r4, #0x0
	add r1, #0xf8
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	add r0, #0xd8
	bl FUN_020205E8
	add r1, r4, #0x0
	add r1, #0x2a
	ldrb r1, [r1, #0x0]
	add r4, #0x2a
	add r0, r1, r0
	strb r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02020300
FUN_02020300: ; 0x02020300
	push {r4, lr}
	add r4, r0, #0x0
	bne _0202030A
	bl ErrorHandling
_0202030A:
	add r4, #0x2a
	ldrb r0, [r4, #0x0]
	pop {r4, pc}

	thumb_func_start FUN_02020310
FUN_02020310: ; 0x02020310
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r2, r5, #0x0
	ldr r4, [r5, #0x3c]
	add r2, #0xf4
	strh r1, [r2, #0x0]
	bl FUN_02020820
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl FUN_02020788
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0202032C
FUN_0202032C: ; 0x0202032C
	add r0, #0xf4
	ldrh r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020334
FUN_02020334: ; 0x02020334
	push {r3-r4}
	add r3, r0, #0x0
	add r4, r1, #0x0
	add r3, #0xb4
	mov r2, #0x4
_0202033E:
	ldmia r4!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _0202033E
	ldr r0, [r4, #0x0]
	str r0, [r3, #0x0]
	pop {r3-r4}
	bx lr
	.balign 4

	thumb_func_start FUN_02020350
FUN_02020350: ; 0x02020350
	add r0, #0xb4
	bx lr

	thumb_func_start FUN_02020354
FUN_02020354: ; 0x02020354
	add r0, #0xd8
	bx lr

	thumb_func_start FUN_02020358
FUN_02020358: ; 0x02020358
	str r1, [r0, #0x2c]
	cmp r1, #0x1
	bne _0202036E
	add r1, r0, #0x0
	add r1, #0x28
	ldrb r2, [r1, #0x0]
	mov r1, #0x4
	add r0, #0x28
	orr r1, r2
	strb r1, [r0, #0x0]
	bx lr
_0202036E:
	add r1, r0, #0x0
	add r1, #0x28
	ldrb r2, [r1, #0x0]
	mov r1, #0x4
	eor r1, r2
	add r0, #0x28
	strb r1, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020380
FUN_02020380: ; 0x02020380
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020388
FUN_02020388: ; 0x02020388
	push {r4, lr}
	add r4, r0, #0x0
	bne _02020392
	bl ErrorHandling
_02020392:
	ldr r0, [r4, #0x50]
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02020398
FUN_02020398: ; 0x02020398
	push {r3-r5, lr}
	add r4, r0, #0x0
	add r5, r1, #0x0
	cmp r4, #0x0
	bne _020203A6
	bl ErrorHandling
_020203A6:
	str r5, [r4, #0x30]
	cmp r5, #0x0
	bne _020203BC
	add r0, r4, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x8
	add r4, #0x28
	eor r0, r1
	strb r0, [r4, #0x0]
	pop {r3-r5, pc}
_020203BC:
	add r0, r4, #0x0
	add r0, #0x28
	ldrb r1, [r0, #0x0]
	mov r0, #0x8
	orr r0, r1
	add r4, #0x28
	strb r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start FUN_020203CC
FUN_020203CC: ; 0x020203CC
	push {r4, lr}
	mov r1, #0x1
	lsl r1, r1, #0xa
	bl FUN_02016998
	add r4, r0, #0x0
	mov r0, #0xb
	mov r2, #0x1
	lsl r0, r0, #0x6
	add r1, r4, #0x0
	lsl r2, r2, #0xa
	blx MIi_CpuClear16
	mov r1, #0x1
	add r0, r4, #0x0
	lsl r1, r1, #0xa
	blx DC_FlushRange
	mov r2, #0x1
	add r0, r4, #0x0
	mov r1, #0x0
	lsl r2, r2, #0xa
	blx FUN_020C93BC
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}

	thumb_func_start FUN_02020404
FUN_02020404: ; 0x02020404
	push {r4, lr}
	mov r1, #0x1
	lsl r1, r1, #0xa
	bl FUN_02016998
	add r4, r0, #0x0
	mov r0, #0xb
	mov r2, #0x1
	lsl r0, r0, #0x6
	add r1, r4, #0x0
	lsl r2, r2, #0xa
	blx MIi_CpuClear16
	mov r2, #0x1
	add r0, r4, #0x0
	mov r1, #0x0
	lsl r2, r2, #0xa
	blx FUN_020C9354
	add r0, r4, #0x0
	bl FUN_02016A18
	pop {r4, pc}
	.balign 4

	thumb_func_start FUN_02020434
FUN_02020434: ; 0x02020434
	push {r3-r7, lr}
	add r5, r1, #0x0
	str r0, [sp, #0x0]
	add r4, r2, #0x0
	add r0, r5, #0x0
	add r7, r3, #0x0
	bl FUN_020204DC
	add r1, r4, #0x0
	add r1, #0xec
	str r0, [r1, #0x0]
	add r3, r4, #0x0
	ldr r6, [r5, #0x0]
	add r3, #0xb4
	mov r2, #0x4
_02020452:
	ldmia r6!, {r0-r1}
	stmia r3!, {r0-r1}
	sub r2, r2, #0x1
	bne _02020452
	ldr r0, [r6, #0x0]
	add r2, r4, #0x0
	str r0, [r3, #0x0]
	ldr r3, [r5, #0x8]
	add r2, #0xd8
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldmia r3!, {r0-r1}
	stmia r2!, {r0-r1}
	ldr r0, [r3, #0x0]
	add r1, r4, #0x0
	str r0, [r2, #0x0]
	ldr r0, [r5, #0xc]
	bl FUN_020204F4
	ldr r0, [r5, #0x10]
	cmp r0, #0x0
	beq _02020486
	add r1, r4, #0x0
	bl FUN_020204F8
	b _02020494
_02020486:
	mov r1, #0x47
	ldr r0, [sp, #0x0]
	lsl r1, r1, #0x2
	ldr r0, [r0, r1]
	add r1, r4, #0x0
	bl FUN_020204F8
_02020494:
	add r0, r4, #0x0
	add r0, #0xec
	ldr r0, [r0, #0x0]
	cmp r0, #0x2
	bne _020204B8
	ldr r0, [r5, #0x14]
	add r1, r4, #0x0
	bl FUN_020204FC
	ldr r0, [r5, #0x18]
	add r1, r4, #0x0
	bl FUN_02020504
	add r0, r4, #0x0
	add r1, r7, #0x0
	bl FUN_02020588
	b _020204D0
_020204B8:
	cmp r0, #0x3
	bne _020204C8
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r2, r7, #0x0
	bl FUN_0202052C
	b _020204D0
_020204C8:
	add r0, r4, #0x0
	add r1, r7, #0x0
	bl FUN_0202050C
_020204D0:
	add r5, #0x20
	ldrb r0, [r5, #0x0]
	add r4, #0xf2
	strb r0, [r4, #0x0]
	mov r0, #0x1
	pop {r3-r7, pc}

	thumb_func_start FUN_020204DC
FUN_020204DC: ; 0x020204DC
	ldr r1, [r0, #0x14]
	cmp r1, #0x0
	beq _020204E6
	mov r0, #0x2
	bx lr
_020204E6:
	ldr r0, [r0, #0x1c]
	cmp r0, #0x1
	bne _020204F0
	mov r0, #0x3
	bx lr
_020204F0:
	mov r0, #0x1
	bx lr

	thumb_func_start FUN_020204F4
FUN_020204F4: ; 0x020204F4
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start FUN_020204F8
FUN_020204F8: ; 0x020204F8
	str r0, [r1, #0x44]
	bx lr

	thumb_func_start FUN_020204FC
FUN_020204FC: ; 0x020204FC
	add r1, #0xa8
	str r0, [r1, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_02020504
FUN_02020504: ; 0x02020504
	add r1, #0xac
	str r0, [r1, #0x0]
	bx lr
	.balign 4

	thumb_func_start FUN_0202050C
FUN_0202050C: ; 0x0202050C
	push {r3-r5, lr}
	add r5, r0, #0x0
	add r4, r5, #0x0
	add r4, #0x40
	ldr r0, [r4, #0x4]
	mov r1, #0x0
	blx FUN_020AFC04
	add r4, #0x8
	add r1, r0, #0x0
	ldr r2, [r5, #0x40]
	add r0, r4, #0x0
	blx FUN_020B1F80
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start FUN_0202052C
FUN_0202052C: ; 0x0202052C
	push {r4-r7, lr}
	sub sp, #0x1c
	add r6, r1, #0x0
	add r4, r6, #0x0
	add r4, #0x40
	add r5, r0, #0x0
	blx FUN_020B43A4
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0x4]
	mov r1, #0x0
	ldr r5, [r5, #0x4]
	add r0, #0xb4