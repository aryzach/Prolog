

append([],L,L).
append([H|T],G,[H|F]):- append(T,G,F).

pre(P,L):- append(P,_,L).
hpre(P,L,Len):- pre(P,L), len(P,Len). 
suf(S,L):- append(_,S,L).
hsuf(S,L,Len):- suf(S,L), len(S,Len).
lenacc([],L,L).
lenacc([H|T],A,L):- Acc is A + 1, lenacc(T,Acc,L).
len(List,Len):- lenacc(List,0,Len).
hlen(List,HLen):- len(List,Len), HLen is Len/2.
doubled(X):- hpre(G,X,L), hsuf(G,X,L), hlen(X,L).

revacc([],A,A).
revacc([H|T],A,G):- revacc(T,[H|A],G).
rev(List,Res):- revacc(List,[],Res).
pal(X):- rev(X,X).

top([Last|[]],[]).
top([H|T],[H|Y]):- top(T,Y).
toptail([H|T],Y):- len(X,Len), Len >= 2, top(T,Y). 

last1(List,X):- rev(List,[X|_]). 
last2([X|[]],X).
last2([H|T],X):- last2(T,X).

swapfl([H1|T1],[H2|T2]):- top(T1,Top), top(T2,Top), append(Top2,[H1],T2), append(Top1,[H2],T1). 




