-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 13:22
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `author` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `author_link` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `header` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `text` text COLLATE utf8mb4_general_ci NOT NULL,
  `publication_date` timestamp NOT NULL,
  `edit_date` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author`, `author_link`, `header`, `text`, `publication_date`, `edit_date`) VALUES
(1, 'me 1', 'author_link1', 'header1', 'text1', '2011-11-10 22:00:00', '2011-11-10 22:00:00'),
(2, 'me 2', 'author_link2', 'header2', 'text2', '2011-11-11 22:00:00', '2011-11-11 22:00:00'),
(3, 'me 3', 'author_link3', 'header3', 'text3', '2011-11-12 22:00:00', '2011-11-12 22:00:00'),
(4, 'me 4', 'author_link4', 'header4', 'text4', '2011-11-13 22:00:00', '2011-11-13 22:00:00'),
(5, 'me 5', 'author_link5', 'header5', 'text5', '2011-11-14 22:00:00', '2011-11-14 22:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `post_user`
--

CREATE TABLE `post_user` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`) VALUES
(1, 11, 21),
(2, 12, 22),
(3, 13, 23),
(4, 14, 24),
(5, 15, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `uid` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `reg_date` timestamp NOT NULL,
  `about` tinytext COLLATE utf8mb4_general_ci NOT NULL,
  `img_link` varchar(64) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `uid`, `name`, `email`, `password`, `reg_date`, `about`, `img_link`) VALUES
(9, 'my uid1', 'my User Name1', 'my email1', 'my password1', '2011-11-10 22:00:00', 'my about1', 'link to img1'),
(10, 'my uid2', 'my User Name2', 'my email2', 'my password2', '2011-11-11 22:00:00', 'my about2', 'link to img2'),
(11, 'my uid3', 'my User Name3', 'my email3', 'my password3', '2011-11-12 22:00:00', 'my about3', 'link to img3'),
(12, 'my uid4', 'my User Name4', 'my email4', 'my password4', '2011-11-13 22:00:00', 'my about4', 'link to img4'),
(13, 'my uid5', 'my User Name5', 'my email5', 'my password5', '2011-11-14 22:00:00', 'my about5', 'link to img5'),
(14, 'my uid1', 'my User Name1', 'my email1', 'my password1', '2011-11-10 22:00:00', 'my about1', 'link to img1'),
(15, 'my uid2', 'my User Name2', 'my email2', 'my password2', '2011-11-11 22:00:00', 'my about2', 'link to img2'),
(16, 'my uid3', 'my User Name3', 'my email3', 'my password3', '2011-11-12 22:00:00', 'my about3', 'link to img3'),
(17, 'my uid4', 'my User Name4', 'my email4', 'my password4', '2011-11-13 22:00:00', 'my about4', 'link to img4'),
(18, 'my uid5', 'my User Name5', 'my email5', 'my password5', '2011-11-14 22:00:00', 'my about5', 'link to img5'),
(19, 'my uid1', 'my User Name1', 'my email1', 'my password1', '2011-11-10 22:00:00', 'my about1', 'link to img1'),
(20, 'my uid2', 'my User Name2', 'my email2', 'my password2', '2011-11-11 22:00:00', 'my about2', 'link to img2'),
(21, 'my uid3', 'my User Name3', 'my email3', 'my password3', '2011-11-12 22:00:00', 'my about3', 'link to img3'),
(22, 'my uid4', 'my User Name4', 'my email4', 'my password4', '2011-11-13 22:00:00', 'my about4', 'link to img4'),
(23, 'my uid5', 'my User Name5', 'my email5', 'my password5', '2011-11-14 22:00:00', 'my about5', 'link to img5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
