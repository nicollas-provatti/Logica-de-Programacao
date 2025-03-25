#include <stdio.h>

// Array

int main() {

    int numeros[5];

    for (int i = 0; i < 5; i++) {
        scanf("%d", &numeros[i]);
    }

    for (int i = 0; i < 5; i++) {
        printf("%d ", numeros[i]);
    }
    printf("\n");

    // Função que ler e imprimi
    
    return 0;
}