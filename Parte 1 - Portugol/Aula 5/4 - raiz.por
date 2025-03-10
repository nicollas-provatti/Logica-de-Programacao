programa
{
    inclua biblioteca Matematica --> mat // Inclui a biblioteca de funções matemáticas
    
    funcao inicio()
    {
        real numero
        real raiz

        // Definindo um número e calculando sua raiz quadrada
        numero = 4.0
        raiz = mat.raiz(numero, 2.0) // Obtém a raiz quadrada do número
        escreva("A raiz quadrada de ", numero , " é: ", raiz, "\n")

        // Definindo outro número e calculando sua raiz cúbica
        numero = 27.0
        raiz = mat.raiz(numero, 3.0) // Obtém a raiz cúbica do número
        escreva("A raiz cúbica de ", numero , " é: ", raiz, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 621; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */