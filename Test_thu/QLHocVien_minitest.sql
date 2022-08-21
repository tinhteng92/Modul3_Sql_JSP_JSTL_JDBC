CREATE DATABASE `QLHOCVIEN`;
USE QLHOCVIEN;

CREATE TABLE Classroom (
roomName varchar(15) primary key);

CREATE TABLE Students (
Id int primary key auto_increment,
Name varchar(50) not null,
DateOfBirth Date not null,
Address varchar(100) not null,
PhoneNumber varchar(10) not null,
Email varchar(50) not null,
roomName varchar(15),
foreign key(roomName) references Classroom(roomName) );

INSERT INTO Classroom values
("A1"), ("A2"),  ("A3");


INSERT INTO Students values 
(1,"Trần Minh Trang", "2000-04-13", "Hà Nội", "0912113113", "trang@gmail,com", "A1"),
(2, "Trần Thu Hà", "2000-03-11", "Hà Nội", "0912112112", "ha@gmail,com", "A2"),
(3, "Nguyễn Minh Châu", "2000-09-11", "Hà Nội", "0968132112", "chau@gmail,com", "A2"),
(4, "Nguyễn Lê Minh", "2000-08-01", "Hà Nội", "0968132342", "minh@gmail,com", "A2"),
(5, "Nguyễn Hải Dương", "2000-08-01", "Hà Nội", "0911132345", "duong@gmail,com", "A3"),
(6, "Nguyễn Lan Phương", "2000-06-05", "Hà Nội", "0971112345", "phuong@gmail,com", "A3");


Select * from students;
select * from students where name like '%t%';

