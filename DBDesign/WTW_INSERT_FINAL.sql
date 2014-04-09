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
-- Data for table `mydb`.`PrepTime`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`PrepTime` (`prep_id`, `prep_name`, `prep_factor`) VALUES (NULL, 'P1', 1.4);
INSERT INTO `mydb`.`PrepTime` (`prep_id`, `prep_name`, `prep_factor`) VALUES (NULL, 'P2', 1.6);
INSERT INTO `mydb`.`PrepTime` (`prep_id`, `prep_name`, `prep_factor`) VALUES (NULL, 'P3', 0.7);

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
-- Data for table `mydb`.`Semester`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Semester` (`semester_id`, `semester_name`) VALUES (NULL, 'Winter');
INSERT INTO `mydb`.`Semester` (`semester_id`, `semester_name`) VALUES (NULL, 'Summer');
INSERT INTO `mydb`.`Semester` (`semester_id`, `semester_name`) VALUES (NULL, 'Fall');

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
-- Data for table `mydb`.`Responsibility`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Responsibility` (`responsibility_id`, `responsibility_code`, `responsibility_name`) VALUES (NULL, 'TEACH', 'Teaching');
INSERT INTO `mydb`.`Responsibility` (`responsibility_id`, `responsibility_code`, `responsibility_name`) VALUES (NULL, 'RSCH', 'Research');
INSERT INTO `mydb`.`Responsibility` (`responsibility_id`, `responsibility_code`, `responsibility_name`) VALUES (NULL, 'OTHER', 'Other');

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
-- Data for table `mydb`.`ResponsibilityToFaculty`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`ResponsibilityToFaculty` (`faculty_id`, `responsibility_id`, `year`, `semester_id`, `hours_per_week`, `repToFac_id`) VALUES (1, 1, 2014, 1, 35, NULL);
INSERT INTO `mydb`.`ResponsibilityToFaculty` (`faculty_id`, `responsibility_id`, `year`, `semester_id`, `hours_per_week`, `repToFac_id`) VALUES (2, 1, 2014, 2, 16, NULL);
INSERT INTO `mydb`.`ResponsibilityToFaculty` (`faculty_id`, `responsibility_id`, `year`, `semester_id`, `hours_per_week`, `repToFac_id`) VALUES (3, 2, 2013, 3, 35, NULL);
INSERT INTO `mydb`.`ResponsibilityToFaculty` (`faculty_id`, `responsibility_id`, `year`, `semester_id`, `hours_per_week`, `repToFac_id`) VALUES (4, 3, 2014, 2, 15, NULL);
INSERT INTO `mydb`.`ResponsibilityToFaculty` (`faculty_id`, `responsibility_id`, `year`, `semester_id`, `hours_per_week`, `repToFac_id`) VALUES (5, 2, 2014, 2, NULL, NULL);

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
-- Data for table `mydb`.`FacultyToCourseInSemesterYear`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`FacultyToCourseInSemesterYear` (`cisy_id`, `faculty_id`, `course_id`, `prepType_id`, `addition_attribute`, `compHour_id`, `compHour_allowance`, `compHour_assigned`, `section_number`, `year`, `semester_id`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `factor_id`) VALUES (NULL, 1, 1, 1, 10, 1, 20, 11, 2, 2014, 1, 60, 30, 10, 1);
INSERT INTO `mydb`.`FacultyToCourseInSemesterYear` (`cisy_id`, `faculty_id`, `course_id`, `prepType_id`, `addition_attribute`, `compHour_id`, `compHour_allowance`, `compHour_assigned`, `section_number`, `year`, `semester_id`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `factor_id`) VALUES (NULL, 4, 2, 2, 5, 2, 15, 15, 1, 2014, 2, 70, 10, 20, 2);
INSERT INTO `mydb`.`FacultyToCourseInSemesterYear` (`cisy_id`, `faculty_id`, `course_id`, `prepType_id`, `addition_attribute`, `compHour_id`, `compHour_allowance`, `compHour_assigned`, `section_number`, `year`, `semester_id`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `factor_id`) VALUES (NULL, 1, 2, 1, 10, 1, 20, 9, 2, 2014, 1, 70, 10, 20, 1);
INSERT INTO `mydb`.`FacultyToCourseInSemesterYear` (`cisy_id`, `faculty_id`, `course_id`, `prepType_id`, `addition_attribute`, `compHour_id`, `compHour_allowance`, `compHour_assigned`, `section_number`, `year`, `semester_id`, `eval_factor1`, `eval_factor2`, `eval_factor3`, `factor_id`) VALUES (NULL, 3, 5, 3, 20, 3, 25, 20, 1, 2014, 3, 50, 30, 20, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Account`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Account` (`id`, `username`, `password`, `accessLevel_id`) VALUES (NULL, 'Anil.Santokhi', 'a12345', 1);
INSERT INTO `mydb`.`Account` (`id`, `username`, `password`, `accessLevel_id`) VALUES (NULL, 'Zak.Hassan', 'a12345', 2);
INSERT INTO `mydb`.`Account` (`id`, `username`, `password`, `accessLevel_id`) VALUES (NULL, 'Emile.Ohan', 'a12345', 3);

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