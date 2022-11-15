select a.* 
from (      
SELECT    
	c.seq    ,c.food_div    ,c.title    ,c.people_num    ,c.info    ,c.place    ,c.time    ,c.price    ,c.DelNy    ,c.createDate      ,f.likeNy   
FROM share c 
	JOIN favorite f on f.shareSeq = c.seq     
    
    

WHERE 1=1    
ORDER BY c.seq DESC       
limit 99999999999           ) a   
limit ?
offset ?
;

use per_project;
alter table favorite add img varchar(500);

UPDATE favorite SET likeNy = 1 
,img = '/resources/images/share/star_y.png' 
where 1=1 
and memberSeq = 34
and shareSeq = '36'
;

SELECT * FROM per_project.favorite;

UPDATE favorite 
SET 
	likeNy = 1 
	,img = '/resources/images/share/star_y.png' 
where 1=1 
	and memberSeq = 34
	and shareSeq = 36
;

-- 아래와 같은 sql로 환경변수를 변경해준다. (일시적인 Safe모드 해제)
set sql_safe_updates=0;

use per_project;
SELECT
			f.img
			,f.likeNy
            ,f.shareSeq
		FROM favorite f
		WHERE 1=1
			and f.memberSeq = 34
		ORDER BY f.likeSeq DESC;