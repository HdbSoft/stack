/* The Starlang standard API
 * this files contain some Starlang
 * features, such as loop, main or foreach
 * code blocks, and of course, Starlang's
 * data types: u8, i64, f32, s128, String,
 * str...
 *
 * MIT licensed, read LICENSE.md file for
 * more information
*/
#ifndef STARLANG
#define STARLANG

#include "libs.h"
/* Starlang external libraries:
 * assert.h
 * errno.h
 * string.h
 * stdint.h
 * stdbool.h
 * float.h
*/

#include "types.h"
/* Starlang data types:
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
/* Starlang aliases:
 * main              => int main(int argc, String* argv)
 * loop              => while (1)
 * foreach(from, to) => for (int i = from; i < to; i++)
 * jmp               => goto
 * out               => return
*/

#include "consts.h"
/* Starlang consts
 * STARLANG_VER
 * __OS__
 * __PATH__
 * ARG1
 * ARG2
 * ARG3
 * ARG4
 * ARG5
*/

#endif //Starlang API