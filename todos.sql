-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 28 Oca 2020, 21:21:08
-- Sunucu sürümü: 5.6.41
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lxdsmtyi_todolist`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `isCompleted` tinyint(4) NOT NULL,
  `createdAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `todos`
--

INSERT INTO `todos` (`id`, `title`, `isCompleted`, `createdAt`) VALUES
(17, 'Test-2', 1, '2018-09-29 00:05:10'),
(13, 'Test-1', 1, '2018-09-29 00:03:06');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
