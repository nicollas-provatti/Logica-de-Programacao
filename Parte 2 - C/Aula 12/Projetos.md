# 📚 Projeto 1: Sistema de Gerenciamento de Biblioteca

## 📌 Descrição
O sistema permitirá que um bibliotecário cadastre, consulte e gerencie livros de uma biblioteca usando **array de structs**. Cada livro terá informações como:
- **título** (`string`)
- **autor** (`string`)
- **ano de publicação** (`int`)
- **status** (disponível (1) ou emprestado (0)). (`int`) 

## 🛠️ Funcionalidades Obrigatórias

<div>

- **Adicionar um livro:** O usuário pode cadastrar um novo livro informando título, autor e ano de publicação. O status do livro será "disponível" por padrão.
</div>
<div>

- **Listar todos os livros:** Exibir a lista completa de livros cadastrados com suas informações e status.
</div>

<div>

- **Buscar um livro pelo título:** O usuário pode digitar o nome de um livro e o sistema informará se ele existe no cadastro e seu status.
</div>

<div>

- **Emprestar um livro:** O usuário pode buscar um livro e, caso esteja disponível, ele será marcado como "emprestado".

</div>

<div>

- **Devolver um livro**: O usuário pode devolver um livro emprestado, marcando-o como "disponível" novamente.
</div>

<div>

- **Remover um livro do sistema:** O usuário pode remover um livro da biblioteca, desde que ele não esteja emprestado.
</div>

## 🌟 Desafio Extra: Salvar e carregar dados de livros
Implementar a **manipulação de arquivos** para que os livros cadastrados não sejam perdidos ao fechar o programa.

---

# 🎓 Projeto 2: Sistema de Gerenciamento de Alunos

## 📌 Descrição
O sistema permitirá que um professor cadastre e gerencie os alunos de uma turma usando **array de structs**. Cada aluno terá informações como:
- nome (`string`)
- matrícula (`int`)
- três notas (permitindo o cálculo da média) (`float`)

## 🛠️ Funcionalidades Obrigatórias

<div>

- **Cadastrar um aluno:** O usuário pode cadastrar um aluno informando nome, número de matrícula e três notas.
</div>
<div>

- **Listar todos os alunos:** Exibir todos os alunos cadastrados junto com suas notas e média final.
</div>

<div>

- **Buscar um aluno pela matrícula:** O usuário pode digitar uma matrícula e ver os dados do aluno correspondente.
</div>

<div>

- **Calcular a média de um aluno:** O sistema deve calcular e exibir a média das três notas de um aluno específico.

</div>

<div>

- **Mostrar alunos aprovados e reprovados:** Definir um critério de aprovação (por exemplo, média ≥ 7 é aprovado) e listar separadamente os alunos aprovados e reprovados.
</div>

<div>

- **Remover um aluno do sistema:** O professor pode remover um aluno informando sua matrícula.
</div>

## 🌟 Desafio Extra: Salvar e carregar dados de alunos
Implementar a **manipulação de arquivos** para armazenar os dados e evitar que sejam perdidos ao fechar o programa.






