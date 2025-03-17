programa
{
    funcao inteiro fibonacci(inteiro n)
    {
        // 🚀 Casos base: F(1) = 0 e F(2) = 1
        se (n == 1) {
            retorne 0
        }
        se (n == 2) {
            retorne 1
        }

        // 🔄 Caso recursivo: F(n) = F(n-1) + F(n-2)
        retorne fibonacci(n - 1) + fibonacci(n - 2)
    }

    funcao inicio()
    {
        inteiro num, resultado
        escreva("Informe um número: ")
        leia(num)
        
        resultado = fibonacci(num)
        escreva("O ", num, "º número da sequência de Fibonacci é: ", resultado, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */