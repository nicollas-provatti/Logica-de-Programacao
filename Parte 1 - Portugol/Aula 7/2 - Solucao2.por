programa
{
	
// Problema: Ler e armazenar as notas de um aluno. Informar o valor da média

     // Solução 2: Usando loop
	funcao inicio()
	{
		inteiro qtdNotas
		escreva("Quantas notas você vai digitar ? ")
		leia(qtdNotas)

		real media = 0.0

		para (inteiro i = 0; i < qtdNotas; i++) {
			real nota
			escreva("Informe a ", i+1, "º nota: ")
			leia(nota)

			media += nota
		}

		media /= qtdNotas

		escreva("Sua média foi ", media, "\n")
		
	}
	// Problema da solução 2: Não é possível acessar o valor da nota depois que o laço termina. 
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 116; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */