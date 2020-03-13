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

go(X,Y):- c(X,Y);t(X,Y);p(X,Y).

travel(X,Y):- go(X,Z), travel(Z,Y); go(X,Y).


travel(X,Y,go(c(X,Z),P)):- c(X,Z), travel(Z,Y,P).
travel(X,Y,go(t(X,Z),P)):- t(X,Z), travel(Z,Y,P).
travel(X,Y,go(p(X,Z),P)):- p(X,Z), travel(Z,Y,P).

travel(X,Y,go(c(X,Y))):- c(X,Y).
travel(X,Y,go(t(X,Y))):- t(X,Y).
travel(X,Y,go(p(X,Y))):- p(X,Y). 
