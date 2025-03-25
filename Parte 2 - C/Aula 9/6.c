#include <stdio.h>

// Repetição: for e while

int main() {
 
    // Exemplo 1: Ler N números e somá-los (definidos)
    int qtdNumeros, soma1 = 0;
    scanf("%d", &qtdNumeros);

    for (int i = 0; i < qtdNumeros; i++) {
        int numero;
        scanf("%d", &numero);
        soma1 += numero;
    }

    printf("%d\n", soma1);

    // Exemplo 2: Ler N númeris e somá-los (indefinidos)
    int soma2 = 0;

    while (1) {
        int numero;
        scanf("%d", &numero);

        if (numero == 0) {
            break;
        }

        soma2 += numero;
    }

    // Questões: Decisão + Repetição + E. S de Dados

    return 0;
}