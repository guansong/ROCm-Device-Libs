/*===--------------------------------------------------------------------------
 *                   ROCm Device Libraries
 *
 * This file is distributed under the University of Illinois Open Source
 * License. See LICENSE.TXT for details.
 *===------------------------------------------------------------------------*/

#include "mathD.h"

CONSTATTR INLINEATTR double
MATH_MANGLE(scalbn)(double x, int n)
{
    return MATH_MANGLE(ldexp)(x, n);
}

