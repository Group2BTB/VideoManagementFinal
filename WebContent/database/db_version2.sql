/*
Navicat PGSQL Data Transfer

Source Server         : VideosManagement
Source Server Version : 90303
Source Host           : 192.168.178.148:5432
Source Database       : DBVMS
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2015-08-27 17:03:25
*/


-- ----------------------------
-- Sequence structure for answer_id_seq
-- ----------------------------
DROP SEQUENCE "public"."answer_id_seq";
CREATE SEQUENCE "public"."answer_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 28
 CACHE 1;
SELECT setval('"public"."answer_id_seq"', 28, true);

-- ----------------------------
-- Sequence structure for category_id_seq
-- ----------------------------
DROP SEQUENCE "public"."category_id_seq";
CREATE SEQUENCE "public"."category_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 89
 CACHE 1;
SELECT setval('"public"."category_id_seq"', 89, true);

-- ----------------------------
-- Sequence structure for comment_id_seq
-- ----------------------------
DROP SEQUENCE "public"."comment_id_seq";
CREATE SEQUENCE "public"."comment_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 303
 CACHE 1;
SELECT setval('"public"."comment_id_seq"', 303, true);

-- ----------------------------
-- Sequence structure for department_id_seq
-- ----------------------------
DROP SEQUENCE "public"."department_id_seq";
CREATE SEQUENCE "public"."department_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 47
 CACHE 1;
SELECT setval('"public"."department_id_seq"', 47, true);

-- ----------------------------
-- Sequence structure for document_id_seq
-- ----------------------------
DROP SEQUENCE "public"."document_id_seq";
CREATE SEQUENCE "public"."document_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."document_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for history_id_seq
-- ----------------------------
DROP SEQUENCE "public"."history_id_seq";
CREATE SEQUENCE "public"."history_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1174
 CACHE 1;
SELECT setval('"public"."history_id_seq"', 1174, true);

-- ----------------------------
-- Sequence structure for playlist_id_seq
-- ----------------------------
DROP SEQUENCE "public"."playlist_id_seq";
CREATE SEQUENCE "public"."playlist_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."playlist_id_seq"', 7, true);

-- ----------------------------
-- Sequence structure for question_id_seq
-- ----------------------------
DROP SEQUENCE "public"."question_id_seq";
CREATE SEQUENCE "public"."question_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;
SELECT setval('"public"."question_id_seq"', 11, true);

-- ----------------------------
-- Sequence structure for sponsor_id_seq
-- ----------------------------
DROP SEQUENCE "public"."sponsor_id_seq";
CREATE SEQUENCE "public"."sponsor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for university_id_seq
-- ----------------------------
DROP SEQUENCE "public"."university_id_seq";
CREATE SEQUENCE "public"."university_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."university_id_seq"', 4, true);

-- ----------------------------
-- Sequence structure for user_id_seq
-- ----------------------------
DROP SEQUENCE "public"."user_id_seq";
CREATE SEQUENCE "public"."user_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27
 CACHE 1;
SELECT setval('"public"."user_id_seq"', 27, true);

-- ----------------------------
-- Sequence structure for video_id_seq
-- ----------------------------
DROP SEQUENCE "public"."video_id_seq";
CREATE SEQUENCE "public"."video_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 48
 CACHE 1;
SELECT setval('"public"."video_id_seq"', 48, true);

-- ----------------------------
-- Sequence structure for view_time_id_seq
-- ----------------------------
DROP SEQUENCE "public"."view_time_id_seq";
CREATE SEQUENCE "public"."view_time_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;

-- ----------------------------
-- Sequence structure for watch_later_id_seq
-- ----------------------------
DROP SEQUENCE "public"."watch_later_id_seq";
CREATE SEQUENCE "public"."watch_later_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19
 CACHE 1;
SELECT setval('"public"."watch_later_id_seq"', 19, true);

-- ----------------------------
-- Table structure for tb_answer
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_answer";
CREATE TABLE "public"."tb_answer" (
"answer_id" int8 DEFAULT nextval('answer_id_seq'::regclass) NOT NULL,
"description" text COLLATE "default",
"question_id" int8,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"status" int2 DEFAULT 1 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_answer
-- ----------------------------
INSERT INTO "public"."tb_answer" VALUES ('17', 'Jsp is jasp', '8', '2015-08-12 14:25:57.404', '0');
INSERT INTO "public"."tb_answer" VALUES ('18', 'jsp is java server page', '8', '2015-08-12 14:25:57.428', '1');
INSERT INTO "public"."tb_answer" VALUES ('19', 'i don''t know', '8', '2015-08-12 14:25:57.449', '0');
INSERT INTO "public"."tb_answer" VALUES ('20', 'Boy manage Help', '9', '2015-08-12 17:10:07.49', '0');
INSERT INTO "public"."tb_answer" VALUES ('21', 'Boram Menghok', '9', '2015-08-12 17:10:07.571', '1');
INSERT INTO "public"."tb_answer" VALUES ('22', 'Sexy lady', '9', '2015-08-12 17:10:07.608', '0');
INSERT INTO "public"."tb_answer" VALUES ('23', 'HyperText Markup Language', '10', '2015-08-13 14:06:25', '1');
INSERT INTO "public"."tb_answer" VALUES ('24', 'Hello', '10', '2015-08-13 14:06:25.06', '0');
INSERT INTO "public"."tb_answer" VALUES ('25', 'world', '10', '2015-08-13 14:06:25.09', '0');
INSERT INTO "public"."tb_answer" VALUES ('26', 'JavaScript Object Notation', '11', '2015-08-14 14:34:36.75', '1');
INSERT INTO "public"."tb_answer" VALUES ('27', 'jfdgksjdfj', '11', '2015-08-14 14:34:36.83', '0');
INSERT INTO "public"."tb_answer" VALUES ('28', 'gdfjhgdjf', '11', '2015-08-14 14:34:36.877', '0');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_category";
CREATE TABLE "public"."tb_category" (
"category_id" int4 DEFAULT nextval('category_id_seq'::regclass) NOT NULL,
"category_name" varchar(100) COLLATE "default" NOT NULL,
"description" text COLLATE "default",
"logo" varchar(100) COLLATE "default",
"parent_id" int4,
"status" int2 DEFAULT 1 NOT NULL,
"user_id" int8,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"modifier_date" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_category
-- ----------------------------
INSERT INTO "public"."tb_category" VALUES ('59', 'Web Development', ' ', 'uploads/category/59.png', '0', '1', '27', '2015-08-08 14:25:05.179', '2015-08-08 14:25:05.179');
INSERT INTO "public"."tb_category" VALUES ('60', 'Programming', ' ', 'uploads/category/60.png', '0', '1', '27', '2015-08-08 14:25:42.419', '2015-08-08 14:25:42.419');
INSERT INTO "public"."tb_category" VALUES ('61', 'Languages', ' ', 'uploads/category/61.png', '0', '1', '27', '2015-08-08 14:26:09.288', '2015-08-08 14:26:09.288');
INSERT INTO "public"."tb_category" VALUES ('62', 'Mobile Technology', ' ', 'uploads/category/62.png', '0', '1', '27', '2015-08-08 14:26:34.452', '2015-08-08 14:26:34.452');
INSERT INTO "public"."tb_category" VALUES ('63', 'Design', ' ', 'uploads/category/63.png', '0', '1', '27', '2015-08-08 14:27:02.021', '2015-08-08 14:27:02.021');
INSERT INTO "public"."tb_category" VALUES ('64', 'Mathematic', ' ', 'uploads/category/64.png', '0', '1', '27', '2015-08-08 14:27:25.243', '2015-08-08 14:27:25.243');
INSERT INTO "public"."tb_category" VALUES ('65', 'Learn HTML', ' wvwgwgwg', 'uploads/category/65.png', '59', '1', '27', '2015-08-08 14:29:33.774', '2015-08-10 00:00:00');
INSERT INTO "public"."tb_category" VALUES ('66', 'Learn Java', '', 'uploads/category/66.png', '60', '1', '27', '2015-08-09 09:33:59.927', '2015-08-09 09:33:59.927');
INSERT INTO "public"."tb_category" VALUES ('68', 'TOEFL', ' TOEFL', 'uploads/category/68.png', '61', '1', '27', '2015-08-09 10:05:56.669', '2015-08-12 00:00:00');
INSERT INTO "public"."tb_category" VALUES ('72', 'Korea', ' ', 'uploads/noimagecat.png', '61', '1', '27', '2015-08-12 20:01:40.146', '2015-08-12 20:01:40.146');
INSERT INTO "public"."tb_category" VALUES ('73', 'English', ' ', 'uploads/noimagecat.png', '61', '1', '27', '2015-08-12 20:03:24.963', '2015-08-12 20:03:24.963');
INSERT INTO "public"."tb_category" VALUES ('75', 'Photo Shop', ' ', 'uploads/noimagecat.png', '63', '1', '27', '2015-08-12 20:12:45.799', '2015-08-12 20:12:45.799');
INSERT INTO "public"."tb_category" VALUES ('76', 'Learn illustrator', ' ', 'uploads/noimagecat.png', '63', '1', '27', '2015-08-12 20:13:32.849', '2015-08-13 00:00:00');
INSERT INTO "public"."tb_category" VALUES ('77', 'C#', ' ', 'uploads/noimagecat.png', '60', '1', '27', '2015-08-13 14:04:04.098', '2015-08-13 14:04:04.098');
INSERT INTO "public"."tb_category" VALUES ('78', 'VB.Net', ' ', 'uploads/noimagecat.png', '60', '1', '27', '2015-08-13 15:24:10.713', '2015-08-13 15:24:10.713');
INSERT INTO "public"."tb_category" VALUES ('79', 'C++', ' ', 'uploads/noimagecat.png', '60', '1', '27', '2015-08-13 15:24:24.306', '2015-08-13 15:24:24.306');
INSERT INTO "public"."tb_category" VALUES ('84', 'ASP.NET', ' ', 'uploads/noimagecat.png', '60', '1', '27', '2015-08-13 15:26:55.636', '2015-08-13 15:26:55.636');
INSERT INTO "public"."tb_category" VALUES ('85', 'PHP5', ' ', 'uploads/noimagecat.png', '60', '1', '27', '2015-08-13 15:27:05.987', '2015-08-14 00:00:00');
INSERT INTO "public"."tb_category" VALUES ('87', 'Physic', ' ', 'uploads/noimagecat.png', '0', '1', '27', '2015-08-14 14:30:19.746', '2015-08-14 14:30:19.746');
INSERT INTO "public"."tb_category" VALUES ('88', 'Physic 11', ' ', 'uploads/noimagecat.png', '87', '1', '27', '2015-08-14 14:30:50.665', '2015-08-14 14:30:50.665');

-- ----------------------------
-- Table structure for tb_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_comment";
CREATE TABLE "public"."tb_comment" (
"comment_id" int8 DEFAULT nextval('comment_id_seq'::regclass) NOT NULL,
"description" text COLLATE "default" NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"like" int8 DEFAULT 0,
"unlike" int8 DEFAULT 0,
"parent_id" int8,
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"view" int2 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_comment
-- ----------------------------
INSERT INTO "public"."tb_comment" VALUES ('292', 'THIS IS A GOOD TUTORIALS', '2015-08-27 15:47:09.961', '0', '0', null, '27', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('293', 'I THINK SO....', '2015-08-27 15:48:14.391', '0', '0', '292', '17', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('294', 'YES, OF COURSE MAN!!!', '2015-08-27 15:48:47.647', '0', '0', '292', '77', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('295', 'REALY GOOD FOR US', '2015-08-27 15:49:32.928', '0', '0', '292', '7', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('297', 'MR LENG HENG', '2015-08-27 15:56:23.75', '0', '0', null, '27', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('303', 'dara pisal', '2015-08-27 16:51:35.857', '0', '0', null, '27', '19', '1');

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_department";
CREATE TABLE "public"."tb_department" (
"department_id" int8 DEFAULT nextval('department_id_seq'::regclass) NOT NULL,
"department_name" varchar(100) COLLATE "default" NOT NULL,
"description" text COLLATE "default",
"status" int2 DEFAULT 1 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO "public"."tb_department" VALUES ('38', 'Computer Science Department', '', '1');
INSERT INTO "public"."tb_department" VALUES ('39', 'Business and Economic Department', '', '0');
INSERT INTO "public"."tb_department" VALUES ('40', 'Law and Public Affairs Department', '', '0');
INSERT INTO "public"."tb_department" VALUES ('41', 'Art, Letter and Humanities Department', '', '0');
INSERT INTO "public"."tb_department" VALUES ('42', 'Communication and Media Art Department', null, '0');
INSERT INTO "public"."tb_department" VALUES ('43', 'Architecture and Design Department', null, '0');
INSERT INTO "public"."tb_department" VALUES ('44', 'Management and Economic Department', '', '1');
INSERT INTO "public"."tb_department" VALUES ('45', 'Social Sciences and International Relations Department', '', '1');
INSERT INTO "public"."tb_department" VALUES ('46', 'Department of Science', '', '1');
INSERT INTO "public"."tb_department" VALUES ('47', 'other', null, '0');

-- ----------------------------
-- Table structure for tb_document
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_document";
CREATE TABLE "public"."tb_document" (
"document_id" int8 DEFAULT nextval('document_id_seq'::regclass) NOT NULL,
"document_name" varchar(100) COLLATE "default" NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"status" int2 DEFAULT 1 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_document
-- ----------------------------
INSERT INTO "public"."tb_document" VALUES ('2', 'doc1', '2015-08-04 13:18:50.718', '1');

-- ----------------------------
-- Table structure for tb_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_history";
CREATE TABLE "public"."tb_history" (
"history_id" int8 DEFAULT nextval('history_id_seq'::regclass) NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"time" varchar(32) COLLATE "default",
"percent" varchar(32) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_history
-- ----------------------------
INSERT INTO "public"."tb_history" VALUES ('390', '2015-08-25 08:39:34.548', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('391', '2015-08-25 08:39:53.627', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('392', '2015-08-25 08:40:04.195', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('393', '2015-08-25 08:40:24.834', '7', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('394', '2015-08-25 08:45:05.348', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('395', '2015-08-25 08:45:11.776', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('496', '2015-08-26 10:48:00.094', '7', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('497', '2015-08-26 10:48:45.037', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('498', '2015-08-26 10:49:05.03', '7', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('510', '2015-08-26 11:49:08.462', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('511', '2015-08-26 11:51:51.127', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('512', '2015-08-26 11:52:05.463', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('513', '2015-08-26 11:52:39.719', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('514', '2015-08-26 11:52:58.063', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('515', '2015-08-26 11:53:58.812', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('516', '2015-08-26 11:54:07.362', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('529', '2015-08-26 15:13:15.918', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('586', '2015-08-26 17:00:00.627', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('677', '2015-08-27 08:56:22.041', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('678', '2015-08-27 08:56:24.742', '17', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('681', '2015-08-27 08:57:48.899', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('682', '2015-08-27 08:57:55.653', '17', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('685', '2015-08-27 08:59:14.895', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('687', '2015-08-27 08:59:17.066', '17', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('690', '2015-08-27 09:00:42.393', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('695', '2015-08-27 09:05:01.446', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('696', '2015-08-27 09:05:21.427', '17', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('697', '2015-08-27 09:06:40.907', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('698', '2015-08-27 09:06:58.041', '17', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('702', '2015-08-27 09:08:48.457', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('703', '2015-08-27 09:08:54.59', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('706', '2015-08-27 09:10:06.957', '17', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('707', '2015-08-27 09:10:13.695', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1077', '2015-08-27 15:33:25.244', '27', '18', null, null);
INSERT INTO "public"."tb_history" VALUES ('1078', '2015-08-27 15:33:28.417', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1079', '2015-08-27 15:33:34.076', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1080', '2015-08-27 15:33:52.154', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('1081', '2015-08-27 15:34:21.033', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('1082', '2015-08-27 15:34:27.998', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1083', '2015-08-27 15:34:31.216', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1084', '2015-08-27 15:35:41.462', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1085', '2015-08-27 15:35:42.824', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1086', '2015-08-27 15:37:03.526', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1087', '2015-08-27 15:37:10.225', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1088', '2015-08-27 15:37:53.307', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1089', '2015-08-27 15:38:54.691', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1090', '2015-08-27 15:38:57.598', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1091', '2015-08-27 15:40:43.205', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1092', '2015-08-27 15:40:44.756', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1093', '2015-08-27 15:43:37.883', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1094', '2015-08-27 15:43:41.584', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1095', '2015-08-27 15:43:49.156', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1096', '2015-08-27 15:43:56.876', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1097', '2015-08-27 15:43:58.324', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1098', '2015-08-27 15:44:51.007', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1099', '2015-08-27 15:45:03.213', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1100', '2015-08-27 15:45:39.693', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1101', '2015-08-27 15:46:49.556', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1102', '2015-08-27 15:46:54.016', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1103', '2015-08-27 15:47:35.59', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1104', '2015-08-27 15:48:19.543', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1105', '2015-08-27 15:48:56.461', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1106', '2015-08-27 15:49:44.628', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1107', '2015-08-27 15:54:27.62', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1108', '2015-08-27 15:56:17.16', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1109', '2015-08-27 16:00:29.404', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1110', '2015-08-27 16:17:44.255', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1111', '2015-08-27 16:20:54.172', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1112', '2015-08-27 16:21:10.859', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1113', '2015-08-27 16:21:17.926', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1114', '2015-08-27 16:21:34.25', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1115', '2015-08-27 16:21:44.611', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1116', '2015-08-27 16:22:18.277', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1117', '2015-08-27 16:22:22.685', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1118', '2015-08-27 16:22:44.523', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1119', '2015-08-27 16:22:46.818', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1120', '2015-08-27 16:22:54.524', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1121', '2015-08-27 16:23:00.868', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1122', '2015-08-27 16:23:07.797', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1123', '2015-08-27 16:24:01.667', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1124', '2015-08-27 16:25:02.611', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1125', '2015-08-27 16:25:21.608', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1126', '2015-08-27 16:26:31.295', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('1127', '2015-08-27 16:26:32.312', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1128', '2015-08-27 16:29:29.282', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1129', '2015-08-27 16:29:29.73', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('1130', '2015-08-27 16:29:30.353', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1131', '2015-08-27 16:30:17.425', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1132', '2015-08-27 16:30:17.976', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('1133', '2015-08-27 16:31:21.216', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1134', '2015-08-27 16:31:21.644', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('1135', '2015-08-27 16:31:25.986', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1136', '2015-08-27 16:31:51.701', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1137', '2015-08-27 16:31:55.485', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1138', '2015-08-27 16:31:58.995', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1139', '2015-08-27 16:32:15.6', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1140', '2015-08-27 16:32:22.291', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1141', '2015-08-27 16:32:45.41', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('1142', '2015-08-27 16:32:52.951', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1143', '2015-08-27 16:34:04.615', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1144', '2015-08-27 16:34:36.703', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1145', '2015-08-27 16:34:37.269', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('1146', '2015-08-27 16:35:07.939', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1147', '2015-08-27 16:36:19.008', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('1148', '2015-08-27 16:36:19.011', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1149', '2015-08-27 16:37:59.104', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1150', '2015-08-27 16:38:08.993', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1151', '2015-08-27 16:38:16.588', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1152', '2015-08-27 16:39:23.189', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1153', '2015-08-27 16:39:23.836', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('1154', '2015-08-27 16:39:37.664', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1155', '2015-08-27 16:42:56.292', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1156', '2015-08-27 16:43:39.077', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1157', '2015-08-27 16:43:39.406', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('1158', '2015-08-27 16:43:42.51', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1159', '2015-08-27 16:43:42.831', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('1160', '2015-08-27 16:44:22.167', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1161', '2015-08-27 16:44:39.635', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1162', '2015-08-27 16:44:54.791', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1163', '2015-08-27 16:46:16.368', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1164', '2015-08-27 16:46:21.055', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1165', '2015-08-27 16:50:08.568', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1166', '2015-08-27 16:51:54.146', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1167', '2015-08-27 16:53:55.233', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1168', '2015-08-27 16:54:52.054', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1169', '2015-08-27 16:55:50.383', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1170', '2015-08-27 16:56:17.019', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1171', '2015-08-27 16:58:09.575', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1172', '2015-08-27 16:58:27.161', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1173', '2015-08-27 16:58:38.028', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('1174', '2015-08-27 17:03:57.308', '27', '19', null, null);

-- ----------------------------
-- Table structure for tb_like
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_like";
CREATE TABLE "public"."tb_like" (
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"status" int2 DEFAULT 1
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_like
-- ----------------------------

-- ----------------------------
-- Table structure for tb_playlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_playlist";
CREATE TABLE "public"."tb_playlist" (
"playlist_id" int8 DEFAULT nextval('playlist_id_seq'::regclass) NOT NULL,
"playlist_name" varchar(100) COLLATE "default" NOT NULL,
"description" text COLLATE "default",
"category_id" int2,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"modifier_date" timestamp(6) DEFAULT now(),
"status" int2 DEFAULT 1 NOT NULL,
"approved" int2 DEFAULT 1 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_playlist
-- ----------------------------
INSERT INTO "public"."tb_playlist" VALUES ('1', 'Java', 'Java', '66', '2015-08-11 00:11:16.619', '2015-08-11 00:11:16.619', '1', '1');
INSERT INTO "public"."tb_playlist" VALUES ('2', 'HTML', 'html', '65', '2015-08-10 23:52:36.567', '2015-08-11 00:00:00', '1', '1');
INSERT INTO "public"."tb_playlist" VALUES ('4', 'C#', 'C#', '77', '2015-08-11 00:11:16.619', '2015-08-11 00:11:16.619', '1', '1');
INSERT INTO "public"."tb_playlist" VALUES ('5', 'Korean', 'Korean', '72', '2015-08-11 00:12:36.68', '2015-08-11 00:12:36.68', '1', '1');
INSERT INTO "public"."tb_playlist" VALUES ('7', 'Englidh', null, '0', '2015-08-24 11:17:25.185', '2015-08-24 11:17:25.185', '1', '1');

-- ----------------------------
-- Table structure for tb_questions
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_questions";
CREATE TABLE "public"."tb_questions" (
"question_id" int8 DEFAULT nextval('question_id_seq'::regclass) NOT NULL,
"description" text COLLATE "default" NOT NULL,
"video_id" int8 NOT NULL,
"create_date" timestamp(6) DEFAULT now(),
"status" int2 DEFAULT 1 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_questions
-- ----------------------------
INSERT INTO "public"."tb_questions" VALUES ('8', 'What is JSP?', '17', '2015-08-12 00:00:00', '1');
INSERT INTO "public"."tb_questions" VALUES ('9', 'What is C#?', '17', '2015-08-12 00:00:00', '1');
INSERT INTO "public"."tb_questions" VALUES ('10', 'what is HTML?', '19', '2015-08-13 00:00:00', '1');
INSERT INTO "public"."tb_questions" VALUES ('11', 'What is JSON?', '28', '2015-08-14 00:00:00', '1');

-- ----------------------------
-- Table structure for tb_university
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_university";
CREATE TABLE "public"."tb_university" (
"university_id" int2 DEFAULT nextval('university_id_seq'::regclass) NOT NULL,
"university_name" varchar(50) COLLATE "default" NOT NULL,
"short_name" varchar(10) COLLATE "default",
"address" varchar(255) COLLATE "default",
"status" int2 DEFAULT 1 NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"logo" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_university
-- ----------------------------
INSERT INTO "public"."tb_university" VALUES ('4', 'rupp', null, null, '0', '2015-08-01 12:01:08.944', null);
INSERT INTO "public"."tb_university" VALUES ('7', 'National University of Management', 'NUM', 'PP', '1', '2015-08-21 08:26:03.401', null);

-- ----------------------------
-- Table structure for tb_user_playlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_user_playlist";
CREATE TABLE "public"."tb_user_playlist" (
"user_id" int8 NOT NULL,
"playlist_id" int8 NOT NULL,
"create_date" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_user_playlist
-- ----------------------------
INSERT INTO "public"."tb_user_playlist" VALUES ('7', '1', '2015-08-21 16:52:15.993');
INSERT INTO "public"."tb_user_playlist" VALUES ('10', '5', '2015-08-24 08:30:47.741');
INSERT INTO "public"."tb_user_playlist" VALUES ('27', '4', '2015-08-21 16:42:17.618');
INSERT INTO "public"."tb_user_playlist" VALUES ('27', '5', '2015-08-21 16:41:53.22');

-- ----------------------------
-- Table structure for tb_user_video
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_user_video";
CREATE TABLE "public"."tb_user_video" (
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"time" varchar COLLATE "default",
"percent" varchar COLLATE "default",
"create_date" date DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_user_video
-- ----------------------------
INSERT INTO "public"."tb_user_video" VALUES ('27', '17', '00:57', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '18', '00:21', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '19', '00:58', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '20', '12:29', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '22', '07:38', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '23', '00:29', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '24', '00:07', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '29', '05:45', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '30', '00:22', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '35', '00:59', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '43', '05:27', null, '2015-08-27');
INSERT INTO "public"."tb_user_video" VALUES ('27', '48', '00:01', null, '2015-08-27');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_users";
CREATE TABLE "public"."tb_users" (
"user_id" int8 DEFAULT nextval('user_id_seq'::regclass) NOT NULL,
"username" varchar(30) COLLATE "default" NOT NULL,
"passwd" varchar(100) COLLATE "default" NOT NULL,
"email" varchar(100) COLLATE "default" NOT NULL,
"fullname" varchar(50) COLLATE "default",
"gender" char(1) COLLATE "default" DEFAULT 1,
"role" varchar(10) COLLATE "default",
"status" int2 DEFAULT 1 NOT NULL,
"approved" int2 DEFAULT 1 NOT NULL,
"register_date" timestamp(6) DEFAULT now() NOT NULL,
"department_id" int2,
"phone" varchar(15) COLLATE "default",
"profile" varchar(50) COLLATE "default",
"DOB" timestamp(6),
"university_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO "public"."tb_users" VALUES ('7', 'narith', '123', 'narith@gmail.com', null, '1', 'user', '0', '1', '2015-08-20 15:56:10.135', '40', null, null, null, '4');
INSERT INTO "public"."tb_users" VALUES ('10', 'sophath', '123', 'aa', null, '1', 'user', '1', '1', '2015-08-20 16:39:38.532', '40', null, null, null, '4');
INSERT INTO "public"."tb_users" VALUES ('17', 'sereyvong', '123', 'ee', null, '1', 'admin', '1', '1', '2015-08-01 11:19:22.5', '45', null, null, '1990-08-07 00:00:00', '4');
INSERT INTO "public"."tb_users" VALUES ('27', 'heng', '123', 'qq4', null, '1', 'user', '0', '1', '2015-08-07 14:07:40.194', '45', null, null, '1990-08-07 00:00:00', '4');
INSERT INTO "public"."tb_users" VALUES ('77', 'Dara', '123', 'bb', null, '1', 'user', '1', '1', '2015-08-21 08:23:42.603', '38', null, null, null, '4');

-- ----------------------------
-- Table structure for tb_video_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_video_category";
CREATE TABLE "public"."tb_video_category" (
"video_id" int8 NOT NULL,
"category_id" int2 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_video_category
-- ----------------------------
INSERT INTO "public"."tb_video_category" VALUES ('17', '59');
INSERT INTO "public"."tb_video_category" VALUES ('18', '66');

-- ----------------------------
-- Table structure for tb_video_playlist
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_video_playlist";
CREATE TABLE "public"."tb_video_playlist" (
"video_id" int8 NOT NULL,
"playlist_id" int8 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_video_playlist
-- ----------------------------
INSERT INTO "public"."tb_video_playlist" VALUES ('17', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('18', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('19', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('20', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('22', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('23', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('24', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('26', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('28', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('29', '1');
INSERT INTO "public"."tb_video_playlist" VALUES ('30', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('31', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('32', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('33', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('34', '4');
INSERT INTO "public"."tb_video_playlist" VALUES ('35', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('36', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('37', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('38', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('39', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('40', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('42', '5');
INSERT INTO "public"."tb_video_playlist" VALUES ('43', '2');
INSERT INTO "public"."tb_video_playlist" VALUES ('46', '2');
INSERT INTO "public"."tb_video_playlist" VALUES ('47', '2');
INSERT INTO "public"."tb_video_playlist" VALUES ('48', '2');

-- ----------------------------
-- Table structure for tb_videos
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_videos";
CREATE TABLE "public"."tb_videos" (
"video_id" int8 DEFAULT nextval('video_id_seq'::regclass) NOT NULL,
"video_name" varchar(255) COLLATE "default" NOT NULL,
"description" text COLLATE "default",
"youtube_url" varchar(255) COLLATE "default",
"document_url" varchar(255) COLLATE "default",
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"modifier_date" timestamp(6) DEFAULT now(),
"user_id" int8 NOT NULL,
"status" int2 DEFAULT 1 NOT NULL,
"approved" int2 DEFAULT 1 NOT NULL,
"view" int8 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_videos
-- ----------------------------
INSERT INTO "public"."tb_videos" VALUES ('17', '1. How to Create Project', 'Java Introduction', '_S5N988gCmo', 'doc1', '2015-08-10 20:43:24.392', '2015-08-14 00:00:00', '27', '1', '1', '15');
INSERT INTO "public"."tb_videos" VALUES ('18', '2. How to Create Message Box', 'How to setup java environment', '3LgOY7cS0iY', 'doc1', '2015-08-10 20:46:15.904', '2015-08-10 20:46:15.904', '27', '1', '1', '121');
INSERT INTO "public"."tb_videos" VALUES ('19', 'Class & Object', 'Datatype', 'DmUv8fwRpXE', null, '2015-08-12 18:52:41.421', '2015-08-12 18:52:41.421', '27', '1', '1', '55');
INSERT INTO "public"."tb_videos" VALUES ('20', '2.3 - Modifers', null, '_PF9pEARFS0', null, '2015-08-12 19:21:33.497', '2015-08-12 19:21:33.497', '27', '1', '1', '224');
INSERT INTO "public"."tb_videos" VALUES ('21', '2.4 - Operator', null, '2l1GeFqGy_c', null, '2015-08-12 19:23:21.093', '2015-08-12 19:23:21.093', '27', '1', '1', '49');
INSERT INTO "public"."tb_videos" VALUES ('22', '2.5 - System IO ', null, '05OzdkNBwBI', null, '2015-08-12 19:25:04.028', '2015-08-12 19:25:04.028', '27', '1', '1', '205');
INSERT INTO "public"."tb_videos" VALUES ('23', '3.1 - Loop', null, 'vSfCwDtE0Q4', null, '2015-08-12 19:26:51.807', '2015-08-12 19:26:51.807', '27', '1', '1', '352');
INSERT INTO "public"."tb_videos" VALUES ('24', '3.2 - Decision Making', null, 'GjOT5eyTf18', null, '2015-08-12 19:28:48.522', '2015-08-12 19:28:48.522', '27', '1', '1', '1128');
INSERT INTO "public"."tb_videos" VALUES ('26', '5.1 -  Array', null, '77gg-mgF-Fg', null, '2015-08-14 08:57:32.656', '2015-08-14 08:57:32.656', '27', '1', '1', '160');
INSERT INTO "public"."tb_videos" VALUES ('28', '4.1 - Number', null, 'riMKPjN4IZ8', null, '2015-08-14 08:58:42.11', '2015-08-14 08:58:42.11', '27', '1', '1', '180');
INSERT INTO "public"."tb_videos" VALUES ('29', '4.2 - Charater', null, 'V_hGTE5Bmfc', null, '2015-08-14 08:59:52.427', '2015-08-14 08:59:52.427', '27', '1', '1', '329');
INSERT INTO "public"."tb_videos" VALUES ('30', '3 How to Declare Variable', null, 'mhKU5bKZIz8', null, '2015-08-14 11:04:46.246', '2015-08-14 11:04:46.246', '27', '1', '1', '107');
INSERT INTO "public"."tb_videos" VALUES ('31', ' 4 Sum of Two Variables', null, 'OmgyFdz_zsM', null, '2015-08-14 11:06:34.604', '2015-08-14 11:06:34.604', '27', '1', '1', '83');
INSERT INTO "public"."tb_videos" VALUES ('32', '5 How to Calculate of Two Value', null, 'MvBeS6JT00A', null, '2015-08-14 11:07:19.121', '2015-08-14 11:07:19.121', '27', '1', '1', '93');
INSERT INTO "public"."tb_videos" VALUES ('33', ' 6 How to using random', null, 'KhZh2gvfHDk', null, '2015-08-14 11:08:01.862', '2015-08-14 11:08:01.862', '27', '1', '1', '69');
INSERT INTO "public"."tb_videos" VALUES ('34', '8 How to Make a Calculator in C# Windows Form Application', null, 'vQL-ZRebxLk', null, '2015-08-14 11:11:14.23', '2015-08-14 11:11:14.23', '27', '1', '1', '198');
INSERT INTO "public"."tb_videos" VALUES ('35', '1. Consonant', null, 'Za5RloAb8xk', null, '2015-08-14 11:17:03.569', '2015-08-14 11:17:03.569', '27', '1', '1', '142');
INSERT INTO "public"."tb_videos" VALUES ('36', '3. How To Read', null, 'IjvdAi7406w', null, '2015-08-14 12:32:05.865', '2015-08-14 12:32:05.865', '27', '1', '1', '29');
INSERT INTO "public"."tb_videos" VALUES ('37', '4.1 Grammar 1', null, 'LMRuxcsFRMY', null, '2015-08-14 12:33:07.481', '2015-08-14 12:33:07.481', '27', '1', '1', '41');
INSERT INTO "public"."tb_videos" VALUES ('38', '4.2 Conversation 1', null, 'iTHCDj7rb60', null, '2015-08-14 12:33:34.925', '2015-08-14 12:33:34.925', '27', '1', '1', '37');
INSERT INTO "public"."tb_videos" VALUES ('39', '5.1 Grammar 2', null, 'Jp1er_kzmb8', null, '2015-08-14 12:34:09.978', '2015-08-14 12:34:09.978', '27', '1', '1', '81');
INSERT INTO "public"."tb_videos" VALUES ('40', '6.1 Grammar 3', null, 'wa0c6kZn4E4', null, '2015-08-14 12:34:41.012', '2015-08-14 12:34:41.012', '27', '1', '1', '137');
INSERT INTO "public"."tb_videos" VALUES ('42', '7.1 Grammar 4', null, 'uDI5HtDU7e8', null, '2015-08-14 12:35:13.396', '2015-08-14 12:35:13.396', '27', '1', '1', '32');
INSERT INTO "public"."tb_videos" VALUES ('43', 'Introduction to HTML', null, 'Ih8H6HXeKQQ', null, '2015-08-14 12:57:25.113', '2015-08-14 12:57:25.113', '27', '1', '1', '51');
INSERT INTO "public"."tb_videos" VALUES ('46', '2. HTML Elements, Syntax, Attribute, Heading, Line', null, 'ShTRRMsvT9I', null, '2015-08-14 13:25:37.334', '2015-08-14 13:25:37.334', '27', '1', '1', '74');
INSERT INTO "public"."tb_videos" VALUES ('47', '3. HTML Paragraph, Text Formatting, Comments, Link', null, 'SmeFRcmPW7A', null, '2015-08-14 13:26:10.11', '2015-08-14 13:26:10.11', '27', '1', '1', '77');
INSERT INTO "public"."tb_videos" VALUES ('48', '4. HTML Head, CSS, Image', null, '0rsUF3Ii_jk', null, '2015-08-14 13:26:35.443', '2015-08-14 13:26:35.443', '27', '1', '1', '63');

-- ----------------------------
-- Table structure for tb_view_time
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_view_time";
CREATE TABLE "public"."tb_view_time" (
"view_time_id" int8 DEFAULT nextval('view_time_id_seq'::regclass) NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"time" varchar(10) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_view_time
-- ----------------------------

-- ----------------------------
-- Table structure for tb_vote
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_vote";
CREATE TABLE "public"."tb_vote" (
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL,
"level" int2 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_vote
-- ----------------------------
INSERT INTO "public"."tb_vote" VALUES ('27', '17', '5');
INSERT INTO "public"."tb_vote" VALUES ('27', '18', '6');
INSERT INTO "public"."tb_vote" VALUES ('27', '19', '5');
INSERT INTO "public"."tb_vote" VALUES ('27', '20', '5');
INSERT INTO "public"."tb_vote" VALUES ('27', '21', '5');
INSERT INTO "public"."tb_vote" VALUES ('27', '22', '4');

-- ----------------------------
-- Table structure for tb_watch_later
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb_watch_later";
CREATE TABLE "public"."tb_watch_later" (
"watch_later_id" int8 DEFAULT nextval('watch_later_id_seq'::regclass) NOT NULL,
"create_date" timestamp(6) DEFAULT now() NOT NULL,
"user_id" int8 NOT NULL,
"video_id" int8 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tb_watch_later
-- ----------------------------

-- ----------------------------
-- View structure for selectAllCategory
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectAllCategory" AS 
 SELECT c.category_id,
    c.category_name,
    c.description,
    c.logo,
    c.parent_id,
    cat.category_name AS parent_name,
    c.status AS status1,
        CASE
            WHEN (c.status = 1) THEN 'Aactive'::text
            ELSE 'Deactive'::text
        END AS status,
    c.user_id
   FROM ((tb_category c
   LEFT JOIN tb_category cat ON ((c.parent_id = cat.category_id)))
   LEFT JOIN tb_users u ON ((c.user_id = u.user_id)))
  ORDER BY c.category_id DESC, c.category_name;

-- ----------------------------
-- View structure for selectAllComment
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectAllComment" AS 
 SELECT c.comment_id,
    c.description,
    c.create_date,
    c."like",
    c.unlike,
    c.parent_id,
    c.user_id,
    u.username,
    v.video_id,
    v.video_name,
    c.view
   FROM ((tb_comment c
   LEFT JOIN tb_users u ON ((u.user_id = c.user_id)))
   LEFT JOIN tb_videos v ON ((v.video_id = c.video_id)));

-- ----------------------------
-- View structure for selectallplaylist
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectallplaylist" AS 
 SELECT tb_playlist.playlist_id,
    tb_playlist.playlist_name,
    tb_playlist.description,
    tb_playlist.category_id,
    tb_playlist.create_date,
    tb_playlist.modifier_date,
    tb_playlist.status,
    tb_playlist.approved
   FROM tb_playlist;

-- ----------------------------
-- View structure for selectAllQuestion
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectAllQuestion" AS 
 SELECT q.question_id,
    q.description,
    q.video_id,
    v.video_name,
    q.status AS status1,
        CASE
            WHEN (q.status = 1) THEN 'Aactive'::text
            ELSE 'Deactive'::text
        END AS status
   FROM (tb_questions q
   LEFT JOIN tb_videos v ON ((v.video_id = q.video_id)));

-- ----------------------------
-- View structure for selectallvideo
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectallvideo" AS 
 SELECT v.video_id,
    v.video_name,
    v.view,
    v.youtube_url,
    v.document_url,
    v.description,
    v.status AS status1,
    v.approved,
        CASE
            WHEN (v.status = 1) THEN 'Aactive'::text
            ELSE 'Deactive'::text
        END AS status,
    u.username,
    ( SELECT count(*) AS count
           FROM tb_like
          WHERE (tb_like.status = 1)) AS "like",
    ( SELECT count(*) AS count
           FROM tb_like
          WHERE (tb_like.status = 0)) AS unlike,
    ( SELECT count(*) AS count
           FROM tb_comment) AS comment,
    vc.category_id,
    u.user_id
   FROM ((tb_videos v
   LEFT JOIN tb_users u ON ((u.user_id = v.user_id)))
   LEFT JOIN tb_video_category vc ON ((vc.video_id = v.video_id)));

-- ----------------------------
-- View structure for selectQuestion
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectQuestion" AS 
 SELECT q.question_id,
    q.video_id,
    q.description AS question,
    a.answer_id,
    a.description AS answer,
    a.status
   FROM (tb_questions q
   LEFT JOIN tb_answer a ON ((q.question_id = a.question_id)))
  WHERE (q.status = 1);

-- ----------------------------
-- View structure for selectvideoplaylist
-- ----------------------------
CREATE OR REPLACE VIEW "public"."selectvideoplaylist" AS 
 SELECT v.video_id,
    v.video_name,
    v.status AS status1,
    vc.category_id,
    c.category_name,
    vp.playlist_id
   FROM (((tb_videos v
   LEFT JOIN tb_video_category vc ON ((vc.video_id = v.video_id)))
   LEFT JOIN tb_category c ON ((vc.category_id = c.category_id)))
   LEFT JOIN tb_video_playlist vp ON ((vp.video_id = v.video_id)))
  WHERE (((vp.playlist_id IS NULL) OR (vp.playlist_id = 1)) AND (v.approved = 1));

-- ----------------------------
-- View structure for vCategory
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vCategory" AS 
 SELECT c.category_name AS super,
    c1.category_id AS id,
    c1.category_name AS name,
    c1.description,
    c1.logo,
    c1.status,
    c1.user_id,
    c1.create_date,
    c1.modifier_date,
    pl.playlist_id AS plid
   FROM ((tb_category c
   JOIN tb_category c1 ON ((c.category_id = c1.parent_id)))
   LEFT JOIN tb_playlist pl ON ((pl.category_id = c1.category_id)))
  WHERE (c1.status = 1);

-- ----------------------------
-- View structure for vComment
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vComment" AS 
 SELECT c.comment_id,
    c.description AS super,
    c.create_date,
    c."like",
    c.unlike,
    c.user_id,
    u.username,
    v.video_id,
    c.view,
    cc.comment_id AS id1,
    cc.description AS child,
    cc.create_date AS create_date1,
    cc."like" AS like1,
    cc.unlike AS unlike1,
    cc.user_id AS user_id1,
    uu.username AS username1,
    cc.video_id AS video_id1,
    cc.view AS view1
   FROM ((((tb_comment c
   JOIN tb_users u ON ((u.user_id = c.user_id)))
   JOIN tb_videos v ON ((v.video_id = c.video_id)))
   LEFT JOIN tb_comment cc ON ((c.comment_id = cc.parent_id)))
   LEFT JOIN tb_users uu ON ((uu.user_id = cc.user_id)))
  WHERE (((c.comment_id = cc.parent_id) OR (c.parent_id IS NULL)) AND (c.view = 1))
  ORDER BY c.comment_id, cc.comment_id;

-- ----------------------------
-- View structure for vHistory
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vHistory" AS 
 SELECT h.history_id,
    v.video_id,
    v.video_name,
    v.description,
    v.youtube_url,
    v.document_url,
    v.view,
    u.user_id,
    u.username,
    h.create_date,
    h."time",
    h.percent
   FROM ((tb_history h
   JOIN tb_users u ON ((h.user_id = u.user_id)))
   JOIN tb_videos v ON ((h.video_id = v.video_id)));

-- ----------------------------
-- View structure for vPlaylist
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vPlaylist" AS 
 SELECT p.playlist_id,
    p.playlist_name,
    p.description,
    v.video_id,
    v.video_name,
    v.description AS description1,
    v.youtube_url,
    v.document_url,
    uv.create_date,
    u.user_id,
    u.username,
    uv."time",
    uv.percent,
    v.view
   FROM ((((tb_video_playlist vp
   JOIN tb_videos v ON ((vp.video_id = v.video_id)))
   JOIN tb_playlist p ON ((p.playlist_id = vp.playlist_id)))
   LEFT JOIN tb_user_video uv ON ((v.video_id = uv.video_id)))
   LEFT JOIN tb_users u ON ((u.user_id = uv.user_id)));

-- ----------------------------
-- View structure for vPop
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vPop" AS 
 SELECT vd.video_name,
    vd.description,
    vd.youtube_url,
    vd.video_id,
    tvp.playlist_id
   FROM (tb_videos vd
   JOIN tb_video_playlist tvp ON ((vd.video_id = tvp.video_id)))
  ORDER BY vd.view DESC
 LIMIT 10;

-- ----------------------------
-- View structure for vQuestion
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vQuestion" AS 
 SELECT q.description AS question,
    q.video_id,
    an.description AS answer,
    an.status
   FROM (tb_questions q
   JOIN tb_answer an ON ((q.question_id = an.question_id)))
  ORDER BY q.question_id DESC;

-- ----------------------------
-- View structure for vRecommend
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vRecommend" AS 
 SELECT vd.video_name,
    vd.description,
    vd.youtube_url,
    avg(vt.level) AS avg,
    vd.video_id,
    tvp.playlist_id
   FROM ((tb_vote vt
   JOIN tb_videos vd ON ((vt.video_id = vd.video_id)))
   JOIN tb_video_playlist tvp ON ((vd.video_id = tvp.video_id)))
  GROUP BY vd.video_name, vd.description, vd.youtube_url, vd.video_id, tvp.playlist_id
  ORDER BY avg(vt.level) DESC
 LIMIT 10;

-- ----------------------------
-- View structure for vWatchedPlaylist
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vWatchedPlaylist" AS 
 SELECT u.user_id,
    u.username,
    p.playlist_id,
    p.playlist_name,
    c.category_id,
    c.category_name,
    up.create_date
   FROM (((tb_user_playlist up
   JOIN tb_users u ON ((up.user_id = u.user_id)))
   JOIN tb_playlist p ON ((up.playlist_id = p.playlist_id)))
   JOIN tb_category c ON ((p.category_id = c.category_id)));

-- ----------------------------
-- View structure for vWatchLater
-- ----------------------------
CREATE OR REPLACE VIEW "public"."vWatchLater" AS 
 SELECT w.watch_later_id AS id,
    u.user_id,
    u.username,
    v.video_id,
    v.video_name,
    v.youtube_url,
    v.view,
    w.create_date
   FROM ((tb_watch_later w
   JOIN tb_videos v ON ((w.video_id = v.video_id)))
   JOIN tb_users u ON ((w.user_id = u.user_id)));

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Uniques structure for table tb_answer
-- ----------------------------
ALTER TABLE "public"."tb_answer" ADD UNIQUE ("answer_id");

-- ----------------------------
-- Primary Key structure for table tb_answer
-- ----------------------------
ALTER TABLE "public"."tb_answer" ADD PRIMARY KEY ("answer_id");

-- ----------------------------
-- Uniques structure for table tb_category
-- ----------------------------
ALTER TABLE "public"."tb_category" ADD UNIQUE ("category_name");

-- ----------------------------
-- Primary Key structure for table tb_category
-- ----------------------------
ALTER TABLE "public"."tb_category" ADD PRIMARY KEY ("category_id");

-- ----------------------------
-- Primary Key structure for table tb_comment
-- ----------------------------
ALTER TABLE "public"."tb_comment" ADD PRIMARY KEY ("comment_id");

-- ----------------------------
-- Uniques structure for table tb_department
-- ----------------------------
ALTER TABLE "public"."tb_department" ADD UNIQUE ("department_name");

-- ----------------------------
-- Primary Key structure for table tb_department
-- ----------------------------
ALTER TABLE "public"."tb_department" ADD PRIMARY KEY ("department_id");

-- ----------------------------
-- Primary Key structure for table tb_document
-- ----------------------------
ALTER TABLE "public"."tb_document" ADD PRIMARY KEY ("document_id");

-- ----------------------------
-- Primary Key structure for table tb_history
-- ----------------------------
ALTER TABLE "public"."tb_history" ADD PRIMARY KEY ("history_id");

-- ----------------------------
-- Primary Key structure for table tb_like
-- ----------------------------
ALTER TABLE "public"."tb_like" ADD PRIMARY KEY ("user_id", "video_id");

-- ----------------------------
-- Primary Key structure for table tb_playlist
-- ----------------------------
ALTER TABLE "public"."tb_playlist" ADD PRIMARY KEY ("playlist_id");

-- ----------------------------
-- Primary Key structure for table tb_questions
-- ----------------------------
ALTER TABLE "public"."tb_questions" ADD PRIMARY KEY ("question_id");

-- ----------------------------
-- Primary Key structure for table tb_university
-- ----------------------------
ALTER TABLE "public"."tb_university" ADD PRIMARY KEY ("university_id");

-- ----------------------------
-- Primary Key structure for table tb_user_video
-- ----------------------------
ALTER TABLE "public"."tb_user_video" ADD PRIMARY KEY ("user_id", "video_id");

-- ----------------------------
-- Uniques structure for table tb_users
-- ----------------------------
ALTER TABLE "public"."tb_users" ADD UNIQUE ("email");
ALTER TABLE "public"."tb_users" ADD UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table tb_users
-- ----------------------------
ALTER TABLE "public"."tb_users" ADD PRIMARY KEY ("user_id");

-- ----------------------------
-- Uniques structure for table tb_videos
-- ----------------------------
ALTER TABLE "public"."tb_videos" ADD UNIQUE ("youtube_url");

-- ----------------------------
-- Primary Key structure for table tb_videos
-- ----------------------------
ALTER TABLE "public"."tb_videos" ADD PRIMARY KEY ("video_id");

-- ----------------------------
-- Primary Key structure for table tb_view_time
-- ----------------------------
ALTER TABLE "public"."tb_view_time" ADD PRIMARY KEY ("view_time_id");

-- ----------------------------
-- Primary Key structure for table tb_vote
-- ----------------------------
ALTER TABLE "public"."tb_vote" ADD PRIMARY KEY ("user_id", "video_id");

-- ----------------------------
-- Primary Key structure for table tb_watch_later
-- ----------------------------
ALTER TABLE "public"."tb_watch_later" ADD PRIMARY KEY ("watch_later_id");

-- ----------------------------
-- Foreign Key structure for table "public"."tb_answer"
-- ----------------------------
ALTER TABLE "public"."tb_answer" ADD FOREIGN KEY ("question_id") REFERENCES "public"."tb_questions" ("question_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_category"
-- ----------------------------
ALTER TABLE "public"."tb_category" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_comment"
-- ----------------------------
ALTER TABLE "public"."tb_comment" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_comment" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_history"
-- ----------------------------
ALTER TABLE "public"."tb_history" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_history" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_like"
-- ----------------------------
ALTER TABLE "public"."tb_like" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_like" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_questions"
-- ----------------------------
ALTER TABLE "public"."tb_questions" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_user_playlist"
-- ----------------------------
ALTER TABLE "public"."tb_user_playlist" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_user_playlist" ADD FOREIGN KEY ("playlist_id") REFERENCES "public"."tb_playlist" ("playlist_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_user_video"
-- ----------------------------
ALTER TABLE "public"."tb_user_video" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_user_video" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_users"
-- ----------------------------
ALTER TABLE "public"."tb_users" ADD FOREIGN KEY ("university_id") REFERENCES "public"."tb_university" ("university_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_users" ADD FOREIGN KEY ("department_id") REFERENCES "public"."tb_department" ("department_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_video_category"
-- ----------------------------
ALTER TABLE "public"."tb_video_category" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_video_category" ADD FOREIGN KEY ("category_id") REFERENCES "public"."tb_category" ("category_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_video_playlist"
-- ----------------------------
ALTER TABLE "public"."tb_video_playlist" ADD FOREIGN KEY ("playlist_id") REFERENCES "public"."tb_playlist" ("playlist_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_video_playlist" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_videos"
-- ----------------------------
ALTER TABLE "public"."tb_videos" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_view_time"
-- ----------------------------
ALTER TABLE "public"."tb_view_time" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_view_time" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_vote"
-- ----------------------------
ALTER TABLE "public"."tb_vote" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_vote" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "public"."tb_watch_later"
-- ----------------------------
ALTER TABLE "public"."tb_watch_later" ADD FOREIGN KEY ("user_id") REFERENCES "public"."tb_users" ("user_id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."tb_watch_later" ADD FOREIGN KEY ("video_id") REFERENCES "public"."tb_videos" ("video_id") ON DELETE CASCADE ON UPDATE CASCADE;
