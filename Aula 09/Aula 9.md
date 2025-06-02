# 📘 Aula 9 - Introdução à C

### 🔵 História da Linguagem C
A linguagem C foi criada no início dos anos 1970 por Dennis Ritchie, nos laboratórios da Bell Labs. Ela surgiu como uma evolução das linguagens B e BCPL, com o objetivo de desenvolver o sistema operacional Unix.
Desde então, C se tornou uma das linguagens mais influentes da computação, servindo como base para muitas outras, como C++, Java e até Python em sua implementação.

---

### 🔵 Características da Linguagem C
- Linguagem de propósito geral: Pode ser usada para sistemas operacionais, jogos, drivers, sistemas embarcados etc.

- **Alto desempenho:** É rápida, próxima do hardware, ideal para aplicações que exigem desempenho.

- **Portabilidade:** Programas escritos em C podem ser compilados em diversos sistemas.

- **Modularidade:** Suporte ao uso de funções para organização do código.

- **Sintaxe enxuta:** Usa poucos comandos e estruturas simples.

- **Controle de memória:** O programador tem total controle da alocação e liberação de memória.

---

### 🔵 Estrutura Básica de um Programa em C
**Todo programa** em C precisa ter a função `main()`, que é o **ponto de entrada** da execução. Abaixo está a estrutura mínima de um programa:
```c
#include <stdio.h>

int main() {
    printf("Olá, mundo!\n");
    return 0;
}
```
**Explicação:**
- `#include <stdio.h> `→ importa a biblioteca padrão de **entrada e saída**.
* `int main()` → função **principal** do programa.
- `printf()` → função usada para **imprimir mensagens** na tela.
* `return 0;` → indica que o programa terminou com **sucesso**.

O programa acima possui duas instruções: `printf("Olá, mundo!\n");` e `return: 0`. Toda instruçõa em C deve terminar com um **ponto e vírgula** , pois é uma parte crucial da sintaxe da linguagem.

**Importante:** Em todo o programa C deve existir apenas uma única função chamada `main()`.

---

### 🔵 Apresentação da IDE: Visual Studio Code (VSCode)
Durante o curso, usaremos o **VSCode**, um editor leve, gratuito e com muitos recursos úteis para programadores.

**Principais recursos:**
- Suporte a C com extensões como C/C++ da Microsoft

- Destaque de sintaxe

- Terminal integrado

- Fácil integração com Git e GitHub

**Instalação:**
O link a seguir vai te direcionar a um vídeo ensinando como baixar e instalar tanto o VScode e o gcc. [Link do Vídeo](https://www.youtube.com/watch?v=ogciab1tEEo). Qualquer dúvida fale com o instrutor.


---

### 🔵 Compilação e Execução com gcc
O **gcc** é o compilador de C mais utilizado em sistemas Unix/Linux, mas também pode ser instalado no Windows (via MinGW).

**Passos para compilar e executar:**
1. **Salvar o código:** Ex: hello.c

2. **Abrir o terminal** (cmd/powershell ou terminal do VSCode)

3. **Compilar com o comando:**
```bash
gcc hello.c -o hello
```
Isso gera um executável chamado hello.

4. **Executar:**
```bash
./hello
```

---

### 🔵 Tipos de Dados Primitivos
A linguagem C possui **tipos de dados básicos** que determinam o tipo de valor que pode ser armazenado em uma variável.

|Tipo	|Descrição	|
|-------|-----------|
|`int`	|Armazena números inteiros|
|`float`	|Armazena números reais (menos preciso)|
|`double`	|Armazena números reais (mais preciso)|
|`char`	|Armazena um único caractere|
|`void`	|Representa ausência de valor	Usado em funções|

---

### 🔹 Operador de Endereço

| Operador | Significado                                       | Exemplo |
|----------|---------------------------------------------------|---------|
| `&`      | Retorna o endereço de memória de uma variável     | `&x`    |

É usado na função `scanf()` na hora de ler os dados.

---

### 🔵 Entrada e Saída de Dados

#### 🔹 Função `printf()`
Usada para **exibir mensagens** e valores no terminal. É possível combinar textos com variáveis usando especificadores de formato.

```c
#include <stdio.h>

int main() {
    int idade = 20;
    printf("Idade: %d\n", idade);
    return 0;
}

```

| Especificador | Tipo de dado           |
|---------------|------------------------|
| `%d`          | `int`                  |
| `%f`          | `float`                |
| `%lf`         | `double`               |
| `%c`          | `char`                 |
| `%s`          | `string` (`char[]`)    |
| `%p`          | `endereço`             |

**Exemplo com vários tipos:**
```c
#include <stdio.h>

int main() {
    float nota = 9.5;
    char letra = 'A';

    printf("Nota: %.2f - Conceito: %c\n", nota, letra);

    return 0;
}
```

O `\n` é usado para **pular uma linha** no final da impressão. Já o `%.2f` é utilizado para formatar números decimais, arredondando o valor e exibindo apenas duas casas decimais. O número após o ponto (`.2`) indica quantas casas decimais serão mostradas na saída.

#### 🔹 Função `scanf()`
Usada para **ler dados digitados pelo usuário**. É necessário usar o símbolo `&` para passar o endereço da variável onde o valor será armazenado (exceto em strings).

```c
#include <stdio.h>

int main() {
    int idade;
    scanf("%d", &idade);
    return 0;
}

```

**Exemplo completo:**
```c
#include <stdio.h>

int main() {
    int idade;
    float altura;

    printf("Digite sua idade: ");
    scanf("%d", &idade);
    printf("Digite sua altura: ");
    scanf("%f", &altura);

    printf("Idade: %d - Altura: %.2f\n", idade, altura);

    return 0;
}
```

Também é possível fazer assim:

```c
#include <stdio.h>

int main() {
    int idade;
    float altura;

    printf("Digite sua idade e altura:\n");
    scanf("%d %f", &idade, &altura);

    printf("Idade: %d - Altura: %.2f\n", idade, altura);

    return 0;
}

```

**Atenção:** Em strings (vetores de char), o & não é necessário:
```c
#include <stdio.h>

int main() {
    char nome[50];
    scanf("%s", nome);
    return 0;
}
```
O tópico sobre strings será abordado mais pra frente.

---

### 🔵 Decisão em C
A única mudança em relação ao que apredemos é a escrita:
- `se` → `if`
- `senao` → `else`
- `senao-se` → `else-if`
- `escolha-caso` → `switch-case`
- `pare` → `break`
- `caso contrario` → `default`

#### 🔹 Uso do if-else:
```c
int idade = 18;
if (idade >= 18) {
    printf("Maior de idade\n");
} else {
    printf("Menor de idade\n");
}
```

#### 🔹 Uso do else if:
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

#### 🔹 Uso do switch:
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

## 🔵 Laços de Repetição
A única mudança em relação ao que apredemos será a escrita:
- `para` → `for`
- `enquanto` → `while`
- `faca-enquant`o → `do-while`

#### 🔹 Laço `for
Usado quando sabemos o número exato de repetições.
```c
for (int i = 0; i < 5; i++) {
    printf("Número %d\n", i);
}
```

#### 🔹Laço `while`
Executa enquanto a condição for verdadeira.
```c
int i = 0;
while (i < 5) {
    printf("Número %d\n", i);
    i++;
}
```

#### 🔹 Laço `do-while`
Garante que o bloco será executado pelo menos uma vez.
```c
int i = 0;
do {
    printf("Número %d\n", i);
    i++;
} while (i < 5);
```

---

### 🔵 Funções em C

Funções ajudam a modularizar o código, tornando-o mais organizado e reutilizável.

**Sintaxe de uma função:**
```c
tipo nome_da_funcao(parametros) {
    // Corpo da função
    return valor; // Opcional, dependendo do tipo de retorno
}
```

**Exemplo de função sem retorno (void):**
```c
void saudacao() {
    printf("Olá, seja bem-vindo!\n");
}
int main() {
    saudacao();
    return 0;
}
```

**Exemplo de função com retorno:**
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

### 🔵 Arrays em C

Um array é uma estrutura que armazena múltiplos valores do mesmo tipo.

**Declaração de um array:**
```c
int numeros[5] = {10, 20, 30, 40, 50};
```

**Acessando elementos:**
```c
printf("Primeiro número: %d\n", numeros[0]); // Saída: 10
```

**Percorrendo um array:**
```c
for (int i = 0; i < 5; i++) {
    printf("Número: %d\n", numeros[i]);
}
```

**Passando um array para uma função:**
```c
void exibirArray(int arr[], int tamanho) {
    for (int i = 0; i < tamanho; i++) {
        printf("%d ", arr[i]);
    }
}
```

---

### 🔵 Matrizes em C

Uma matriz é um array bidimensional, armazenando dados em linhas e colunas.

**Declaração de uma matriz:**
```c
int matriz[2][3] = {{1, 2, 3}, {4, 5, 6}};
```

**Acessando elementos:**
```c
printf("Elemento da linha 1, coluna 2: %d\n", matriz[1][2]); // Saída: 6
```

**Percorrendo uma matriz:**
```c
for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 3; j++) {
        printf("%d ", matriz[i][j]);
    }
    printf("\n");
}
```

**Passando uma matriz para uma função:**
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

---