#ifndef STACK_STD_H
#define STACK_STD_H

#include <stdio.h>
#include <stdlib.h>

#include <assert.h>
#include <errno.h>
#include <math.h>

#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <float.h>

#define WriteString(s)   printf("%s",   s)
#define WriteStringln(s) printf("%s\n", s)

#define WriteInt(i)      printf("%d",   i)
#define WriteIntln(i)    printf("%d\n", i)

#define WriteFloat(f)    printf("%f",   f)
#define WriteFloatln(f)  printf("%f\n", f)

#define WriteChar(c)     printf("%c",   c)
#define WriteCharln(c)   printf("%c\n", c)

#if defined(__STDIO_H__) && defined(__STDLIB_H__)
 void panic(String message) {
 	printf("%s", message);
 	exit(1);

 	return;
 }
#endif

#endif //stack std.h