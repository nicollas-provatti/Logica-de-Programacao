#include <stdio.h>

// Decisão: if-else, else-if, switch

int main() {

    // Exemplo 1: Classificando um número

    int numero = 10;

    if (numero == 0) {
        // zero

    } else if (numero > 0) {
        // positivo

    } else {
        // negativo
    }

    // Exemplo 2: Dia da semana

    int dia = 3;

    switch (dia) {
        case 1:
            // Domingo
            break;
        case 2:
            // Segunda
            break;
        case 3:
            // Terça
            break;
        /*.
          .
          .
        */
        default:
            // Dia Inválido
            break;
    }

    // Questões: Decisão + Entrada e Saída de Dados


    return 0;
}