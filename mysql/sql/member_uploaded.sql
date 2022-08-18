
-- SELECT * FROM per_project.share_member;

-- SELECT * FROM share_member;

-- SELECT * FROM share;

-- DELETE FROM share_member 
-- WHERE 1=1
-- 	AND seq = 1
-- ;

CREATE TABLE IF NOT EXISTS `per_project`.`share_uploaded` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` TINYINT NULL,
  `defaultNy` TINYINT NULL,
  `sort` TINYINT NULL,
  `originalName` VARCHAR(100) NULL,
  `uuidName` VARCHAR(100) NULL,
  `ext` VARCHAR(45) NULL,
  `size` BIGINT NULL,
  `delNy` TINYINT NOT NULL,
  `pseq` BIGINT NOT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

INSERT INTO member_uploaded(
	type
    ,defaultNy
    ,sort
    ,originalName
    ,uuidName
    ,ext
    ,size
    ,delNy
    ,pseq
)

VALUES(
2
,0
,3
,"sample3"
,"-"
,"jpg"
,123456
,1
,25
)
;

use per_project;

SELECT
	seq
	,type
    ,defaultNy
    ,sort
    ,originalName
    ,uuidName
    ,ext
    ,size
    ,delNy
    ,pseq
    
FROM member_uploaded 

WHERE 1=1
-- and seq = "1"
-- AND food_div