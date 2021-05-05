//bit op
// Created by 张翰林 on 2021/4/18.
//

#include <stdio.h>
#include <stdbool.h>

#define FLAG_VISIBLE 0x1
#define FLAG_RESIZE 0x4

int main() {

    unsigned long windows_flag = FLAG_VISIBLE | FLAG_RESIZE;

    printf("flag is %lx\n", windows_flag);


    bool is_visible = true;
    printf("%d", is_visible);


}