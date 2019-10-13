% __________ sublist( X, Y) __________
% sublist( X, Y) checks if list X is a subset of list Y
% subset - all X elements exist in Y, in the same order.

sublist([], _).				% base case - since empty list is subset of any term. X has been exhausted.
sublist([X|X_Cont], [Y|Y_Cont]):-	% search through Y till leading element in X matches, then pop both and repeat.
    X=:=Y ->	
    sublist(X_Cont, Y_Cont);		% if match found, pop both and repeat.
    sublist([X|X_Cont], Y_Cont).	% else, continue through Y.