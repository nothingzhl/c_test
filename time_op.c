#include <time.h>
#include <stdio.h>
#include <common.h>

int main(){

    time_t  current_time;
    time(&current_time);

    printf("%d\n",current_time);
    struct tm *lt =  localtime(&current_time);
    PRINTF_INT(lt->tm_year);

    time_t lt_time  = mktime(lt);

    PRINTF_INT(lt_time);

    struct tm *g_time =  gmtime(&current_time);
    PRINTF_INT(g_time->tm_year);

    puts(asctime(lt));
    puts(ctime(lt));

    char current_time_char[20];

    size_t size =  strftime(current_time_char,20,"%Y-%m-%d %H:%M:%S",lt);
    PRINTF_INT(size);
    puts(current_time_char);

    clock_t  start_clock_t =  clock();

    struct tm p_tm;
    char *left =  strptime(current_time_char,"%F %T",&p_tm);
    puts(left);
    PRINTF_INT(p_tm.tm_year);

    clock_t  end_clock_t  =clock();

    printf("diff clock: %f\n",(end_clock_t-start_clock_t) * 1.0 / CLOCKS_PER_SEC);

    return 0;
}