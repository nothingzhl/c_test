#include <i386/signal.h>
#include <termios.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <libc.h>

static volatile sig_atomic_t gotSigio = 0;

static void handler(int sig) {
    gotSigio = 1;
}

int main(int argc, char *argv[]) {
    int flags, cnt;
    char ch;
    // 信号的结构体
    struct sigaction sa;
    int done;


    sigemptyset(&sa.sa_mask);
    // 信号值
    sa.sa_flags = SA_RESTART;
    // 信号函数bind
    sa.sa_handler = handler;
    // 为通知信号安装处理函数，SIGIO默认是这个
    if (sigaction(SIGIO, &sa, NULL) == -1) {
        perror("sigaction()\n");
        exit(1);
    }

    // 设置文件的own process，STDIN_FILENO 标准输入流
    if (fcntl(STDIN_FILENO, F_SETOWN, getpid()) == -1) {
        perror("fcntl() / F_SETOWN\n");
        exit(1);
    }

    // 切换io为信号驱动模式
    flags = fcntl(STDIN_FILENO, F_GETFL);
    if (fcntl(STDIN_FILENO, F_SETFL, flags | O_ASYNC | O_NONBLOCK) == -1) {
        perror("fcntl() / F_SETFL\n");
        exit(1);
    }

    for (done = 0, cnt = 0; !done; cnt++) {
        sleep(1);
        if (gotSigio) {
            gotSigio = 0;

            /* Read all available input until error (probably EAGAIN)
               or EOF */
            // 通过判读fd是否存在
            while (read(STDIN_FILENO, &ch, 1) > 0 && !done) {
                printf("cnt=%d; read %c\n", cnt, ch);
                done = ch == '#';
            }
        }
    }
    exit(0);
}