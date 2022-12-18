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
	school_mst sm
	left outer join student_mst stm on (stm.school_id = sm.school_id)
where
	sm.school_name like '서울대%';