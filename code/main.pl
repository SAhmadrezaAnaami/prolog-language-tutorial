count_to_10(10) :- write(10),nl.
count_to_10(X) :-
   write(X),nl,
   Y is X + 1,
   count_to_10(Y).

count_down(L, H) :-
   between(L, H, Y),
   Z is H - Y,
   write(Z), nl.

count_up(L, H) :-
   between(L, H, Y),
   Z is L + Y,
   write(Z), nl.

gt(X , Y) :- X >= Y ,write(X), write(" is greater than ") , write(Y).
gt(X , Y) :- X < Y , write("X is smaller than Y").

list_member(X,[X|_]).
list_member(X,[_|TAIL]) :- list_member(X,TAIL).

list_length([],0).
list_length([_|TAIL],N) :- list_length(TAIL,N1), N is N1 + 1.

