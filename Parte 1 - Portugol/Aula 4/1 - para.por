programa
{
	funcao inicio()
	{    
		// Exemplo 1: Um laço para imprimir "Olá, mundo!" 5 vezes
		para (inteiro contador = 1; contador <= 5; contador++) {
			// O laço for possui 3 partes: inicialização, condição e incremento
			// Inicialização: contador começa com valor 1
			// Condição: o laço continua enquanto contador <= 5
			// Incremento: contador é aumentado em 1 a cada iteração
			escreva("Olá, mundo!\n")
		}

		// Exemplo 2: Um laço que imprime os números de 0 a 100
		para (inteiro contador = 0; contador <= 100; contador++) {
			// Aqui, o laço começa com contador igual a 0
			// E segue até que contador seja maior que 100
			escreva(contador, "\n")
		}

		// Exemplo 3: Um laço para processar números digitados pelo usuário
		inteiro qtdNumeros, qtdPares = 0, qtdImpares = 0, soma = 0

		// Solicita ao usuário a quantidade de números que deseja digitar
		escreva("Quantos números você quer digitar ? ")
		leia(qtdNumeros)

		// O laço for é usado para repetir o processo 'qtdNumeros' vezes
		para (inteiro contador = 1; contador <= qtdNumeros; contador++) {
			inteiro numero
			escreva("Digite um número: ")
			leia(numero)

			// Verifica se o número digitado é par ou ímpar
			se (numero % 2 == 0) {
				qtdPares++ // Incrementa a quantidade de números pares
			}
			senao {
				qtdImpares++ // Incrementa a quantidade de números ímpares
			}

			// Soma o número à variável 'soma'
			soma += numero
		}

		// Exibe os resultados após o laço
		escreva("Números pares: ", qtdPares,  "\n")
		escreva("Números ímpares: ", qtdImpares, "\n")
		escreva("A soma dos números foi: ", soma, "\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */