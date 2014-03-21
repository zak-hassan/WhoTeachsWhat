SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`EvalFactor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`EvalFactor` ;

CREATE  TABLE IF NOT EXISTS `test`.`EvalFactor` (
  `eval_id` INT NOT NULL DEFAULT 0 ,
  `eval_name` VARCHAR(10) NOT NULL ,
  `eval_factor` FLOAT NOT NULL ,
  PRIMARY KEY (`eval_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`PrepTime`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`PrepTime` ;

CREATE  TABLE IF NOT EXISTS `test`.`PrepTime` (
  `prep_id` INT NOT NULL DEFAULT 0 ,
  `prep_name` VARCHAR(5) NOT NULL ,
  `prep_factor` FLOAT NOT NULL ,
  PRIMARY KEY (`prep_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Program`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Program` ;

CREATE  TABLE IF NOT EXISTS `test`.`Program` (
  `program_id` INT NOT NULL DEFAULT 0 ,
  `program_code` VARCHAR(5) NOT NULL ,
  `program_name` VARCHAR(50) NOT NULL ,
  `total_semester` INT NOT NULL ,
  PRIMARY KEY (`program_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Course` ;

CREATE  TABLE IF NOT EXISTS `test`.`Course` (
  `course_id` INT NOT NULL DEFAULT 0 ,
  `course_code` VARCHAR(8) NOT NULL ,
  `course_name` VARCHAR(50) NOT NULL ,
  PRIMARY KEY (`course_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`CourseToProgram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`CourseToProgram` ;

CREATE  TABLE IF NOT EXISTS `test`.`CourseToProgram` (
  `program_id` INT NOT NULL ,
  `course_id` INT NOT NULL ,
  PRIMARY KEY (`program_id`, `course_id`) ,
  CONSTRAINT `fk_wtw_CourseToProgram_wtw_Program1`
    FOREIGN KEY (`program_id` )
    REFERENCES `test`.`Program` (`program_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseToProgram_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `test`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Semester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Semester` ;

CREATE  TABLE IF NOT EXISTS `test`.`Semester` (
  `semester_id` INT NOT NULL DEFAULT 0 ,
  `semester_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`semester_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`TeachingType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`TeachingType` ;

CREATE  TABLE IF NOT EXISTS `test`.`TeachingType` (
  `teachingType_id` INT NOT NULL DEFAULT 0 ,
  `teachingType_name` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`teachingType_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`AccessLevel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`AccessLevel` ;

CREATE  TABLE IF NOT EXISTS `test`.`AccessLevel` (
  `access_id` INT NOT NULL DEFAULT 0 ,
  `access_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`access_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Responsibility`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Responsibility` ;

CREATE  TABLE IF NOT EXISTS `test`.`Responsibility` (
  `responsibility_id` INT NOT NULL DEFAULT 0 ,
  `responsibility_code` VARCHAR(5) NOT NULL ,
  `responsibility_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`responsibility_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`CompHour`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`CompHour` ;

CREATE  TABLE IF NOT EXISTS `test`.`CompHour` (
  `compHour_id` INT NOT NULL DEFAULT 0 ,
  `compHour_code` VARCHAR(5) NOT NULL ,
  `compHour_name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`compHour_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Faculty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Faculty` ;

CREATE  TABLE IF NOT EXISTS `test`.`Faculty` (
  `faculty_id` INT NOT NULL DEFAULT 0 ,
  `faculty_first_name` VARCHAR(30) NOT NULL ,
  `faculty_last_name` VARCHAR(30) NOT NULL ,
  `teachingType_id` INT NOT NULL ,
  `hours_to_teach` FLOAT NOT NULL ,
  PRIMARY KEY (`faculty_id`) ,
  CONSTRAINT `fk_wtw_Faculty_wtw_TeachingType1`
    FOREIGN KEY (`teachingType_id` )
    REFERENCES `test`.`TeachingType` (`teachingType_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`ResponsibilityToFaculty`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`ResponsibilityToFaculty` ;

CREATE  TABLE IF NOT EXISTS `test`.`ResponsibilityToFaculty` (
  `faculty_id` INT NOT NULL ,
  `responsibility_id` INT NOT NULL ,
  `year` INT NOT NULL ,
  `semester_id` INT NOT NULL ,
  `hours_per_week` FLOAT NOT NULL ,
  PRIMARY KEY (`faculty_id`, `responsibility_id`, `year`, `semester_id`) ,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Responsibility`
    FOREIGN KEY (`responsibility_id` )
    REFERENCES `test`.`Responsibility` (`responsibility_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Faculty1`
    FOREIGN KEY (`faculty_id` )
    REFERENCES `test`.`Faculty` (`faculty_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_ResponsibilityToFaculty_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `test`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`CoursesInSemester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`CoursesInSemester` ;

CREATE  TABLE IF NOT EXISTS `test`.`CoursesInSemester` (
  `cis_id` INT NOT NULL ,
  `course_id` INT NOT NULL ,
  `semester_id` INT NOT NULL ,
  `year` INT NOT NULL ,
  `total_section` INT NOT NULL ,
  `eval_1` INT NOT NULL ,
  `eval_2` INT NOT NULL ,
  `eval_3` INT NOT NULL ,
  `eval_1_ans` FLOAT NOT NULL ,
  `eval_2_ans` FLOAT NOT NULL ,
  `eval_3_ans` FLOAT NOT NULL ,
  `addition_attribute` INT NOT NULL ,
  PRIMARY KEY (`cis_id`) ,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_EvalFactor1`
    FOREIGN KEY (`eval_1` )
    REFERENCES `test`.`EvalFactor` (`eval_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_EvalFactor2`
    FOREIGN KEY (`eval_2` )
    REFERENCES `test`.`EvalFactor` (`eval_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_EvalFactor3`
    FOREIGN KEY (`eval_3` )
    REFERENCES `test`.`EvalFactor` (`eval_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `test`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CoursesInSemester_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `test`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`CurriculumSemester`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`CurriculumSemester` ;

CREATE  TABLE IF NOT EXISTS `test`.`CurriculumSemester` (
  `curriculum_id` INT NOT NULL ,
  `name` VARCHAR(30) NOT NULL ,
  PRIMARY KEY (`curriculum_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`FacultyToCourseInSemesterYear`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`FacultyToCourseInSemesterYear` ;

CREATE  TABLE IF NOT EXISTS `test`.`FacultyToCourseInSemesterYear` (
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
  PRIMARY KEY (`cisy_id`) ,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Faculty1`
    FOREIGN KEY (`faculty_id` )
    REFERENCES `test`.`Faculty` (`faculty_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `test`.`Course` (`course_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_PrepTime1`
    FOREIGN KEY (`prepType_id` )
    REFERENCES `test`.`PrepTime` (`prep_id` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_CompHour1`
    FOREIGN KEY (`compHour_id` )
    REFERENCES `test`.`CompHour` (`compHour_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_FacultyToCourseInSemesterYear_wtw_Semester1`
    FOREIGN KEY (`semester_id` )
    REFERENCES `test`.`Semester` (`semester_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`CourseInProgramCurSem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`CourseInProgramCurSem` ;

CREATE  TABLE IF NOT EXISTS `test`.`CourseInProgramCurSem` (
  `course_id` INT NOT NULL ,
  `program_id` INT NOT NULL ,
  `cs_id` INT NOT NULL ,
  PRIMARY KEY (`course_id`, `program_id`, `cs_id`) ,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_Course1`
    FOREIGN KEY (`course_id` )
    REFERENCES `test`.`Course` (`course_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_Program1`
    FOREIGN KEY (`program_id` )
    REFERENCES `test`.`Program` (`program_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wtw_CourseInProgramCurSem_wtw_CurriculumSemester1`
    FOREIGN KEY (`cs_id` )
    REFERENCES `test`.`CurriculumSemester` (`curriculum_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`Account`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`Account` ;

CREATE  TABLE IF NOT EXISTS `test`.`Account` (
  `id` INT NOT NULL ,
  `username` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `access_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `wtwAccountToAccessLevel_id`
    FOREIGN KEY (`access_id` )
    REFERENCES `test`.`AccessLevel` (`access_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
