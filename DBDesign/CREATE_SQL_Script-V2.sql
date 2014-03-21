-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.1.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `AccessLevel`
--

DROP TABLE IF EXISTS `AccessLevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AccessLevel` (
  `access_id` int(11) NOT NULL AUTO_INCREMENT,
  `access_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `access_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK1D0C220D9D5A4637` (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CompHour`
--

DROP TABLE IF EXISTS `CompHour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CompHour` (
  `compHour_id` int(11) NOT NULL AUTO_INCREMENT,
  `compHour_code` varchar(255) DEFAULT NULL,
  `compHour_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`compHour_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_code` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `crossover_course` varchar(255) DEFAULT NULL,
  `old_course` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CourseInProgramCurSem`
--

DROP TABLE IF EXISTS `CourseInProgramCurSem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseInProgramCurSem` (
  `course_id` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`,`cs_id`,`program_id`),
  KEY `FK5B53A6BF7BBC4B9B` (`program_id`),
  KEY `FK5B53A6BF1C6486DC` (`cs_id`),
  KEY `FK5B53A6BFB0510F59` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CourseToProgram`
--

DROP TABLE IF EXISTS `CourseToProgram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseToProgram` (
  `course_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  KEY `FK28295D8E7BBC4B9B` (`program_id`),
  KEY `FK28295D8EB0510F59` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CoursesInSemester`
--

DROP TABLE IF EXISTS `CoursesInSemester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CoursesInSemester` (
  `cis_id` int(11) NOT NULL AUTO_INCREMENT,
  `addition_attribute` int(11) DEFAULT NULL,
  `eval_1_ans` float DEFAULT NULL,
  `eval_2_ans` float DEFAULT NULL,
  `eval_3_ans` float DEFAULT NULL,
  `total_section` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `eval_1` int(11) DEFAULT NULL,
  `eval_2` int(11) DEFAULT NULL,
  `eval_3` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cis_id`),
  KEY `FK4C638735A1203659` (`eval_2`),
  KEY `FK4C638735A1203658` (`eval_1`),
  KEY `FK4C63873533CCBA79` (`semester_id`),
  KEY `FK4C638735B0510F59` (`course_id`),
  KEY `FK4C638735A120365A` (`eval_3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CurriculumSemester`
--

DROP TABLE IF EXISTS `CurriculumSemester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CurriculumSemester` (
  `curriculum_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`curriculum_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EvalFactor`
--

DROP TABLE IF EXISTS `EvalFactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EvalFactor` (
  `eval_id` int(11) NOT NULL AUTO_INCREMENT,
  `eval_factor` float DEFAULT NULL,
  `eval_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eval_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Faculty`
--

DROP TABLE IF EXISTS `Faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Faculty` (
  `faculty_id` int(11) NOT NULL AUTO_INCREMENT,
  `faculty_first_name` varchar(255) DEFAULT NULL,
  `faculty_last_name` varchar(255) DEFAULT NULL,
  `hours_to_teach` float DEFAULT NULL,
  `teachingType_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`faculty_id`),
  KEY `FK22243244D9B390B9` (`teachingType_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FacultyToCourseInSemesterYear`
--

DROP TABLE IF EXISTS `FacultyToCourseInSemesterYear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FacultyToCourseInSemesterYear` (
  `cisy_id` int(11) NOT NULL AUTO_INCREMENT,
  `addition_attribute` float DEFAULT NULL,
  `compHour_allowance` float NOT NULL,
  `compHour_assigned` float NOT NULL,
  `section_number` int(11) DEFAULT NULL,
  `semester_id` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `compHour_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `prepType_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cisy_id`),
  KEY `FK7DFEAED4E68C3F9B` (`faculty_id`),
  KEY `FK7DFEAED42CF480B9` (`compHour_id`),
  KEY `FK7DFEAED4B0510F59` (`course_id`),
  KEY `FK7DFEAED45A59DFCC` (`prepType_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PrepTime`
--

DROP TABLE IF EXISTS `PrepTime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PrepTime` (
  `prep_id` int(11) NOT NULL AUTO_INCREMENT,
  `prep_factor` float DEFAULT NULL,
  `prep_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Program`
--

DROP TABLE IF EXISTS `Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `program_code` varchar(255) DEFAULT NULL,
  `program_name` varchar(255) DEFAULT NULL,
  `total_semester` int(11) DEFAULT NULL,
  PRIMARY KEY (`program_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Responsibility`
--

DROP TABLE IF EXISTS `Responsibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Responsibility` (
  `responsibility_id` int(11) NOT NULL AUTO_INCREMENT,
  `responsibility_code` varchar(255) DEFAULT NULL,
  `responsibility_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`responsibility_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ResponsibilityToFaculty`
--

DROP TABLE IF EXISTS `ResponsibilityToFaculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResponsibilityToFaculty` (
  `faculty_id` int(11) NOT NULL,
  `responsibility_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `hours_per_week` float DEFAULT NULL,
  PRIMARY KEY (`faculty_id`,`responsibility_id`,`semester_id`,`year`),
  KEY `FKCD888CDB33CCBA79` (`semester_id`),
  KEY `FKCD888CDBE68C3F9B` (`faculty_id`),
  KEY `FKCD888CDB9BF87779` (`responsibility_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Semester`
--

DROP TABLE IF EXISTS `Semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Semester` (
  `semester_id` int(11) NOT NULL AUTO_INCREMENT,
  `semester_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TeachingType`
--

DROP TABLE IF EXISTS `TeachingType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeachingType` (
  `teachingType_id` int(11) NOT NULL AUTO_INCREMENT,
  `teachingType_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teachingType_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-21  1:11:05
