programa
{
	//Problema: armazenar as notas de vários alunos e informa qual teve a maior nota
	// Solução 3: usando matriz
	funcao inicio()
	{
		real notas[3][3]

		// As linhas serão os alunos
		// As colunas serão as notas

		real soma, media = 0.0
	  	inteiro melhorAluno = 0
	  	real melhorMedia = 0.0

	  	para (inteiro i = 0; i < 3; i++) {
	  		soma = 0.0
	  		
	  		para (inteiro j = 0; j < 3; j++) {
	  			leia(notas[i][j])
	  			soma += notas[i][j]
	  		}

	  		media = soma / 3.0
	  		escreva("A média do aluno ", i + 1, " é ", media, "\n")

	  		se (media > melhorMedia) {
	  			melhorMedia = media
	  			melhorAluno = i
	  		}
	  	}

	  	escreva("O aluno ", melhorAluno + 1,  " teve a melhor média: ", melhorMedia, "\n")
	}
	// Obs.: é preciso saber o tamanho da matriz
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 786; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */