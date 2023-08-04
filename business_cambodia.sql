-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 16, 2023 at 03:49 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business_cambodia`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `password`, `gender`, `email`, `telephone`) VALUES
(2, 'dymong', '0110', 'female', 'thaidymong@gmail.com', '087381833'),
(10, 'Fort', 'fort001', 'male', 'fort001@gmail.com', '0874364733');

-- --------------------------------------------------------

--
-- Table structure for table `tb_banner`
--

DROP TABLE IF EXISTS `tb_banner`;
CREATE TABLE IF NOT EXISTS `tb_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text NOT NULL,
  `title` text NOT NULL,
  `btnTiitle` varchar(50) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_banner`
--

INSERT INTO `tb_banner` (`id`, `date`, `title`, `btnTiitle`, `photo`) VALUES
(2, '2023-01-06', 'update', 'read more', 'Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tb_news`
--

DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE IF NOT EXISTS `tb_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `date` text,
  `publisher` varchar(40) DEFAULT NULL,
  `title_detail1` text,
  `title_detail2` text,
  `thumnail_card` text,
  `thumnail_detail1` text,
  `thumnail_detail2` text,
  `thumnail_detail3` text,
  `thumnail_detail4` text,
  `type` text,
  `viewers` int(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_news`
--

INSERT INTO `tb_news` (`id`, `title`, `date`, `publisher`, `title_detail1`, `title_detail2`, `thumnail_card`, `thumnail_detail1`, `thumnail_detail2`, `thumnail_detail3`, `thumnail_detail4`, `type`, `viewers`) VALUES
(116, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '105-a.webp', '326-a.webp', '863-a.webp', '517-a.webp', '641-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', 5),
(29, ' today new', '2023-01-07', ' Thai Dymong', 'test', ' ppp', '666-cookie7.jfif', '494-cookie6.jfif', '420-cookie7.jfif', '464-cookie6.jfif', '986-cookie6.jfif', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', 4),
(106, ' Text & Call OnlineMy AccountLog Out ', '2023-01-27', 'Neitro Neito', ' Text & Call OnlineMy AccountLog Out ', ' Text & Call OnlineMy AccountLog Out ', '562-camera3.jfif', '123-camera3.jfif', '481-camera3.jfif', '118-camera3.jfif', '94-camera3.jfif', 'áž€áŸ†áž–áž¼áž›áž¢áŸ’áž“áž€áž›áž€áŸ‹', NULL),
(32, '  bvcvdfd', '2023-01-14', ' Thai Dymong', 'The text-shadow CSS property adds shadows to text', ' start', '226-img-1.jfif', '176-img-1.jfif', '385-img-1.jfif', '339-img-1.jfif', '76-img-1.jfif', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', 49),
(31, ' mbssnmsbnpewnew', '2023-01-20', ' dalin', 'The text-shadow CSS property adds shadows to text', ' The text-shadow CSS property adds shadows to text', '165-chuttersnap-204605-unsplash-1024x684.jpg', '815-164500926753689.png', '517-164500926753689.png', '835-164500926753689.png', '458-164500926753689.png', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', 7),
(129, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '85-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '673-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '234-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '647-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '402-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', NULL),
(107, ' Text & Call OnlineMy AccountLog Out ', '2023-01-27', 'Neitro Neito', ' Text & Call OnlineMy AccountLog Out ', ' Text & Call OnlineMy AccountLog Out ', '917-camera3.jfif', '102-camera3.jfif', '891-camera3.jfif', '839-camera3.jfif', '899-camera3.jfif', 'áž€áŸ†áž–áž¼áž›áž¢áŸ’áž“áž€áž›áž€áŸ‹', 1),
(103, ' Text & Call OnlineMy AccountLog Out ', '2023-01-27', 'Neitro Neito', ' Text & Call OnlineMy AccountLog Out ', ' Text & Call OnlineMy AccountLog Out ', '699-camera3.jfif', '575-camera3.jfif', '956-camera3.jfif', '225-camera3.jfif', '351-camera3.jfif', 'áž€áŸ†áž–áž¼áž›áž¢áŸ’áž“áž€áž›áž€áŸ‹', 1),
(127, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '147-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '530-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '68-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '266-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '639-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', 2),
(128, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '917-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '511-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '559-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '389-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '697-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', NULL),
(115, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '841-a.webp', '706-a.webp', '628-a.webp', '732-a.webp', '750-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL),
(131, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '664-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '967-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '459-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '23-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '652-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', NULL),
(121, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '639-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '49-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '329-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '343-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '811-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', 3),
(132, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '920-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '762-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '114-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '386-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '191-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', NULL),
(114, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '980-a.webp', '590-a.webp', '204-a.webp', '48-a.webp', '122-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL),
(104, ' Text & Call OnlineMy AccountLog Out ', '2023-01-27', 'Neitro Neito', ' Text & Call OnlineMy AccountLog Out ', ' Text & Call OnlineMy AccountLog Out ', '869-camera3.jfif', '946-camera3.jfif', '295-camera3.jfif', '642-camera3.jfif', '939-camera3.jfif', 'áž€áŸ†áž–áž¼áž›áž¢áŸ’áž“áž€áž›áž€áŸ‹', NULL),
(105, ' Text & Call OnlineMy AccountLog Out ', '2023-01-27', 'Neitro Neito', ' Text & Call OnlineMy AccountLog Out ', ' Text & Call OnlineMy AccountLog Out ', '94-camera3.jfif', '523-camera3.jfif', '619-camera3.jfif', '968-camera3.jfif', '558-camera3.jfif', 'áž€áŸ†áž–áž¼áž›áž¢áŸ’áž“áž€áž›áž€áŸ‹', NULL),
(122, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '355-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '67-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '649-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '824-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '202-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', 2),
(123, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '809-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '996-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '673-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '224-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '3-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', NULL),
(124, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '478-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '380-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '803-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '657-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '903-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', NULL),
(125, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '167-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '687-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '484-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '962-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '642-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', NULL),
(126, 'appendixes, headings, illustrations, etc.', '2023-01-13', 'Neitro Neito', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '827-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '900-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '415-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '879-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', '642-Success-by-Christopher-Kimmel-Getty-Images-182655729-589589ad3df78caebc8b788c.jpg', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', NULL),
(133, 'appendixes, headings, illustrations, etc.', '2023-02-10', 'Thai Dymong', 'appendixes, headings, illustrations, etc.', 'appendixes, headings, illustrations, etc.', '21-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '800-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '951-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '554-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', '189-Kk5M0x5OuG9ZyU5W-CULx8mnP47z4zK41-dK5_iTZxM.webp', 'áž–áž·áž–áŸážšážŽáŸáž˜áž»ážážšáž”ážš2022', NULL),
(65, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '315-img-0.05060000 1647940630.jpg', '752-img-0.05060000 1647940630.jpg', '397-img-0.05060000 1647940630.jpg', '790-img-0.05060000 1647940630.jpg', '642-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', 1),
(66, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '750-img-0.05060000 1647940630.jpg', '885-img-0.05060000 1647940630.jpg', '145-img-0.05060000 1647940630.jpg', '143-img-0.05060000 1647940630.jpg', '53-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', 2),
(67, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '722-img-0.05060000 1647940630.jpg', '298-img-0.05060000 1647940630.jpg', '986-img-0.05060000 1647940630.jpg', '59-img-0.05060000 1647940630.jpg', '151-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', 1),
(68, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '714-img-0.05060000 1647940630.jpg', '711-img-0.05060000 1647940630.jpg', '149-img-0.05060000 1647940630.jpg', '158-img-0.05060000 1647940630.jpg', '119-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', NULL),
(69, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '379-img-0.05060000 1647940630.jpg', '107-img-0.05060000 1647940630.jpg', '387-img-0.05060000 1647940630.jpg', '29-img-0.05060000 1647940630.jpg', '144-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', NULL),
(70, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '636-img-0.05060000 1647940630.jpg', '836-img-0.05060000 1647940630.jpg', '640-img-0.05060000 1647940630.jpg', '220-img-0.05060000 1647940630.jpg', '424-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', NULL),
(71, 'today new', '2023-01-11', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '948-img-0.05060000 1647940630.jpg', '422-img-0.05060000 1647940630.jpg', '471-img-0.05060000 1647940630.jpg', '42-img-0.05060000 1647940630.jpg', '774-img-0.05060000 1647940630.jpg', 'áž—áž¶áž–áž‡áž¶áž¢áŸ’áž“áž€ážŠáž¹áž€áž“áž¶áŸ†', NULL),
(73, 'today is best day to start your new jorney', '2023-02-09', 'Thai Dymong', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', '399-spi3.jfif', '15-spi3.jfif', '516-spi3.jfif', '651-spi3.jfif', '143-spi3.jfif', 'áž˜áž»ážážšáž”ážšáž€ážŸáž·áž€áž˜áŸ’áž˜', 3),
(74, 'today is best day to start your new jorney', '2023-02-09', 'Thai Dymong', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', '317-spi3.jfif', '901-spi3.jfif', '938-spi3.jfif', '690-spi3.jfif', '916-spi3.jfif', 'áž˜áž»ážážšáž”ážšáž€ážŸáž·áž€áž˜áŸ’áž˜', 1),
(75, 'today is best day to start your new jorney', '2023-02-09', 'Thai Dymong', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', '327-spi3.jfif', '953-spi3.jfif', '921-spi3.jfif', '963-spi3.jfif', '148-spi3.jfif', 'áž˜áž»ážážšáž”ážšáž€ážŸáž·áž€áž˜áŸ’áž˜', 2),
(77, 'today is best day to start your new jorney', '2023-02-09', 'Thai Dymong', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', 'Wout Weghorst áž‚áŸ’ážšáŸ„áž„â€‹áž•áŸ’ážŠáž¶áž…áŸ‹â€‹áž€áž»áž„ážáŸ’ážšáž¶â€‹áž‡áž¶áž˜áž½áž™â€‹áž€áŸ’áž›áž¹áž”â€‹áž‘áž½ážšáž‚áž¸ ážŠáž¾áž˜áŸ’áž”áž¸â€‹áž˜áž€â€‹áž›áŸáž„â€‹áž“áŸ… Man Utd', '753-spi3.jfif', '716-spi3.jfif', '159-spi3.jfif', '921-spi3.jfif', '2-spi3.jfif', 'áž˜áž»ážážšáž”ážšáž€ážŸáž·áž€áž˜áŸ’áž˜', NULL),
(134, ' Text.app is a simple text editor for Chrome OS and Chrome. It', '2023-02-11', 'Neitro Neito', ' Text.app is a simple text editor for Chrome OS and Chrome. It', ' Text.app is a simple text editor for Chrome OS and Chrome. It', '924-hith-tokyo-istock_000008304153large-2.jpg', '950-hith-tokyo-istock_000008304153large-2.jpg', '355-hith-tokyo-istock_000008304153large-2.jpg', '965-', '782-hith-tokyo-istock_000008304153large-2.jpg', 'áž˜áž»ážážšáž”ážšáž”áž…áŸ’áž…áŸáž€ážœáž·áž‘áŸ’áž™áž¶', NULL),
(135, ' Text.app is a simple text editor for Chrome OS and Chrome. It', '2023-02-11', 'Neitro Neito', ' Text.app is a simple text editor for Chrome OS and Chrome. It', ' Text.app is a simple text editor for Chrome OS and Chrome. It', '874-hith-tokyo-istock_000008304153large-2.jpg', '786-hith-tokyo-istock_000008304153large-2.jpg', '890-hith-tokyo-istock_000008304153large-2.jpg', '685-', '584-hith-tokyo-istock_000008304153large-2.jpg', 'áž˜áž»ážážšáž”ážšáž”áž…áŸ’áž…áŸáž€ážœáž·áž‘áŸ’áž™áž¶', 1),
(136, ' Text.app is a simple text editor for Chrome OS and Chrome. It', '2023-02-11', 'Neitro Neito', ' Text.app is a simple text editor for Chrome OS and Chrome. It', ' Text.app is a simple text editor for Chrome OS and Chrome. It', '91-hith-tokyo-istock_000008304153large-2.jpg', '309-hith-tokyo-istock_000008304153large-2.jpg', '303-hith-tokyo-istock_000008304153large-2.jpg', '872-', '655-hith-tokyo-istock_000008304153large-2.jpg', 'áž˜áž»ážážšáž”ážšáž”áž…áŸ’áž…áŸáž€ážœáž·áž‘áŸ’áž™áž¶', 1),
(137, ' Text.app is a simple text editor for Chrome OS and Chrome. It', '2023-02-11', 'Neitro Neito', ' Text.app is a simple text editor for Chrome OS and Chrome. It', ' Text.app is a simple text editor for Chrome OS and Chrome. It', '554-hith-tokyo-istock_000008304153large-2.jpg', '571-hith-tokyo-istock_000008304153large-2.jpg', '696-hith-tokyo-istock_000008304153large-2.jpg', '819-', '158-hith-tokyo-istock_000008304153large-2.jpg', 'áž˜áž»ážážšáž”ážšáž”áž…áŸ’áž…áŸáž€ážœáž·áž‘áŸ’áž™áž¶', NULL),
(138, ' Text.app is a simple text editor for Chrome OS and Chrome. It', '2023-02-11', 'Neitro Neito', ' Text.app is a simple text editor for Chrome OS and Chrome. It', ' Text.app is a simple text editor for Chrome OS and Chrome. It', '693-hith-tokyo-istock_000008304153large-2.jpg', '254-hith-tokyo-istock_000008304153large-2.jpg', '792-hith-tokyo-istock_000008304153large-2.jpg', '313-', '429-hith-tokyo-istock_000008304153large-2.jpg', 'áž˜áž»ážážšáž”ážšáž”áž…áŸ’áž…áŸáž€ážœáž·áž‘áŸ’áž™áž¶', NULL),
(139, 'Get Started Free Â· My Wireless Account', '2023-02-03', 'Neitro Neito', 'Get Started Free Â· My Wireless Account', 'Get Started Free Â· My Wireless Account', '743-pule.webp', '622-pule.webp', '261-pule.webp', '458-pule.webp', '158-pule.webp', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', NULL),
(140, 'Get Started Free Â· My Wireless Account', '2023-02-03', 'Neitro Neito', 'Get Started Free Â· My Wireless Account', 'Get Started Free Â· My Wireless Account', '669-pule.webp', '15-pule.webp', '719-pule.webp', '300-pule.webp', '38-pule.webp', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', 2),
(141, 'Get Started Free Â· My Wireless Account', '2023-02-03', 'Neitro Neito', 'Get Started Free Â· My Wireless Account', 'Get Started Free Â· My Wireless Account', '281-pule.webp', '780-pule.webp', '135-pule.webp', '856-pule.webp', '220-pule.webp', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', NULL),
(142, 'Get Started Free Â· My Wireless Account', '2023-02-03', 'Neitro Neito', 'Get Started Free Â· My Wireless Account', 'Get Started Free Â· My Wireless Account', '989-pule.webp', '885-pule.webp', '275-pule.webp', '644-pule.webp', '438-pule.webp', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', NULL),
(143, 'Get Started Free Â· My Wireless Account', '2023-02-03', 'Neitro Neito', 'Get Started Free Â· My Wireless Account', 'Get Started Free Â· My Wireless Account', '884-pule.webp', '916-pule.webp', '976-pule.webp', '226-pule.webp', '72-pule.webp', 'áž–áŸážáŸáž˜áž¶áž“ážáŸ’áž˜áž¸áŸ—', 1),
(144, ' text A third of teenagers send more than 100 texts ', '2023-01-27', 'Dymong', ' text A third of teenagers send more than 100 texts ', ' text A third of teenagers send more than 100 texts ', '871-condo1.jpg', '930-condo1.jpg', '654-condo1.jpg', '748-condo1.jpg', '9-condo1.jpg', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', 1),
(145, ' text A third of teenagers send more than 100 texts ', '2023-01-27', 'Dymong', ' text A third of teenagers send more than 100 texts ', ' text A third of teenagers send more than 100 texts ', '492-condo1.jpg', '98-condo1.jpg', '372-condo1.jpg', '801-condo1.jpg', '987-condo1.jpg', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', NULL),
(146, ' text A third of teenagers send more than 100 texts ', '2023-01-27', 'Dymong', ' text A third of teenagers send more than 100 texts ', ' text A third of teenagers send more than 100 texts ', '242-condo1.jpg', '812-condo1.jpg', '863-condo1.jpg', '997-condo1.jpg', '769-condo1.jpg', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', 1),
(147, 'update', '2023-02-03', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '602-bath.jpg', '429-images.jfif', '950-bath.jpg', '471-g3.jpg', '542-l5.jfif', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', 1),
(148, 'stiewe procedure', '2023-01-27', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '484-user2.webp', '941-user2.webp', '843-user2.webp', '871-user2.webp', '1-user2.webp', 'áž¢áž…áž›áž“áž‘áŸ’ážšáž–áŸ’áž™', NULL),
(87, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '665-164500926753689.png', '80-164500926753689.png', '561-164500926753689.png', '89-164500926753689.png', '810-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', 1),
(88, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '829-164500926753689.png', '829-164500926753689.png', '838-164500926753689.png', '127-164500926753689.png', '733-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', 1),
(89, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '803-164500926753689.png', '372-164500926753689.png', '920-164500926753689.png', '533-164500926753689.png', '822-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', 2),
(90, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '120-164500926753689.png', '322-164500926753689.png', '997-164500926753689.png', '752-164500926753689.png', '417-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', 1),
(91, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '582-164500926753689.png', '747-164500926753689.png', '718-164500926753689.png', '952-164500926753689.png', '788-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', NULL),
(92, 'Text messaging, or texting, is the act of composing and sending electronic messages,', '2023-01-13', 'Heng Somnang', 'Text messaging, or texting, is the act of composing and sending electronic messages,', 'Text messaging, or texting, is the act of composing and sending electronic messages,', '642-164500926753689.png', '598-164500926753689.png', '176-164500926753689.png', '376-164500926753689.png', '577-164500926753689.png', 'áž¢ážáŸ’ážáž”áž‘', NULL),
(93, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '463-61fce9e540002_1643964900_medium.jpg', '664-61fce9e540002_1643964900_medium.jpg', '866-61fce9e540002_1643964900_medium.jpg', '291-61fce9e540002_1643964900_medium.jpg', '845-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', 3),
(94, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '534-61fce9e540002_1643964900_medium.jpg', '131-61fce9e540002_1643964900_medium.jpg', '333-61fce9e540002_1643964900_medium.jpg', '4-61fce9e540002_1643964900_medium.jpg', '162-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', 2),
(95, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '988-61fce9e540002_1643964900_medium.jpg', '498-61fce9e540002_1643964900_medium.jpg', '564-61fce9e540002_1643964900_medium.jpg', '34-61fce9e540002_1643964900_medium.jpg', '267-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(96, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '754-61fce9e540002_1643964900_medium.jpg', '978-61fce9e540002_1643964900_medium.jpg', '750-61fce9e540002_1643964900_medium.jpg', '860-61fce9e540002_1643964900_medium.jpg', '161-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(97, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '698-61fce9e540002_1643964900_medium.jpg', '516-61fce9e540002_1643964900_medium.jpg', '118-61fce9e540002_1643964900_medium.jpg', '950-61fce9e540002_1643964900_medium.jpg', '412-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', 1),
(98, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '847-61fce9e540002_1643964900_medium.jpg', '97-61fce9e540002_1643964900_medium.jpg', '397-61fce9e540002_1643964900_medium.jpg', '908-61fce9e540002_1643964900_medium.jpg', '153-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(99, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '467-61fce9e540002_1643964900_medium.jpg', '57-61fce9e540002_1643964900_medium.jpg', '609-61fce9e540002_1643964900_medium.jpg', '551-61fce9e540002_1643964900_medium.jpg', '961-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(100, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '239-61fce9e540002_1643964900_medium.jpg', '59-61fce9e540002_1643964900_medium.jpg', '794-61fce9e540002_1643964900_medium.jpg', '911-61fce9e540002_1643964900_medium.jpg', '619-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(101, 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '2023-01-27', 'Limda Chanleap', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', 'In literary theory, a text is any object that can be \"read\", whether this object is a work of literature,', '442-61fce9e540002_1643964900_medium.jpg', '570-61fce9e540002_1643964900_medium.jpg', '15-61fce9e540002_1643964900_medium.jpg', '908-61fce9e540002_1643964900_medium.jpg', '545-61fce9e540002_1643964900_medium.jpg', 'áž…áž¶áž”áŸ‹áž•áŸ’ážáž¾áž˜áž¢áž¶áž‡áž¸ážœáž€áž˜áŸ’áž˜', NULL),
(109, 'Related searches', '2023-01-27', 'Thai Dymong', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '306-p_logo.jfif', '203-p_logo.jfif', '754-p_logo.jfif', '659-p_logo.jfif', '666-', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', NULL),
(111, 'Related searches', '2023-01-27', 'Thai Dymong', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '431-p_logo.jfif', '186-p_logo.jfif', '598-p_logo.jfif', '236-p_logo.jfif', '842-', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', NULL),
(112, 'Related searches', '2023-01-27', 'Thai Dymong', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '314-p_logo.jfif', '109-p_logo.jfif', '281-p_logo.jfif', '930-p_logo.jfif', '719-', 'ážšáž”áž¶áž™áž€áž¶ážšážŽáŸ', NULL),
(117, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '565-a.webp', '929-a.webp', '194-a.webp', '984-a.webp', '830-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL),
(118, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '701-a.webp', '761-a.webp', '998-a.webp', '521-a.webp', '851-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL),
(119, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '301-a.webp', '218-a.webp', '490-a.webp', '776-a.webp', '368-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL),
(120, 'black girl', '2023-01-19', 'Thai Dymong', 'The text-shadow CSS property adds shadows to text', 'Online Grammar and Writing Checker To Help You Deliver Impeccable, Mistake-free Writing. Grammarly Has a Tool For Just About Every Kind Of Writing You Do. Try It Out For Yourself! Improve Word Choice. Fix Punctuation Errors. Easily Improve Any Text. AI Writing Assistant.', '121-a.webp', '771-a.webp', '470-a.webp', '277-a.webp', '477-a.webp', 'áž ážšáž·áž‰áŸ’áž‰ážœážáŸ’ážáž»', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_types_photo`
--

DROP TABLE IF EXISTS `tb_types_photo`;
CREATE TABLE IF NOT EXISTS `tb_types_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` text NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_types_photo`
--

INSERT INTO `tb_types_photo` (`id`, `photo`, `type`) VALUES
(104, '7407-ads1.jpg', 'ads'),
(102, '1085-logo (1).png', 'Footer'),
(101, '1279-logo.png', 'Logo'),
(109, '8600-asd4.jpg', 'ads');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
