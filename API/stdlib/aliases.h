#ifndef STARLANG_ALIASES_H
#define STARLANG_ALIASES_H

#define main\
	i32 main(int argc, String* argv)

#define loop\
	while(1)
//Code block aliases

#define jmp goto
#define out return

#define StrLog(s)      printf("%s",   s)
#define StrLogln(s)    printf("%s\n", s)

#define IntLog(i)      printf("%d",   i)
#define IntLogln(i)    printf("%d\n", i)

#define FloatLog(f)    printf("%f",   f)
#define FloatLogln(f)  printf("%f\n", f)

#define CharLog(c)     printf("%c",   c)
#define CharLogln(c)   printf("%c\n", c)

#endif //Starlang aliases.h
