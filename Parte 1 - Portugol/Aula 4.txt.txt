# Estruturas de Repetição no Portugol

As estruturas de repetição permitem executar um bloco de código várias vezes de forma controlada. No Portugol, existem três comandos principais para repetição: `para`, `enquanto` e `faca-enquanto`.

---

## 🔁 Comando `para`

O comando `para` é usado quando sabemos previamente quantas vezes a repetição deve ocorrer. Ele é composto por três partes: inicialização, condição e incremento.

### 📌 Sintaxe:
```portugol
para (variável <- valor_inicial; condição; incremento) {
    // Bloco de código a ser repetido
}
```

### 📌 Exemplo:
```portugol
programa {
    funcao inicio() {
        inteiro i
        para (i <- 1; i <= 5; i <- i + 1) {
            escreva("Repetição número ", i, "\n")
        }
    }
}
```

🔹 O laço inicia `i` em 1 e executa até `i <= 5`, aumentando `i` em 1 a cada iteração.

---

## 🔄 Comando `enquanto`

O comando `enquanto` é utilizado quando não sabemos quantas vezes o bloco será executado, mas temos uma condição que deve ser verdadeira para continuar a execução.

### 📌 Sintaxe:
```portugol
enquanto (condição) {
    // Bloco de código a ser repetido
}
```

### 📌 Exemplo:
```portugol
programa {
    funcao inicio() {
        inteiro contador <- 1
        enquanto (contador <= 5) {
            escreva("Número: ", contador, "\n")
            contador <- contador + 1
        }
    }
}
```

🔹 O laço continua executando enquanto `contador <= 5`. Se a condição for falsa no início, o bloco **não será executado**.

---

## 🔂 Comando `faca-enquanto`

O comando `faca-enquanto` é semelhante ao `enquanto`, mas **garante que o bloco será executado pelo menos uma vez**, pois a condição é verificada após a execução do bloco.

### 📌 Sintaxe:
```portugol
faca {
    // Bloco de código a ser repetido
} enquanto (condição)
```

### 📌 Exemplo:
```portugol
programa {
    funcao inicio() {
        inteiro numero
        faca {
            escreva("Digite um número maior que zero: ")
            leia(numero)
        } enquanto (numero <= 0)
    }
}
```

🔹 Neste exemplo, o usuário sempre precisará inserir pelo menos um número antes da verificação da condição.

---

## ⚖️ Diferença entre `enquanto` e `faca-enquanto`

| Estrutura | Quando a condição é verificada? | Garante execução mínima? |
|-----------|--------------------------------|--------------------------|
| `enquanto` | Antes da execução do bloco | ❌ Não |
| `faca-enquanto` | Depois da execução do bloco | ✅ Sim |

### 📌 Exemplo comparativo:

#### `enquanto`
```portugol
inteiro x <- 10

enquanto (x < 5) {
    escreva("Esse código não será executado!\n")
}
```
🔹 Como `x` já começa com 10, a condição `x < 5` é falsa e o bloco **não será executado**.

#### `faca-enquanto`
```portugol
inteiro x <- 10

faca {
    escreva("Esse código será executado pelo menos uma vez!\n")
} enquanto (x < 5)
```
🔹 Mesmo que `x < 5` seja falso, o bloco **será executado pelo menos uma vez** antes da verificação da condição.

---

Essas estruturas são essenciais para controlar fluxos de repetição em programas. Agora é hora de praticar! 🚀
