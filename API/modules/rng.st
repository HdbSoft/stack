#ifndef __RANDOM__
#define __RANDOM__

#include <time.h>

int random(int seed) {
	return (0x41C64E6D * seed + 0x00006073) % 0xFFFFFFFF;
}

int random() {
	return random((unsigned)time(0));
}

#endif //Starlang rng.st