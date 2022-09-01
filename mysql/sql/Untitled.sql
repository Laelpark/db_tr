use per_project;


-- 공통코드
-- 1. 공통코드데이터 넣기
-- 2. 공통코드 쿼리 작성
SELECT
	a.ccgSeq
    , a.name
    ,a.name_eng
    , b.cdSeq
    , b.name
FROM
	codeGroup a
	LEFT JOIN code b on a.codeGroup_ccgSeq = a.ccgSeq
;
select * from codeGroup;
select * from code;

SELECT
	b.*
	,a.ccgSeq
	,a.name
FROM 
	code b
JOIN codeGroup a on a.ccgSeq = b.codeGroup_ccgSeq
;

-- 로그인
-- 아이디, 패스워드 

select 
	name
    , id
from share_member
where 1=1 
	and id = "gottkfkd" 
	and pw = "98765"
;


-- share hot list 
select
	food_div
    ,title
    ,people_num
    ,info
    ,place
    ,time
    ,price
    ,share_member_seq
    ,share_sharing_member_seq
from 
	share
where 1=1
	-- and people_num = "2인"
	-- and title like '%떡%'
	-- and food_div = 1
	and place like 'ㅇㅇ%%' 
;

-- share_review
select
	title
    ,people_num
    ,place
    ,time
    ,price
    ,content
    ,share_member_seq
from 
	share_review
where 1=1
	and people_num
	and place like 'ㅇㅇ%%'
;

INSERT INTO share_review(
    title
    ,people_num
    ,place
    ,time
    ,price
    ,content
    ,share_member_seq
)
VALUES(
    "피자나라 콤비네이션 2인 구함"
    ,"2인"
    ,"oo은행 앞"
    ,"17:40"
    ,"8,000원"
    ,"5:40 oo은행 앞에서 피자나라 콤비네이션 거래하실 2인 구해요!"
    ,2
)
;
SELECT
   seq
    ,title
    ,people_num
    ,place
    ,time
    ,price
    ,content
    ,share_member_seq
FROM share_review
 WHERE 1=1
    AND   seq = "1"
--   AND title = "피자나라 콤비네이션 2인 구함"
    -- AND people_num
--     AND place
--     AND time
--     AND price
--     AND content
--     AND share_member_seq
    -- AND / OR 둘이 같이 사용할 경우 ()
;