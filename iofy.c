#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <libc.h>
#include <errno.h>
#include <sys/event.h>

// 监视多少个fd
const static int FD_NUM = 2;


int main() {

    int kq = kqueue();

    // kqueue的事件结构体，不需要直接操作
    struct kevent changes[FD_NUM]; // 要监视的事件列表
    struct kevent events[FD_NUM]; // kevent返回的事件列表（参考后面的kevent函数）

    // 标准输入流的fd
    int stdin_fd = STDIN_FILENO;
    // 标准输出流的fd
    int stdout_fd = STDOUT_FILENO;

    printf("stdin_fd = %d\n",stdin_fd);
    printf("stdout_fd = %d\n",stdout_fd);

    // 在changes列表中注册标准输入流的读事件 以及 标准输出流的写事件
    // 最后一个参数可以是任意的附加数据（void * 类型），在这里给事件附上了当前的文件描述符，后面会用到
    EV_SET(&changes[0], stdin_fd, EVFILT_READ, EV_ADD | EV_ENABLE, 0, 0, &stdin_fd);
    EV_SET(&changes[1], stdout_fd, EVFILT_WRITE, EV_ADD | EV_ENABLE, 0, 0, &stdin_fd);


    // 进行kevent函数调用，如果changes列表里有任何就绪的fd，则把该事件对应的结构体放进events列表里面
    // 返回值是这次调用得到了几个就绪的事件
    int nev = kevent(kq, changes, FD_NUM, events, FD_NUM, NULL); // 已经就绪的文件描述符数量
    // 此处为了方便处理，不做死循环判读
    for (int i = 0; i < nev; i++) {
        struct kevent event = events[i]; // 一个个取出已经就绪的事件

        int ready_fd = *((int *) event.udata); // 从附加数据里面取回文件描述符的值
        if (ready_fd == stdin_fd) {
            // 读取ready_fd
        } else if (ready_fd == stdin_fd) {
            // 写入ready_fd
        }
    }


    return 1;
}