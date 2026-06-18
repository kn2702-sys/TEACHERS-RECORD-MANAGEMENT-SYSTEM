-- ============================================================
-- Teachers Record Management System (TRMS)
-- Database Schema
-- University of Burdwan | BCA Project 2022
-- ============================================================

CREATE DATABASE IF NOT EXISTS `trms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `trms`;

-- ---------------------------------------------------------------
-- Table: tbladmin
-- Stores administrator login credentials
-- ---------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID`           INT(11)      NOT NULL AUTO_INCREMENT,
  `UserName`     VARCHAR(100) NOT NULL,
  `Password`     VARCHAR(100) NOT NULL,   -- MD5 hashed
  `Email`        VARCHAR(150)     NULL,
  `MobileNumber` VARCHAR(15)      NULL,
  `CreationDate` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Default admin credentials: admin / admin@123
-- Password below is MD5('admin@123')
INSERT INTO `tbladmin` (`UserName`, `Password`, `Email`, `MobileNumber`)
VALUES ('admin', '0192023a7bbd73250516f069df18b500', 'admin@trms.com', '9999999999');

-- ---------------------------------------------------------------
-- Table: tblsubjects
-- Stores the list of subjects that can be assigned to teachers
-- ---------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `ID`           INT(11)      NOT NULL AUTO_INCREMENT,
  `Subject`      VARCHAR(200) NOT NULL,
  `CreationDate` TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Sample subjects
INSERT INTO `tblsubjects` (`Subject`) VALUES
  ('Mathematics'),
  ('Physics'),
  ('Chemistry'),
  ('Biology'),
  ('Computer Science'),
  ('English'),
  ('History'),
  ('Geography');

-- ---------------------------------------------------------------
-- Table: tblteacher
-- Stores teacher profiles (both self-registered and admin-added)
-- ---------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `tblteacher` (
  `ID`           INT(11)      NOT NULL AUTO_INCREMENT,
  `Name`         VARCHAR(200)     NULL,
  `Picture`      VARCHAR(300)     NULL,   -- filename stored in teacher/images/
  `Email`        VARCHAR(200)     NULL,
  `MobileNumber` VARCHAR(15)      NULL,
  `Qualifications` VARCHAR(500)   NULL,
  `Address`      TEXT             NULL,
  `TeacherSub`   VARCHAR(200)     NULL,   -- assigned subject
  `JoiningDate`  DATE             NULL,
  `teachingExp`  VARCHAR(10)      NULL,   -- years
  `description`  TEXT             NULL,
  `password`     VARCHAR(100)     NULL,   -- MD5 hashed (teacher login)
  `isPublic`     TINYINT(1)       NULL DEFAULT 0,  -- 1 = visible on public site
  `RegDate`      TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------------
-- Table: tblquery  (if query/feedback feature is used)
-- Stores user queries addressed to specific teachers
-- ---------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `tblquery` (
  `ID`          INT(11)  NOT NULL AUTO_INCREMENT,
  `TeacherID`   INT(11)      NULL,
  `QueryText`   TEXT         NULL,
  `UserName`    VARCHAR(200) NULL,
  `UserEmail`   VARCHAR(200) NULL,
  `PostDate`    TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `fk_teacher` (`TeacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
