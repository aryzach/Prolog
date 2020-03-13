c(auk,ham).
c(ham,rag).
c(val,saa).
c(val,met).

t(met,fran).
t(saa,fran).
t(met,par).
t(saa,par).

p(fran,ban).
p(fran,sin).
p(par,los).
p(ban,auk).
p(sin,auk).
p(los,auk).


travel(X,Y):- c(X,Y);t(X,Y);p(X,Y).

go(X,Y):- c(X,Y);t(X,Y);p(X,Y).

travel(X,Y):- go(X,Z), travel(Z,Y).

travel(X,Y,go(X,Z,P)):- go(X,Z), travel(Z,Y,P).

travel(X,Y,go(X,Y)):- go(X,Y).
