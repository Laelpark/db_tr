use per_project;
SELECT * FROM member code;
ALTER TABLE code CHANGE COLUMN codeGroupName_kr codeName varchar(45);

ALTER TABLE code
	ADD COLUMN gender tinyint;
    
ALTER TABLE code CHANGE COLUMN delNy cdDelNy tinyint; 

alter table code change  codeGroup_ccgSeq ccgSeq int;

SELECT
	b.*
	,a.ccgSeq
	,a.name
FROM 
	code b
JOIN codeGroup a on a.ccgSeq = b.codeGroup_ccgSeq
;

SELECT
	b.*
FROM 
	code b
 WHERE 1=1
AND  example > "1"
;

SELECT
	b.*
	,a.ccgSeq
	,a.name
FROM 
	code b
JOIN codeGroup a on a.ccgSeq = b.codeGroup_ccgSeq
WHERE 1=1
AND  b.example  = 0
;

ALTER TABLE code drop COLUMN gender;
select * from code where cdDelNy = 0;
