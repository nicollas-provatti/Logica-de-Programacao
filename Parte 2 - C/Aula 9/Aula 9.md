# Linguagem C: uma visão geral

## 📌 Introdução à Linguagem C
A linguagem C é uma das mais utilizadas no mundo da programação, sendo a base para muitas outras linguagens, como C++, Java e Python. Ela é amplamente usada em desenvolvimento de sistemas operacionais, softwares embarcados e programação de alto desempenho.

🔹 **Principais características:**
- **Linguagem compilada** (precisa de um compilador para executar o código).
- **Estruturada e procedural**.
- **Acesso direto à memória**, permitindo controle eficiente do hardware.
- **Portável**, ou seja, pode ser usada em diferentes sistemas operacionais.

---

## 📌 Estrutura da Linguagem
Em C, todo programa segue uma estrutura básica:
```c
#include <stdio.h>  // Biblioteca padrão de entrada e saída

int main() {  // Função principal
    printf("Olá, Mundo!\n");  // Imprime uma mensagem
    return 0;  // Retorna 0, indicando que o programa foi executado com sucesso
}
```
🔹 **Explicação:**

- `#include <stdio.h>` → Importa a biblioteca para entrada e saída de dados.

- `int main()` → Função principal do programa.

- `printf("Olá, Mundo!\n")` → Exibe a mensagem na tela.

- `return 0;` → Finaliza o programa corretamente.

---

## 📌 Tipos de Dados e Variáveis
Em C, precisamos definir o tipo da variável antes de usá-la.

| Tipo	| Tamanho |	Faixa de valores |
|-------|---------|------------------|
| `int`	| 4 bytes |	-2.147.483.648 a 2.147.483.647|
| `float`	|4 bytes  |	1.2E-38 a 3.4E+38 (com ponto flutuante) |
| `double` |	8 bytes |	2.3E-308 a 1.7E+308 (maior precisão) |
| `char` |	1 byte |	0 a 255 (caracteres ASCII) |

🔹 **Exemplo de declaração e atribuição:**
```c
int idade = 20;
float altura = 1.75;
char letra = 'A';
```

--- 

## 📌 Entrada e Saída de Dados

Em C, utilizamos printf para exibir informações e scanf para ler valores do teclado.

**Tabela com os codificadores de formato:**

| Formato	| Tipo de dado |
|-----------|--------------|
|`%d` ou `%i`	| Inteiro (int) |
| `%f`	| Ponto flutuante (float) |
| `%lf` 	| Ponto flutuante duplo (double) |
| `%c`	| Caractere (char) |
| `%s`	|String |

**🔹 Exemplo de entrada e saída:**
```c
int idade;
printf("Digite sua idade: ");
scanf("%d", &idade);
printf("Sua idade é %d anos.\n", idade);
```

--- 

## 📌 Decisão: if-else, else if e switch

**🔹 Uso do if-else:**
```c
int idade = 18;
if (idade >= 18) {
    printf("Maior de idade\n");
} else {
    printf("Menor de idade\n");
}
```

**🔹 Uso do else if:**
```c
int nota = 75;
if (nota >= 90) {
    printf("Aprovado com excelência!\n");
} else if (nota >= 60) {
    printf("Aprovado!\n");
} else {
    printf("Reprovado!\n");
}
```

**🔹 Uso do switch:**
```c
int opcao = 2;
switch (opcao) {
    case 1:
        printf("Opção 1 escolhida\n");
        break;
    case 2:
        printf("Opção 2 escolhida\n");
        break;
    default:
        printf("Opção inválida\n");
}
```

---

## 📌 Laços de Repetição: for, while e do-while

🔹 **Laço** `for`: Usado quando sabemos o número exato de repetições.
```c
for (int i = 0; i < 5; i++) {
    printf("Número %d\n", i);
}
```

🔹 **Laço** `while`: Executa enquanto a condição for verdadeira.
```c
int i = 0;
while (i < 5) {
    printf("Número %d\n", i);
    i++;
}
```

🔹 **Laço** `do-while`: Garante que o bloco será executado pelo menos uma vez.
```c
int i = 0;
do {
    printf("Número %d\n", i);
    i++;
} while (i < 5);
```

---

## 📌 Funções em C

Funções ajudam a modularizar o código, tornando-o mais organizado e reutilizável.

🔹 **Sintaxe de uma função:**
```c
tipo nome_da_funcao(parametros) {
    // Corpo da função
    return valor; // Opcional, dependendo do tipo de retorno
}
```

🔹 **Exemplo de função sem retorno (void):**
```c
void saudacao() {
    printf("Olá, seja bem-vindo!\n");
}
int main() {
    saudacao();
    return 0;
}
```

🔹 **Exemplo de função com retorno:**
```c
int soma(int a, int b) {
    return a + b;
}
int main() {
    int resultado = soma(5, 3);
    printf("Soma: %d\n", resultado);
    return 0;
}
```

---

## 📌 Arrays em C

Um array é uma estrutura que armazena múltiplos valores do mesmo tipo.

**🔹Declaração de um array:**
```c
int numeros[5] = {10, 20, 30, 40, 50};
```

**🔹Acessando elementos:**
```c
printf("Primeiro número: %d\n", numeros[0]); // Saída: 10
```

**🔹 Percorrendo um array:**
```c
for (int i = 0; i < 5; i++) {
    printf("Número: %d\n", numeros[i]);
}
```

**🔹Passando um array para uma função:**
```c
void exibirArray(int arr[], int tamanho) {
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", arr[i]);
    }
}
```

---

## 📌Matrizes em C

Uma matriz é um array bidimensional, armazenando dados em linhas e colunas.

**🔹Declaração de uma matriz:**
```c
int matriz[2][3] = {{1, 2, 3}, {4, 5, 6}};
```

**🔹Acessando elementos:**
```c
printf("Elemento da linha 1, coluna 2: %d\n", matriz[1][2]); // Saída: 6
```

**🔹 Percorrendo uma matriz:**
```c
for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
        printf("%d ", matriz[i][j]);
    }
    printf("\n");
}
```

**🔹Passando uma matriz para uma função:**
```c
void exibirMatriz(int mat[2][3]) {
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            printf("%d ", mat[i][j]);
        }
        printf("\n");
    }
}
```