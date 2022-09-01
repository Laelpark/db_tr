use per_project;
SELECT * FROM code;
ALTER TABLE code CHANGE COLUMN codeGroupName_kr codeName varchar(45);

SELECT
	b.*
	,a.ccgSeq
	,a.name
FROM 
	code b
JOIN codeGroup a on a.ccgSeq = b.codeGroup_ccgSeq
;