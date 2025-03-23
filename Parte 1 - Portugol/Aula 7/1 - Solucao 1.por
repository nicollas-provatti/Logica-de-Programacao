programa
{
	// Problema: Ler e armazenar as notas de um aluno. Informar o valor da média

     // Solução 1: Declarar várias variáveis
	funcao inicio()
	{
		real nota1, nota2, nota3, nota4, nota5, nota6
		leia(nota1)
		leia(nota2)
		leia(nota3)
		leia(nota4)
		leia(nota5)
		leia(nota6)

		real media = (nota1 + nota2 + nota3 + nota4 + nota5 + nota6) / 5.0

		escreva("Sua média foi ", media, "\n")
		
	}
	// Problema da solução 1: Primeiro, foi necessário criar uma variável para cada nota. Segundo, é preciso saber apriori o número de notas. 
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 549; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */