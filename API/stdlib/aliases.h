#ifndef STARLANG_ALIASES_H
#define STARLANG_ALIASES_H

#define main\
	int main(int argc, String* argv)

#define loop\
	while (1)

#define foreach(l, r)\
	for (int i = l; i < r; i++)
//Code block aliases

#define jmp goto
#define out return

#endif //Starlang aliases.h
