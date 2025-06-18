#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <windows.h>
#include <locale.h>
#define MAX_CONTAS 100

typedef struct {
    int numero;       
    char nome[100];  
    float saldo;      
} Conta;

// Fun��es do Banco de Dados
void carregarDados(Conta contas[], int *i, int *idAtual);
void salvarDados(Conta contas[], int totalContas);

// Fun��es Utilit�rias
int mostrarMenu();
int contaExiste(Conta contas[], int totalContas, int numero);
void carregando();

// Fun��es do Sistema
void criarConta(Conta contas[], int *totalContas, int *ids);
void exibirContas(Conta contas[], int totalContas);
void depositar(Conta contas[], int totalContas);
void sacar(Conta contas[], int totalContas);
void buscarConta(Conta contas[], int totalContas);
void transferir(Conta contas[], int totalContas);
void deletarConta(Conta contas[], int *totalContas);
void editarConta(Conta contas[], int totalContas);

int main() {
    setlocale(LC_ALL, "portuguese");

    Conta contas[MAX_CONTAS];
    int ids, totalContas = 0;

    carregarDados(contas, &totalContas, &ids);

    int opcao;

    do {
        opcao = mostrarMenu();
        getchar();

        system("cls");

        switch (opcao) {
        case 0:
            salvarDados(contas, totalContas);
            printf("Saindo do sistema.");
            carregando();
            break;
        case 1:
            criarConta(contas, &totalContas, &ids);
            break;
        case 2:
            exibirContas(contas, totalContas);
            break;
        case 3:
            depositar(contas, totalContas);
            break;
        case 4:
            sacar(contas, totalContas);
            break;
        case 5:
            buscarConta(contas, totalContas);
            break;
        case 6:
            transferir(contas, totalContas);
            break;
        case 7:
            deletarConta(contas, &totalContas);
            break;
        case 8:
            editarConta(contas, totalContas);
            break;
        default:
            printf("Op��o inv�lida. Tente novamente.");
        }
        Sleep(3000);
        system("cls");

    } while (opcao != 0);

    return 0;
}

// Fun��es do Banco de Dados
void carregarDados(Conta contas[], int *i, int *idAtual) {
    FILE *arquivo = fopen("contas.txt", "r");

    if (arquivo == NULL) {
        printf("Erro ao ler o arquivo.\n");
        return;
    }

    while (fscanf(arquivo, "%d,%99[^,],%f ", &contas[*i].numero, contas[*i].nome, &contas[*i].saldo) == 3) {
        (*i)++;
    }

    if (*i > 0) {
        *idAtual = contas[*i - 1].numero + 1;
    }
    else {
        *idAtual = 1001;
    }

    fclose(arquivo);
}

void salvarDados(Conta contas[], int totalContas) {
    FILE *arquivo = fopen("contas.txt", "w");

    if (arquivo == NULL) {
        printf("Erro ao escrever o arquivo!\n");
        return;
    }

    for (int i = 0; i < totalContas; i++) {
        fprintf(arquivo, "%d,%s,%.2f\n", contas[i].numero, contas[i].nome, contas[i].saldo);
    }

    fclose(arquivo);
}

// Fun��es Utilit�rias
int mostrarMenu() {
    int opcao;
    printf("\n===== SISTEMA BANC�RIO =====\n");
    printf("1 - Criar Conta\n");
    printf("2 - Exibir Contas\n");
    printf("3 - Depositar\n");
    printf("4 - Sacar\n");
    printf("5 - Buscar Conta\n");
    printf("6 - Transferir\n");
    printf("7 - Deletar Conta\n");
    printf("8 - Editar Conta\n");
    printf("0 - Sair\n");
    printf("============================\n\n");
    
    printf("Escolha uma op��o: ");
    scanf("%d", &opcao);
    return opcao;
}

int contaExiste(Conta contas[], int totalContas, int numero) {
    if (totalContas == 0) {
        printf("Nenhuma conta cadastrada!\n");
        return -2;
    }

    for (int i = 0; i < totalContas; i++) {
        if (contas[i].numero == numero) {
            return i;
        }
    }

    return -1;
}

void carregando() {
    Sleep(1000);
    printf(".");
    Sleep(1000);
    printf(".");
    Sleep(1000);
}

// Fun��es do Sistema
void criarConta(Conta contas[], int *totalContas, int *ids) {
    if (*totalContas >= MAX_CONTAS) {
        printf("O sistema atingiu o limite de contas!");
        return;
    }
    int i = *totalContas;
    printf("--- CADASTRO ---\n");
    printf("Digite seu nome: ");
    fgets(contas[i].nome, MAX_CONTAS, stdin);
    contas[i].nome[strcspn(contas[i].nome, "\n")] = '\0';
    contas[i].numero = *ids;
    contas[i].saldo = 0.0;

    printf("Ol�, %s! Sua conta foi criada com sucesso!\n", contas[i].nome);

    printf("--- DADOS ---\n");
    printf("N�mero: %d\n", contas[i].numero);
    printf("Nome: %s\n", contas[i].nome);
    printf("Saldo: R$ %.2f\n", contas[i].saldo);

    (*ids)++;
    (*totalContas)++;
}

void exibirContas(Conta contas[], int totalContas) {
    if (totalContas == 0) {
        printf("Nenhuma conta cadastrada!\n");
        return;
    }

    for (int i = 0; i < totalContas; i++) {
        printf("\n--- CONTA %d ---\n", i + 1);
        printf("N�mero: %d\n", contas[i].numero);
        printf("Nome: %s\n", contas[i].nome);
        printf("Saldo: R$ %.2f\n\n", contas[i].saldo);
    }
}

void depositar(Conta contas[], int totalContas) {
    int numero;
    printf("\nDigite o n�mero da conta: ");
    scanf("%d", &numero);

    int i = contaExiste(contas, totalContas, numero);
    printf("Buscando conta.");
    carregando();

    if (i == -1) {
        printf("Conta n�o encontrada.\n");
        return;
    }
    if (i >= 0) {
        float valorDeposito;
        printf("\nInforme o valor dop�sito: ");
        scanf("%f", &valorDeposito);

        if (valorDeposito <= 0) {
            printf("Valor Inv�lida.\n");
        }
        else {
            contas[i].saldo += valorDeposito;

            printf("\n--- DADOS ATUALIADOS ---\n");
            printf("N�mero: %d\n", contas[i].numero);
            printf("Nome: %s\n", contas[i].nome);
            printf("Saldo: R$ %.2f\n\n", contas[i].saldo);
        }
    }
}

void sacar(Conta contas[], int totalContas) {
    int numero;
    printf("\nDigite o numero da conta: ");
    scanf("%d", &numero);

    int i = contaExiste(contas, totalContas, numero);

    printf("Buscando conta.");
    carregando();

    if (i == - 1) {
        printf("Conta n�o encontrada.\n");
        return;
    }
    if (i >= 0) {
        float valorSaque;
        printf("\nInforme o valor do saque: ");
        scanf("%f", &valorSaque);

        if (valorSaque <= 0) {
            printf("Valor de saque inv�ido.\n");
        }
        else {
            if (valorSaque > contas[i].saldo) {
                printf("Saldo em conta insuficiente.\n");
            }
            else {
                contas[i].saldo -= valorSaque;

                printf("\n--- DADOS ATUALIZADOS ---\n");
                printf("N�mero: %d\n", contas[i].numero);
                printf("Nome: %s\n", contas[i].nome);
                printf("Saldo: R$ %.2f\n\n", contas[i].saldo);
            }
        }
    }
}

void buscarConta(Conta contas[], int totalContas) {
    int numero;
    printf("\nDigite o numero da conta: ");
    scanf("%d", &numero);

    int i = contaExiste(contas, totalContas, numero);

    printf("Buscando conta.");
    carregando();

    if (i == - 1) {
        printf("Conta n�o encontrada.\n");
        return;
    }
    if (i >= 0) {
        printf("\n--- DADOS ---\n");
        printf("N�mero: %d\n", contas[i].numero);
        printf("Nome: %s\n", contas[i].nome);
        printf("Saldo: R$ %.2f\n\n", contas[i].saldo);
    }
}

void transferir(Conta contas[], int totalContas) {
    int numeroOrigem;
    printf("\nInforme o n�mero da conta de origem: ");
    scanf("%d", &numeroOrigem);

    int numeroDestino;
    printf("\nInforme o n�mero da conta de destino: ");
    scanf("%d", &numeroDestino);

    int indiceOrigem = contaExiste(contas, totalContas, numeroOrigem);
    int indiceDestino = contaExiste(contas, totalContas, numeroDestino);

    printf("Buscando contas.");
    carregando();

    if (indiceOrigem == -1 && indiceDestino == -1) {
        printf("Contas n�o encontradas.\n");
        return;
    }
    if (indiceOrigem == -1) {
        printf("Conta de origem n�o encontrada.\n");
        return;
    }
    if (indiceDestino == -1) {
        printf("Conta de destino n�o encontrada.\n");
        return;
    }
    if (indiceOrigem >= 0 && indiceDestino >= 0) {
        float valorTranferencia;
        printf("\nInforme o valor da transfer�ncia: ");
        scanf("%f", &valorTranferencia);

        if (valorTranferencia <= 0) {
            printf("Valor inv�lido.\n");
        }
        else {
            if (valorTranferencia > contas[indiceOrigem].saldo) {
                printf("Saldo em conta insuficiente.\n");
            }
            else {
                contas[indiceOrigem].saldo -= valorTranferencia;
                contas[indiceDestino].saldo += valorTranferencia;

                printf("\n--- DADOS DA CONTA ORIGEM ---\n");
                printf("N�mero: %d\n", contas[indiceOrigem].numero);
                printf("Nome: %s\n", contas[indiceOrigem].nome);
                printf("Saldo: R$ %.2f\n\n", contas[indiceOrigem].saldo);

                printf("\n--- DADOS DA CONTA DESTINO ---\n");
                printf("N�mero: %d\n", contas[indiceDestino].numero);
                printf("Nome: %s\n", contas[indiceDestino].nome);
                printf("Saldo: R$ %.2f\n\n", contas[indiceDestino].saldo);
            }
        }
    }
}

void deletarConta(Conta contas[], int *totalContas) {
    int numero;
    printf("\nInforme o n�mero da conta: ");
    scanf("%d", &numero);

    int indice = contaExiste(contas, *totalContas, numero);

    if (indice == -1) {
        printf("Conta n�o encontrada.\n");
        return;
    }
    if (indice >= 0) {
        for (int i = indice; i < (*totalContas) - 1; i++) {
            strcpy(contas[i].nome, contas[i + 1].nome);
            contas[i].numero = contas[i + 1].numero;
            contas[i].saldo = contas[i + 1].saldo;
        }

        printf("Conta deletada com sucesso!\n");

        strcpy(contas[*totalContas - 1].nome, "");
        contas[*totalContas - 1].numero = 0;
        contas[*totalContas - 1].saldo = 0.0;

       ( *totalContas)--;
    }
}

void editarConta(Conta contas[], int totalContas) {
    int numero;
    printf("Informe o n�mero da conta: ");
    scanf("%d", &numero);

    int indice = contaExiste(contas, totalContas, numero);

    printf("Buscando conta.");
    carregando();

    if (indice == -1) {
        printf("\nConta n�o encontrada!");
        return;
    }
    if (indice >= 0) {
        getchar();

        printf("\n--- DADOS DA CONTA ---\n");
        printf("Nome: %s", contas[indice].nome);
        printf("\nNovo nome: ");
        fgets(contas[indice].nome, 100, stdin);
        contas[indice].nome[strcspn(contas[indice].nome, "\n")] = '\0';
        
        printf("\n\n--- DADOS ATUALIZADOS ---\n");
        printf("N�mero: %d\n", contas[indice].numero);
        printf("Nome: %s\n", contas[indice].nome);
        printf("Saldo: R$ %.2f", contas[indice].saldo);
    }
}