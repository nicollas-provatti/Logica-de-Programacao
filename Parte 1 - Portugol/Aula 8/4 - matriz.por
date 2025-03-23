programa
{
	
	funcao inicio()
	{	
		// Declaração
		inteiro numeros[2][2]

		// Atribuição
		inteiro numeros[3][3] = {{1, 2, 3}, {3, 4, 5}, {6, 7, 8}}

		inteiro numeros[3][3] = {
			{1, 2, 3}, 
			{3, 4, 5}, 
			{6, 7, 8}
		}

		// Acesso
		inteiro primeiro = numeros[0][0]

		// Manipulação
		numeros[1][1] = 6

		// Usando loop
		para (inteiro i = 0; i < 3; i++) {
			para (inteiro j =  0; j < 3; j++) {
				leia(numeros[i][j])
			}
		}
		// O loop externo é responsável por iterar sobre as linhas.
		// O loop interno é responsável por iterar sobre as colunas.
		
	}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */