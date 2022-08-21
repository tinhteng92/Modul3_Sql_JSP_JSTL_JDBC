use quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject
group by SubID, SubName
having Credit >= all (select Credit from subject);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select s.SubID, s.SubName,s.Credit,s.Status,m.Mark from subject s 
left join mark m on s.SubID = m.SubID
group by s.SubID, s.SubName
having m.Mark >= all (select Mark from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select s.StudentID,s.StudentName,avg(m.Mark) as AverageMark from student s 
join mark m on s.StudentID = m.StudentID
group by s.StudentID,s.StudentName
order by avg(m.Mark) desc;