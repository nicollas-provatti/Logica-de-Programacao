programa {
	funcao inicio() {

    inteiro opcao

		escreva("--------Menu-------\n")
        escreva("1 - Adicionar Livro\n")
        escreva("2 - Remover Livro\n")
        escreva("3 - Listar Livros\n")
        escreva("4 - Buscar Livro\n")
        escreva("-------------------\n\n")

        escreva("Escolha uma opção: ")
        leia(opcao)

        escolha (opcao) {
            caso 1:
                escreva("Adicionando livro...\n")
                pare
            caso 2: 
                escreva("Removendo livro...\n")
                pare
            caso 3:
                escreva("Listando livros...\n")
                pare
            caso 4:
                escreva("Buscando livro..\n")
                pare
            caso contrario:
                escreva("Opção Inválida!\n")
        }
	}
}