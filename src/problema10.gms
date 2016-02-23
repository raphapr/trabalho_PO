$Title 10: O Problema do Jantar de Nero

$Ontext

## Variáveis de decisão

x1 = número de envenenados do sexo masculino
x2 = número de envenenados do sexo feminino
x3 = número de envenenados pelo veneno alfa
x4 = número de envenenados pelo veneno beta

## Função Objetivo

Maximizar
z = x1 + x2 + x3 + x4

Número total de envenenados.

## Restrições

a) Restrições de disponibilidade de veneno:

Tipo alfa: 12*x1 + 6*x2 <= 500
Tipo beta: 6*x3 + 3*x4 <= 2000

b) Restrição devida ao paladar:

(12*x1 + 6*x2) / (6*x3 + 3*x4) = 3

Pode ser transformada em uma restrição linear

12*x1 + 6*x2 = 18*x3 + 9*x4;

c) Restrições de demanda:

Homens envenenados:     x1 + x2 <= 20
Mulheres envenanadas:   x3 + x4 <= 10

## Resultado

Depois de aplicado o algoritmo, os resultados foram:

x1 = 10 envenenados do sexo masculino
x2 = 10 envenenados do sexo feminino
x3 = 0  envenenados pelo veneno alfa
x4 = 10 envenenados pelo veneno beta

Com esses valores, a função objetivo é: 

z  = 30 (total de envenenados)

$Offtext

Positive Variable

x1 Número de envenenados do sexo masculino
x2 Número de envenenados do sexo feminino
x3 Número de envenenados pelo veneno alfa
x4 Número de envenenados pelo veneno beta;

Free Variables

z Número total de envenenados;

Equations

obj    Função objetivo: Número total de envenenados
restr1 Restrição 1
restr2 Restrição 2
restr3 Restrição 3
restr4 Restrição 4
restr5 Restrição 5;

obj.. z =e= x1 + x2 + x3 + x4;
restr1.. 12*x1 + 6*x2 =l= 500;
restr2.. 6*x3 + 3*x4 =l= 2000;
restr3.. 12*x1 + 6*x2 =e= 18*x3 + 9*x4;
restr4.. x1 + x2 =l= 20;
restr5.. x3 + x4 =l= 10;

model problema10 /all/;

solve problema10 using mip max z;