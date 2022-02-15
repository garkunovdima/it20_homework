1. Необходимо отобразить названия жанров (name) из таблицы
genres, у которых нет ни одной книги из таблицы books. Связь
books.genre_id = genres.id.

SELECT 1books.name, 1genre.name, 1genre.id FROM 1genre
LEFT JOIN 1books ON 1books.genre_id = 1genre.id
WHERE 1books.name IS null
ORDER BY 1genre.id DESC

ИЛИ

SELECT COUNT(1books.id) AS 'quantity', 1genre.name FROM 1genre
LEFT JOIN 1books ON 1books.genre_id = 1genre.id
GROUP BY 1genre.id
HAVING quantity = 0



2. Выбрать фамилию surname пользователя и имя name из таблицы
users и соответствующее название региона (поле name) из
таблицы areas. Связь: users.area_id = areas.id, отсортировать
по названию региона. Выбрать всего 4 записи.

SELECT users.surname, users.firstname, areas.name
FROM `users`
LEFT JOIN areas
ON users.area_id = areas.id
ORDER BY areas.name DESC
LIMIT 4



3. Необходимо посчитать сколько новостей в каждой категории.
Связь news.category_id = categories.id.

SELECT 3category.name, COUNT(3news.id) FROM `3category`
LEFT JOIN 3news 
ON 3news.category_id = 3category.id
GROUP BY 3category.name



4. Выбрать название города (name) из таблицы cities и
соответствующее название региона (name) из таблицы areas.
Связь: cities.area_id = areas.id.

SELECT 4cities.name,4areas.name FROM `4cities`
LEFT JOIN 4areas ON 4cities.area_id = 4areas.id



5. Выбрать название школы (name) из таблицы schools и
соответствующее название региона (name) из таблицы districts.
Связь: schools.district_id = districts.id.

SELECT 5school.name, 5district.name FROM `5school`
LEFT JOIN 5district
ON 5school.district_id = 5district.id