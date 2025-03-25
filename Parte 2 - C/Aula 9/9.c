#include <stdio.h>

// Matriz

int main() {
    int numeros[3][3];

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            scanf("%d", &numeros[i][j]);
        }
    } 

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", numeros[i][j]);
        }
        printf("\n");
    } 

    // Função que le e imprimi

    return 0;
}