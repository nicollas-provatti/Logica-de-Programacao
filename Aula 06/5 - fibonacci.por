programa {

  /*
  0 1 1 2 3 5 8 13

  t(n) = t(n - 1) + t(n - 2)

  t(5) = t(4) + t(3)
  */

  /*
  4 fibo(1): retorne 1
  3 fibo(3): res = 1 + fibo(1) || fibo(1) e retorne res
  2 fibo(4): res = fibo(3) + fibo(2) || fibo(2) e retorne res
  1 fibo(5): res = fibo(4) + fibo(3) || fibo(3) e retorne res
  */

  funcao inicio() {
    inteiro numero

    escreva("Termo da sequência de fibonacci: ")
    leia(numero)

    inteiro resultado = fibonacci(numero)

    escreva("O ", numero, "º termo da sequência é ", resultado, ".")
  }

  funcao inteiro fibonacci(inteiro numero) {
    se (numero == 1) {
      retorne 0
    }
    se (numero == 2) {
      retorne 1
    }

    inteiro resultado = fibonacci(numero - 1) + fibonacci(numero - 2)

    retorne resultado
  }
}
