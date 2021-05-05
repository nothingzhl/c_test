#include <stdio.h>
#include <stdlib.h>
#include <libc.h>


int main() {
    // 打开文件
    FILE *file = fopen("/Users/zhanghanlin/CLionProjects/c_test/CMakeLists.txt", "r");
    // 转换为fd
    int fd = fileno(file);
    // 分配buf空间
    char *buf = (char *) malloc(256 * sizeof(char));
    int ret = read(fd, buf, 256 * sizeof(char));
    if (ret == -1) {
        perror("error");
        exit(-1);
    }
    printf("fd=%d\n",fd);
    //释放空间
    free(buf);
    fclose(file);
    return 0;
}

