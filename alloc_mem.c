#include <stdio.h>
#include <stdlib.h>

int main() {

    int *player = malloc(10 * sizeof(int));

    player = calloc(10, sizeof(int));

    player = realloc(player, 20 * sizeof(int));

    free(player);

    return 0;
}