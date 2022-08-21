CREATE DATABASE `MD3_Test1`;
USE MD3_Test1;

CREATE TABLE Classes (
IdClass int primary key auto_increment,
ClassName varchar(15) );

CREATE TABLE Students (
Id int primary key auto_increment,
Name varchar(50) not null,
DateOfBirth Date not null,
Address varchar(100) not null,
PhoneNumber varchar(10) not null,
Email varchar(50) not null,
IdClass int,
foreign key(IdClass) references Classes(IdClass) );

INSERT INTO Classes values
(1, "A1"), (2, "A2"),  (3, "A3");


INSERT INTO Students values 
(1,"Trần Minh Trang", "2000-04-13", "Hà Nội", "0912113113", "trang@gmail.com", 1),
(2, "Trần Thu Hà", "2000-03-11", "Hà Nội", "0912112112", "ha@gmail.com", 2),
(3, "Nguyễn Minh Châu", "2000-09-11", "Hà Nội", "0968132112", "chau@gmail.com", 2),
(4, "Nguyễn Lê Minh", "2000-08-01", "Hà Nội", "0968132342", "minh@gmail.com", 2),
(5, "Nguyễn Hải Dương", "2000-08-01", "Hà Nội", "0911132345", "duong@gmail.com", 3),
(6, "Nguyễn Lan Phương", "2000-06-05", "Hà Nội", "0971112345", "phuong@gmail.com", 3);




