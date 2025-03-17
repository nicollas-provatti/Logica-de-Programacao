# 🔁 Recursão em Portugol  

## 🧐 O que é Recursão?  
A **recursão** é uma técnica onde uma função chama a si mesma para resolver um problema menor. É muito usada em algoritmos que seguem um padrão repetitivo, como cálculos matemáticos e estruturação de dados.  

📌 **Analogia:**  
Imagine uma fila de dominós enfileirados. Quando você derruba o primeiro, ele automaticamente derruba o próximo, e assim por diante. O efeito continua até que não haja mais peças para cair.  

---

## 🏗️ Caso Base e Passo Recursivo  
Uma função recursiva precisa de dois elementos fundamentais:  

1️⃣ **Caso Base:** Define a condição de parada da recursão. Sem isso, a função entraria em um loop infinito.  
2️⃣ **Passo Recursivo:** Define como a função se aproxima do caso base, chamando a si mesma com um problema menor.  

🔹 **Exemplo Simples:** Contagem regressiva  
```portugol
funcao contagem(inteiro n) {
    se (n == 0) entao
        escreva("Fim!\n")
    senao
        escreva(n, "\n")
        contagem(n - 1) // Chamada recursiva
    fimse
}

funcao inicio() {
    contagem(5)
}
```

**📌 Explicação:**
- O caso base é n == 0, que para a recursão.
- O passo recursivo é contagem(n - 1), reduzindo o problema.

---

## 📚 Conceito de Pilha de Recursão

Toda vez que uma função é chamada, o sistema armazena seu estado na **pilha de chamadas**. Quando o caso base é atingido, a execução volta "desempilhando" as chamadas.

📌 **Exemplo Visual da pilha (para contagem(3)):**
```portugol
contagem(3)
  contagem(2)
    contagem(1)
      contagem(0)  <- Caso base atingido
    volta para contagem(1)
  volta para contagem(2)
volta para contagem(3)
```

Cada chamada fica "esperando" a anterior ser resolvida.

--- 

## 🔢 Exemplo Clássicos

### 📌 **1. Fatorial de um número (n!)**
O fatorial de um número é o produto de todos os inteiros positivos até ele.

- Exemplo: `5! = 5 × 4 × 3 × 2 × 1 = 120`

🔹 **Implementação Recursiva:**
``` portugol
funcao inteiro fatorial(inteiro n) {
    se (n == 0 ou n == 1) entao
        retorne 1 // Caso base
    senao
        retorne n * fatorial(n - 1) // Passo recursivo
    fimse
}

funcao inicio() {
    escreva("Fatorial de 5: ", fatorial(5), "\n")
}
```

📌 **Explicação:**
- **Caso base:** `n == 0` ou `n == 1` → Retorna `1`.
- **Passo recursivo:** `n * fatorial(n - 1)`, reduzindo `n` até `1`.

<br>

### 📌 2. Sequência de Fibonacci
A sequência de Fibonacci é definida por:

- `F(0) = 0`, `F(1) = 1`
- `F(n) = F(n-1) + F(n-2)`, para `n ≥ 2`

🔹 **Implementação Recursiva:**
```portugol
funcao inteiro fibonacci(inteiro n) {
    se (n == 0) entao
        retorne 0 // Caso base 1
    senao se (n == 1) entao
        retorne 1 // Caso base 2
    senao
        retorne fibonacci(n - 1) + fibonacci(n - 2) // Passo recursivo
    fimse
}

funcao inicio() {
    inteiro i
    para (i = 0; i < 7; i++) {
        escreva(fibonacci(i), " ")
    }
}
```

📌 **Explicação:**

- **Caso base:** `F(0) = 0`, `F(1) = 1`.
- **Passo recursivo:** `F(n) = F(n-1) + F(n-2)`, reduzindo `n` até alcançar os casos base.

---