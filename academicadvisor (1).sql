-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 01:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academicadvisor`
--

-- --------------------------------------------------------

--
-- Table structure for table `electives`
--

CREATE TABLE `electives` (
  `Courses` varchar(40) NOT NULL,
  `Course_Id` varchar(40) NOT NULL,
  `Course Description` varchar(1000) NOT NULL,
  `Interests` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `electives`
--

INSERT INTO `electives` (`Courses`, `Course_Id`, `Course Description`, `Interests`) VALUES
('Mobile App Development', 'M1000', 'This project-based course looks at the fundamentals of mobile app design and development. The Android platform will be used to teach students how to design apps. Memory management, user interface design, and user interface development will be covered, as well as input methods, data handling, and URL loading, as well as details such as GPS and motion sensing. Students are expected to work on a group project that results in a high-quality mobile app. The projects will be used in real-world scenarios. Project creation, design, implementation, and pilot testing of mobile phone software applications will be part of the course work. This Course will utilize languages technologies such as dart and Flutter. The main coding environment for the course is Android studio', 'Mobile'),
('Cloud computing', 'M1001', 'This course gives a complete hands-on study of Cloud ideas and capabilities across several Cloud service models, including Infrastructure as a Service (IaaS), Platform as a Service (PaaS), Software as a Service (SaaS), and Business Process as a Service (BPaaS) (BPaaS). The progression of infrastructure migration approaches from VMWare virtualization to adaptive virtualization and Cloud Computing / on-demand resource provisioning are covered in detail in IaaS topics. Cloud infrastructure services and related vendor solutions are also thoroughly addressed. PaaS topics cover a wide range of Cloud vendor platforms, including AWS, Google App Engine, Microsoft Azure, Eucalyptus, OpenStack, and others, as well as a detailed examination of related platform services, such as storage services, which rely on services that provide Cloud resource management and monitoring capabilities.', 'Cloud, AI'),
('Advanced Database Management Systems', 'M1002', 'This course covers advanced aspects of database management including normalization and denormalization, query optimization, distributed databases, data warehousing, and big data. There is extensive coverage and hands on work with SQL, and database instance tuning. Course covers various modern database architectures including relational, key value, object relational and document store models as well as various approaches to scale out, integrate and implement database systems through replication and cloud based instances. Students learn about unstructured \"big data\" architectures and databases, and gain hands-on experience with Spark and MongoDB. Students complete a term project exploring an advanced database technology of their choice.', 'Data Science, Data Security'),
('Global Black Experience', 'NM2000', 'This course provides an overview of Africana Studies as an intellectual discipline, and explores the history of its institutionalization in the American academy following the social movements of the 1960s. Using a diasporic and comparative approach, the course examines the worldwide dispersals, histories, politics, and protests of African peoples throughout the world. Paying close attention to shared histories and the construction of cultural and social identities, the course examines the histories and experiences of the African diaspora in six continents', 'African Politics'),
('Africa and China relations', 'NM2001', 'The purpose of this course is to explore both historical and contemporary linkages between Africa and China from both an “upstairs” (macro-economic and-political) and “downstairs” (peopled, grounded) perspectives; to see how various interests impact the ways in which “China-Africa” is framed; and to explore these engagements by sector, by individual African country, and vis-à-vis concerns about human rights, labor issues, and China’s increasing environmental footprint in Africa. The course aims to provide students the opportunity to critically discuss and analyze sometimes controversial ChinaAfrica (or Africa-China) socio-economic relations and their implications. It also aims to allow students the opportunity to examine a number of inter-related topics that shed light on China’s (possible) influences and impacts on the economies, polities, and societies of individualAfrican countries and Africa’s responses.', 'African Politics'),
('Ghanaian popular culture', 'NM2002', 'The course examines the influence of global processes, including industrialization, capitalist expansion, transformational migration, environmental change, and international tourism on the life-ways of Ghanaians.  The nature, origin, meaning and effects of specific trends and patterns of communication, and behaviour related to the performing arts, religion, funerals, and fashion, among others, on the construction of identities will be identified and analyzed critically.  ', 'African Culture');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `course_id` varchar(40) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedbacktable`
--

INSERT INTO `feedbacktable` (`course_id`, `feedback`) VALUES
('M1000', 'I took this course and I learnt a lot. The course was taught by Mr David Sampah. We learnt the course in flutter and used android studio. I highly recommend learning about flutter before coming to class so that you do not fall behind. The projects can be a bit tedious but they are very interesting. i hope you enjoy the course if you take it.'),
('M1000', 'I really loved this course'),
('M1000', '10 out of 10. I really recommend it'),
('M1000', 'This course was difficult for me but i really enjoyed it'),
('M1000', 'You must be really dedicated and consistent to take this course'),
('M1000', 'Flutter is really interesting but it has its drawbacks'),
('M1000', 'Happy learning of flutter'),
('M1000', 'I really loved this course'),
('M1000', 'I really loved this course'),
('M1000', 'I love this course too much'),
('M1000', 'This course is really amazing'),
('M1000', 'I love this course. I learnt a lot'),
('M1000', 'I love this course. I learnt a lot'),
('M1000', 'Ive really enjoyed this course. It is the best'),
('M1000', 'Ive really enjoyed this course. It is the best'),
('M1000', 'this is the feedback form'),
('M1000', 'Ive really enjoyed this course. It is the best');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `Name`, `Email`, `Password`, `Year`) VALUES
(12452023, 'Bethel Ayodeji', 'bethel.ayodeji@ashesi.edu.gh', 'd5535e31cb9e75ed08504a87e7182bda', 2023),
(98312023, 'Nana Banyin Ayeyi Djan', 'banyin.djan@ashesi.edu.gh', 'dbb8d3d185283c9700b602750a4d23cc', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Name` varchar(60) NOT NULL,
  `Student_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Name`, `Student_ID`) VALUES
('Bethel Ayodeji', 12452023),
('Nana Banyin Ayeyi Djan', 98312023);

-- --------------------------------------------------------

--
-- Table structure for table `student_electives`
--

CREATE TABLE `student_electives` (
  `Stud_ID` int(11) NOT NULL,
  `Course_ID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_electives`
--

INSERT INTO `student_electives` (`Stud_ID`, `Course_ID`) VALUES
(12452023, 'M1000'),
(12452023, 'NM2002'),
(12452023, 'M1002'),
(12452023, 'NM2000'),
(12452023, 'NM2001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `electives`
--
ALTER TABLE `electives`
  ADD PRIMARY KEY (`Course_Id`);

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `student_electives`
--
ALTER TABLE `student_electives`
  ADD KEY `Stud_ID` (`Stud_ID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_electives`
--
ALTER TABLE `student_electives`
  ADD CONSTRAINT `student_electives_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `students` (`Student_ID`),
  ADD CONSTRAINT `student_electives_ibfk_2` FOREIGN KEY (`Course_ID`) REFERENCES `electives` (`Course_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
