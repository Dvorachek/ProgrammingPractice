% List Operations in Prolog

:-style_check(-singleton).

% Concatenates two lists together
concat([], Li, Li).
concat([Head|Tail], Li, [Head|Rest]):- concat(Tail, Li, Rest).

% List S is a subset of L
subset(S, L):- concat(_, S, M), concat(M, _, L).

% Element X is a member 
member(X, List):- concat(_, [X|_], List).

% True if the lists are the reverse of each other
reverse([], []).
reverse([X|Xs], Y):- reverse(Xs, XsY), concat(XsY, [X], Y).

% Is list X a palindrome
palindrome(X):- reverse(X, X).

% N is the length of list L
len([], 0).
len([_|L], N):- len(L, N1), N is N1 + 1.

% U delimits S within L
delimit(U, S, L):- concat(_, [U|S], M), concat(M, [U|_], L).

% S is the prefix and suffix of L
enclose(S, L):- concat(S, _, M), concat(M, S, L).

% L is the concatination of the same list twice
repeated(L):- concat(Ls, Ls, L).

% Elements U and V are adjacent within L
adjacent(U, V, L):- concat(_, [U, V|_], L); concat(_, [V, U|_], L).