programa {

  /*
  6: n = 5; escreva(5);
  5: n = 4; escreva(4); imprimir(5) || escreva(4)
  4: n = 3; escreva(3); imprimir(4) || escreva(3)
  3: n = 2; escreva(2); imprimir(3) || escreva(2)
  2: n = 1; escreva(1); imprimir(2) || escreva(1)
  1: n = 0; escreva(0); imprimir(1) || escreva(0)
  */

  funcao inicio() {
    imprimir(0)
  }

  funcao vazio imprimir(inteiro numero) {

    se (numero == 5) {
      escreva(numero, " ")
    }
    senao {
      escreva(numero, " ")
      imprimir(numero + 1)
      escreva(numero, " ")
    }
  }
}

