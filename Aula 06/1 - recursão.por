programa {

  funcao inicio() {
    // recursiva()
    // contagem(0)
  }

  funcao vazio recursiva() {
    escreva("Olá, mundo!\n")
    recursiva()
  }

  funcao vazio contagem(inteiro contador) {
    escreva(contador, "\n")
    // contador++
    contagem(contador + 1)
    // contagem(contador++)
  }
}
