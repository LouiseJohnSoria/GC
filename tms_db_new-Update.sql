-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 11:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(10, 'College of Education, Arts, and Sciences', 'testtt'),
(11, 'Office of the College President', 'testtt'),
(12, 'College of Allied Health Studies', 'testtt'),
(13, 'National Service Training Program', 'testtt'),
(14, 'Finance Services Unit', NULL),
(15, 'Human Resource Management Unit', NULL),
(16, 'Internal Security', NULL),
(17, 'Management Information System Unit', NULL),
(18, 'Maintenance and Janitorial Services Unit', NULL),
(19, 'Property Management Unit', NULL),
(20, 'Alumni Affairs Office', NULL),
(21, 'Cultural Affairs Unit', NULL),
(22, 'Guidance and Admission Unit', NULL),
(23, 'Health Services Unit', NULL),
(24, 'Sports Development Unit', NULL),
(25, 'Student Discipline Unit', NULL),
(26, 'Student Placement and Linkages Unit', NULL),
(27, 'Student Publication', NULL),
(28, 'Student Organization Unit', NULL),
(29, 'College Registrar\'s Office', NULL),
(30, 'Data Privacy Unit', NULL),
(31, 'External Affairs Unit', NULL),
(32, 'Gender and Development Unit', NULL),
(34, 'Information and Communication Unit', NULL),
(35, 'Institutional Planning and Development Unit', NULL),
(36, 'Library and Instructional Media Center', NULL),
(37, 'Quality Assurance and Accreditation Unit', NULL),
(38, 'Records Management Unit', NULL),
(39, 'Community Extension Services Unit', NULL),
(40, 'Research Development and Publication Unit', NULL);

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `team_leader` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `fname`, `mname`, `lname`, `emp_id_no`, `dept`, `contact`, `age`, `gender`, `stat`, `sports`, `team`, `status`, `created_at`, `team_leader`) VALUES
(1, 'Lara', 'Juliet', 'Vladimir Finch', 1010, 'Academic Affairs', '9673902158', 33, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:14', 'Yes'),
(2, 'Hayden', 'Veronica', 'Melissa Bray', 1011, 'College Of Business And Accountancy', '9207108250', 49, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:14', 'Yes'),
(3, 'Tyler', 'Byron', 'Amanda Ferguson', 1012, 'Academic Affairs', '9123456789', 50, 'Female', 'PWD', NULL, 'Test1111', 3, '2024-06-17 04:30:14', 'No'),
(4, 'Chaim', 'Abel', 'Brynne Weaver', 1013, 'College Registar', '9147483647', 53, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:15', NULL),
(5, 'Christopher', 'Zahir', 'Harding Brown', 1014, 'College Administrator Office', '9147483647', 37, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:15', NULL),
(6, 'Akeem', 'Allistair', 'Gemma Camacho', 1015, 'Institute of Human Kinetics', '9123456789', 55, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:15', NULL),
(7, 'Dominique', 'Leah', 'Judah Michael', 1016, 'Maintenance and Finance Services Office', '9946441167', 59, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(8, 'Hiroko', 'Kiona', 'Brock Michael', 1017, 'Institute of Graduate Studies', '9863381915', 58, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(9, 'Roth', 'Darius', 'Omar Montgomery', 1018, 'College of Computer Studies', '9780322664', 39, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(10, 'Roary', 'Naida', 'Imogene Cox', 1019, 'College of Education, Arts, and Sciences', '9697263413', 60, 'Female', 'Fever', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(11, 'Odysseus', 'Grant', 'Timon Wilson', 1020, 'College of Computer Studies', '9673902158', 34, 'Male', 'PWD', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(12, 'Maisie', 'Ronan', 'Chaney Ferguson', 1021, 'Management Information and Communication Services Unit', '9207108250', 51, 'Male', 'Pregnant', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(13, 'Azalia', 'Austin', 'Hashim Blackburn', 1022, 'College of Allied Health Studies', '9123456789', 57, 'Female', 'Asthma', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(14, 'Sacha', 'Raymond', 'Tatum Thomas', 1023, 'National Service Training Program', '9147483647', 50, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:16', NULL),
(15, 'Roanna', 'Delilah', 'Jana Acevedo', 1024, 'Finance Services Unit', '9147483647', 59, 'Male', 'Stroke', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(16, 'Xenos', 'Zenia', 'Mason Mccormick', 1025, 'Human Resource Management Unit', '9123456789', 22, 'Male', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:17', NULL),
(17, 'Boris', 'Maia', 'Nolan Bowman', 1026, 'Office Of Student And Welfare Services', '9946441167', 40, 'Female', 'Fit', NULL, 'Louise', 3, '2024-06-17 04:30:17', 'Yes'),
(18, 'Aquila', 'Bethany', 'Jolie Rivers', 1027, 'Management Information System Unit', '9863381915', 55, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(19, 'Noah', 'Addison', 'David Villarreal', 1028, 'Vocational and Technical Education Office', '9780322664', 57, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(20, 'Kiayada', 'Hyacinth', 'Adam Charles', 1029, 'Institute of Graduate Studies', '9697263413', 57, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(21, 'Pascale', 'Phillip', 'Cameron Emerson', 1030, 'Property Management Unit', '9147483647', 31, 'Female', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(22, 'Lewis', 'Justin', 'Dolan Wilkins', 1031, 'College of Business and Accountancy', '9673902158', 43, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(23, 'Jack', 'Acton', 'McKenzie English', 1032, 'College of Education, Arts and Sciences', '9207108250', 32, 'Male', 'Allergies', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(24, 'Isaac', 'Chelsea', 'Yvonne Owen', 1033, 'College of Computer Studies', '9123456789', 50, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(25, 'Jescie', 'Hector', 'Nigel Richard', 1034, 'College of Business and Accountancy', '9147483647', 21, 'Male', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:17', NULL),
(26, 'Kirestin', 'Octavius', 'Jaime Mueller', 1035, 'College of Education, Arts and Sciences', '9147483647', 28, 'Male', 'Fit', NULL, 'Team Test 2', 3, '2024-06-17 04:30:17', NULL),
(27, 'Meredith', 'Allen', 'Jameson Mcfarland', 1036, 'College Clinic', '9123456789', 36, 'Female', 'Fit', NULL, 'Team Test 3', 3, '2024-06-17 04:30:17', NULL),
(28, 'Gabriel', 'Mercedes', 'Igor Lloyd', 1037, 'Discipline Unit', '9946441167', 37, 'Female', 'Fit', NULL, 'Team Test 2', 3, '2024-06-17 04:30:17', NULL),
(29, 'Xantha', 'McKenzie', 'Ezekiel Whitney', 1038, 'Guidance and Admission Unit', '9863381915', 45, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(30, 'Maile', 'Sigourney', 'Myles Joseph', 1039, 'Academic Affairs Office', '9780322664', 38, 'Male', 'Heart Disease', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(31, 'Wylie', 'Arsenio', 'Nell Webster', 1040, 'Student Welfare and Services Office', '9697263413', 40, 'Female', 'Fit', NULL, 'Team Test 3', 3, '2024-06-17 04:30:17', NULL),
(32, 'Herrod', 'Hiroko', 'Bevis Hancock', 1041, 'Research and Extension Office', '9147483647', 33, 'Male', 'Cancer', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(33, 'Patrick', 'Chadwick', 'Lucas Merrill', 1042, 'Administration and Finance Services Office', '9673902158', 38, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(34, 'Acton', 'Honorato', 'Justine Nielsen', 1043, 'Information and Communication Services Unit', '9207108250', 42, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(35, 'Richard', 'Chloe', 'Gay Meyers', 1044, 'College President Office', '9123456789', 24, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(36, 'Colin', 'Reece', 'Roanna Mckinney', 1045, 'College of Business and Accountancy', '9147483647', 61, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:17', NULL),
(37, 'Denise', 'Isadora', 'Ciaran Winters', 1046, 'College Library', '9147483647', 55, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(38, 'Morgan', 'Clayton', 'Chancellor Strong', 1047, 'College Registar', '9123456789', 64, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(39, 'Cairo', 'Illiana', 'Cadman Munoz', 1048, 'College Administrator Office', '9946441167', 42, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(40, 'Dorian', 'Lev', 'Oprah Hyde', 1049, 'Institute of Human Kinetics', '9863381915', 29, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(41, 'Rhonda', 'Jasper', 'Illiana Berger', 1050, 'Maintenance and Finance Services Office', '9780322664', 41, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(42, 'Emerald', 'Sandra', 'Gil Hooper', 1051, 'Institute of Graduate Studies', '9697263413', 57, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(43, 'Holmes', 'Margaret', 'Ahmed Harris', 1052, 'College of Computer Studies', '9147483647', 31, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(44, 'Bree', 'Xandra', 'Colton Best', 1053, 'College of Education, Arts, and Sciences', '9673902158', 44, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(45, 'Quynn', 'Shoshana', 'Holmes Edwards', 1054, 'College of Computer Studies', '9207108250', 57, 'Female', 'Fever', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(46, 'Jamal', 'Colleen', 'Hedy Russell', 1055, 'Management Information and Communication Services Unit', '9123456789', 35, 'Male', 'PWD', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(47, 'Jaden', 'Talon', 'Caleb Dorsey', 1056, 'College of Allied Health Studies', '9147483647', 31, 'Male', 'Pregnant', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(48, 'Elaine', 'Amir', 'Nasim Williams', 1057, 'National Service Training Program', '9147483647', 42, 'Female', 'Asthma', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(49, 'Arsenio', 'Octavia', 'Anastasia Morrow', 1058, 'Finance Services Unit', '9123456789', 59, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(50, 'Ross', 'Duncan', 'Natalie Malone', 1059, 'Human Resource Management Unit', '9946441167', 61, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(51, 'Matthew', 'Kelsey', 'Jacqueline Roth', 1060, 'Internal Security Services Unit', '9863381915', 50, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(52, 'Alice', 'Stacey', 'Abraham York', 1061, 'Management Information System Unit', '9780322664', 47, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(53, 'Elizabeth', 'Pandora', 'Amelia Clayton', 1062, 'Vocational and Technical Education Office', '9697263413', 29, 'Male', 'Fit', NULL, 'Team Test 2', 3, '2024-06-17 04:30:18', NULL),
(54, 'Jonas', 'Ray', 'Brenden West', 1063, 'Institute of Graduate Studies', '9673902158', 33, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(55, 'Tyrone', 'Fulton', 'Raven Craig', 1064, 'Property Management Unit', '9207108250', 45, 'Female', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(56, 'Ivory', 'Vaughan', 'Halee Clemons', 1065, 'College of Business and Accountancy', '9123456789', 32, 'Female', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(57, 'Kylie', 'Kadeem', 'Tanisha Lang', 1066, 'College of Education, Arts and Sciences', '9147483647', 39, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(58, 'Britanney', 'Aiko', 'Cheryl Harris', 1067, 'College of Computer Studies', '9147483647', 37, 'Male', 'Allergies', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(59, 'Cassandra', 'Harriet', 'Kirby Hopper', 1068, 'College of Business and Accountancy', '9123456789', 32, 'Female', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:18', NULL),
(60, 'Maggy', 'Renee', 'Alexa Rodgers', 1069, 'College of Education, Arts and Sciences', '9946441167', 42, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(61, 'Herman', 'Keefe', 'Suki Walters', 1070, 'College Clinic', '9863381915', 39, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(62, 'Burke', 'Odysseus', 'Kimberly Leblanc', 1071, 'Discipline Unit', '9780322664', 64, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(63, 'Helen', 'Allegra', 'Heidi Knowles', 1072, 'Guidance and Admission Unit', '9697263413', 26, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(64, 'Melinda', 'Russell', 'Gillian Whitehead', 1073, 'Academic Affairs Office', '9673902158', 25, 'Male', 'Fit', NULL, 'Team Test 3', 3, '2024-06-17 04:30:18', NULL),
(65, 'Erich', 'Aurora', 'Alisa Knowles', 1074, 'Student Welfare and Services Office', '9207108250', 40, 'Male', 'Heart Disease', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(66, 'Jack', 'Jamalia', 'Cheryl Mcmillan', 1075, 'Research and Extension Office', '9123456789', 28, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(67, 'Teegan', 'Drew', 'Davis Kaufman', 1076, 'Administration and Finance Services Office', '9147483647', 54, 'Male', 'Cancer', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(68, 'Kibo', 'Germane', 'Slade Ryan', 1077, 'Information and Communication Services Unit', '9147483647', 29, 'Male', 'Fit', NULL, 'Team Test 3', 3, '2024-06-17 04:30:18', NULL),
(69, 'Wendy', 'Jolie', 'Lee Mason', 1078, 'College President Office', '9123456789', 47, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(70, 'Yoshio', 'Dominique', 'Kasper Smith', 1079, 'College of Business and Accountancy', '9946441167', 53, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:18', NULL),
(71, 'Fredericka', 'Lee', 'Linus Manning', 1080, 'College Library', '9863381915', 52, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(72, 'Leila', 'Basil', 'Benedict Gonzalez', 1081, 'College Registar', '9780322664', 29, 'Male', 'Fit', NULL, 'Louise', 3, '2024-06-17 04:30:19', NULL),
(73, 'Aretha', 'Davis', 'Callie Browning', 1082, 'College Administrator Office', '9697263413', 57, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(74, 'Solomon', 'Montana', 'Sybill Zamora', 1083, 'Institute of Human Kinetics', '9147483647', 38, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(75, 'Dane', 'Knox', 'Thane Green', 1084, 'Maintenance and Finance Services Office', '9673902158', 29, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(76, 'Noble', 'Lydia', 'Shaeleigh Bartlett', 1085, 'Institute of Graduate Studies', '9207108250', 37, 'Female', 'Fit', NULL, 'Team Test 2', 3, '2024-06-17 04:30:19', NULL),
(77, 'Jonas', 'Dominic', 'Rebekah Fernandez', 1086, 'College of Computer Studies', '9123456789', 22, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(78, 'Hall', 'Nicole', 'Jaquelyn Simon', 1087, 'College of Education, Arts, and Sciences', '9147483647', 57, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(79, 'Zelda', 'Colin', 'Vera Gonzalez', 1088, 'College of Computer Studies', '9147483647', 52, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(80, 'Molly', 'Marsden', 'Mannix Gross', 1089, 'Management Information and Communication Services Unit', '9123456789', 49, 'Female', 'Fever', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(81, 'Finn', 'Kibo', 'Craig Hutchinson', 1090, 'College of Allied Health Studies', '9946441167', 26, 'Male', 'PWD', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(82, 'Cara', 'Beatrice', 'Fitzgerald Hughes', 1091, 'National Service Training Program', '9863381915', 43, 'Male', 'Pregnant', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(83, 'Daquan', 'Stacey', 'Byron Lee', 1092, 'Finance Services Unit', '9780322664', 36, 'Female', 'Asthma', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(84, 'Shafira', 'Daryl', 'Aline Case', 1093, 'Human Resource Management Unit', '9697263413', 52, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(85, 'Winifred', 'Evelyn', 'Lawrence Crawford', 1094, 'Internal Security Services Unit', '9147483647', 46, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(86, 'Ulla', 'Wing', 'Whoopi Strickland', 1095, 'Management Information System Unit', '9673902158', 56, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(87, 'Carl', 'Len', 'Gage Ferrell', 1096, 'Vocational and Technical Education Office', '9207108250', 30, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(88, 'Ann', 'Buffy', 'Adrienne Snyder', 1097, 'Institute of Graduate Studies', '9123456789', 35, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(89, 'Myles', 'Wylie', 'Micah Rasmussen', 1098, 'Property Management Unit', '9147483647', 38, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(90, 'Bradley', 'Paul', 'Hannah Robertson', 1099, 'College of Business and Accountancy', '9147483647', 61, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(91, 'Constance', 'Raya', 'Katell Goff', 1100, 'College of Education, Arts and Sciences', '9123456789', 37, 'Female', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(92, 'Cameron', 'Echo', 'Janna Wilkerson', 1101, 'College of Computer Studies', '9946441167', 27, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(93, 'Iliana', 'Ingrid', 'Dane Richardson', 1102, 'College of Business and Accountancy', '9863381915', 49, 'Male', 'Allergies', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(94, 'Amelia', 'Hiram', 'Sydney Gentry', 1103, 'College of Education, Arts and Sciences', '9780322664', 29, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(95, 'Jonah', 'Neville', 'Drew Medina', 1104, 'College Clinic', '9697263413', 39, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(96, 'Zachery', 'Randall', 'Samantha Green', 1105, 'Discipline Unit', '9147483647', 52, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(97, 'Ivana', 'Nehru', 'Lysandra Clarke', 1106, 'Guidance and Admission Unit', '9673902158', 35, 'Female', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:19', NULL),
(98, 'Dennis', 'Pamela', 'Austin Byrd', 1107, 'Academic Affairs Office', '9207108250', 26, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(99, 'Whilemina', 'Lana', 'Akeem Dotson', 1108, 'Student Welfare and Services Office', '9123456789', 24, 'Male', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:19', NULL),
(100, 'Judith', 'Ishmael', 'Cole Carroll', 1109, 'Research and Extension Office', '9147483647', 54, 'Male', 'Heart Disease', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(101, 'Patrick', 'Aspen', 'Wynne Hansen', 1110, 'Administration and Finance Services Office', '9147483647', 21, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:19', NULL),
(102, 'Gregory', 'Boris', 'Austin Cox', 1111, 'Information and Communication Services Unit', '9123456789', 43, 'Male', 'Cancer', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(103, 'Remedios', 'Zelda', 'Sasha Lyons', 1112, 'College President Office', '9946441167', 38, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(104, 'Aretha', 'Evan', 'Darrel Dunlap', 1113, 'College of Business and Accountancy', '9863381915', 46, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(105, 'Kieran', 'Barrett', 'Maia Green', 1114, 'College Library', '9780322664', 21, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(106, 'Uta', 'Bo', 'Zia Baldwin', 1115, 'College Registar', '9697263413', 50, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(107, 'Malcolm', 'Hayes', 'Molly Wilkins', 1116, 'College Administrator Office', '9673902158', 64, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(108, 'Winter', 'Jada', 'Hyacinth Sanders', 1117, 'Institute of Human Kinetics', '9207108250', 28, 'Female', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(109, 'Audrey', 'Hyacinth', 'Wesley Tyson', 1118, 'Maintenance and Finance Services Office', '9123456789', 62, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(110, 'Daryl', 'Georgia', 'Justina Rich', 1119, 'Institute of Graduate Studies', '9147483647', 36, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(111, 'Alea', 'Yuli', 'Cheryl Haney', 1120, 'College of Computer Studies', '9147483647', 43, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(112, 'Tanek', 'Tiger', 'Virginia Willis', 1121, 'College of Education, Arts, and Sciences', '9123456789', 44, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(113, 'Martin', 'Maris', 'Paula Baxter', 1122, 'College of Computer Studies', '9946441167', 23, 'Male', 'Fit', NULL, 'Team Test 2', 3, '2024-06-17 04:30:20', NULL),
(114, 'Jasper', 'Dolan', 'Colette Rush', 1123, 'Management Information and Communication Services Unit', '9863381915', 64, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(115, 'Jade', 'Xantha', 'TaShya Alvarado', 1124, 'College of Allied Health Studies', '9780322664', 58, 'Female', 'Fever', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(116, 'Odysseus', 'Renee', 'Guinevere Quinn', 1125, 'National Service Training Program', '9697263413', 39, 'Male', 'PWD', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(117, 'Quinn', 'Aileen', 'Iola Mays', 1126, 'Finance Services Unit', '9673902158', 39, 'Male', 'Pregnant', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(118, 'Ignacia', 'Zephania', 'Shana Singleton', 1127, 'Human Resource Management Unit', '9207108250', 22, 'Female', 'Asthma', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(119, 'Giacomo', 'Raymond', 'Lavinia Sloan', 1128, 'Internal Security Services Unit', '9123456789', 56, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(120, 'Malik', 'Fay', 'Beau Chambers', 1129, 'Management Information System Unit', '9147483647', 55, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(121, 'Gillian', 'Hammett', 'Leslie Savage', 1130, 'Vocational and Technical Education Office', '9147483647', 33, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(122, 'Basil', 'Adrian', 'Gemma Montoya', 1131, 'Institute of Graduate Studies', '9123456789', 39, 'Female', 'Fit', NULL, 'Test1111', 3, '2024-06-17 04:30:20', NULL),
(123, 'Neville', 'Cameron', 'Orla Raymond', 1132, 'Property Management Unit', '9946441167', 31, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(124, 'Zachery', 'Lamar', 'Jermaine Russell', 1133, 'College of Business and Accountancy', '9863381915', 32, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(125, 'Mary', 'Kato', 'Austin Espinoza', 1134, 'College of Education, Arts and Sciences', '9780322664', 59, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(126, 'Kirestin', 'Frances', 'Glenna Franco', 1135, 'College of Computer Studies', '9697263413', 45, 'Female', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:20', NULL),
(127, 'Joan', 'Scarlett', 'Chelsea Acosta', 1136, 'College of Business and Accountancy', '9147483647', 32, 'Male', 'On Official Business', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(128, 'Cole', 'Joan', 'Zeus Greer', 1137, 'College of Education, Arts and Sciences', '9673902158', 42, 'Male', 'Allergies', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(129, 'Darius', 'Holly', 'Erich Clarke', 1138, 'College Clinic', '9207108250', 58, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(130, 'Fuller', 'Rahim', 'Yen Warner', 1139, 'Discipline Unit', '9123456789', 65, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(131, 'Derek', 'Elmo', 'Wyoming Kent', 1140, 'Guidance and Admission Unit', '9147483647', 33, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(132, 'Christen', 'Rhoda', 'Hilel Nash', 1141, 'Academic Affairs Office', '9147483647', 35, 'Female', 'Fit', NULL, 'Louise', 3, '2024-06-17 04:30:21', NULL),
(133, 'Jada', 'Brooke', 'Jacqueline Kline', 1142, 'Student Welfare and Services Office', '9123456789', 63, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(134, 'Sarah', 'Echo', 'Owen Daugherty', 1143, 'Research and Extension Office', '9946441167', 51, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(135, 'Victor', 'Suki', 'Geraldine Montgomery', 1144, 'Administration and Finance Services Office', '9863381915', 26, 'Male', 'Heart Disease', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(136, 'Sade', 'Brett', 'Hillary Aguirre', 1145, 'Information and Communication Services Unit', '9780322664', 43, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(137, 'Hoyt', 'Ulysses', 'Thor Soto', 1146, 'College President Office', '9697263413', 28, 'Male', 'Cancer', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(138, 'Ainsley', 'Gay', 'Blake Nunez', 1147, 'College of Business and Accountancy', '9147483647', 58, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(139, 'Beau', 'Jerry', 'Maris Prince', 1148, 'College Library', '9673902158', 49, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(140, 'Margaret', 'Nathaniel', 'Lee Murphy', 1149, 'College Registar', '9207108250', 57, 'Female', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(141, 'Yoshio', 'Brenna', 'Dawn Guerra', 1150, 'College Administrator Office', '9123456789', 64, 'Male', 'Fit', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(142, 'Hedwig', 'Kelsie', 'Deborah Hines', 1151, 'Institute of Human Kinetics', '9147483647', 23, 'Male', 'Fit', NULL, 'Louise', 3, '2024-06-17 04:30:21', NULL),
(143, 'Channing', 'Dexter', 'Jin Sargent', 1152, 'Maintenance and Finance Services Office', '9147483647', 56, 'Female', 'On Official Time', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(144, 'Colton', 'Edan', 'Jael Justice', 1153, 'Institute of Graduate Studies', '9123456789', 47, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(145, 'Derek', 'Mason', 'Kaseem Lambert', 1154, 'College of Computer Studies', '9946441167', 56, 'Male', 'On-Leave', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(146, 'Elvis', 'Keith', 'Jeanette Salazar', 1155, 'College of Education, Arts, and Sciences', '9863381915', 28, 'Female', 'Injuries', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(147, 'Unity', 'Martin', 'Ferris Matthews', 1156, 'College of Computer Studies', '9780322664', 37, 'Female', 'Hypertension', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(148, 'Keith', 'Violet', 'Lynn Brooks', 1157, 'Management Information and Communication Services Unit', '9697263413', 38, 'Male', 'Diabetes', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(149, 'Angela', 'Audrey', 'Fuller Mendoza', 1158, 'College of Allied Health Studies', '9147483647', 29, 'Male', 'Cardiovascular Disease', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(150, 'Louise', '', 'Soria', 1159, 'National Service Training Program', '9673902158', 29, 'Male', 'Fever', NULL, NULL, 3, '2024-06-17 04:30:21', NULL),
(162, 'Odysseus', 'Grant', 'Timon Wilson', 1020, 'College of Computer Studies', '9673902158', 34, 'Male', 'PWD', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(154, 'Tyler', 'Byron', 'Amanda Ferguson', 1012, 'College Library', '9123456789', 50, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(155, 'Chaim', 'Abel', 'Brynne Weaver', 1013, 'College Registar', '9147483647', 53, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(156, 'Christopher', 'Zahir', 'Harding Brown', 1014, 'College Administrator Office', '9147483647', 37, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(157, 'Akeem', 'Allistair', 'Gemma Camacho', 1015, 'Institute of Human Kinetics', '9123456789', 55, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(158, 'Dominique', 'Leah', 'Judah Michael', 1016, 'Maintenance and Finance Services Office', '9946441167', 59, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(159, 'Hiroko', 'Kiona', 'Brock Michael', 1017, 'Institute of Graduate Studies', '9863381915', 58, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(161, 'Roary', 'Naida', 'Imogene Cox', 1019, 'College of Education, Arts, and Sciences', '9697263413', 60, 'Female', 'Fever', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(160, 'Roth', 'Darius', 'Omar Montgomery', 1018, 'College of Computer Studies', '9780322664', 39, 'Male', 'Fit', NULL, 'Louise', 2, '2024-09-03 06:29:55', NULL),
(153, 'Hayden', 'Veronica', 'Melissa Bray', 1011, 'College of Business and Accountancy', '9207108250', 49, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(152, 'Lara', 'Juliet', 'Vladimir Finch', 1010, 'College President Office', '9673902158', 33, 'Male', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:55', NULL),
(163, 'Maisie', 'Ronan', 'Chaney Ferguson', 1021, 'Management Information and Communication Services Unit', '9207108250', 51, 'Male', 'Pregnant', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(151, 'Louise John', 'Ronquillo', 'Soria', 1, 'Administration And Finance', '', 33, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:22', NULL),
(164, 'Azalia', 'Austin', 'Hashim Blackburn', 1022, 'College of Allied Health Studies', '9123456789', 57, 'Female', 'Asthma', NULL, NULL, 2, '2024-09-03 06:29:55', NULL),
(165, 'Sacha', 'Raymond', 'Tatum Thomas', 1023, 'National Service Training Program', '9147483647', 50, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(166, 'Roanna', 'Delilah', 'Jana Acevedo', 1024, 'Finance Services Unit', '9147483647', 59, 'Male', 'Stroke', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(167, 'Xenos', 'Zenia', 'Mason Mccormick', 1025, 'Human Resource Management Unit', '9123456789', 22, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(168, 'Boris', 'Maia', 'Nolan Bowman', 1026, 'Internal Security Services Unit', '9946441167', 40, 'Female', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:56', NULL),
(169, 'Aquila', 'Bethany', 'Jolie Rivers', 1027, 'Management Information System Unit', '9863381915', 55, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(170, 'Noah', 'Addison', 'David Villarreal', 1028, 'Vocational and Technical Education Office', '9780322664', 57, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(171, 'Kiayada', 'Hyacinth', 'Adam Charles', 1029, 'Institute of Graduate Studies', '9697263413', 57, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(172, 'Pascale', 'Phillip', 'Cameron Emerson', 1030, 'Property Management Unit', '9147483647', 31, 'Female', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(173, 'Lewis', 'Justin', 'Dolan Wilkins', 1031, 'College of Business and Accountancy', '9673902158', 43, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(174, 'Jack', 'Acton', 'McKenzie English', 1032, 'College of Education, Arts and Sciences', '9207108250', 32, 'Male', 'Allergies', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(175, 'Isaac', 'Chelsea', 'Yvonne Owen', 1033, 'College of Computer Studies', '9123456789', 50, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(176, 'Jescie', 'Hector', 'Nigel Richard', 1034, 'College of Business and Accountancy', '9147483647', 21, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(177, 'Kirestin', 'Octavius', 'Jaime Mueller', 1035, 'College of Education, Arts and Sciences', '9147483647', 28, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(178, 'Meredith', 'Allen', 'Jameson Mcfarland', 1036, 'College Clinic', '9123456789', 36, 'Female', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:56', NULL),
(179, 'Gabriel', 'Mercedes', 'Igor Lloyd', 1037, 'Discipline Unit', '9946441167', 37, 'Female', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:56', NULL),
(180, 'Xantha', 'McKenzie', 'Ezekiel Whitney', 1038, 'Guidance and Admission Unit', '9863381915', 45, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(181, 'Maile', 'Sigourney', 'Myles Joseph', 1039, 'Academic Affairs Office', '9780322664', 38, 'Male', 'Heart Disease', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(182, 'Wylie', 'Arsenio', 'Nell Webster', 1040, 'Student Welfare and Services Office', '9697263413', 40, 'Female', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:56', NULL),
(183, 'Herrod', 'Hiroko', 'Bevis Hancock', 1041, 'Research and Extension Office', '9147483647', 33, 'Male', 'Cancer', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(184, 'Patrick', 'Chadwick', 'Lucas Merrill', 1042, 'Administration and Finance Services Office', '9673902158', 38, 'Male', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:56', NULL),
(185, 'Acton', 'Honorato', 'Justine Nielsen', 1043, 'Information and Communication Services Unit', '9207108250', 42, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(186, 'Richard', 'Chloe', 'Gay Meyers', 1044, 'College President Office', '9123456789', 24, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(187, 'Colin', 'Reece', 'Roanna Mckinney', 1045, 'College of Business and Accountancy', '9147483647', 61, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(188, 'Denise', 'Isadora', 'Ciaran Winters', 1046, 'College Library', '9147483647', 55, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(189, 'Morgan', 'Clayton', 'Chancellor Strong', 1047, 'College Registar', '9123456789', 64, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(190, 'Cairo', 'Illiana', 'Cadman Munoz', 1048, 'College Administrator Office', '9946441167', 42, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(191, 'Dorian', 'Lev', 'Oprah Hyde', 1049, 'Institute of Human Kinetics', '9863381915', 29, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(192, 'Rhonda', 'Jasper', 'Illiana Berger', 1050, 'Maintenance and Finance Services Office', '9780322664', 41, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(193, 'Emerald', 'Sandra', 'Gil Hooper', 1051, 'Institute of Graduate Studies', '9697263413', 57, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(194, 'Holmes', 'Margaret', 'Ahmed Harris', 1052, 'College of Computer Studies', '9147483647', 31, 'Male', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:56', NULL),
(195, 'Bree', 'Xandra', 'Colton Best', 1053, 'College of Education, Arts, and Sciences', '9673902158', 44, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(196, 'Quynn', 'Shoshana', 'Holmes Edwards', 1054, 'College of Computer Studies', '9207108250', 57, 'Female', 'Fever', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(197, 'Jamal', 'Colleen', 'Hedy Russell', 1055, 'Management Information and Communication Services Unit', '9123456789', 35, 'Male', 'PWD', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(198, 'Jaden', 'Talon', 'Caleb Dorsey', 1056, 'College of Allied Health Studies', '9147483647', 31, 'Male', 'Pregnant', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(199, 'Elaine', 'Amir', 'Nasim Williams', 1057, 'National Service Training Program', '9147483647', 42, 'Female', 'Asthma', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(200, 'Arsenio', 'Octavia', 'Anastasia Morrow', 1058, 'Finance Services Unit', '9123456789', 59, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(201, 'Ross', 'Duncan', 'Natalie Malone', 1059, 'Human Resource Management Unit', '9946441167', 61, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:56', NULL),
(202, 'Matthew', 'Kelsey', 'Jacqueline Roth', 1060, 'Internal Security Services Unit', '9863381915', 50, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(203, 'Alice', 'Stacey', 'Abraham York', 1061, 'Management Information System Unit', '9780322664', 47, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(204, 'Elizabeth', 'Pandora', 'Amelia Clayton', 1062, 'Vocational and Technical Education Office', '9697263413', 29, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(205, 'Jonas', 'Ray', 'Brenden West', 1063, 'Institute of Graduate Studies', '9673902158', 33, 'Male', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:57', NULL),
(206, 'Tyrone', 'Fulton', 'Raven Craig', 1064, 'Property Management Unit', '9207108250', 45, 'Female', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(207, 'Ivory', 'Vaughan', 'Halee Clemons', 1065, 'College of Business and Accountancy', '9123456789', 32, 'Female', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(208, 'Kylie', 'Kadeem', 'Tanisha Lang', 1066, 'College of Education, Arts and Sciences', '9147483647', 39, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(209, 'Britanney', 'Aiko', 'Cheryl Harris', 1067, 'College of Computer Studies', '9147483647', 37, 'Male', 'Allergies', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(210, 'Cassandra', 'Harriet', 'Kirby Hopper', 1068, 'College of Business and Accountancy', '9123456789', 32, 'Female', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:57', NULL),
(211, 'Maggy', 'Renee', 'Alexa Rodgers', 1069, 'College of Education, Arts and Sciences', '9946441167', 42, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(212, 'Herman', 'Keefe', 'Suki Walters', 1070, 'College Clinic', '9863381915', 39, 'Male', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:57', NULL),
(213, 'Burke', 'Odysseus', 'Kimberly Leblanc', 1071, 'Discipline Unit', '9780322664', 64, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(214, 'Helen', 'Allegra', 'Heidi Knowles', 1072, 'Guidance and Admission Unit', '9697263413', 26, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(215, 'Melinda', 'Russell', 'Gillian Whitehead', 1073, 'Academic Affairs Office', '9673902158', 25, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(216, 'Erich', 'Aurora', 'Alisa Knowles', 1074, 'Student Welfare and Services Office', '9207108250', 40, 'Male', 'Heart Disease', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(217, 'Jack', 'Jamalia', 'Cheryl Mcmillan', 1075, 'Research and Extension Office', '9123456789', 28, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(218, 'Teegan', 'Drew', 'Davis Kaufman', 1076, 'Administration and Finance Services Office', '9147483647', 54, 'Male', 'Cancer', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(219, 'Kibo', 'Germane', 'Slade Ryan', 1077, 'Information and Communication Services Unit', '9147483647', 29, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(220, 'Wendy', 'Jolie', 'Lee Mason', 1078, 'College President Office', '9123456789', 47, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(221, 'Yoshio', 'Dominique', 'Kasper Smith', 1079, 'College of Business and Accountancy', '9946441167', 53, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(222, 'Fredericka', 'Lee', 'Linus Manning', 1080, 'College Library', '9863381915', 52, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(223, 'Leila', 'Basil', 'Benedict Gonzalez', 1081, 'College Registar', '9780322664', 29, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(224, 'Aretha', 'Davis', 'Callie Browning', 1082, 'College Administrator Office', '9697263413', 57, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(225, 'Solomon', 'Montana', 'Sybill Zamora', 1083, 'Institute of Human Kinetics', '9147483647', 38, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(226, 'Dane', 'Knox', 'Thane Green', 1084, 'Maintenance and Finance Services Office', '9673902158', 29, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(227, 'Noble', 'Lydia', 'Shaeleigh Bartlett', 1085, 'Institute of Graduate Studies', '9207108250', 37, 'Female', 'Fit', NULL, 'Louise', 2, '2024-09-03 06:29:57', NULL),
(228, 'Jonas', 'Dominic', 'Rebekah Fernandez', 1086, 'College of Computer Studies', '9123456789', 22, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(229, 'Hall', 'Nicole', 'Jaquelyn Simon', 1087, 'College of Education, Arts, and Sciences', '9147483647', 57, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(230, 'Zelda', 'Colin', 'Vera Gonzalez', 1088, 'College of Computer Studies', '9147483647', 52, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(231, 'Molly', 'Marsden', 'Mannix Gross', 1089, 'Management Information and Communication Services Unit', '9123456789', 49, 'Female', 'Fever', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(232, 'Finn', 'Kibo', 'Craig Hutchinson', 1090, 'College of Allied Health Studies', '9946441167', 26, 'Male', 'PWD', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(233, 'Cara', 'Beatrice', 'Fitzgerald Hughes', 1091, 'National Service Training Program', '9863381915', 43, 'Male', 'Pregnant', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(234, 'Daquan', 'Stacey', 'Byron Lee', 1092, 'Finance Services Unit', '9780322664', 36, 'Female', 'Asthma', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(235, 'Shafira', 'Daryl', 'Aline Case', 1093, 'Human Resource Management Unit', '9697263413', 52, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(236, 'Winifred', 'Evelyn', 'Lawrence Crawford', 1094, 'Internal Security Services Unit', '9147483647', 46, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(237, 'Ulla', 'Wing', 'Whoopi Strickland', 1095, 'Management Information System Unit', '9673902158', 56, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(238, 'Carl', 'Len', 'Gage Ferrell', 1096, 'Vocational and Technical Education Office', '9207108250', 30, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(239, 'Ann', 'Buffy', 'Adrienne Snyder', 1097, 'Institute of Graduate Studies', '9123456789', 35, 'Male', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:57', NULL),
(240, 'Myles', 'Wylie', 'Micah Rasmussen', 1098, 'Property Management Unit', '9147483647', 38, 'Male', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:57', NULL),
(241, 'Bradley', 'Paul', 'Hannah Robertson', 1099, 'College of Business and Accountancy', '9147483647', 61, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(242, 'Constance', 'Raya', 'Katell Goff', 1100, 'College of Education, Arts and Sciences', '9123456789', 37, 'Female', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(243, 'Cameron', 'Echo', 'Janna Wilkerson', 1101, 'College of Computer Studies', '9946441167', 27, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(244, 'Iliana', 'Ingrid', 'Dane Richardson', 1102, 'College of Business and Accountancy', '9863381915', 49, 'Male', 'Allergies', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(245, 'Amelia', 'Hiram', 'Sydney Gentry', 1103, 'College of Education, Arts and Sciences', '9780322664', 29, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(246, 'Jonah', 'Neville', 'Drew Medina', 1104, 'College Clinic', '9697263413', 39, 'Male', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:57', NULL),
(247, 'Zachery', 'Randall', 'Samantha Green', 1105, 'Discipline Unit', '9147483647', 52, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(248, 'Ivana', 'Nehru', 'Lysandra Clarke', 1106, 'Guidance and Admission Unit', '9673902158', 35, 'Female', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:57', NULL),
(249, 'Dennis', 'Pamela', 'Austin Byrd', 1107, 'Academic Affairs Office', '9207108250', 26, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(250, 'Whilemina', 'Lana', 'Akeem Dotson', 1108, 'Student Welfare and Services Office', '9123456789', 24, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(251, 'Judith', 'Ishmael', 'Cole Carroll', 1109, 'Research and Extension Office', '9147483647', 54, 'Male', 'Heart Disease', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(252, 'Patrick', 'Aspen', 'Wynne Hansen', 1110, 'Administration and Finance Services Office', '9147483647', 21, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:57', NULL),
(253, 'Gregory', 'Boris', 'Austin Cox', 1111, 'Information and Communication Services Unit', '9123456789', 43, 'Male', 'Cancer', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(254, 'Remedios', 'Zelda', 'Sasha Lyons', 1112, 'College President Office', '9946441167', 38, 'Male', 'Fit', NULL, 'Louise', 2, '2024-09-03 06:29:58', NULL),
(255, 'Aretha', 'Evan', 'Darrel Dunlap', 1113, 'College of Business and Accountancy', '9863381915', 46, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(256, 'Kieran', 'Barrett', 'Maia Green', 1114, 'College Library', '9780322664', 21, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(257, 'Uta', 'Bo', 'Zia Baldwin', 1115, 'College Registar', '9697263413', 50, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(258, 'Malcolm', 'Hayes', 'Molly Wilkins', 1116, 'College Administrator Office', '9673902158', 64, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(259, 'Winter', 'Jada', 'Hyacinth Sanders', 1117, 'Institute of Human Kinetics', '9207108250', 28, 'Female', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(260, 'Audrey', 'Hyacinth', 'Wesley Tyson', 1118, 'Maintenance and Finance Services Office', '9123456789', 62, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(261, 'Daryl', 'Georgia', 'Justina Rich', 1119, 'Institute of Graduate Studies', '9147483647', 36, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(262, 'Alea', 'Yuli', 'Cheryl Haney', 1120, 'College of Computer Studies', '9147483647', 43, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(263, 'Tanek', 'Tiger', 'Virginia Willis', 1121, 'College of Education, Arts, and Sciences', '9123456789', 44, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(264, 'Martin', 'Maris', 'Paula Baxter', 1122, 'College of Computer Studies', '9946441167', 23, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(265, 'Jasper', 'Dolan', 'Colette Rush', 1123, 'Management Information and Communication Services Unit', '9863381915', 64, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(266, 'Jade', 'Xantha', 'TaShya Alvarado', 1124, 'College of Allied Health Studies', '9780322664', 58, 'Female', 'Fever', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(267, 'Odysseus', 'Renee', 'Guinevere Quinn', 1125, 'National Service Training Program', '9697263413', 39, 'Male', 'PWD', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(268, 'Quinn', 'Aileen', 'Iola Mays', 1126, 'Finance Services Unit', '9673902158', 39, 'Male', 'Pregnant', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(269, 'Ignacia', 'Zephania', 'Shana Singleton', 1127, 'Human Resource Management Unit', '9207108250', 22, 'Female', 'Asthma', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(270, 'Giacomo', 'Raymond', 'Lavinia Sloan', 1128, 'Internal Security Services Unit', '9123456789', 56, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(271, 'Malik', 'Fay', 'Beau Chambers', 1129, 'Management Information System Unit', '9147483647', 55, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(272, 'Gillian', 'Hammett', 'Leslie Savage', 1130, 'Vocational and Technical Education Office', '9147483647', 33, 'Male', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:58', NULL),
(273, 'Basil', 'Adrian', 'Gemma Montoya', 1131, 'Institute of Graduate Studies', '9123456789', 39, 'Female', 'Fit', NULL, 'Louise', 2, '2024-09-03 06:29:58', NULL),
(274, 'Neville', 'Cameron', 'Orla Raymond', 1132, 'Property Management Unit', '9946441167', 31, 'Male', 'Fit', NULL, 'Team Test 3', 2, '2024-09-03 06:29:58', NULL),
(275, 'Zachery', 'Lamar', 'Jermaine Russell', 1133, 'College of Business and Accountancy', '9863381915', 32, 'Male', 'Fit', NULL, 'Test1111', 2, '2024-09-03 06:29:58', NULL),
(276, 'Mary', 'Kato', 'Austin Espinoza', 1134, 'College of Education, Arts and Sciences', '9780322664', 59, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(277, 'Kirestin', 'Frances', 'Glenna Franco', 1135, 'College of Computer Studies', '9697263413', 45, 'Female', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(278, 'Joan', 'Scarlett', 'Chelsea Acosta', 1136, 'College of Business and Accountancy', '9147483647', 32, 'Male', 'On Official Business', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(279, 'Cole', 'Joan', 'Zeus Greer', 1137, 'College of Education, Arts and Sciences', '9673902158', 42, 'Male', 'Allergies', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(280, 'Darius', 'Holly', 'Erich Clarke', 1138, 'College Clinic', '9207108250', 58, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(281, 'Fuller', 'Rahim', 'Yen Warner', 1139, 'Discipline Unit', '9123456789', 65, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(282, 'Derek', 'Elmo', 'Wyoming Kent', 1140, 'Guidance and Admission Unit', '9147483647', 33, 'Male', 'Fit', NULL, 'Team Test 2', 2, '2024-09-03 06:29:58', NULL),
(283, 'Christen', 'Rhoda', 'Hilel Nash', 1141, 'Academic Affairs Office', '9147483647', 35, 'Female', 'Fit', NULL, 'Louise', 2, '2024-09-03 06:29:58', NULL),
(284, 'Jada', 'Brooke', 'Jacqueline Kline', 1142, 'Student Welfare and Services Office', '9123456789', 63, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(285, 'Sarah', 'Echo', 'Owen Daugherty', 1143, 'Research and Extension Office', '9946441167', 51, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(286, 'Victor', 'Suki', 'Geraldine Montgomery', 1144, 'Administration and Finance Services Office', '9863381915', 26, 'Male', 'Heart Disease', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(287, 'Sade', 'Brett', 'Hillary Aguirre', 1145, 'Information and Communication Services Unit', '9780322664', 43, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(288, 'Hoyt', 'Ulysses', 'Thor Soto', 1146, 'College President Office', '9697263413', 28, 'Male', 'Cancer', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(289, 'Ainsley', 'Gay', 'Blake Nunez', 1147, 'College of Business and Accountancy', '9147483647', 58, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(290, 'Beau', 'Jerry', 'Maris Prince', 1148, 'College Library', '9673902158', 49, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(291, 'Margaret', 'Nathaniel', 'Lee Murphy', 1149, 'College Registar', '9207108250', 57, 'Female', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(292, 'Yoshio', 'Brenna', 'Dawn Guerra', 1150, 'College Administrator Office', '9123456789', 64, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(293, 'Hedwig', 'Kelsie', 'Deborah Hines', 1151, 'Institute of Human Kinetics', '9147483647', 23, 'Male', 'Fit', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(294, 'Channing', 'Dexter', 'Jin Sargent', 1152, 'Maintenance and Finance Services Office', '9147483647', 56, 'Female', 'On Official Time', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(295, 'Colton', 'Edan', 'Jael Justice', 1153, 'Institute of Graduate Studies', '9123456789', 47, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(296, 'Derek', 'Mason', 'Kaseem Lambert', 1154, 'College of Computer Studies', '9946441167', 56, 'Male', 'On-Leave', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(297, 'Elvis', 'Keith', 'Jeanette Salazar', 1155, 'College of Education, Arts, and Sciences', '9863381915', 28, 'Female', 'Injuries', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(298, 'Unity', 'Martin', 'Ferris Matthews', 1156, 'College of Computer Studies', '9780322664', 37, 'Female', 'Hypertension', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(299, 'Keith', 'Violet', 'Lynn Brooks', 1157, 'Management Information and Communication Services Unit', '9697263413', 38, 'Male', 'Diabetes', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(300, 'Angela', 'Audrey', 'Fuller Mendoza', 1158, 'College of Allied Health Studies', '9147483647', 29, 'Male', 'Cardiovascular Disease', NULL, NULL, 2, '2024-09-03 06:29:58', NULL),
(301, 'Louise', '', 'Soria', 1159, 'National Service Training Program', '9673902158', 29, 'Male', 'Fever', NULL, NULL, 2, '2024-09-03 06:29:58', NULL);

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
(1, NULL, NULL, 'Basketball', NULL),
(2, NULL, NULL, 'Badminton', NULL),
(3, NULL, NULL, 'Bowling', NULL),
(4, NULL, NULL, 'Chess', NULL),
(5, NULL, NULL, 'Laro ng Lahi', NULL),
(6, NULL, NULL, 'Mobile Legends', NULL),
(7, NULL, NULL, 'Triathlon', NULL),
(8, NULL, NULL, 'Taekwondo', NULL),
(9, NULL, NULL, 'Volleyball', NULL),
(546, 2, 2, 'Basketball', 2),
(547, 2, 2, 'Volleyball', 2),
(548, 2, 2, 'Chess', 2),
(549, 2, 5, 'Volleyball', 2),
(550, 2, 6, 'Badminton', 2),
(551, 2, 7, 'Chess', 2),
(552, 2, 9, 'Volleyball', 2),
(553, 2, 10, 'Badminton', 2),
(554, 2, 11, 'Chess', 2),
(555, 2, 13, 'Volleyball', 2),
(556, 2, 14, 'Badminton', 2),
(557, 2, 16, 'Bowling', 2),
(558, 2, 17, 'Mobile Legends', 3),
(559, 2, 18, 'Triathlon', 2),
(560, 2, 19, 'Basketball', 2),
(561, 2, 22, 'Volleyball', 2),
(562, 2, 23, 'Badminton', 2),
(563, 2, 24, 'Chess', 2),
(564, 2, 33, 'Bowling', 2),
(565, 2, 34, 'Mobile Legends', 2),
(566, 2, 35, 'Triathlon', 2),
(567, 2, 36, 'Basketball', 2),
(568, 2, 39, 'Volleyball', 2),
(569, 2, 40, 'Badminton', 2),
(570, 2, 41, 'Chess', 2),
(571, 2, 50, 'Bowling', 2),
(572, 2, 51, 'Mobile Legends', 2),
(573, 2, 52, 'Triathlon', 2),
(574, 2, 53, 'Basketball', 2),
(575, 2, 56, 'Volleyball', 2),
(576, 2, 57, 'Badminton', 2),
(577, 2, 58, 'Chess', 2),
(578, 2, 67, 'Bowling', 2),
(579, 2, 68, 'Mobile Legends', 2),
(580, 2, 69, 'Triathlon', 2),
(581, 2, 70, 'Basketball', 2),
(582, 2, 73, 'Volleyball', 2),
(583, 2, 74, 'Badminton', 2),
(584, 2, 75, 'Chess', 2),
(585, 2, 84, 'Bowling', 2),
(586, 2, 85, 'Mobile Legends', 2),
(587, 2, 86, 'Triathlon', 2),
(588, 2, 87, 'Basketball', 2),
(589, 2, 90, 'Volleyball', 2),
(590, 2, 91, 'Badminton', 2),
(591, 2, 92, 'Chess', 2),
(592, 2, 101, 'Bowling', 2),
(593, 2, 102, 'Mobile Legends', 2),
(594, 2, 103, 'Triathlon', 2),
(595, 2, 104, 'Basketball', 2),
(596, 2, 107, 'Volleyball', 2),
(597, 2, 108, 'Badminton', 2),
(598, 2, 109, 'Chess', 2),
(599, 2, 118, 'Bowling', 2),
(600, 2, 119, 'Mobile Legends', 2),
(601, 2, 120, 'Triathlon', 2),
(602, 2, 121, 'Basketball', 2),
(603, 2, 124, 'Volleyball', 2),
(604, 2, 125, 'Badminton', 2),
(605, 2, 126, 'Chess', 2),
(606, 2, 135, 'Bowling', 2),
(607, 2, 136, 'Mobile Legends', 2),
(608, 2, 137, 'Triathlon', 2),
(609, 2, 138, 'Basketball', 2),
(610, 2, 141, 'Volleyball', 2),
(611, 2, 142, 'Badminton', 2),
(612, 2, 143, 'Chess', 2),
(613, 2, 3, 'Basketball', 3),
(614, 2, 3, 'Bowling', 3),
(615, 2, 3, 'Chess', 3),
(616, 2, 3, 'Mobile Legends', 2),
(617, 2, 3, 'Triathlon', 2),
(618, 2, 151, 'Bowling', 2),
(619, 2, 151, 'Chess', 2),
(620, 2, 151, 'Laro ng Lahi', 2),
(621, 2, 151, 'Mobile Legends', 2),
(622, 2, 153, 'Basketball', 2),
(623, 2, 153, 'Volleyball', 2),
(624, 2, 153, 'Chess', 2),
(625, 2, 156, 'Volleyball', 2),
(626, 2, 157, 'Badminton', 2),
(627, 2, 158, 'Chess', 2),
(628, 2, 160, 'Volleyball', 2),
(629, 2, 161, 'Badminton', 2),
(630, 2, 162, 'Chess', 2),
(631, 2, 164, 'Volleyball', 2),
(632, 2, 165, 'Badminton', 2),
(633, 2, 167, 'Bowling', 2),
(634, 2, 168, 'Mobile Legends', 2),
(635, 2, 169, 'Triathlon', 2),
(636, 2, 170, 'Basketball', 2),
(637, 2, 173, 'Volleyball', 2),
(638, 2, 174, 'Badminton', 2),
(639, 2, 175, 'Chess', 2),
(640, 2, 184, 'Bowling', 2),
(641, 2, 185, 'Mobile Legends', 2),
(642, 2, 186, 'Triathlon', 2),
(643, 2, 187, 'Basketball', 2),
(644, 2, 190, 'Volleyball', 2),
(645, 2, 191, 'Badminton', 2),
(646, 2, 192, 'Chess', 2),
(647, 2, 201, 'Bowling', 2),
(648, 2, 202, 'Mobile Legends', 2),
(649, 2, 203, 'Triathlon', 2),
(650, 2, 204, 'Basketball', 2),
(651, 2, 207, 'Volleyball', 2),
(652, 2, 208, 'Badminton', 2),
(653, 2, 209, 'Chess', 2),
(654, 2, 218, 'Bowling', 2),
(655, 2, 219, 'Mobile Legends', 2),
(656, 2, 220, 'Triathlon', 2),
(657, 2, 221, 'Basketball', 2),
(658, 2, 224, 'Volleyball', 2),
(659, 2, 225, 'Badminton', 2),
(660, 2, 226, 'Chess', 2),
(661, 2, 235, 'Bowling', 2),
(662, 2, 236, 'Mobile Legends', 2),
(663, 2, 237, 'Triathlon', 2),
(664, 2, 238, 'Basketball', 2),
(665, 2, 241, 'Volleyball', 2),
(666, 2, 242, 'Badminton', 2),
(667, 2, 243, 'Chess', 2),
(668, 2, 252, 'Bowling', 2),
(669, 2, 253, 'Mobile Legends', 2),
(670, 2, 254, 'Triathlon', 2),
(671, 2, 255, 'Basketball', 2),
(672, 2, 258, 'Volleyball', 2),
(673, 2, 259, 'Badminton', 2),
(674, 2, 260, 'Chess', 2),
(675, 2, 269, 'Bowling', 2),
(676, 2, 270, 'Mobile Legends', 2),
(677, 2, 271, 'Triathlon', 2),
(678, 2, 272, 'Basketball', 2),
(679, 2, 275, 'Volleyball', 2),
(680, 2, 276, 'Badminton', 2),
(681, 2, 277, 'Chess', 2),
(682, 2, 286, 'Bowling', 2),
(683, 2, 287, 'Mobile Legends', 2),
(684, 2, 288, 'Triathlon', 2),
(685, 2, 289, 'Basketball', 2),
(686, 2, 292, 'Volleyball', 2),
(687, 2, 293, 'Badminton', 2),
(688, 2, 294, 'Chess', 2);

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
(1, 'Test1111', ''),
(2, 'Team Test 2', ''),
(3, 'Team Test 3', ''),
(6, 'Louise', '');

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
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', 'Administrator', '', '2021-05-03 02:33:03'),
(46, 'Louise', 'f2a12f187ebb7080bd75aac9160214e6b1e49f7d', 'administrator', 'Louise John Soria', NULL, '2024-06-17 04:29:25');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=689;

--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
