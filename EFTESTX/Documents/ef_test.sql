-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 08. 17:55
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `ef_test`
--
CREATE DATABASE IF NOT EXISTS `ef_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `ef_test`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `gender`, `user_name`) VALUES
(1, 'Gwenni', 'Tookill', 'gtookill0@123-reg.co.uk', 'Female', 'gtookill0'),
(2, 'Thorvald', 'Mallett', 'tmallett1@nymag.com', 'Male', 'tmallett1'),
(3, 'Kristoffer', 'Brahan', 'kbrahan2@shop-pro.jp', 'Male', 'kbrahan2'),
(4, 'Orazio', 'Telling', 'otelling3@cnn.com', 'Male', 'otelling3'),
(5, 'Jacinda', 'Kovács', 'ujemail@example.com', 'Female', 'jsteanyng4'),
(6, 'Cinda', 'Lovick', 'clovick5@uol.com.br', 'Female', 'clovick5'),
(7, 'Harli', 'Flynn', 'hflynn6@irs.gov', 'Genderqueer', 'hflynn6'),
(8, 'Arnuad', 'Martill', 'amartill7@businessinsider.com', 'Male', 'amartill7'),
(9, 'Fedora', 'Royste', 'froyste8@mediafire.com', 'Female', 'froyste8'),
(10, 'Kristien', 'Sambeck', 'ksambeck9@newsvine.com', 'Female', 'ksambeck9'),
(11, 'Brandtr', 'Alty', 'baltya@tamu.edu', 'Male', 'baltya'),
(12, 'Ermin', 'Sisselot', 'esisselotb@flavors.me', 'Male', 'esisselotb'),
(13, 'Ashbey', 'Bradburne', 'abradburnec@ovh.net', 'Male', 'abradburnec'),
(14, 'Vanny', 'Tothe', 'vtothed@xrea.com', 'Female', 'vtothed'),
(15, 'Hugues', 'Menat', 'hmenate@4shared.com', 'Male', 'hmenate'),
(16, 'Cody', 'Foakes', 'cfoakesf@google.ru', 'Female', 'cfoakesf'),
(17, 'Pall', 'Bellham', 'pbellhamg@washingtonpost.com', 'Non-binary', 'pbellhamg'),
(18, 'Alidia', 'Buckleigh', 'abuckleighh@state.gov', 'Female', 'abuckleighh'),
(19, 'Kelvin', 'Abram', 'kabrami@angelfire.com', 'Male', 'kabrami'),
(20, 'Mead', 'McCay', 'mmccayj@bloglovin.com', 'Male', 'mmccayj'),
(21, 'Seumas', 'Reddings', 'sreddingsk@ihg.com', 'Male', 'sreddingsk'),
(22, 'Arabele', 'Jirsa', 'ajirsal@nationalgeographic.com', 'Female', 'ajirsal'),
(23, 'Gerardo', 'Flahy', 'gflahym@theatlantic.com', 'Male', 'gflahym'),
(24, 'Toni', 'Bowmaker', 'tbowmakern@taobao.com', 'Female', 'tbowmakern'),
(25, 'Tammy', 'Mattocks', 'tmattockso@purevolume.com', 'Male', 'tmattockso'),
(26, 'Dwayne', 'Portal', 'dportalp@shinystat.com', 'Male', 'dportalp'),
(27, 'Klaus', 'Smalman', 'ksmalmanq@pinterest.com', 'Male', 'ksmalmanq'),
(28, 'Sybil', 'March', 'smarchr@rambler.ru', 'Female', 'smarchr'),
(29, 'Rice', 'Prop', 'rprops@hhs.gov', 'Male', 'rprops'),
(30, 'Norton', 'Farr', 'nfarrt@live.com', 'Male', 'nfarrt'),
(31, 'Bryanty', 'Tuffin', 'btuffinu@miibeian.gov.cn', 'Male', 'btuffinu'),
(32, 'Olia', 'Watt', 'owattv@slashdot.org', 'Female', 'owattv'),
(33, 'Colet', 'Hacquard', 'chacquardw@pen.io', 'Male', 'chacquardw'),
(34, 'Miriam', 'Dimitriou', 'mdimitrioux@craigslist.org', 'Female', 'mdimitrioux'),
(35, 'Papageno', 'Charlton', 'pcharltony@phpbb.com', 'Male', 'pcharltony'),
(36, 'Tully', 'Ofield', 'tofieldz@bandcamp.com', 'Male', 'tofieldz'),
(37, 'Franklin', 'Dufaur', 'fdufaur10@altervista.org', 'Bigender', 'fdufaur10'),
(38, 'Jasmine', 'Suermeier', 'jsuermeier11@wikispaces.com', 'Female', 'jsuermeier11'),
(39, 'Karlen', 'Freed', 'kfreed12@tripadvisor.com', 'Female', 'kfreed12'),
(40, 'Dottie', 'Emeny', 'demeny13@tinypic.com', 'Female', 'demeny13'),
(41, 'Katalin', 'Curmi', 'kcurmi14@yale.edu', 'Female', 'kcurmi14'),
(42, 'Avivah', 'Winterton', 'awinterton15@google.cn', 'Female', 'awinterton15'),
(43, 'Lyndsay', 'Davidoff', 'ldavidoff16@ibm.com', 'Female', 'ldavidoff16'),
(44, 'Irwin', 'Fackney', 'ifackney17@illinois.edu', 'Male', 'ifackney17'),
(45, 'Bel', 'Pendergast', 'bpendergast18@google.cn', 'Female', 'bpendergast18'),
(46, 'Kellen', 'Arnow', 'karnow19@biglobe.ne.jp', 'Male', 'karnow19'),
(47, 'Ron', 'Sute', 'rsute1a@com.com', 'Male', 'rsute1a'),
(48, 'Broddy', 'Stanett', 'bstanett1b@salon.com', 'Male', 'bstanett1b'),
(49, 'Janie', 'Armstrong', 'jarmstrong1c@kickstarter.com', 'Female', 'jarmstrong1c'),
(50, 'Casie', 'Dubble', 'cdubble1d@netvibes.com', 'Female', 'cdubble1d'),
(51, 'William', 'Gon', 'wgon1e@bbb.org', 'Male', 'wgon1e'),
(52, 'Suzy', 'Cornick', 'scornick1f@mozilla.org', 'Female', 'scornick1f'),
(53, 'Kalle', 'Fosher', 'kfosher1g@dedecms.com', 'Male', 'kfosher1g'),
(54, 'Lebbie', 'Blaes', 'lblaes1h@dailymail.co.uk', 'Female', 'lblaes1h'),
(56, 'Benoit', 'McNee', 'bmcnee1j@naver.com', 'Male', 'bmcnee1j'),
(57, 'Britteny', 'Cadman', 'bcadman1k@webeden.co.uk', 'Female', 'bcadman1k'),
(58, 'Murry', 'Reinbeck', 'mreinbeck1l@nbcnews.com', 'Male', 'mreinbeck1l'),
(59, 'Cordy', 'O\'Lenechan', 'colenechan1m@networkadvertising.org', 'Female', 'colenechan1m'),
(60, 'Krystyna', 'Newlan', 'knewlan1n@gov.uk', 'Female', 'knewlan1n'),
(61, 'Alexandro', 'Dwyr', 'adwyr1o@symantec.com', 'Male', 'adwyr1o'),
(62, 'Prinz', 'Nelthorpe', 'pnelthorpe1p@dailymail.co.uk', 'Male', 'pnelthorpe1p'),
(63, 'Mervin', 'Normanvell', 'mnormanvell1q@aol.com', 'Male', 'mnormanvell1q'),
(64, 'Temple', 'Gatus', 'tgatus1r@toplist.cz', 'Non-binary', 'tgatus1r'),
(65, 'Nealson', 'Marquand', 'nmarquand1s@meetup.com', 'Male', 'nmarquand1s'),
(66, 'Welbie', 'Axup', 'waxup1t@jiathis.com', 'Male', 'waxup1t'),
(67, 'Niles', 'Bielfelt', 'nbielfelt1u@plala.or.jp', 'Male', 'nbielfelt1u'),
(68, 'Codi', 'McCuis', 'cmccuis1v@hubpages.com', 'Male', 'cmccuis1v'),
(69, 'Dario', 'Cankett', 'dcankett1w@bluehost.com', 'Male', 'dcankett1w'),
(70, 'Freedman', 'Conant', 'fconant1x@samsung.com', 'Male', 'fconant1x'),
(71, 'Alvie', 'Playfoot', 'aplayfoot1y@stumbleupon.com', 'Male', 'aplayfoot1y'),
(72, 'Aurel', 'Bukac', 'abukac1z@ox.ac.uk', 'Female', 'abukac1z'),
(73, 'Nathanael', 'Drysdall', 'ndrysdall20@washingtonpost.com', 'Male', 'ndrysdall20'),
(74, 'Tildi', 'Padley', 'tpadley21@answers.com', 'Female', 'tpadley21'),
(75, 'Napoleon', 'Celloni', 'ncelloni22@oakley.com', 'Male', 'ncelloni22'),
(76, 'Nicolai', 'Ballister', 'nballister23@miitbeian.gov.cn', 'Male', 'nballister23'),
(77, 'Hannis', 'Barnhill', 'hbarnhill24@deliciousdays.com', 'Female', 'hbarnhill24'),
(78, 'Leonanie', 'Kmieciak', 'lkmieciak25@devhub.com', 'Female', 'lkmieciak25'),
(79, 'Emanuel', 'Scotford', 'escotford26@sakura.ne.jp', 'Male', 'escotford26'),
(80, 'Lesley', 'Fellow', 'lfellow27@prlog.org', 'Female', 'lfellow27'),
(81, 'Brose', 'Kemster', 'bkemster28@java.com', 'Male', 'bkemster28'),
(82, 'Doy', 'Covert', 'dcovert29@dropbox.com', 'Non-binary', 'dcovert29'),
(83, 'Rubin', 'Williment', 'rwilliment2a@disqus.com', 'Male', 'rwilliment2a'),
(84, 'Culley', 'Jobes', 'cjobes2b@theguardian.com', 'Male', 'cjobes2b'),
(85, 'Justis', 'Leyes', 'jleyes2c@w3.org', 'Male', 'jleyes2c'),
(86, 'Shena', 'Hogbourne', 'shogbourne2d@hhs.gov', 'Female', 'shogbourne2d'),
(87, 'Ediva', 'Luety', 'eluety2e@archive.org', 'Female', 'eluety2e'),
(88, 'Cassius', 'Dioniso', 'cdioniso2f@europa.eu', 'Male', 'cdioniso2f'),
(89, 'Darrin', 'Leele', 'dleele2g@oakley.com', 'Male', 'dleele2g'),
(90, 'Blinny', 'Ayton', 'bayton2h@ed.gov', 'Female', 'bayton2h'),
(91, 'Kyle', 'Steed', 'ksteed2i@tripadvisor.com', 'Male', 'ksteed2i'),
(92, 'Rollins', 'Yanne', 'ryanne2j@arizona.edu', 'Male', 'ryanne2j'),
(93, 'Bryant', 'Treeby', 'btreeby2k@cloudflare.com', 'Male', 'btreeby2k'),
(94, 'Yorker', 'Burchard', 'yburchard2l@goo.ne.jp', 'Male', 'yburchard2l'),
(95, 'Jerrold', 'Janik', 'jjanik2m@senate.gov', 'Male', 'jjanik2m'),
(96, 'Chiquia', 'Arnald', 'carnald2n@odnoklassniki.ru', 'Female', 'carnald2n'),
(97, 'Sharla', 'Benninck', 'sbenninck2o@ezinearticles.com', 'Female', 'sbenninck2o'),
(98, 'Birch', 'Seatter', 'bseatter2p@altervista.org', 'Male', 'bseatter2p'),
(99, 'Kathye', 'Ginty', 'kginty2q@virginia.edu', 'Female', 'kginty2q'),
(100, 'Isa', 'Gilardone', 'igilardone2r@issuu.com', 'Male', 'igilardone2r'),
(107, 'John', 'Doe', 'john@doe.com', 'male', 'jdoe');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
