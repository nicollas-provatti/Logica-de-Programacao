programa
{
    inteiro N1 = 5 // Variável Global
    
    funcao inicio() 
    {
        rotina() // Chama a função rotina()
        
        // Tentativa de acessar a variável 'numero' de rotina() aqui resultaria em erro
        //escreva(numero)

        escreva(N1, "\n") // Acessa e imprime a variável global
    }

    funcao rotina() 
    {
        inteiro numero = 20 // Variável Local
        
        escreva(20, "\n") // Imprime a variável local 'numero'
        escreva(N1, "\n") // Acessa e imprime a variável global 'N1'
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 542; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */