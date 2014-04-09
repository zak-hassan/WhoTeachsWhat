SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`EvalFactor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`EvalFactor` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`EvalFactor` (
  `eval_id` INT NOT NULL DEFAULT 0 ,
  `eval_name` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`eval_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`PrepTime`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`PrepTime` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`PrepTime` (
  `prep_id` INT NOT NULL DEFAULT 0 ,
  `prep_name` VARCHAR(5) NOT NULL ,
  `prep_factor` FLOAT NOT NULL ,
  PRIMARY KEY (`prep_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Program`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Program` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Program` (
  `program_id` INT NOT NULL DEFAULT 0 ,
  `program_code` VARCHAR(5) NOT NULL ,
  `program_name` VARCHAR(50) NOT NULL ,
  `total_semester` INT NOT NULL ,
  PRIMARY KEY (`program_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Course` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Course` (
  `course_id` INT NOT NULL DEFAULT 0 ,
  `course_code` VARCHAR(8) NOT NULL ,
  `course_name` VARCHAR(50) NOT NULL ,
  `eval_factor1` FLOAT NOT NULL ,
  `eval_factor2` FLOAT NOT NULL ,
  `eval_factor3` FLOAT NOT NULL ,
  `old_course` VARCHAR(8) NULL ,
  `crossover_course` VARCHAR(8) NULL ,
  PRIMARY KEY (`course_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CourseToProgram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CourseToProgram` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CourseToProgram` (
  `program_id` INT NOT NULL ,
  `course_id` INT NOT NULL ,
  `cToP_id` INT NOT NULL ,
  PRIMARY KEY (`cToP_id`) ,
  INDEX `fk_wtw_CourseToProgram_wtw_Course1_idx` (`course_id` ASC) ,
  CONSTRAINT `fk_wtw_CourseToProgram_wtw_Program1`
    FOREIGN KEY (`program_id` )
    REFERENCES `mydb`.`Program` (`program_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseToProgram_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `mydb`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Semester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Semester` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Semester` (
  `semester_id` INT NOT NULL DEFAULT 0 ,
  `semester_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`semester_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TeachingType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TeachingType` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`TeachingType` (
  `teachingType_id` INT NOT NULL DEFAULT 0 ,
  `teachingType_name` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`teachingType_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`AccessLevel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`AccessLevel` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`AccessLevel` (
  `access_id` INT NOT NULL DEFAULT 0 ,
  `access_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`access_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Responsibility`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Responsibility` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Responsibility` (
  `responsibility_id` INT NOT NULL DEFAULT 0 ,
  `responsibility_code` VARCHAR(5) NOT NULL ,
  `responsibility_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`responsibility_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CompHour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CompHour` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CompHour` (
  `compHour_id` INT NOT NULL DEFAULT 0 ,
  `compHour_code` VARCHAR(5) NOT NULL ,
  `compHour_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`compHour_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Faculty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Faculty` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Faculty` (
  `faculty_id` INT NOT NULL DEFAULT 0 ,
  `faculty_first_name` VARCHAR(30) NOT NULL ,
  `faculty_last_name` VARCHAR(30) NOT NULL ,
  `teachingType_id` INT NOT NULL ,
  `hours_to_teach` FLOAT NOT NULL ,
  PRIMARY KEY (`faculty_id`) ,
  INDEX `fk_wtw_Faculty_wtw_TeachingType1_idx` (`teachingType_id` ASC) ,
  CONSTRAINT `fk_wtw_Faculty_wtw_TeachingType1`
    FOREIGN KEY (`teachingType_id` )
    REFERENCES `mydb`.`TeachingType` (`teachingType_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ResponsibilityToFaculty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ResponsibilityToFaculty` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`ResponsibilityToFaculty` (
  `faculty_id` INT NOT NULL ,
  `responsibility_id` INT NOT NULL ,
  `year` INT NOT NULL ,
  `semester_id` INT NOT NULL ,
  `hours_per_week` FLOAT NOT NULL ,
  `repToFac_id` INT NOT NULL ,
  PRIMARY KEY (`repToFac_id`) ,
  INDEX `fk_wtw_ResponsibilityToFaculty_wtw_Responsibility_idx` (`responsibility_id` ASC) ,
  INDEX `fk_wtw_ResponsibilityToFaculty_wtw_Semester1_idx` (`semester_id` ASC) ,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Responsibility`
    FOREIGN KEY (`responsibility_id` )
    REFERENCES `mydb`.`Responsibility` (`responsibility_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Faculty1`
    FOREIGN KEY (`faculty_id` )
    REFERENCES `mydb`.`Faculty` (`faculty_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `mydb`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CoursesInSemester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CoursesInSemester` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CoursesInSemester` (
  `cis_id` INT NOT NULL ,
  `course_id` INT NOT NULL ,
  `semester_id` INT NOT NULL ,
  `year` INT NOT NULL ,
  `total_section` INT NOT NULL ,
  PRIMARY KEY (`cis_id`) ,
  INDEX `fk_wtw_CoursesInSemester_wtw_Course1_idx` (`course_id` ASC) ,
  INDEX `fk_wtw_CoursesInSemester_wtw_Semester1_idx` (`semester_id` ASC) ,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `mydb`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `mydb`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CurriculumSemester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CurriculumSemester` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CurriculumSemester` (
  `curriculum_id` INT NOT NULL ,
  `name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`curriculum_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FacultyToCourseInSemesterYear`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`FacultyToCourseInSemesterYear` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`FacultyToCourseInSemesterYear` (
  `cisy_id` INT NOT NULL ,
  `faculty_id` INT NOT NULL ,
  `course_id` INT NOT NULL ,
  `prepType_id` INT NOT NULL ,
  `addition_attribute` FLOAT NOT NULL ,
  `compHour_id` INT NOT NULL ,
  `compHour_allowance` FLOAT NOT NULL ,
  `compHour_assigned` FLOAT NOT NULL ,
  `section_number` INT NOT NULL ,
  `year` INT NOT NULL ,
  `semester_id` INT NOT NULL ,
  `eval_factor1` FLOAT NOT NULL ,
  `eval_factor2` FLOAT NOT NULL ,
  `eval_factor3` FLOAT NOT NULL ,
  `factor_id` INT NOT NULL ,
  PRIMARY KEY (`cisy_id`) ,
  INDEX `fk_wtw_FacultyToCourseInSemesterYear_wtw_Faculty1_idx` (`faculty_id` ASC) ,
  INDEX `fk_wtw_FacultyToCourseInSemesterYear_wtw_Course1_idx` (`course_id` ASC) ,
  INDEX `fk_wtw_FacultyToCourseInSemesterYear_wtw_PrepTime1_idx` (`prepType_id` ASC) ,
  INDEX `fk_wtw_FacultyToCourseInSemesterYear_wtw_CompHour1_idx` (`compHour_id` ASC) ,
  INDEX `fk_wtw_FacultyToCourseInSemesterYear_wtw_Semester1` (`semester_id` ASC) ,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Faculty1`
    FOREIGN KEY (`faculty_id` )
    REFERENCES `mydb`.`Faculty` (`faculty_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `mydb`.`Course` (`course_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_PrepTime1`
    FOREIGN KEY (`prepType_id` )
    REFERENCES `mydb`.`PrepTime` (`prep_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_CompHour1`
    FOREIGN KEY (`compHour_id` )
    REFERENCES `mydb`.`CompHour` (`compHour_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `mydb`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CourseInProgramCurSem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CourseInProgramCurSem` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CourseInProgramCurSem` (
  `course_id` INT NOT NULL ,
  `program_id` INT NOT NULL ,
  `curriculumSemester_id` INT NOT NULL ,
  `cProgCurSem_id` INT NOT NULL ,
  PRIMARY KEY (`cProgCurSem_id`) ,
  INDEX `fk_wtw_CourseInProgramCurSem_wtw_Program1_idx` (`program_id` ASC) ,
  INDEX `fk_wtw_CourseInProgramCurSem_wtw_CurriculumSemester1_idx` (`curriculumSemester_id` ASC) ,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `mydb`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_Program1`
    FOREIGN KEY (`program_id` )
    REFERENCES `mydb`.`Program` (`program_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_CurriculumSemester1`
    FOREIGN KEY (`curriculumSemester_id` )
    REFERENCES `mydb`.`CurriculumSemester` (`curriculum_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Account` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Account` (
  `id` INT NOT NULL ,
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `accessLevel_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `account_to_accesslevel` (`accessLevel_id` ASC) ,
  CONSTRAINT `account_to_accesslevel`
    FOREIGN KEY (`accessLevel_id` )
    REFERENCES `mydb`.`AccessLevel` (`access_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`BIReportSwift`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BIReportSwift` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`BIReportSwift` (
  `biswift_id` INT NOT NULL AUTO_INCREMENT ,
  `course_code` VARCHAR(45) NULL ,
  `assignTeachHour` INT NULL ,
  `language` CHAR NULL ,
  `prepType` VARCHAR(2) NULL ,
  `prepfactor` FLOAT NULL ,
  `attriHours` FLOAT NULL ,
  `class_size` INT NULL ,
  `e_type` VARCHAR(45) NULL ,
  `r_type` VARCHAR(45) NULL ,
  `p_type` VARCHAR(45) NULL ,
  `evalfactor` FLOAT NULL ,
  `attb_hrs` FLOAT NULL ,
  `addt_attb` FLOAT NULL ,
  `comphours_allowed` FLOAT NULL ,
  `comphours_assnd` FLOAT NULL ,
  `ref` CHAR NULL ,
  PRIMARY KEY (`biswift_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Factor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Factor` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Factor` (
  `factor_id` INT NOT NULL DEFAULT 0 ,
  `factor_name` VARCHAR(45) NOT NULL ,
  `factor_value` FLOAT NOT NULL ,
  PRIMARY KEY (`factor_id`) )
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`EvalFactor`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`EvalFactor` (`eval_id`, `eval_name`) VALUES (NULL, 'E');
INSERT INTO `mydb`.`EvalFactor` (`eval_id`, `eval_name`) VALUES (NULL, 'R');
INSERT INTO `mydb`.`EvalFactor` (`eval_id`, `eval_name`) VALUES (NULL, 'P');

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`Course`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Course` (`course_id`, `course_code`, `course_name`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `old_course`, `crossover_course`) VALUES (NULL, 'IPC144', 'Introduction to Programming Using C', 60, 30, 10, NULL, NULL);
INSERT INTO `mydb`.`Course` (`course_id`, `course_code`, `course_name`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `old_course`, `crossover_course`) VALUES (NULL, 'ULI101', 'Introduction To Unix/linux, & The Internet', 70, 10, 20, NULL, NULL);
INSERT INTO `mydb`.`Course` (`course_id`, `course_code`, `course_name`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `old_course`, `crossover_course`) VALUES (NULL, 'APC100', 'Applied Professional Communications', 60, 20, 20, NULL, NULL);
INSERT INTO `mydb`.`Course` (`course_id`, `course_code`, `course_name`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `old_course`, `crossover_course`) VALUES (NULL, 'IOS110', 'Introduction to Operation Systems Using Windows', 80, 10, 10, NULL, NULL);
INSERT INTO `mydb`.`Course` (`course_id`, `course_code`, `course_name`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `old_course`, `crossover_course`) VALUES (NULL, 'DCN455', 'Data Communications Network', 50, 30, 20, NULL, NULL);

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`TeachingType`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`TeachingType` (`teachingType_id`, `teachingType_name`) VALUES (NULL, 'Full time');
INSERT INTO `mydb`.`TeachingType` (`teachingType_id`, `teachingType_name`) VALUES (NULL, 'Part time');
INSERT INTO `mydb`.`TeachingType` (`teachingType_id`, `teachingType_name`) VALUES (NULL, 'Seasonal');

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`AccessLevel`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'noaccess');
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'administrator');
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'level one coordinator');
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'level two coordinator');
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'web master');
INSERT INTO `mydb`.`AccessLevel` (`access_id`, `access_name`) VALUES (NULL, 'scheduler');

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`CompHour`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`CompHour` (`compHour_id`, `compHour_code`, `compHour_name`) VALUES (NULL, 'CP1', 'CompHour1');
INSERT INTO `mydb`.`CompHour` (`compHour_id`, `compHour_code`, `compHour_name`) VALUES (NULL, 'CP2', 'CompHour2');
INSERT INTO `mydb`.`CompHour` (`compHour_id`, `compHour_code`, `compHour_name`) VALUES (NULL, 'CP3', 'CompHour3');

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`Faculty`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Faculty` (`faculty_id`, `faculty_first_name`, `faculty_last_name`, `teachingType_id`, `hours_to_teach`) VALUES (NULL, 'Emile', 'Ohan', 1, 35);
INSERT INTO `mydb`.`Faculty` (`faculty_id`, `faculty_first_name`, `faculty_last_name`, `teachingType_id`, `hours_to_teach`) VALUES (NULL, 'Test', 'Faculty', 3, 16);
INSERT INTO `mydb`.`Faculty` (`faculty_id`, `faculty_first_name`, `faculty_last_name`, `teachingType_id`, `hours_to_teach`) VALUES (NULL, 'Arta', 'Kogan', 1, 35);
INSERT INTO `mydb`.`Faculty` (`faculty_id`, `faculty_first_name`, `faculty_last_name`, `teachingType_id`, `hours_to_teach`) VALUES (NULL, 'Zak', 'Hassan', 2, 15);

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`CoursesInSemester`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`CoursesInSemester` (`cis_id`, `course_id`, `semester_id`, `year`, `total_section`) VALUES (NULL, 1, 2, 2014, 4);
INSERT INTO `mydb`.`CoursesInSemester` (`cis_id`, `course_id`, `semester_id`, `year`, `total_section`) VALUES (NULL, 2, 1, 2013, 6);
INSERT INTO `mydb`.`CoursesInSemester` (`cis_id`, `course_id`, `semester_id`, `year`, `total_section`) VALUES (NULL, 3, 3, 2014, 3);
INSERT INTO `mydb`.`CoursesInSemester` (`cis_id`, `course_id`, `semester_id`, `year`, `total_section`) VALUES (NULL, 4, 1, 2010, 1);

COMMIT;

-- -----------------------------------------------------
-- Data for table `mydb`.`Factor`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Factor` (`factor_id`, `factor_name`, `factor_value`) VALUES (NULL, 'Taught Before', 1.2);
INSERT INTO `mydb`.`Factor` (`factor_id`, `factor_name`, `factor_value`) VALUES (NULL, 'First Time Taught', 0.9);
INSERT INTO `mydb`.`Factor` (`factor_id`, `factor_name`, `factor_value`) VALUES (NULL, 'Sample Factor', 1.1);

COMMIT;
