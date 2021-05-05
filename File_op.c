#include <stdio.h>
#include <errno.h>
#include <common.h>
#include <string.h>

int main() {

    FILE *file = fopen("CMakeLists.txt", "r");
    char file_buffer[4096];
    if (file) {
        puts("open file successfully");
        setvbuf(file,file_buffer,_IOLBF,4096);
        int next_char = getc(file);
        while (next_char != EOF){
            putchar(next_char);
            next_char = getc(file);
        }
        fflush(file);
        fclose(file);
    } else {
        PRINTF_INT(errno);
        puts(strerror(errno));
        perror("fOpen");
    }

    return 0;

}