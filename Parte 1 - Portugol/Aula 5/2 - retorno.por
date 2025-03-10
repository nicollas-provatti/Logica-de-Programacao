programa {

  funcao inicio() {
    inteiro n1 = 10, n2 = 5

    inteiro soma = somar(n1, n2)
    escreva(soma)

    caracter medida = tamanho_roupa(37)
    escreva(medida)

    real media = calcular_media(7.5, 6.5)
    escreva(media)
  }

  funcao inteiro somar(inteiro x, inteiro y) {
    inteiro soma = x + y
    retorne soma
  }

  funcao caracter tamanho_roupa(inteiro media) {
    se (media >= 34 e media <= 36) {
      retorne 'p'
    }
    senao se (media >= 37 e media <= 39) {
      retorne 'm'
    }
    senao {
      retorne 'g'
    }
  }

  funcao real calcular_media(real nota1, real nota2) {
    real res = (nota1 + nota2) / 2.0
    retorne res
  }
}
