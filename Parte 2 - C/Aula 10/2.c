#include <stdio.h>

int main() {

    char nome[] = "Pedro";

    // Acesso
    char letra1 = nome[0];
    char letra2 = nome[1];

    // Manipulação
    nome[0] = 'C';

    printf("Primeira letra: %c\n", letra1);
    printf("Segunda letra: %c\n", letra2);
    printf("Nome: %s\n", nome);

    return 0;
}