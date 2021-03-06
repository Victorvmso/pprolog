:- include('Utilitarios.pl').
%%%%%%%%%%%%%%%%%% Trata Constantes, Soma e Subtracao %%%%%%%%%%%%%%%%%%%%%%%%

avalie(inteiro(X), R, T, _, _):-
	R is X,
	T = 'inteiro'.
	
avalie(somar(Esq, Dir), R, T, Ai, Af):-
	avalie(Esq, E, Te, Ai, Af),
	avalie(Dir, D, Td, Ai, Af),
	checaTipo(Te, Td, T),
	(T == 'inteiro' ->
		R is E + D;
		write('Erro na Checagem de tipos SOMAR'),
		T = 'Quebra', fail).		

avalie(subtrair(Esq, Dir), R, T, Ai, Af):-
	avalie(Esq, E, Te, Ai, Af),
	avalie(Dir, D, Td, Ai, Af),
	checaTipo(Te, Td, T),
	(T == 'inteiro' ->
		R is E - D;
		write('Erro na Checagem de tipos SUBTRAIR'),
		T = 'Quebra', fail).