programa
{
    funcao inicio()
    {
        inteiro numero1, numero2, soma

        // Solicita ao usuário o primeiro número
        escreva("Digite o primeiro número: ")
        leia(numero1)

        // Solicita ao usuário o segundo número
        escreva("Digite o segundo número: ")
        leia(numero2)

        // Chama a função somar passando os dois números como argumentos
        soma = somar(numero1, numero2)

        // Exibe o resultado da soma
        escreva(numero1, " + ", numero2, " = ", soma, "\n")
    }

    // Função que recebe dois números inteiros e retorna a soma deles
    funcao inteiro somar(inteiro x, inteiro y) {
        retorne x + y
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */