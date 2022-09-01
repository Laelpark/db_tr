SELECT * FROM per_project.codeGroup;

ALTER TABLE codeGroup
	ADD COLUMN name_eng varchar(45);
    
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
	,count(b.codeGroup_ccgSeq) AS 코드갯수;
FROM 
	codeGroup a