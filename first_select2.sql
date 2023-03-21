SELECT ж.название_жанра, COUNT(id_исполнителя) FROM Жанры_исполнителей жи
LEFT JOIN Жанр ж ON жи.id_жанра = ж.id
GROUP BY ж.название_жанра;

SELECT COUNT(т.id) FROM Треки т
LEFT JOIN Альбом а ON т.id_альбома = а.id
WHERE а.дата_выхода BETWEEN 2019 AND 2020;

SELECT а.название, AVG(т.длина_трека) FROM Треки т
LEFT JOIN Альбом а ON т.id_альбома = а.id
GROUP BY а.id;

SELECT имя FROM Исполнители и2
EXCEPT
SELECT и.имя FROM Альбомы_исполнителей аи
JOIN Альбом а ON а.id = аи.id_альбома
JOIN Исполнители и ON и.id = аи.id_исполнителя
WHERE а.дата_выхода = 2020;

SELECT DISTINCT с.название_сборника FROM Сборники с
JOIN Сборники_треков ст ON ст.id_сборника = с.id
JOIN Треки т ON т.id = ст.id_трека
JOIN Альбом а ON а.id = т.id_альбома
JOIN Альбомы_исполнителей аи ON аи.id_альбома = а.id
JOIN Исполнители и ON и.id = аи.id_исполнителя
WHERE и.имя = 'Queen';

SELECT DISTINCT а.название, аи.id_исполнителя FROM Альбом а
JOIN Альбомы_исполнителей аи ON аи.id_альбома = а.id
JOIN Исполнители и ON и.id = аи.id_исполнителя
JOIN Жанры_исполнителей жи ON жи.id_исполнителя = и.id
GROUP BY а.название, аи.id_исполнителя
HAVING COUNT(жи.id_жанра) > 1;

SELECT т.название_трека FROM Треки т
LEFT JOIN Сборники_треков ст ON ст.id_трека = т.id
WHERE ст.id_сборника IS NULL;

SELECT имя, длина_трека FROM Треки т
JOIN Альбом а ON т.id_альбома = а.id
JOIN Альбомы_исполнителей аи ON аи.id_альбома = а.id
JOIN Исполнители и ON аи.id_исполнителя = и.id
WHERE длина_трека = (SELECT MIN(длина_трека) FROM Треки);

SELECT название н FROM Альбом а
JOIN Треки т ON т.id_альбома = а.id
GROUP BY а.название, а.id
HAVING COUNT(т.id) = (SELECT COUNT(т.id) FROM Треки
	JOIN Треки т ON т.id_альбома = а.id
	GROUP BY а.название
	ORDER BY COUNT(т.id)
	LIMIT 1);