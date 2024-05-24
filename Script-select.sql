--Название и продолжительность самого длительного трека.
SELECT track_name, track_duration  FROM Track
WHERE track_duration = (SELECT MAX(track_duration) FROM Track);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name  FROM Track
WHERE track_duration > 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_title, collection_year FROM Collections
WHERE collection_year BETWEEN '2018' AND '2020';

--Исполнители, чьё имя состоит из одного слова.
SELECT singer FROM Singer
WHERE singer NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT track_name FROM Track
WHERE track_name LIKE '%My%';

--Количество исполнителей в каждом жанре
select genre, count(s.singer) from Genre g
left join GenreSinger gs on g.id = gs.genre_id 
left join Singer s on gs.singer_id = s.id 
group by genre 
order by count(s.singer) desc;

--Количество треков, вошедших в альбомы 2019-2020 годов
select count(track_name) from Track t
left join Album a on t.album_id = a.id
where release_year > '2019' and release_year < '2021';

--Средняя продолжительность треков по каждому альбому 
select a.album_name, avg(track_duration) from Track t 
left join Album a on t.album_id = a.id
group by album_name 
order by avg(track_duration);

--Все исполнители которые не выпустили альбомы в 2020 году
select singer from Singer s 
left join GenreSinger gs on s.id = gs.singer_id
left join Album a on gs.singer_id = a.id
where singer not in (select singer from GenreSinger where release_year >= '2020' and release_year < '2021');

--Названия сборников, в которых присутствует конкретный исполнитель
select collection_title from Collections c 
left join CollectionTrack ct on ct.collection_id = c.id 
left join Track t2 on ct.track_id = t2.id 
left join Album a on t2.album_id = a.id 
left join AlbumSinger a2 on a.id = a2.album_id 
left join Singer a3 on a2.singer_id = a3.id 
where singer like 'Ram%';
