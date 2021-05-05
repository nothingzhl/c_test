#include <time.h>
#include <sys/timeb.h>
#include <stdio.h>



int main() {
    time_t;
    clock_t;
    struct tm;
    struct timespec;
    struct timeb;

#ifdef __unix__
    struct timeval;
#endif

    time(NULL);

    printf("%l\n", time(NULL));

    return 0;
}