/*===--------------------------------------------------------------------------
 *                   ROCm Device Libraries
 *
 * This file is distributed under the University of Illinois Open Source
 * License. See LICENSE.TXT for details.
 *===------------------------------------------------------------------------*/

#include "mathH.h"

CONSTATTR INLINEATTR half2
MATH_MANGLE2(max)(half2 x, half2 y)
{
    if (AMD_OPT()) {
        return BUILTIN_CMAX_2F16(x, y);
    } else {
        return BUILTIN_MAX_2F16(x, y);
    }
}

CONSTATTR INLINEATTR half
MATH_MANGLE(max)(half x, half y)
{
    if (AMD_OPT()) {
        return BUILTIN_CMAX_F16(x, y);
    } else {
        return BUILTIN_MAX_F16(x, y);
    }
}

