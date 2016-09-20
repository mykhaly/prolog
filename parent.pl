%facts
parent(nina, tanya).
parent(nina, valeriy).
parent(ivan, tanya).
parent(ivan, valeriy).
parent(tanya, oleh).
parent(yaroslav, oleh).
parent(yaroslav, olha).
parent(iryna, olha).
parent(pavlyna, yaroslav).
parent(yevstahiy, yaroslav).
parent(olha, volodymyr).
parent(volodymyr_senior, volodymyr).
woman(nina).
woman(tanya).
woman(olha).
woman(iryna).
woman(pavlyna).
man(valeriy).
man(ivan).
man(oleh).
man(yaroslav).
man(yevstahiy).
man(volodymyr).
man(volodymyr_senior).

%rules
child(Y, X):- 	parent(X, Y).
mother(Y, X):- 	parent(Y, X), woman(Y).
father(Y, X):- 	parent(Y, X), man(Y).
sibling(X, Y):-
	parent(Z, X),
	parent(Z, Y).
has_child(X):- parent(X,Y).
ancestor(X, Z):- parent(X, Z).
ancestor(X, Z):-
	parent(X, Y),
	ancestor(Y, Z).

