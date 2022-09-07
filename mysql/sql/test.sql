// 칼럼 추가
alter table  테이블이름 add column 칼럼이름 데이터 타입;
// 칼럼 데이터 타입 변경
alter table 테이블이름 modify column 칼럼이름 변경데이터타입;
//칼럼 이름 변경
alter table 테이블이름 change column 기존이름 변경이름 데이터타입;
//칼럼 삭제
alter table 테이블이름 drop column 칼럼이름 데이터타입;  // 데이터 타입 빼기
// row 삭제
delete from 테이블 이름 where 삭제할 로우 값(seq = 28); // delete from where 값
// 테이블값 불러오기 commit/ rollback
select * from 테이블이름
// 데이터 수정
update 테이블이름 set
	변경할 값 (name = "유재석" / ,pw = 1234)
where 변경값 위치(seq = 13);  // update set where 값

select * from 테이블이름 
where 1=1
and 값 = ""(gender = 1)
;

insert into 테이블이름(
	칼럼값
    ,칼럼값
)

values(
	데이터값
    ,데이터값
)
;

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
	b.*
	,a.ccgSeq
	,a.name
FROM 
	code b
JOIN codeGroup a on a.ccgSeq = b.codeGroup_ccgSeq
WHERE 1=1
AND  b.example  = 0
;

