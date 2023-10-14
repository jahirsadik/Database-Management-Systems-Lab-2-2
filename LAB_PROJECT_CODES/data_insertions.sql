-- ALL league DATA
INSERT INTO league VALUES
    ('La Liga', 'Spain', 1);
INSERT INTO league VALUES
    ('EPL', 'England', 1);
INSERT INTO league VALUES
    ('Bundesliga', 'Germany', 1);
INSERT INTO league VALUES
    ('Seria A', 'Italy', 1);
INSERT INTO league VALUES
    ('Ligue 1', 'France', 1);
INSERT INTO league VALUES
	('Segunda División', 'Spain', 2);
INSERT INTO league VALUES
	('English Championship', 'England', 2);
	
-- VIEW league DATA
select * from league
	
	
	
-- ALL stadium DATA
INSERT INTO stadium VALUES
	('San Mamés', 'Bilbao','Spain', 53289);
INSERT INTO stadium VALUES
	('Santiago Bernabéu Stadium', 'Madrid','Spain', 81044);
INSERT INTO stadium VALUES
	('Camp Nou', 'Barcelona','Spain', 99354);
INSERT INTO stadium VALUES
	('Wanda Metropolitano Stadium', 'Madrid','Spain', 68456);
INSERT INTO stadium VALUES
	('Ramon Sanchez-Pizjuan Stadium', 'Sevilla','Spain', 43883);
INSERT INTO stadium VALUES
	('Estadio de la Cerámica', 'Villarreal','Spain', 23500);
INSERT INTO stadium VALUES
	('Anoeta Stadium', 'San Sebastián','Spain', 39500);
INSERT INTO stadium VALUES
	('Nuevo Estadio de Los Cármenes', 'Granada','Spain', 19336);
INSERT INTO stadium VALUES
	('Coliseum Alfonso Pérez', 'Getafe','Spain', 17000);
INSERT INTO stadium VALUES
	('Mestalla Stadium', 'Valencia','Spain', 48600);
INSERT INTO stadium VALUES
	('El Sadar Stadium', 'Navarre','Spain', 23576);
INSERT INTO stadium VALUES
	('Estadi Ciutat de València', 'Valencia','Spain', 26354);
INSERT INTO stadium VALUES
	('José Zorrilla Stadium', 'Valladolid','Spain', 27846);
INSERT INTO stadium VALUES
	('Ipurua Municipal Stadium', 'Eibar','Spain', 8164);
INSERT INTO stadium VALUES
	('Estadio Benito Villamarín', 'Seville','Spain', 60720);
INSERT INTO stadium VALUES
	('Mendizorrotza Stadium', 'Vitoria-Gasteiz','Spain', 19840);
INSERT INTO stadium VALUES
	('Estadio de Balaídos', 'Vigo','Spain', 35000);
INSERT INTO stadium VALUES
	('Estadio Municipal de Butarque', 'Leganés','Spain', 12450);
INSERT INTO stadium VALUES
	('Son Moix', 'Palma de Mallorca','Spain', 23142);
INSERT INTO stadium VALUES
	('RCDE Stadium', 'Barcelona','Spain', 40000);
	
INSERT INTO stadium VALUES
	('Old Trafford', 'Manchester','England', 76000);
INSERT INTO stadium VALUES
	('San Siro', 'Milan','Italy', 75923);
INSERT INTO stadium VALUES
	('Anfield', 'Liverpool','England', 53394);
INSERT INTO stadium VALUES
	('Allianz Arena', 'Munich','Germany', 75024);
INSERT INTO stadium VALUES
	('Le Parc des Princes', 'Paris','France', 47929);
INSERT INTO stadium VALUES
	('Signal Iduna Park', 'Dortmund','Germany', 81365);
	
-- VIEW stadium DATA
select * from stadium 
	
	
	

-- ALL team DATA (Budget in Euro)
INSERT INTO team VALUES
	('9001', 'Santiago Bernabéu Stadium', 'La Liga', 'Spain', 'Real Madrid C.F.', '1902-3-2', 169610000);
INSERT INTO team VALUES
	('9002', 'Camp Nou', 'La Liga', 'Spain', 'Barcelona', '1899-11-29', 169074000);
INSERT INTO team VALUES
	('9003', 'Wanda Metropolitano Stadium', 'La Liga', 'Spain', 'Atletico Madrid', '1903-4-26', 61716000);
INSERT INTO team VALUES
	('9004', 'Ramon Sanchez-Pizjuan Stadium', 'La Liga', 'Spain', 'Sevilla', '1890-1-25', 31069000);
INSERT INTO team VALUES
	('9005', 'Estadio de la Cerámica', 'La Liga', 'Spain', 'Villarreal CF', '1923-3-10', 29636000);
INSERT INTO team VALUES
	('9006', 'Anoeta Stadium', 'La Liga', 'Spain', 'Real Sociedad', '1909-9-7', 14175000);
INSERT INTO team VALUES
	('9007', 'Nuevo Estadio de Los Cármenes', 'La Liga', 'Spain', 'Granada', '1931-4-14', 4929000);
INSERT INTO team VALUES
	('9008', 'Coliseum Alfonso Pérez', 'La Liga', 'Spain', 'Getafe', '1983-7-8', 4868000);
INSERT INTO team VALUES
	('9009', 'Mestalla Stadium', 'La Liga', 'Spain', 'Valencia', '1919-3-18', 59704000);
INSERT INTO team VALUES
	('9010', 'El Sadar Stadium', 'La Liga', 'Spain', 'Osasuna', '1920-10-24', 3915000);
INSERT INTO team VALUES
	('9011', 'San Mamés', 'La Liga', 'Spain', 'Athletic Club', '1998-1-1', 16649000);
INSERT INTO team VALUES
	('9012', 'Estadi Ciutat de València', 'La Liga', 'Spain', 'Levante', '1909-9-9', 7388000);
INSERT INTO team VALUES
	('9013', 'José Zorrilla Stadium', 'La Liga', 'Spain', 'Valladolid', '1928-6-20', 2772000);
INSERT INTO team VALUES
	('9014', 'Ipurua Municipal Stadium', 'La Liga', 'Spain', 'Eibar', '1940-11-30', 4837000);
INSERT INTO team VALUES
	('9015', 'Estadio Benito Villamarín', 'La Liga', 'Spain', 'Betis', '1907-9-12', 14450000);
INSERT INTO team VALUES
	('9016', 'Mendizorrotza Stadium', 'La Liga', 'Spain', 'Alaves', '1921-1-23',  3978000);
INSERT INTO team VALUES
	('9017', 'Estadio de Balaídos', 'La Liga', 'Spain', 'Celta Vigo', '1923-8-23', 10593000);
INSERT INTO team VALUES
	('9018', 'Estadio Municipal de Butarque', 'La Liga', 'Spain', 'Leganes', '1928-6-23', 4178000);
INSERT INTO team VALUES
	('9019', 'Son Moix', 'La Liga', 'Spain', 'Mallorca', '1916-3-5', 2046000);
INSERT INTO team VALUES
	('9020', 'RCDE Stadium', 'La Liga', 'Spain', 'Espanyol', '1900-10-13', 9386000);
	
INSERT INTO team VALUES
	('1001', 'Old Trafford', 'EPL', 'England', 'Manchester United F.C.', '1902-9-11', 139716000);
INSERT INTO team VALUES
	('1002', 'Anfield', 'EPL', 'England', 'Liverpool F.C.', '1892-6-3', 119716000);
INSERT INTO team VALUES
	('2001', 'Le Parc des Princes', 'Ligue 1', 'France', 'Paris Saint-Germain F.C.', '1970-8-12', 219716000);
INSERT INTO team VALUES
	('3001', 'Allianz Arena', 'Bundesliga', 'Germany', 'Bayern Munich', '1900-2-27', 151716000);
INSERT INTO team VALUES
	('3002', 'Signal Iduna Park', 'Bundesliga', 'Germany', 'Borussia Dortmund', '1909-12-19', 91716000);
INSERT INTO team VALUES
	('4001', 'San Siro', 'Seria A', 'Italy', 'AC Milan', '1899-1-29', 79716000);
INSERT INTO team VALUES
	('4002', 'San Siro', 'Seria A', 'Italy', 'Inter Milan', '1908-3-9', 99716000);


-- VIEW ALL teams
select * from team


-- All manager data
INSERT INTO manager VALUES
	('9001', 'Zinedine Zidane', 'France', '1972-6-23');
INSERT INTO manager VALUES
	('9002', 'Ronald Koeman', 'Netherlands', '1963-3-21');
INSERT INTO manager VALUES
	('9003', 'Diego Simeone', 'Argentina', '1970-4-28');
INSERT INTO manager VALUES
	('9004', 'Julen Lopetegui', 'Spain', '1966-8-28');
INSERT INTO manager VALUES
	('9005', 'Unai Emery', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9006', 'Imanol Alguacil', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9007', 'Diego Martínez', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9008', 'Pepe Bordalás', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9009', 'Javi Gracia', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9010', 'Jagoba Arrasate', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9011', 'Marcelino', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9012', 'Paco López', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9013', 'Sergio', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9014', 'José Luis Mendilibar', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9015', 'Manuel Pellegrini', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9016', 'Javier Calleja', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9017', 'Eduardo Coudet', 'Argentina', '1972-6-23');
INSERT INTO manager VALUES
	('9018', 'Álvaro Cervera', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9019', 'Pacheta', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('9020', 'Fran Escribá', 'Spain', '1972-6-23');
INSERT INTO manager VALUES
	('1001', 'Ole Gunnar Solskjær', 'Norway', '1972-6-23');
INSERT INTO manager VALUES
	('1002', 'Jurgen Klopp', 'Germany', '1972-6-23');
INSERT INTO manager VALUES
	('2001', 'Mauricio Pochettino', 'Argentina', '1972-6-23');
INSERT INTO manager VALUES
	('3001', 'Hans-Dieter Flick', 'Germany', '1972-6-23');
INSERT INTO manager VALUES
	('3002', 'Edin Terzić', 'Germany', '1972-6-23');
INSERT INTO manager VALUES
	('4001', 'Stefano Pioli', 'Italy', '1982-6-13');
INSERT INTO manager VALUES
	('4002', 'Antonio Conte', 'Italy', '1967-6-29');
		
-- VIEW ALL manager
select * from manager



-- ALL manages DATA
INSERT INTO manages VALUES
	('9001', '9001', '2016-1-4', 196333.85);
INSERT INTO manages VALUES
	('9002', '9002', '2020-1-6', 146293.85);
INSERT INTO manages VALUES
	('9003', '9003', '2010-8-12', 216339.85);
INSERT INTO manages VALUES
	('9004', '9004', '2020-1-6', 120303.95);
INSERT INTO manages VALUES
	('9005', '9005', '2019-10-27', 34333.81);
INSERT INTO manages VALUES
	('9006', '9006', '2018-11-4', 96333.89);
INSERT INTO manages VALUES
	('9007', '9007', '2020-3-16', 74133.15);
INSERT INTO manages VALUES
	('9008', '9008', '2017-4-15', 76397.45);
INSERT INTO manages VALUES
	('9009', '9009', '2016-8-12', 46363.85);
INSERT INTO manages VALUES
	('9010', '9010', '2019-5-6', 16331.85);
INSERT INTO manages VALUES
	('9011', '9011', '2017-10-22', 16732.35);
INSERT INTO manages VALUES
	('9012', '9012', '2019-9-20', 19393.78);
INSERT INTO manages VALUES
	('9013', '9013', '2013-7-14', 19673.85);
INSERT INTO manages VALUES
	('9014', '9014', '2011-4-26', 276323.96);
INSERT INTO manages VALUES
	('9015', '9015', '2019-5-9', 16333.85);
INSERT INTO manages VALUES
	('9016', '9016', '2019-2-1', 68386.35);
INSERT INTO manages VALUES
	('9017', '9017', '2019-11-9', 97636.77);
INSERT INTO manages VALUES
	('9018', '9018', '2019-12-11', 17279.12);
INSERT INTO manages VALUES
	('9019', '9019', '2019-8-13', 18369.46);
INSERT INTO manages VALUES
	('9020', '9020', '2017-9-16', 10297.13);

INSERT INTO manages VALUES
	('1001', '1001', '2019-4-29', 82097.13);
INSERT INTO manages VALUES
	('1002', '1002', '2017-1-16', 192307.64);	
INSERT INTO manages VALUES
	('2001', '2001', '2016-7-19', 200297.13);
INSERT INTO manages VALUES
	('3001', '3001', '2017-9-16', 91297.13);	
INSERT INTO manages VALUES
	('3002', '3002', '2017-11-25', 82917.13);	
INSERT INTO manages VALUES
	('4001', '4001', '2016-9-16', 78810.13);	
INSERT INTO manages VALUES
	('4002', '4002', '2019-9-16', 19652.13);	
	
-- VIEW ALL manages
select * from manages



-- ALL player AND plays DATA

-- real madrid
INSERT INTO player VALUES
	('90011', 'Thibaut Courtois', 'Belgium', '1992-5-11');
INSERT INTO plays VALUES
	('90011', '9001', '2014-9-16', 192660);
	
INSERT INTO player VALUES
	('90012', 'Raphael Varane', 'France', '1992-5-11');
INSERT INTO plays VALUES
	('90012', '9001', '2014-9-16', 162660);
	
INSERT INTO player VALUES
	('90013', 'Sergio Ramos', 'Spain', '1992-5-11');
INSERT INTO plays VALUES
	('90013', '9001', '2014-9-16', 292660);
	
INSERT INTO player VALUES
	('90014', 'Casemiro', 'Brazil', '1992-5-11');
INSERT INTO plays VALUES
	('90014', '9001', '2014-9-16', 112660);
	
INSERT INTO player VALUES
	('90015', 'Toni Kroos', 'Germany', '1992-5-11');
INSERT INTO plays VALUES
	('90015', '9001', '2014-9-16', 211660);
	
INSERT INTO player VALUES
	('90016', 'Luka Modric', 'Croatia', '1992-5-11');
INSERT INTO plays VALUES
	('90016', '9001', '2014-9-16', 292660);
	
INSERT INTO player VALUES
	('90017', 'Eden Hazard', 'Belgium', '1992-5-11');
INSERT INTO plays VALUES
	('90017', '9001', '2014-9-16', 392660);
	
INSERT INTO player VALUES
	('90018', 'Isco', 'Spain', '1992-5-11');
INSERT INTO plays VALUES
	('90018', '9001', '2014-9-16', 112660);
	
INSERT INTO player VALUES
	('90019', 'Karim Benzema', 'France', '1992-5-11');
INSERT INTO plays VALUES
	('90019', '9001', '2009-9-16', 212660);
-- barcelona
INSERT INTO player VALUES
	('90021', 'Marc Andre ter Stegen', 'Germany', '1992-5-11');
INSERT INTO plays VALUES
	('90021', '9002', '2014-9-16', 272660);

INSERT INTO player VALUES
	('90022', 'Sergino Dest', 'Netherlands', '1999-5-11');
INSERT INTO plays VALUES
	('90022', '9002', '2020-9-16', 92660);

INSERT INTO player VALUES
	('90023', 'Gerard Pique', 'Spain', '1989-5-11');
INSERT INTO plays VALUES
	('90023', '9002', '2004-9-16', 392660);

INSERT INTO player VALUES
	('90024', 'Frenkie De Jong', 'Netherlands', '1997-5-11');
INSERT INTO plays VALUES
	('90024', '9002', '2019-3-11', 422660);

INSERT INTO player VALUES
	('90025', 'Philip Coutinho', 'Brazil', '1992-5-11');
INSERT INTO plays VALUES
	('90025', '9002', '2014-9-16', 392660);

INSERT INTO player VALUES
	('90026', 'Sergio Busquets', 'Spain', '1990-5-11');
INSERT INTO plays VALUES
	('90026', '9002', '2014-9-16', 262660);

INSERT INTO player VALUES
	('90027', 'Lionel Messi', 'Argentina', '1990-5-11');
INSERT INTO plays VALUES
	('90027', '9002', '2003-9-16', 912660);

INSERT INTO player VALUES
	('90028', 'Luis Suarez', 'Uruguay', '1989-5-11');
INSERT INTO plays VALUES
	('90028', '9002', '2015-9-16', 352660);

INSERT INTO player VALUES
	('90029', 'Ansu Fati', 'Spain', '2000-5-11');
INSERT INTO plays VALUES
	('90029', '9002', '2020-9-16', 12660);

-- atletico madrid
INSERT INTO player VALUES
	('90031', 'Jan Oblak', 'Slovenia', '1993-1-7');
INSERT INTO plays VALUES
	('90031', '9003', '2017-9-16', 301921);

INSERT INTO player VALUES
	('90032', 'Jose Maria Jimenez', 'Uruguay', '1995-1-20');
INSERT INTO plays VALUES
	('90032', '9003', '2015-9-16', 112660);

INSERT INTO player VALUES
	('90033', 'Kieren Trippier', 'England', '1990-9-19');
INSERT INTO plays VALUES
	('90033', '9003', '2019-1-19', 202660);

INSERT INTO player VALUES
	('90034', 'Koke', 'Spain', '1991-5-11');
INSERT INTO plays VALUES
	('90034', '9003', '2009-9-16', 212660);

INSERT INTO player VALUES
	('90035', 'Saul Niguez', 'Spain', '1993-5-11');
INSERT INTO plays VALUES
	('90035', '9003', '2016-9-16', 12660);

INSERT INTO player VALUES
	('90036', 'Thomas Lemar', 'France', '1995-11-12');
INSERT INTO plays VALUES
	('90036', '9003', '2018-7-1', 392660);

INSERT INTO player VALUES
	('90037', 'Joao Felix', 'Portugal', '1999-11-3');
INSERT INTO plays VALUES
	('90037', '9003', '2019-6-1', 322660);

-- sevilla
INSERT INTO player VALUES
	('90041', 'Bono', 'Canada', '1991-4-5');
INSERT INTO plays VALUES
	('90041', '9004', '2020-9-4', 32660);
INSERT INTO player VALUES
	('90042', 'Jules Kounde', 'France', '1992-11-12');
INSERT INTO plays VALUES
	('90042', '9004', '2019-7-3', 18960);
INSERT INTO player VALUES
	('90043', 'Jesus Navas', 'Spain', '1985-11-21');
INSERT INTO plays VALUES
	('90043', '9004', '2017-8-1', 102660);
INSERT INTO player VALUES
	('90044', 'Lucas Ocompos', 'Argentina', '1988-3-10');
INSERT INTO plays VALUES
	('90044', '9004', '2019-7-1', 122660);
INSERT INTO player VALUES
	('90045', 'Luuk De Jong', 'Netherlands', '1999-7-1');
INSERT INTO plays VALUES
	('90045', '9004', '2019-7-1', 122920);

-- Villareal
INSERT INTO player VALUES
	('90051', 'Sergio Asenjo', 'Spain', '2019-7-1');
INSERT INTO plays VALUES
	('90051', '9005', '2019-7-1', 12220);
INSERT INTO player VALUES
	('90052', 'Pau Torres', 'Spain', '1997-7-1');
INSERT INTO plays VALUES
	('90052', '9005', '2017-7-1', 72920);
INSERT INTO player VALUES
	('90053', 'Gerard Moreno', 'Spain', '1989-7-11');
INSERT INTO plays VALUES
	('90053', '9005', '2018-7-1', 100120);
INSERT INTO player VALUES
	('90054', 'Moi Gomez', 'Spain', '1995-7-1');
INSERT INTO plays VALUES
	('90054', '9005', '2016-7-1', 98920);


-- matches data
select * from team

-- 2019-08-16. Athletic Club,1–0,Barcelona,47693,San Mamés,Carlos del Cerro
INSERT INTO matches VALUES
	(1, 9011, 9002, '2019-08-16', 'San Mamés', 1, 0, 1);
INSERT INTO player VALUES
	('90111', 'Aritz Aduriz', 'Spain', '1989-8-11');
INSERT INTO plays VALUES
	('90111', '9011', '2018-7-1', 123920);
INSERT INTO scorer VALUES
	(1, '90111', 'true', 89);
--2019-08-17,17:00 (21:00),Celta Vigo,0.8,1–3,1.7,Real Madrid
INSERT INTO matches VALUES
	(2, 9017, 9001, '2019-08-17', 'Estadio de Balaídos', 1, 3, 2);
INSERT INTO player VALUES
	('90171', 'Losada', 'Spain', '1996-8-11');
INSERT INTO plays VALUES
	('90171', '9017', '2011-7-1', 10020);
INSERT INTO scorer VALUES
	(2, '90171', 'true', 91);	
INSERT INTO player VALUES
	('900110', 'Lucas Vasquez', 'Spain', '1997-8-11');
INSERT INTO plays VALUES
	('900110', '9001', '2012-7-1', 90020);
INSERT INTO scorer VALUES
	(2, '900110', 'false', 80);
INSERT INTO scorer VALUES
	(2, '90015', 'false', 61);
INSERT INTO scorer VALUES
	(2, '90019', 'false', 12);

-- Atlético Madrid vs. Getafe Match Report – Sunday August 18, 2019
INSERT INTO matches VALUES
	(3, 9003, 9008, '2019-08-18', 'Wanda Metropolitano Stadium', 1, 0, 1);
INSERT INTO player VALUES
	('900310', 'Alvaro Morata', 'Spain', '1995-8-11');
INSERT INTO plays VALUES
	('900310', '9003', '2019-7-1', 290020);
INSERT INTO scorer VALUES
	(3, '900310', 'true', 56);


-- Real Madrid vs. Valladolid Match Report – Saturday August 24, 2019
INSERT INTO matches VALUES
	(4, 9001, 9013, '2019-08-24', 'Santiago Bernabéu Stadium', 1, 1, 0);
INSERT INTO scorer VALUES
	(4, 90019, 'true', 82.12);
INSERT INTO player VALUES
	('90131', 'Sergi Guardiola', 'Spain', '1998-1-21');
INSERT INTO plays VALUES
	('90131', '9013', '2017-7-1', 20020);
INSERT INTO scorer VALUES
	(4, 90019, 'false', 88.12);
	
	
-- Leganés vs. Atlético Madrid Match Report – Sunday August 25, 2019
INSERT INTO matches VALUES
	(5, 9018, 9003, '2019-08-25', 'Estadio Municipal de Butarque', 0, 1, 2);
INSERT INTO player VALUES
	('900311', 'Vitolo', 'Spain', '1993-1-21');
INSERT INTO plays VALUES
	('900311', '9003', '2019-7-1', 160020);
INSERT INTO scorer VALUES
	(5, 900311, 'false', 71.86);
	
-- Osasuna vs. Barcelona Match Report – Saturday August 31, 2019
INSERT INTO matches VALUES
	(6, 9010, 9002, '2019-8-31', 'El Sadar Stadium', 2,2,0);
INSERT INTO player VALUES
	('90101', 'Roberto Torres', 'Spain', '1993-1-21');
INSERT INTO plays VALUES
	('90101', '9010', '2019-7-1', 100020);
INSERT INTO scorer VALUES
	(6, 90101, 'true', 7);
INSERT INTO scorer VALUES
	(6, 90101, 'true', 81);
INSERT INTO scorer VALUES
	(6, 90029, 'false', 51);
INSERT INTO player VALUES
	('900210', 'Arthur Melo', 'Brazil', '1995-1-21');
INSERT INTO plays VALUES
	('900210', '9002', '2019-7-1', 190020);
INSERT INTO scorer VALUES
	(6, 900210, 'false', 64);

-- Real Madrid vs. Levante Match Report – Saturday September 14, 2019
INSERT INTO matches VALUES
	(7, 9001, 9012, '2019-9-14', 'Santiago Bernabéu Stadium', 3, 2, 1);
INSERT INTO scorer VALUES
	(7, 90019, 'true', 25);
INSERT INTO scorer VALUES
	(7, 90019, 'true', 31);
INSERT INTO scorer VALUES
	(7, 90014, 'true', 40);
INSERT INTO player VALUES
	('90121', 'Gonzalo Melero', 'Argentina', '1995-1-21');
INSERT INTO plays VALUES
	('90121', '9012', '2019-7-1', 39020);
INSERT INTO scorer VALUES
	(7, 90121, 'false', 75);
INSERT INTO player VALUES
	('90122', 'Borja Mayoral', 'Spain', '1999-1-21');
INSERT INTO plays VALUES
	('90122', '9012', '2018-7-1', 59020);
INSERT INTO scorer VALUES
	(7, 90122, 'false', 49);


-- Alavés vs. Sevilla Match Report – Sunday September 15, 2019
INSERT INTO matches VALUES
	(8, 9016, 9004, '2019-9-15', 'Mendizorrotza Stadium', 0, 1, 2);
INSERT INTO player VALUES
	('90046', 'Joan Jordan', 'Spain', '1989-1-21');
INSERT INTO plays VALUES
	('90046', '9004', '2018-7-1', 89020);
INSERT INTO scorer VALUES
	(8, 90046, 'false', 79);
	
	
-- Sevilla vs. Real Madrid Match Report – Sunday September 22, 2019
INSERT INTO matches VALUES
	(9, 9004, 9001, '2019-9-22', 'Ramon Sanchez-Pizjuan Stadium', 0, 1, 2);
INSERT INTO scorer VALUES
	(9, 90019, 'false', 64.57);	
	
	
-- Atlético Madrid vs. Celta Vigo Match Report – Saturday September 21, 2019
INSERT INTO matches VALUES
	(10, 9002, 9017, '2019-9-21', 'Wanda Metropolitano Stadium', 0, 0, 0);
	
-- Barcelona vs. Villarreal Match Report – Tuesday September 24, 2019
INSERT INTO matches VALUES
	(11, 9002, 9005, '2019-9-21', 'Camp Nou', 2, 1, 1);
INSERT INTO scorer VALUES
	(11, 90027, 'true', 9);	
INSERT INTO scorer VALUES
	(11, 90027, 'true', 79.77);	
INSERT INTO scorer VALUES
	(11, 90053, 'false', 57);	


-- Getafe vs. Barcelona Match Report – Saturday September 28, 2019
INSERT INTO matches VALUES
	(12, 9008, 9002, '2019-9-28', 'Coliseum Alfonso Pérez', 0, 2, 2);
INSERT INTO scorer VALUES
	(12, 90028, 'false', 79.77);
INSERT INTO scorer VALUES
	(12, 90027, 'false', 9.15);
	
-- Atlético Madrid vs. Real Madrid Match Report – Saturday September 28, 2019
INSERT INTO matches VALUES
	(13, 9003, 9001, '2019-9-28', 'Wanda Metropolitano Stadium', 0, 0, 0);

-- Atlético Madrid vs. Valencia Match Report – Saturday October 19, 2019
INSERT INTO matches VALUES
	(14, 9003, 9009, '2019-9-28', 'Wanda Metropolitano Stadium', 1, 1, 0);
INSERT INTO player VALUES
	('900312', 'Diego Costa', 'Spain', '1987-1-21');
INSERT INTO plays VALUES
	('900312', '9003', '2012-7-1', 329020);
INSERT INTO scorer VALUES
	(14, 900312, 'true', 36);
INSERT INTO player VALUES
	('90091', 'Kevin Gameiro', 'France', '1989-1-21');
INSERT INTO plays VALUES
	('90091', '9009', '2015-7-1', 329020);
INSERT INTO scorer VALUES
	(14, 90091, 'false', 82);

-- Mallorca vs. Real Madrid Match Report – Saturday October 19, 2019
INSERT INTO matches VALUES
	(15, 9019, 9001, '2019-10-19', 'Son Moix', 1, 0, 1);
INSERT INTO player VALUES
	('90191', 'Lago Junior', 'Ivort Coast', '1988-8-11');
INSERT INTO plays VALUES
	('90191', '9019', '2015-7-1', 39020);
INSERT INTO scorer VALUES
	(15, 90191, 'true', 7);
	

-- Sevilla vs. Levante Match Report – Sunday October 20, 2019
INSERT INTO matches VALUES
	(16, 9004, 9012, '2019-10-20', 'Ramon Sanchez-Pizjuan Stadium', 1, 0, 1);
INSERT INTO scorer VALUES
	(16, 90045, 'true', 86);	

-- Real Madrid vs. Real Betis Match Report – Saturday November 2, 2019
INSERT INTO matches VALUES
	(17, 9001, 9015, '2019-11-2', 'Santiago Bernabéu Stadium', 0, 0, 0);
	
-- Villarreal vs. Athletic Club Match Report – Sunday November 3, 2019
INSERT INTO matches VALUES
	(18, 9005, 9011, '2019-11-3', 'Estadio de la Cerámica', 0, 0, 0);


-- Eibar vs. Real Madrid Match Report – Saturday November 9, 2019
INSERT INTO matches VALUES
	(19, 9014, 9001, '2019-11-9', 'Ipurua Municipal Stadium', 0, 4, 2);
INSERT INTO scorer VALUES
	(19, 90019, 'false', 17);
INSERT INTO scorer VALUES
	(19, 90019, 'false', 29);
INSERT INTO scorer VALUES
	(19, 90013, 'false', 20);
INSERT INTO player VALUES
	('900115', 'Vinicious Junior', 'Brazil', '2001-8-11');
INSERT INTO plays VALUES
	('900115', '9001', '2018-7-1', 139020);
INSERT INTO scorer VALUES
	(19, 900115, 'false', 72);
	
-- random	
INSERT INTO player VALUES
	('900195', 'Turno''s', 'Korea', '1991-8-11');

-- Valencia vs. Granada Match Report – Saturday November 9, 2019
INSERT INTO matches VALUES
	(20, 9009, 9007, '2019-11-9', 'Mestalla Stadium', 2, 0, 1);
INSERT INTO scorer VALUES
	(20, 90091, 'true', 36);
INSERT INTO player VALUES
	('90092', 'Daniel Wass', 'Denmark', '1992-1-21');
INSERT INTO plays VALUES
	('90092', '9009', '2019-7-1', 129020);
INSERT INTO scorer VALUES
	(20, 90092, 'true', 74);
	
	
-- Barcelona vs. Celta Vigo Match Report – Saturday November 9, 2019
INSERT INTO matches VALUES
	(21, 9002, 9017, '2019-11-9', 'Camp Nou', 4, 1, 1);
INSERT INTO scorer VALUES
	(21, 90027, 'true', 48);
INSERT INTO scorer VALUES
	(21, 90027, 'true', 46);
INSERT INTO scorer VALUES
	(21, 90028, 'true', 73);
INSERT INTO scorer VALUES
	(21, 90027, 'true', 23);
INSERT INTO player VALUES
	('90173', 'Lucas Olaza', 'Uruguay', '1992-1-21');
INSERT INTO plays VALUES
	('90173', '9009', '2019-7-1', 15020);
INSERT INTO scorer VALUES
	(21, 90173, 'false', 42);

-- Leganés vs. Barcelona Match Report – Saturday November 23, 2019
INSERT INTO matches VALUES
	(22, 9018, 9002, '2019-11-23', 'Estadio Municipal de Butarque', 1, 2, 2);
INSERT INTO player VALUES
	('90181', 'Youssef En-Nesyri', 'Morocco', '1991-12-20');
INSERT INTO plays VALUES
	('90181', '9018', '2019-7-1', 215020);
INSERT INTO scorer VALUES
	(22, 90181, 'true', 12);
INSERT INTO scorer VALUES
	(22, 90027, 'false', 46);
INSERT INTO scorer VALUES
	(22, 90028, 'false', 73);


-- Valladolid vs. Sevilla Match Report – Sunday November 24, 2019
INSERT INTO matches VALUES
	(23, 9013, 9004, '2019-11-24', 'José Zorrilla Stadium', 0, 1, 2);
INSERT INTO player VALUES
	('900419', 'Ever Banega', 'Argentina', '1991-12-20');
INSERT INTO plays VALUES
	('900419', '9004', '2019-12-12', 118020);
INSERT INTO scorer VALUES
	(23, 900419, 'false', 13);
	
	
-- Real Madrid vs. Real Sociedad Match Report – Saturday November 23, 2019
INSERT INTO matches VALUES
	(24, 9001, 9006, '2019-11-23', 'Santiago Bernabéu Stadium', 3, 1, 1);
INSERT INTO scorer VALUES
	(24, 90016, 'true', 74);
INSERT INTO scorer VALUES
	(24, 90019, 'true', 37);
INSERT INTO scorer VALUES
	(24, 90018, 'true', 47);
INSERT INTO player VALUES
	('90061', 'Willian Jose', 'Brazil', '1997-5-13');
INSERT INTO plays VALUES
	('90061', '9006', '2016-12-12', 188020);
INSERT INTO scorer VALUES
	(24, 90061, 'false', 2);


-- Granada vs. Atlético Madrid Match Report – Saturday November 23, 2019
INSERT INTO matches VALUES
	(25, 9007, 9003, '2019-11-23', 'Nuevo Estadio de Los Cármenes', 1, 1, 0);
INSERT INTO player VALUES
	('90072', 'German Sanchez', 'Spain', '1993-2-23');
INSERT INTO plays VALUES
	('90072', '9007', '2019-5-19', 188020);
INSERT INTO scorer VALUES
	(25, 90072, 'true', 67);
INSERT INTO scorer VALUES
	(25, 900312, 'false', 60);

-- Athletic Club vs. Atlético Madrid Match Report – Sunday June 14, 2020
INSERT INTO matches VALUES
	(26, 9011, 9003, '2020-6-14', 'San Mamés', 1, 1, 0);
INSERT INTO scorer VALUES
	(26, 900312, 'false', 39);
INSERT INTO player VALUES
	('90112', 'Iker Muniain', 'Spain', '1995-2-23');
INSERT INTO plays VALUES
	('90112', '9011', '2008-5-19', 111119.28);
INSERT INTO scorer VALUES
	(26, 90112, 'true', 37);	


-- Real Madrid vs. Atlético Madrid Match Report – Saturday February 1, 2020
INSERT INTO matches VALUES
	(27, 9001, 9003, '2020-2-1', 'Santiago Bernabéu Stadium', 1, 0, 1);
INSERT INTO scorer VALUES
	(27, 90019, 'true', 56);
	
-- Barcelona vs. Atlético Madrid Match Report – Tuesday June 30, 2020
INSERT INTO matches VALUES
	(28, 9002, 9003, '2020-6-30', 'Camp Nou', 2, 2, 0);
INSERT INTO scorer VALUES
	(28, 90027, 'true', 50);
INSERT INTO scorer VALUES
	(28, 900312, 'true', 11);
INSERT INTO scorer VALUES
	(28, 90035, 'false', 19);
INSERT INTO scorer VALUES
	(28, 90035, 'false', 62);

-- Barcelona vs. Athletic Club Match Report – Tuesday June 23, 2020
INSERT INTO matches VALUES
	(29, 9002, 9011, '2020-6-23', 'Camp Nou', 2, 1, 1);
INSERT INTO scorer VALUES
	(29, 90027, 'true', 86);
INSERT INTO scorer VALUES
	(29, 90027, 'true', 82);
INSERT INTO scorer VALUES
	(29, 90111, 'false', 17.7);
	


-- Real Madrid vs. Barcelona Match Report – Sunday March 1, 2020
INSERT INTO matches VALUES
	(30, 9001, 9002, '2020-3-1', 'Santiago Bernabéu Stadium', 2, 0, 1);
INSERT INTO scorer VALUES
	(30, 900115, 'true', 71);
INSERT INTO scorer VALUES
	(30, 90013, 'true', 92.87);

-- Barcelona vs. Real Madrid Match Report – Wednesday December 18, 2019
INSERT INTO matches VALUES
	(31, 9002, 9001, '2019-12-18', 'Camp Nou',1, 1, 0);
INSERT INTO scorer VALUES
	(31, 90015, 'false', 68.1);
INSERT INTO scorer VALUES
	(31, 90027, 'true', 45.28);	
	
-- Valencia vs. Real Madrid Match Report – Sunday December 15, 2019
INSERT INTO matches VALUES
	(32, 9009, 9001, '2019-12-15', 'Mestalla Stadium', 1, 1, 0);
INSERT INTO scorer VALUES
	(32, 90017, 'false', 78.41);
INSERT INTO scorer VALUES
	(32, 90091, 'true', 10.33);

-- Atlético Madrid vs. Real Betis Match Report – Saturday July 11, 2020
INSERT INTO matches VALUES
	(33, 9003, 9015, '2020-7-11', 'Wanda Metropolitano Stadium', 1, 0, 1);
INSERT INTO scorer VALUES
	(33, 900312, 'true', 35.78);

-- Levante vs. Atlético Madrid Match Report – Tuesday June 23, 2020
INSERT INTO matches VALUES
	(34, 9012, 9003, '2020-6-23', 'Estadi Ciutat de València', 0, 1, 2);
INSERT INTO scorer VALUES
	(34, 900312, 'false', 91.21);


-- AC Milan vs Inter Milan 2-3
INSERT INTO matches VALUES
	(35, 4001, 4002, '2020-1-12', 'San Siro', 2, 3, 2);
INSERT INTO player VALUES
	('40011', 'Zlatan Ibrahimovic', 'Sweden', '1983-9-13');
INSERT INTO plays VALUES
	('40011', '4001', '2019-5-19', 411119.18);
INSERT INTO player VALUES
	('40012', 'Theo Hernandez', 'France', '1998-10-5');
INSERT INTO plays VALUES
	('40012', '4001', '2018-11-12', 152419.76);
INSERT INTO scorer VALUES
	(35, 40011, 'true', 12.21);
INSERT INTO scorer VALUES
	(35, 40011, 'true', 87.02);
INSERT INTO player VALUES
	('40021', 'Lukaku', 'Belgium', '1994-12-11');
INSERT INTO plays VALUES
	('40021', '4002', '2018-12-17', 396119.18);
INSERT INTO player VALUES
	('40022', 'Lautaro Martinez', 'Argentina', '1997-8-2');
INSERT INTO plays VALUES
	('40022', '4002', '2019-2-12', 346119.18);
INSERT INTO scorer VALUES
	(35, 40021, 'false', 15.11);
INSERT INTO scorer VALUES
	(35, 40021, 'false', 93.02);
INSERT INTO scorer VALUES
	(35, 40022, 'false', 52);

INSERT INTO player VALUES
	('30021', 'Marco Reus', 'Germany', '1994-12-27');
INSERT INTO plays VALUES
	('30021', '3002', '2011-12-17', 391810.88);
INSERT INTO player VALUES
	('30011', 'Thomas Muller', 'Germany', '1990-6-16');
INSERT INTO plays VALUES
	('30011', '3001', '2007-1-1', 401010.55);
INSERT INTO player VALUES
	('30022', 'Erling Haaland', 'Norway', '2000-2-6');
INSERT INTO plays VALUES
	('30022', '3002', '2019-12-17', 191810.88);
INSERT INTO player VALUES
	('30012', 'Robert Lewandowski', 'Poland', '1988-12-12');
INSERT INTO plays VALUES
	('30012', '3001', '2014-1-1', 479910.55);
INSERT INTO player VALUES
	('30013', 'Josua Kimmich', 'Germany', '1998-12-1');
INSERT INTO plays VALUES
	('30013', '3001', '2017-1-1', 200910.55);
	
-- Bayern vs Dortmund 1-1
INSERT INTO matches VALUES
	(36, 3001, 3002, '2019-12-9', 'Allianz Arena', 1, 1, 0);
INSERT INTO scorer VALUES
	(36, 30021, 'false', 13);
INSERT INTO scorer VALUES
	(36, 30011, 'true', 93.54);

-- Dortmund vs Bayern 2-4
INSERT INTO matches VALUES
	(37, 3002, 3001, '2020-6-9', 'Signal Iduna Park', 2, 4, 2);

INSERT INTO scorer VALUES
	(37, 30022, 'true', 12);
INSERT INTO scorer VALUES
	(37, 30022, 'true', 81);

INSERT INTO scorer VALUES
	(37, 30012, 'false', 93.58);
INSERT INTO scorer VALUES
	(37, 30012, 'false', 24);

INSERT INTO scorer VALUES
	(37, 30013, 'false', 44.34);
INSERT INTO scorer VALUES
	(37, 30011, 'false', 76.42);

-- liverpool vs man utd 2-2
INSERT INTO player VALUES
	('10021', 'Sadio Mane', 'Senegal', '1992-4-4');
INSERT INTO plays VALUES
	('10021', '1002', '2016-12-19', 400910.55);
INSERT INTO player VALUES
	('10022', 'Mohammad Salah', 'Egypt', '1992-6-15');
INSERT INTO plays VALUES
	('10022', '1002', '2017-12-19', 499910.55);	
INSERT INTO player VALUES
	('10011', 'Marcus Rashford', 'England', '1999-1-2');
INSERT INTO plays VALUES
	('10011', '1001', '2016-1-19', 290910.55);
INSERT INTO player VALUES
	('10012', 'Bruno Fernandes', 'Portugal', '1994-12-15');
INSERT INTO plays VALUES
	('10012', '1001', '2019-12-19', 499910.55);
INSERT INTO matches VALUES
	(38, 1002, 1001, '2020-6-9', 'Anfield', 2, 2, 0);	
INSERT INTO scorer VALUES
	(38, 10011, 'false', 6);
INSERT INTO scorer VALUES
	(38, 10012, 'false', 76.42);
INSERT INTO scorer VALUES
	(38, 10021, 'true', 90.16);
INSERT INTO scorer VALUES
	(38, 10022, 'true', 18.18);


-- man utd vs liverpool 2-1
INSERT INTO matches VALUES
	(39, 1001, 1002, '2019-12-9', 'Old Trafford', 2, 1, 1);
INSERT INTO scorer VALUES
	(39, 10012, 'true', 90.16);	
INSERT INTO scorer VALUES
	(39, 10011, 'true', 18.10);
INSERT INTO scorer VALUES
	(39, 10022, 'false', 86.11);	
	
-- psg vs bayern
INSERT INTO matches VALUES
	(40, 2001, 3001, '2019-12-9', 'Le Parc des Princes', 3, 1, 1);
INSERT INTO player VALUES
	('20011', 'Kylian Mbappe', 'France', '1999-12-15');
INSERT INTO plays VALUES
	('20011', '2001', '2017-12-19', 499910.55);
INSERT INTO player VALUES
	('20012', 'Neymar', 'Brazil', '1995-12-15');
INSERT INTO plays VALUES
	('20012', '2001', '2016-12-19', 899919.55);
INSERT INTO scorer VALUES
	(40, 20011, 'true', 6.11);
INSERT INTO scorer VALUES
	(40, 20011, 'true', 8.11);
INSERT INTO scorer VALUES
	(40, 20012, 'true', 89);
INSERT INTO scorer VALUES
	(40, 30012, 'false', 49);

INSERT INTO player VALUES
	('1111', 'Zinedine Zidane', 'France', '1972-6-23');
INSERT INTO player VALUES
	('2222', 'Prothito Shovon Majumder Turno', 'Bangladesh', '1999-8-8');
INSERT INTO player VALUES
	('3333', 'Jawad Habib', 'Bangladesh', '1999-2-24');
INSERT INTO player VALUES
	('99919', 'Jahir Sadik Monon', 'Bangladesh', '1999-1-22');
INSERT INTO plays VALUES
	('99919', '9001', '2021-4-9', 100);
INSERT INTO player VALUES
	('4444', 'Ronaldinho', 'Brazil', '1980-3-21');
INSERT INTO player VALUES
	('5555', 'Johan Cruyff', 'Netherlands', '1947-4-25');
INSERT INTO player VALUES
	('6666', 'Pele', 'Brazil', '1940-10-23');
INSERT INTO player VALUES
	('7777', 'Maradona', 'Argentina', '1960-10-30');
INSERT INTO player VALUES
	('8888', 'Alfredo Di Stefano', 'Argentina', '1926-7-4');
INSERT INTO player VALUES
	('9999', 'Paolo Maldini', 'Italy', '1986-6-26');

-- see info
select name, full_name, time_of_goal from ((scorer join plays on player_id = id) natural join player) join team on team_id = team.id

select id from player 
select * from scorer
select * from team
select * from matches
select id from player where name ilike '%lewa%'
select * from plays where team_id = 9009

select * from player join (select player_id, count(player_id) as goals from scorer group by player_id) as k on player_id = id order by goals desc

select count(match_id) from matches where (home_team_id = 9003 and winner = 1) or (away_team_id = 9003 and winner = 2)




