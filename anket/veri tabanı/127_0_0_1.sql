-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 30 Oca 2023, 10:29:14
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `anket`
--
CREATE DATABASE IF NOT EXISTS `anket` DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci;
USE `anket`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cevaplartablosu`
--

DROP TABLE IF EXISTS `cevaplartablosu`;
CREATE TABLE IF NOT EXISTS `cevaplartablosu` (
  `cevapNo` int(11) NOT NULL AUTO_INCREMENT,
  `cevap` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`cevapNo`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cevaplartablosu`
--

INSERT INTO `cevaplartablosu` (`cevapNo`, `cevap`) VALUES
(1, 'deneme'),
(2, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(3, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanız yüksek'),
(4, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanız yüksek'),
(5, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(6, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(7, 'toplam puanınız 140 ile 90 arasında ,ilk zekanız yüksek ,ikinci zekanız yüksek ,üçüncü zekanız yüksek ,dördüncü zekanız yüksek'),
(8, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(9, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(10, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(11, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(12, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(13, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(14, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(15, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(16, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(17, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(18, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(19, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(20, 'toplam puanınız 45 ile 0 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanızın gelişmesi gerekiyor ,üçüncü zekanızın gelişmesi gerekiyor ,dördüncü zekanızın gelişmesi gerekiyor'),
(21, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanız yüksek ,dördüncü zekanızın gelişmesi gerekiyor'),
(22, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanız yüksek ,dördüncü zekanızın gelişmesi gerekiyor'),
(23, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanız yüksek ,dördüncü zekanızın gelişmesi gerekiyor'),
(24, 'toplam puanınız 90 ile 45 arasında ,ilk zekanızın gelişmesi gerekiyor ,ikinci zekanız yüksek ,üçüncü zekanız yüksek ,dördüncü zekanızın gelişmesi gerekiyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sorular`
--

DROP TABLE IF EXISTS `sorular`;
CREATE TABLE IF NOT EXISTS `sorular` (
  `İd` int(11) NOT NULL AUTO_INCREMENT,
  `Soru` longtext COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`İd`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sorular`
--

INSERT INTO `sorular` (`İd`, `Soru`) VALUES
(1, 'Farklı kültürel geçmişi olan kişilerle birlikteyken\r\nkullandığım kültürel bilginin farkındayım.'),
(2, 'Alışkın olmadığım kültürden birileriyle etkileşime\r\ngeçtiğimde kültürel bilgimi duruma uygun olarak\r\nkullanırım.'),
(3, 'Kültürlerarası etkileşimlerde kullandığım kültürel bilginin\r\nfarkındayım.'),
(4, 'Farklı kültürlerden birileriyle etkileşim halindeyken\r\nkültürel bilgimin doğruluğuna dikkat ederim.'),
(5, 'Başka kültürlerin yasal ve ekonomik sistemleri hakkında\r\nbilgi sahibiyim.'),
(6, 'Başka dillerin kurallarını (kelime, gramer vb.) bilirim.'),
(7, 'Başka kültürlerin değerlerini ve dini inançlarını hakkında\r\nbilgi sahibiyim.'),
(8, 'Başka kültürlerin evlilik sistemleri hakkında bilgi\r\nsahibiyim.'),
(9, 'Başka kültürlerin el sanatları hakkında bilgi sahibiyim.'),
(10, 'Başka kültürdeki jest, mimik vb. sözel olmayan\r\ndavranışların sergileme kurallarını bilirim.'),
(11, 'Başka kültürlerden insanlarla bir arada olmaktan\r\nhoşlanırım.'),
(12, 'Alışkın olmadığım bir kültürde yerel insanlarla\r\nkaynaşabileceğime eminim.'),
(13, 'Benim için yeni olan bir kültüre uyum sağlamada\r\nkarşılaşacağım güçlüklerle başa çıkacağıma eminim.'),
(14, 'Alışkın olmadığım kültürlerde yaşamaktan hoşlanırım.'),
(15, 'Farklı bir kültürdeki alışveriş yapma kurallarına\r\nalışabileceğime eminim.'),
(16, 'Sözel davranışlarımı (ses tonu, aksan vb.) kültürlerarası\r\niletişimin gereklerine göre ayarlarım.'),
(17, 'Konuşurken tonlama ve duraksamayı, kültürlerarası\r\nduruma uygun olarak değişik bir şekillerde kullanırım.'),
(18, 'Konuşma biçimimi kültürlerarası iletişimin gereklerine\r\ngöre ayarlarım.'),
(19, 'Kültürlerarası iletişimde ne kadar gerekliyse sözel\r\nolmayan davranışlarımı ona göre ayarlarım.'),
(20, 'Yüz ifademi kültürlerarası iletişimin gereklerine göre\r\ndeğiştiririm.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
