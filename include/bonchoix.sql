-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2013 at 12:54 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bonchoix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login_admin` varchar(30) NOT NULL,
  `mdp_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `login_admin` (`login_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `login_admin`, `mdp_admin`) VALUES
(1, 'admin', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `code_art` varchar(10) NOT NULL,
  `design_courte_art` varchar(300) NOT NULL,
  `design_long_art` varchar(500) NOT NULL,
  `prix_art` varchar(20) NOT NULL,
  `code_sous_famill_art` varchar(10) NOT NULL,
  `code_famill_art` varchar(10) NOT NULL,
  `fav_art` tinyint(2) NOT NULL,
  PRIMARY KEY (`code_art`),
  KEY `code_sous_famill_art` (`code_sous_famill_art`),
  KEY `code_famill_art` (`code_famill_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`code_art`, `design_courte_art`, `design_long_art`, `prix_art`, `code_sous_famill_art`, `code_famill_art`, `fav_art`) VALUES
('0001', 'ALLIANCE OR 375 JAUNE DIAMANT', 'ALLIANCE or 375, serti rail, 13 diamants total 5/100e de carat.', '360.999', '01', '002', 0),
('0002', 'ALLIANCE DEMI-TOUR PLATINE 950 ', 'ElÃ©gante et raffinÃ©e cette alliance demi-tour en platine, met en lumiÃ¨re en serti griffes de magnifiques diamants de qualitÃ© tradition. Un cadeau unique Ã  offrir.', '2500.999', '01', '002', 0),
('0004', 'ALLIANCE OR 375 BLANC DIAMANT', 'ALLIANCE or blanc 375. 14 diamants total 10/100e de carat.', '920.999', '01', '002', 0),
('0005', 'ALLIANCE PALLADIUM ', 'ALLIANCE. Ruban en palladium. 3 diamants. ', '780.999', '01', '002', 1),
('0006', 'ALLIANCE OR 2 TONS 375', 'Avec sa forme ronde symbole de l''infinitÃ© de vos sentiments, votre anneau en Or vous accompagnera longtemps. Laissez-vous donc sÃ©duire par ce modÃ¨le en Or jaune et Or rhodiÃ©.', '270.999', '01', '002', 0),
('0007', 'ALLIANCE OR 750 BLANC', 'Cette alliance en or blanc diamantÃ© vous illuminera de l''Ã©clat unique crÃ©Ã© par ses facettes. Vous serez touchÃ© en plein coeur par ses 2 anneaux mobiles qui cÃ©lÃ¨breront Ã  merveille votre union.', '980.999', '01', '002', 0),
('0008', 'ALLIANCE DEMI-TOUR OR 750 JAUNE', 'ALLIANCE DIAMANTS demi-tour or 750, qualitÃ© SÃ©ductions, serti griffe, total  25/100e de carat.', '1450.999', '01', '002', 0),
('0009', 'ALLIANCE PLATINE 950 ET OR 750 ', 'Sobre et Ã©lÃ©gante, cette alliance marie avec talent l''or et le platine. Une association d''un Ã©clat incomparable pour que ce jour reste unique.', '1300.999', '01', '002', 0),
('0010', 'ALLIANCE OR 750 BLANC DUO DIAMA', 'Duo diamants. SOLITAIRE et ALLIANCE demi-tour en or blanc 750. 1 diamant 24/100e de carat, et 5 diamants total 10/100e, qualitÃ© SÃ©duction. ', '2800.999', '01', '002', 0),
('0012', 'BAGUE 2 ORS 375 DIAMANT', 'BAGUE en 2 ors 375 (or blanc, or rose). 6 diamants total 4/100e de carat.', '490.999', '02', '002', 0),
('0013', 'BAGUE OR 375 ROSE QUARTZ ROSE E', 'BAGUE en or rose 375. 1 quartz rose 2,80 carats, et 1 amÃ©thyste 50/100e de carat.', '540.999', '02', '002', 0),
('0014', 'LOT 3 BAGUES PLAQUÃ‰ OR ET ARGEN', 'LOT de 3 BAGUES plaquÃ© or et argent Ã  porter ensemble ou sÃ©parÃ©ment, motif coeur, fleur, Ã©toile.', '160.999', '02', '002', 0),
('0015', 'BAGUE OR 375 BLANC ZIRCONIA', 'Du plus bel effet Ã  votre doigt, le zirconia de ce charmant solitaire en or blanc allie simplicitÃ© et raffinement. Un vÃ©ritable atout charme.', '200.999', '02', '002', 0),
('0016', 'BAGUE PLAQUÃ‰ OR ROSE ZIRCONIA', 'BAGUE en plaquÃ© or rose rehaussÃ©e d''un motif coeur serti de zirconias. ', '90.999', '02', '002', 0),
('0017', 'BAGUE ARGENT 925 CÃ‰RAMIQUE DIAM', 'BAGUE ARGENT 925 CÃ‰RAMIQUE DIAMANT\r\nBAGUE composÃ©e de 3 anneaux en cÃ©ramique noire facettÃ©e reliÃ©s par une barrette sertie de 3 diamants.', '230.001', '02', '002', 0),
('0018', 'BAGUE OR 375 BLANC TOPAZE BLEUE', 'BAGUE en or blanc 375. 1 topaze bleue traitÃ©e 60/100e de carat, et cÃ©ramique noire. ', '340.001', '02', '002', 0),
('0019', 'BAGUE OR 750 JAUNE TOPAZE BLEUE', 'BAGUE or. 1 topaze bleue traitÃ©e 5 carats, briolette.', '1100.001', '02', '002', 0),
('0020', 'BOUCLES D''OREILLES ACIER CÃ‰RA', 'BOUCLES D''OREILLES ACIER CÃ‰RAMIQUE', '110.001', '03', '002', 0),
('0021', 'BOUCLES D''OREILLES ARGENT ZIRCO', 'Sertis de zirconias, ces clous d''oreilles en argent 925 prÃ©sentent un design Ã  la fois minimaliste et raffinÃ©. Un classique au charme indÃ©modable, Ã  porter en toutes occasions . ', '20.999', '03', '002', 0),
('0022', 'BOUCLES D''OREILLES PLAQUÃ‰ OR ', 'Boucles d''oreilles plaquÃ© or rose zirconia. ', '120.002', '03', '002', 0),
('0023', 'BOUCLES D''OREILLES ARGENT 925', 'BOUCLES D''OREILLES : pendants en argent 925 agrÃ©mentÃ©s de volutes serties de zirconias.', '220.001', '03', '002', 0),
('0024', 'BOUCLES D''OREILLES ARGENT 925', 'BOUCLES D''OREILLES : pendants en argent 925 (systÃ¨me crochet) composÃ©s de multichaÃ®nes.', '170.001', '03', '002', 0),
('0025', 'CRÃ‰OLES ARGENT 925', 'CREOLES en argent 925. ', '110.001', '03', '002', 1),
('0026', 'BOUCLES D''OREILLES ARGENT 925 Z', 'Boucles d''oreilles argent 925 zirconia.', '130.001', '03', '002', 0),
('0027', 'BOUCLES D''OREILLES PLAQUÃ‰ OR', 'BOUCLES D''OREILLES : clous, forme demi-boule polie.', '60.001', '03', '002', 0),
('0028', 'BOUCLES D''OREILLES ARGENT 925 D', 'BOUCLES D''OREILLES : pendants en argent 925 agrÃ©mentÃ©s de motifs sertis de diamants. ', '115.001', '03', '002', 1),
('0029', 'BOUCLES D''OREILLES ARGENT 925 Z', 'Boucles d''oreilles argent 925 zirconia. ', '140.001', '03', '002', 0),
('0030', 'BRACELET ACIER CÃ‰RAMIQUE', 'BRACELET rigide anneaux entrelacÃ©s en acier et cÃ©ramique facettÃ©e noire', '200.999', '04', '002', 0),
('0031', 'BRACELET PLAQUÃ‰ OR CRISTAL PE', 'BRACELET cordon marron multirangs agrÃ©mentÃ© de perles imitation rosÃ©es et couleur chocolat et d''une pierre en cristal blanc irisÃ©. Long.', '50.001', '04', '002', 0),
('0032', 'BRACELET PERLE DE CULTURE DE ', 'Bracelet perle de culture de tahiti cordon coton noir.', '99.001', '04', '002', 0),
('0033', 'BRACELET OR 750 TOPAZE BLEUE TR', 'Laissez-vous transporter par le charme et l''Ã©lÃ©gance de ce bracelet en or rehaussÃ© de topazes. Un bijou raffinÃ© et terriblement fÃ©minin.', '799.999', '04', '002', 0),
('0034', 'BRACELET ARGENT 925 NACRE COR', 'BRACELET cordon noir agrÃ©mentÃ© d''une fleur en nacre et de boules polies. ', '70.999', '04', '002', 0),
('0035', 'BRACELET OR 750 BLANC PERLES DE', 'Sobre et Ã©lÃ©gant, ce bracelet marie avec lÃ©gÃ¨retÃ© diamants noirs et perle de culture de Tahiti. Une association magique qui met en Ã©vidence toute la beautÃ© de la Â« reine des perles Â»', '840.999', '04', '002', 0),
('0036', 'BRACELET PLAQUÃ‰ OR PERLE IMITAT', 'BRACELET cordon rose agrÃ©mentÃ© d''une pierre en cristal rosÃ© et de perles imitation couleur chocolat sur une chaÃ®nette en plaquÃ© or.', '89.001', '04', '002', 0),
('0037', 'BRACELET PLAQUÃ‰ OR CORDON COTON', 'Bracelet plaquÃ© or cordon noir.', '84.001', '04', '002', 0),
('0038', 'BRACELET ARGENT 925 CORDON CO', 'BRACELET cordon bleu turquoise rehaussÃ© d''un motif papillon. ', '70.999', '04', '002', 0),
('0039', 'BRACELET CORDON CUIR ACIER', 'Avec son triple rang de cuir marron et son fermoir en boule aimantÃ©, ce bracelet rÃ©invente la tendance. Un bijou novateur. ', '72.999', '04', '002', 0),
('0040', 'CHAÃŽNE MAILLE FORÃ‡AT OR 750 JAU', 'CHAINE forÃ§at massive or 750 jaune. ', '395.999', '05', '002', 0),
('0041', 'CHAINE MAILLE FORÃ‡AT OR 750 BLA', 'CHAINE en or blanc 750 massif, maille forÃ§at.', '309.999', '05', '002', 0),
('0042', 'CHAÃŽNE MAILLE CHEVAL OR 750 JAU', 'CHAINE maille cheval or 750 massif. ', '445.999', '05', '002', 0),
('0043', 'CHAINE MAILLE FORCAT OR 375 JAU', 'Avec une chaÃ®ne, n''importe quel pendentif peut Ãªtre mis en valeur et rehausser votre allure. Laissez-vous donc sÃ©duire par cette chaÃ®ne en Or maille forÃ§at massive.', '170.999', '05', '002', 0),
('0044', 'CHAINE MAILLE SERPENT PLAQUÃ‰ OR', 'CHAINE en plaquÃ© or maille serpent. \r\nFermoir mousqueton.', '178.999', '05', '002', 0),
('0045', 'CHAÃŽNE MAILLE VÃ‰NITIENNE OR 750', 'CHAINE en or blanc 750 massif, maille vÃ©nitienne.', '295.999', '05', '002', 0),
('0046', 'CHAÃŽNE MAILLE TORSADÃ‰E OR 750 J', 'CHAINE torsadÃ©e en or jaune 750. ', '275.999', '05', '002', 0),
('0047', 'CHAINE MAILLE FORCAT ARGENT 925', 'CHAINE maille forÃ§at. ', '70.999', '05', '002', 0),
('0048', 'CHAINE MAILLE JASERON ARGENT 92', 'L''enchevÃªtrement de petits anneaux constitue cette jolie maille de type jaseron. Cette chaÃ®ne en argent de 50 cm s''accorde avec tout style. ', '89.999', '05', '002', 0),
('0049', 'CHAINE TORSADÃ‰E ARGENT 925 45 C', 'CHAINE en argent 925 maille torsadÃ©e. ', '88.999', '05', '002', 0),
('0050', 'COLLIER ARGENT 925 ZIRCONIA', 'Collier argent 925 zirconia.', '199.999', '06', '002', 0),
('0051', 'COLLIER OR 750 JAUNE PERLES DE ', 'COLLIER en or jaune 750. Perles de culture de Tahiti cerclÃ©es diamÃ¨tre 8 mm, alternÃ©es de motifs tubes en nacre. ', '1999.999', '06', '002', 0),
('0052', 'COLLIER ARGENT 925 ZIRCONIA', 'COLLIER en argent 925 composÃ© d''un motif ouvragÃ© serti de zirconias. \r\nFermoir mousqueton.', '229.999', '06', '002', 0),
('0053', 'COLLIER PLAQUÃ‰ OR ROSE', 'COLLIER en plaquÃ© or rose rehaussÃ© d''un motif papillon et croix. ', '199.999', '06', '002', 1),
('0054', 'COLLIER OR 375 JAUNE ZIRCONIA', 'Un design frais et pÃ©tillant pour ce collier en or.', '170.001', '06', '002', 0),
('0055', 'COLLIER OR 750 BLANC PERLES DE ', 'COLLIER. Perles de culture de Tahiti cerclÃ©es diamÃ¨tre 8/10 mm. ', '2490.999', '06', '002', 0),
('0056', 'COLLIER OR 375 JAUNE MAILLE ANG', 'Collier or 375 jaune maille anglaise. ', '675.001', '06', '002', 0),
('0057', 'COLLIER ARGENT 925 ZIRCONIA', 'Collier argent 925 zirconia.', '199.999', '06', '002', 0),
('0058', 'COLLIER ARGENT 925', 'Maille serpent, noeud marin et jolies pampilles font tout le charme et le chic de ce collier en argent. ', '260.999', '06', '002', 0),
('0059', 'COLLIER ARGENT 925 ZIRCONIA', 'Ce magnifique collier en argent est un vÃ©ritable classique.', '99.999', '06', '002', 0),
('0060', 'PENDENTIF OR 375 BLANC DIAMAN', 'PENDENTIF or blanc 375. 3 diamants. BÃ©liÃ¨re invisible.', '199.999', '07', '002', 0),
('0061', 'PENDENTIF OR 375 JAUNE', 'PENDENTIF disque en or 375. Gravure possible recto/verso. ', '250.999', '07', '002', 0),
('0062', 'PENDENTIF OR 750 BLANC DIAMANT', 'La plus prÃ©cieuse des pierres s''invite Ã  votre cou. Un design simple et raffinÃ© pour ce pendentif en or serti d''un diamant. ', '269.999', '07', '002', 0),
('0063', 'PENDENTIF OR 750 2 TONS DIAMANT', 'Charmant et romantique, ce pendentif coeur en or rÃ©vÃ¨le avec dÃ©licatesse un diamant.', '169.999', '07', '002', 0),
('0064', 'PENDENTIF OR 750 BLANC DIAMANT', 'Soigneusement serti en demi-clos, ce diamant sÃ©lectionnÃ© pour sa belle qualitÃ© et son Ã©clat, illumine ce pendentif or avec brio.', '749.999', '07', '002', 0),
('0065', 'PENDENTIF OR 375 BLANC DIAMANT', 'Pendentif or 375 blanc diamant. ', '230.999', '07', '002', 0),
('0066', 'MÃ‰DAILLE OR 750 JAUNE DIAMANT', 'MEDAILLE en or jaune 750 poli rehaussÃ©e d''un diamant. ', '310.999', '07', '002', 0),
('0067', 'PENDENTIF ARGENT 925', 'PENDENTIF en argent 925, motif pliage.', '50.999', '07', '002', 1),
('0068', 'PENDENTIF ARGENT 925 CRISTAL', 'PENDENTIF en argent 925 rehaussÃ© d''un coeur en cristal irisÃ© facettÃ©.', '69.999', '07', '002', 0),
('0069', 'PENDENTIF ARGENT 925 LABRADOR', 'Redoublez d''Ã©lÃ©gance et de fÃ©minitÃ© avec ce magnifique pendentif en Argent 925. ', '179.999', '07', '002', 0),
('0070', 'MONTRE FEMME BRACELET CUIR', 'Redoublez d''Ã©lÃ©gance et de fÃ©minitÃ© avec cette jolie montre chromÃ©e sur bracelet en cuir violet.', '119.999', '08', '002', 0),
('0071', 'MONTRE FEMME BRACELET CHROMÃ‰', 'Montre femme bracelet chromÃ©. ', '169.999', '08', '002', 0),
('0072', 'MONTRE FEMME BRACELET CAOUTCH', 'Montre femme bracelet caoutchouc.', '110.999', '08', '002', 0),
('0073', 'MONTRE FEMME BRACELET MÃ‰TAL C', 'MONTRE et bracelet bicolores. Cadran nacre.\r\nIndiquez votre tour de poignet.  ', '209.999', '08', '002', 0),
('0074', 'MONTRE FEMME BRACELET ACIER B', 'MONTRE et bracelet extensible acier bicolore. Cadran blanc trÃ¨s lisible.', '139.999', '08', '002', 0),
('0075', 'MONTRE FEMME BRACELET CUIR', 'Adoptez un style graphique, choisissez cette montre au cadran XXL et bracelet fin.', '169.999', '08', '002', 0),
('0076', 'MONTRE STAY ORIGINAL FEMME ', 'MONTRE et bracelet acier, cÃ©ramique couleur bleu marine, dateur, cadran bleu marine, chiffres (12 et 6) rehaussÃ©s de pierres imitation.', '399.999', '08', '002', 0),
('0077', 'MONTRE FEMME BRACELET CUIR', 'Montre femme bracelet cuir.', '139.999', '08', '002', 0),
('0078', 'MONTRE FEMME BRACELET CHROMÃ‰', 'Montre femme bracelet chromÃ©.', '170.999', '08', '002', 0),
('0079', 'MONTRE FEMME BRACELET CUIR', 'Montre femme bracelet cuir.', '140.999', '08', '002', 0),
('0081', 'ALLIANCE OR 750 BLANC', 'Une ligne Ã©purÃ©e pour aller Ã  l''essentiel...cette alliance ruban en or blanc vous offre des proportions idÃ©ales pour symboliser votre union en toute Ã©lÃ©gance. ', '459.999', '09', '003', 0),
('0082', 'ALLIANCE OR 750 JAUNE', 'Une ligne Ã©purÃ©e pour aller Ã  l''essentiel...cette alliance ruban en or jaune symbolisera Ã  merveille votre union exceptionnelle.', '485.999', '09', '003', 0),
('0083', 'ALLIANCE PALLADIUM 950', 'ALLIANCE. Ruban brossÃ© en palladium.', '599.999', '09', '003', 0),
('0084', 'ALLIANCE 2 ORS 750', 'Parez-vous de lumiÃ¨re en version 2 ors avec cette sublime alliance. Sa ligne contemporaine en fait un bijou d''Ã©lÃ©gance. ', '1099.999', '09', '003', 0),
('0085', 'ALLIANCE OR 750 BLANC', 'Une ligne Ã©purÃ©e pour aller Ã  l''essentiel...cette alliance ruban en or blanc symbolisera Ã  merveille votre union exceptionnelle.', '499.999', '09', '003', 0),
('0086', 'ALLIANCE PALLADIUM 950', 'MATY a crÃ©Ã© pour vous une collection d''alliance dans un mÃ©tal rare et contemporain, le palladium.', '515.999', '09', '003', 0),
('0087', 'ALLIANCE OR 750 JAUNE', 'Une ligne Ã©purÃ©e pour aller Ã  l''essentiel...cette large alliance ruban en or jaune symbolisera Ã  merveille votre union exceptionnelle.', '549.999', '09', '003', 0),
('0088', 'ALLIANCE OR 375 JAUNE', 'ALLIANCE OR 375 JAUNE', '359.999', '09', '003', 0),
('0089', 'ALLIANCE 3 ORS 750', 'Avec sa forme ronde symbole de l''infinitÃ© de vos sentiments, votre anneau en Or vous accompagnera longtemps. ', '1799.999', '09', '003', 0),
('0091', 'BAGUE ACIER ET OR 750', 'BAGUE composÃ©e d''un motif cÃ¢ble en acier et de 3 vis en or 750. ', '90.999', '010', '003', 0),
('0092', 'BAGUE 2 ORS 750 DIAMANT', 'BAGUE en 2 ors 750 (or jaune, or blanc) massive, rehaussÃ©e d''un diamant de 3/100e de carat.', '2200.999', '010', '003', 0),
('0093', 'CHEVALIÃˆRE OR 750 JAUNE ONYX', 'CHEVALIERE composÃ©e d''un Ã©cusson ovale en onyx sur jonc en or 750 poli. ', '1600.999', '010', '003', 0),
('0094', 'BRACELET ACIER CUIR NOIR', 'BRACELET cuir noir tressÃ©.\r\nFermoir acier. ', '80.999', '011', '003', 0),
('0095', 'BRACELET ACIER CARBONE', 'Bracelet acier carbone. Largeur de maille : 8 mm.\r\n', '130.999', '011', '003', 0),
('0096', 'BRACELET ACIER', 'BRACELET en acier poli agrÃ©mentÃ© d''un motif lÃ©zard sur une plaque en acier laquÃ© noir. Longueur 20 cm.\r\n', '169.999', '011', '003', 0),
('0097', 'GOURMETTE ARGENT 925 PERSONNALI', 'IDENTITE en argent 925 maille marine. \r\nFermoir mousqueton. \r\n', '250.999', '012', '003', 0),
('0098', 'GOURMETTE PLAQUÃ‰ OR PERSONNALIS', 'Gourmette plaquÃ© or personnalisable. Largeur : 8 mm.\r\n', '229.999', '012', '003', 0),
('0099', 'GOURMETTE ARGENT 925 PERSONNALI', 'Gourmette argent 925 personnalisable. Largeur de maille : 8 mm.\r\n', '215.999', '012', '003', 0),
('0100', 'PENDENTIF PERSONNALISABLE ARGEN', 'PENDENTIF en argent 925, plaque "GI".  Hauteur : 4,7 cm, largeur : 2 cm.\r\n', '139.999', '013', '003', 0),
('0101', 'PENDENTIF ALLAH OR 750 JAUNE', 'PENDENTIF Allah en or jaune 750. Hauteur : 2,7 cm, diamÃ¨tre : 1,7 cm.\r\n', '429.999', '013', '003', 0),
('0102', 'PENDENTIF ZODIAQUE OR 750 JAUNE', 'PENDENTIF signe du zodiaque en or jaune 750. Sagittaire.', '449.999', '013', '003', 0),
('0103', 'MONTRE HOMME DOUBLE AFFICHAGE', 'MONTRE et bracelet acier. Cadran bleu avec double affichage. ', '199.999', '014', '003', 0),
('0104', 'MONTRE HOMME AUTOMATIQUE ', 'MONTRE automatique acier, compteur 24H jour/nuit. ', '499.999', '014', '003', 0),
('0105', 'MONTRE HOMME BICOLORE', 'MONTRE acier bicolore, cadran blanc avec guichet date. ', '185.999', '014', '003', 0),
('0106', 'GOURMETTE ARGENT ', 'IDENTITE en argent 925 composÃ©e d''une maille alternÃ©e et d''une plaque rehaussÃ©e d''un coeur rouge laquÃ©. ', '89.999', '015', '004', 0),
('0107', 'GOURMETTE PERSONNALISABLE OR', 'Avec sa jolie plaque en forme de parchemin, cette jolie gourmette en or Ã  maille alternÃ©e est un cadeau rÃ©ussi pour fÃªter une naissance ou un baptÃªme. ', '249.999', '015', '004', 0),
('0108', 'GOURMETTE OR 750 ', 'IDENTITE ENFANT en or jaune 750, maille fantaisie, plaque or poli rehaussÃ©e de 2 coccinelles laquÃ©es. ', '495.999', '015', '004', 0),
('0109', 'PENDENTIF OR 375 JAUNE ZIRCONIA', 'Largeur : 9 mm, hauteur avec bÃ©liÃ¨re : 12 mm.\r\n', '82.999', '016', '004', 0),
('0110', 'PENDENTIF PLAQUÃ‰ OR LAQUE', 'PENDENTIF en plaquÃ© or, motif ourson rehaussÃ© de laque multicolore. Hauteur : 1,9 cm, largeur :1 cm.\r\n', '79.999', '016', '004', 0),
('0111', 'PENDENTIF OR 375 JAUNE Ã‰MAIL', 'Pendentif or 375 jaune Ã©mail. Largeur : 8 mm, hauteur avec bÃ©liÃ¨re : 14 mm.\r\n', '99.999', '016', '004', 0),
('0112', 'BRACELET ARGENT 925 Ã‰LASTIQUE', 'Bracelet argent 925 Ã©lastique. DiamÃ¨tre du disque : 15 mm.\r\n', '49.999', '017', '004', 0),
('0113', 'BRACELET ARGENT 925 CAOUTCHOUC ', 'Craquez pour le joli motif fantaisie en argent de ce bracelet en caoutchouc. Un esprit rebelle et masculin assurÃ©. Longueur : 18 cm, largeur : 7 mm.\r\n', '99.999', '017', '004', 0),
('0114', 'BRACELET ARGENT 925 LAQUE PIERR', 'Bracelet argent 925 laque pierre imitation. Motif : largeur : 34 mm, hauteur : 5 mm.\r\n', '49.999', '017', '004', 0),
('0115', 'BOUCLES D''OREILLES OR 375 JAUNE', 'Boucles d''oreilles or 375 jaune laque. Hauteur : 7 mm, largeur : 6 mm.\r\n', '176.999', '018', '004', 0),
('0116', 'BOUCLES D''OREILLES OR 375 JAUNE', 'Boucles d''oreilles or 375 jaune zirconia. Hauteur : 12 mm, largeur : 9 mm.\r\n', '139.999', '018', '004', 0),
('0117', 'BOUCLES D''OREILLES OR 375 JAUNE', 'Boucles d''oreilles or 375 jaune zirconia. DiamÃ¨tre : 5 mm.\r\n', '99.999', '018', '004', 0),
('0118', 'BAGUE ARGENT 925 ZIRCONIA', 'BAGUE en argent 925 coeur ajourÃ© serti d''un zirconia. \r\n', '69.999', '019', '004', 0),
('0120', 'BAGUE ARGENT 925 ZIRCONIA', 'BAGUE Ã©toile sertie de zirconias. T. 46 Ã  56.\r\n', '47.999', '019', '004', 0),
('0121', 'COLLIER ARGENT Ã‰MAIL 38 CM', 'Collier argent Ã©mail 38 cm. Hauteur du pendant : 20 mm, largeur : 12 mm.\r\n', '89.999', '020', '004', 0),
('0122', 'COLLIER ARGENT 925', 'Collier argent 925. Hauteur du pendant : 29 mm, largeur : 8 mm.\r\n', '70.999', '020', '004', 0),
('0123', 'COLLIER ARGENT 925 Ã‰MAIL', 'Collier argent 925 Ã©mail. Hauteur du pendant : 18 mm, largeur : 10 mm.\r\n', '82.999', '020', '004', 0),
('0124', 'MONTRE ADOLESCENT ', 'MONTRE affichage numÃ©rique. BoÃ®tier et bracelet PVC noir et blanc. Verre plexi. Etanche 3 bars. Affiche en permanence : heure, minute, seconde, jour et date. Par simple pression : chrono au 1/100Ã¨me, compte Ã  rebours, alarme et lumiÃ¨re.  \r\n', '99.999', '021', '004', 0),
('0125', 'MONTRE ENFANT BRACELET CUIR', 'Craquez pour les jolies inscriptions du bracelet cuir bleu et blanc de cette montre enfant en aluminium. Son cadran pÃ©dagogique bleu et blanc lui apporte un style trÃ¨s mode. Largeur totale : 29 mm.\r\n', '199.999', '021', '004', 0),
('0126', 'MONTRE ADOLESCENT BRACELET PVC ', 'MONTRE et bracelet en PVC rose, lunette chromÃ©e, cadran rehaussÃ© de coeurs illuminÃ©s par simple pression. \r\n', '109.999', '021', '004', 0),
('0127', 'TIRELIRE OURS MÃ‰TAL BLANCHI ARG', 'TIRELIRE ours en mÃ©tal blanchi d''argent. Haut. 13 cm. \r\n', '99.999', '022', '004', 0),
('0128', 'TIRELIRE CHAUSSON MÃ‰TAL BLANCHI', 'TIRELIRE chausson livrÃ© avec 2 rubans (1 rose, 1 bleu). \r\n', '69.999', '022', '004', 0),
('0129', 'BOITE "PREMIÃˆRE DENT" EN MÃ‰TAL ', 'BOITE 1Ã¨re DENT en mÃ©tal blanchi d''argent. Couvercle perlÃ© avec motif souris, intÃ©rieur en feutrine. Dim. 6 x 2,5 cm.\r\n', '48.999', '022', '004', 0),
('0130', 'BAGUE ARGENT 925', 'BAGUE rehaussÃ©e d''un motif trÃ¨fle. T. 46 Ã  56.\r\n', '89.999', '019', '004', 0),
('0131', 'COFFRET BIJOUX CUIR IMITATION ', 'COFFRET Ã  BIJOUX imitation cuir bordeaux, intÃ©rieur faÃ§on velour beige. Astucieux! Ouverture simultanÃ©e du couvercle et du tiroir. Nombreux emplacements pour bijouterie diverse dont un qui permet de ranger une boÃ®te de voyage.', '150.999', '024', '001', 0),
('0132', 'PIERCING DE NEZ OR', 'PIERCING de nez en or jaune 750, motif serpent. Largeur : 7 mm, hauteur : 6 mm.\r\n', '89.999', '024', '001', 0),
('0133', 'PORTE CLÃ‰S ACIER', 'Porte clÃ©s acier. Largeur : 33 mm, hauteur avec boucle : 82 mm.\r\n', '99.999', '023', '001', 0),
('0134', 'CLOU OR 750 JAUNE ZIRCONIA', 'BOUCLE D''OREILLE : clou zirconia, diam. 3 mm, serti sur or jaune 750, vendu Ã  l''unitÃ©.\r\n', '90.999', '023', '001', 0),
('090', 'ALLIANCE OR 750 BLANC', 'Jeu de nuances et de reliefs, cette alliance vous offre un dialogue tout en lumiÃ¨re entre 2 ors.', '1299.999', '09', '003', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `email_clt` varchar(30) NOT NULL,
  `nom_clt` varchar(30) NOT NULL,
  `prenom_clt` varchar(30) NOT NULL,
  `mdp_clt` varchar(30) NOT NULL,
  PRIMARY KEY (`email_clt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`email_clt`, `nom_clt`, `prenom_clt`, `mdp_clt`) VALUES
('amine@live.com', 'amine', 'amine', '0000'),
('med@live.com', 'Med Hedi', 'Maghraoui', '0000'),
('saklyayoub@live.com', 'Sakly', 'Ayoub', '20666996'),
('saklyyakoub@live.com', 'Sakly', 'Yakoub', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `id_cmd` varchar(30) NOT NULL,
  `email_clt` varchar(30) NOT NULL,
  `date_cmd` varchar(30) NOT NULL,
  `tel_contact_cmd` varchar(30) NOT NULL,
  `adresslivrison_cmd` varchar(250) NOT NULL,
  `montant_cmd` varchar(30) NOT NULL,
  `etats` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cmd`),
  KEY `email_clt` (`email_clt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`id_cmd`, `email_clt`, `date_cmd`, `tel_contact_cmd`, `adresslivrison_cmd`, `montant_cmd`, `etats`) VALUES
('201306022257', 'saklyayoub@live.com', '2013/06/02-22:57', '20666996', 'tuins', '2541.998', 'annuler'),
('201306081126', 'saklyayoub@live.com', '2013/06/08-11:26', '20666996', 'tunis', '1251.999', 'facturer'),
('201306101551', 'saklyayoub@live.com', '2013/06/10-15:51', '20666996', 'tunis\r\n', '1341.997', 'facturer');

-- --------------------------------------------------------

--
-- Table structure for table `commande_article`
--

CREATE TABLE IF NOT EXISTS `commande_article` (
  `id_cmd` varchar(30) NOT NULL,
  `code_art` varchar(10) NOT NULL,
  KEY `id_cmd` (`id_cmd`),
  KEY `code_art` (`code_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commande_article`
--

INSERT INTO `commande_article` (`id_cmd`, `code_art`) VALUES
('201306022257', '0005'),
('201306022257', '0053'),
('201306022257', '0025'),
('201306022257', '0008'),
('201306081126', '0001'),
('201306081126', '0025'),
('201306081126', '0005'),
('201306101551', '0001'),
('201306101551', '0005'),
('201306101551', '0053');

-- --------------------------------------------------------

--
-- Table structure for table `contacteznous`
--

CREATE TABLE IF NOT EXISTS `contacteznous` (
  `id_cn` int(11) NOT NULL AUTO_INCREMENT,
  `email_cn` varchar(30) NOT NULL,
  `sujet_cn` varchar(150) NOT NULL,
  `message_cn` varchar(5000) NOT NULL,
  `date_cn` varchar(20) NOT NULL,
  `lu_cn` tinyint(1) NOT NULL,
  `repondu_cn` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_cn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contacteznous`
--

INSERT INTO `contacteznous` (`id_cn`, `email_cn`, `sujet_cn`, `message_cn`, `date_cn`, `lu_cn`, `repondu_cn`) VALUES
(1, 'ygvyhv@live.com', 'hgvkghv', 'khgvkghv\r\n', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `famill_article`
--

CREATE TABLE IF NOT EXISTS `famill_article` (
  `code_famill_art` varchar(50) NOT NULL,
  `nom_famill_art` varchar(100) NOT NULL,
  PRIMARY KEY (`code_famill_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `famill_article`
--

INSERT INTO `famill_article` (`code_famill_art`, `nom_famill_art`) VALUES
('001', 'Accessoires'),
('002', 'Femme'),
('003', 'Hommes'),
('004', 'Enfants & Ado');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `nom_du_site` varchar(30) NOT NULL,
  `page_facebook` varchar(250) NOT NULL,
  `page_tweeter` varchar(100) NOT NULL,
  `page_youtube` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `text_recherche` varchar(300) NOT NULL,
  `m_recherche` tinyint(1) NOT NULL,
  `m_newsletter` tinyint(1) NOT NULL,
  `m_facebook` tinyint(1) NOT NULL,
  `m_tweeter` tinyint(1) NOT NULL,
  `m_youtube` tinyint(1) NOT NULL,
  `x_gmaps` double NOT NULL,
  `y_gmaps` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `nom_du_site`, `page_facebook`, `page_tweeter`, `page_youtube`, `description`, `adresse`, `tel`, `text_recherche`, `m_recherche`, `m_newsletter`, `m_facebook`, `m_tweeter`, `m_youtube`, `x_gmaps`, `y_gmaps`) VALUES
(1, 'Luxe', 'https://www.facebook.com/guidebijouxx', '#', '#', 'Guide Bijoux vous invite Ã  dÃ©couvrir sa bijouterie en ligne spÃ©cialisÃ©e dans les bijoux et montres pour femme, homme et enfant. Notre bijouterie en ligne ne propose que des bijoux d''excellence sÃ©lectionnÃ©s parmi les marques les plus prestigieuses que l''on ne prÃ©sente plus. Parce qu''il existe un bijou pour tous les membres de la famille.<br>La bijouterie en ligne Le bon choix vous offre Ã©galement de nombreux conseils pour bien choisir vos bijoux pour tous les Ã©vÃ©nements de la vie : mariage, fianÃ§ailles, fÃªtes de NoÃ«l ou simple cadeau. <br>Tous nos clients bÃ©nÃ©ficient d''une garantie satisfait ou remboursÃ©" afin d''acheter en toute sÃ©rÃ©nitÃ©.', '23 Rue de Carthage', '00 216 22 805 020/00 216 20 666 996', 'nomdusite@mail.com', 0, 0, 1, 1, 1, 36.81592, 10.177149);

-- --------------------------------------------------------

--
-- Table structure for table `jquery`
--

CREATE TABLE IF NOT EXISTS `jquery` (
  `id_jqy` int(11) NOT NULL,
  `titre_jqy` varchar(300) NOT NULL,
  `text_jqy` varchar(300) NOT NULL,
  PRIMARY KEY (`id_jqy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jquery`
--

INSERT INTO `jquery` (`id_jqy`, `titre_jqy`, `text_jqy`) VALUES
(1, 'Ventes Flash', 'De -40% Ã  -60% de remise'),
(2, 'CrÃ©ez votre bracelet', 'Une offre de guide bijoux'),
(3, 'FÃªte des pÃ¨res', 'FÃªte des pÃ¨res'),
(4, 'BONNE FETE', 'FÃªte des maman'),
(5, 'Profiter de -20% de remise', 'Des remise allant jus''qua -20%');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE IF NOT EXISTS `newsletter` (
  `email_nl` varchar(100) NOT NULL,
  `date_inscrip_nl` varchar(30) NOT NULL,
  PRIMARY KEY (`email_nl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`email_nl`, `date_inscrip_nl`) VALUES
('amine@live.com', '20130613-2234'),
('med@live.com', '20130613-2233'),
('saklyayoub@live.com', '20130602-2243'),
('saklyyakoub@live.com', '20130613-2233');

-- --------------------------------------------------------

--
-- Table structure for table `sous_famill_article`
--

CREATE TABLE IF NOT EXISTS `sous_famill_article` (
  `code_sous_famill_art` varchar(10) NOT NULL,
  `nom_sous_famill_art` varchar(50) NOT NULL,
  `code_famill_art` varchar(10) NOT NULL,
  PRIMARY KEY (`code_sous_famill_art`),
  KEY `code_famill_art` (`code_famill_art`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sous_famill_article`
--

INSERT INTO `sous_famill_article` (`code_sous_famill_art`, `nom_sous_famill_art`, `code_famill_art`) VALUES
('01', 'Alliances', '002'),
('010', 'Bagues ', '003'),
('011', 'Braclets', '003'),
('012', 'Gourmettes', '003'),
('013', 'Pendentifs', '003'),
('014', 'Montres', '003'),
('015', 'Gourmettes', '004'),
('016', 'Pendentifs', '004'),
('017', 'Braclets', '004'),
('018', 'Boucles d''oreilles', '004'),
('019', 'Bagues', '004'),
('02', 'Bagues', '002'),
('020', 'Colliers', '004'),
('021', 'Montres', '004'),
('022', 'Cadeaux de naissance', '004'),
('023', 'Hommes', '001'),
('024', 'Femmes', '001'),
('03', 'Boucles d''oreilles', '002'),
('04', 'Braclets', '002'),
('05', 'Chaines', '002'),
('06', 'Colliers & Sautoirs', '002'),
('07', 'Pendentifs', '002'),
('08', 'Montres', '002'),
('09', 'Alliances', '003');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`code_sous_famill_art`) REFERENCES `sous_famill_article` (`code_sous_famill_art`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`code_famill_art`) REFERENCES `sous_famill_article` (`code_famill_art`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`email_clt`) REFERENCES `client` (`email_clt`);

--
-- Constraints for table `commande_article`
--
ALTER TABLE `commande_article`
  ADD CONSTRAINT `commande_article_ibfk_1` FOREIGN KEY (`id_cmd`) REFERENCES `commande` (`id_cmd`),
  ADD CONSTRAINT `commande_article_ibfk_2` FOREIGN KEY (`code_art`) REFERENCES `article` (`code_art`);

--
-- Constraints for table `sous_famill_article`
--
ALTER TABLE `sous_famill_article`
  ADD CONSTRAINT `sous_famill_article_ibfk_5` FOREIGN KEY (`code_famill_art`) REFERENCES `famill_article` (`code_famill_art`);
