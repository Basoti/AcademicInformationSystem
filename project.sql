-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 10:26 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `name` varchar(15) NOT NULL,
  `phys` int(3) NOT NULL,
  `chem` int(3) NOT NULL,
  `math` int(3) NOT NULL,
  `gs` int(3) NOT NULL,
  `avrg` int(10) NOT NULL,
  `divs` int(1) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `name`, `phys`, `chem`, `math`, `gs`, `avrg`, `divs`, `date`) VALUES
('5cf2c73261474', 'Man', 99, 99, 99, 99, 99, 1, '2019-06-01 18:42:58'),
('5cf2c76950034', 'Basoti', 99, 99, 99, 99, 99, 1, '2019-06-01 18:43:53'),
('5cf2caf486da9', 'Man', 99, 99, 99, 99, 99, 1, '2019-06-01 18:59:00'),
('5cf3581cd076b', 'Avantika', 50, 50, 50, 15, 0, 0, '2019-06-02 05:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phys` int(3) NOT NULL,
  `chem` int(3) NOT NULL,
  `math` int(3) NOT NULL,
  `gs` int(3) NOT NULL,
  `avrg` int(10) NOT NULL,
  `divs` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`, `phys`, `chem`, `math`, `gs`, `avrg`, `divs`) VALUES
('Avantika', 'F', 'KNIT sultanpur', 'avantika420@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Basoti', 'M', 'udsm', 'basoti@gmail.com', 677777777, '25f9e794323b453885f5181f1b624d0b', 0, 0, 0, 0, 0, 0),
('Mark Zukarburg', 'M', 'Stanford', 'ceo@facebook.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Komal', 'F', 'KNIT sultanpur', 'komalpd2011@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Man', 'M', 'udsm', 'mansam@gmail.com', 777777777, '827ccb0eea8a706c4c34a16891f84e7b', 0, 0, 0, 0, 0, 0),
('Tom Cruze', 'M', 'Hollywood', 'mi5@hollywood.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Netcamp', 'M', 'KNIT sultanpur', 'netcamp@gmail.com', 987654321, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Nikunj', 'M', 'XYZ', 'nik1@gmail.com', 987, '202cb962ac59075b964b07152d234b70', 0, 0, 0, 0, 0, 0),
('Sunny', 'M', 'KNIT sultanpur', 'sunnygkp10@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('User', 'M', 'cimt', 'user@user.com', 11, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0),
('Vikash', 'M', 'KNIT sultanpur@gmail.com', 'vikash@gmail.com', 7785068889, 'e10adc3949ba59abbe56e057f20f883e', 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
