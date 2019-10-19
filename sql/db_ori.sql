/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : db_ori

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-10-19 16:32:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for averagescore
-- ----------------------------
DROP TABLE IF EXISTS `averagescore`;
CREATE TABLE `averagescore` (
  `ASum` int(11) DEFAULT '0',
  `ANum` int(11) DEFAULT '0',
  `averageA` int(11) DEFAULT NULL,
  `BSum` int(11) DEFAULT '0',
  `BNum` int(11) DEFAULT '0',
  `averageB` int(11) DEFAULT NULL,
  `CSum` int(11) DEFAULT '0',
  `CNum` int(11) DEFAULT '0',
  `averageC` int(11) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `scoreSum` int(11) DEFAULT '0',
  `scoreNum` int(11) DEFAULT '0',
  `averageScore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of averagescore
-- ----------------------------
INSERT INTO `averagescore` VALUES ('685', '16', '80', '84', '17', '83', '693', '18', '91', '2018年上半年', '0', '0', '86');
INSERT INTO `averagescore` VALUES ('685', '16', '72', '84', '17', '86', '693', '18', '93', '2017年下半年', '0', '0', '86');
INSERT INTO `averagescore` VALUES ('685', '16', '81', '84', '17', '82', '693', '18', '90', '2018年下半年', '0', '0', '91');
INSERT INTO `averagescore` VALUES ('685', '16', '89', '84', '17', '82', '693', '18', '88', '2019年上半年', '0', '0', '93');
INSERT INTO `averagescore` VALUES ('180', '2', '90', '196', '2', '98', '294', '2', '147', '2019年下半年', '188', '2', '94');

-- ----------------------------
-- Table structure for personalscore
-- ----------------------------
DROP TABLE IF EXISTS `personalscore`;
CREATE TABLE `personalscore` (
  `school` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `a1` int(255) DEFAULT NULL,
  `a2` int(255) DEFAULT NULL,
  `a3` int(255) DEFAULT NULL,
  `a4` int(11) DEFAULT NULL,
  `a5` int(255) DEFAULT NULL,
  `a6` int(255) DEFAULT NULL,
  `a7` int(11) DEFAULT NULL,
  `a8` int(11) DEFAULT NULL,
  `a9` int(11) DEFAULT NULL,
  `a10` int(11) DEFAULT NULL,
  `b1` int(11) DEFAULT NULL,
  `b2` int(11) DEFAULT NULL,
  `b3` int(11) DEFAULT NULL,
  `b4` int(11) DEFAULT NULL,
  `b5` int(255) DEFAULT NULL,
  `b8` int(11) DEFAULT NULL,
  `b7` int(11) DEFAULT NULL,
  `b6` int(11) DEFAULT NULL,
  `b10` int(11) DEFAULT NULL,
  `b9` int(11) DEFAULT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `c6` int(11) DEFAULT NULL,
  `c7` int(11) DEFAULT NULL,
  `c8` int(11) DEFAULT NULL,
  `scores` int(11) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of personalscore
-- ----------------------------
INSERT INTO `personalscore` VALUES ('郑州轻工业大学', '541713460201', '87', '87', '88', '86', '87', '86', '88', '88', '88', '88', '98', '98', '98', '98', '98', '98', '98', '98', '98', '98', '95', '95', '95', '95', '95', '95', '95', '95', '94', '2019年下半年');
INSERT INTO `personalscore` VALUES ('郑州轻工业大学', '541713460202', '89', '89', '89', '89', '89', '89', '89', '89', '89', '89', '98', '98', '98', '98', '98', '98', '98', '98', '98', '98', '95', '95', '95', '95', '95', '95', '95', '95', '94', '2019年下半年');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('oriScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('oriScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('oriScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.ori.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720026636F6D2E6F72692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6F72692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('oriScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.ori.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720026636F6D2E6F72692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E6F72692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', null, 'com.yucsoft.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372002A636F6D2E797563736F66742E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E797563736F66742E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', null, 'com.yucsoft.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372002A636F6D2E797563736F66742E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E00097872002B636F6D2E797563736F66742E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E078707400007070707400013174000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('oriScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('oriScheduler', 'TRIGGER_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('yucsoftScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('yucsoftScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('oriScheduler', 'DESKTOP-G7E83CU1571471546734', '1571472722713', '15000');
INSERT INTO `qrtz_scheduler_state` VALUES ('yucsoftScheduler', 'DESKTOP-G7E83CU1571462867431', '1571470180197', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('oriScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1571471550000', '-1', '5', 'PAUSED', 'CRON', '1571471547000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('oriScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1571471560000', '-1', '5', 'PAUSED', 'CRON', '1571471547000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', null, '1571462870000', '-1', '5', 'PAUSED', 'CRON', '1571462867000', '0', null, '2', '');
INSERT INTO `qrtz_triggers` VALUES ('yucsoftScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', null, '1571462880000', '-1', '5', 'PAUSED', 'CRON', '1571462867000', '0', null, '2', '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(100) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '参与的大学', '0', '宇昶', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-09 10:15:50');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '郑州轻工业大学', '1', '宇昶', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-09 10:15:50');
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '郑州轻工业大学电气信息工程学院', '1', '宇昶', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-09 10:14:50');
INSERT INTO `sys_dept` VALUES ('110', '100', '0,100', '超级管理员', '2', '王烨', '18625566260', '2410338910@qq.com', '0', '0', 'admin', '2019-09-28 14:02:21', '', null);
INSERT INTO `sys_dept` VALUES ('111', '101', '0,100,101', '郑州轻工业大学电气信息工程学院老师', '2', '', '', '', '0', '0', 'admin', '2019-09-28 14:17:28', 'admin', '2019-10-09 10:15:37');
INSERT INTO `sys_dept` VALUES ('112', '101', '0,100,101', '郑州轻工业大学电气信息工程学院学生', '3', '', '', '', '0', '0', 'dq', '2019-09-28 14:34:03', 'admin', '2019-10-09 10:15:50');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES ('18', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES ('19', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES ('20', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES ('21', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES ('22', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES ('23', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES ('24', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES ('25', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES ('26', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT '' COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', '', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES ('2', 'ryTask', '系统默认（有参）', 'ryParams', 'ry', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(50) DEFAULT NULL COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('1', 'ryTask', '系统默认（无参）', 'ryNoParams', null, 'ryTask 总共耗时：1毫秒', '0', '', '2019-09-28 14:59:31');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1243 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-16 15:57:42');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-17 14:05:13');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-17 15:49:04');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-17 16:11:21');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-17 16:11:26');
INSERT INTO `sys_logininfor` VALUES ('105', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-17 17:40:09');
INSERT INTO `sys_logininfor` VALUES ('106', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-20 16:54:20');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-20 16:54:29');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-05-20 17:01:03');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-20 17:01:07');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-05-29 20:26:53');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-05-29 20:27:14');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-27 10:27:26');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-27 10:47:40');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-27 10:50:14');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:15:13');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:15:17');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:15:20');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 11:15:22');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:16:01');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:19:15');
INSERT INTO `sys_logininfor` VALUES ('121', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:19:23');
INSERT INTO `sys_logininfor` VALUES ('122', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:19:26');
INSERT INTO `sys_logininfor` VALUES ('123', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:20:30');
INSERT INTO `sys_logininfor` VALUES ('124', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:20:36');
INSERT INTO `sys_logininfor` VALUES ('125', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:22:24');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:22:29');
INSERT INTO `sys_logininfor` VALUES ('127', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:22:31');
INSERT INTO `sys_logininfor` VALUES ('128', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:22:59');
INSERT INTO `sys_logininfor` VALUES ('129', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:23:04');
INSERT INTO `sys_logininfor` VALUES ('130', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:23:29');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:23:35');
INSERT INTO `sys_logininfor` VALUES ('132', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:23:37');
INSERT INTO `sys_logininfor` VALUES ('133', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:27:11');
INSERT INTO `sys_logininfor` VALUES ('134', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:27:18');
INSERT INTO `sys_logininfor` VALUES ('135', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:27:37');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:27:42');
INSERT INTO `sys_logininfor` VALUES ('137', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:27:44');
INSERT INTO `sys_logininfor` VALUES ('138', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 11:27:47');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:27:49');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:28:38');
INSERT INTO `sys_logininfor` VALUES ('141', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:28:45');
INSERT INTO `sys_logininfor` VALUES ('142', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 11:29:13');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 11:29:16');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 12:10:22');
INSERT INTO `sys_logininfor` VALUES ('145', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 12:10:28');
INSERT INTO `sys_logininfor` VALUES ('146', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 12:13:25');
INSERT INTO `sys_logininfor` VALUES ('147', '2410338910@qq.com', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 12:13:35');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 12:15:09');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 12:15:12');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 12:35:44');
INSERT INTO `sys_logininfor` VALUES ('151', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 12:35:54');
INSERT INTO `sys_logininfor` VALUES ('152', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 12:43:36');
INSERT INTO `sys_logininfor` VALUES ('153', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 12:43:41');
INSERT INTO `sys_logininfor` VALUES ('154', 'ry', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 13:55:21');
INSERT INTO `sys_logininfor` VALUES ('155', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 13:55:25');
INSERT INTO `sys_logininfor` VALUES ('156', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 13:56:15');
INSERT INTO `sys_logininfor` VALUES ('157', '2410338910@qq.com', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 13:56:21');
INSERT INTO `sys_logininfor` VALUES ('158', '2410338910@qq.com', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 13:56:38');
INSERT INTO `sys_logininfor` VALUES ('159', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 13:56:51');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:11:41');
INSERT INTO `sys_logininfor` VALUES ('161', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 14:11:51');
INSERT INTO `sys_logininfor` VALUES ('162', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-28 14:12:01');
INSERT INTO `sys_logininfor` VALUES ('163', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:12:12');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:13:02');
INSERT INTO `sys_logininfor` VALUES ('165', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:13:08');
INSERT INTO `sys_logininfor` VALUES ('166', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:14:36');
INSERT INTO `sys_logininfor` VALUES ('167', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:14:40');
INSERT INTO `sys_logininfor` VALUES ('168', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:14:56');
INSERT INTO `sys_logininfor` VALUES ('169', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:15:06');
INSERT INTO `sys_logininfor` VALUES ('170', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:15:10');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:15:15');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:15:49');
INSERT INTO `sys_logininfor` VALUES ('173', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:15:52');
INSERT INTO `sys_logininfor` VALUES ('174', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:16:08');
INSERT INTO `sys_logininfor` VALUES ('175', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:16:20');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:17:55');
INSERT INTO `sys_logininfor` VALUES ('177', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:18:01');
INSERT INTO `sys_logininfor` VALUES ('178', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:18:39');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:18:42');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:19:52');
INSERT INTO `sys_logininfor` VALUES ('181', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:19:57');
INSERT INTO `sys_logininfor` VALUES ('182', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 14:20:28');
INSERT INTO `sys_logininfor` VALUES ('183', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-28 14:20:32');
INSERT INTO `sys_logininfor` VALUES ('184', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:20:37');
INSERT INTO `sys_logininfor` VALUES ('185', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:20:53');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:20:57');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:23:02');
INSERT INTO `sys_logininfor` VALUES ('188', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:23:06');
INSERT INTO `sys_logininfor` VALUES ('189', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:25:18');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:25:21');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:25:44');
INSERT INTO `sys_logininfor` VALUES ('192', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:25:51');
INSERT INTO `sys_logininfor` VALUES ('193', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:25:54');
INSERT INTO `sys_logininfor` VALUES ('194', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:28:13');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:28:16');
INSERT INTO `sys_logininfor` VALUES ('196', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:30:17');
INSERT INTO `sys_logininfor` VALUES ('197', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:30:23');
INSERT INTO `sys_logininfor` VALUES ('198', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:33:19');
INSERT INTO `sys_logininfor` VALUES ('199', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:33:24');
INSERT INTO `sys_logininfor` VALUES ('200', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:34:11');
INSERT INTO `sys_logininfor` VALUES ('201', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:34:19');
INSERT INTO `sys_logininfor` VALUES ('202', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:34:38');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:34:41');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:38:27');
INSERT INTO `sys_logininfor` VALUES ('205', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:38:33');
INSERT INTO `sys_logininfor` VALUES ('206', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:40:40');
INSERT INTO `sys_logininfor` VALUES ('207', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:40:46');
INSERT INTO `sys_logininfor` VALUES ('208', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:40:48');
INSERT INTO `sys_logininfor` VALUES ('209', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:40:57');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:41:02');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:41:55');
INSERT INTO `sys_logininfor` VALUES ('212', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:42:00');
INSERT INTO `sys_logininfor` VALUES ('213', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:42:05');
INSERT INTO `sys_logininfor` VALUES ('214', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:42:08');
INSERT INTO `sys_logininfor` VALUES ('215', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:42:11');
INSERT INTO `sys_logininfor` VALUES ('216', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:43:22');
INSERT INTO `sys_logininfor` VALUES ('217', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:43:28');
INSERT INTO `sys_logininfor` VALUES ('218', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:43:31');
INSERT INTO `sys_logininfor` VALUES ('219', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:43:39');
INSERT INTO `sys_logininfor` VALUES ('220', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:44:48');
INSERT INTO `sys_logininfor` VALUES ('221', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:44:53');
INSERT INTO `sys_logininfor` VALUES ('222', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:45:15');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:45:18');
INSERT INTO `sys_logininfor` VALUES ('224', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:45:21');
INSERT INTO `sys_logininfor` VALUES ('225', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:46:02');
INSERT INTO `sys_logininfor` VALUES ('226', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:46:09');
INSERT INTO `sys_logininfor` VALUES ('227', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:46:54');
INSERT INTO `sys_logininfor` VALUES ('228', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:46:59');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:48:21');
INSERT INTO `sys_logininfor` VALUES ('230', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:48:26');
INSERT INTO `sys_logininfor` VALUES ('231', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:48:33');
INSERT INTO `sys_logininfor` VALUES ('232', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:48:35');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:48:54');
INSERT INTO `sys_logininfor` VALUES ('234', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:48:59');
INSERT INTO `sys_logininfor` VALUES ('235', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:49:06');
INSERT INTO `sys_logininfor` VALUES ('236', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:49:14');
INSERT INTO `sys_logininfor` VALUES ('237', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:49:38');
INSERT INTO `sys_logininfor` VALUES ('238', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:49:43');
INSERT INTO `sys_logininfor` VALUES ('239', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:49:45');
INSERT INTO `sys_logininfor` VALUES ('240', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:50:00');
INSERT INTO `sys_logininfor` VALUES ('241', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:50:09');
INSERT INTO `sys_logininfor` VALUES ('242', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:50:44');
INSERT INTO `sys_logininfor` VALUES ('243', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:50:52');
INSERT INTO `sys_logininfor` VALUES ('244', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:51:23');
INSERT INTO `sys_logininfor` VALUES ('245', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:51:28');
INSERT INTO `sys_logininfor` VALUES ('246', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:51:54');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:51:57');
INSERT INTO `sys_logininfor` VALUES ('248', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:52:00');
INSERT INTO `sys_logininfor` VALUES ('249', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:52:17');
INSERT INTO `sys_logininfor` VALUES ('250', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:52:23');
INSERT INTO `sys_logininfor` VALUES ('251', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:52:45');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:52:48');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:53:52');
INSERT INTO `sys_logininfor` VALUES ('254', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:54:02');
INSERT INTO `sys_logininfor` VALUES ('255', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:54:05');
INSERT INTO `sys_logininfor` VALUES ('256', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:54:07');
INSERT INTO `sys_logininfor` VALUES ('257', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:55:09');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:55:17');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:55:19');
INSERT INTO `sys_logininfor` VALUES ('260', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:55:39');
INSERT INTO `sys_logininfor` VALUES ('261', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:55:47');
INSERT INTO `sys_logininfor` VALUES ('262', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:56:03');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:56:06');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:56:50');
INSERT INTO `sys_logininfor` VALUES ('265', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:56:58');
INSERT INTO `sys_logininfor` VALUES ('266', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:57:00');
INSERT INTO `sys_logininfor` VALUES ('267', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:57:08');
INSERT INTO `sys_logininfor` VALUES ('268', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:57:10');
INSERT INTO `sys_logininfor` VALUES ('269', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:57:16');
INSERT INTO `sys_logininfor` VALUES ('270', 'stu', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:57:18');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:57:23');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:57:31');
INSERT INTO `sys_logininfor` VALUES ('273', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 14:57:34');
INSERT INTO `sys_logininfor` VALUES ('274', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:57:37');
INSERT INTO `sys_logininfor` VALUES ('275', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 14:58:08');
INSERT INTO `sys_logininfor` VALUES ('276', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 14:58:12');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:00:39');
INSERT INTO `sys_logininfor` VALUES ('278', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:00:44');
INSERT INTO `sys_logininfor` VALUES ('279', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:04:45');
INSERT INTO `sys_logininfor` VALUES ('280', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:04:54');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:06:35');
INSERT INTO `sys_logininfor` VALUES ('282', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:06:45');
INSERT INTO `sys_logininfor` VALUES ('283', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:07:13');
INSERT INTO `sys_logininfor` VALUES ('284', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:07:18');
INSERT INTO `sys_logininfor` VALUES ('285', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:09:15');
INSERT INTO `sys_logininfor` VALUES ('286', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:09:19');
INSERT INTO `sys_logininfor` VALUES ('287', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:09:31');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:09:34');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:10:23');
INSERT INTO `sys_logininfor` VALUES ('290', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:10:29');
INSERT INTO `sys_logininfor` VALUES ('291', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:15:10');
INSERT INTO `sys_logininfor` VALUES ('292', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:15:18');
INSERT INTO `sys_logininfor` VALUES ('293', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:15:28');
INSERT INTO `sys_logininfor` VALUES ('294', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:15:38');
INSERT INTO `sys_logininfor` VALUES ('295', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:15:51');
INSERT INTO `sys_logininfor` VALUES ('296', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:15:56');
INSERT INTO `sys_logininfor` VALUES ('297', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 15:17:52');
INSERT INTO `sys_logininfor` VALUES ('298', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 15:21:51');
INSERT INTO `sys_logininfor` VALUES ('299', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 15:21:56');
INSERT INTO `sys_logininfor` VALUES ('300', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 16:56:19');
INSERT INTO `sys_logininfor` VALUES ('301', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 16:56:24');
INSERT INTO `sys_logininfor` VALUES ('302', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 16:56:29');
INSERT INTO `sys_logininfor` VALUES ('303', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 16:56:37');
INSERT INTO `sys_logininfor` VALUES ('304', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 16:56:39');
INSERT INTO `sys_logininfor` VALUES ('305', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 16:56:43');
INSERT INTO `sys_logininfor` VALUES ('306', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 16:59:18');
INSERT INTO `sys_logininfor` VALUES ('307', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 16:59:30');
INSERT INTO `sys_logininfor` VALUES ('308', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 16:59:31');
INSERT INTO `sys_logininfor` VALUES ('309', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 16:59:36');
INSERT INTO `sys_logininfor` VALUES ('310', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:00:02');
INSERT INTO `sys_logininfor` VALUES ('311', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:00:06');
INSERT INTO `sys_logininfor` VALUES ('312', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:00:11');
INSERT INTO `sys_logininfor` VALUES ('313', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:00:15');
INSERT INTO `sys_logininfor` VALUES ('314', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:00:29');
INSERT INTO `sys_logininfor` VALUES ('315', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:00:33');
INSERT INTO `sys_logininfor` VALUES ('316', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:00:58');
INSERT INTO `sys_logininfor` VALUES ('317', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:01:12');
INSERT INTO `sys_logininfor` VALUES ('318', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:01:14');
INSERT INTO `sys_logininfor` VALUES ('319', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:01:20');
INSERT INTO `sys_logininfor` VALUES ('320', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:01:56');
INSERT INTO `sys_logininfor` VALUES ('321', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:02:03');
INSERT INTO `sys_logininfor` VALUES ('322', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:02:20');
INSERT INTO `sys_logininfor` VALUES ('323', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:02:24');
INSERT INTO `sys_logininfor` VALUES ('324', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:02:55');
INSERT INTO `sys_logininfor` VALUES ('325', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:02:59');
INSERT INTO `sys_logininfor` VALUES ('326', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:03:24');
INSERT INTO `sys_logininfor` VALUES ('327', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:03:28');
INSERT INTO `sys_logininfor` VALUES ('328', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:03:56');
INSERT INTO `sys_logininfor` VALUES ('329', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:04:17');
INSERT INTO `sys_logininfor` VALUES ('330', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:04:46');
INSERT INTO `sys_logininfor` VALUES ('331', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 17:04:53');
INSERT INTO `sys_logininfor` VALUES ('332', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:04:55');
INSERT INTO `sys_logininfor` VALUES ('333', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:05:03');
INSERT INTO `sys_logininfor` VALUES ('334', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:05:07');
INSERT INTO `sys_logininfor` VALUES ('335', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:05:45');
INSERT INTO `sys_logininfor` VALUES ('336', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:05:52');
INSERT INTO `sys_logininfor` VALUES ('337', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:32:42');
INSERT INTO `sys_logininfor` VALUES ('338', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 17:32:47');
INSERT INTO `sys_logininfor` VALUES ('339', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 17:40:30');
INSERT INTO `sys_logininfor` VALUES ('340', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-28 17:40:34');
INSERT INTO `sys_logininfor` VALUES ('341', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:40:45');
INSERT INTO `sys_logininfor` VALUES ('342', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:40:50');
INSERT INTO `sys_logininfor` VALUES ('343', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:40:53');
INSERT INTO `sys_logininfor` VALUES ('344', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:41:11');
INSERT INTO `sys_logininfor` VALUES ('345', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:41:16');
INSERT INTO `sys_logininfor` VALUES ('346', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:42:04');
INSERT INTO `sys_logininfor` VALUES ('347', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:42:33');
INSERT INTO `sys_logininfor` VALUES ('348', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:43:16');
INSERT INTO `sys_logininfor` VALUES ('349', 'admin541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 17:43:21');
INSERT INTO `sys_logininfor` VALUES ('350', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 17:43:31');
INSERT INTO `sys_logininfor` VALUES ('351', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 17:43:33');
INSERT INTO `sys_logininfor` VALUES ('352', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-28 17:43:40');
INSERT INTO `sys_logininfor` VALUES ('353', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:44:12');
INSERT INTO `sys_logininfor` VALUES ('354', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:46:00');
INSERT INTO `sys_logininfor` VALUES ('355', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:46:03');
INSERT INTO `sys_logininfor` VALUES ('356', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:46:31');
INSERT INTO `sys_logininfor` VALUES ('357', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:46:37');
INSERT INTO `sys_logininfor` VALUES ('358', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:47:12');
INSERT INTO `sys_logininfor` VALUES ('359', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:47:23');
INSERT INTO `sys_logininfor` VALUES ('360', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:49:42');
INSERT INTO `sys_logininfor` VALUES ('361', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:49:45');
INSERT INTO `sys_logininfor` VALUES ('362', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:50:38');
INSERT INTO `sys_logininfor` VALUES ('363', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:50:43');
INSERT INTO `sys_logininfor` VALUES ('364', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 17:50:45');
INSERT INTO `sys_logininfor` VALUES ('365', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 17:51:19');
INSERT INTO `sys_logininfor` VALUES ('366', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 21:04:31');
INSERT INTO `sys_logininfor` VALUES ('367', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:06:39');
INSERT INTO `sys_logininfor` VALUES ('368', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 22:25:55');
INSERT INTO `sys_logininfor` VALUES ('369', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 22:26:06');
INSERT INTO `sys_logininfor` VALUES ('370', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:26:09');
INSERT INTO `sys_logininfor` VALUES ('371', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 22:26:15');
INSERT INTO `sys_logininfor` VALUES ('372', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:26:18');
INSERT INTO `sys_logininfor` VALUES ('373', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 22:28:39');
INSERT INTO `sys_logininfor` VALUES ('374', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 22:28:48');
INSERT INTO `sys_logininfor` VALUES ('375', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:28:51');
INSERT INTO `sys_logininfor` VALUES ('376', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 22:28:58');
INSERT INTO `sys_logininfor` VALUES ('377', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:29:01');
INSERT INTO `sys_logininfor` VALUES ('378', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 22:56:35');
INSERT INTO `sys_logininfor` VALUES ('379', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:01:07');
INSERT INTO `sys_logininfor` VALUES ('380', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:03:35');
INSERT INTO `sys_logininfor` VALUES ('381', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:03:45');
INSERT INTO `sys_logininfor` VALUES ('382', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:04:26');
INSERT INTO `sys_logininfor` VALUES ('383', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:04:30');
INSERT INTO `sys_logininfor` VALUES ('384', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:05:00');
INSERT INTO `sys_logininfor` VALUES ('385', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:05:04');
INSERT INTO `sys_logininfor` VALUES ('386', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:05:34');
INSERT INTO `sys_logininfor` VALUES ('387', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:05:36');
INSERT INTO `sys_logininfor` VALUES ('388', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:05:44');
INSERT INTO `sys_logininfor` VALUES ('389', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:05:48');
INSERT INTO `sys_logininfor` VALUES ('390', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:07:29');
INSERT INTO `sys_logininfor` VALUES ('391', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:07:33');
INSERT INTO `sys_logininfor` VALUES ('392', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:07:43');
INSERT INTO `sys_logininfor` VALUES ('393', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:07:50');
INSERT INTO `sys_logininfor` VALUES ('394', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:07:52');
INSERT INTO `sys_logininfor` VALUES ('395', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:08:45');
INSERT INTO `sys_logininfor` VALUES ('396', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:08:52');
INSERT INTO `sys_logininfor` VALUES ('397', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:09:17');
INSERT INTO `sys_logininfor` VALUES ('398', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:09:19');
INSERT INTO `sys_logininfor` VALUES ('399', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:09:24');
INSERT INTO `sys_logininfor` VALUES ('400', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:11:42');
INSERT INTO `sys_logininfor` VALUES ('401', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:11:47');
INSERT INTO `sys_logininfor` VALUES ('402', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:11:56');
INSERT INTO `sys_logininfor` VALUES ('403', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:11:59');
INSERT INTO `sys_logininfor` VALUES ('404', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:12:22');
INSERT INTO `sys_logininfor` VALUES ('405', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:12:33');
INSERT INTO `sys_logininfor` VALUES ('406', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:12:38');
INSERT INTO `sys_logininfor` VALUES ('407', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:12:42');
INSERT INTO `sys_logininfor` VALUES ('408', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:14:37');
INSERT INTO `sys_logininfor` VALUES ('409', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:14:42');
INSERT INTO `sys_logininfor` VALUES ('410', 'ttt', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:15:32');
INSERT INTO `sys_logininfor` VALUES ('411', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:15:35');
INSERT INTO `sys_logininfor` VALUES ('412', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:16:59');
INSERT INTO `sys_logininfor` VALUES ('413', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:17:03');
INSERT INTO `sys_logininfor` VALUES ('414', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:17:19');
INSERT INTO `sys_logininfor` VALUES ('415', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:17:26');
INSERT INTO `sys_logininfor` VALUES ('416', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:17:51');
INSERT INTO `sys_logininfor` VALUES ('417', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:17:56');
INSERT INTO `sys_logininfor` VALUES ('418', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:18:15');
INSERT INTO `sys_logininfor` VALUES ('419', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:18:18');
INSERT INTO `sys_logininfor` VALUES ('420', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:19:11');
INSERT INTO `sys_logininfor` VALUES ('421', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:19:16');
INSERT INTO `sys_logininfor` VALUES ('422', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:20:45');
INSERT INTO `sys_logininfor` VALUES ('423', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:20:50');
INSERT INTO `sys_logininfor` VALUES ('424', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:27:06');
INSERT INTO `sys_logininfor` VALUES ('425', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:27:12');
INSERT INTO `sys_logininfor` VALUES ('426', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:27:16');
INSERT INTO `sys_logininfor` VALUES ('427', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:27:19');
INSERT INTO `sys_logininfor` VALUES ('428', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:27:21');
INSERT INTO `sys_logininfor` VALUES ('429', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:28:58');
INSERT INTO `sys_logininfor` VALUES ('430', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:29:06');
INSERT INTO `sys_logininfor` VALUES ('431', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:29:08');
INSERT INTO `sys_logininfor` VALUES ('432', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:29:11');
INSERT INTO `sys_logininfor` VALUES ('433', '541713460233', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:29:16');
INSERT INTO `sys_logininfor` VALUES ('434', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:29:24');
INSERT INTO `sys_logininfor` VALUES ('435', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:29:36');
INSERT INTO `sys_logininfor` VALUES ('436', '541713460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-28 23:29:45');
INSERT INTO `sys_logininfor` VALUES ('437', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:29:52');
INSERT INTO `sys_logininfor` VALUES ('438', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:30:08');
INSERT INTO `sys_logininfor` VALUES ('439', '5417143460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:30:19');
INSERT INTO `sys_logininfor` VALUES ('440', '541713460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:30:29');
INSERT INTO `sys_logininfor` VALUES ('441', '541713460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:30:33');
INSERT INTO `sys_logininfor` VALUES ('442', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:30:36');
INSERT INTO `sys_logininfor` VALUES ('443', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:32:49');
INSERT INTO `sys_logininfor` VALUES ('444', '541743460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:33:00');
INSERT INTO `sys_logininfor` VALUES ('445', '54173460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:33:07');
INSERT INTO `sys_logininfor` VALUES ('446', '541731460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:33:15');
INSERT INTO `sys_logininfor` VALUES ('447', '541731460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:33:17');
INSERT INTO `sys_logininfor` VALUES ('448', '541713460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:33:24');
INSERT INTO `sys_logininfor` VALUES ('449', '541713460234', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:33:30');
INSERT INTO `sys_logininfor` VALUES ('450', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:33:34');
INSERT INTO `sys_logininfor` VALUES ('451', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:35:48');
INSERT INTO `sys_logininfor` VALUES ('452', 'q', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:35:54');
INSERT INTO `sys_logininfor` VALUES ('453', 'q', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:36:01');
INSERT INTO `sys_logininfor` VALUES ('454', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-28 23:36:08');
INSERT INTO `sys_logininfor` VALUES ('455', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:36:10');
INSERT INTO `sys_logininfor` VALUES ('456', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:36:21');
INSERT INTO `sys_logininfor` VALUES ('457', 'q', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-09-28 23:36:27');
INSERT INTO `sys_logininfor` VALUES ('458', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:36:33');
INSERT INTO `sys_logininfor` VALUES ('459', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:46:14');
INSERT INTO `sys_logininfor` VALUES ('460', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:46:18');
INSERT INTO `sys_logininfor` VALUES ('461', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-09-28 23:50:19');
INSERT INTO `sys_logininfor` VALUES ('462', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:50:21');
INSERT INTO `sys_logininfor` VALUES ('463', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-28 23:52:22');
INSERT INTO `sys_logininfor` VALUES ('464', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 00:27:20');
INSERT INTO `sys_logininfor` VALUES ('465', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 08:23:53');
INSERT INTO `sys_logininfor` VALUES ('466', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 09:15:51');
INSERT INTO `sys_logininfor` VALUES ('467', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 11:21:49');
INSERT INTO `sys_logininfor` VALUES ('468', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 11:32:06');
INSERT INTO `sys_logininfor` VALUES ('469', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 11:37:21');
INSERT INTO `sys_logininfor` VALUES ('470', 'admin', '10.85.16.69', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-09-29 12:38:19');
INSERT INTO `sys_logininfor` VALUES ('471', 'admin', '10.85.16.69', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误2次', '2019-09-29 12:38:21');
INSERT INTO `sys_logininfor` VALUES ('472', 'admin', '10.85.16.69', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-09-29 12:38:31');
INSERT INTO `sys_logininfor` VALUES ('473', 'admin', '172.20.152.57', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-29 12:41:22');
INSERT INTO `sys_logininfor` VALUES ('474', 'admin', '172.20.152.57', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-29 12:41:27');
INSERT INTO `sys_logininfor` VALUES ('475', 'admin', '172.20.152.57', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-29 12:41:49');
INSERT INTO `sys_logininfor` VALUES ('476', 'admin', '172.20.152.57', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-29 12:41:58');
INSERT INTO `sys_logininfor` VALUES ('477', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-29 13:09:25');
INSERT INTO `sys_logininfor` VALUES ('478', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 13:09:29');
INSERT INTO `sys_logininfor` VALUES ('479', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 13:12:41');
INSERT INTO `sys_logininfor` VALUES ('480', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 13:30:18');
INSERT INTO `sys_logininfor` VALUES ('481', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 14:11:21');
INSERT INTO `sys_logininfor` VALUES ('482', 'admin', '117.158.221.226', '河南 郑州', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-09-29 14:30:54');
INSERT INTO `sys_logininfor` VALUES ('483', 'admin', '117.158.221.226', 'XX XX', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-09-29 14:31:15');
INSERT INTO `sys_logininfor` VALUES ('484', 'admin', '117.158.221.228', '河南 郑州', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 14:34:30');
INSERT INTO `sys_logininfor` VALUES ('485', 'admin', '61.158.152.112', '河南 郑州', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2019-09-29 14:39:42');
INSERT INTO `sys_logininfor` VALUES ('486', 'admin', '61.158.152.112', '河南 郑州', 'Chrome Mobile', 'Android Mobile', '1', '验证码错误', '2019-09-29 14:39:44');
INSERT INTO `sys_logininfor` VALUES ('487', 'admin', '117.158.221.226', '河南 郑州', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-09-29 16:44:29');
INSERT INTO `sys_logininfor` VALUES ('488', 'admin', '117.158.221.226', 'XX XX', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-09-29 16:44:38');
INSERT INTO `sys_logininfor` VALUES ('489', 'admin', '218.29.115.25', '河南 郑州', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-29 18:29:09');
INSERT INTO `sys_logininfor` VALUES ('490', 'admin', '218.29.115.25', '河南 郑州', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-09-29 18:29:17');
INSERT INTO `sys_logininfor` VALUES ('491', 'admin', '218.29.115.25', '河南 郑州', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-29 18:29:20');
INSERT INTO `sys_logininfor` VALUES ('492', 'admin', '218.29.115.25', '河南 郑州', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-29 18:29:55');
INSERT INTO `sys_logininfor` VALUES ('493', 'admin', '116.54.2.154', '云南 昆明', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-30 16:59:51');
INSERT INTO `sys_logininfor` VALUES ('494', 'admin', '116.54.2.154', '云南 昆明', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 16:59:53');
INSERT INTO `sys_logininfor` VALUES ('495', 'admin', '116.54.2.154', '云南 昆明', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-09-30 16:59:56');
INSERT INTO `sys_logininfor` VALUES ('496', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-09-30 17:00:49');
INSERT INTO `sys_logininfor` VALUES ('497', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 17:00:54');
INSERT INTO `sys_logininfor` VALUES ('498', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 17:09:29');
INSERT INTO `sys_logininfor` VALUES ('499', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 17:17:18');
INSERT INTO `sys_logininfor` VALUES ('500', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 17:22:18');
INSERT INTO `sys_logininfor` VALUES ('501', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 18:13:28');
INSERT INTO `sys_logininfor` VALUES ('502', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-09-30 18:21:28');
INSERT INTO `sys_logininfor` VALUES ('503', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 10:38:57');
INSERT INTO `sys_logininfor` VALUES ('504', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 10:45:27');
INSERT INTO `sys_logininfor` VALUES ('505', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 11:45:37');
INSERT INTO `sys_logininfor` VALUES ('506', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 11:48:40');
INSERT INTO `sys_logininfor` VALUES ('507', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 11:54:43');
INSERT INTO `sys_logininfor` VALUES ('508', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 12:01:49');
INSERT INTO `sys_logininfor` VALUES ('509', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 14:14:57');
INSERT INTO `sys_logininfor` VALUES ('510', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 15:09:20');
INSERT INTO `sys_logininfor` VALUES ('511', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-01 15:13:52');
INSERT INTO `sys_logininfor` VALUES ('512', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-02 01:56:58');
INSERT INTO `sys_logininfor` VALUES ('513', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-02 02:06:27');
INSERT INTO `sys_logininfor` VALUES ('514', 'admin', '116.54.10.50', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-02 02:15:01');
INSERT INTO `sys_logininfor` VALUES ('515', 'admin', '116.54.10.50', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-02 02:15:07');
INSERT INTO `sys_logininfor` VALUES ('516', 'admin', '116.54.10.50', '云南 昆明', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-02 02:28:56');
INSERT INTO `sys_logininfor` VALUES ('517', 'admin', '116.54.10.50', '云南 昆明', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-02 02:29:02');
INSERT INTO `sys_logininfor` VALUES ('518', 'admin', '218.29.115.25', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-02 16:42:48');
INSERT INTO `sys_logininfor` VALUES ('519', 'admin', '218.29.115.25', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-02 16:43:15');
INSERT INTO `sys_logininfor` VALUES ('520', 'admin', '112.113.194.122', 'XX XX', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-03 00:45:21');
INSERT INTO `sys_logininfor` VALUES ('521', 'admin', '112.113.194.122', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-03 00:45:25');
INSERT INTO `sys_logininfor` VALUES ('522', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-03 16:34:51');
INSERT INTO `sys_logininfor` VALUES ('523', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-03 16:37:48');
INSERT INTO `sys_logininfor` VALUES ('524', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-03 16:40:50');
INSERT INTO `sys_logininfor` VALUES ('525', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-03 16:44:44');
INSERT INTO `sys_logininfor` VALUES ('526', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 13:15:07');
INSERT INTO `sys_logininfor` VALUES ('527', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-10-08 14:19:23');
INSERT INTO `sys_logininfor` VALUES ('528', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '1', '密码输入错误1次', '2019-10-08 14:19:28');
INSERT INTO `sys_logininfor` VALUES ('529', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-10-08 14:19:33');
INSERT INTO `sys_logininfor` VALUES ('530', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 14:19:57');
INSERT INTO `sys_logininfor` VALUES ('531', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-10-08 14:51:09');
INSERT INTO `sys_logininfor` VALUES ('532', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-10-08 14:51:15');
INSERT INTO `sys_logininfor` VALUES ('533', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-10-08 15:09:38');
INSERT INTO `sys_logininfor` VALUES ('534', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-10-08 15:09:43');
INSERT INTO `sys_logininfor` VALUES ('535', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 16:51:31');
INSERT INTO `sys_logininfor` VALUES ('536', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 17:08:34');
INSERT INTO `sys_logininfor` VALUES ('537', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 17:14:58');
INSERT INTO `sys_logininfor` VALUES ('538', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 17:24:17');
INSERT INTO `sys_logininfor` VALUES ('539', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 17:26:34');
INSERT INTO `sys_logininfor` VALUES ('540', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 19:54:43');
INSERT INTO `sys_logininfor` VALUES ('541', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-08 20:21:24');
INSERT INTO `sys_logininfor` VALUES ('542', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-08 20:21:28');
INSERT INTO `sys_logininfor` VALUES ('543', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 20:21:30');
INSERT INTO `sys_logininfor` VALUES ('544', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 20:22:47');
INSERT INTO `sys_logininfor` VALUES ('545', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 20:29:44');
INSERT INTO `sys_logininfor` VALUES ('546', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 20:36:37');
INSERT INTO `sys_logininfor` VALUES ('547', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 20:39:54');
INSERT INTO `sys_logininfor` VALUES ('548', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-08 22:01:24');
INSERT INTO `sys_logininfor` VALUES ('549', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-08 22:01:26');
INSERT INTO `sys_logininfor` VALUES ('550', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:01:29');
INSERT INTO `sys_logininfor` VALUES ('551', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:01:45');
INSERT INTO `sys_logininfor` VALUES ('552', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:01:48');
INSERT INTO `sys_logininfor` VALUES ('553', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:22:00');
INSERT INTO `sys_logininfor` VALUES ('554', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-08 22:22:06');
INSERT INTO `sys_logininfor` VALUES ('555', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:22:09');
INSERT INTO `sys_logininfor` VALUES ('556', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:22:27');
INSERT INTO `sys_logininfor` VALUES ('557', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:22:31');
INSERT INTO `sys_logininfor` VALUES ('558', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:22:52');
INSERT INTO `sys_logininfor` VALUES ('559', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:22:54');
INSERT INTO `sys_logininfor` VALUES ('560', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:24:13');
INSERT INTO `sys_logininfor` VALUES ('561', 'da', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-08 22:24:18');
INSERT INTO `sys_logininfor` VALUES ('562', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:24:24');
INSERT INTO `sys_logininfor` VALUES ('563', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-08 22:24:59');
INSERT INTO `sys_logininfor` VALUES ('564', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-08 22:25:02');
INSERT INTO `sys_logininfor` VALUES ('565', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 10:14:09');
INSERT INTO `sys_logininfor` VALUES ('566', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 10:21:23');
INSERT INTO `sys_logininfor` VALUES ('567', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 10:21:29');
INSERT INTO `sys_logininfor` VALUES ('568', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 10:21:31');
INSERT INTO `sys_logininfor` VALUES ('569', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 10:27:27');
INSERT INTO `sys_logininfor` VALUES ('570', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 10:27:32');
INSERT INTO `sys_logininfor` VALUES ('571', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 10:27:56');
INSERT INTO `sys_logininfor` VALUES ('572', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 10:27:58');
INSERT INTO `sys_logininfor` VALUES ('573', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 10:28:52');
INSERT INTO `sys_logininfor` VALUES ('574', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 10:28:57');
INSERT INTO `sys_logininfor` VALUES ('575', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 11:53:34');
INSERT INTO `sys_logininfor` VALUES ('576', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 11:55:10');
INSERT INTO `sys_logininfor` VALUES ('577', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 11:59:06');
INSERT INTO `sys_logininfor` VALUES ('578', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 12:00:37');
INSERT INTO `sys_logininfor` VALUES ('579', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 12:02:07');
INSERT INTO `sys_logininfor` VALUES ('580', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 12:29:48');
INSERT INTO `sys_logininfor` VALUES ('581', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 12:48:46');
INSERT INTO `sys_logininfor` VALUES ('582', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 12:48:48');
INSERT INTO `sys_logininfor` VALUES ('583', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 12:49:54');
INSERT INTO `sys_logininfor` VALUES ('584', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 12:49:56');
INSERT INTO `sys_logininfor` VALUES ('585', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 13:54:46');
INSERT INTO `sys_logininfor` VALUES ('586', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 13:54:48');
INSERT INTO `sys_logininfor` VALUES ('587', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 14:51:14');
INSERT INTO `sys_logininfor` VALUES ('588', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:51:32');
INSERT INTO `sys_logininfor` VALUES ('589', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 14:55:14');
INSERT INTO `sys_logininfor` VALUES ('590', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:55:18');
INSERT INTO `sys_logininfor` VALUES ('591', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 14:56:34');
INSERT INTO `sys_logininfor` VALUES ('592', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 16:24:46');
INSERT INTO `sys_logininfor` VALUES ('593', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 16:24:49');
INSERT INTO `sys_logininfor` VALUES ('594', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 16:27:03');
INSERT INTO `sys_logininfor` VALUES ('595', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 16:27:06');
INSERT INTO `sys_logininfor` VALUES ('596', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 16:27:08');
INSERT INTO `sys_logininfor` VALUES ('597', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 16:28:22');
INSERT INTO `sys_logininfor` VALUES ('598', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '1', '验证码错误', '2019-10-09 16:33:34');
INSERT INTO `sys_logininfor` VALUES ('599', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-10-09 16:33:36');
INSERT INTO `sys_logininfor` VALUES ('600', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:20:25');
INSERT INTO `sys_logininfor` VALUES ('601', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 18:22:03');
INSERT INTO `sys_logininfor` VALUES ('602', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 19:40:05');
INSERT INTO `sys_logininfor` VALUES ('603', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 19:40:07');
INSERT INTO `sys_logininfor` VALUES ('604', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 19:40:09');
INSERT INTO `sys_logininfor` VALUES ('605', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 19:40:11');
INSERT INTO `sys_logininfor` VALUES ('606', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 19:53:46');
INSERT INTO `sys_logininfor` VALUES ('607', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 19:53:49');
INSERT INTO `sys_logininfor` VALUES ('608', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 19:55:11');
INSERT INTO `sys_logininfor` VALUES ('609', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 21:19:09');
INSERT INTO `sys_logininfor` VALUES ('610', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:19:11');
INSERT INTO `sys_logininfor` VALUES ('611', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:26:14');
INSERT INTO `sys_logininfor` VALUES ('612', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 21:31:14');
INSERT INTO `sys_logininfor` VALUES ('613', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:31:17');
INSERT INTO `sys_logininfor` VALUES ('614', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:32:25');
INSERT INTO `sys_logininfor` VALUES ('615', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:34:52');
INSERT INTO `sys_logininfor` VALUES ('616', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:36:13');
INSERT INTO `sys_logininfor` VALUES ('617', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 21:41:36');
INSERT INTO `sys_logininfor` VALUES ('618', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 21:41:39');
INSERT INTO `sys_logininfor` VALUES ('619', 'admin', '192.168.123.207', '内网IP', 'Chrome', 'Mac OS X', '0', '登录成功', '2019-10-09 21:43:55');
INSERT INTO `sys_logininfor` VALUES ('620', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 22:16:12');
INSERT INTO `sys_logininfor` VALUES ('621', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 22:24:28');
INSERT INTO `sys_logininfor` VALUES ('622', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 22:24:30');
INSERT INTO `sys_logininfor` VALUES ('623', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 22:26:58');
INSERT INTO `sys_logininfor` VALUES ('624', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 22:27:00');
INSERT INTO `sys_logininfor` VALUES ('625', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:04:12');
INSERT INTO `sys_logininfor` VALUES ('626', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 23:26:35');
INSERT INTO `sys_logininfor` VALUES ('627', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 23:26:37');
INSERT INTO `sys_logininfor` VALUES ('628', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:26:39');
INSERT INTO `sys_logininfor` VALUES ('629', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 23:27:54');
INSERT INTO `sys_logininfor` VALUES ('630', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:27:55');
INSERT INTO `sys_logininfor` VALUES ('631', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:35:59');
INSERT INTO `sys_logininfor` VALUES ('632', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:39:58');
INSERT INTO `sys_logininfor` VALUES ('633', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-09 23:42:25');
INSERT INTO `sys_logininfor` VALUES ('634', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:42:28');
INSERT INTO `sys_logininfor` VALUES ('635', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-09 23:43:19');
INSERT INTO `sys_logininfor` VALUES ('636', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-09 23:43:26');
INSERT INTO `sys_logininfor` VALUES ('637', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:50:20');
INSERT INTO `sys_logininfor` VALUES ('638', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 10:51:37');
INSERT INTO `sys_logininfor` VALUES ('639', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:51:39');
INSERT INTO `sys_logininfor` VALUES ('640', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:52:47');
INSERT INTO `sys_logininfor` VALUES ('641', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 10:53:23');
INSERT INTO `sys_logininfor` VALUES ('642', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:53:28');
INSERT INTO `sys_logininfor` VALUES ('643', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 10:54:09');
INSERT INTO `sys_logininfor` VALUES ('644', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 10:54:13');
INSERT INTO `sys_logininfor` VALUES ('645', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 11:03:32');
INSERT INTO `sys_logininfor` VALUES ('646', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:03:35');
INSERT INTO `sys_logininfor` VALUES ('647', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 11:12:18');
INSERT INTO `sys_logininfor` VALUES ('648', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:12:20');
INSERT INTO `sys_logininfor` VALUES ('649', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:23:06');
INSERT INTO `sys_logininfor` VALUES ('650', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:23:58');
INSERT INTO `sys_logininfor` VALUES ('651', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:26:49');
INSERT INTO `sys_logininfor` VALUES ('652', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 11:28:27');
INSERT INTO `sys_logininfor` VALUES ('653', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:28:29');
INSERT INTO `sys_logininfor` VALUES ('654', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:36:21');
INSERT INTO `sys_logininfor` VALUES ('655', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:42:05');
INSERT INTO `sys_logininfor` VALUES ('656', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:43:24');
INSERT INTO `sys_logininfor` VALUES ('657', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:45:15');
INSERT INTO `sys_logininfor` VALUES ('658', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:45:17');
INSERT INTO `sys_logininfor` VALUES ('659', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:46:44');
INSERT INTO `sys_logininfor` VALUES ('660', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 11:51:36');
INSERT INTO `sys_logininfor` VALUES ('661', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:51:38');
INSERT INTO `sys_logininfor` VALUES ('662', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 11:53:02');
INSERT INTO `sys_logininfor` VALUES ('663', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:11:08');
INSERT INTO `sys_logininfor` VALUES ('664', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:12:18');
INSERT INTO `sys_logininfor` VALUES ('665', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:14:27');
INSERT INTO `sys_logininfor` VALUES ('666', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:17:03');
INSERT INTO `sys_logininfor` VALUES ('667', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:31:10');
INSERT INTO `sys_logininfor` VALUES ('668', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:31:34');
INSERT INTO `sys_logininfor` VALUES ('669', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:35:06');
INSERT INTO `sys_logininfor` VALUES ('670', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 12:53:27');
INSERT INTO `sys_logininfor` VALUES ('671', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:00:31');
INSERT INTO `sys_logininfor` VALUES ('672', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:23:31');
INSERT INTO `sys_logininfor` VALUES ('673', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:25:18');
INSERT INTO `sys_logininfor` VALUES ('674', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 13:25:59');
INSERT INTO `sys_logininfor` VALUES ('675', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:26:01');
INSERT INTO `sys_logininfor` VALUES ('676', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:26:50');
INSERT INTO `sys_logininfor` VALUES ('677', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 13:27:47');
INSERT INTO `sys_logininfor` VALUES ('678', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 13:27:49');
INSERT INTO `sys_logininfor` VALUES ('679', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:01:11');
INSERT INTO `sys_logininfor` VALUES ('680', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:05:02');
INSERT INTO `sys_logininfor` VALUES ('681', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:05:38');
INSERT INTO `sys_logininfor` VALUES ('682', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 14:06:12');
INSERT INTO `sys_logininfor` VALUES ('683', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 14:06:14');
INSERT INTO `sys_logininfor` VALUES ('684', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:06:16');
INSERT INTO `sys_logininfor` VALUES ('685', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:08:19');
INSERT INTO `sys_logininfor` VALUES ('686', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:10:05');
INSERT INTO `sys_logininfor` VALUES ('687', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 14:12:02');
INSERT INTO `sys_logininfor` VALUES ('688', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:12:04');
INSERT INTO `sys_logininfor` VALUES ('689', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 14:51:21');
INSERT INTO `sys_logininfor` VALUES ('690', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:51:26');
INSERT INTO `sys_logininfor` VALUES ('691', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:52:26');
INSERT INTO `sys_logininfor` VALUES ('692', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 14:52:39');
INSERT INTO `sys_logininfor` VALUES ('693', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 14:52:48');
INSERT INTO `sys_logininfor` VALUES ('694', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:01:03');
INSERT INTO `sys_logininfor` VALUES ('695', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:01:17');
INSERT INTO `sys_logininfor` VALUES ('696', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 15:01:51');
INSERT INTO `sys_logininfor` VALUES ('697', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 15:02:01');
INSERT INTO `sys_logininfor` VALUES ('698', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:02:02');
INSERT INTO `sys_logininfor` VALUES ('699', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 15:05:20');
INSERT INTO `sys_logininfor` VALUES ('700', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:05:25');
INSERT INTO `sys_logininfor` VALUES ('701', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 15:08:21');
INSERT INTO `sys_logininfor` VALUES ('702', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:08:25');
INSERT INTO `sys_logininfor` VALUES ('703', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:13:17');
INSERT INTO `sys_logininfor` VALUES ('704', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 15:20:10');
INSERT INTO `sys_logininfor` VALUES ('705', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:20:14');
INSERT INTO `sys_logininfor` VALUES ('706', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:25:14');
INSERT INTO `sys_logininfor` VALUES ('707', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 15:25:19');
INSERT INTO `sys_logininfor` VALUES ('708', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-10-10 15:25:21');
INSERT INTO `sys_logininfor` VALUES ('709', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-10-10 15:25:24');
INSERT INTO `sys_logininfor` VALUES ('710', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:25:28');
INSERT INTO `sys_logininfor` VALUES ('711', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:27:10');
INSERT INTO `sys_logininfor` VALUES ('712', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:28:19');
INSERT INTO `sys_logininfor` VALUES ('713', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:31:58');
INSERT INTO `sys_logininfor` VALUES ('714', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 15:33:45');
INSERT INTO `sys_logininfor` VALUES ('715', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:33:53');
INSERT INTO `sys_logininfor` VALUES ('716', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:44:28');
INSERT INTO `sys_logininfor` VALUES ('717', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:44:46');
INSERT INTO `sys_logininfor` VALUES ('718', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:44:50');
INSERT INTO `sys_logininfor` VALUES ('719', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:45:11');
INSERT INTO `sys_logininfor` VALUES ('720', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:45:15');
INSERT INTO `sys_logininfor` VALUES ('721', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:45:29');
INSERT INTO `sys_logininfor` VALUES ('722', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 15:45:34');
INSERT INTO `sys_logininfor` VALUES ('723', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:45:40');
INSERT INTO `sys_logininfor` VALUES ('724', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:53:31');
INSERT INTO `sys_logininfor` VALUES ('725', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:54:55');
INSERT INTO `sys_logininfor` VALUES ('726', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:56:08');
INSERT INTO `sys_logininfor` VALUES ('727', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:56:11');
INSERT INTO `sys_logininfor` VALUES ('728', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:56:14');
INSERT INTO `sys_logininfor` VALUES ('729', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:57:57');
INSERT INTO `sys_logininfor` VALUES ('730', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:58:09');
INSERT INTO `sys_logininfor` VALUES ('731', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 15:59:30');
INSERT INTO `sys_logininfor` VALUES ('732', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 15:59:32');
INSERT INTO `sys_logininfor` VALUES ('733', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:09:48');
INSERT INTO `sys_logininfor` VALUES ('734', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:13:09');
INSERT INTO `sys_logininfor` VALUES ('735', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:26:48');
INSERT INTO `sys_logininfor` VALUES ('736', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:29:57');
INSERT INTO `sys_logininfor` VALUES ('737', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:34:59');
INSERT INTO `sys_logininfor` VALUES ('738', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:35:01');
INSERT INTO `sys_logininfor` VALUES ('739', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:35:05');
INSERT INTO `sys_logininfor` VALUES ('740', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:37:47');
INSERT INTO `sys_logininfor` VALUES ('741', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:41:38');
INSERT INTO `sys_logininfor` VALUES ('742', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:41:40');
INSERT INTO `sys_logininfor` VALUES ('743', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:43:38');
INSERT INTO `sys_logininfor` VALUES ('744', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:43:39');
INSERT INTO `sys_logininfor` VALUES ('745', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:43:42');
INSERT INTO `sys_logininfor` VALUES ('746', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:43:44');
INSERT INTO `sys_logininfor` VALUES ('747', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:06');
INSERT INTO `sys_logininfor` VALUES ('748', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:09');
INSERT INTO `sys_logininfor` VALUES ('749', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:11');
INSERT INTO `sys_logininfor` VALUES ('750', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:13');
INSERT INTO `sys_logininfor` VALUES ('751', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:13');
INSERT INTO `sys_logininfor` VALUES ('752', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:14');
INSERT INTO `sys_logininfor` VALUES ('753', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:14');
INSERT INTO `sys_logininfor` VALUES ('754', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:14');
INSERT INTO `sys_logininfor` VALUES ('755', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:15');
INSERT INTO `sys_logininfor` VALUES ('756', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:15');
INSERT INTO `sys_logininfor` VALUES ('757', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:15');
INSERT INTO `sys_logininfor` VALUES ('758', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:16');
INSERT INTO `sys_logininfor` VALUES ('759', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:18');
INSERT INTO `sys_logininfor` VALUES ('760', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:49:20');
INSERT INTO `sys_logininfor` VALUES ('761', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:49:23');
INSERT INTO `sys_logininfor` VALUES ('762', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:50:48');
INSERT INTO `sys_logininfor` VALUES ('763', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 16:54:00');
INSERT INTO `sys_logininfor` VALUES ('764', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:54:03');
INSERT INTO `sys_logininfor` VALUES ('765', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 16:55:55');
INSERT INTO `sys_logininfor` VALUES ('766', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:02:31');
INSERT INTO `sys_logininfor` VALUES ('767', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:04:34');
INSERT INTO `sys_logininfor` VALUES ('768', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:10:15');
INSERT INTO `sys_logininfor` VALUES ('769', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:16:18');
INSERT INTO `sys_logininfor` VALUES ('770', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:22:02');
INSERT INTO `sys_logininfor` VALUES ('771', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:25:20');
INSERT INTO `sys_logininfor` VALUES ('772', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 17:26:10');
INSERT INTO `sys_logininfor` VALUES ('773', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:26:14');
INSERT INTO `sys_logininfor` VALUES ('774', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:27:14');
INSERT INTO `sys_logininfor` VALUES ('775', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:31:05');
INSERT INTO `sys_logininfor` VALUES ('776', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 17:31:23');
INSERT INTO `sys_logininfor` VALUES ('777', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:31:27');
INSERT INTO `sys_logininfor` VALUES ('778', 'admin', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 17:32:59');
INSERT INTO `sys_logininfor` VALUES ('779', 'admin', '192.168.123.125', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 17:33:28');
INSERT INTO `sys_logininfor` VALUES ('780', 'admin', '192.168.123.125', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '退出成功', '2019-10-10 17:33:45');
INSERT INTO `sys_logininfor` VALUES ('781', 'tea', '192.168.123.125', '内网IP', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 17:34:10');
INSERT INTO `sys_logininfor` VALUES ('782', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 17:34:38');
INSERT INTO `sys_logininfor` VALUES ('783', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:34:41');
INSERT INTO `sys_logininfor` VALUES ('784', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 17:34:44');
INSERT INTO `sys_logininfor` VALUES ('785', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 17:34:52');
INSERT INTO `sys_logininfor` VALUES ('786', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 17:34:53');
INSERT INTO `sys_logininfor` VALUES ('787', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:34:55');
INSERT INTO `sys_logininfor` VALUES ('788', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:44:02');
INSERT INTO `sys_logininfor` VALUES ('789', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 17:44:05');
INSERT INTO `sys_logininfor` VALUES ('790', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:44:11');
INSERT INTO `sys_logininfor` VALUES ('791', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:48:04');
INSERT INTO `sys_logininfor` VALUES ('792', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 17:50:44');
INSERT INTO `sys_logininfor` VALUES ('793', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:50:48');
INSERT INTO `sys_logininfor` VALUES ('794', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 17:51:01');
INSERT INTO `sys_logininfor` VALUES ('795', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 17:51:07');
INSERT INTO `sys_logininfor` VALUES ('796', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:02:09');
INSERT INTO `sys_logininfor` VALUES ('797', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 18:02:12');
INSERT INTO `sys_logininfor` VALUES ('798', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:02:19');
INSERT INTO `sys_logininfor` VALUES ('799', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:03:06');
INSERT INTO `sys_logininfor` VALUES ('800', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 18:13:45');
INSERT INTO `sys_logininfor` VALUES ('801', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:13:53');
INSERT INTO `sys_logininfor` VALUES ('802', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:16:35');
INSERT INTO `sys_logininfor` VALUES ('803', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:17:10');
INSERT INTO `sys_logininfor` VALUES ('804', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 18:17:36');
INSERT INTO `sys_logininfor` VALUES ('805', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:17:44');
INSERT INTO `sys_logininfor` VALUES ('806', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 18:18:40');
INSERT INTO `sys_logininfor` VALUES ('807', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:18:46');
INSERT INTO `sys_logininfor` VALUES ('808', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 18:24:16');
INSERT INTO `sys_logininfor` VALUES ('809', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:24:20');
INSERT INTO `sys_logininfor` VALUES ('810', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:26:43');
INSERT INTO `sys_logininfor` VALUES ('811', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 18:27:55');
INSERT INTO `sys_logininfor` VALUES ('812', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:27:59');
INSERT INTO `sys_logininfor` VALUES ('813', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 18:28:15');
INSERT INTO `sys_logininfor` VALUES ('814', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:28:26');
INSERT INTO `sys_logininfor` VALUES ('815', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 18:32:42');
INSERT INTO `sys_logininfor` VALUES ('816', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:45:21');
INSERT INTO `sys_logininfor` VALUES ('817', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 19:45:43');
INSERT INTO `sys_logininfor` VALUES ('818', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:45:48');
INSERT INTO `sys_logininfor` VALUES ('819', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 19:46:09');
INSERT INTO `sys_logininfor` VALUES ('820', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-10 19:46:13');
INSERT INTO `sys_logininfor` VALUES ('821', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:46:17');
INSERT INTO `sys_logininfor` VALUES ('822', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 19:47:05');
INSERT INTO `sys_logininfor` VALUES ('823', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:48:01');
INSERT INTO `sys_logininfor` VALUES ('824', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 19:48:57');
INSERT INTO `sys_logininfor` VALUES ('825', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 19:49:05');
INSERT INTO `sys_logininfor` VALUES ('826', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 19:49:09');
INSERT INTO `sys_logininfor` VALUES ('827', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:49:13');
INSERT INTO `sys_logininfor` VALUES ('828', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 19:50:57');
INSERT INTO `sys_logininfor` VALUES ('829', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:51:09');
INSERT INTO `sys_logininfor` VALUES ('830', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 19:58:41');
INSERT INTO `sys_logininfor` VALUES ('831', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:03:12');
INSERT INTO `sys_logininfor` VALUES ('832', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:03:27');
INSERT INTO `sys_logininfor` VALUES ('833', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:03:30');
INSERT INTO `sys_logininfor` VALUES ('834', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:03:37');
INSERT INTO `sys_logininfor` VALUES ('835', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:03:39');
INSERT INTO `sys_logininfor` VALUES ('836', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:03:50');
INSERT INTO `sys_logininfor` VALUES ('837', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:03:54');
INSERT INTO `sys_logininfor` VALUES ('838', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:19:24');
INSERT INTO `sys_logininfor` VALUES ('839', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:19:27');
INSERT INTO `sys_logininfor` VALUES ('840', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:21:37');
INSERT INTO `sys_logininfor` VALUES ('841', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:21:43');
INSERT INTO `sys_logininfor` VALUES ('842', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:24:22');
INSERT INTO `sys_logininfor` VALUES ('843', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:24:24');
INSERT INTO `sys_logininfor` VALUES ('844', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:25:01');
INSERT INTO `sys_logininfor` VALUES ('845', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:25:08');
INSERT INTO `sys_logininfor` VALUES ('846', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 20:26:53');
INSERT INTO `sys_logininfor` VALUES ('847', 'ad', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 20:26:59');
INSERT INTO `sys_logininfor` VALUES ('848', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 20:27:01');
INSERT INTO `sys_logininfor` VALUES ('849', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:04:58');
INSERT INTO `sys_logininfor` VALUES ('850', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:09:40');
INSERT INTO `sys_logininfor` VALUES ('851', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:11:35');
INSERT INTO `sys_logininfor` VALUES ('852', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 21:11:37');
INSERT INTO `sys_logininfor` VALUES ('853', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:11:41');
INSERT INTO `sys_logininfor` VALUES ('854', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:13:35');
INSERT INTO `sys_logininfor` VALUES ('855', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 21:17:36');
INSERT INTO `sys_logininfor` VALUES ('856', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:17:40');
INSERT INTO `sys_logininfor` VALUES ('857', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:38:57');
INSERT INTO `sys_logininfor` VALUES ('858', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:39:36');
INSERT INTO `sys_logininfor` VALUES ('859', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2019-10-10 21:41:56');
INSERT INTO `sys_logininfor` VALUES ('860', 'admin', '192.168.123.79', '内网IP', 'Chrome Mobile', 'Android Mobile', '1', '密码输入错误1次', '2019-10-10 21:43:19');
INSERT INTO `sys_logininfor` VALUES ('861', 'admin', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '验证码错误', '2019-10-10 21:43:21');
INSERT INTO `sys_logininfor` VALUES ('862', 'admin', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 21:43:24');
INSERT INTO `sys_logininfor` VALUES ('863', 'admin', '192.168.123.79', '内网IP', 'Chrome Mobile', 'Android Mobile', '0', '登录成功', '2019-10-10 21:43:35');
INSERT INTO `sys_logininfor` VALUES ('864', 'admin', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-10-10 21:44:43');
INSERT INTO `sys_logininfor` VALUES ('865', 'tea', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '1', '密码输入错误1次', '2019-10-10 21:44:56');
INSERT INTO `sys_logininfor` VALUES ('866', 'tea', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 21:45:09');
INSERT INTO `sys_logininfor` VALUES ('867', 'tea', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '退出成功', '2019-10-10 21:45:18');
INSERT INTO `sys_logininfor` VALUES ('868', '541713460201', '192.168.123.125', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2019-10-10 21:45:45');
INSERT INTO `sys_logininfor` VALUES ('869', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 21:49:15');
INSERT INTO `sys_logininfor` VALUES ('870', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:49:17');
INSERT INTO `sys_logininfor` VALUES ('871', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 21:49:26');
INSERT INTO `sys_logininfor` VALUES ('872', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 21:49:41');
INSERT INTO `sys_logininfor` VALUES ('873', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:49:43');
INSERT INTO `sys_logininfor` VALUES ('874', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:50:54');
INSERT INTO `sys_logininfor` VALUES ('875', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 21:57:21');
INSERT INTO `sys_logininfor` VALUES ('876', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:04:19');
INSERT INTO `sys_logininfor` VALUES ('877', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 22:06:45');
INSERT INTO `sys_logininfor` VALUES ('878', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 22:07:18');
INSERT INTO `sys_logininfor` VALUES ('879', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 22:07:21');
INSERT INTO `sys_logininfor` VALUES ('880', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:07:57');
INSERT INTO `sys_logininfor` VALUES ('881', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 22:09:56');
INSERT INTO `sys_logininfor` VALUES ('882', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:09:58');
INSERT INTO `sys_logininfor` VALUES ('883', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:11:45');
INSERT INTO `sys_logininfor` VALUES ('884', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:13:43');
INSERT INTO `sys_logininfor` VALUES ('885', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:15:12');
INSERT INTO `sys_logininfor` VALUES ('886', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:18:46');
INSERT INTO `sys_logininfor` VALUES ('887', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:25:11');
INSERT INTO `sys_logininfor` VALUES ('888', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-10 22:27:01');
INSERT INTO `sys_logininfor` VALUES ('889', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:27:04');
INSERT INTO `sys_logininfor` VALUES ('890', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:27:57');
INSERT INTO `sys_logininfor` VALUES ('891', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:29:08');
INSERT INTO `sys_logininfor` VALUES ('892', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-10 22:32:54');
INSERT INTO `sys_logininfor` VALUES ('893', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-10 22:32:59');
INSERT INTO `sys_logininfor` VALUES ('894', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:01:25');
INSERT INTO `sys_logininfor` VALUES ('895', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:10:18');
INSERT INTO `sys_logininfor` VALUES ('896', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 10:13:04');
INSERT INTO `sys_logininfor` VALUES ('897', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:13:16');
INSERT INTO `sys_logininfor` VALUES ('898', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:15:58');
INSERT INTO `sys_logininfor` VALUES ('899', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 10:15:59');
INSERT INTO `sys_logininfor` VALUES ('900', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-11 10:16:06');
INSERT INTO `sys_logininfor` VALUES ('901', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:16:11');
INSERT INTO `sys_logininfor` VALUES ('902', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 10:20:11');
INSERT INTO `sys_logininfor` VALUES ('903', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:20:19');
INSERT INTO `sys_logininfor` VALUES ('904', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:27:41');
INSERT INTO `sys_logininfor` VALUES ('905', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:32:05');
INSERT INTO `sys_logininfor` VALUES ('906', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:34:18');
INSERT INTO `sys_logininfor` VALUES ('907', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:34:49');
INSERT INTO `sys_logininfor` VALUES ('908', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:36:48');
INSERT INTO `sys_logininfor` VALUES ('909', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:38:04');
INSERT INTO `sys_logininfor` VALUES ('910', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:38:30');
INSERT INTO `sys_logininfor` VALUES ('911', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:40:39');
INSERT INTO `sys_logininfor` VALUES ('912', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:44:15');
INSERT INTO `sys_logininfor` VALUES ('913', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 10:58:45');
INSERT INTO `sys_logininfor` VALUES ('914', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 10:58:51');
INSERT INTO `sys_logininfor` VALUES ('915', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:58:53');
INSERT INTO `sys_logininfor` VALUES ('916', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 10:59:32');
INSERT INTO `sys_logininfor` VALUES ('917', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:00:02');
INSERT INTO `sys_logininfor` VALUES ('918', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:02:12');
INSERT INTO `sys_logininfor` VALUES ('919', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:05:08');
INSERT INTO `sys_logininfor` VALUES ('920', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:25:39');
INSERT INTO `sys_logininfor` VALUES ('921', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:28:37');
INSERT INTO `sys_logininfor` VALUES ('922', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:32:59');
INSERT INTO `sys_logininfor` VALUES ('923', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 11:33:23');
INSERT INTO `sys_logininfor` VALUES ('924', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 11:34:35');
INSERT INTO `sys_logininfor` VALUES ('925', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 12:55:14');
INSERT INTO `sys_logininfor` VALUES ('926', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 12:55:17');
INSERT INTO `sys_logininfor` VALUES ('927', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 15:59:24');
INSERT INTO `sys_logininfor` VALUES ('928', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:44:44');
INSERT INTO `sys_logininfor` VALUES ('929', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 16:44:55');
INSERT INTO `sys_logininfor` VALUES ('930', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:45:12');
INSERT INTO `sys_logininfor` VALUES ('931', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 16:47:57');
INSERT INTO `sys_logininfor` VALUES ('932', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:47:59');
INSERT INTO `sys_logininfor` VALUES ('933', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:53:42');
INSERT INTO `sys_logininfor` VALUES ('934', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-11 16:54:53');
INSERT INTO `sys_logininfor` VALUES ('935', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:54:57');
INSERT INTO `sys_logininfor` VALUES ('936', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 16:59:25');
INSERT INTO `sys_logininfor` VALUES ('937', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 17:03:33');
INSERT INTO `sys_logininfor` VALUES ('938', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:03:38');
INSERT INTO `sys_logininfor` VALUES ('939', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:04:42');
INSERT INTO `sys_logininfor` VALUES ('940', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:08:29');
INSERT INTO `sys_logininfor` VALUES ('941', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:09:24');
INSERT INTO `sys_logininfor` VALUES ('942', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:17:14');
INSERT INTO `sys_logininfor` VALUES ('943', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:26:14');
INSERT INTO `sys_logininfor` VALUES ('944', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 17:33:21');
INSERT INTO `sys_logininfor` VALUES ('945', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:33:23');
INSERT INTO `sys_logininfor` VALUES ('946', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 17:35:08');
INSERT INTO `sys_logininfor` VALUES ('947', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 17:35:10');
INSERT INTO `sys_logininfor` VALUES ('948', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:35:12');
INSERT INTO `sys_logininfor` VALUES ('949', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:39:32');
INSERT INTO `sys_logininfor` VALUES ('950', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 17:51:40');
INSERT INTO `sys_logininfor` VALUES ('951', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-11 18:13:26');
INSERT INTO `sys_logininfor` VALUES ('952', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:13:28');
INSERT INTO `sys_logininfor` VALUES ('953', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:14:55');
INSERT INTO `sys_logininfor` VALUES ('954', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 18:19:02');
INSERT INTO `sys_logininfor` VALUES ('955', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:10:32');
INSERT INTO `sys_logininfor` VALUES ('956', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 19:16:24');
INSERT INTO `sys_logininfor` VALUES ('957', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-11 19:16:28');
INSERT INTO `sys_logininfor` VALUES ('958', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:16:46');
INSERT INTO `sys_logininfor` VALUES ('959', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:21:05');
INSERT INTO `sys_logininfor` VALUES ('960', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:26:55');
INSERT INTO `sys_logininfor` VALUES ('961', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:41:52');
INSERT INTO `sys_logininfor` VALUES ('962', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 19:44:51');
INSERT INTO `sys_logininfor` VALUES ('963', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:44:56');
INSERT INTO `sys_logininfor` VALUES ('964', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:50:53');
INSERT INTO `sys_logininfor` VALUES ('965', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 19:55:30');
INSERT INTO `sys_logininfor` VALUES ('966', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 20:29:00');
INSERT INTO `sys_logininfor` VALUES ('967', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-11 20:32:58');
INSERT INTO `sys_logininfor` VALUES ('968', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 20:33:03');
INSERT INTO `sys_logininfor` VALUES ('969', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 20:38:57');
INSERT INTO `sys_logininfor` VALUES ('970', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 20:52:45');
INSERT INTO `sys_logininfor` VALUES ('971', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:16:02');
INSERT INTO `sys_logininfor` VALUES ('972', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:19:38');
INSERT INTO `sys_logininfor` VALUES ('973', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:20:50');
INSERT INTO `sys_logininfor` VALUES ('974', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 21:22:12');
INSERT INTO `sys_logininfor` VALUES ('975', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:22:17');
INSERT INTO `sys_logininfor` VALUES ('976', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:34:08');
INSERT INTO `sys_logininfor` VALUES ('977', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:40:25');
INSERT INTO `sys_logininfor` VALUES ('978', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:41:40');
INSERT INTO `sys_logininfor` VALUES ('979', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-11 21:51:37');
INSERT INTO `sys_logininfor` VALUES ('980', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:51:47');
INSERT INTO `sys_logininfor` VALUES ('981', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:56:05');
INSERT INTO `sys_logininfor` VALUES ('982', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 21:57:38');
INSERT INTO `sys_logininfor` VALUES ('983', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 22:13:45');
INSERT INTO `sys_logininfor` VALUES ('984', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-11 22:14:58');
INSERT INTO `sys_logininfor` VALUES ('985', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 18:58:58');
INSERT INTO `sys_logininfor` VALUES ('986', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 19:05:08');
INSERT INTO `sys_logininfor` VALUES ('987', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:05:10');
INSERT INTO `sys_logininfor` VALUES ('988', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:21:35');
INSERT INTO `sys_logininfor` VALUES ('989', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:31:05');
INSERT INTO `sys_logininfor` VALUES ('990', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:33:03');
INSERT INTO `sys_logininfor` VALUES ('991', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:37:35');
INSERT INTO `sys_logininfor` VALUES ('992', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:46:22');
INSERT INTO `sys_logininfor` VALUES ('993', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 19:48:05');
INSERT INTO `sys_logininfor` VALUES ('994', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:03:55');
INSERT INTO `sys_logininfor` VALUES ('995', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:06:48');
INSERT INTO `sys_logininfor` VALUES ('996', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:12:51');
INSERT INTO `sys_logininfor` VALUES ('997', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:15:40');
INSERT INTO `sys_logininfor` VALUES ('998', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 20:18:48');
INSERT INTO `sys_logininfor` VALUES ('999', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:18:51');
INSERT INTO `sys_logininfor` VALUES ('1000', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:19:58');
INSERT INTO `sys_logininfor` VALUES ('1001', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 20:21:31');
INSERT INTO `sys_logininfor` VALUES ('1002', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:21:35');
INSERT INTO `sys_logininfor` VALUES ('1003', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:23:06');
INSERT INTO `sys_logininfor` VALUES ('1004', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:26:49');
INSERT INTO `sys_logininfor` VALUES ('1005', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:29:45');
INSERT INTO `sys_logininfor` VALUES ('1006', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:31:34');
INSERT INTO `sys_logininfor` VALUES ('1007', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:33:57');
INSERT INTO `sys_logininfor` VALUES ('1008', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 20:35:59');
INSERT INTO `sys_logininfor` VALUES ('1009', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:36:02');
INSERT INTO `sys_logininfor` VALUES ('1010', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:42:54');
INSERT INTO `sys_logininfor` VALUES ('1011', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 20:43:41');
INSERT INTO `sys_logininfor` VALUES ('1012', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 20:43:42');
INSERT INTO `sys_logininfor` VALUES ('1013', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:43:46');
INSERT INTO `sys_logininfor` VALUES ('1014', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:53:21');
INSERT INTO `sys_logininfor` VALUES ('1015', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 20:57:27');
INSERT INTO `sys_logininfor` VALUES ('1016', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:00:31');
INSERT INTO `sys_logininfor` VALUES ('1017', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:07:15');
INSERT INTO `sys_logininfor` VALUES ('1018', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 21:12:56');
INSERT INTO `sys_logininfor` VALUES ('1019', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:12:58');
INSERT INTO `sys_logininfor` VALUES ('1020', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:14:57');
INSERT INTO `sys_logininfor` VALUES ('1021', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:26:13');
INSERT INTO `sys_logininfor` VALUES ('1022', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:27:08');
INSERT INTO `sys_logininfor` VALUES ('1023', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:33:28');
INSERT INTO `sys_logininfor` VALUES ('1024', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:34:46');
INSERT INTO `sys_logininfor` VALUES ('1025', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 21:57:19');
INSERT INTO `sys_logininfor` VALUES ('1026', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:28:03');
INSERT INTO `sys_logininfor` VALUES ('1027', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:30:05');
INSERT INTO `sys_logininfor` VALUES ('1028', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:33:04');
INSERT INTO `sys_logininfor` VALUES ('1029', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:36:37');
INSERT INTO `sys_logininfor` VALUES ('1030', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 22:37:39');
INSERT INTO `sys_logininfor` VALUES ('1031', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-12 22:37:42');
INSERT INTO `sys_logininfor` VALUES ('1032', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:37:46');
INSERT INTO `sys_logininfor` VALUES ('1033', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:44:31');
INSERT INTO `sys_logininfor` VALUES ('1034', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:46:04');
INSERT INTO `sys_logininfor` VALUES ('1035', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:47:14');
INSERT INTO `sys_logininfor` VALUES ('1036', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:48:44');
INSERT INTO `sys_logininfor` VALUES ('1037', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:49:46');
INSERT INTO `sys_logininfor` VALUES ('1038', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:52:01');
INSERT INTO `sys_logininfor` VALUES ('1039', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:58:19');
INSERT INTO `sys_logininfor` VALUES ('1040', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 22:59:21');
INSERT INTO `sys_logininfor` VALUES ('1041', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-12 23:01:21');
INSERT INTO `sys_logininfor` VALUES ('1042', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 11:39:19');
INSERT INTO `sys_logininfor` VALUES ('1043', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 11:40:11');
INSERT INTO `sys_logininfor` VALUES ('1044', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 11:42:22');
INSERT INTO `sys_logininfor` VALUES ('1045', 'admin', '120.194.126.210', '河南 许昌', 'Chrome', 'Mac OS X', '0', '退出成功', '2019-10-15 12:18:00');
INSERT INTO `sys_logininfor` VALUES ('1046', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:07:41');
INSERT INTO `sys_logininfor` VALUES ('1047', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:17:55');
INSERT INTO `sys_logininfor` VALUES ('1048', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:18:11');
INSERT INTO `sys_logininfor` VALUES ('1049', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:18:27');
INSERT INTO `sys_logininfor` VALUES ('1050', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 15:20:22');
INSERT INTO `sys_logininfor` VALUES ('1051', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:20:26');
INSERT INTO `sys_logininfor` VALUES ('1052', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:20:34');
INSERT INTO `sys_logininfor` VALUES ('1053', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:20:41');
INSERT INTO `sys_logininfor` VALUES ('1054', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:26:43');
INSERT INTO `sys_logininfor` VALUES ('1055', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:27:53');
INSERT INTO `sys_logininfor` VALUES ('1056', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:27:59');
INSERT INTO `sys_logininfor` VALUES ('1057', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:28:21');
INSERT INTO `sys_logininfor` VALUES ('1058', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:35:32');
INSERT INTO `sys_logininfor` VALUES ('1059', 'admin', '172.30.128.69', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:38:01');
INSERT INTO `sys_logininfor` VALUES ('1060', 'admin', '172.30.128.69', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:39:56');
INSERT INTO `sys_logininfor` VALUES ('1061', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:41:37');
INSERT INTO `sys_logininfor` VALUES ('1062', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:51:10');
INSERT INTO `sys_logininfor` VALUES ('1063', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:51:21');
INSERT INTO `sys_logininfor` VALUES ('1064', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 15:56:51');
INSERT INTO `sys_logininfor` VALUES ('1065', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:56:54');
INSERT INTO `sys_logininfor` VALUES ('1066', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 15:58:19');
INSERT INTO `sys_logininfor` VALUES ('1067', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 16:01:03');
INSERT INTO `sys_logininfor` VALUES ('1068', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:01:04');
INSERT INTO `sys_logininfor` VALUES ('1069', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:02:41');
INSERT INTO `sys_logininfor` VALUES ('1070', '541713460202', '172.30.128.69', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 16:03:19');
INSERT INTO `sys_logininfor` VALUES ('1071', '541713460202', '172.30.128.69', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:03:27');
INSERT INTO `sys_logininfor` VALUES ('1072', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:05:59');
INSERT INTO `sys_logininfor` VALUES ('1073', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 16:06:36');
INSERT INTO `sys_logininfor` VALUES ('1074', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:19:09');
INSERT INTO `sys_logininfor` VALUES ('1075', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:37:00');
INSERT INTO `sys_logininfor` VALUES ('1076', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:46:31');
INSERT INTO `sys_logininfor` VALUES ('1077', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:48:31');
INSERT INTO `sys_logininfor` VALUES ('1078', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 16:55:48');
INSERT INTO `sys_logininfor` VALUES ('1079', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:27:56');
INSERT INTO `sys_logininfor` VALUES ('1080', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 17:28:19');
INSERT INTO `sys_logininfor` VALUES ('1081', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:28:25');
INSERT INTO `sys_logininfor` VALUES ('1082', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 17:30:43');
INSERT INTO `sys_logininfor` VALUES ('1083', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:30:47');
INSERT INTO `sys_logininfor` VALUES ('1084', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:41:47');
INSERT INTO `sys_logininfor` VALUES ('1085', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:43:14');
INSERT INTO `sys_logininfor` VALUES ('1086', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 17:44:21');
INSERT INTO `sys_logininfor` VALUES ('1087', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 17:44:25');
INSERT INTO `sys_logininfor` VALUES ('1088', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 17:44:48');
INSERT INTO `sys_logininfor` VALUES ('1089', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:21:24');
INSERT INTO `sys_logininfor` VALUES ('1090', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:38:15');
INSERT INTO `sys_logininfor` VALUES ('1091', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:43:35');
INSERT INTO `sys_logininfor` VALUES ('1092', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:45:42');
INSERT INTO `sys_logininfor` VALUES ('1093', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:48:24');
INSERT INTO `sys_logininfor` VALUES ('1094', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 18:49:53');
INSERT INTO `sys_logininfor` VALUES ('1095', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:50:38');
INSERT INTO `sys_logininfor` VALUES ('1096', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 18:56:47');
INSERT INTO `sys_logininfor` VALUES ('1097', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 18:57:35');
INSERT INTO `sys_logininfor` VALUES ('1098', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-15 18:57:40');
INSERT INTO `sys_logininfor` VALUES ('1099', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误2次', '2019-10-15 18:58:05');
INSERT INTO `sys_logininfor` VALUES ('1100', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误3次', '2019-10-15 18:59:09');
INSERT INTO `sys_logininfor` VALUES ('1101', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误4次', '2019-10-15 18:59:20');
INSERT INTO `sys_logininfor` VALUES ('1102', '3460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2019-10-15 19:00:24');
INSERT INTO `sys_logininfor` VALUES ('1103', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:01:37');
INSERT INTO `sys_logininfor` VALUES ('1104', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:05:31');
INSERT INTO `sys_logininfor` VALUES ('1105', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 19:05:55');
INSERT INTO `sys_logininfor` VALUES ('1106', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:05:58');
INSERT INTO `sys_logininfor` VALUES ('1107', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 19:06:07');
INSERT INTO `sys_logininfor` VALUES ('1108', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:06:13');
INSERT INTO `sys_logininfor` VALUES ('1109', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:09:10');
INSERT INTO `sys_logininfor` VALUES ('1110', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:11:37');
INSERT INTO `sys_logininfor` VALUES ('1111', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:16:57');
INSERT INTO `sys_logininfor` VALUES ('1112', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:18:04');
INSERT INTO `sys_logininfor` VALUES ('1113', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 19:19:19');
INSERT INTO `sys_logininfor` VALUES ('1114', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:19:22');
INSERT INTO `sys_logininfor` VALUES ('1115', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:24:57');
INSERT INTO `sys_logininfor` VALUES ('1116', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 19:26:11');
INSERT INTO `sys_logininfor` VALUES ('1117', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:26:13');
INSERT INTO `sys_logininfor` VALUES ('1118', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 19:34:06');
INSERT INTO `sys_logininfor` VALUES ('1119', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:34:08');
INSERT INTO `sys_logininfor` VALUES ('1120', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:35:13');
INSERT INTO `sys_logininfor` VALUES ('1121', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 19:35:39');
INSERT INTO `sys_logininfor` VALUES ('1122', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:35:43');
INSERT INTO `sys_logininfor` VALUES ('1123', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-15 19:57:12');
INSERT INTO `sys_logininfor` VALUES ('1124', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 19:57:21');
INSERT INTO `sys_logininfor` VALUES ('1125', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:01:10');
INSERT INTO `sys_logininfor` VALUES ('1126', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:02:46');
INSERT INTO `sys_logininfor` VALUES ('1127', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:06:37');
INSERT INTO `sys_logininfor` VALUES ('1128', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:07:21');
INSERT INTO `sys_logininfor` VALUES ('1129', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:08:34');
INSERT INTO `sys_logininfor` VALUES ('1130', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 20:18:47');
INSERT INTO `sys_logininfor` VALUES ('1131', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:18:52');
INSERT INTO `sys_logininfor` VALUES ('1132', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:22:57');
INSERT INTO `sys_logininfor` VALUES ('1133', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:48:17');
INSERT INTO `sys_logininfor` VALUES ('1134', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 20:48:39');
INSERT INTO `sys_logininfor` VALUES ('1135', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:48:41');
INSERT INTO `sys_logininfor` VALUES ('1136', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:49:08');
INSERT INTO `sys_logininfor` VALUES ('1137', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:51:07');
INSERT INTO `sys_logininfor` VALUES ('1138', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:53:37');
INSERT INTO `sys_logininfor` VALUES ('1139', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:53:53');
INSERT INTO `sys_logininfor` VALUES ('1140', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:54:50');
INSERT INTO `sys_logininfor` VALUES ('1141', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 20:55:14');
INSERT INTO `sys_logininfor` VALUES ('1142', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:55:16');
INSERT INTO `sys_logininfor` VALUES ('1143', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 20:59:26');
INSERT INTO `sys_logininfor` VALUES ('1144', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:08:30');
INSERT INTO `sys_logininfor` VALUES ('1145', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:09:37');
INSERT INTO `sys_logininfor` VALUES ('1146', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:12:29');
INSERT INTO `sys_logininfor` VALUES ('1147', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:17:33');
INSERT INTO `sys_logininfor` VALUES ('1148', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:17:38');
INSERT INTO `sys_logininfor` VALUES ('1149', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:20:56');
INSERT INTO `sys_logininfor` VALUES ('1150', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:20:59');
INSERT INTO `sys_logininfor` VALUES ('1151', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:26:21');
INSERT INTO `sys_logininfor` VALUES ('1152', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:27:58');
INSERT INTO `sys_logininfor` VALUES ('1153', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:28:01');
INSERT INTO `sys_logininfor` VALUES ('1154', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:28:03');
INSERT INTO `sys_logininfor` VALUES ('1155', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:28:06');
INSERT INTO `sys_logininfor` VALUES ('1156', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:28:09');
INSERT INTO `sys_logininfor` VALUES ('1157', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:28:12');
INSERT INTO `sys_logininfor` VALUES ('1158', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:31:30');
INSERT INTO `sys_logininfor` VALUES ('1159', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:31:37');
INSERT INTO `sys_logininfor` VALUES ('1160', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:33:48');
INSERT INTO `sys_logininfor` VALUES ('1161', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:33:51');
INSERT INTO `sys_logininfor` VALUES ('1162', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:37:53');
INSERT INTO `sys_logininfor` VALUES ('1163', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:37:57');
INSERT INTO `sys_logininfor` VALUES ('1164', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:37:59');
INSERT INTO `sys_logininfor` VALUES ('1165', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:38:02');
INSERT INTO `sys_logininfor` VALUES ('1166', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 21:43:50');
INSERT INTO `sys_logininfor` VALUES ('1167', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:43:53');
INSERT INTO `sys_logininfor` VALUES ('1168', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 21:44:39');
INSERT INTO `sys_logininfor` VALUES ('1169', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:44:49');
INSERT INTO `sys_logininfor` VALUES ('1170', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:48:26');
INSERT INTO `sys_logininfor` VALUES ('1171', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 21:48:38');
INSERT INTO `sys_logininfor` VALUES ('1172', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:48:50');
INSERT INTO `sys_logininfor` VALUES ('1173', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:52:26');
INSERT INTO `sys_logininfor` VALUES ('1174', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 21:52:51');
INSERT INTO `sys_logininfor` VALUES ('1175', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:53:00');
INSERT INTO `sys_logininfor` VALUES ('1176', '541413230137', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-15 21:54:23');
INSERT INTO `sys_logininfor` VALUES ('1177', '541413230137', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2019-10-15 21:54:26');
INSERT INTO `sys_logininfor` VALUES ('1178', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:54:34');
INSERT INTO `sys_logininfor` VALUES ('1179', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:56:37');
INSERT INTO `sys_logininfor` VALUES ('1180', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:57:38');
INSERT INTO `sys_logininfor` VALUES ('1181', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 21:57:58');
INSERT INTO `sys_logininfor` VALUES ('1182', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 21:58:04');
INSERT INTO `sys_logininfor` VALUES ('1183', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 22:07:51');
INSERT INTO `sys_logininfor` VALUES ('1184', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:07:54');
INSERT INTO `sys_logininfor` VALUES ('1185', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:12:04');
INSERT INTO `sys_logininfor` VALUES ('1186', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:20:01');
INSERT INTO `sys_logininfor` VALUES ('1187', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 22:21:52');
INSERT INTO `sys_logininfor` VALUES ('1188', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:21:55');
INSERT INTO `sys_logininfor` VALUES ('1189', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:30:22');
INSERT INTO `sys_logininfor` VALUES ('1190', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:30:30');
INSERT INTO `sys_logininfor` VALUES ('1191', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:33:29');
INSERT INTO `sys_logininfor` VALUES ('1192', '3460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:33:36');
INSERT INTO `sys_logininfor` VALUES ('1193', '3460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:36:31');
INSERT INTO `sys_logininfor` VALUES ('1194', '541713460204', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:36:41');
INSERT INTO `sys_logininfor` VALUES ('1195', '541713460204', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:40:10');
INSERT INTO `sys_logininfor` VALUES ('1196', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:40:19');
INSERT INTO `sys_logininfor` VALUES ('1197', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:42:13');
INSERT INTO `sys_logininfor` VALUES ('1198', '541613460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:42:25');
INSERT INTO `sys_logininfor` VALUES ('1199', '541613460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:43:43');
INSERT INTO `sys_logininfor` VALUES ('1200', '541713460203', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:44:02');
INSERT INTO `sys_logininfor` VALUES ('1201', '541713460203', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:44:37');
INSERT INTO `sys_logininfor` VALUES ('1202', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-15 22:44:43');
INSERT INTO `sys_logininfor` VALUES ('1203', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:44:44');
INSERT INTO `sys_logininfor` VALUES ('1204', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 22:46:13');
INSERT INTO `sys_logininfor` VALUES ('1205', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:46:19');
INSERT INTO `sys_logininfor` VALUES ('1206', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 22:57:55');
INSERT INTO `sys_logininfor` VALUES ('1207', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 23:02:57');
INSERT INTO `sys_logininfor` VALUES ('1208', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 23:03:17');
INSERT INTO `sys_logininfor` VALUES ('1209', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 23:03:23');
INSERT INTO `sys_logininfor` VALUES ('1210', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 23:03:47');
INSERT INTO `sys_logininfor` VALUES ('1211', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 23:04:24');
INSERT INTO `sys_logininfor` VALUES ('1212', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-15 23:23:05');
INSERT INTO `sys_logininfor` VALUES ('1213', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-15 23:23:10');
INSERT INTO `sys_logininfor` VALUES ('1214', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-17 14:11:19');
INSERT INTO `sys_logininfor` VALUES ('1215', '541713460202', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-17 14:16:54');
INSERT INTO `sys_logininfor` VALUES ('1216', 'tea', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '对不起，您的账号已被删除', '2019-10-17 14:17:02');
INSERT INTO `sys_logininfor` VALUES ('1217', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-17 14:17:10');
INSERT INTO `sys_logininfor` VALUES ('1218', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-17 14:17:12');
INSERT INTO `sys_logininfor` VALUES ('1219', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-17 14:19:26');
INSERT INTO `sys_logininfor` VALUES ('1220', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 16:25:41');
INSERT INTO `sys_logininfor` VALUES ('1221', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-18 16:25:44');
INSERT INTO `sys_logininfor` VALUES ('1222', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 16:25:48');
INSERT INTO `sys_logininfor` VALUES ('1223', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-18 16:26:12');
INSERT INTO `sys_logininfor` VALUES ('1224', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 16:26:20');
INSERT INTO `sys_logininfor` VALUES ('1225', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-18 16:29:04');
INSERT INTO `sys_logininfor` VALUES ('1226', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 16:29:14');
INSERT INTO `sys_logininfor` VALUES ('1227', '3460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-18 16:31:51');
INSERT INTO `sys_logininfor` VALUES ('1228', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 16:31:55');
INSERT INTO `sys_logininfor` VALUES ('1229', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 17:07:35');
INSERT INTO `sys_logininfor` VALUES ('1230', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 17:08:15');
INSERT INTO `sys_logininfor` VALUES ('1231', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-18 18:43:29');
INSERT INTO `sys_logininfor` VALUES ('1232', '541613460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 14:02:04');
INSERT INTO `sys_logininfor` VALUES ('1233', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:14:30');
INSERT INTO `sys_logininfor` VALUES ('1234', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-19 15:16:45');
INSERT INTO `sys_logininfor` VALUES ('1235', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:18:13');
INSERT INTO `sys_logininfor` VALUES ('1236', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '验证码错误', '2019-10-19 15:48:40');
INSERT INTO `sys_logininfor` VALUES ('1237', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:48:42');
INSERT INTO `sys_logininfor` VALUES ('1238', '541713460201', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-19 15:49:30');
INSERT INTO `sys_logininfor` VALUES ('1239', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:49:39');
INSERT INTO `sys_logininfor` VALUES ('1240', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:52:56');
INSERT INTO `sys_logininfor` VALUES ('1241', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2019-10-19 15:53:37');
INSERT INTO `sys_logininfor` VALUES ('1242', 'dq', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2019-10-19 15:53:43');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `url` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1064 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', '#', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', '#', 'M', '0', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', '#', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统工具目录');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', '/system/dept', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', '/system/post', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', '/system/notice', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', 'C', '0', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', '/monitor/data', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '3', '/monitor/server', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '表单构建', '3', '1', '/tool/build', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('114', '代码生成', '3', '2', '/tool/gen', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('115', '系统接口', '3', '3', '/tool/swagger', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '#', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '#', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '#', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '#', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '#', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '#', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '#', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '#', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '#', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '#', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '#', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '#', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '#', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '#', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '#', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '#', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '#', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '#', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '#', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '#', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1041', '详细信息', '500', '3', '#', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1042', '日志导出', '500', '4', '#', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1043', '登录查询', '501', '1', '#', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1044', '登录删除', '501', '2', '#', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1045', '日志导出', '501', '3', '#', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1054', '任务详细', '110', '6', '#', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1055', '任务导出', '110', '7', '#', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1056', '生成查询', '114', '1', '#', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1057', '生成代码', '114', '2', '#', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES ('1058', '评分', '0', '4', '#', 'M', '0', null, 'fa fa-edit', 'admin', '2019-09-28 22:25:03', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '组内评分', '1058', '1', '/system/mutual_evaluation/inter-group_evaluation', 'C', '0', '', '#', 'admin', '2019-09-28 22:25:42', 'admin', '2019-10-10 12:12:10', '');
INSERT INTO `sys_menu` VALUES ('1060', '年级互评', '1058', '2', '/system/mutual_evaluation/grade_evaluation', 'C', '0', '', '#', 'admin', '2019-09-28 22:26:58', 'admin', '2019-10-10 13:59:41', '');
INSERT INTO `sys_menu` VALUES ('1061', '课题组员评分', '1058', '3', '/system/teacher_evaluation', 'C', '0', '', '#', 'admin', '2019-09-28 22:28:22', 'admin', '2019-10-10 20:21:01', '');
INSERT INTO `sys_menu` VALUES ('1062', '查看组员评分状态', '1058', '4', '/system/teacher_evaluation/stuOfTea', 'C', '0', '', '#', 'admin', '2019-10-10 20:20:20', 'admin', '2019-10-10 21:07:16', '');
INSERT INTO `sys_menu` VALUES ('1063', '查看成绩', '1058', '5', '/system/mutual_evaluation/score', 'C', '0', '', '#', 'admin', '2019-10-10 20:27:58', 'admin', '2019-10-11 18:14:13', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) DEFAULT NULL COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '用户管理', '5', 'com.yucsoft.project.system.user.controller.UserController.export()', '1', 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-05-17 17:40:41');
INSERT INTO `sys_oper_log` VALUES ('101', '用户管理', '5', 'com.yucsoft.project.system.user.controller.UserController.export()', '1', 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-05-17 17:41:10');
INSERT INTO `sys_oper_log` VALUES ('102', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.changeStatus()', '1', 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"status\":[\"1\"]}', '0', null, '2019-05-17 17:41:37');
INSERT INTO `sys_oper_log` VALUES ('103', '用户管理', '5', 'com.yucsoft.project.system.user.controller.UserController.export()', '1', 'admin', '研发部门', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"0\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-05-17 17:41:53');
INSERT INTO `sys_oper_log` VALUES ('104', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"郑州轻工业大学\"],\"orderNum\":[\"0\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:33:27');
INSERT INTO `sys_oper_log` VALUES ('105', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"100\"],\"parentId\":[\"0\"],\"parentName\":[\"无\"],\"deptName\":[\"参与的大学\"],\"orderNum\":[\"0\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:34:36');
INSERT INTO `sys_oper_log` VALUES ('106', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"101\"],\"parentId\":[\"100\"],\"parentName\":[\"参与的大学\"],\"deptName\":[\"郑州轻工业大学\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:35:14');
INSERT INTO `sys_oper_log` VALUES ('107', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电子信息学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:35:32');
INSERT INTO `sys_oper_log` VALUES ('108', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"软件学员\"],\"orderNum\":[\"2\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:35:55');
INSERT INTO `sys_oper_log` VALUES ('109', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"软件学院\"],\"orderNum\":[\"2\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:36:06');
INSERT INTO `sys_oper_log` VALUES ('110', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"107\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"计算机学院\"],\"orderNum\":[\"5\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:36:22');
INSERT INTO `sys_oper_log` VALUES ('111', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"102\"],\"parentId\":[\"100\"],\"parentName\":[\"参与的大学\"],\"deptName\":[\"郑州大学\"],\"orderNum\":[\"2\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:36:34');
INSERT INTO `sys_oper_log` VALUES ('112', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"108\"],\"parentId\":[\"102\"],\"parentName\":[\"郑州大学\"],\"deptName\":[\"软件学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:36:48');
INSERT INTO `sys_oper_log` VALUES ('113', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"109\"],\"parentId\":[\"102\"],\"parentName\":[\"郑州大学\"],\"deptName\":[\"计算机学院\"],\"orderNum\":[\"2\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-27 10:36:57');
INSERT INTO `sys_oper_log` VALUES ('114', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"学生\"],\"postCode\":[\"stu\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-09-27 10:39:31');
INSERT INTO `sys_oper_log` VALUES ('115', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '研发部门', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"3\"],\"postName\":[\"教师\"],\"postCode\":[\"tea\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-09-27 10:39:44');
INSERT INTO `sys_oper_log` VALUES ('116', '岗位管理', '3', 'com.yucsoft.project.system.post.controller.PostController.remove()', '1', 'admin', '研发部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-09-27 10:39:56');
INSERT INTO `sys_oper_log` VALUES ('117', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-27 10:42:22');
INSERT INTO `sys_oper_log` VALUES ('118', '岗位管理', '3', 'com.yucsoft.project.system.post.controller.PostController.remove()', '1', 'admin', '电子信息学院', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-09-28 11:16:58');
INSERT INTO `sys_oper_log` VALUES ('119', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"电子信息学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 11:18:52');
INSERT INTO `sys_oper_log` VALUES ('120', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"电子信息学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 11:19:02');
INSERT INTO `sys_oper_log` VALUES ('121', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '电子信息学院', '/system/user/resetPwd/1', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 11:19:05');
INSERT INTO `sys_oper_log` VALUES ('122', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '电子信息学院', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"],\"password\":[\"admin\"]}', '0', null, '2019-09-28 11:19:12');
INSERT INTO `sys_oper_log` VALUES ('123', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"电子信息学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 11:19:34');
INSERT INTO `sys_oper_log` VALUES ('124', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '电子信息学院', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"董事长\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-09-28 11:19:47');
INSERT INTO `sys_oper_log` VALUES ('125', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.changeStatus()', '1', 'admin', '电子信息学院', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 11:20:19');
INSERT INTO `sys_oper_log` VALUES ('126', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '电子信息学院', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 11:20:21');
INSERT INTO `sys_oper_log` VALUES ('127', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '电子信息学院', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"ry\"],\"password\":[\"admin\"]}', '0', null, '2019-09-28 11:20:29');
INSERT INTO `sys_oper_log` VALUES ('128', '岗位管理', '3', 'com.yucsoft.project.system.post.controller.PostController.remove()', '1', 'ry', '测试部门', '/system/post/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-09-28 11:22:10');
INSERT INTO `sys_oper_log` VALUES ('129', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '电子信息学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103\"]}', '0', null, '2019-09-28 11:22:55');
INSERT INTO `sys_oper_log` VALUES ('130', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 11:24:24');
INSERT INTO `sys_oper_log` VALUES ('131', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"104\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"软件学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"role\":[\"2\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 11:24:36');
INSERT INTO `sys_oper_log` VALUES ('132', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '电子信息学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 11:24:54');
INSERT INTO `sys_oper_log` VALUES ('133', '角色管理', '3', 'com.yucsoft.project.system.role.controller.RoleController.remove()', '1', 'admin', '电子信息学院', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-09-28 11:26:38');
INSERT INTO `sys_oper_log` VALUES ('134', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '电子信息学院', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"104\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"软件学院\"],\"orderNum\":[\"2\"],\"leader\":[\"宇\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 11:28:19');
INSERT INTO `sys_oper_log` VALUES ('135', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '电子信息学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"普通角色\"],\"roleKey\":[\"common\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,104\"]}', '0', null, '2019-09-28 11:28:36');
INSERT INTO `sys_oper_log` VALUES ('136', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'ry', '软件学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 12:10:49');
INSERT INTO `sys_oper_log` VALUES ('137', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '电子信息学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"软件学院\"],\"roleKey\":[\"ruanjian\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"软件学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,113,114,1056,1057,115\"]}', '0', null, '2019-09-28 12:34:52');
INSERT INTO `sys_oper_log` VALUES ('138', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'ry', '软件学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 12:36:27');
INSERT INTO `sys_oper_log` VALUES ('139', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.cancelAuthUser()', '1', 'ry', '软件学院', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userId\":[\"2\"]}', '0', null, '2019-09-28 12:41:33');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'ry', '软件学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"104\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"软件学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 12:43:00');
INSERT INTO `sys_oper_log` VALUES ('141', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:55:35');
INSERT INTO `sys_oper_log` VALUES ('142', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'admin', '电子信息学院', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userIds\":[\"123\"]}', '0', null, '2019-09-28 13:56:06');
INSERT INTO `sys_oper_log` VALUES ('143', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'admin', '电子信息学院', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"123\"]}', '0', null, '2019-09-28 13:57:23');
INSERT INTO `sys_oper_log` VALUES ('144', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"104\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"软件学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 13:57:34');
INSERT INTO `sys_oper_log` VALUES ('145', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:13');
INSERT INTO `sys_oper_log` VALUES ('146', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"电子信息学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"1\"],\"remark\":[\"测试员\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 13:58:27');
INSERT INTO `sys_oper_log` VALUES ('147', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/104', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:36');
INSERT INTO `sys_oper_log` VALUES ('148', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/105', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:39');
INSERT INTO `sys_oper_log` VALUES ('149', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/106', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:41');
INSERT INTO `sys_oper_log` VALUES ('150', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/107', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:45');
INSERT INTO `sys_oper_log` VALUES ('151', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:48');
INSERT INTO `sys_oper_log` VALUES ('152', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/108', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:54');
INSERT INTO `sys_oper_log` VALUES ('153', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/109', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:58:57');
INSERT INTO `sys_oper_log` VALUES ('154', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '电子信息学院', '/system/dept/remove/102', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 13:59:01');
INSERT INTO `sys_oper_log` VALUES ('155', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '电子信息学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气工程学院\"],\"roleKey\":[\"电气\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"软件学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 13:59:45');
INSERT INTO `sys_oper_log` VALUES ('156', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '电子信息学院', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电气信息工程学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:00:36');
INSERT INTO `sys_oper_log` VALUES ('157', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"103\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"2410338910@qq.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2019-09-28 14:01:30');
INSERT INTO `sys_oper_log` VALUES ('158', '部门管理', '1', 'com.yucsoft.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '电子信息学院', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"超级管理员\"],\"orderNum\":[\"2\"],\"leader\":[\"王烨\"],\"phone\":[\"18625566260\"],\"email\":[\"2410338910@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:02:21');
INSERT INTO `sys_oper_log` VALUES ('159', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"110\"],\"userName\":[\"宇昶\"],\"dept.deptName\":[\"超级管理员\"],\"phonenumber\":[\"15888888888\"],\"email\":[\"ry@163.com\"],\"loginName\":[\"admin\"],\"sex\":[\"1\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2019-09-28 14:02:36');
INSERT INTO `sys_oper_log` VALUES ('160', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"deptId\":[\"110\"],\"userName\":[\"超级管理员\"],\"dept.deptName\":[\"超级管理员\"],\"phonenumber\":[\"18625566260\"],\"email\":[\"2410338910@qq.com\"],\"loginName\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"管理员\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"1\"]}', '0', null, '2019-09-28 14:04:07');
INSERT INTO `sys_oper_log` VALUES ('161', '角色管理', '1', 'com.yucsoft.project.system.role.controller.RoleController.addSave()', '1', 'admin', '电子信息学院', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"zzuli_电气信息工程_老师\"],\"roleKey\":[\"zzuli_电气信息工程_老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程_老师\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:06:26');
INSERT INTO `sys_oper_log` VALUES ('162', '角色管理', '1', 'com.yucsoft.project.system.role.controller.RoleController.addSave()', '1', 'admin', '电子信息学院', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"zzuli_电气信息工程_学生\"],\"roleKey\":[\"zzuli_电气信息工程_学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"zzuli_电气信息工程_学生\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:07:02');
INSERT INTO `sys_oper_log` VALUES ('163', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '电子信息学院', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"2\"],\"postName\":[\"院级管理员\"],\"postCode\":[\"ha\"],\"postSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"zzuli_电气信息工程学院管理员\"]}', '0', null, '2019-09-28 14:08:50');
INSERT INTO `sys_oper_log` VALUES ('164', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '电子信息学院', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"3\"],\"postName\":[\"教师\"],\"postCode\":[\"tea\"],\"postSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"]}', '0', null, '2019-09-28 14:09:23');
INSERT INTO `sys_oper_log` VALUES ('165', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'admin', '电子信息学院', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"4\"],\"postName\":[\"学生\"],\"postCode\":[\"stu\"],\"postSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院学生\"]}', '0', null, '2019-09-28 14:09:28');
INSERT INTO `sys_oper_log` VALUES ('166', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '电子信息学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"ry\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:10:47');
INSERT INTO `sys_oper_log` VALUES ('167', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '电子信息学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气工程学院\"],\"roleKey\":[\"电气\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:11:25');
INSERT INTO `sys_oper_log` VALUES ('168', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '电子信息学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气工程学院\"],\"roleKey\":[\"电气\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103\"]}', '0', null, '2019-09-28 14:11:35');
INSERT INTO `sys_oper_log` VALUES ('169', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:12:43');
INSERT INTO `sys_oper_log` VALUES ('170', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 14:12:52');
INSERT INTO `sys_oper_log` VALUES ('171', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"loginName\":[\"dq\"],\"password\":[\"admin\"]}', '0', null, '2019-09-28 14:12:58');
INSERT INTO `sys_oper_log` VALUES ('172', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'dq', '电气信息工程学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:14:24');
INSERT INTO `sys_oper_log` VALUES ('173', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"3\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"3\"],\"postIds\":[\"3\"]}', '0', null, '2019-09-28 14:14:54');
INSERT INTO `sys_oper_log` VALUES ('174', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"3\"]}', '0', null, '2019-09-28 14:15:43');
INSERT INTO `sys_oper_log` VALUES ('175', '部门管理', '1', 'com.yucsoft.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '超级管理员', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"电气信息工程学院老师\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:17:28');
INSERT INTO `sys_oper_log` VALUES ('176', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"111\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院老师\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"3\"]}', '0', null, '2019-09-28 14:17:53');
INSERT INTO `sys_oper_log` VALUES ('177', '角色管理', '3', 'com.yucsoft.project.system.role.controller.RoleController.remove()', '1', 'admin', '超级管理员', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-09-28 14:18:50');
INSERT INTO `sys_oper_log` VALUES ('178', '角色管理', '3', 'com.yucsoft.project.system.role.controller.RoleController.remove()', '1', 'admin', '超级管理员', '/system/role/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4\"]}', '0', null, '2019-09-28 14:18:51');
INSERT INTO `sys_oper_log` VALUES ('179', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"111\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:19:45');
INSERT INTO `sys_oper_log` VALUES ('180', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"111\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:21:35');
INSERT INTO `sys_oper_log` VALUES ('181', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '超级管理员', '/system/dept/remove/111', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 14:21:47');
INSERT INTO `sys_oper_log` VALUES ('182', '角色管理', '1', 'com.yucsoft.project.system.role.controller.RoleController.addSave()', '1', 'dq', '电气信息工程学院', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:27:21');
INSERT INTO `sys_oper_log` VALUES ('183', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:28:43');
INSERT INTO `sys_oper_log` VALUES ('184', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'dq', '电气信息工程学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111\"]}', '0', null, '2019-09-28 14:31:59');
INSERT INTO `sys_oper_log` VALUES ('185', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'dq', '电气信息工程学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"电气老师\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:32:21');
INSERT INTO `sys_oper_log` VALUES ('186', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'dq', '电气信息工程学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"电气老师\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:32:24');
INSERT INTO `sys_oper_log` VALUES ('187', '部门管理', '1', 'com.yucsoft.project.system.dept.controller.DeptController.addSave()', '1', 'dq', '电气信息工程学院', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"电气信息工程学院学生\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:34:03');
INSERT INTO `sys_oper_log` VALUES ('188', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气老师\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:35:08');
INSERT INTO `sys_oper_log` VALUES ('189', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666666\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:37:37');
INSERT INTO `sys_oper_log` VALUES ('190', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:38:00');
INSERT INTO `sys_oper_log` VALUES ('191', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111\"]}', '0', null, '2019-09-28 14:38:09');
INSERT INTO `sys_oper_log` VALUES ('192', '用户管理', '1', 'com.yucsoft.project.system.user.controller.UserController.addSave()', '1', 'dq', '电气信息工程学院', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"userName\":[\"tea\"],\"deptName\":[\"电气信息工程学院老师\"],\"phonenumber\":[\"16888888888\"],\"email\":[\"2410338911@qq.com\"],\"loginName\":[\"tea\"],\"password\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"电气信息工程学院老师\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"3\"]}', '0', null, '2019-09-28 14:40:09');
INSERT INTO `sys_oper_log` VALUES ('193', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111\"]}', '0', null, '2019-09-28 14:41:54');
INSERT INTO `sys_oper_log` VALUES ('194', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'dq', '电气信息工程学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,112\"]}', '0', null, '2019-09-28 14:42:55');
INSERT INTO `sys_oper_log` VALUES ('195', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'dq', '电气信息工程学院', '/system/user/resetPwd/124', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 14:43:06');
INSERT INTO `sys_oper_log` VALUES ('196', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'dq', '电气信息工程学院', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"124\"],\"loginName\":[\"tea\"],\"password\":[\"admin\"]}', '0', null, '2019-09-28 14:43:10');
INSERT INTO `sys_oper_log` VALUES ('197', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'dq', '电气信息工程学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,112\"]}', '0', null, '2019-09-28 14:43:17');
INSERT INTO `sys_oper_log` VALUES ('198', '岗位管理', '2', 'com.yucsoft.project.system.post.controller.PostController.editSave()', '1', 'dq', '电气信息工程学院', '/system/post/edit', '127.0.0.1', '内网IP', '{\"postId\":[\"1\"],\"postName\":[\"超级管理员\"],\"postCode\":[\"ceo\"],\"postSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '0', null, '2019-09-28 14:44:30');
INSERT INTO `sys_oper_log` VALUES ('199', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'dq', '电气信息工程学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,112\"]}', '0', null, '2019-09-28 14:44:43');
INSERT INTO `sys_oper_log` VALUES ('200', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'dq', '电气信息工程学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045\"]}', '0', null, '2019-09-28 14:44:47');
INSERT INTO `sys_oper_log` VALUES ('201', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'tea', '电气信息工程学院老师', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666667\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"zzuli_电气信息工程_管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"2\"]}', '0', null, '2019-09-28 14:46:40');
INSERT INTO `sys_oper_log` VALUES ('202', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电气信息工程学院老师\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:47:42');
INSERT INTO `sys_oper_log` VALUES ('203', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"103\"],\"parentName\":[\"电气信息工程学院\"],\"deptName\":[\"电气信息工程学院学生\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:47:50');
INSERT INTO `sys_oper_log` VALUES ('204', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电气信息工程学院学生\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 14:48:07');
INSERT INTO `sys_oper_log` VALUES ('205', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103\"]}', '0', null, '2019-09-28 14:48:49');
INSERT INTO `sys_oper_log` VALUES ('206', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,111\"]}', '0', null, '2019-09-28 14:48:53');
INSERT INTO `sys_oper_log` VALUES ('207', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111\"]}', '0', null, '2019-09-28 14:49:32');
INSERT INTO `sys_oper_log` VALUES ('208', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 14:49:36');
INSERT INTO `sys_oper_log` VALUES ('209', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 14:51:14');
INSERT INTO `sys_oper_log` VALUES ('210', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015\"]}', '0', null, '2019-09-28 14:51:22');
INSERT INTO `sys_oper_log` VALUES ('211', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'dq', '电气信息工程学院', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015\"]}', '0', null, '2019-09-28 14:51:50');
INSERT INTO `sys_oper_log` VALUES ('212', '角色管理', '1', 'com.yucsoft.project.system.role.controller.RoleController.addSave()', '1', 'admin', '超级管理员', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"6\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:53:39');
INSERT INTO `sys_oper_log` VALUES ('213', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 14:53:45');
INSERT INTO `sys_oper_log` VALUES ('214', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 14:53:51');
INSERT INTO `sys_oper_log` VALUES ('215', '用户管理', '1', 'com.yucsoft.project.system.user.controller.UserController.addSave()', '1', 'tea', '电气信息工程学院老师', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"userName\":[\"stu\"],\"deptName\":[\"电气信息工程学院学生\"],\"phonenumber\":[\"16666666669\"],\"email\":[\"2410338912@qq.com\"],\"loginName\":[\"stu\"],\"password\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"zzuli_电气信息工程学生\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"4\"]}', '0', null, '2019-09-28 14:54:56');
INSERT INTO `sys_oper_log` VALUES ('216', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 14:58:51');
INSERT INTO `sys_oper_log` VALUES ('217', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111\"]}', '0', null, '2019-09-28 14:58:55');
INSERT INTO `sys_oper_log` VALUES ('218', '定时任务', '2', 'com.yucsoft.project.monitor.job.controller.JobController.run()', '1', 'admin', '超级管理员', '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobId\":[\"1\"]}', '0', null, '2019-09-28 14:59:31');
INSERT INTO `sys_oper_log` VALUES ('219', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 15:08:46');
INSERT INTO `sys_oper_log` VALUES ('220', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011\"]}', '0', null, '2019-09-28 15:08:52');
INSERT INTO `sys_oper_log` VALUES ('221', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"\"]}', '0', null, '2019-09-28 15:08:55');
INSERT INTO `sys_oper_log` VALUES ('222', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 15:10:04');
INSERT INTO `sys_oper_log` VALUES ('223', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'dq', '电气信息工程学院', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"2\"]}', '0', null, '2019-09-28 15:14:39');
INSERT INTO `sys_oper_log` VALUES ('224', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.cancelAuthUser()', '1', 'dq', '电气信息工程学院', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userId\":[\"2\"]}', '0', null, '2019-09-28 15:14:48');
INSERT INTO `sys_oper_log` VALUES ('225', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'dq', '电气信息工程学院', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"2\"]}', '0', null, '2019-09-28 15:15:09');
INSERT INTO `sys_oper_log` VALUES ('226', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.cancelAuthUser()', '1', 'dq', '电气信息工程学院', '/system/role/authUser/cancel', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userId\":[\"2\"]}', '0', null, '2019-09-28 15:17:10');
INSERT INTO `sys_oper_log` VALUES ('227', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'dq', '电气信息工程学院', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111,112\"]}', '0', null, '2019-09-28 15:17:26');
INSERT INTO `sys_oper_log` VALUES ('228', '用户管理', '5', 'com.yucsoft.project.system.user.controller.UserController.export()', '1', 'tea', '电气信息工程学院老师', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-09-28 15:30:59');
INSERT INTO `sys_oper_log` VALUES ('229', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 2410338910@qq.com 已存在', '2019-09-28 16:16:17');
INSERT INTO `sys_oper_log` VALUES ('230', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"true\"]}', '1', '很抱歉，导入失败！共 6 条数据格式不正确，错误如下：<br/>1、账号 admin 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.updateUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user     SET dept_id = ?,     login_name = ?,     user_name = ?,     email = ?,     phonenumber = ?,     sex = ?,                    status = ?,               update_by = ?,          update_time = sysdate()     where user_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\n; Data truncation: Data too long for column \'phonenumber\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1<br/>2、账号 dq 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.updateUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user     SET dept_id = ?,     login_name = ?,     user_name = ?,     email = ?,     phonenumber = ?,     sex = ?,                    status = ?,               update_by = ?,          update_time = sysdate()     where user_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\n; Data truncation: Data too long for column \'sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1<br/>3、账号 2410338910@qq.com 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yu', '2019-09-28 16:52:21');
INSERT INTO `sys_oper_log` VALUES ('231', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"true\"]}', '1', '很抱歉，导入失败！共 6 条数据格式不正确，错误如下：<br/>1、账号 admin 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.updateUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user     SET dept_id = ?,     login_name = ?,     user_name = ?,     email = ?,     phonenumber = ?,     sex = ?,                    status = ?,               update_by = ?,          update_time = sysdate()     where user_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1\n; Data truncation: Data too long for column \'phonenumber\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'phonenumber\' at row 1<br/>2、账号 dq 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.updateUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user     SET dept_id = ?,     login_name = ?,     user_name = ?,     email = ?,     phonenumber = ?,     sex = ?,                    status = ?,               update_by = ?,          update_time = sysdate()     where user_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\n; Data truncation: Data too long for column \'sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1<br/>3、账号 2410338910@qq.com 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yu', '2019-09-28 16:53:16');
INSERT INTO `sys_oper_log` VALUES ('232', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\n; Data truncation: Data too long for column \'sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1', '2019-09-28 16:53:50');
INSERT INTO `sys_oper_log` VALUES ('233', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(                  login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(                  ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1\n; Data truncation: Data too long for column \'sex\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'sex\' at row 1', '2019-09-28 16:54:18');
INSERT INTO `sys_oper_log` VALUES ('234', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 16:56:06');
INSERT INTO `sys_oper_log` VALUES ('235', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'admin', '超级管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"125\"]}', '0', null, '2019-09-28 16:59:17');
INSERT INTO `sys_oper_log` VALUES ('236', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'admin', '超级管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"541713460233\"]}', '0', null, '2019-09-28 16:59:45');
INSERT INTO `sys_oper_log` VALUES ('237', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 16:59:57');
INSERT INTO `sys_oper_log` VALUES ('238', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 16:59:59');
INSERT INTO `sys_oper_log` VALUES ('239', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'admin', '超级管理员', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"userIds\":[\"124\"]}', '0', null, '2019-09-28 17:01:34');
INSERT INTO `sys_oper_log` VALUES ('240', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'admin', '超级管理员', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userIds\":[\"2\"]}', '0', null, '2019-09-28 17:01:47');
INSERT INTO `sys_oper_log` VALUES ('241', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'admin', '超级管理员', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"userIds\":[\"1\"]}', '0', null, '2019-09-28 17:01:54');
INSERT INTO `sys_oper_log` VALUES ('242', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 17:02:46');
INSERT INTO `sys_oper_log` VALUES ('243', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111,112\"]}', '0', null, '2019-09-28 17:03:36');
INSERT INTO `sys_oper_log` VALUES ('244', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 17:03:46');
INSERT INTO `sys_oper_log` VALUES ('245', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 17:03:50');
INSERT INTO `sys_oper_log` VALUES ('246', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111,112\"]}', '0', null, '2019-09-28 17:05:25');
INSERT INTO `sys_oper_log` VALUES ('247', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 17:05:27');
INSERT INTO `sys_oper_log` VALUES ('248', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 17:05:30');
INSERT INTO `sys_oper_log` VALUES ('249', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'dq', '电气信息工程学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"125\"],\"deptId\":[\"112\"],\"userName\":[\"stu\"],\"dept.deptName\":[\"电气信息工程学院学生\"],\"phonenumber\":[\"16666666669\"],\"email\":[\"2410338912@qq.com\"],\"loginName\":[\"stu\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"zzuli_电气信息工程学生\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 17:07:25');
INSERT INTO `sys_oper_log` VALUES ('250', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 17:18:18');
INSERT INTO `sys_oper_log` VALUES ('251', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 17:27:58');
INSERT INTO `sys_oper_log` VALUES ('252', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(            ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2019-09-28 17:30:17');
INSERT INTO `sys_oper_log` VALUES ('253', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(            ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2019-09-28 17:30:58');
INSERT INTO `sys_oper_log` VALUES ('254', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 导入失败：\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\r\n### The error may involve com.yucsoft.project.system.user.mapper.UserMapper.insertUser-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user(            dept_id,       login_name,       user_name,       email,       phonenumber,       sex,       password,       salt,       status,       create_by,            create_time    )values(            ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,       ?,            sysdate()    )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1\n; Data truncation: Data too long for column \'status\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'status\' at row 1', '2019-09-28 17:31:25');
INSERT INTO `sys_oper_log` VALUES ('255', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'dq', '电气信息工程学院', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 17:31:57');
INSERT INTO `sys_oper_log` VALUES ('256', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'dq', '电气信息工程学院', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"111\"],\"userName\":[\"tea\"],\"dept.deptName\":[\"电气信息工程学院老师\"],\"phonenumber\":[\"16888888888\"],\"email\":[\"2410338911@qq.com\"],\"loginName\":[\"tea\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"电气信息工程学院老师\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 17:41:32');
INSERT INTO `sys_oper_log` VALUES ('257', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'tea', '电气信息工程学院老师', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 17:42:47');
INSERT INTO `sys_oper_log` VALUES ('258', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'tea', '电气信息工程学院老师', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"deptId\":[\"112\"],\"userName\":[\"541713460233\"],\"dept.deptName\":[\"电气信息工程学院学生\"],\"phonenumber\":[\"16688888888\"],\"email\":[\"2410338900@qq.com\"],\"loginName\":[\"541713460233\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 17:44:53');
INSERT INTO `sys_oper_log` VALUES ('259', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 17:46:25');
INSERT INTO `sys_oper_log` VALUES ('260', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 17:46:30');
INSERT INTO `sys_oper_log` VALUES ('261', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'dq', '电气信息工程学院', '/system/user/resetPwd/4', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 17:47:06');
INSERT INTO `sys_oper_log` VALUES ('262', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'dq', '电气信息工程学院', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"4\"],\"loginName\":[\"541713460233\"],\"password\":[\"000000\"]}', '0', null, '2019-09-28 17:47:11');
INSERT INTO `sys_oper_log` VALUES ('263', '个人信息', '2', 'com.yucsoft.project.system.user.controller.ProfileController.updateAvatar()', '1', '541713460233', '电气信息工程学院学生', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 17:49:11');
INSERT INTO `sys_oper_log` VALUES ('264', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111,112\"]}', '0', null, '2019-09-28 17:50:16');
INSERT INTO `sys_oper_log` VALUES ('265', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 17:50:23');
INSERT INTO `sys_oper_log` VALUES ('266', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-09-28 17:50:37');
INSERT INTO `sys_oper_log` VALUES ('267', '菜单管理', '1', 'com.yucsoft.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"评分\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"fa fa-edit\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:25:03');
INSERT INTO `sys_oper_log` VALUES ('268', '菜单管理', '1', 'com.yucsoft.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"组内评分\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:25:42');
INSERT INTO `sys_oper_log` VALUES ('269', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"1058,1059\"]}', '0', null, '2019-09-28 22:25:53');
INSERT INTO `sys_oper_log` VALUES ('270', '菜单管理', '1', 'com.yucsoft.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"年纪互评\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:26:58');
INSERT INTO `sys_oper_log` VALUES ('271', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"1058,1059,1060\"]}', '0', null, '2019-09-28 22:27:07');
INSERT INTO `sys_oper_log` VALUES ('272', '菜单管理', '2', 'com.yucsoft.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1060\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"年级评\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:27:39');
INSERT INTO `sys_oper_log` VALUES ('273', '菜单管理', '2', 'com.yucsoft.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1060\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"年级互评\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:27:57');
INSERT INTO `sys_oper_log` VALUES ('274', '菜单管理', '1', 'com.yucsoft.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"课题组员评分\"],\"url\":[\"\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-09-28 22:28:22');
INSERT INTO `sys_oper_log` VALUES ('275', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,1058,1061\"]}', '0', null, '2019-09-28 22:28:33');
INSERT INTO `sys_oper_log` VALUES ('276', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'admin', '超级管理员', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '1', '很抱歉，导入失败！共 1 条数据格式不正确，错误如下：<br/>1、账号 541713460233 已存在', '2019-09-28 22:57:05');
INSERT INTO `sys_oper_log` VALUES ('277', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'admin', '超级管理员', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 22:57:21');
INSERT INTO `sys_oper_log` VALUES ('278', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:03:27');
INSERT INTO `sys_oper_log` VALUES ('279', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 23:07:14');
INSERT INTO `sys_oper_log` VALUES ('280', '部门管理', '1', 'com.yucsoft.project.system.dept.controller.DeptController.addSave()', '1', 'admin', '超级管理员', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"103\"],\"deptName\":[\"laoshi1\"],\"orderNum\":[\"7\"],\"leader\":[\"1111\"],\"phone\":[\"13122343689\"],\"email\":[\"2410338910@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 23:08:21');
INSERT INTO `sys_oper_log` VALUES ('281', '用户管理', '1', 'com.yucsoft.project.system.user.controller.UserController.addSave()', '1', 'admin', '超级管理员', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"userName\":[\"ttt\"],\"deptName\":[\"laoshi1\"],\"phonenumber\":[\"13123234333\"],\"email\":[\"33333333333@q.c\"],\"loginName\":[\"ttt\"],\"password\":[\"admin\"],\"sex\":[\"0\"],\"role\":[\"1\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"1\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:10:51');
INSERT INTO `sys_oper_log` VALUES ('282', '角色管理', '4', 'com.yucsoft.project.system.role.controller.RoleController.selectAuthUserAll()', '1', 'admin', '超级管理员', '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"userIds\":[\"6\"]}', '0', null, '2019-09-28 23:11:32');
INSERT INTO `sys_oper_log` VALUES ('283', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"deptId\":[\"113\"],\"userName\":[\"ttt\"],\"dept.deptName\":[\"laoshi1\"],\"phonenumber\":[\"13123234333\"],\"email\":[\"33333333333@q.c\"],\"loginName\":[\"ttt\"],\"sex\":[\"0\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:12:20');
INSERT INTO `sys_oper_log` VALUES ('284', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"6\"],\"deptId\":[\"113\"],\"userName\":[\"ttt\"],\"dept.deptName\":[\"laoshi1\"],\"phonenumber\":[\"13123234333\"],\"email\":[\"33333333333@q.c\"],\"loginName\":[\"ttt\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:14:19');
INSERT INTO `sys_oper_log` VALUES ('285', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:17:48');
INSERT INTO `sys_oper_log` VALUES ('286', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:18:56');
INSERT INTO `sys_oper_log` VALUES ('287', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:19:07');
INSERT INTO `sys_oper_log` VALUES ('288', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'dq', '电气信息工程学院', '/system/user/resetPwd/2', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:20:26');
INSERT INTO `sys_oper_log` VALUES ('289', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:21:32');
INSERT INTO `sys_oper_log` VALUES ('290', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"113\"],\"userName\":[\"tea\"],\"dept.deptName\":[\"laoshi1\"],\"phonenumber\":[\"16888888888\"],\"email\":[\"2410338911@qq.com\"],\"loginName\":[\"tea\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"电气信息工程学院老师\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:25:21');
INSERT INTO `sys_oper_log` VALUES ('291', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"113\"],\"parentId\":[\"103\"],\"parentName\":[\"电气信息工程学院\"],\"deptName\":[\"老师\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-09-28 23:25:50');
INSERT INTO `sys_oper_log` VALUES ('292', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '超级管理员', '/system/dept/remove/112', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:25:57');
INSERT INTO `sys_oper_log` VALUES ('293', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"111\"],\"userName\":[\"tea\"],\"dept.deptName\":[\"电气信息工程学院老师\"],\"phonenumber\":[\"16888888888\"],\"email\":[\"2410338911@qq.com\"],\"loginName\":[\"tea\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"电气信息工程学院老师\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:27:04');
INSERT INTO `sys_oper_log` VALUES ('294', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 23:28:09');
INSERT INTO `sys_oper_log` VALUES ('295', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-09-28 23:28:13');
INSERT INTO `sys_oper_log` VALUES ('296', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"dataScope\":[\"3\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:28:21');
INSERT INTO `sys_oper_log` VALUES ('297', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"dataScope\":[\"1\"],\"deptIds\":[\"\"]}', '0', null, '2019-09-28 23:28:50');
INSERT INTO `sys_oper_log` VALUES ('298', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'admin', '超级管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"6\"]}', '0', null, '2019-09-28 23:28:55');
INSERT INTO `sys_oper_log` VALUES ('299', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd/5', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:29:28');
INSERT INTO `sys_oper_log` VALUES ('300', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd/5', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:30:03');
INSERT INTO `sys_oper_log` VALUES ('301', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"loginName\":[\"541713460234\"],\"password\":[\"000000\"]}', '0', null, '2019-09-28 23:30:06');
INSERT INTO `sys_oper_log` VALUES ('302', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"电气信息工程学生\"],\"menuIds\":[\"1058,1059,1060\"]}', '0', null, '2019-09-28 23:30:48');
INSERT INTO `sys_oper_log` VALUES ('303', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"5\"],\"deptId\":[\"112\"],\"userName\":[\"541713460233\"],\"dept.deptName\":[\"电气信息工程学院学生\"],\"phonenumber\":[\"16699999999\"],\"email\":[\"2410338913@qq.com\"],\"loginName\":[\"541713460234\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:31:25');
INSERT INTO `sys_oper_log` VALUES ('304', '部门管理', '3', 'com.yucsoft.project.system.dept.controller.DeptController.remove()', '1', 'admin', '超级管理员', '/system/dept/remove/113', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:32:21');
INSERT INTO `sys_oper_log` VALUES ('305', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd/7', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:35:42');
INSERT INTO `sys_oper_log` VALUES ('306', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"7\"],\"loginName\":[\"q\"],\"password\":[\"qqqqq\"]}', '0', null, '2019-09-28 23:35:48');
INSERT INTO `sys_oper_log` VALUES ('307', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd/7', '127.0.0.1', '内网IP', '{}', '0', null, '2019-09-28 23:36:13');
INSERT INTO `sys_oper_log` VALUES ('308', '重置密码', '2', 'com.yucsoft.project.system.user.controller.UserController.resetPwd()', '1', 'admin', '超级管理员', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"7\"],\"loginName\":[\"q\"],\"password\":[\"qqqqq\"]}', '0', null, '2019-09-28 23:36:16');
INSERT INTO `sys_oper_log` VALUES ('309', '用户管理', '6', 'com.yucsoft.project.system.user.controller.UserController.importData()', '1', 'admin', '超级管理员', '/system/user/importData', '127.0.0.1', '内网IP', '{\"updateSupport\":[\"false\"]}', '0', null, '2019-09-28 23:52:32');
INSERT INTO `sys_oper_log` VALUES ('310', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"8\"],\"deptId\":[\"112\"],\"userName\":[\"541713460233\"],\"dept.deptName\":[\"电气信息工程学院学生\"],\"phonenumber\":[\"16611111111\"],\"email\":[\"2410338901@qq.com\"],\"loginName\":[\"541713460235\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"\"]}', '0', null, '2019-09-28 23:55:53');
INSERT INTO `sys_oper_log` VALUES ('311', '用户管理', '5', 'com.yucsoft.project.system.user.controller.UserController.export()', '1', 'admin', '超级管理员', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-10-08 20:53:46');
INSERT INTO `sys_oper_log` VALUES ('312', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2\"],\"deptId\":[\"103\"],\"userName\":[\"ha\"],\"dept.deptName\":[\"电气信息工程学院\"],\"phonenumber\":[\"15666666667\"],\"email\":[\"ry@qq.com\"],\"loginName\":[\"dq\"],\"sex\":[\"0\"],\"role\":[\"2\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"status\":[\"0\"],\"roleIds\":[\"2\"],\"postIds\":[\"\"]}', '0', null, '2019-10-08 22:02:22');
INSERT INTO `sys_oper_log` VALUES ('313', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"电气信息学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-10-08 22:02:44');
INSERT INTO `sys_oper_log` VALUES ('314', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"电气信息工程学院\"],\"roleKey\":[\"电气信息工程学院\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,103,111,112\"]}', '0', null, '2019-10-08 22:02:57');
INSERT INTO `sys_oper_log` VALUES ('315', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"电气信息工程学院老师\"],\"roleKey\":[\"tea\"],\"dataScope\":[\"2\"],\"deptIds\":[\"100,101,112\"]}', '0', null, '2019-10-08 22:03:02');
INSERT INTO `sys_oper_log` VALUES ('316', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.authDataScopeSave()', '1', 'admin', '超级管理员', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"电气信息工程学生\"],\"roleKey\":[\"电气信息工程学生\"],\"dataScope\":[\"2\"],\"deptIds\":[\"\"]}', '0', null, '2019-10-08 22:03:14');
INSERT INTO `sys_oper_log` VALUES ('317', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,1058,1061\"]}', '0', null, '2019-10-08 22:03:56');
INSERT INTO `sys_oper_log` VALUES ('318', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"1058,1059,1060\"]}', '0', null, '2019-10-08 22:04:13');
INSERT INTO `sys_oper_log` VALUES ('319', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019\"]}', '0', null, '2019-10-08 22:04:30');
INSERT INTO `sys_oper_log` VALUES ('320', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'admin', '超级管理员', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"7\"]}', '0', null, '2019-10-08 22:05:03');
INSERT INTO `sys_oper_log` VALUES ('321', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"郑州轻工业大学电气信息工程学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-10-08 22:16:47');
INSERT INTO `sys_oper_log` VALUES ('322', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-10-08 22:16:55');
INSERT INTO `sys_oper_log` VALUES ('323', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电气信息工程学院老师\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-10-08 22:17:14');
INSERT INTO `sys_oper_log` VALUES ('324', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"电气信息工程学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-10-08 22:17:18');
INSERT INTO `sys_oper_log` VALUES ('325', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-10-08 22:23:18');
INSERT INTO `sys_oper_log` VALUES ('326', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,1058,1061\"]}', '0', null, '2019-10-08 22:23:26');
INSERT INTO `sys_oper_log` VALUES ('327', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"1058,1059,1060\"]}', '0', null, '2019-10-08 22:23:30');
INSERT INTO `sys_oper_log` VALUES ('328', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"103\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"郑州轻工业大学电气信息工程学院\"],\"orderNum\":[\"1\"],\"leader\":[\"宇昶\"],\"phone\":[\"15888888888\"],\"email\":[\"ry@qq.com\"],\"status\":[\"0\"]}', '0', null, '2019-10-09 10:14:50');
INSERT INTO `sys_oper_log` VALUES ('329', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"111\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"orderNum\":[\"2\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-10-09 10:15:38');
INSERT INTO `sys_oper_log` VALUES ('330', '部门管理', '2', 'com.yucsoft.project.system.dept.controller.DeptController.editSave()', '1', 'admin', '超级管理员', '/system/dept/edit', '127.0.0.1', '内网IP', '{\"deptId\":[\"112\"],\"parentId\":[\"101\"],\"parentName\":[\"郑州轻工业大学\"],\"deptName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"orderNum\":[\"3\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '0', null, '2019-10-09 10:15:50');
INSERT INTO `sys_oper_log` VALUES ('331', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019\"]}', '0', null, '2019-10-09 10:28:15');
INSERT INTO `sys_oper_log` VALUES ('332', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006\"]}', '0', null, '2019-10-09 10:28:37');
INSERT INTO `sys_oper_log` VALUES ('333', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,1058,1061\"]}', '0', null, '2019-10-09 10:28:43');
INSERT INTO `sys_oper_log` VALUES ('334', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"1058,1059,1060\"]}', '0', null, '2019-10-09 10:28:46');
INSERT INTO `sys_oper_log` VALUES ('335', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,1058,1061\"]}', '0', null, '2019-10-09 10:28:49');
INSERT INTO `sys_oper_log` VALUES ('336', '用户管理', '2', 'com.ori.project.system.user.controller.UserController.editSave()', '1', 'admin', '超级管理员', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"3\"],\"deptId\":[\"111\"],\"userName\":[\"tea\"],\"dept.deptName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"phonenumber\":[\"16888888889\"],\"email\":[\"2410338911@qq.com\"],\"loginName\":[\"tea\"],\"sex\":[\"0\"],\"role\":[\"5\"],\"remark\":[\"电气信息工程学院老师\"],\"status\":[\"0\"],\"roleIds\":[\"5\"],\"postIds\":[\"\"]}', '0', null, '2019-10-09 12:49:02');
INSERT INTO `sys_oper_log` VALUES ('337', '用户管理', '5', 'com.ori.project.system.user.controller.UserController.export()', '1', 'admin', '超级管理员', '/system/user/export', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"parentId\":[\"\"],\"loginName\":[\"\"],\"phonenumber\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"]}', '0', null, '2019-10-09 22:05:49');
INSERT INTO `sys_oper_log` VALUES ('338', '通知公告', '3', 'com.ori.project.system.notice.controller.NoticeController.remove()', '1', 'admin', '超级管理员', '/system/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '0', null, '2019-10-10 11:04:39');
INSERT INTO `sys_oper_log` VALUES ('339', '通知公告', '3', 'com.ori.project.system.notice.controller.NoticeController.remove()', '1', 'admin', '超级管理员', '/system/notice/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"2\"]}', '0', null, '2019-10-10 11:04:42');
INSERT INTO `sys_oper_log` VALUES ('340', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1059\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"组内评分\"],\"url\":[\"/system/mutual_evaluation/testPages/inter-group_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 11:30:56');
INSERT INTO `sys_oper_log` VALUES ('341', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1059\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"组内评分\"],\"url\":[\"/system/mutual_evaluation/inter-group_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 12:12:10');
INSERT INTO `sys_oper_log` VALUES ('342', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1060\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"年级互评\"],\"url\":[\"/system/mutual_evaluation/grade_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"2\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 13:59:41');
INSERT INTO `sys_oper_log` VALUES ('343', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1061\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"课题组员评分\"],\"url\":[\"system/mutual_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 14:05:33');
INSERT INTO `sys_oper_log` VALUES ('344', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1061\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"课题组员评分\"],\"url\":[\"system/teacher_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 14:06:06');
INSERT INTO `sys_oper_log` VALUES ('345', '角色管理', '2', 'com.ori.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,1058,1061\"]}', '0', null, '2019-10-10 20:03:25');
INSERT INTO `sys_oper_log` VALUES ('346', '角色管理', '2', 'com.ori.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,3,113,114,1056,1057,115,1058,1061\"]}', '0', null, '2019-10-10 20:03:49');
INSERT INTO `sys_oper_log` VALUES ('347', '菜单管理', '1', 'com.ori.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"查看组员评分状态\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 20:20:20');
INSERT INTO `sys_oper_log` VALUES ('348', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1061\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"课题组员评分\"],\"url\":[\"/system/teacher_evaluation\"],\"perms\":[\"\"],\"orderNum\":[\"3\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 20:21:01');
INSERT INTO `sys_oper_log` VALUES ('349', '角色管理', '2', 'com.ori.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,3,113,114,1056,1057,115,1058,1061,1062\"]}', '0', null, '2019-10-10 20:24:44');
INSERT INTO `sys_oper_log` VALUES ('350', '菜单管理', '1', 'com.ori.project.system.menu.controller.MenuController.addSave()', '1', 'admin', '超级管理员', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"查看成绩\"],\"url\":[\"#\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 20:27:58');
INSERT INTO `sys_oper_log` VALUES ('351', '角色管理', '2', 'com.ori.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"1058,1059,1060,1063\"]}', '0', null, '2019-10-10 20:28:08');
INSERT INTO `sys_oper_log` VALUES ('352', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"查看组员评分状态\"],\"url\":[\"/system/teacher_evaluation/GroupIsEvaluationList\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 21:05:11');
INSERT INTO `sys_oper_log` VALUES ('353', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1062\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"查看组员评分状态\"],\"url\":[\"/system/teacher_evaluation/stuOfTea\"],\"perms\":[\"\"],\"orderNum\":[\"4\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-10 21:07:16');
INSERT INTO `sys_oper_log` VALUES ('354', '角色管理', '2', 'com.ori.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"3,113,114,1056,1057,115,1058,1059,1060,1063\"]}', '0', null, '2019-10-11 16:44:53');
INSERT INTO `sys_oper_log` VALUES ('355', '菜单管理', '2', 'com.ori.project.system.menu.controller.MenuController.editSave()', '1', 'admin', '超级管理员', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"1063\"],\"parentId\":[\"1058\"],\"menuType\":[\"C\"],\"menuName\":[\"查看成绩\"],\"url\":[\"/system/mutual_evaluation/score\"],\"perms\":[\"\"],\"orderNum\":[\"5\"],\"icon\":[\"#\"],\"visible\":[\"0\"]}', '0', null, '2019-10-11 18:14:13');
INSERT INTO `sys_oper_log` VALUES ('356', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"5\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院老师\"],\"roleSort\":[\"3\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院老师\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006,1058,1061,1062\"]}', '0', null, '2019-10-15 17:28:43');
INSERT INTO `sys_oper_log` VALUES ('357', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"6\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院学生\"],\"roleSort\":[\"4\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院学生\"],\"menuIds\":[\"1058,1059,1060,1063\"]}', '0', null, '2019-10-15 17:28:46');
INSERT INTO `sys_oper_log` VALUES ('358', '角色管理', '2', 'com.yucsoft.project.system.role.controller.RoleController.editSave()', '1', 'admin', '超级管理员', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"2\"],\"roleName\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleKey\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"roleSort\":[\"2\"],\"status\":[\"0\"],\"remark\":[\"郑州轻工业大学电气信息工程学院管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,1006\"]}', '0', null, '2019-10-15 17:28:48');
INSERT INTO `sys_oper_log` VALUES ('359', '用户管理', '2', 'com.yucsoft.project.system.user.controller.UserController.editSave()', '1', 'tea', '郑州轻工业大学电气信息工程学院老师', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"25\"],\"deptId\":[\"112\"],\"userName\":[\"upload1\"],\"dept.deptName\":[\"郑州轻工业大学电气信息工程学院学生\"],\"phonenumber\":[\"18625566269\"],\"email\":[\"ori20000203@gmail.com\"],\"loginName\":[\"541713460201\"],\"sex\":[\"0\"],\"role\":[\"6\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"6\"],\"postIds\":[\"3\"]}', '0', null, '2019-10-15 17:44:14');
INSERT INTO `sys_oper_log` VALUES ('360', '用户管理', '3', 'com.yucsoft.project.system.user.controller.UserController.remove()', '1', 'dq', '郑州轻工业大学电气信息工程学院', '/system/user/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3\"]}', '0', null, '2019-10-15 20:15:28');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '超级管理员', '1', '0', 'admin', '2018-03-16 11:33:00', 'dq', '2019-09-28 14:44:30', '');
INSERT INTO `sys_post` VALUES ('2', 'ha', '院级管理员', '2', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-28 14:08:50', 'zzuli_电气信息工程学院管理员');
INSERT INTO `sys_post` VALUES ('3', 'tea', '教师', '3', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-28 14:09:23', '电气信息工程学院老师');
INSERT INTO `sys_post` VALUES ('4', 'stu', '学生', '4', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-28 14:09:28', '电气信息工程学院学生');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-09-28 17:05:30', '管理员');
INSERT INTO `sys_role` VALUES ('2', '郑州轻工业大学电气信息工程学院管理员', '郑州轻工业大学电气信息工程学院管理员', '2', '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-15 17:28:48', '郑州轻工业大学电气信息工程学院管理员');
INSERT INTO `sys_role` VALUES ('5', '郑州轻工业大学电气信息工程学院老师', '郑州轻工业大学电气信息工程学院老师', '3', '2', '0', '0', 'dq', '2019-09-28 14:27:21', 'admin', '2019-10-15 17:28:43', '郑州轻工业大学电气信息工程学院老师');
INSERT INTO `sys_role` VALUES ('6', '郑州轻工业大学电气信息工程学院学生', '郑州轻工业大学电气信息工程学院学生', '4', '2', '0', '0', 'admin', '2019-09-28 14:53:39', 'admin', '2019-10-15 17:28:46', '郑州轻工业大学电气信息工程学院学生');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES ('2', '100');
INSERT INTO `sys_role_dept` VALUES ('2', '101');
INSERT INTO `sys_role_dept` VALUES ('2', '103');
INSERT INTO `sys_role_dept` VALUES ('2', '111');
INSERT INTO `sys_role_dept` VALUES ('2', '112');
INSERT INTO `sys_role_dept` VALUES ('5', '100');
INSERT INTO `sys_role_dept` VALUES ('5', '101');
INSERT INTO `sys_role_dept` VALUES ('5', '112');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '100');
INSERT INTO `sys_role_menu` VALUES ('2', '1000');
INSERT INTO `sys_role_menu` VALUES ('2', '1001');
INSERT INTO `sys_role_menu` VALUES ('2', '1002');
INSERT INTO `sys_role_menu` VALUES ('2', '1003');
INSERT INTO `sys_role_menu` VALUES ('2', '1004');
INSERT INTO `sys_role_menu` VALUES ('2', '1005');
INSERT INTO `sys_role_menu` VALUES ('2', '1006');
INSERT INTO `sys_role_menu` VALUES ('5', '1');
INSERT INTO `sys_role_menu` VALUES ('5', '100');
INSERT INTO `sys_role_menu` VALUES ('5', '1000');
INSERT INTO `sys_role_menu` VALUES ('5', '1001');
INSERT INTO `sys_role_menu` VALUES ('5', '1002');
INSERT INTO `sys_role_menu` VALUES ('5', '1003');
INSERT INTO `sys_role_menu` VALUES ('5', '1004');
INSERT INTO `sys_role_menu` VALUES ('5', '1005');
INSERT INTO `sys_role_menu` VALUES ('5', '1006');
INSERT INTO `sys_role_menu` VALUES ('5', '1058');
INSERT INTO `sys_role_menu` VALUES ('5', '1061');
INSERT INTO `sys_role_menu` VALUES ('5', '1062');
INSERT INTO `sys_role_menu` VALUES ('6', '1058');
INSERT INTO `sys_role_menu` VALUES ('6', '1059');
INSERT INTO `sys_role_menu` VALUES ('6', '1060');
INSERT INTO `sys_role_menu` VALUES ('6', '1063');

-- ----------------------------
-- Table structure for sys_stu
-- ----------------------------
DROP TABLE IF EXISTS `sys_stu`;
CREATE TABLE `sys_stu` (
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `grade` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `groupNum` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `A_group` varchar(255) DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `A_group_sum` varchar(255) DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `A_group_num` int(11) DEFAULT '0',
  `A_grade` varchar(255) DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `A_grade_sum` varchar(255) DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `A_grade_num` int(11) DEFAULT '0',
  `A_tea` varchar(255) DEFAULT NULL,
  `B_tea` varchar(255) DEFAULT NULL,
  `is_groupe` int(11) DEFAULT '0',
  `C_tea` varchar(255) DEFAULT NULL,
  `is_gradee` int(11) DEFAULT '0',
  `term` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_stu
-- ----------------------------
INSERT INTO `sys_stu` VALUES ('郑州轻工业大学', '电气信息工程学院', '软件工程17', '541713460201', '王烨', '男', '18625566260', '2333', '66,66,66,66,66,66,66,66,66,66', '66,66,66,66,66,66,66,66,66,66', '2', '93,99,99,99,99,99,99,99,99,99', '91,93,95,85,92,88,94,95,96,96', '3', '98,98,98,98,98,98,98,98,98,98', '98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98', '1', '95,95,95,95,95,95,95,95', '1', '2019年下半年');
INSERT INTO `sys_stu` VALUES ('郑州轻工业大学', '电气信息工程学院', '软件工程17', '541713460202', '苏一恒', '男', '18625566260', '2333', '66,66,66,66,66,66,66,66,66,66', '66,66,66,66,66,66,66,66,66,66', '2', '99,99,99,99,99,99,99,99,99,99', '99,99,99,99,99,99,99,99,99,99', '3', '98,98,98,98,98,98,98,98,98,98', '98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98', '1', '95,95,95,95,95,95,95,95', '1', '2019年下半年');
INSERT INTO `sys_stu` VALUES ('郑州轻工业大学', '电气信息工程学院', '软件工程16', '541613460201', '程佩', '男', '18625566260', '2333', '66,66,66,66,66,66,66,66,66,66', '66,66,66,66,66,66,66,66,66,66', '2', '0,0,0,0,0,0,0,0,0,0', '0,0,0,0,0,0,0,0,0,0', '0', '98,98,98,98,98,98,98,98,98,98', '98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98,98', '1', '95,95,95,95,95,95,95,95', '1', '2019年下半年');
INSERT INTO `sys_stu` VALUES ('郑州轻工业大学', '电气信息工程学院', '软件工程17', '541713460203', '胡一涛', '男', '18625566260', '2222', '66,66,66,66,66,66,66,66,66,66', '66,66,66,66,66,66,66,66,66,66', '1', '99,99,99,99,99,99,99,99,99,99', '99,99,99,99,99,99,99,99,99,99', '3', null, null, '1', null, '1', '2019年下半年');
INSERT INTO `sys_stu` VALUES ('郑州轻工业大学', '电气信息工程学院', '软件工程17', '541713460204', '王小烨', '男', '18625566260', '2222', '66,66,66,66,66,66,66,66,66,66', '66,66,66,66,66,66,66,66,66,66', '1', '99,99,99,99,99,99,99,99,99,99', '99,99,99,99,99,99,99,99,99,99', '3', null, null, '1', null, '1', '2019年下半年');

-- ----------------------------
-- Table structure for sys_tea
-- ----------------------------
DROP TABLE IF EXISTS `sys_tea`;
CREATE TABLE `sys_tea` (
  `school` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `groupNum` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `is_mark` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_tea
-- ----------------------------
INSERT INTO `sys_tea` VALUES ('郑州轻工业大学', '电气信息工程学院', '3460201', '老师1', '男', '18625566260', '2333', '0');
INSERT INTO `sys_tea` VALUES ('郑州轻工业大学', '电气信息工程学院', '3460202', '老师2', '男', '18625566260', '2222', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `salt` varchar(20) DEFAULT '' COMMENT '盐加密',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '110', 'admin', '超级管理员', '00', '2410338910@qq.com', '18625566260', '0', '', 'e38a397488e0d6f01074e5f1f6cef28d', '6628bd', '0', '0', '127.0.0.1', '2019-10-19 15:52:56', 'admin', '2018-03-16 11:33:00', 'ry', '2019-10-19 15:52:56', '管理员');
INSERT INTO `sys_user` VALUES ('2', '103', 'dq', 'ha', '00', 'ry@qq.com', '15666666667', '0', '', '632c6f8ddc50d2d11d3c53dc21d9cdad', '809bb3', '0', '0', '127.0.0.1', '2019-10-19 15:53:43', 'admin', '2018-03-16 11:33:00', 'admin', '2019-10-19 15:53:43', '郑州轻工业大学电气信息工程学院管理员');
INSERT INTO `sys_user` VALUES ('3', '111', 'tea', 'tea', '00', '2410338911@qq.com', '16888888889', '0', '', 'e3ea2edda9764495fb468a4ea39394bf', '3bb81d', '0', '2', '127.0.0.1', '2019-10-15 17:43:14', 'dq', '2019-09-28 14:40:09', 'admin', '2019-10-15 17:43:14', '电气信息工程学院老师');
INSERT INTO `sys_user` VALUES ('37', '111', '3460201', '老师1', '00', '', '', '0', '', '8a046cf13fd9c5867998a0e8c0785d8c', 'd3e0e9', '0', '0', '127.0.0.1', '2019-10-18 16:29:14', '', null, '', '2019-10-18 16:29:14', '');
INSERT INTO `sys_user` VALUES ('38', '111', '3460202', '老师2', '00', '', '', '0', '', '73e7e0ed8d613952cd1a2b223f19b8f8', 'a5c17d', '0', '0', '127.0.0.1', '2019-10-15 22:33:36', '', null, '', '2019-10-15 22:33:36', '');
INSERT INTO `sys_user` VALUES ('39', '112', '541713460201', '王烨', '00', '', '', '0', '', '3069590d714c36fe7feac98ffa263748', 'c503fe', '0', '0', '127.0.0.1', '2019-10-19 15:48:42', '', null, '', '2019-10-19 15:48:42', '');
INSERT INTO `sys_user` VALUES ('40', '112', '541713460202', '苏一恒', '00', '', '', '0', '', 'f91d4d9bfd3d57193178f95da779dc98', '8e3e88', '0', '0', '127.0.0.1', '2019-10-17 14:11:19', '', null, '', '2019-10-17 14:11:19', '');
INSERT INTO `sys_user` VALUES ('41', '112', '541613460201', '程佩', '00', '', '', '0', '', '1b63f97424339577ab5dbbc4b25e299b', '399161', '0', '0', '127.0.0.1', '2019-10-19 14:02:04', '', null, '', '2019-10-19 14:02:04', '');
INSERT INTO `sys_user` VALUES ('42', '112', '541713460203', '胡一涛', '00', '', '', '0', '', '0aecf24324266f238d012faad74b0d20', '8c1116', '0', '0', '127.0.0.1', '2019-10-15 22:44:02', '', null, '', '2019-10-15 22:44:02', '');
INSERT INTO `sys_user` VALUES ('43', '112', '541713460204', '王小烨', '00', '', '', '0', '', '61f057768dc9eea0c1380323bbaaa2b0', 'a449b8', '0', '0', '127.0.0.1', '2019-10-15 22:36:41', '', null, '', '2019-10-15 22:36:41', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `sessionId` varchar(50) NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('202b2755-6c66-4ef4-bb8e-95d65f3291ed', 'dq', '郑州轻工业大学电气信息工程学院', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', 'on_line', '2019-10-19 15:53:37', '2019-10-19 15:53:43', '1800000');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('25', '3');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2');
INSERT INTO `sys_user_role` VALUES ('3', '5');
INSERT INTO `sys_user_role` VALUES ('37', '5');
INSERT INTO `sys_user_role` VALUES ('38', '5');
INSERT INTO `sys_user_role` VALUES ('39', '6');
INSERT INTO `sys_user_role` VALUES ('40', '6');
INSERT INTO `sys_user_role` VALUES ('41', '6');
INSERT INTO `sys_user_role` VALUES ('42', '6');
INSERT INTO `sys_user_role` VALUES ('43', '6');
