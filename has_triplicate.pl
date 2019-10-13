has_triplicate([]):-false.
has_triplicate([_]):-false.
has_triplicate([_, _]):-false.

has_triplicate([X|L]):-
    delete_all(X, L, New_L, C),
    (C>1 ->  (write(X), nl);true),
    has_triplicate(New_L).

delete_all(_, [], [], 0).
delete_all(X, [H|Y], Z, C):- X=:=H ->  (delete_all(X, Y, Z, C_inner) ->  C is C_inner+1).
delete_all(X, [Y|Y_Cont], [Y|Z_Cont], C):- X=\=Y ->  delete_all(X, Y_Cont, Z_Cont, C).