CREATE TABLE IF NOT EXISTS `per_project`.`shareCode` (
  `ccgSeq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  `name_eng` VARCHAR(45) NULL,
  `cdAnother` VARCHAR(45) NULL,
  `cdNameEng` VARCHAR(45) NULL,
  `cdUserNy` TINYINT NULL,
  `cdOrder` INT NULL,
  `cdReferencev1` VARCHAR(45) NULL,
  `cdReferencev2` VARCHAR(45) NULL,
  `cdReferencev3` VARCHAR(45) NULL,
  `cdReferencevI1` VARCHAR(45) NULL,
  `cdReferencevI2` VARCHAR(45) NULL,
  `cdReferencevI3` VARCHAR(45) NULL,
  `cdDelNy` TINYINT NULL,
  `shareCodeGroup_ccgSeq` INT NOT NULL,
  PRIMARY KEY (`ccgSeq`),
  INDEX `fk_shareCode_shareCodeGroup1_idx` (`shareCodeGroup_ccgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_shareCode_shareCodeGroup1`
    FOREIGN KEY (`shareCodeGroup_ccgSeq`)
    REFERENCES `per_project`.`shareCodeGroup` (`ccgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
;