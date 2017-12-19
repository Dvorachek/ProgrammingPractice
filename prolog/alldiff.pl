alldif([]).
alldif([_]).
alldif([X1, X2|Xs]):- dif(X1, X2), alldif([X1|Xs]), alldif([X2|Xs]).