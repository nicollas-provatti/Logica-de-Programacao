programa {
  funcao inicio() {
    // Ler várias notas e calcular a média delas

    inteiro qtdNotas
    real somaNotas = 0, media

    escreva("Quantidade de notas: ")
    leia(qtdNotas)

    para (inteiro i = 0; i < qtdNotas; i++) {
      real nota

      escreva("Nota ", i + 1, ": ")
      leia(nota)

      somaNotas = somaNotas + nota
    }

    media = somaNotas / qtdNotas

    escreva("A média foi ", media, "\n")

    // Problema: Não tem acesso a nota.
  }
}
