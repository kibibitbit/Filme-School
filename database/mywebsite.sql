-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 10. Mai 2023 um 23:05
-- Server-Version: 10.4.27-MariaDB
-- PHP-Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `mywebsite`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `filme`
--

CREATE TABLE `filme` (
  `FilmID` int(11) NOT NULL,
  `FSK` int(11) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Titel` varchar(255) DEFAULT NULL,
  `Img` varchar(255) DEFAULT NULL,
  `Serienlink` varchar(255) DEFAULT NULL,
  `Statistik` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `filme`
--

INSERT INTO `filme` (`FilmID`, `FSK`, `Description`, `Titel`, `Img`, `Serienlink`, `Statistik`) VALUES
(1, 16, 'Dragon Ball Super ist eine japanische Anime-Fernsehserie und eine Fortsetzung der beliebten Dragon Ball Manga- und Anime-Franchise. Die Serie spielt einige Jahre nach der Niederlage des mächtigen Schurken Majin Buu in Dragon Ball Z und folgt den Abenteuern von Goku und seinen Freunden, während sie neuen Bedrohungen für das Universum gegenüberstehen. Die Handlung dreht sich hauptsächlich um die Suche nach den Super Dragon Balls, den mächtigsten Gegenständen im Universum, sowie um den Kampf gegen ', 'DragonBall-Super', 'https://www.crunchyroll.com/imgsrv/display/thumbnail/1200x675/catalog/crunchyroll/26079ab060401d8a76039e985d63a3e9.jpe', 'https://www.crunchyroll.com/de/series/GR19V7816/dragon-ball-super', 10),
(5, 12, 'Naruto Shippuden ist eine japanische Anime-Fernsehserie und eine Fortsetzung der Originalserie Naruto. Sie erzählt die Geschichte von Naruto Uzumaki, einem jungen Ninja, der davon träumt,der stärkste Ninja in seinem Dorf zu werden, und seinen Freunden, während sie auf eine gefährliche Reise gehen,um ihre Welt vor bösen Kräften zu retten. Die Serie spielt zweieinhalb Jahre nach der Originalserie Naruto und konzentriert sich auf die Ereignisse rund um die Akatsuki,eine mächtige Verbrecherorganisat', 'Naruto-Shippuden', 'https://wallpapers.com/images/featured/rxxyiybobk8m0q7u.jpg', 'https://www.crunchyroll.com/de/series/GYQ4MW246/naruto-shippude', 9),
(6, 16, 'Bleach ist eine japanische Anime-Fernsehserie, die auf dem gleichnamigen Manga von Tite Kubo basiert.Die Serie erzählt die Geschichte von Ichigo Kurosaki, einem High-School-Schüler, der die Fähigkeit besitzt, Geister zu sehen.Eines Tages trifft er auf Rukia Kuchiki, eine Shinigami oder Todessense, die ihn in den Kampf gegen Hollows einführt -böse Geister, die den Seelen von Verstorbenen schaden.Nachdem Rukia in Schwierigkeiten gerät, gibt sie ihre Shinigami-Kräfte an Ichigo weiter,der dadurch zu', 'Bleach', 'https://cdn.suwalls.com/wallpapers/anime/bleach-5671-1920x1200.jpg', 'https://www.crunchyroll.com/de/series/G63VGG2NY/bleach', 8),
(7, 3, '\"Demon Slayer\" ist ein Anime, der auf der gleichnamigen Manga-Serie von Koyoharu Gotouge basiert. Die Geschichte handelt von Tanjiro Kamado, einem jungen Mann, dessen Familie von Dämonen getötet wurde, und seiner Schwester Nezuko, die als einzige überlebt hat, aber in einen Dämon verwandelt wurde. Tanjiro schwört, seine Schwester zu retten und ein Dämonenjäger zu werden. Er tritt der \"Demon Slayer Corps\" bei, einer Organisation von Dämonenjägern, die für die Rettung der Menschheit kämpfen. Die S', 'Demon Slayer', 'https://www.pcgames.de/screenshots/original/2020/12/Demon-Slayer-Filmplakat-pc-games2.jpg', 'https://www.crunchyroll.com/de/series/GY5P48XEY/demon-slayer-kimetsu-no-yaiba', 10),
(8, 6, 'Beyblade Metal Fight (auch bekannt als Beyblade: Metal Fusion) ist eine japanische Anime-Serie,die auf der Beyblade-Spielzeugreihe von Takara Tomy basiert. Die Serie folgt der Geschichte von Gingka Hagane,einem talentierten Beyblader, der mit seinem Beyblade Storm Pegasus gegen andere Beyblader antritt,um der beste Beyblader der Welt zu werden.Im Laufe der Serie trifft Gingka auf viele andere Beyblader, darunter seine Freunde und Rivalen,sowie auf verschiedene böse Organisationen, die versuchen,', 'Beyblade Metal Fight', 'https://cdn.wallpapersafari.com/63/70/gAxmIc.jpg', 'https://www.crunchyroll.com/de/series/GRDQNE7GY/beyblade-metal-fusion', 8),
(9, 16, 'Tokyo Ghoul ist eine japanische Manga- und Anime-Serie von Sui Ishida. Die Geschichte spielt in einer fiktiven Welt,in der Menschen und Ghule koexistieren. Ghule sind Wesen, die menschenähnlich aussehen, sich aber von Menschenfleisch ernähren müssen, um zu überleben. Die Serie folgt der Geschichte von Ken Kaneki, einem jungen Mann, der bei einem Angriff eines Ghuls schwer verletzt wird und zur Hälfte zum Ghul wird.Kaneki muss lernen, seine neue Identität zu akzeptieren und gleichzeitig gegen and', 'Tokyo Ghoul', 'https://rare-gallery.com/uploads/posts/585648-anime-ghoul.jpg', 'https://www.crunchyroll.com/de/series/G6NV7Z50Y/tokyo-ghoul', 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `Vorname` varchar(255) DEFAULT NULL,
  `Nachname` varchar(255) DEFAULT NULL,
  `Mail` varchar(255) DEFAULT NULL,
  `Passwort` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `Vorname`, `Nachname`, `Mail`, `Passwort`, `Username`) VALUES
(1, 'Max', 'Mustermann', 'max.mustermann@example.com', 'de7f6b56652464057173a870b349497242e87e80684b694f4308e7557f092753', 'maxmuster'),
(2, 'Anna', 'Musterfrau', 'anna.musterfrau@example.com', 'e8c8a7411cc909f99144119279aff1976ea26ef280865a6d0a5530b868e7ca2d', 'annamuster'),
(3, 'David', 'Usov', 'test@mail.com', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', 'David_Usov'),
(4, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(5, '', '', 'daviddavid@david.com', '123456', 'david'),
(6, '', '', '', '123456', ''),
(7, '', '', 'david@david.com', '123456', 'david'),
(8, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(9, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(10, '', '', 'daviddavid@david.com', 'GRAaJ]8:s#:x\"!L', ''),
(11, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(12, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(13, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(14, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(15, '', '', '', '123456', ''),
(16, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(17, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(18, '', '', '', 'GRAaJ]8:s#:x\"!L', ''),
(19, '', '', '', '12345', ''),
(20, '', '', '', '', ''),
(21, '', '', '', '123456', 'David'),
(22, '', '', '', '', ''),
(23, '', '', '', '', ''),
(24, '', '', '', '', ''),
(25, '', '', 'dddd@dddd.com', '', ''),
(26, '', '', 'dddd@dddd.com', '', ''),
(27, '', '', '', '', ''),
(28, '', '', '', '', ''),
(29, '', '', '', '', ''),
(30, '', '', 'duduudud@sus.com', '', ''),
(31, '', '', '', '', ''),
(32, '', '', 'dddd@dddd.com', '', ''),
(33, '', '', '', '', ''),
(34, '', '', '', '', ''),
(35, '', '', 'dddd@dddd.com', '', ''),
(36, '', '', '', '', ''),
(37, '', '', '', '', ''),
(38, '', '', '', '', ''),
(39, '', '', '', '', ''),
(40, '', '', '', '', ''),
(41, '', '', 'dddd@dddd.com', '', ''),
(42, '', '', '', '', ''),
(43, '', '', '', '', ''),
(44, '', '', '', '', ''),
(45, '', '', '', '', ''),
(46, '', '', 'dddd@dddd.com', '', ''),
(47, '', '', '', '', ''),
(48, '', '', 'dddd@dddd.com', '', ''),
(49, '', '', '', '', ''),
(50, 'Franz', 'jaddjhab@jkdada.com', '12345', '12345', NULL),
(51, 'Franz', 'avdajvdajw@ajkdkja.com', '12345', '12345', NULL),
(52, '', '', 'abhkdabiwd@abdjad.com', '12345', 'Franz'),
(53, '', '', 'hkaghkdw@dhjkabjhdw.com', '12345', 'Franz'),
(54, '', '', 'hjabdhjabhdw@ahidabwd.com', '12345', 'Franz'),
(55, '', '', 'ahjdja@baiaid.co', '$2b$10$uoFLK.1WsQthpiXh.ytQQeDMdtbyjCo42WrXPDHFqkfugQpuLfrwq', 'Franz'),
(56, '', '', 'ddddd@dd.com', '$2b$10$2rjfhHw8gWhS2ENtk3zVoeIHnR2SEWqxTMMFkXXSgs38G.Tm3PFEi', 'Franz'),
(57, '', '', 'akdkjakdabn@andjadnkandka.com', '$2b$10$hQMn7x6K2Z13EcP84pu7YOAoTDVGArXNDrPkxqX7Gtm6VhCFAXxqC', 'david'),
(58, '', '', 'uiadghjkah@jandfkd.com', '$2b$10$oBFJeceX/upqvoTRIw.1IuVkOngAUXKgYxyyms45.fnvxLIGyUKPO', 'Franz'),
(59, '', '', 'ahjdb@abjd.com', '$2b$10$D3SYQIo0Q1EtpHEpVjiqoui.RciMrDcNTlr0KYqK7OhPXopQSHiLi', 'ahjvda'),
(60, '', '', 'david@gmail.com', '$2b$10$TEQZ51MMEUDD3dK/6fm7Le9u4tAgE87RgdWQlQAAr11ZL7ZJclFDC', 'David');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `filme`
--
ALTER TABLE `filme`
  ADD PRIMARY KEY (`FilmID`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `filme`
--
ALTER TABLE `filme`
  MODIFY `FilmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
