-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Окт 08 2019 г., 06:41
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `phpshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
(13, 'Афициды ', 1, 1),
(14, 'Инсектоакарициды', 2, 1),
(15, 'Ларвициды ', 3, 1),
(16, 'Овициды ', 4, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `code`, `price`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(1, 'Герольд, ВСК (10 мл)', 16, 1563832, 70, 1, 'Россия', 'Препарат от яблонной плодожорки, боярышницы и других вредителей сада.', 0, 0, 1),
(2, 'Актара, ВДГ (15шт*4 гр)', 15, 355025, 1950, 1, 'Россия', 'Эффективное средство для защиты растений от вредителей. Бокс 15 шт по 4 гр.', 0, 0, 1),
(3, 'Клещевит, КЭ', 14, 683364, 210, 1, 'Украина', 'Биопрепарат против клещей на смородине и овощных культурах.', 0, 0, 1),
(4, 'Конфидор Экстра, ВДГ (1 гр)', 15, 1128670, 38, 1, 'Германия', 'Препарат для защиты картофеля, томатов и огурцов от насекомых-вредителей.', 0, 0, 1),
(5, 'Децис Профи, ВДГ (1 гр)', 16, 1129365, 38, 1, 'Германия', 'От комплекса вредителей на широком спектре культур.', 1, 1, 1),
(6, 'Кукарача, Г (50 гр)', 15, 2028367, 430, 1, 'Бразилия', 'Гранулы для массового уничтожения тараканов, чешуйниц и мокриц.', 0, 1, 1),
(7, 'Инсектицид Фуфанон-Нова, ВЭ (2 мл)', 14, 1602042, 50, 0, 'Россия', 'Средство для борьбы с вредителями на комплексе садовых культур.', 0, 0, 1),
(8, 'Инсектицид Гром-2, Г (10 гр)', 14, 1953212, 13, 1, 'Россия', 'Эффективное средство в микрогранулах для уничтожения муравьев и почвенных мошек. Пакет 10 грамм.', 0, 0, 1),
(9, 'Садовая побелка Солнцещит (1 кг)', 13, 2019487, 48, 1, 'Россия', 'Для защиты стволов деревьев от перепадов температуры и вредителей.', 0, 1, 1),
(10, 'Препарат 30 плюс, ММЭ', 14, 2028027, 270, 1, 'Россия', 'Инсектицид для очистки сада от зимующих насекомых-вредителей. Цена за 1 шт.', 0, 1, 1),
(11, 'Престиж, КС (20 мл)', 13, 2343847, 140, 0, 'Германия', 'Незаменимый препарат для обработки клубней картофеля.', 1, 1, 1),
(12, 'Инсектицид Гроза (мета), Г (100 гр)', 13, 1839707, 81, 1, 'Россия', 'Надежное средство для защиты садовых растений от слизней и улиток.', 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(45, 'fsdfsd', '1', '123123123', 4, '2015-05-14 09:54:45', '{"1":1,"2":1,"3":2}', 3),
(46, 'САША1', 'g3424242342', '', 4, '2015-05-18 15:34:42', '{"44":3,"43":3}', 1),
(47, 'ГАНА', '89833387980', 'не хачю тараканав', 0, '2019-09-24 12:44:51', '{"12":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
(3, 'Александр', 'alex@mail.com', '111111', ''),
(4, 'Наталья Телешева', 'telesheva@gmail.com', '222222', 'admin'),
(5, 'Сергей', 'serg@mail.com', '111111', ''),
(6, 'геннади', 'imykshenov131@gmail.com', '111111', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
