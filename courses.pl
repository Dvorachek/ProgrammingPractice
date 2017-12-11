%TEST

:-style_check(-singleton).

degreereq(X):- mathreq(X), csreq(X), engreq(X), elecreq(X).

mathreq(X):- math100(X), math101(X), math122(X), math211(X), math202(X).

csreq(X):- csc110(X), csc106(X), csc115(X), csc225(X), csc226(X), csc230(X),
    csc320(X), csc360(X), csc370(X), seng265(X), seng310(X), cselec(X).

cselec(X):- seng330(X), csc330(X), seng461(X), csc361(X).

engreq(X):- eng135(X), engr240(X).

elecreq(X):- ae322(X), elec2(X), elec3(X).

csc110(dylan).
csc106(dylan).
csc115(dylan).
csc225(dylan).
csc230(dylan).
csc226(dylan).
csc320(dylan).
csc330(dylan).
csc360(dylan).

seng265(dylan).
seng330(dylan).

math100(dylan).
math101(dylan).
math122(dylan).
math211(dylan).
math202(dylan).

eng135(dylan).
engr240(dylan).
