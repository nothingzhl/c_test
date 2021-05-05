#include <stdio.h>


int sum(int a, int b) {
    return a + b;
}

int main() {

    int (*sum_func)(int a, int b) = &sum;
    printf("%d\n", sum_func(1, 2));
    printf("%d\n", (*sum_func)(1, 2));

    int a = 0;
    typeof(a);
    return 0;
}