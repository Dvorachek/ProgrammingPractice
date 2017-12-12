:-style_check(-singleton).

concat([], Li, Li).
concat([Head|Tail], Li, [Head|Rest]):- concat(Tail, Li, Rest).

subset(X, Y):- concat(X, _, Y).
subset(X, [Y|Ys]):- subset(X, Ys).