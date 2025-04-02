#include <stdio.h>

struct aluno {
    char nome[50];
    int idade;
    float nota;
};

// structs declaradas como variáveis normais são passadas para funções por valor
void atualizarNotaValor(struct aluno aluno, float novaNota) {
    aluno.nota = novaNota; 
}

// Já structs declaradas como arrays são passadas para funções por referência.
void atualizarNotaReferencia(struct aluno *aluno, float novaNota) {
    //aluno.nota = novaNota; (para acessar o valor apontado pelo ponteiro do tipo struct é preciso usar a notação de seta (->)).
    aluno->nota = novaNota;
}


int main() {
    
    struct aluno aluno1 = {"Pedro", 18, 8.9};

    atualizarNotaValor(aluno1, 7.5);
    printf("%.2f\n", aluno1.nota);

    atualizarNotaReferencia(&aluno1, 9.5);
    printf("%.2f\n", aluno1.nota);

    return 0;
}