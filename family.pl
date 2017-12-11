:-style_check(-singleton).

%
%  Predicate definitions
%  

father(X, Y):- male(X), parent(X, Y).

mother(X, Y):- female(X), parent(X, Y).

sibling(X, Y):- parent(Parent, X), parent(Parent, Y), X \= Y.

brother(X, Y):- male(X), sibling(X, Y).

sister(X, Y):- female(X), sibling(X, Y).

ancestor(X, Y):- parent(X, Y).
ancestor(X, Y):- parent(X, Z), ancestor(Z, Y).

grandparent(X, Y):- parent(X, Z), parent(Z, Y).

second_cousin(X, Y):- X \= Y, grandparent(Z, X), grandparent(Z, Y), not(sibling(X, Y)).

%
%  Predicate facts
%

parent(mike, john).
parent(mike, jack).

parent(jack, bob).
parent(ally, bob).

parent(john, mary).
parent(john, steven).
parent(sue, mary).
parent(sue, steven).

male(mike).
male(john).
male(steven).
male(jack).
male(bob).
female(ally).
female(sue).
female(mary).