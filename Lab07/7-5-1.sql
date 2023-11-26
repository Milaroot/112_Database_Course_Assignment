USE SchoolDB;

CREATE TABLE Department (
    Dep_code CHAR(5),
    Dep_name NVARCHAR(10) NOT NULL,
    Dep_chair NVARCHAR(10),
    PRIMARY KEY(Dep_code)
);



CREATE TABLE Teacher (
    Teacher_id CHAR(5),
    Teacher_name NVARCHAR(10) NOT NULL,
    Dep_code CHAR(5),
    PRIMARY KEY(Teacher_id),
    FOREIGN KEY(Dep_code) REFERENCES Department ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Student (
    Stu_id CHAR(5),
    Stu_name NVARCHAR(10) NOT NULL,
    Gender NCHAR(1),
    Dep_code CHAR(5),
    PRIMARY KEY(Stu_id),
    FOREIGN KEY(Dep_code) REFERENCES Department ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE Course (
    Course_id CHAR(5),
    Course_name NVARCHAR(10) NOT NULL,
    Credits INT NOT NULL,
    Dep_code CHAR(5),
    Teacher_id CHAR(5),
    PRIMARY KEY(Course_id),
    FOREIGN KEY(Dep_code) REFERENCES Department ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(Teacher_id) REFERENCES Teacher ON UPDATE NO ACTION ON DELETE NO ACTION
);



CREATE TABLE Grades (
    Stu_id CHAR(5),
    Course_id CHAR(5),
    Grade INT NOT NULL,
    PRIMARY KEY(Stu_id, Course_id),
    FOREIGN KEY(Stu_id) REFERENCES Student ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY(Course_id) REFERENCES Course(Course_id) ON UPDATE NO ACTION ON DELETE NO ACTION
);