#include <stdio.h>
#define DEBUG
void dump(char *);

int main() {

    dump("hello");
    puts("he wor");
    dump("word");
    printf("%ld\n",__STDC_VERSION__);
    return 0;

}

void dump(char *message) {
#ifdef DEBUG
    puts(message);
#endif
}