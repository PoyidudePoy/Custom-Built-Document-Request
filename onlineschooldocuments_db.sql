-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2024 at 03:11 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21855146_onlineschooldocuments_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_decription` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `course_name`, `course_decription`, `date_created`) VALUES
(14, 'Technical-Vocational Livelihood (TVL) ICT', 'Technical-Vocational Livelihood (TVL) ICT', '2023-12-02 17:15:24'),
(15, 'Technical-Vocational Livelihood (TVL) HE', 'Technical-Vocational Livelihood (TVL) HE', '2023-12-02 17:15:48'),
(16, 'Accountancy, Business, and Management (ABM)', 'Accountancy, Business, and Management (ABM)', '2023-12-02 17:16:30'),
(17, 'Science, technology, engineering, and mathematics (STEM)', 'Science, technology, engineering, and mathematics (STEM)', '2023-12-02 17:17:02'),
(19, 'Humanities and Social Sciences (HUMSS)', 'Humanities and Social Sciences (HUMSS)', '2023-12-02 17:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_document`
--

CREATE TABLE `tbl_document` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_decription` varchar(255) NOT NULL,
  `image_size` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_documentrequest`
--

CREATE TABLE `tbl_documentrequest` (
  `request_id` int(11) NOT NULL,
  `control_no` varchar(255) NOT NULL,
  `studentID_no` varchar(255) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `no_ofcopies` varchar(255) NOT NULL,
  `amount_to_pay` int(255) NOT NULL,
  `date_request` varchar(255) NOT NULL,
  `date_releasing` varchar(255) DEFAULT current_timestamp(),
  `processing_officer` varchar(255) DEFAULT 'Waiting for Officer',
  `status` varchar(255) NOT NULL,
  `remarks` varchar(255) DEFAULT current_timestamp(),
  `student_id` int(11) NOT NULL,
  `notif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_documentrequest`
--

INSERT INTO `tbl_documentrequest` (`request_id`, `control_no`, `studentID_no`, `document_name`, `no_ofcopies`, `amount_to_pay`, `date_request`, `date_releasing`, `processing_officer`, `status`, `remarks`, `student_id`, `notif`) VALUES
(42, '999', 'STDNT-006333', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '2024-03-29', 'Admin admin', 'Pending', '2024-03-09 03:03:23', 34, NULL),
(44, '1002', 'STDNT-039030', 'Cert. Of Graduation', '1', 75, '2024-03-09', '2024-03-11', 'NERI', 'Pending', '2024-03-09 03:22:52', 14, NULL),
(45, '1003', 'STDNT-006333', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '2024-03-11', 'NERI', 'Pending', '2024-03-09 03:23:20', 34, NULL),
(46, '1004', 'STDNT-006333', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '2024-03-10', 'NERI', 'Pending', '2024-03-09 03:23:42', 34, NULL),
(47, '1005', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '2024-03-11', 'NERI', 'Pending', '2024-03-09 03:25:22', 14, NULL),
(48, '1009', 'STDNT-50222720', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '2024-03-11', 'Admin admin', 'Pending', '2024-03-09 04:17:50', 17, NULL),
(49, '1008', 'STDNT-039030', 'CAF (COE)', '1', 115, '2024-03-09', '2024-03-10', 'Admin admin', 'Pending', '2024-03-09 04:38:34', 14, NULL),
(50, '1007', 'STDNT-039030', 'Good Moral', '1', 75, '2024-03-09', '2024-03-11', 'Admin admin', 'Pending', '2024-03-09 04:40:40', 14, NULL),
(51, '1006', 'STDNT-006333', 'Cert. Of GWA', '1', 75, '2024-03-09', '2024-03-11', 'Admin admin', 'Pending', '2024-03-09 05:02:45', 34, NULL),
(52, '1010', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Release', '2024-03-09 05:29:57', 14, NULL),
(53, '1015', 'STDNT-039030', 'Good Moral', '1', 75, '2024-03-09', '2024-03-17', 'Admin admin', 'Pending', '2024-03-09 05:33:00', 14, NULL),
(54, '1018', 'STDNT-039030', 'Good Moral', '1', 75, '2024-03-11', '2024-03-10', 'Admin admin', 'Pending', '2024-03-09 05:33:49', 14, NULL),
(55, '1017', 'STDNT-039030', 'Cert. Of Graduation', '1', 75, '2024-03-09', '2024-03-12', 'Admin admin', 'Pending', '2024-03-09 05:34:28', 14, NULL),
(56, '1016', 'STDNT-006333', 'Certified true copy f137 g11', '1', 20, '2024-03-09', '2024-03-14', 'Admin admin', 'Pending', '2024-03-09 11:00:35', 34, NULL),
(57, '1014', 'STDNT-37700338', 'Good Moral', '1', 75, '2024-03-09', '2024-03-15', 'Admin admin', 'Pending', '2024-03-09 11:18:45', 16, NULL),
(58, '1013', 'STDNT-50222720', 'Cert. Of GWA', '1', 75, '2024-03-09', '2024-03-13', 'Admin admin', 'Pending', '2024-03-09 11:27:06', 17, NULL),
(59, '1012', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Release', '2024-03-09 12:37:42', 14, NULL),
(60, '1019', 'STDNT-006333', 'Good Moral', '1', 75, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 12:48:39', 34, NULL),
(61, '1020', 'STDNT-039030', 'Good Moral', '1', 75, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 13:14:30', 14, NULL),
(62, '1021', 'STDNT-039030', 'Cert. Of Grades', '1', 75, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 13:19:36', 14, NULL),
(63, '1022', 'STDNT-5329208', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:27:30', 32, NULL),
(64, '1028', 'STDNT-5329208', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:29:04', 32, NULL),
(65, '1023', 'STDNT-5329208', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:29:25', 32, NULL),
(66, '1024', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:39:52', 14, NULL),
(67, '1025', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:53:04', 14, NULL),
(68, '1026', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:54:17', 14, NULL),
(69, '1027', 'STDNT-039030', 'Certified true copy f137 g10', '1', 20, '2024-03-09', '', 'Admin admin', 'Pending', '2024-03-09 16:58:36', 14, NULL),
(70, '34534', 'STDNT-50222720', 'Certified true copy f137 g10', '1', 20, '2024-03-29', '', 'Admin admin', 'Received', '2024-03-29 06:01:23', 17, NULL),
(73, 'CTRL-225018', 'STDNT-2222307', 'Certified true copy f137 g11', '1', 20, '2024-04-12', '2024-04-12 14:24:28', 'Waiting for Officer', 'Received', '2024-04-12 14:24:28', 18, NULL),
(74, 'CTRL-93018', 'STDNT-2222307', 'Certified true copy f137 g11', '1', 20, '2024-04-12', '2024-04-12 14:25:20', 'Waiting for Officer', 'Received', '2024-04-12 14:25:20', 18, NULL),
(75, 'CTRL-053336', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-12', '2024-04-12 15:48:11', 'Waiting for Officer', 'Received', '2024-04-12 15:48:11', 36, NULL),
(76, 'CTRL-080017', 'STDNT-50222720', 'Certified true copy f137 g10', '1', 20, '2024-04-13', '2024-04-13 02:29:16', 'Waiting for Officer', 'Received', '2024-04-13 02:29:16', 17, NULL),
(77, 'CTRL-809337', 'STDNT-03323023', 'Certified true copy f137 g10', '1', 20, '2024-04-13', '2024-04-17', 'Admin admin', 'Pending', '2024-04-13 02:49:58', 37, NULL),
(78, 'CTRL-3220', 'STDNT-3233003', 'Certified true copy f137 g10', '1', 20, '2024-04-13', '2024-04-13 10:34:33', 'Waiting for Officer', 'Received', '2024-04-13 10:34:33', 20, NULL),
(79, 'CTRL-2217', 'STDNT-50222720', 'CAF (COE)', '1', 115, '2024-04-13', '2024-04-13 11:52:51', 'Waiting for Officer', 'Received', '2024-04-13 11:52:51', 17, NULL),
(80, 'CTRL-4320', 'STDNT-3233003', 'Certified true copy f137 g10', '1', 20, '2024-04-14', '2024-04-14 09:18:16', 'Waiting for Officer', 'Received', '2024-04-14 09:18:16', 20, NULL),
(81, 'CTRL-72221', 'STDNT-800533', 'Certified true copy f137 g10', '1', 20, '2024-04-14', '2024-04-14 09:26:00', 'Waiting for Officer', 'Received', '2024-04-14 09:26:00', 21, NULL),
(82, 'CTRL-32328', 'STDNT-236022', 'Certified true copy f137 g11', '1', 20, '2024-04-14', '2024-04-14 11:25:14', 'Waiting for Officer', 'Received', '2024-04-14 11:25:14', 28, NULL),
(83, 'CTRL-03010', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 00:32:23', 'Waiting for Officer', 'Received', '2024-04-15 00:32:23', 10, NULL),
(84, 'CTRL-533010', 'STDNT-030320', 'Cert. Of Grades', '1', 75, '2024-04-15', '2024-04-15 10:05:11', 'Waiting for Officer', 'Received', '2024-04-15 10:05:11', 10, NULL),
(85, 'CTRL-326310', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 10:18:31', 'Waiting for Officer', 'Received', '2024-04-15 10:18:31', 10, NULL),
(86, 'CTRL-733210', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 10:19:37', 'Waiting for Officer', 'Received', '2024-04-15 10:19:37', 10, NULL),
(87, 'CTRL-304310', 'STDNT-030320', 'Cert. Of Grades', '1', 75, '2024-04-15', '2024-04-15 10:26:20', 'Waiting for Officer', 'Received', '2024-04-15 10:26:20', 10, NULL),
(88, 'CTRL-302310', 'STDNT-030320', 'Cert. Of Grades', '1', 75, '2024-04-15', '2024-04-15 10:27:12', 'Waiting for Officer', 'Received', '2024-04-15 10:27:12', 10, NULL),
(89, 'CTRL-38427', 'STDNT-2232222', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 10:40:35', 'Waiting for Officer', 'Received', '2024-04-15 10:40:35', 27, NULL),
(90, 'CTRL-63310', 'STDNT-030320', 'Good Moral', '1', 75, '2024-04-15', '2024-04-15 10:55:27', 'Waiting for Officer', 'Received', '2024-04-15 10:55:27', 10, NULL),
(91, 'CTRL-33726', 'STDNT-2233223', 'Certified true copy f137 g10', '1', 20, '2024-04-15', '2024-04-15 12:31:21', 'Waiting for Officer', 'Received', '2024-04-15 12:31:21', 26, NULL),
(92, 'CTRL-232210', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 22:16:48', 'Waiting for Officer', 'Received', '2024-04-15 22:16:48', 10, NULL),
(93, 'CTRL-910', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-15', '2024-04-15 22:23:32', 'Waiting for Officer', 'Received', '2024-04-15 22:23:32', 10, NULL),
(94, 'CTRL-353010', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 22:24:15', 'Waiting for Officer', 'Received', '2024-04-15 22:24:15', 10, NULL),
(95, 'CTRL-2228', 'STDNT-236022', 'Certified true copy f137 g11', '1', 20, '2024-04-15', '2024-04-15 22:26:29', 'Waiting for Officer', 'Received', '2024-04-15 22:26:29', 28, NULL),
(96, 'CTRL-2227', 'STDNT-083635', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 01:51:28', 'Waiting for Officer', 'Received', '2024-04-16 01:51:28', 7, NULL),
(97, 'CTRL-02037', 'STDNT-083635', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 01:51:48', 'Waiting for Officer', 'Received', '2024-04-16 01:51:48', 7, NULL),
(98, 'CTRL-0507', 'STDNT-083635', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 01:52:11', 'Waiting for Officer', 'Received', '2024-04-16 01:52:11', 7, NULL),
(99, 'CTRL-637', 'STDNT-083635', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 01:52:41', 'Waiting for Officer', 'Received', '2024-04-16 01:52:41', 7, NULL),
(100, 'CTRL-0367', 'STDNT-083635', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 01:53:01', 'Waiting for Officer', 'Received', '2024-04-16 01:53:01', 7, NULL),
(101, 'CTRL-30397', 'STDNT-083635', 'Cert. Of Enrollment', '1', 75, '2024-04-16', '2024-04-16 01:53:22', 'Waiting for Officer', 'Received', '2024-04-16 01:53:22', 7, NULL),
(102, 'CTRL-2037', 'STDNT-083635', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 01:54:12', 'Waiting for Officer', 'Received', '2024-04-16 01:54:12', 7, NULL),
(103, 'CTRL-27', 'STDNT-083635', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 01:57:37', 'Waiting for Officer', 'Received', '2024-04-16 01:57:37', 7, NULL),
(104, 'CTRL-43037', 'STDNT-03323023', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 02:57:30', 'Waiting for Officer', 'Received', '2024-04-16 02:57:30', 37, NULL),
(105, 'CTRL-20937', 'STDNT-03323023', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 02:59:18', 'Waiting for Officer', 'Received', '2024-04-16 02:59:18', 37, NULL),
(106, 'CTRL-2237', 'STDNT-03323023', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 02:59:41', 'Waiting for Officer', 'Received', '2024-04-16 02:59:41', 37, NULL),
(107, 'CTRL-203037', 'STDNT-03323023', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 02:59:55', 'Waiting for Officer', 'Received', '2024-04-16 02:59:55', 37, NULL),
(108, 'CTRL-242337', 'STDNT-03323023', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:00:06', 'Waiting for Officer', 'Received', '2024-04-16 03:00:06', 37, NULL),
(109, 'CTRL-36037', 'STDNT-03323023', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:00:21', 'Waiting for Officer', 'Received', '2024-04-16 03:00:21', 37, NULL),
(110, 'CTRL-2337', 'STDNT-03323023', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 03:00:36', 'Waiting for Officer', 'Received', '2024-04-16 03:00:36', 37, NULL),
(111, 'CTRL-023837', 'STDNT-03323023', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 03:00:37', 'Waiting for Officer', 'Received', '2024-04-16 03:00:37', 37, NULL),
(112, 'CTRL-2937', 'STDNT-03323023', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:00:46', 'Waiting for Officer', 'Received', '2024-04-16 03:00:46', 37, NULL),
(113, 'CTRL-35037', 'STDNT-03323023', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 03:00:53', 'Waiting for Officer', 'Received', '2024-04-16 03:00:53', 37, NULL),
(114, 'CTRL-33337', 'STDNT-03323023', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:00:55', 'Waiting for Officer', 'Received', '2024-04-16 03:00:55', 37, NULL),
(115, 'CTRL-30237', 'STDNT-03323023', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:00:59', 'Waiting for Officer', 'Received', '2024-04-16 03:00:59', 37, NULL),
(116, 'CTRL-206237', 'STDNT-03323023', 'Cert. Of Enrollment', '1', 75, '2024-04-16', '2024-04-16 03:01:05', 'Waiting for Officer', 'Received', '2024-04-16 03:01:05', 37, NULL),
(117, 'CTRL-30837', 'STDNT-03323023', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 03:01:19', 'Waiting for Officer', 'Received', '2024-04-16 03:01:19', 37, NULL),
(118, 'CTRL-343337', 'STDNT-03323023', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:01:34', 'Waiting for Officer', 'Received', '2024-04-16 03:01:34', 37, NULL),
(119, 'CTRL-702337', 'STDNT-03323023', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:02:32', 'Waiting for Officer', 'Received', '2024-04-16 03:02:32', 37, NULL),
(120, 'CTRL-920234', 'STDNT-006333', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 03:06:47', 'Waiting for Officer', 'Received', '2024-04-16 03:06:47', 34, NULL),
(121, 'CTRL-229334', 'STDNT-006333', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 03:07:05', 'Waiting for Officer', 'Received', '2024-04-16 03:07:05', 34, NULL),
(122, 'CTRL-202334', 'STDNT-006333', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:07:25', 'Waiting for Officer', 'Received', '2024-04-16 03:07:25', 34, NULL),
(123, 'CTRL-7334', 'STDNT-006333', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 03:09:55', 'Waiting for Officer', 'Received', '2024-04-16 03:09:55', 34, NULL),
(124, 'CTRL-02234', 'STDNT-006333', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 03:11:03', 'Waiting for Officer', 'Received', '2024-04-16 03:11:03', 34, NULL),
(125, 'CTRL-30234', 'STDNT-006333', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:11:12', 'Waiting for Officer', 'Received', '2024-04-16 03:11:12', 34, NULL),
(126, 'CTRL-400634', 'STDNT-006333', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:11:21', 'Waiting for Officer', 'Received', '2024-04-16 03:11:21', 34, NULL),
(127, 'CTRL-22810', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:15:14', 'Waiting for Officer', 'Received', '2024-04-16 03:15:14', 10, NULL),
(128, 'CTRL-63010', 'STDNT-030320', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 03:15:29', 'Waiting for Officer', 'Received', '2024-04-16 03:15:29', 10, NULL),
(129, 'CTRL-23310', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:16:04', 'Waiting for Officer', 'Received', '2024-04-16 03:16:04', 10, NULL),
(130, 'CTRL-93237', 'STDNT-03323023', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:16:45', 'Waiting for Officer', 'Received', '2024-04-16 03:16:45', 37, NULL),
(131, 'CTRL-303037', 'STDNT-03323023', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:16:52', 'Waiting for Officer', 'Received', '2024-04-16 03:16:52', 37, NULL),
(132, 'CTRL-240037', 'STDNT-03323023', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:16:59', 'Waiting for Officer', 'Received', '2024-04-16 03:16:59', 37, NULL),
(133, 'CTRL-33337', 'STDNT-03323023', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:17:06', 'Waiting for Officer', 'Received', '2024-04-16 03:17:06', 37, NULL),
(134, 'CTRL-293610', 'STDNT-030320', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:17:10', 'Waiting for Officer', 'Received', '2024-04-16 03:17:10', 10, NULL),
(135, 'CTRL-952237', 'STDNT-03323023', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:17:15', 'Waiting for Officer', 'Received', '2024-04-16 03:17:15', 37, NULL),
(136, 'CTRL-032310', 'STDNT-030320', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:17:25', 'Waiting for Officer', 'Received', '2024-04-16 03:17:25', 10, NULL),
(137, 'CTRL-39337', 'STDNT-03323023', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 03:17:28', 'Waiting for Officer', 'Received', '2024-04-16 03:17:28', 37, NULL),
(138, 'CTRL-90911', 'STDNT-0334532', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:20:54', 'Waiting for Officer', 'Received', '2024-04-16 03:20:54', 11, NULL),
(139, 'CTRL-22011', 'STDNT-0334532', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 03:21:05', 'Waiting for Officer', 'Received', '2024-04-16 03:21:05', 11, NULL),
(140, 'CTRL-311', 'STDNT-0334532', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:21:15', 'Waiting for Officer', 'Received', '2024-04-16 03:21:15', 11, NULL),
(141, 'CTRL-333011', 'STDNT-0334532', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 03:21:27', 'Waiting for Officer', 'Received', '2024-04-16 03:21:27', 11, NULL),
(142, 'CTRL-322511', 'STDNT-0334532', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:21:39', 'Waiting for Officer', 'Received', '2024-04-16 03:21:39', 11, NULL),
(143, 'CTRL-32011', 'STDNT-0334532', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:22:13', 'Waiting for Officer', 'Received', '2024-04-16 03:22:13', 11, NULL),
(144, 'CTRL-725228', 'STDNT-236022', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:22:38', 'Waiting for Officer', 'Received', '2024-04-16 03:22:38', 28, NULL),
(145, 'CTRL-4011', 'STDNT-0334532', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:23:04', 'Waiting for Officer', 'Received', '2024-04-16 03:23:04', 11, NULL),
(146, 'CTRL-242228', 'STDNT-236022', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:23:05', 'Waiting for Officer', 'Received', '2024-04-16 03:23:05', 28, NULL),
(147, 'CTRL-33428', 'STDNT-236022', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:23:12', 'Waiting for Officer', 'Received', '2024-04-16 03:23:12', 28, NULL),
(148, 'CTRL-88028', 'STDNT-236022', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 03:23:18', 'Waiting for Officer', 'Received', '2024-04-16 03:23:18', 28, NULL),
(149, 'CTRL-222328', 'STDNT-236022', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 03:23:25', 'Waiting for Officer', 'Received', '2024-04-16 03:23:25', 28, NULL),
(150, 'CTRL-00028', 'STDNT-236022', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:23:33', 'Waiting for Officer', 'Received', '2024-04-16 03:23:33', 28, NULL),
(151, 'CTRL-3328', 'STDNT-236022', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:23:45', 'Waiting for Officer', 'Received', '2024-04-16 03:23:45', 28, NULL),
(152, 'CTRL-20428', 'STDNT-236022', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:23:54', 'Waiting for Officer', 'Received', '2024-04-16 03:23:54', 28, NULL),
(153, 'CTRL-36527', 'STDNT-2232222', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:25:08', 'Waiting for Officer', 'Received', '2024-04-16 03:25:08', 27, NULL),
(154, 'CTRL-92427', 'STDNT-2232222', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 03:25:15', 'Waiting for Officer', 'Received', '2024-04-16 03:25:15', 27, NULL),
(155, 'CTRL-30027', 'STDNT-2232222', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:25:37', 'Waiting for Officer', 'Received', '2024-04-16 03:25:37', 27, NULL),
(156, 'CTRL-22027', 'STDNT-2232222', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:25:45', 'Waiting for Officer', 'Received', '2024-04-16 03:25:45', 27, NULL),
(157, 'CTRL-234827', 'STDNT-2232222', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:25:51', 'Waiting for Officer', 'Received', '2024-04-16 03:25:51', 27, NULL),
(158, 'CTRL-022227', 'STDNT-2232222', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:25:58', 'Waiting for Officer', 'Received', '2024-04-16 03:25:58', 27, NULL),
(159, 'CTRL-02227', 'STDNT-2232222', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 03:26:06', 'Waiting for Officer', 'Received', '2024-04-16 03:26:06', 27, NULL),
(160, 'CTRL-230327', 'STDNT-2232222', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 03:26:11', 'Waiting for Officer', 'Received', '2024-04-16 03:26:11', 27, NULL),
(161, 'CTRL-30327', 'STDNT-2232222', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:26:19', 'Waiting for Officer', 'Received', '2024-04-16 03:26:19', 27, NULL),
(162, 'CTRL-309327', 'STDNT-2232222', 'Cert. Of Enrollment', '1', 75, '2024-04-16', '2024-04-16 03:26:33', 'Waiting for Officer', 'Received', '2024-04-16 03:26:33', 27, NULL),
(163, 'CTRL-33227', 'STDNT-2232222', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 03:26:39', 'Waiting for Officer', 'Received', '2024-04-16 03:26:39', 27, NULL),
(164, 'CTRL-324327', 'STDNT-2232222', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:26:47', 'Waiting for Officer', 'Received', '2024-04-16 03:26:47', 27, NULL),
(165, 'CTRL-230327', 'STDNT-2232222', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:26:55', 'Waiting for Officer', 'Received', '2024-04-16 03:26:55', 27, NULL),
(166, 'CTRL-233311', 'STDNT-0334532', 'CAF (COE)', '1', 115, '2024-04-16', '2024-04-16 03:27:00', 'Waiting for Officer', 'Received', '2024-04-16 03:27:00', 11, NULL),
(167, 'CTRL-354311', 'STDNT-0334532', 'Form 137', '1', 150, '2024-04-16', '2024-04-16 03:27:08', 'Waiting for Officer', 'Received', '2024-04-16 03:27:08', 11, NULL),
(168, 'CTRL-608318', 'STDNT-2222307', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:28:30', 'Waiting for Officer', 'Received', '2024-04-16 03:28:30', 18, NULL),
(169, 'CTRL-595318', 'STDNT-2222307', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 03:28:37', 'Waiting for Officer', 'Received', '2024-04-16 03:28:37', 18, NULL),
(170, 'CTRL-33818', 'STDNT-2222307', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 03:28:43', 'Waiting for Officer', 'Received', '2024-04-16 03:28:43', 18, NULL),
(171, 'CTRL-30618', 'STDNT-2222307', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 03:28:51', 'Waiting for Officer', 'Received', '2024-04-16 03:28:51', 18, NULL),
(172, 'CTRL-00718', 'STDNT-2222307', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 03:28:57', 'Waiting for Officer', 'Received', '2024-04-16 03:28:57', 18, NULL),
(173, 'CTRL-23318', 'STDNT-2222307', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:29:03', 'Waiting for Officer', 'Received', '2024-04-16 03:29:03', 18, NULL),
(174, 'CTRL-33218', 'STDNT-2222307', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 03:29:12', 'Waiting for Officer', 'Received', '2024-04-16 03:29:12', 18, NULL),
(175, 'CTRL-222218', 'STDNT-2222307', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 03:29:19', 'Waiting for Officer', 'Received', '2024-04-16 03:29:19', 18, NULL),
(176, 'CTRL-23318', 'STDNT-2222307', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 03:29:26', 'Waiting for Officer', 'Received', '2024-04-16 03:29:26', 18, NULL),
(177, 'CTRL-327218', 'STDNT-2222307', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 03:29:33', 'Waiting for Officer', 'Received', '2024-04-16 03:29:33', 18, NULL),
(178, 'CTRL-330218', 'STDNT-2222307', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 03:29:48', 'Waiting for Officer', 'Received', '2024-04-16 03:29:48', 18, NULL),
(179, 'CTRL-3018', 'STDNT-2222307', 'Cert. Of Enrollment', '1', 75, '2024-04-16', '2024-04-16 03:29:55', 'Waiting for Officer', 'Received', '2024-04-16 03:29:55', 18, NULL),
(180, 'CTRL-03212', 'STDNT-23640050', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 12:12:07', 'Waiting for Officer', 'Received', '2024-04-16 12:12:07', 12, NULL),
(181, 'CTRL-433636', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-16', '2024-04-16 15:09:23', 'Waiting for Officer', 'Received', '2024-04-16 15:09:23', 36, NULL),
(182, 'CTRL-023336', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-16', '2024-04-16 15:09:35', 'Waiting for Officer', 'Received', '2024-04-16 15:09:35', 36, NULL),
(183, 'CTRL-08036', 'STDNT-22220062', 'Good Moral', '1', 75, '2024-04-16', '2024-04-16 15:11:39', 'Waiting for Officer', 'Received', '2024-04-16 15:11:39', 36, NULL),
(184, 'CTRL-22536', 'STDNT-22220062', 'Cert. Of GWA', '1', 75, '2024-04-16', '2024-04-16 15:33:27', 'Waiting for Officer', 'Received', '2024-04-16 15:33:27', 36, NULL),
(185, 'CTRL-304336', 'STDNT-22220062', 'Cert. Of Marticulation', '1', 75, '2024-04-16', '2024-04-16 15:35:40', 'Waiting for Officer', 'Received', '2024-04-16 15:35:40', 36, NULL),
(186, 'CTRL-0236', 'STDNT-22220062', 'Cert. Of Graduation', '1', 75, '2024-04-16', '2024-04-16 15:35:58', 'Waiting for Officer', 'Received', '2024-04-16 15:35:58', 36, NULL),
(187, 'CTRL-4536', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-16', '2024-04-16 15:36:14', 'Waiting for Officer', 'Received', '2024-04-16 15:36:14', 36, NULL),
(188, 'CTRL-303036', 'STDNT-22220062', 'Cert. Of Completion', '1', 75, '2024-04-16', '2024-04-16 15:38:19', 'Waiting for Officer', 'Received', '2024-04-16 15:38:19', 36, NULL),
(189, 'CTRL-22036', 'STDNT-22220062', 'Cert. Of Enrollment', '1', 75, '2024-04-16', '2024-04-16 15:39:39', 'Waiting for Officer', 'Received', '2024-04-16 15:39:39', 36, NULL),
(190, 'CTRL-3236', 'STDNT-22220062', 'CAF (GM)', '1', 115, '2024-04-16', '2024-04-16 15:40:39', 'Waiting for Officer', 'Received', '2024-04-16 15:40:39', 36, NULL),
(191, 'CTRL-7027', 'STDNT-083635', 'Cert. Of Enrollment', '1', 75, '2024-04-17', '2024-04-17 01:11:15', 'Waiting for Officer', 'Received', '2024-04-17 01:11:15', 7, NULL),
(192, 'CTRL-044339', 'STDNT-20742323', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 02:04:43', 'Waiting for Officer', 'Received', '2024-04-18 02:04:43', 39, NULL),
(193, 'CTRL-232637', 'STDNT-03323023', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 02:07:37', 'Waiting for Officer', 'Received', '2024-04-18 02:07:37', 37, NULL),
(194, 'CTRL-35937', 'STDNT-03323023', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 02:09:58', 'Waiting for Officer', 'Received', '2024-04-18 02:09:58', 37, NULL),
(195, 'CTRL-39037', 'STDNT-03323023', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 02:11:13', 'Waiting for Officer', 'Received', '2024-04-18 02:11:13', 37, NULL),
(196, 'CTRL-00237', 'STDNT-03323023', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 03:02:55', 'Waiting for Officer', 'Received', '2024-04-18 03:02:55', 37, NULL),
(197, 'CTRL-4297', 'STDNT-083635', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 04:51:41', 'Waiting for Officer', 'Received', '2024-04-18 04:51:41', 7, NULL),
(198, 'CTRL-527341', 'STDNT-230233', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 05:47:28', 'Waiting for Officer', 'Received', '2024-04-18 05:47:28', 41, NULL),
(199, 'CTRL-04741', 'STDNT-230233', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 05:47:45', 'Waiting for Officer', 'Received', '2024-04-18 05:47:45', 41, NULL),
(200, 'CTRL-042341', 'STDNT-230233', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 05:48:06', 'Waiting for Officer', 'Received', '2024-04-18 05:48:06', 41, NULL),
(201, 'CTRL-24041', 'STDNT-230233', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 05:48:48', 'Waiting for Officer', 'Received', '2024-04-18 05:48:48', 41, NULL),
(202, 'CTRL-3341', 'STDNT-230233', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 05:49:10', 'Waiting for Officer', 'Received', '2024-04-18 05:49:10', 41, NULL),
(203, 'CTRL-263241', 'STDNT-230233', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 05:49:24', 'Waiting for Officer', 'Received', '2024-04-18 05:49:24', 41, NULL),
(204, 'CTRL-000241', 'STDNT-230233', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 05:50:02', 'Waiting for Officer', 'Received', '2024-04-18 05:50:02', 41, NULL),
(205, 'CTRL-23241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 05:50:23', 'Waiting for Officer', 'Received', '2024-04-18 05:50:23', 41, NULL),
(206, 'CTRL-20241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 05:50:44', 'Waiting for Officer', 'Received', '2024-04-18 05:50:44', 41, NULL),
(207, 'CTRL-20241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 05:50:47', 'Waiting for Officer', 'Received', '2024-04-18 05:50:47', 41, NULL),
(208, 'CTRL-300641', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 05:51:05', 'Waiting for Officer', 'Received', '2024-04-18 05:51:05', 41, NULL),
(209, 'CTRL-3241', 'STDNT-230233', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 05:51:24', 'Waiting for Officer', 'Received', '2024-04-18 05:51:24', 41, NULL),
(210, 'CTRL-62341', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 05:52:09', 'Waiting for Officer', 'Received', '2024-04-18 05:52:09', 41, NULL),
(211, 'CTRL-203241', 'STDNT-230233', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 05:52:32', 'Waiting for Officer', 'Received', '2024-04-18 05:52:32', 41, NULL),
(212, 'CTRL-203241', 'STDNT-230233', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 05:52:45', 'Waiting for Officer', 'Received', '2024-04-18 05:52:45', 41, NULL),
(213, 'CTRL-2036', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 06:09:54', 'Waiting for Officer', 'Received', '2024-04-18 06:09:54', 36, NULL),
(214, 'CTRL-000036', 'STDNT-22220062', 'Certified true copy f137 g10<br>Good Moral<br>Form 137', '3', 245, '2024-04-18', '2024-04-24', 'Admin admin', 'Pending', '2024-04-18 06:10:30', 36, NULL),
(215, 'CTRL-000036', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 06:10:32', 'Waiting for Officer', 'Received', '2024-04-18 06:10:32', 36, NULL),
(216, 'CTRL-436', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 06:10:41', 'Waiting for Officer', 'Received', '2024-04-18 06:10:41', 36, NULL),
(217, 'CTRL-830236', 'STDNT-22220062', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 06:13:21', 'Waiting for Officer', 'Received', '2024-04-18 06:13:21', 36, NULL),
(218, 'CTRL-57836', 'STDNT-22220062', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 06:13:33', 'Waiting for Officer', 'Received', '2024-04-18 06:13:33', 36, NULL),
(219, 'CTRL-300036', 'STDNT-22220062', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 06:13:50', 'Waiting for Officer', 'Received', '2024-04-18 06:13:50', 36, NULL),
(220, 'CTRL-202036', 'STDNT-22220062', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 06:14:26', 'Waiting for Officer', 'Received', '2024-04-18 06:14:26', 36, NULL),
(221, 'CTRL-56236', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 06:15:37', 'Waiting for Officer', 'Received', '2024-04-18 06:15:37', 36, NULL),
(222, 'CTRL-539236', 'STDNT-22220062', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 06:15:49', 'Waiting for Officer', 'Received', '2024-04-18 06:15:49', 36, NULL),
(223, 'CTRL-0036', 'STDNT-22220062', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 06:16:02', 'Waiting for Officer', 'Received', '2024-04-18 06:16:02', 36, NULL),
(224, 'CTRL-023636', 'STDNT-22220062', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 06:16:18', 'Waiting for Officer', 'Received', '2024-04-18 06:16:18', 36, NULL),
(225, 'CTRL-722336', 'STDNT-22220062', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 06:16:32', 'Waiting for Officer', 'Received', '2024-04-18 06:16:32', 36, NULL),
(226, 'CTRL-222436', 'STDNT-22220062', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 06:16:44', 'Waiting for Officer', 'Received', '2024-04-18 06:16:44', 36, NULL),
(227, 'CTRL-802436', 'STDNT-22220062', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 06:19:47', 'Waiting for Officer', 'Received', '2024-04-18 06:19:47', 36, NULL),
(228, 'CTRL-22341', 'STDNT-230233', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 07:12:34', 'Waiting for Officer', 'Received', '2024-04-18 07:12:34', 41, NULL),
(229, 'CTRL-223341', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:12:57', 'Waiting for Officer', 'Received', '2024-04-18 07:12:57', 41, NULL),
(230, 'CTRL-9341', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:13:15', 'Waiting for Officer', 'Received', '2024-04-18 07:13:15', 41, NULL),
(231, 'CTRL-341', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:13:56', 'Waiting for Officer', 'Received', '2024-04-18 07:13:56', 41, NULL),
(232, 'CTRL-33041', 'STDNT-230233', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 07:15:58', 'Waiting for Officer', 'Received', '2024-04-18 07:15:58', 41, NULL),
(233, 'CTRL-232341', 'STDNT-230233', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:19:17', 'Waiting for Officer', 'Received', '2024-04-18 07:19:17', 41, NULL),
(234, 'CTRL-833341', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:19:45', 'Waiting for Officer', 'Received', '2024-04-18 07:19:45', 41, NULL),
(235, 'CTRL-03941', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:20:07', 'Waiting for Officer', 'Received', '2024-04-18 07:20:07', 41, NULL),
(236, 'CTRL-30641', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:20:29', 'Waiting for Officer', 'Received', '2024-04-18 07:20:29', 41, NULL),
(237, 'CTRL-242341', 'STDNT-230233', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 07:21:27', 'Waiting for Officer', 'Received', '2024-04-18 07:21:27', 41, NULL),
(238, 'CTRL-30541', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:21:46', 'Waiting for Officer', 'Received', '2024-04-18 07:21:46', 41, NULL),
(239, 'CTRL-55841', 'STDNT-230233', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 07:21:59', 'Waiting for Officer', 'Received', '2024-04-18 07:21:59', 41, NULL),
(240, 'CTRL-24341', 'STDNT-230233', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 07:22:36', 'Waiting for Officer', 'Received', '2024-04-18 07:22:36', 41, NULL),
(241, 'CTRL-232341', 'STDNT-230233', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 07:22:57', 'Waiting for Officer', 'Received', '2024-04-18 07:22:57', 41, NULL),
(242, 'CTRL-400441', 'STDNT-230233', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 07:23:42', 'Waiting for Officer', 'Received', '2024-04-18 07:23:42', 41, NULL),
(243, 'CTRL-83641', 'STDNT-230233', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 07:25:25', 'Waiting for Officer', 'Received', '2024-04-18 07:25:25', 41, NULL),
(244, 'CTRL-972341', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:25:40', 'Waiting for Officer', 'Received', '2024-04-18 07:25:40', 41, NULL),
(245, 'CTRL-95341', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:34:16', 'Waiting for Officer', 'Received', '2024-04-18 07:34:16', 41, NULL),
(246, 'CTRL-241', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:34:29', 'Waiting for Officer', 'Received', '2024-04-18 07:34:29', 41, NULL),
(247, 'CTRL-39541', 'STDNT-230233', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 07:34:52', 'Waiting for Officer', 'Received', '2024-04-18 07:34:52', 41, NULL),
(248, 'CTRL-3241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:37:12', 'Waiting for Officer', 'Received', '2024-04-18 07:37:12', 41, NULL),
(249, 'CTRL-0210', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:38:28', 'Waiting for Officer', 'Received', '2024-04-18 07:38:28', 10, NULL),
(250, 'CTRL-622021', 'STDNT-800533', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:39:55', 'Waiting for Officer', 'Received', '2024-04-18 07:39:55', 21, NULL),
(251, 'CTRL-224221', 'STDNT-800533', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 07:40:03', 'Waiting for Officer', 'Received', '2024-04-18 07:40:03', 21, NULL),
(252, 'CTRL-3821', 'STDNT-800533', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:40:10', 'Waiting for Officer', 'Received', '2024-04-18 07:40:10', 21, NULL),
(253, 'CTRL-23221', 'STDNT-800533', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 07:40:18', 'Waiting for Officer', 'Received', '2024-04-18 07:40:18', 21, NULL),
(254, 'CTRL-905021', 'STDNT-800533', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 07:40:32', 'Waiting for Officer', 'Received', '2024-04-18 07:40:32', 21, NULL),
(255, 'CTRL-79821', 'STDNT-800533', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 07:40:45', 'Waiting for Officer', 'Received', '2024-04-18 07:40:45', 21, NULL),
(256, 'CTRL-321', 'STDNT-800533', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 07:43:22', 'Waiting for Officer', 'Received', '2024-04-18 07:43:22', 21, NULL),
(257, 'CTRL-203221', 'STDNT-800533', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 07:44:03', 'Waiting for Officer', 'Received', '2024-04-18 07:44:03', 21, NULL),
(258, 'CTRL-29221', 'STDNT-800533', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:44:19', 'Waiting for Officer', 'Received', '2024-04-18 07:44:19', 21, NULL),
(259, 'CTRL-32021', 'STDNT-800533', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:45:29', 'Waiting for Officer', 'Received', '2024-04-18 07:45:29', 21, NULL),
(260, 'CTRL-25241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:47:13', 'Waiting for Officer', 'Received', '2024-04-18 07:47:13', 41, NULL),
(261, 'CTRL-228041', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:47:33', 'Waiting for Officer', 'Received', '2024-04-18 07:47:33', 41, NULL),
(262, 'CTRL-83041', 'STDNT-230233', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 07:48:11', 'Waiting for Officer', 'Received', '2024-04-18 07:48:11', 41, NULL),
(263, 'CTRL-30941', 'STDNT-230233', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 07:53:57', 'Waiting for Officer', 'Received', '2024-04-18 07:53:57', 41, NULL),
(264, 'CTRL-32941', 'STDNT-230233', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 07:54:16', 'Waiting for Officer', 'Received', '2024-04-18 07:54:16', 41, NULL),
(265, 'CTRL-07241', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:54:32', 'Waiting for Officer', 'Received', '2024-04-18 07:54:32', 41, NULL),
(266, 'CTRL-237341', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:54:49', 'Waiting for Officer', 'Received', '2024-04-18 07:54:49', 41, NULL),
(267, 'CTRL-32221', 'STDNT-800533', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 07:55:15', 'Waiting for Officer', 'Received', '2024-04-18 07:55:15', 21, NULL),
(268, 'CTRL-038821', 'STDNT-800533', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:55:24', 'Waiting for Officer', 'Received', '2024-04-18 07:55:24', 21, NULL),
(269, 'CTRL-2241', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:55:27', 'Waiting for Officer', 'Received', '2024-04-18 07:55:27', 41, NULL),
(270, 'CTRL-22221', 'STDNT-800533', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 07:55:34', 'Waiting for Officer', 'Received', '2024-04-18 07:55:34', 21, NULL),
(271, 'CTRL-23241', 'STDNT-230233', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 07:55:54', 'Waiting for Officer', 'Received', '2024-04-18 07:55:54', 41, NULL),
(272, 'CTRL-533221', 'STDNT-800533', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:56:07', 'Waiting for Officer', 'Received', '2024-04-18 07:56:07', 21, NULL),
(273, 'CTRL-267341', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:56:13', 'Waiting for Officer', 'Received', '2024-04-18 07:56:13', 41, NULL),
(274, 'CTRL-02841', 'STDNT-230233', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 07:56:29', 'Waiting for Officer', 'Received', '2024-04-18 07:56:29', 41, NULL),
(275, 'CTRL-3041', 'STDNT-230233', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 07:56:48', 'Waiting for Officer', 'Received', '2024-04-18 07:56:48', 41, NULL),
(276, 'CTRL-202241', 'STDNT-230233', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 07:57:05', 'Waiting for Officer', 'Received', '2024-04-18 07:57:05', 41, NULL),
(277, 'CTRL-993341', 'STDNT-230233', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 07:57:23', 'Waiting for Officer', 'Received', '2024-04-18 07:57:23', 41, NULL),
(278, 'CTRL-82310', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:57:26', 'Waiting for Officer', 'Received', '2024-04-18 07:57:26', 10, NULL),
(279, 'CTRL-50241', 'STDNT-230233', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:57:39', 'Waiting for Officer', 'Received', '2024-04-18 07:57:39', 41, NULL),
(280, 'CTRL-095341', 'STDNT-230233', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 07:57:57', 'Waiting for Officer', 'Received', '2024-04-18 07:57:57', 41, NULL),
(281, 'CTRL-80441', 'STDNT-230233', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 07:58:45', 'Waiting for Officer', 'Received', '2024-04-18 07:58:45', 41, NULL),
(282, 'CTRL-233210', 'STDNT-030320', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 09:06:45', 'Waiting for Officer', 'Received', '2024-04-18 09:06:45', 10, NULL),
(283, 'CTRL-293310', 'STDNT-030320', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 09:06:57', 'Waiting for Officer', 'Received', '2024-04-18 09:06:57', 10, NULL),
(284, 'CTRL-3310', 'STDNT-030320', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 09:08:21', 'Waiting for Officer', 'Received', '2024-04-18 09:08:21', 10, NULL),
(285, 'CTRL-63310', 'STDNT-030320', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 09:08:38', 'Waiting for Officer', 'Received', '2024-04-18 09:08:38', 10, NULL),
(286, 'CTRL-323810', 'STDNT-030320', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 09:09:06', 'Waiting for Officer', 'Received', '2024-04-18 09:09:06', 10, NULL),
(287, 'CTRL-33310', 'STDNT-030320', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 09:09:14', 'Waiting for Officer', 'Received', '2024-04-18 09:09:14', 10, NULL),
(288, 'CTRL-9010', 'STDNT-030320', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 09:09:31', 'Waiting for Officer', 'Received', '2024-04-18 09:09:31', 10, NULL),
(289, 'CTRL-22310', 'STDNT-030320', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 09:10:34', 'Waiting for Officer', 'Received', '2024-04-18 09:10:34', 10, NULL),
(290, 'CTRL-22010', 'STDNT-030320', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 09:15:34', 'Waiting for Officer', 'Received', '2024-04-18 09:15:34', 10, NULL),
(291, 'CTRL-033210', 'STDNT-030320', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 09:15:45', 'Waiting for Officer', 'Received', '2024-04-18 09:15:45', 10, NULL),
(292, 'CTRL-52210', 'STDNT-030320', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 14:55:20', 'Waiting for Officer', 'Received', '2024-04-18 14:55:20', 10, NULL),
(293, 'CTRL-23310', 'STDNT-030320', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 14:55:30', 'Waiting for Officer', 'Received', '2024-04-18 14:55:30', 10, NULL),
(294, 'CTRL-03310', 'STDNT-030320', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 14:55:40', 'Waiting for Officer', 'Received', '2024-04-18 14:55:40', 10, NULL),
(295, 'CTRL-22010', 'STDNT-030320', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 14:55:53', 'Waiting for Officer', 'Received', '2024-04-18 14:55:53', 10, NULL),
(296, 'CTRL-44410', 'STDNT-030320', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 14:56:04', 'Waiting for Officer', 'Received', '2024-04-18 14:56:04', 10, NULL),
(297, 'CTRL-293210', 'STDNT-030320', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 14:56:13', 'Waiting for Officer', 'Received', '2024-04-18 14:56:13', 10, NULL),
(298, 'CTRL-209236', 'STDNT-22220062', 'Cert. Of Marticulation', '1', 75, '2024-04-18', '2024-04-18 14:56:48', 'Waiting for Officer', 'Received', '2024-04-18 14:56:48', 36, NULL),
(299, 'CTRL-0336', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 14:57:02', 'Waiting for Officer', 'Received', '2024-04-18 14:57:02', 36, NULL),
(300, 'CTRL-632236', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 14:57:12', 'Waiting for Officer', 'Received', '2024-04-18 14:57:12', 36, NULL),
(301, 'CTRL-33636', 'STDNT-22220062', 'Cert. Of GWA', '1', 75, '2024-04-18', '2024-04-18 14:57:20', 'Waiting for Officer', 'Received', '2024-04-18 14:57:20', 36, NULL),
(302, 'CTRL-93236', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 14:57:31', 'Waiting for Officer', 'Received', '2024-04-18 14:57:31', 36, NULL),
(303, 'CTRL-022236', 'STDNT-22220062', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 14:57:39', 'Waiting for Officer', 'Received', '2024-04-18 14:57:39', 36, NULL),
(304, 'CTRL-023536', 'STDNT-22220062', 'CAF (COE)', '1', 115, '2024-04-18', '2024-04-18 14:57:48', 'Waiting for Officer', 'Received', '2024-04-18 14:57:48', 36, NULL),
(305, 'CTRL-23036', 'STDNT-22220062', 'Form 137', '1', 150, '2024-04-18', '2024-04-18 14:57:57', 'Waiting for Officer', 'Received', '2024-04-18 14:57:57', 36, NULL),
(306, 'CTRL-57236', 'STDNT-22220062', 'Good Moral', '1', 75, '2024-04-18', '2024-04-18 14:58:10', 'Waiting for Officer', 'Received', '2024-04-18 14:58:10', 36, NULL),
(307, 'CTRL-334336', 'STDNT-22220062', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 14:58:22', 'Waiting for Officer', 'Received', '2024-04-18 14:58:22', 36, NULL),
(308, 'CTRL-82036', 'STDNT-22220062', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 14:58:33', 'Waiting for Officer', 'Received', '2024-04-18 14:58:33', 36, NULL),
(309, 'CTRL-323236', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 14:58:44', 'Waiting for Officer', 'Received', '2024-04-18 14:58:44', 36, NULL),
(310, 'CTRL-03336', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 14:59:40', 'Waiting for Officer', 'Received', '2024-04-18 14:59:40', 36, NULL),
(311, 'CTRL-334236', 'STDNT-22220062', 'Cert. Of Enrollment', '1', 75, '2024-04-18', '2024-04-18 14:59:52', 'Waiting for Officer', 'Received', '2024-04-18 14:59:52', 36, NULL),
(312, 'CTRL-362336', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 15:00:11', 'Waiting for Officer', 'Received', '2024-04-18 15:00:11', 36, NULL),
(313, 'CTRL-6036', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 15:00:24', 'Waiting for Officer', 'Received', '2024-04-18 15:00:24', 36, NULL),
(314, 'CTRL-003236', 'STDNT-22220062', 'Cert. Of Graduation', '1', 75, '2024-04-18', '2024-04-18 15:00:41', 'Waiting for Officer', 'Received', '2024-04-18 15:00:41', 36, NULL),
(315, 'CTRL-22336', 'STDNT-22220062', 'CAF (GM)', '1', 115, '2024-04-18', '2024-04-18 15:00:53', 'Waiting for Officer', 'Received', '2024-04-18 15:00:53', 36, NULL),
(316, 'CTRL-83336', 'STDNT-22220062', 'Certified true copy f137 g10', '1', 20, '2024-04-18', '2024-04-18 15:01:07', 'Waiting for Officer', 'Received', '2024-04-18 15:01:07', 36, NULL),
(317, 'CTRL-733036', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 15:01:29', 'Waiting for Officer', 'Received', '2024-04-18 15:01:29', 36, NULL),
(318, 'CTRL-602236', 'STDNT-22220062', 'Certified true copy f137 g11', '1', 20, '2024-04-18', '2024-04-18 15:03:15', 'Waiting for Officer', 'Received', '2024-04-18 15:03:15', 36, NULL),
(319, 'CTRL-340736', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 15:03:24', 'Waiting for Officer', 'Received', '2024-04-18 15:03:24', 36, NULL),
(320, 'CTRL-340736', 'STDNT-22220062', 'Cert. Of Grades', '1', 75, '2024-04-18', '2024-04-18 15:03:26', 'Waiting for Officer', 'Received', '2024-04-18 15:03:26', 36, NULL),
(321, 'CTRL-40036', 'STDNT-22220062', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 15:03:33', 'Waiting for Officer', 'Received', '2024-04-18 15:03:33', 36, NULL),
(322, 'CTRL-23336', 'STDNT-22220062', 'Cert. Of Completion', '1', 75, '2024-04-18', '2024-04-18 15:03:43', 'Waiting for Officer', 'Received', '2024-04-18 15:03:43', 36, NULL),
(323, 'CTRL-3220', 'STDNT-3233003', 'Cert. Of Grades', '1', 75, '2024-04-19', '2024-04-19 04:32:09', 'Waiting for Officer', 'Received', '2024-04-19 04:32:09', 20, NULL),
(324, 'CTRL-320', 'STDNT-3233003', 'Cert. Of Enrollment', '1', 75, '2024-04-19', '2024-04-19 04:32:32', 'Waiting for Officer', 'Received', '2024-04-19 04:32:32', 20, NULL),
(325, 'CTRL-3577', 'STDNT-083635', 'Cert. Of GWA<br>Certified true copy f137 g10<br>Form 137', '3', 245, '2024-04-19', '2024-04-19 04:40:25', 'Waiting for Officer', 'Received', '2024-04-19 04:40:25', 7, NULL),
(326, 'CTRL-0327', 'STDNT-083635', 'Certified true copy f137 g10<br>CAF (COE)', '2', 135, '2024-04-19', '2024-04-19 05:47:23', 'Waiting for Officer', 'Received', '2024-04-19 05:47:23', 7, NULL),
(327, 'CTRL-03241', 'STDNT-230233', 'Cert. Of Completion<br>Good Moral<br>CAF (COE)', '3', 265, '2024-04-20', '2024-04-20 02:07:09', 'Waiting for Officer', 'Received', '2024-04-20 02:07:09', 41, NULL),
(328, 'CTRL-3241', 'STDNT-230233', 'Cert. Of Enrollment<br>Certified true copy f137 g10<br>Cert. Of GWA', '3', 170, '2024-04-20', '2024-04-20 02:07:19', 'Waiting for Officer', 'Received', '2024-04-20 02:07:19', 41, NULL),
(329, 'CTRL-333241', 'STDNT-230233', 'Cert. Of GWA<br>Cert. Of Grades<br>Cert. Of Graduation', '3', 225, '2024-04-20', '2024-04-20 02:07:29', 'Waiting for Officer', 'Received', '2024-04-20 02:07:29', 41, NULL),
(330, 'CTRL-22341', 'STDNT-230233', '<br>Cert. Of GWA', '1', 75, '2024-04-20', '2024-04-20 02:07:36', 'Waiting for Officer', 'Received', '2024-04-20 02:07:36', 41, NULL),
(331, 'CTRL-033241', 'STDNT-230233', 'Certified true copy f137 g11', '1', 20, '2024-04-20', '2024-04-20 02:07:41', 'Waiting for Officer', 'Received', '2024-04-20 02:07:41', 41, NULL),
(332, 'CTRL-379241', 'STDNT-230233', 'Cert. Of Marticulation<br>Cert. Of Marticulation', '2', 150, '2024-04-20', '2024-04-20 02:07:48', 'Waiting for Officer', 'Received', '2024-04-20 02:07:48', 41, NULL),
(333, 'CTRL-92941', 'STDNT-230233', 'Certified true copy f137 g10<br>Good Moral', '2', 95, '2024-04-20', '2024-04-20 02:07:57', 'Waiting for Officer', 'Received', '2024-04-20 02:07:57', 41, NULL),
(334, 'CTRL-941', 'STDNT-230233', 'Cert. Of Marticulation<br>Good Moral<br>Good Moral', '3', 225, '2024-04-20', '2024-04-20 02:08:10', 'Waiting for Officer', 'Received', '2024-04-20 02:08:10', 41, NULL),
(335, 'CTRL-635741', 'STDNT-230233', 'Cert. Of GWA', '1', 75, '2024-04-20', '2024-04-20 02:08:18', 'Waiting for Officer', 'Received', '2024-04-20 02:08:18', 41, NULL);
INSERT INTO `tbl_documentrequest` (`request_id`, `control_no`, `studentID_no`, `document_name`, `no_ofcopies`, `amount_to_pay`, `date_request`, `date_releasing`, `processing_officer`, `status`, `remarks`, `student_id`, `notif`) VALUES
(336, 'CTRL-32041', 'STDNT-230233', '<br>CAF (GM)', '1', 115, '2024-04-20', '2024-04-20 02:08:23', 'Waiting for Officer', 'Received', '2024-04-20 02:08:23', 41, NULL),
(337, 'CTRL-3941', 'STDNT-230233', 'Certified true copy f137 g11', '1', 20, '2024-04-20', '2024-04-20 02:08:29', 'Waiting for Officer', 'Received', '2024-04-20 02:08:29', 41, NULL),
(338, 'CTRL-050241', 'STDNT-230233', '<br>Cert. Of Marticulation', '1', 75, '2024-04-20', '2024-04-20 02:08:36', 'Waiting for Officer', 'Received', '2024-04-20 02:08:36', 41, NULL),
(339, 'CTRL-853341', 'STDNT-230233', '<br>Good Moral', '1', 75, '2024-04-20', '2024-04-20 02:08:40', 'Waiting for Officer', 'Received', '2024-04-20 02:08:40', 41, NULL),
(340, 'CTRL-520041', 'STDNT-230233', '<br>Certified true copy f137 g10', '1', 20, '2024-04-20', '2024-04-20 02:08:47', 'Waiting for Officer', 'Received', '2024-04-20 02:08:47', 41, NULL),
(341, 'CTRL-222241', 'STDNT-230233', '<br>Cert. Of Graduation<br>Good Moral', '2', 150, '2024-04-20', '2024-04-20 02:08:56', 'Waiting for Officer', 'Received', '2024-04-20 02:08:56', 41, NULL),
(342, 'CTRL-603241', 'STDNT-230233', 'Cert. Of GWA<br>Good Moral<br>Good Moral', '3', 225, '2024-04-20', '2024-04-20 02:09:05', 'Waiting for Officer', 'Received', '2024-04-20 02:09:05', 41, NULL),
(343, 'CTRL-72037', 'STDNT-083635', 'Cert. Of Graduation', '1', 75, '2024-04-20', '2024-04-20 06:17:37', 'Waiting for Officer', 'Received', '2024-04-20 06:17:37', 7, NULL),
(344, 'CTRL-30577', 'STDNT-083635', 'Cert. Of Marticulation<br>Cert. Of Grades<br>Form 137', '3', 300, '2024-04-20', '2024-04-20 10:31:30', 'Waiting for Officer', 'Received', '2024-04-20 10:31:30', 7, NULL),
(345, 'CTRL-360621', 'STDNT-800533', 'Cert. Of Completion<br>Cert. Of Marticulation<br>Good Moral', '3', 225, '2024-04-20', '2024-04-20 10:45:37', 'Waiting for Officer', 'Received', '2024-04-20 10:45:37', 21, NULL),
(346, 'CTRL-82321', 'STDNT-800533', 'Cert. Of Grades', '1', 75, '2024-04-20', '2024-04-20 10:45:57', 'Waiting for Officer', 'Received', '2024-04-20 10:45:57', 21, NULL),
(347, 'CTRL-502321', 'STDNT-800533', 'Cert. Of Graduation<br>Cert. Of Grades', '2', 150, '2024-04-20', '2024-04-20 10:46:26', 'Waiting for Officer', 'Received', '2024-04-20 10:46:26', 21, NULL),
(348, 'CTRL-03219', 'STDNT-2949025', 'Cert. Of Grades<br>Cert. Of Enrollment<br>CAF (GM)', '3', 265, '2024-04-20', '2024-04-20 10:47:01', 'Waiting for Officer', 'Received', '2024-04-20 10:47:01', 19, NULL),
(349, 'CTRL-272219', 'STDNT-2949025', 'Certified true copy f137 g11<br>Certified true copy f137 g10<br>Cert. Of Grades', '3', 115, '2024-04-20', '2024-04-20 10:47:12', 'Waiting for Officer', 'Received', '2024-04-20 10:47:12', 19, NULL),
(350, 'CTRL-3319', 'STDNT-2949025', 'Cert. Of Marticulation<br>Good Moral', '2', 150, '2024-04-20', '2024-04-20 10:47:26', 'Waiting for Officer', 'Received', '2024-04-20 10:47:26', 19, NULL),
(351, 'CTRL-29419', 'STDNT-2949025', 'Cert. Of GWA<br>Cert. Of Grades', '2', 150, '2024-04-20', '2024-04-20 10:47:39', 'Waiting for Officer', 'Received', '2024-04-20 10:47:39', 19, NULL),
(352, 'CTRL-630612', 'STDNT-23640050', 'Cert. Of Grades<br>Cert. Of Enrollment', '2', 150, '2024-04-20', '2024-04-20 10:51:41', 'Waiting for Officer', 'Received', '2024-04-20 10:51:41', 12, NULL),
(353, 'CTRL-23012', 'STDNT-23640050', '<br>Cert. Of Graduation', '1', 75, '2024-04-20', '2024-04-20 10:51:48', 'Waiting for Officer', 'Received', '2024-04-20 10:51:48', 12, NULL),
(354, 'CTRL-892012', 'STDNT-23640050', '<br>Cert. Of Grades', '1', 75, '2024-04-20', '2024-04-20 10:52:00', 'Waiting for Officer', 'Received', '2024-04-20 10:52:00', 12, NULL),
(355, 'CTRL-0612', 'STDNT-23640050', 'Cert. Of GWA', '1', 75, '2024-04-20', '2024-04-20 10:52:07', 'Waiting for Officer', 'Received', '2024-04-20 10:52:07', 12, NULL),
(356, 'CTRL-03331', 'STDNT-50303322', 'Cert. Of Graduation<br>Cert. Of GWA', '2', 150, '2024-04-20', '2024-04-20 10:53:15', 'Waiting for Officer', 'Received', '2024-04-20 10:53:15', 31, NULL),
(357, 'CTRL-332231', 'STDNT-50303322', 'CAF (COE)<br>Certified true copy f137 g10', '2', 135, '2024-04-20', '2024-04-20 10:53:26', 'Waiting for Officer', 'Received', '2024-04-20 10:53:26', 31, NULL),
(358, 'CTRL-257231', 'STDNT-50303322', 'Certified true copy f137 g11<br>Cert. Of Marticulation', '2', 95, '2024-04-20', '2024-04-20 10:53:34', 'Waiting for Officer', 'Received', '2024-04-20 10:53:34', 31, NULL),
(359, 'CTRL-022231', 'STDNT-50303322', '<br>Certified true copy f137 g11<br>Good Moral', '2', 95, '2024-04-20', '2024-04-20 10:53:44', 'Waiting for Officer', 'Received', '2024-04-20 10:53:44', 31, NULL),
(360, 'CTRL-230031', 'STDNT-50303322', 'Cert. Of Grades', '1', 75, '2024-04-20', '2024-04-20 10:54:50', 'Waiting for Officer', 'Received', '2024-04-20 10:54:50', 31, NULL),
(361, 'CTRL-303228', 'STDNT-236022', 'Cert. Of Grades<br>Certified true copy f137 g10', '2', 95, '2024-04-20', '2024-04-20 11:04:03', 'Waiting for Officer', 'Received', '2024-04-20 11:04:03', 28, NULL),
(362, 'CTRL-333028', 'STDNT-236022', 'Certified true copy f137 g11<br>Cert. Of Enrollment', '2', 95, '2024-04-20', '2024-04-20 11:04:11', 'Waiting for Officer', 'Received', '2024-04-20 11:04:11', 28, NULL),
(363, 'CTRL-2937', 'STDNT-083635', 'Certified true copy f137 g10<br>Certified true copy f137 g10<br>Certified true copy f137 g10', '3', 60, '2024-04-20', '2024-04-20 12:25:26', 'Waiting for Officer', 'Received', '2024-04-20 12:25:26', 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `control_no` text NOT NULL,
  `studentID_no` text NOT NULL,
  `document_name` text NOT NULL,
  `date_releasing` text NOT NULL,
  `ref_number` text NOT NULL,
  `total_amount` text NOT NULL,
  `amount_paid` text NOT NULL,
  `date_ofpayment` text NOT NULL,
  `proof_ofpayment` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `control_no`, `studentID_no`, `document_name`, `date_releasing`, `ref_number`, `total_amount`, `amount_paid`, `date_ofpayment`, `proof_ofpayment`, `student_id`, `status`) VALUES
(2, 'CTRL-0335', 'STDNT-23983', 'TOR', 'Nov 26, 2021', 'hbq0KQ8DlB', '3000', '5000', '2021-11-23', 'GCASH', 2, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL,
  `studentID_no` text NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `date_ofbirth` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `complete_address` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `account_status` text NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `studentID_no`, `first_name`, `middle_name`, `last_name`, `course`, `year_level`, `date_ofbirth`, `gender`, `complete_address`, `email_address`, `mobile_number`, `username`, `password`, `account_status`, `date_created`) VALUES
(7, 'STDNT-083635', 'Clark Kent', 'Supilanas', 'Neri', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-03-05', 'Male', 'Malabag Silang Cavite', 'clarkkentneri123@gmail.com', '09552331550', 'poypoy', 'poypoy123', 'Active', '2023-12-02'),
(8, 'STDNT-2032002', 'Alex', 'L.', 'Doe', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-01-01', 'Annonymous', '@@', 'Doe.AlexL@gmail.com', '09373646473', '2032002', '123456', 'Active', '2024-01-24'),
(9, 'STDNT-53223309', 'Jummy', 'L.', 'Doe', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-01-01', 'Annonymous', '@@', 'Doe.Jummy@gmail.com', '09384648282', '53223309', '123456', 'Active', '2024-01-24'),
(10, 'STDNT-030320', 'Hemi', 'L', 'Lou', 'Technical-Vocational Livelihood (TVL) ICT', '12', '2006-01-01', 'Annonymous', '@@', 'Lou.HemiL@gmail.com', '09365738765', '030320', '123456', 'Active', '2024-01-24'),
(11, 'STDNT-0334532', 'Nebu', 'L', 'Loe', 'Technical-Vocational Livelihood (TVL) HE', '11', '2006-01-01', 'Annonymous', '@@', 'Nebu.L.Loe@gmail.com', '09383737781', '0334532', '123456', 'Active', '2024-01-24'),
(12, 'STDNT-23640050', 'Abby', 'L', 'Loe', 'Technical-Vocational Livelihood (TVL) HE', '11', '2006-01-01', 'Annonymous', '@@', 'Loe.Abby@gmail.com', '09383757546', '23640050', '123456', 'Active', '2024-01-24'),
(13, 'STDNT-3323353', 'Nehemiah', 'L', 'Moe', 'Technical-Vocational Livelihood (TVL) HE', '12', '2006-01-01', 'Annonymous', '@@', 'Moe.Nehemiah@gmail.com', '09367766175', '3323353', '123456', 'Active', '2024-01-24'),
(14, 'STDNT-039030', 'Abbie', 'L', 'Loe', 'Accountancy, Business, and Management (ABM)', '11', '2005-01-01', 'Annonymous', '@@', 'Abbie.L.Loe@gmail.com', '09833374861', '039030', '123456', 'Active', '2024-01-24'),
(15, 'STDNT-30202232', 'Alec', 'L', 'Doe', 'Accountancy, Business, and Management (ABM)', '12', '2005-01-01', 'Annonymous', '@@', 'Doe.Alec@gmail.com', '09484747492', '30202232', '123456', 'Active', '2024-01-24'),
(16, 'STDNT-37700338', 'Alice', 'L', 'Doe', 'Accountancy, Business, and Management (ABM)', '11', '2004-01-01', 'Annonymous', '@@', 'Doe.Alice@gmail.com', '09736362827', '37700338', '123456', 'Active', '2024-01-24'),
(17, 'STDNT-50222720', 'Hummy', 'L', 'Loe', 'Science, technology, engineering, and mathematics (STEM)', '12', '', 'Annonymous', '@@', 'Loe.Hummy@gmail.com', '09474638272', '50222720', '123456', 'Active', '2024-01-24'),
(18, 'STDNT-2222307', 'Emma', 'L', 'Doe', 'Science, technology, engineering, and mathematics (STEM)', '12', '2006-01-01', 'Annonymous', '@@', 'Doe.Emma@gmail.com', '09375647212', '2222307', '123456', 'Active', '2024-01-24'),
(19, 'STDNT-2949025', 'Abel', 'L', 'Doe', 'Science, technology, engineering, and mathematics (STEM)', '11', '2006-01-01', 'Annonymous', '@@', 'Doe.Abel@gmail.com', '09437363827', '2949025', '123456', 'Active', '2024-01-24'),
(20, 'STDNT-3233003', 'David', 'L.', 'Loe', 'Humanities and Social Sciences (HUMSS)', '11', '2006-01-01', 'Annonymous', '@@', 'Loe.David@gmail.com', '09837363738', '3233003', '123456', 'Active', '2024-01-24'),
(21, 'STDNT-800533', 'Lily', 'L', 'Doe', 'Humanities and Social Sciences (HUMSS)', '12', '2006-01-01', 'Annonymous', '@@', 'Doe.Lily@gmail.com', '09374477363', '800533', '123456', 'Active', '2024-01-24'),
(22, 'STDNT-42372', 'Henry', 'L', 'Loe', 'Humanities and Social Sciences (HUMSS)', '12', '2005-01-01', 'Annonymous', '@@', 'Loe.Henry@gmail.com', '09384646383', '42372', '123456', 'Active', '2024-01-24'),
(23, 'STDNT-30522322', 'lolipop', 'hyuna', 'neri', 'Technical-Vocational Livelihood (TVL) ICT', '11', '1999-11-11', 'Annonymous', 'Fjfhfjjfj', 'Neri.Lolipop@gmail.com', '09383626281', 'hyuna', '12345', 'Active', '2024-02-04'),
(24, 'STDNT-3223208', 'Mayang', 'Kate', 'Nuique', 'Accountancy, Business, and Management (ABM)', '11', '2024-02-05', 'Male', '@@', 'Nuique.Mayang@gmail.com', '09473626165', 'mayang', 'nuique', 'Active', '2024-02-05'),
(26, 'STDNT-2233223', 'Kira', 'L.', 'Menu', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-02-02', 'Annonymous', 'Buho silang Cavite', 'Menu.Kira@gmail.com', '09248327883', '2233223', '123456', 'Active', '2024-03-06'),
(27, 'STDNT-2232222', 'kina', 'L', 'Mema', 'Technical-Vocational Livelihood (TVL) ICT', '12', '2006-02-02', 'Annonymous', 'cavite', 'Mema.Kina@gmail.com', '09383743561', '2232222', '123456', 'Active', '2024-03-06'),
(28, 'STDNT-236022', 'Airy', 'M', 'Memo', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-02-02', 'Annonymous', 'cavite', 'Memo.Airy@gmail.com', '09113866318', '236022', '123456', 'Active', '2024-03-06'),
(29, 'STDNT-2222408', 'henry', 'K', 'soto', 'Technical-Vocational Livelihood (TVL) HE', '12', '2006-02-02', 'Annonymous', 'cavite', 'Soto.Henry@gmail.com', '09189336184', '2222408', '123456', 'Active', '2024-03-06'),
(30, 'STDNT-72260363', 'Hemia', 'K', 'Kemi', 'Technical-Vocational Livelihood (TVL) ICT', '11', '2006-02-02', 'Annonymous', 'hAKGutW', 'Kemi.Hemia@gmail.com', '09189371319', 'AKKWUWI', '123456', 'Active', '2024-03-06'),
(31, 'STDNT-50303322', 'Aira', 'k', 'Lee', 'Technical-Vocational Livelihood (TVL) HE', '12', '2006-02-02', 'Annonymous', 'hasUTITWIUW', 'Lee.Aira@gmail.com', '09374638272', '50303322', '123456', 'Active', '2024-03-06'),
(32, 'STDNT-5329208', 'Riri', 'L', 'Memo', 'Accountancy, Business, and Management (ABM)', '11', '2006-02-02', 'Annonymous', 'JHEAIURRIQ', 'Memo.Riri@gmail.com', '09037724744', '5329208', '123456', 'Active', '2024-03-06'),
(33, 'STDNT-82030302', 'Lili', 'k', 'Lima', 'Accountancy, Business, and Management (ABM)', '12', '2006-02-02', 'Annonymous', 'jdhuey', 'Lima.Lili@gmail.com', '09819731864', '82030302', '123456', 'Active', '2024-03-06'),
(34, 'STDNT-006333', 'Kelly', 'L', 'memo', 'Accountancy, Business, and Management (ABM)', '11', '2006-02-02', 'Annonymous', 'bUIE8EY', 'KellyL.memo@gmail.com', '09093837276', '006333', '123456', 'Active', '2024-03-06'),
(35, 'STDNT-229272', 'kent', 'L', 'Mima', 'Science, technology, engineering, and mathematics (STEM)', '11', '2006-02-02', 'Annonymous', 'bTUehea', 'Mima.Kent@gmail.com', '09297372843', '229272', '123456', 'Active', '2024-03-06'),
(36, 'STDNT-22220062', 'zora', 'K', 'akel', 'Science, technology, engineering, and mathematics (STEM)', '11', '2006-01-20', 'Annonymous', 'haueiue', 'Akel.Zora@gmail.com', '09893039825', '22220062', '123456', 'Active', '2024-03-06'),
(37, 'STDNT-03323023', 'ara', 'L', 'Mae', 'Science, technology, engineering, and mathematics (STEM)', '12', '2006-02-02', 'Annonymous', 'jaeuqhd', 'Mae.AraL@gmail.com', '09737366788', '03323023', '123456', 'Active', '2024-03-06'),
(38, 'STDNT-3630533', 'hume', 'K', 'Lim', 'Humanities and Social Sciences (HUMSS)', '11', '2006-02-02', 'Annonymous', 'jhadugriqwur', 'Lim.Hume@gmail.com', '09741926828', '3630533', '123456', 'Active', '2024-03-06'),
(39, 'STDNT-20742323', 'Narzy', 'L', 'Wim', 'Humanities and Social Sciences (HUMSS)', '12', '2006-02-02', 'Annonymous', 'agouWIUW', 'Wim.Narzy@gmail.com', '09317683181', '20742323', '123456', 'Active', '2024-03-06'),
(40, 'STDNT-222433', 'Emma', 'K', 'Quin', 'Humanities and Social Sciences (HUMSS)', '11', '2006-02-02', 'Annonymous', 'dghuaoaeuietw', 'Quin.Emma@gmail.com', '09347484671', '222433', '123456', 'Active', '2024-03-06'),
(41, 'STDNT-230233', 'karl', 'm', 'hak', 'Technical-Vocational Livelihood (TVL) ICT', '12', '2002-11-22', 'Annonymous', 'anhQEEI', 'Hak.Karl@gmail.com', '09385637216', '230233', '123456', 'Active', '2024-04-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usermanagement`
--

CREATE TABLE `tbl_usermanagement` (
  `user_id` int(11) NOT NULL,
  `complete_name` varchar(255) NOT NULL,
  `desgination` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_usermanagement`
--

INSERT INTO `tbl_usermanagement` (`user_id`, `complete_name`, `desgination`, `email_address`, `phone_number`, `username`, `password`, `status`) VALUES
(1, 'admin admin', 'programmer', 'admin@gmail.com', '09978978999', 'admin', 'admin', 'Active'),
(4, 'NERI', 'oc', 'clarkkentneri123@gmail.com', '09552331550', 'poyi1', 'poyi1', 'Active'),
(5, 'Om Ara', 'OC', 'N/A', '09729632193', 'Ara0@', 'Admin123', 'Active'),
(7, 's', 'sss', 'ssss', 'sssss', 'sssss', 'ssssss', 'Active'),
(9, 's', 'sss', 'ssss', 'sssss', 'sssss', 'ssssss', 'Active'),
(10, 's', 'sss', 'ssss', 'sssss', 'sssss', 'ssssss', 'Active'),
(11, 's', 'sss', 'ssss', 'sssss', 'sssss', 'ssssss', 'Active'),
(12, 's', 'sss', 'ssss', 'sssss', 'sssss', 'ssssss', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_document`
--
ALTER TABLE `tbl_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `tbl_documentrequest`
--
ALTER TABLE `tbl_documentrequest`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_usermanagement`
--
ALTER TABLE `tbl_usermanagement`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_document`
--
ALTER TABLE `tbl_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_documentrequest`
--
ALTER TABLE `tbl_documentrequest`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_usermanagement`
--
ALTER TABLE `tbl_usermanagement`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
