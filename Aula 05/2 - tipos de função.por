programa {
  inclua biblioteca Util --> u

  funcao inicio() {

    mensagem()

    mensagemPersonalizada("Nícollas")

    inteiro numero = obterNumero()
    escreva("Número: ", numero, "\n")

    inteiro resultado = multiplicar(2, 3)
    escreva("Resultado: ", resultado)
    
  }
  // Sem parâmetro e sem retorno
  funcao mensagem() {
    escreva("Olá, mundo!\n")
  }

  // Com parâmetro e sm retorno
  funcao mensagemPersonalizada(cadeia nome) {
    escreva("Olá, ", nome, "\n")
  }

  // Sem parâmetro e com retorno
  funcao inteiro obterNumero() {
    retorne u.sorteia(1, 10)
  }
  
  // Com parâmetro e com retorno
  funcao inteiro multiplicar(inteiro n1, inteiro n2) {
    retorne n1 * n2
  }

  // EX2
}