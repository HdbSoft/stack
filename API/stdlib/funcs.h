#ifndef STARLANG_FUNCS_H
#define STARLANG_FUNCS_H

u32 digits(int num) {
    u32 count = 0;
    if (num == 0)
        return 1;

    while (num > 0) {
        count++;
        num = num / 10;
    }
    return count;
}

i32 AtoI(String ASCII) {
	return atoi(ASCII);
}

String ItoA(i32 num) {
    i32 dgcount = digits(num);
    i32 index = dgcount - 1;
    String number;
    char x;

    if (num == 0 && dgcount == 1) {
        number[0] = '0';
        number[1] = '\0';
    }
    else {
        while (num != 0) {
            x = num % 10;
            number[index] = x + '0';
            index--;
            num = num / 10;
        }
        number[dgcount] = '\0';
    }

    return number;
}

#endif //Starlang funcs.h