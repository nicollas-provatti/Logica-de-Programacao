#include <stdio.h>

int main() {
    // O CARACTER NULO \0
    
    char saudacao[] = "Hello";

    /* printf("%d\n", sizeof(char));
    printf("%d\n", sizeof(int));
    printf("%d\n", sizeof(float));
    printf("%d\n", sizeof(double)); */
    
    printf("%d\n", sizeof(saudacao));

    // ['H', 'e', 'l', 'l', 'o', '\0']

    for (int i = 0; saudacao[i] != '\0'; i++) {
        printf("%c\n", saudacao[i]);
    }

    return 0;
}