% map data
weight(a, b, 20).
weight(b, c, 5).
weight(a, c, 10).
weight(c, d, 10).
weight(e, f, 10).

% _________ adjacent( X, Y, W) _________
% Check if X and Y are directly connected. If so, give W, connection weight

adjacent(X, Y, W):-
    weight(X, Y, W);
    weight(Y, X, W).

% _________ member( X, Y) _________
% Check if element X is a member of list Y

member(X, [X|_]).
member(X, [_|L]):-member(X, L).

% _________ internalPath( X, Y, Path, Taken, L) _________
% implementation of wrapper findPath, maintains a list, Taken, of nodes covered to
% reach current state, in order to prevent cycles.

internalPath(X, X, [X], Taken, 0):-not(member(X, Taken)).	% Base Case - if trivial path reached, check for non-repetition, and accept.
internalPath(X, Y, [X|Path], Taken, L):-
    adjacent(X, Z, W),						% Find a path from neighbours of X, to Y, then add X to that path.
    not(member(X, Taken)),					% Check that a node has not been repeated to reach current state.
    internalPath(Z, Y, Path, [X|Taken], L_inner),		% Find subsidiary path, that does not pass through X.
    L is L_inner+W.						% Update L.

% _________ findPath( X, Y, Path, L) _________
% Provide Path and length L, between X and Y, using weight data

findPath(X, Y, Path, L):-internalPath(X, Y, Path, [], L).	% Provide wrapper findPath for internalPath.
