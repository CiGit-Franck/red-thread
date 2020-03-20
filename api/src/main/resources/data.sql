-- INSERT Movies
INSERT INTO public.mv_movie (id_imdb,director,imdb_rating,imdb_vote,plot,released,runtime,title) VALUES
    ('tt3896198','James Gunn',7.6,526626,'Avec en toile de fond l’Awesome Mixtape #2, Les Gardiens de la Galaxie Vol. 2 poursuit les aventures de l’équipe alors qu’ils traversent les confins du cosmos. Les Gardiens doivent se battre pour que leur nouvelle famille reste ensemble tandis qu’ils cherchent à percer le mystère de la véritable filiation de Star-Lord. De vieux ennemis deviennent de nouveaux alliés et des personnages appréciés des fans, issus des comics, viennent en aide à nos héros alors que l’Univers Cinématographique Marvel continue de se développer.','2017-04-19',138,'Les Gardiens de la Galaxie Vol. 2'),
    ('tt0093409','Richard Donner',7.6,226186,'Deux excellents policiers de Los Angeles, Martin Riggs et Roger Murtaugh, se retrouvent coéquipers sur une même affaire. Les deux hommes, de caractère franchement opposé, finissent par s''apprécier et demontrent leur amitié et leurs capacités quand la fille de l''un d''eux est enlevée par d''anciens agents des forces spéciales devenus trafiquants de drogue.','1987-03-06',110,'L''Arme fatale'),
    ('tt0078907','Patrice Leconte',7.5,6671,'Après le Club Méditerranée, la joyeuse troupe d''amis (plus connue sous le nom des Bronzés) se retrouvent aux sports d''hiver. Ils vivront encore d''autres problèmes sentimentaux et mésaventures. L''équipe ira même se perdre en montagne.','1979-11-22',83,'Les Bronzés font du ski'),
    ('tt0109440','Alain Berbérian',7.7,7807,'Odile Deray, attachée de presse, vient au Festival de Cannes pour présenter le film "Red is Dead". Malheureusement, celui-ci est d''une telle faiblesse que personne ne souhaite en faire l''écho. Mais lorsque les projectionnistes du long-métrage en question meurent chacun leur tour dans d''étranges circonstances, "Red is dead" bénéficie d''une incroyable publicité. Serge Karamazov est alors chargé de protéger le nouveau projectionniste du film.','1994-03-09',99,'La Cité de la Peur'),
    ('tt0114814','Bryan Singer',8.5,940372,'Une légende du crime contraint 5 malfrats à aller s''acquitter d''une tâche très périlleuse. Ceux qui survivent pourront se partager un butin de 91 millions de dollars.','1995-07-19',106,'Usual Suspects'),
    ('tt0137523','David Fincher',8.8,1755840,'Le narrateur, sans identité précise, vit seul, travaille seul, dort seul, mange seul ses plateaux-repas pour une personne comme beaucoup d’autres personnes seules qui connaissent la misère humaine, morale et sexuelle. C’est pourquoi il va devenir membre du Fight club, un lieu clandestin où il va pouvoir retrouver sa virilité, l’échange et la communication. Ce club est dirigé par Tyler Durden, une sorte d’anarchiste entre gourou et philosophe qui prêche l’amour de son prochain.','1999-10-15',139,'Fight Club')
;

-- INSERT Movie Buffs
INSERT INTO mv_moviebuff (id_movie_buff, first_name, last_name) VALUES
    (nextval('movie_buff_seq_id'), 'Tête', 'Denoeud'),
    (nextval('movie_buff_seq_id'), 'Gérard', 'Menltant'),
    (nextval('movie_buff_seq_id'), 'Al', 'Kollyck'),
    (nextval('movie_buff_seq_id'), 'Corine', 'Titgoute')
;

INSERT INTO public.mv_movie_movie_buff (movie_buffs_id_movie_buff, movies_seen_id_imdb) VALUES
    (1, 'tt0078907'),
    (1, 'tt0109440');

-- INSERT Opinions
INSERT INTO public.mv_opinion (id_opinion, comment, id_movie_buff, rating, movie_id_imdb) VALUES
    (nextval('opinion_seq_id'), 'Surpris !', 1, 0.5, 'tt0137523'),
    (nextval('opinion_seq_id'), 'Film culte !', 1, 10, 'tt0078907')
;

-- INSERT Actors
INSERT INTO public.mv_actor (id_actor,"name") VALUES
    (21177,'Thierry Lhermitte'),
    (64913,'Marie-Anne Chazel'),
    (21175,'Michel Blanc'),
    (35137,'Josiane Balasko'),
    (28781,'Christian Clavier'),
    (21171,'Gérard Jugnot'),
    (1972,'Dominique Lavanant'),
    (82792,'Bruno Moynot'),
    (68722,'Maurice Chevit'),
    (9045,'Stephen Baldwin'),
    (1979,'Kevin Spacey'),
    (5168,'Gabriel Byrne'),
    (9046,'Chazz Palminteri'),
    (7166,'Kevin Pollak'),
    (4935,'Pete Postlethwaite'),
    (2179,'Suzy Amis'),
    (4808,'Giancarlo Esposito'),
    (1121,'Benicio del Toro'),
    (6486,'Dan Hedaya'),
    (101377,'Paul Bartel'),
    (56166,'Carl Bressler'),
    (9047,'Christine Estabrook'),
    (9048,'Clark Gregg'),
    (156227,'Morgan Hunter'),
    (3218,'Louis Lombardi'),
    (1216752,'Frank Medrano'),
    (1235937,'Ron Gilbert'),
    (11803,'Peter Greene'),
    (3979,'Castulo Guerra'),
    (82119,'Chantal Lauby'),
    (4275,'Alain Chabat'),
    (27221,'Dominique Farrugia'),
    (47337,'Gérard Darmon'),
    (76826,'Sam Karmann'),
    (19776,'Jean-Christophe Bouvet'),
    (76827,'Hélène de Fougerolles'),
    (2165,'Rosanna Arquette'),
    (10698,'Tchéky Karyo'),
    (28281,'Jean-Pierre Bacri'),
    (24814,'Daniel Gélin'),
    (30641,'Eddy Mitchell'),
    (507238,'Pierre Lescure'),
    (545426,'Patrick Lizana'),
    (49748,'Eric Prat'),
    (255923,'Marc de Jonge'),
    (62531,'Valérie Lemercier'),
    (572506,'Dave'),
    (39144,'Patrice Laffont'),
    (2414,'Artus de Penguern'),
    (67717,'Michel Hazanavicius'),
    (23508,'Daniel Toscan du Plantier'),
    (2710,'James Cameron'),
    (17624,'Olivier Doran'),
    (310646,'Christian Gazio'),
    (291375,'Florence Viala'),
    (411483,'Philippe Chany'),
    (278032,'Pierre Amzallag'),
    (19063,'Bruno Carette'),
    (572507,'Claire Hammond'),
    (572508,'Christian Moro'),
    (572509,'Florence Joubert'),
    (264214,'Hélène Rodier'),
    (572510,'Géraldine Bonnet-Guérin'),
    (78480,'Sophie Mounicot'),
    (70165,'Gérard Lanvin'),
    (21680,'Dominique Besnehard'),
    (415820,'Pierre Héros'),
    (572511,'Henri de Turenne'),
    (2461,'Mel Gibson'),
    (2047,'Danny Glover'),
    (2048,'Gary Busey'),
    (11784,'Tom Atkins'),
    (14313,'Darlene Love'),
    (14314,'Traci Wolfe'),
    (14316,'Damon Hines'),
    (14317,'Ebonie Smith'),
    (14319,'Lycia Naff'),
    (8658,'Ed O''Ross'),
    (14062,'Don Gordon'),
    (23967,'Mary Ellen Trainor'),
    (14328,'Steve Kahan'),
    (61704,'Al Leong'),
    (14312,'Mitchell Ryan'),
    (14320,'Jack Thibeau'),
    (14315,'Jackie Swanson'),
    (14318,'Gilles Kohler'),
    (194553,'Patrick Cameron'),
    (297999,'David Pontremoli'),
    (35210,'Roland Giraud'),
    (1828503,'Fernand Bonnevie'),
    (1289993,'Guy Laporte'),
    (38404,'Véronique Barrault'),
    (225653,'Michel Such'),
    (1350238,'Isabelle de Botton'),
    (25035,'Maurice Aufair'),
    (1662202,'Jean-Marc Henchoz'),
    (100721,'Doris Thomas'),
    (73457,'Chris Pratt'),
    (8691,'Zoe Saldana'),
    (543530,'Dave Bautista'),
    (12835,'Vin Diesel'),
    (51329,'Bradley Cooper'),
    (12132,'Michael Rooker'),
    (543261,'Karen Gillan'),
    (139820,'Pom Klementieff'),
    (16483,'Sylvester Stallone'),
    (6856,'Kurt Russell'),
    (1133349,'Elizabeth Debicki'),
    (1293892,'Chris Sullivan'),
    (51663,'Sean Gunn'),
    (2478,'Tommy Flanagan'),
    (209578,'Laura Haddock'),
    (77337,'Aaron Schwartz'),
    (1806596,'Hannah Gottesman'),
    (1313075,'Hilty Bowen'),
    (26048,'Ben Browder'),
    (142298,'Alexander Klein'),
    (1494146,'Luke Cook'),
    (333,'Evan Jones'),
    (85115,'Joe Fria'),
    (1411625,'Terence Rosemore'),
    (1435789,'Jimmy Urine'),
    (85096,'Stephen Blackehart'),
    (559457,'Steve Agee'),
    (1806597,'Blondy Baruti'),
    (105657,'Richard Christy'),
    (16848,'Rob Zombie'),
    (1806598,'Sierra Love'),
    (1772601,'Kendra Carelli'),
    (1404450,'Milynn Sarley'),
    (13922,'Seth Green'),
    (96349,'Molly C. Quinn'),
    (19975,'Michael Rosenbaum'),
    (51456,'Rhoda Griffis'),
    (7624,'Stan Lee'),
    (28238,'David Hasselhoff'),
    (1806599,'Mac Wells'),
    (1806600,'Jim Gunn Sr.'),
    (1806601,'Leota Gunn'),
    (1718567,'Elizabeth Ludlow'),
    (1148455,'Wyatt Oleff'),
    (2518,'Gregg Henry'),
    (1635208,'Damita Jane Howard'),
    (10182,'Ving Rhames'),
    (1620,'Michelle Yeoh'),
    (1405553,'Fred'),
    (76594,'Miley Cyrus'),
    (4785,'Jeff Goldblum'),
    (229508,'Mike Escamilla'),
    (1769802,'Donny Carrington'),
    (1806602,'Brian Clackley'),
    (1482685,'Nea Dune'),
    (1358965,'Fred Galle'),
    (1767219,'Tahseen Ghauri'),
    (1806603,'Alphonso A''Qen-Aten Jackson'),
    (1082706,'Kelly Richardson'),
    (1873278,'Guillermo Rodriguez'),
    (1812367,'Josh Tipis'),
    (1578275,'Jason Williams'),
    (1688645,'Cheyanna Lavon Zubas')
;

INSERT INTO public.mv_actor_movies (movies_id_imdb,actors_id_actor) VALUES
    ('tt0114814',9045)
    ,('tt0114814',1979)
    ,('tt0114814',5168)
    ,('tt0114814',9046)
    ,('tt0114814',7166)
    ,('tt0114814',4935)
    ,('tt0114814',2179)
    ,('tt0114814',4808)
    ,('tt0114814',1121)
    ,('tt0114814',6486)
    ,('tt0114814',101377)
    ,('tt0114814',56166)
    ,('tt0114814',9047)
    ,('tt0114814',9048)
    ,('tt0114814',156227)
    ,('tt0114814',3218)
    ,('tt0114814',1216752)
    ,('tt0114814',1235937)
    ,('tt0114814',11803)
    ,('tt0114814',3979)
    ,('tt0109440',82119)
    ,('tt0109440',4275)
    ,('tt0109440',27221)
    ,('tt0109440',47337)
    ,('tt0109440',76826)
    ,('tt0109440',19776)
    ,('tt0109440',76827)
    ,('tt0109440',2165)
    ,('tt0109440',10698)
    ,('tt0109440',28281)
    ,('tt0109440',24814)
    ,('tt0109440',30641)
    ,('tt0109440',507238)
    ,('tt0109440',545426)
    ,('tt0109440',49748)
    ,('tt0109440',255923)
    ,('tt0109440',62531)
    ,('tt0109440',572506)
    ,('tt0109440',39144)
    ,('tt0109440',2414)
    ,('tt0109440',67717)
    ,('tt0109440',23508)
    ,('tt0109440',2710)
    ,('tt0109440',17624)
    ,('tt0109440',310646)
    ,('tt0109440',291375)
    ,('tt0109440',411483)
    ,('tt0109440',278032)
    ,('tt0109440',19063)
    ,('tt0109440',572507)
    ,('tt0109440',572508)
    ,('tt0109440',572509)
    ,('tt0109440',264214)
    ,('tt0109440',572510)
    ,('tt0109440',78480)
    ,('tt0109440',70165)
    ,('tt0109440',21680)
    ,('tt0109440',415820)
    ,('tt0109440',572511)
    ,('tt0093409',2461)
    ,('tt0093409',2047)
    ,('tt0093409',2048)
    ,('tt0093409',11784)
    ,('tt0093409',14313)
    ,('tt0093409',14314)
    ,('tt0093409',14316)
    ,('tt0093409',14317)
    ,('tt0093409',14319)
    ,('tt0093409',8658)
    ,('tt0093409',14062)
    ,('tt0093409',23967)
    ,('tt0093409',14328)
    ,('tt0093409',61704)
    ,('tt0093409',14312)
    ,('tt0093409',14320)
    ,('tt0093409',14315)
    ,('tt0093409',14318)
    ,('tt0093409',194553)
    ,('tt0078907',21177)
    ,('tt0078907',64913)
    ,('tt0078907',21175)
    ,('tt0078907',35137)
    ,('tt0078907',28781)
    ,('tt0078907',21171)
    ,('tt0078907',1972)
    ,('tt0078907',82792)
    ,('tt0078907',68722)
    ,('tt0078907',297999)
    ,('tt0078907',35210)
    ,('tt0078907',1828503)
    ,('tt0078907',1289993)
    ,('tt0078907',38404)
    ,('tt0078907',225653)
    ,('tt0078907',1350238)
    ,('tt0078907',25035)
    ,('tt0078907',1662202)
    ,('tt0078907',100721)
    ,('tt3896198',73457)
    ,('tt3896198',8691)
    ,('tt3896198',543530)
    ,('tt3896198',12835)
    ,('tt3896198',51329)
    ,('tt3896198',12132)
    ,('tt3896198',543261)
    ,('tt3896198',139820)
    ,('tt3896198',16483)
    ,('tt3896198',6856)
    ,('tt3896198',1133349)
    ,('tt3896198',1293892)
    ,('tt3896198',51663)
    ,('tt3896198',2478)
    ,('tt3896198',209578)
    ,('tt3896198',77337)
    ,('tt3896198',1806596)
    ,('tt3896198',1313075)
    ,('tt3896198',26048)
    ,('tt3896198',142298)
    ,('tt3896198',1494146)
    ,('tt3896198',333)
    ,('tt3896198',85115)
    ,('tt3896198',1411625)
    ,('tt3896198',1435789)
    ,('tt3896198',85096)
    ,('tt3896198',559457)
    ,('tt3896198',1806597)
    ,('tt3896198',105657)
    ,('tt3896198',16848)
    ,('tt3896198',1806598)
    ,('tt3896198',1772601)
    ,('tt3896198',1404450)
    ,('tt3896198',13922)
    ,('tt3896198',96349)
    ,('tt3896198',19975)
    ,('tt3896198',51456)
    ,('tt3896198',7624)
    ,('tt3896198',28238)
    ,('tt3896198',1806599)
    ,('tt3896198',1806600)
    ,('tt3896198',1806601)
    ,('tt3896198',1718567)
    ,('tt3896198',1148455)
    ,('tt3896198',2518)
    ,('tt3896198',1635208)
    ,('tt3896198',10182)
    ,('tt3896198',1620)
    ,('tt3896198',1405553)
    ,('tt3896198',76594)
    ,('tt3896198',4785)
    ,('tt3896198',229508)
    ,('tt3896198',1769802)
    ,('tt3896198',1806602)
    ,('tt3896198',1482685)
    ,('tt3896198',1358965)
    ,('tt3896198',1767219)
    ,('tt3896198',1806603)
    ,('tt3896198',1082706)
    ,('tt3896198',1873278)
    ,('tt3896198',1812367)
    ,('tt3896198',1578275)
    ,('tt3896198',1688645)
;

-- INSERT Genres
INSERT INTO public.mv_genre (id_genre,"name") VALUES
    (18,'Drame')
   ,(80,'Crime')
   ,(53,'Thriller')
   ,(35,'Comédie')
   ,(12,'Aventure')
   ,(28,'Action')
   ,(878,'Science-Fiction')
;

INSERT INTO public.mv_movies_genres (movies_id_imdb,genres_id_genre) VALUES
    ('tt0137523',18)
    ,('tt0114814',18)
    ,('tt0114814',80)
    ,('tt0114814',53)
    ,('tt0109440',35)
    ,('tt0093409',12)
    ,('tt0093409',28)
    ,('tt0093409',35)
    ,('tt0093409',53)
    ,('tt0093409',80)
    ,('tt0078907',35)
    ,('tt3896198',28)
    ,('tt3896198',12)
    ,('tt3896198',35)
    ,('tt3896198',878)
;
