-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 05 juin 2019 à 12:08
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecomm`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

DROP TABLE IF EXISTS `abonne`;
CREATE TABLE IF NOT EXISTS `abonne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `abonne`
--

INSERT INTO `abonne` (`id`, `email`) VALUES
(1, 'abonnemoi@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 10, 1),
(2, 9, 19, 1),
(3, 9, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Ordinateurs portables', 'laptops'),
(2, 'Ordinateur de bureau', 'desktop-pc'),
(3, 'Tablettes', 'tablets'),
(4, 'TÃ©lÃ©phones portables', '');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `email`, `nom`, `message`) VALUES
(1, 'test@gmail.com', 'assas  withas', 'wa9ila chi haja .ad ');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>Ordinateur portable 15 pouces id&eacute;al pour les joueurs. Mettant en vedette les derniers processeurs Intel&reg; pour des performances de jeu sup&eacute;rieure et NVIDIA&reg; GeForce&reg; graphiques comme la vie et un syst&egrave;me de refroidissement thermique avanc&eacute;.</p>\r\n', 'dell-inspiron-15-7000-15-6', 8999, 'dell-inspiron-15-7000-15-6.jpg', '2018-07-09', 2),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 vous permet de faire tout ce que vous devez faire, tout en &eacute;tant plus l&eacute;ger que jamais</p>\r\n\r\n<p>L&#39;&eacute;cran 12,3 PixelSense offre un contraste extr&ecirc;mement &eacute;lev&eacute; et un faible &eacute;blouissement, vous permettant de travailler toute la journ&eacute;e sans vous fatiguer les yeux.</p>\r\n\r\n<p>le clavier n&#39;est pas inclus et doit &ecirc;tre achet&eacute; s&eacute;par&eacute;ment</p>\r\n\r\n<p>Dispose d&#39;un processeur Intel Core i5 de 6e g&eacute;n&eacute;ration (Skylake), sans fil: r&eacute;seau sans fil Wi-Fi 802.11ac; Technologie sans fil Bluetooth 4.0 compatible IEEE 802.11a / b / g / n</p>\r\n\r\n<p>Navires en emballage de consommation.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 7999, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2019-05-15', 1),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Le bloc-notes de milieu de gamme de 15,6 pouces de Dell est un bloc fade et trapu. Il y a longtemps que la gamme Inspiron ne poss&egrave;de aucune muse esth&eacute;tique, et Inspiron 15 5000 suit cette tendance. C&#39;est une plaque en plastique argent&eacute;e portant le logo de Dell dans un reflet lustr&eacute;.</p>\r\n\r\n<p>En soulevant le couvercle, vous obtenez un &eacute;cran 1080p de 15,6 pouces entour&eacute; d&#39;une lunette presque &eacute;paisse et d&#39;un plateau en plastique avec un aspect en faux m&eacute;tal bross&eacute;. Il y a un lecteur d&rsquo;empreintes digitales sur le bouton d&rsquo;alimentation, et le clavier est une collection noire de touches de style &icirc;lot.</p>\r\n', 'dell-inspiron-15-5000-15-6', 5999, 'dell-inspiron-15-5000-15-6.jpg', '2019-06-04', 3),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Con&ccedil;u pour la portabilit&eacute; avec un ch&acirc;ssis mince et l&eacute;ger</p>\r\n\r\n<p>- Un traitement puissant vous aide &agrave; cr&eacute;er et &agrave; produire en d&eacute;placement</p>\r\n\r\n<p>- L&#39;&eacute;cran Full HD garantit des images nettes pour les films, les pages Web, les photos et plus</p>\r\n\r\n<p>- Profitez d&#39;un son chaud et brillant offert par deux haut-parleurs Harman et Dolby Audio</p>\r\n\r\n<p>- Transfert rapide de donn&eacute;es et connexion vid&eacute;o de haute qualit&eacute; avec ports USB-C et HDMI</p>\r\n\r\n<p>L&#39;ordinateur portable Lenovo IdeaPad 320s-14IKB 14 &quot;fait partie de notre gamme Achieve, qui dispose des derni&egrave;res technologies pour vous aider &agrave; d&eacute;velopper vos id&eacute;es et &agrave; travailler de votre mieux. Il est id&eacute;al pour l&#39;&eacute;dition de documents complexes, votre utilisation professionnelle, l&#39;&eacute;dition de photos, etc. faire tout au long de la journ&eacute;e.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 3999, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>&Eacute;cran Retina de 9,7 pouces, r&eacute;solution 2048 x 1536, &eacute;cran large couleur et ton v&eacute;ritable</p>\r\n\r\n<p>Apple iOS 9, puce A9X &agrave; architecture 64 bits, coprocesseur M9</p>\r\n\r\n<p>Cam&eacute;ra iSight 12 m&eacute;gapixels, flash True Tone, panoramique (jusqu&#39;&agrave; 63 m&eacute;gapixels), audio &agrave; quatre haut-parleurs</p>\r\n\r\n<p>Jusqu&#39;&agrave; 10 heures d&#39;autonomie</p>\r\n\r\n<p>iPad Pro prend en charge le clavier intelligent Apple et le crayon Apple</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 3399, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-07-09', 3),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>Ordinateur portable 15 pouces offrant une exp&eacute;rience visuelle exceptionnelle, une finition qui fait tourner les t&ecirc;tes et toute une gamme d&#39;options con&ccedil;ues pour am&eacute;liorer votre divertissement, o&ugrave; que vous soyez.</p>\r\n', 'dell-inspiron-15-5000-15', 4499.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>Enregistrement vid&eacute;o 4K &agrave; 30 images par seconde</p>\r\n\r\n<p>Appareil photo 12 m&eacute;gapixels</p>\r\n\r\n<p>Rev&ecirc;tement r&eacute;sistant aux empreintes digitales</p>\r\n\r\n<p>Rev&ecirc;tement anti-r&eacute;fl&eacute;chissant</p>\r\n\r\n<p>Appels vid&eacute;o Face Time</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 6199, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Appareil Windows 10 polyvalent avec clavier et stylet inclus, fonctionnalit&eacute; 2 en 1: utilisez-le comme ordinateur portable et tablette. Mettez r&eacute;guli&egrave;rement &agrave; jour Windows pour vous assurer que vos applications disposent des derniers param&egrave;tres de s&eacute;curit&eacute;.</p>\r\n\r\n<p>Dur&eacute;e de vie de la batterie toute la journ&eacute;e, jusqu&#39;&agrave; 11 heures de lecture vid&eacute;o; 128 Go de stockage &agrave; l&#39;&eacute;tat solide. Batterie en polym&egrave;re.Avec 11 heures maximum entre les charges, vous pouvez &ecirc;tre s&ucirc;r que le Transformer Mini T102HA sera &agrave; port&eacute;e de main chaque fois que vous en aurez besoin. Vous pouvez charger le T102HA via son port micro USB, de sorte que vous pouvez utiliser un chargeur mobile ou n&rsquo;importe quelle banque d&rsquo;alimentation munie d&rsquo;un connecteur micro USB.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 5499.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Performances exceptionnelles pour jouer &agrave; l&#39;eSport et plus</p>\r\n\r\n<p>- Les cartes graphiques NVIDIA GeForce GTX offrent des images fluides</p>\r\n\r\n<p>- GeForce Experience fournit des mises &agrave; jour directement sur votre PC</p>\r\n\r\n<p>Le sp&eacute;cialiste PC Vortex Core Lite fait partie de notre gamme de jeux et vous offre les PC les plus impressionnants disponibles &agrave; ce jour. Ses graphismes spectaculaires et ses performances de traitement rapides conviennent aux joueurs les plus exigeants.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 5999.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '0000-00-00', 0),
(10, 2, 'DELL Inspiron 5675 Gaming PC - Recon Blue', '<p>Le tout nouveau bureau de jeu dot&eacute; de puissants processeurs AMD Ryzen &trade;, de graphiques pr&ecirc;ts pour la r&eacute;alit&eacute; virtuelle, d&#39;un &eacute;clairage LED et d&#39;un design m&eacute;ticuleux pour un refroidissement optimal.</p>\r\n', 'dell-inspiron-5675-gaming-pc-recon-blue', 5999.99, 'dell-inspiron-5675-gaming-pc-recon-blue.jpg', '2019-05-20', 2),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>Ce qui est &agrave; l&#39;int&eacute;rieur compte.</p>\r\n\r\n<p>Sans refroidissement appropri&eacute;, les performances sup&eacute;rieures ne atteignent jamais leur plein potentiel.</p>\r\n\r\n<p>Neuf zones d&#39;&eacute;clairage accentuent les lignes agressives et le fini noir lisse de ce bo&icirc;tier en acier galvanis&eacute; unique.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 4899.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2019-05-16', 2),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- La carte graphique GTX 1050 vous permet de jouer &agrave; des jeux &eacute;normes dans de grandes r&eacute;solutions</p>\r\n\r\n<p>- Le processeur Core &trade; i5 de derni&egrave;re g&eacute;n&eacute;ration prend en charge les logiciels multim&eacute;dia exigeants</p>\r\n\r\n<p>- Le stockage Superfast SSD vous permet de charger des programmes en un rien de temps</p>\r\n\r\n<p>Le PC de jeu Acer Aspire GX-781 fait partie de notre gamme de jeux, qui propose les ordinateurs les plus puissants disponibles &agrave; ce jour. Il offre des performances graphiques et de traitement exceptionnelles aux joueurs les plus exigeants.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 7490.99, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-05-12', 3),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Comprend le dernier processeur Intel i5 quadric&oelig;ur et des graphiques discrets. Avec ce pouvoir, vous &ecirc;tes pr&ecirc;t &agrave; entreprendre toute activit&eacute;, de la cr&eacute;ation d&rsquo;art num&eacute;rique &agrave; la conqu&ecirc;te de nouveaux mondes en r&eacute;alit&eacute; virtuelle.</p>\r\n\r\n<p>Choisissez la performance et le stockage dont vous avez besoin. D&eacute;marrez en quelques secondes avec un disque SSD de 128 Go.</p>\r\n\r\n<p>Laissez tomber la bo&icirc;te gris terne, ce bureau est infus&eacute; avec style. Une nouvelle lunette angulaire et un design audacieux de vert et de noir conf&egrave;rent &agrave; votre espace de travail la bonne dose d&#39;attitude.</p>\r\n\r\n<p>Performances jusqu&#39;&agrave; trois fois plus rapides - Les cartes graphiques GeForce GTX 10 sont aliment&eacute;es par Pascal pour offrir deux fois les performances des cartes graphiques de la g&eacute;n&eacute;ration pr&eacute;c&eacute;dente.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 7999.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2019-05-16', 4),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multit&acirc;che en toute simplicit&eacute; gr&acirc;ce au processeur Intel&reg; i5</p>\r\n\r\n<p>- Pr&eacute;parez-vous au combat avec la carte graphique NVIDIA GeForce GTX</p>\r\n\r\n<p>- VR pr&ecirc;t pour la prochaine g&eacute;n&eacute;ration de jeux et de divertissements immersifs</p>\r\n\r\n<p>- La mise &agrave; niveau sans outil vous permet de personnaliser votre syst&egrave;me en fonction de vos propres besoins.</p>\r\n\r\n<p>Le PC de jeu Lenovo Legion Y520, qui fait partie de notre gamme de jeux, comprend les ordinateurs les plus puissants disponibles &agrave; ce jour, offre des performances graphiques et de traitement sup&eacute;rieures pour r&eacute;pondre aux attentes des joueurs les plus exigeants.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 8999.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- Graphiques NVIDIA GeForce GTX pour des visuels de jeu &eacute;poustouflants</p>\r\n\r\n<p>- Con&ccedil;u pour l&#39;eSport avec un processeur Intel&reg; Core &trade; i5 rapide de 7&egrave;me g&eacute;n&eacute;ration</p>\r\n\r\n<p>- La technologie GeForce vous permet de mettre &agrave; jour directement les pilotes, d&#39;enregistrer vos jeux et plus encore</p>\r\n\r\n<p>Le PC de jeu Vortex Minerva XT-R, sp&eacute;cialiste PC, fait partie de notre gamme de jeux, qui propose les ordinateurs les plus puissants disponibles. Ses graphismes et son traitement hautes performances sont con&ccedil;us pour r&eacute;pondre aux besoins des joueurs s&eacute;rieux.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 9999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-07-09', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processeur: Processeur Intel&reg; CoreTM i3-6100 - Cache double c&oelig;ur - 3,7 GHz - 3 Mo</p>\r\n\r\n<p>M&eacute;moire (RAM): DDR4 HyperX 8 Go, Stockage: Disque dur 1 To, 7 200 tr / min</p>\r\n\r\n<p>Carte graphique: NVIDIA GeForce GTX 950 (2 Go GDDR5), Carte m&egrave;re: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Interface vid&eacute;o: HDMI x 1- DisplayPort x 1- DVI x 2, Interface audio: prise jack 3,5 mm, Lecteur de disque optique: DVD / RW, Emplacement pour carte d&#39;extension PCIe: (x1) x 2</p>\r\n\r\n<p>Son: 5.1 Prise en charge du son surround PSU Corsair: VS350, 350W, Couleur: noir / vert en surbrillance, contenu de la bo&icirc;te: PC Specialist Vortex Core - C&acirc;ble d&#39;alimentation CA</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 6499.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2019-05-16', 4),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>La nouvelle g&eacute;n&eacute;ration de notre tablette Fire the plus vendue &agrave; ce jour - d&eacute;sormais plus fine, plus l&eacute;g&egrave;re, avec une dur&eacute;e de vie de la batterie plus longue et un &eacute;cran am&eacute;lior&eacute;. Plus durable que le dernier iPad</p>\r\n\r\n<p>Superbe &eacute;cran IPS 7 &quot;avec processeur &eacute;lev&eacute; quad-core 1,3 GHz et autonomie pouvant atteindre 8 heures. Stockage interne de 8 ou 16 Go pour microSD pour une capacit&eacute; de stockage extensible jusqu&#39;&agrave; jusqu&#39;&agrave; 256 Go .</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 4999.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2019-05-16', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Emportez votre assistant personnel with all you with all this tablet. Amazon Fire HD 8 a cloud service Alexa Alexa par la voix. La conception mince de la tablette est facile &agrave; manipuler, et le grand &eacute;cran de 8 pouces est id&eacute;al pour le travail ou les loisirs. Cet Amazon Fire HD 8 dispose de graphiques haute d&eacute;finition ultra-r&eacute;seaux pour la diffusion en continu et en immersion.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 799.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>La nouvelle g&eacute;n&eacute;ration de notre tablette Feu, la meilleure note, avec une autonomie de batterie jusqu&#39;&agrave; 12 heures, un &eacute;cran HD 8 &quot;dynamique, un processeur quad-core 1,3 GHz, 1,5 Go de RAM et un son Dolby Plus durable que le dernier iPad.</p>\r\n\r\n<p>16 ou 32 Go de stockage interne et un slot microSD pour jusqu&rsquo;&agrave; 256 Go de stockage extensible.</p>\r\n\r\n<p>La nouvelle g&eacute;n&eacute;ration de notre tablette Feu, la meilleure note, avec une autonomie de batterie jusqu&#39;&agrave; 12 heures, un &eacute;cran HD 8 &quot;dynamique, un processeur quad-core 1,3 GHz, 1,5 Go de RAM et un son Dolby Plus durable que le dernier iPad.</p>\r\n\r\n<p>16 ou 32 Go de stockage interne et un slot microSD pour jusqu&rsquo;&agrave; 256 Go de stockage extensible.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 999.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2019-05-22', 2),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>&Eacute;cran Retina de 9,7 pouces, couleurs larges et ton v&eacute;ritable</p>\r\n\r\n<p>Puce A9 de troisi&egrave;me g&eacute;n&eacute;ration avec architecture 64 bits</p>\r\n\r\n<p>Coprocesseur de mouvement M9</p>\r\n\r\n<p>Cam&eacute;ra FaceTime HD 1,2 MP</p>\r\n\r\n<p>Cam&eacute;ra iSight 8MP</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 3399, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 1, 'Dell XPS 15 9560', '<p>Le plus petit ordinateur portable de performance au monde de 15,6 pouces offre des performances exceptionnelles et un superbe &eacute;cran InfinityEdge, le tout dans notre ordinateur portable XPS le plus puissant. Dot&eacute; des derniers processeurs Intel&reg;.</p>\r\n\r\n<p>Syst&egrave;me op&eacute;rateur<br />\r\nDisponible avec Windows 10 Home - Obtenez la meilleure combinaison de fonctionnalit&eacute;s Windows que vous connaissez et de nouvelles am&eacute;liorations que vous allez adorer.</p>\r\n\r\n<p>L&#39;innovation qui inspire.<br />\r\nLorsque vous &ecirc;tes &agrave; la pointe de l&#39;ing&eacute;niosit&eacute;, vous vous faites remarquer. C&rsquo;est pourquoi il n&rsquo;est pas surprenant que le XPS 15 ait &eacute;t&eacute; honor&eacute;. La s&eacute;rie de victoires continue.</p>\r\n\r\n<p>Faites connaissance avec le plus petit ordinateur portable de 15,6 pouces de la plan&egrave;te.<br />\r\nLe seul &eacute;cran InfinityEdge de 15,6 pouces au monde *: l&rsquo;&eacute;cran pratiquement sans bord optimise l&rsquo;espace de l&rsquo;&eacute;cran en permettant l&rsquo;affichage d&rsquo;un &eacute;cran de 15,6 pouces dans un ordinateur portable plus proche de la taille d&rsquo;un 14 pouces, gr&acirc;ce &agrave; une lunette ne mesurant que 5,7 mm.</p>\r\n\r\n<p>Syst&egrave;me d&#39;exploitation: Windows 10 Pro.</p>\r\n\r\n<p>Conception unique: mesurant un mince 11-17mm et ne pesant que 1,8 kg avec un lecteur &agrave; semi-conducteurs, le XPS 15 est l&rsquo;un des plus l&eacute;gers ordinateurs portables de la classe performance au monde.</p>\r\n\r\n<p>Une vue imprenable, o&ugrave; que vous soyez.<br />\r\nD&eacute;tail &eacute;blouissant: avec l&#39;&eacute;cran UltraSharp 4K Ultra HD (3840 x 2160), vous pouvez voir chaque d&eacute;tail de chaque pixel sans avoir &agrave; zoomer. Et avec 6 millions de pixels de plus que la Full HD et 3 millions de plus que le MacBook Pro, vous pouvez &eacute;ditez les images avec une pr&eacute;cision extr&ecirc;me sans vous soucier du flou ou des lignes d&eacute;chiquet&eacute;es.</p>\r\n\r\n<p>Couleur leader sur le march&eacute;: le XPS 15 est le seul ordinateur portable 100% couleur Adobe RVB, couvrant une gamme de couleurs plus &eacute;tendue et produisant des nuances de couleur en dehors des panneaux conventionnels pour vous permettre de voir davantage ce que vous voyez dans la vie r&eacute;elle. Et avec plus d&#39;un milliard de couleurs, les images sont plus lisses et les d&eacute;grad&eacute;s de couleurs sont incroyablement r&eacute;alistes, avec plus de profondeur et de dimension. Le logiciel Dell PremierColor est inclus. Il remappe automatiquement le contenu qui n&#39;&eacute;tait pas encore au format Adobe RGB pour des couleurs &agrave; l&#39;&eacute;cran qui semblent incroyablement pr&eacute;cises et fid&egrave;les &agrave; la r&eacute;alit&eacute;.</p>\r\n\r\n<p>Collaboration facile: visionnez votre &eacute;cran sous presque tous les angles avec un panneau IGZO IPS offrant un large angle de vue pouvant atteindre 170 &deg;.</p>\r\n\r\n<p>Illuminez votre journ&eacute;e: avec une luminosit&eacute; de 350 nichets, il est plus lumineux qu&rsquo;un ordinateur portable classique.</p>\r\n\r\n<p>Touch-friendly: Tapez, glissez et glissez dans l&#39;&eacute;cran. L&#39;&eacute;cran tactile en option vous permet d&#39;interagir naturellement avec votre technologie.</p>\r\n', 'dell-xps-15-9560', 15999, 'dell-xps-15-9560.jpg', '2018-07-09', 9),
(28, 4, 'Samsung Note 8', '<p>Voyez la vue d&#39;ensemble et communiquez d&#39;une toute nouvelle mani&egrave;re. Avec la Galaxy Note8 dans votre main, de plus grandes choses n&rsquo;attendent que de se produire.</p>\r\n\r\n<p>L&#39;&eacute;cran Infinity plus grand que nature.<br />\r\nPlus d&#39;&eacute;cran signifie plus d&#39;espace pour faire de grandes choses. Allez grand avec l&#39;&eacute;cran de 6,3 pouces du Galaxy Note8. Il s&#39;agit du plus grand &eacute;cran jamais con&ccedil;u sur un appareil Note et il tient toujours tr&egrave;s bien dans votre main.</p>\r\n\r\n<p>* Infinity Display: un &eacute;cran en verre de bout en bout, presque sans lunette.</p>\r\n\r\n<p>* &Eacute;cran mesur&eacute; en diagonale comme un rectangle complet sans tenir compte des coins arrondis.</p>\r\n\r\n<p>Utilisez le stylo S pour vous exprimer de mani&egrave;re &agrave; faire la diff&eacute;rence. Dessine tes propres &eacute;mojis pour montrer ce que tu ressens ou &eacute;cris un message sur une photo et envoie-la sous forme de note manuscrite. Faites ce qui compte avec le stylet S.</p>\r\n\r\n<p>* Image simul&eacute;e &agrave; des fins d&#39;illustration uniquement.</p>\r\n', 'samsung-note-8', 8299, 'samsung-note-8.jpg', '0000-00-00', 0),
(29, 4, 'Samsung Galaxy S9+ [128 GB]', '<p><strong>La cam&eacute;ra r&eacute;volutionnaire qui s&rsquo;adapte comme l&rsquo;&oelig;il humain.</strong></p>\r\n\r\n<p><br />\r\nCapturez des images &eacute;poustouflantes &agrave; la lumi&egrave;re du jour et sous une lumi&egrave;re extr&ecirc;mement faible.<br />\r\nNotre objectif &agrave; double ouverture qui d&eacute;finit la cat&eacute;gorie s&rsquo;adapte comme l&rsquo;&oelig;il humain. Il est en mesure de basculer facilement et facilement entre diverses conditions d&#39;&eacute;clairage. Ainsi, vos photos auront une belle apparence, qu&#39;il soit clair ou sombre, de jour comme de nuit.</p>\r\n\r\n<p>* La double ouverture prend en charge les modes F1.5 et F2.4. Install&eacute; sur la cam&eacute;ra arri&egrave;re (Galaxy S9) / cam&eacute;ra arri&egrave;re large (Galaxy S9 +).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" /></p>\r\n\r\n<p>Ajouter de la musique. Faire des GIF. Obtenir des go&ucirc;ts</p>\r\n\r\n<p>Super Slow-mo vous permet de voir les choses que vous auriez pu manquer en un clin d&#39;&oelig;il. D&eacute;finissez la vid&eacute;o en musique ou transformez-la en un fichier GIF en boucle et partagez-la avec un robinet. Puis asseyez-vous et regardez les r&eacute;actions se d&eacute;rouler.</p>\r\n', 'samsung-galaxy-s9-128-gb', 8899.99, 'samsung-galaxy-s9-128-gb.jpg', '2019-05-15', 3);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2019-06-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2019-06-10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text,
  `contact_info` varchar(100) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) DEFAULT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'admin', 'name', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'aaa@gmail.com', '$2y$10$jez7j3sWKkPzozRgdgtL3eNFnU1fHnhmacdNfd5EnIzdKbo9hBdYu', 0, 'taaaaaaa', 'aaaaaaaaaa', NULL, NULL, NULL, NULL, 'anNkdAUMhj5m', NULL, '2019-06-04'),
(14, 'test@gmail.com', '$2y$10$A6blXKxKLaDgnQkDfAEble2eJjYkfC9HUXP7qqq7XttrifBqmo0Pu', 0, 'test', 'test', NULL, NULL, NULL, NULL, 'UoqaOAExCnsF', NULL, '2019-06-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
