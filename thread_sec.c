#include <tinycthread.h>
#include <stdio.h>
#include <stdatomic.h>

atomic_int count = 0;

int counter(void *args) {

    for (int i = 0; i < 10000; ++i) {
        count++;
    }

    return 0;
}

int main() {
    thrd_t t1, t2;

    thrd_create(&t1, counter, NULL);
    thrd_create(&t2, counter, NULL);

    thrd_join(t1, NULL);
    thrd_join(t2, NULL);

    printf("%d\n", count);

}