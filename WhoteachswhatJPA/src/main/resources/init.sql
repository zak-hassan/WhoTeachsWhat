/*
var v = $("#content-area tr"),
    a = [];
for (var i = 0; i < v.length; i++) {
    if (v[i].children[0].nodeName !== "TH") {
        console.log(v[i].children[0].innerText + " : " + v[i].children[1].innerText);
        a.push({
            "course_code": v[i].children[0].innerText,
            "course_name": v[i].children[1].innerText,
            "course_length": v[i].children[3].innerText
        });
    }
}
var sql = "";
a.forEach(function (d) {
    sql += "INSERT INTO course ('course_code','course_name') VALUES ('" + d["course_code"] + "','" + d["course_name"] + "'); \n";
});
console.log(sql);
copy(sql);

*/



-- ADDING DEFAULT VALUES FOR ACCESSLEVEL

INSERT INTO AccessLevel(access_name) VALUES('noaccess');
INSERT INTO AccessLevel(access_name) VALUES('administrator');
INSERT INTO AccessLevel(access_name) VALUES('levelone');
INSERT INTO AccessLevel(access_name) VALUES('leveltwo');
INSERT INTO AccessLevel(access_name) VALUES('webmaster');
INSERT INTO AccessLevel(access_name) VALUES('scheduler');

-- ADDING DEFAULT TEACHING TYPES:

INSERT INTO TeachingType(teachingType_name) VALUES('fulltime');
INSERT INTO TeachingType(teachingType_name) VALUES('parttime');
INSERT INTO TeachingType(teachingType_name) VALUES('seasonal');


-- ADDING COURSES: IFS

INSERT INTO course ('course_code','course_name') VALUES ('OPS105','Operating Systems: Practices'); 
INSERT INTO course ('course_code','course_name') VALUES ('OPS110','Operating Systems: Principles'); 
INSERT INTO course ('course_code','course_name') VALUES ('RIS120','Introduction to Web Management'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN130','Computer Architecture & Networking'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC140','Critical Thinking and Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR200','Security Principles: Cryptography & Encryption'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT210','The Pragmatic Art of Administration'); 
INSERT INTO course ('course_code','course_name') VALUES ('RIS220','Foundations of Database Management'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN230','Protocols: Standards & Models'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC240','Interpersonal Communications in Organizations'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC340','Business Presentations'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT311','Secure Scripting'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR300','Principles of Computer & Network Security'); 
INSERT INTO course ('course_code','course_name') VALUES ('RIS320','Risk Management: Data Management & Protection'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN330','Data Comm: Real World Interconnectivity'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT411','Security Arts: Digital Data Analysis'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR401','Security Principles: Forensics'); 
INSERT INTO course ('course_code','course_name') VALUES ('RIS420','Risk Management: Public and Private Systems'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN430','Data Comm: Wireless & Mobile'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTR491','Investigative Research Project'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT511','Security Arts: Ethics'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR500','Security Principles: Defenses'); 
INSERT INTO course ('course_code','course_name') VALUES ('RIS520','Risk Management: Emergent Technologies'); 
INSERT INTO course ('course_code','course_name') VALUES ('PRJ505','System Analysis & Project Management'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR600','Security Principles: Detection'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT611','Security Arts: Privacy Issues'); 
INSERT INTO course ('course_code','course_name') VALUES ('REA605','Research Methodologies'); 
INSERT INTO course ('course_code','course_name') VALUES ('CPP600','Co-op Professional Practice'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('DPIXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTW699','Coop Work Term'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT711','Business Continuity Planning'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT710','Law, Property & Legislation'); 
INSERT INTO course ('course_code','course_name') VALUES ('REA705','Research Project Work'); 
INSERT INTO course ('course_code','course_name') VALUES ('CPP700','Co-op Integration and Career Planning'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('DPIXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTW799','Coop Work Term'); 
INSERT INTO course ('course_code','course_name') VALUES ('SRT810','Technology Planning and Acquisition'); 
INSERT INTO course ('course_code','course_name') VALUES ('SPR800','Security Audit'); 
INSERT INTO course ('course_code','course_name') VALUES ('REA820','Capstone Project'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('DPIXXX','Professional Option'); 

-- ADDING COURSE: BSD

INSERT INTO course ('course_code','course_name') VALUES ('BTP100','Programming Fundamentals using C'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTB110','Accounting for the Business Environment'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTO120','Operating Systems for Programmers - UNIX'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTO130','Operating Systems for Programmers - Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC140','Critical Thinking and Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTP200','The Object-Oriented Paradigm using C++'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTD210','Database Design Principles'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTI220','Internet Architecture and Development'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC240','Interpersonal Communications in Organizations'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTP300','Object Oriented Software Development I - C++'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTD310','SQL Database Design using Oracle'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTI320','Web Programming on UNIX'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS330','Business Requirements Analysis using OO Models'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC340','Business Presentations'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTP400','Object-Oriented Software Development II - Java'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTN410','Data Communications - Networks'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTI420','Web Programming on Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS430','System Analysis and Design using UML'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC440','Business and Technical Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTR490','Investigative Research Internship'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTP500','Data Structures and Algorithms'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTB520','Canadian Business Environment'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTH540','Design for User Interfaces'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS530','Major Project - Plannng and Design'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTP600','Design Patterns in UML'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTE620','Law, Ethics and Social Responsibility'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS630','Major Project - Implementation'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTC640','Multimedia Presentations'); 
INSERT INTO course ('course_code','course_name') VALUES ('CPP600','Co-op Professional Practice'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTW699','Coop Work Term'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTN710','Information Security'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTB720 -or- BAB235 ','Marketing Principles and Practices -or- Introduction to Marketing (during Fall 2013) '); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS730','Project Management Methodologies'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTH740','Human Factors in Computing'); 
INSERT INTO course ('course_code','course_name') VALUES ('CPP700','Co-op Integration and Career Planning'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTW799','Coop Work Term'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTR820','Research Methodologies and Project'); 
INSERT INTO course ('course_code','course_name') VALUES ('BTS830','Technology Planning and Acquisition'); 
INSERT INTO course ('course_code','course_name') VALUES ('LSOXXX','Liberal Studies Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 

 -- ADD CPA

INSERT INTO course ('course_code','course_name') VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('IPC144','Introduction to Programming Using C'); 
INSERT INTO course ('course_code','course_name') VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO course ('course_code','course_name') VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC150','College English'); 
INSERT INTO course ('course_code','course_name') VALUES ('IBC233','iSERIES Business Computing'); 
INSERT INTO course ('course_code','course_name') VALUES ('OOP244','Introduction to Object Oriented Programming'); 
INSERT INTO course ('course_code','course_name') VALUES ('INT222','Internet I - Internet Fundamentals'); 
INSERT INTO course ('course_code','course_name') VALUES ('DBS201','Introduction to Database Design and SQL'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('DBS301','Database Design II and SQL using Oracle'); 
INSERT INTO course ('course_code','course_name') VALUES ('INT322','Internet II - Web Programming on UNIX'); 
INSERT INTO course ('course_code','course_name') VALUES ('SYS366','Requirements Gathering using OO Models'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('OOP344','Object Oriented Programming II Using C++'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN455','Data Communications Networks'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC397','Business Report Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('INT422','Internet III - Web Programming on Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('SYS466','Analysis and Design using OO Models'); 
INSERT INTO course ('course_code','course_name') VALUES ('JAC444','Introduction to Java for C++ Programmers'); 
INSERT INTO course ('course_code','course_name') VALUES ('PRJ566','Project Planning and Management'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PRJ666','Project Implementation'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 
INSERT INTO course ('course_code','course_name') VALUES ('PROXXX','Professional Option'); 


-- ADD CPD


INSERT INTO course ('course_code','course_name') VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('IPC144','Introduction to Programming Using C'); 
INSERT INTO course ('course_code','course_name') VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO course ('course_code','course_name') VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC150','College English'); 
INSERT INTO course ('course_code','course_name') VALUES ('IBC233','iSERIES Business Computing'); 
INSERT INTO course ('course_code','course_name') VALUES ('OOP244','Introduction to Object Oriented Programming'); 
INSERT INTO course ('course_code','course_name') VALUES ('INT222','Internet I - Internet Fundamentals'); 
INSERT INTO course ('course_code','course_name') VALUES ('DBS201','Introduction to Database Design and SQL'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('DBS301','Database Design II and SQL using Oracle'); 
INSERT INTO course ('course_code','course_name') VALUES ('INT322','Internet II - Web Programming on UNIX'); 
INSERT INTO course ('course_code','course_name') VALUES ('SYS366','Requirements Gathering using OO Models'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 


-- ADD CNS

INSERT INTO course ('course_code','course_name') VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('HWD101','PC Hardware I'); 
INSERT INTO course ('course_code','course_name') VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO course ('course_code','course_name') VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC150','College English'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN210','Basic Administration of Microsoft Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN286','Introduction to Data Communications Technology'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN213','Introduction To Scripting and Powershell'); 
INSERT INTO course ('course_code','course_name') VALUES ('OPS235','Introduction to Open System Servers'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN310','Microsoft Windows Network Infrastructure'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN386','Advance Data Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC397','Business Report Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('DAT702','Introduction to databases for administrators'); 


-- ADD CTY

INSERT INTO course ('course_code','course_name') VALUES ('APC100','Applied Professional Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('HWD101','PC Hardware I'); 
INSERT INTO course ('course_code','course_name') VALUES ('ULI101','Introduction to Unix/Linux and the Internet'); 
INSERT INTO course ('course_code','course_name') VALUES ('IOS110','Introduction to Operating Systems Using Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC150','College English'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN210','Basic Administration of Microsoft Windows'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN286','Introduction to Data Communications Technology'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN213','Introduction to Scripting and Powershell'); 
INSERT INTO course ('course_code','course_name') VALUES ('OPS235','Introduction to Open System Servers'); 
INSERT INTO course ('course_code','course_name') VALUES ('LIBXXX','English and Liberal Studies Elective'); 
INSERT INTO course ('course_code','course_name') VALUES ('WIN310','Microsoft Windows Network Infrastructure'); 
INSERT INTO course ('course_code','course_name') VALUES ('DCN386','Advance Data Communications'); 
INSERT INTO course ('course_code','course_name') VALUES ('EAC397','Business Report Writing'); 
INSERT INTO course ('course_code','course_name') VALUES ('DAT702','Introduction to databases for administrators'); 

-- ADD DAD

INSERT INTO course ('course_code','course_name') VALUES ('ULI705','UNIX/Linux and Internet Programming'); 
INSERT INTO course ('course_code','course_name') VALUES ('SQL710','Database Administration using SQL Server'); 
INSERT INTO course ('course_code','course_name') VALUES ('DES715','Database Design'); 
INSERT INTO course ('course_code','course_name') VALUES ('ORA725','SQL and PL/SQL using ORACLE'); 
INSERT INTO course ('course_code','course_name') VALUES ('JAV745','Programming using JAVA'); 
INSERT INTO course ('course_code','course_name') VALUES ('CJV805','Database Connectivity using JAVA'); 
INSERT INTO course ('course_code','course_name') VALUES ('CVB815','Database Connectivity using VISUAL BASIC'); 
INSERT INTO course ('course_code','course_name') VALUES ('DBW825','Data Warehousing'); 
INSERT INTO course ('course_code','course_name') VALUES ('SEC835','Security in Databases and Web Applications'); 
INSERT INTO course ('course_code','course_name') VALUES ('PRJ845','Project Management and Implementation'); 

-- ADD PMC

INSERT INTO course ('course_code','course_name') VALUES ('PMC100','IT Project Management Fundamentals'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC110','Project Management Tools and Techniques'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC120','Business Systems Environments'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC130','Fundamentals of Systems Development'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC140','Project Leadership'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC150','Business Finance'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC200','Advanced IT Project Management'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC210','Project Management Communication Skills'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC220','Contract Law, Ethics, and IT Professionalism'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC230','IT Project Management Case Studies'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC240','Quality Assurance and Testing in IT projects'); 
INSERT INTO course ('course_code','course_name') VALUES ('PMC250','Applied IT Project Management'); 


-- ADD SEMESTERS

INSERT INTO semester ('semester_name') VALUES ('WINTER');
INSERT INTO semester ('semester_name') VALUES ('SUMMER');
INSERT INTO semester ('semester_name') VALUES ('FALL');


-- ADD DUMMY DATA FOR FACULTY
INSERT INTO faculty ('faculty_first_name','faculty_last_name','userid','password','teachingType_id','access_id') VALUES('thao','diep', 'thao.diep@senecacollege.ca','a12345',0,0,0);
INSERT INTO faculty ('faculty_first_name','faculty_last_name','userid','password','teachingType_id','access_id') VALUES('lisa','sheehan', 'lisa.sheehan@senecacollege.ca','a12345',0,0,0);
INSERT INTO faculty ('faculty_first_name','faculty_last_name','userid','password','teachingType_id','access_id') VALUES('paul','ravetti', 'paul.ravetti@senecacollege.ca','a12345',0,0,0);
INSERT INTO faculty ('faculty_first_name','faculty_last_name','userid','password','teachingType_id','access_id') VALUES('janice','tee', 'janice.tee@senecacollege.ca','a12345',0,0,0);
INSERT INTO faculty ('faculty_first_name','faculty_last_name','userid','password','teachingType_id','access_id') VALUES('phil','francisco', 'phil.francisco@senecacollege.ca','a12345',0,0,0);


-- ADD RESPONSIBILITY

INSERT INTO responsibility('responsibility_code','responsibility_name') VALUES('RESEARCH','Research');
INSERT INTO responsibility('responsibility_code','responsibility_name') VALUES('TEACHING','Teaching');


-- ADD ResponsibilityToFaculty

INSERT INTO responsibilityToFaculty('faculty_id','responsibility_id','year','semester_id','hours_per_week') VALUES(1,1,2014,1,5);
INSERT INTO responsibilityToFaculty('faculty_id','responsibility_id','year','semester_id','hours_per_week') VALUES(2,2,2014,2,10);


-- ADD CompHour

INSERT INTO compHour('compHour_code','compHour_name') VALUES ('CODE1','NAME1');
INSERT INTO compHour('compHour_code','compHour_name') VALUES ('CODE2','NAME2');


-- ADD prepTime

INSERT INTO prepTime('prep_name','prep_factor') VALUES('PREP1',10);
INSERT INTO prepTime('prep_name','prep_factor') VALUES('PREP2',13);


-- ADD Program

INSERT INTO program('program_id','program_code','program_name','total_semester') VALUES('CPA','Computer Programming and Analysis',6);
INSERT INTO program('program_id','program_code','program_name','total_semester') VALUES('DAD','Database Application Developer',2);


-- ADD curriculumSemester

INSERT INTO curriculumSemester('name') VALUES('Curriculum1');
INSERT INTO curriculumSemester('name') VALUES('Curriculum2');


-- ADD CourseInProgramCurSem
-- INCORRECT datatype for field(s) course_id, program_id

-- ADD CourseToProgram
-- INCORRECT datatype for field(s) course_id, program_id

-- ADD facultyToCourseInSemesterYear
-- INCORRECT datatype for field(s) course_id

-- ADD courseInSemester
-- INCORRECT datatype for field(s) course_id


-- ADD evalFactor

INSERT INTO evalFactor('eval_name','eval_factor') VALUES('Evaluation1',12);
INSERT INTO evalFactor('eval_name','eval_factor') VALUES('Evaluation2',24);


 




 

