programa
{
	//Problema: armazenar as notas de vários alunos e informa qual teve a maior nota
	// Solução 1: usando variáveis
	funcao inicio()
	{
		real aluno1_nota1, aluno1_nota2, aluno1_nota3
  		real aluno2_nota1, aluno2_nota2, aluno2_nota3
  		real aluno3_nota1, aluno3_nota2, aluno3_nota3

  		leia(aluno1_nota1, aluno1_nota2, aluno1_nota3)
  		leia(aluno2_nota1, aluno2_nota2, aluno2_nota3)
  		leia(aluno3_nota1, aluno3_nota2, aluno3_nota3)

  		real aluno1_media = (aluno1_nota1 + aluno1_nota2 + aluno1_nota3) / 3.0
		real aluno2_media = (aluno2_nota1 + aluno2_nota2 + aluno2_nota3) / 3.0
		real aluno3_media = (aluno3_nota1 + aluno3_nota2 + aluno3_nota3) / 3.0

		se (aluno1_media > aluno2_media e aluno1_media > aluno3_media) {
		    escreva("O aluno 1 teve a melhor média: ", aluno1_media, "\n")
		
		} senao se (aluno2_media > aluno1_media e aluno2_media > aluno3_media) {
		   escreva("O aluno 2 teve a melhor média: ", aluno2_media, "\n")
		     
		} senao {
		    escreva("O aluno 3 teve a melhor média: ", aluno3_media, "\n")
  		}
	}

	// Desvantagem: é preciso declarar muitas variáveis
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */