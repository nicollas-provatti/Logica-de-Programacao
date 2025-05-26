programa {
	funcao inicio() {
		inteiro numeros[10]

		ler_array(numeros, 10)
		imprimir_array(numeros, 10)
		dobrar(numeros, 10)
		imprimir_array(numeros, 10)
		
	}

	funcao vazio ler_array(inteiro numeros[], inteiro tamanho) {
		para (inteiro i = 0; i < tamanho; i++) {
			escreva("Digite um número: ")
			leia(numeros[i])
		}
	}

	funcao vazio imprimir_array(inteiro numeros[], inteiro tamanho) {
    	escreva("\n")
		para (inteiro i = 0; i < tamanho; i++) {
			escreva("[", i, "] = ", numeros[i], "\n")
			
		}
    	escreva("\n")
	}

	funcao vazio dobrar(inteiro numeros[], inteiro tamanho) {
		para (inteiro i = 0; i < tamanho; i++) {
				numeros[i] *= 2
			}
	}
}