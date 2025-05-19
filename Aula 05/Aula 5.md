# 📘 Aula 5 – Função 1

### 🔍 O que são funções ?
Funções são **blocos de código** que **executam tarefas específicas** e podem ser **reutilizados** em diferentes partes do programa. Elas ajudam a modularizar o código, tornando-o mais organizado e fácil de entender.

---

### 🔵 Definição de funções
Definição de funções é onde você **especifica o que a função realmente** faz. A definição inclui o corpo da função, que contém o código a ser executado.

**Sintaxe:**
```portugol
funcao tipo_retorno nome_da_funcao(parâmetros) {
   // Corpo da função
   // Código a ser executado
   retorne valor;
}
```

O `valor` será colocado apenas quando a função tiver um tipo de retorno diferente de `vazio`.

**Exemplo:**
```portugol
funcao inteiro somar(inteiro a, inteiro b) {
    retorne a + b
}
```

Onde:
- `funcao` é a palavra reservada para criar uma função
- `inteiro` é o tipo do retorno da função.
- `somar` é o nome da função.
- (`inteiro a, inteiro b`) são os parâmetros que a função aceita.


---

### 🔵 Chamadas de funções
Chamada de função é o processo de **utilizar uma função** em uma parte do seu código. Quando você chama uma função, o controle do programa é transferido para a função, que executa seu código e, em seguida, retorna o controle para o ponto onde foi chamada.

**Sintaxe:**
```c
nome_função(parâmetros)
```

**Exemplo:**
Usando a função soma definida anteriormente, você pode chamá-la da seguinte maneira:

```portugol
programa {
    funcao inicio() {
        inteiro resultado = somar(3, 4)
        escreva("Soma: ", resultado)
    }
}
```

Onde:
- `somar(3, 4)` chama a função `somar()` com os argumentos 3 e 4.
- A função retorna **7**, que é armazenado na variável `resultado`.
- A função `escreva()` exibe o resultado na tela.

**Exemplo completo:**

```portugol
programa {

    funcao inteiro somar(inteiro a, inteiro b) {
        retorne a + b
    }

    funcao inicio() {
        inteiro resultado = somar(3, 4)
        escreva("Soma: ", resultado)
    }
}
```

---

### 🔵 Diferença entre parâmetros e argumentos
Na programação existe uma diferença entre argumentos e parâmetros.

#### 🔹 **Parâmetros:**
Parâmetro(s) é/são a(s) **variável(veis)** usada(s) na definição de uma função que atuam como espaço(s) reservado(s) para os valores que serão passados para a função quando ela for chamada. Eles funcionam como “caixas” que recebem os dados enviados pela chamada da função, permitindo que a função trabalhe com esses valores internamente. Os parâmetros são usados para definir o tipo e a quantidade de dados que uma função pode receber. Eles são especificados na declaração ou definição da função. Por exemplo, na função `somar()` a e b são parâmetros.

#### 🔹 **Argumentos:**
Argumento é o **valor real** que você passa para uma função no momento em que ela é chamada. Os argumentos são fornecidos na chamada da função e servem para preencher os parâmetros definidos na declaração da função. Por exemplo, na chamada `somar(3, 4)`, os valores **3** e **4** são os **argumentos** que serão atribuídos aos parâmetros da função `somar()`.

**Resumindo:**
- Parâmetros são como variáveis na definição da função.
- Argumentos são os valores reais fornecidos às funções quando são chamadas.

---

### 🔵 Passagem por valor
Quando você passa uma variável simples para uma função, o **valor dela é copiado** para um novo espaço de memória. Isso significa que **a função trabalha com a cópia**, não com a variável original. Por isso, qualquer alteração feita dentro da função **não afeta o valor original** fora da função.

**Exemplo:**

```portugol
programa {

    funcao vazio dobrar(inteiro x) {
        x = x * 2
        escreva("Dentro da função: ", x)
    }

    funcao inicio() {
        inteiro numero = 5
        dobrar(numero)
        escreva("Fora da função: ", num)
    }
}
```

**Saída:**
```kotlin
Dentro da função: 10
Fora da função: 5
```

---

### 🔵 O comando `retorne`
O comando `retorne` termina a execução da função e retorna o controla para  instrução do código de chamada.
Se, após a palavra `retorne`, houver uma expressão, o valor é retornado à função que chama. Esse valor é convertido para o tipo da função, especificado na sua declaração.
No exemplo da função `somar()` após o comando `retorne` tínhamos a expressão a + b que é o valor que a função retorna. Funções do tipo `vazio` apesar de não terem retorno, podem ter o comando `retorne` porém sem expressão após o comando, servindo apenas para finalizar a função.

---

### 🔵 Tipos de funções
O tipo de uma função é definido pelo tipo de valor que ela retorna por meio do comando `retorne`, Uma função é do tipo `real` quando retorna um valor do tipo `real`.
Os tipos de funções são os mesmo tipos que o das variáveis, exceto quando a função retorna nada. Nesse caso, ela é do tipo `vazio`.

As funções podem ser classificadas em:

#### 🔹 **Sem retorno e sem parâmetro:**
```portugol
funcao vazio mensagem() {
    escreva("Olá, Mundo!")
}
```

#### 🔹 **Sem retorno e com parâmetros::**
```portugol
funcao void exibirNumero(inteiro num) {
    escreva("Número: ", num)
}
```

#### 🔹 **Com retorno e sem parâmetros:**
```portugol
funcao inteiro obterNumero() {
    retorne 42
}
```

#### 🔹 **Com retorno e com parâmetros:**
```portugol
funcao inteiro multiplicar(inteiro x, inteiro y) {
    retorne x * y;
}
```

---

### 🔵 Escopo de variáveis
O escopo de uma variável refere-se à parte do programa onde a variável **pode ser acessada**. Em Portugol, o escopo de variáveis pode ser categorizado em dois tipos principais: escopo **local** e escopo **global**.

#### 🔹 **Escopo local:**
Uma variável tem escopo local se for declarada dentro de uma função ou bloco. Essas variáveis são acessíveis apenas dentro da função ou bloco onde foram declaradas e não podem ser usadas fora dele. Por exemplo:

**Exemplo:**
```portugol
programa {

    funcao vazio somar(inteiro a, inteiro b) {
        inteiro resultado = a + b
        escreva("Soma: ", resultado)
    }

    funcao inicio() {
        somar(2, 3)
        escreva("Soma: ", resultado)  // ❌ Erro de compilação
    }
}
```

A variável `resultado` é declarada dentro da função `exemplo()` e, por isso, só pode ser usada dentro dessa função. Tentar acessar `resultado` fora dela resultará em um erro de compilação, pois essa variável foi criada dentro do escopo local da função `exemplo()`, ou seja, ela só existe e é reconhecida pelo compilador enquanto o código estiver dentro dessa função.

#### 🔹 **Escopo global:**
Uma variável tem escopo global se for declarada **fora de todas as funções**, geralmente no início do arquivo de código. Essas variáveis são acessíveis em qualquer parte do programa, ou seja, em todas as funções após a sua declaração. Por exemplo:

**Exemplo:**
```portugol
programa {

    inteiro a = 2
    inteiro b = 2
    inteiro resultado

    funcao vazio somar() {
        resultado = a + b
        escreva("Soma: ", resultado)
    }

    funcao inicio() {
        somar()
        escreva("Soma: ", resultado)
    }
}
```

As variáveis `a`, `b` e resultado são declaradas fora de qualquer função, o que significa que são acessíveis por todas as funções do programa. A função `somar()` realiza a soma de `a` e `b`, armazena o resultado na variável global resultado e o imprime. Em seguida, no `inicio()`, a função `somar()` é chamada e o valor da variável resultado também é impresso.

⚠️ **Importante:**
Embora o uso de variáveis globais possa parecer conveniente, ele traz **alguns riscos importantes**. Como essas variáveis podem ser acessadas e modificadas por qualquer parte do código, torna-se difícil controlar onde e quando seus valores estão sendo alterados. Isso pode causar **efeitos colaterais** inesperados, dificultando a manutenção, depuração e reutilização do código. Por isso, o uso de variáveis globais deve ser evitado sempre que possível, priorizando o uso de variáveis locais e passagem de parâmetros para manter o código mais seguro, organizado e previsível.

**Observação:**
O escopo de variáveis também pode ser limitado a blocos de código dentro de funções, como dentro de loops `para`, `enquanto` e blocos condicionais `se`. Por exemplo:

```portugol
programa {
    funcao inicio() {
        para (inteiro i = 0; i < 5; i++) {
            escreva("Valor de i: ", i, "\n")
        }
        escreva("Valor de i: ", i, "\n")
    }
}
```

A variável `i` é declarada dentro do loop for e só pode ser acessada dentro do loop. Tentar acessar `i` fora do loop resultará em um erro de compilação, pois `i` não está no escopo.

---

### 🔵 Reutilização de Código com Funções
As funções permitem que você:

- Evite repetição de código
- Organize o programa em partes lógicas
- Facilite manutenção e testes

**Exemplo de reutilização:**

```portugol
programa {

    funcao real media(real a, real b) {
        retorne (a + b) / 2
    }

    funcao inicio() {
        real m1 = media(7, 8)
        real m2 = media(5, 6)
    }
}
```

---

### 🔵 Boas Práticas na Modularização
- Dê nomes significativos às funções (`calcular_area`, `exibir_menu`)
* Uma função deve fazer **apenas uma coisa**
- Evite funções muito grandes
* Prefira **funções curtas e reutilizáveis**
- Use comentários para explicar o propósito de cada função

---