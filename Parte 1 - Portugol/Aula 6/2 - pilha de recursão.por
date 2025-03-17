programa
{
    funcao inicio()
    {
        imprimir(5)
    }

    funcao imprimir(inteiro numero) {
        se (numero == 0) {
            escreva(numero, " ") // ✅ Caso base: quando `numero` for 0, a função para
        }
        senao {
            imprimir(numero - 1) // 🔄 Chamada recursiva antes da escrita
            escreva(numero, " ") // 📌 Impressão ocorre na volta da recursão
        }
    }

    // Aqui, a função imprimir(n) segue o conceito de pilha de recursão.
    // Ela chama imprimir(n-1) até que n == 0, onde a recursão para (caso base).
    // Na volta da recursão, os números são impressos de 0 até n.
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */