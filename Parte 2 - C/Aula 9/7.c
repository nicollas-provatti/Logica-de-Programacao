#include <stdio.h>

// Funções

// Função sem retorno
void mostrarSoma(int x, int y) {
    printf("%d\n", x + y);
}

// Função com retorno
int somar(int x, int y) {
    return x + y;
}

int main() {

    mostrarSoma(2, 3);

    int soma = somar(2, 3);
    printf("%d\n", soma);
    return 0;
}

// Questão: Função