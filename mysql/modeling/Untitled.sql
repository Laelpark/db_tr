CREATE TABLE IF NOT EXISTS `per_project`.`codeGroup` (
  `ccgSeq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`ccgSeq`))
ENGINE = InnoDB
;

CREATE TABLE IF NOT EXISTS `per_project`.`code` (
  `cdSeq` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `codeGroup_ccgSeq` INT NOT NULL,
  PRIMARY KEY (`cdSeq`),
  INDEX `fk_code_codeGroup1_idx` (`codeGroup_ccgSeq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codeGroup1`
    FOREIGN KEY (`codeGroup_ccgSeq`)
    REFERENCES `per_project`.`codeGroup` (`ccgSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
use per_project;
show tables;