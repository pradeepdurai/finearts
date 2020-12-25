-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 25, 2020 at 03:23 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fine_arts`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_form`
--

CREATE TABLE `activity_form` (
  `id` int(11) NOT NULL,
  `event_id` varchar(10) DEFAULT NULL,
  `event_name` varchar(200) NOT NULL,
  `sub_event_id` varchar(10) DEFAULT NULL,
  `student_reg_no` varchar(200) NOT NULL,
  `student_name` varchar(200) NOT NULL,
  `sub_event_name` varchar(200) NOT NULL,
  `programe_name` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `venue` text NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `coordinator_name` varchar(200) NOT NULL,
  `org_by` varchar(200) NOT NULL,
  `cat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `role`, `status`, `create_date`) VALUES
(1, 'coordinator@gmail.com', '1234', 'coordinator', 'N', '2020-12-22 00:00:00'),
(2, 'director@gmail.com', '1234', 'director', 'N', '2020-12-22 00:00:00'),
(3, 'admin@gmial.com', 'admin', 'admin', 'N', '2020-12-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `coordinators`
--

CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL,
  `coordinator_reg_no` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` text,
  `delete_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coordinators`
--

INSERT INTO `coordinators` (`id`, `coordinator_reg_no`, `name`, `designation`, `delete_status`, `create_date`) VALUES
(1, ' demo', ' demo', ' zdf', 'N', '2020-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `name`, `description`, `type`, `status`, `create_date`) VALUES
(1, 'vocal', 'vocal', 'solo', 'N', '2020-12-23 00:00:00'),
(2, 'Dance', 'zsf', 'group', 'N', '2020-12-23 00:00:00'),
(3, 'Instrumantal', '', 'solo', 'N', '2020-12-23 00:00:00'),
(4, 'Theater Event', '', 'group', 'N', '2020-12-23 00:00:00'),
(5, 'Litral Event', '', 'solo', 'N', '2020-12-23 00:00:00'),
(6, 'Drawing', '', 'group', 'N', '2020-12-23 00:00:00'),
(7, 'dfg', 'demo', ' ', 'Y', '2020-12-25 00:00:00'),
(8, '', 'name', ' ', 'Y', '2020-12-25 00:00:00'),
(9, '', 'name', ' ', 'Y', '2020-12-25 00:00:00'),
(10, 'evname', 'evname', ' ', 'Y', '2020-12-25 00:00:00'),
(11, 'echo $query;exit;', 'echo $query;exit;', ' ', 'Y', '2020-12-25 00:00:00'),
(12, '', '', ' ', 'Y', '2020-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_entry`
--

CREATE TABLE `event_entry` (
  `id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `event_id` varchar(10) DEFAULT NULL,
  `sub_event_name` varchar(200) NOT NULL,
  `sub_event_id` varchar(10) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_level`
--

CREATE TABLE `event_level` (
  `id` int(11) NOT NULL,
  `level` varchar(200) NOT NULL,
  `delete_status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_level`
--

INSERT INTO `event_level` (`id`, `level`, `delete_status`, `create_date`) VALUES
(1, 'inter', 'N', '2020-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_activity`
--

CREATE TABLE `post_activity` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_id` varchar(10) DEFAULT NULL,
  `sub_event_name` varchar(100) NOT NULL,
  `sub_event_id` varchar(10) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `over_all` varchar(100) NOT NULL,
  `photo` text NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `proof` varchar(100) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `coordinator_name` varchar(100) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_activity`
--

INSERT INTO `post_activity` (`id`, `event_name`, `event_id`, `sub_event_name`, `sub_event_id`, `from_date`, `to_date`, `org_by`, `level`, `over_all`, `photo`, `certificate`, `proof`, `reg_no`, `name`, `course`, `year`, `coordinator_name`, `created_date`) VALUES
(1, 'vocal', '1', '', '', '2020-12-19', '2020-12-25', 'Activity Form ', 'inter', 'winner', 'zero-time.png', 'sport-problem.png', 'Reduction-in-time-new.png', 'dfg', 'dfg', 'pg', '1', ' demo', '2020-12-25'),
(2, 'Dance', '2', '', '', '2020-12-25', '2020-12-25', 'Activity Form ', 'inter', 'winner', 'Accurate.png', 'Accurate.png', 'Accurate.png', 'dfg', 'dfg', 'ug', '1', ' demo', '2020-12-25'),
(3, 'vocal', '1', '', '', '2020-12-24', '2020-12-25', 'zsxd ', 'inter', 'winner', 'Reduction-in-time-new.png', 'Reduction-in-time-new.png', 'Reduction-in-time-new.png', 'dfg', 'dfg', 'ug', '1', ' demo', '2020-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `selection_form`
--

CREATE TABLE `selection_form` (
  `id` int(11) NOT NULL,
  `event_id` varchar(10) DEFAULT NULL,
  `sub_event_id` varchar(10) DEFAULT NULL,
  `event_name` varchar(200) NOT NULL,
  `sub_event_name` varchar(200) NOT NULL,
  `register_no` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `course` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `event_date` date DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `delete_status` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_events`
--

CREATE TABLE `sub_events` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` enum('Y','N') NOT NULL DEFAULT 'N',
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_form`
--
ALTER TABLE `activity_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coordinators`
--
ALTER TABLE `coordinators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_entry`
--
ALTER TABLE `event_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_level`
--
ALTER TABLE `event_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_activity`
--
ALTER TABLE `post_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selection_form`
--
ALTER TABLE `selection_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_events`
--
ALTER TABLE `sub_events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_form`
--
ALTER TABLE `activity_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `coordinators`
--
ALTER TABLE `coordinators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `event_entry`
--
ALTER TABLE `event_entry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_level`
--
ALTER TABLE `event_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_activity`
--
ALTER TABLE `post_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `selection_form`
--
ALTER TABLE `selection_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_events`
--
ALTER TABLE `sub_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
