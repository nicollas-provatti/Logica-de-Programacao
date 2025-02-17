programa
{
	funcao inicio()
	{
		inteiro numero = 10

		// Verifica se o número é par ou ímpar
		se (numero % 2 == 0)
		{
			escreva("O número ", numero, " é par\n")
		}
		senao
		{
			escreva("O número ", numero, " é ímpar\n")
		}
		//O bloco senao é executado caso a condição (numero % 2 == 0) seja falsa.
	}

	// O senao é usado para especificar um bloco alternativo de código que será executado quando a condição do se for falsa.
	// Esse tipo de estrutura é útil para tratar dois casos possíveis de forma clara.
	// O comando senao sempre está relacionado a um comando se, não existe senao sem se, porém existe se sem senao
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */