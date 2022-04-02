-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2022 at 07:19 AM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `affinityfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `oceanscores`
--

CREATE TABLE IF NOT EXISTS `oceanscores` (
`id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `openness` float NOT NULL,
  `conscientiousness` float NOT NULL,
  `extroversion` float NOT NULL,
  `agreeableness` float NOT NULL,
  `neuroticism` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `oceanscores`
--

INSERT INTO `oceanscores` (`id`, `userid`, `email`, `openness`, `conscientiousness`, `extroversion`, `agreeableness`, `neuroticism`) VALUES
(1, 0, 'a@b.com', 1, 2, 3, 4, 5),
(2, 1, 'shivang@vora.com', 0.56, 0.35, 0.31, 0.75, 0.69),
(3, 2, 'shiv@vora.com', 0.56, 0.35, 0.31, 0.75, 0.69),
(4, 15, 'dreamcatchers@crystals.com', 0.43, 0.18, 0.17, 0.81, 0.63),
(10, 16, 'hardik@gmail.com', 0.56, 0.35, 0.31, 0.75, 0.69),
(11, 18, 'shango.v6@gmail.com', 1, 1, 1, 0, 1),
(12, 20, 'hiteshmarathe123@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(13, 21, 'manish@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(15, 22, 'siddharthbhaduka@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(17, 23, 'mangesh@gmail.com', 0.6, 0.38, 0.36, 0.51, 0.73),
(18, 24, 'shivambhaduka@gmail.com', 0.6, 0.38, 0.36, 0.51, 0.73),
(19, 25, 'rohanbadgujar2001@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(20, 26, 'prasanna441@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(21, 27, 'ritisha@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(22, 28, 'gaara@gmail.com', 0.96, 0.98, 0.95, 0.22, 0.97),
(23, 29, 'rishikas2305@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(24, 30, 'rishikas@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(25, 31, 'abhishek.patil8447@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(26, 32, 'yash@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(27, 33, 'shreya123@gmail.com', 0, 0.14, 0.52, 0.4, 0),
(28, 34, 'TKUK@GMAIL.COM', 0.96, 0.98, 0.95, 0.22, 0.97),
(29, 35, 'sunil@gmail.com', 0.75, 0.68, 0.67, 0.37, 0.84),
(30, 36, 'gauresh@gmail.com', 0.75, 0.68, 0.67, 0.37, 0.84);

-- --------------------------------------------------------

--
-- Table structure for table `useranswers`
--

CREATE TABLE IF NOT EXISTS `useranswers` (
`id` int(10) NOT NULL,
  `userid` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `ext1` float NOT NULL,
  `ext2` float NOT NULL,
  `ext3` float NOT NULL,
  `ext4` float NOT NULL,
  `ext5` float NOT NULL,
  `ext6` float NOT NULL,
  `ext7` float NOT NULL,
  `ext8` float NOT NULL,
  `ext9` float NOT NULL,
  `ext10` float NOT NULL,
  `est1` float NOT NULL,
  `est2` float NOT NULL,
  `est3` float NOT NULL,
  `est4` float NOT NULL,
  `est5` float NOT NULL,
  `est6` float NOT NULL,
  `est7` float NOT NULL,
  `est8` float NOT NULL,
  `est9` float NOT NULL,
  `est10` float NOT NULL,
  `agr1` float NOT NULL,
  `agr2` float NOT NULL,
  `agr3` float NOT NULL,
  `agr4` float NOT NULL,
  `agr5` float NOT NULL,
  `agr6` float NOT NULL,
  `agr7` float NOT NULL,
  `agr8` float NOT NULL,
  `agr9` float NOT NULL,
  `agr10` float NOT NULL,
  `csn1` float NOT NULL,
  `csn2` float NOT NULL,
  `csn3` float NOT NULL,
  `csn4` float NOT NULL,
  `csn5` float NOT NULL,
  `csn6` float NOT NULL,
  `csn7` float NOT NULL,
  `csn8` float NOT NULL,
  `csn9` float NOT NULL,
  `csn10` float NOT NULL,
  `opn1` float NOT NULL,
  `opn2` float NOT NULL,
  `opn3` float NOT NULL,
  `opn4` float NOT NULL,
  `opn5` float NOT NULL,
  `opn6` float NOT NULL,
  `opn7` float NOT NULL,
  `opn8` float NOT NULL,
  `opn9` float NOT NULL,
  `opn10` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `useranswers`
--

INSERT INTO `useranswers` (`id`, `userid`, `email`, `ext1`, `ext2`, `ext3`, `ext4`, `ext5`, `ext6`, `ext7`, `ext8`, `ext9`, `ext10`, `est1`, `est2`, `est3`, `est4`, `est5`, `est6`, `est7`, `est8`, `est9`, `est10`, `agr1`, `agr2`, `agr3`, `agr4`, `agr5`, `agr6`, `agr7`, `agr8`, `agr9`, `agr10`, `csn1`, `csn2`, `csn3`, `csn4`, `csn5`, `csn6`, `csn7`, `csn8`, `csn9`, `csn10`, `opn1`, `opn2`, `opn3`, `opn4`, `opn5`, `opn6`, `opn7`, `opn8`, `opn9`, `opn10`) VALUES
(5, 15, 'dreamcatchers@crystals.com', 4, 3, 2, 3, 4, 4, 1, 5, 1, 5, 5, 1, 5, 1, 5, 5, 5, 5, 5, 5, 5, 1, 5, 1, 5, 1, 5, 1, 1, 1, 1, 5, 1, 5, 1, 5, 1, 5, 1, 1, 1, 5, 1, 5, 1, 5, 1, 5, 1, 1),
(6, 16, 'hardik@gmail.com', 4, 3, 3, 3, 4, 2, 3, 5, 4, 4, 1, 2, 4, 3, 1, 1, 1, 1, 1, 3, 4, 4, 1, 3, 2, 5, 3, 4, 4, 5, 5, 1, 5, 1, 3, 1, 5, 1, 5, 3, 4, 2, 4, 2, 5, 1, 5, 4, 5, 5),
(8, 18, 'shango.v6@gmail.com', 2, 4, 4, 4, 3, 4, 2, 4, 3, 4, 4, 2, 5, 2, 3, 2, 2, 3, 2, 4, 4, 4, 4, 4, 2, 4, 2, 3, 4, 3, 4, 2, 4, 2, 2, 1, 4, 2, 5, 3, 4, 2, 4, 5, 5, 2, 4, 4, 4, 5),
(9, 19, 'itachi@uchiha.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10, 20, 'hiteshmarathe123@gmail.com', 5, 4, 4, 4, 2, 3, 4, 2, 4, 5, 4, 5, 3, 4, 4, 1, 5, 5, 2, 1, 4, 5, 4, 5, 2, 4, 2, 2, 4, 5, 4, 4, 5, 2, 4, 5, 2, 1, 5, 5, 2, 3, 2, 0, 4, 1, 5, 2, 4, 4),
(11, 21, 'manish@gmail.com', 4, 4, 5, 3, 5, 4, 4, 2, 4, 4, 3, 3, 4, 2, 4, 3, 5, 4, 3, 3, 4, 4, 1, 4, 1, 5, 2, 4, 5, 5, 4, 4, 5, 3, 3, 3, 2, 3, 4, 4, 4, 3, 3, 3, 4, 2, 4, 3, 2, 1),
(12, 22, 'siddharthbhaduka@gmail.com', 4, 3, 5, 5, 5, 3, 4, 1, 1, 4, 3, 4, 5, 5, 3, 4, 5, 4, 3, 4, 5, 5, 5, 5, 1, 5, 3, 3, 4, 5, 5, 3, 5, 2, 3, 1, 4, 3, 5, 5, 5, 3, 5, 3, 5, 1, 5, 4, 5, 5),
(13, 23, 'mangesh@gmail.com', 4, 5, 5, 4, 5, 2, 5, 3, 4, 1, 2, 3, 2, 3, 5, 1, 5, 5, 2, 2, 5, 3, 1, 1, 2, 5, 2, 5, 5, 5, 5, 5, 4, 2, 2, 5, 3, 3, 5, 5, 4, 2, 5, 2, 5, 3, 5, 5, 5, 5),
(14, 24, 'shivambhaduka@gmail.com', 3, 1, 5, 1, 5, 1, 5, 1, 5, 1, 5, 4, 2, 4, 2, 4, 5, 5, 1, 1, 5, 5, 1, 5, 1, 5, 3, 3, 5, 5, 1, 5, 1, 5, 5, 5, 1, 1, 1, 3, 5, 5, 5, 5, 4, 1, 4, 5, 3, 5),
(15, 25, 'rohanbadgujar2001@gmail.com', 4, 3, 4, 4, 3, 4, 3, 4, 3, 1, 3, 4, 4, 3, 4, 2, 2, 4, 4, 4, 4, 5, 5, 4, 4, 4, 3, 5, 4, 4, 3, 4, 5, 2, 4, 4, 5, 3, 3, 3, 2, 4, 5, 2, 3, 3, 5, 2, 4, 5),
(16, 26, 'prasanna441@gmail.com', 3, 2, 4, 1, 3, 3, 3, 4, 4, 4, 5, 5, 3, 2, 4, 4, 4, 4, 4, 2, 4, 4, 1, 2, 2, 1, 3, 2, 5, 3, 5, 3, 3, 5, 2, 3, 5, 3, 2, 2, 1, 4, 3, 3, 5, 1, 4, 1, 3, 4),
(17, 27, 'ritisha@gmail.com', 3, 1, 3, 4, 5, 1, 4, 3, 5, 2, 5, 1, 5, 4, 5, 5, 5, 5, 4, 5, 5, 5, 2, 5, 1, 5, 3, 4, 5, 4, 4, 3, 4, 3, 4, 3, 4, 3, 2, 3, 4, 3, 4, 3, 4, 2, 5, 3, 5, 4),
(18, 28, 'gaara@gmail.com', 1, 3, 3, 2, 3, 3, 3, 2, 4, 3, 1, 5, 3, 5, 3, 2, 1, 1, 1, 1, 3, 4, 1, 5, 2, 3, 2, 3, 3, 3, 3, 1, 5, 1, 5, 1, 5, 2, 5, 5, 4, 2, 5, 2, 5, 1, 5, 4, 4, 5),
(19, 29, 'rishikas2305@gmail.com', 3, 2, 4, 3, 4, 2, 5, 3, 4, 4, 4, 3, 4, 3, 3, 3, 3, 3, 3, 3, 4, 4, 1, 4, 3, 4, 3, 4, 4, 4, 4, 4, 5, 4, 3, 4, 4, 3, 4, 4, 3, 2, 3, 2, 4, 2, 4, 3, 4, 5),
(20, 30, 'rishikas@gmail.com', 4, 2, 4, 4, 4, 4, 3, 3, 3, 4, 4, 3, 4, 3, 4, 3, 3, 3, 4, 3, 3, 4, 2, 4, 2, 4, 3, 4, 4, 4, 4, 4, 4, 3, 4, 2, 4, 3, 3, 3, 3, 2, 3, 2, 4, 2, 4, 3, 4, 4),
(21, 31, 'abhishek.patil8447@gmail.com', 4, 4, 2, 4, 3, 4, 5, 5, 4, 5, 2, 3, 5, 2, 2, 1, 5, 4, 2, 4, 5, 4, 1, 5, 2, 5, 5, 2, 5, 4, 4, 4, 5, 5, 5, 4, 3, 5, 2, 5, 4, 1, 3, 2, 5, 1, 4, 4, 2, 4),
(22, 32, 'yash@gmail.com', 5, 4, 2, 3, 4, 4, 4, 3, 4, 3, 5, 2, 5, 4, 4, 5, 4, 5, 5, 3, 3, 3, 2, 4, 4, 4, 5, 4, 4, 4, 4, 2, 4, 2, 3, 3, 3, 3, 1, 3, 2, 3, 4, 2, 4, 2, 5, 3, 4, 4),
(23, 33, 'shreya123@gmail.com', 4, 2, 4, 3, 4, 2, 3, 3, 4, 2, 3, 3, 3, 5, 3, 4, 4, 5, 5, 4, 4, 3, 3, 4, 3, 4, 3, 4, 4, 4, 3, 3, 4, 3, 4, 1, 4, 3, 4, 4, 3, 2, 4, 1, 4, 1, 3, 1, 4, 4),
(24, 34, 'TKUK@GMAIL.COM', 3, 3, 3, 4, 2, 3, 3, 4, 4, 4, 2, 3, 3, 4, 3, 2, 4, 3, 3, 3, 4, 3, 3, 4, 4, 4, 4, 3, 3, 4, 4, 2, 4, 3, 4, 4, 4, 3, 4, 4, 4, 2, 3, 2, 4, 2, 4, 4, 3, 3),
(25, 35, 'sunil@gmail.com', 4, 1, 5, 1, 5, 2, 5, 3, 3, 4, 1, 4, 3, 1, 2, 1, 2, 2, 2, 4, 4, 5, 1, 4, 1, 5, 1, 4, 5, 5, 5, 3, 4, 3, 4, 5, 5, 3, 4, 5, 5, 1, 5, 1, 5, 1, 5, 3, 5, 5),
(26, 36, 'gauresh@gmail.com', 5, 1, 4, 3, 4, 2, 5, 2, 4, 3, 2, 4, 5, 2, 2, 2, 5, 5, 2, 4, 4, 5, 1, 5, 2, 5, 2, 5, 5, 5, 4, 2, 5, 1, 4, 1, 4, 3, 5, 5, 4, 2, 4, 4, 5, 2, 4, 2, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
`id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `age` int(10) NOT NULL,
  `lookingfor` varchar(20) NOT NULL,
  `community` varchar(50) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `aboutme` varchar(1000) NOT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `firstname`, `lastname`, `email`, `pwd`, `gender`, `religion`, `age`, `lookingfor`, `community`, `contact`, `aboutme`, `location`) VALUES
(1, 'shivang', 'vora', 'shivang@vora.com', 'bc22d03447e23aea2e47eaa6e8c52fda', 'male', 'na', 20, 'woman', 'hindu', '9769922917', 'about me text is very important for society it lets people know what i am all about because of the', 'Mumbai'),
(7, 'kartik', 'korea', 'kartik@korea.com', 'c8d39cdb56a46ad807969ee04c4e660b', 'Male', 'hindu', 20, 'woman', 'hindu', '', '', ''),
(12, 'hemant', 'patil', 'hemant@gmail.com', '529ca8050a00180790cf88b63468826a', 'Male', 'hindu', 20, 'woman', 'hindu', '', '', ''),
(13, 'Naruto', 'uzumaki', 'naruto@gmail.com', '18e709a19ff1a1c600aa268af2206327', 'Male', 'hindu', 20, 'woman', 'hindu', '', '', ''),
(15, 'Gaara', 'Sabaku', 'dreamcatchers@crystals.com', '31eef8c96c73cbdfe799979caeb98b59', 'Male', 'beat_boxing', 20, 'excaliber', 'autobots', '', '', ''),
(16, 'Hardik', 'Poriya', 'hardik@gmail.com', '25f9e794323b453885f5181f1b624d0b', 'Male', 'Hindu', 21, 'Female', 'Hindu', '', '', ''),
(18, 'SHIVANG', 'VORA', 'shango.v6@gmail.com', 'bc22d03447e23aea2e47eaa6e8c52fda', 'Male', 'hindu', 20, 'woman', 'konoha', '', '', ''),
(19, 'itachi', 'uchiha', 'itachi@uchiha.com', '06dc3e674a51c0bbee6078b27ab14a89', 'Male', 'shinobi', 21, 'woman', 'anbu', '9769922917', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'konoha'),
(20, 'Hitesh', 'Marathe', 'hiteshmarathe123@gmail.com', '4ccb44e53052f6554d6c5b3fa8d6bb56', 'Male', 'Hindu', 20, 'woman', 'hindu', '9769922917', 'I am a future java developer', 'dhule'),
(21, 'Manish', 'Chaudhari', 'manish@gmail.com', 'f353dcfd04135bea8203ac387a087cf3', 'Male', 'Hindu', 22, 'woman', 'Hindu', '8985463270', 'Computer Engineer ', 'Dhule'),
(22, 'Siddharth', 'Bhaduka', 'siddharthbhaduka@gmail.com', 'f72e9a1ac26eb390ef16669c43bac7f3', 'Male', 'Hindu', 21, 'man', 'Marwadi', '9067375989', 'I am a Java developer. I can create a website in a day. Recently I had made a project on Bank Application in which you can withdraw your money, deposit and transfer.\r\nI have cleared JLPT N5 level exam this year.', 'Japan'),
(23, 'mangesh', 'sonawane', 'mangesh@gmail.com', 'af4fab754b8f2699ac348a8f08112a06', 'Male', 'hindu', 21, 'woman', 'autobots', '9970293456', 'fjgkjjkghkhguiiuhiibhjgjggjhnbc', 'jalgaon'),
(24, 'Shivam', 'Bhaduka', 'shivambhaduka@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Male', 'Hindu', 21, 'woman', 'brahman', '8080051066', 'passionated', 'jalgaon'),
(25, 'Rohan', 'Badgujar', 'rohanbadgujar2001@gmail.com', '49c0b9d84c2a16fcaf9d25694fda75e1', 'Male', 'Hindu', 20, 'woman', 'Marathi', '9075130922', 'I am Software Engineer.Working on OCEAN Project.', 'Jalgaon'),
(26, 'prasanna', 'mahajan', 'prasanna441@gmail.com', '4640543a2644cf85072e1bd3ced27a16', 'Male', 'Hindu', 20, 'woman', 'hindu', '9923020954', 'jay shree ram', 'mumbai'),
(27, 'Ritisha ', 'Tare', 'ritisha@gmail.com', '9615f664545080158252bd423eba957c', 'Female', 'Hindu', 20, 'man', 'Hindu', '9753177597', 'Ritisha', 'Indore'),
(28, 'Gaara', 'Kazekage', 'gaara@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'Male', 'Fashion', 20, 'woman', 'wizards', '+9112345678', 'sonpari sonpari sonpari ayi', 'hagwartz'),
(29, 'Rishika', 'Sharma', 'rishikas2305@gmail.com', 'f38a9bcfa7b985ea9fb8f4e09282ae93', 'Female', 'Hindu', 19, 'man', 'Hindu', '6263877611', 'I love Shinchan', 'Indore'),
(30, 'Rishika', 'Sharma', 'rishikas@gmail.com', '9e62c33ce9b7ace247f80a82b97dea41', 'Female', 'Hindu', 19, 'man', 'Hindu', '6263877611', 'I love  Shichan', 'Indore'),
(31, 'abhishek', 'patil', 'abhishek.patil8447@gmail.com', '7112d0bb9378113e5bd960ff0424085e', 'Male', 'Hindu', 21, 'woman', 'Hindu', '7775028401', 'All about my self.', 'Parola'),
(32, 'yash', 'patil', 'yash@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'Male', 'hindu', 21, 'woman', 'Hindu', '9146768233', '', 'pimpalner'),
(33, 'shreya', 'shinde', 'shreya123@gmail.com', '5f9e2005f04b9cf6f52afd3297caeaa9', 'Female', 'Hindu', 21, 'man', 'Hindu', '7249187415', '.', 'jalgaon'),
(34, 'madara', 'uchicha', 'TKUK@GMAIL.COM', '070c425fd005e11aec1a90706dda66f5', 'Male', 'shinobi', 20, 'woman', 'uchicha', '8822', 'OK', 'konoha'),
(35, 'sunil', 'joshi', 'sunil@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Male', 'nashik', 29, 'woman', 'hindu', '9860878291', 'hi', 'Japan'),
(36, 'Gauresh', 'Suryawanshi', 'gauresh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Male', 'Hindu', 29, 'woman', 'Hindu', '8600180045', 'Cool ', 'Nashik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oceanscores`
--
ALTER TABLE `oceanscores`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `useranswers`
--
ALTER TABLE `useranswers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oceanscores`
--
ALTER TABLE `oceanscores`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `useranswers`
--
ALTER TABLE `useranswers`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
