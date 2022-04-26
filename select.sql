## название и год выхода альбомов, вышедших в 2018 году
SELECT name, year_of_releas FROM Album
WHERE year_of_releas=2018; 

## название и продолжительность самого длительного трека
SELECT name FROM Track
ORDER BY time DESC
LIMIT 1;
## второй вариант запроса самого длинного трека
SELECT name,  max(time) AS "max time" FROM Track
GROUP BY name
LIMIT 1;


## название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM Track
WHERE time < 3-50;


## названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name_collection FROM Collection_of_songs
WHERE year_of_releas BETWEEN 2018 and 2020;



## исполнители, чье имя состоит из 1 слова
SELECT nickname FROM Musician
WHERE nickname NOT LIKE '%% %%';

## название треков, которые содержат слово "мой"/"my"
SELECT name FROM Track
WHERE name LIKE '%%Мой%%' OR name LIKE '%%My%%';


