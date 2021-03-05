% Task #1
max(X, Y, Z) :- X >= Y, Z is X, !.
max(_, Y, Z) :- Z is Y.

% Task #2
max(X, Y, U, Z) :- X >= Y, X >= U, Z is X, !.
max(_, Y, U, Z) :- Y >= U, Z is Y, !.
max(_, _, U, Z) :- Z is U.

% Task #3
fact(0, 1) :- !.
fact(N, X) :- N1 is N - 1, fact(N1, X1), X is X1 * N.

% Task #4
fact(0, CurX, CurX) :- !.
fact(N, CurX, X) :- CurX1 is CurX * N, N1 is N - 1, fact(N1, CurX1, X).
factN(N, X) :- fact(N, 1, X).

% Task #5
fib(1, 1) :- !.
fib(2, 1) :- !.
fib(N, X) :- N1 is N - 1, N2 is N - 2, fib(N1, X1), fib(N2, X2), X is X1 + X2.

% Task #6
fib(1, _, CurX2, CurX2) :- !.
fib(2, _, CurX2, CurX2) :- !.
fib(N, CurX1, CurX2, X) :- CurX3 is CurX1 + CurX2, N1 is N - 1, fib(N1, CurX2, CurX3, X).
fibN(N, X) :- fib(N, 1, 1, X).

% Task #7
sum_digits_up(0, 0) :- !.
sum_digits_up(Num, Sum) :- Mod is Num mod 10, Num1 is Num div 10, sum_digits_up(Num1, Sum1), Sum is Sum1 + Mod.

% Task #8
sum_digits_down(0, CurSum, CurSum) :- !.
sum_digits_down(Num, CurSum, Sum) :- Mod is Num mod 10, Num1 is Num div 10, CurSum1 is CurSum + Mod, sum_digits_down(Num1, CurSum1, Sum).
sum_digits_down_n(Num, Sum) :- sum_digits_down(Num, 0, Sum).

% Task #9
min_digit(Min, Min) :- Min div 10 =:= 0, !.
min_digit(Num, Min) :- Min2 is Num mod 10, Num1 is Num div 10, min_digit(Num1, Min1), (Min1 < Min2 -> Min is Min1; Min is Min2).