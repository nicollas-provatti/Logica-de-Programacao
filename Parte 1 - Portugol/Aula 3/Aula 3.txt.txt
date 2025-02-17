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

## 📌 Comando `se senao` aninhados
Podemos aninhar comandos `se` dentro de `senao`, permitindo verificações mais detalhadas.

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

---

## 📌 Comando `senao se`
Quando há múltiplas condições a serem verificadas, podemos utilizar o `senao se`.

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

---

## 📌 Comando `escolha`
O `escolha` funciona como uma alternativa ao `senao se`, sendo mais adequado para valores fixos.

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

---

Essas estruturas são fundamentais para a tomada de decisão nos programas! 🚀
