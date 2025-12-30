create database HN_KS24_CNTT3_HoangNguyenDuc;
use HN_KS24_CNTT3_HoangNguyenDuc;

-- sinh vieen
create table students(
students_id int auto_increment primary key,
full_name varchar(50) not null,
email varchar(255) not null unique,
phone_number varchar(10) not null
);
-- khoa hoc
create table Course(
Course_id int auto_increment primary key,
 Course_name varchar(50) not null,
 credit int not null check(credit>0) /* so tin chi*/
); 
-- dang ky
create table Enrollment (
students_id int ,
 Course_id int ,
 primary key(students_id,Course_id),
 foreign key(students_id) references students(students_id),
 foreign key(Course_id) references Course(Course_id),
 Gradle float default 0
); 

/* phaanf 2*/
insert into students(full_name,email,phone_number)
value ('hoang nguyen duc','duc@gmail.com','0123456789'),
		('hoang nguyen a','a@gmail.com','0123456788'),
        ('hoang nguyen b','b@gmail.com','0123456799'),
        ('hoang nguyen c','c@gmail.com','0123456710'),
        ('hoang nguyen d','d@gmail.com','0123456711');

insert into Course(Course_name,credit)
value ('hoc lap trinh',5),
		('hoc toan',8),
        ('hoc van',9),
        ('hoc sinh hoc',10),
        ('hoc anh',1);
        
insert into Enrollment(students_id,Course_id,Gradle)
value (1,1,9),
		(2,2,8),
        (3,3,7),
        (4,4,6),
        (5,5,5);        
update Enrollment
set Gradle=9.0
where students_id=2 and Course_id=3;

select full_name,email,phone_number from students;

delete from Course where Course_id=101
/* do khi khỏi tạo bảng nó lưu course_id vào bảng tạm nên vẫn hiện thông báo xóa thành công*/