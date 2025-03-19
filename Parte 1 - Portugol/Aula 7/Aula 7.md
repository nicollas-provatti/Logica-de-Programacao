# 📚 Arrays em Portugol 

## 📌 O que é um Array?  
Um **array** é uma estrutura de dados que armazena múltiplos valores do mesmo tipo em uma única variável. Em vez de declarar várias variáveis separadas, usamos um array para organizar os dados de forma eficiente. 


🔹 **Analogia:**  
Imagine uma **caixa de correios** com vários compartimentos numerados. Cada compartimento pode conter uma carta (valor), e podemos acessar cada uma pelo seu número (índice).  

![Texto](https://media.geeksforgeeks.org/wp-content/uploads/20240410101419/Getting-Started-with-Array-Data-Structure.webp "Array")

---

## 📌 Declaração e Inicialização  

### 🔹 Declarando um Array  
```portugol
// Sintaxe: tipo nome[tamanho]
inteiro numeros[5] // Array de 5 posições
```

Isso cria um array chamado numeros com **5 espaços** para armazenar números inteiros.

### 🔹 Inicializando um Array
Podemos definir valores ao criar o array:
```portugol
inteiro numeros[5] = {10, 20, 30, 40, 50}
```
```
Índice:    0   1   2   3   4  
Valores:  10  20  30  40  50  
```
♦️ **Importante:** O primeiro índice é sempre 0.

--- 

## 📌 Acesso e Manipulação
Podemos acessar ou alterar valores de um array usando índices.

### 🔹 Acessando um valor
```portugol
escreva("O primeiro número é: ", numeros[0], "\n") // Saída: 10
```

### 🔹 Modificando um valor
```portugol
numeros[2] = 99 // O número na posição 2 (antes 30) agora é 99
```
Agora, o array fica assim:
```
Índice:    0   1   2   3   4  
Valores:  10  20  99  40  50  
```

---

## 📌 Percorrendo um Array com um Loop
Usamos um **laço** para percorrer todos os elementos do array.

### 🔹 Lendo valores do usuário
```portugol
inteiro numeros[5], i

para (i = 0; i < 5; i++) {
    escreva("Digite um número: ")
    leia(numeros[i])
}
```

### 🔹 Exibindo os valores do array
```portugol
para (i = 0; i < 5; i++) {
    escreva("Número na posição ", i, ": ", numeros[i], "\n")
}
```

---

## 📌 Passando um Array para uma Função
Quando passamos um array para uma função, ele é passado por **referência**, ou seja, a função pode modificar os valores dentro dele.

### 🔹 Exemplo: Somar todos os elementos
```portugol
funcao inteiro somar(inteiro arr[5]) {
    inteiro soma = 0, i
    para (i = 0; i < 5; i++) {
        soma = soma + arr[i]
    }
    retorne soma
}

funcao inicio() {
    inteiro numeros[5] = {1, 2, 3, 4, 5}
    escreva("A soma dos elementos é: ", somar(numeros))
}
```
♦️ **Explicação:**
- `arr[5]` indica que a função recebe um array de tamanho 5.
- A função **soma** os elementos e retorna o resultado.

---