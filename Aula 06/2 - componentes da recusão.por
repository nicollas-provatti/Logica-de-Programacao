programa {

  funcao inicio() {
    contagem(1)
  }


  funcao vazio contagem(inteiro contador) {

    se (contador > 100) { // Caso base
      escreva("Fim da contagem\n")
      retorne
    }

    escreva(contador, "\n")
    contagem(contador + 1) // Passo recursivo
  }
}