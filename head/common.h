#ifndef C_TEST_COMMON_H
#define C_TEST_COMMON_H

#include <stdio.h>
#include <stdarg.h>

#define  PRINTF_LN(format, ...) printf(format"\n",##__VA_ARGS__)

#define PRINTF_INT(value) PRINTF_LN(#value":%d",value)

#define PRINTF_INFO() printf("%s:%d:%s",__FILE__,__LINE__,__FUNCTION__)

void println(const char *, ...);

#endif //C_TEST_COMMON_H
