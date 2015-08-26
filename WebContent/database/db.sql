/*
Navicat PGSQL Data Transfer

Source Server         : VideoManagement
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : DBVMS
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2015-08-26 16:44:45
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
 START 269
 CACHE 1;
SELECT setval('"public"."comment_id_seq"', 269, true);

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
 START 569
 CACHE 1;
SELECT setval('"public"."history_id_seq"', 569, true);

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
 START 8
 CACHE 1;
SELECT setval('"public"."watch_later_id_seq"', 8, true);

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
INSERT INTO "public"."tb_comment" VALUES ('57', 'I like this vdo', '2015-08-19 08:46:38.695', '0', '0', null, '27', '29', '1');
INSERT INTO "public"."tb_comment" VALUES ('58', 'I think so ', '2015-08-26 09:09:18', '0', '0', '57', '17', '29', '1');
INSERT INTO "public"."tb_comment" VALUES ('226', 'Yes', '2015-08-24 09:09:47.873', '0', '0', '57', '7', '29', '1');
INSERT INTO "public"."tb_comment" VALUES ('227', 'i LOV9E YOU', '2015-08-24 09:19:38.957', '0', '0', '0', '17', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('230', 'MR CHANN VICHET', '2015-08-24 09:27:33.662', '0', '0', null, '27', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('266', 'dafdsfasdfsdafdfasdfsdafadsfdsfadfasdfdsaf', '2015-08-24 10:22:14.17', '0', '0', null, '27', '19', '1');
INSERT INTO "public"."tb_comment" VALUES ('268', 'Good video', '2015-08-24 12:07:14.31', '0', '0', null, '27', '29', '1');
INSERT INTO "public"."tb_comment" VALUES ('269', 'Mr> Lengheng', '2015-08-24 19:53:52.321', '0', '0', '57', '27', '29', '0');
INSERT INTO "public"."tb_comment" VALUES ('3333', 'MR NARITH', '2015-08-24 09:27:33.662', '0', '0', null, '17', '19', '1');

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
INSERT INTO "public"."tb_history" VALUES ('39', '2015-08-24 16:37:28.975', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('40', '2015-08-24 16:37:37.226', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('41', '2015-08-24 16:38:00.727', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('42', '2015-08-24 16:39:07.712', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('43', '2015-08-24 16:41:16.342', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('44', '2015-08-24 16:41:53.944', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('45', '2015-08-24 16:41:58.091', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('46', '2015-08-24 18:05:31.309', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('47', '2015-08-24 18:05:35.342', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('48', '2015-08-24 18:12:45.583', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('49', '2015-08-24 18:12:50.684', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('50', '2015-08-24 18:12:54.078', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('51', '2015-08-24 18:23:46.206', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('52', '2015-08-24 18:24:50.043', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('53', '2015-08-24 18:25:36.088', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('54', '2015-08-24 18:25:39.959', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('55', '2015-08-24 18:25:44.194', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('56', '2015-08-24 18:25:46.681', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('57', '2015-08-24 18:27:01.731', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('58', '2015-08-24 18:27:07.611', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('59', '2015-08-24 18:27:41.278', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('60', '2015-08-24 18:28:30.875', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('61', '2015-08-24 18:34:52.502', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('62', '2015-08-24 18:35:28.697', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('63', '2015-08-24 18:36:21.921', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('64', '2015-08-24 18:36:59.364', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('65', '2015-08-24 18:37:05.986', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('66', '2015-08-24 18:37:21.794', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('67', '2015-08-24 18:38:02.95', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('68', '2015-08-24 18:38:59.68', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('69', '2015-08-24 18:40:48.955', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('70', '2015-08-24 18:41:05.049', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('71', '2015-08-24 18:41:18.543', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('72', '2015-08-24 18:43:10.375', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('73', '2015-08-24 18:43:12.878', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('74', '2015-08-24 18:43:23.102', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('75', '2015-08-24 18:43:25.115', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('76', '2015-08-24 18:43:26.158', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('77', '2015-08-24 18:43:29.054', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('78', '2015-08-24 18:44:23.711', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('79', '2015-08-24 18:44:56.668', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('80', '2015-08-24 18:45:01.966', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('81', '2015-08-24 18:45:21.564', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('82', '2015-08-24 18:46:39.755', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('83', '2015-08-24 18:46:48.441', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('84', '2015-08-24 18:47:07.393', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('85', '2015-08-24 18:47:24.069', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('86', '2015-08-24 18:47:42.037', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('87', '2015-08-24 18:48:34.249', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('88', '2015-08-24 18:48:38.974', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('89', '2015-08-24 18:48:44.506', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('90', '2015-08-24 18:49:04.437', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('91', '2015-08-24 18:50:49.697', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('92', '2015-08-24 18:51:17.82', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('93', '2015-08-24 18:51:57.338', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('94', '2015-08-24 18:52:05.966', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('95', '2015-08-24 18:52:11.621', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('96', '2015-08-24 18:52:27.37', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('97', '2015-08-24 18:52:30.081', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('98', '2015-08-24 18:52:34.601', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('99', '2015-08-24 18:52:36.512', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('100', '2015-08-24 18:54:01.726', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('101', '2015-08-24 18:54:19.278', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('102', '2015-08-24 18:54:20.589', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('103', '2015-08-24 18:54:22.329', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('104', '2015-08-24 18:54:29.63', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('105', '2015-08-24 18:54:37.887', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('106', '2015-08-24 18:54:38.81', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('107', '2015-08-24 18:54:41.73', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('108', '2015-08-24 18:54:54.569', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('109', '2015-08-24 18:54:58.039', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('110', '2015-08-24 18:55:11.2', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('111', '2015-08-24 18:55:14.023', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('112', '2015-08-24 18:55:15.438', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('113', '2015-08-24 18:55:22.282', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('114', '2015-08-24 18:57:08.723', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('115', '2015-08-24 18:57:11.505', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('116', '2015-08-24 18:58:20.305', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('117', '2015-08-24 18:58:23.375', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('118', '2015-08-24 18:58:28.573', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('119', '2015-08-24 18:58:33.854', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('120', '2015-08-24 18:58:38.651', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('121', '2015-08-24 18:58:41.478', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('122', '2015-08-24 18:58:44.953', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('123', '2015-08-24 18:58:47.97', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('124', '2015-08-24 18:58:51.18', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('125', '2015-08-24 18:58:53.672', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('126', '2015-08-24 18:58:55.694', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('127', '2015-08-24 18:58:57.789', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('128', '2015-08-24 18:59:02.558', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('129', '2015-08-24 18:59:06.774', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('130', '2015-08-24 18:59:18.091', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('131', '2015-08-24 18:59:18.319', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('132', '2015-08-24 18:59:19.519', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('133', '2015-08-24 18:59:20.278', '27', '38', null, null);
INSERT INTO "public"."tb_history" VALUES ('134', '2015-08-24 18:59:23.089', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('135', '2015-08-24 19:00:51.43', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('136', '2015-08-24 19:00:54.216', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('137', '2015-08-24 19:01:01.272', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('138', '2015-08-24 19:01:05.293', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('139', '2015-08-24 19:01:06.218', '27', '42', null, null);
INSERT INTO "public"."tb_history" VALUES ('140', '2015-08-24 19:01:07.823', '27', '37', null, null);
INSERT INTO "public"."tb_history" VALUES ('141', '2015-08-24 19:01:20.228', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('142', '2015-08-24 19:01:20.545', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('143', '2015-08-24 19:01:24.115', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('144', '2015-08-24 19:01:25.862', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('145', '2015-08-24 19:01:32.683', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('146', '2015-08-24 19:01:41.668', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('147', '2015-08-24 19:01:45.483', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('148', '2015-08-24 19:01:46.588', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('149', '2015-08-24 19:02:10.779', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('150', '2015-08-24 19:02:11.981', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('151', '2015-08-24 19:03:28.722', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('152', '2015-08-24 19:03:28.928', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('153', '2015-08-24 19:03:37.857', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('154', '2015-08-24 19:03:38.221', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('155', '2015-08-24 19:03:38.285', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('156', '2015-08-24 19:03:48.742', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('157', '2015-08-24 19:03:49.142', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('158', '2015-08-24 19:03:49.178', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('159', '2015-08-24 19:03:53.39', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('160', '2015-08-24 19:03:54.503', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('161', '2015-08-24 19:03:54.908', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('162', '2015-08-24 19:03:55.057', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('163', '2015-08-24 19:03:58.69', '27', '42', null, null);
INSERT INTO "public"."tb_history" VALUES ('164', '2015-08-24 19:04:03.532', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('165', '2015-08-24 19:04:03.955', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('166', '2015-08-24 19:04:04.018', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('167', '2015-08-24 19:04:20.424', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('168', '2015-08-24 19:04:24.119', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('169', '2015-08-24 19:04:28.553', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('170', '2015-08-24 19:04:33.042', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('171', '2015-08-24 19:04:33.392', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('172', '2015-08-24 19:04:34.853', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('173', '2015-08-24 19:04:35.422', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('174', '2015-08-24 19:04:35.889', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('175', '2015-08-24 19:04:35.975', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('176', '2015-08-24 19:04:37.778', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('177', '2015-08-24 19:04:38.211', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('178', '2015-08-24 19:04:38.302', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('179', '2015-08-24 19:04:42.843', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('180', '2015-08-24 19:04:43.316', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('181', '2015-08-24 19:04:43.335', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('182', '2015-08-24 19:04:43.731', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('183', '2015-08-24 19:04:53.108', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('184', '2015-08-24 19:05:01.33', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('185', '2015-08-24 19:05:38.835', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('186', '2015-08-24 19:05:45.36', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('187', '2015-08-24 19:06:34.424', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('188', '2015-08-24 19:06:39.151', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('189', '2015-08-24 19:06:43.332', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('190', '2015-08-24 19:06:56.311', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('191', '2015-08-24 19:07:15.234', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('192', '2015-08-24 19:07:18.198', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('193', '2015-08-24 19:07:20.772', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('194', '2015-08-24 19:07:26.67', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('195', '2015-08-24 19:07:28.854', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('196', '2015-08-24 19:08:10.15', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('197', '2015-08-24 19:08:12.695', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('198', '2015-08-24 19:08:16.857', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('199', '2015-08-24 19:08:52.346', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('200', '2015-08-24 19:09:01.189', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('201', '2015-08-24 19:09:36.344', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('202', '2015-08-24 19:09:42.853', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('203', '2015-08-24 19:09:49.013', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('204', '2015-08-24 19:09:51.012', '27', '37', null, null);
INSERT INTO "public"."tb_history" VALUES ('205', '2015-08-24 19:09:53.549', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('206', '2015-08-24 19:10:01.396', '27', '42', null, null);
INSERT INTO "public"."tb_history" VALUES ('207', '2015-08-24 19:10:03.128', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('208', '2015-08-24 19:10:16.207', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('209', '2015-08-24 19:10:20.924', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('210', '2015-08-24 19:10:26.77', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('211', '2015-08-24 19:10:32.357', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('212', '2015-08-24 19:10:39.839', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('213', '2015-08-24 19:10:45.738', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('214', '2015-08-24 19:10:47.325', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('215', '2015-08-24 19:11:49.494', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('216', '2015-08-24 19:11:54.178', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('217', '2015-08-24 19:11:59.057', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('218', '2015-08-24 19:12:03.604', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('219', '2015-08-24 19:12:06.605', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('220', '2015-08-24 19:12:12.157', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('221', '2015-08-24 19:12:25.409', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('222', '2015-08-24 19:12:42.888', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('223', '2015-08-24 19:14:31.414', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('224', '2015-08-24 19:14:37.206', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('225', '2015-08-24 19:14:41.087', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('226', '2015-08-24 19:14:47.408', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('227', '2015-08-24 19:14:50.888', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('228', '2015-08-24 19:14:52.042', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('229', '2015-08-24 19:14:53.166', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('230', '2015-08-24 19:14:53.946', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('231', '2015-08-24 19:14:55.397', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('232', '2015-08-24 19:15:00.328', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('233', '2015-08-24 19:15:09.892', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('234', '2015-08-24 19:15:13.876', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('235', '2015-08-24 19:16:59.984', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('236', '2015-08-24 19:17:05.164', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('237', '2015-08-24 19:17:10.689', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('238', '2015-08-24 19:17:19.12', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('239', '2015-08-24 19:17:43.318', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('240', '2015-08-24 19:18:31.755', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('241', '2015-08-24 19:18:38.563', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('242', '2015-08-24 19:18:43.38', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('243', '2015-08-24 19:20:39.881', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('244', '2015-08-24 19:21:18.201', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('245', '2015-08-24 19:22:33.594', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('246', '2015-08-24 19:22:36.719', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('247', '2015-08-24 19:22:41.293', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('248', '2015-08-24 19:26:00.115', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('249', '2015-08-24 19:26:02.958', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('250', '2015-08-24 19:26:06.615', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('251', '2015-08-24 19:26:10.621', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('252', '2015-08-24 19:26:12.653', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('253', '2015-08-24 19:26:30.888', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('254', '2015-08-24 19:26:33.566', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('255', '2015-08-24 19:32:33.921', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('256', '2015-08-24 19:35:06.072', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('257', '2015-08-24 19:36:57.388', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('258', '2015-08-24 19:37:17.707', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('259', '2015-08-24 19:37:20.719', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('260', '2015-08-24 19:37:23.707', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('261', '2015-08-24 19:40:02.341', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('262', '2015-08-24 19:40:36.001', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('263', '2015-08-24 19:40:49.785', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('264', '2015-08-24 19:40:58.643', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('265', '2015-08-24 19:41:02.203', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('266', '2015-08-24 19:41:05.694', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('267', '2015-08-24 19:45:50.028', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('268', '2015-08-24 19:45:54.851', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('269', '2015-08-24 19:47:12.238', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('270', '2015-08-24 19:47:27.559', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('271', '2015-08-24 19:50:13.051', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('272', '2015-08-24 19:50:14.216', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('273', '2015-08-24 19:50:29.776', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('274', '2015-08-24 19:50:33.777', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('275', '2015-08-24 19:50:36.99', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('276', '2015-08-24 19:50:49.484', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('277', '2015-08-24 19:50:54.411', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('278', '2015-08-24 19:51:10.06', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('279', '2015-08-24 19:51:35.779', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('280', '2015-08-24 19:52:04.046', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('281', '2015-08-24 19:56:14.182', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('282', '2015-08-24 19:56:29.803', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('283', '2015-08-24 20:02:40.75', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('284', '2015-08-24 20:02:47.607', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('285', '2015-08-24 20:02:51.898', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('286', '2015-08-24 20:03:01.732', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('287', '2015-08-24 20:16:03.903', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('288', '2015-08-24 20:17:45.688', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('289', '2015-08-24 20:18:44.195', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('290', '2015-08-24 20:18:58.204', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('291', '2015-08-24 20:19:02.57', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('292', '2015-08-24 20:19:03.952', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('293', '2015-08-24 20:19:46.601', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('294', '2015-08-24 20:19:58.376', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('295', '2015-08-24 20:20:36.85', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('296', '2015-08-24 20:20:38.907', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('297', '2015-08-24 20:20:42.048', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('298', '2015-08-24 20:27:43.802', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('299', '2015-08-24 20:27:53.659', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('300', '2015-08-24 20:27:56.467', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('301', '2015-08-24 20:30:06.905', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('302', '2015-08-24 20:30:09.104', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('303', '2015-08-24 20:31:45.93', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('304', '2015-08-24 20:31:48.985', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('305', '2015-08-24 20:32:33.519', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('306', '2015-08-24 20:32:34.802', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('307', '2015-08-24 20:32:42.744', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('308', '2015-08-24 20:32:55.409', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('309', '2015-08-24 20:34:02.73', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('310', '2015-08-24 20:35:20.391', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('311', '2015-08-24 20:35:27.071', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('312', '2015-08-24 20:35:31.625', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('313', '2015-08-24 20:35:37.378', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('314', '2015-08-24 20:35:41.829', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('315', '2015-08-24 20:36:34.949', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('316', '2015-08-24 20:36:45.126', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('317', '2015-08-24 20:36:49.552', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('318', '2015-08-24 20:36:56.605', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('319', '2015-08-24 20:37:39.76', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('320', '2015-08-24 20:37:46.056', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('321', '2015-08-24 20:37:50.666', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('322', '2015-08-24 20:37:55.114', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('323', '2015-08-24 20:37:58.503', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('324', '2015-08-24 20:38:06.234', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('325', '2015-08-24 20:38:09.722', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('326', '2015-08-24 20:38:39.046', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('327', '2015-08-24 20:38:46.447', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('328', '2015-08-24 20:40:01.788', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('329', '2015-08-24 20:40:12.067', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('330', '2015-08-24 20:40:15.039', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('331', '2015-08-24 20:40:18.94', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('332', '2015-08-24 20:40:22.094', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('333', '2015-08-24 20:40:24.036', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('334', '2015-08-24 20:40:26.568', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('335', '2015-08-24 20:40:50.271', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('336', '2015-08-24 20:42:47.807', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('337', '2015-08-24 20:42:53.138', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('338', '2015-08-24 20:44:38.542', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('339', '2015-08-24 20:45:03.439', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('340', '2015-08-24 20:45:08.477', '27', '31', null, null);
INSERT INTO "public"."tb_history" VALUES ('341', '2015-08-24 20:45:15.873', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('342', '2015-08-24 20:47:14.949', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('343', '2015-08-24 20:47:19.071', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('344', '2015-08-24 20:47:38.407', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('345', '2015-08-24 20:47:41.609', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('346', '2015-08-24 20:47:44.971', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('347', '2015-08-24 20:47:47.342', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('348', '2015-08-24 20:47:54.093', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('349', '2015-08-24 20:48:08.688', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('350', '2015-08-24 20:48:22.076', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('351', '2015-08-24 20:48:32.863', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('352', '2015-08-24 20:48:34.168', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('353', '2015-08-24 20:48:41.777', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('354', '2015-08-24 20:49:00.785', '27', '37', null, null);
INSERT INTO "public"."tb_history" VALUES ('355', '2015-08-24 20:49:06.444', '27', '39', null, null);
INSERT INTO "public"."tb_history" VALUES ('356', '2015-08-24 20:49:19.467', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('357', '2015-08-25 08:28:51.84', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('358', '2015-08-25 08:28:54.286', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('359', '2015-08-25 08:29:01.066', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('360', '2015-08-25 08:29:03.449', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('361', '2015-08-25 08:29:07.084', '27', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('362', '2015-08-25 08:29:12.039', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('363', '2015-08-25 08:29:28.162', '27', '24', null, null);
INSERT INTO "public"."tb_history" VALUES ('364', '2015-08-25 08:29:42.699', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('365', '2015-08-25 08:29:55.803', '27', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('366', '2015-08-25 08:29:58.483', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('367', '2015-08-25 08:30:00.891', '27', '23', null, null);
INSERT INTO "public"."tb_history" VALUES ('368', '2015-08-25 08:30:04.995', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('369', '2015-08-25 08:30:08.028', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('370', '2015-08-25 08:30:09.794', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('371', '2015-08-25 08:30:17', '27', '40', null, null);
INSERT INTO "public"."tb_history" VALUES ('372', '2015-08-25 08:30:20.77', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('373', '2015-08-25 08:30:29.741', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('374', '2015-08-25 08:30:30.475', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('375', '2015-08-25 08:31:13.345', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('376', '2015-08-25 08:32:18.242', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('377', '2015-08-25 08:33:05.059', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('378', '2015-08-25 08:34:21.571', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('379', '2015-08-25 08:34:23.968', '27', '37', null, null);
INSERT INTO "public"."tb_history" VALUES ('380', '2015-08-25 08:34:26.82', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('381', '2015-08-25 08:34:33.685', '27', '36', null, null);
INSERT INTO "public"."tb_history" VALUES ('382', '2015-08-25 08:35:08.544', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('383', '2015-08-25 08:35:11.471', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('384', '2015-08-25 08:35:13.387', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('385', '2015-08-25 08:38:00.459', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('386', '2015-08-25 08:38:04.069', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('387', '2015-08-25 08:38:07.394', '27', '34', null, null);
INSERT INTO "public"."tb_history" VALUES ('388', '2015-08-25 08:38:24.005', '27', '18', null, null);
INSERT INTO "public"."tb_history" VALUES ('389', '2015-08-25 08:38:30.325', '27', '34', null, null);
INSERT INTO "public"."tb_history" VALUES ('390', '2015-08-25 08:39:34.548', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('391', '2015-08-25 08:39:53.627', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('392', '2015-08-25 08:40:04.195', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('393', '2015-08-25 08:40:24.834', '7', '26', null, null);
INSERT INTO "public"."tb_history" VALUES ('394', '2015-08-25 08:45:05.348', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('395', '2015-08-25 08:45:11.776', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('396', '2015-08-26 09:21:17.836', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('397', '2015-08-26 09:21:23.344', '27', '28', null, null);
INSERT INTO "public"."tb_history" VALUES ('398', '2015-08-26 09:21:24.988', '27', '22', null, null);
INSERT INTO "public"."tb_history" VALUES ('399', '2015-08-26 09:21:28.516', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('400', '2015-08-26 09:21:37.172', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('401', '2015-08-26 09:22:05.472', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('402', '2015-08-26 09:22:09.843', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('403', '2015-08-26 09:22:18.693', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('404', '2015-08-26 09:22:25.633', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('405', '2015-08-26 09:23:05.422', '27', '32', null, null);
INSERT INTO "public"."tb_history" VALUES ('406', '2015-08-26 09:23:09.806', '27', '30', null, null);
INSERT INTO "public"."tb_history" VALUES ('407', '2015-08-26 09:24:44.453', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('408', '2015-08-26 09:25:01.95', '27', '46', null, null);
INSERT INTO "public"."tb_history" VALUES ('409', '2015-08-26 09:25:22.48', '27', '47', null, null);
INSERT INTO "public"."tb_history" VALUES ('410', '2015-08-26 09:25:38.574', '27', '48', null, null);
INSERT INTO "public"."tb_history" VALUES ('411', '2015-08-26 09:25:42.286', '27', '47', null, null);
INSERT INTO "public"."tb_history" VALUES ('412', '2015-08-26 09:25:48.098', '27', '46', null, null);
INSERT INTO "public"."tb_history" VALUES ('413', '2015-08-26 09:26:00.448', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('414', '2015-08-26 09:27:49.774', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('415', '2015-08-26 09:28:49.263', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('416', '2015-08-26 09:28:54.612', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('417', '2015-08-26 09:29:04.595', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('418', '2015-08-26 09:33:20.721', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('419', '2015-08-26 09:33:21.093', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('420', '2015-08-26 09:33:41.49', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('421', '2015-08-26 09:33:48.589', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('422', '2015-08-26 09:39:52.409', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('423', '2015-08-26 09:39:56.029', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('424', '2015-08-26 09:39:57.798', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('425', '2015-08-26 09:41:18.686', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('426', '2015-08-26 09:41:22.063', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('427', '2015-08-26 09:41:55.56', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('428', '2015-08-26 09:41:59.258', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('429', '2015-08-26 09:44:38.564', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('430', '2015-08-26 09:46:27.616', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('431', '2015-08-26 09:46:50.62', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('432', '2015-08-26 09:48:43.433', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('433', '2015-08-26 09:49:18.951', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('434', '2015-08-26 09:50:29.039', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('435', '2015-08-26 09:52:13.826', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('436', '2015-08-26 09:52:38.374', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('437', '2015-08-26 09:53:17.585', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('438', '2015-08-26 09:53:55.189', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('439', '2015-08-26 09:56:02.552', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('440', '2015-08-26 09:57:06.833', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('441', '2015-08-26 09:58:20.344', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('442', '2015-08-26 10:00:21.975', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('443', '2015-08-26 10:01:00.23', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('444', '2015-08-26 10:02:37.437', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('445', '2015-08-26 10:03:26.457', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('446', '2015-08-26 10:06:34.769', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('447', '2015-08-26 10:07:49.147', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('448', '2015-08-26 10:09:27.784', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('449', '2015-08-26 10:10:43.793', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('450', '2015-08-26 10:10:53.415', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('451', '2015-08-26 10:11:38.08', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('452', '2015-08-26 10:11:50.147', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('453', '2015-08-26 10:12:29.699', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('454', '2015-08-26 10:12:44.196', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('455', '2015-08-26 10:13:20.418', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('456', '2015-08-26 10:13:24.405', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('457', '2015-08-26 10:15:16.132', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('458', '2015-08-26 10:15:17.933', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('459', '2015-08-26 10:21:41.38', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('460', '2015-08-26 10:21:41.844', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('461', '2015-08-26 10:21:47.596', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('462', '2015-08-26 10:22:09.476', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('463', '2015-08-26 10:22:11.572', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('464', '2015-08-26 10:22:22.045', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('465', '2015-08-26 10:22:25.854', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('466', '2015-08-26 10:22:30.984', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('467', '2015-08-26 10:22:53.195', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('468', '2015-08-26 10:22:55.735', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('469', '2015-08-26 10:23:36.898', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('470', '2015-08-26 10:23:38.972', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('471', '2015-08-26 10:23:42.197', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('472', '2015-08-26 10:25:21.44', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('473', '2015-08-26 10:25:26.603', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('474', '2015-08-26 10:25:31.036', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('475', '2015-08-26 10:25:58.132', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('476', '2015-08-26 10:25:59.22', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('477', '2015-08-26 10:26:25.606', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('478', '2015-08-26 10:26:28.31', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('479', '2015-08-26 10:26:35.736', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('480', '2015-08-26 10:34:15.415', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('481', '2015-08-26 10:34:52.927', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('482', '2015-08-26 10:35:50.082', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('483', '2015-08-26 10:36:57.072', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('484', '2015-08-26 10:37:35.442', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('485', '2015-08-26 10:37:44.736', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('486', '2015-08-26 10:38:02.471', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('487', '2015-08-26 10:38:38.343', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('488', '2015-08-26 10:38:48.737', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('489', '2015-08-26 10:39:18.756', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('490', '2015-08-26 10:40:35.094', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('491', '2015-08-26 10:41:06.138', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('492', '2015-08-26 10:43:30.511', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('493', '2015-08-26 10:43:45.676', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('494', '2015-08-26 10:45:13.624', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('495', '2015-08-26 10:47:20.006', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('496', '2015-08-26 10:48:00.094', '7', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('497', '2015-08-26 10:48:45.037', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('498', '2015-08-26 10:49:05.03', '7', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('499', '2015-08-26 11:36:02.595', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('500', '2015-08-26 11:38:48.588', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('501', '2015-08-26 11:38:55.113', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('502', '2015-08-26 11:41:35.464', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('503', '2015-08-26 11:41:39.262', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('504', '2015-08-26 11:42:00.386', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('505', '2015-08-26 11:42:16', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('506', '2015-08-26 11:42:17.865', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('507', '2015-08-26 11:42:28.473', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('508', '2015-08-26 11:48:29.098', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('509', '2015-08-26 11:48:45.39', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('510', '2015-08-26 11:49:08.462', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('511', '2015-08-26 11:51:51.127', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('512', '2015-08-26 11:52:05.463', '7', '20', null, null);
INSERT INTO "public"."tb_history" VALUES ('513', '2015-08-26 11:52:39.719', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('514', '2015-08-26 11:52:58.063', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('515', '2015-08-26 11:53:58.812', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('516', '2015-08-26 11:54:07.362', '7', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('517', '2015-08-26 11:54:52.887', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('518', '2015-08-26 11:57:04.747', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('519', '2015-08-26 14:16:12.839', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('520', '2015-08-26 14:18:05.284', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('521', '2015-08-26 15:00:53.302', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('522', '2015-08-26 15:01:47.438', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('523', '2015-08-26 15:02:21.289', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('524', '2015-08-26 15:02:33.185', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('525', '2015-08-26 15:04:34.889', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('526', '2015-08-26 15:06:33.717', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('527', '2015-08-26 15:09:34.933', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('528', '2015-08-26 15:10:28.564', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('529', '2015-08-26 15:13:15.918', '17', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('530', '2015-08-26 15:32:29.15', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('531', '2015-08-26 15:38:49.311', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('532', '2015-08-26 15:40:44.374', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('533', '2015-08-26 15:59:43.245', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('534', '2015-08-26 16:01:56.91', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('535', '2015-08-26 16:02:18.355', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('536', '2015-08-26 16:03:10.259', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('537', '2015-08-26 16:03:54.246', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('538', '2015-08-26 16:04:31.176', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('539', '2015-08-26 16:06:17.641', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('540', '2015-08-26 16:06:45.833', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('541', '2015-08-26 16:06:48.474', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('542', '2015-08-26 16:07:28.16', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('543', '2015-08-26 16:07:54.415', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('544', '2015-08-26 16:08:56.042', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('545', '2015-08-26 16:09:48.137', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('546', '2015-08-26 16:10:12.351', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('547', '2015-08-26 16:10:58.029', '27', '17', null, null);
INSERT INTO "public"."tb_history" VALUES ('548', '2015-08-26 16:21:45.126', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('549', '2015-08-26 16:24:19.242', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('550', '2015-08-26 16:25:28.35', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('551', '2015-08-26 16:25:35.129', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('552', '2015-08-26 16:25:44.078', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('553', '2015-08-26 16:27:46.332', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('554', '2015-08-26 16:29:06.296', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('555', '2015-08-26 16:29:08.004', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('556', '2015-08-26 16:29:49.615', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('557', '2015-08-26 16:29:59.986', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('558', '2015-08-26 16:32:35.037', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('559', '2015-08-26 16:32:44.188', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('560', '2015-08-26 16:33:42.998', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('561', '2015-08-26 16:33:50.348', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('562', '2015-08-26 16:35:29.964', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('563', '2015-08-26 16:35:33.125', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('564', '2015-08-26 16:41:32.024', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('565', '2015-08-26 16:41:53.091', '27', '29', null, null);
INSERT INTO "public"."tb_history" VALUES ('566', '2015-08-26 16:42:44.96', '27', '19', null, null);
INSERT INTO "public"."tb_history" VALUES ('567', '2015-08-26 16:43:16.177', '27', '43', null, null);
INSERT INTO "public"."tb_history" VALUES ('568', '2015-08-26 16:43:25.663', '27', '35', null, null);
INSERT INTO "public"."tb_history" VALUES ('569', '2015-08-26 16:43:35.524', '27', '19', null, null);

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
INSERT INTO "public"."tb_user_video" VALUES ('7', '19', '00:03', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('7', '20', '04:02', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('17', '19', '00:01', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('27', '17', '00:00', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('27', '19', '01:09', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('27', '29', '04:59', null, '2015-08-26');
INSERT INTO "public"."tb_user_video" VALUES ('27', '43', '00:00', null, '2015-08-26');

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
INSERT INTO "public"."tb_videos" VALUES ('18', '2. How to Create Message Box', 'How to setup java environment', '3LgOY7cS0iY', 'doc1', '2015-08-10 20:46:15.904', '2015-08-10 20:46:15.904', '27', '1', '1', '119');
INSERT INTO "public"."tb_videos" VALUES ('19', 'Class & Object', 'Datatype', 'DmUv8fwRpXE', null, '2015-08-12 18:52:41.421', '2015-08-12 18:52:41.421', '27', '1', '1', '36');
INSERT INTO "public"."tb_videos" VALUES ('20', '2.3 - Modifers', null, '_PF9pEARFS0', null, '2015-08-12 19:21:33.497', '2015-08-12 19:21:33.497', '27', '1', '1', '216');
INSERT INTO "public"."tb_videos" VALUES ('21', '2.4 - Operator', null, '2l1GeFqGy_c', null, '2015-08-12 19:23:21.093', '2015-08-12 19:23:21.093', '27', '1', '1', '49');
INSERT INTO "public"."tb_videos" VALUES ('22', '2.5 - System IO ', null, '05OzdkNBwBI', null, '2015-08-12 19:25:04.028', '2015-08-12 19:25:04.028', '27', '1', '1', '200');
INSERT INTO "public"."tb_videos" VALUES ('23', '3.1 - Loop', null, 'vSfCwDtE0Q4', null, '2015-08-12 19:26:51.807', '2015-08-12 19:26:51.807', '27', '1', '1', '340');
INSERT INTO "public"."tb_videos" VALUES ('24', '3.2 - Decision Making', null, 'GjOT5eyTf18', null, '2015-08-12 19:28:48.522', '2015-08-12 19:28:48.522', '27', '1', '1', '1121');
INSERT INTO "public"."tb_videos" VALUES ('26', '5.1 -  Array', null, '77gg-mgF-Fg', null, '2015-08-14 08:57:32.656', '2015-08-14 08:57:32.656', '27', '1', '1', '159');
INSERT INTO "public"."tb_videos" VALUES ('28', '4.1 - Number', null, 'riMKPjN4IZ8', null, '2015-08-14 08:58:42.11', '2015-08-14 08:58:42.11', '27', '1', '1', '178');
INSERT INTO "public"."tb_videos" VALUES ('29', '4.2 - Charater', null, 'V_hGTE5Bmfc', null, '2015-08-14 08:59:52.427', '2015-08-14 08:59:52.427', '27', '1', '1', '192');
INSERT INTO "public"."tb_videos" VALUES ('30', '3 How to Declare Variable', null, 'mhKU5bKZIz8', null, '2015-08-14 11:04:46.246', '2015-08-14 11:04:46.246', '27', '1', '1', '103');
INSERT INTO "public"."tb_videos" VALUES ('31', ' 4 Sum of Two Variables', null, 'OmgyFdz_zsM', null, '2015-08-14 11:06:34.604', '2015-08-14 11:06:34.604', '27', '1', '1', '82');
INSERT INTO "public"."tb_videos" VALUES ('32', '5 How to Calculate of Two Value', null, 'MvBeS6JT00A', null, '2015-08-14 11:07:19.121', '2015-08-14 11:07:19.121', '27', '1', '1', '92');
INSERT INTO "public"."tb_videos" VALUES ('33', ' 6 How to using random', null, 'KhZh2gvfHDk', null, '2015-08-14 11:08:01.862', '2015-08-14 11:08:01.862', '27', '1', '1', '68');
INSERT INTO "public"."tb_videos" VALUES ('34', '8 How to Make a Calculator in C# Windows Form Application', null, 'vQL-ZRebxLk', null, '2015-08-14 11:11:14.23', '2015-08-14 11:11:14.23', '27', '1', '1', '197');
INSERT INTO "public"."tb_videos" VALUES ('35', '1. Consonant', null, 'Za5RloAb8xk', null, '2015-08-14 11:17:03.569', '2015-08-14 11:17:03.569', '27', '1', '1', '142');
INSERT INTO "public"."tb_videos" VALUES ('36', '3. How To Read', null, 'IjvdAi7406w', null, '2015-08-14 12:32:05.865', '2015-08-14 12:32:05.865', '27', '1', '1', '27');
INSERT INTO "public"."tb_videos" VALUES ('37', '4.1 Grammar 1', null, 'LMRuxcsFRMY', null, '2015-08-14 12:33:07.481', '2015-08-14 12:33:07.481', '27', '1', '1', '40');
INSERT INTO "public"."tb_videos" VALUES ('38', '4.2 Conversation 1', null, 'iTHCDj7rb60', null, '2015-08-14 12:33:34.925', '2015-08-14 12:33:34.925', '27', '1', '1', '36');
INSERT INTO "public"."tb_videos" VALUES ('39', '5.1 Grammar 2', null, 'Jp1er_kzmb8', null, '2015-08-14 12:34:09.978', '2015-08-14 12:34:09.978', '27', '1', '1', '80');
INSERT INTO "public"."tb_videos" VALUES ('40', '6.1 Grammar 3', null, 'wa0c6kZn4E4', null, '2015-08-14 12:34:41.012', '2015-08-14 12:34:41.012', '27', '1', '1', '137');
INSERT INTO "public"."tb_videos" VALUES ('42', '7.1 Grammar 4', null, 'uDI5HtDU7e8', null, '2015-08-14 12:35:13.396', '2015-08-14 12:35:13.396', '27', '1', '1', '32');
INSERT INTO "public"."tb_videos" VALUES ('43', 'Introduction to HTML', null, 'Ih8H6HXeKQQ', null, '2015-08-14 12:57:25.113', '2015-08-14 12:57:25.113', '27', '1', '1', '47');
INSERT INTO "public"."tb_videos" VALUES ('46', '2. HTML Elements, Syntax, Attribute, Heading, Line', null, 'ShTRRMsvT9I', null, '2015-08-14 13:25:37.334', '2015-08-14 13:25:37.334', '27', '1', '1', '74');
INSERT INTO "public"."tb_videos" VALUES ('47', '3. HTML Paragraph, Text Formatting, Comments, Link', null, 'SmeFRcmPW7A', null, '2015-08-14 13:26:10.11', '2015-08-14 13:26:10.11', '27', '1', '1', '77');
INSERT INTO "public"."tb_videos" VALUES ('48', '4. HTML Head, CSS, Image', null, '0rsUF3Ii_jk', null, '2015-08-14 13:26:35.443', '2015-08-14 13:26:35.443', '27', '1', '1', '62');

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
INSERT INTO "public"."tb_watch_later" VALUES ('5', '2015-08-24 16:32:51.866', '27', '23');
INSERT INTO "public"."tb_watch_later" VALUES ('6', '2015-08-24 16:37:35.761', '27', '22');
INSERT INTO "public"."tb_watch_later" VALUES ('8', '2015-08-24 18:45:11.596', '27', '23');

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
