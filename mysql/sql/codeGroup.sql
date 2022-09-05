SELECT * FROM per_project;
SELECT * FROM codeGroup;

ALTER TABLE codeGroup
	ADD COLUMN DelNy Tinyint;
    
ALTER TABLE codeGroup drop COLUMN DelNy;
    
ALTER TABLE codeGroup MODIFY COLUMN codegroup_ex INT;
    
SELECT count(*)
FROM code;


SELECT
	a.*
	,count(b.codeGroup_ccgSeq)
FROM 
	codeGroup a
JOIN code b on b.codeGroup_ccgSeq = a.ccgSeq
group by
b.codeGroup_ccgSeq
;


SELECT
	 a.*
	,count(b.codeGroup_ccgSeq) AS 코드갯수
FROM 
	codeGroup;

SELECT
	a.*
FROM 
	codeGroup a
 WHERE 1=1
AND   codegroup_ex = 0
;
