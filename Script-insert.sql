--Названия жанров
INSERT INTO Genre (genre) VALUES
    ('Блюз'),
    ('Джаз'),
    ('Кантри'),
    ('Поп'),
    ('Рок');
    
--Имена исполнителей
   INSERT INTO Singer (singer) VALUES
    ('Винтер, Джонни'),
    ('Гай, Бадди'),
    ('Армстронг, Луи'),
    ('Брубек, Дейв'),
    ('Вудинг, Сэм'),
    ('Александер, Артур'),
    ('Баффетт, Джимми'),
    ('Берри, Чак'),
    ('Rammstein'),
    ('Брэкстон, Тони');

--Названия альбомов
INSERT INTO Album (album_name, release_year) VALUES
    ('Men Without Women', '2008'),
    ('The Progressive Blues Experiment', '2019'),
    ('Time Out', '2020'),
    ('Guns of the Timberland', '1982'),
    ('Ultimate Toni Braxton', '2003'),
    ('Give U My Heart', '2010');

--Названия треков
INSERT INTO Track (album_id, track_name, track_duration) VALUES
    ('1', 'Until the Good Is Gone', '241'),
    ('1', 'Inside of Me', '303'),
    ('2', 'Lyin in a Bed of Fire', '263'),
    ('3', 'Love Shoulda Brought You Home', '291'),
    ('4', 'Another Sad Love Song', '230'),
    ('5', 'Give U My Heart', '242'),
    ('6', 'Take Five', '324'),
    ('4', 'Strange Meadow Lark', '442'),
    ('5', 'Blue Rondo à la Turk', '404'),
    ('3', 'I Wants to Stay Here', '278');

--Названия сборников
INSERT INTO Collections (collection_title, collection_year) VALUES
    ('Greatest Hits 2018', '2018'),
    ('Greatest Hits 2019', '2019'),
    ('Greatest Hits 2020', '2020'),
    ('Greatest Hits 2015', '2015'),
    ('Greatest Hits 2017', '2017'),
    ('Greatest Hits 2013', '2013');

--Жанры и исполнители
INSERT INTO GenreSinger (genre_id, singer_id) VALUES
    ('1', '9'),
    ('2', '8'),
    ('3', '7'),
    ('4', '6'),
    ('5', '5'),
	('5', '4'),
    ('4', '9'),
    ('3', '7'),
    ('2', '5'),
    ('1', '3');

--Альбомы и исполнители
INSERT INTO AlbumSinger (album_id, singer_id) VALUES
    ('1', '9'),
    ('2', '7'),
    ('3', '5'),
    ('4', '3'),
    ('5', '1'),
    ('6', '2'),
    ('5', '3'),
    ('4', '5'),
    ('3', '7'),
    ('2', '4');

--Сборники и треки
INSERT INTO CollectionTrack (collection_id, track_id) VALUES
    ('1', '10'),
    ('2', '9'),
    ('3', '8'),
    ('4', '7'),
    ('5', '6'),
    ('6', '5'),
    ('5', '6'),
    ('4', '7'),
    ('3', '8'),
    ('2', '9'),
    ('1', '1');