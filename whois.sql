-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 03, 2018 at 11:17 AM
-- Server version: 5.6.37-82.2-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tkewobnu_whois`
--

-- --------------------------------------------------------

--
-- Table structure for table `ns_list`
--

CREATE TABLE IF NOT EXISTS `ns_list` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nameserver` varchar(250) NOT NULL,
  `server_name` varchar(250) NOT NULL,
  `server_url` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `whois_list`
--

CREATE TABLE IF NOT EXISTS `whois_list` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(20) DEFAULT NULL,
  `registry` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`wid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=333 ;

--
-- Dumping data for table `whois_list`
--

INSERT INTO `whois_list` (`wid`, `extension`, `registry`, `status`) VALUES
(1, 'com', 'whois.crsnic.net', 1),
(2, 'net', 'whois.crsnic.net', 1),
(3, 'org', 'whois.pir.org', 1),
(4, 'edu', 'whois.crsnic.net', 1),
(5, 'biz', 'whois.neulevel.biz', 1),
(6, 'info', 'whois.afilias.info', 1),
(7, 'us', 'whois.nic.us', 1),
(8, 'uk', 'whois.nic.uk', 1),
(9, 'ca', 'whois.cira.ca', 1),
(10, 'de', 'whois.nic.de', 1),
(11, 'ws', 'whois.nic.ws', 1),
(12, 'au', 'whois.ausregistry.net.au', 1),
(13, 'nu', 'whois.nic.nu', 1),
(14, 'in', 'whois.registry.in', 1),
(15, 'tel', 'whois.nic.tel', 1),
(16, 'ie', 'whois.iedr.ie', 1),
(17, 'tw', 'whois.twnic.net.tw', 1),
(18, 'tv', 'whois.nic.tv', 1),
(19, 'ch', 'whois.nic.ch', 1),
(20, 'eu', 'whois.eu', 1),
(21, 'it', 'whois.nic.it', 1),
(22, 'cn', 'whois.cnnic.net.cn', 1),
(23, 'mobi', 'whois.dotmobiregistry.net', 1),
(24, 'cc', 'whois.nic.cc', 1),
(25, 'asia', 'whois.nic.asia', 1),
(26, 'pro', 'whois.registrypro.pro', 1),
(27, 'hk', 'whois.hknic.net.hk', 1),
(28, 'me', 'whois.meregistry.net', 1),
(29, 'be', 'whois.dns.be', 1),
(30, 'se', 'whois.nic.se', 1),
(31, 'ca', 'whois.cira.ca', 1),
(32, 'nz', 'whois.domainz.net.nz', 1),
(33, 'nl', 'whois.sidn.nl', 1),
(34, 'ventures', 'whois.donuts.co', 1),
(35, 'singles', 'whois.donuts.co', 1),
(36, 'bike', 'whois.donuts.co', 1),
(37, 'holdings', 'whois.donuts.co', 1),
(38, 'plumbing', 'whois.donuts.co', 1),
(39, 'guru', 'whois.donuts.co', 1),
(40, 'clothing', 'whois.donuts.co', 1),
(41, 'camera', 'whois.donuts.co', 1),
(42, 'equipment', 'whois.donuts.co', 1),
(43, 'estate', 'whois.donuts.co', 1),
(44, 'gallery', 'whois.donuts.co', 1),
(45, 'graphics', 'whois.donuts.co', 1),
(46, 'lighting', 'whois.donuts.co', 1),
(47, 'photography', 'whois.donuts.co', 1),
(48, 'contractors', 'whois.donuts.co', 1),
(49, 'land', 'whois.donuts.co', 1),
(50, 'technology', 'whois.donuts.co', 1),
(51, 'construction', 'whois.donuts.co', 1),
(52, 'directory', 'whois.donuts.co', 1),
(53, 'kitchen', 'whois.donuts.co', 1),
(54, 'today', 'whois.donuts.co', 1),
(55, 'diamonds', 'whois.donuts.co', 1),
(56, 'enterprises', 'whois.donuts.co', 1),
(57, 'tips', 'whois.donuts.co', 1),
(58, 'voyage', 'whois.donuts.co', 1),
(59, 'shoes', 'whois.donuts.co', 1),
(60, 'careers', 'whois.donuts.co', 1),
(61, 'photos', 'whois.donuts.co', 1),
(62, 'recipes', 'whois.donuts.co', 1),
(63, 'limo', 'whois.donuts.co', 1),
(64, 'domains', 'whois.donuts.co', 1),
(65, 'cab', 'whois.donuts.co', 1),
(66, 'company', 'whois.donuts.co', 1),
(67, 'computer', 'whois.donuts.co', 1),
(68, 'center', 'whois.donuts.co', 1),
(69, 'systems', 'whois.donuts.co', 1),
(70, 'academy', 'whois.donuts.co', 1),
(71, 'management', 'whois.donuts.co', 1),
(72, 'training', 'whois.donuts.co', 1),
(73, 'solutions', 'whois.donuts.co', 1),
(74, 'support', 'whois.donuts.co', 1),
(75, 'builders', 'whois.donuts.co', 1),
(76, 'email', 'whois.donuts.co', 1),
(77, 'education', 'whois.donuts.co', 1),
(78, 'institute', 'whois.donuts.co', 1),
(79, 'repair', 'whois.donuts.co', 1),
(80, 'camp', 'whois.donuts.co', 1),
(81, 'glass', 'whois.donuts.co', 1),
(82, 'solar', 'whois.donuts.co', 1),
(83, 'coffee', 'whois.donuts.co', 1),
(84, 'international', 'whois.donuts.co', 1),
(85, 'house', 'whois.donuts.co', 1),
(86, 'florist', 'whois.donuts.co', 1),
(87, 'holiday', 'whois.donuts.co', 1),
(88, 'marketing', 'whois.donuts.co', 1),
(89, 'viajes', 'whois.donuts.co', 1),
(90, 'farm', 'whois.donuts.co', 1),
(91, 'codes', 'whois.donuts.co', 1),
(92, 'cheap', 'whois.donuts.co', 1),
(93, 'zone', 'whois.donuts.co', 1),
(94, 'agency', 'whois.donuts.co', 1),
(95, 'bargains', 'whois.donuts.co', 1),
(96, 'boutique', 'whois.donuts.co', 1),
(97, 'tienda', 'whois.donuts.co', 1),
(98, 'watch', 'whois.donuts.co', 1),
(99, 'works', 'whois.donuts.co', 1),
(100, 'cool', 'whois.donuts.co', 1),
(101, 'expert', 'whois.donuts.co', 1),
(102, 'menu', 'whois.nic.menu', 1),
(103, 'club', 'whois.nic.club', 1),
(104, 'photo', 'whois.uniregistry.net', 1),
(105, 'gift', 'whois.uniregistry.net', 1),
(106, 'guitars', 'whois.uniregistry.net', 1),
(107, 'pics', 'whois.uniregistry.net', 1),
(108, 'link', 'whois.uniregistry.net', 1),
(109, 'sexy', 'whois.uniregistry.net', 1),
(110, 'tattoo', 'whois.uniregistry.net', 1),
(111, 'reviews', 'whois.unitedtld.com', 1),
(112, 'ms', 'whois.nic.ms', 1),
(113, 'uno', 'whois.nic.uno', 1),
(114, 'buzz', 'whois.nic.buzz', 1),
(115, 'berlin', 'whois.nic.berlin', 1),
(116, 'com', 'whois.verisign-grs.com', 1),
(117, 'net', 'whois.verisign-grs.com', 1),
(118, 'org', 'whois.publicinterestregistry.net', 1),
(119, 'info', 'whois.afilias.net', 1),
(120, 'ie', 'whois.domainregistry.ie', 1),
(121, 'li', 'whois.nic.li', 1),
(122, 'no', 'whois.norid.no', 1),
(123, 'au', 'whois.aunic.net', 1),
(124, 'de', 'whois.denic.de', 1),
(125, 'ws', 'whois.worldsite.ws', 1),
(126, 'ws', 'www.nic.ws', 1),
(127, 'sc', 'whois2.afilias-grs.net', 1),
(128, 'pro', 'whois.registry.pro', 1),
(129, 'edu', 'whois.educause.net', 1),
(130, 'tv', 'tvwhois.verisign-grs.com', 1),
(131, 'travel', 'whois.nic.travel', 1),
(132, 'name', 'whois.nic.name', 1),
(133, 'in', 'whois.inregistry.net', 1),
(134, 'me', 'whois.nic.me', 1),
(135, 'at', 'whois.nic.at', 1),
(136, 'cn', 'whois.cnnic.cn', 1),
(137, 'ru', 'whois.ripn.ru', 1),
(138, 'ru', 'whois.ripn.net', 1),
(139, 'ro', 'whois.rotld.ro', 1),
(140, 'aero', 'whois.aero', 1),
(141, 'fr', 'whois.nic.fr', 1),
(142, 'se', 'whois.iis.se', 1),
(143, 'se', 'whois.nic-se.se', 1),
(144, 'nl', 'whois.domain-registry.nl', 1),
(145, 'nz', 'whois.srs.net.nz', 1),
(146, 'mx', 'whois.nic.mx', 1),
(147, 'tw', 'whois.apnic.net', 1),
(148, 'ac', 'whois.nic.ac', 1),
(149, 'ae', 'whois.nic.ae', 1),
(150, 'af', 'whois.nic.af', 1),
(151, 'ag', 'whois.nic.ag', 1),
(152, 'al', 'whois.ripe.net', 1),
(153, 'am', 'whois.amnic.net', 1),
(154, 'as', 'whois.nic.as', 1),
(155, 'az', 'whois.ripe.net', 1),
(156, 'ba', 'whois.ripe.net', 1),
(157, 'bg', 'whois.register.bg', 1),
(158, 'bi', 'whois.nic.bi', 1),
(159, 'bj', 'www.nic.bj', 1),
(160, 'br', 'whois.nic.br', 1),
(161, 'bt', 'whois.netnames.net', 1),
(162, 'by', 'whois.ripe.net', 1),
(163, 'bz', 'whois.belizenic.bz', 1),
(164, 'cd', 'whois.nic.cd', 1),
(165, 'ck', 'whois.nic.ck', 1),
(166, 'cl', 'nic.cl', 1),
(167, 'coop', 'whois.nic.coop', 1),
(168, 'cx', 'whois.nic.cx', 1),
(169, 'cy', 'whois.ripe.net', 1),
(170, 'cz', 'whois.nic.cz', 1),
(171, 'dk', 'whois.dk-hostmaster.dk', 1),
(172, 'dm', 'whois.nic.cx', 1),
(173, 'dz', 'whois.ripe.net', 1),
(174, 'ee', 'whois.eenet.ee', 1),
(175, 'eg', 'whois.ripe.net', 1),
(176, 'es', 'whois.ripe.net', 1),
(177, 'fi', 'whois.ficora.fi', 1),
(178, 'fo', 'whois.ripe.net', 1),
(179, 'gb', 'whois.ripe.net', 1),
(180, 'ge', 'whois.ripe.net', 1),
(181, 'gl', 'whois.ripe.net', 1),
(182, 'gm', 'whois.ripe.net', 1),
(183, 'gov', 'whois.nic.gov', 1),
(184, 'gr', 'whois.ripe.net', 1),
(185, 'gs', 'whois.adamsnames.tc', 1),
(186, 'hm', 'whois.registry.hm', 1),
(187, 'hn', 'whois2.afilias-grs.net', 1),
(188, 'hr', 'whois.ripe.net', 1),
(189, 'hu', 'whois.ripe.net', 1),
(190, 'il', 'whois.isoc.org.il', 1),
(191, 'int', 'whois.isi.edu', 1),
(192, 'iq', 'vrx.net', 1),
(193, 'ir', 'whois.nic.ir', 1),
(194, 'is', 'whois.isnic.is', 1),
(195, 'je', 'whois.je', 1),
(196, 'jp', 'whois.jprs.jp', 1),
(197, 'kg', 'whois.domain.kg', 1),
(198, 'kr', 'whois.nic.or.kr', 1),
(199, 'la', 'whois2.afilias-grs.net', 1),
(200, 'lt', 'whois.domreg.lt', 1),
(201, 'lu', 'whois.restena.lu', 1),
(202, 'lv', 'whois.nic.lv', 1),
(203, 'ly', 'whois.lydomains.com', 1),
(204, 'ma', 'whois.iam.net.ma', 1),
(205, 'mc', 'whois.ripe.net', 1),
(206, 'md', 'whois.nic.md', 1),
(207, 'mil', 'whois.nic.mil', 1),
(208, 'mk', 'whois.ripe.net', 1),
(209, 'mt', 'whois.ripe.net', 1),
(210, 'mu', 'whois.nic.mu', 1),
(211, 'my', 'whois.mynic.net.my', 1),
(212, 'nf', 'whois.nic.cx', 1),
(213, 'pl', 'whois.dns.pl', 1),
(214, 'pr', 'whois.nic.pr', 1),
(215, 'pt', 'whois.dns.pt', 1),
(216, 'sa', 'saudinic.net.sa', 1),
(217, 'sb', 'whois.nic.net.sb', 1),
(218, 'sg', 'whois.nic.net.sg', 1),
(219, 'sh', 'whois.nic.sh', 1),
(220, 'si', 'whois.arnes.si', 1),
(221, 'sk', 'whois.sk-nic.sk', 1),
(222, 'sm', 'whois.ripe.net', 1),
(223, 'st', 'whois.nic.st', 1),
(224, 'su', 'whois.ripn.net', 1),
(225, 'tc', 'whois.adamsnames.tc', 1),
(226, 'tf', 'whois.nic.tf', 1),
(227, 'th', 'whois.thnic.net', 1),
(228, 'tj', 'whois.nic.tj', 1),
(229, 'tk', 'whois.nic.tk', 1),
(230, 'tl', 'whois.domains.tl', 1),
(231, 'tm', 'whois.nic.tm', 1),
(232, 'tn', 'whois.ripe.net', 1),
(233, 'to', 'whois.tonic.to', 1),
(234, 'tp', 'whois.domains.tl', 1),
(235, 'tr', 'whois.nic.tr', 1),
(236, 'ua', 'whois.ripe.net', 1),
(237, 'uy', 'nic.uy', 1),
(238, 'uz', 'whois.cctld.uz', 1),
(239, 'va', 'whois.ripe.net', 1),
(240, 'vc', 'whois2.afilias-grs.net', 1),
(241, 've', 'whois.nic.ve', 1),
(242, 'vg', 'whois.adamsnames.tc', 1),
(243, 'yu', 'whois.ripe.net', 1),
(244, 'ai', 'whois.ai', 1),
(245, 'arpa', 'whois.iana.org', 1),
(246, 'ax', 'whois.ax', 1),
(247, 'biz', 'whois.biz', 1),
(248, 'bj', 'whois.nic.bj', 1),
(249, 'bn', 'whois.bn', 1),
(250, 'bo', 'whois.nic.bo', 1),
(251, 'br', 'whois.registro.br', 1),
(252, 'by', 'whois.cctld.by', 1),
(253, 'cat', 'whois.cat', 1),
(254, 'ci', 'whois.nic.ci', 1),
(255, 'cl', 'whois.nic.cl', 1),
(256, 'co', 'whois.nic.co', 1),
(257, 'dm', 'whois.nic.dm', 1),
(258, 'dz', 'whois.nic.dz', 1),
(259, 'ec', 'whois.nic.ec', 1),
(260, 'edu', 'whois.educause.edu', 1),
(261, 'es', 'whois.nic.es', 1),
(262, 'fo', 'whois.nic.fo', 1),
(263, 'gd', 'whois.nic.gd', 1),
(264, 'gg', 'whois.gg', 1),
(265, 'gi', 'whois2.afilias-grs.net', 1),
(266, 'gl', 'whois.nic.gl', 1),
(267, 'gs', 'whois.nic.gs', 1),
(268, 'gy', 'whois.registry.gy', 1),
(269, 'hk', 'whois.hkirc.hk', 1),
(270, 'hn', 'whois.nic.hn', 1),
(271, 'hr', 'whois.dns.hr', 1),
(272, 'ht', 'whois.nic.ht', 1),
(273, 'hu', 'whois.nic.hu', 1),
(274, 'im', 'whois.nic.im', 1),
(275, 'int', 'whois.iana.org', 1),
(276, 'io', 'whois.nic.io', 1),
(277, 'iq', 'whois.cmc.iq', 1),
(278, 'jobs', 'jobswhois.verisign-grs.com', 1),
(279, 'ke', 'whois.kenic.or.ke', 1),
(280, 'kg', 'www.domain.kg', 1),
(281, 'ki', 'whois.nic.ki', 1),
(282, 'kr', 'whois.kr', 1),
(283, 'kz', 'whois.nic.kz', 1),
(284, 'la', 'whois.nic.la', 1),
(285, 'lu', 'whois.dns.lu', 1),
(286, 'ly', 'whois.nic.ly', 1),
(287, 'mg', 'whois.nic.mg', 1),
(288, 'ml', 'whois.dot.ml', 1),
(289, 'mn', 'whois.nic.mn', 1),
(290, 'mo', 'whois.monic.mo', 1),
(291, 'mp', 'whois.nic.mp', 1),
(292, 'museum', 'whois.museum', 1),
(293, 'mx', 'whois.mx', 1),
(294, 'my', 'whois.domainregistry.my', 1),
(295, 'na', 'whois.na-nic.com.na', 1),
(296, 'nc', 'whois.nc', 1),
(297, 'net', 'whois.verisign-grs.net', 1),
(298, 'nf', 'whois.nic.nf', 1),
(299, 'ng', 'whois.nic.net.ng', 1),
(300, 'om', 'whois.registry.om', 1),
(301, 'pe', 'kero.yachay.pe', 1),
(302, 'pf', 'whois.registry.pf', 1),
(303, 'pm', 'whois.nic.pm', 1),
(304, 'post', 'whois.dotpostregistry.net', 1),
(305, 'pro', 'whois.dotproregistry.net', 1),
(306, 'pw', 'whois.nic.pw', 1),
(307, 'qa', 'whois.registry.qa', 1),
(308, 're', 'whois.nic.re', 1),
(309, 'rs', 'whois.rnids.rs', 1),
(310, 'ru', 'whois.tcinet.ru', 1),
(311, 'sa', 'whois.nic.net.sa', 1),
(312, 'sg', 'whois.sgnic.sg', 1),
(313, 'sm', 'whois.nic.sm', 1),
(314, 'sn', 'whois.nic.sn', 1),
(315, 'so', 'whois.nic.so', 1),
(316, 'su', 'whois.tcinet.ru', 1),
(317, 'sx', 'whois.sx', 1),
(318, 'sy', 'whois.tld.sy', 1),
(319, 'tc', 'whois.meridiantld.net', 1),
(320, 'th', 'whois.thnic.co.th', 1),
(321, 'tk', 'whois.dot.tk', 1),
(322, 'tl', 'whois.nic.tl', 1),
(323, 'tn', 'whois.ati.tn', 1),
(324, 'tp', 'whois.nic.tl', 1),
(325, 'tz', 'whois.tznic.or.tz', 1),
(326, 'ua', 'whois.ua', 1),
(327, 'ug', 'whois.co.ug', 1),
(328, 'uy', 'whois.nic.org.uy', 1),
(329, 'wf', 'whois.nic.wf', 1),
(330, 'ws', 'whois.website.ws', 1),
(331, 'xxx', 'whois.nic.xxx', 1),
(332, 'yt', 'whois.nic.yt', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
