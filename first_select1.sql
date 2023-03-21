SELECT название, дата_выхода FROM Альбом
WHERE дата_выхода = 2018;

SELECT название_трека, длина_трека FROM Треки
WHERE длина_трека = (SELECT MAX(длина_трека) FROM Треки);

SELECT название_трека FROM Треки
WHERE длина_трека >= 210;

SELECT название_сборника FROM Сборники
WHERE год_выпуска BETWEEN 2018 AND 2020;

SELECT имя FROM Исполнители
WHERE имя NOT LIKE '% %';

SELECT название_трека FROM Треки
WHERE LOWER(название_трека) LIKE '%my%' OR LOWER(название_трека) LIKE '%мой%';