// 칼럼 추가
alter table  테이블이름 add column 칼럼이름 데이터 타입;
// 칼럼 데이터 타입 변경
alter table 테이블이름 modify column 칼럼이름 변경데이터타입;
//칼럼 이름 변경
alter table 테이블이름 change column 기존이름 변경이름 데이터타입;
//칼럼 삭제
alter table 테이블이름 drop column 칼럼이름 데이터타입;  // 데이터 타입 빼기
// row 삭제
delete from 테이블 이름 where 삭제할 로우 값(seq = 28); // delete from where
// 테이블값 불러오기 commit/ rollback
select * from 테이블이름
// 데이터 수정
update 테이블이름 set
	변경할 값 (name = "유재석" / ,pw = 1234)
where 변경값 위치(seq = 13); 

select * from 테이블이름 
where 1=1
and 값 = ""(gender = 1)
;