#include <stdio.h>

// Entrada de Dados

int main() {

    int inteiro;
    float real;
    char caracter;
    char cadeia[50]; // **

    // Operador &
    printf("inteiro (valor): %p\n", inteiro);
    printf("inteiro (endereço): %p\n", &inteiro);

    // Lendo variáveis
    scanf("%d", &inteiro);
    scanf("%f", &real);
    scanf("%c", &caracter);

    // Checando valores:
    printf("Inteiro: %d\n", inteiro);
    printf("Real: %f\n", real);
    printf("Caracter: %c\n", caracter);

    // Questões: Entradas de Dados

    return 0;
}