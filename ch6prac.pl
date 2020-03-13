


append([],L,L).
append([H|T],L,[H|G]):- append(T,L,G).

member(X,List):- append(_,[X|_],List).

member2(X,[X|T]).
member2(X,[_|T]):- member2(X,T).

set([],[]).
set([H|T],O):- member2(H,T), set(T,O).
set([H|T],[H|G]):- set(T,G).

flatten([],[]).
flatten([[H|HT]|T],Pend):- flatten(H,HFlat), flatten(HT,HTFlat), flatten(T,TFlat), append(HFlat,HTFlat,HApp), 
	append(HApp,TFlat,Pend).
flatten([H|[]],H):- flatten(H,H).
flatten([H|T],Pend):- flatten(H,HFlat), flatten(T,TFlat), append(HFlat,TFlat,Pend).

flatten2([],[]).
flatten2([H|T],[H|TF]):- atomic(H), flatten2(T,TF).
flatten2([H|T],[HF|TF]):- flatten2(H,HF), flatten2(T,TF).













