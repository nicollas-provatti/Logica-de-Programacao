programa {
	funcao inicio() {
    // Ler as notas de vários alunos

    real notas[2][3]

    // Linhas: alunos
    // Colunas: notas

    inteiro melhorAluno
    real melhorMedia = 0

    para (inteiro i = 0; i < 2; i++) {

      real media = 0

      escreva("ALUNO ", i + 1, "\n")

      para (inteiro j = 0; j < 3; j++) {
        escreva("Nota ", j + 1, ": ")
        leia(notas[i][j])

        media += notas[i][j]
      }

      media = media / 3

      se (media > melhorMedia) {
        melhorMedia = media
        melhorAluno = i
      }

      escreva("Média do aluno ", i + 1, ": ", media, "\n\n")
    }

    escreva("O aluno ", melhorAluno + 1," teve a melhor media: ", melhorMedia)

    // Problema: O tamanho da matriz é estático.
	}
}