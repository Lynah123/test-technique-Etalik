-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 22, 2024 at 09:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testTechniqueEtalik`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `roles`, `password`, `last_name`, `first_name`) VALUES
(2, 'admin@example.com', '[\"ROLE_ADMIN\"]', '$2y$13$GUX72qsqi3ICmYuLtBG9cuBumtFZKmhCxG/exEWd496MrZ99pbGay', 'Administrateur', 'Administrateur');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `compte_affaire` varchar(255) NOT NULL,
  `compte_evenement` varchar(255) DEFAULT NULL,
  `compte_dernier_evenement` varchar(255) DEFAULT NULL,
  `numero_fiche` varchar(255) DEFAULT NULL,
  `libelle_civilite` varchar(255) DEFAULT NULL,
  `proprietaire_actuel_vehicule` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `numero_et_nom_voie` varchar(255) DEFAULT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `telephone_domicile` varchar(255) DEFAULT NULL,
  `telephone_portable` varchar(255) DEFAULT NULL,
  `telephone_job` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_mise_circulation` datetime DEFAULT NULL,
  `date_achat` datetime DEFAULT NULL,
  `date_dernier_evenement` datetime DEFAULT NULL,
  `libelle_marque` varchar(255) DEFAULT NULL,
  `libelle_modele` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `immatriculation` varchar(255) DEFAULT NULL,
  `type_prospect` varchar(255) DEFAULT NULL,
  `kilometrage` varchar(255) DEFAULT NULL,
  `libelle_energie` varchar(255) DEFAULT NULL,
  `vendeur_vn` varchar(255) DEFAULT NULL,
  `vendeur_vo` varchar(255) DEFAULT NULL,
  `commentaire_facturation` varchar(255) DEFAULT NULL,
  `type_vnvo` varchar(255) DEFAULT NULL,
  `numero_dossier_vnvo` varchar(255) DEFAULT NULL,
  `intermediaire_vente_vn` varchar(255) DEFAULT NULL,
  `date_evenement` datetime DEFAULT NULL,
  `origine_evenement` varchar(255) DEFAULT NULL,
  `vin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `compte_affaire`, `compte_evenement`, `compte_dernier_evenement`, `numero_fiche`, `libelle_civilite`, `proprietaire_actuel_vehicule`, `nom`, `prenom`, `numero_et_nom_voie`, `complement`, `code_postal`, `ville`, `telephone_domicile`, `telephone_portable`, `telephone_job`, `email`, `date_mise_circulation`, `date_achat`, `date_dernier_evenement`, `libelle_marque`, `libelle_modele`, `version`, `immatriculation`, `type_prospect`, `kilometrage`, `libelle_energie`, `vendeur_vn`, `vendeur_vo`, `commentaire_facturation`, `type_vnvo`, `numero_dossier_vnvo`, `intermediaire_vente_vn`, `date_evenement`, `origine_evenement`, `vin`) VALUES
(1, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYCOU', '7246', 'Mr', NULL, 'AZIZA', 'JULIEN', '1BIS RUE CREUSE', NULL, '77120', 'MAROLLES EN BRIE', NULL, '0624536655', NULL, 'JULIEN.AZIZA@ORANGE.FR', NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', '1.7 CRDI 115ch Creative 2WD', 'DW-750-CH', 'PARTICULIER', '139924', 'DIESEL', NULL, NULL, 'OPX', 'VN', NULL, NULL, NULL, 'Atelier', 'TMAJ3815AGJ009703'),
(2, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '11286', NULL, 'ALIPIO TEIXEIRA B&TP', 'ALIPIO TEIXEIRA B&TP', NULL, '18 RUE DES CERISIERS', NULL, '60290', 'LAIGNEVILLE', NULL, '0662302010', NULL, 'ALIPIOTEIXEIRA@YAHOO.FR', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG CRDI 136 DCT 48V NLINE EXE TO', 'GE-630-QL', 'SOCIETE', '10', 'DIESEL', 'HEDIN LEA', NULL, NULL, 'VN', 'VN301519', NULL, NULL, 'Atelier', 'TMAJB81AGMJ127866'),
(3, 'LABOHYMEA', 'GIDAHYBEA', 'GIDAHYBEA', '9393', 'Mme', 'ANSEL', 'ANSEL', 'MARIE CHRISTINE', '2 ROUTE DE FORMERIE', NULL, '60220', 'BOUVRESSE', NULL, '0677950397', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', NULL, 'FH-945-WZ', 'PARTICULIER', '43095', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJ3817GKJ885874'),
(4, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYCOU', '6925', NULL, 'ARVAL', 'ARVAL', NULL, '111 RUE DE REUILLY', NULL, '75012', 'PARIS-12E__ARRONDISSEMENT', NULL, '0788190227', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', NULL, 'FX-389-MZ', 'PARTICULIER', '45401', NULL, NULL, NULL, 'AD BLUE', NULL, NULL, NULL, NULL, 'Atelier', 'TMAJC81AGMJ009537'),
(5, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYCOU', '10781', NULL, 'AOUANA', 'AOUANA', 'YANIS', '7 RUE DE JUSSIEU', NULL, '77520', 'MONTIGNY LENCOUP', NULL, '0698942487', NULL, 'yanisaouana@yahoo.fr', NULL, NULL, NULL, 'HYUNDAI', 'KONA', NULL, 'FF-499-EQ', 'PARTICULIER', '23919', NULL, NULL, NULL, 'MAJ GPS', NULL, NULL, NULL, NULL, 'Atelier', 'KMHK581GFKU027670'),
(6, 'LABOHYMEA', 'GIDAHYBUS', 'VNVOHYBUS', '11534', NULL, NULL, 'ASCIER', NULL, '11 RUE CHARLES CORDIER', NULL, '77164', 'FERRIERES', '0160436116', NULL, NULL, 'COMPTA@ASCIER.FR', NULL, NULL, NULL, 'PEUGEOT', 'PARTNER VU', 'PREMIUM PACK STANDARD BLUE  HDI 75 BVM5', 'FA-307-SB', 'SOCIETE', '35029', 'DIESEL', NULL, NULL, 'PREPA VO', 'VO', 'VO900402', NULL, NULL, 'Atelier', 'VF37BBHW6JJ771713'),
(7, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '1459', 'Mr', 'ATTALI', 'ATTALI', 'WILLIAM', '19 RUE PIERRE DE NAVARRE', NULL, '77100', 'MEAUX', NULL, '0633584700', NULL, 'william.attali@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'SANTA FE FL HEV 230 BVA6 INTUITIVE.', 'GE-814-ZL', 'PARTICULIER', '6', 'PLUG-IN', 'AUGEY PATRICK', NULL, NULL, 'VN', 'VN003696', NULL, NULL, 'Atelier', 'KMHS2811BNU026983'),
(8, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '11428', 'Mr', 'ANDRIEUX', 'ANDRIEUX', 'KEVIN', '70 RUE EMILE ZOLA', NULL, '77124', 'CREGY LES MEAUX', NULL, '0626744790', NULL, 'KEVINANDRIEUX1989@GMAIL.COM', NULL, NULL, NULL, 'HYUNDAI', NULL, 'I20 NG 1.2 84 INTUITIVE', 'GF-344-CC', 'PARTICULIER', '6', 'ESSENCE', 'AUGEY PATRICK', NULL, NULL, 'VN', 'VN003674', NULL, NULL, 'Atelier', 'NLHBN51HANZ144399'),
(9, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '11621', NULL, 'ATLAS AUTO', 'ATLAS AUTO', NULL, NULL, NULL, '77100', 'MEAUX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FH-810-AC', 'PARTICULIER', '24985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'KMHC751HFKU046772'),
(10, 'LABOHYMEA', 'GIDAHYBEA', 'GIDAHYMAX', '7526', 'Mr', 'ADEM', 'ADEM', 'LOUNES', '39 RUE FRANCOIS VILLON', NULL, '95820', 'BRUYERES SUR OISE', NULL, '0626422683', NULL, 'ademlounes@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON A20 CRDI 115 48V CREA', 'FQ-102-RY', 'PARTICULIER', '10147', 'DIESEL', 'VILLAIN URSULLA', NULL, NULL, 'VN', 'VN500204', NULL, NULL, 'Atelier', 'TMAJ3817ALJ082238'),
(11, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA HYB BUSINESS', NULL, 'SOCIETE', '10', 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, 'PLAQUE', 'VN', 'VN002881', NULL, NULL, 'Atelier', 'KMHK381EGNU081404'),
(12, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA HYBRID FL BUSINESS', NULL, 'SOCIETE', '10', 'HYBRIDE', NULL, NULL, 'PLAQUE', 'VN', 'VN002881', NULL, NULL, 'Atelier', 'KMHK381EGNU083078'),
(13, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '9498', NULL, 'ALPHABET', 'ALPHABET', NULL, 'TSA 90001', NULL, '78182', 'ST QUENTIN', NULL, '0778346392', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'CRDI 136 DCT7 48V NLINE EXECUTIVE', 'FX-845-ZS', 'SOCIETE', '33061', 'DIESEL', 'AMALOU KEVIN', NULL, 'MALR', 'VN', 'VN400589', NULL, NULL, 'Atelier', 'TMAJ3817GLJ132557'),
(14, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '11667', NULL, 'ANTONY', 'ANTONY', 'FRANCOIS-XAVIER', '12 RUE DES TOURNELLES', NULL, '77174', 'VILLENEUVE SAINT DENIS', NULL, '0615471798', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'EX-840-XQ', 'PARTICULIER', '35709', NULL, NULL, NULL, 'REV 60 000 KM ET 48 MOIS', NULL, NULL, NULL, NULL, 'Atelier', 'KMHC751DGJU081495'),
(15, 'LABOHYMEA', 'GIDAHYBEA', 'VNVOHYMEA', '11664', 'Mme', 'ADELON', 'ADELON', 'CATHY', '14 CHEMIN PARE', NULL, '77580', 'COULOMMES', NULL, '0626624754', NULL, 'KOULIE@HOTMAIL.FR', NULL, NULL, NULL, 'HYUNDAI', NULL, 'I20 NG TGDI 100DCT 48V NLINE+NAV+BITON', 'GA-304-GQ', 'PARTICULIER', '10', 'ESSENCE', 'AUGEY PATRICK', NULL, 'PREPA VD', 'VN', 'VN003743', NULL, NULL, 'Atelier', 'NLHBR51GGNZ053534'),
(16, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '9883', 'Mme', 'ALLIET', 'ALLIET', 'TIFFANY', '235 RUE DES PETITS PRES', NULL, '60250', 'HEILLES', '0614071011', '0614071011', NULL, 'alliettiffany@gmail.com', NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', 'CRDI 136 CDT-7 CREA RDS', 'FC-301-EB', 'PARTICULIER', '51422', 'DIESEL', NULL, NULL, NULL, 'VO', 'VO080681', NULL, NULL, 'Atelier', 'TMAJ3817GKJ738781'),
(17, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '11580', 'Ste', 'ASMH', 'ASMH', NULL, 'RUE DU PONT DE SAINT LEU', NULL, '60270', 'GOUVIEUX', NULL, '0658460269', NULL, 'annesophiebichut@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'N LINE', 'FP-736-FH', 'PARTICULIER', '33005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJ3817GLJ019165'),
(18, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG PHEV 265 HTRAC EXE', 'GF-536-EF', 'SOCIETE', '10', 'PLUG-IN', NULL, NULL, 'PREPA VN', 'VN', 'VN002881', NULL, NULL, 'Atelier', 'TMAJE812DNJ080026'),
(19, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '11710', 'Mr', 'ASSELINEAU', 'ASSELINEAU', 'FREDERIC', '31 AVENUE DE LA REPUBLIQUE', NULL, '77100', 'MEAUX', NULL, '0626496372', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FX-340-BN', 'PARTICULIER', '22000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJE811BMJ007740'),
(20, 'LABOHYMEA', 'GIDACOU', 'GIDAHYCOU', '9178', 'Mr', NULL, 'ALAVOINE', 'PATRICK', '14 RUE DE LA GARENNE', NULL, '77320', 'CERNEUX', NULL, '0649624031', NULL, 'PATRICKALAVOINE77@HOTMAIL.FR', NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', 'CRDI 141 DCT7 EDITION LOUNGE', 'EK-198-XV', 'PARTICULIER', '74187', 'DIESEL', NULL, 'FERNANDES ANTHONY', NULL, 'VO', 'VO061609', NULL, NULL, 'Atelier', 'TMAJ3815GHJ382366'),
(21, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '6345', 'Mr', 'ANCART', 'ANCART', 'BENJAMIN', '13 RUE JEAN MOULIN', NULL, '77120', 'COULOMMIERS', NULL, '0682246586', NULL, 'benjamin.ancart@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'HYB 230 EXECUTIVE', 'GE-078-YW', 'PARTICULIER', '345', 'HYBRIDE', 'AVILES JEROME', NULL, NULL, 'VN', 'VN003435', NULL, NULL, 'Atelier', 'TMAJE811BNJ078473'),
(22, 'LABOHYMEA', 'VNVOHYMEA', 'VNVOHYMEA', '11668', NULL, 'ASS MAINTIEN DOMICILE PERSONNE', 'ASS MAINTIEN DOMICILE PERSONNE', NULL, '98 AVENUE DE FONTAINEBLEAU', NULL, '77310', 'SAINT FARGEAU PONTHIERRY', '010101010101', NULL, NULL, 'APMAD@ORANGE.FR', NULL, NULL, NULL, 'HYUNDAI', NULL, 'I10 1.0 67 ECO 4P INTUITIVE', NULL, 'SOCIETE', NULL, 'ESSENCE', 'FERNANDES ANTHONY', NULL, NULL, 'VN', 'VN003727', NULL, NULL, 'Véhicule neuf', 'NLHDN51AANZ114042'),
(23, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '11752', NULL, 'ALTO INGENIERIE', 'ALTO INGENIERIE', NULL, '1 DU GUE LANGLOIS', NULL, '77600', 'BUSSY SAINT GEORGES', NULL, '0635078680', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'GD-335-GX', 'PARTICULIER', '4509', NULL, NULL, NULL, 'CAMPAGNE', NULL, NULL, NULL, NULL, 'Atelier', 'TMAJC811BMJ061510'),
(24, 'LABOHYMEA', 'GIDACARPRO', 'GIDAHYMEA', '11628', 'Mme', 'AKAKPO', 'AKAKPO', 'DONANON', '8 AVENUE LEON BLUM', NULL, '93330', 'NEUILLY SUR MARNE', NULL, '0621208476', NULL, 'MARYSE.TODOME@GMAIL.COM', NULL, NULL, NULL, 'SUZUKI', 'SWIFT', '1.2 DUALJET HYBRID 83CH PACK AUTO', 'FX-311-EN', 'PARTICULIER', '3480', 'ESSENCE', NULL, NULL, 'REMISE EN ETAT V O', 'VO', 'VO061870', NULL, NULL, 'Atelier', 'JSAAZCA3S00408936'),
(25, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYMEA', '11722', 'Mr', 'ASANDULUI', 'ASANDULUI', 'CONSTANTIN', '31 RUE PIERRE MENDES FRANCE', NULL, '77100', 'NANTEUIL LES MEAUX', NULL, '0629432757', NULL, 'TICA.ASANDULUI@GMAIL.COM', NULL, NULL, NULL, 'HYUNDAI', 'TUCSON', '1.6 CRDI 136 DCT-7 PREM  RDS', 'FK-827-RX', 'PARTICULIER', '19774', 'DIESEL', NULL, NULL, 'NUL', 'VO', 'VO061964', NULL, NULL, 'Atelier', 'TMAJ3817GLJ992299'),
(26, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FR-074-WS', 'SOCIETE', '20160', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'KMHC751DGLU217281'),
(27, 'LABOHYMEA', 'VNVOHYBUS', 'VNVOHYBUS', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'TOYOTA', 'AYGO', 'aygo 1.0vvt i 68ch', 'CZ-631-LY', 'SOCIETE', '173400', 'ESSENCE', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'JTDKG18C50N049285'),
(28, 'LABOHYMEA', 'VNVOHYBUS', 'VNVOHYBUS', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'PEUGEOT', '3008', '1.6 HDi 16v 110CH fap BMP6 BLUE LION PREMIUM Pack', 'AQ-463-FG', 'SOCIETE', '202654', 'DIESEL', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'VF30U9HZHAS097492'),
(29, 'LABOHYMEA', 'VNVOHYBUS', 'VNVOHYBUS', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'AUDI', 'A4', 'V6 2.7 TDI 190DPF AMBITION LUXE MULTIRONIC A', 'BW-417-NN', 'SOCIETE', '103500', 'DIESEL', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'WAUZZZ8K6CA058214'),
(30, 'LABOHYMEA', 'VNVOHYBUS', 'VNVOHYBUS', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'I30', 'i 30 1.6 crdi 128ch', 'DE-404-SV', 'SOCIETE', '125458', 'DIESEL', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'TMAD351UAEJ127657'),
(31, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYCOU', '1000', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '85 87 AVENUE DU GENERAL DE GAULLE', NULL, '94000', 'CRETEIL', '0680777385', '0672162143', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG HYBRID 230 CREATIVE', 'FZ-434-HT', 'SOCIETE', '30244', 'HYBRIDE', 'BROSSARD JULIEN', NULL, 'OPX', 'VN', NULL, NULL, NULL, 'Atelier', 'TMAJD811BMJ027162'),
(32, 'LABOHYMEA', 'GIDAHYCOU', 'VNVOHYMEA', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'I20', '1.2 PACK INVENTIVE', 'CB-578-NQ', 'SOCIETE', '154759', 'ESSENCE', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Atelier', 'NLHBA51BACZ099364'),
(33, 'LABOHYMEA', 'GIDAHYMEA', 'VNVOHYMEA', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'I30', '1.6 CRDI 110 PACK SENSATION BLUE DRIVE 5P', 'CY-705-CC', 'SOCIETE', '139926', 'DIESEL', NULL, NULL, 'remise', 'VO', NULL, NULL, NULL, 'Atelier', 'TMAD351UAEJ110847'),
(34, 'LABOHYMEA', 'VNVOHYMEA', 'VNVOHYMEA', '1362', 'Ste', NULL, 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'PEUGEOT', '5008', '1.6 HDi112 FAP Allure 7pl', 'BL-105-NP', 'SOCIETE', '179318', 'DIESEL', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'VF3OE9HR8BS104842'),
(35, 'LABOHYMEA', 'VNVOHYMEA', 'VNVOHYMEA', '1362', 'Ste', 'AUTOS LINE', 'AUTOS LINE', NULL, '255 RN6', NULL, '77240', 'VERT SAINT DENIS', '0160636319', NULL, NULL, NULL, NULL, NULL, NULL, 'PEUGEOT', '308', '1.6 hdi 110 fap premium pack', 'AQ-781-HR', 'SOCIETE', '214510', 'DIESEL', NULL, NULL, NULL, 'VO', NULL, NULL, NULL, 'Véhicule d\'occasion', 'VF34C9HZC9S199531'),
(36, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '10570', NULL, 'A.S.R.A.', 'A.S.R.A.', NULL, '80 IMPASSE BOIS SAVONNETTE', NULL, '97232', 'LE LAMENTIN', NULL, '0613433465', NULL, 'ka360pro@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG PHEV 265 HTRAC NLINE EX+TO', 'GF-357-KM', 'SOCIETE', '9', 'PLUG-IN', 'LAURENT SEBASTIEN', NULL, NULL, 'VN', 'VN301386', NULL, NULL, 'Atelier', 'TMAJB812DNJ079208'),
(37, 'LABOHYMEA', 'GIDACOU', 'GIDAHYCOU', '2577', NULL, 'AUDEMAR', 'AUDEMAR', 'CEDRIC', '3 AVENUE DU GENERAL DE GAULLE', NULL, '77440', 'LIZY SUR OURCQ', NULL, '0695204769', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'IX35', NULL, 'BZ-300-SR', 'PARTICULIER', '259122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJU81VACJ231649'),
(38, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '997', 'Ste', 'ARVAL', 'ARVAL', NULL, '1 RUE CHEMIN BLANC', NULL, '91160', 'LONGJUMEAU', NULL, '0752635442', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'GD-323-WK', 'PARTICULIER', '2998', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'KMHK381EGNU077843'),
(39, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '1000', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '85 87 AVENUE DU GENERAL DE GAULLE', NULL, '94000', 'CRETEIL', '0680777385', '0672162143', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG PHEV 265 HTRAC EXE', 'GF-112-CG', 'SOCIETE', '10', 'PLUG-IN', 'ROUBAUDI HUGO', NULL, 'PREPA VN', 'VN', NULL, NULL, NULL, 'Atelier', 'TMAJE812DNJ080121'),
(40, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG CRDI 136 DCT 48V BUSINESS', 'GE-375-VB', 'SOCIETE', '10', 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, NULL, 'VN', 'VN002881', NULL, NULL, 'Magasin', 'TMAJC81AGNJ164034'),
(41, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG CRDI 136 DCT 48V BUSINESS', 'GE-562-ZW', 'SOCIETE', '10', 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, 'PREPA VN', 'VN', 'VN002881', NULL, NULL, 'Atelier', 'TMAJC81AGNJ163698'),
(42, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA HYB BUSINESS', NULL, 'SOCIETE', NULL, 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, NULL, 'VN', 'VN002881', NULL, NULL, 'Magasin', 'KMHK381EGNU088038'),
(43, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA HYB BUSINESS', NULL, 'SOCIETE', NULL, 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, NULL, 'VN', 'VN002881', NULL, NULL, 'Magasin', 'KMHK381EGNU088039'),
(44, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYCOU', '9218', 'Mme', 'ADIN', 'ADIN', 'JULIA', '2 RUE DE FLORE', NULL, '77124', 'CREGY LES MEAUX', NULL, '0695821538', NULL, 'julanj@orange.fr', NULL, NULL, NULL, 'HYUNDAI', NULL, 'I10 NG 1.0 67 ECO 4P INITIA MY21', 'FY-262-GZ', 'PARTICULIER', '7012', 'ESSENCE', 'FERNANDES ANTHONY', NULL, NULL, 'VN', 'VN002950', NULL, NULL, 'Magasin', 'NLHDM51AAMZ059841'),
(45, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '11862', 'Mr', 'AMKHAOU', 'AMKHAOU', 'TAHAR', '8 RUE JULES LOPARD', NULL, '77450', 'ESBLY', NULL, '0621970696', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'EM-346-HY', 'PARTICULIER', '106840', NULL, NULL, NULL, 'rev 105000 kms', NULL, NULL, NULL, NULL, 'Atelier', 'KMHC751CGHU028166'),
(46, 'LABOHYMEA', 'GIDACOU', 'GIDAHYCOU', '4939', NULL, 'AUTOMATIC SYSTEMS', 'AUTOMATIC SYSTEMS', NULL, '22 RUE DU 8 MAI 1945', NULL, '95340', 'PERSAN', NULL, '0613214171', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'EV-728-KD', 'PARTICULIER', '157119', NULL, NULL, NULL, 'CHOC', NULL, NULL, NULL, NULL, 'Atelier', 'TMAH3517AJJ061192'),
(47, 'LABOHYMEA', 'GIDAHYCOU', 'GIDAHYMEA', '10587', NULL, 'APTIV HOLDING FRANCE', 'APTIV HOLDING FRANCE', NULL, 'RUE DES LONGS REAGES', NULL, '28230', 'EPERNON', NULL, '0684367621', NULL, 'henri.lefevre@aptiv.com', NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FW-299-MV', 'PARTICULIER', '19398', NULL, NULL, NULL, 'nul', NULL, NULL, NULL, NULL, 'Atelier', 'TMAJE811BMJ006127'),
(48, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FZ-279-XC', 'SOCIETE', '17217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJE812DNJ033343'),
(49, 'LABOHYMEA', 'GIDACARPRO', 'GIDAHYCOU', '11554', 'Mr', NULL, 'AGOUDJIL', 'HAMID', '2 B RUE ST AIGNAN', NULL, '77171', 'LECHELLE', NULL, '0616500734', NULL, 'h.agoudjil02@yahoo.fr', NULL, NULL, NULL, 'HYUNDAI', 'IONIQ', 'ioniq fl hyb creative', 'FT-476-JD', 'PARTICULIER', '26644', 'HYBRIDE', NULL, NULL, 'remise en etat v o', 'VO', 'VO061843', NULL, NULL, 'Atelier', 'KMHC851CGLU202194'),
(50, 'LABOHYMEA', 'GIDACOU', 'GIDAHYCOU', '2577', NULL, 'AUDEMAR', 'AUDEMAR', 'CEDRIC', '3 AVENUE DU GENERAL DE GAULLE', NULL, '77440', 'LIZY SUR OURCQ', NULL, '0695204769', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', 'SANTA FE', NULL, 'FJ-646-SK', 'PARTICULIER', '61861', NULL, NULL, NULL, 'carro', NULL, NULL, NULL, NULL, 'Atelier', 'KMHS381BDLU199918'),
(51, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '5542', 'Gge', 'ABCIS PICARDIE', 'ABCIS PICARDIE', NULL, '62 RUE DES DROITS DE L HOMME', NULL, '60740', 'SAINT MAXIMIN', '0344646060', NULL, NULL, 'elodie.duretz@emilfrey.fr', NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'JJ474031', 'SOCIETE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJ3815AJJ474031'),
(52, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '1000', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '85 87 AVENUE DU GENERAL DE GAULLE', NULL, '94000', 'CRETEIL', '0680777385', '0672162143', NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'IONIQ 5 73 KWH EXE', '16161', 'SOCIETE', '11', 'ELECTRIQUE', 'MIROGLIO CLARISSE', NULL, 'PREPA VN', 'VN', NULL, NULL, NULL, 'Atelier', 'KMHKR81AFNU074781'),
(53, 'LABOHYMEA', 'GIDAHYBEA', 'GIDAHYBEA', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'CRDI 136 DCT-7 48V NLINE EDITION + TO', 'FS-836-WN', 'SOCIETE', '60921', 'DIESEL', 'VILLAIN URSULLA', NULL, 'MALR', 'VN', NULL, NULL, NULL, 'Atelier', 'TMAJ3817GLJ131994'),
(54, 'LABOHYMEA', 'GIDACOU', 'GIDACOU', '11421', NULL, 'AFMTBT', 'AFMTBT', NULL, '1 RUE TRISTAN TZARA', 'TZARA', '75018', 'PARIS-18E__ARRONDISSEMENT', NULL, '0675333649', NULL, 'PRESTIAJO@YAHOO.FR', NULL, NULL, NULL, 'HYUNDAI', 'IONIQ', 'MY 18 HYBRID INTUITIVE', 'ET-113-PG', 'SOCIETE', '23315', 'DIESEL', NULL, NULL, NULL, 'VO', 'VO900403', NULL, NULL, 'Atelier', 'KMHC751CGJU070624'),
(55, 'LABOHYMEA', 'VNVOHYMAX', 'VNVOHYMAX', '3536', 'Ste', 'AUTO LINE', 'AUTO LINE', NULL, '255 ROUTE DEPARTEMENTALE 306', NULL, '77240', 'VERT SAINT DENIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VOLKSWAGEN', 'TIGUAN', '2.0 TDI 140CH FAP SPORT & STYLE 4X2', 'AX-658-ML', 'PARTICULIER', '163601', 'DIESEL', NULL, NULL, NULL, 'VO', 'VO061007', NULL, NULL, 'Véhicule d\'occasion', 'WVGZZZ5NZBW015078'),
(56, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'GC-937-GP', 'SOCIETE', '17545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJE812DNJ045741'),
(57, 'LABOHYMEA', 'GIDAHYMAX', 'GIDAHYMAX', '11591', NULL, 'ASSISTANCE SERRURERIE ANTONIO', 'ASSISTANCE SERRURERIE ANTONIO', NULL, '36 RUE LEON BOUFFLET', NULL, '60740', 'SAINT MAXIMIN', NULL, '0603811973', NULL, 'asantoniopalma@yahoo.fr', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA ELECRTIC FL 64 KWH INTUITIVE PACK', 'GF-008-WT', 'SOCIETE', '2', 'ELECTRIQUE', 'LAURENT SEBASTIEN', NULL, NULL, 'VN', 'VN301551', NULL, NULL, 'Atelier', 'TMAK281GFNJ056897'),
(58, 'LABOHYMEA', 'GIDAHYMEA', 'GIDAHYMEA', '5831', NULL, 'AUTO SAINT MARD', 'AUTO SAINT MARD', NULL, '2 ALLEE FONTAINE DES TOURNELLES', NULL, '77230', 'SAINT MARD', '0164025818', NULL, NULL, 'ASMSL.77@wanadoo.fr', NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FP-551-CE', 'SOCIETE', '34906', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'KMHK381EGLU009044'),
(59, 'LABOHYMEA', 'GIDAHYMEA', 'VNVOHYMEA', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, 'TUCSON NG HYBRID 230 BUSINESS+SS', 'GF-562-VG', 'SOCIETE', '6', 'HYBRIDE', 'AUGEY PATRICK', NULL, NULL, 'VN', NULL, NULL, NULL, 'Atelier', 'TMAJC811BNJ085608'),
(60, 'LABOHYMEA', 'GIDAHYBEA', 'GIDAHYBEA', '7648', 'Ste', 'ARVAL SERVICE LEASE', 'ARVAL SERVICE LEASE', NULL, '22 RUE DES 2 GARES', NULL, '92564', 'RUEIL MALMAISON CEDEX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HYUNDAI', NULL, NULL, 'FZ-936-QX', 'SOCIETE', '34012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Atelier', 'TMAJC81AGMJ031770'),
(61, 'LABOHYMEA', 'GIDAHYBUS', 'GIDAHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'IONIQ 5 73KWH INTUITIVE', '*1**', 'SOCIETE', '1', 'ELECTRIQUE', 'MIROGLIO CLARISSE', NULL, 'PREPA VN', 'VN', 'VN002881', NULL, NULL, 'Atelier', 'KMHKM81AFNU044549'),
(62, 'LABOHYMEA', 'VNVOHYBUS', 'VNVOHYBUS', '8195', NULL, 'ATHLON CAR LEASE', 'ATHLON CAR LEASE', NULL, '53 AVENUE JEAN JAURES', NULL, '93350', 'LE BOURGET', NULL, '0674441722', NULL, 'georges.dossantos@gmail.com', NULL, NULL, NULL, 'HYUNDAI', NULL, 'KONA HYBRID FL BUSINESS', NULL, 'SOCIETE', NULL, 'HYBRIDE', 'MIROGLIO CLARISSE', NULL, NULL, 'VN', 'VN002881', NULL, NULL, 'Véhicule neuf', 'KMHK381EGNU088738'),
(63, 'LABOHYMEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_880E0D76E7927C74` (`email`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
