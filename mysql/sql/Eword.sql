use Eword;
CREATE TABLE IF NOT EXISTS `Eword`.`user` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `nm` VARCHAR(45) NULL,
  `nick_nm` VARCHAR(45) NULL,
  `pw` VARCHAR(45) NULL,
  `gender` TINYINT NULL,
  `dob` DATE NULL,
  `email` VARCHAR(45) NULL,
  `email_div` TINYINT NULL,
  `phone_div` TINYINT NULL,
  `phone_head_num` TINYINT NULL,
  `phone` INT NULL,
  `zip` INT NULL,
  `add` VARCHAR(50) NULL,
  `add_detail` VARCHAR(50) NULL,
  `date` DATE NULL,
  `emailNy` TINYINT NULL,
  `smsNy` TINYINT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;