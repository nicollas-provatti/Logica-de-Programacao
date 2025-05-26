programa {
  funcao inicio() {
    // Ler várias notas e calcular a média delas

    inteiro acimaMedia = 0
    real somaNota = 0, media
    real notas[5]

    para (inteiro i = 0; i < 5; i++) {

      escreva("Nota ", i + 1, ": ")
      leia(notas[i])

      somaNota += notas[i]
    }

    media = somaNota / 5

    para (inteiro i = 0; i< 5; i++) {
      se (notas[i] >= media) {
        acimaMedia++
      }
    }

    escreva("A média foi ", media, "\n")
    escreva("Notas acima da méida ", acimaMedia, "\n")

    // Problema: O tamanho do array é estático.
  }
}
