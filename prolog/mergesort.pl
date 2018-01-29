% Mergesort
merge([], [], []).
merge(L, [], L).
merge([], L, L).
merge([X|Xs], [Y|Ys], [X|L]):- X =< Y, merge(Xs, [Y|Ys], L).
merge([X|Xs], [Y|Ys], [Y|L]):- X > Y, merge([X|Xs], Ys, L).