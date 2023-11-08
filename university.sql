
/* table faculty */
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL
) ;
ALTER TABLE faculty
ADD CONSTRAINT PK_faculty PRIMARY KEY (id);


 /* table department */
CREATE TABLE IF NOT EXISTS `department` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `faculty_id` INT NOT NULL
) ;

ALTER TABLE department
ADD CONSTRAINT PK_department PRIMARY KEY (id),
ADD CONSTRAINT FK_department_faculty FOREIGN KEY (faculty_id) REFERENCES faculty(id);

/* table stateCourse */
CREATE TABLE IF NOT EXISTS `stateCourse` (
  `id` INT NOT NULL,
  `type` VARCHAR(12) NOT NULL
) ;

ALTER TABLE stateCourse
ADD CONSTRAINT PK_stateCourse PRIMARY KEY (id);

/* table stateInscription */
CREATE TABLE IF NOT EXISTS `stateInscription` (
  `id` INT NOT NULL,
  `type` VARCHAR(12) NOT NULL
) ;

ALTER TABLE stateInscription
ADD CONSTRAINT PK_stateInscription PRIMARY KEY (id);

 /* table priority */
CREATE TABLE IF NOT EXISTS `priority` (
  `id` INT NOT NULL,
  `type` VARCHAR(20) NOT NULL
) ;

ALTER TABLE priority
ADD CONSTRAINT PK_priority PRIMARY KEY (id);

/*  table academicSessions */
CREATE TABLE IF NOT EXISTS `academicSessions` (
  `id` INT NOT NULL,
  `semester` INT NULL,
  `academicYear` YEAR NOT NULL
) ;

ALTER TABLE academicSessions
ADD CONSTRAINT PK_academicSessions PRIMARY KEY (id);

/* table teachers */
CREATE TABLE IF NOT EXISTS `teachers` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL
) ;

ALTER TABLE teachers
ADD CONSTRAINT PK_teachers PRIMARY KEY (id);

/* table teachersPhones */
CREATE TABLE IF NOT EXISTS `teachersPhones` (
  `teachers_id` INT NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `priority_id` INT NOT NULL
) ;

ALTER TABLE teachersPhones
ADD CONSTRAINT FK_teachersPhones_teachers FOREIGN KEY (teachers_id) REFERENCES teachers(id),
ADD CONSTRAINT FK_teachersPhones_priority FOREIGN KEY (priority_id) REFERENCES priority(id);


 /* table teachersEmails */
CREATE TABLE IF NOT EXISTS `teachersEmails` (
  `teachers_id` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `priority_id` INT NOT NULL
) ;

ALTER TABLE teachersEmails
ADD CONSTRAINT FK_teachersEmails_teachers FOREIGN KEY (teachers_id) REFERENCES teachers(id),
ADD CONSTRAINT FK_teachersEmails_priority FOREIGN KEY (priority_id) REFERENCES priority(id);

/* table students */
CREATE TABLE IF NOT EXISTS `students` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NOT NULL
);

ALTER TABLE students
ADD CONSTRAINT PK_students PRIMARY KEY (id);

/* table studentsPhones */
CREATE TABLE IF NOT EXISTS `studentsPhones` (
  `phone` VARCHAR(45) NOT NULL,
  `student_id` INT NOT NULL,
  `priority_id` INT NOT NULL
) ;

ALTER TABLE studentsPhones
ADD CONSTRAINT FK_studentsPhones_student FOREIGN KEY (student_id) REFERENCES students(id),
ADD CONSTRAINT FK_studentsPhones_priority FOREIGN KEY (priority_id) REFERENCES priority(id);


/* table studentsEmails */
CREATE TABLE IF NOT EXISTS `studentsEmails` (
  `email` VARCHAR(45) NOT NULL,
  `student_id` INT NOT NULL,
  `priority_id` INT NOT NULL
) ;

ALTER TABLE studentsEmails
ADD CONSTRAINT FK_studentsEmails_student FOREIGN KEY (student_id) REFERENCES students(id),
ADD CONSTRAINT FK_studentsEmails_priority FOREIGN KEY (priority_id) REFERENCES priority(id);


/* table course */
CREATE TABLE IF NOT EXISTS `course` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `code` VARCHAR(25) NOT NULL,
  `description` TEXT NULL,
  `duration` VARCHAR(45) NULL,
  `department_id` INT NOT NULL,
  `teachers_id` INT NOT NULL,
  `stateCourse_id` INT NOT NULL
) ;

ALTER TABLE course
ADD CONSTRAINT PK_course PRIMARY KEY (id),
ADD CONSTRAINT FK_course_department FOREIGN KEY (department_id) REFERENCES department(id),
ADD CONSTRAINT FK_course_teachers FOREIGN KEY (teachers_id) REFERENCES teachers(id),
ADD CONSTRAINT FK_course_stateCourse FOREIGN KEY (stateCourse_id) REFERENCES stateCourse(id);


/* table academicSessions_has_courses */
CREATE TABLE IF NOT EXISTS `academicSessions_has_courses` (
  `academicSession_id` INT NOT NULL,
  `course_id` INT NOT NULL
) ;

ALTER TABLE academicSessions_has_courses
ADD CONSTRAINT FK_academicSessions_has_courses_academicSessions FOREIGN KEY (academicSession_id) REFERENCES academicSessions(id),
ADD CONSTRAINT FK_academicSessions_has_courses_course FOREIGN KEY (course_id) REFERENCES course(id);


/* table exam */
CREATE TABLE IF NOT EXISTS `exam` (
  `student_id` INT NOT NULL,
  `id` INT NOT NULL,
  `grade` FLOAT NULL,
  `course_id` INT NOT NULL
) ;

ALTER TABLE exam
ADD CONSTRAINT PK_exam PRIMARY KEY (id),
ADD CONSTRAINT FK_exam_student FOREIGN KEY (student_id) REFERENCES students(id),
ADD CONSTRAINT FK_exam_course FOREIGN KEY (course_id) REFERENCES course(id);


/* table inscription */
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` INT NOT NULL,
  `student_id` INT NOT NULL,
  `course_id` INT NOT NULL,
  `state_id` INT NOT NULL
) ;

ALTER TABLE inscription
ADD CONSTRAINT PK_inscription PRIMARY KEY (id),
ADD CONSTRAINT FK_inscription_student FOREIGN KEY (student_id) REFERENCES students(id),
ADD CONSTRAINT FK_inscription_course FOREIGN KEY (course_id) REFERENCES course(id),
ADD CONSTRAINT FK_inscription_state FOREIGN KEY (state_id) REFERENCES stateInscription(id);

CREATE TABLE IF NOT EXISTS `assistance` (
  `id` INT NOT NULL,
  `date` DATE NOT NULL,
  `student_id` INT NOT NULL,
  `course_id` INT NOT NULL
) ;

ALTER TABLE assistance
ADD CONSTRAINT PK_assistance PRIMARY KEY (id),
ADD CONSTRAINT FK_assistance_student FOREIGN KEY (student_id) REFERENCES students(id),
ADD CONSTRAINT FK_assistance_course FOREIGN KEY (course_id) REFERENCES course(id);