/*
	서브쿼리(하위쿼리)
    select 안에서 select 하는 방법
*/

/*문제: 서울대를 다니는 학생을 찾으세요*/

select
	*
from 
	student_mst;
    
select
	*
from 
	school_mst;
    
    
select
	*
from 
	student_mst stm 
	left outer join school_mst sm on (sm.school_id = stm.school_id)
where
	sm.school_name like '서울대%';

select
	*
from 
	school_mst 
where
	school_id in (select 
					school_id
				  from
					school_mst
				  where
                    school_name like '서울대%'
			     or school_name like '부산대%');
	
    
select 
	*
from 	
	student_mst
where
	school_id in (1, 2); /*in (1,2)안에 값이 하나라도 포함되어 있으면 True*/
    
select
	*,
    (select school_name from school_mst scm where scm.school_id = stm.school_id) as 번호
from
	student_mst stm;

set profiling = 1;
show profiles;

select 
	count(*) as 총인원
from
	student_mst;
    
select 
	*,
    (select 
		count(*) 
	from 
		student_mst) as 총인원
from 
	student_mst;
    
select 
	*
from 
	student_mst sm
	left outer join	(select count(*) as 총인원 from student_mst) sc on (1 = 1);