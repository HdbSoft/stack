#ifndef __RANDOM__
#define __RANDOM__

#include <time.h>

i64 rng(i32 seed) {
	return (0x41C64E6D * seed + 0x00006073) % 0xFFFFFFFF;
}

i64 RandNumber() {
	return rng((unsigned)time(0));
}

#endif //Starlang rng.st