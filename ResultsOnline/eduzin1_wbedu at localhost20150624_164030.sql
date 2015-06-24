CREATE TABLE `ro_city`(`ID` int NOT NULL AUTO_INCREMENT, `City or Town` varchar(50) NULL, `PIN Code` int NULL, `State` int NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_class`(`ID` int NOT NULL AUTO_INCREMENT, `Class` varchar(50) NOT NULL, `SchoolID` int NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_examgraderule`(`ID` int NOT NULL AUTO_INCREMENT, `SchoolID` int NULL, `GradeTitle` varchar(50) NOT NULL, `PercentageFrom` int NULL, `PercentageTo` int NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_examination`(`ID` int NOT NULL AUTO_INCREMENT, `Examination` int NOT NULL, `Class` int NOT NULL, `SchoolID` int NOT NULL, `Session` varchar(4) NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_examsubjectfullmarks`(`ID` int NOT NULL AUTO_INCREMENT, `Examination` int NULL, `Subject` int NULL, `FullMarks` decimal(32,0) NULL, `Theoritical` decimal(32,0) NULL, `Practical` decimal(32,0) NULL, `Oral` decimal(32,0) NULL, `SchoolID` int NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_examtitles`(`ID` int NOT NULL AUTO_INCREMENT, `Title` varchar(50) NOT NULL, `SchoolID` int NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_markstable`(`ID` int NOT NULL AUTO_INCREMENT, `SchoolID` int NOT NULL, `Student` int NULL, `Examination` int NULL, `Subject` int NULL, `Theoritical` decimal(32,0) NULL, `Practical` decimal(32,0) NULL, `Oral` decimal(32,0) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_pincodes`(`ID` int NOT NULL AUTO_INCREMENT, `PIN` varchar(6) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_school`(`ID` int NOT NULL AUTO_INCREMENT, `SchoolName` varchar(70) NOT NULL, `AddressLine1` varchar(50) NOT NULL, `AddressLine2` varchar(50) NULL, `City` int NOT NULL, `PINCode` int NOT NULL, `State` int NOT NULL, `Country` int NULL, `Principal` varchar(50) NOT NULL, `Board` int NOT NULL, `PrincipalsMobileNumber` varchar(10) NULL, `PrincipalsMobileNumber2` varchar(10) NULL, `PrincipalsPhoneNumber` varchar(12) NULL, `PrincipalsEmail` varchar(50) NULL, `Phone` varchar(12) NULL, `Website` varchar(100) NULL, `EmailID` varchar(50) NULL, `LoginID` varchar(50) NOT NULL, `Password` varchar(50) NOT NULL, `active` int NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_schoolboards`(`ID` int NOT NULL AUTO_INCREMENT, `BoardName` varchar(100) NOT NULL, `ShortForm` varchar(50) NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_section`(`ID` int NOT NULL AUTO_INCREMENT, `Section` varchar(50) NULL, `SchoolID` int NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_state`(`ID` int NOT NULL AUTO_INCREMENT, `State` varchar(50) NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_students`(`ID` int NOT NULL AUTO_INCREMENT, `SchoolID` int NOT NULL, `StudentName` varchar(50) NULL, `Session` int NULL, `Class` int NULL, `Section` int NULL, `RollNumber` varchar(50) NULL, `Father'sName` varchar(50) NULL, `Mother'sName` varchar(50) NULL, `AddressLine1` varchar(50) NULL, `AddressLine2` varchar(50) NULL, `City` int NULL, `PINCode` int NULL, `State` int NULL, `Father'sMobile` varchar(10) NULL, `Mother'sMobile` varchar(10) NULL, `Phone` varchar(12) NULL, `Email` varchar(50) NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_subject`(`ID` int NOT NULL AUTO_INCREMENT, `Subject` varchar(50) NOT NULL, `SchoolID` int NOT NULL, PRIMARY KEY (`ID`))CHARACTER SET utf8;
CREATE TABLE `ro_uggroups`(`GroupID` int NOT NULL AUTO_INCREMENT, `Label` varchar(300) NULL, PRIMARY KEY (`GroupID`))CHARACTER SET utf8;
CREATE TABLE `ro_ugmembers`(`UserName` varchar(300) NOT NULL, `GroupID` int NOT NULL, PRIMARY KEY (`UserName`(50),`GroupID`))CHARACTER SET utf8;
CREATE TABLE `ro_ugrights`(`TableName` varchar(300) NOT NULL, `GroupID` int NOT NULL, `AccessMask` varchar(10) NULL, PRIMARY KEY (`TableName`(50),`GroupID`))CHARACTER SET utf8;
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO `ro_school` (`ID`,`SchoolName`,`AddressLine1`,`AddressLine2`,`City`,`PINCode`,`State`,`Country`,`Principal`,`Board`,`PrincipalsMobileNumber`,`PrincipalsMobileNumber2`,`PrincipalsPhoneNumber`,`PrincipalsEmail`,`Phone`,`Website`,`EmailID`,`LoginID`,`Password`,`active`) VALUES (1,'','',NULL,0,0,0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin','admin',1);
SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO `ro_ugmembers` (`UserName`,`GroupID`) VALUES ('admin',-1);
SET FOREIGN_KEY_CHECKS = 1;
SET FOREIGN_KEY_CHECKS = 0;
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_user',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_school',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_schoolboards',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_students',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_class',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_section',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_state',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_PINCodes',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_subject',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_examtitles',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_examination',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_progressreport',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_examsubjectfullmarks',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('ro_examgraderule',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('admin_rights',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('admin_members',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('admin_users',-1,'ADESPIM');
INSERT INTO `ro_ugrights` (`TableName`,`GroupID`,`AccessMask`) VALUES ('city',-1,'ADESPIM');
SET FOREIGN_KEY_CHECKS = 1;
