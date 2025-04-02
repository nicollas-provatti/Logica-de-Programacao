#include <stdio.h>
#include <string.h>

struct aluno {
    char nome[50];
    int idade;
    float nota;
};


int main() {

    struct aluno aluno1 = {"João", 17, 8.6};

    // Acessando os valores: para acesar os valores usamos o nome da variável e a notação de ponto (.)
    printf("%s\n", aluno1.nome);
    printf("%d\n", aluno1.idade);
    printf("%.2f\n", aluno1.nota);

    // Modificando os valores:
    //aluno1.nome = "Bruno"; (Não é possível atribuir o valor para uma string dessa maneira. É preciso usar a função strcpy())
    strcpy(aluno1.nome, "Bruno");
    aluno1.idade = 22;
    aluno1.nota = 6.7;

    // Acessando valores após a modificação
    printf("%s\n", aluno1.nome);
    printf("%d\n", aluno1.idade);
    printf("%.2f\n", aluno1.nota);

    return 0;
}