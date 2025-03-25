// Estrutura de um programa em C

// O primeiro passado é adicionar as diretivas de pré-processamento, indicada pelo hastag (#). Elas servem para: 
// A diretiva include é usada para importa bliotecas. Uma biblioteca é um conjunto de funções.
// A biblioteca stdio.h serve para operações de entrada e saída de dados.
#include <stdio.h> 

// Todo código em C começa pela função main. Só é possível ter uma função main por arquivo.
int main() {
    // Função de saída da biblioteca stdio.h.
    printf("Olá, mundo!\n");

    return 0; // Indifica que o programa foi finalizado com sucesso
}