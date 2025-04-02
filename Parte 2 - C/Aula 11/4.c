#include <stdio.h>

struct aluno {
    char nome[50];
    int idade;
    float nota;
};

int main() {

    // Preenchendo uma struct com scanf()
    struct aluno aluno1;
    printf("Nome: ");
    scanf("%49[^\n]", aluno1.nome);
    getchar();
    printf("Idade: ");
    scanf("%d", &aluno1.idade);
    printf("Nota: ");
    scanf("%f", &aluno1.nota);

    // Acessando os valores:
    printf("Dados do aluno 1\n");
    printf("Nome: %s\n", aluno1.nome);
    printf("Idade: %d\n", aluno1.idade);
    printf("Nota: %.2f\n", aluno1.nota);

    // Exercício de Fixação

    return 0;
}