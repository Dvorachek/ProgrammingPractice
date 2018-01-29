% Solution for a 3 x 3 latin square
% https://en.wikipedia.org/wiki/Latin_square

latin(X1, X2, X3, X4, X5, X6, X7, X8, X9):- 
    X1 \= X2,
    X1 \= X3,
    X1 \= X4,
    X1 \= X7,
    X2 \= X3,
    X2 \= X5,
    X2 \= X8,
    X3 \= X6,
    X3 \= X9,
    X4 \= X7,
    X4 \= X5,
    X4 \= X6,
    X5 \= X8,
    X5 \= X6,
    X6 \= X9,
    X7 \= X8,
    X7 \= X9,
    X8 \= X9,
    num(X1),
    num(X2),
    num(X3),
    num(X4),
    num(X5),
    num(X6),
    num(X7),
    num(X8),
    num(X9).

num(1).
num(2).
num(3).