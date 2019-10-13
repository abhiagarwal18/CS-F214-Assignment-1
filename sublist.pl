% __________ sublist( X, Y) __________
% sublist( X, Y) checks if list X is a subset of list Y
% subset - all X elements exist in Y, in the same order.

sublist([], _).							% base case - since empty list is subset of any term. X has been exhausted.
sublist([X|X_Cont], [X|Y_Cont]):- sublist(X_Cont, Y_Cont).	% if match found, pop both and repeat.
sublist([X|X_Cont], [_|Y_Cont]):- sublist([X|X_Cont], Y_Cont).	% else, continue through Y.
