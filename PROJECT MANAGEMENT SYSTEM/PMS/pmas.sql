-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 04:26 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` char(5) NOT NULL,
  `password` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `f_id` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(25) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `research` varchar(200) NOT NULL,
  `others` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`f_id`, `name`, `email`, `phone`, `password`, `qualification`, `domain`, `research`, `others`) VALUES
('7890', 'manoj', 'manoj@gmail.com', '7689989', '456', 'phd', 'NULL', 'NULL', 'NULL'),
('f112', 'Pavan S', 'pavns@gmail.coma', '123', '12312', 'M.Techa', 'java', 'php', 'asp'),
('f1234', 'Prabhkar', 'p@gmail.com', '1234567890', 'p', 'PHD', 'AI', 'ML', 'ALL'),
('f908', 'karthik', 'karthik@gmail.com', '1234567', '123', 'PHD', 'DBMS', 'Image Processing', 'all'),
('f987', 'Manoj S', 'san@gmail.comhahah', '1234567', '147', 'sbkjh', 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `mail_id` int(5) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `f_id` varchar(10) NOT NULL,
  `msg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`mail_id`, `s_id`, `f_id`, `msg`) VALUES
(7, 's113', 'f112', 'student'),
(10, 's113', 'f112', 'heuyyk'),
(11, 's115', 'f112', 'hey'),
(12, 's113', 'f112', 'hahah'),
(14, 's113', 'f112', ''),
(17, '23', 'f1234', 'hello 23'),
(18, '123', '7890', 'hi want to the constraints of project');

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `meeting_id` int(5) NOT NULL,
  `f_id` varchar(10) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `desc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meeting`
--

INSERT INTO `meeting` (`meeting_id`, `f_id`, `s_id`, `date`, `time`, `desc`) VALUES
(1, 'f112', 's113', '2015-03-30', '20:30:50', 'hkjhk'),
(2, 'f112', 's115', '2015-03-31', '20:30:00', 'hello'),
(3, 'f112', 's113', '1989-06-15', '08:57:00', 'Deo.'),
(4, 'f1234', '23', '2023-01-16', '02:30:00', 'midnight memories'),
(5, 'f1234', '423', '2023-01-26', '00:50:00', 'today meeting');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `p_id` varchar(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `domain` varchar(20) DEFAULT NULL,
  `s_id` varchar(10) DEFAULT NULL,
  `f_id` varchar(10) DEFAULT NULL,
  `ppf` varchar(200) NOT NULL,
  `psf` varchar(200) NOT NULL,
  `remark` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`p_id`, `name`, `domain`, `s_id`, `f_id`, `ppf`, `psf`, `remark`) VALUES
('10', '', '', '23', 'f1234', '', '', 'nice project its empty'),
('100', '', '', '123', '7890', 'B1_BEAUTY PARLOUR MANAGEMENT SYSTEM.pdf', '', 'good project'),
('1234', '', '', 'we34', 'f112', '', '', 'Excellent report!'),
('20', '', '', '423', 'f1234', 'library.pdf', '', ''),
('dd', NULL, NULL, 's115', 'f112', 'gantt chart f.pdf', '', 'hello'),
('gdg', '', '', 's112', 'f987', '', '', ''),
('p114', NULL, NULL, 's113', 'f112', 'CSFF-SDM.doc', 'CSFF-SDM.doc', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(10) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `f_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `s_id`, `f_id`) VALUES
(1, 's112', 'f987'),
(4, 's113', 'f908'),
(789, 'we34', 'f112'),
(790, 's113', 'f987'),
(791, 's113', 'f112'),
(792, 's113', 'f112'),
(793, 's113', 'f987'),
(794, 's113', 'f112'),
(796, '23', 'f112'),
(797, '23', 'f1234'),
(798, '423', 'f1234'),
(799, '123', '7890');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(25) NOT NULL,
  `year` varchar(10) NOT NULL,
  `stream` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `email`, `phone`, `password`, `year`, `stream`) VALUES
('', '', '', 'admin', 'admin', '', 'Selcet'),
('123', 'ram', 'ram@123', '768767', '123', '2022', 'CSE'),
('23', 'sun', 'moon@gmail.com', '9964297599', 'sun', '2021', 'CSE'),
('423', 'nam', 'nam@gmail.com', '83778484', '123', '2020', 'CSE'),
('s111', 'Jaswant Kumar', 'jas@gmail.com', '1234567890', '12345', '15-16', 'COM'),
('s112', 'Jaswant Kumar', 'jaswant@gmail.com', '123456789', '123', '15-16', 'CSE'),
('s113', 'Jaswant Kumar', 'jaswant@gamial.com', '5468522', '', '123', 'EE'),
('s114', 'jaswant', 'jas@gmail.com', '12345678', '123a', '15-16', 'CSE'),
('s115', 'jas', 'jaswant@gamial.com', '1234567890', '122', '15-16', 'CSE'),
('we34', 'jknbkjn', 'we@gmail.com', 'jhgjhbh', 'hbkbmj', 'jhbkh', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `st_mail`
--

CREATE TABLE `st_mail` (
  `s_mail_id` int(11) NOT NULL,
  `s_id` varchar(10) NOT NULL,
  `f_id` varchar(10) NOT NULL,
  `mag` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `st_mail`
--

INSERT INTO `st_mail` (`s_mail_id`, `s_id`, `f_id`, `mag`) VALUES
(1, 's113', 'f112', 'huj'),
(2, 's113', 'f112', '142'),
(3, 's113', 'f112', 'hello dear'),
(4, 's113', 'f112', 'hello'),
(5, '23', 'f1234', 'hello Sir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`mail_id`),
  ADD KEY `s_id` (`s_id`,`f_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`meeting_id`),
  ADD KEY `f_id` (`f_id`,`s_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `f_id` (`f_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `s_id` (`s_id`),
  ADD KEY `f_id` (`f_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `st_mail`
--
ALTER TABLE `st_mail`
  ADD PRIMARY KEY (`s_mail_id`),
  ADD KEY `s_id` (`s_id`,`f_id`),
  ADD KEY `f_id` (`f_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `mail_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `meeting_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT for table `st_mail`
--
ALTER TABLE `st_mail`
  MODIFY `s_mail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mail`
--
ALTER TABLE `mail`
  ADD CONSTRAINT `makey1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `makey2` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`);

--
-- Constraints for table `meeting`
--
ALTER TABLE `meeting`
  ADD CONSTRAINT `mkey1` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`),
  ADD CONSTRAINT `mkey2` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fkey1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `fkey2` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`);

--
-- Constraints for table `st_mail`
--
ALTER TABLE `st_mail`
  ADD CONSTRAINT `m1` FOREIGN KEY (`s_id`) REFERENCES `student` (`s_id`),
  ADD CONSTRAINT `m2` FOREIGN KEY (`f_id`) REFERENCES `faculty` (`f_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
