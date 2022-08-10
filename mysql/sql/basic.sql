-- per_project database를 사용하겠다.
use per_project;

-- 전체 컬럼 조회  
SELECT * from share;  

-- 컬럼 추가
ALTER TABLE member2 ADD COLUMN nickname varchar(45);
ALTER TABLE member2 ADD COLUMN nameEng varchar(45) AFTER nickname;
ALTER TABLE member2 ADD COLUMN nameCh varchar(45) AFTER nameEng; 
ALTER TABLE member2 ADD COLUMN name varchar(45) AFTER member2;
ALTER TABLE member2 ADD COLUMN id varchar(45) AFTER name;
ALTER TABLE member2 ADD COLUMN pw varchar(45) AFTER id;

-- 컬럼 변경
ALTER TABLE member2 MODIFY COLUMN nameEng varchar(100);
ALTER TABLE member2 MODIFY COLUMN pw INT;

-- 칼럼 이름 변경
ALTER TABLE member2 CHANGE COLUMN nickname nick varchar(45); 
ALTER TABLE member2 CHANGE COLUMN nameEng nameEn varchar(45);

-- 칼럼 삭제
ALTER TABLE member2 drop COLUMN nick;

-- row 삭제
DELETE FROM share_member WHERE seq = 14;
-- delete from 값 뒤에 바로 테이블 이름쓰지 말고 무의식적으로 where 먼저 치기, 안그럼 테이블 전체가 날아감

-- commit / rollback
select * from member2;

-- 데이터 수정
UPDATE share_member SET
	name = "유재석"
	,pw="123456"
where seq = 13;

-- WHERE
SELECT * FROM share_member
WHERE 1=1
-- AND id like 'sbh%'
-- AND name like '%서함'
-- AND dob like '1996%'
AND phone like '%%1253'
-- AND email like 'seman%'
;

SELECT * FROM share_member
WHERE 1=1
-- AND gender = 1
-- AND pw > 123456
-- AND delNy >= 1
 AND gender between 0 and 1
;

SELECT * FROM share_member
WHERE 1=1
-- AND email_div is null
AND gender = ""
-- AND email_div = null 기존에 치던 이런식의 데이터는 검색을 못함
;






