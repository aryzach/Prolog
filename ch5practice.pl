

addone([],[]).
addone([H|T],[U|UT]):- U is H+1, addone(T,UT).

accMin([],A,A).
accMin([H|T],Acc,F):- H < Acc, accMin(T,H,F).
accMin([H|T],Acc,F):- H >= Acc, accMin(T,Acc,F).

min([H|T],F):- accMin(T,H,F).

sm(X,[],[]).
sm(X,[H|T],[U|UT]):- is(U,*(H,X)), sm(X,T,UT).

multvec([],[],[]).
multvec([H1|T1],[H2|T2],[ZH|ZT]):- is(ZH,*(H1,H2)), multvec(T1,T2,ZT).

addvec([],R,R).
addvec([H1|T1],Sofar,F):- G is H1 + Sofar, addvec(T1,G,F).

dot([],[],0).
dot(L1,L2,R):- multvec(L1,L2,Vec), addvec(Vec,0,R).

append([],L,L).
append([H|T],L,[H|F]):- append(T,L,F).

rev([],[]).
rev([H|T],F):- append(G,[H],F), rev(T,G).

revacc([],L,L).
revacc([H|T],G,L):- revacc(T,[H|G],L).

revgood([H|T],L):- revacc([H|T],[],L).

