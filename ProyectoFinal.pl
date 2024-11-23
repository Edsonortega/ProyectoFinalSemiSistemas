#Base de Conocimientos con sus atributos para poder preguntar
serie('Stranger Things', ciencia_ficcion, 2016, netflix, [amistad, misterios, dimensiones_paralelas], [millie_bobby_brown, finn_wolfhard]).
serie('Breaking Bad', drama, 2008, amc, [crimen, quimica, transformacion], [bryan_cranston, aaron_paul]).
serie('The Crown', drama, 2016, netflix, [realeza, historia, politica], [claire_foy, olivia_colman]).
serie('The Mandalorian', ciencia_ficcion, 2019, disney_plus, [star_wars, aventuras, mercenarios], [pedro_pascal]).
serie('Friends', comedia, 1994, hbo, [amistad, humor, romance], [jennifer_aniston, courteney_cox]).
serie('The Office', comedia, 2005, netflix, [humor, oficina, absurdos], [steve_Carell, rain_wilson]).
serie('Game of Thrones', fantasia, 2011, hbo, [dragones, reinos, politica], [emilia_clarke, kit_harington]).
serie('The Witcher', fantasia, 2019, netflix, [monstruos, magia, aventuras], [henry_cavill]).
serie('Sherlock', misterio, 2010, bbc, [detectives, ingenio, crimen], [benedict_cumberbatch, martin_freeman]).
serie('House of the Dragon', fantasia, 2022, hbo, [dragones, politica, historia], [paddy_Considine, emma_DArcy]).
serie('Black Mirror', ciencia_ficcion, 2011, netflix, [tecnologia, distopia, moralidad], [bryce_dallas_howard, jon_hamm]).
serie('Peaky Blinders', drama, 2013, netflix, [crimen, mafia, historia], [cillian_murphy, tom_hardy]).
serie('The Boys', accion, 2019, amazon_prime, [superheroes, corrupcion, satira], [karl_urban, antony_starr]).
serie('Money Heist', accion, 2017, netflix, [robos, estrategia, tension], [alvaro_morte, ursula_corbero]).
serie('Succession', drama, 2018, hbo, [negocios, familia, poder], [brian_cox, jeremy_strong]).
serie('The Umbrella Academy', ciencia_ficcion, 2019, netflix, [superheroes, familia, viajes_en_el_tiempo], [elliot_page, tom_hopper]).
serie('The Last of Us', drama, 2023, hbo, [apocalipsis, infectados, emociones], [pedro_pascal, bella_ramsey]).
serie('Dark', misterio, 2017, netflix, [viajes_en_el_tiempo, secretos, bucles], [louis_hofmann, andreas_pietschmann]).
serie('Arcane', animacion, 2021, netflix, [fantasia, tecnologia, rivalidades], [jinx, vi]).
serie('Gambito de dama', comedia, 2016, amazon_prime, [humor_negro, relaciones, drama], [anya_taylor_joy]).
serie('Attack on Titan', anime, 2013, crunchyroll, [accion, drama, titanes], [eren_jaeger, mikasa_ackerman]).
serie('Death Note', anime, 2006, crunchyroll, [misterio, psicologico, crimen], [yagami_light, amane_misa]).
serie('Naruto', anime, 2002, crunchyroll, [accion, ninjas, amistad], [naruto_uzumaki, sasuke_uchiha]).
serie('Demon Slayer', anime, 2019, crunchyroll, [accion, fantasia, demonios], [tanjiro_kamado, zenitsu_agatsuma]).
serie('Jujutsu Kaisen', anime, 2020, crunchyroll, [accion, exorcismo, fantasia], [itadori_yuji, satouru_gojo]).
serie('Cowboy Bebop', anime, 1998, crunchyroll, [ciencia_ficcion, cazarrecompensas, espacio], [spike_spiegel, faye_valentine]).
serie('My Hero Academia', anime, 2016, crunchyroll, [superheroes, escuela, accion], [izuku_midoriya, bakugo_katsuki]).
serie('One Piece', anime, 1999, crunchyroll, [aventura, piratas, amistad], [monkey_d_luffy, ronoroa_zoro]).
serie('Better Call Saul', drama, 2015, amc, [abogados, crimen, corrupcion], [bob_odenkirk, rhea_seehorn]).
serie('The Sopranos', drama, 1999, hbo, [mafia, familia, psicologia], [james_gandolfini, edie_falco]).
serie('Ozark', drama, 2017, netflix, [lavado_de_dinero, crimen, familia], [jason_bateman, laura_linney]).
serie('Euphoria', drama, 2019, hbo, [adolescencia, problemas_sociales, romance], [zendaya, hunter_schafer]).
serie('Vikings', drama, 2013, history_channel, [historia, batallas, cultura_nordica], [travis_fimmel, katheryn_winnick]).
serie('How I Met Your Mother', comedia, 2005, hulu, [amistad, humor, romance], [josh_radnor, neil_patrick_harris]).
serie('Mad Men', drama, 2007, amc, [publicidad, negocios, psicologia], [jon_hamm, elisabeth_moss]).
serie('Brooklyn Nine-Nine', comedia, 2013, hulu, [policias, humor, crimen], [andy_samberg, terry_crews]).
serie('Fargo', drama, 2014, fx, [crimen, misterio, antologia], [billy_bob_thornton, martin_freeman]).
serie('Westworld', ciencia_ficcion, 2016, hbo, [robots, conciencia, filosofia], [evan_rachel_wood, jeffrey_wright]).
serie('The Haunting of Hill House', terror, 2018, netflix, [fantasmas, familia, trauma], [victoria_pedretti, oliver_jackson-cohen]).
serie('Parks and Recreation', comedia, 2009, peacock, [politica, humor, comunidad], [amy_poehler, nick_offerman]).
serie('Lost', misterio, 2004, abc, [supervivencia, islas, secretos], [matthew_fox, evangeline_lilly]).
serie('The Expanse', ciencia_ficcion, 2015, amazon_prime, [espacio, politica, conflictos], [steven_strait, dominique_tipper]).
serie('Orange Is the New Black', drama, 2013, netflix, [carcel, diversidad, relaciones], [taylor_schilling, laura_prepon]).
serie('The Handmaid\'s Tale', drama, 2017, hulu, [distopia, feminismo, politica], [elisabeth_moss, yvonne_strahovski]).
serie('Bleach', anime, 2004, crunchyroll, [accion, fantasmas, shinigamis], [ichigo_kurosaki, rukia_kuchiki]).

% Predicado principal
adivinar :-
    listar_series(SeriesIniciales),
    realizar_preguntas(SeriesIniciales, SeriesFinales),
    mostrar_resultado(SeriesFinales).

% Listar todas las series de la base de datos
listar_series(Series) :-
    findall([Nombre, Genero, Anio, Plataforma, Temas, Actores],
            serie(Nombre, Genero, Anio, Plataforma, Temas, Actores),
            Series).

% Realizar preguntas sucesivas
realizar_preguntas(Series, SeriesFinales) :-
    pregunta_plataforma(Series, SeriesFiltradas1),
    pregunta_anio(SeriesFiltradas1, SeriesFiltradas2),
    pregunta_genero(SeriesFiltradas2, SeriesFinales).

% Pregunta: plataforma
pregunta_plataforma(Series, Filtradas) :-
    writeln('¿Tu serie pertenece a alguna de las siguientes plataformas?'),
    listar_opciones([netflix, amc, disney_plus, hbo, bbc, amazon_prime, crunchyroll, history_channel, hulu, fx, peacock, abc]),
    read(PlataformaElegida),
    incluir_series_por(Series, 4, PlataformaElegida, Filtradas).

% Pregunta: año
pregunta_anio(Series, Filtradas) :-
    writeln('¿En qué año comenzó tu serie?'),
    read(AnioElegido),
    incluir_series_por(Series, 3, AnioElegido, Filtradas).

% Pregunta: género
pregunta_genero(Series, Filtradas) :-
    writeln('¿De qué género es tu serie?'),
    listar_opciones([ciencia_ficcion, drama, comedia, terror, fantasia, accion, misterio]),
    read(GeneroElegido),
    incluir_series_por(Series, 2, GeneroElegido, Filtradas).

% Filtrar series con base en un criterio (posición en el hecho)
incluir_series_por(Series, Posicion, Valor, Filtradas) :-
    include(cumple_criterio(Posicion, Valor), Series, Filtradas).

cumple_criterio(Posicion, Valor, Serie) :-
    nth1(Posicion, Serie, Valor).

% Mostrar resultado
mostrar_resultado([]) :-
    writeln('No se encontró ninguna serie que cumpla con las características.').
mostrar_resultado([UnicaSerie]) :-
    writeln('La serie que estás pensando es: '),
    writeln(UnicaSerie).
mostrar_resultado(Series) :-
    writeln('No se pudo determinar una serie exacta. Aquí tienes las posibles opciones:'),
    writeln(Series).

% Listar opciones en formato legible
listar_opciones(Opciones) :-
    listar_opciones(Opciones, 1).

listar_opciones([], _).
listar_opciones([Opcion|Resto], N) :-
    format("~w. ~w~n", [N, Opcion]),
    N1 is N + 1,
    listar_opciones(Resto, N1).