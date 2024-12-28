--Название и продолжительность самого длительного трека
SELECT track_title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT compilation_title
FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова
SELECT artist_name
FROM artist
WHERE artist_name NOT LIKE '% %';

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_title 
FROM track
WHERE duration >= ('00:03:30');

--Название треков, которые содержат слово «my»
SELECT track_title
FROM track
WHERE track_title ILIKE 'my %'
OR track_title ILIKE '% my'
OR track_title ILIKE '% my %'
OR track_title ILIKE 'my';

--Название треков, которые содержат слово «мой»
SELECT track_title
FROM track
WHERE track_title ILIKE 'мой %'
OR track_title ILIKE '% мой'
OR track_title ILIKE '% мой %'
OR track_title ILIKE 'мой';

--Количество исполнителей в каждом жанре
SELECT genre.genre_name, COUNT(DISTINCT artist.artist_id) AS artists_count
FROM genre
JOIN artist_genre ON genre.genre_id = artist_genre.genre_id
JOIN artist ON artist_genre.artist_id = artist.artist_id
GROUP BY genre.genre_name
ORDER BY artists_count DESC;

--Средняя продолжительность треков по каждому альбому
SELECT album.album_title, AVG(track.duration) AS average_duration
FROM track
JOIN album ON track.album_id = album.album_id
GROUP BY album.album_title;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT artist.artist_name 
FROM artist
WHERE artist.artist_name NOT IN (
    SELECT artist_name 
    FROM artist
    JOIN  album_artist
    ON album_artist.artist_id = artist.artist_id
    JOIN album
    ON album.album_id = album_artist.artist_id
    WHERE album_artist.artist_id = 2020 
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT DISTINCT compilation.compilation_title 
FROM compilation
JOIN track_compilation
ON compilation.compilation_id = track_compilation.compilation_id 
JOIN track
ON track_compilation.track_id = track.track_id  
JOIN album
ON track.album_id = album.album_id 
JOIN album_artist
ON album.album_id = album_artist.album_id 
JOIN artist
ON artist.artist_id = album_artist.artist_id
WHERE artist.artist_name LIKE 'Michael Jackson';
