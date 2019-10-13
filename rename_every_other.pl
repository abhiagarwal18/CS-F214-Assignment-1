% _________ remove_every_other( X, Y) __________
% stores every alternate element of X in Y beginning with the first element as 
% common element by calling 'other' for the tail parts 

remove_every_other([], []).
remove_every_other([H|X], [H|Y]):- other(X, Y).

% _________ other( X, Y) __________
% other( X, Y) keeps only one list with alternate elements

other([], []).
other(X, [_|Y]):- remove_every_other(X, Y).