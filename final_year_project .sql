-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 04:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_year_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `acknowledgement`
--

CREATE TABLE `acknowledgement` (
  `acknowledgement_id` int(2) NOT NULL,
  `user_Ic` varchar(13) NOT NULL,
  `acknowledgement_1` varchar(5) NOT NULL,
  `acknowledgement_2` varchar(5) NOT NULL,
  `acknowledgement_3` varchar(5) NOT NULL,
  `acknowledgement_4` varchar(5) NOT NULL,
  `acknowledgement_5` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acknowledgement`
--

INSERT INTO `acknowledgement` (`acknowledgement_id`, `user_Ic`, `acknowledgement_1`, `acknowledgement_2`, `acknowledgement_3`, `acknowledgement_4`, `acknowledgement_5`) VALUES
(1, '961015086090', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `applicant`
--

CREATE TABLE `applicant` (
  `Applicant_Id` int(11) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Applicant_Name` varchar(50) NOT NULL,
  `Applicant_Add` varchar(100) NOT NULL,
  `Applicant_Email` varchar(50) NOT NULL,
  `Applicant_NoTel` int(11) NOT NULL,
  `Applicant_Age` int(2) NOT NULL,
  `Applicant_gender` varchar(10) NOT NULL,
  `Applicant_DOB` date NOT NULL,
  `Applicant_POB` varchar(50) NOT NULL,
  `Applicant_Citizen` varchar(50) NOT NULL,
  `Applicant_Religion` varchar(50) NOT NULL,
  `Applicant_Nation` varchar(50) NOT NULL,
  `Applicant_MaritalStatus` varchar(50) NOT NULL,
  `Applicant_Height` float NOT NULL,
  `Applicant_Weight` float NOT NULL,
  `Applicant_NoHP` int(11) NOT NULL,
  `Applicant_VLC` varchar(10) NOT NULL,
  `Mom_Name` varchar(50) NOT NULL,
  `Mom_Ic` char(13) NOT NULL,
  `Dad_Name` varchar(50) NOT NULL,
  `Dad_Ic` char(23) NOT NULL,
  `Spouse_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `applicant`
--

INSERT INTO `applicant` (`Applicant_Id`, `user_Ic`, `Applicant_Name`, `Applicant_Add`, `Applicant_Email`, `Applicant_NoTel`, `Applicant_Age`, `Applicant_gender`, `Applicant_DOB`, `Applicant_POB`, `Applicant_Citizen`, `Applicant_Religion`, `Applicant_Nation`, `Applicant_MaritalStatus`, `Applicant_Height`, `Applicant_Weight`, `Applicant_NoHP`, `Applicant_VLC`, `Mom_Name`, `Mom_Ic`, `Dad_Name`, `Dad_Ic`, `Spouse_name`) VALUES
(1, '961015086090', 'CHNG SHU WEN', 'No 39 Jalan Jaya 2/6 Taman Pagoh Jaya', 'shuwen_1015@hotmail.com', 176650496, 12, 'male', '2019-03-07', 'Taiping', 'Malaysia', 'Buddha', 'Johor', 'Single', 167.9, 49, 176650496, 'D', 'LIM SWEE FANG', '650909085678', 'CHNG CHUAN HOCK', '590526085321', 'chua mei jiao');

-- --------------------------------------------------------

--
-- Table structure for table `changepass`
--

CREATE TABLE `changepass` (
  `registerID` int(11) NOT NULL,
  `newpass` varchar(20) NOT NULL,
  `confirm_newpass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cocuriculum`
--

CREATE TABLE `cocuriculum` (
  `Cocuriculum_Id` int(11) NOT NULL,
  `coco_level` varchar(50) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Koko_Activity_Year` year(4) NOT NULL,
  `Koko_Activity_name` varchar(50) NOT NULL,
  `Koko_Activity_Cert` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cocuriculum`
--

INSERT INTO `cocuriculum` (`Cocuriculum_Id`, `coco_level`, `user_Ic`, `Koko_Activity_Year`, `Koko_Activity_name`, `Koko_Activity_Cert`) VALUES
(1, 'After graduation', '961015086090', 1991, 'kawat', '2008-56.pdf'),
(2, 'School/University Level', '961015086090', 1991, 'kawat', '2008-56.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `decision`
--

CREATE TABLE `decision` (
  `Decision_Id` int(11) NOT NULL,
  `Applicant_Name` varchar(50) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Status_1` varchar(15) NOT NULL,
  `Status_2` varchar(50) NOT NULL,
  `Officer_Name` varchar(50) NOT NULL,
  `date_Officer` date NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decision`
--

INSERT INTO `decision` (`Decision_Id`, `Applicant_Name`, `user_Ic`, `Status_1`, `Status_2`, `Officer_Name`, `date_Officer`, `dateTime`) VALUES
(1, 'CHNG SHU WEN', '961015086090', 'interview', '', 'lol', '0000-00-00', '2019-03-27 13:21:55');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `Education_detail_Id` int(11) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Edu_Type` varchar(50) NOT NULL,
  `Edu_School` varchar(100) NOT NULL,
  `Edu_Year` year(4) NOT NULL,
  `Edu_Level` varchar(50) NOT NULL,
  `Edu_Specialize` varchar(50) NOT NULL,
  `Edu_Status` varchar(50) NOT NULL,
  `Edu_Date` date NOT NULL,
  `Edu_Cert` varchar(50) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`Education_detail_Id`, `user_Ic`, `Edu_Type`, `Edu_School`, `Edu_Year`, `Edu_Level`, `Edu_Specialize`, `Edu_Status`, `Edu_Date`, `Edu_Cert`, `dateTime`) VALUES
(1, '961015086090', 'SRP/PMR', 'SMK SARS1', 1990, '5A', 'BIO', 'PASS', '2019-03-27', '2008-56.pdf', '2019-03-27 04:02:55'),
(2, '961015086090', 'Primary', 'SJK(C)AI HWA', 1991, '5A', '', '', '2019-03-19', 'printed_chapter4.pdf', '2019-03-27 12:16:56'),
(3, '961015086090', 'SPM/SPVM', 'SMK SARS1', 1991, '10A', 'BIO', 'PASS', '2019-03-19', 'NEW.pdf', '2019-03-27 12:17:24'),
(4, '961015086090', 'STPM/STAM', 'HIGH SCHOOL MUAR', 1992, '3.98', 'PHY', 'PASS', '2019-03-26', 'i-Muamalat - Bill Payment - Bank Muamalat.pdf', '2019-03-27 12:17:50'),
(5, '961015086090', 'University/College/Polytechnic', 'UTHM', 1990, '3.00', 'IT', 'PASS', '2019-03-12', 'FinalBook v2.pdf', '2019-03-27 12:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `gred`
--

CREATE TABLE `gred` (
  `gred_id` int(11) NOT NULL,
  `gred` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gred`
--

INSERT INTO `gred` (`gred_id`, `gred`) VALUES
(1, 'A+'),
(2, 'A'),
(3, 'A-'),
(4, 'B+'),
(5, 'B'),
(6, 'B-'),
(7, 'C+'),
(8, 'C'),
(9, 'C-'),
(10, 'D'),
(11, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `job_requirement`
--

CREATE TABLE `job_requirement` (
  `Job_Requirement_Id` int(2) NOT NULL,
  `Job_Post_Nama` varchar(50) NOT NULL,
  `Job_Post_Syarat` varchar(320) NOT NULL,
  `Job_Post_Salary` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_requirement`
--

INSERT INTO `job_requirement` (`Job_Requirement_Id`, `Job_Post_Nama`, `Job_Post_Syarat`, `Job_Post_Salary`) VALUES
(1, 'DS 54', 'BAHASA MELAYU A', 0),
(2, 'DS 54', 'BAHASA MELAYU A', 2),
(3, 'DS 54', 'BAHASA MELAYU A', 2),
(4, 'ss 66', 'BAHASA INGGERIS A, BAHASA MELAYU B', 3400.8),
(7, 'DS 54', 'Good in IT', 3400.8);

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `Notify_Id` int(11) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Notify_Email` varchar(50) NOT NULL,
  `Notify_Subject` varchar(50) NOT NULL,
  `Notify_Msg` varchar(100) NOT NULL,
  `comment_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `Choose_Position_Id` int(11) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `app_post1` varchar(50) NOT NULL,
  `app_post2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`Choose_Position_Id`, `user_Ic`, `Faculty`, `app_post1`, `app_post2`) VALUES
(1, '961015086090', 'FKAAS', 'DS45 LECTURER', 'DS45 LECTURER');

-- --------------------------------------------------------

--
-- Table structure for table `self_reference`
--

CREATE TABLE `self_reference` (
  `self_reference_id` int(2) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `person1` varchar(50) NOT NULL,
  `person2` varchar(50) NOT NULL,
  `add1` varchar(100) NOT NULL,
  `add2` varchar(100) NOT NULL,
  `job1` varchar(50) NOT NULL,
  `job2` varchar(50) NOT NULL,
  `tel1` int(11) NOT NULL,
  `tel2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `self_reference`
--

INSERT INTO `self_reference` (`self_reference_id`, `user_Ic`, `person1`, `person2`, `add1`, `add2`, `job1`, `job2`, `tel1`, `tel2`) VALUES
(1, '961015086090', 'CHNG SHU WEN', 'WEN', 'No 39 Jalan Jaya 2/6 Taman Pagoh Jaya', 'No 39 Jalan Jaya 2/6 Taman Pagoh Jaya', 'accountant', 'CEO', 176650496, 176650496);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `Education_detail_Id` int(11) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Edu_Type` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `gred` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `Education_detail_Id`, `user_Ic`, `Edu_Type`, `subject`, `gred`) VALUES
(1, 1, '961015086090', 'SRP/PMR', 'BAHASA CINA', 'A'),
(2, 1, '961015086090', 'SRP/PMR', 'GERMAN', 'A'),
(3, 2, '961015086090', 'Primary', 'BAHASA MELAYU', 'A+'),
(4, 3, '961015086090', 'SPM/SPVM', 'BAHASA INGERRIS', 'A+'),
(5, 4, '961015086090', 'STPM/STAM', 'CHEMISTRY', 'A+'),
(6, 5, '961015086090', 'University/College/Polytechnic', 'SADAM', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `Training_Id` int(5) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Training_Name` varchar(50) NOT NULL,
  `Training_date_start` date NOT NULL,
  `Training_date_end` date NOT NULL,
  `Training_Organizer` varchar(50) NOT NULL,
  `Training_Place` varchar(50) NOT NULL,
  `Training_Result` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`Training_Id`, `user_Ic`, `Training_Name`, `Training_date_start`, `Training_date_end`, `Training_Organizer`, `Training_Place`, `Training_Result`) VALUES
(1, '961015086090', 'security', '2019-03-13', '2019-03-19', 'cyber city', 'KL CONVENTION CENTRE', 'PASS');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `emailAdd` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmpassword` varchar(50) NOT NULL,
  `selected_val` varchar(50) NOT NULL,
  `dateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`user_id`, `name`, `user_Ic`, `emailAdd`, `password`, `confirmpassword`, `selected_val`, `dateTime`) VALUES
(1, 'CHNG SHU WEN', '961015086090', 'shuwen_1015@hotmail.com', '12345', '12345', 'applicant', '2019-03-27 03:42:04'),
(2, 'ADMIN', '941015086090', 'admin@gmail.com', '12345', '12345', 'manager', '2019-03-27 04:10:12'),
(3, 'officer', '951015086090', 'officer@gmail.com', '12345', '12345', 'officer', '2019-03-27 04:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `Work_Experience_Id` int(2) NOT NULL,
  `user_Ic` char(13) NOT NULL,
  `Employer_Name_Add` varchar(100) NOT NULL,
  `Applicant_Post` varchar(50) NOT NULL,
  `Applicant_Month_Salary` float NOT NULL,
  `Work_Start_Date` date NOT NULL,
  `Work_End_Date` date NOT NULL,
  `Work_Contract` varchar(50) NOT NULL,
  `Reason_Stop` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`Work_Experience_Id`, `user_Ic`, `Employer_Name_Add`, `Applicant_Post`, `Applicant_Month_Salary`, `Work_Start_Date`, `Work_End_Date`, `Work_Contract`, `Reason_Stop`) VALUES
(1, '961015086090', 'CYBER SECURITY', 'manager', 5444, '2019-02-26', '2019-03-06', 'YES.CHALLENGE', 'for fun'),
(2, '961015086090', 'HUAWEI', 'MANAGER', 5444, '2019-03-06', '2019-03-14', 'YES.CHALLENGE', 'FOR FUN'),
(3, '961015086090', 'INTEL', 'MANAGER', 7999.66, '2019-03-13', '2019-03-06', 'YES.CHALLENGE', 'FOR FUN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acknowledgement`
--
ALTER TABLE `acknowledgement`
  ADD PRIMARY KEY (`acknowledgement_id`);

--
-- Indexes for table `applicant`
--
ALTER TABLE `applicant`
  ADD PRIMARY KEY (`Applicant_Id`);

--
-- Indexes for table `cocuriculum`
--
ALTER TABLE `cocuriculum`
  ADD PRIMARY KEY (`Cocuriculum_Id`);

--
-- Indexes for table `decision`
--
ALTER TABLE `decision`
  ADD PRIMARY KEY (`Decision_Id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`Education_detail_Id`);

--
-- Indexes for table `gred`
--
ALTER TABLE `gred`
  ADD PRIMARY KEY (`gred_id`);

--
-- Indexes for table `job_requirement`
--
ALTER TABLE `job_requirement`
  ADD PRIMARY KEY (`Job_Requirement_Id`);

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`Notify_Id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`Choose_Position_Id`);

--
-- Indexes for table `self_reference`
--
ALTER TABLE `self_reference`
  ADD PRIMARY KEY (`self_reference_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`Training_Id`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`Work_Experience_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acknowledgement`
--
ALTER TABLE `acknowledgement`
  MODIFY `acknowledgement_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicant`
--
ALTER TABLE `applicant`
  MODIFY `Applicant_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cocuriculum`
--
ALTER TABLE `cocuriculum`
  MODIFY `Cocuriculum_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `decision`
--
ALTER TABLE `decision`
  MODIFY `Decision_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `Education_detail_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `Notify_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `Choose_Position_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `self_reference`
--
ALTER TABLE `self_reference`
  MODIFY `self_reference_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `Training_Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `Work_Experience_Id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
