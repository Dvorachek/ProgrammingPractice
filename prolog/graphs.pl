:-style_check(-singleton).

%
%  Predicate definitions
%  
%  directed returns true if X can reach Y from a directed graph
%  path does that same for undirected graphs
%  

directed(X, Y):- edge(X, Y).
directed(X, Y):- edge(X, Z), directed(Z, Y).

path(X, Y):- edge(X, Y); edge(Y, X).
path(X, Y):- edge(X, Z), path(Z, Y).
path(X, Y):- edge(Y, Z), path(Z, X).

%
%  Predicate facts
%  
%  Define two different graphs
%

edge(1, 2).
edge(1, 3).
edge(3, 5).
edge(3, 4).

edge(6, 10).
edge(6, 7).
edge(7, 9).
edge(8, 10).