programa {
	funcao inicio() {
		inteiro numeros[3][3]

		ler_matriz(numeros, 3, 3)
		imprimir_matriz(numeros, 3, 3)
		dobrar(numeros, 3, 3)
		imprimir_matriz(numeros, 3, 3)
	}

	funcao vazio ler_matriz(inteiro matriz[][], inteiro linha, inteiro coluna) {
	  para (inteiro i = 0; i < linha; i++) {
	    para (inteiro j = 0; j < coluna; j++) {
        escreva("Digite um número: ")
	      leia(matriz[i][j])
	    }
	  }
	}

	funcao vazio imprimir_matriz(inteiro matriz[][], inteiro linha, inteiro coluna) {
    escreva("\n")
	  para (inteiro i = 0; i < linha; i++) {
	    para (inteiro j = 0; j < coluna; j++) {
	     escreva("[", i, "]","[", j, "] = ", matriz[i][j], "\n")
	    }
	  }
    escreva("\n")
	}

	funcao vazio dobrar(inteiro matriz[][], inteiro linha, inteiro coluna) {
		para (inteiro i = 0; i < linha; i ++) {
			para (inteiro j = 0; j < coluna; j++) {
			matriz[i][j] *= 2
			}
		}
	}
}