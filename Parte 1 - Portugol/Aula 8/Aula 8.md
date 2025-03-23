# 📚 Matriz em Portugol 

## 📌 O que é uma matriz ?

Uma **matriz** é uma estrutura de dados bidimensional, ou seja, ela pode ser vista como uma tabela com linhas e colunas. Cada elemento da matriz é acessado por dois índices: um para a linha e outro para a coluna.  

**🔹 Analogia:**  
Imagine uma **planilha** do Excel. Cada célula da planilha pode ser acessada pela combinação do número da linha e da coluna, como se fosse uma tabela com várias linhas e colunas.   

![Texto](https://userdir.luzerna.ifc.edu.br/~marcelocendron/tutoriais/linguagem_c/04/imagens/matriz.png](https://userdir.luzerna.ifc.edu.br/~marcelocendron/tutoriais/linguagem_c/04/imagens/matriz.png "Matriz")
---


## 📌 Declaração e Inicialização
### 🔹 Declarando uma Matriz  
A matriz é declarada da seguinte maneira:  
```portugol
// Sintaxe: tipo nome[linhas][colunas]
inteiro matriz[3][4] // Matriz de 3 linhas e 4 colunas
```
Isso cria uma matriz chamada matriz com **3 linhas** e **4 colunas**.

### 🔹 Inicializando uma Matriz
Podemos inicializar a matriz ao criá-la, fornecendo os valores para cada célula:
```portugol
inteiro matriz[2][3] = {{1, 2, 3}, {4, 5, 6}}
```
Isso cria a seguinte matriz:
```makefile
Índices:     [0][0] [0][1] [0][2]  
             [1][0] [1][1] [1][2]  

Valores:       1      2      3  
               4      5      6  
```

---

## 📌 Acesso e Manipulação
Para acessar ou manipular os valores em uma matriz, usamos dois índices: um para a linha e outro para a coluna.

### 🔹 Acessando um valor de uma matriz
```portugol
escreva("O valor da célula [0][1] é: ", matriz[0][1]) // Saída: 2
```

### 🔹 Modificando um valor de uma matriz
```portugol
matriz[1][2] = 10 // O valor na célula [1][2] agora será 10
```
Agora, a matriz fica assim:

```makefile
Índices:     [0][0] [0][1] [0][2]  
             [1][0] [1][1] [1][2]  

Valores:       1      2      3  
               4      5     10  
```

---

## 📌 Percorrendo uma Matriz com um Loop
Para percorrer uma matriz, usamos dois laços: um para as linhas e outro para as colunas.

### 🔹 Lendo valores do usuário e preenchendo a matriz
```portugol
inteiro matriz[2][3], i, j

para (i = 0; i < 2; i++) {
    para (j = 0; j < 3; j++) {
        escreva("Digite o valor para [", i, "][", j, "]: ")
        leia(matriz[i][j])
    }
}
```

### 🔹 Exibindo os valores da matriz
```portugol
para (i = 0; i < 2; i++) {
    para (j = 0; j < 3; j++) {
        escreva("Valor na célula [", i, "][", j, "]: ", matriz[i][j], "\n")
    }
}
```

O laço externo é usado para percorrer as linhas. Já o interno é usado para percorrer as colunas. Uma matriz deve ser lida da esquerda para a direita de cima para baixo.

---
## 📌 Passando uma Matriz para Função
Assim como arrays, podemos passar uma matriz para uma função. Quando fazemos isso, ela é passada por referência, permitindo que a função modifique os valores dentro da matriz.

### 🔹 Exemplo: Somar os elementos da matriz
```portugol
funcao inteiro somar_matriz(inteiro mat[2][3]) {
    inteiro soma = 0, i, j
    para (i = 0; i < 2; i++) {
        para (j = 0; j < 3; j++) {
            soma = soma + mat[i][j]
        }
    }
    retorne soma
}

funcao inicio() {
    inteiro matriz[2][3] = {{1, 2, 3}, {4, 5, 6}}
    escreva("A soma dos elementos da matriz é: ", somar_matriz(matriz))
}
```
**Explicação:**
- `mat[2][3]` indica que a função recebe uma matriz de 2 linhas e 3 colunas.
- A função **soma** todos os elementos da matriz e retorna o resultado.
