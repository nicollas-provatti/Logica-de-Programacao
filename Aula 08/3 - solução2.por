programa {
	funcao inicio() {
    // Ler as notas de vários alunos

    real aluno1Notas[3], aluno1Media = 0
    real aluno2Notas[3], aluno2Media = 0

    escreva("ALUNO 1\n")
    para (inteiro i = 0; i < 3; i++) {
      escreva("Nota ", i + 1, ": ")
      leia(aluno1Notas[i])

      aluno1Media += aluno1Notas[i]
    }

    aluno1Media = aluno1Media / 3

    escreva("\nALUNO 2\n")
    para (inteiro i = 0; i < 3; i++) {
      escreva("Nota ", i + 1, ": ")
      leia(aluno2Notas[i])

      aluno2Media += aluno2Notas[i]
    }

    aluno2Media = aluno2Media / 3

    escreva("\nMédia do aluno 1: ", aluno1Media, "\n")
    escreva("Média do aluno 2: ", aluno2Media)

    // Problema: É preciso criar uma array para cada aluno.
	}
}