programa {
  funcao inicio() {
    // Declaração
    inteiro numeros[5]

    // Modificação
    numeros[0] = 1
    numeros[1] = 2
    numeros[2] = 3
    numeros[3] = 4
    numeros[4] = 5

    // Acesso
    escreva("[0] = ", numeros[0], "\n")
    escreva("[1] = ", numeros[1], "\n")
    escreva("[2] = ", numeros[2], "\n")
    escreva("[3] = ", numeros[3], "\n")
    escreva("[4] = ", numeros[4], "\n")

    // Laço de Leitura
    para (inteiro i = 0; i < 5; i++) {
      inteiro numero

      escreva("Digite um número: ")
      leia(numero)
      // leia(numeros[i])

      numeros[i] = numero
    }

    // Laço de Impressão
    para (inteiro i = 0; i < 5; i++) {
      escreva("[", i, "] = ", numeros[i], "\n")
    }

  }
}
