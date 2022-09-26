SELECT * FROM per_project.share_member;

ALTER TABLE share_member CHANGE COLUMN userId id varchar(45);
ALTER TABLE share_member CHANGE COLUMN memfield memField varchar(45);

ALTER TABLE share_member ADD COLUMN phone_div tinyint after phone;

ALTER TABLE share MODIFY COLUMN time varchar(45);

ALTER TABLE share_member drop COLUMN dob2;