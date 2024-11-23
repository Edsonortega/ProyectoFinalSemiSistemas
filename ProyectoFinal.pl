#Base de Conocimientos con sus atributos para poder preguntar
serie('Stranger Things', ciencia_ficcion, 2016, netflix, [amistad, misterios, dimensiones_paralelas], ['Millie Bobby', 'Finn Wolfhard']).
serie('Breaking Bad', drama, 2008, amc, [crimen, quimica, transformacion], ['Bryan Cranston', 'Aaron Paul']).
serie('The Crown', drama, 2016, netflix, [realeza, historia, politica], ['Claire Foy', 'Olivia Colman']).
serie('The Mandalorian', ciencia_ficcion, 2019, disney_plus, [star_wars, aventuras, mercenarios], [Pedro_Pascal]).
serie('Friends', comedia, 1994, hbo, [amistad, humor, romance], [Jennifer_Aniston, Courteney_Cox]).
serie('The Office', comedia, 2005, netflix, [humor, oficina, absurdos], [Steve_Carell, Rainn_Wilson]).
serie('Game of Thrones', fantasia, 2011, hbo, [dragones, reinos, politica], [Emilia_Clarke, Kit_Harington]).
serie('The Witcher', fantasia, 2019, netflix, [monstruos, magia, aventuras], [Henry_Cavill]).
serie('Sherlock', misterio, 2010, bbc, [detectives, ingenio, crimen], [Benedict_Cumberbatch, Martin_Freeman]).
serie('House of the Dragon', fantasia, 2022, hbo, [dragones, politica, historia], [Paddy_Considine, Emma_DArcy]).
serie('Black Mirror', ciencia_ficcion, 2011, netflix, [tecnologia, distopia, moralidad], [Bryce_Dallas_Howard, Jon_Hamm]).
serie('Peaky Blinders', drama, 2013, netflix, [crimen, mafia, historia], [Cillian_Murphy, Tom_Hardy]).
serie('The Boys', accion, 2019, amazon_prime, [superheroes, corrupcion, satira], [Karl_Urban, Antony_Starr]).
serie('Money Heist', accion, 2017, netflix, [robos, estrategia, tension], [Alvaro_Morte, Ursula_Corbero]).
serie('Succession', drama, 2018, hbo, [negocios, familia, poder], [Brian_Cox, Jeremy_Strong]).
serie('The Umbrella Academy', ciencia_ficcion, 2019, netflix, [superheroes, familia, viajes_en_el_tiempo], [Elliot_Page, Tom_Hopper]).
serie('The Last of Us', drama, 2023, hbo, [apocalipsis, infectados, emociones], [Pedro_Pascal, Bella_Ramsey]).
serie('Dark', misterio, 2017, netflix, [viajes_en_el_tiempo, secretos, bucles], [Louis_Hofmann, Andreas_Pietschmann]).
serie('Arcane', animacion, 2021, netflix, [fantasia, tecnologia, rivalidades], [Jinx, Vi]).
serie('Gambito de dama', comedia, 2016, amazon_prime, [humor_negro, relaciones, drama], [Anya_Taylor-Joy]).
serie('Attack on Titan', anime, 2013, crunchyroll, [accion, drama, titanes], [Eren_Jaeger, Mikasa_Ackerman]).
serie('Death Note', anime, 2006, crunchyroll, [misterio, psicologico, crimen], [Yagami_Light, Amane_Misa]).
serie('Naruto', anime, 2002, crunchyroll, [accion, ninjas, amistad], [Naruto_Uzumaki, Sasuke_Uchiha]).
serie('Demon Slayer', anime, 2019, crunchyroll, [accion, fantasia, demonios], [Tanjiro_Kamado, Zenitsu_Agatsuma]).
serie('Jujutsu Kaisen', anime, 2020, crunchyroll, [accion, exorcismo, fantasia], [Itadori_Yuji, Satouru_Gojo]).
serie('Cowboy Bebop', anime, 1998, crunchyroll, [ciencia_ficcion, cazarrecompensas, espacio], [Spike_Spiegel, Faye_Valentine]).
serie('My Hero Academia', anime, 2016, crunchyroll, [superheroes, escuela, accion], [Izuku_Midoriya, Bakugo_Katsuki]).
serie('One Piece', anime, 1999, crunchyroll, [aventura, piratas, amistad], [Monkey_D_Luffy, Ronoroa_Zoro]).
serie('Better Call Saul', drama, 2015, amc, [abogados, crimen, corrupcion], [Bob_Odenkirk, Rhea_Seehorn]).
serie('The Sopranos', drama, 1999, hbo, [mafia, familia, psicologia], [James_Gandolfini, Edie_Falco]).
serie('Ozark', drama, 2017, netflix, [lavado_de_dinero, crimen, familia], [Jason_Bateman, Laura_Linney]).
serie('Euphoria', drama, 2019, hbo, [adolescencia, problemas_sociales, romance], [Zendaya, Hunter_Schafer]).
serie('Vikings', drama, 2013, history_channel, [historia, batallas, cultura_nordica], [Travis_Fimmel, Katheryn_Winnick]).
serie('How I Met Your Mother', comedia, 2005, hulu, [amistad, humor, romance], [Josh_Radnor, Neil_Patrick_Harris]).
serie('Mad Men', drama, 2007, amc, [publicidad, negocios, psicologia], [Jon_Hamm, Elisabeth_Moss]).
serie('Brooklyn Nine-Nine', comedia, 2013, hulu, [policias, humor, crimen], [Andy_Samberg, Terry_Crews]).
serie('Fargo', drama, 2014, fx, [crimen, misterio, antologia], [Billy_Bob_Thornton, Martin_Freeman]).
serie('Westworld', ciencia_ficcion, 2016, hbo, [robots, conciencia, filosofia], [Evan_Rachel_Wood, Jeffrey_Wright]).
serie('The Haunting of Hill House', terror, 2018, netflix, [fantasmas, familia, trauma], [Victoria_Pedretti, Oliver_Jackson-Cohen]).
serie('Parks and Recreation', comedia, 2009, peacock, [politica, humor, comunidad], [Amy_Poehler, Nick_Offerman]).
serie('Lost', misterio, 2004, abc, [supervivencia, islas, secretos], [Matthew_Fox, Evangeline_Lilly]).
serie('The Expanse', ciencia_ficcion, 2015, amazon_prime, [espacio, politica, conflictos], [Steven_Strait, Dominique_Tipper]).
serie('Orange Is the New Black', drama, 2013, netflix, [carcel, diversidad, relaciones], [Taylor_Schilling, Laura_Prepon]).
serie('The Handmaid\'s Tale', drama, 2017, hulu, [distopia, feminismo, politica], [Elisabeth_Moss, Yvonne_Strahovski]).
serie('Bleach', anime, 2004, crunchyroll, [accion, fantasmas, shinigamis], [Ichigo_Kurosaki, Rukia_Kuchiki]).

% Adivinar
adivinar :-
    findall([Nombre, Genero, Anio, Plataforma, Temas, Actores], serie(Nombre, Genero, Anio, Plataforma, Temas, Actores), Series),
    flujo_preguntas(Series).

% Flujo dinámico de preguntas
flujo_preguntas(Series) :-
    preguntar('plataforma', Series, 4, PlataformaElegida, SeriesFiltradas1),
    preguntar('rango de años', SeriesFiltradas1, 2, AnioElegido, SeriesFiltradas2),
    preguntar('género', SeriesFiltradas2, 1, GeneroElegido, SeriesFiltradas3),
    preguntar('temas', SeriesFiltradas3, 5, TemaElegido, SeriesFiltradas4),
    preguntar('actores', SeriesFiltradas4, 6, ActorElegido, SeriesFiltradasFinal),
    resultado(SeriesFiltradasFinal).

% Preguntar opciones dinámicas
preguntar(Tipo, Series, PropiedadIndex, RespuestaElegida, SeriesFiltradas) :-
    opciones_dinamicas(Series, PropiedadIndex, Opciones),
    format('¿Tu serie pertenece a alguno de los siguientes ~w?\n', [Tipo]),
    mostrar_opciones(Opciones),
    read(Respuesta),
    (   integer(Respuesta),
        Respuesta >= 1,
        Respuesta =< length(Opciones) ->
        nth1(Respuesta, Opciones, RespuestaElegida),
        filtrar_por_propiedad(Series, PropiedadIndex, RespuestaElegida, SeriesFiltradas)
    ;   writeln('Opción inválida, por favor selecciona un número válido.'),
        fail).

% Generar opciones dinámicas
opciones_dinamicas(Series, PropiedadIndex, Opciones) :-
    findall(Propiedad, (
        nth1(_, Series, Serie),
        nth1(PropiedadIndex, Serie, Propiedad),
        (   is_list(Propiedad) -> member(P, Propiedad) ; P = Propiedad
        )
    ), TodasPropiedades),
    sort([otro | TodasPropiedades], Opciones).

% Mostrar opciones
mostrar_opciones(Opciones) :-
    mostrar_opciones(Opciones, 1).

mostrar_opciones([], _).
mostrar_opciones([Opcion|Resto], Index) :-
    format('~w. ~w\n', [Index, Opcion]),
    NuevoIndex is Index + 1,
    mostrar_opciones(Resto, NuevoIndex).

% Filtrar por la propiedad seleccionada
filtrar_por_propiedad(Series, PropiedadIndex, otro, Series).
filtrar_por_propiedad(Series, PropiedadIndex, Seleccion, SeriesFiltradas) :-
    include(serie_tiene_propiedad(PropiedadIndex, Seleccion), Series, SeriesFiltradas).

serie_tiene_propiedad(PropiedadIndex, Seleccion, Serie) :-
    nth1(PropiedadIndex, Serie, Propiedad),
    (   is_list(Propiedad) -> member(Seleccion, Propiedad) ; Seleccion = Propiedad).

% Mostrar resultado final
resultado([]) :-
    writeln('No se encontró ninguna serie que coincida con los criterios seleccionados.').
resultado([Serie]) :-
    nth1(1, Serie, Nombre),
    format('¡Creo que tu serie es ~w!\n', [Nombre]).
resultado(Series) :-
    writeln('No estoy seguro, pero las siguientes series coinciden con tus respuestas:'),
    findall(Nombre, (member(Serie, Series), nth1(1, Serie, Nombre)), Nombres),
    writeln(Nombres).