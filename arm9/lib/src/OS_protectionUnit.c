#include "function_target.h"
#include "OS_protectionUnit.h"

ARM_FUNC asm void OS_EnableProtectionUnit(void)
{
    mrc p15, 0x0, r0, c1, c0, 0x0 //Control Register
    orr r0, r0, #0x1
    mcr p15, 0x0, r0, c1, c0, 0x0 //Control Register
    bx lr
}

ARM_FUNC asm void OS_DisableProtectionUnit(void)
{
    mrc p15, 0x0, r0, c1, c0, 0x0 //Control Register
    bic r0, r0, #0x1
    mcr p15, 0x0, r0, c1, c0, 0x0 //Control Register
    bx lr
}
