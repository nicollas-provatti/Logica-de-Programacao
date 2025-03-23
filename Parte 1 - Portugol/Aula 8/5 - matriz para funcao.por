programa
{
	
	funcao inicio()
	{
		inteiro numeros[3][3]
		ler_matriz(numeros, 3, 3)
		imprimir_matriz(numeros, 3, 3)
	}

	funcao vazio ler_matriz(inteiro matriz[][], inteiro linha, inteiro coluna) {

	  para (inteiro i = 0; i < linha; i ++) {
	    para (inteiro j = 0; j < coluna; j++) {
	     leia(matriz[i][j])
	    }
	
	  }
	}

	funcao vazio imprimir_matriz(inteiro matriz[][], inteiro linha, inteiro coluna) {

	  para (inteiro i = 0; i < linha; i ++) {
	    para (inteiro j = 0; j < coluna; j++) {
	     escreva(matriz[i][j], " ")
	    }
	    escreva("\n")
	  }
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 129; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */