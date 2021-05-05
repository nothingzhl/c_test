#include <time.h>
#include <stdlib.h>
#include <common.h>


void swap(int *pInt, int i, int i1);

void quickSort(int array[], int low, int hign);

int main() {

    int array[30];

    srand((unsigned)time(NULL));

    for (int i = 0; i < 30; ++i) {
        array[i] = rand() % 200;
    }

    quickSort(array,0,30);

    for (int i = 0; i < 30; ++i) {
        PRINTF_INT(array[i]);
    }


    return 0;
}

int partition(int array[], int low, int hign) {
    int pivot = array[hign];
    int partition = low;
    for (int i = low; i < hign; ++i) {
        if (array[i] < pivot) {
            swap(array, i, partition++);
        }
    }
    swap(array, partition, hign);
    return partition;
}

void swap(int array[], int first, int second) {
    int temp = array[first];
    array[first] = array[second];
    array[second] = temp;
}

void quickSort(int array[], int low, int hign) {
    if (low >= hign) return;
    int part = partition(array, low, hign);
    quickSort(array, low, part - 1);
    quickSort(array, part + 1, hign);
}