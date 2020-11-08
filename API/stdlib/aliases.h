#ifndef STARLANG_ALIASES_H
#define STARLANG_ALIASES_H

#define main\
	int main(int argc, String* argv)

#define loop\
	while(1)
//Code block aliases

#define jmp goto
#define out return

#define WriteString(s)   printf("%s",   s)
#define WriteStringln(s) printf("%s\n", s)

#define WriteInt(i)      printf("%d",   i)
#define WriteIntln(i)    printf("%d\n", i)

#define WriteFloat(f)    printf("%f",   f)
#define WriteFloatln(f)  printf("%f\n", f)

#define WriteChar(c)     printf("%c",   c)
#define WriteCharln(c)   printf("%c\n", c)

#endif //Starlang aliases.h
