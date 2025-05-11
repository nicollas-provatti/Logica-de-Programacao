# 📘 Aula 1 - Introdução

### 🔍 O que é um algoritmo
Um **algoritmo** é uma sequência de passos organizados** e finitos para resolver um problema ou realizar uma tarefa.

Podemos pensar em um algoritmo como uma receita de bolo:
Ela nos dá uma lista de instruções que precisamos seguir, na ordem certa, para alcançar um resultado — no caso, o bolo. Se a gente seguir todos os passos corretamente, o resultado final vai dar certo.

#### 🔹 Características de um algoritmo

* **Clareza:** cada passo deve ser bem definido e fácil de entender.

- **Ordem:** os passos devem estar na sequência correta.

* **Finitude:** o algoritmo deve terminar em algum momento.

- **Efetividade:** cada passo deve ser possível de ser realizado.


**Exemplo do dia a dia:**
Algoritmo para escovar os dentes:
1. Ir até o banheiro.
2. Pegar a escova de dentes.
3. Colocar pasta na escova.
4. Escovar os dentes por 2 minutos.
5. Enxaguar a boca.
6. Guardar a escova.

Veja como esse passo a passo tem um objetivo claro e uma ordem lógica. Isso é um algoritmo!


**Exemplo simples com número:**
**Problema:** Como saber se um número é par ou ímpar?
**Algoritmo:**
1. Ler um número.
2. Dividir o número por 2.
3. Se o resto da divisão for 0, ele é par.
4. Caso contrário, ele é ímpar.
5. Mostrar o resultado.

---

### 🔍 O que é lógica de programação 
A **lógica de programação** é a habilidade de organizar ideias e instruções de forma lógica e coerente para resolver problemas com a ajuda do computador.

Ela é como **o raciocínio por trás de um algoritmo**. Antes mesmo de escrever um código, precisamos pensar: *"Qual é o problema? Quais passos preciso seguir para resolvê-lo?"*

#### 🔹 Por que ela é importante?
Antes de aprender qualquer linguagem de programação, como Portugol, C ou Python, precisamos entender como **pensar como um programador**. Isso significa:

- Identificar o problema.
- Quebrar o problema em partes menores.
- Pensar em soluções passo a passo.
- Organizar essas soluções de forma lógica.

#### 🔹 A lógica vem antes da linguagem
Assim como você pode resolver um problema matemático com lápis e papel antes de usar a calculadora, você pode resolver um problema com lógica antes de escrever qualquer linha de código.

Por isso, neste curso, vamos aprender a **pensar logicamente** antes de nos preocupar com a sintaxe de uma linguagem.

#### 🔹 Exemplo simples:
**Problema:** Um aluno precisa saber se passou de ano.

- Se a média for maior ou igual a 7, ele passou.
- Caso contrário, ele está reprovado.

**Lógica para resolver:**
1. Ler a média do aluno.

2. Verificar se a média é maior ou igual a 7.

3. Se sim, mostrar "Aprovado".

4. Se não, mostrar "Reprovado".

---

### 🔍 O que é programa
Um **programa** é o resultado da aplicação da lógica de programação e dos algoritmos em uma linguagem que o computador consiga entender e executar.

Em outras palavras, é quando transformamos nossas ideias (os algoritmos) em **instruções escritas** em uma linguagem de programação, como Portugol, C, Python, Java etc.

#### 🔹 Como o programa funciona?
Quando você escreve um programa, está dizendo ao computador exatamente **o que fazer** e **como fazer**, passo a passo. O computador não “pensa” nem “interpreta” sozinho — ele apenas executa o que foi escrito.

#### 🔹 De onde vem um programa?
1. Identificamos o problema.

2. Criamos um algoritmo (uma solução passo a passo).

3. Escrevemos esse algoritmo em uma linguagem de programação.

4. O computador executa esse programa.

#### 🔹 Exemplo simples:
**Problema:** Mostrar “Olá, mundo!” na tela.
Programa em Portugol:
```portugol
inicio
   escreva("Olá, mundo!")
fim
```
Esse é um **programa completo**, por mais simples que seja. Ele resolve uma tarefa: mostrar uma mensagem na tela.

---

### 🔵 Ciclo de vida de um programa
O **ciclo de vida de um programa** representa todas as etapas que envolvem a criação, desenvolvimento e uso de um software — desde a ideia inicial até sua execução pelo usuário.

Mesmo em programas simples, como os que veremos neste curso, essas etapas nos ajudam a organizar o raciocínio e criar soluções melhores.

#### 🔹 Etapas

**1. Definição do Problema**
Antes de escrever qualquer linha de código, precisamos entender qual problema o programa deve resolver.

        Ex: “Queremos saber se um número é par ou ímpar.”

**2. Planejamento da Solução (Algoritmo)**
Criamos um passo a passo lógico para resolver o problema — ou seja, o algoritmo.

        Ex: “Dividir o número por 2 e verificar o resto.”

**3. Codificação (Implementação)**
Escrevemos o algoritmo em uma linguagem de programação, como Portugol, para que o computador possa entender e executar.

        Ex: escrever se (numero % 2 == 0) então escreva("Par").

**4. Compilação/Interpretação**
A linguagem do programa precisa ser traduzida para linguagem de máquina (0 e 1). Isso é feito por um compilador ou interpretador, dependendo da linguagem.

**5. Execução**
O programa é executado pelo computador, realizando os passos definidos.

**6. Teste e Correção (Depuração)**
Verificamos se o programa está funcionando corretamente. Se encontrar erros (chamados de bugs), corrigimos e testamos novamente.

**7. Manutenção e Atualizações**
Mesmo depois que o programa estiver funcionando, pode ser necessário melhorar, corrigir falhas ou adicionar novas funcionalidades.

---

### 🔵 Representação de algoritmos
Antes de escrever um código em uma linguagem de programação, é muito importante representar o algoritmo de uma forma que facilite a **visualização da lógica do problema**.

Existem diferentes formas de representar um algoritmo. As mais comuns são:
 
#### 🔹 Descrição narrativa (texto normal)
É a forma mais simples: escrever o passo a passo em linguagem natural, como se estivesse explicando para outra pessoa.

**Exemplo – Algoritmo para somar dois números:**

    1. Ler o primeiro número
    2. Ler o segundo número
    3. Somar os dois números
    4. Mostrar o resultado da soma

Fácil de entender, mas pode ser ambíguo.

#### 🔹 Peseudocódigo
É uma forma estruturada e próxima das linguagens de programação, mas escrita em português. Usa palavras-chave como `inicio`, `se`, `enquanto`, `escreva`, etc.

**Exemplo – Mesmo problema acima:**
```portugol
inicio
   leia(numero1)
   leia(numero2)
   soma ← numero1 + numero2
   escreva(soma)
fim
```
Ótimo para se aproximar da lógica usada no código real.
É a representação principal que usaremos no curso.

#### 🔹 Fluxograma
É uma representação **gráfica**, onde usamos **símbolos** para representar ações, decisões e fluxos de execução.

**Principais símbolos:**

    🔷 Início/Fim → Elipse

    🔲 Processo (ação) → Retângulo

    🔷 Decisão (condição) → Losango

    🔄 Setas → Indicam o fluxo

**Exemplo de fluxograma:**

![](https://imdtec.imd.ufrn.br/assets/imagens/logica-de-programacao/logica_programacao_a04_f02.png)

---

### 🔵 Estrutura básica de um programa em Portugol
O **Portugol** é uma linguagem de programação fictícia (não real) usada para **ensinar lógica de programação** de forma simples e didática, em português.

Durante este curso, utilizaremos o **Portugol WebStudio**, uma plataforma online gratuita que simula um ambiente de desenvolvimento, permitindo escrever, testar e executar algoritmos em Portugol diretamente pelo navegador.

🔗 **Link para acesso:** https://portugol.dev/

Todo programa em Portugol segue uma estrutura básica, como no exemplo abaixo:

```portugol
programa
{
    funcao inicio()
    {
        escreva("Olá, mundo!")
    }
}
```

* `programa { ... }`: Delimita o **início e fim do código** do programa. Tudo deve estar dentro dessas chaves.

- `funcao inicio() { ... }`: É o **ponto de partida** da execução. Todo programa começa por essa função, que é semelhante à função `main()` em linguagens como C ou Java.

* `escreva("Olá, mundo!")`: Exibe uma mensagem na tela. Pode ser usado para mostrar textos, resultados de operações, entre outros.

#### 🔹 Regras básicas de sintaxe no Portugol WebStudio
* Toda função ou bloco de código deve estar **dentro de chaves** `{ }`.

- As instruções devem estar dentro da função `inicio()`.

* As palavras-chave como `programa`, `funcao`, `escreva`, `leia`, `se`, etc., devem ser **escritas corretamente**.

- **Aspas duplas** são usadas para exibir mensagens: "Olá, mundo!".

* A indentação (recuo) não é obrigatória para funcionar, mas é **muito importante para a legibilidade** do código.

---

### 🔵 Comentários de Programa
Comentários de programa podem ser colocados em qualquer lugar e são tratados pelo compilador como **espaços em branco**. Eles ajudam quem desenvolve o programa e qualquer pessoas que lê o programa fonte. São utilizados para documentar o código. Eles podem ser de:
- **uma linha**: onde usamos `//`
* **várias linhas**: onde usamos `/* */`

**Exemplos:**
```portugol
programa {
    funcao inicio() {
        //escreva("Olá, mundo!\n")
        escreva("Lógica de programação")
    }
}
```
Neste exemplo, a instrunção `escreva("Olá, mundo!\n")` não será mais executada.

```portugol
programa {
    funcao inicio() {
        /*escreva("Olá, mundo!\n")
        escreva("Lógica de programação")*/
    }
}
```
Neste exemplo, a instrunção `escreva("Lógica de programação")` também não será mais executada.

---

### 🔵 GitHub
O GitHub é uma plataforma de **hospedagem de código-fonte** que permite salvar, compartilhar e colaborar em projetos.

**Criar uma conta:**
- Acesse: https://github.com
- Clique em **Sign Up** e preencha os dados.

**Criar um repositório:**
- Após fazer login, clique em **New Repository**
- Dê o nome: Logica-de-programacao - OxeTech Lab
- Clique em **Create repository**

**Adicionar arquivos manualmente**
- Dentro do repositório, clique em **Add file** > **Upload files**
- Escolha o arquivo `.por` do seu computador
- Clique em **Commit changes**

**Estrutura do Repositório:**
```scss
📁 curso-logica-de-programa
├── 📁 Aula 1
│   └── (Exercícios da Aula 1)
├── 📁 Aula 2
│   └── (Exercícios da Aula 2)
├── 📁 Aula 3
│   └── (Exercícios da Aula 3)
├── 📁 Aula 4
│   └── (Exercícios da Aula 4)
├── 📁 Aula 5
│   └── (Exercícios da Aula 5)
├── 📁 Aula 6
│   └── (Exercícios da Aula 6)
├── 📁 Aula 7
│   └── (Exercícios da Aula 7)
├── 📁 Aula 8
│   └── (Exercícios da Aula 8)
├── 📁 Aula 9
│   └── (Exercícios da Aula 9)
├── 📁 Aula 10
│   └── (Exercícios da Aula 10)
├── 📁 Aula 11
│   └── (Exercícios da Aula 11)
├── 📁 Aula 12
│   └── (Exercícios da Aula 12)
├── 📁 Aula 13
│   └── (Exercícios da Aula 13)
├── 📁 Aula 14
│   └── (Exercícios da Aula 14)
├── 📁 Projeto Incremental
│   └── (Etapas progressivas de um projeto desenvolvido ao longo do curso)
├── 📁 Projeto Final
│   └── (Projeto final completo feito ao final do curso)
```

---