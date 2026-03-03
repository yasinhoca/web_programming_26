-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 03 Mar 2026, 11:19:55
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `noveri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arac`
--

DROP TABLE IF EXISTS `arac`;
CREATE TABLE IF NOT EXISTS `arac` (
  `id` int NOT NULL,
  `plaka` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `marka` int NOT NULL,
  `model` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `tur` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plaka` (`plaka`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `arac`
--

INSERT INTO `arac` (`id`, `plaka`, `marka`, `model`, `tur`) VALUES
(1, '42AA001', 1, 'Egea', 2),
(2, '42AB002', 2, 'Kadjar', 3),
(3, '42AC003', 4, 'Polo', 1),
(4, '42AD004', 3, 'Focus', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aracmarka`
--

DROP TABLE IF EXISTS `aracmarka`;
CREATE TABLE IF NOT EXISTS `aracmarka` (
  `id` int NOT NULL,
  `marka` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `aracmarka`
--

INSERT INTO `aracmarka` (`id`, `marka`) VALUES
(1, 'Fiat'),
(2, 'Renault'),
(3, 'Ford'),
(4, 'Volkswagen');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aractur`
--

DROP TABLE IF EXISTS `aractur`;
CREATE TABLE IF NOT EXISTS `aractur` (
  `id` int NOT NULL,
  `tur` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `aractur`
--

INSERT INTO `aractur` (`id`, `tur`) VALUES
(1, 'Hatchback'),
(2, 'Sedan'),
(3, 'Suv');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`username`, `password`) VALUES
('ali', '1'),
('betul', '2'),
('cihan', '3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `numara` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `ad` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `soyad` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`numara`, `ad`, `soyad`, `email`) VALUES
('1', 'ali ahmet', 'alkan', 'a@a.com'),
('9', 'berat', 'arslan', 'ba@ba.com'),
('3', 'cihan', 'cengiz', 'c@com'),
('10', 'Gülşah', 'Gazi', 'gg@g.com'),
('10', 'Gülşah', 'Gazi', 'gg@g.com'),
('7', 'Filiz', 'Fidan', 'f@f.com'),
('6', 'Elif', 'Erzurum', 'e@e.com'),
('8', 'Hasan ', 'Gümüş', 'h@h.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
