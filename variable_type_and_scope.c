//
// Created by 张翰林 on 2021/4/21.
//

#include <stdio.h>
#include <stdarg.h>

void handleVar(int,...);

int main(){

    auto int value = 0;

    handleVar(6,2,3,4,5,6,7,8);

    return 0;
}

void handleVar(int arg_count,...){
    va_list args;

    va_start(args,arg_count);

    for (int i = 0; i < arg_count; ++i) {
        int arg = va_arg(args,int);
        printf("%d %d\n",i,arg);
    }
    va_end(args);
}