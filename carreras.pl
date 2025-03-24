% Base de conocimientos sobre carreras y sus requisitos
carrera(ingenieria_sistemas) :- tiene_habilidad(matematicas), tiene_interes(tecnologia), tiene_personalidad(analitico).
carrera(ingenieria_industrial) :- tiene_habilidad(matematicas), tiene_interes(negocios), tiene_personalidad(organizado).
carrera(medicina) :- tiene_interes(salud), tiene_habilidad(biologia), tiene_personalidad(empatico).
carrera(psicologia) :- tiene_interes(salud), tiene_personalidad(empatico), tiene_habilidad(comunicacion).
carrera(derecho) :- tiene_habilidad(argumentacion), tiene_interes(justicia), tiene_personalidad(determinado).
carrera(arquitectura) :- tiene_habilidad(creatividad), tiene_interes(diseno), tiene_personalidad(innovador).
carrera(diseno_grafico) :- tiene_habilidad(creatividad), tiene_interes(diseno), tiene_personalidad(expresivo).
carrera(administracion) :- tiene_habilidad(liderazgo), tiene_interes(negocios), tiene_personalidad(extrovertido).
carrera(marketing) :- tiene_habilidad(comunicacion), tiene_interes(negocios), tiene_personalidad(creativo).
carrera(contabilidad) :- tiene_habilidad(matematicas), tiene_interes(finanzas), tiene_personalidad(detallista).
carrera(ingenieria_civil) :- tiene_habilidad(matematicas), tiene_interes(construccion), tiene_personalidad(planificador).
carrera(ingenieria_industrial) :- tiene_habilidad(matematicas), tiene_interes(gestion), tiene_personalidad(organizado).
carrera(economia) :- tiene_habilidad(matematicas), tiene_interes(finanzas), tiene_personalidad(analitico).
carrera(fisica) :- tiene_habilidad(matematicas), tiene_interes(ciencia), tiene_personalidad(curioso).
carrera(quimica) :- tiene_habilidad(analisis), tiene_interes(ciencia), tiene_personalidad(dedicado).
carrera(biologia) :- tiene_habilidad(observacion), tiene_interes(ciencia), tiene_personalidad(paciente).
carrera(educacion) :- tiene_habilidad(comunicacion), tiene_interes(ensenanza), tiene_personalidad(empatico).
carrera(turismo) :- tiene_habilidad(comunicacion), tiene_interes(cultura), tiene_personalidad(sociable).
carrera(relaciones_internacionales) :- tiene_habilidad(comunicacion), tiene_interes(politica), tiene_personalidad(extrovertido).

% Preguntas dinámicas para el usuario
preguntar(matematicas) :- write('¿Te gustan las matemáticas? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_habilidad(matematicas)); true).
preguntar(argumentacion) :- write('¿Eres bueno argumentando ideas? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_habilidad(argumentacion)); true).
preguntar(creatividad) :- write('¿Te consideras creativo? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_habilidad(creatividad)); true).
preguntar(liderazgo) :- write('¿Te gusta liderar equipos? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_habilidad(liderazgo)); true).
preguntar(comunicacion) :- write('¿Eres bueno comunicándote? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_habilidad(comunicacion)); true).
preguntar(analitico) :- write('¿Te consideras analítico? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_personalidad(analitico)); true).
preguntar(empatico) :- write('¿Eres una persona empática? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_personalidad(empatico)); true).
preguntar(extrovertido) :- write('¿Eres extrovertido y sociable? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_personalidad(extrovertido)); true).
preguntar(tecnologia) :- write('¿Te interesa la tecnología? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_interes(tecnologia)); true).
preguntar(salud) :- write('¿Te interesa el área de salud? (si/no)'), nl, read(Respuesta), (Respuesta == si -> assert(tiene_interes(salud)); true).

% Regla para recomendar una carrera según las respuestas del usuario
recomendar :-
    write('Responde las siguientes preguntas:'), nl,
    preguntar(matematicas),
    preguntar(argumentacion),
    preguntar(creatividad),
    preguntar(liderazgo),
    preguntar(comunicacion),
    preguntar(analitico),
    preguntar(empatico),
    preguntar(extrovertido),
    preguntar(tecnologia),
    preguntar(salud),
    write('La carrera recomendada para ti es: '), nl,
    carrera(X), write(X), nl.
