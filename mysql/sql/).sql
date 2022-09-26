SELECT * FROM per_project.share;

select count(* from (
	SELECT
			c.*
	FROM share c
		WHERE 1=1
        ORDER BY c.seq ASC
        limit 99999999999
	) aa
		;

