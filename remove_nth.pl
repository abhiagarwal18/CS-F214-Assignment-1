% __________  remove_nth( N, X, Y)  ______________
% remove_nth( N, X, Y) removes the element at the Nth index and stores the list in Y 
% returns false/no (version dependent) if N exceeds the length 

remove_nth(1, X, [_|Y]):-
    equals(X, Y).

remove_nth(N, [H|X], [H|Y]):-
    M is N-1,
    remove_nth(M, X, Y).

% equals( A, B) stores the list B in A  
equals([], []).
equals([H|Y], [H|X]):-equals(Y, X).
