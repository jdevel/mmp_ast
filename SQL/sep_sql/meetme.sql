CREATE TABLE `meetme` (
 `confno` varchar(80) DEFAULT '0' NOT NULL,
 `pin` varchar(20) NULL,
 `adminpin` varchar(20) NULL,
 `members` integer DEFAULT 0 NOT NULL,
 PRIMARY KEY (confno)
) engine=innodb;
