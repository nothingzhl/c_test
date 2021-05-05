#include <stdio.h>

typedef enum FileFormat {
    PNG, JPEG
} FileFormat;

int isBigEndian() {
    union {
        char c[2];
        short s;
    } value = {.s=0x100};
    return value.c[0] == 1;
}

int isBigEndianWithPoint() {
    short t = 0x100;
    char *p = (char *) &t;
    return p[0] == 1;
}

int main() {
    printf("%d\n", isBigEndian());
    printf("%d\n",isBigEndianWithPoint());
    return 0;
}