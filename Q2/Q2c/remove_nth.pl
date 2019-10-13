% __________  remove_nth(N, X, Y)  ______________
% remove_nth(N, X, Y) removes the element at the Nth index of X and stores the list in Y 
% returns false/no (version dependent) if N exceeds the length 

% Base case, if index N is reached, skip over that element in X.
remove_nth(1, [_|X], Y):-
    equals(X, Y).

% Until base case, retain X elements in Y.
remove_nth(N, [H|X], [H|Y]):-
    M is N-1,
    remove_nth(M, X, Y).

% equals(A, B) stores the list B in A, by comparing for equality.
equals([], []).
equals([H|Y], [H|X]):-equals(Y, X).