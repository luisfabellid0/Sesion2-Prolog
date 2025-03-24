% Base de conocimiento de signos del zodiaco
horoscopo(aries, 21, 3, 19, 4).
horoscopo(tauro, 20, 4, 20, 5).
horoscopo(geminis, 21, 5, 20, 6).
horoscopo(cancer, 21, 6, 22, 7).
horoscopo(leo, 23, 7, 22, 8).
horoscopo(virgo, 23, 8, 22, 9).
horoscopo(libra, 23, 9, 22, 10).
horoscopo(escorpio, 23, 10, 21, 11).
horoscopo(sagitario, 22, 11, 21, 12).
horoscopo(capricornio, 22, 12, 19, 1).
horoscopo(acuario, 20, 1, 18, 2).
horoscopo(piscis, 19, 2, 20, 3).

% Regla para determinar el signo zodiacal de una fecha dada
signo(Dia, Mes, Signo) :-
    horoscopo(Signo, DiaInicio, MesInicio, DiaFin, MesFin),
    (
        (Mes = MesInicio, Dia >= DiaInicio);
        (Mes = MesFin, Dia =< DiaFin)
    ).

% Reglas adicionales
% 1. Determinar si dos personas tienen el mismo signo
mismo_signo(Dia1, Mes1, Dia2, Mes2) :-
    signo(Dia1, Mes1, Signo),
    signo(Dia2, Mes2, Signo).

% 2. Determinar si un signo es compatible con otro (ejemplo simplificado)
compatible(aries, leo).
compatible(aries, sagitario).
compatible(tauro, virgo).
compatible(tauro, capricornio).
compatible(geminis, libra).
compatible(geminis, acuario).
compatible(cancer, escorpio).
compatible(cancer, piscis).
compatible(leo, sagitario).
compatible(leo, aries).
compatible(virgo, capricornio).
compatible(virgo, tauro).

es_compatible(Signo1, Signo2) :- compatible(Signo1, Signo2); compatible(Signo2, Signo1).

% 3. Saber si una persona pertenece a un elemento del zodiaco
elemento(aries, fuego).
elemento(leo, fuego).
elemento(sagitario, fuego).
elemento(tauro, tierra).
elemento(virgo, tierra).
elemento(capricornio, tierra).
elemento(geminis, aire).
elemento(libra, aire).
elemento(acuario, aire).
elemento(cancer, agua).
elemento(escorpio, agua).
elemento(piscis, agua).

pertenece_elemento(Dia, Mes, Elemento) :-
    signo(Dia, Mes, Signo),
    elemento(Signo, Elemento).

% 4. Indicar si un signo es de fuego
es_fuego(Dia, Mes) :-
    signo(Dia, Mes, Signo),
    elemento(Signo, fuego).

% 5. Indicar si un signo es de agua
es_agua(Dia, Mes) :-
    signo(Dia, Mes, Signo),
    elemento(Signo, agua).

% 6. Indicar si un signo es de tierra
es_tierra(Dia, Mes) :-
    signo(Dia, Mes, Signo),
    elemento(Signo, tierra).

% 7. Indicar si un signo es de aire
es_aire(Dia, Mes) :-
    signo(Dia, Mes, Signo),
    elemento(Signo, aire).

% 8. Saber qué signos pertenecen al mismo elemento
mismo_elemento(Signo1, Signo2) :-
    elemento(Signo1, Elemento),
    elemento(Signo2, Elemento),
    Signo1 \= Signo2.

% 9. Encontrar todos los signos compatibles con un signo dado
signos_compatibles(Signo, Compatible) :- compatible(Signo, Compatible).

% 10. Encontrar signos que comparten el mismo elemento con otro signo
elementos_similares(Signo, Similar) :- mismo_elemento(Signo, Similar).
