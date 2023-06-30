return_dog('chihuahua', S, C) :- 
    (S = small, C = white );
    (S = small, C = short );
    (S = small, C = long );
    (S = small, C = brown).
return_dog('jindo', S, C) :- 
    (S = medium, C = white );
    (S = medium, C = short).
return_dog('collie', S, C) :- 
    (S = medium, C = patched );
    (S = medium, C =long).
return_dog('the greate dane', S, C) :- 
    (S = big, C = blue );
    (S = big, C = short );
    (S = big, C = black ).
return_dog('a big labrador', S, C) :- 
    (S = big, C = brown );
    (S = big, C = long ).

read_input(M) :-
    write("what size dog do you like?"),
    read(S),
    nl,
    write("what coat?"),
    read(C),
    nl,
    return_dog(M, S, C),
    format('You might like ~w. They are ~w size of dogs with ~w coat. ~n', [M, S, C]).
