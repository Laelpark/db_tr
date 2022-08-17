USE per_project;

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
"1"
,"znikuw123"
,"aklvuf"
,"20220802"
,"12,000원"
,"1"
,"같은 제품을 자주 쉐어하는 것으로 보아 전문 판매업자가 아닌지 의심됩니다."
,1
,25

)
;

SELECT
	seq
	,report_type
    ,suspector_idcdSeq
    ,reporter_id
    ,report_day
    ,report_price
    ,report_div
    ,content
    ,share_member_seq
    ,share_report_sus_seq
    
FROM share_report 

WHERE 1=1
--	 seq = "1"
-- AND food_div
--     title = "네네 치킨 스노우 치킨"
--    AND people_num
--    AND place
--   AND time
--    AND price
--    AND share_member_seq