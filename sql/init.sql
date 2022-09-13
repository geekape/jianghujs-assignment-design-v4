# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 COMMENT = '常量表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'version','object','版本','{ \"version\": \"1.0.5\", \"title\": \"1.0.5版本发布\", \"note\": \"新版本特性\"  }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'gender','select','性别','[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'classId','select','班号','[{\"value\": \"2021-01级-01班\", \"text\": \"2021-01级-01班\"}, {\"value\": \"2021-01级-02班\", \"text\": \"2021-01级-02班\"},\n {\"value\": \"2021-02级-01班\", \"text\": \"2021-02级-01班\"}, {\"value\": \"2021-02级-02班\", \"text\": \"2021-02级-02班\"},\n {\"value\": \"2021-03级-01班\", \"text\": \"2021-03级-01班\"}, {\"value\": \"2021-03级-02班\", \"text\": \"2021-03级-02班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'level','select','年级','[{\"value\": \"01\", \"text\": \"一年级\"}, {\"value\": \"02\", \"text\": \"二年级\"}, {\"value\": \"03\", \"text\": \"三年级\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'icType','select','证件类型','[{\"value\": \"身份证\", \"text\": \"身份证\"}, {\"value\": \"护照\", \"text\": \"护照\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'enrollmentType','select','入学方式','[{\"value\": \"正常升学\", \"text\": \"正常升学\"}, {\"value\": \"借读\", \"text\": \"借读\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'studentStatus','select','学生状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"退学\", \"text\": \"退学\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'classStatus','select','班级状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"毕业班\", \"text\": \"毕业班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'classType','select','班级类型','[{\"value\": \"特长班\", \"text\": \"特长班\"}, {\"value\": \"义务班\", \"text\": \"义务班\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','jhUpdate','admin','admin','2022-02-18T20:45:25+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageFile` varchar(255) DEFAULT NULL,
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'help','帮助','helpV3','common',NULL,'jhUpdate','admin','adminName','2022-05-02T15:08:43+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'login','登陆','loginV3','common',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'designAssignment','作业设计',NULL,'dynamicInMenu','2','jhUpdate','admin','adminName','2022-05-04T13:51:00+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'articleManagement','文章管理',NULL,'showInMenu','1','update','vscode','vscode','2022-08-08T22:52:30+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'assignmentHomework','模拟做作业',NULL,'dynamicInMenu','3','update','vscode','vscode','2022-06-06T23:52:25+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'assignmentReview','作业批改',NULL,'dynamicInMenu','0','insert','vscode','vscode','2022-08-08T22:02:04+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,'assignmentManagement','作业管理',NULL,'showInMenu','0','insert','vscode','vscode','2022-08-08T22:52:52+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `index_record_id` (`recordId`) USING BTREE,
  KEY `index_table_action` (`table`, `operation`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 396 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 532 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,NULL,'allPage','getChunkInfo','✅ 文件分片下载-获取分片信息','service','{}','{\"service\": \"file\", \"serviceFunction\": \"getChunkInfo\"}','','','jhUpdate','admin','adminName','2022-05-03T12:46:39+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileDone\"}','','','update',NULL,NULL,'2022-09-08T15:43:09+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\"}','','','update',NULL,NULL,'2022-09-08T15:43:09+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,NULL,NULL,'allPage','httpUploadByBase64','✅ 文件分片上传-http base64','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\"}','','','update',NULL,NULL,'2022-04-28T14:43:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,NULL,NULL,'allPage','httpDownloadByBase64','✅ 文件分片下载-http base64','service','{}','{\"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\"}','','','update',NULL,NULL,'2022-04-30T14:52:38+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,NULL,NULL,'login','passwordLogin','✅登陆','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}','','','update',NULL,NULL,'2022-09-08T15:36:16+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,NULL,NULL,'allPage','logout','✅登出','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"logout\"}','','','update',NULL,NULL,'2022-04-25T14:39:56+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,NULL,NULL,'allPage','refreshToken','✅刷新authToken','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"refreshToken\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,NULL,NULL,'allPage','userInfo','✅获取用户信息','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}','','','update',NULL,NULL,'2022-09-09T02:58:38+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,NULL,NULL,'resetUserPassword','resetPassword','✅重置密码','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"resetPassword\"}','','','update',NULL,NULL,'2022-04-25T15:31:12+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,NULL,NULL,'allPage','uploadByStream','✅文件上传(文件流)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\"}','','','update',NULL,NULL,'2022-02-22T19:36:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,NULL,NULL,'allPage','uploadByBase64','✅文件上传(base64)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\"}','','','update',NULL,NULL,'2022-02-22T18:59:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,NULL,NULL,'designAssignment','updateAssignment','✅更新作业','sql','{}','{\"table\": \"article\", \"operation\": \"jhUpdate\"}','','','update',NULL,NULL,'2022-09-08T15:41:35+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,NULL,NULL,'designAssignment','selectAssignment','✅查询作业','sql','{}','{\"table\": \"article\", \"operation\": \"select\"}','','','update',NULL,NULL,'2022-09-08T15:40:53+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,NULL,NULL,'articleManagement','selectItemList','✅作业管理-查询列表(不包含内容)','sql','{}','{\"table\": \"article\", \"operation\": \"select\"}','','','update','vscode','vscode','2022-09-09T03:01:17+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,NULL,NULL,'articleManagement','jhUpdateItem','✅作业编辑-更新成员','sql','{}','{\"table\": \"article\", \"operation\": \"jhUpdate\"}','','','update','vscode','vscode','2022-09-09T02:55:28+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,NULL,NULL,'articleManagement','jhDeletedItem','✅删除作业','sql','{}','{\"table\": \"article\", \"operation\": \"jhDelete\"}','','','update','vscode','vscode','2022-09-09T02:55:28+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,NULL,'{\"before\":[{\"service\":\"article\",\"serviceFunction\":\"fillInsertItemParamsBeforeHook\"}]}','articleManagement','jhInsertItem','✅新增作业','sql','{}','{\"table\": \"article\", \"operation\": \"jhInsert\"}','','','update','vscode','vscode','2022-09-09T03:01:17+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,NULL,NULL,'assignmentHomework','selectItemList','✅模拟做题-更新成员','sql',NULL,'{\"service\": \"assignment\", \"serviceFunction\": \"selectArticleAssignmentList\"}','','','update',NULL,NULL,'2022-05-05T09:06:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,NULL,NULL,'assignmentHomework','selectArticleAssignmentList','✅模拟做题-某提做题','service','{}','{\"service\": \"assignment\", \"serviceFunction\": \"selectArticleAssignmentList\"}','','','update',NULL,NULL,'2022-08-08T18:22:07+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (27,NULL,NULL,'assignmentHomework','selectUserAssignmentList','✅文章作业-查看用户作业','sql','{}','{ \"table\": \"assignment\", \"operation\": \"select\", \"where\": {\"userId\": \"userInfo.userId\"} }','','','update',NULL,NULL,'2022-09-08T15:43:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (28,NULL,NULL,'assignmentHomework','selectArticleInfo','✅文章作业-查看用户作业','sql','{}','{ \"table\": \"article\", \"operation\": \"select\"}','','','update',NULL,NULL,'2022-09-08T15:41:40+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (29,NULL,'{ \"before\": [{\"service\": \"assignment\", \"serviceFunction\": \"appendAssignIdToActionData\"}], \"after\": [] }','assignmentHomework','insertItem','✅文章作业-创建作业','sql','{}','{ \"table\": \"assignment\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-09-08T15:42:16+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,NULL,NULL,'assignmentHomework','updateItem','✅文章作业-更新作业','sql','{}','{ \"table\": \"assignment\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-09-08T15:43:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,NULL,NULL,'assignmentReview','insertItem','✅模拟做题-创建','sql','{}','{\"table\": \"assignment\", \"operation\": \"jhInsert\"}','','','update','vscode','vscode','2022-07-21T16:04:02+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,NULL,NULL,'assignmentReview','updateItem','✅模拟做题-更新','sql','{}','{\"table\": \"assignment\", \"operation\": \"jhUpdate\"}','','','update','vscode','vscode','2022-09-08T15:43:54+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,NULL,NULL,'assignmentReview','selectItemList','✅assignmentManagement查询-查询列表','sql','{}','{\"table\":\"assignment\",\"operation\":\"select\"}','','','update','vscode','vscode','2022-09-08T15:43:54+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (472,NULL,NULL,'assignmentManagement','selectItemList','✅作业管理-查询列表','sql','{}','{\"table\":\"view01_assignment\",\"operation\":\"select\"}','','','update','vscode','vscode','2022-09-09T02:58:37+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (476,NULL,NULL,'assignmentManagement','selectAlbumList','✅作业管理-查询课程列表','sql','{}','{ \"table\": \"album\", \"operation\": \"select\" }','','','update','vscode','vscode','2022-07-22T22:52:03+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (530,NULL,NULL,'assignmentManagement','cancelSubmit','✅撤销提交','service',NULL,'{\"service\":\"assignment\",\"serviceFunction\":\"cancelSubmit\"}','','','update','vscode','vscode','2022-07-22T22:52:03+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (531,NULL,NULL,'articleManagement','deletedArticle','✅删除作业-将作业移至回收站','service','{}','{\"service\":\"article\",\"serviceFunction\":\"deletedArticle\"}','','','update','vscode','vscode','2022-09-09T02:58:34+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `resourceId_index` (`resourceId`) USING BTREE,
  KEY `packageId_index` (`packageId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 956 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'appAdmin','系统管理员',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'teacher','老师',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'student','学生',NULL,NULL,NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (82,'login','test','123',NULL,'123','insert','vscode','vscode','2022-06-11T15:40:48+08:00');
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (83,'designAssignment','test','et',NULL,'et','update','vscode','vscode','2022-06-11T20:49:23+08:00');
INSERT INTO `_test_case` (`id`,`pageId`,`testId`,`testName`,`uiActionIdList`,`testOpeartion`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (85,'designAssignment','test2','3',NULL,'3','insert','vscode','vscode','2022-06-11T20:49:23+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` json DEFAULT NULL COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 196 COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'recordHistoryManagement','ui','refreshTableData','✅获取表格数据','{\"before\": [{\"function\": \"openTableLoading\"}], \"main\": [{\"function\": \"refreshTableData\"}, {\"function\": \"computeHeader\"}], \"after\": [{\"function\": \"closeTableLoading\"}]}',NULL,'update','vscode','vscode','2022-06-11T14:34:10+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'recordHistoryManagement','ui','viewRecordHistory','✅版本历史列表','{\"main\": [{\"function\": \"doViewRecordHistory\"}]}',NULL,'update','vscode','vscode','2022-06-11T14:34:11+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'recordHistoryManagement','ui','restoreRecordByRecordHistory','✅数据还原','{\"main\": [{\"function\": \"doRestoreRecordByRecordHistory\"}, {\"function\": \"doViewRecordHistory\"}, {\"function\": \"refreshTableData\"}]}',NULL,'update','vscode','vscode','2022-06-11T14:34:11+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'articleManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:04+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'articleManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'articleManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'articleManagement','ui','assignmentDesignPage','✅跳转作业详情','{\"main\": [{\"function\": \"goToAssignmentDesignPage\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'articleManagement','ui','homeworkPage','✅跳转做作业','{\"main\": [{\"function\": \"goHomeworkPage\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,'articleManagement','ui','assignmentReview','✅跳转批改','{\"main\": [{\"function\": \"goAssignmentReview\"}]}',NULL,'update','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'assignmentHomework','ui','mineAssignment','✅获取用户作业','{\"main\": [{\"function\": \"mineAssignment\"}]}',NULL,'update','vscode','vscode','2022-08-08T21:12:37+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'assignmentHomework','ui','getLoginUserInfo','✅获取用户信息','{\"main\": [{\"function\": \"getLoginUserInfo\"}]}',NULL,'update','vscode','vscode','2022-08-08T21:12:38+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'assignmentHomework','ui','submitArticleAssignment','✅提交作业','{\"main\": [{\"vueComponent\": \"jhConfirmDialog\", \"function\": \"confirmDialog\", \"functionParamObj\": { \"title\": \"作业提交之后不能继续修改\", \"content\": \"确定提交吗？\" }}, {\"vueComponent\": \"homework\", \"function\": \"submitArticleAssignment\"}]}',NULL,'update','vscode','vscode','2022-08-08T21:12:38+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'designAssignment',NULL,'selectArticleAssignment','✅获取作业详情','{\"main\": [{\"function\": \"selectArticleAssignment\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'designAssignment',NULL,'saveArticleAssignment','✅保存作业','{\"main\": [{\"function\": \"saveArticleAssignment\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'designAssignment',NULL,'publishArticleAssignment','✅发布作业','{\"main\": [{\"function\": \"publishArticleAssignment\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'designAssignment',NULL,'createArticleAssignmentVersion','✅创建新版本','{\"main\": [{\"function\": \"createArticleAssignmentVersion\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'recordHistoryManagement',NULL,'test','desc','{}',NULL,'insert','vscode','vscode','2022-06-11T14:34:11+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'articleManagement','ui','refreshTableData','✅查询数据列表','{\"main\":[{\"function\":\"refreshTableData\"}]}',NULL,'insert','vscode','vscode','2022-08-08T14:43:05+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'articleManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'articleManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (37,'assignmentHomework','ui','getUserAssignment','✅获取用户作业','{\"main\": [{\"function\": \"getUserAssignment\"}]}',NULL,'update','vscode','vscode','2022-08-08T21:12:38+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (38,'assignmentHomework','ui','saveArticleAssignment','保存作业','{\"main\":[{\"function\":\"saveArticleAssignment\"}]}',NULL,'insert','vscode','vscode','2022-08-08T21:12:38+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (39,'assignmentReview','ui','mineAssignment','✅获取用户作业','{\"main\": [{\"function\": \"mineAssignment\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'assignmentReview','ui','getLoginUserInfo','✅获取用户信息','{\"main\": [{\"function\": \"getLoginUserInfo\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'assignmentReview','ui','submitArticleAssignment','✅提交作业','{\"main\": [{\"vueComponent\": \"homework\", \"function\": \"submitArticleAssignment\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (85,'assignmentManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:53+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (86,'assignmentManagement','ui','startCreateItem','✅获取表格数据','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:53+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (87,'assignmentManagement','ui','createItem','✅获取表格数据','{\"before\": [{\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:53+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (88,'assignmentManagement','ui','startUpdateItem','✅获取表格数据','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateDialog\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:53+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (89,'assignmentManagement','ui','updateItem','✅获取表格数据','{\"before\": [{\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:53+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (90,'assignmentManagement','ui','deleteItem','✅获取表格数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:54+08:00');
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (195,'assignmentManagement',NULL,'cancelSubmit','撤销提交','{\"main\":[{\"function\":\"cancelSubmit\"},{\"function\":\"refreshTableData\"}]}',NULL,'update','vscode','vscode','2022-07-22T23:43:54+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COMMENT '配置信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  `initPassword` varchar(255) DEFAULT NULL COMMENT '测试用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username_index` (`username`) USING BTREE,
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (1,NULL,'admin','adminName','123456','f0cc7a42ef0c399737c024202b1aaa3f','9PMF7J7VPsUy','active','common',NULL,'jhUpdate','admin','admin','2022-04-28T20:34:41+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (68,'26260000','001','小华','1234567','b9e96d6ebc84dd51f2bd1fb56a79d8cb','ZsPkQcHpYZQT','active','common',NULL,'jhUpdate','admin','adminName','2022-05-02T15:23:57+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (69,'26260001','002','003','12345678','f12cff5acea8bdf49c8962660661afce','CS2wAxdaNap8','active',NULL,NULL,'jhUpdate','admin','adminName','2022-04-29T16:33:27+08:00',NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `groupId_index` (`groupId`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 599 COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,'admin','adminGroup','appAdmin','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (597,'001','adminGroup','teacher','jhInsert','admin','admin','2022-02-21T00:41:54+08:00');
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (598,'001','adminGroup','appAdmin','jhInsert','admin','admin','2022-04-25T14:39:44+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'*','public','*','login','allow','登陆页; 开放给所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'*','login','*','operationManual','allow','操作手册页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'*','login','*','help','allow','帮助页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'*','adminGroup','appAdmin','userGroupRole','allow','权限管理页; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'*','adminGroup','appAdmin','*','allow','所有页面; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'*','adminGroup','appAdmin','userManagement','allow','用户管理页面; 开放给应用管理者;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'*','public','*','allPage.getConstantList','allow','查询常量resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'*','login','*','allPage.logout','allow','登出resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','login','*','allPage.refreshToken','allow','刷新authToken resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'*','login','*','allPage.userInfo','allow','用户个人信息resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'*','login','*','allPage.uploadByBase64','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'*','login','*','allPage.uploadByStream','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','adminGroup','appAdmin','*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','adminGroup','appAdmin','userGroupRole.*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (71,'*','adminGroup','teacher','newStudent.*','allow','老师, 赋予所有newStudent页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (72,'*','adminGroup','teacher','studentBill.*','allow','老师, 赋予所有studentBill页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (73,'*','adminGroup','teacher','studentBillPayment.*','allow','老师, 赋予所有studentBillPayment页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (74,'*','adminGroup','teacher','studentPayment.*','allow','老师, 赋予所有studentPayment页面resource的权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleId` varchar(255) DEFAULT NULL,
  `articleTitle` varchar(255) DEFAULT '' COMMENT '作业标题',
  `articleAssignment` text COMMENT '文章作业 [{ }]',
  `articleAssignmentWithAnswer` text COMMENT '文章作业答案 [{ }]',
  `operation` varchar(255) DEFAULT '' COMMENT '操作: insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT '' COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT '' COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT '' COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  `articleAssignmentPublishStatus` varchar(255) DEFAULT NULL,
  `articlePublishStatus` varchar(255) DEFAULT NULL COMMENT '文章类型(状态)：public, login, draft, deleted',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10013;




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: assignment
# ------------------------------------------------------------

DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assignmentId` varchar(255) DEFAULT NULL COMMENT '学生作业ID; articleId_userId_123456',
  `articleId` varchar(255) DEFAULT NULL COMMENT '文章ID',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `assignmentScore` int(11) DEFAULT NULL COMMENT '作业分数',
  `assignmentSubmitStatus` varchar(255) DEFAULT NULL COMMENT '作业提交状态; publish',
  `assignmentSubmitAt` varchar(255) DEFAULT NULL COMMENT '作业提交时间',
  `assignmentFormItemListWithUser` text COMMENT '用户作业内容',
  `assignmentFormItemListWithAnswer` text COMMENT '作业标准答案',
  `assignmentReviewUserId` varchar(255) DEFAULT NULL COMMENT '批改人UserId',
  `assignmentReview` text,
  `assignmentReviewStatus` varchar(255) DEFAULT NULL COMMENT '批改状态; publish',
  `assignmentReviewAt` varchar(255) DEFAULT NULL COMMENT '批改时间',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者用户ID; userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者;',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 434;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: assignment
# ------------------------------------------------------------

INSERT INTO `assignment` (`id`,`assignmentId`,`articleId`,`userId`,`assignmentScore`,`assignmentSubmitStatus`,`assignmentSubmitAt`,`assignmentFormItemListWithUser`,`assignmentFormItemListWithAnswer`,`assignmentReviewUserId`,`assignmentReview`,`assignmentReviewStatus`,`assignmentReviewAt`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (429,'37557_m3995Q_728723','37557','m3995Q',31,NULL,NULL,'[{\"id\":\"singleSelect_6lZPyOFC\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[\"img\",\"audio\"],\"file\":{\"img\":\"/assignmentMaterial/m3995Q/37557_m3995Q_728723/answer-time-right-toast (4).png\",\"audio\":\"/assignmentMaterial/m3995Q/37557_m3995Q_728723/answer-time-start-1.mp3\"},\"answerData\":{\"selected\":\"a\"},\"userData\":{\"selected\":\"b\"},\"answerString\":\"a\",\"isRight\":false,\"reviewData\":{\"score\":\"10\",\"comment\":\"这个错误的\"}},{\"id\":\"multipleSelect_1zo4Hs-N\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲1\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[\"img\"],\"file\":{\"img\":\"/assignmentMaterial/m3995Q/37557_m3995Q_728723/answer-time-right-toast (6).png\"},\"answerData\":{\"a\":true,\"b\":true},\"userData\":{\"b\":false,\"a\":true},\"answerString\":\"a,b\",\"isRight\":false,\"reviewData\":{\"score\":\"20\",\"comment\":\"这个不对\"}},{\"id\":\"singleSelect_6z6TvopM\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"a\"},\"userData\":{\"selected\":\"a\"},\"answerString\":\"a\",\"isRight\":true,\"reviewData\":{\"score\":\"1\"}}]','[{\"id\":\"singleSelect_6lZPyOFC\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[\"img\",\"audio\"],\"file\":{\"img\":\"\",\"audio\":\"\"},\"answerData\":{\"selected\":\"a\"}},{\"id\":\"multipleSelect_1zo4Hs-N\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选题 题纲1\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[\"img\"],\"file\":{\"img\":\"\"},\"answerData\":{\"a\":true,\"b\":true}},{\"id\":\"singleSelect_6z6TvopM\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选题 题纲\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"a\"}}]','m3995Q',NULL,NULL,'2022-05-19T16:57:41+08:00','jhUpdate','m3995Q','雪园','2022-05-19T16:57:41+08:00');
INSERT INTO `assignment` (`id`,`assignmentId`,`articleId`,`userId`,`assignmentScore`,`assignmentSubmitStatus`,`assignmentSubmitAt`,`assignmentFormItemListWithUser`,`assignmentFormItemListWithAnswer`,`assignmentReviewUserId`,`assignmentReview`,`assignmentReviewStatus`,`assignmentReviewAt`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (430,'10000_admin_931971','10000','admin',10,'publish','2022-08-08T21:51:20+08:00','[{\"id\":\"textarea_ADK5J2Kh\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"123\"},\"userData\":{},\"answerString\":\"default\",\"isRight\":true},{\"id\":\"singleSelect_3FEoT5wE\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"1\"},\"userData\":{\"selected\":\"2\"},\"answerString\":\"1\",\"isRight\":false},{\"id\":\"multipleSelect_qyR4Vaf0\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{\"2\":true,\"3\":true},\"userData\":{\"1\":true,\"2\":true},\"answerString\":\"2,3\",\"isRight\":false}]','[{\"id\":\"textarea_ADK5J2Kh\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"123\"}},{\"id\":\"singleSelect_3FEoT5wE\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"1\"}},{\"id\":\"multipleSelect_qyR4Vaf0\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{\"2\":true,\"3\":true}}]',NULL,'{\"textarea_ADK5J2Kh\":{\"score\":\"10\",\"comment\":\"\"},\"singleSelect_3FEoT5wE\":{\"score\":\"\",\"comment\":\"\"},\"multipleSelect_qyR4Vaf0\":{\"score\":\"\",\"comment\":\"\"}}','publish',NULL,'jhUpdate','admin','adminName','2022-08-25T17:52:58+08:00');
INSERT INTO `assignment` (`id`,`assignmentId`,`articleId`,`userId`,`assignmentScore`,`assignmentSubmitStatus`,`assignmentSubmitAt`,`assignmentFormItemListWithUser`,`assignmentFormItemListWithAnswer`,`assignmentReviewUserId`,`assignmentReview`,`assignmentReviewStatus`,`assignmentReviewAt`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (431,'10001_admin_119325','10001','admin',NULL,'publish','2022-08-27T22:52:36+08:00','[{\"id\":\"textarea_403IK3D_\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"test多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"a\"},\"userData\":{\"answer\":\"aaa\"},\"answerString\":\"default\",\"isRight\":false},{\"id\":\"singleSelect_pJttkkqf\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"test单选111\",\"property\":{\"selectOptionList\":[{\"value\":\"aaa\"},{\"value\":\"bbb\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{},\"userData\":{\"selected\":\"aaa\"},\"isRight\":false},{\"id\":\"singleSelect_gMdbfNdv\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"test单选222\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{},\"userData\":{\"selected\":\"2\"},\"isRight\":false},{\"id\":\"multipleSelect_EzWtzB3P\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"test多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{},\"userData\":{\"1\":true,\"2\":true},\"answerString\":\"\",\"isRight\":false}]','[{\"id\":\"textarea_403IK3D_\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"test多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"a\"}},{\"id\":\"singleSelect_pJttkkqf\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"test单选111\",\"property\":{\"selectOptionList\":[{\"value\":\"aaa\"},{\"value\":\"bbb\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{}},{\"id\":\"singleSelect_gMdbfNdv\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"test单选222\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{}},{\"id\":\"multipleSelect_EzWtzB3P\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"test多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{}}]',NULL,NULL,NULL,NULL,'jhUpdate','admin','adminName','2022-08-27T22:52:38+08:00');
INSERT INTO `assignment` (`id`,`assignmentId`,`articleId`,`userId`,`assignmentScore`,`assignmentSubmitStatus`,`assignmentSubmitAt`,`assignmentFormItemListWithUser`,`assignmentFormItemListWithAnswer`,`assignmentReviewUserId`,`assignmentReview`,`assignmentReviewStatus`,`assignmentReviewAt`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (432,'10003_admin_151037','10003','admin',0,'publish','2022-09-07T09:52:53+08:00','[{\"id\":\"textarea_6Uha9ydy\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"1+1=?\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"2\"},\"userData\":{\"answer\":\"2\"},\"answerString\":\"default\",\"isRight\":true},{\"id\":\"singleSelect_404-vVS7\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"b\"},\"userData\":{\"selected\":\"b\"},\"answerString\":\"b\",\"isRight\":true},{\"id\":\"multipleSelect_do9HHnp2\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{\"1\":true,\"2\":true,\"3\":true},\"userData\":{\"1\":false,\"2\":true,\"3\":true},\"answerString\":\"1,2,3\",\"isRight\":true}]','[{\"id\":\"textarea_6Uha9ydy\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"1+1=?\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{\"answer\":\"2\"}},{\"id\":\"singleSelect_404-vVS7\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[],\"file\":{},\"answerData\":{\"selected\":\"b\"}},{\"id\":\"multipleSelect_do9HHnp2\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[],\"file\":{},\"answerData\":{\"1\":true,\"2\":true,\"3\":true}}]',NULL,'{\"textarea_6Uha9ydy\":{\"score\":\"\",\"comment\":\"\"},\"singleSelect_404-vVS7\":{\"score\":\"\",\"comment\":\"\"},\"multipleSelect_do9HHnp2\":{\"score\":\"\",\"comment\":\"\"}}','publish',NULL,'jhUpdate','admin','adminName','2022-09-08T15:36:27+08:00');
INSERT INTO `assignment` (`id`,`assignmentId`,`articleId`,`userId`,`assignmentScore`,`assignmentSubmitStatus`,`assignmentSubmitAt`,`assignmentFormItemListWithUser`,`assignmentFormItemListWithAnswer`,`assignmentReviewUserId`,`assignmentReview`,`assignmentReviewStatus`,`assignmentReviewAt`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (433,'10004_admin_661347','10004','admin',50,'publish','2022-09-08T15:43:13+08:00','[{\"id\":\"singleSelect_rZYM45xe\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[\"img\",\"audio\",\"video\"],\"file\":{\"img\":\"\",\"audio\":\"/assignmentMaterial/undefined/10004_admin_661347/神所喜悅的人系列 03 末底改.mp3\",\"video\":\"\"},\"answerData\":{\"selected\":\"2\"},\"userData\":{\"selected\":\"1\"},\"answerString\":\"2\",\"isRight\":false},{\"id\":\"multipleSelect_Mn0T_fEG\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[\"img\",\"audio\",\"video\"],\"file\":{\"img\":\"/assignmentMaterial/undefined/10004_admin_661347/黑猫.jpeg\",\"audio\":\"\",\"video\":\"\"},\"answerData\":{\"1\":true,\"3\":true},\"userData\":{\"1\":true,\"2\":true},\"answerString\":\"1,3\",\"isRight\":false},{\"id\":\"textarea_AFvXKrCH\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{},\"userData\":{\"answer\":\"答案\"},\"answerString\":\"default\",\"isRight\":false}]','[{\"id\":\"singleSelect_rZYM45xe\",\"component\":{\"title\":\"单选\",\"type\":\"singleSelect\",\"outline\":\"单选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"}]},\"icon\":\"mdi-checkbox-marked-circle\"},\"upload\":[\"img\",\"audio\",\"video\"],\"file\":{\"img\":\"\",\"audio\":\"\",\"video\":\"\"},\"answerData\":{\"selected\":\"2\"}},{\"id\":\"multipleSelect_Mn0T_fEG\",\"component\":{\"title\":\"多选\",\"type\":\"multipleSelect\",\"outline\":\"多选\",\"property\":{\"selectOptionList\":[{\"value\":\"1\"},{\"value\":\"2\"},{\"value\":\"3\"},{\"value\":\"4\"}]},\"icon\":\"mdi-checkbox-marked\"},\"upload\":[\"img\",\"audio\",\"video\"],\"file\":{\"img\":\"\",\"audio\":\"\",\"video\":\"\"},\"answerData\":{\"1\":true,\"3\":true}},{\"id\":\"textarea_AFvXKrCH\",\"component\":{\"title\":\"多行文本\",\"type\":\"textarea\",\"outline\":\"多行文本\",\"property\":{},\"icon\":\"mdi-form-textarea\"},\"upload\":[],\"file\":{},\"answerData\":{}}]',NULL,'{\"singleSelect_rZYM45xe\":{\"score\":\"0\",\"comment\":\"\"},\"multipleSelect_Mn0T_fEG\":{\"score\":\"0\",\"comment\":\"\"},\"textarea_AFvXKrCH\":{\"score\":\"50\",\"comment\":\"\"}}','publish',NULL,'jhUpdate','admin','adminName','2022-09-08T15:43:54+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`,
  `_user`.`initPassword` AS `initPassword`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_assignment
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_assignment` AS
select
  `assignment`.`id` AS `id`,
  `assignment`.`assignmentId` AS `assignmentId`,
  `assignment`.`articleId` AS `articleId`,
  `assignment`.`userId` AS `userId`,
  `assignment`.`assignmentScore` AS `assignmentScore`,
  `assignment`.`assignmentSubmitStatus` AS `assignmentSubmitStatus`,
  `assignment`.`assignmentSubmitAt` AS `assignmentSubmitAt`,
  `assignment`.`assignmentFormItemListWithUser` AS `assignmentFormItemListWithUser`,
  `assignment`.`assignmentFormItemListWithAnswer` AS `assignmentFormItemListWithAnswer`,
  `assignment`.`assignmentReviewUserId` AS `assignmentReviewUserId`,
  `assignment`.`assignmentReviewStatus` AS `assignmentReviewStatus`,
  `assignment`.`assignmentReviewAt` AS `assignmentReviewAt`,
  `assignment`.`operation` AS `operation`,
  `assignment`.`operationByUserId` AS `operationByUserId`,
  `assignment`.`operationByUser` AS `operationByUser`,
  `assignment`.`operationAt` AS `operationAt`,
  `article`.`articleTitle` AS `articleTitle`
from
  (
  `assignment`
  left join `article` on(
    (
    `assignment`.`articleId` = convert(`article`.`articleId` using utf8mb4)
    )
  )
  );





