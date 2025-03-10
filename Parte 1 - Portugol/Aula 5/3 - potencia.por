programa
{
    inclua biblioteca Matematica --> mat // Inclui a biblioteca de funções matemáticas
    
    funcao inicio()
    {
        real base, quadrado, cubo, resultado

        // Solicita um número ao usuário
        escreva("Informe um número: ")
        leia(base)

        // Eleva o número ao quadrado usando a função de potência da biblioteca
        quadrado = mat.potencia(base, 2.0)
        escreva("\n", base, " ao quadrado é igual a: ", quadrado)

        // Eleva o número ao cubo usando a função de potência da biblioteca
        cubo = mat.potencia(base, 3.0)
        escreva("\n", base, " ao cubo é igual a: ", cubo, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 651; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */