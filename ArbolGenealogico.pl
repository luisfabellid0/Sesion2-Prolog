% Definición de padres
padre(luis, fabrizio).
padre(alipio, luis).
padre(alipio, micaela).
padre(alipio, marta).
padre(alipio, jose).
padre(gil, imelda).
padre(gil, maria).
padre(gil, juana).
padre(gil, liliana).
padre(gil, julia).
padre(gil, martin).

% Definición de madres
madre(imelda, fabrizio).
madre(etelmira, luis).
madre(etelmira, micaela).
madre(etelmira, marta).
madre(etelmira, jose).
madre(esther, imelda).
madre(esther, maria).
madre(esther, juana).
madre(esther, liliana).
madre(esther, julia).
madre(esther, martin).

% Definición de género
mujer(imelda).
mujer(maria).
mujer(juana).
mujer(liliana).
mujer(julia).
mujer(micaela).
mujer(marta).
mujer(etelmira).
mujer(esther).
mujer(maruja).
mujer(karen).
mujer(melanie).
mujer(pamela).
mujer(valery).

hombre(fabrizio).
hombre(luis).
hombre(jose).
hombre(alipio).
hombre(gil).
hombre(martin).
hombre(renato).
hombre(fernando).
hombre(dennis).
hombre(joselo).
hombre(juan).
hombre(julio).
hombre(gustavo).
hombre(hugo).
hombre(alexei).
hombre(vladislav).
hombre(enrique).
hombre(carlos).
hombre(juan).

% Reglas de hermanos
hermano(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y, hombre(X).
hermana(X, Y) :- padre(P, X), padre(P, Y), madre(M, X), madre(M, Y), X \= Y, mujer(X).

% Reglas de hijos
hijo(X, Y) :- (padre(Y, X); madre(Y, X)), hombre(X).
hija(X, Y) :- (padre(Y, X); madre(Y, X)), mujer(X).

% Reglas de abuelos paternos y maternos
abuelo_paterno(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo_materno(X, Y) :- padre(X, Z), madre(Z, Y).
abuela_paterna(X, Y) :- madre(X, Z), padre(Z, Y).
abuela_materna(X, Y) :- madre(X, Z), madre(Z, Y).

% Reglas de tios
tio(X, Y) :- hermano(X, Z), padre(Z, Y); hermano(X, Z), madre(Z, Y).
tia(X, Y) :- hermana(X, Z), padre(Z, Y); hermana(X, Z), madre(Z, Y).

% Esposos
esposo(vladislav, maria).
esposa(maria, vladislav).
esposo(enrique, liliana).
esposa(liliana, enrique).
esposo(carlos, juana).
esposa(juana, carlos).
esposo(juan, julia).
esposa(julia, juan).
esposo(maruja, martin).
esposa(martin, maruja).
