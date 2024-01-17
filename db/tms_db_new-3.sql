-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 01:51 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms_db_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archive`
--

CREATE TABLE `tbl_archive` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emp_id_no` int(11) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stat` varchar(255) DEFAULT NULL,
  `sports` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_archive`
--

INSERT INTO `tbl_archive` (`id`, `fname`, `mname`, `lname`, `emp_id_no`, `dept`, `contact`, `age`, `gender`, `stat`, `sports`, `team`) VALUES
(2, 'emp_archive_id', 'emp_archive_id', 'emp_archive_id', 555, 'Office Of Student And Welfare Services', NULL, 23, 'Female', NULL, '', ''),
(1, 'test', 'test', 'test', 255, 'Institute Of Graduate Studies', NULL, 23, 'Male', NULL, NULL, NULL),
(3, 'ads', 'asd', 'ads', 321, 'College Of Hospitality And Tourism Management', NULL, 23, 'Male', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dept`
--

CREATE TABLE `tbl_dept` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dept`
--

INSERT INTO `tbl_dept` (`id`, `name`, `details`) VALUES
(1, 'Office of Student and Welfare Services', 'Tikang Kanda Babon ngadto liwat kanda Babon'),
(2, 'College of Hospitality and Tourism Management', 'Amon ngadto ira'),
(3, 'Administration and Finance', 'afawewqeqweqweqw'),
(4, 'Academic Affairs', 'dsfdsf'),
(5, 'College of Business and Accountancy', 'rewrew'),
(6, 'Office of the College Administrator', 'rewrewr'),
(7, 'Research Development and Community Extension Office', 'rew'),
(8, 'Institute of Graduate Studies', 'rew'),
(9, 'College of Computer Studies', 'testtt'),
(10, 'College of Hospitality and Tourism Management', 'testtt'),
(11, 'Office of the College President', 'testtt'),
(12, 'College of Allied Health Studies', 'testtt');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emp_id_no` int(11) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stat` varchar(255) DEFAULT NULL,
  `sports` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `fname`, `mname`, `lname`, `emp_id_no`, `dept`, `contact`, `age`, `gender`, `stat`, `sports`, `team`, `status`, `created_at`) VALUES
(1, 'test', 'este4', 'dsadsad', 444, 'College Of Hospitality And Tourism Management', '9123123123', 23, 'Female', 'Normal', NULL, 'Test 2', 3, '2024-01-14 16:00:00'),
(2, 'Lara', 'Juliet', 'Vladimir Finch', 101, 'Academic Affairs', '9673902158', 33, 'Male', 'On-Leave', NULL, NULL, 2, '2024-01-14 16:00:00'),
(3, 'Hayden', 'Veronica', 'Melissa Bray', 102, 'College Of Allied Health Studies', '9207108250', 49, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(4, 'Tyler', 'Byron', 'Amanda Ferguson', 103, 'College Of Computer Studies', '9123456789', 50, 'Female', 'Health-Issue', NULL, NULL, 2, '2024-01-14 16:00:00'),
(5, 'Chaim', 'Abel', 'Brynne Weaver', 104, 'College Of Business And Accountancy', '9147483647', 53, 'Male', 'On-Leave', NULL, NULL, 2, '2024-01-14 16:00:00'),
(6, 'Christopher', 'Zahir', 'Harding Brown', 105, 'College Of Allied Health Studies', '9147483647', 37, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(7, 'Akeem', 'Allistair', 'Gemma Camacho', 106, 'Academic Affairs', '9123456789', 55, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(8, 'Dominique', 'Leah', 'Judah Michael', 107, 'College of Business and Accountancy', '9946441167', 59, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(9, 'Hiroko', 'Kiona', 'Brock Michael', 108, 'Office of the College Administrator', '9863381915', 58, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(10, 'Roth', 'Darius', 'Omar Montgomery', 109, 'Institute of Graduate Studies', '9780322664', 39, 'Male', 'On-Leave', NULL, NULL, 2, '2024-01-14 16:00:00'),
(11, 'Roary', 'Naida', 'Imogene Cox', 110, 'Research Development and Community Extension Office', '9697263413', 60, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(12, 'Odysseus', 'Grant', 'Timon Wilson', 111, 'College of Computer Studies', '9673902158', 34, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(13, 'Maisie', 'Ronan', 'Chaney Ferguson', 112, 'College of Hospitality and Tourism Management', '9207108250', 51, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(14, 'Azalia', 'Austin', 'Hashim Blackburn', 113, 'Office of the College President', '9123456789', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(15, 'Sacha', 'Raymond', 'Tatum Thomas', 114, 'Research Development and Community Extension Office', '9147483647', 50, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(16, 'Roanna', 'Delilah', 'Jana Acevedo', 115, 'College of Computer Studies', '9147483647', 59, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(17, 'Xenos', 'Zenia', 'Mason Mccormick', 116, 'College of Allied Health Studies', '9123456789', 22, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(18, 'Boris', 'Maia', 'Nolan Bowman', 117, 'Institute of Graduate Studies', '9946441167', 40, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(19, 'Aquila', 'Bethany', 'Jolie Rivers', 118, 'Academic Affairs', '9863381915', 55, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(20, 'Noah', 'Addison', 'David Villarreal', 119, 'Office of the College President', '9780322664', 57, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(21, 'Kiayada', 'Hyacinth', 'Adam Charles', 120, 'Institute of Graduate Studies', '9697263413', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(22, 'Pascale', 'Phillip', 'Cameron Emerson', 121, 'College of Hospitality and Tourism Management', '', 31, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(23, 'Lewis', 'Justin', 'Dolan Wilkins', 122, 'College of Business and Accountancy', '9673902158', 43, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(24, 'Jack', 'Acton', 'McKenzie English', 123, 'College of Education, Arts and Sciences', '9207108250', 32, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(25, 'Isaac', 'Chelsea', 'Yvonne Owen', 124, 'College of Computer Studies', '9123456789', 50, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(26, 'Jescie', 'Hector', 'Nigel Richard', 125, 'College Of Business And Accountancy', '9147483647', 21, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(27, 'Kirestin', 'Octavius', 'Jaime Mueller', 126, 'College of Education, Arts and Sciences', '9147483647', 28, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(28, 'Meredith', 'Allen', 'Jameson Mcfarland', 127, 'Office of the College Administrator', '9123456789', 36, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(29, 'Gabriel', 'Mercedes', 'Igor Lloyd', 128, 'Office of Student and Welfare Services', '9946441167', 37, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(30, 'Xantha', 'McKenzie', 'Ezekiel Whitney', 129, 'Office of the College Administrator', '9863381915', 45, 'Male', 'Health-Issue', NULL, NULL, 2, '2024-01-14 16:00:00'),
(31, 'Maile', 'Sigourney', 'Myles Joseph', 130, 'College of Hospitality and Tourism Management', '9780322664', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(32, 'Wylie', 'Arsenio', 'Nell Webster', 131, 'Office of the College Administrator', '9697263413', 40, 'Female', 'Health-Issue', NULL, NULL, 2, '2024-01-14 16:00:00'),
(33, 'Herrod', 'Hiroko', 'Bevis Hancock', 132, 'Office of Student and Welfare Services', '', 33, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(34, 'Patrick', 'Chadwick', 'Lucas Merrill', 133, 'Academic Affairs', '9673902158', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(35, 'Acton', 'Honorato', 'Justine Nielsen', 134, 'Administration and Finance', '9207108250', 42, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(36, 'Richard', 'Chloe', 'Gay Meyers', 135, 'Institute of Graduate Studies', '9123456789', 24, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(37, 'Colin', 'Reece', 'Roanna Mckinney', 136, 'Academic Affairs', '9147483647', 61, 'Male', 'Health-Issue', NULL, NULL, 2, '2024-01-14 16:00:00'),
(38, 'Denise', 'Isadora', 'Ciaran Winters', 137, 'Office of the College President', '9147483647', 55, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(39, 'Morgan', 'Clayton', 'Chancellor Strong', 138, 'Office of the College President', '9123456789', 64, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(40, 'Cairo', 'Illiana', 'Cadman Munoz', 139, 'College of Allied Health Studies', '9946441167', 42, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(41, 'Dorian', 'Lev', 'Oprah Hyde', 140, 'College of Business and Accountancy', '9863381915', 29, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(42, 'Rhonda', 'Jasper', 'Illiana Berger', 141, 'Academic Affairs', '9780322664', 41, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(43, 'Emerald', 'Sandra', 'Gil Hooper', 142, 'Office of the College Administrator', '9697263413', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(44, 'Holmes', 'Margaret', 'Ahmed Harris', 143, 'College of Allied Health Studies', '', 31, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(45, 'Bree', 'Xandra', 'Colton Best', 144, 'Office of Student and Welfare Services', '9673902158', 44, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(46, 'Quynn', 'Shoshana', 'Holmes Edwards', 145, 'Administration and Finance', '9207108250', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(47, 'Jamal', 'Colleen', 'Hedy Russell', 146, 'Administration and Finance', '9123456789', 35, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(48, 'Jaden', 'Talon', 'Caleb Dorsey', 147, 'College of Hospitality and Tourism Management', '9147483647', 31, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(49, 'Elaine', 'Amir', 'Nasim Williams', 148, 'College of Allied Health Studies', '9147483647', 42, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(50, 'Arsenio', 'Octavia', 'Anastasia Morrow', 149, 'College of Computer Studies', '9123456789', 59, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(51, 'Ross', 'Duncan', 'Natalie Malone', 150, 'Administration and Finance', '9946441167', 61, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(52, 'Matthew', 'Kelsey', 'Jacqueline Roth', 151, 'Office of the College President', '9863381915', 50, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(53, 'Alice', 'Stacey', 'Abraham York', 152, 'Office of Student and Welfare Services', '9780322664', 47, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(54, 'Elizabeth', 'Pandora', 'Amelia Clayton', 153, 'Research Development and Community Extension Office', '9697263413', 29, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(55, 'Jonas', 'Ray', 'Brenden West', 154, 'College of Computer Studies', '', 33, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(56, 'Tyrone', 'Fulton', 'Raven Craig', 155, 'College of Business and Accountancy', '', 45, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(57, 'Ivory', 'Vaughan', 'Halee Clemons', 156, 'Administration and Finance', '', 32, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(58, 'Kylie', 'Kadeem', 'Tanisha Lang', 157, 'Institute of Graduate Studies', '', 39, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(59, 'Britanney', 'Aiko', 'Cheryl Harris', 158, 'Administration and Finance', '', 37, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(60, 'Cassandra', 'Harriet', 'Kirby Hopper', 159, 'Institute of Graduate Studies', '', 32, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(61, 'Maggy', 'Renee', 'Alexa Rodgers', 160, 'College of Computer Studies', '', 42, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(62, 'Herman', 'Keefe', 'Suki Walters', 161, 'Research Development and Community Extension Office', '', 39, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(63, 'Burke', 'Odysseus', 'Kimberly Leblanc', 162, 'Administration and Finance', '', 64, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(64, 'Helen', 'Allegra', 'Heidi Knowles', 163, 'Office of the College Administrator', '', 26, 'Female', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(65, 'Melinda', 'Russell', 'Gillian Whitehead', 164, 'Institute of Graduate Studies', '', 25, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(66, 'Erich', 'Aurora', 'Alisa Knowles', 165, 'Office of the College President', '', 40, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(67, 'Jack', 'Jamalia', 'Cheryl Mcmillan', 166, 'College of Hospitality and Tourism Management', '', 28, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(68, 'Teegan', 'Drew', 'Davis Kaufman', 167, 'Administration and Finance', '', 54, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(69, 'Kibo', 'Germane', 'Slade Ryan', 168, 'Administration and Finance', '', 29, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(70, 'Wendy', 'Jolie', 'Lee Mason', 169, 'Institute of Graduate Studies', '', 47, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(71, 'Yoshio', 'Dominique', 'Kasper Smith', 170, 'Institute of Graduate Studies', '', 53, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(72, 'Fredericka', 'Lee', 'Linus Manning', 171, 'Institute of Graduate Studies', '', 52, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(73, 'Leila', 'Basil', 'Benedict Gonzalez', 172, 'College of Computer Studies', '', 29, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(74, 'Aretha', 'Davis', 'Callie Browning', 173, 'Office of Student and Welfare Services', '', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(75, 'Solomon', 'Montana', 'Sybill Zamora', 174, 'Office of the College President', '', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(76, 'Dane', 'Knox', 'Thane Green', 175, 'College of Business and Accountancy', '', 29, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(77, 'Noble', 'Lydia', 'Shaeleigh Bartlett', 176, 'Institute of Graduate Studies', '', 37, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(78, 'Jonas', 'Dominic', 'Rebekah Fernandez', 177, 'Institute of Graduate Studies', '', 22, 'Female', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(79, 'Hall', 'Nicole', 'Jaquelyn Simon', 178, 'Academic Affairs', '', 57, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(80, 'Zelda', 'Colin', 'Vera Gonzalez', 179, 'Institute of Graduate Studies', '', 52, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(81, 'Molly', 'Marsden', 'Mannix Gross', 180, 'Academic Affairs', '', 49, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(82, 'Finn', 'Kibo', 'Craig Hutchinson', 181, 'College of Allied Health Studies', '', 26, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(83, 'Cara', 'Beatrice', 'Fitzgerald Hughes', 182, 'College of Education, Arts and Sciences', '', 43, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(84, 'Daquan', 'Stacey', 'Byron Lee', 183, 'Administration and Finance', '', 36, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(85, 'Shafira', 'Daryl', 'Aline Case', 184, 'Academic Affairs', '', 52, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(86, 'Winifred', 'Evelyn', 'Lawrence Crawford', 185, 'College of Hospitality and Tourism Management', '', 46, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(87, 'Ulla', 'Wing', 'Whoopi Strickland', 186, 'Office of Student and Welfare Services', '', 56, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(88, 'Carl', 'Len', 'Gage Ferrell', 187, 'College of Education, Arts and Sciences', '', 30, 'Female', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(89, 'Ann', 'Buffy', 'Adrienne Snyder', 188, 'College of Computer Studies', '', 35, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(90, 'Myles', 'Wylie', 'Micah Rasmussen', 189, 'Office of Student and Welfare Services', '', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(91, 'Bradley', 'Paul', 'Hannah Robertson', 190, 'Office of the College President', '', 61, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(92, 'Constance', 'Raya', 'Katell Goff', 191, 'College of Hospitality and Tourism Management', '', 37, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(93, 'Cameron', 'Echo', 'Janna Wilkerson', 192, 'College of Education, Arts and Sciences', '', 27, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(94, 'Iliana', 'Ingrid', 'Dane Richardson', 193, 'College of Education, Arts and Sciences', '', 49, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(95, 'Amelia', 'Hiram', 'Sydney Gentry', 194, 'Academic Affairs', '', 29, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(96, 'Jonah', 'Neville', 'Drew Medina', 195, 'Office of the College Administrator', '', 39, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(97, 'Zachery', 'Randall', 'Samantha Green', 196, 'College of Computer Studies', '', 52, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(98, 'Ivana', 'Nehru', 'Lysandra Clarke', 197, 'College of Computer Studies', '', 35, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(99, 'Dennis', 'Pamela', 'Austin Byrd', 198, 'Institute of Graduate Studies', '', 26, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(100, 'Whilemina', 'Lana', 'Akeem Dotson', 199, 'Academic Affairs', '', 24, 'Male', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(101, 'Judith', 'Ishmael', 'Cole Carroll', 200, 'Research Development and Community Extension Office', '', 54, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(102, 'Patrick', 'Aspen', 'Wynne Hansen', 201, 'College of Computer Studies', '', 21, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(103, 'Gregory', 'Boris', 'Austin Cox', 202, 'Office of the College President', '', 43, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(104, 'Remedios', 'Zelda', 'Sasha Lyons', 203, 'Office of the College President', '', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(105, 'Aretha', 'Evan', 'Darrel Dunlap', 204, 'Institute of Graduate Studies', '', 46, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(106, 'Kieran', 'Barrett', 'Maia Green', 205, 'Office of the College President', '', 21, 'Female', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(107, 'Uta', 'Bo', 'Zia Baldwin', 206, 'Academic Affairs', '', 50, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(108, 'Malcolm', 'Hayes', 'Molly Wilkins', 207, 'Administration and Finance', '', 64, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(109, 'Winter', 'Jada', 'Hyacinth Sanders', 208, 'Research Development and Community Extension Office', '', 28, 'Female', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(110, 'Audrey', 'Hyacinth', 'Wesley Tyson', 209, 'Research Development and Community Extension Office', '', 62, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(111, 'Daryl', 'Georgia', 'Justina Rich', 210, 'Administration and Finance', '', 36, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(112, 'Alea', 'Yuli', 'Cheryl Haney', 211, 'Research Development and Community Extension Office', '', 43, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(113, 'Tanek', 'Tiger', 'Virginia Willis', 212, 'College of Education, Arts and Sciences', '', 44, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(114, 'Martin', 'Maris', 'Paula Baxter', 213, 'Office of the College Administrator', '', 23, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(115, 'Jasper', 'Dolan', 'Colette Rush', 214, 'Office of the College Administrator', '', 64, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(116, 'Jade', 'Xantha', 'TaShya Alvarado', 215, 'College of Allied Health Studies', '', 58, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(117, 'Odysseus', 'Renee', 'Guinevere Quinn', 216, 'Research Development and Community Extension Office', '', 39, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(118, 'Quinn', 'Aileen', 'Iola Mays', 217, 'College of Allied Health Studies', '', 39, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(119, 'Ignacia', 'Zephania', 'Shana Singleton', 218, 'Office of the College Administrator', '', 22, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(120, 'Giacomo', 'Raymond', 'Lavinia Sloan', 219, 'College of Business and Accountancy', '', 56, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(121, 'Malik', 'Fay', 'Beau Chambers', 220, 'College of Computer Studies', '', 55, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(122, 'Gillian', 'Hammett', 'Leslie Savage', 221, 'Office of Student and Welfare Services', '', 33, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(123, 'Basil', 'Adrian', 'Gemma Montoya', 222, 'Research Development and Community Extension Office', '', 39, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(124, 'Neville', 'Cameron', 'Orla Raymond', 223, 'Office of Student and Welfare Services', '', 31, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(125, 'Zachery', 'Lamar', 'Jermaine Russell', 224, 'Research Development and Community Extension Office', '', 32, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(126, 'Mary', 'Kato', 'Austin Espinoza', 225, 'College of Computer Studies', '', 59, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(127, 'Kirestin', 'Frances', 'Glenna Franco', 226, 'Office of the College President', '', 45, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(128, 'Joan', 'Scarlett', 'Chelsea Acosta', 227, 'Institute of Graduate Studies', '', 32, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(129, 'Cole', 'Joan', 'Zeus Greer', 228, 'Office of Student and Welfare Services', '', 42, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(130, 'Darius', 'Holly', 'Erich Clarke', 229, 'College of Computer Studies', '', 58, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(131, 'Fuller', 'Rahim', 'Yen Warner', 230, 'Research Development and Community Extension Office', '', 65, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(132, 'Derek', 'Elmo', 'Wyoming Kent', 231, 'Institute of Graduate Studies', '', 33, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(133, 'Christen', 'Rhoda', 'Hilel Nash', 232, 'Administration and Finance', '', 35, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(134, 'Jada', 'Brooke', 'Jacqueline Kline', 233, 'College of Allied Health Studies', '', 63, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(135, 'Sarah', 'Echo', 'Owen Daugherty', 234, 'Academic Affairs', '', 51, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(136, 'Victor', 'Suki', 'Geraldine Montgomery', 235, 'Institute of Graduate Studies', '', 26, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(137, 'Sade', 'Brett', 'Hillary Aguirre', 236, 'Office of Student and Welfare Services', '', 43, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(138, 'Hoyt', 'Ulysses', 'Thor Soto', 237, 'College of Computer Studies', '', 28, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(139, 'Ainsley', 'Gay', 'Blake Nunez', 238, 'College of Business and Accountancy', '', 58, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(140, 'Beau', 'Jerry', 'Maris Prince', 239, 'Academic Affairs', '', 49, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(141, 'Margaret', 'Nathaniel', 'Lee Murphy', 240, 'Administration and Finance', '', 57, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(142, 'Yoshio', 'Brenna', 'Dawn Guerra', 241, 'Research Development and Community Extension Office', '', 64, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(143, 'Hedwig', 'Kelsie', 'Deborah Hines', 242, 'Academic Affairs', '', 23, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(144, 'Channing', 'Dexter', 'Jin Sargent', 243, 'Institute of Graduate Studies', '', 56, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(145, 'Colton', 'Edan', 'Jael Justice', 244, 'Research Development and Community Extension Office', '', 47, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(146, 'Derek', 'Mason', 'Kaseem Lambert', 245, 'Institute of Graduate Studies', '', 56, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(147, 'Elvis', 'Keith', 'Jeanette Salazar', 246, 'Office of Student and Welfare Services', '', 28, 'Female', 'Normal', NULL, 'Test 2', 2, '2024-01-14 16:00:00'),
(148, 'Unity', 'Martin', 'Ferris Matthews', 247, 'College of Allied Health Studies', '', 37, 'Female', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(149, 'Keith', 'Violet', 'Lynn Brooks', 248, 'College of Computer Studies', '', 38, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:00'),
(150, 'Angela', 'Audrey', 'Fuller Mendoza', 249, 'Academic Affairs', '', 29, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(151, 'Louise', '', 'Soria', 250, 'College of Hospitality and Tourism Management', '', 29, 'Male', 'Normal', NULL, 'Test 11', 2, '2024-01-14 16:00:00'),
(152, 'test', 'test', 'test', 444, 'College Of Allied Health Studies', '9123123123', 22, 'Male', 'Normal', NULL, NULL, 2, '2024-01-14 16:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sports`
--

CREATE TABLE `tbl_sports` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sports`
--

INSERT INTO `tbl_sports` (`id`, `type`, `emp_id`, `name`, `status`) VALUES
(1, NULL, NULL, 'Team 1', NULL),
(2, NULL, NULL, 'Team 2', NULL),
(3, NULL, NULL, 'Team 3', NULL),
(4, NULL, NULL, 'Tean 4', NULL),
(5, 2, 5, 'Team 1', 3),
(6, 2, 5, 'Team 3', 2),
(7, 2, 5, 'Tean 4', 2),
(8, 2, 6, 'Team 1', 2),
(9, 2, 6, 'Team 2', 2),
(10, 2, 20, 'Team 2', 2),
(11, 2, 20, 'Tean 4', 2),
(12, 2, 8, 'Team 2', 2),
(13, 2, 8, 'Tean 4', 2),
(14, 2, 1, 'Team 1', 2),
(15, 2, 1, 'Tean 4', 2),
(16, 2, 26, 'Team 1', 2),
(17, 2, 26, 'Tean 4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teams`
--

CREATE TABLE `tbl_teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(255) DEFAULT NULL,
  `team_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teams`
--

INSERT INTO `tbl_teams` (`id`, `team_name`, `team_color`) VALUES
(1, 'Test 2', ''),
(2, 'Test 11', 'Yellow');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `team_assigned` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `acc_name`, `team_assigned`, `created_at`) VALUES
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', 'Administrator', 'N/A', '2021-05-03 02:33:03'),
(14, 'Louise', '46a0a09119a77850caad0bdfffcef8f059c9c0f1', 'team leader', 'Louise John Soria', 'Team 2', '2023-06-30 05:55:24'),
(42, 'mm@gmail.com', '320bf4eb262ec840997182151928f8c05aeb88b9', 'administrator', 'mel', NULL, '2024-01-09 13:00:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_archive`
--
ALTER TABLE `tbl_archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1686;

--
-- AUTO_INCREMENT for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
