#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define TAM 100

// 1. Modelar a struct e criar o menu
// 2. criarConta()
// 3. exibirContas()   
// 4. buscarConta()
// 5. depositarDinheiro()
// 6. sacarDinheiro() 

int qtdClientes = 0;

typedef struct cliente {
    char nome[50];
    int numeroConta;
    float saldo;
} Cliente;

void criarConta(Cliente clientes[]) {

    if (qtdClientes > TAM) {
        printf("Limite de usuários atingido!\n");
        return;
    }

    char nome[50];
    
    printf("\nInforme seus dados:\n");
    printf("Nome: ");
    scanf("%49[^\n]", clientes[qtdClientes].nome);
    printf("Numero da Conta: ");
    scanf("%d", &clientes[qtdClientes].numeroConta);
    clientes[qtdClientes].saldo = 0.0;
    qtdClientes++;
    printf("Conta criada com sucesso!!\n\n");
}

void exibirContas(Cliente clientes[]) {
    for (int i = 0; i < qtdClientes; i++) {
        printf("\nDados do %d. cliente:\n", i + 1);
        printf("Nome: %s\n", clientes[i].nome);
        printf("Conta: %d\n", clientes[i].numeroConta);
        printf("Saldo: R$ %.2f\n\n", clientes[i].saldo);
    }
}

int buscarConta(Cliente clientes[], int numeroConta) {

    for (int i = 0; i < qtdClientes; i++) {
        if (clientes[i].numeroConta == numeroConta) {
            return i;
        }
    }

    return -1;
}

void depositarDinheiro(Cliente clientes[]) {
    int numeroConta;
    printf("\nNumero da conta: ");
    scanf("%d", &numeroConta);

    int res = buscarConta(clientes, numeroConta); 

    if (res != - 1) {
        float deposito;
        printf("Valor do deposito: ");
        scanf("%f", &deposito);

        clientes[res].saldo += deposito;
        printf("Depositvo realizado com sucesso!!\n\n");
    }
    else {
        printf("Cliente nao encontrado!\n\n");
    }
    
}


void sacarDinheiro(Cliente clientes[]) {
    int numeroConta;
    printf("\nNumero da conta: ");
    scanf("%d", &numeroConta);

    int res = buscarConta(clientes, numeroConta); 

    if (res != - 1) {
        float saque;
        printf("Valor do saque: ");
        scanf("%f", &saque);

        if (saque > clientes[res].saldo) {
            printf("Saldo insuficiente!\n\n");
        }
        else {
            clientes[res].saldo -= saque;
            printf("Saque realizado com sucesso!!\n\n");
        } 
    }
    else {
        printf("Cliente nao encontrado!!\n\n");
    }
}

int main() {

    Cliente clientes[TAM];

    while (1) {
        printf("Escolha uma opcao:\n");
        printf("1 - Criar uma conta\n");
        printf("2 - Exibir Contas\n");
        printf("3 - Depositar dinheiro\n");
        printf("4 - Sacar dinheiro\n");
        printf("5 - Buscar conta\n");
        printf("6 - Finalizar programa\n\n");
        printf("Escolha uma opcao: ");

        int opcao;
        scanf("%d", &opcao);
        system("clear");

        if (opcao == 6) {
            printf("Finalizando...\n");
            break;
        }

        switch (opcao) {
            case 1:
                getchar();
                criarConta(clientes);
                break;
            case 2:
                exibirContas(clientes);
                break;
            case 3:
                depositarDinheiro(clientes);
                break;
            case 4:
                sacarDinheiro(clientes);
                break;

            int numeroConta;
            case 5: 
                printf("\nNumero da conta: ");
                scanf("%d", &numeroConta);

                int res = buscarConta(clientes, numeroConta);

                if (res != - 1) {
                    printf("\nCliente encontrdo: \n");
                    printf("Nome: %s\n", clientes[res].nome);
                    printf("Numero da conta: %d\n", clientes[res].numeroConta);
                    printf("Saldo: %.2f\n\n", clientes[res].saldo);
                }
                else {
                    printf("Cliente não encontrado!\n\n");
                }
                break;
            default:
                printf("Opcao invalida. Tente novamente!\n");
        }
    }

    return 0;
}