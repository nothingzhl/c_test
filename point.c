#include <stdio.h>

int main() {

    int a = 9;
    int b = 10;

    int *a_point = &a;

    *a_point = 10;
    printf("%s\n", a_point);
    printf("%d\n", *a_point);
    printf("%d\n", a);

    // const 使用
    int *const p = &a;
    // p = &b;
    *p = 20;
    const int *p4 = &a;
    int const *p1 = &a;
    p1 = &b;
    //*p1 = 30;

    int *p2 = NULL;

    int array[] = {1, 2, 3, 4, 5, 6};
    int *array_p = array;
    printf("array: %d\n", *(array_p + 3));
}

