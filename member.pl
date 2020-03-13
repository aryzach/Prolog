

member(X, [X|_]).
member(X, [_|T]):- member(X,T).

a2b([],[]).
a2b([a|XT],[b|YT]):- a2b(XT,YT).


second(X,[_,X|_]).

swap12([X1,X2|XT],[X2,X1|XT]).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],[]).
listtran([G|GT],[E|ET]):- tran(G,E), listtran(GT,ET).

twice([],[]).
twice([A|AT],[A,A|AG]):- twice(AT,AG).

combine1([],[],[]).
combine1([A|AT],[B|BT],[A,B|CT]):- combine1(AT,BT,CT).

combine2([],[],[]).
combine2([A|AT],[B|BT],[[A,B]|CT]):- combine2(AT,BT,CT).

combine3([],[],[]).
combine3([A|AT],[B|BT],[j(A,B)|CT]):- combine3(AT,BT,CT).



