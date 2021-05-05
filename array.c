#include <common.h>

int main() {
    int array[34];

    for (int i = 0; i < 34; ++i) {
        array[i] = i;
        PRINTF_INT(array[i]);
    }

    char array_char[5] = {[2]='o'};

    return 0;
}