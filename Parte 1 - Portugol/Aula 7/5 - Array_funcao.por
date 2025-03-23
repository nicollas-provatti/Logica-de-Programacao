programa
{
	
	funcao inicio()
	{
		inteiro numeros[10]

		ler_array(numeros, 10)
		imprimir_array(numeros, 10)
		
	}

	funcao vazio ler_array(inteiro numeros[], inteiro tamanho) {

		para (inteiro i = 0; i < tamanho; i++) {
			escreva("Digite um número: ")
			leia(numeros[i])
		}
	}

	funcao vazio imprimir_array(inteiro numeros[], inteiro tamanho) {

		para (inteiro i = 0; i < tamanho; i++) {
			escreva(numeros[i], "\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */