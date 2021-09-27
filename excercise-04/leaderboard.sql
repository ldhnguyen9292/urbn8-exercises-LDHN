drop database if exists class_db;
create database class_db;
use class_db;

create table Department(
	Dept_id int primary key,
    Dept_name varchar(255),
    Dept_location varchar(255)
);

create table Student(
	St_id int primary key,
    st_name varchar(255),
    st_address varchar(255),
	st_email varchar(255),
    st_cellNo varchar(12),
    Dept_id int,
    foreign key (Dept_id) references Department(Dept_id)
);

create table Subject(
	Sub_code int primary key,
    Sub_name varchar(255),
    crd_hrs int
);

create table Grade (
	St_id int,
    foreign key (St_id) references Student(St_id),
    Sub_code int, 
    foreign key (Sub_code) references Subject(Sub_code),
    Exam_name varchar(255),
    Marks int,
    Gpa float
);

insert into Department(Dept_id , Dept_name , Dept_location )
values (1,"A","số 1"),
	(2,"B","số 2"),
	(3,"C","số 3"),
	(4,"D","số 4"),
	(5,"E","số 5");

insert into Student(St_id , st_name , st_address , st_email, st_cellNo , Dept_id)
values (1,"Nguyễn Văn A", "Số 1 đường 10","a@gmail.com","000011111",1),
	(2,"Nguyễn Văn B", "Số 2 đường 10","b@gmail.com","000011111",2),
    (3,"Nguyễn Văn C", "Số 3 đường 10","c@gmail.com","000011111",3),
    (4,"Nguyễn Văn D", "Số 4 đường 10","d@gmail.com","000011111",4),
    (5,"Nguyễn Văn E", "Số 5 đường 10","e@gmail.com","000011111",5),
    (6,"Nguyễn Văn F", "Số 6 đường 10","f@gmail.com","000011111",1),
    (7,"Nguyễn Văn G", "Số 7 đường 10","g@gmail.com","000011111",2),
    (8,"Nguyễn Văn H", "Số 8 đường 10","h@gmail.com","000011111",3),
    (9,"Nguyễn Văn J", "Số 9 đường 10","j@gmail.com","000011111",4),
    (10,"Lê Thị Nho", "Số 10 đường 10","nho@gmail.com","000011111",5),
    (11,"Lê Thị Táo", "Số 1 đường 10","tao@gmail.com","000011111",1),
	(12,"Lê Thị Bưởi", "Số 2 đường 10","buoi@gmail.com","000011111",2),
    (13,"Lê Thị Đào", "Số 3 đường 10","dao@gmail.com","000011111",3),
    (14,"Lê Thị Mai", "Số 4 đường 10","mai@gmail.com","000011111",4),
    (15,"Lê Thị Tuyết", "Số 5 đường 10","tuyet@gmail.com","000011111",5),
    (16,"Lê Thị Vân", "Số 6 đường 10","van@gmail.com","000011111",1),
    (17,"Lê Thị Mây", "Số 7 đường 10","may@gmail.com","000011111",2),
    (18,"Lê Thị Phong", "Số 8 đường 10","phong@gmail.com","000011111",3),
    (19,"Lê Thị Gió", "Số 9 đường 10","gio@gmail.com","000011111",4),
    (20,"Lê Thị Dậu", "Số 10 đường 10","dau@gmail.com","000011111",5);

insert into Subject(Sub_code, Sub_name , crd_hrs )
values (1, "Toán", 3),
	(2,"Hóa", 3),
    (3,"Lý", 3),
    (4,"Anh", 2),
    (5, "Văn", 2),
	(6,"Sinh", 2),
    (7,"Sử", 2),
    (8,"Địa", 2);

insert into Grade(St_id , Sub_code ,  Exam_name ,  Marks)
values (1, 1,"Giữa học kỳ 1", 10),
	(1, 2,"Giữa học kỳ 1", 9),
    (1, 3,"Giữa học kỳ 1", 9),
	(1, 4,"Giữa học kỳ 1", 9),
    (1, 5,"Giữa học kỳ 1", 5),
	(1, 6,"Giữa học kỳ 1", 5),
    (1, 7,"Giữa học kỳ 1", 8),
	(1, 8,"Giữa học kỳ 1", 9),
    (2, 1,"Giữa học kỳ 1", 8),
	(2, 2,"Giữa học kỳ 1", 10),
    (2, 3,"Giữa học kỳ 1", 9),
	(2, 4,"Giữa học kỳ 1", 9),
    (2, 5,"Giữa học kỳ 1", 5),
	(2, 6,"Giữa học kỳ 1", 5),
    (2, 7,"Giữa học kỳ 1", 8),
	(2, 8,"Giữa học kỳ 1", 9),
    (3, 1,"Giữa học kỳ 1", 8),
	(3, 2,"Giữa học kỳ 1", 9),
    (3, 3,"Giữa học kỳ 1", 9),
	(3, 4,"Giữa học kỳ 1", 9),
    (3, 5,"Giữa học kỳ 1", 5),
	(3, 6,"Giữa học kỳ 1", 5),
    (3, 7,"Giữa học kỳ 1", 8),
	(3, 8,"Giữa học kỳ 1", 9),
    (4, 1,"Giữa học kỳ 1", 8),
	(4, 2,"Giữa học kỳ 1", 8),
    (4, 3,"Giữa học kỳ 1", 7),
	(4, 4,"Giữa học kỳ 1", 3),
    (4, 5,"Giữa học kỳ 1", 10),
	(4, 6,"Giữa học kỳ 1", 5),
    (4, 7,"Giữa học kỳ 1", 8),
	(4, 8,"Giữa học kỳ 1", 9),
    (5, 1,"Giữa học kỳ 1", 10),
	(5, 2,"Giữa học kỳ 1", 9),
    (5, 3,"Giữa học kỳ 1", 9),
	(5, 4,"Giữa học kỳ 1", 9),
    (5, 5,"Giữa học kỳ 1", 5),
	(5, 6,"Giữa học kỳ 1", 5),
    (5, 7,"Giữa học kỳ 1", 8),
	(5, 8,"Giữa học kỳ 1", 9),
    (6, 1,"Giữa học kỳ 1", 8),
	(6, 2,"Giữa học kỳ 1", 2),
    (6, 3,"Giữa học kỳ 1", 9),
	(6, 4,"Giữa học kỳ 1", 9),
    (6, 5,"Giữa học kỳ 1", 5),
	(6, 6,"Giữa học kỳ 1", 5),
    (6, 7,"Giữa học kỳ 1", 8),
	(6, 8,"Giữa học kỳ 1", 9),
    (7, 1,"Giữa học kỳ 1", 8),
	(7, 2,"Giữa học kỳ 1", 9),
    (7, 3,"Giữa học kỳ 1", 9),
	(7, 4,"Giữa học kỳ 1", 9),
    (7, 5,"Giữa học kỳ 1", 5),
	(7, 6,"Giữa học kỳ 1", 5),
    (7, 7,"Giữa học kỳ 1", 8),
	(7, 8,"Giữa học kỳ 1", 9),
    (8, 1,"Giữa học kỳ 1", 8),
	(8, 2,"Giữa học kỳ 1", 8),
    (8, 3,"Giữa học kỳ 1", 7),
	(8, 4,"Giữa học kỳ 1", 3),
    (8, 5,"Giữa học kỳ 1", 5),
	(8, 6,"Giữa học kỳ 1", 5),
    (8, 7,"Giữa học kỳ 1", 8),
	(8, 8,"Giữa học kỳ 1", 9),
    (9, 1,"Giữa học kỳ 1", 10),
	(9, 2,"Giữa học kỳ 1", 9),
    (9, 3,"Giữa học kỳ 1", 9),
	(9, 4,"Giữa học kỳ 1", 9),
    (9, 5,"Giữa học kỳ 1", 5),
	(9, 6,"Giữa học kỳ 1", 5),
    (9, 7,"Giữa học kỳ 1", 8),
	(9, 8,"Giữa học kỳ 1", 9),
    (10, 1,"Giữa học kỳ 1", 8),
	(10, 2,"Giữa học kỳ 1", 10),
    (10, 3,"Giữa học kỳ 1", 9),
	(10, 4,"Giữa học kỳ 1", 9),
    (10, 5,"Giữa học kỳ 1", 5),
	(10, 6,"Giữa học kỳ 1", 5),
    (10, 7,"Giữa học kỳ 1", 8),
	(10, 8,"Giữa học kỳ 1", 9),
    (11, 1,"Giữa học kỳ 1", 8),
	(11, 2,"Giữa học kỳ 1", 9),
    (11, 3,"Giữa học kỳ 1", 9),
	(11, 4,"Giữa học kỳ 1", 9),
    (11, 5,"Giữa học kỳ 1", 5),
	(11, 6,"Giữa học kỳ 1", 5),
    (11, 7,"Giữa học kỳ 1", 8),
	(11, 8,"Giữa học kỳ 1", 9),
    (12, 1,"Giữa học kỳ 1", 8),
	(12, 2,"Giữa học kỳ 1", 8),
    (12, 3,"Giữa học kỳ 1", 7),
	(12, 4,"Giữa học kỳ 1", 3),
    (12, 5,"Giữa học kỳ 1", 10),
	(12, 6,"Giữa học kỳ 1", 5),
    (12, 7,"Giữa học kỳ 1", 8),
	(12, 8,"Giữa học kỳ 1", 9),
    (13, 1,"Giữa học kỳ 1", 10),
	(13, 2,"Giữa học kỳ 1", 9),
    (13, 3,"Giữa học kỳ 1", 9),
	(13, 4,"Giữa học kỳ 1", 9),
    (13, 5,"Giữa học kỳ 1", 5),
	(13, 6,"Giữa học kỳ 1", 5),
    (13, 7,"Giữa học kỳ 1", 8),
	(13, 8,"Giữa học kỳ 1", 9),
    (14, 1,"Giữa học kỳ 1", 8),
	(14, 2,"Giữa học kỳ 1", 2),
    (14, 3,"Giữa học kỳ 1", 8),
	(14, 4,"Giữa học kỳ 1", 9),
    (14, 5,"Giữa học kỳ 1", 5),
	(14, 6,"Giữa học kỳ 1", 5),
    (14, 7,"Giữa học kỳ 1", 8),
	(14, 8,"Giữa học kỳ 1", 9),
    (15, 1,"Giữa học kỳ 1", 8),
	(15, 2,"Giữa học kỳ 1", 9),
    (15, 3,"Giữa học kỳ 1", 9),
	(15, 4,"Giữa học kỳ 1", 9),
    (15, 5,"Giữa học kỳ 1", 5),
	(15, 6,"Giữa học kỳ 1", 5),
    (15, 7,"Giữa học kỳ 1", 8),
	(15, 8,"Giữa học kỳ 1", 9),
    (16, 1,"Giữa học kỳ 1", 8),
	(16, 2,"Giữa học kỳ 1", 8),
    (16, 3,"Giữa học kỳ 1", 7),
	(16, 4,"Giữa học kỳ 1", 3),
    (16, 5,"Giữa học kỳ 1", 5),
	(16, 6,"Giữa học kỳ 1", 5),
    (16, 7,"Giữa học kỳ 1", 8),
	(16, 8,"Giữa học kỳ 1", 9),
    (17, 1,"Giữa học kỳ 1", 10),
	(17, 2,"Giữa học kỳ 1", 9),
    (17, 3,"Giữa học kỳ 1", 9),
	(17, 4,"Giữa học kỳ 1", 9),
    (17, 5,"Giữa học kỳ 1", 5),
	(17, 6,"Giữa học kỳ 1", 5),
    (17, 7,"Giữa học kỳ 1", 8),
	(17, 8,"Giữa học kỳ 1", 9),
    (18, 1,"Giữa học kỳ 1", 8),
	(18, 2,"Giữa học kỳ 1", 2),
    (18, 3,"Giữa học kỳ 1", 8),
	(18, 4,"Giữa học kỳ 1", 9),
    (18, 5,"Giữa học kỳ 1", 5),
	(18, 6,"Giữa học kỳ 1", 5),
    (18, 7,"Giữa học kỳ 1", 8),
	(18, 8,"Giữa học kỳ 1", 9),
    (19, 1,"Giữa học kỳ 1", 8),
	(19, 2,"Giữa học kỳ 1", 8),
    (19, 3,"Giữa học kỳ 1", 7),
	(19, 4,"Giữa học kỳ 1", 3),
    (19, 5,"Giữa học kỳ 1", 5),
	(19, 6,"Giữa học kỳ 1", 5),
    (19, 7,"Giữa học kỳ 1", 9),
	(19, 8,"Giữa học kỳ 1", 9),
	(20, 1,"Giữa học kỳ 1", 8),
	(20, 2,"Giữa học kỳ 1", 8),
    (20, 3,"Giữa học kỳ 1", 7),
	(20, 4,"Giữa học kỳ 1", 3),
    (20, 5,"Giữa học kỳ 1", 5),
	(20, 6,"Giữa học kỳ 1", 5),
    (20, 7,"Giữa học kỳ 1", 10),
	(20, 8,"Giữa học kỳ 1", 10);
    
-- list first 10 students with highest marks of any subject with the following fields: student id, student name, marks, subject name
select Student.St_id, Student.st_name, Grade.marks, Subject.Sub_name from Student 
inner join Grade
on Grade.St_id = Student.St_id
inner join Subject
on Grade.Sub_code = Subject.Sub_code
order by marks desc
limit 10;

-- GPA
-- SET SQL_SAFE_UPDATES = 0;
-- update Grade,
-- (Select Student.St_id as id, Student.st_name, AVG(Grade.marks) as avgMarks from Student
-- inner join Grade
-- on Grade.St_id = Student.St_id
-- group by Student.St_id) as temp
-- set Grade.Gpa= temp.avgMarks where Grade.St_id=temp.id; -- Add more conditions