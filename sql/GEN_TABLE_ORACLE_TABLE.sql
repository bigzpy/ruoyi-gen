/*
 Navicat Premium Data Transfer

 Source Server         : 253 oracle Lane
 Source Server Type    : Oracle
 Source Server Version : 120100 (Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options)
 Source Host           : 192.168.1.253:1521
 Source Schema         : LANE

 Target Server Type    : Oracle
 Target Server Version : 120100 (Oracle Database 12c Enterprise Edition Release 12.1.0.2.0 - 64bit Production
With the Partitioning, OLAP, Advanced Analytics and Real Application Testing options)
 File Encoding         : 65001

 Date: 16/05/2024 16:02:08
*/


-- ----------------------------
-- Table structure for GEN_TABLE_ORACLE
-- ----------------------------
DROP TABLE "LANE"."GEN_TABLE_ORACLE";
CREATE TABLE "LANE"."GEN_TABLE_ORACLE" (
  "TABLE_ID" NUMBER(20,0) VISIBLE NOT NULL,
  "TABLE_NAME" NVARCHAR2(200) VISIBLE,
  "TABLE_COMMENT" NVARCHAR2(500) VISIBLE,
  "SUB_TABLE_NAME" NVARCHAR2(64) VISIBLE,
  "SUB_TABLE_FK_NAME" NVARCHAR2(64) VISIBLE,
  "CLASS_NAME" NVARCHAR2(100) VISIBLE,
  "TPL_CATEGORY" NVARCHAR2(200) VISIBLE,
  "TPL_WEB_TYPE" NVARCHAR2(30) VISIBLE,
  "PACKAGE_NAME" NVARCHAR2(100) VISIBLE,
  "MODULE_NAME" NVARCHAR2(30) VISIBLE,
  "BUSINESS_NAME" NVARCHAR2(30) VISIBLE,
  "FUNCTION_NAME" NVARCHAR2(50) VISIBLE,
  "FUNCTION_AUTHOR" NVARCHAR2(50) VISIBLE,
  "GEN_TYPE" NCHAR(1) VISIBLE,
  "GEN_PATH" NVARCHAR2(200) VISIBLE,
  "OPTIONS" NVARCHAR2(1000) VISIBLE,
  "CREATE_BY" NVARCHAR2(64) VISIBLE,
  "CREATE_TIME" DATE VISIBLE,
  "UPDATE_BY" NVARCHAR2(64) VISIBLE,
  "UPDATE_TIME" DATE VISIBLE,
  "REMARK" NVARCHAR2(500) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."TABLE_ID" IS '编号';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."TABLE_NAME" IS '表名称';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."TABLE_COMMENT" IS '表描述';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."SUB_TABLE_NAME" IS '关联子表的表名';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."SUB_TABLE_FK_NAME" IS '子表关联的外键名';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."CLASS_NAME" IS '实体类名称';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."TPL_CATEGORY" IS '使用的模板（crud单表操作 tree树表操作）';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."TPL_WEB_TYPE" IS '前端模板类型（element-ui模版 element-plus模版）';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."PACKAGE_NAME" IS '生成包路径';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."MODULE_NAME" IS '生成模块名';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."BUSINESS_NAME" IS '生成业务名';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."FUNCTION_NAME" IS '生成功能名';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."FUNCTION_AUTHOR" IS '生成功能作者';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."GEN_TYPE" IS '生成代码方式（0zip压缩包 1自定义路径）';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."GEN_PATH" IS '生成路径（不填默认项目路径）';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."OPTIONS" IS '其它生成选项';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."CREATE_BY" IS '创建者';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."UPDATE_BY" IS '更新者';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."UPDATE_TIME" IS '更新时间';
COMMENT ON COLUMN "LANE"."GEN_TABLE_ORACLE"."REMARK" IS '备注';
COMMENT ON TABLE "LANE"."GEN_TABLE_ORACLE" IS '代码生成业务表';

-- ----------------------------
-- Primary Key structure for table GEN_TABLE_ORACLE
-- ----------------------------
ALTER TABLE "LANE"."GEN_TABLE_ORACLE" ADD CONSTRAINT "SYS_C0070223" PRIMARY KEY ("TABLE_ID");

-- ----------------------------
-- Checks structure for table GEN_TABLE_ORACLE
-- ----------------------------
ALTER TABLE "LANE"."GEN_TABLE_ORACLE" ADD CONSTRAINT "SYS_C0070222" CHECK ("TABLE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
