SELECT * FROM per_project.member;
select * from member;

ALTER TABLE member ADD COLUMN memDelNy tinyint;
ALTER TABLE member ADD COLUMN gender tinyint;
ALTER TABLE member drop COLUMN count;

ALTER TABLE member CHANGE COLUMN memfield memField varchar(45);
ALTER TABLE member MODIFY COLUMN memGender tinyint;