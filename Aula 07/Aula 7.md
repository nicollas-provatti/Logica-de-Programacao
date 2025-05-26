# 📘 Aula 7 – Array

### 🔍 O que é array ?
Um array é uma estrutura de dados que armazena **múltiplos valores** do mesmo tipo em posições sequenciais de memória. O acesso a cada elemento é feito por meio de um índice numérico, **começando do zero**.

![](https://media.geeksforgeeks.org/wp-content/uploads/20240410101419/Getting-Started-with-Array-Data-Structure.webp)

---

### 🔵 Operações com arrays

**Declaração:**
A declaração de um array em Portugol define o tipo de dado dos elementos, o número de elementos que o array poderá armazenar e qual será o nome do array.
```portugol
inteiro numeros[5]
```
A instrução acima declara um array chamado `numeros` que pode armazenar até 5 valores do tipo `inteiro`. Isso equivale a declarar cinco variáveis inteiras separadas, mas de forma mais organizada e otimizada, permitindo trabalhar com conjuntos de dados semelhantes de maneira mais eficiente.

**Inicialização:**
A inicialização de um array pode ser feita no momento da declaração. Isso permite definir os valores iniciais dos elementos do array.
```portugol
inteiro numeros[5] = {1, 2, 3, 4, 5}
```

**Acesso:**
Os elementos de um array podem ser acessados e manipulados usando o índice, que começa em 0.
```portugol
inteiro numeros[5] = {1, 2, 3, 4, 5} 
inteiro primeiro = numeros[0]
numeros[2] = 6 
```
O comando `numeros[0]` acessa o primeiro elemento do array, nesse caso o valor `1` e atribui esse valor a variável `primeiro`. O próximo comando, `numeros[2] = 6`, está atribuindo um novo valor para a posição `2` do do array `numeros` que, antes era `3` e que agora será `6`.

---

### 🔵 Percorrimento e manipulação de arrays
É comum utilizar **laços** (loops) para acessar e manipular todos os elementos de um array. Isso torna o código mais enxuto e eficiente. Caso contrário, seria necessário acessar cada posição manualmente, o que seria trabalhoso e repetitivo — por exemplo, em um array com 10 elementos, seria preciso escrever o comando `nome_array[indice]` dez vezes.

**Exemplo:**
```portugol
para (inteiro i = 0; i < 5; i++) {
    escreva(numeros[i], " ")
}
```
Isso imprime todos os elementos do array `numeros`. Também é possível fazer a mesma coisa para ler os valores de um array.

```portugol
para (inteiro i = 0; i < 5; i++) {
    leia(numeros[i])
}
```

**Exemplo completo:**
```portugol
funcao inicio() {
    inteiro numeros[5]

    // Leitura dos números
    para (inteiro i = 0; i < 5; i++) {
        escreva("Digite um número: ")
        leia(numeros[i])
    }

    // Impressão dos números
    para (inteiro i = 0; i < 5; i++) {
        escreva(numeros[i], " ")
    }
}
```

---

### 🔵 Funções e arrays
Um tópico importante a ser adicionado é como passar arrays como parâmetros para funções. Em Portugol, quando um array é passado para uma função, na verdade é passado o **endereço do primeiro elemento** do array (passagem por referência). Isso permite que a função modifique os elementos do array original (diferente das variáveis simples que são passadas por valor para as funções). Como os arrays são armazenados de forma contígua na memória, tendo o endereço do primeiro elemento é possível acessar todos os demais.

Para declarar uma função que recebe um array como parâmetro, utiliza-se a seguinte sintaxe. Note que, na declaração da função, você pode usar `tipo nomeArray[]`.

```c
void nomeDaFuncao(tipo nomeArray[], int tamanho);
```

Aqui, `tipo` é o tipo de dado do array (como `int`, `float`, `char`, etc.), `nomeArray` é o nome do array e `tamanho` é o número de elementos, passado como argumento adicional para que a função saiba quantos elementos pode acessar. Ambas as formas de declarar o parâmetro são corretas.

**Exemplo:**
```portugol
// Função que dobra os valores de um vetor
funcao dobrarValores(inteiro numeros[], inteiro tamanho) {
    para (inteiro i = 0; i < tamanho; i++) {
        numeros[i] = numeros[i] * 2
    }
}

funcao inicio() {
    inteiro dados[5] = {1, 2, 3, 4, 5}

    escreva("Antes da função:\n")
    para (inteiro i = 0; i < 5; i++) {
        escreva(dados[i], " ")
    }

    // Chamada da função
    dobrarValores(dados, 5)

    escreva("\nDepois da função:\n")
    para (inteiro i = 0; i < 5; i++) {
        escreva(dados[i], " ")
    }
}

```
A função `dobrarValores` recebe dois parâmetros: o array `numeros[]` e o valor `tamanho`, que representa a quantidade de elementos do array. Dentro da função, usamos um `para` para acessar cada elemento e dobrar seu valor. Como o array é passado por referência (ou seja, o endereço do primeiro elemento), qualquer modificação feita dentro da função afeta o array original no `inicio`.

---

### 🔵 Dicas importantes
- Sempre valide o tamanho do vetor antes de acessar posições.
* Lembre-se de que os índices começam em **zero**.
- Vetores têm tamanho fixo — uma vez declarado, não pode ser redimensionado.
* Para grandes volumes de dados, é melhor usar alocação dinâmica (veremos mais adiante).