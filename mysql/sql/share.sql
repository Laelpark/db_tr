USE per_project;

SELECT
	a.seq
	,a.id
    ,a.pw
    ,a.name
-- ,c.title
-- ,c.content
   -- ,b.report_price
   -- ,b.content
 --   ,(select content from share_report where 1=1) as report_share_reviewcontent
   --  ,(select info from share where 1=1) as content
FROM share_member a
	 left join share_review c on 1=1
		and c.seq = a.seq
-- order by
-- a.name desc
where 1=1
	and name like '%재석'
 
union all
-- union은 중복된 값은 알아서 제거 후  출력
-- union all은 중복된 값이 있어도 그대로 출력, union보다 속도가 빠름 (이걸 사용)

SELECT
	a.seq
	,a.id
    ,a.pw
    ,a.name
-- ,c.title
-- ,c.content
   -- ,b.report_price
   -- ,b.content
  --  ,(select content from share_report where 1=1) as report_share_reviewcontent
   --  ,(select info from share where 1=1) as content
FROM share_member a
	 left join share_review c on 1=1
		and c.seq = a.seq
where 1=1
    and name like '%%엘'
