use quanlysinhvien;
select * from student
where StudentName like 'H%';

select * from class
where month(StarDate) = 12;

select * from subject
where Credit between 3 and 5;

update student
set classID = 2
where studentID = 1;

select s.StudentName, sb.SubName, m.Mark from student s
join (subject sb join mark m on sb.SubId = m.subId) on s.StudentID = m.studentId
order by m.Mark desc;