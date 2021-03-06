USE university;

INSERT INTO university.major (major_id,major_desc) VALUES
	(100,'AAS-Accounting'),
    (200,'AAS-Computer Science'),
    (300,'AAS-Telecommunications'),
    (400,'BS-Accounting'),
    (500,'BS-Computer Science'),
    (600,'BS-Telecommunications');
    
INSERT INTO university.term (term_id,term_name,start_date,end_date) VALUES
	('FL12','Fall 2012','2012-09-08','2012-12-20'),
    ('FL13','Fall 2013','2013-09-07','2013-12-19'),
    ('SP12','Spring 2012','2012-04-28','2012-07-16'),
    ('SP13','Spring 2013','2013-03-27','2013-07-15'),
    ('WN13','Winter 2013','2013-01-05','2013-04-18');

INSERT INTO university.student(student_id,last_name,first_name,street,city,state,zip,start_term,birth_date,major_id,Phone,student_type) VALUES
	(00100,'Diaz','Jose','1 Ford Avenue #7','Hill','NJ','08863','WN13','1993-02-12',100,'9735551111','ugrad'),
	(00101,'Tyler','Mickey','12 Morris Avenue','Bronx','NY','10468','SP13','1994-03-18',500,'7185552222','grad'),
	(00102,'Patel','Rajesh','25 River Road #3','Edison','NJ','08837','WN13','1995-12-12',400,'7325553333','ugrad'),
	(00103,'Rickles','Alex','100 Main Street','Iselin','NJ','08838','FL12','1990-10-20',500,'7325554444','grad'),
	(00104,'Lee','Brian','2845 First Lane','Hope','NY','11373','WN13','1995-10-28',600,'2125555555','grad'),
	(00105,'Khan','Amir','213 Broadway','Clifton','NJ','07222','WN13','1994-07-07',200,'2015556666','ugrad');
    
INSERT INTO university.department(dept_id,dept_name) VALUES
	(1,'Computer Science'),
	(2,'Telecommunications'),
	(3,'Accounting'),
	(4,'Math and Science'),
	(5,'Liberal Arts');
    
INSERT INTO university.course(course_id,title,credits,dept_id) VALUES
	('AC101', 'Accounting',3,3),
	('CIS253','Database Systems',3,1),
	('CIS265','Systems Analysis',3,3),
	('EN100','Basic English', 0,5),
	('LA123','English Literature',3,5),
	('MA150','College Algebra',3,4);
    
INSERT INTO university.location(room_id,building,room_no,capacity,room_type,description) VALUES
	(11,'Gandhi',101,2,'O','Office'),
	(12,'Gandhi',103,2,'O','Office'),
	(13,'Kennedy',202,35,'L','Lab'),
	(14,'Kennedy',204,50,'L','Lab'),
	(15,'Nehru',301,50,'C','Classroom'),
	(16,'Nehru',309,45,'C','Classroom'),
	(17,'Gandhi',105,2,'O','Office'),
	(18,'Kennedy',206,40,'L','Lab'),
	(19,'Kennedy',210,30,'C','Classroom'),
	(20,'Gandhi',107,2,'O','Office'),
	(21,'Gandhi',109,2,'O','Office');

INSERT INTO university.faculty(faculty_id,name,room_id,Phone,dept_id) VALUES
	(111,'Jones',11,525,1),
	(123,'Mobley',11,529,1),
	(222,'Williams',20,533,2),
	(235,'Vajpayee',12,577,2),
	(333,'Collins',17,599,3),
	(345,'Sen',12,579,3),
	(444, 'Rivera',21,544,4),
	(555,'Chang',17,587,5);
    
INSERT INTO university.section (section_id,course_id,section,term_id,faculty_id,`day`,max_count,start_time,end_time,room_id) VALUES
	
	(1101,'CIS265','01','WN13',111,'MW',30,'09:00','10:30',13),	
	(1102,'CIS253','01','WN13',123,'TR',40,'09:00','10:30',18),
	(1103,'MA150','02','WN13',444,'F',25,'09:00','12:00',15),
	(1104,'AC101','10','WN13',345,'MW',35,'10:30','12:00',16),
	(1205,'CIS265','01','SP13',NULL,'MW',35,'09:00','10:30',14),
	(1206,'CIS265','02','SP13',111,'TR',30,'09:00','10:30',18),	
	(1207,'LA123','05','SP13',NULL,'MW',30,'09:00','10:30',15),
	(1208,'CIS253','21','SP13',123,'TR',40,'09:00','12:00',14),
	(1209,'CIS253','11','SP13',111,'MW',40,'09:00','10:30',18),
	(1210,'CIS253','31','SP13',123,'F',45,'TBA','TBA',19);
    
INSERT INTO university.registration (student_id,section_id,midterm_grade,final_grade) VALUES
	(00100,1102,'B','B'),
	(00100,1103,'C','F'),
	(00100,1104,'B','A'),
	(00100,1207, NULL,NULL),
	(00101,1205, NULL,NULL),
	(00102,1102,'F','D'),
	(00102,1103,'A','A'),
	(00102,1206,'B','C'),
	(00102,1207,NULL,NULL),
	(00102,1210,NULL,NULL),
	(00103,1101,'F','W'),
	(00103,1104,'D','D'),
	(00103,1206,'A','B'),
	(00104,1206, NULL,NULL),
	(00104,1207,NULL,NULL),
	(00104,1210,NULL,NULL),	
	(00105,1208,NULL,NULL),
	(00105,1209,NULL,NULL);

