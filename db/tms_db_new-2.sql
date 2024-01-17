-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2024 at 05:20 AM
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
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `age` int(11) DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sports` varchar(255) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `fname`, `mname`, `lname`, `emp_id_no`, `dept`, `age`, `gender`, `sports`, `team`) VALUES
(1836, 'Lara', 'Juliet', 'Vladimir Finch', 250, 'Accounting', 33, 'Male', '', NULL),
(1835, 'Hayden', 'Veronica', 'Melissa Bray', 249, 'Office of Student and Welfare Services', 49, 'female', '', NULL),
(1834, 'Tyler', 'Byron', 'Amanda Ferguson', 248, 'College of Hospitality and Tourism Management', 50, 'male', '', NULL),
(1833, 'Chaim', 'Abel', 'Brynne Weaver', 247, 'Administration and Finance', 53, 'female', '', NULL),
(1832, 'Christopher', 'Zahir', 'Harding Brown', 246, 'Administration and Finance', 37, 'female', '', NULL),
(1831, 'Akeem', 'Allistair', 'Gemma Camacho', 245, 'Academic Affairs', 55, 'female', '', NULL),
(1830, 'Dominique', 'Leah', 'Judah Michael', 244, 'College of Business and Accountancy', 59, 'male', '', NULL),
(1829, 'Hiroko', 'Kiona', 'Brock Michael', 243, 'Office of the College Administrator', 58, 'female', '', NULL),
(1828, 'Roth', 'Darius', 'Omar Montgomery', 242, 'Institute of Graduate Studies', 39, 'male', '', NULL),
(1827, 'Roary', 'Naida', 'Imogene Cox', 241, 'Research Development and Community Extension Office', 60, 'female', '', NULL),
(1826, 'Odysseus', 'Grant', 'Timon Wilson', 240, 'College of Computer Studies', 34, 'female', '', NULL),
(1825, 'Maisie', 'Ronan', 'Chaney Ferguson', 239, 'College of Hospitality and Tourism Management', 51, 'female', '', NULL),
(1824, 'Azalia', 'Austin', 'Hashim Blackburn', 238, 'Office of the College President', 57, 'female', '', NULL),
(1823, 'Sacha', 'Raymond', 'Tatum Thomas', 237, 'Research Development and Community Extension Office', 50, 'female', '', NULL),
(1822, 'Roanna', 'Delilah', 'Jana Acevedo', 236, 'College of Computer Studies', 59, 'female', '', NULL),
(1821, 'Xenos', 'Zenia', 'Mason Mccormick', 235, 'College of Allied Health Studies', 22, 'female', '', NULL),
(1820, 'Boris', 'Maia', 'Nolan Bowman', 234, 'Institute of Graduate Studies', 40, 'female', '', NULL),
(1819, 'Aquila', 'Bethany', 'Jolie Rivers', 233, 'Academic Affairs', 55, 'male', '', NULL),
(1818, 'Noah', 'Addison', 'David Villarreal', 232, 'Office of the College President', 57, 'female', '', NULL),
(1817, 'Kiayada', 'Hyacinth', 'Adam Charles', 231, 'Institute of Graduate Studies', 57, 'female', '', NULL),
(1816, 'Pascale', 'Phillip', 'Cameron Emerson', 230, 'College of Hospitality and Tourism Management', 31, 'female', '', NULL),
(1815, 'Lewis', 'Justin', 'Dolan Wilkins', 229, 'College of Business and Accountancy', 43, 'male', '', NULL),
(1814, 'Jack', 'Acton', 'McKenzie English', 228, 'College of Education, Arts and Sciences', 32, 'female', '', NULL),
(1813, 'Isaac', 'Chelsea', 'Yvonne Owen', 227, 'College of Computer Studies', 50, 'female', '', NULL),
(1812, 'Jescie', 'Hector', 'Nigel Richard', 226, 'College of Business and Accountancy', 21, 'female', '', NULL),
(1811, 'Kirestin', 'Octavius', 'Jaime Mueller', 225, 'College of Education, Arts and Sciences', 28, 'female', '', NULL),
(1810, 'Meredith', 'Allen', 'Jameson Mcfarland', 224, 'Office of the College Administrator', 36, 'male', '', NULL),
(1809, 'Gabriel', 'Mercedes', 'Igor Lloyd', 223, 'Office of Student and Welfare Services', 37, 'male', '', NULL),
(1808, 'Xantha', 'McKenzie', 'Ezekiel Whitney', 222, 'Office of the College Administrator', 45, 'female', '', NULL),
(1807, 'Maile', 'Sigourney', 'Myles Joseph', 221, 'College of Hospitality and Tourism Management', 38, 'female', '', NULL),
(1806, 'Wylie', 'Arsenio', 'Nell Webster', 220, 'Office of the College Administrator', 40, 'female', '', NULL),
(1805, 'Herrod', 'Hiroko', 'Bevis Hancock', 219, 'Office of Student and Welfare Services', 33, 'female', '', NULL),
(1804, 'Patrick', 'Chadwick', 'Lucas Merrill', 218, 'Academic Affairs', 38, 'male', '', NULL),
(1803, 'Acton', 'Honorato', 'Justine Nielsen', 217, 'Administration and Finance', 42, 'male', '', NULL),
(1802, 'Richard', 'Chloe', 'Gay Meyers', 216, 'Institute of Graduate Studies', 24, 'female', '', NULL),
(1801, 'Colin', 'Reece', 'Roanna Mckinney', 215, 'Academic Affairs', 61, 'male', '', NULL),
(1800, 'Denise', 'Isadora', 'Ciaran Winters', 214, 'Office of the College President', 55, 'male', '', NULL),
(1799, 'Morgan', 'Clayton', 'Chancellor Strong', 213, 'Office of the College President', 64, 'female', '', NULL),
(1798, 'Cairo', 'Illiana', 'Cadman Munoz', 212, 'College of Allied Health Studies', 42, 'male', '', NULL),
(1797, 'Dorian', 'Lev', 'Oprah Hyde', 211, 'College of Business and Accountancy', 29, 'female', '', NULL),
(1796, 'Rhonda', 'Jasper', 'Illiana Berger', 210, 'Academic Affairs', 41, 'male', '', NULL),
(1795, 'Emerald', 'Sandra', 'Gil Hooper', 209, 'Office of the College Administrator', 57, 'male', '', NULL),
(1794, 'Holmes', 'Margaret', 'Ahmed Harris', 208, 'College of Allied Health Studies', 31, 'male', '', NULL),
(1793, 'Bree', 'Xandra', 'Colton Best', 207, 'Office of Student and Welfare Services', 44, 'male', '', NULL),
(1792, 'Quynn', 'Shoshana', 'Holmes Edwards', 206, 'Administration and Finance', 57, 'male', '', NULL),
(1791, 'Jamal', 'Colleen', 'Hedy Russell', 205, 'Administration and Finance', 35, 'female', '', NULL),
(1790, 'Jaden', 'Talon', 'Caleb Dorsey', 204, 'College of Hospitality and Tourism Management', 31, 'male', '', NULL),
(1789, 'Elaine', 'Amir', 'Nasim Williams', 203, 'College of Allied Health Studies', 42, 'female', '', NULL),
(1788, 'Arsenio', 'Octavia', 'Anastasia Morrow', 202, 'College of Computer Studies', 59, 'female', '', NULL),
(1787, 'Ross', 'Duncan', 'Natalie Malone', 201, 'Administration and Finance', 61, 'female', '', NULL),
(1786, 'Matthew', 'Kelsey', 'Jacqueline Roth', 200, 'Office of the College President', 50, 'female', '', NULL),
(1785, 'Alice', 'Stacey', 'Abraham York', 199, 'Office of Student and Welfare Services', 47, 'male', '', NULL),
(1784, 'Elizabeth', 'Pandora', 'Amelia Clayton', 198, 'Research Development and Community Extension Office', 29, 'male', '', NULL),
(1783, 'Jonas', 'Ray', 'Brenden West', 197, 'College of Computer Studies', 33, 'female', '', NULL),
(1782, 'Tyrone', 'Fulton', 'Raven Craig', 196, 'College of Business and Accountancy', 45, 'male', '', NULL),
(1781, 'Ivory', 'Vaughan', 'Halee Clemons', 195, 'Administration and Finance', 32, 'female', '', NULL),
(1780, 'Kylie', 'Kadeem', 'Tanisha Lang', 194, 'Institute of Graduate Studies', 39, 'female', '', NULL),
(1779, 'Britanney', 'Aiko', 'Cheryl Harris', 193, 'Administration and Finance', 37, 'male', '', NULL),
(1778, 'Cassandra', 'Harriet', 'Kirby Hopper', 192, 'Institute of Graduate Studies', 32, 'male', '', NULL),
(1777, 'Maggy', 'Renee', 'Alexa Rodgers', 191, 'College of Computer Studies', 42, 'male', '', NULL),
(1776, 'Herman', 'Keefe', 'Suki Walters', 190, 'Research Development and Community Extension Office', 39, 'female', '', NULL),
(1775, 'Burke', 'Odysseus', 'Kimberly Leblanc', 189, 'Administration and Finance', 64, 'female', '', NULL),
(1774, 'Helen', 'Allegra', 'Heidi Knowles', 188, 'Office of the College Administrator', 26, 'female', '', NULL),
(1773, 'Melinda', 'Russell', 'Gillian Whitehead', 187, 'Institute of Graduate Studies', 25, 'female', '', NULL),
(1772, 'Erich', 'Aurora', 'Alisa Knowles', 186, 'Office of the College President', 40, 'female', '', NULL),
(1771, 'Jack', 'Jamalia', 'Cheryl Mcmillan', 185, 'College of Hospitality and Tourism Management', 28, 'male', '', NULL),
(1770, 'Teegan', 'Drew', 'Davis Kaufman', 184, 'Administration and Finance', 54, 'male', '', NULL),
(1769, 'Kibo', 'Germane', 'Slade Ryan', 183, 'Administration and Finance', 29, 'female', '', NULL),
(1768, 'Wendy', 'Jolie', 'Lee Mason', 182, 'Institute of Graduate Studies', 47, 'male', '', NULL),
(1767, 'Yoshio', 'Dominique', 'Kasper Smith', 181, 'Institute of Graduate Studies', 53, 'female', '', NULL),
(1766, 'Fredericka', 'Lee', 'Linus Manning', 180, 'Institute of Graduate Studies', 52, 'female', '', NULL),
(1765, 'Leila', 'Basil', 'Benedict Gonzalez', 179, 'College of Computer Studies', 29, 'female', '', NULL),
(1764, 'Aretha', 'Davis', 'Callie Browning', 178, 'Office of Student and Welfare Services', 57, 'male', '', NULL),
(1763, 'Solomon', 'Montana', 'Sybill Zamora', 177, 'Office of the College President', 38, 'male', '', NULL),
(1762, 'Dane', 'Knox', 'Thane Green', 176, 'College of Business and Accountancy', 29, 'female', '', NULL),
(1761, 'Noble', 'Lydia', 'Shaeleigh Bartlett', 175, 'Institute of Graduate Studies', 37, 'male', '', NULL),
(1760, 'Jonas', 'Dominic', 'Rebekah Fernandez', 174, 'Institute of Graduate Studies', 22, 'female', '', NULL),
(1759, 'Hall', 'Nicole', 'Jaquelyn Simon', 173, 'Academic Affairs', 57, 'female', '', NULL),
(1758, 'Zelda', 'Colin', 'Vera Gonzalez', 172, 'Institute of Graduate Studies', 52, 'female', '', NULL),
(1757, 'Molly', 'Marsden', 'Mannix Gross', 171, 'Academic Affairs', 49, 'female', '', NULL),
(1756, 'Finn', 'Kibo', 'Craig Hutchinson', 170, 'College of Allied Health Studies', 26, 'female', '', NULL),
(1755, 'Cara', 'Beatrice', 'Fitzgerald Hughes', 169, 'College of Education, Arts and Sciences', 43, 'female', '', NULL),
(1754, 'Daquan', 'Stacey', 'Byron Lee', 168, 'Administration and Finance', 36, 'female', '', NULL),
(1753, 'Shafira', 'Daryl', 'Aline Case', 167, 'Academic Affairs', 52, 'male', '', NULL),
(1752, 'Winifred', 'Evelyn', 'Lawrence Crawford', 166, 'College of Hospitality and Tourism Management', 46, 'male', '', NULL),
(1751, 'Ulla', 'Wing', 'Whoopi Strickland', 165, 'Office of Student and Welfare Services', 56, 'male', '', NULL),
(1750, 'Carl', 'Len', 'Gage Ferrell', 164, 'College of Education, Arts and Sciences', 30, 'female', '', NULL),
(1749, 'Ann', 'Buffy', 'Adrienne Snyder', 163, 'College of Computer Studies', 35, 'male', '', NULL),
(1748, 'Myles', 'Wylie', 'Micah Rasmussen', 162, 'Office of Student and Welfare Services', 38, 'female', '', NULL),
(1747, 'Bradley', 'Paul', 'Hannah Robertson', 161, 'Office of the College President', 61, 'female', '', NULL),
(1746, 'Constance', 'Raya', 'Katell Goff', 160, 'College of Hospitality and Tourism Management', 37, 'female', '', NULL),
(1745, 'Cameron', 'Echo', 'Janna Wilkerson', 159, 'College of Education, Arts and Sciences', 27, 'female', '', NULL),
(1744, 'Iliana', 'Ingrid', 'Dane Richardson', 158, 'College of Education, Arts and Sciences', 49, 'female', '', NULL),
(1743, 'Amelia', 'Hiram', 'Sydney Gentry', 157, 'Academic Affairs', 29, 'male', '', NULL),
(1742, 'Jonah', 'Neville', 'Drew Medina', 156, 'Office of the College Administrator', 39, 'female', '', NULL),
(1741, 'Zachery', 'Randall', 'Samantha Green', 155, 'College of Computer Studies', 52, 'female', '', NULL),
(1740, 'Ivana', 'Nehru', 'Lysandra Clarke', 154, 'College of Computer Studies', 35, 'female', '', NULL),
(1739, 'Dennis', 'Pamela', 'Austin Byrd', 153, 'Institute of Graduate Studies', 26, 'female', '', NULL),
(1738, 'Whilemina', 'Lana', 'Akeem Dotson', 152, 'Academic Affairs', 24, 'female', '', NULL),
(1737, 'Judith', 'Ishmael', 'Cole Carroll', 151, 'Research Development and Community Extension Office', 54, 'female', '', NULL),
(1736, 'Patrick', 'Aspen', 'Wynne Hansen', 150, 'College of Computer Studies', 21, 'female', '', NULL),
(1735, 'Gregory', 'Boris', 'Austin Cox', 149, 'Office of the College President', 43, 'female', '', NULL),
(1734, 'Remedios', 'Zelda', 'Sasha Lyons', 148, 'Office of the College President', 38, 'male', '', NULL),
(1733, 'Aretha', 'Evan', 'Darrel Dunlap', 147, 'Institute of Graduate Studies', 46, 'female', '', NULL),
(1732, 'Kieran', 'Barrett', 'Maia Green', 146, 'Office of the College President', 21, 'male', '', NULL),
(1731, 'Uta', 'Bo', 'Zia Baldwin', 145, 'Academic Affairs', 50, 'female', '', NULL),
(1730, 'Malcolm', 'Hayes', 'Molly Wilkins', 144, 'Administration and Finance', 64, 'female', '', NULL),
(1729, 'Winter', 'Jada', 'Hyacinth Sanders', 143, 'Research Development and Community Extension Office', 28, 'female', '', NULL),
(1728, 'Audrey', 'Hyacinth', 'Wesley Tyson', 142, 'Research Development and Community Extension Office', 62, 'male', '', NULL),
(1727, 'Daryl', 'Georgia', 'Justina Rich', 141, 'Administration and Finance', 36, 'female', '', NULL),
(1726, 'Alea', 'Yuli', 'Cheryl Haney', 140, 'Research Development and Community Extension Office', 43, 'male', '', NULL),
(1725, 'Tanek', 'Tiger', 'Virginia Willis', 139, 'College of Education, Arts and Sciences', 44, 'male', '', NULL),
(1724, 'Martin', 'Maris', 'Paula Baxter', 138, 'Office of the College Administrator', 23, 'female', '', NULL),
(1723, 'Jasper', 'Dolan', 'Colette Rush', 137, 'Office of the College Administrator', 64, 'male', '', NULL),
(1722, 'Jade', 'Xantha', 'TaShya Alvarado', 136, 'College of Allied Health Studies', 58, 'male', '', NULL),
(1721, 'Odysseus', 'Renee', 'Guinevere Quinn', 135, 'Research Development and Community Extension Office', 39, 'male', '', NULL),
(1720, 'Quinn', 'Aileen', 'Iola Mays', 134, 'College of Allied Health Studies', 39, 'female', '', NULL),
(1719, 'Ignacia', 'Zephania', 'Shana Singleton', 133, 'Office of the College Administrator', 22, 'female', '', NULL),
(1718, 'Giacomo', 'Raymond', 'Lavinia Sloan', 132, 'College of Business and Accountancy', 56, 'male', '', NULL),
(1717, 'Malik', 'Fay', 'Beau Chambers', 131, 'College of Computer Studies', 55, 'male', '', NULL),
(1716, 'Gillian', 'Hammett', 'Leslie Savage', 130, 'Office of Student and Welfare Services', 33, 'female', '', NULL),
(1715, 'Basil', 'Adrian', 'Gemma Montoya', 129, 'Research Development and Community Extension Office', 39, 'female', '', NULL),
(1714, 'Neville', 'Cameron', 'Orla Raymond', 128, 'Office of Student and Welfare Services', 31, 'female', '', NULL),
(1713, 'Zachery', 'Lamar', 'Jermaine Russell', 127, 'Research Development and Community Extension Office', 32, 'male', '', NULL),
(1712, 'Mary', 'Kato', 'Austin Espinoza', 126, 'College of Computer Studies', 59, 'female', '', NULL),
(1711, 'Kirestin', 'Frances', 'Glenna Franco', 125, 'Office of the College President', 45, 'male', '', NULL),
(1710, 'Joan', 'Scarlett', 'Chelsea Acosta', 124, 'Institute of Graduate Studies', 32, 'male', '', NULL),
(1709, 'Cole', 'Joan', 'Zeus Greer', 123, 'Office of Student and Welfare Services', 42, 'female', '', NULL),
(1708, 'Darius', 'Holly', 'Erich Clarke', 122, 'College of Computer Studies', 58, 'male', '', NULL),
(1707, 'Fuller', 'Rahim', 'Yen Warner', 121, 'Research Development and Community Extension Office', 65, 'male', '', NULL),
(1706, 'Derek', 'Elmo', 'Wyoming Kent', 120, 'Institute of Graduate Studies', 33, 'male', '', NULL),
(1705, 'Christen', 'Rhoda', 'Hilel Nash', 119, 'Administration and Finance', 35, 'male', '', NULL),
(1704, 'Jada', 'Brooke', 'Jacqueline Kline', 118, 'College of Allied Health Studies', 63, 'male', '', NULL),
(1703, 'Sarah', 'Echo', 'Owen Daugherty', 117, 'Academic Affairs', 51, 'male', '', NULL),
(1702, 'Victor', 'Suki', 'Geraldine Montgomery', 116, 'Institute of Graduate Studies', 26, 'male', '', NULL),
(1701, 'Sade', 'Brett', 'Hillary Aguirre', 115, 'Office of Student and Welfare Services', 43, 'male', '', NULL),
(1700, 'Hoyt', 'Ulysses', 'Thor Soto', 114, 'College of Computer Studies', 28, 'female', '', NULL),
(1699, 'Ainsley', 'Gay', 'Blake Nunez', 113, 'College of Business and Accountancy', 58, 'male', '', NULL),
(1698, 'Beau', 'Jerry', 'Maris Prince', 112, 'Academic Affairs', 49, 'male', '', NULL),
(1697, 'Margaret', 'Nathaniel', 'Lee Murphy', 111, 'Administration and Finance', 57, 'female', '', NULL),
(1696, 'Yoshio', 'Brenna', 'Dawn Guerra', 110, 'Research Development and Community Extension Office', 64, 'male', '', NULL),
(1695, 'Hedwig', 'Kelsie', 'Deborah Hines', 109, 'Academic Affairs', 23, 'female', '', NULL),
(1694, 'Channing', 'Dexter', 'Jin Sargent', 108, 'Institute of Graduate Studies', 56, 'female', '', NULL),
(1693, 'Colton', 'Edan', 'Jael Justice', 107, 'Research Development and Community Extension Office', 47, 'female', '', NULL),
(1692, 'Derek', 'Mason', 'Kaseem Lambert', 106, 'Institute of Graduate Studies', 56, 'female', '', NULL),
(1691, 'Elvis', 'Keith', 'Jeanette Salazar', 105, 'Office of Student and Welfare Services', 28, 'male', '', NULL),
(1690, 'Unity', 'Martin', 'Ferris Matthews', 104, 'College of Allied Health Studies', 37, 'female', '', NULL),
(1689, 'Keith', 'Violet', 'Lynn Brooks', 103, 'College of Computer Studies', 38, 'female', '', NULL),
(1688, 'Angela', 'Audrey', 'Fuller Mendoza', 102, 'Academic Affairs', 29, 'male', '', NULL),
(1687, 'Kuame', 'Audra', 'Micah Phillips', 101, 'College of Hospitality and Tourism Management', 29, 'female', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sports`
--

CREATE TABLE `tbl_sports` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sports`
--

INSERT INTO `tbl_sports` (`id`, `name`) VALUES
(1, 'Basketball'),
(2, 'Volleyball'),
(3, 'Bowling'),
(4, 'Badminton'),
(5, 'Triathlon'),
(6, 'Mobile Legends'),
(7, 'Chess');

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
(9, 'Team 1', 'White'),
(10, 'Team 2', 'Blue'),
(18, 'Team 3', 'Green');

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
(14, 'Louise', '46a0a09119a77850caad0bdfffcef8f059c9c0f1', 'team leader', 'Louise John Soria', 'Team 2', '2023-06-30 05:55:24');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1837;

--
-- AUTO_INCREMENT for table `tbl_sports`
--
ALTER TABLE `tbl_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
