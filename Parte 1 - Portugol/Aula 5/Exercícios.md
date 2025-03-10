# 📝 Exercícios 

## 📌Questão 1  - Situação do aluno

### Descrição

Escreva uma função que receba como parâmetro a média e a quantidade de faltas (limite 10) de um aluno e retorne sua situação ao final do semestre. A situação de um aluno e classificiada da seguinte forma:
- Se o aluno tiver um média *maior ou igual* a 9.5 **e** *não ultrapassou* o limite de faltas sua situação é: ***APROVADO COM LOUVOR***
- Se o aluno tiver um média *maior ou igual a 7.0* **e** *não ultrapassou* o limite de faltas sua situação é: ***APROVADO*** 
- *Caso contrário* a situação do aluno é: ***REPROVADO***

---

## 📌Questão 2 - Limite de Velocidade

### Descrição

Um sistema de radares será instalado para multar condutores que excederem o limite de 50 km/h. As multas serão aplicadas da seguinte forma: até 10% acima do limite, R\$ 230; entre 10% e 20%, R\$ 340; acima de 20%, R\$ 19,28 por km excedido. Escreva a função CalculaMulta, que recebe a velocidade de um condutor e retorna o valor da multa.

--- 

## 📌Questão 3 - É ano Bissexto?

### Descrição
Crie uma função chamada "eh_bissexto" que receba como parâmetro um ano e indique se ele é bissexto ou não.
Para descobrirmos se um ano é bissexto, fazemos o seguinte cálculo:
- se o ano for divisível por 4 mas não por 100, ele é bissexto.
- Ou
- Se o ano for divisível por 4, por 100 e por 400, ele também é bissexto.

---

## 📌Questão 4 - Distância entre dois pontos

### Descrição

Escreva um programa que, dado as coordenadas de dois pontos A(x1,y1) e B(x2,y2) no plano cartesiano, calcule a distância entre eles. Implemente uma função que receba as coordenadas dos pontos e retorne a distância entre eles. A fórmula para calcular a distância entre dois pontos A(x1,y1) e B(x2,y2) é dada por:  

$$
d = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}
$$

**Dica:** use as funções raiz() e potencia() da biblioteca Matematica para calcular a pontência e a raiz quadrada.

---

## 📌Questão 5 - Volume de uma esfera

### Descrição

Escreva um programa que receba o raio de três esferas e calcule o volume de cada uma utilizando uma função chamada VolumeEsfera. A função deve receber o raio como único parâmetro e retornar o volume da esfera, sem imprimir o valor. O programa deve chamar essa função para calcular e, em seguida, imprimir os volumes das três esferas. O volume da esfera é dado pela seguinte fórmula:

$$
V = \frac{4}{3} \pi r^3
$$

---