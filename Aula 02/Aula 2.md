# 📘 Aula 2 - Conceitos Básicos

### 🔍 O que são dados ?
Em programação, **dados** são **informações** que um programa **recebe**, **processa** ou **gera**. Esses dados podem vir de diferentes fontes:

- Um valor digitado pelo usuário

- Um número calculado pelo programa

- Um conteúdo vindo de um arquivo ou da internet

- Um texto exibido na tela

**Exemplos de dados:**
`15` (um número)

`"Olá, mundo!"` (um texto)

`true` ou `false` (um valor lógico)

Um dado **sozinho** não tem muito valor, mas quando o usamos dentro de um **algoritmo**, podemos processar, comparar, armazenar e gerar **informações úteis** a partir deles.

---

### 🔵 Tipos de Dados
Para que um computador possa **entender**, **armazenar** e **manipular** os dados corretamente, é necessário **classificá-los em tipos**, chamados de tipos de dados.

Esses tipos definem o que pode ser feito com o dado e quanto espaço ele ocupa na memória. Os principais tipos de dados em Portugol são:

|Tipo	|Descrição	|Exemplo|
|-------|-----------|-------|
|`inteiro`|	Números inteiros	|`10`, `-5`, `0`|
|`real`	|Números com casas decimais	|`3.14`, `-0.5`|
|`caractere`	|Um único símbolo ou letra	|`'A'`, `'1'`, `'%'`|
|`logico`	|Valores lógicos (booleanos)	|`verdadeiro`, `falso`|
|`cadeia`	|Conjunto de caracteres (texto)	|`"Olá"`, `"123abc"`|

**Observação:**
O programar, precisa dizer ao computador qual tipo de dado será usado, pois isso define como ele deve armazenar e interpretar a informação.

---

### 🔵 Variáveis e constantes

#### 🔍 O que são variáveis ?
Uma **variável** é como uma **caixa com nome**, onde podemos guardar um valor para usar mais tarde no programa. Esse valor pode ser **lido**, **alterado** ou **substituído** durante a execução.

**📦 Imagine assim:** Se você quiser guardar a idade de uma pessoa, pode criar uma variável chamada idade e colocar um número lá dentro.

<br>

#### 🔹 **Declaração de variáveis:**
Declarar uma variável é o mesmo que **criar uma variável**. Ao fazer isso, um espaço na memória é reservado para armazenar algum dado. Durante a criação da variável, é necessário informar o **tipo de dado** que ela vai guardar e **dar um nome** (identificador) a ela. Esse nome será usado para acessar o valor armazenado sempre que for necessário.

**Exemplo:**
```portugol
inteiro numero
```

#### 🔹 **Atribuição de variáveis:**
Após criar uma variável, é possível **guardar uma informação** dentro dela. Esse processo é chamado de atribuição.

**Exemplo:**
```portugol
inteiro numero
numero = 10
```

#### 🔹 **Inicialização de variráveis:**
Quando a declaração e a atribuição são feitas na **mesma linha**, chamamos esse processo de inicialização. Inicializar uma variável significa atribuir um valor a ela **no momento em que ela é criada**.

**Exemplo:**
```portugol
inteiro numero = 10
```
<br>

#### 🔹 Regras para Nomeação de Variáveis
✅ **Boas práticas:**

- Nomes devem ser descritivos e fáceis de entender (`idade`, `precoProduto`).
- Usar letras minúsculas e `camelCase` para múltiplas palavras (`quantidadeMaxima`).
- Utilizar apenas letras, números e o caractere "_" (`nome_usuario`).
- Sempre começar com uma letra (não pode iniciar com números ou caracteres especiais).

❌ **Evite:**

- Usar acentos e caracteres especiais (`preço`, `número` ❌).
- Começar com números (`1idade`, 2no`me ❌).
- Utilizar palavras reservadas da linguagem (`inteiro`, `real` ❌).

<br>

#### 🔹 Constantes
São variáveis cujo valor **não pode ser alterado** após a atribuição. Para declarar uma constante usamos a palavra reservada `const`.

**Exemplo:**
```portugol
const inteiro NUMERO = 10;

NUMERO = 12; // ❌ Erro: não é possível reatribuir uma constante
```
Existe uma convenção em programação na qual os nomes (identificadores) de constantes são escritos em **letras maiúsculas**. Essa prática ajuda a diferenciar constantes de outras variáveis no código.

---

### 🔵 Operadores
Os operadores são símbolos que instruem o compilador a **realizar operações específicas** com variáveis e valores. Em Portugol, os operadores estão divididos em várias categorias:

#### 🔹 Aritméticos
Utilizados para **operações matemáticas** básicas:

|Operador | Operação       | Exemplo|
|---------|----------------|--------|
| `+`       | Soma         |  `x + y` |
|`-`       | Subtração      | `x - y` |
| `*`       | Multiplicação  | `x * y` |
| `/`       | Divisão        | `x / y` |
| `%`       | Módulo (resto) |  `x % y` |

#### 🔹 Atribuição
Usados para **atribuir valores** a variáveis:

|Operador | Operação       | Exemplo|
|---------|----------------|--------|
| `=`       | Atribuição simples         |  `a = 10` |

#### 🔹 Aritméticos de Atribuição
São formas **resumidas** de aplicar uma operação e atribuir o resultado na mesma variável:

| Operador | Equivalente a | Exemplo   |
|----------|----------------|-----------|
| `+=`     | `x = x + y`    | `x += 2;` |
| `-=`     | `x = x - y`    | `x -= 3;` |
| `*=`     | `x = x * y`    | `x *= 4;` |
| `/=`     | `x = x / y`    | `x /= 2;` |
| `%=`     | `x = x % y`    | `x %= 5;` |

#### 🔹 Relacionais
**Comparam valores** e retornam 1 (verdadeiro) ou 0 (falso):

| Operador | Significado       | Exemplo   |
|----------|-------------------|-----------|
| `==`     | Igual a           | `a == b`  |
| `!=`     | Diferente de      | `a != b`  |
| `>`      | Maior que         | `a > b`   |
| `<`      | Menor que         | `a < b`   |
| `>=`     | Maior ou igual    | `a >= b`  |
| `<=`     | Menor ou igual    | `a <= b`  |


#### 🔹 Lógicos
Usados para **expressões booleanas** (verdadeiras ou falsas):

| Operador | Significado         | Exemplo             |
|----------|---------------------|---------------------|
| `&&`     | E lógico (AND)      | `(x > 0 && x < 100)`|
|  `\|\|`     |  OU lógico (OR)     | `(x > 0 \|\| x < 100)`|
| `!`      | NÃO lógico (NOT)    | `!(x == 0)`         |

#### 🔹 Incremento e Decremento
Servem para **adicionar ou subtrair 1** de uma variável, com dois formatos:

| Operador | Descrição       | Exemplo            |
|----------|------------------|--------------------|
| `++`     | Incrementa em 1  | `x++;` ou `++x;`   |
| `--`     | Decrementa em 1  | `x--;` ou `--x;`   |

A diferença está na **ordem da execução**:
- `++x`: incrementa antes de usar o valor
- `x++`: incrementa depois de usar o valor

---

#### 🔵 Precedência de Operadores
A ordem em que os operadores são avaliados é importante para garantir que o resultado esteja correto.

**Ordem da Precedência (maior para menor):**

1. `()` – Parênteses

2. `!`

3. `*`, `/`, `%`

4. `+`, `-`

5. `<`, `>`, `<=`, `>=`

6. `==`, `!=`

7. `&&`

8. `||`

Use parênteses para garantir clareza:
```portugol
inteiro resultado = (2 + 3) * 4 // resultado = 20
```

---

### 🔵 Entrada e saída de dados
Todo programa interage com o usuário de alguma forma — seja para receber dados (entrada) ou mostrar resultados (saída). Em Portugol, usamos as funções `leia()` e `escreva()`.

#### 🔹 Função `leia()`
A função `leia()` permite **receber um valor do usuário** e guardar esse valor em uma variável.

**Exemplo:**
```portugol
programa {
  funcao inicio() {
    inteiro idade
    leia(idade)

  }
}
```
Neste exemplo, a função `leia()` solicita um dado para o usuário e esse dado é armazenado na variável `idade`

#### 🔹 Função `escreva()`
A função `escreva()` serve para **mostrar algo na tela**. Pode ser texto, números ou o valor de variáveis.

**Exemplo:**
```portugol
programa {
  funcao inicio() { 
    escreva("Olá, mundo!")
  }
}
```

Você também pode misturar textos e variáveis:

```portugol
programa {
  funcao inicio() { 
    inteiro idade
    leia(idade)
    escreva("Sua idade é: ", nome)
  }
}
```

**Exemplo completo:**
```portugol
programa {
    funcao inicio() {
        cadeia nome
        inteiro idade

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite sua idade: ")
        leia(idade)

        escreva("Olá, ", nome, "! Você tem ", idade, " anos.\n")
    }
}
```

**Saída:**
```yaml
Digite seu nome: João
Digite sua idade: 18
Olá, João! Você tem 18 anos.
```

O `\n` é usado para **pular uma linha** no final da impressão.

---