pprolog
=======

Implementação de um interpretador para uma linguagem de programação utilizando a semantica do Prolog 

Exemplo de execução dos testes:

$ swipl
Welcome to SWI-Prolog (Multi-threaded, 64 bits, Version 6.4.1)
Copyright (c) 1990-2013 University of Amsterdam, VU Amsterdam
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software,
and you are welcome to redistribute it under certain conditions.
Please visit http://www.swi-prolog.org for details.

For help, use ?- help(Topic). or ?- apropos(Word).

?- ['Testes.pl'].
% Testes.pl compiled 0,01 sec, 6 clauses
true.

?- main.

%%%%%%%%%%%%%%%%%% Testes algebricos %%%%%%%%%%%%%%%%%%
Teste: 4+5 Resultado: 9 Tipo: inteiro Esperado: 9 OK
Teste: 4-5 Resultado: -1 Tipo: inteiro Esperado: -1 OK
Teste: (4+5)-5 Resultado: 4 Tipo: inteiro Esperado: 4 OK
Teste: 4*5 Resultado: 20 Tipo: inteiro Esperado: 20 OK
Teste: 4/2 Resultado: 2 Tipo: inteiro Esperado: 2 OK
Teste: (4*5)/5 Resultado: 4 Tipo: inteiro Esperado: 4 OK

%%%%%%%%%%%%%%%%%% Testes logicos %%%%%%%%%%%%%%%%%%
Teste: verdadeiro e falso Resultado: falso Tipo: booleano Esperado: falso OK
Teste: verdadeiro ou falso Resultado: verdadeiro Tipo: booleano Esperado: verdadeiro OK
Teste: se(verdadeiro ou falso) então 1, senão 2 Resultado: 1 Tipo: inteiro Esperado: 1 OK
Teste: se(verdadeiro) então 1, senão 2 Resultado: 1 Tipo: inteiro Esperado: 1 OK
Teste: se(falso) então 1, senão 2 Resultado: 2 Tipo: inteiro Esperado: 2 OK
Teste: nao falso Resultado: verdadeiro Tipo: booleano Esperado: verdadeiro OK

%%%%%%%%%%%%%%%%%% Testes de Let %%%%%%%%%%%%%%%%%%
Teste: let(X=5) Resultado: [ (X,inteiro(4),[])] Tipo: let Esperado: [ (X,inteiro(4),[])] OK
Teste: X+3 (onde X=4) Resultado: 7 Tipo: inteiro Esperado: 7 OK

%%%%%%%%%%%%%%%%%% Testes de Declaração de Funções %%%%%%%%%%%%%%%%%%
Teste: Af Resultado: [ (Incremento,soma(variavel(X),inteiro(1)),[ (X,inteiro)])] Tipo: declaraFunc Esperado: [ (Incremento,soma(variavel(X),inteiro(1)),[ (X,inteiro)])] OK
Teste: Incremento(4) Resultado: 5 Tipo: inteiro Esperado: 5 OK
true .

?- halt.
