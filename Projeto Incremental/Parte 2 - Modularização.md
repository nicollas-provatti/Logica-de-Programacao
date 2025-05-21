# 🏦 Projeto Sistema Bancário — Etapa 2: Modularização

---

## 🎯 Objetivo:
Reorganizar o código do menu usando **funções** (modularização). Cada opção do menu agora será tratada por uma **função separada** e o menu também será exibido por uma função específica.

---

## 📝 Passo a Passo:

#### 1️⃣ Criar a função do menu: `mostrarMenu`
Ao invés de mostrar o menu dentro do `inicio`, crie uma **função inteira** chamada `mostrarMenu()` que:

- Exibe as opções.
- Lê a escolha do usuário.
- Retorna o valor da opção escolhida.

<br>

#### 2️⃣ Substituir o código do menu principal
Na função `inicio()`, substitua a exibição direta do menu por uma chamada à nova função` mostrarMenu()`:

```portugol
opcao = mostrarMenu()
```

<br>

#### 3️⃣ Criar uma função para cada operação
Crie uma **função vazia** (funcao vazio) para cada opção do menu, que por enquanto só exibe uma mensagem simples:

```portugol
funcao vazio criarConta() {
    escreva("Opção Criar Conta selecionada.")
}
```

Repita isso para:

- `exibirContas()`
- `depositar()`
- `sacar()`
- `buscarConta()`


<br>

#### 4️⃣ Chamar as funções no lugar dos blocos de código
Dentro da estrutura `escolha`, chame a função correspondente a cada opção:

```portugol
escolha (opcao) {
    caso 1:
        criarConta()
        pare
    caso 2:
        exibirContas()
        pare
    // ...
}
```
<br>

#### 5️⃣ Utilizar recursos de usabilidade
Use a **biblioteca Util** (`u`) para:

- Aguardar alguns segundos entre as interações com `u.aguarde(3000)`
- Limpar a tela com `limpa()` após cada operação

Não se esqueça de incluir no início do programa:

```portugol
inclua biblioteca Util --> u
```

---

### ✅ Resultado Esperado:
O programa funciona **igual à versão da Etapa 1**, porém agora está **organizado em funções**. Isso facilita muito a leitura, manutenção e expansão futura (como adicionar código real para as operações).

---