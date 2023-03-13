INSERT INTO Жанр(название_жанра)
VALUES('Rock'),
	('Pop'),
	('Classic'),
	('Jazz'),
	('Rap');
	
INSERT INTO Исполнители(имя)
VALUES('Louis Armstrong'),
	('Michael Jackson'),
	('Richard Wagner'),
	('Queen'),
	('Coolio'),
	('Franz Schubert'),
	('Pink Floyd'),
	('Frank Sinatra');
	
INSERT INTO Жанры_исполнителей(id_жанра, id_исполнителя)
VALUES(1, 4),
	(1, 7),
	(2, 2),
	(3, 3),
	(3, 6),
	(4, 1),
	(4, 8),
	(5, 5);
	
INSERT INTO Альбом(название, дата_выхода)
VALUES('Marie', 1940),
	('Thriller', 1982),
	('Volks-Hymne', 1837),
	('The Miracle', 1989),
	('Gangstas Paradise', 1995),
	('Alte Gesamt-Ausgabe', 1978),
	('Atom Heart Mother', 1970),
	('Close to You', 1957);

INSERT INTO Альбом(название, дата_выхода)
VALUES('London 1966-1967', 2018);


	
INSERT INTO Альбомы_исполнителей(id_исполнителя, id_альбома)
VALUES(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);
	
INSERT INTO Треки(id_альбома, название_трека, длина_трека)
VALUES(1, 'Angel', 224),
	(1, 'Azalea', 303),
	(2, 'Thriller', 357),
	(2, 'Beat it', 258),
	(3, 'Nicolay', 306),
	(3, 'An Webers Grabe', 304),
	(4, 'The Miracle', 294),
	(4, 'Scandal', 282),
	(5, 'Gangstas Paradise', 241),
	(5, 'For My Sistas', 267),
	(6, 'Ave Maria', 314),
	(6, 'Rondo Brillante', 341),
	(7, 'Fat Old Sun', 323),
	(7, 'If', 270),
	(8, 'Close to You', 217),
	(8, 'Love Locket Out', 162);
	
INSERT INTO Сборники(название_сборника, год_выпуска)
VALUES('Сборник классики', 2012),
	('Сборник1', 2010),
	('Сборник80-90', 2000),
	('Сборник Rap', 1996),
	('Сборник Rock', 1998),
	('Сборник Jazz', 2001),
	('Сборник Pop', 1991),
	('Сборник Лучшее', 2012);

UPDATE Сборники
SET год_выпуска = 2019
WHERE id = 8;

	
INSERT INTO Сборники_треков(id_сборника, id_трека)
VALUES(1, 5),
	(1, 11),
	(2, 1),
	(2, 12),
	(3, 9),
	(3, 13),
	(4, 10),
	(4, 9),
	(5, 7),
	(5, 14),
	(6, 2),
	(6, 16),
	(7, 3),
	(7, 4),
	(8, 6),
	(8, 8),
	(8, 15);