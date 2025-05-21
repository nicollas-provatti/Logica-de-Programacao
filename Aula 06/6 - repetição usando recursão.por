programa {
  funcao inicio() {
    inteiro qtdNumeros

    escreva("Quantidade de números: ")
    leia(qtdNumeros)

    ler(0, qtdNumeros)
  }

  funcao ler(inteiro contador, inteiro qtdNumeros) {
    se (contador == qtdNumeros) {
      escreva("\nFim da Leitura...\n")
      escreva("\nNúmeros digitados: ")
      // escreva("\nNúmeros pares: ")
    }
    senao {
      inteiro numero

      escreva("Digite um número: ")
      leia(numero)

      ler(contador + 1, qtdNumeros)

      escreva(numero, " ")

      // Para imprimir apenas os pares
      /* se (numero % 2 == 0) {
        escreva(numero, " ")
      } */
    }
  }
 }