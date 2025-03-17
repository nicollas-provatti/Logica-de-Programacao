programa
{
    funcao inicio()
    {
        inteiro n, resultado

        escreva("Digite um número: ")
        leia(n)

        resultado = fibonacci(n)

        escreva("Fibonacci de ", n, " é ", resultado, "\n")
    }

    funcao inteiro fibonacci(inteiro n)
    {
        // ✅ Casos base
        se (n == 1) retorne 0
        se (n == 2) retorne 1

        // 🔄 Iteração para calcular Fibonacci
        inteiro a = 0, b = 1, proximo, i

        para (i = 3; i <= n; i++)
        {
            proximo = a + b  // 📌 Soma os dois números anteriores
            a = b  // 🚀 Atualiza o primeiro número
            b = proximo  // 🔄 Atualiza o segundo número
        }

        retorne b  // Retorna o resultado final
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 730; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */