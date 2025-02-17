📌 Estruturas de Decisão no Portugol

As estruturas de decisão permitem que um programa tome diferentes caminhos de execução com base em condições. Isso significa que um programa pode executar determinadas instruções somente se um critério for atendido. No Portugol, utilizamos os comandos se, senao, senao se e escolha para controlar o fluxo da execução do programa.

✅ Comando se

O comando se é a estrutura de decisão mais simples. Ele avalia uma expressão lógica e, se for verdadeira, executa um bloco de código.

🔹 Exemplo:

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

🔍 Explicação:

O programa solicita ao usuário que digite sua idade.

O valor é armazenado na variável idade.

A condição se (idade >= 18) verifica se a idade é maior ou igual a 18.

Caso seja verdadeira, exibe "Você é maior de idade.".

Se for falsa, o programa simplesmente continua sem exibir nada.

✅ Comando se senao

O comando senao permite que o programa execute um bloco de código alternativo caso a condição do se não seja satisfeita.

🔹 Exemplo:

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

🔍 Explicação:

Se a idade for maior ou igual a 18, exibe "Você é maior de idade.".

Se a condição for falsa, o bloco dentro de senao é executado e exibe "Você é menor de idade.".

✅ Comando se senao aninhado

Podemos aninhar várias estruturas se senao para fazer verificações mais detalhadas.

🔹 Exemplo:

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

🔍 Explicação:

Primeiro, verificamos se a idade é maior ou igual a 18.

Se não for, verificamos se a idade é maior ou igual a 12 (ou seja, um adolescente).

Se não for nenhuma das anteriores, a pessoa é considerada uma criança.

✅ Comando senao se

Quando temos múltiplas condições a serem verificadas, podemos usar senao se para tornar o código mais organizado e legível.

🔹 Exemplo:

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

🔍 Explicação:

O programa classifica o desempenho do aluno com base na nota inserida.

O senao se permite testar diferentes faixas de nota antes de decidir o resultado final.

✅ Comando escolha

O escolha é uma alternativa ao senao se e é mais eficiente quando lidamos com valores fixos.

🔹 Exemplo:

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

🔍 Explicação:

escolha verifica o valor de opcao e executa o bloco correspondente.

pare impede que o programa continue testando outros casos.

caso contrario age como um default, tratando entradas inválidas.

🎯 Conclusão

As estruturas de decisão são fundamentais para qualquer programa, pois permitem que o código reaja de forma dinâmica a diferentes entradas. Saber escolher entre se, senao se e escolha ajuda a tornar o código mais organizado e eficiente.

Agora que você aprendeu sobre essas estruturas, experimente criá-las e adaptá-las para diferentes situações! 🚀
