#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
int main() {
    isdigit('0');
    isspace(' ');
    isgraph('1');
    atoi("12354");
    atof("1234.67");

//    char const *start = "12323.345";
//    char *end;
//
//    while (1) {
//        const long i = strtol(start, &end, 10);
//        if (start == end) {
//            break;
//        }
//    }

    printf("%d\n",strlen("12"));
    return 0;
}