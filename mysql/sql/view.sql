use per_project;

-- view
create view share_memberV  -- 가상테이블(자주 조인하는 테이블 가상테이블에 만들어서 필요할 때 사용)
as
select a.* from ( SELECT c.seq ,c.food_div ,c.title ,c.people_num ,c.info ,c.place ,c.time 
,c.price ,c.DelNy ,c.createDate FROM share c WHERE 1=1 ORDER BY c.seq DESC limit 99999999999 
) a limit 5 offset 0 
;


-- function
DELIMITER $$
CREATE FUNCTION getShare_memberName (
seq bigint
) 
RETURNS varchar(100)
BEGIN
	
    declare rtName varchar(100);

	select
		name into rtName
	from
		share_member
	where 1=1
		and seq = seq
	;

	RETURN rtName;
END$$
DELIMITER ;

select getShare_memberName(1)
;

SET GLOBAL log_bin_trust_function_creators = 1
;