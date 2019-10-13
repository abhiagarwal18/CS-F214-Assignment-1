% _________ remove_every_other(X, Y) __________
% stores every alternate element of X in Y beginning with the first element

remove_every_other([], []).				% Base Case
remove_every_other([H|X], [H|Y]):- other(X, Y).		% Keep 1st element

% _________ other(X, Y) __________
% stores every alternate element of X in Y beginning with the second element

other([], []).						% Base Case
other([_|X], Y):- remove_every_other(X, Y).		% Skip over the 1st element
