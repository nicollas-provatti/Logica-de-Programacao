# String

### 📌 Definição de string
Em C, uma string é um conjunto de **caracteres** armazenados em um array do tipo char, terminados pelo caractere nulo (\0). Esse caractere indica o fim da string, pois a linguagem C não possui um tipo de dado específico para strings como outras linguagens.

![Alt text](https://www.scaler.com/topics/images/character-array-in-c-thumbnail.webp "string")

---

### 📌 Declaração e Inicialização
Uma string pode ser declarada e inicializada de três formas principais:
```c
char nome[11] = "Computação"; // tamanho especifico

char nome[] = "Computação"; 
```

---

### 📌 Acesso e Manipulação
Podemos acessar os caracteres de uma string como em um array:
```c
char nome[] = "Pedro";

// Acesso
char letra1 = nome[0];
char letra2 = nome[1];

// Manipulação
nome[0] = 'C';
```

---

### 📌 Estouro de Buffer (Buffer Overflow)
O estouro de buffer ocorre quando tentamos armazenar **mais** caracteres do que a memória alocada permite. Isso pode corromper dados adjacentes na memória, causando comportamentos inesperados.

#### Exemplo:
```c
char nome[5]; 
strcpy(nome, "Computacao"); // ERRO: Copiando mais caracteres do que o espaço disponível
```
Esse problema pode ser evitado garantindo que o espaço seja suficiente ou utilizando strncpy, que permite definir um limite de cópia.

---

### 📌 Leitura de String (scanf e fgets)
Para ler strings do usuário, podemos usar `scanf` ou `fgets`:

#### scanf():
```c
char nome[50];

printf("Digite seu nome: ");

scanf("%s", nome); // para de ler quando encontrado um espaço em branco

scanf("%[^\n]", nome); // não verificar se houve estouro de buffer

scanf("%49[^\n]", nome); // Jeito ideal
```

#### fgets():
```c
char nome[50];

printf("Digite seu nome: ");

fgets(nome, 50, stdin);
// Lê até n-1 caracteres e adiciona \0.
// Inclui a nova linha (\n) no final, se houver espaço.

//Pode ser combinado com strcspn para remover o \n:
nome[strcspn(nome, "\n")] = '\0';

```

---

### 📌 Biblioteca <string.h>: Principais Funções
A biblioteca <string.h> fornece várias funções úteis para manipulação de strings.

#### `strlen` (Tamanho da string)
```c
char palavra[] = "Engenharia";
printf("Tamanho: %lu\n", strlen(palavra)); // Saída: 10
```

#### `strcpy` (Cópia de strings)
```c
char destino[20];
strcpy(destino, "Teste");
printf("%s\n", destino); // Saída: Teste
```

#### `strcat` (Concatenação de strings)
```c
char str1[20] = "Olá, ";
char str2[] = "Mundo!";
strcat(str1, str2);
printf("%s\n", str1); // Saída: Olá, Mundo!
```

#### `strcmp` (Comparação de strings)
```c
char str1[] = "Abacaxi";
char str2[] = "Banana";
int resultado = strcmp(str1, str2);
```
- Retorna 0 se forem **iguais**.
- Retorna **negativo** se str1 < str2 na ordem alfabética.
- Retorna **positivo** se str1 > str2 na ordem alfabética.
