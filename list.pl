:-style_check(-singleton).

concat([], Li, Li).
concat([Head|Tail], Li, [Head|Rest]):- concat(Tail, Li, Rest).

subset(X, Y):- concat(X, _, Y).
subset(X, [Y|Ys]):- subset(X, Ys).

reverse([], []).
reverse([X|Xs], Y):- reverse(Xs, XsY), concat(XsY, [X], Y).

palindrome(X):- reverse(X, Y), Y = X.