INSERT INTO artist (artist_name) VALUES
('Radio Tapok'),
('Michael Jackson'),
('AC/DC'),
('Beyonce'),
('Metallica');

INSERT INTO genre (genre_name) VALUES
('Рок'),
('Поп'),
('R&B'),
('Heavy Metal'),
('Thrash Metal');

INSERT INTO album (album_title, release_year) VALUES
('Наследие', 2020),
('Эпоха Империй', 2023),
('Immortal', 2011),
('POWER UP', 2020),
('Homecoming:The Live Album', 2019),
('Ride the Lightning', 1984),
('Master of Puppets', 1986),
('...And Justice for All', 1988),
('Metallica (The Black Album)', 1991);

INSERT INTO track (track_title, duration, album_id) VALUES
('Цусима', '00:04:48', 1),  -- Radio Tapok, Наследие
('Высота 776', '00:03:03', 1),
('Петропавловск', '00:04:00', 1),
('Гвардия Петра', '00:03:45', 1),
('The Immortal Intro', '00:03:07', 2),     -- Michael Jackson, Immortal
('Thriller', '00:03:32', 2),
('Systems Down', '00:03:12', 3),         -- AC/DC, POWER UP
('Realize', '00:03:13', 3),
('Say My Name', '00:01:52', 4),       -- Beyonce, Homecoming:The Live Album
('Diva', '00:02:46', 4),
('Fight Fire with Fire', '00:04:45', 5), -- Metallica, Ride the Lightning
('For Whom the Bell Tolls', '00:05:10', 5),
('Fade to Black', '00:06:57', 5),
('Battery', '00:05:12', 6),
('Welcome Home (Sanitarium)', '00:06:27', 6),
('Orion', '00:08:27', 6),
('One', '00:07:25', 7),
('Eye of the Beholder', '00:06:25', 7),
('Enter Sandman', '00:05:31', 8),
('Sad but True', '00:05:24', 8),
('Nothing Else Matters', '00:06:28', 8);

INSERT INTO compilation (compilation_title, release_year) VALUES
('Сборник рок-хитов 2020', 2020),
('Лучшие поп-треки 2019', 2019),
('R&B Вечеринка 2021', 2021),
('Хиты всех времен 2022', 2022),
('Metal Classics', 2018),
('Thrash Metal Masters', 2019),
('Heavy Metal Anthems', 2020);

INSERT INTO track_compilation (track_id, compilation_id) VALUES
(1, 1),        -- Цусима, Сборник рок-хитов 2020
(2, 1),        -- Высота 776, Сборник рок-хитов 2020
(3, 2),        -- The Immortal Intro, Лучшие поп-треки 2019
(4, 2),        -- Thriller, Лучшие поп-треки 2019
(5, 3),        -- Systems Down, R&B Вечеринка 2021
(6, 3),        -- Realize, R&B Вечеринка 2021
(7, 4),        -- Say My Name, Хиты всех времен 2022
(8, 4),        -- Diva, Хиты всех времен 2022
(1, 4),        -- Цусима, Хиты всех времен 2022
(3, 4),        -- The Immortal Intro, Хиты всех времен 2022
(5, 4);        -- Systems Down, Хиты всех времен 2022

INSERT INTO album_artist (album_id, artist_id)
VALUES
    (1, 1),  -- Альбом с id=1 и исполнитель с id=2
    (2, 1),  -- Альбом с id=1 и исполнитель с id=3
    (3, 2),  -- Альбом с id=2 и исполнитель с id=3
    (4, 3),  -- Альбом с id=3 и исполнитель с id=1
    (5, 4),  -- Альбом с id=1 и исполнитель с id=2
    (6, 5),  -- Альбом с id=1 и исполнитель с id=3
    (7, 5),  -- Альбом с id=2 и исполнитель с id=3
    (8, 5),  -- Альбом с id=3 и исполнитель с id=1
    (9, 5);  -- Альбом с id=3 и исполнитель с id=1