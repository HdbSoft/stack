#ifndef __MATHS__
#define __MATHS__

#define pi    3.14159265358
#define e     2.71828182845

#define tau   2*pi

#define gamma 0.57721566490

#define sqrt2 1.41421356237
#define sqrt3 1.73205080757

#define sqrt5 2.2360679774

static int hcd(int num1, int num2) {
    int hcd = 0;
    int a = max(num1, num2);
    int b = min(num1, num2);
    do {
        hcd = b;
        b = a % b;
        a = hcd;
    } while (b != 0);
    return hcd;
}

static int mcm(int num1, int num2) {
    int mcm = 0;
    int a = max(num1, num2);
    int b = min(num1, num2);
    mcm = (a / hcd(a, b)) * b;
    return mcm;
}

#endif //Starlang maths.st