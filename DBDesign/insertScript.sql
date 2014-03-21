-- ADDING DEFAULT VALUES FOR ACCESSLEVEL

INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('noaccess');
INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('administrator');
INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('levelone');
INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('leveltwo');
INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('webmaster');
INSERT INTO `test`.`AccessLevel` (`access_name`) VALUES('scheduler');

-- ADDING DEFAULT TEACHING TYPES:

INSERT INTO `test`.`TeachingType` (`teachingType_name`) VALUES('fulltime');
INSERT INTO `test`.`TeachingType` (`teachingType_name`) VALUES('parttime');
INSERT INTO `test`.`TeachingType` (`teachingType_name`) VALUES('seasonal');

-- TODO: Create a unique constraint on course_code because we don't want to add the same course again.
-- ADDING COURSES: IFS
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OPS105','Operating Systems: Practices'); 
-- $1 can be between 1- 185 , $2 1-2  $3 WHICH Semester  1-8
INSERT INTO `test`.`CourseInProgramCurSem` (`course_id`, `cs_id`, `program_id`) VALUES (1,1,1);

INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OPS110','Operating Systems: Principles'); 
INSERT INTO `test`.`CourseInProgramCurSem` (`course_id`, `cs_id`, `program_id`) VALUES (2,1,2);

INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('RIS120','Introduction to Web Management'); 
INSERT INTO `test`.`CourseInProgramCurSem` (`course_id`, `cs_id`, `program_id`) VALUES (3,1,4);

INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN130','Computer Architecture & Networking'); 
INSERT INTO `test`.`CourseInProgramCurSem` (`course_id`, `cs_id`, `program_id`) VALUES (4,2,3);

INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC140','Critical Thinking and Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR200','Security Principles: Cryptography & Encryption'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT210','The Pragmatic Art of Administration'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('RIS220','Foundations of Database Management'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN230','Protocols: Standards & Models'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC240','Interpersonal Communications in Organizations'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC340','Business Presentations'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT311','Secure Scripting'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR300','Principles of Computer & Network Security'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('RIS320','Risk Management: Data Management & Protection'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN330','Data Comm: Real World Interconnectivity'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT411','Security Arts: Digital Data Analysis'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR401','Security Principles: Forensics'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('RIS420','Risk Management: Public and Private Systems'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN430','Data Comm: Wireless & Mobile'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTR491','Investigative Research Project'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT511','Security Arts: Ethics'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR500','Security Principles: Defenses'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('RIS520','Risk Management: Emergent Technologies'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PRJ505','System Analysis & Project Management'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR600','Security Principles: Detection'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT611','Security Arts: Privacy Issues'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('REA605','Research Methodologies'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CPP600','Co-op Professional Practice'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DPIXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTW699','Coop Work Term'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT711','Business Continuity Planning'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT710','Law, Property & Legislation'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('REA705','Research Project Work'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CPP700','Co-op Integration and Career Planning'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DPIXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTW799','Coop Work Term'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SRT810','Technology Planning and Acquisition'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SPR800','Security Audit'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('REA820','Capstone Project'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DPIXXX','Professional Option'); 

-- ADDING COURSE: BSD
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP100','Programming Fundamentals using C'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTB110','Accounting for the Business Environment'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTO120','Operating Systems for Programmers - UNIX'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTO130','Operating Systems for Programmers - Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC140','Critical Thinking and Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP200','The Object-Oriented Paradigm using C++'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTD210','Database Design Principles'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTI220','Internet Architecture and Development'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC240','Interpersonal Communications in Organizations'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP300','Object Oriented Software Development I - C++'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTD310','SQL Database Design using Oracle'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTI320','Web Programming on UNIX'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS330','Business Requirements Analysis using OO Models'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC340','Business Presentations'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP400','Object-Oriented Software Development II - Java'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTN410','Data Communications - Networks'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTI420','Web Programming on Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS430','System Analysis and Design using UML'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC440','Business and Technical Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTR490','Investigative Research Internship'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP500','Data Structures and Algorithms'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTB520','Canadian Business Environment'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTH540','Design for User Interfaces'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS530','Major Project - Plannng and Design'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTP600','Design Patterns in UML'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTE620','Law, Ethics and Social Responsibility'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS630','Major Project - Implementation'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTC640','Multimedia Presentations'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CPP600','Co-op Professional Practice'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTW699','Coop Work Term'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTN710','Information Security'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTB720 -or- BAB235 ','Marketing Principles and Practices -or- Introduction to Marketing (during Fall 2013) '); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS730','Project Management Methodologies'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTH740','Human Factors in Computing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CPP700','Co-op Integration and Career Planning'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTW799','Coop Work Term'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTR820','Research Methodologies and Project'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('BTS830','Technology Planning and Acquisition'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 

-- ADD CPA
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IPC144','Introduction to Programming Using C'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC150','College English'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IBC233','iSERIES Business Computing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OOP244','Introduction to Object Oriented Programming'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('INT222','Internet I - Internet Fundamentals'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DBS201','Introduction to Database Design and SQL'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DBS301','Database Design II and SQL using Oracle'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('INT322','Internet II - Web Programming on UNIX'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SYS366','Requirements Gathering using OO Models'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OOP344','Object Oriented Programming II Using C++'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN455','Data Communications Networks'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC397','Business Report Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('INT422','Internet III - Web Programming on Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SYS466','Analysis and Design using OO Models'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('JAC444','Introduction to Java for C++ Programmers'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PRJ566','Project Planning and Management'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PRJ666','Project Implementation'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PROXXX','Professional Option'); 

-- ADD CPD
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IPC144','Introduction to Programming Using C'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC150','College English'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IBC233','iSERIES Business Computing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OOP244','Introduction to Object Oriented Programming'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('INT222','Internet I - Internet Fundamentals'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DBS201','Introduction to Database Design and SQL'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DBS301','Database Design II and SQL using Oracle'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('INT322','Internet II - Web Programming on UNIX'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SYS366','Requirements Gathering using OO Models'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 

-- ADD CNS
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('HWD101','PC Hardware I'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC150','College English'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN210','Basic Administration of Microsoft Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN286','Introduction to Data Communications Technology'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN213','Introduction To Scripting and Powershell'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OPS235','Introduction to Open System Servers'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN310','Microsoft Windows Network Infrastructure'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN386','Advance Data Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC397','Business Report Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DAT702','Introduction to databases for administrators'); 


-- ADD CTY
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('HWD101','PC Hardware I'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC150','College English'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN210','Basic Administration of Microsoft Windows'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN286','Introduction to Data Communications Technology'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN213','Introduction to Scripting and Powershell'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('OPS235','Introduction to Open System Servers'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('WIN310','Microsoft Windows Network Infrastructure'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DCN386','Advance Data Communications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('EAC397','Business Report Writing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DAT702','Introduction to databases for administrators'); 

-- ADD DAD
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ULI705','UNIX/Linux and Internet Programming'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SQL710','Database Administration using SQL Server'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DES715','Database Design'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('ORA725','SQL and PL/SQL using ORACLE'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('JAV745','Programming using JAVA'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CJV805','Database Connectivity using JAVA'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('CVB815','Database Connectivity using VISUAL BASIC'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('DBW825','Data Warehousing'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('SEC835','Security in Databases and Web Applications'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PRJ845','Project Management and Implementation'); 

-- ADD PMC
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC100','IT Project Management Fundamentals'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC110','Project Management Tools and Techniques'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC120','Business Systems Environments'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC130','Fundamentals of Systems Development'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC140','Project Leadership'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC150','Business Finance'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC200','Advanced IT Project Management'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC210','Project Management Communication Skills'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC220','Contract Law, Ethics, and IT Professionalism'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC230','IT Project Management Case Studies'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC240','Quality Assurance and Testing in IT projects'); 
INSERT INTO `test`.`Course` (`course_code`, `course_name`)  VALUES ('PMC250','Applied IT Project Management'); 

INSERT INTO `test`.`Responsibility`
(
`responsibility_code`,
`responsibility_name`)
VALUES
("RAAA_CODE",
"RAA_NAME");

-- ADD SEMESTERS
INSERT INTO `test`.`Semester` (`semester_name`) VALUES ('WINTER');
INSERT INTO `test`.`Semester` (`semester_name`) VALUES ('SUMMER');
INSERT INTO `test`.`Semester` (`semester_name`) VALUES ('FALL');


-- ADD DUMMY DATA FOR FACULTY
INSERT INTO `test`.`Faculty` (`faculty_first_name`, `faculty_last_name`,`hours_to_teach`,`teachingType_id`) VALUES('thao','diep',1,1);
INSERT INTO `test`.`Faculty` (`faculty_first_name`, `faculty_last_name`,`hours_to_teach`,`teachingType_id`) VALUES('lisa','sheehan', 1,1);
INSERT INTO `test`.`Faculty` (`faculty_first_name`, `faculty_last_name`, `hours_to_teach`,`teachingType_id`) VALUES('paul','ravetti',1,1);
INSERT INTO `test`.`Faculty` (`faculty_first_name`, `faculty_last_name`, `hours_to_teach`,`teachingType_id`) VALUES('janice','tee', 1,1);
INSERT INTO `test`.`Faculty` (`faculty_first_name`, `faculty_last_name`, `hours_to_teach`,`teachingType_id`) VALUES('phil','francisco', 1,1);


-- ADD RESPONSIBILITY
INSERT INTO `test`.`Responsibility` (`responsibility_code`,`responsibility_name`) VALUES('RESEARCH','Research');
INSERT INTO `test`.`Responsibility` (`responsibility_code`,`responsibility_name`) VALUES('TEACHING','Teaching');


-- ADD ResponsibilityToFaculty

INSERT INTO `test`.`ResponsibilityToFaculty` (`faculty_id`,`responsibility_id`,`year`,`semester_id`,`hours_per_week`) VALUES(1,1,2014,1,5);
INSERT INTO `test`.`ResponsibilityToFaculty` (`faculty_id`,`responsibility_id`,`year`,`semester_id`,`hours_per_week`) VALUES(2,2,2014,2,10);


-- ADD CompHour
INSERT INTO `test`.`CompHour` (`compHour_code`,`compHour_name`) VALUES ('CODE1','NAME1');
INSERT INTO `test`.`CompHour` (`compHour_code`,`compHour_name`) VALUES ('CODE2','NAME2');

-- ADD prepTime
INSERT INTO `test`.`PrepTime` (`prep_name`,`prep_factor`) VALUES('PREP1',10.0);
INSERT INTO `test`.`PrepTime` (`prep_name`,`prep_factor`) VALUES('PREP2',13.0);

-- ADD Program
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('CPD','Computer Programmer Diploma', 4);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('CPA','Computer Programming and Analysis', 6);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('DAD','Database Application Developer', 2);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('PMC','Project Management - Information Technology', 8);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('CNS','Computer Networking & Technical Support', 4);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('CTY','Computer Systems Technology', 4);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('BSD','Bachelor of Technology (Software Development)', 8);
INSERT INTO `test`.`Program` (`program_code`, `program_name`, `total_semester`) VALUES('IFS','Bachelor of Technology (Informatics & Security)',8);

-- ADD curriculumSemester  This is equivalent to semester 1 , semester 2 , semester 3 ,....

INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum1');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum2');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum3');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum4');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum5');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum6');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum7');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum8');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum9');
INSERT INTO `test`.`CurriculumSemester` (`name`) VALUES('Curriculum10');




-- ADD evalFactor

INSERT INTO `test`.`EvalFactor` (`eval_name`,`eval_factor`) VALUES('Evaluation1',12.0);
INSERT INTO `test`.`EvalFactor` (`eval_name`,`eval_factor`) VALUES('Evaluation2',24.0);


-- ADD CourseToProgram
-- INCORRECT datatype for field(s) course_id, program_id
INSERT INTO `test`.`CourseToProgram`
(`course_id`,
`program_id`)
VALUES (1,1);
INSERT INTO `test`.`CourseToProgram`
(`course_id`,
`program_id`)
VALUES (3,2);
INSERT INTO `test`.`CourseToProgram`
(`course_id`,
`program_id`)
VALUES (4,4);
 
INSERT INTO `test`.`Account`
(`password`,
`access_id`,
`username`)
VALUES
("a12345",2,
"Emile.Ohan");


INSERT INTO `test`.`Account`
(`password`,
`access_id`,
`username`)
VALUES
("a12345",2,
"Diana.Steward");

INSERT INTO `test`.`Account`
(`password`,
`access_id`,
`username`)
VALUES
("a12345",2,
"Fred.Flinstron");

INSERT INTO `test`.`Account`
(`password`,
`access_id`,
`username`)
VALUES
("a12345",2,
"Jim.Carey");






-- ADD CourseInProgramCurSem


-- ADD facultyToCourseInSemesterYear
-- INCORRECT datatype for field(s) course_id
-- FACULTY ID: between 1 - 10
-- COURSE ID: 1 - 370
-- PREP TIME: 1 - 2 
-- COMPHOUR_ID: 1-2
