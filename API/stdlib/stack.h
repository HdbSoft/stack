/* The stack standard API
 * this files contain some stack
 * features, such as loop, main or foreach
 * code blocks, and of course, stack's
 * data types: u8, i64, f32, s128, String,
 * str...
 *
 * MIT licensed, read LICENSE.md file for
 * more information
*/
#ifndef _STACK_
#define _STACK_

#include "libs.h"
/* stack external libraries:
 * assert.h
 * errno.h
 * string.h
 * stdint.h
 * stdbool.h
 * float.h
*/

#include "types.h"
/* stack data types:
 * void, int... pointers
 * var, func, def
 * i8, i16, i32, i64, i128
 * u8, u16, u32, u64, u128
 * s8, s16, s32, s64, s128
 * f32, f64
 * String, str
 *
 * Read types.h for more info
*/

#include "aliases.h"
/* stack aliases:
 * main              => int main(int argc, String* argv)
 * loop              => while (1)
 * foreach(from, to) => for (int i = from; i < to; i++)
 * jmp               => goto
 * out               => return
*/

#include "consts.h"
/* stack consts
 * __STACK_VER__
 * __OS__
 * __PATH__
 * ARG1
 * ARG2
 * ARG3
 * ARG4
 * ARG5
*/

#include "dlls.h"
/* stack dll utils
 * DLL_EXPORT
 * using
 * access
*/

#endif //stack API