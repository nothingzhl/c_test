#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <libc.h>
#include <errno.h>


int main() {

    // 打开文件
    FILE *file = fopen("/Users/zhanghanlin/CLionProjects/c_test/CMakeLists.txt", "r");
    // 转换为fd
    int fd = fileno(file);
    // 分配buf空间
    char *buf = (char *) malloc(256 * sizeof(char));

    // 开启非阻塞模式
    int flag = fcntl(0, F_GETFL, 0);
    fcntl(0, F_SETFL, flag | O_NONBLOCK);
    // 轮询
    while (1) {
        int ret = read(fd, buf, 256 * sizeof(char));
        if(ret == -1) {
            if(errno == EAGAIN) {
                // 执行其他任务
                continue;
            } else {
                perror("hello");
                exit(-1);
            }
        }
        printf("fd=%d\n",fd);
        break;
    }

    return 0;

}
