programa
{
    funcao inicio()
    {
        inteiro numero, resultado

        escreva("Digite um número para calcular o fatorial: ")
        leia(numero)

        resultado = fatorial(numero)

        escreva("O fatorial de ", numero, " é ", resultado, "\n")
    }

    funcao inteiro fatorial(inteiro n)
    {
        // ✅ Caso base: fatorial de 0 ou 1 é 1
        se (n == 0 ou n == 1) {
            retorne 1
        }

        // 🔄 Caso recursivo: n! = n * (n-1)!
        retorne n * fatorial(n - 1)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */