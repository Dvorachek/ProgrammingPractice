:-style_check(-singleton).

%
%  Predicate definitions
%  

father(X, Y):- male(X), parent(X, Y).

mother(X, Y):- female(X), parent(X, Y).

sibling(X, Y):- parent(Parent, X), parent(Parent, Y), X \= Y.

brother(X, Y):- male(X), sibling(X, Y).

sister(X, Y):- female(X), sibling(X, Y).

%
%  Predicate facts
%

parent(john, mary).
parent(john, steven).
parent(sue, mary).
parent(sue, steven).

male(john).
male(steven).
female(sue).
female(mary).