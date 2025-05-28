programa {
	funcao inicio() {
    // Ler as notas de vários alunos

    real aluno1Nota1, aluno1Nota2, aluno1Nota3
    real aluno2Nota1, aluno2Nota2, aluno2Nota3
    real aluno1Media, aluno2Media

    escreva("Aluno 1\n")
    escreva("Nota 1: ")
    leia(aluno1Nota1)
    escreva("Nota 2: ")
    leia(aluno1Nota2)
    escreva("Nota 3: ")
    leia(aluno1Nota3)

    escreva("\nAluno 2\n")
    escreva("Nota 1: ")
    leia(aluno2Nota1)
    escreva("Nota 2: ")
    leia(aluno2Nota2)
    escreva("Nota 3: ")
    leia(aluno2Nota3)

    aluno1Media = (aluno1Nota1 + aluno1Nota2 + aluno1Nota3) / 3.0
    aluno2Media = (aluno2Nota1 + aluno2Nota2 + aluno2Nota3) / 3.0

    escreva("\nMédia do aluno 1: ", aluno1Media, "\n")
    escreva("Média do aluno 2: ", aluno2Media)

    // Problema: É preciso criar muitas variáveis. E saber a quantidade de notas e alunos.
	}
}