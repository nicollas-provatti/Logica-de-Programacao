programa {
  funcao inicio() {
    // Ler várias notas e calcular a média delas

    real nota1, nota2, nota3, nota4, media

    escreva("Nota: 1: ")
    leia(nota1)

    escreva("Nota: 2: ")
    leia(nota2)

    escreva("Nota: 3: ")
    leia(nota3)

    escreva("Nota: 4: ")
    leia(nota4)

    media = (nota1 + nota2 + nota3 + nota4) / 4.0

    escreva("A média foi ", media, "\n")

    // Problema: É preciso criar muitas variáveis. E saber a quantidade de notas.
  }
}