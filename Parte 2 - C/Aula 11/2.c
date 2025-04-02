#include <stdio.h>

// Declarando uma struct
struct aluno {
    char nome[50];
    int idade;
    float nota;
};

int main() {
    // Criando uma variável do tipo "struct aluno"
    struct aluno aluno1;

    // Inicializando uma variável do tipo "struct aluno"
    struct aluno aluno2 = {"Pedro", 20, 7.5};

    // A instrução faz as seguintes atribuições:
    //nome = "Pedro";
    //idade = 20;
    //nota = 7.5;

    return 0;
}