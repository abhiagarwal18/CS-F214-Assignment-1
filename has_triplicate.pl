% _________ has_triplicate(X) _________
% Check if X has 3 or more copies of any element, print element if so.

has_triplicate([]):-false.		% Base Case - X has been exhausted.

has_triplicate([X|L]):-			% Logic - For each element,
    delete_all(X, L, New_L, C),		% count and delete all further occurrences.
    (C>1 ->  (write(X), nl);true),	% If count shows triplicate, print, else continue anyway.
    has_triplicate(New_L).		% Check for remaining elements.

% _________ delete_all( X, Y, Z, C) _________
% Delete all occurrences of X from Y, store the result in Z. Also count occurrences in C.

delete_all(_, [], [], 0).									% Base Case - Y has been completely parsed.
delete_all(X, [H|Y], Z, C):- X=:=H ->  (delete_all(X, Y, Z, C_inner), C is C_inner+1).		% If occurrence found, increment C, skip X, continue.
delete_all(X, [Y|Y_Cont], [Y|Z_Cont], C):- X=\=Y ->  delete_all(X, Y_Cont, Z_Cont, C).		% If not an occurrence, continue.
