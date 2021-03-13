% Task 1:
men :- man(X),write(X),nl,fail.   % Выводит на экран всех мужчин
women :- woman(X),write(X),nl,fail. % Выводит на экран всех женщин

% Task 2:
children(X) :- parent(X,Y),write(Y),nl,fail. % Выводит на экран всех детей X

% Task 3:
mother(X,Y) :- parent(X,Y),woman(X). % Проверяет, является ли X матерью Y
mother(X) :- parent(Y,X),woman(Y),write(Y),nl. % Выводит на экран маму X

% Task 4:
son(X,Y) :- parent(Y,X),man(X),!. % Проверяет, является ли X сыном Y
son(X) :- parent(X,Y),man(Y),write(Y),nl,!. % Выводит на экран сына X

% Task 5:
brother(X,Y) :- man(X),parent(Z,X),parent(Z,Y),X\=Y,!. % Проверяет, является ли X братом Y
brothers(X) :- mother(Y,X),mother(Y,Z),Z\=X,man(Z),write(Z),nl,fail. % Выводит на экран всех братьев X

% Task 6:
sister(X,Y) :- woman(X),parent(Z,X),parent(Z,Y),X\=Y,!. % Проверяет, является ли X сестрой Y
sisters(X) :- mother(Y,X),mother(Y,Z),Z\=X,woman(Z),write(Z),nl,fail. % Выводит на экран всех сестер X

% Task 7:
b_s(X,Y) :- parent(Z,X),parent(Z,Y),X\=Y,!. % Проверяет, являются ли X и Y родными братьями/сестрами/братом и сестрой
b_s(X) :- mother(Y,X),mother(Y,Z),X\=Z,write(Z),nl,fail. % Выводит на экран всех братьев/сестер X

% Task 8:
grand_pa(X,Y) :- parent(Z,Y),parent(X,Z),man(X),!. % Проверяет, является ли X дедушкой Y
grand_pas(X) :- parent(Y,X),parent(Z,Y),man(Z),write(Z),nl,fail. % Выводит на экран всех дедушек X

% Task 9:
grand_son(X,Y) :- parent(Z,X),parent(Y,Z),man(X),!. % Проверяет, является X внуком Y
grand_sons(X) :- parent(Y,Z),parent(X,Y),man(Z),write(Z),nl,fail. % Выводит на экран всех внуков X

% Task 10:
grand_pa_and_son(X,Y) :- parent(Z,X),parent(Y,Z),!,man(X),man(Y). % Проверяет, является ли (X внуком Y && Y дедушкой X)
grand_pa_and_son(X,Y) :- parent(Z,Y),parent(X,Z),!,man(X),man(Y). % Проверяет, является ли (Y дедушкой X && X внуком Y)

% Task 11:
grand_pa_and_da(X,Y) :- parent(Z,X),parent(Y,Z),!,man(Y),woman(X). % Проверяет, является ли (X внучкой Y && Y дедушкой X)
grand_pa_and_da(X,Y) :- parent(X,Z),parent(Z,Y),!,man(X),woman(Y). % Проверяет, является ли (Y дедушкой X && X внучкой Y)

% Task 12:
father(X,Y) :- parent(X,Y),man(X),!. % Проверяет, является ли X отцом Y
uncle(X,Y) :- parent(Z,Y),brother(X,Z),!. % Проверяет, является ли X дядей Y
uncles(X) :- father(Y,X),brothers(Y),fail. % Выводит на экран всех родных братьев папы X 
uncles(X) :- mother(Y,X),brothers(Y),fail. % Выводит на экран всех родных братьев мамы X 

% Task 13:
aunt(X,Y) :- parent(Z,Y),sister(X,Z). % Проверяет, является ли X тетей Y
aunts(X) :- father(Y,X),sisters(Y),fail. % Выводит на экран всех родных сестер папы X 
aunts(X) :- mother(Y,X),sisters(Y),fail. % Выводит на экран всех родных сестер мамы X 
