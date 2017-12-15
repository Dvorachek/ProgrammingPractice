% List Operations in Prolog

:-style_check(-singleton).

concat([], Li, Li).
concat([Head|Tail], Li, [Head|Rest]):- concat(Tail, Li, Rest).

subset(X, Y):- concat(X, _, Y).
subset(X, [Y|Ys]):- subset(X, Ys).

% Or in one line
sublist(S, L):- concat(_, S, M), concat(M, _, L).

member(X, List):- concat(_, [X|_], List).

reverse([], []).
reverse([X|Xs], Y):- reverse(Xs, XsY), concat(XsY, [X], Y).

palindrome(X):- reverse(X, X).

len([], 0).
len([_|L], N):- len(L, N1), N is N1 + 1.

alldif([]).
alldif([_]).
alldif([X1, X2|Xs]):- dif(X1, X2), alldif([X1|Xs]), alldif([X2|Xs]).

% Mergesort
merge([], [], []).
merge(L, [], L).
merge([], L, L).
merge([X|Xs], [Y|Ys], [X|L]):- X =< Y, merge(Xs, [Y|Ys], L).
merge([X|Xs], [Y|Ys], [Y|L]):- X > Y, merge([X|Xs], Ys, L).

insert(X, [], [X]).
insert(X, [Head|Tail], [Head|Rest]):- X > Head, insert(X, Tail, Rest).
insert(X, [Head|Tail], [X, Head|Tail]):- X =< Head.

% where U delimits S within L
delimit(U, S, L):- concat(_, [U|S], M), concat(M, [U|_], L).

enclose(S, L):- concat(S, _, M), concat(M, S, L).

sort2([], []).
sort2(L, L).
sort2([X|L1], L2):- insert(X, L, L2), sort2(L1, L).
