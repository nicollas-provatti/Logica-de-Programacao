programa {
	funcao inicio() {
		inteiro nota = 8

        /*
        [7, 10] -> Aprovado!
        [4, 6] -> Recuperação!
        [0, 3] -> Reprovado!
        */

        se (nota >= 7 e nota <= 10) {
            escreva("Aprovado!")
        }
        senao se (nota >= 4 e nota <= 6) {
            escreva("Recuperação!")
        }
        senao se (nota >= 0 e nota <= 3) {
            escreva("Reprovado!")
        }
        senao {
            escreva("Nota Inválida!")
        }
	}
}