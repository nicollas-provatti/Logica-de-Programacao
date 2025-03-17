programa
{
    funcao inicio()
    {
        //recursiva()
        //contagem(0)
    }

    funcao recursiva() {
        escreva("Olá, mundo\n")
        recursiva() // 🚨 Chamada recursiva sem caso base → causa um loop infinito!
    }

    funcao contagem(inteiro contador) {
        escreva(contador, "\n")
        contador++  // 🔄 Incrementa a variável contador
        contagem(contador) // 🚨 Chamada recursiva sem caso base → loop infinito!
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */