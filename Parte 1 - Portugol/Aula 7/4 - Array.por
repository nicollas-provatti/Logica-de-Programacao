programa
{
	
	funcao inicio()
	{
		// Declaração de um array que armazena 5 inteiros (todos os valores são iniciados como zero)
		inteiro numeros[5]

		// Inicialização de um array
		inteiro valores[5] = {1, 2, 3, 4, 5}

		para (inteiro i = 0; i < 5; i++) {
			escreva(valores[i], "\n")
		}

		// Acesso a elementos
		inteiro primeiro = valores[0] // O primeiro elemento está na posição zero
		escreva(primeiro, "\n")

		// Manipulação
		numeros[2] = 7 // Alterando o valor de terceiro elemento (3)
		escreva(numeros[2])

		// Usando um laço para preencher um array
		para (inteiro i = 0; i < 5; i++) {
			inteiro numero
			leia(numero)
			numeros[i] = numero
		}

		para (inteiro i = 0; i < 5; i++) {
			escreva(numeros[i], "\n")
		}
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */