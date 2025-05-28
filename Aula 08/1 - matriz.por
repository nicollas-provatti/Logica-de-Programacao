programa {
	funcao inicio() {
		// Declaração
    inteiro numeros[2][2]

    // Modificação
    numeros[0][0] = 1
    numeros[0][1] = 2
    numeros[1][0] = 3
    numeros[1][1] = 4

    // Acesso
    escreva("[0][0] = ", numeros[0][0], "\n")
    escreva("[0][1] = ", numeros[0][1], "\n")
    escreva("[1][0] = ", numeros[1][0], "\n")
    escreva("[1][1] = ", numeros[1][1], "\n\n")

    escreva(numeros[0][0], " ", numeros[0][1], "\n")
		escreva(numeros[1][0], " ", numeros[1][1])
 
    // Laço para Leitura
    para (inteiro i = 0; i < 2; i++) {
      para (inteiro j = 0; j < 2; j++) {
        inteiro numero

        escreva("Digite um número: ")
        leia(numero)

        numeros[i][j] = numero
      }
    }

    // Laço para Impressão
    para (inteiro i = 0; i < 2; i++) {
      para (inteiro j = 0; j < 2; j++) {
        escreva("[", i, "]","[", j, "] = ", numeros[i][j], "\n")
      }
    }

	}
}