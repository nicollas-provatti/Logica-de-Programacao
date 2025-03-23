programa
{
	//Problema: armazenar as notas de vários alunos e informa qual teve a maior nota
	// Solução 2: usando arrays
	funcao inicio()
	{
		real aluno1_notas[3]
	  	real aluno2_notas[3]
	  	real aluno3_notas[3]
	  	real aluno1_media = 0.0, aluno2_media = 0.0, aluno3_media = 0.0

		// Ler as notas do aluno 1
	  	para (inteiro i = 0; i < 3; i++) {
	  		leia(aluno1_notas[i])
	  		aluno1_media += aluno1_notas[i]
	  	}

	  	aluno1_media = aluno1_media / 3.0

		// Ler as notas do aluno 2
	  	para (inteiro i = 0; i < 3; i++) {
	  		leia(aluno2_notas[i])
	  		aluno2_media += aluno2_notas[i]
	  	}

	  	aluno2_media = aluno2_media / 3.0

		// Ler as notas do aluno 3
	  	para (inteiro i = 0; i < 3; i++) {
	  		leia(aluno3_notas[i])
	  		aluno3_media += aluno3_notas[i]
	  	}

	  	aluno3_media = aluno3_media / 3.0

	  	se (aluno1_media > aluno2_media e aluno1_media > aluno3_media) {
		    escreva("O aluno 1 teve a melhor média: ", aluno1_media, "\n")
		
		} senao se (aluno2_media > aluno1_media e aluno2_media > aluno3_media) {
		   escreva("O aluno 2 teve a melhor média: ", aluno2_media, "\n")
		     
		} senao {
		    escreva("O aluno 3 teve a melhor média: ", aluno3_media, "\n")
  		}
	}

	// Desvantagem: é preciso declarar um novo array para cada aluno
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */