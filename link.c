#include <stdio.h>
#include <stdlib.h>

typedef struct Node {
    int element;
    struct Node *next;
} Node;

Node *createNode(int value) {
    Node *node = malloc(sizeof(Node));
    node->element = value;
    node->next = NULL;
    return node;
}