
member(X,[X|T]).
member(X,[H|T]):- member(X,T).

append([],L,L).
append([H|T],L,[H|G]):- append(T,L,G).

pre(P,L):- append(P,_,L).
suf(S,L):- append(_,S,L).

sublist(X,L):- suf(S,L), pre(X,S).

zebra(C,N):-
	Street = [L, M, R],
	member(house(red, english, _), Street),
	member(house(_, spanish, jag), Street),
	member(house(_, japanese, _), Street),
	sublist([house(_, _, snail), house(_, japanese, _)], Street),
	sublist([house(_, _, snail), house(blue, _, _)], Street),
	member(house(C,N,zebra), Street).

 






























