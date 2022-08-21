CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;
CREATE TABLE Class
(
	ClassID 	int 		NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClassName varchar(60) NOT NULL,
    StarDate datetime NOT NULL,
    Status BIT
    );

CREATE TABLE Student
(
StudentId 		int 		NOT NULL auto_increment primary KEY,
StudentName 	varchar(30) NOT NULL,
Address			varchar(50),
Phone			varchar(20),
Status 			BIT,
ClassId			int 		NOT NULL,
FOREIGN KEY 	(ClassId) references Class(ClassID)
);

CREATE TABLE Subject
(
	SubId	int 		Not null auto_increment primary key,
    SubName varchar(30)	not null,
    Credit	tinyInt		not null default 1 check ( Credit >= 1 ),
    Status	BIT					 default 1
);

CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);

