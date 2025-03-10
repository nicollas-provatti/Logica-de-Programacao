# 📌 Funções em Portugol  

## 🧐 O que são funções?  
Funções são blocos de código reutilizáveis que executam uma tarefa específica. Elas ajudam a organizar e modularizar o código, evitando repetições.  

📌 **Analogia:** Imagine uma função como uma "máquina" dentro do seu programa. Você dá uma entrada (parâmetro), ela processa a informação e retorna uma saída.  

Exemplo:  
- Uma função de somar recebe dois números e retorna a soma.  
- Uma função de converter temperatura recebe um valor em Celsius e retorna Fahrenheit.  

---

## 🏗️ Definição e Chamada de Função  
Uma função é definida com a palavra-chave `funcao`, seguida do nome e dos parênteses `()`.  

🔹 **Exemplo de função sem retorno e sem parâmetros:**  
```portugol
programa {
    funcao ola() {
        escreva("Olá, mundo!\n")
    }

    funcao inicio() {
        ola() // Chamando a função
    }
}
```

#### 📌 Explicação:
- funcao ola() → Declaração da função.
- escreva("Olá, mundo!\n") → Código dentro da função.
- ola() → Chamada da função dentro de inicio().

---

## 🔄 Tipos de Retorno
As funções podem ou não retornar valores.

```portugol
programa {
    funcao inteiro dobro(inteiro x) {
        retorne x * 2
    }

    funcao inicio() {
        inteiro resultado
        resultado = dobro(5)
        escreva("O dobro de 5 é: ", resultado, "\n")
    }
}
```
#### 📌 Explicação:
- funcao inteiro dobro(inteiro x) → Declaração de uma - - função que retorna um inteiro.
- retorne x * 2 → Retorna o dobro do valor recebido.
- dobro(5) → Chamada da função com argumento 5.

---

## 🔍 Diferença entre Parâmetro e Argumento

📌 **Parâmetro:** Variável definida na função para receber valores.
📌 **Argumento:** Valor passado para a função na chamada.

```portugol
funcao soma(inteiro a, inteiro b) { // "a" e "b" são parâmetros
    escreva("Soma: ", a + b, "\n")
}

funcao inicio() {
    soma(3, 7) // "3" e "7" são argumentos
}
```

#### 📌 Explicação:
- a e b são parâmetros dentro da função soma().
- soma(3, 7) passa os argumentos 3 e 7 para a e b.

---

## 🧮 Função de Potência e Raiz da Biblioteca Matemática
O Portugol permite o uso da biblioteca matematica para operações avançadas.

```portugol
programa {
    inclua biblioteca Matematica --> mat

    funcao inicio() {
        real base, expoente, resultado
        base = 2
        expoente = 3
        resultado = mat.potencia(base, expoente) // 2^3 = 8
        escreva("2 elevado a 3 é: ", resultado, "\n")

        real raiz
        raiz = mat.raiz_quadrada(16) // Raiz de 16 é 4
        escreva("A raiz quadrada de 16 é: ", raiz, "\n")
    }
}
```

#### 📌 Explicação

- inclua biblioteca Matematica --> mat → Importa funções matemáticas.
- mat.potencia(base, expoente) → Calcula potência.
- mat.raiz_quadrada(x) → Retorna a raiz quadrada.

---

## 🎯 Escopo de Variáveis
O escopo define onde uma variável pode ser acessada.

##### 🔹 Exemplo de variável local:

```portugol
funcao exemplo() {
    inteiro x = 10
    escreva(x, "\n") // Funciona aqui
}

funcao inicio() {
    exemplo()
    escreva(x, "\n") // ERRO! "x" só existe dentro de exemplo()
}
```

#### 📌 Explicação:

- x só existe dentro da função exemplo().

##### 🔹 Exemplo de variável global:

```portugol
inteiro global = 100 // Variável global

funcao mostra_global() {
    escreva(global, "\n") // Funciona aqui
}

funcao inicio() {
    mostra_global()
    escreva(global, "\n") // Também funciona aqui
}
```

#### 📌 Explicação:

- global é acessível em qualquer parte do programa.
