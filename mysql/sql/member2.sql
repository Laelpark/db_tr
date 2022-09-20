SELECT * FROM per_project.member;
select * from member;

ALTER TABLE member ADD COLUMN gender varchar(45);
ALTER TABLE member ADD COLUMN gender tinyint;
ALTER TABLE member drop COLUMN count;

ALTER TABLE member CHANGE COLUMN gender memGender int;
ALTER TABLE member MODIFY COLUMN memGender tinyint;