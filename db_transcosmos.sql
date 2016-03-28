-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2016 at 12:52 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_transcosmos`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
`id` int(11) NOT NULL,
  `employee_no` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `personal_email` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `employee_no`, `password`, `fname`, `lname`, `mname`, `personal_email`, `company_email`) VALUES
(1, '21500', 'iglesias', 'Kevin Ralph', 'Iglesias', 'Padua', 'iglesiaskevinralph@gmail.com', 'kevin.ralph-iglesias@transcosmos.com.ph');

-- --------------------------------------------------------

--
-- Table structure for table `employee_benifits`
--

CREATE TABLE IF NOT EXISTS `employee_benifits` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `days_covered` varchar(100) NOT NULL,
  `emp_contractual` varchar(100) NOT NULL,
  `emp_probationary` varchar(100) NOT NULL,
  `emp_regular` varchar(100) NOT NULL,
  `work_shift` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_benifits`
--

INSERT INTO `employee_benifits` (`id`, `title`, `amount`, `days_covered`, `emp_contractual`, `emp_probationary`, `emp_regular`, `work_shift`, `tax`, `description`) VALUES
(2, 'Meal allowance', '60', 'Work days', '', 'on', 'on', ',Night Shift,Day Shift', 'Non-taxable', 'test'),
(3, 'Rice Subsidy', '1500', 'Every 15th of month', '', '', 'on', ',Night Shift,Day Shift', 'Non-taxable', 'description put here');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE IF NOT EXISTS `employee_leaves` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `increase_on` varchar(100) NOT NULL,
  `increase_by` varchar(100) NOT NULL,
  `reset` varchar(100) NOT NULL,
  `entitled_regular` varchar(100) NOT NULL,
  `entitled_probationary` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leaves`
--

INSERT INTO `employee_leaves` (`id`, `title`, `increase_on`, `increase_by`, `reset`, `entitled_regular`, `entitled_probationary`, `description`) VALUES
(3, 'Sick Leave', '1st day of month', '1', 'End of year', 'on', '', 'description'),
(4, 'Vacation Leave', '1st day of month', '1', 'End of year', 'on', '', ''),
(5, 'Maternity Leave', '1st day of year', '60', 'End of year', 'on', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee_position`
--

CREATE TABLE IF NOT EXISTS `employee_position` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_position`
--

INSERT INTO `employee_position` (`id`, `title`, `description`) VALUES
(2, 'Associate', 'asd'),
(3, 'Senior Associate', 'description of the position here');

-- --------------------------------------------------------

--
-- Table structure for table `employee_role`
--

CREATE TABLE IF NOT EXISTS `employee_role` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_role`
--

INSERT INTO `employee_role` (`id`, `title`, `description`) VALUES
(1, 'Front-End Web Developer', 'description here'),
(2, 'Back-End Web Developer', 'Description of the role title here');

-- --------------------------------------------------------

--
-- Table structure for table `employee_shift`
--

CREATE TABLE IF NOT EXISTS `employee_shift` (
`id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `half1_from` varchar(100) NOT NULL,
  `half1_to` varchar(100) NOT NULL,
  `half2_from` varchar(100) NOT NULL,
  `half2_to` varchar(100) NOT NULL,
  `day_mon` varchar(100) NOT NULL,
  `day_tue` varchar(100) NOT NULL,
  `day_wed` varchar(100) NOT NULL,
  `day_thu` varchar(100) NOT NULL,
  `day_fri` varchar(100) NOT NULL,
  `day_sat` varchar(100) NOT NULL,
  `day_sun` varchar(100) NOT NULL,
  `grace_period` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_shift`
--

INSERT INTO `employee_shift` (`id`, `title`, `half1_from`, `half1_to`, `half2_from`, `half2_to`, `day_mon`, `day_tue`, `day_wed`, `day_thu`, `day_fri`, `day_sat`, `day_sun`, `grace_period`, `description`) VALUES
(2, 'Day Shift', '9:00 AM', '1:00 PM', '2:00 PM', '6:00 PM', 'on', 'on', 'on', 'on', 'on', '', '', '9:00 AM', 'description of work shift here'),
(3, 'Night Shift', '7:00 PM', '11:00 PM', '12:00 AM', '5:00 AM', '', 'on', 'on', 'on', 'on', 'on', '', '7:00 AM', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `organization_branch`
--

CREATE TABLE IF NOT EXISTS `organization_branch` (
`id` int(11) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `building` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_branch`
--

INSERT INTO `organization_branch` (`id`, `branch`, `building`, `address`, `contact_no`, `description`) VALUES
(8, 'TCAP Asia Philippines', 'OCC', 'ortigas', '1', 'description here'),
(9, 'TCAP Cubao', 'Cubao', 'cubao', '123', '2');

-- --------------------------------------------------------

--
-- Table structure for table `organization_department`
--

CREATE TABLE IF NOT EXISTS `organization_department` (
`id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_department`
--

INSERT INTO `organization_department` (`id`, `code`, `name`, `branch_id`, `description`) VALUES
(4, 'DM', 'Digital Marketing', '8', 'description here'),
(5, 'CC', 'Call Center', '8', '');

-- --------------------------------------------------------

--
-- Table structure for table `organization_floor`
--

CREATE TABLE IF NOT EXISTS `organization_floor` (
`id` int(11) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `floor_number` varchar(100) NOT NULL,
  `room_number` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_floor`
--

INSERT INTO `organization_floor` (`id`, `branch_id`, `floor_number`, `room_number`, `status`) VALUES
(44, '8', '32', '', ''),
(45, '8', '32', '04', ''),
(46, '8', '32', '05', ''),
(47, '9', '01', '', ''),
(48, '9', '01', '01', ''),
(49, '9', '01', '02', ''),
(50, '9', '01', '03', '');

-- --------------------------------------------------------

--
-- Table structure for table `organization_team`
--

CREATE TABLE IF NOT EXISTS `organization_team` (
`id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `department_id` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organization_team`
--

INSERT INTO `organization_team` (`id`, `code`, `name`, `branch_id`, `department_id`, `description`) VALUES
(12, 'WI', 'Web Integration', '8', '4', ''),
(13, 'ECOM', 'E-Commerce', '8', '4', 'description here'),
(14, 'PAN', 'PANASONIC', '8', '5', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_benifits`
--
ALTER TABLE `employee_benifits`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_position`
--
ALTER TABLE `employee_position`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_role`
--
ALTER TABLE `employee_role`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_shift`
--
ALTER TABLE `employee_shift`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_branch`
--
ALTER TABLE `organization_branch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_department`
--
ALTER TABLE `organization_department`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_floor`
--
ALTER TABLE `organization_floor`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization_team`
--
ALTER TABLE `organization_team`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employee_benifits`
--
ALTER TABLE `employee_benifits`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee_position`
--
ALTER TABLE `employee_position`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `employee_role`
--
ALTER TABLE `employee_role`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `employee_shift`
--
ALTER TABLE `employee_shift`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `organization_branch`
--
ALTER TABLE `organization_branch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `organization_department`
--
ALTER TABLE `organization_department`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `organization_floor`
--
ALTER TABLE `organization_floor`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `organization_team`
--
ALTER TABLE `organization_team`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
