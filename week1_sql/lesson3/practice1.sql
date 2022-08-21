use quanlysinhvien;
INSERT INTO Class
VALUES (1, 'A1', '2008-12-20', 1);
insert into Class
Values (2, 'A2', '2008-12-22', 1);
insert into Class
value (3, 'B3', current_date(), 0);

INSERT INTO Mark
VALUES (1, 1, 1, 8, 1);
INSERT INTO Mark
VALUES (2, 1, 2, 10, 2);
INSERT INTO Mark
VALUES (3, 2, 1, 12, 1);

INSERT INTO Student
VALUES (1, 'Hung', 'Ha noi', 0912113113, 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO Subject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
INSERT INTO Mark (SubId, StudentId, Mark, ExamTimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);