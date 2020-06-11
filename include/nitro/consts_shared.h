/*
 * NOTE:
 * This file is shared between ARM9 and ARM7
 * DO NOT PUT PROC SPECIFIC CODE IN HERE
 * Thank You!
 */

/*
 * DO NOT INCLUDE THIS FILE DIRECTLY
 * Include consts.h from the specific proc's lib
 */

#ifndef POKEDIAMOND_CONSTS_SHARED_H
#define POKEDIAMOND_CONSTS_SHARED_H

#include "nitro/types.h"
#include "nitro/mmap_shared.h"

//Shared Consts

#define HW_PSR_CPU_MODE_MASK       0x1f // CPU mode

#define HW_PSR_DISABLE_FIQ         0x40 // Disable FIQ
#define HW_PSR_DISABLE_IRQ         0x80 // Disable IRQ
#define HW_PSR_DISABLE_IRQ_FIQ     0xc0 // Disable FIQ and IRQ

#define OSi_ROUND(n, a)            (((u32) (n) + (a) - 1) & ~((a) - 1))
#define OSi_TRUNC(n, a)            (((u32) (n)) & ~((a) - 1))
#define OSi_InRange(targ, a, b)    ((u32)(a) <= (u32)(targ) && (u32)(targ) < (u32)(b))
#define OSi_OFFSET(n, a)           (((u32) (n)) & ((a) - 1))

#define OSi_GetArenaInfo()         (*(OSArenaInfo*)HW_ARENA_INFO_BUF)

#endif //POKEDIAMOND_CONSTS_SHARED_H
