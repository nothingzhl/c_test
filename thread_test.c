#include <tinycthread.h>
#include <stdio.h>

int sayHello(char *name) {
    printf("Hello %s\n", name);
    return 0;
}

int main() {
    thrd_t new_thread;
    int result = thrd_create(&new_thread, sayHello, "zhanghanlin");

    if (result == thrd_success) {
        printf("create success!\n");
    } else {
        perror("create fail!");
    }

    // thrd_sleep(&(struct timespec) {.tv_sec=0, .tv_nsec=100000000}, NULL);
    int res;
    thrd_join(new_thread, &res);
    printf("%d\n",res);
    // 无返回值的线程获取
 //   thrd_detach(new_thread);
    return 0;
}