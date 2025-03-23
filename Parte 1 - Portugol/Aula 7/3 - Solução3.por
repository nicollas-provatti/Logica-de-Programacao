programa
{
// Problema: Ler e armazenar as notas de um aluno. Informar o valor da média

	// Solução 3: Usando array
	funcao inicio()
	{
		real notas[6]

		notas[0] = 5.5
		notas[1] = 7.8
		notas[2] = 9.7

		//escreva(notas[0])

		// Usando loop
		real media = 0.0

		para (inteiro i = 0; i < 6; i++) {
			real nota
			escreva("Informe a ", i+1, "º nota: ")
			leia(nota)

			media += nota

			notas[i] = nota
		}

		media /= 6.0
		escreva("Sua média foi ", media, "\n")	

		// É possível acessar todas as notas
		para (inteiro i = 0; i < 6; i++) {
			escreva("Nota ", i+1, ": ", notas[i], "\n")
		}
	}
	// Problema da solução 3: O tamanho do array é sempre estático. A solução para esse problema foge do escopo do curso.
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */