-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 12 2022 г., 15:49
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
-- База данных: `hw_3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `certificates`
--

CREATE TABLE `certificates` (
  `id` mediumint UNSIGNED NOT NULL,
  `series` text COLLATE utf8mb4_general_ci,
  `number` mediumint DEFAULT NULL,
  `fio` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `certificates`
--

INSERT INTO `certificates` (`id`, `series`, `number`, `fio`, `year`) VALUES
(1, 'ВТ,', 99894, 'Tatum S. Conley', NULL),
(2, 'ВТ,', 52999, 'Echo C. Nieves', 'Apr 26, 1999'),
(3, 'ЕН,', 69965, 'Galvin P. Cummings', 'Oct 13, 1997'),
(4, 'ВТ,', 21941, 'Indira O. Robertson', 'Jan 14, 1995'),
(5, 'ЕН,', 38579, 'Regan L. Lawson', 'Aug 17, 1998'),
(6, 'ЕН,', 89148, 'Phyllis B. Bates', 'Jun 1, 1999'),
(7, 'ВН', 25444, 'Amal S. Coffey', 'Jun 4, 1998'),
(8, 'ЕН,', 57031, 'Chaim K. Holland', 'Aug 14, 1998'),
(9, 'ЕН,', 99645, 'Dorothy S. Griffith', 'Mar 14, 1996'),
(10, 'ЕН,', 89323, 'Jack F. English', 'Mar 14, 1998'),
(11, 'ЕН,', 32681, 'Virginia A. Kim', 'May 7, 1999'),
(12, 'ЕН,', 24052, 'Wendy N. Meyers', 'Mar 11, 1995'),
(13, 'ВТ,', 98182, 'Elvis J. Stafford', 'Jan 16, 1998'),
(14, 'ВТ,', 77190, 'Abel J. Knox', 'Nov 2, 1998'),
(15, 'ЕН,', 15913, 'Katelyn L. Munoz', 'Aug 2, 1996'),
(16, 'ЕН,', 74513, 'Christen V. Ferguson', 'Jul 30, 1999'),
(17, 'ВТ,', 84986, 'Winter Z. Holden', 'Mar 31, 1998'),
(18, 'ЕН,', 65362, 'Yuli K. Hammond', 'Oct 29, 1999'),
(19, 'ЕН,', 82517, 'Myra J. Kelley', 'Aug 7, 1997'),
(20, 'ВТ,', 30760, 'Yetta L. Harvey', 'Apr 1, 1999'),
(21, 'ЕН,', 69114, 'Stuart W. Stephenson', NULL),
(22, 'ЕН,', 17103, 'Ariana W. Sloan', 'Sep 5, 1997'),
(23, 'ВТ,', 80142, 'Lydia N. Griffith', 'Nov 17, 1997'),
(24, 'ВТ,', 22007, 'Hillary V. Sanchez', 'Nov 13, 1997'),
(25, 'ВТ,', 78995, 'Karly M. Bolton', 'Nov 3, 1995'),
(26, 'ЕН,', 29006, 'Rae C. Mathis', 'Mar 13, 1999'),
(27, 'ЕН,', 26159, 'Marshall J. Mathis', NULL),
(28, 'ВТ,', 19997, 'Brian C. Sandoval', 'Oct 17, 1996'),
(29, 'ЕН,', 18683, 'Leigh S. Farley', 'May 14, 1999'),
(30, 'ЕН,', 78274, 'Lionel W. Arnold', 'Jan 19, 1997');

-- --------------------------------------------------------

--
-- Структура таблицы `directors`
--

CREATE TABLE `directors` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `organization` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `directors`
--

INSERT INTO `directors` (`id`, `name`, `phone`, `organization`) VALUES
(1, 'Aretha Hodge', '38(095)3263228', 'СУВ, УКР,'),
(2, 'Jaden Bowen', '38(050)8152915', 'НАЦ,'),
(3, 'Haley Duran', '38(050)4289331', 'АВ, СУВ,'),
(4, 'Debra Gardner', '38(067)8406762', 'ВУЗ'),
(5, 'Rose Mcfarland', '38(067)6115518', 'УКР, НАЦ,'),
(6, 'Daryl Hull', '38(050)8712127', 'АВ, СУВ,'),
(7, 'Jada Clayton', '38(067)7181430', 'УКР,'),
(8, 'Sylvester Beck', '38(067)4738152', 'УКР,'),
(9, 'Mikayla Hansen', '38(050)8622421', 'ЗН,'),
(10, 'Sheila Shelton', '38(067)8027809', 'НАЦ,'),
(11, 'Regan Keller', '38(050)2822465', 'СУВ,'),
(12, 'Lacy Castaneda', '38(050)1914863', 'ТОВ,'),
(13, 'Edward Mcfarland', '38(067)4500963', 'БАЦ,'),
(14, 'Benjamin Hamilton', '38(095)0817787', 'ТОВ,'),
(15, 'Lucius Joyner', '38(050)2634620', 'ТОВ, КОВ,'),
(16, 'Cleo Patterson', '38(095)4824532', 'СУВ, УКР,'),
(17, 'Regina Carter', '38(067)9535827', 'БАЦ, ХЕЦ,'),
(18, 'Aileen Macdonald', '38(067)8373586', 'НАЦ,'),
(19, 'Amethyst Vincent', '38(050)6356273', 'ХЕЦ, ФЕГ,'),
(20, 'Catherine Mcknight', '38(095)1504818', 'ХЕЦ, ФЕГ,'),
(21, 'Fay Morrison', '38(050)2913359', 'АВ,'),
(22, 'Ariana Medina', '38(095)9234288', 'НАЦ,'),
(23, 'Garrison Dejesus', '38(050)8940744', 'ТОВ,'),
(24, 'Serina Martin', '38(067)4318381', 'ВУЗ, КОВ,'),
(25, 'Arthur Mcgowan', '38(067)7648337', 'АВ, СУВ,'),
(26, 'Wesley Byrd', '38(095)6573210', 'НАЦ, БАЦ,'),
(27, 'Bryar Anderson', '38(067)1315138', 'КОВ,'),
(28, 'Catherine Compton', '38(095)6265563', 'ЗН,'),
(29, 'Baker Wallace', '38(050)4658085', 'УКР, НАЦ,'),
(30, 'Iliana Chan', '38(067)0878159', 'КОВ,');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` mediumint UNSIGNED NOT NULL,
  `created_at` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `created_at`, `author`, `text`) VALUES
(1, 'Apr 16, 2021', 'Jackson Lawson', 'volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(2, 'Apr 8, 2021', 'Laura Zamora', 'mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam'),
(3, 'Oct 3, 2021', 'Nola Montgomery', 'elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi'),
(4, 'Sep 14, 2021', 'Travis Jennings', 'euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci'),
(5, 'Mar 2, 2021', 'Shannon Kidd', 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(6, 'Jul 8, 2021', 'Scott Morrison', 'lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.'),
(7, 'Feb 19, 2021', 'Winter Pickett', 'eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum.'),
(8, 'Jun 21, 2021', 'Francis Manning', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum'),
(9, 'Nov 8, 2021', 'Todd Trevino', 'mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.'),
(10, 'Oct 17, 2021', 'Kasimir Brennan', 'Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus'),
(11, 'Jul 31, 2021', 'Palmer Hatfield', 'ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus'),
(12, 'Feb 6, 2021', 'Lucy Hoover', 'aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse'),
(13, 'Jan 8, 2021', 'Clare Navarro', 'mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque'),
(14, 'Mar 30, 2021', 'Sylvia Atkins', 'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem'),
(15, 'Jul 31, 2021', 'Wendy Fitzpatrick', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien.'),
(16, 'May 12, 2021', 'Breanna Mcdowell', 'fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi.'),
(17, 'Oct 5, 2021', 'Chiquita Fernandez', 'arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus'),
(18, 'Jul 5, 2021', 'Kenneth Norris', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac'),
(19, 'Sep 26, 2021', 'Hilda Matthews', 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur'),
(20, 'Apr 15, 2021', 'Brittany Dixon', 'sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.'),
(21, 'Mar 28, 2021', 'Brett Davidson', 'Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum'),
(22, 'Aug 19, 2021', 'Hunter Padilla', 'in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus'),
(23, 'Jan 4, 2021', 'Martena Mcconnell', 'magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a'),
(24, 'Mar 22, 2021', 'Fredericka Goodwin', 'leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus'),
(25, 'Mar 25, 2021', 'Alisa Bullock', 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes,'),
(26, 'Feb 23, 2021', 'Daryl Berry', 'tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,'),
(27, 'Mar 5, 2021', 'Kyle Lewis', 'Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo.'),
(28, 'Jun 7, 2021', 'Griffin Barlow', 'Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor'),
(29, 'Oct 29, 2021', 'Adrienne Dyer', 'pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus.'),
(30, 'Jan 4, 2021', 'Britanney Mcfadden', 'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus');

-- --------------------------------------------------------

--
-- Структура таблицы `organizations`
--

CREATE TABLE `organizations` (
  `id` mediumint UNSIGNED NOT NULL,
  `type_id` mediumint DEFAULT NULL,
  `count_students` mediumint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `organizations`
--

INSERT INTO `organizations` (`id`, `type_id`, `count_students`) VALUES
(1, 5, 22),
(2, 2, 25),
(3, 1, 11),
(4, 0, 11),
(5, 3, 30),
(6, 3, 23),
(7, 6, 15),
(8, 2, 10),
(9, 5, 16),
(10, 1, 17),
(11, 2, 21),
(12, 0, 25),
(13, 3, 12),
(14, 3, 28),
(15, 1, 25),
(16, 4, 20),
(17, 4, 12),
(18, 5, 29),
(19, 1, 17),
(20, 0, 17),
(21, 6, 22),
(22, 3, 13),
(23, 3, 23),
(24, 3, 10),
(25, 2, 24),
(26, 1, 25),
(27, 6, 24),
(28, 4, 15),
(29, 6, 17),
(30, 0, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `practice`
--

CREATE TABLE `practice` (
  `id` mediumint UNSIGNED NOT NULL,
  `practice_id` mediumint DEFAULT NULL,
  `raiting` mediumint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `practice`
--

INSERT INTO `practice` (`id`, `practice_id`, `raiting`) VALUES
(1, 3, 9),
(2, 5, 3),
(3, 4, 10),
(4, 5, 3),
(5, 2, 5),
(6, 4, 8),
(7, 1, 1),
(8, 1, 6),
(9, 4, 3),
(10, 2, 9),
(11, 2, 2),
(12, 2, 3),
(13, 0, 5),
(14, 5, 5),
(15, 0, 8),
(16, 1, 5),
(17, 2, 7),
(18, 0, 2),
(19, 4, 4),
(20, 3, 5),
(21, 0, 6),
(22, 5, 10),
(23, 4, 6),
(24, 4, 8),
(25, 6, 7),
(26, 0, 3),
(27, 2, 9),
(28, 1, 2),
(29, 0, 6),
(30, 3, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `publishes`
--

CREATE TABLE `publishes` (
  `id` mediumint UNSIGNED NOT NULL,
  `publish_date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `author_id` mediumint DEFAULT NULL,
  `body` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `publishes`
--

INSERT INTO `publishes` (`id`, `publish_date`, `author_id`, `body`) VALUES
(1, 'Feb 7, 1993', 3, 'aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam'),
(2, 'Sep 7, 1994', 0, 'arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui,'),
(3, 'Feb 17, 1994', 1, 'aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh'),
(4, 'Jun 14, 1994', 0, 'Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam'),
(5, 'Dec 29, 1996', 0, 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec'),
(6, 'Mar 22, 1994', 3, 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl.'),
(7, 'Aug 20, 1993', 3, 'augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.'),
(8, 'May 17, 1996', 1, 'metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat'),
(9, 'Jan 19, 1994', 2, 'eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat'),
(10, 'Jan 14, 1994', 0, 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum'),
(11, 'Jun 2, 1993', 3, 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi'),
(12, 'Nov 14, 1995', 5, 'ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec'),
(13, 'Oct 17, 1994', 3, 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie'),
(14, 'Jul 11, 1993', 5, 'Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas'),
(15, 'Aug 7, 1994', 0, 'euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit'),
(16, 'May 26, 1994', 1, 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed'),
(17, 'Sep 22, 1994', 1, 'lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum'),
(18, 'Jul 8, 1995', 2, 'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh'),
(19, 'Feb 8, 1995', 3, 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis'),
(20, 'Mar 13, 1994', 1, 'Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit.'),
(21, 'Jun 16, 1996', 2, 'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit'),
(22, 'Sep 20, 1993', 1, 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at'),
(23, 'Feb 14, 1993', 1, 'amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.'),
(24, 'Apr 16, 1995', 5, 'Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet'),
(25, 'Oct 1, 1993', 0, 'Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum'),
(26, 'Nov 3, 1996', 2, 'gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris'),
(27, 'Sep 2, 1994', 2, 'parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie'),
(28, 'Sep 19, 1995', 1, 'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed'),
(29, 'Jan 5, 1996', 0, 'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt'),
(30, 'Jan 4, 1996', 1, 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum');

-- --------------------------------------------------------

--
-- Структура таблицы `schools`
--

CREATE TABLE `schools` (
  `id` mediumint UNSIGNED NOT NULL,
  `region_id` mediumint DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `schools`
--

INSERT INTO `schools` (`id`, `region_id`, `school`) VALUES
(1, 4, 'Lorem Institute'),
(2, 4, 'Nibh Vulputate Mauris Ltd'),
(3, 1, 'Nec LLC'),
(4, 0, 'Suscipit Nonummy Incorporated'),
(5, 2, 'Libero Incorporated'),
(6, 4, 'Natoque LLP'),
(7, 2, 'Sed Neque Limited'),
(8, 2, 'Integer Aliquam Adipiscing Company'),
(9, 0, 'Purus Sapien Institute'),
(10, 5, 'Pretium Aliquet Incorporated'),
(11, 0, 'Vestibulum Neque LLP'),
(12, 5, 'Erat PC'),
(13, 1, 'Sed Dolor Ltd'),
(14, 2, 'Vitae PC'),
(15, 5, 'Cursus Integer Corp.'),
(16, 2, 'Et Nunc Corporation'),
(17, 2, 'Maecenas Malesuada Associates'),
(18, 2, 'Arcu Nunc Associates'),
(19, 0, 'Parturient Montes Ltd'),
(20, 0, 'Consectetuer Adipiscing Incorporated'),
(21, 2, 'Nullam Scelerisque Corp.'),
(22, 4, 'Tellus Eu Limited'),
(23, 3, 'Sed Turpis Nec Limited'),
(24, 1, 'Lobortis Risus Industries'),
(25, 2, 'Fusce Fermentum Inc.'),
(26, 3, 'Aliquet Nec Industries'),
(27, 2, 'Purus Industries'),
(28, 3, 'Euismod Est PC'),
(29, 4, 'Hendrerit A Company'),
(30, 3, 'Nibh Dolor Company');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_id` mediumint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `birthday`, `department_id`) VALUES
(1, 'Germaine', 'Mcdaniel', 'Oct 19, 1996', 0),
(2, 'Pandora', 'Langley', 'Feb 3, 1993', 0),
(3, 'Noah', 'Valencia', 'Jun 17, 1994', 3),
(4, 'Theodore', 'Hall', 'Jul 29, 1994', 1),
(5, 'Willa', 'Barrett', 'Sep 29, 1993', 3),
(6, 'Aretha', 'Murray', 'Apr 22, 1993', 1),
(7, 'Tana', 'Gordon', 'Apr 16, 1993', 0),
(8, 'Abraham', 'Boyle', 'Feb 5, 1995', 4),
(9, 'Connor', 'Dyer', 'Aug 26, 1994', 3),
(10, 'Ignatius', 'Hobbs', 'Aug 23, 1995', 1),
(11, 'Kirestin', 'Norton', 'Jun 23, 1994', 5),
(12, 'Reagan', 'Serrano', 'Nov 20, 1994', 1),
(13, 'Aurora', 'Collier', 'Feb 2, 1996', 2),
(14, 'Zachary', 'Howard', 'May 9, 1996', 3),
(15, 'Ali', 'Cochran', 'Mar 25, 1993', 0),
(16, 'Abigail', 'Pena', 'Oct 2, 1996', 2),
(17, 'Caldwell', 'Schultz', 'May 2, 1993', 1),
(18, 'Troy', 'Bird', 'Jul 12, 1995', 4),
(19, 'Kieran', 'Knight', 'Sep 18, 1995', 1),
(20, 'John', 'Price', 'Jan 16, 1994', 5),
(21, 'Lucian', 'Workman', 'Apr 20, 1996', 3),
(22, 'Kaye', 'Le', 'Dec 8, 1995', 1),
(23, 'Jordan', 'Reese', 'Jul 3, 1994', 3),
(24, 'Quinn', 'Santiago', 'May 28, 1995', 5),
(25, 'Lee', 'Fields', 'May 25, 1993', 2),
(26, 'Veda', 'Stanley', 'Aug 13, 1994', 2),
(27, 'Charissa', 'Yates', 'Jul 9, 1996', 2),
(28, 'Norman', 'Daugherty', 'Feb 17, 1996', 1),
(29, 'Flavia', 'Johnston', 'May 26, 1994', 4),
(30, 'Barclay', 'Ward', 'Jul 9, 1994', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sertificate` mediumint DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `sertificate`, `email`, `year`) VALUES
(1, 'Lavinia', 3312, 'leo.morbi@hotmail.org', 'Sep 21, 2009'),
(2, 'Hoyt', 1800, 'facilisis.magna@aol.net', 'Jul 23, 2007'),
(3, 'Dalton', 6177, 'dis.parturient.montes@protonmail.com', 'Oct 9, 2007'),
(4, 'Forrest', 8934, 'aliquam@gmail.com', 'Oct 11, 2005'),
(5, 'Carlos', 4898, 'mattis.ornare@outlook.net', 'Feb 16, 2009'),
(6, 'Mariko', 4367, 'nec.mollis@protonmail.ca', 'Sep 13, 2009'),
(7, 'Callie', 8017, 'vel.quam.dignissim@protonmail.edu', 'Dec 16, 2004'),
(8, 'Larissa', 9896, 'sed.dolor.fusce@yahoo.ca', 'Oct 18, 2004'),
(9, 'Dalton', 2649, 'neque@hotmail.ca', 'Dec 19, 2005'),
(10, 'Lani', 3711, 'erat@icloud.com', 'Apr 25, 2008'),
(11, 'Allegra', 8783, 'velit.sed@hotmail.edu', 'Apr 2, 2005'),
(12, 'Stella', 7677, 'posuere@google.ca', 'Nov 12, 2006'),
(13, 'Genevieve', 6857, 'vitae.semper@google.ca', 'Sep 4, 2007'),
(14, 'Jena', 8417, 'molestie@protonmail.edu', 'May 4, 2009'),
(15, 'Cailin', 8231, 'ipsum.nunc@icloud.com', 'Apr 14, 2005'),
(16, 'Kimberley', 6830, 'aliquam.auctor@protonmail.org', 'Jul 30, 2009'),
(17, 'Kai', 2545, 'ut.odio@google.com', 'Nov 2, 2008'),
(18, 'Althea', 8589, 'aliquam.eu@aol.edu', 'Dec 14, 2004'),
(19, 'Minerva', 1149, 'quisque.porttitor@gmail.com', 'Apr 21, 2009'),
(20, 'Acton', 1803, 'erat@aol.net', 'Dec 17, 2009'),
(21, 'Isaiah', 2097, 'nibh.enim.gravida@icloud.edu', 'Jan 11, 2007'),
(22, 'Mariam', 9673, 'vestibulum.lorem@protonmail.com', 'Oct 15, 2008'),
(23, 'Graham', 7505, 'lectus.sit.amet@protonmail.net', 'Jul 18, 2008'),
(24, 'Rhona', 8957, 'luctus@gmail.com', 'Apr 11, 2006'),
(25, 'Jin', 9798, 'mollis.vitae@yahoo.ca', 'Jan 27, 2008');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `practice`
--
ALTER TABLE `practice`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishes`
--
ALTER TABLE `publishes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT для таблицы `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `directors`
--
ALTER TABLE `directors`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `practice`
--
ALTER TABLE `practice`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `publishes`
--
ALTER TABLE `publishes`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `schools`
--
ALTER TABLE `schools`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
