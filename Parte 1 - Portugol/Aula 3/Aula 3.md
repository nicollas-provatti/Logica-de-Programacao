# Estruturas de Decisão no Portugol

As estruturas de decisão permitem que o programa tome diferentes caminhos de execução com base em condições. No Portugol, podemos utilizar os comandos `se`, `senao`, `senao se` e `escolha`.

---

## 📌 Comando `se`
O comando `se` avalia uma condição e executa um bloco de código apenas se essa condição for verdadeira.

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

---

## 📌 Comando `se senao`
O `senao` permite definir um bloco de código alternativo caso a condição do `se` não seja satisfeita.

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

---


