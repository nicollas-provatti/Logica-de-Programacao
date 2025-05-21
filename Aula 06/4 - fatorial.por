programa {

  /*
  0! = 1
  1! = 1
  2! = 2 * 1 = 2
  3! = 3 * 2 * 1 = 6
  4! = 4 * 3 * 2 * 1 = 24
  .
  .
  .
  n! = n * (n - 1)!

  5! = 5 * 4! = 5 * 24 = 120
  */


  /*
  5 fat(1): n = 1; retorne 1
  4 fat(2): n = 2; res = 2 * fat(1) || retorne res
  3 fat(3): n = 3; res = 3 * fat(2) || retorne res
  2 fat(4): n = 4; res = 4 * fat(3) || retorne res
  1 fat(5): n = 5; res = 5 * fat(4) || retorne res
  */


  funcao inicio() {
    inteiro numero

    escreva("Calcular o fatorial de: ")
    leia(numero)

    inteiro resultado = fatorial(numero)

    escreva("O fatorial de ", numero, " é ", resultado)
  }

  funcao inteiro fatorial(inteiro numero) {

    se (numero == 0 ou numero == 1) {
      retorne 1
    }
    
    inteiro resultado = numero * fatorial(numero - 1)

    retorne resultado
  }
}













