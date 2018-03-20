-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Июл 06 2015 г., 14:32
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `kohana`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category_goods`
--

CREATE TABLE IF NOT EXISTS `category_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `name_category` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `category_goods`
--

INSERT INTO `category_goods` (`id`, `parent_id`, `name_category`) VALUES
(3, 0, 'Непрод'),
(5, 3, 'Телевизоры'),
(6, 3, 'Холодильники'),
(7, 3, 'Стиралки'),
(8, 6, 'Двухкамерные'),
(9, 6, 'Однокаменрные'),
(10, 6, 'Морозилки'),
(11, 5, 'ЖК'),
(12, 5, 'Трубка'),
(13, 11, '32'),
(14, 11, '42'),
(15, 11, '26'),
(16, 3, 'чайники');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_image` int(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `description` text,
  `id_category` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `id_image`, `name`, `price`, `description`, `id_category`) VALUES
(48, NULL, 'Норд 3213_1', 1345.53, '                         Белый снизу течет  и вверх фонтаном              ', 9),
(49, NULL, 'Libher 2134', 25000.00, 'Красивый', 8),
(50, NULL, 'LG ELECTRONICS', 22000.00, 'Большой', 14),
(51, NULL, 'Samsung', 2200.00, 'На кухню', 12),
(52, NULL, 'Samsung LE4512', 4500.00, 'Есть описание', 13),
(53, NULL, 'new_news', 10.00, 'новый товаро', 7);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
