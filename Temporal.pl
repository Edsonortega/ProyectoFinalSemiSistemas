
% Función principal para mostrar el menú inicial y tomar la decisión
inicio :-
    write('Bienvenido al adivinador de series!'), nl,
    write('1. Iniciar Juego'), nl,
    write('2. Finalizar Programa'), nl,
    read(Opcion),
    (   Opcion = 1 -> iniciar_buscador  % Inicia el juego
    ;   Opcion = 2 -> finalizar_programa  % Finaliza el programa
    ;   write('Opción no válida. Por favor, elige 1 o 2.'), nl, inicio  % Vuelve a mostrar el menú si la opción es inválida
    ).

% Función para iniciar el juego y comenzar el proceso de adivinación
iniciar_buscador :-
    write('Comenzando el juego...'), nl,
    pregunta_genero(Serie),
    pregunta_plataforma(Serie),
    pregunta_tema(Serie),
    pregunta_ano(Serie),
    pregunta_actores(Serie),
    (   serie(Serie, _) -> 
        write('Te recomendamos la serie: '), write(Serie), nl
    ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
    ).

% Función para finalizar el programa
finalizar_programa :-
    write('Gracias por usar el adivinador de series. ¡Hasta luego!'), nl.

% Pregunta sobre el género de la serie
pregunta_genero(Serie) :-
    write('¿Qué género tiene tu serie?'), nl,
    write('1. Comedia'), nl,
    write('2. Supervivencia'), nl,
    write('3. Drama'), nl,
    write('4. Ciencia ficción'), nl,
    write('5. Fantasía'), nl,
    write('6. Acción'), nl,
    write('7. Misterio'), nl,
    write('8. Otro'), nl,
    read(Opcion),
    (   member(Opcion, [1, 2, 3, 4, 5, 6, 7]) ->
        (   serie(Serie, [Opcion, _, _, _, _])
        ;   pregunta_genero(Serie)
        )
    ;   write('Por favor, especifica el género de la serie:'), nl,
        read(Genero),
        (   serie(Serie, [Genero, _, _, _, _])
        ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
        )
    ).

% Pregunta sobre la plataforma de la serie
pregunta_plataforma(Serie) :-
    write('¿En qué plataforma se transmite tu serie?'), nl,
    write('1. Netflix'), nl,
    write('2. HBO'), nl,
    write('3. Amazon Prime'), nl,
    write('4. Disney Plus'), nl,
    write('5. AMC'), nl,
    write('6. BBC'), nl,
    write('7. Otro'), nl,
    read(Opcion),
    (   member(Opcion, [1, 2, 3, 4, 5, 6]) ->
        (   serie(Serie, [_, _, Opcion, _, _])
        ;   pregunta_plataforma(Serie)
        )
    ;   write('Por favor, especifica la plataforma en la que se transmite la serie:'), nl,
        read(Plataforma),
        (   serie(Serie, [_, _, Plataforma, _, _])
        ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
        )
    ).

% Pregunta sobre la temática de la serie
pregunta_tema(Serie) :-
    write('¿Tu serie trata sobre...'), nl,
    write('1. Crimen y mafia'), nl,
    write('2. Superhéroes'), nl,
    write('3. Viajes en el tiempo'), nl,
    write('4. Magia y fantasía'), nl,
    write('5. Apocalipsis/zombis'), nl,
    write('6. Aventura/Exploración'), nl,
    write('7. Romance'), nl,
    write('8. Otro'), nl,
    read(Opcion),
    (   member(Opcion, [1, 2, 3, 4, 5, 6, 7]) ->
        (   serie(Serie, [_, _, _, Opcion, _])
        ;   pregunta_tema(Serie)
        )
    ;   write('Por favor, especifica el tema de la serie:'), nl,
        read(Tema),
        (   serie(Serie, [_, _, _, Tema, _])
        ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
        )
    ).

% Pregunta sobre el año de la serie
pregunta_ano(Serie) :-
    write('¿De qué año es tu serie?'), nl,
    write('1. Antes de 2000'), nl,
    write('2. 2000-2010'), nl,
    write('3. 2010-2020'), nl,
    write('4. 2020-presente'), nl,
    read(Opcion),
    (   member(Opcion, [1, 2, 3, 4]) ->
        (   serie(Serie, [_, _, _, _, Opcion])
        ;   pregunta_ano(Serie)
        )
    ;   write('Por favor, especifica el año en que se estrenó la serie:'), nl,
        read(Ano),
        (   serie(Serie, [_, Ano, _, _, _])
        ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
        )
    ).

% Pregunta sobre los actores principales de la serie
pregunta_actores(Serie) :-
    write('¿Tu serie cuenta con alguno de los siguientes actores?'), nl,
    write('1. Millie Bobby Brown (Stranger Things)'), nl,
    write('2. Bryan Cranston (Breaking Bad)'), nl,
    write('3. Steve Carell (The Office)'), nl,
    write('4. Pedro Pascal (The Mandalorian, The Last of Us)'), nl,
    write('5. Otro'), nl,
    read(Opcion),
    (   member(Opcion, [1, 2, 3, 4]) ->
        (   serie(Serie, [_, _, _, _, Actores]), member(Opcion, Actores)
        ;   pregunta_actores(Serie)
        )
    ;   write('Por favor, especifica el actor de la serie que buscas:'), nl,
        read(Actor),
        (   serie(Serie, [_, _, _, _, Actores]), member(Actor, Actores)
        ;   write('Lo siento, no pudimos adivinar la serie que buscas'), nl
        )
    ).

    % Obtener todos los géneros de las series disponibles
obtener_generos(Generos) :-
    findall(G, (serie(_, [G|_], _, _, _)), GenerosList),
    list_to_set(GenerosList, Generos). % Eliminar duplicados

% Obtener todas las plataformas disponibles
obtener_plataformas(Plataformas) :-
    findall(P, (serie(_, [_, _, P, _, _])), PlataformasList),
    list_to_set(PlataformasList, Plataformas). % Eliminar duplicados

% Obtener todos los actores disponibles
obtener_actores(Actores) :-
    findall(A, (serie(_, _, _, _, ActoresList), member(A, ActoresList)), ActoresList),
    list_to_set(ActoresList, Actores). % Eliminar duplicados

