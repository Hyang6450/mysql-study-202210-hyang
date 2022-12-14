/*
	DML 
    insert C 데이터 추가
    select R 데이터 조회
    update U 데이터 수정
    delete D 데이터 삭제
*/
set sql_safe_updates = 0;
select * from student_study_mst;

/*===========<insert>===========*/
insert into student_study_mst
	(id, name, age) 
values 
	(1, '김지향', 23);
insert into student_study_mst
	(name, id, age) 
values 
	('김지현', 2, 23);
insert into student_study_mst(name, id) values ('김지희', 3);
insert into student_study_mst values (4, '김혜진', 26);

insert into student_study_mst
values
	(5, '박지희', 25),
	(6, '박지현', 25),
	(7, '박지향', 28),
	(8, '김지혜', 30);
    
/*===========<update>===========*/
select * from student_study_mst;

update student_study_mst 
set 
	name = '정순동',
    age = 22
where
	id = 6;

update student_study_mst
set 	
	age = age + 1
where
	id = 6;
    
/*===========<delete>===========*/
delete
from 
	student_study_mst
where
	id = 1;
    
/*===========<select>===========*/