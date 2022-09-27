CREATE TABLE IF NOT EXISTS `per_project`.`shareCodeGroup` (
  `ccgSeq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `name_eng` VARCHAR(45) NULL,
  `cgAnother` VARCHAR(45) NULL,
  `cgNameEng` VARCHAR(45) NULL,
  `cgUserNy` TINYINT NULL,
  `cgOrder` INT NULL,
  `cgReferencev1` VARCHAR(45) NULL,
  `cgReferencev2` VARCHAR(45) NULL,
  `cgReferencev3` VARCHAR(45) NULL,
  `cgReferencevI1` VARCHAR(45) NULL,
  `cgReferencevI2` VARCHAR(45) NULL,
  `cgReferencevI3` VARCHAR(45) NULL,
  `cgDelNy` TINYINT NULL,
  PRIMARY KEY (`ccgSeq`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;

select*from shareCodeGroup;

ALTER TABLE share drop COLUMN profile;