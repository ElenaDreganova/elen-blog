-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Лют 09 2023 р., 13:31
-- Версія сервера: 10.4.27-MariaDB
-- Версія PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `elen_blog`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Technology'),
(2, 'Travel');

-- --------------------------------------------------------

--
-- Структура таблиці `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `discription` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `preview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `discription`, `category_id`, `created`, `preview`) VALUES
(1, 'The Newest Technology On This Year 2019', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 1, '2023-02-07 13:50:12', 'assets/images/image_1.jpg'),
(2, 'The Newest Technology On This Year 2022', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 2, '2023-02-07 13:50:12', 'assets/images/image_11.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `avatar`, `created`) VALUES
(1, 'Elena', '$2y$10$6WNHGlnI.XLpdmC9/YqUWeYUNhM0OQQ654UjCwStG9GKBn8XesjFK', NULL, '2023-02-09 03:21:44');

-- --------------------------------------------------------

--
-- Структура таблиці `user_post_likes`
--

CREATE TABLE `user_post_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп даних таблиці `user_post_likes`
--

INSERT INTO `user_post_likes` (`id`, `user_id`, `post_id`) VALUES
(3, 2, 1),
(4, 2, 1),
(5, 2, 1),
(6, 2, 1),
(7, 2, 1),
(11, 2, 1),
(12, 2, 1),
(15, 2, 1),
(16, 2, 1),
(20, 2, 1),
(21, 2, 1),
(23, 2, 1),
(24, 2, 1),
(25, 2, 1),
(26, 2, 1),
(27, 2, 1),
(28, 2, 1),
(30, 2, 1),
(31, 2, 1),
(36, 2, 1),
(37, 2, 1),
(38, 2, 1),
(41, 2, 1),
(42, 2, 1),
(43, 2, 1),
(44, 2, 1),
(45, 2, 1),
(47, 2, 1),
(48, 2, 1),
(49, 2, 1),
(50, 2, 1),
(51, 2, 1),
(57, 2, 1),
(58, 2, 1),
(59, 2, 1),
(60, 2, 1),
(61, 2, 1),
(62, 2, 1),
(65, 2, 1),
(68, 2, 1),
(69, 2, 1),
(70, 2, 1),
(71, 2, 1),
(72, 2, 1),
(74, 2, 1),
(75, 2, 1),
(76, 2, 1),
(77, 2, 1),
(78, 2, 1),
(81, 2, 1),
(82, 2, 1),
(83, 2, 1),
(85, 2, 1),
(86, 2, 1),
(87, 2, 1),
(88, 2, 1),
(91, 2, 1),
(92, 2, 1),
(93, 2, 1),
(97, 2, 1),
(102, 2, 1),
(103, 1, 1);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user_post_likes`
--
ALTER TABLE `user_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `user_post_likes`
--
ALTER TABLE `user_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
