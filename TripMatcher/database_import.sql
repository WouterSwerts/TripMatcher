-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 24 sep 2021 om 08:33
-- Serverversie: 5.7.31
-- PHP-versie: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tripmatcher`
--
CREATE DATABASE IF NOT EXISTS `tripmatcher` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tripmatcher`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorytable`
--

DROP TABLE IF EXISTS `categorytable`;
CREATE TABLE IF NOT EXISTS `categorytable` (
  `Category_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `categorytable`
--

INSERT INTO `categorytable` (`Category_id`, `Category_name`) VALUES
(1, 'Nature'),
(2, 'City'),
(3, 'Town'),
(4, 'Mountain'),
(5, 'Lake'),
(6, 'Beach'),
(7, 'River'),
(8, 'Sea'),
(9, 'Forest'),
(10, 'Vineyard'),
(11, 'Gorge'),
(12, 'Cave'),
(13, 'Viewpoint'),
(14, 'Indoor'),
(15, 'Outdoor'),
(16, 'Walking'),
(17, 'Running'),
(18, 'Cycling'),
(19, 'Hiking'),
(20, 'Kayaking'),
(21, 'Swimming'),
(22, 'Diving'),
(23, 'Wintersports'),
(24, 'Climbing'),
(25, 'Rafting'),
(26, 'Skydiving'),
(27, 'Culture'),
(28, 'Exhibitions'),
(29, 'Foodie'),
(30, 'Festivals'),
(31, 'Architecture'),
(32, 'History'),
(33, 'Local'),
(34, 'Sightseeing'),
(35, 'Road_Trip'),
(36, 'Blue_Voyage'),
(37, 'Family'),
(38, 'Children_Friendly'),
(39, 'Pet_Friendly'),
(40, 'Romantic'),
(41, 'Disability_Friendly'),
(42, 'Corona_Friendly'),
(43, 'Active'),
(44, 'Adventure'),
(45, 'Calm'),
(46, 'Lazy'),
(47, 'Public_Transportation'),
(48, 'Private_Vehicle'),
(49, 'Ponds'),
(50, 'Amusements'),
(51, 'Performances');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `countrytable`
--

DROP TABLE IF EXISTS `countrytable`;
CREATE TABLE IF NOT EXISTS `countrytable` (
  `Country_id` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `countrytable`
--

INSERT INTO `countrytable` (`Country_id`, `Country`) VALUES
(1, 'Belgium'),
(2, 'Netherlands'),
(3, 'France'),
(4, 'Italy'),
(5, 'Germany');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `questioncategory`
--

DROP TABLE IF EXISTS `questioncategory`;
CREATE TABLE IF NOT EXISTS `questioncategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Question_id` int(11) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Question_id` (`Question_id`),
  KEY `FK_UserCategory_id_Q` (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `questioncategory`
--

INSERT INTO `questioncategory` (`id`, `Question_id`, `Category_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 35),
(5, 2, 36),
(6, 3, 43),
(7, 3, 44),
(8, 3, 45),
(9, 3, 46),
(10, 4, 4),
(11, 4, 5),
(12, 4, 6),
(13, 4, 7),
(14, 4, 8),
(15, 4, 9),
(16, 4, 10),
(17, 4, 11),
(18, 4, 12),
(19, 4, 13),
(20, 4, 49),
(21, 5, 16),
(22, 5, 17),
(23, 5, 18),
(24, 5, 19),
(25, 5, 20),
(26, 5, 21),
(27, 5, 22),
(28, 5, 23),
(29, 5, 24),
(30, 5, 25),
(31, 5, 26),
(32, 6, 27),
(33, 6, 28),
(34, 6, 29),
(35, 6, 30),
(36, 6, 31),
(37, 6, 32),
(38, 6, 33),
(39, 6, 34),
(40, 6, 50),
(41, 6, 51),
(42, 7, 37),
(43, 7, 38),
(44, 7, 39),
(45, 7, 40),
(46, 7, 41),
(47, 7, 42),
(48, 8, 14),
(49, 8, 15),
(50, 9, 47),
(51, 9, 48);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `questiontable`
--

DROP TABLE IF EXISTS `questiontable`;
CREATE TABLE IF NOT EXISTS `questiontable` (
  `Question_id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(250) DEFAULT NULL,
  `Question_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `questiontable`
--

INSERT INTO `questiontable` (`Question_id`, `Question`, `Question_type`) VALUES
(1, 'When I close my eyes and think of my ideal vacation, I am in ...', 'Atmosphere'),
(2, 'I would love to have a ...', 'Trip Type'),
(3, 'I can see myself being ... during my holidays', 'Activity Level'),
(4, 'For me nature equals to  ...', 'Nature Type'),
(5, 'My favorite sports are ...', 'Sports'),
(6, 'When it comes to arts & culture I cannot miss ...', 'Art&Culture'),
(7, 'I prefer places that are...', 'Preferences'),
(8, 'I prefer ... activities', 'Indoor Outdoor'),
(9, 'I usually travel by ...', 'Transportation');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tripcategory`
--

DROP TABLE IF EXISTS `tripcategory`;
CREATE TABLE IF NOT EXISTS `tripcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Trip_id` int(11) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Trip_id` (`Trip_id`),
  KEY `FK_Category_id` (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `tripcategory`
--

INSERT INTO `tripcategory` (`id`, `Trip_id`, `Category_id`) VALUES
(1, 1, 1),
(2, 1, 9),
(3, 1, 15),
(4, 1, 16),
(5, 1, 17),
(6, 1, 18),
(7, 1, 19),
(8, 1, 31),
(9, 1, 33),
(10, 1, 34),
(11, 1, 37),
(12, 1, 38),
(13, 1, 41),
(14, 1, 42),
(15, 1, 43),
(16, 1, 47),
(17, 1, 48),
(18, 1, 49),
(19, 2, 14),
(20, 2, 22),
(21, 2, 37),
(22, 2, 38),
(23, 2, 42),
(24, 2, 43),
(25, 2, 47),
(26, 2, 48),
(27, 3, 1),
(28, 3, 4),
(29, 3, 9),
(30, 3, 12),
(31, 3, 13),
(32, 3, 15),
(33, 3, 19),
(34, 3, 24),
(35, 3, 34),
(36, 3, 43),
(37, 3, 44),
(38, 3, 48),
(39, 3, 51),
(40, 4, 2),
(41, 4, 14),
(42, 4, 16),
(43, 4, 27),
(44, 4, 28),
(45, 4, 29),
(46, 4, 31),
(47, 4, 33),
(48, 4, 34),
(49, 4, 37),
(50, 4, 38),
(51, 4, 40),
(52, 4, 45),
(53, 4, 47),
(54, 4, 48),
(55, 5, 2),
(56, 5, 3),
(57, 5, 15),
(58, 5, 29),
(59, 5, 30),
(60, 5, 37),
(61, 5, 38),
(62, 5, 47),
(63, 5, 48),
(64, 6, 14),
(65, 6, 15),
(66, 6, 27),
(67, 6, 28),
(68, 6, 29),
(69, 6, 31),
(70, 6, 32),
(71, 6, 33),
(72, 6, 34),
(73, 6, 37),
(74, 6, 38),
(75, 6, 39),
(76, 6, 41),
(77, 6, 42),
(78, 6, 45),
(79, 6, 46),
(80, 6, 48),
(81, 7, 1),
(82, 7, 5),
(83, 7, 6),
(84, 7, 9),
(85, 7, 13),
(86, 7, 15),
(87, 7, 16),
(88, 7, 17),
(89, 7, 18),
(90, 7, 19),
(91, 7, 20),
(92, 7, 21),
(93, 7, 35),
(94, 7, 37),
(95, 7, 38),
(96, 7, 39),
(97, 7, 40),
(98, 7, 42),
(99, 7, 43),
(100, 7, 44),
(101, 7, 45),
(102, 7, 46),
(103, 7, 48),
(104, 8, 1),
(105, 8, 6),
(106, 8, 8),
(107, 8, 13),
(108, 8, 15),
(109, 8, 16),
(110, 8, 17),
(111, 8, 19),
(112, 8, 21),
(113, 8, 22),
(114, 8, 33),
(115, 8, 34),
(116, 8, 35),
(117, 8, 37),
(118, 8, 38),
(119, 8, 39),
(120, 8, 40),
(121, 8, 42),
(122, 8, 43),
(123, 8, 44),
(124, 8, 45),
(125, 8, 46),
(126, 8, 48),
(127, 9, 1),
(128, 9, 3),
(129, 9, 7),
(130, 9, 10),
(131, 9, 13),
(132, 9, 15),
(133, 9, 16),
(134, 9, 17),
(135, 9, 18),
(136, 9, 19),
(137, 9, 20),
(138, 9, 27),
(139, 9, 29),
(140, 9, 32),
(141, 9, 33),
(142, 9, 34),
(143, 9, 35),
(144, 9, 37),
(145, 9, 38),
(146, 9, 39),
(147, 9, 40),
(148, 9, 41),
(149, 9, 42),
(150, 9, 43),
(151, 9, 45),
(152, 9, 48);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `tripcountry`
--

DROP TABLE IF EXISTS `tripcountry`;
CREATE TABLE IF NOT EXISTS `tripcountry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Trip_id` int(11) DEFAULT NULL,
  `Country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Trip_id_c` (`Trip_id`),
  KEY `FK_Country_id` (`Country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `triptable`
--

DROP TABLE IF EXISTS `triptable`;
CREATE TABLE IF NOT EXISTS `triptable` (
  `Trip_id` int(11) NOT NULL AUTO_INCREMENT,
  `Image` varchar(500) DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `Summary` text,
  `Country_id` int(11) DEFAULT NULL,
  `Added_date` date DEFAULT NULL,
  PRIMARY KEY (`Trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `triptable`
--

INSERT INTO `triptable` (`Trip_id`, `Image`, `Title`, `Summary`, `Country_id`, `Added_date`) VALUES
(1, '/assets/img/Trip/fietsenWater2.jpg', 'Cycling through Water, Bokrijk', 'A unique cycling experience in which you cycle through a pond in the \'De Wijers\' nature reserve. In the middle, the path dips low enough to put riders at eye level with the water. In 2018 shortlisted in top 100 \'Worlds Greatest Experiences\' by Time Magazine.', 1, '2021-08-09'),
(2, '/assets/img/Trip/TODI4.jpg', 'Todi Indoor Diving, Beringen', 'When you think of diving, you usually dream of colorful fauna and flora, an abundance of special fish and perhaps the sea. Well, you do not have to go to a sea for having a diving experience. In this indoor diving facility you can enjoy diving and get diving lessons if you are a beginner.', 1, '2021-08-10'),
(3, '/assets/img/Trip/via ferrata.jpg', 'Via Ferrata, Lago di Garda', '\'Via Ferrata\' is a mountaineering term. Originally Italian it means \'iron road\'. It is a route set out with steel cables along a rock wall. Over 1000 via ferratas currently exist in the European Alps. The one in Lago di Garda is famous for its excellent views and offers easy, medium and difficult level routes with many viewpoints.', 4, '2021-08-11'),
(4, '/assets/img/Trip/Chocolate.jpg', 'Chocolate Nation, Antwerp', 'As soon as you open the doors of Chocolate Nation, the chocolate smell hits you. In this chocolate museum you walk through a huge chocolate machine and witness how the cocoa bean is harvested. It is just like being in the movie \'Charlie and the Chocolate Factory.\' There are several workshops where you can learn how they make Belgian chocolate.', 1, '2021-08-11'),
(5, '/assets/img/Trip/trek.jpg', 'Traveling Food Festival with Performances', 'Festival TREK is the largest traveling food festival in the Netherlands. Throughout the year city parks are transformed into a large open-air festival area across the country, where you can enjoy surprising entertainment from young theater makers, cabaret and musicals combined with a diverse range of dishes.', 2, '2021-08-11'),
(6, '/assets/img/Trip/orval.jpg', 'Monastery Ruins and Trappist Beer, Orval Abbey', 'Orval Abbey (Abbaye Notre-Dame d\'Orval) is a Cistercian monastery founded in 1132. The site offers monumental ruins as well as an underground museum. The abbey is well known for its history but also for its local production of the Trappist beer and abbey cheese. There is a bar, restaurant and a store where you can taste and purchase these abbey delicacies.', 1, '2021-08-11'),
(7, '/assets/img/Trip/Rursee.jpg', 'Sailing, Kayaking and More, Lake Rursee', 'Away from the big cities and the hustle of everyday life, you are surrounded by nature, fresh air, water, woods, adventure, beach and relaxation at Lake Rursee. In the middle of the Eifel National Park, the natural scenery and unspoilt nature invites you to a day trip with many possibilities.', 5, '2021-08-11'),
(8, '/assets/img/Trip/normandy.jpg', 'A Hidden Limestone Beach, Plage du Fourquet', 'Plage du Fourquet is a calm small beach mostly visited by locals in Normandy, close to the famous Etretat. The view of the cliff and the noise of rolling pebbles to the rhythm of the waves is calming. If you want an active day, get ready for a swim or a scenic hike on top of the cliffs.', 3, '2021-08-11'),
(9, '/assets/img/Trip/vineyard.jpg', 'Vineyards from Roman Times, Neumagen-Dhron', 'Neumagen-Dhron is one of a whole series of places that claim the title Germany\'s Oldest Winemaking Centre. The winemaking village of Neumagen was founded by the Romans some 2,000 years ago as a waystation on the road from Trier to Koblenz along the River Moselle. In Neumagen you can stroll along the river, take a boat ride and enjoy wine tasting.', 5, '2021-08-11');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usercategory`
--

DROP TABLE IF EXISTS `usercategory`;
CREATE TABLE IF NOT EXISTS `usercategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_User_id_c` (`User_id`),
  KEY `FK_UserCategory_id` (`Category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `usercategory`
--

INSERT INTO `usercategory` (`id`, `User_id`, `Category_id`) VALUES
(22, 3, 18),
(26, 3, 1),
(27, 3, 3),
(28, 3, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usertable`
--

DROP TABLE IF EXISTS `usertable`;
CREATE TABLE IF NOT EXISTS `usertable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Photo` varchar(500) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `usertable`
--

INSERT INTO `usertable` (`id`, `Name`, `Email`, `Photo`, `Password`) VALUES
(1, 'Test Tester', 'test@test.be', 'None', 'Test'),
(2, 'Test Tester', 'test@test.be', 'None', 'test'),
(3, 'wouter', 'wouter@swerts.be', NULL, 'test');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `usertrip`
--

DROP TABLE IF EXISTS `usertrip`;
CREATE TABLE IF NOT EXISTS `usertrip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `User_id` int(11) DEFAULT NULL,
  `Trip_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_User_id_t` (`User_id`),
  KEY `FK_UserTrip_id` (`Trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `questioncategory`
--
ALTER TABLE `questioncategory`
  ADD CONSTRAINT `FK_Question_id` FOREIGN KEY (`Question_id`) REFERENCES `questiontable` (`Question_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_UserCategory_id_Q` FOREIGN KEY (`Category_id`) REFERENCES `categorytable` (`Category_id`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tripcategory`
--
ALTER TABLE `tripcategory`
  ADD CONSTRAINT `FK_Category_id` FOREIGN KEY (`Category_id`) REFERENCES `categorytable` (`Category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Trip_id` FOREIGN KEY (`Trip_id`) REFERENCES `triptable` (`Trip_id`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `tripcountry`
--
ALTER TABLE `tripcountry`
  ADD CONSTRAINT `FK_Country_id` FOREIGN KEY (`Country_id`) REFERENCES `countrytable` (`Country_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Trip_id_c` FOREIGN KEY (`Trip_id`) REFERENCES `triptable` (`Trip_id`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `usercategory`
--
ALTER TABLE `usercategory`
  ADD CONSTRAINT `FK_UserCategory_id` FOREIGN KEY (`Category_id`) REFERENCES `categorytable` (`Category_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_User_id_c` FOREIGN KEY (`User_id`) REFERENCES `usertable` (`id`) ON UPDATE CASCADE;

--
-- Beperkingen voor tabel `usertrip`
--
ALTER TABLE `usertrip`
  ADD CONSTRAINT `FK_UserTrip_id` FOREIGN KEY (`Trip_id`) REFERENCES `triptable` (`Trip_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_User_id_t` FOREIGN KEY (`User_id`) REFERENCES `usertable` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
