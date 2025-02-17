# 🧠 Estruturas de Decisão no Portugol

As estruturas de decisão são fundamentais na programação. Elas permitem que um programa tome decisões com base em condições.

No Portugol, as principais estruturas de decisão são:
- `se`
- `se senao`
- `se senao` aninhado
- `senao se`
- `escolha`

Cada uma dessas estruturas será explicada detalhadamente a seguir. 👇

---

## 📌 Comando `se`
O comando `se` verifica se uma condição é verdadeira e executa um bloco de código caso seja.

📌 **Sintaxe:**
```portugol
se (condicao) {
    // Código a ser executado se a condição for verdadeira
}
```

📌 **Exemplo:**
```portugol
programa {
    funcao inicio() {
        inteiro idade
        escreva("Digite sua idade: ")
        leia(idade)
        
        se (idade >= 18) {
            escreva("Você é maior de idade.\n")
        }
    }
}
```
🔹 Se `idade` for maior ou igual a 18, a mensagem "Você é maior de idade." será exibida.
🔹 Se `idade` for menor que 18, o programa não fará nada.

---

## 📌 Comando `se senao`
O `senao` adiciona uma alternativa caso a condição inicial seja falsa.

📌 **Sintaxe:**
```portugol
se (condicao) {
    // Código se a condição for verdadeira
} senao {
    // Código se a condição for falsa
}
```

📌 **Exemplo:**
```portugol
programa {
    funcao inicio() {
        inteiro idade
        escreva("Digite sua idade: ")
        leia(idade)
        
        se (idade >= 18) {
            escreva("Você é maior de idade.\n")
        }
        senao {
            escreva("Você é menor de idade.\n")
        }
    }
}
```
🔹 Agora, se `idade` for menor que 18, o programa exibirá "Você é menor de idade.".

---

## 📌 Comando `se senao` aninhado
Podemos colocar um `se` dentro de um `senao` para fazer verificações mais detalhadas.

📌 **Exemplo:**
```portugol
programa {
    funcao inicio() {
        inteiro idade
        escreva("Digite sua idade: ")
        leia(idade)
        
        se (idade >= 18) {
            escreva("Você é maior de idade.\n")
        }
        senao {
            se (idade >= 12) {
                escreva("Você é um adolescente.\n")
            }
            senao {
                escreva("Você é uma criança.\n")
            }
        }
    }
}
```
🔹 Se `idade` for maior ou igual a 18, o programa imprime "Você é maior de idade.".
🔹 Se `idade` for entre 12 e 17, imprime "Você é um adolescente.".
🔹 Se `idade` for menor que 12, imprime "Você é uma criança.".

---

## 📌 Comando `senao se`
O `senao se` permite verificar várias condições sem precisar aninhar blocos `se`.

📌 **Sintaxe:**
```portugol
se (condicao1) {
    // Código se condicao1 for verdadeira
} senao se (condicao2) {
    // Código se condicao2 for verdadeira
} senao se (condicao3) {
    // Código se condicao3 for verdadeira
} senao {
    // Código se nenhuma das condições for verdadeira
}
```

📌 **Exemplo:**
```portugol
programa {
    funcao inicio() {
        inteiro nota
        escreva("Digite sua nota: ")
        leia(nota)
        
        se (nota >= 90) {
            escreva("Aprovado com excelência!\n")
        }
        senao se (nota >= 70) {
            escreva("Aprovado.\n")
        }
        senao se (nota >= 50) {
            escreva("Recuperação.\n")
        }
        senao {
            escreva("Reprovado.\n")
        }
    }
}
```
🔹 Essa estrutura evita aninhamento excessivo e melhora a legibilidade do código.

---

## 📌 Comando `escolha`
O `escolha` é útil quando temos várias opções fixas.

📌 **Sintaxe:**
```portugol
escolha (variavel) {
    caso valor1:
        // Código a ser executado se variavel == valor1
        pare
    caso valor2:
        // Código a ser executado se variavel == valor2
        pare
    caso contrario:
        // Código se nenhum caso for verdadeiro
}
```

📌 **Exemplo:**
```portugol
programa {
    funcao inicio() {
        inteiro opcao
        escreva("Escolha uma opção: 1- Iniciar | 2- Configurações | 3- Sair\n")
        leia(opcao)
        
        escolha (opcao) {
            caso 1:
                escreva("Iniciando o programa...\n")
                pare
            caso 2:
                escreva("Abrindo configurações...\n")
                pare
            caso 3:
                escreva("Saindo...\n")
                pare
            caso contrario:
                escreva("Opção inválida.\n")
        }
    }
}
```
🔹 `escolha` é mais legível que múltiplos `senao se`, especialmente para valores fixos.
🔹 O `caso contrario` é opcional, mas é útil para capturar entradas inválidas.

---

## 🔥 Resumo das Estruturas de Decisão:
| Estrutura | Quando Usar |
|-----------|------------|
| `se` | Quando há apenas uma verificação. |
| `se senao` | Quando há um caminho alternativo caso a condição falhe. |
| `se senao` aninhado | Quando há mais de duas possibilidades e cada uma precisa de verificação separada. |
| `senao se` | Quando há várias condições que podem ser verificadas sequencialmente. |
| `escolha` | Quando há várias opções fixas e um único valor de entrada determina a saída. |

---

Essas estruturas são essenciais para a lógica de programação! Pratique bastante para dominá-las. 🚀
