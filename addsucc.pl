
numeral(0).

numeral(succ(X)):- numeral(X).


add(0, X, X).

add(succ(0),Z,succ(Z)).

add(succ(A),B,succ(Z)):- add(A,B,Z).

greaterthan(succ(A),0).

greaterthan(succ(A),succ(B)):- greaterthan(A,B).
