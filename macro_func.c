//
// Created by 张翰林 on 2021/4/21.
//

#include <stdio.h>

#define MAX(a, b) (a)>(b) ? (a) :(b)
#define MIN(a, b) (a)<(b)? \
(a):(b)

int main() {
    int max = MAX(1, 2);
    int max2 = MAX(1, MAX(1, 6));
    printf("%d\n", max);
    printf("%d\n", max2);
    printf("%d\n",MIN(1,4));

    return 0;
}
