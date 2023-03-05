CREATE TABLE IF NOT EXISTS Жанр (
	id SERIAL PRIMARY KEY,
	название_жанра VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Исполнители (
	id SERIAL PRIMARY KEY,
	имя VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Альбом (
	id SERIAL PRIMARY KEY,
	название VARCHAR(120),
	дата_выхода INTEGER
);

CREATE TABLE IF NOT EXISTS Сборники (
	id SERIAL PRIMARY KEY,
	название_сборника VARCHAR(120),
	год_выпуска INTEGER
);

CREATE TABLE IF NOT EXISTS Треки (
	id SERIAL PRIMARY KEY,
	название_трека VARCHAR(60),
	длина_трека INTEGER,
	ID_альбома INTEGER REFERENCES Альбом(id)
);

CREATE TABLE IF NOT EXISTS Жанры_исполнителей (
	ID_жанра INTEGER REFERENCES Жанр(id),
	ID_исполнителя INTEGER REFERENCES Исполнители(id),
	CONSTRAINT pk_Жанры_исполнителей PRIMARY KEY (ID_жанра, ID_исполнителя)
);

CREATE TABLE IF NOT EXISTS Альбомы_исполнителей (
	ID_альбома INTEGER REFERENCES Альбом(id),
	ID_исполнителя INTEGER REFERENCES Исполнители(id),
	CONSTRAINT pk_Альбомы_исполнителей PRIMARY KEY (ID_альбома, ID_исполнителя)
);

CREATE TABLE IF NOT EXISTS Сборники_треков (
	ID_трека INTEGER REFERENCES Треки(id),
	ID_сборника INTEGER REFERENCES Сборники(id),
	CONSTRAINT pk_Сборники_треков PRIMARY KEY (ID_трека, ID_сборника)
);
