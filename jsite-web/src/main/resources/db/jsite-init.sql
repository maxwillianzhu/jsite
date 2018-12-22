
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ACT_DE_DATABASECHANGELOG
-- ----------------------------
DROP TABLE IF EXISTS `ACT_DE_DATABASECHANGELOG`;
CREATE TABLE `ACT_DE_DATABASECHANGELOG`  (
  `ID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `AUTHOR` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FILENAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `DATEEXECUTED` datetime(0) NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MD5SUM` varchar(35) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `COMMENTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TAG` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LIQUIBASE` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONTEXTS` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LABELS` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_DE_DATABASECHANGELOG
-- ----------------------------
INSERT INTO `ACT_DE_DATABASECHANGELOG` VALUES ('1', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2018-11-20 10:15:46', 1, 'EXECUTED', '8:e70d1d9d3899a734296b2514ccc71501', 'createTable tableName=ACT_DE_MODEL; createIndex indexName=idx_proc_mod_created, tableName=ACT_DE_MODEL; createTable tableName=ACT_DE_MODEL_HISTORY; createIndex indexName=idx_proc_mod_history_proc, tableName=ACT_DE_MODEL_HISTORY; createTable tableN...', '', NULL, '3.6.2', NULL, NULL, '2680145984');
INSERT INTO `ACT_DE_DATABASECHANGELOG` VALUES ('3', 'flowable', 'META-INF/liquibase/flowable-modeler-app-db-changelog.xml', '2018-11-20 10:15:46', 2, 'EXECUTED', '8:3a9143bef2e45f2316231cc1369138b6', 'addColumn tableName=ACT_DE_MODEL; addColumn tableName=ACT_DE_MODEL_HISTORY', '', NULL, '3.6.2', NULL, NULL, '2680145984');

-- ----------------------------
-- Table structure for ACT_DE_DATABASECHANGELOGLOCK
-- ----------------------------
DROP TABLE IF EXISTS `ACT_DE_DATABASECHANGELOGLOCK`;
CREATE TABLE `ACT_DE_DATABASECHANGELOGLOCK`  (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime(0) NULL DEFAULT NULL,
  `LOCKEDBY` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_DE_DATABASECHANGELOGLOCK
-- ----------------------------
INSERT INTO `ACT_DE_DATABASECHANGELOGLOCK` VALUES (1, b'0', NULL, NULL);

-- ----------------------------
-- Table structure for ACT_DE_MODEL
-- ----------------------------
DROP TABLE IF EXISTS `ACT_DE_MODEL`;
CREATE TABLE `ACT_DE_MODEL`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `last_updated` datetime(6) NULL DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `thumbnail` longblob NULL,
  `model_type` int(11) NULL DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_created`(`created_by`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_DE_MODEL
-- ----------------------------
INSERT INTO `ACT_DE_MODEL` VALUES ('86fcba22-ec6d-11e8-bf0c-c85b7643dd9e', '请假流程', 'leave', '请假流程演示', NULL, '2018-11-20 10:39:39.316000', 'admin', '2018-12-04 15:53:31.586000', 'admin', 1, '{\"modelId\":\"86fcba22-ec6d-11e8-bf0c-c85b7643dd9e\",\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"properties\":{\"process_id\":\"leave\",\"name\":\"请假流程\",\"documentation\":\"请假流程演示\",\"process_author\":\"\",\"process_version\":\"\",\"process_namespace\":\"com.jsite.modules.oa.leave\",\"process_historylevel\":\"\",\"isexecutable\":true,\"dataproperties\":\"\",\"executionlisteners\":\"{\\\"executionListeners\\\":[]}\",\"eventlisteners\":\"{\\\"eventListeners\\\":[]}\",\"signaldefinitions\":\"[]\",\"messagedefinitions\":\"[]\",\"process_potentialstarteruser\":\"\",\"process_potentialstartergroup\":\"\",\"iseagerexecutionfetch\":\"false\",\"messages\":[]},\"childShapes\":[{\"resourceId\":\"startevent1\",\"properties\":{\"overrideid\":\"startevent1\",\"name\":\"发起流程\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]},\"initiator\":\"applyUserId\",\"formkeydefinition\":\"/oa/leave/form\",\"formreference\":\"\",\"formproperties\":\"\",\"interrupting\":true},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow2\"}],\"bounds\":{\"lowerRight\":{\"x\":195,\"y\":122.5},\"upperLeft\":{\"x\":165,\"y\":92.5}},\"dockers\":[]},{\"resourceId\":\"deptLeaderAudit\",\"properties\":{\"overrideid\":\"deptLeaderAudit\",\"name\":\"部门领导审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"candidateGroups\":[{\"value\":\"dept\"}]}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow3\"}],\"bounds\":{\"lowerRight\":{\"x\":356.1111107840623,\"y\":135},\"upperLeft\":{\"x\":251.1111107840623,\"y\":80}},\"dockers\":[]},{\"resourceId\":\"exclusivegateway5\",\"properties\":{\"overrideid\":\"exclusivegateway5\",\"name\":\"Exclusive Gateway\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow5\"},{\"resourceId\":\"flow4\"}],\"bounds\":{\"lowerRight\":{\"x\":457.7777769601558,\"y\":127},\"upperLeft\":{\"x\":417.7777769601558,\"y\":87}},\"dockers\":[]},{\"resourceId\":\"modifyApply\",\"properties\":{\"overrideid\":\"modifyApply\",\"name\":\"调整申请\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${applyUserId}\"}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[{\"event\":\"complete\",\"delegateExpression\":\"${leaveModifyProcessor}\"}]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow11\"}],\"bounds\":{\"lowerRight\":{\"x\":490.27777696015585,\"y\":245},\"upperLeft\":{\"x\":385.2777769601558,\"y\":190}},\"dockers\":[]},{\"resourceId\":\"hrAudit\",\"properties\":{\"overrideid\":\"hrAudit\",\"name\":\"人事审批\",\"documentation\":\"\",\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"executionlisteners\":{\"executionListeners\":[]},\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"candidateGroups\":[{\"value\":\"hr\"}]}},\"formkeydefinition\":\"\",\"formreference\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":{\"taskListeners\":[]},\"skipexpression\":\"\",\"categorydefinition\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow6\"}],\"bounds\":{\"lowerRight\":{\"x\":652.4074062082284,\"y\":135},\"upperLeft\":{\"x\":547.4074062082284,\"y\":80}},\"dockers\":[]},{\"resourceId\":\"exclusivegateway6\",\"properties\":{\"overrideid\":\"exclusivegateway6\",\"name\":\"Exclusive Gateway\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow7\"},{\"resourceId\":\"flow9\"}],\"bounds\":{\"lowerRight\":{\"x\":754.0740723843219,\"y\":127.5},\"upperLeft\":{\"x\":714.0740723843219,\"y\":87.5}},\"dockers\":[]},{\"resourceId\":\"endevent1\",\"properties\":{\"overrideid\":\"endevent1\",\"name\":\"End\",\"documentation\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":928.722220096405,\"y\":311},\"upperLeft\":{\"x\":900.722220096405,\"y\":283}},\"dockers\":[]},{\"resourceId\":\"exclusivegateway7\",\"properties\":{\"overrideid\":\"exclusivegateway7\",\"name\":\"Exclusive Gateway\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\",\"executionlisteners\":{\"executionListeners\":[]}},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"flow12\"},{\"resourceId\":\"flow10\"}],\"bounds\":{\"lowerRight\":{\"x\":457.7777769601558,\"y\":317},\"upperLeft\":{\"x\":417.7777769601558,\"y\":277}},\"dockers\":[]},{\"resourceId\":\"flow6\",\"properties\":{\"overrideid\":\"flow6\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"exclusivegateway6\"}],\"bounds\":{\"lowerRight\":{\"x\":714.2068849533086,\"y\":107.5},\"upperLeft\":{\"x\":653.3162601832651,\"y\":107.5}},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"exclusivegateway6\"}},{\"resourceId\":\"flow3\",\"properties\":{\"overrideid\":\"flow3\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"exclusivegateway5\"}],\"bounds\":{\"lowerRight\":{\"x\":417.9105964732469,\"y\":107.30096081779048},\"upperLeft\":{\"x\":357.0199578149946,\"y\":107.07403918220952}},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"exclusivegateway5\"}},{\"resourceId\":\"flow2\",\"properties\":{\"overrideid\":\"flow2\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"deptLeaderAudit\"}],\"bounds\":{\"lowerRight\":{\"x\":250.462673422036,\"y\":107.5},\"upperLeft\":{\"x\":195.48567704500732,\"y\":107.5}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":52.5,\"y\":27.5}],\"target\":{\"resourceId\":\"deptLeaderAudit\"}},{\"resourceId\":\"flow4\",\"properties\":{\"overrideid\":\"flow4\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${!auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modifyApply\"}],\"bounds\":{\"lowerRight\":{\"x\":437.77777696015585,\"y\":189.73828125},\"upperLeft\":{\"x\":437.77777696015585,\"y\":126.9921875}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":52.50000000000003,\"y\":27.5}],\"target\":{\"resourceId\":\"modifyApply\"}},{\"resourceId\":\"flow11\",\"properties\":{\"overrideid\":\"flow11\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"exclusivegateway7\"}],\"bounds\":{\"lowerRight\":{\"x\":437.77777696015585,\"y\":277.3671875},\"upperLeft\":{\"x\":437.77777696015585,\"y\":245.828125}},\"dockers\":[{\"x\":52.50000000000003,\"y\":27.5},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"exclusivegateway7\"}},{\"resourceId\":\"flow12\",\"properties\":{\"overrideid\":\"flow12\",\"name\":\"结束流程\",\"documentation\":\"\",\"conditionsequenceflow\":\"${!auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"endevent1\"}],\"bounds\":{\"lowerRight\":{\"x\":900.6807704793981,\"y\":297},\"upperLeft\":{\"x\":457.4084192701655,\"y\":297}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"endevent1\"}},{\"resourceId\":\"flow10\",\"properties\":{\"overrideid\":\"flow10\",\"name\":\"重新申请\",\"documentation\":\"\",\"conditionsequenceflow\":\"${auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"deptLeaderAudit\"}],\"bounds\":{\"lowerRight\":{\"x\":417.8246520751339,\"y\":297},\"upperLeft\":{\"x\":303,\"y\":135.14843230018272}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":303,\"y\":297},{\"x\":52.5,\"y\":27.5}],\"target\":{\"resourceId\":\"deptLeaderAudit\"}},{\"resourceId\":\"flow9\",\"properties\":{\"overrideid\":\"flow9\",\"name\":\"不同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${!auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"modifyApply\"}],\"bounds\":{\"lowerRight\":{\"x\":734.0606647332905,\"y\":217.41042145542866},\"upperLeft\":{\"x\":490.8480881793412,\"y\":127.32031227120092}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":734,\"y\":217},{\"x\":52.50000000000003,\"y\":27.5}],\"target\":{\"resourceId\":\"modifyApply\"}},{\"resourceId\":\"flow7\",\"properties\":{\"overrideid\":\"flow7\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"endevent1\"}],\"bounds\":{\"lowerRight\":{\"x\":914.667657765859,\"y\":282.5703196488758},\"upperLeft\":{\"x\":754.0506003135322,\"y\":106}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":914,\"y\":106},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"endevent1\"}},{\"resourceId\":\"flow5\",\"properties\":{\"overrideid\":\"flow5\",\"name\":\"同意\",\"documentation\":\"\",\"conditionsequenceflow\":\"${auditPass}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\",\"skipexpression\":\"\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"hrAudit\"}],\"bounds\":{\"lowerRight\":{\"x\":546.9752640950512,\"y\":107.33675981263059},\"upperLeft\":{\"x\":457.77733813231816,\"y\":107.06167768736941}},\"dockers\":[{\"x\":20,\"y\":20},{\"x\":52.5,\"y\":27.5}],\"target\":{\"resourceId\":\"hrAudit\"}}],\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"}}', 0x89504E470D0A1A0A0000000D49484452000001060000005C08060000008C571B19000009D34944415478DAED9D5F6C14D715C611A25653A9295278A02D89D214293CA48D52A9C94310328A55A98D4D5A35DE65D7CBD6C2E64FE510594458548A898522B6C654280A2212F0408B2359B6042FA412F1E2D8EB2099584E9B90D6A9535B06D5A1C66E0CA1C5B2D7E6F6FB56BBD684607BC1BB776776BF9F74343330307BCF3DE79B7BEFCCDCBB6C99104208218410420821841042E42BC698154343436D3D3D3DB3E7CF9F37EDEDED562C1A8D9A582C360E0BC9F7F2BD70190CCCEEEE6E73EDDA3533353565D5C6C6C64C5757D70D04EA8BF2BD7C2F5C04EF560CCC9B1323E6A377F624B69603740A77B17E4BC55DE946DFD30FB9F0BF65DFBBCEFF6201D88465907CD2DE90084C6E6DDFBD109C710B452D61EB1D56EA36DFE7D2FF967CEF4AFF7B928A8A8A357EBFFF703018BCB279F36613080486B17DB5B8B8784526AFC33E2703E4B30B471281C96D0E84C15808CA09D8E1E4D615C199F27D2EFD6FC1F7AEF5BFE7F0F97C255BB66CF9E2D8B1639F0F0F0FCF00D3DFDF3F5E5757F77708C4D94C8A432A38072EBC99084C6EF34C184AEE08C612B704A7531872E57F8BA2EC3AFF7BAEA5505959F9655F5F9FB91BFBF6EDFB221C0EFB33199C0CC83B2D4F8273BE20744570A6842197FEB72CCACB240EF7494D4DCD9F4E9D3A356BE6A1B7B7D7D4D6D6FE231B77AD5C59968273B1E0CB7970E6B1EF3DE17F4F515D5D7D1DDD87F974C14C4E4E9AAAAAAA1905E79282D215C159C0A22C71B85738D0B8183C6789D7E88735F8FDFE27F2293859AEB2B2B2DF2747BFDF4AF39F4592E7AFB458C709FFE79B3064C2FFDBB76FFF06FE8F6F9597977F271008AC0A8542DFC5FE2388D51FE2781DBADA3FC2FE4F70AD6770BCDEE7F36DC4F1CF70FC3C8E7F89FD72EC07B1FF1B58358E7F8BE397B1FF0AF6F762BF1EB61FC7111C1FC2FE1BB0A3D83F8EED49D8DBF8BB561C9FC1FE59D8BBB0F760EFC32EC23E845DC2399F623B08E3C381ABB071D80DD82D587CA939FA35E098FF2ED66240ABE2362F9C09734B7066AA3CB48D1B379AA2A22273AF77AC4CFE062FF93ED3655F82FF19D7D3B0FFC1AEC3C6609FC32EC3FE49E141C27E8C6D1FAC07D68D04EDC0F61C9398C9CCA4667233C993C97E94C94F11A0185014280E14098A054583E24111A1985054282E14198A0D4587E2037B36180C3E8D3F7B8A375488D5E3387E0CC70F637F75381C7E08A2F520F61FE0C3818C0B437D7DFDB9E6E666B3D018435D5DDDBFD59CD51883C618DCDDF2CFE87F585B5BFB285A0DF1F99E4A442291DB108F97149CF9F354224F7D5FD04F25322E0C64CF9E3DBFDEB66DDB345B0EEC56F03D86C1C141D3D8D838555353F34136DE6328A0E074E57B0C79EA7B57FBDF73C240F83EC3EEDDBBA310080E6898AD5BB7FEA7AAAAEAF5CACACA6F66F23ACED772736493165ECB75E59B7705E27BD7FADF93C2608B582C7635175FF7A56C6464A4C5D2873CAE7B57BF807CEF4AFF4B1816A0A3A3E385CECECEEBA3A3A3B76CDFAD1898D168F4B2C54F7F57BAA9C20ACCF7AEF3BF846111101CA5B873F4B259696BB290E4B5FA6DCF07E0B60A2B24DFE74DC2A89CAA3021FFAB9CF701DF46F3FBFDB7556142FE579C391DF01A6C561526E47FC599B3C5F037098390FF15675F811FBBF0BD76559890FF1567CE16C32A7EECA20A13F2BFE26C0E7E16CB2FE0546142FE579C39BB128FF0B358559890FF15677370020D7E2BAF0A13F2BFE2CC39C6B08E1368A8C284FCAF389B2339D5D6C7AA3021FF2BCE9C5D09CEBFD7A70A13F2BFE2CCE9806738FF9E2A4CC8FF8A33E718C37A4ECAA90A13F2BFE26C0ECEA0CB997A556142FE579C39C71838A7FF398F54D62509831246E5B4E380E739A7BF477EEBAB1206258CCA69678C81ABFF9CF1C86F5D276150C2A89C76BA125CB5A7D5C6B58C312B868686DA7A7A7A6639C3B2ADA9D0A2D1A889C562E3B090525B09A372A6E780209704B3712D8A427777B7E1CCCA37274612CBC5736B6302D5B1B131D3D5D5752317F3242A61544E2F7625B8DEDF491BD7624B2135DDFA27ED0D0961E0D6D6ECCA1087298BD3AD2B61544E4F0B0357143E6EE35ACE055A3EBB7024210CDC5A5EB929AEF456C2A89C8B8F317099F1A336AEE55CD26DE0C29B0961E036CF967453C2A89C79E18097B9CCB84D61A020DC691206258CCAE9AEAEC42B68351CB2DD62C8E3456095302A675E7425F6421C221206A1849130381D500FDB5F48C2905C64672FEC2F4A75258C84E1EE0ED84F7128246160A5CBEEDF240C8531C610E1DD535D0921240CCE3186431C809430082161703AE00D3EB29430082161703AE0285F7292300821617076258EF3B5681BD772BE129D239BD42BD142C2909E034EF2432A1BD78AC56257531F51E5C24646465AF411959030A4E780B7F9E9B58D6B757474BCD0D9D9797D7474F496ED960245211A8D5ED667D742C290069CA48593B5D8BA1E12B31477ED5E36E96D4DD492BC56BF44414818D21F6338C3E9DD54614228CE9C0E38CB096155614228CE9C0E789753C8ABC284509C391DF01E179D518509A138733AE07D08C3B3AA302114674E075C0C06834FABC284509C391DF021EC295598108A33A7032EF9FDFE2754614228CEE60804029F9697973FEE151193300809831D070C0683C1C7BCF05BCBCACA5E973008DD80EC38E10AEC610FFCD41298D9B061838441643B27B4AA3A1C70155D89D51E108509D8E1A2A2225658A9C2576403E4C25A74AF7F979CDF7227C7DF8A8B8B5714A2308C87C3E1873C200AA5F31C0BB1642006EB910BBD779BFC96B389FB7CBE924213861B1515150F7A441496491C441672E045589C22B063C78EDB274E9C306D6D6D86DB9D3B77CE0904C42354484EB985E6D3031E12058983C864D761355A04134CFCD6D6D6D9E9E969E3646666C69C3E7D9AA23083736EE226BAA6508421EEC23E54BA492F71104BED425453140E1C3870C52C405353D3486ADCA1508481859D8283BEE478038C0E1882F5C33E827D00EB8645617FE6FC0DD8B6E0FC3F72BE48EC1FC1FE1FB83E05F61B3870833FDF0D7B09C7DBB00D63EB87FD2A180CFE02DBE7D89FE36BD8F8BB27B92A1454FB07B0EF637FD5DAB56BD72C5FBE9C038C6FA559042EAFC7F3572ACCC53DC63E63BC9339D0DCDC3CB99030B4B4B4C493B9D25048CDA9A24D9B367D9B8989827F8F89CA8485FD18C9FBD3E4C0CC73D8FF39277561A233E1936A5B4321488EE4BE063B40A1A060C08E51402824B0D338EF9DA4C050682EC2FE9AAC1C0AD1BF606314289C1787A5F3F4E12B2D06AD12255B8A2D446363E36C41B5185C8CC61844D6E198416AE0717070F0AEA2303C3C6C42A1D06CF2BC47E535F78A83444164B24BD14461E01388818181AF89C2AE5DBB52AD8A2679CBBDE2205110D91087B6549722128970CCC11C3C78D0A045911285B6827CD1C923E27058A220B2DC7288DF31F6C0E3268982BBC541AF430B1B630E957CFAC081468D2978033D92144208218410420821841042082184104208218410420821EE97FF03BF79D60303EB28D40000000049454E44AE426082, 0, NULL);

-- ----------------------------
-- Table structure for ACT_DE_MODEL_HISTORY
-- ----------------------------
DROP TABLE IF EXISTS `ACT_DE_MODEL_HISTORY`;
CREATE TABLE `ACT_DE_MODEL_HISTORY`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model_key` varchar(400) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `model_comment` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `created` datetime(6) NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `last_updated` datetime(6) NULL DEFAULT NULL,
  `last_updated_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `removal_date` datetime(6) NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `model_editor_json` longtext CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `model_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model_type` int(11) NULL DEFAULT NULL,
  `tenant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_proc_mod_history_proc`(`model_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_DE_MODEL_HISTORY
-- ----------------------------
INSERT INTO `ACT_DE_MODEL_HISTORY` VALUES ('622e6cc1-ec6d-11e8-bf0c-c85b7643dd9e', '请假流程', 'leave', '请假流程演示', NULL, '2018-11-20 10:34:48.744000', 'admin', '2018-11-20 10:34:48.744000', 'admin', '2018-11-20 10:38:37.760000', 1, '{\"bounds\":{\"lowerRight\":{\"x\":1485.0,\"y\":700.0},\"upperLeft\":{\"x\":0.0,\"y\":0.0}},\"resourceId\":\"canvas\",\"stencil\":{\"id\":\"BPMNDiagram\"},\"stencilset\":{\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\",\"url\":\"../editor/stencilsets/bpmn2.0/bpmn2.0.json\"},\"properties\":{\"process_id\":\"leave\",\"name\":\"请假流程\",\"documentation\":\"请假流程演示\",\"process_namespace\":\"com.jsite.modules.oa.leave\",\"iseagerexecutionfetch\":false,\"messages\":[],\"executionlisteners\":{\"executionListeners\":[]},\"eventlisteners\":{\"eventListeners\":[]},\"signaldefinitions\":[],\"messagedefinitions\":[]},\"childShapes\":[{\"bounds\":{\"lowerRight\":{\"x\":45.0,\"y\":125.0},\"upperLeft\":{\"x\":10.0,\"y\":90.0}},\"resourceId\":\"startevent1\",\"childShapes\":[],\"stencil\":{\"id\":\"StartNoneEvent\"},\"properties\":{\"overrideid\":\"startevent1\",\"name\":\"Start\",\"initiator\":\"applyUserId\",\"interrupting\":true,\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow2\"}]},{\"bounds\":{\"lowerRight\":{\"x\":195.0,\"y\":135.0},\"upperLeft\":{\"x\":90.0,\"y\":80.0}},\"resourceId\":\"deptLeaderAudit\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"deptLeaderAudit\",\"name\":\"部门领导审批\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"candidateGroups\":[{\"value\":\"dept\"}]}},\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow3\"}]},{\"bounds\":{\"lowerRight\":{\"x\":290.0,\"y\":127.0},\"upperLeft\":{\"x\":250.0,\"y\":87.0}},\"resourceId\":\"exclusivegateway5\",\"childShapes\":[],\"stencil\":{\"id\":\"ExclusiveGateway\"},\"properties\":{\"overrideid\":\"exclusivegateway5\",\"name\":\"Exclusive Gateway\",\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow4\"},{\"resourceId\":\"flow5\"}]},{\"bounds\":{\"lowerRight\":{\"x\":323.0,\"y\":245.0},\"upperLeft\":{\"x\":218.0,\"y\":190.0}},\"resourceId\":\"modifyApply\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"modifyApply\",\"name\":\"调整申请\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${applyUserId}\"}},\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"tasklisteners\":{\"taskListeners\":[{\"event\":\"complete\",\"delegateExpression\":\"${leaveModifyProcessor}\"}]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow11\"}]},{\"bounds\":{\"lowerRight\":{\"x\":463.0,\"y\":135.0},\"upperLeft\":{\"x\":358.0,\"y\":80.0}},\"resourceId\":\"hrAudit\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"hrAudit\",\"name\":\"人事审批\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"candidateGroups\":[{\"value\":\"hr\"}]}},\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"tasklisteners\":{\"taskListeners\":[]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow6\"}]},{\"bounds\":{\"lowerRight\":{\"x\":535.0,\"y\":127.0},\"upperLeft\":{\"x\":495.0,\"y\":87.0}},\"resourceId\":\"exclusivegateway6\",\"childShapes\":[],\"stencil\":{\"id\":\"ExclusiveGateway\"},\"properties\":{\"overrideid\":\"exclusivegateway6\",\"name\":\"Exclusive Gateway\",\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow7\"},{\"resourceId\":\"flow9\"}]},{\"bounds\":{\"lowerRight\":{\"x\":695.0,\"y\":135.0},\"upperLeft\":{\"x\":590.0,\"y\":80.0}},\"resourceId\":\"reportBack\",\"childShapes\":[],\"stencil\":{\"id\":\"UserTask\"},\"properties\":{\"overrideid\":\"reportBack\",\"name\":\"销假\",\"usertaskassignment\":{\"assignment\":{\"type\":\"static\",\"assignee\":\"${applyUserId}\"}},\"asynchronousdefinition\":false,\"exclusivedefinition\":true,\"tasklisteners\":{\"taskListeners\":[{\"event\":\"complete\",\"delegateExpression\":\"${leaveReportProcessor}\"}]},\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow8\"}]},{\"bounds\":{\"lowerRight\":{\"x\":660.0,\"y\":318.0},\"upperLeft\":{\"x\":625.0,\"y\":283.0}},\"resourceId\":\"endevent1\",\"childShapes\":[],\"stencil\":{\"id\":\"EndNoneEvent\"},\"properties\":{\"overrideid\":\"endevent1\",\"name\":\"End\",\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[]},{\"bounds\":{\"lowerRight\":{\"x\":290.0,\"y\":320.0},\"upperLeft\":{\"x\":250.0,\"y\":280.0}},\"resourceId\":\"exclusivegateway7\",\"childShapes\":[],\"stencil\":{\"id\":\"ExclusiveGateway\"},\"properties\":{\"overrideid\":\"exclusivegateway7\",\"name\":\"Exclusive Gateway\",\"executionlisteners\":{\"executionListeners\":[]}},\"outgoing\":[{\"resourceId\":\"flow10\"},{\"resourceId\":\"flow12\"}]},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow2\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":17.5,\"y\":17.5},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"deptLeaderAudit\"}],\"target\":{\"resourceId\":\"deptLeaderAudit\"},\"properties\":{\"overrideid\":\"flow2\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow3\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":20.0,\"y\":20.0}],\"outgoing\":[{\"resourceId\":\"exclusivegateway5\"}],\"target\":{\"resourceId\":\"exclusivegateway5\"},\"properties\":{\"overrideid\":\"flow3\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow4\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"modifyApply\"}],\"target\":{\"resourceId\":\"modifyApply\"},\"properties\":{\"overrideid\":\"flow4\",\"name\":\"不同意\",\"conditionsequenceflow\":\"${!deptLeaderPass}\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow5\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"hrAudit\"}],\"target\":{\"resourceId\":\"hrAudit\"},\"properties\":{\"overrideid\":\"flow5\",\"name\":\"同意\",\"conditionsequenceflow\":\"${deptLeaderPass}\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow6\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":20.0,\"y\":20.0}],\"outgoing\":[{\"resourceId\":\"exclusivegateway6\"}],\"target\":{\"resourceId\":\"exclusivegateway6\"},\"properties\":{\"overrideid\":\"flow6\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow7\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"reportBack\"}],\"target\":{\"resourceId\":\"reportBack\"},\"properties\":{\"overrideid\":\"flow7\",\"name\":\"同意\",\"conditionsequenceflow\":\"${hrPass}\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow8\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":17.5,\"y\":17.5}],\"outgoing\":[{\"resourceId\":\"endevent1\"}],\"target\":{\"resourceId\":\"endevent1\"},\"properties\":{\"overrideid\":\"flow8\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow9\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":514.0,\"y\":217.0},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"modifyApply\"}],\"target\":{\"resourceId\":\"modifyApply\"},\"properties\":{\"overrideid\":\"flow9\",\"name\":\"不同意\",\"conditionsequenceflow\":\"${!hrPass}\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow10\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":142.0,\"y\":299.0},{\"x\":52.5,\"y\":27.5}],\"outgoing\":[{\"resourceId\":\"deptLeaderAudit\"}],\"target\":{\"resourceId\":\"deptLeaderAudit\"},\"properties\":{\"overrideid\":\"flow10\",\"name\":\"重新申请\",\"conditionsequenceflow\":\"${reApply}\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow11\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":52.5,\"y\":27.5},{\"x\":20.0,\"y\":20.0}],\"outgoing\":[{\"resourceId\":\"exclusivegateway7\"}],\"target\":{\"resourceId\":\"exclusivegateway7\"},\"properties\":{\"overrideid\":\"flow11\"}},{\"bounds\":{\"lowerRight\":{\"x\":172.0,\"y\":212.0},\"upperLeft\":{\"x\":128.0,\"y\":212.0}},\"resourceId\":\"flow12\",\"childShapes\":[],\"stencil\":{\"id\":\"SequenceFlow\"},\"dockers\":[{\"x\":20.0,\"y\":20.0},{\"x\":17.5,\"y\":17.5}],\"outgoing\":[{\"resourceId\":\"endevent1\"}],\"target\":{\"resourceId\":\"endevent1\"},\"properties\":{\"overrideid\":\"flow12\",\"name\":\"结束流程\",\"conditionsequenceflow\":\"${!reApply}\"}}]}', 'd9d0c1c0-ec6c-11e8-bf0c-c85b7643dd9e', 0, NULL);

-- ----------------------------
-- Table structure for ACT_DE_MODEL_RELATION
-- ----------------------------
DROP TABLE IF EXISTS `ACT_DE_MODEL_RELATION`;
CREATE TABLE `ACT_DE_MODEL_RELATION`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `parent_model_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `model_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `relation_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_relation_parent`(`parent_model_id`) USING BTREE,
  INDEX `fk_relation_child`(`model_id`) USING BTREE,
  CONSTRAINT `fk_relation_child` FOREIGN KEY (`model_id`) REFERENCES `ACT_DE_MODEL` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_relation_parent` FOREIGN KEY (`parent_model_id`) REFERENCES `ACT_DE_MODEL` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_EVT_LOG
-- ----------------------------
DROP TABLE IF EXISTS `ACT_EVT_LOG`;
CREATE TABLE `ACT_EVT_LOG`  (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DATA_` longblob NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`LOG_NR_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_GE_BYTEARRAY
-- ----------------------------
DROP TABLE IF EXISTS `ACT_GE_BYTEARRAY`;
CREATE TABLE `ACT_GE_BYTEARRAY`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  `GENERATED_` tinyint(4) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_BYTEARR_DEPL`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_GE_BYTEARRAY
-- ----------------------------
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('4840e704-f799-11e8-85d0-c85b7643dd9e', 1, '请假流程.bpmn20.xml', '4840e703-f799-11e8-85d0-c85b7643dd9e', 0x3C3F786D6C2076657273696F6E3D27312E302720656E636F64696E673D275554462D38273F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22636F6D2E7468696E6B67656D2E6A6565736974652E6D6F64756C65732E6F612E6C65617665223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E58187E6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8AFB7E58187E6B581E7A88BE6BC94E7A4BA3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172746576656E743122206E616D653D22E58F91E8B5B7E6B581E7A88B2220666C6F7761626C653A696E69746961746F723D226170706C795573657249642220666C6F7761626C653A666F726D4B65793D222F6F612F6C656176652F666F726D222F3E0A202020203C757365725461736B2069643D22646570744C6561646572417564697422206E616D653D22E983A8E997A8E9A286E5AFBCE5AEA1E689B92220666C6F7761626C653A63616E64696461746547726F7570733D2264657074222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793522206E616D653D224578636C75736976652047617465776179222F3E0A202020203C757365725461736B2069643D226D6F646966794170706C7922206E616D653D22E8B083E695B4E794B3E8AFB72220666C6F7761626C653A61737369676E65653D22247B6170706C795573657249647D223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22636F6D706C657465222064656C656761746545787072657373696F6E3D22247B6C656176654D6F6469667950726F636573736F727D222F3E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C757365725461736B2069643D226872417564697422206E616D653D22E4BABAE4BA8BE5AEA1E689B92220666C6F7761626C653A63616E64696461746547726F7570733D226872222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793622206E616D653D224578636C75736976652047617465776179222F3E0A202020203C656E644576656E742069643D22656E646576656E743122206E616D653D22456E64222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793722206E616D653D224578636C75736976652047617465776179222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77362220736F757263655265663D226872417564697422207461726765745265663D226578636C75736976656761746577617936222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77332220736F757263655265663D22646570744C6561646572417564697422207461726765745265663D226578636C75736976656761746577617935222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77322220736F757263655265663D2273746172746576656E743122207461726765745265663D22646570744C65616465724175646974222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F773422206E616D653D22E4B88DE5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793522207461726765745265663D226D6F646966794170706C79223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F7731312220736F757263655265663D226D6F646966794170706C7922207461726765745265663D226578636C75736976656761746577617937222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77313222206E616D653D22E7BB93E69D9FE6B581E7A88B2220736F757263655265663D226578636C7573697665676174657761793722207461726765745265663D22656E646576656E7431223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F77313022206E616D653D22E9878DE696B0E794B3E8AFB72220736F757263655265663D226578636C7573697665676174657761793722207461726765745265663D22646570744C65616465724175646974223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773922206E616D653D22E4B88DE5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793622207461726765745265663D226D6F646966794170706C79223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773722206E616D653D22E5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793622207461726765745265663D22656E646576656E7431223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773522206E616D653D22E5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793522207461726765745265663D2268724175646974223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172746576656E7431222069643D2242504D4E53686170655F73746172746576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223136352E302220793D2239322E35222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22646570744C65616465724175646974222069643D2242504D4E53686170655F646570744C65616465724175646974223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E302220783D223235312E313131313130373834303632332220793D2238302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617935222069643D2242504D4E53686170655F6578636C75736976656761746577617935223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223431372E373737373736393630313535382220793D2238372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226D6F646966794170706C79222069643D2242504D4E53686170655F6D6F646966794170706C79223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E30303030303030303030303030362220783D223338352E323737373736393630313535382220793D223139302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2268724175646974222069643D2242504D4E53686170655F68724175646974223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E302220783D223534372E343037343036323038323238342220793D2238302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617936222069643D2242504D4E53686170655F6578636C75736976656761746577617936223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223731342E303734303732333834333231392220793D2238372E35222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E646576656E7431222069643D2242504D4E53686170655F656E646576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223930302E3732323232303039363430352220793D223238332E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617937222069643D2242504D4E53686170655F6578636C75736976656761746577617937223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223431372E373737373736393630313535382220793D223237372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7732222069643D2242504D4E456467655F666C6F7732223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223139342E393439393938383034303735332220793D223130372E35222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223235312E313131313130373834303632332220793D223130372E35222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7733222069643D2242504D4E456467655F666C6F7733223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223335362E303631313130373834303536372220793D223130372E3330343334373832353337313535222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431372E38353230333433383631363731332220793D223130372E3037343037313738323434383034222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7734222069643D2242504D4E456467655F666C6F7734223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E373737373736393630313535382220793D223132362E39343039383130313236353832222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E37373737373639363031353538352220793D223139302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7735222069643D2242504D4E456467655F666C6F7735223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435372E36363033343931363536353337372220793D223130372E3036313333353638363737353634222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223534372E3430373430363230383232352220793D223130372E3333383039323531383137393738222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7736222069643D2242504D4E456467655F666C6F7736223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223635322E333537343036323038323238332220793D223130372E35222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223731342E303734303732333834333231392220793D223130372E35222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773130222069643D2242504D4E456467655F666C6F773130223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431372E373737373736393630313535382220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330332E302220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330332E35323234323731363130343533362220793D223133342E3935222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7737222069643D2242504D4E456467655F666C6F7737223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735332E383539313239303335383532392220793D223130372E3333343634333235393638303332222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223931342E302220793D223130362E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223931342E363638393136333439363730372220793D223238332E30303030303330333739303231222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773131222069643D2242504D4E456467655F666C6F773131223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E37373737373639363031353538352220793D223234342E3935303030303030303030303032222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E373737373736393630313535382220793D223237372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773132222069643D2242504D4E456467655F666C6F773132223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435372E37323536383539363030313032352220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223930302E3732323232303039363430352220793D223239372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7739222069643D2242504D4E456467655F666C6F7739223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223733342E303630353532333237343835342220793D223132372E3433363531333734333330353634222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223733342E302220793D223231372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223439302E323237373736393630313439322220793D223231372E34313133383430393632363836222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('487600c5-f799-11e8-85d0-c85b7643dd9e', 1, '请假流程.leave.png', '4840e703-f799-11e8-85d0-c85b7643dd9e', 0x89504E470D0A1A0A0000000D49484452000003AA000001470806000000A839B16B00002F544944415478DAEDDD0B9C5D757528FE696BAF7FAFD78BB4584B8502D5226D295A0A17A945528412E4A97866CF3E934C020AB43C445EBED350298220A58AAD9122524A7948698A2917CD8347620C25401179496A520C312421468C185E72FEEB77EE9CE93E27339999CCCC993373BEDFCF677DF6701E33616567EDB5E6B7F73E1D1D000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000404BAB542AAF5AB972E5CDF7DC73CFCF172D5A5459B06081688158B8706165F1E2C5CF444CB397A23EA94FEA1300D0565213B864C992CAFAF5EB2B2FBCF08268A1D8B06143E5EEBBEF7E369AC2F7DB53519FD404F50900681B69A54213D8D2CDE00B0B162C78CC9E8AFA24D42700A06DA4D3E9345CAD1DD108BE644F457D12EA1300D036D2F5469AAD966F042BF654D427A13E01001AC186F8E98FD756562EFF6AE591859FAE46FA3A3DA651D30882FAA43E010034BD11DCBC694DE5E16FCEAA7CE7B6F3EA223D969ED3AC69042780D74B81FA24D427350A00265123B8FA91AF6FD504D6E2A947E669D63482AD6E6A44A5778BFA24D427350A00264323F8D89D9F1DB0114CCF69D634822DECD0884D1197F76E8F9212F549A84F6A14004C8246F0E105E70FD808A6E7346B1AC1166F006B8D5F5AADD8A011549F84FAA4460180465068045BA1011CEC71D427A13EA9510030911AC17417CD811AC1F49C664D23D862A60ED2E8D59E773D98FA24D427350A80E6E8EEEEDEE5B4D34EFBC499679EB9ECC4134F5C376DDAB417BABABA2AE572F9C5993367AE9F3163C6EDF1DFE7A6D7C9D6D01AC1154BBF386023989ED3AC69045BB0011CACC1B36AA13E09F5498D0260EC9D71C619DD679F7DF67FC6F6853973E6FCFC9E7BEEA9AC59B3A6B265CB964A92B6EBD7AFAFDC7FFFFD952BAFBC72E349279DB43186D86FE5793E4D23B8ED4664E39A872A0FCF9FBDF56975F1587A4EB3A6116C1187760C6F1562B8AF477D12EA931A05C0D09C7CF2C96F3EEBACB31E3FE79C735E4A43E8CB2FBF5C19AA071E78E0A7A79E7AEAEA185697964AA5B76804078E55F75DBB5523981ED3A869045BAC013C6A3BDEB75923A83E09F5498D0260D4CC9A35EBEC934E3AE9C579F3E60D6B406D3477EEDCD5DDDDDD1BDA717575488DE0F3CF57567CFB4B5B9F56178FA5E7346B1AC109DA008ED6FB519FD427D42800FE9F3973E67CEAF4D34FFFF9134F3C51190DAB56AD7A6EC68C194FC7B0FA418DE07FC7E64D6B2A4F2CBD62C06BC0D273E9351A368DE03819ECA624CDFE3EA84FEA136A1440BBBAF4D24B67C790FA4ABAE67434AD5BB7EEF99E9E9EB5EDB4B23A6023F8FCF395B52BEEA87CF71B9F18B009AC457A4D7AADD50B8DE0383580A3754A9C550BF549A84F6A1400DB3DA4EE73CA29A78CDA4A6AA3952B573E532E97D7C5B0BA57BB368283AD5258BDD008B680C69B8CFC42C48CDEED7034BECFCD4BD427A13EA951000CDFC73EF6B11FA66B52C7D28D37DEF81F5D5D5D4BDAB5111CCA2AC5B6562F346F1AC126358047151AB9AF44547AB7436D04077A9F46507D12EA931A05C0D05D76D965E786575E7CF1C5CA589B3973E613ED700A707F8DE0F63681B5D0BC69049BD80026337A1BB9CA301AC16203588B9EC2F3AE07539F84FAA446013034B366CDDA943E82A619EEBDF7DEEFB5C3AAEA503FFE4168045BC0408D597F0DDDB61AC1FE5E7F553FAF773D98FA24D427350A806D9B3F7FFEBBCF38E38C117D0CCD70F5F4F4FC2086D5DD35824223387AF23C5F10F1C7DBD9004E1D4663D75F2338D406B0B111748ADD38EC03EA93FA34018754350AA0DDCC993367EE55575D5569A68B2EBA68710CAAE76A04854670F4C4BFA94A8AB48F6659F68E21BC65A88DD8608DE0701BC0E2CFDFD061D5A2E9FB80FAA43E4D905FA4A95100EDEC820B2E587BCF3DF73475505DBC78F143D14CCDD3080A8DE0E8EF9B85B87D1B8DE1704F6D1BA811FCC5ED6C006B5C0F360EFB80FAA43E4DA05FA4A95100EDEA8C33CE7871EDDAB54D1D54E3E7AD8E03D66A8DA0D0088EE9BED9D71836ECA3DB7BFD557F8DE0F746D0008EF4CFC376EE03EA93FA34C97E91A646014C463366CC7865CB962D4D1D54E3E7FD340E525B3482422338F6FB66B131DC7DF7DD3F3CC286ABBF4670240D606323E87AB031DE07D26A96FAA43EB5F02FD2A64E801AF50BA552E9974E3EF9E45F8EEDFF983973E6FF17DBD74C9F3EFDB5C71C73CCEBBABBBBFF773CF6FA72B9BC634F4FCFAFC6736F88E77E2DB6BF3E6DDAB49D63FBA6F87FDF35B6BF99EED711DB3DE2DFE59BE3F5BF1DDB3DD3E7CDC7F67762FB7BF1BD7E3FB6FBC4736F8FD7FE416CFF309EDB3FB6FF27FD5B8EE70EECECEC7C673C77506CDF15DB29B1FD93D8BE3B9E3B2C5EF3A7B19D1ADB23E2B123E3EBA3637B4C6C8F8BED7B637B7C3C578A6D676CBB629BC7B63B9E9B1EDB9ED8CE8CED09B1FD40C449112747FC593CF6E7B13D2D5E7E466C3F14DB0FC7F6ACD89E13CF9D17DB8FC4F663B1FD786C3F19CFCD8AED5FC4F6FC78EC2F637B41C485119F89B8389EFB6C6C2F8DE72E8BED5FC7F66F62FBF9882BE2B9BF8DEDDFC5764E6CBF1CDBBF8FED57E23557C7F69AD8FE436CFF31E29F22AE8FB831E2A6889B236E89F897887F8DB8359DCD17EFBF2DB6FF37B6DF88ED37D33E18DB45B1BD23B677C5F6EE74D3CF88A511DF8EB827E2DF239647DC1FF140C48311DF89F86EBCFE91D83E1ADBC7639B6E18BA22E2FB112B23FE2BE2C9B43813B126E287114F47AC8BD810B131E247113F8E78366273C473113F8B783EE2858897227E1EF14AFA37E34847DB3536E361A2FE63D3084E9E18C2DFE5A48AF7BDEF7DD566EDAD6F7DEB48FFEDFD623FAB14DFEB7D7C242E4FDFABDDFE5EC623D427836A2B1E3B0F0DBDF5E4F256AD51BD7FD63430BC1CF162EF20B1A577B0F8690C2B3F490347F4019B7A07906722D6F70E266B7B0795A7227ED03BC0ACEA1D68FE33E289DE41E7B134F8443C1CDF275D2AF59DD8FE47EF80745FC4BDBD83D3B2DE41EA5B118B7B07AC3B7B07AE8511F3D32096729B06B3887F8BEFF3F534B0C5766E1AE062FBCFF1FAAFA5C12EB637A4412FB6D7C5F6DADE01F0ABBD03E1551157A64131E24B69708CF862BCFF0B69A08C6DCACD5FC7F673F1FA4BD2E019DB8BD2201ADBBF8AEDA77B07D4D9BD03EBA7223E9106D9D87E340DB6E9DE25F1DCD969E08DED9969008EEDE9F1DCA969308EED2969508EED07637B621AA0E3EB1969A04E1F7B188F95D3A01DDB2C0DDEB17D7F3CF7BE3490C7F6D834A0C7F6A818F2DF9306F7D81E9E06F918EC0F8DD71F9206FCD81E9C06FEF4CB9378FD1FA55F04C4F680F48B81D8EE17AFDF37FDC220B66F4BBF4088EDDEA552E977D32F1662FBD6F48B86D8BE255EFF5BE91710B1DD2DFD42A2BBBB7B9778DF6FA45F54C4FBDE987E7111DB9DE2B95F49BFD088ED0EE9171CB1FD5F471F7DF4FF4CBFF838E288235E9D7E113265CA94579D7FFEF969DFFD85B4EF8DE0972D604575182BAA1AC161443AD05E72C925754D4C14B7CAADB7DE5A79DDEB5E5779F8E187FB9EFBE10F7F587D7D7A6CC58A1595238F3CB21AE9B5BBEEBA6BE5CA2BAFACFBDE8F3FFE78F5F5E97DCB962DAB4491AE464F4F4FF53DE9B9E27BEEBDF7DECA7BDFFBDEBED70CF4BA81FE3F3EF7B9CF0DFA9A73CF3DB7FAF54D37DD94F697BEC7AFBBEE3A8DE0F01BC1E5E9E09C0E761D83DF417324AB155FE9B0A23A11F6819639E323ED37A98E0DF5F5A9CEECB9E79EC3FAFEAD526FFC226D6871F0C10757D42818B0C6FFBC776885F6E01AD5D66E04EFBEFBEE6A7376C10517540FB4A9918A9F518D345836365469E8BCF3CE3B2B071C7040E5F8E38FAF3CF7DC737D8D578AD7BEF6B595C30F3FBCEE67FCF22FFF7265871D76A83CFDF4D37DAFBDEDB6DBAADF37BDBFF1CFF48637BCA172C82187F4DBF0353676B53F7F6D98DD79E79D2B071D7450F5EB14B7DC724B658F3DF6D8EAFBA43B51D7BEBEF6DA6BFBBE4EFFFF06D521EF9B75FB6443C3B5B9636CAEFFDA9E46D0F55F4DDE075A6950EDAF96A448B528D5B114C5FA91A2563FAEBEFAEAEAF778EAA9A75ABEDEA84F433B76AA51B0CD7F472FF5734C87C9CB5D7F5BBB11DCBC797365E9D2A57DFF7DFBEDB7F7355169B5343D577BACB89A3A7FFEFC7EBF5FE3A09ABE7F7AFDA38F3E5ADDA6462E356D69703DF5D453FB564A8B036B6AE476DC71C7CAD9679FBDD58A6AFA3EB5A6B1BF662FFD771ABA8B43F2C73FFEF1EAD7AB56ADEAFB3EEF7AD7BBAA3F277D9D86EFDA7B1F7AE8A1EAF6F39FFFBC4670E07D7359BAFE689083D970570706FA7887FEEEA8399C46D01D35C7611F68A54135FDE26BA0E753DD49752ED5ACC641F5E69B6FAEECB5D75E5B7DBF56AD37EAD3907F91A646C1C0FF8E5E4CD746CB046DC3E7A8B67E23980EAC69184C8D55FAFAC9279FEC1B54D376F5EAD57DAF4DABA2E9B1817E7EE3A09A5EFBA10F7DA8FABDD2F73DE59453AA8F3DFBECB3D526AEF69AB973E7F6BD67B7DD76AB36768DDF3B0DCD9B366DAA5BE14883F0A2458BFA5634D273279E7862F5EB74FA70FAFFEAEFFFB7B8C2F1C637BEB13A78A7AFD36A485A35D108F6BB6F0ED6F80DD4080ED6800DF61984837D86E140F6EBF01985E3B20FB4C2A09A564CD3BEF2EA57BF7A9BAF4B0369BABCA17150DD69A79DAA35A4F1177BAD5A6FD4A761FD224D8D82FEFF1DBD90AE5B9509DA461C90DF7DC61967545E7EF9E5A60DAAD12CA49B08ECAE11DC76A4D5D1D460EDBDF7DE952BAEB8A23A64A615CF3428A69584F47C6ACAD280597BCFC68D1B87BCA29A560ED2F5A6B5062D9D46D7B892F0E0830F6E35A8A69F991E3BF0C0032B871D765865CE9C39957DF7DDB7BA7DCD6B5E53FDBAB1114CCD66EDEBDA009C5682D3CA6D7F8D631A84EFBBEFBEEAD7E9BAD9DAE3290F1AC15135D86AC1600D60C7763682B553FB8EF357D07CAD30A8A67FD7693F496767142F4F688C745D7D8AC641759F7DF6D96A506DE57A63501DF62FD2D428D8FADFD19674976999A0ADCC9A356BD3FDF7DFDF94213506A37447BB251AC1A1451A3CD3505A3BF52D9DBAD6787A6FFABA76FAEF7006D5146925357DDFB7BFFDEDD5A1B33698D6566D6B036B1A54D3697869384D515BB1289EF69B4E8F4B8D5D47C32A6FFAEF77BEF39D5BAD70A486F3D8638FED7B5DFA59E9A6261D859B3235369DAE511D1303AD5A0CB5011C6E2358FB791AC0361E543B7AAF4F4DD7D4A7AFB775FA6FEDEB349CA6A8DD5829BDAF71C86DD57AA33EA951300A83EACFD21D816582B672D96597C5F1FADC579AB1AA7AC209273C966E23AE111C5AA453701B87D2DAF058BB7151F1EBE10EAAC59B2DA5F7D55615D21D833B1AAE5D2D368DC586AEF6DF035DC735D4C6319DB6FCFDEF7FBF6E15A4B171ACFDBF17AF83D5088E8AB46AD1788ADB8C8EE17F06617F8D604FC3CF71BD579B0FAAB5D37E8B67715C7CF1C575AF49973A1C71C411D5E8EF664AB366CDAA7CF8C31FEEAB57AD5E6FD427350A466150FD69FABC5E99A0ED7CE4231F797ADEBC79633AA4DE78E38DE973C096B4C31DCB46F3664A8D8D57ED5AD534547EF4A31FED1B28B76750DDB0614325FDBDA715D9F47D6BA7DAA5558B5AC3D6DFF7AAADBCD66EF4B4AD41B578B3A76253984E3DAEFDB9B775CD586A166B0374FA33A63FD7B64E15D4088EA8112CDEBCA4D8D00DA501EC18E47D3EDEC1A05A77DD7D633DA9DD71B736CCA6487720EF6F50EDEF1AD556AE37EA931A05A330A86E4E9FB52A13B49D4B2FBD749F534E39E5E74F3CF1C4980CA92B57AE7CA65C2EAFCBF37C2F8DE0D0A37673A2745D68F16EBF1DBDABA869306DBCAEB5F8FA5AA453797B1B9FEADD7C8BCFA5EB54D3E3D75F7F7DF5BF6BABA8E9F4DD74DD69AD616BFCB3A5EB51D3F55CB51B8FD4565D076B506B8D637F43796D30BFE69A6BFA5EDFD17B7A5FDACE9E3DBBBAADDDB9532338EA1A4FB14B0D5C4FC7F03FCEA1F17D23FDFC5626C9A09AFEFDF63760A67A969E4B1FBD553CDDB736B0D63EE7B4F60BB4B48ADADFE0D9AAF5467D52A3601406D567BBBBBBFFB74CD0AEC3EAECD34F3FFD95F5EBD78FEA90BA6EDDBAE77B7A7AD6B6C329BFCD6A0453F394561A1A1F4FAB06E9B9744A5BE373B55582DAE9768D9FA59A565AD31D2E1B87DCB4E2BAFFFEFB0F780A5FBABE2B7DDF071E786044836A8A34EC7634DCD0A4F6B54670DC1AC191EAEF943DDA6C504DBFF84A77D42DDE98ADBFD5D08E7EEE5A9E2E81A87D7CCC25975C32AC3AD92AF5467D52A3601406D51F974AA51D6482761E562F896175D4565657AD5AF5DC8C1933D66559F6318DA068A5D00836A5111CED8612F5497D428DA25D07D51F95CBE51D6582B6366BD6ACB33FF0810FBC9456D2467283A5B973E7AEEEEEEEDE10FFB0666A04854670C219E9A9704EA5539F84FAA446C1E80DAA1B4BA5D2AFC8046DEFE4934F7EF359679DB5E29C73CE7939DDE86238E2F59B4F3FFDF41F94CBE56FB7CB35A91A418DE0246F0487BBDAE0A624EA93509FD42818DD41F5999E9E9E5F9509E875DA69A7CD38FBECB3BF7FEAA9A7BE98EE8CB87CF9F2CADAB56BABD72626699BAE694DC3ECD5575FBDE9A4934EDA387DFAF47F4FABA8ED70775F8DA046B00D0CF7D438A7D2A94F427D52A360F407D5F5A552E90D32010DBABBBB77896175D699679EB9EC84134E4877F07D29FEC15462FB624F4FCF333366CC981FFF7D6EC4EEB2A511D408B66D23B85FC4E688E3A44C7D12EA931A05A33AA8AE9B3E7DFAAFC904A011D408526F6A6F8337751BCF6FD000AA4F427D52A3604C06D5B5A552E9D76502D0086A04D9DA40AB164EA5539F84FAA446C1D80EAA3F9C366DDACE3201680435820CAD11D400AA4F427D52A360EC07D5A74AA5D29B6402D0086A0419BC11BC5C03A83E09F5498D82A60CAAE9631F7791094023A81164DBD2F55E95745335A9509F84FAD48A35AAB73EF9081A26CBA0FA64A954FA4D990034821A4106F77A83AAFA24D4A7166EECE591C9B43FFF57B95CDE4D26008DA046108DA0FA24D427F5095A657F5E592A95F690094023A8114423A83E09F5497D8256D99FBF5F2E977F4B26008DA046108DA0FA24D427F5095A657FFECF2CCBDE2C13C0882C5AB448B3D5DAB1251AC197ECA91A41F549A84FEA134C90FDF98972B9FCDB32018CC8E2C58BD7AE5FBF5EC3D5A2B166CD9A1BA3117CCC9EAA11549F84FAA43EC104D99FBF9765D99E32018CC81D77DC71EC5D77DDF5E375EBD6FD4CE3D55A2B15A9095CB870E19311EFB7A76A04D52775417D529F6082ECCF8FE579BE974C0023168DC6510B162C589E4EE14AD71B4DE4B8E1861BAA9F9739D1FF3F7AFF2E1ED3046A04D5A7C9539F2651A84FEA136C6B7F7E34CBB2DF910980FAE2382F1DF0A74C99F22AD9402308A84FD0F4FDF9E13CCF7F4F26007A6559F68E288E2FA5037E14C8A932824610509FA0E9FBF377A327DB5B2600FE7B509D9B0EF6BDB15C46D00802EA13347D7FFE4E9EE7FBC804C0FF2B8AFBD556536B1183EB5132834610509FA0A9FBF383D183BD4D26003AFEFBDAD48658EE5A55348280FA04CD1343EA7F94CBE5B7CB04E000DFCF6A6A2DF23C3F4E86D00802EA13346D7FBE3F86D57D65025010BBBA6EEF6F48ED8D6532844610509FA069FBF37DE572F90F650268F76238E06AAA6B55D10802EA13347D7FBE377AAFFD650268F762386F5B43AA3B00A31104D42768EAFEFCEFE572F9FFC80440C1CC99335F9F65D92699402308A84F302EFBF3B2F4D9F6320150502E97778C02F92399402308A84F302EFBF3B7F33C3F5026000A7A7A7A7E350AE43332814610509F605CF6E76F757676BE5326000AF23CDF290AE40699402308A84F302EFBF392E8C7FE5826000AA64F9FFE6B5120D7C9041A41407D8271D99F17471C24130005799EBF318AE3D332814610509F605CF6E7BBA21F3B5826000AA64D9BB67314C81FCA041A41407D8271D99FEF8C9822130005A552E94D511C9F9209348280FA04E3B23F2FCAF3FC10990028E8EEEEDE250AE46A99402308A84F302EFBF3C28877CB044041A954FACD288E4FCA041A41407D8271D99FE7E7797E984C001494CBE5DDA240FE974CA01104D4271897FDF99B5996FDA94C0014944AA53DA240AE9409348280FA04E3B23FDF9EE7F954990028C8B2ECCD5120FF5326D00802EA138CCBFEFC7FA31F3B4226000A4AA5D25BA240AE9009348280FA04CD1743EA6DE572F93D3201505F1CF78C03FEF764028D20A03EC1B8ECCFF3A21F3B4A26000A4AA5D25BF33C7F5C26D00802EA13345F0CA95F8F5EEC689900A82F8EBF1307FC4765028D20A03EC1B8ECCFFF1AFDD8B1320150502A957E37CFF34764028D20A03E41F3C5903A377AB1E36402A0BE38EE1D07FCEFCA041A41407D8271D99F6F897EEC7D32015090E7F93E5120BF2313680401F5099A2F86D47F8E7EEC789900A82F8E6F8B03FE8332814610509FA0F96248FD5AF463259900A83FD8FF41C40332814610509F605CF6E79B6258ED940980822CCBF68D0279BF4CA01104D4271897FDF9C6884C2600EA8BE37E11CB65028D20A03EC1B8ECCFD7E74126000AB22CDB3F0AE4BD32814610509F605CF6E77F8A28CB04407D713C20E21E99402308A84F302EFBF33FE6793E4D26000AA2301E1805F2DB32814610509F605CF6E76B23A6CB04407D71FCA388A532814610509F605CF6E76BF23C9F211300055118FF380AE41299402308A84F302EFBF3572366CA04407D713C2862B14CA01104D4271897FDF92B1127CA0440419EE7074771BC4B26D00802EA138CCBFE7C55C4076402A0A0B3B3F34F6258BD4326D00802EA13345F96657F1FBDD8076502A0200AE32171C05F2413680401F509C6657FFE72C4C9320150D0D9D979680CAB0B64028D20A03E41F3655936277AB1536402A0200AE36171C09F2F13680401F509C6657FFEBB1856FF5C26000ACAE5F2E1511CBF21136D7F909C971ABF4162B94C010655185DD187FD6D9EE7A7CA04404114C6A971C0BF5D26DABEE9DB2FE2A56D0DAA71203D4AA600832A8CFAFE7C451C634F9709808272B9FC9E288EB7C904E91716DB1854974D9932E555B20418546174451FF6853CCFCF900980FAE278543AED5326E85D55ED77508D03E8713204185461F4C531F66FA21F3B532600EA8BE3D1511CBF2E13F4367FFD5DABBADC6A2A605085B1117DD8E5D18F7D582600EA8BE3B171C0FF5799A0B7F9DBEA5A55D7A6020655183B31A45E16C7DAB36502A0BE381E17C571AE4C5093F607ABA98041159A76DCFD5CF463E7C804407D717C5F1CF06F91090AFBC43B0AD7A64E9511C0A00A63BA3F5F1A71AE4C00D417C7F747DC2C1334EC17D56B55ADA6020655185B59967D36CFF38FC804407D712C4571FC9A4CD0D004EEA711040CAAD094FDF9E2888FCA04407D71CC226E948991A9542AAF5AB972E5CDF7DC73CFCF172D5A5459B06081688158B8706165F1E2C5CF444CB3978241155A747FFE4C9EE71F970980822CCBBAA238DE2013239386D4254B9654D6AF5F5F79E18517440BC5860D1B2A77DF7DF7B331B4BEDF9E0A065568C1FDF9C2884FC804407D712C47FC934C8C4C5A4935A4B6F4B0FAC282050B1EB3A78241155A707FBE20E253320150906559779EE7D7C9C4C8A4D37D0D84AD1D31A8BE644F05832AB4E0FEFCE988593201505F1CA7475C2B132393AE87340CB6FCA0AAB105832AB4E2FE7C7EC46C990028C8F37C4614C76B64A23983EA4F7FBCB6B272F9572B8F2CFC7435D2D7E93183A4411530A8D2B6FBF3EC34ACCA04407D719C19F1559918FB4175F3A6359587BF39ABF29DDBCEAB8BF4587ACE306950050CAAB49F2CCBFE22CFF3BF940980FA83FD89115F9189B11F54573FF2F5AD86D45A3CF5C83CC3A4411530A8D29EFBF3A7D20D956402A0BE387E20E22A9918FB41F5B13B3F3BE0A09A9E334C1A5401832AED27CBB24FE679FE573201507FB03F29E24A9918FB41F5E105E70F38A8A6E70C930655C0A04AFB8921F5E3B14F7F462600EA0FF627477C59260CAA0655C0A00ACD9765D9C76258BD482600EA0FF67F16F1259918FB4135DDE577A041353D679834A8020655DA4F0CA91F8961F5B33201505F1C4F8DE2F8B73231F683EA8AA55F1C70504DCF19260DAA804195F6137DD879D18F5D221300F507FBD322BE2813633FA86E5CF350E5E1F9B3B73EED371E4BCF19260DAA804195F61343EA3931AC7E4E2600EA8BE319511CBF2013633FA8A65875DFB55B0DAAE93183A4411530A8D29EA20F3B3BFAB1CB6402A0FE60FFA188CFCB441306D5E79FAFACF8F697B63EED371E4BCF19260DAA804195B6DC9FCF8AF86B990028C8F3FCC359965D2E13633BA86EDEB4A6F2C4D22B06BC46353D975E63A034A8020655DA4BF46167463FF6373201505F1C9D6E329683EAF3CF57D6AEB8A3F2DD6F7C62C021B516E935E9B556570DAA804195B6DA9F9DDD06D0C805FC6337A80EB68A6A75D5A00A185421FAB0D3639FBE422600EA8BA35BA28FD1A03A9455D46DADAE1A2E0DAA804195B6D89F7D020340231F323D7683EAF60EA9B5305C1A5401832A935FF4617F1EFBF4DFC904407D71FC580CAB17C9C4E80FAAC2A00A18546108FBF39F457C4926000A6248FD7814C7CFC88441B5DD07D5F877B05F966573EDCD60508526EFCF27477C5926000AA231FF640CAB7F251306D5761D54D3801A312FE225CD2F1854611CF6E79322AE940980FAE2382BE2D33261506DB741B57140AD85BD190CAAD04C799E7F30CBB2BF97098082288C7F1105F22F65C2A0DA2E836AECF3EF48A7F8360EA8065530A8C238EDCF27467C452600EA8BE3F911B365C2A03AD9E3861B6EA8F4B7826A5005832A8CA72CCB4EC8F3FC6A99002848ABA9695555260CAA933DB6359C0A21265E38F230897AB119B14F5F2313000551182F88F8944C4CCC4175C3860DA959ABDC7CF3CD95E79E7BAEB2DB6EBB550E39E4904A4F4F4F356EBDF5D6EAF38DEF4B8F5D7CF1C503FEF7403177EEDCCAAEBBEE3AE0F38F3EFA68E5F1C71FEFF7E75D73CD352D71EA6F6767E7A1B1CF2FD3FC02D00AB22CEB8961F51F6402A07E50BD30DDF9572626E6A09AE2DE7BEFADECBCF3CE952D5BB65407C2342CA6ED15575CD13724D65EBBFFFEFBF70DAF575F7D7565A79D76AADC77DF7DD5FF3EF2C823FB9E4BDFA3F69ED7BEF6B595C30F3FBCFADCAC59B32A3BEEB863E5939FFC64DF6B972D5BB6D5509AFE4C8B162DAA94CBE5BA9F77CB2DB754BF7EEAA9A7C6FD664AD1144C8DFD7F89411580F114C7A36971FCF9479900A81F543F933E4B552626EEA0DA38245E7BEDB5D5ED9429532A4B962CA91B5457AC58515D15AD0D8E071E786065DEBC7995EBAEBBAEEFFD37DD74D356DFF3FAEBAFAF7E9D86CEB46A5B7CAEF1F54B972EED5BED4D7F86E2A09AB669806DA58FA7E95D615D625005603C6459D61DBDD8753201503FA85E1CF151999878836A5A954C43E06B5EF39AEA405A1B1CE7CC99D33718A655D5E2A05A5B15AD0DB4BFF44BBF54B9E0820BAA435C1A30D3E369986D1C54F7DD77DF015754EFBCF3CEBED37E6B8FAD5EBDBAFAF5F1C71FDFF758F1EBDA7B5A6150ADE95D615D666F06A099E2F893C7F1E77A990028C8B2ECB3511F3F2213136F504D513BDD379D525B1B2AD38A69E3A059FB7AD5AA55D5D5D3F4D8DE7BEF5D1D1CD3E31B376EAC3ED6D9D9D9EF2A6D6DD5745B2BAAE91AD9DA630F3DF450F5BFDFF4A637550E3BECB0EAFB6A43751A625B69451500C6B917EB8A5EEC06990028E8EAEABA34E25C999898836AE370DAD17B9A6E1A0AD375AB4F3FFD74DDA07AC00107546EBBEDB6BEEB44F7DC73CFEAA9BFE94647B51B33A548EF1BEEA05A7C2CDDDCA9F675FA99C51B3BD5567F0DAA0050EDC5B2881B6502A020CBB2CFE5797E8E4C4CEC41F5E1871FAE3CFBECB37DA7FDD65648D3E3B54135AD64A655CE3430A66B31D3768F3DF6A89C7AEAA9D5AF6B373A6ABC86B46388A7FE165F9F5654D3EA6DFAFAEEBBEFEE778835A80240B5172B452FF6359900288881E5AF23CE9289893DA8A60175AFBDF6EABB79525AE54CDBDAB0D878BA70BA536FDAD686CDB44DD7ABD66EAAD4F8FD6BC36BE38AEA55575DD5EFEB77D86187BED5DC7443252BAA0030602FF6FE889B6502A020CFF3BFC9B2EC4C9998D8836A3A75376DD38A69DA3EF9E49395F9F3E76F758D6AF13D0F3EF8E05683E7603194D7A7EF9D566C6B5FD7AE9FB5A20A005B8B3EEC7D71DCBC4526000AA2307E3EE24332317107D5CD9B37571E7FFCF1EA69BEC5C76B9F8F9A3E3BB5BFCF514DC3EDECD9B3AB9FA55A3B95B736F0A6EB55FBFB59E914E0830E3A689B7F9EE27BD3F74A7FB6743D6CED63738AD7BF1A5401D08B75BD37E25F6402A0BE385E9165D9E932317107D5E1DE257822FC390DAA00B48BE8C38E8D7EEC5F6502A07E50FD62C46932D11E836A3B8741158016EDC58E89B8552600EA8BE3DF6559F6E732615035A80240F3451F7654F463F36402A07E50FD52C49FC98441D5A00A00E3D28B1D19F16F3201505F1CBF1C71B24C18540DAA00D07CE572F93D5996DD261300055118FF3ECFF30FCA8441D5A00A00CD177DD8D4AEAEAEDB6502A0200AE355111F900983AA4115009AAF5C2E1F9E65D9376402A020CFF3ABA3389E20130655832A008C4B2F76585757D77C99002888C2F8D5889932615035A80240F37576761E1AC3EA0299002888C2F80F5996F5C88441D5A00A00E3D28B1DD2D5D5B54826000AA230FE6314C86932615035A80240F3757676FE49F46277C804404114C6EBB22CEB960983AA411500C6A5173BB8ABABEB2E99002888C2787D14C85C260CAA06550068BECECECE77452B76B74C00144461BC21CBB22E9930A81A5401A0F9BABABA0E8A58221300F5C5F1A618563B656264162D5A64186CEDD81283EA4BF654005A4D6767E73BA31FFB964C0014C490FAB52CCB4A3231328B172F5EBB7EFD7A03618BC69A356B6E8C41F5317B2A00AD2686D43F8A582A13000531A4FE730CABC7CBC4C8DC71C71DC7DE75D75D3F5EB76EDDCF0C86ADB5929A86D4850B173E19F17E7B2A002DD88BBD2306D5653201501085F15F22DE2B13231783D0510B162C589E4E314DD7434EF488FDA23209FE3FD2DFC5638654005AB8173B20E21E990028C8B26C6E9EE7C7C904FD1C38DD7C0800C6BE17DB3F8EB9F7CA0440FD30726BC4313281411500C6E578BB5FC472990028C8B2ECEB799E1F2D13185401605C7AB17DE3987BBF4C00D40F23FF1671A44C605005807139DEFE41C4033201509065D96DE572F93D3281411500C6A5177B5B1C731F940980FA61E4F63CCFA7CA0406550068BEE8C3F68963EE776402A07E18F96696657F2A13185401A0F9BABBBB7F3F7AB1876402A07E18999FE7F96132814115009A2FFAB0DF8B63EEC33201503F8C2C8C78B74C60500580E62B954ABF1BC3EA233201503F8C2C8AE278884C60500580E68B3E6CAF38E63E261300F5C3C89D11536402832A00345FA9547A6B0CAB8FCB04404114C6BB3B3B3BDF2513185401A0F9CAE5F26FC731F7099900A81F4616471C2413185401A0F94AA5D25BE298BB422600EA87916F757676BE532630A80240F395CBE5DF8A63EEF76502A07E18591AF14732814115009AAF542AED11C7DC953201503F8C2CCBB2EC1D3281411500C6E578BB7BC42A9900A82F8EF7441C2013185401A0F94AA5D26FC631F7499900A81F46EECDB26C7F99C0A00A00E372BCDD35E2073201505F1CEF2B97CB7F2813185401A0F94AA5D29BE298FB944C00D40F23F76759B6AF4C605005807139DEFE46C41A9900288821F53FCAE5F2DB6502832A00345FA954FAF538E6AE950980FA61E4C11856DF26136DBF1FCC4B83E920B15CA6006074E579FEC638C63E2D13000531A43ED4DDDDFDFB32D1F683EA7E112F6D6B508D7DE528990280D1552A95DE10C7D9F53201503FA03C9CE7F9EFC904B12FDCBE8D4175D99429535E254B0030BAA20FDB298EB31B6402A0BE383E522A957E5726E85D55ED77508DFDE438190280D1D7D3D3F3AB71AC7D462600EA8793C76208D94B26E8DD1FFABB5675B9D55400181BE57279C738D6FE4826000A62487DBC542ABD5526E81D54B7BA56D5B5A900307666CE9CF9FA38D66E920980FAC1E48972B9FCDB32414D1C2CE75A4D058031EBBDDC691F6008C57245A9547A8B4C501854DF51B83675AA8C00C0A8F65EEEB40F308462F9FD72B9FC5B3241C37E51FD6DAFD554001893E3AC3BED030C52285745EC2E1314BDFBDDEFFE9374B09409001893FECB9DF601062994FF552E977793090AD2E9BE95830F3ED8A00A0063D783B9D33EC0368AE40F227695097A1D1A91EE3C7879EFD635320030363D983BED036CA348AEEEEEEEDE4526280CA9B583645A59DD60580580B1E14EFB00030FAA6B227E43260CA91DFDAFA00EF4380030F241D59DF6010618547F386DDAB49D65A2AD4D1D6418AD3DEF000A00A3DF8BFD5BC42B565301EA8BE3D3799EBF5126DA7E481D6C08B5B20A0023942EB7CAB2ECF4E8BF6E4E9F651FB1B970EAEFAADE5381CF7559166050EDEA5A5F2A95DE20136DE9D08EE1AD940EF7F50040481F3913B120FAAE2DDBF8FCD4C6B833DE334DF680761D54374411DC4926DA76483D6A3BDEB7D9B00A0043EAB3768FB87D18C3697FB1A4542ABD453681762BA01BA3F8FD8A4C18529BF87E0098F4B22CEB4A0B02C5A1B3BBBBBB72D1451755EEB8E38ECA0F7EF083CA4F7EF2934AF2DC73CF55D6AC595359BA7469E5F2CB2FAF4C9F3EBD6E58CDF3FCA7565781761B547F542E97779489B631D88D939AFD7D0060320EA947153F23350DA8D75D775D65FDFAF595A1D8B46953F5F5E97D0D03EB076517689741F5C7A55269079968AB2175B44EDBB5B20A005B0FA95DC521F5ECB3CFAEAE9E6E8FF4BEF3CE3BAF7158B5B20A4C7E51EC7E72CC31C7BC4E2626BDC61B21FD42C48CDEED7034BECF0D9600A057EF35A97DA7FBCE9E3DBBEFF4DEED954E0BBEF0C20B1B4F03DE4BB681C95E5037974AA5FF25136D31A41E551836BF1251E9DD0E75581DE87D865500E8A82E002C28AEA48E74482D0EAB0D2BAB4B641B98EC83EA73471F7DF4FF9489B619529319BDC3666518C36A7148AD454FE179D7AC02D0EE43EA71C56B52B7F774DF6D9D065CBC66D529C0C0641F547F562A955E231393D240C3637F43E7B686D5FE5E7F553FAF77CD2A00ED3CA8F6ADA6A61B218D851B6EB8C1AA2AD03683EAF3471C71C4AB6562D20EA95387317CF637AC0E75486D1C569D060CC0A41A4223FE78A0E7BBBBBB77A9DD4029AD7A6EDCB8714C06D57437E0868FAED9DDDF0E305907D5174AA5D2FF90894965A8C3E260C3EA7087D4E2CFDFD061651580C9D32FD54EB75D9065D93B1A9F8FC74EAFBDE6924B2EA98CA5F439AB8541F55C7F3BC0642DBC2F4D9932E5553231E986D4A10E89030DABBFB89D436A8D6B56019874836A216E2FAEB0C67FDF5C7BEEAEBBEE1AD34175E9D2A5C53FC73C7F3BC0642DBC3F3FFFFCF37F5126DA7248DDD6B0FABD110CA923FDF30040AB0FAA7D2BAC69608DAF57D41E1BED9B28355AB3664DF1CFB0DADF0E30590BEF2BDB3180D07A46BA82D9DFB03A9221B5715875CD2A00936E502DC4CBB5AF47EB2369B6F55135859FBBC5DF0ED0AE85574CA018E1EE9056D61B5752BFD7FBF8485C9EBE97BF1F218410ED10CD308AC77E00185383DDE57730DB5A511DCAE7AC0EC48A2A0093F917FBCBB32C3B2A62B3155500187828DCDC3136D7A86ECFB0EA1A550026EBA05A1D506B37A4748D2A000C6D381CEA0AE6401F41D3DF5D7F8733ACBAEB2F009371505D96E7F9718D9F98E0AEBF0030F46175B02171B0CF491DEC735607B25F87CF510560720DAA752BA88D7C8E2A000CCD602B9A830DA91DDB39ACD64E3F3ECE5F0100EDA2BBBB7B97F4D9F469788CAF2B1B376E1C932175D3A64D95E9D3A71707D5DD651F808966A095D5A10EA9C31D566B3FCF900A40DB499FA95A1B20AFBBEEBA3119546FB8E186E290BA44D60198A8D2CA6AE369B8333A86FF39A9FD0DAB3D0D3FC735A900B4F3A07A5C6D884CABAAA37D53A5F4FDD2F7ADFD8CF879D3641D80893EAC166FB0541C3A8732A4760CF23E1F4103001DD56B59EFAC0D92679D75D62BA3F55135E92369CE3BEFBCBAD5D481AE97058089A4F134E03464F6740CFF23671ADF37D2CF6F0580C934A8EE1EB1A13650CE9E3D7BC49FAB9A86D40B2FBCB038A46ECEF37C2FD90660B20EAB23D5DF69C500D0D6B22CEBAADD58A9B6B2BABDA701A7F735ACA43AE51700C36A13875E00983462A09C591C56D3B5A5E9064BE9AEBD43BDBB6FBA7152F19AD41431047F4C760198AC467ABAAED37D016010696535625371D04C8367FA9CD5BBEEBAABBA5A5A3B2D389DDEBB66CD9ACAD2A54B2B5FF8C2172A3367CEAC1B50D3E9BE69F8955500DA65581DEE8AA81B2701C010A56B568B1F5BB39DB1C435A900B493E19EBEEB745F00D8BE81F5FDBD03EB4BC31950D32AAABBFB0260581DD87E119B238E933200D83EDDDDDDBBC4C0FAE118406F8E5815B1A577284DDBD511F322CE4D2BB1B20540BB9BDA3B844EDDC6F31B0CA900000034D3402BAB4EF7050000A0658655432A0000002D33AC5E6E48050000A055A46B522B1D3E820600008016F27A290000000000000000000000000000000000000000000000000000000000000006F3FF038E0D018DE5F0C5C70000000049454E44AE426082, 1);
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('f6fa5034-ec6d-11e8-bf0c-c85b7643dd9e', 1, '请假流程.bpmn20.xml', 'f6fa5033-ec6d-11e8-bf0c-c85b7643dd9e', 0x3C3F786D6C2076657273696F6E3D27312E302720656E636F64696E673D275554462D38273F3E0A3C646566696E6974696F6E7320786D6C6E733D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F4D4F44454C2220786D6C6E733A7873693D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612D696E7374616E63652220786D6C6E733A7873643D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D612220786D6C6E733A666C6F7761626C653D22687474703A2F2F666C6F7761626C652E6F72672F62706D6E2220786D6C6E733A62706D6E64693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F42504D4E2F32303130303532342F44492220786D6C6E733A6F6D6764633D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44432220786D6C6E733A6F6D6764693D22687474703A2F2F7777772E6F6D672E6F72672F737065632F44442F32303130303532342F44492220747970654C616E67756167653D22687474703A2F2F7777772E77332E6F72672F323030312F584D4C536368656D61222065787072657373696F6E4C616E67756167653D22687474703A2F2F7777772E77332E6F72672F313939392F585061746822207461726765744E616D6573706163653D22636F6D2E7468696E6B67656D2E6A6565736974652E6D6F64756C65732E6F612E6C65617665223E0A20203C70726F636573732069643D226C6561766522206E616D653D22E8AFB7E58187E6B581E7A88B2220697345786563757461626C653D2274727565223E0A202020203C646F63756D656E746174696F6E3EE8AFB7E58187E6B581E7A88BE6BC94E7A4BA3C2F646F63756D656E746174696F6E3E0A202020203C73746172744576656E742069643D2273746172746576656E743122206E616D653D22E58F91E8B5B7E6B581E7A88B2220666C6F7761626C653A696E69746961746F723D226170706C795573657249642220666C6F7761626C653A666F726D4B65793D222F6F612F6C656176652F666F726D222F3E0A202020203C757365725461736B2069643D22646570744C6561646572417564697422206E616D653D22E983A8E997A8E9A286E5AFBCE5AEA1E689B92220666C6F7761626C653A63616E64696461746547726F7570733D2264657074222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793522206E616D653D224578636C75736976652047617465776179222F3E0A202020203C757365725461736B2069643D226D6F646966794170706C7922206E616D653D22E8B083E695B4E794B3E8AFB72220666C6F7761626C653A61737369676E65653D22247B6170706C795573657249647D223E0A2020202020203C657874656E73696F6E456C656D656E74733E0A20202020202020203C666C6F7761626C653A7461736B4C697374656E6572206576656E743D22636F6D706C657465222064656C656761746545787072657373696F6E3D22247B6C656176654D6F6469667950726F636573736F727D222F3E0A20202020202020203C6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C65746520786D6C6E733A6D6F64656C65723D22687474703A2F2F666C6F7761626C652E6F72672F6D6F64656C6572223E3C215B43444154415B66616C73655D5D3E3C2F6D6F64656C65723A696E69746961746F722D63616E2D636F6D706C6574653E0A2020202020203C2F657874656E73696F6E456C656D656E74733E0A202020203C2F757365725461736B3E0A202020203C757365725461736B2069643D226872417564697422206E616D653D22E4BABAE4BA8BE5AEA1E689B92220666C6F7761626C653A63616E64696461746547726F7570733D226872222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793622206E616D653D224578636C75736976652047617465776179222F3E0A202020203C656E644576656E742069643D22656E646576656E743122206E616D653D22456E64222F3E0A202020203C6578636C7573697665476174657761792069643D226578636C7573697665676174657761793722206E616D653D224578636C75736976652047617465776179222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77362220736F757263655265663D226872417564697422207461726765745265663D226578636C75736976656761746577617936222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77332220736F757263655265663D22646570744C6561646572417564697422207461726765745265663D226578636C75736976656761746577617935222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77322220736F757263655265663D2273746172746576656E743122207461726765745265663D22646570744C65616465724175646974222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F773422206E616D653D22E4B88DE5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793522207461726765745265663D226D6F646966794170706C79223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F7731312220736F757263655265663D226D6F646966794170706C7922207461726765745265663D226578636C75736976656761746577617937222F3E0A202020203C73657175656E6365466C6F772069643D22666C6F77313222206E616D653D22E7BB93E69D9FE6B581E7A88B2220736F757263655265663D226578636C7573697665676174657761793722207461726765745265663D22656E646576656E7431223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F77313022206E616D653D22E9878DE696B0E794B3E8AFB72220736F757263655265663D226578636C7573697665676174657761793722207461726765745265663D22646570744C65616465724175646974223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773922206E616D653D22E4B88DE5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793622207461726765745265663D226D6F646966794170706C79223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B216175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773722206E616D653D22E5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793622207461726765745265663D22656E646576656E7431223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A202020203C73657175656E6365466C6F772069643D22666C6F773522206E616D653D22E5908CE6848F2220736F757263655265663D226578636C7573697665676174657761793522207461726765745265663D2268724175646974223E0A2020202020203C636F6E646974696F6E45787072657373696F6E207873693A747970653D2274466F726D616C45787072657373696F6E223E3C215B43444154415B247B6175646974506173737D5D5D3E3C2F636F6E646974696F6E45787072657373696F6E3E0A202020203C2F73657175656E6365466C6F773E0A20203C2F70726F636573733E0A20203C62706D6E64693A42504D4E4469616772616D2069643D2242504D4E4469616772616D5F6C65617665223E0A202020203C62706D6E64693A42504D4E506C616E652062706D6E456C656D656E743D226C65617665222069643D2242504D4E506C616E655F6C65617665223E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2273746172746576656E7431222069643D2242504D4E53686170655F73746172746576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2233302E30222077696474683D2233302E302220783D223137302E302220793D2239322E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22646570744C65616465724175646974222069643D2242504D4E53686170655F646570744C65616465724175646974223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E302220783D223235312E313131313130373834303632332220793D2238302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617935222069643D2242504D4E53686170655F6578636C75736976656761746577617935223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223431372E373737373736393630313535382220793D2238372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226D6F646966794170706C79222069643D2242504D4E53686170655F6D6F646966794170706C79223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E30303030303030303030303030362220783D223338352E323737373736393630313535382220793D223139302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D2268724175646974222069643D2242504D4E53686170655F68724175646974223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2235352E30222077696474683D223130352E302220783D223534372E343037343036323038323238342220793D2238302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617936222069643D2242504D4E53686170655F6578636C75736976656761746577617936223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223731342E303734303732333834333231392220793D2238372E35222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D22656E646576656E7431222069643D2242504D4E53686170655F656E646576656E7431223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2232382E30222077696474683D2232382E302220783D223930302E3732323232303039363430352220793D223238332E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E53686170652062706D6E456C656D656E743D226578636C75736976656761746577617937222069643D2242504D4E53686170655F6578636C75736976656761746577617937223E0A20202020202020203C6F6D6764633A426F756E6473206865696768743D2234302E30222077696474683D2234302E302220783D223431372E373737373736393630313535382220793D223237372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E53686170653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7732222069643D2242504D4E456467655F666C6F7732223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223139392E3934393834323830323234382220793D223130372E3036333032303534313539363032222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223235312E313131313130373834303632332220793D223130372E3237383638383532333937393934222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7733222069643D2242504D4E456467655F666C6F7733223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223335362E303631313130373834303536372220793D223130372E3330343334373832353337313535222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431372E38353230333433383631363731332220793D223130372E3037343037313738323434383034222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7734222069643D2242504D4E456467655F666C6F7734223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E373737373736393630313535382220793D223132362E39343039383130313236353832222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E37373737373639363031353538352220793D223139302E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7735222069643D2242504D4E456467655F666C6F7735223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435372E36363033343931363536353337372220793D223130372E3036313333353638363737353634222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223534372E3430373430363230383232352220793D223130372E3333383039323531383137393738222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7736222069643D2242504D4E456467655F666C6F7736223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223635322E333537343036323038323238332220793D223130372E35222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223731342E303734303732333834333231392220793D223130372E35222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773130222069643D2242504D4E456467655F666C6F773130223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223431372E373737373736393630313535382220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330332E302220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223330332E35323234323731363130343533362220793D223133342E3935222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7737222069643D2242504D4E456467655F666C6F7737223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223735332E383539313239303335383532392220793D223130372E3333343634333235393638303332222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223931342E302220793D223130362E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223931342E363638393136333439363730372220793D223238332E30303030303330333739303231222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773131222069643D2242504D4E456467655F666C6F773131223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E37373737373639363031353538352220793D223234342E3935303030303030303030303032222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223433372E373737373736393630313535382220793D223237372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F773132222069643D2242504D4E456467655F666C6F773132223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223435372E37323536383539363030313032352220793D223239372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223930302E3732323232303039363430352220793D223239372E30222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A2020202020203C62706D6E64693A42504D4E456467652062706D6E456C656D656E743D22666C6F7739222069643D2242504D4E456467655F666C6F7739223E0A20202020202020203C6F6D6764693A776179706F696E7420783D223733342E303630353532333237343835342220793D223132372E3433363531333734333330353634222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223733342E302220793D223231372E30222F3E0A20202020202020203C6F6D6764693A776179706F696E7420783D223439302E323237373736393630313439322220793D223231372E34313133383430393632363836222F3E0A2020202020203C2F62706D6E64693A42504D4E456467653E0A202020203C2F62706D6E64693A42504D4E506C616E653E0A20203C2F62706D6E64693A42504D4E4469616772616D3E0A3C2F646566696E6974696F6E733E, 0);
INSERT INTO `ACT_GE_BYTEARRAY` VALUES ('f735ab85-ec6d-11e8-bf0c-c85b7643dd9e', 1, '请假流程.leave.png', 'f6fa5033-ec6d-11e8-bf0c-c85b7643dd9e', 0x89504E470D0A1A0A0000000D49484452000003AA000001470806000000A839B16B00002F814944415478DAEDDD0B985D757528F0B4B5D7EBF57A91166BA952A0B5485BAA96C2456A9114A104792A9CD9B3CF24218D34510A0808558B345444036AA962EBA388405322528A18539424901063B8BC0A91772A88101E8931628480A0FBAEFFE99CE93E27339999CCCC9933737EBFEF5BDF1ECE6326ACECACBDD6FCF7DE67CA14000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A0AD1545F192871E7AE8AA9B6FBEF967CB962D2B962C5922DA20962E5D5ADC74D34D3F88986E2F457D529FD42700A0A3A42670E5CA95C5FAF5EB8BE79F7F5EB4516CD8B0A158B162C5D3D1141E674F457D5213D42700A063A4950A4D605B3783CF2F59B2E43E7B2AEA93509F00808E914EA7D370B5774423F8823D15F549A84F0040C748D71B69B6DABE112CECA9A84F427D020034824DF1931F3D513C74EB978A7B967EB816E9EBF498464D2308EA93FA0400D0F24670F3A675C5DDDF3CBBB86BF1990D911E4BCF69D6348213C02BA5407D12EA931A050093A8117CF49EAF6DD504D6E3B17B1669D63482ED6E5A44D1BB457D12EA931A050093A111BCEFC6F3076C04D3739A358D601B3B386253C485BDDB23A4447D12EA931A050093A011BC7BC939033682E939CD9A46B0CD1BC07AE397562B366804D527A13EA95100A011141AC1766800077B1CF549A84F6A14004CA44630DD4573A046303DA759D308B6996983347AF5E75D0FA63E09F5498D02607C1445F13FD7AC5933F7B2CB2E5B317FFEFCA74F39E5941766CD9A5574777717D3A74FFFF97BDEF39EE7CF3AEBAC87CE3FFFFC0511AFD7086E1D6B577D66C046303DA759D308B6610338588367D5427D12EA931A05C0F80CA8575F7DF5E5E79E7BEE0BA79E7A6AF1F9CF7FBEB8F9E69B8B75EBD6155BB66C2992B45DBF7E7D71FBEDB71731C816EF7DEF7B7F7EDA69A77D6FCE9C39276804FF3B36AE5B53DC7DFDBCAD4FAB8BC7D2739A358D609B3878CAF0562186FB7AD427A13EA951006CBF1848677FE4231F79EECC33CFAC0DA12FBEF862315477DE7967F1810F7CE0C5B973E7DE57A9545EA711FCAF78F8B6CBB76A04D3631A358D609B3580476CC7FB366B04D527A13EA951008C9998335F72EDB5D7DEF0EE77BFBB58B468D1B006D466DFF8C6378AD9B3673F3BD9575787D4083EF75CB1F6DB9FDDFAB4BA782C3DA759D3084ED00670B4DE8FFAA43EA1460130F090BA7CF9F25B4E3EF9E4E2C1071F2C46C3F7BEF7BD2286DE674F38E184BFECD44670F3A675C583AB2E1AF01AB0F45C7A8D864D23384E06BB2949ABBF0FEA93FA841A05C07F4B2BA969484DD79C8EA6F4FDE6CC99B339CFF3E91DD5083EF75CF1C4DA1B8AEF7CE3AF076C02EB915E935E6BF54223384E0DE0689D1267D5427D12EA931A05C0E849D7A4A6D37D476B25B5BF95D59933676E8A6175CF4E6804075BA5B07AA1116C03CD3719F98588E37BB7C3D1FC3E372F519F84FAA446013072E9EEBE1FFEF0879F4FD7A48EA5C58B173FDBD3D3B3BA131AC1A1AC526C6BF542F3A6116C51037844A991FB622A07BDDBA1368203BD4F23A83E09F5498D026064AEB9E69A7F4977F7FDE94F7F5A8CB5134F3CF1C9C9760A707F8DE0F63681F5D0BC69045BD80026C7F73672C5301AC17203588F99A5E75D0FA63E09F5498D0260FBA4D5D4F439A9E923685AE1AEBBEE7A7EB2ADAA0EF5E31F8446B00D0CD498F5D7D06DAB11ECEFF517F7F37AD783A94F427D52A30018BE356BD6CC4D37501AC9C7D00CD7ECD9B39FECEEEEDEADDD7393E7F992883FD1086A0427EABE394003386D188D5D7F8DE0501BC0E646D02976EA9330A8AA51000CCD65975DB6E2E28B2F2E5AE9C20B2FBC3306D533DA3D37F1672C52A48630CBB2376B043582136DDFDC8E466CB04670B80D60F9E76F9862D5427D127E91A646013014F3E7CF7FFAE69B6F6EE9A0FAED6F7FFB7BD1602D9A288D6029AEEBEFE0AB11D408B6EBBED9D4000EB5011BA811FCC5ED6C00EB5C0FA63E09BF4853A300189A534E39E585279E78A2A583EA934F3EB93E0E628F4EC046B0EFE05B6E0835821AC176DD37A76CFFF557FD35820F8CA0011CE99F07F5497DF28B34350AA093CC9A35ABD8B2654B4B07D5F4F3E2C0B565A23682E5836FFA6DB1465023D88EFBE66EBBED76EA081BAEFE1AC1913480CD8DA0EBC1D427D1D9BF489B36016AD42F542A955F9A3367CE2FC7F67F44CFF43F63FBB2193366BCFCA8A38E7A454F4FCFFF89C75E59AD56779C3973E6AFC673AF8AE77E2DB6BF3E7DFAF49D63FB9AF87FDF25B6BF99EECD11DBDDE3DFE56FC7EB7F27B67BA4CF968FEDEFC6F6F7E37BFD416CDF10CFBD295EFB87B1FDA3786EDFD8FEDFF46F399EDBBFABABEB2DF1DC01B17D6B6CA7C6F64F63FBB678EE9078CD9FC5765A6C0F8BC70E8FAF8F8CED51B13D26B6EF88EDB1F15C25B65DB1ED8E6D1EDB9E786E466C67C676566CFF3CB6EF8AF88B883911EF8EC7DE13DBBF8C979F1CDB53627B6A6C4F8BEDFBE2B93363FB57B1FD406C3F18DBB3E2B9B363FB37B13D271EFBDBD89E1B715EC44723E6C773E7C7F6E3F1DC2763FB77B1FDFBD87E2AE2A278EE1F62FB8FB1FD5C6C3F1FDB7F8AED17E33597C4F6D2D85E16DB7F8EF897882B22BE1C7165C455115747FC5BC45723AE4D67EEC5FB17C7F6DF63FB8DD87E33ED83B15D16DB1B62BB3CB62B62BB326255C4B7236E8EF87F11B746DC1E714744BA5CEDAE88EFC4EBEF89EDBDB1BD3FB60F44AC8DF86EC44311E96CC147D2424CC4BA88C723D23D599E8AD810B131E287113F8A783A6273C43311CF463C17F17CC40B113F8BF879FA37E348876627FE218C8721345913263482ED1F93697F1B4ABCF39DEFAC356BAF7FFDEB477AA0FBC57E56291EE87D7C242E4CDFABD3FE5ED427E11769FFF54B9483436F3DB9B05D6B54EF9F350D0C2F46FCB47790D8D23B58FC2486951FA7812386A04DBD03C80F22D6F70E264FF40E2A8F457CBF778079B877A0F9CF88077B079DFBD2E01371777C9F3569208AED7FF40E48B745DCD23B38ADEE1DA4BE157153EF807563EFC0B534E2FA3488A5DCA6C12CE2EBF17DBE9606B6D85E9306B8D8FE6BBCFE2B69B08BEDC234E8C576416C2FEF1D00BFD43B105E1CF1853428467C360D8E119F89F77F3A0D94B14DB9F9BBD87E225E7F411A3C63FBB13488C6F623B1FD70EF803AAF7760FD50C45FA74136B6EF4F836DBA4F493C777A1A7863FBDE3400C7F6A478EEC43418C7766E1A94637B426C67A7013ABE3E3E0DD4E9230EE3B16A1AB4639BA5C13BB6C7C573EF4C03796C8F4E037A6C8F8821FFED69708FEDA169908FC1FEE078FD4169C08FED8169E04FBF3C89D7FF71FA45406CF74BBF1888ED3EF1FABDD32F0C62FBC6F40B84D8EE55A9547E2FFD6221B6AF4FBF6888EDEBE2F5BF957E0111DB5DD32F247A7A7A5E1BEFFB8DF48B8A78DFABD32F2E62BB533CF72BE9171AB1DD21FD8223B6FFFBC8238FFC5FE9171F871D76D84BD32F42A64E9DFA9273CE3927EDBBBF90F6BD11FCB2052687E38F3FFEE7AD5E517DF6D9679F9CE02BAAB7A602980A4A7ADD683782E9407BC1051734343151DC8A6BAFBDB678C52B5E51DC7DF7DD7DCF3DFEF8E3B5D7A7C7D6AE5D5B1C7EF8E1B548AFDD65975D8A2F7CE10B0DDFFBFEFBEFAFBD3EBD6FF5EAD54514E95ACC9C39B3F69EF45CF93DB7DC724BF18E77BCA3EF3503BD6EA0FF8F4F7CE21383BEE68C33CEA87D7DE59557D656DBEB8F2F58B0402338B27D73B03B688E64B562289F6168457512D6A791D4B554C786FAFA5467F6D8638F617DFF76A9377E9136B438F0C0030B350A06ACF13FEB1D5AA1739D7CF2C9CFB7FA1AD518921E98A0D7A836348075A3D508AE58B1A2D69C9D7BEEB9B5036D6AA4E267D5220D96CD0D551A3A6FBCF1C662BFFDF62B8E3DF6D8E299679EE96BBC52BCFCE52F2F0E3DF4D0869FF1CBBFFCCBC50E3BEC90AE13EE7BEDE2C58B6BDF37BDBFF9CFF4AA57BDAA38E8A083FA6DF89A1BBBFA9FBF3ECCEEBCF3CEC501071C50FB3AC5D5575F5DECBEFBEE5B7D9F74D7E9FAD7975F7E79DFD7E9FFDFA03AB27DB3B7E1DA3C656CAEFFDA9E46D0F55F13B43E8DC6A0DA5F2D49916A51AA6329CAF52345BD7E5C72C925B5EFF1D8638FB57DBD519F86F64B14350AB6F9EFE8857E8EE9D059CE3EFBECB5ADBEEBEF37BFF9CD7F9F6077FD5D9DAEF118A8608C5623B879F3E662D5AA557DFF7DDD75D7F5355169B5343D577FACBC9A7AFDF5D7F7FBFD9A07D5F4FDD3EBEFBDF7DEDA363572A9694B83EB89279ED8B7525A1E585323B7E38E3B16A79F7EFA562BAAE9FBD49BC6FE9ABDF4DF69E82E0FC91FFCE0076B5F3FFCF0C37DDFE7AD6F7D6BEDE7A4AFD3F05D7FEF9A356B6ADB4F7DEA531AC1EDDC379B1AAFA1AE0E0CF4F10EFDDD5173388DA03B6A4EE0FA341A836AFAC5D740CFA7BA93EA5CAA59CD83EA55575D55ECB9E79E5B7DBF76AD37EAD3907F91A646C1C0FF8E7E9AAE8D96093ADAC73FFEF18B5BFD39AAF3E6CD5B3C413E4775B083EBA83782E9C09A86C1D458A5AF1F79E491BE41356D1F7DF4D1BED7A655D1F4D8403FBF79504DAF3DE594536ADF2B7DDFB973E7D61E7BFAE9A76B4D5CFD35D75C734DDF7B76DD75D75A63D7FCBDD3D0BC69D3A686158E34082F5BB6AC6F45233D377BF6ECDAD7E9F4E1F4FFD5DFFF6F7985E3D5AF7E756DF04E5FA7D590B46AA211DCFE7DB39F4670B0066CB0CF201CEC330C07B2CF149F5138E1EBD3F6465A314DFBCA4B5FFAD26DBE2E0DA4E9F286E64175A79D76AAD590E65FECB56BBD519F86F58B34350AFAFF77F47CBA6E5526E8681FFAD0877EFBA4934EFAD98B2FBED8B29BFE56ABD57487B4DD264B0E47A3114CABA3A9C1DA6BAFBD8A8B2EBAA83664A615CF3428A69584F47C6ACAD280597FCFC68D1B87BCA29A560ED2F5A6F5062D9D46D7BC9270E79D776E35A8A69F991EDB7FFFFD8B430E39A4F8DCE73E57ECBDF7DEB5EDCB5EF6B2DAD7CD8D606A36EB5FD707E0B4129C566EFB6B1CD3207CDB6DB7D5BE4ED7CDD61F4F79D0088EAAC1560B066B00A76C6723583FB5EF187F0513B33E8D34D2BFEBB49FA4B333CA97273447BAAE3E45F3A0FA8637BC61AB41B59DEB8D4175D8BF4853A360EB7F475BD25DA665828E77FAE9A7FFE7EDB7DFDEAAD37ED31DE6566A04B78E3478A6A1B47EEA5B3A75ADF9F4DEF475FDF4DFE10CAA29D24A6AFABE6F7AD39B6A43677D30ADAFDAD607D634A8A6D3F0D2709AA2BE62513EED379D1E971ABB294DABBCE9BFDFF296B76CB5C2911ACEA38F3EBAEF75E967A59B9A4C29DD94A9B9E9748DEA981868D562A80DE0701BC1FACFD30076F0A03AA5F7FAD4744D7DFA7A5BA7FFD6BF4EC3698AFA8D95D2FB9A87DC76AD37EA931A05A330A83E9BEE082C1374BC77BDEB5D95F7BDEF7D2FB460557553B55ABD23DD5A5C23B875A453709B87D2FAF058BF7151F9EBE10EAAE59B2DA5F7D55715D21D83A7345DBB5A6E1ACB0D5DFDBF07BA8E6BA88D633A6DF9BBDFFD6EC32A4873E358FF7F2F5F07AB111C1569D5A2F914B7E3A70CFF3308FB6B046736FD1CD77B75F8A05A3FEDB77C16C7FCF9F31B5E932E7538ECB0C36AD1DFCD94CE3EFBECE2D4534FEDAB57ED5E6FD427350A466150FD49FABC5E99803077EEDC358B162D1AD329355D0F9B565327DB5DCC46F3664ACD8D57FD5AD53454BEFFFDEFEF1B28B76750DDB0614391FE8ED38A6CFABEF553EDD2AA45BD61EBEF7BD5575EEB377ADAD6A05ABED953B9294CA71ED7FFDCDBBA662C358BF5013AFD19D39F6B5BA70A6A0447D408966F5E526EE886D2004E19E47D3EDEC1A0DA70DD7D733DA9DF71B73ECCA6487720EF6F50EDEF1AD576AE37EA931A05A330A86E4E9FB52A13F05FFF20769B3D7BF6B30F3EF8E0980CA9D1105C9B3E003BCFF33D3582FD47FDE644E9BAD0F2DD7EA7F4AEA2A6C1B4F9BAD6F2EBEB914EE5ED6D7C6A77F32D3F97AE534D8F5F71C515B5FFAEAFA2A6D377D375A7F586ADF9CF96AE474DD773D56F3C525F751DAC41AD378EFD0DE5F5C1FCD24B2FED7BFD94DED3FBD276DEBC79B56DFDCE9D1AC151D77C8A5D6AE0664E19FEC73934BF6FA49FDFCA241954D3BFDFFE06CC54CFD273E9A3B7CAA7FBD607D6FAE79CD67F81965651FB1B3CDBB5DEA84F6A148C425FFE744F4FCFFF9109E8357DFAF49EB973E73EB37EFDFA511D521F7BECB16F55ABD54726DB29BFAD6A0453F394561A9A1F4FAB06E9B9744A5BF373F55582FAE976CD9FA59A565AD31D2E9B87DCB4E2BAEFBEFB0E780A5FBABE2B7DDF3BEEB86344836A8A34EC4E69BAA149FD6B8DE0B8358223D5DF297B74D8A09A7EF195EEA85BBE315B7FABA153FAB96B79BA04A2FEF131175C70C1B0EA64BBD41BF5498D825118547F54A95476900928E9E9E9993D67CE9CCDA3B5B29A5652D3909A65D9073482422338A91BC1D16E28519FD427D4283A7550FD61F4CF3BCA043489A1B27BFAF4E94F7FF5AB5FFDC9086EB0B4E9939FFCE497D2E9BE11B334824223D8D6467A2A9C53E9D427A13EA951307A83EAC64AA5F22B3201FDFF03D9AD5AAD2E9B3B77EE9377DC71C7B3C3F99CD4EBAFBF7E610CBAB7A61B274DC66B5235821AC149DE080E77B5C14D49D427A13EA95130BA7DF80F66CE9CF9AB3201DBFE87725C1A5867CD9AB57EFEFCF9F77CEB5BDF7A64DDBA754FA4EB1593679F7DF6C9C71F7FFC81A54B977EFD9C73CEB9AEA7A7E7A134A0A655D4C976775F8DA046B0030CF7D438A7D2A94F427D52A360F4FBEFF5954AE5553201431003E86BF33C3F35FEE15C15F170C49688A277FB68C4A28833D24AAC465068043BA211DC276273C43152A63E09F5498D82511D549F9A3163C6AFC904A011D408D2685A6F83376D1BCF6FD000AA4F427D52A3604C06D5272A95CAAFCB04A011D408B2B581562D9C4AA73E09F5498D82B11D541F9F3E7DFACE3201680435820CAD11D400AA4F427D52A360EC07D5C72A95CA6B6402D0086A0419BC11BC5003A83E09F5498D82960CAA8FA6FBC3C804A011D408B26DE97AAF74F33479549F84FAD49635AAB73EF9081A26CBA0FA48A552F94D990034821A4106F74A83AAFA24D4A7366EECE591C9B43F7FAF5AADEE2A13804650238846507D12EA93FA04EDB23F3F54A9547697094023A8114423A83E09F5497D8276D99FBF5BAD567F4B26008DA046108DA0FA24D427F509DA657FFECF2CCB7E5B26801159B66C9966ABBD634B34822FD8533582EA93509FD4279820FBF383D56AF577640218919B6EBAE989F5EBD76BB8DA34D6AD5BF7E56804EFB3A76A04D527A13EA94F3041F6E707B22CDB43268011B9E1861B8E5EBE7CF98F9E7AEAA967355EEDB552919AC0A54B973E12719C3D5523A83EA90BEA93FA0413647FBE2FCFF33D650218B168348E58B264C9ADE914AE74BDD1448E850B17D63E2F73A2FF7FF4FE5DDCA709D408AA4F93A73E4DA2509FD427D8D6FE7C6F9665BF2B13008DC571513AE04F9D3AF525B2814610509FA0E5FBF3DD799EFFBE4C00F4CAB2ECCD511C5F4807FC2890D364048D20A03E41CBF7E7EF444FB6974C00FCF7A07A4D3AD8F7C6AD32824610509FA0E5FBF35D799EBF412600FEAB28EE535F4DAD470CAE47C80C1A41407D8296EECF77460FF646990098F2DFD7A636C5ADAE55452308A84FD03A31A4FE47B55A7D934C000EF0FDACA6D623CFF36364088D20A03E41CBF6E7DB6358DD5B260005B1BBFBBAFE86D4DE582D43680401F5095AB63FDF56AD56FF4826804E2F8603AEA6BA56158D20A03E41CBF7E75BA2F7DA5726804E2F868BB635A4BA03301A41407D8296EECFFFAF5AADFE5F99002899356BD62BB32CDB2413680401F509C6657F5E9D3EDB5E26004AAAD5EA8E51207F2813680401F509C6657FFE769EE7FBCB0440C9CC99337F350AE40F64028D20A03EC1B8ECCFDFEAEAEA7A8B4C0094E479BE5314C80D32814610509F605CF6E795D18FFD894C0094CC9831E3D7A2403E2513680401F509C6657FBE29E200990028C9F3FCD5511C9F9409348280FA04E3B23F2F8F7EEC40990028993E7DFACE51201F9709348280FA04E3B23FDF18315526004A2A95CA6BA2383E2613680401F509C6657F5E96E7F941320150D2D3D3F3DA28908FCA041A41407D8271D99F9746BC4D26004A2A95CA6F46717C4426D00802EA138CCBFE7C7D9EE787C8044049B55ADD350AE4F764028D20A03EC1B8ECCFDFCCB2ECCF6402A0A452A9EC1E05F22199402308A84F302EFBF375799E4F930980922CCB7E3B0AE47FCA041A41407D8271D99FFF3DFAB1C36402A0A452A9BC2E0AE45A99402308A84FD07A31A42EAE56AB6F970980C6E2B8471CF01F9009348280FA04E3B23F2F8A7EEC08990028A9542AAFCFF3FC7E99402308A84FD07A31A47E2D7AB1236502A0B138FE6E1CF0EF9509348280FA04E3B23F7F35FAB1A36502A0A452A9FC5E9EE7F7C8041A41407D82D68B21F59AE8C58E910980C6E2B8571CF0BF2313680401F509C6657FBE3AFAB177CA0440499EE76F880279974CA01104D42768BD1852FF35FAB1636502A0B138BE310EF877CA041A41407D82D68B21F52BD18F556402A0F160FF871177C8041A41407D8271D99FAF8C61B54B26004AB22CDB3B0AE4ED32814610509F605CF6E72F47643201D0581CF789B85526D00802EA138CCBFE7C451E6402A024CBB27DA340DE2213680401F509C6657FFE9788AA4C003416C7FD226E9609348280FA04E3B23FFF739EE7D36502A0240AE3FE5120BF2D13680401F509C6657FBE3C62864C003416C73F8E582513680401F509C6657FBE34CFF3E36502A0240AE39F44815C2913680401F509C6657FFE52C42C9900682C8E0744DC2413680401F509C6657FFE62C46C990028C9F3FCC0288ECB65028D20A03EC1B8ECCF1747BC4B26004ABABABAFE3486D51B64028D20A03E41EB6559F64FD18B9D2013002551180F8A03FE3299402308A84F302EFBF3E723E6C80440495757D7C131AC2E9109348280FA04AD9765D9E7A2179B2B13002551180F8903FEF532814610509F605CF6E77F8C61F53D32015052AD560F8DE2F80D99E8F883E4A2D4F80D12B7CA14605085D1157DD83FE4797EA24C009444619C1607FCEB64A2E39BBE7D225ED8D6A01A07D223640A30A8C2A8EFCF17C531F624990028A956AB6F8FE2B8582648BFB0D8C6A0BA7AEAD4A92F9125C0A00AA32BFAB04FE7797EB24C003416C723D2699F3241EFAA6ABF836A1C408F9121C0A00AA32F8EB17F1FFDD87B6502A0B1381E19C5F16B32416FF3D7DFB5AAB75A4D050CAA3036A20FBB30FAB1536502A0B1381E1D07FCAFCA04BDCDDF56D7AABA361530A8C2D88921F59371AC3D5D26001A8BE331511CAF9109EAD2FE60351530A842CB8EBB9F887EEC7D3201D0581CDF1907FCAB6582D23EF1E6D2B5A9D3640430A8C298EECF1F8F384326001A8BE3711157C9044DFB45ED5A55ABA9804115C6569665E7E779FE573201D0581C2B511CBF2213343581FB680401832AB4647F9E1FF17E9900682C8E59C4976562648AA278C9430F3D74D5CD37DFFCB365CB96154B962C116D104B972E2D6EBAE9A61F444CB797824115DA747FFE689EE71F940980922CCBBAA3382E9489914943EACA952B8BF5EBD717CF3FFFBC68A3D8B06143B162C58AA763683DCE9E0A065568C3FDF9BC88BF960980C6E2588DF817991899B4926A486DEB61F5F9254B96DC674F05832AB4E1FE7C6EC4876402A024CBB29E3CCF17C8C4C8A4D37D0D84ED1D31A8BE604F05832AB4E1FEFCE188B36502A0B138CE88B85C2646265D0F69186CFB4155630B065568C7FDF99C887932015092E7F9F1511C2F9589D60CAA3FF9D113C543B77EA9B867E9876B91BE4E8F19240DAA8041958EDD9FE7A5615526001A8BE3AC882FC9C4D80FAA9B37AD2BEEFEE6D9C55D8BCF6C88F4587ACE306950050CAA749E2CCBFE26CFF3BF950980C683FDEC882FCAC4D80FAA8FDEF3B5AD86D47A3C76CF22C3A4411530A8D299FBF387D20D956402A0B138BE2BE2629918FB41F5BE1BCF1F70504DCF19260DAA804195CE9365D959799E7F4426001A0FF67F11F1059918FB41F5EE25E70C38A8A6E70C930655C0A04AE78921F583B14F7F5426001A0FF673223E2F130655832A605085D6CBB2EC0331AC7E4C26001A0FF6EF8EF8AC4C8CFDA09AEEF23BD0A09A9E334C1A5401832A9D2786D4BF8A61F57C9900682C8E274671FC079918FB4175EDAACF0C38A8A6E70C930655C0A04AE7893EECCCE8C72E900980C683FD5F467C4626C67E50DDB86E4D71F7F5F3B63EED371E4BCF19260DAA804195CE1343EAFB6258FD844C003416C793A3387E5A26C67E504DF1F06D976F35A8A6C70C920655C0A04A678A3EECF4E8C73E2913008D07FB53223E25132D18549F7BAE58FBEDCF6E7DDA6F3C969E334C1A5401832A1DB93F9F16F17732015092E7F9A959965D2813633BA86EDEB4AE7870D545035EA39A9E4BAF31501A5401832A9D25FAB0F7463FF6F73201D0581C9D6E329683EA73CF154FACBDA1F8CE37FE7AC021B51EE935E9B556570DAA8041958EDA9F9DDD06D0CC05FC6337A80EB68A6A75D5A00A185421FAB093629FBE4826001A8BA35BA28FD1A03A9455D46DADAE1A2E0DAA8041958ED89F7D020340331F323D7683EAF60EA9F5305C1A5401832A935FF461EF897DFA1F6502A0B1387E2086D58FC9C4E80FAAC2A00A18546108FBF3BB233E2B13002531A47E308AE34765C2A0DAE9836AFC3BD827CBB26BECCD60508516EFCF73223E2F130025D1989F15C3EA4764C2A0DAA9836A1A50231645BCA0F905832A8CC3FEFC17115F900980C6E27876C48765C2A0DA69836AF3805A0F7B331854A195F23C3F21CBB27F92098092288C7F1305F26F65C2A0DA29836AECF36F4EA7F8360FA8065530A8C238EDCFB323BE2813008DC5F19C88793261509DECB170E1C2A2BF1554832A1854613C6559F6E7799E5F22130025693535ADAACA844175B2C7B6865321C4C40B471E26512F767CECD397CA04404914C673233E2413137350DDB061436AD68AABAEBAAA78E699678A5D77DDB538E8A0838A993367D6E2DA6BAFAD3DDFFCBEF4D8FCF9F307FCEF81E29A6BAE2976D96597019FBFF7DE7B8BFBEFBFBFDF9F77E9A597B6C5A9BF5D5D5D07C73EBF5AF30B403BC8B26C660CAB97C90440E3A07A5EBAF3AF4C4CCC4135C52DB7DC52ECBCF3CEC5962D5B6A03611A16D3F6A28B2EEA1B12EBAFDD77DF7DFB86D74B2EB9A4D869A79D8ADB6EBBADF6DF871F7E78DF73E97BD4DFF3F297BFBC38F4D0436BCF9D7DF6D9C58E3BEE589C75D6597DAF5DBD7AF5564369FA332D5BB6ACA856AB0D3FEFEAABAFAE7DFDD8638F8DFBCD94A2299816FBFF4A832A00E3298E47D3E3F8F3CF3201D038A87E347D96AA4C4CDC41B57948BCFCF2CB6BDBA953A7162B57AE6C1854D7AE5D5B5B15AD0F8EFBEFBF7FB168D1A262C182057DEFBFF2CA2BB7FA9E575C7145EDEB3474A655DBF273CDAF5FB56A55DF6A6FFA339407D5B44D036C3B7D3C4DEF0AEB4A832A00E321CBB29EE8C516C80440E3A03A3FE2FD3231F106D5B42A9986C097BDEC65B581B43E387EEE739FEB1B0CD3AA6A7950ADAF8AD607DA5FFAA55F2ACE3DF7DCDA109706CCF4781A669B07D5BDF7DE7BC015D51B6FBCB1EFB4DFFA638F3EFA68EDEB638F3DB6EFB1F2D7F5F7B4C3A05AD7BBC2BADADE0C402BC5F1278FE3CF153201509265D9F9511FFF4A2626DEA09AA27EBA6F3AA5B63E54A615D3E641B3FEF5C30F3F5C5B3D4D8FEDB5D75EB5C1313DBE71E3C6DA635D5D5DFDAED2D6574DB7B5A29AAE91AD3FB666CD9ADA7FBFE635AF290E39E490DAFBEA43751A62DB69451500C6B917EB8E5E6CA14C00947477777F3CE20C999898836AF3703AA5F734DD3414A6EB569F7CF2C9864175BFFDF62B162F5EDC779DE81E7BEC513BF537DDE8A87E63A614E97DC31D54CB8FA59B3BD5BF4E3FB37C63A7FAEAAF4115006ABD5816F165990028C9B2EC13799EBF4F2626F6A07AF7DD77174F3FFD74DF69BFF515D2F4787D504D2B996995330D8CE95ACCB4DD7DF7DD8B134F3CB1F675FD4647CDD7904E19E2A9BFE5D7A715D5B47A9BBE5EB16245BF43AC4115006ABD58257AB1AFC80440490C2C7F17719A4C4CEC41350DA87BEEB967DFCD93D22A67DAD687C5E6D385D39D7AD3B63E6CA66DBA5EB57E53A5E6EF5F1F5E9B57542FBEF8E27E5FBFC30E3BF4ADE6A61B2A59510580017BB1E322AE920980923CCFFF3ECBB2F7CAC4C41E54D3A9BB699B564CD3F691471E29AEBFFEFAADAE512DBFE7CE3BEFDC6AF01C2C86F2FAF4BDD38A6DFDEBFAF5B3565401606BD187BD338E9B57CB04404914C64F459C2213137750DDBC797371FFFDF7D74EF32D3F5EFF7CD4F4D9A9FD7D8E6A1A6EE7CD9B57FB2CD5FAA9BCF581375DAFDADFCF4AA7001F70C001DBFCF394DF9BBE57FAB3A5EB61EB1F9B53BEFED5A00A805EACFB1D11FF2613008DC5F1A22CCB4E9289893BA80EF72EC113E1CF695005A053441F7674F4635F950980C641F533117F29139D31A8767218540168D35EECA8886B6502A0B138FE639665EF910983AA4115005A2FFAB023A21F5B2413008D83EA6723DE2D130655832A008C4B2F7678C4D76502A0B1387E3E628E4C18540DAA00D07AD56AF5ED59962D96098092288CFF94E7F90932615035A80240EB451F36ADBBBBFB3A99002889C27871C4BB64C2A06A500580D6AB56AB876659F60D990028C9F3FC92288E7F2E130655832A008C4B2F76487777F7F53201501285F14B11B364C2A06A500580D6EBEAEA3A3886D5253201501285F1B22CCB66CA8441D5A00A00E3D28B1DD4DDDDBD4C26004AA230FE7314C8E932615035A80240EB757575FD69F46237C804404914C6055996F5C88441D5A00A00E3D28B1DD8DDDDBD5C26004AA2305E110532970983AA4115005AAFABABEBADD18AAD90098092288C0BB32CEB960983AA4115005AAFBBBBFB8088953201D0581CAF8C61B54B264666D9B26586C1F68E2D31A8BE604F05A0DD747575BD25FAB16FC90440490CA95FC9B2AC22132373D34D373DB17EFD7A03619BC6BA75EBBE1C83EA7DF65400DA4D0CA97F1CB14A26004A6248FDD718568F958991B9E1861B8E5EBE7CF98F9E7AEAA9670D86EDB5929A86D4A54B973E12719C3D158036ECC5DE1C83EA6A99002889C2F86F11EF9089918B41E888254B96DC9A4E314DD7434EF488FDA29804FF1FE9EFE23E432A006DDC8BED1771B34C00946459764D9EE7C7C804FD1C38DD7C0800C6BE17DB378EB9B7C80440E330726DC4513281411500C6E578BB4FC4AD3201509265D9D7F23C3F522630A802C0B8F4627BC731F7769900681C46BE1E71B84C605005807139DEFE61C41D3201509265D9E26AB5FA7699C0A00A00E3D28BBD318EB977CA0440E330725D9EE7D36402832A00B45EF4616F8863EE5D3201D0388C7C33CBB23F93090CAA00D07A3D3D3D7F10BDD81A9900681C46AECFF3FC1099C0A00A00AD177DD8EFC731F76E9900681C469646BC4D2630A80240EB552A95DF8B61F51E9900681C469645713C482630A80240EB451FB6671C73EF930980C661E4C688A932814115005AAF52A9BC3E86D5FB6502A0240AE38AAEAEAEB7CA0406550068BD6AB5FA3B71CC7D5026001A87919B220E90090CAA00D07A954AE57571CC5D2B13008DC3C8B7BABABADE2213185401A0F5AAD5EA6FC531F7BB3201D0388CAC8AF86399C0A00A00AD57A954768F63EE433201D0388CACCEB2ECCD3281411500C6E578BB5BC4C33201D0581C6F8ED84F2630A80240EB552A95DF8C63EE233201D0388CDC9265D9BE3281411500C6E578BB4BC4F76502A0B138DE56AD56FF482630A80240EB552A95D7C431F7319900681C466ECFB26C6F99C0A00A00E372BCFD8D88753201501243EA7F54ABD537C90406550068BD4AA5F2EB71CC7D4226001A87913B63587DA34C74FC7EB0280DA683C4AD320500A32BCFF357C731F6499900288921754D4F4FCF1FC844C70FAAFB44BCB0AD4135F69523640A004657A55279551C67D7CB0440E38072779EE7BF2F13C4BE70DD3606D5D553A74E7D892C01C0E88A3E6CA738CE6E900980C6E2784FA552F93D99A07755B5DF4135F6936364080046DFCC99337F358EB53F900980C6E1E4BE1842F694097AF787FEAE55BDD56A2A008C8D6AB5BA631C6B7F2813002531A4DE5FA9545E2F13F40EAA5B5DABEADA5400183BB366CD7A651C6B37C90440E360F260B55AFD1D99A02E0E96D7584D058031EBBDDC691F6008C5726DA552799D4C501A54DF5CBA36759A8C00C0A8F65EEEB40F308462F9DD6AB5FA5B3241D37E51FB6DAFD554001893E3AC3BED030C52281F8ED84D26287BDBDBDEF6A7E9602913003026FD973BED030C5228BF57AD567795094AD2E9BEC581071E68500580B1EBC1DC691F601B45F2FB11BBC804BD0E8E48771EBCB077EB1A1900189B1ECC9DF601B651241FEDE9E979AD4C501A52EB07C9B4B2BAC1B00A0063C39DF601061E54D745FC864C1852A7F4BF823AD0E300C0C8075577DA071860507D7CFAF4E93BCB44479B36C8305A7FDE01140046BF17FB7AC4CFADA6023416C727F33C7FB54C74FC903AD8106A65150046285D6E9565D949D17F5D953ECB3E6273E9D4DF877B4F053EC365598041B5BB7B7DA55279954C74A483A70C6FA574B8AF070042FAC8998825D1776DD9C6E7A736C78DF19EE9B20774EAA0BA218AE04E32D1B143EA11DBF1BECD86550018529FB55BC475C3184EFB8B95954AE575B209745A01DD18C5EF5764C290DAC2F703C0A4976559775A10280F9D3D3D3DC5C73EF6B1E2861B6E28BEFFFDEF173FFEF18F8BE499679E29D6AD5B57AC5AB5AAB8F0C20B8B193366340CAB799EFFC4EA2AD06983EA0FABD5EA8E32D13106BB7152ABBF0F004CC621F588F267A4A60175C18205C5FAF5EB8BA1D8B46953EDF5E97D4D03EB09B20B74CAA0FAA34AA5B2834C74D4903A5AA7ED5A590580AD87D4EEF2907AFAE9A7D7564FB7477ADF99679ED93CAC5A590526BF28763F3EEAA8A35E2113935EF38D907E21E2F8DEED7034BFCF0D9600A057EF35A97DA7FBCE9B37AFEFF4DEED954E0B3EEFBCF39A4F03DE53B681C95E5037572A95FF2D131D31A41E511A36BF1851F46E873AAC0EF43EC32A004CA92D002C29AFA48E74482D0FAB4D2BAB2B651B98EC83EA33471E79E4FF92898E195293E37B87CD6218C36A7948ADC7CCD2F3AE5905A0D387D463CAD7A46EEFE9BEDB3A0DB87CCDAA538081C93EA83E5BA9545E261393D240C3637F43E7B686D5FE5E7F713FAF77CD2A009D3CA8F6ADA6A61B218D85850B175A55053A66507DEEB0C30E7BA94C4CDA2175DA3086CFFE86D5A10EA9CDC3AAD3800198544368C49F0CF47C4F4FCF6BEB37504AAB9E1B376E1C934135DD0DB8E9A36B76F3B7034CD641F5F94AA5F23F64625219EAB038D8B03ADC21B5FCF3374CB1B20AC0E4E997EAA7DB2EC9B2ECCDCDCFC76327D55F73C105171463297DCE6A69503DC3DF0E30590BEF0B53A74E7D894C4CBA2175A843E240C3EA2F6EE7905AE79A550026DDA05A8AEBCA2BACF1DF57D59F5BBE7CF9980EAAAB56AD2AFF3916F9DB01266BE1FDD939E79CF38B32D19143EAB686D5074630A48EF4CF0300ED3EA8F6ADB0A68135BE5E5B7F6CB46FA2D46CDDBA75E53FC3A3FE7680C95A787FBE1D0308ED67A42B98FD0DAB2319529B8755D7AC0230E906D552BC58FF7AB43E92665B1F5553FAB95BFCED009D5A78C5048A11EE0E6965BD7925F581DEC747E2C2F4BDFCFD082184E8846885513CF603C0981AEC2EBF83D9D68AEA503E67752056540198CCBFD8BF35CBB22322365B5105808187C2CD53C6E61AD5ED19565DA30AC0641D546B036AFD8694AE510580A10D87435DC11CE82368FABBEBEF70865577FD0560320EAAABF33C3FA6F91313DCF51700863EAC0E36240EF639A9837DCEEA40F699E2735401985C836AC30A6A339FA30A004333D88AE66043EA94ED1C56EBA71F1FE3AF00804ED1D3D3F3DAF4D9F469788CAF8B8D1B378EC990BA69D3A662C68C19E5417537D90760A219686575A843EA7087D5FACF33A402D071D267AAD607C8050B168CC9A0BA70E1C2F290BA52D60198A8D2CA6AF369B8C74F19FEE7A4F637ACCE6CFA39AE4905A09307D563EA43645A551DED9B2AA5EF97BE6FFD67C4CF9B2EEB004CF461B57C83A5F2D039942175CA20EFF311340030A5762DEB8DF541F2B4D34EFBF9687D544DFA489A33CF3CB3613575A0EB65016022693E0D380D9933A70CFF23679ADF37D2CF6F0580C934A8EE16B1A13E50CE9B376FC49FAB9A86D4F3CE3BAF3CA46ECEF37C4FD90660B20EAB23D5DF69C500D0D1B22CEBAEDF58A9BEB2BABDA701A7F735ADA43AE51700C36A0B875E00983462A09C551E56D3B5A5E9064BE9AEBD43BDBB6FBA7152F99AD41431047F40760198AC467ABAAED37D016010696535625379D04C8367FA9CD5E5CB97D7564BEBA705A7D37BD7AD5B57AC5AB5AAF8F4A73F5DCC9A35AB61404DA7FBA6E1575601E8946175B82BA26E9C04004394AE592D7F6CCD76C64AD7A402D049867BFAAED37D0160FB06D6E37A07D6178633A0A6555477F705C0B03AB07D2236471C236500B07D7A7A7A5E1B03EBA931805E15F170C496DEA1346D1F8D581471465A89952D003ADDB4DE2174DA369EDF6048050000A095065A5975BA2F0000006D33AC1A52010000689B61F542432A000000ED225D935A4CF11134000000B491574A010000000000000000000000000000000000000000000000000000000000003098FF0FCB550BC848183BDA0000000049454E44AE426082, 1);

-- ----------------------------
-- Table structure for ACT_GE_PROPERTY
-- ----------------------------
DROP TABLE IF EXISTS `ACT_GE_PROPERTY`;
CREATE TABLE `ACT_GE_PROPERTY`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_GE_PROPERTY
-- ----------------------------
INSERT INTO `ACT_GE_PROPERTY` VALUES ('cfg.execution-related-entities-count', 'true', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('cfg.task-related-entities-count', 'true', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('common.schema.version', '6.4.0.0', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('identitylink.schema.version', '6.4.0.0', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('job.schema.version', '6.4.0.0', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('next.dbid', '1', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('schema.history', 'create(6.3.2.0)', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('schema.version', '6.4.0.0', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('task.schema.version', '6.4.0.0', 1);
INSERT INTO `ACT_GE_PROPERTY` VALUES ('variable.schema.version', '6.4.0.0', 1);

-- ----------------------------
-- Table structure for ACT_HI_ACTINST
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_ACTINST`;
CREATE TABLE `ACT_HI_ACTINST`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_START`(`START_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_PROCINST`(`PROC_INST_ID_`, `ACT_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_ACT_INST_EXEC`(`EXECUTION_ID_`, `ACT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_ACTINST
-- ----------------------------
INSERT INTO `ACT_HI_ACTINST` VALUES ('20024712-05f4-11e9-b751-c85b7643dd9e', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2001d1e1-05f4-11e9-b751-c85b7643dd9e', 'startevent1', NULL, NULL, '发起流程', 'startEvent', NULL, '2018-12-22 22:16:07.869', '2018-12-22 22:16:07.871', 2, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('2002e353-05f4-11e9-b751-c85b7643dd9e', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2001d1e1-05f4-11e9-b751-c85b7643dd9e', 'deptLeaderAudit', '20049104-05f4-11e9-b751-c85b7643dd9e', NULL, '部门领导审批', 'userTask', NULL, '2018-12-22 22:16:07.873', NULL, NULL, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('560a16b0-05fc-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'exclusivegateway6', NULL, NULL, 'Exclusive Gateway', 'exclusiveGateway', NULL, '2018-12-22 23:14:54.491', '2018-12-22 23:14:54.498', 7, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('560b2821-05fc-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'endevent1', NULL, NULL, 'End', 'endEvent', NULL, '2018-12-22 23:14:54.498', '2018-12-22 23:14:54.500', 2, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('5ef97ed8-05d6-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '5ef97ed7-05d6-11e9-8544-00163e2e65eb', 'startevent1', NULL, NULL, '发起流程', 'startEvent', NULL, '2018-12-22 18:43:08.606', '2018-12-22 18:43:08.606', 0, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('5ef9a5e9-05d6-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '5ef97ed7-05d6-11e9-8544-00163e2e65eb', 'deptLeaderAudit', '5ef9a5ea-05d6-11e9-8544-00163e2e65eb', NULL, '部门领导审批', 'userTask', NULL, '2018-12-22 18:43:08.607', NULL, NULL, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('6a271000-05cd-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'startevent1', NULL, NULL, '发起流程', 'startEvent', NULL, '2018-12-22 17:39:01.889', '2018-12-22 17:39:01.892', 3, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('6a27d351-05cd-11e9-8544-00163e2e65eb', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'deptLeaderAudit', '6a286f92-05cd-11e9-8544-00163e2e65eb', NULL, '部门领导审批', 'userTask', 'dept', '2018-12-22 17:39:01.894', '2018-12-22 22:48:58.825', 18596931, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('82efd346-0601-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', 'startevent1', NULL, NULL, '发起流程', 'startEvent', NULL, '2018-12-22 23:51:57.300', '2018-12-22 23:51:57.300', 0, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('82efd347-0601-11e9-8544-00163e2e65eb', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', 'deptLeaderAudit', '82efd348-0601-11e9-8544-00163e2e65eb', NULL, '部门领导审批', 'userTask', 'dept', '2018-12-22 23:51:57.300', '2018-12-22 23:59:25.903', 448603, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('8e53f9cd-0602-11e9-93df-c85b7643dd9e', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', 'exclusivegateway5', NULL, NULL, 'Exclusive Gateway', 'exclusiveGateway', NULL, '2018-12-22 23:59:25.908', '2018-12-22 23:59:25.922', 14, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('8e561cae-0602-11e9-93df-c85b7643dd9e', 2, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', 'hrAudit', '8e561caf-0602-11e9-93df-c85b7643dd9e', NULL, '人事审批', 'userTask', 'jsitehr', '2018-12-22 23:59:25.922', NULL, NULL, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('b6cb3603-05f8-11e9-8951-c85b7643dd9e', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'exclusivegateway5', NULL, NULL, 'Exclusive Gateway', 'exclusiveGateway', NULL, '2018-12-22 22:48:58.831', '2018-12-22 22:48:58.851', 20, NULL, '');
INSERT INTO `ACT_HI_ACTINST` VALUES ('b6ce4344-05f8-11e9-8951-c85b7643dd9e', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', 'hrAudit', 'b6ce6a55-05f8-11e9-8951-c85b7643dd9e', NULL, '人事审批', 'userTask', 'jsitehr', '2018-12-22 22:48:58.851', '2018-12-22 23:14:54.491', 1555640, NULL, '');

-- ----------------------------
-- Table structure for ACT_HI_ATTACHMENT
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_ATTACHMENT`;
CREATE TABLE `ACT_HI_ATTACHMENT`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `URL_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONTENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_HI_COMMENT
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_COMMENT`;
CREATE TABLE `ACT_HI_COMMENT`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACTION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `MESSAGE_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `FULL_MSG_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_COMMENT
-- ----------------------------
INSERT INTO `ACT_HI_COMMENT` VALUES ('45ed562e-05fc-11e9-8544-00163e2e65eb', 'event', '2018-12-22 23:14:27.459', NULL, 'b6ce6a55-05f8-11e9-8951-c85b7643dd9e', NULL, 'AddUserLink', 'jsitehr_|_assignee', NULL);
INSERT INTO `ACT_HI_COMMENT` VALUES ('560116ff-05fc-11e9-8544-00163e2e65eb', 'comment', '2018-12-22 23:14:54.432', NULL, 'b6ce6a55-05f8-11e9-8951-c85b7643dd9e', '6a2402bc-05cd-11e9-8544-00163e2e65eb', 'AddComment', '[同意] 同意', 0x5BE5908CE6848F5D20E5908CE6848F);
INSERT INTO `ACT_HI_COMMENT` VALUES ('7b40b49a-0602-11e9-93df-c85b7643dd9e', 'event', '2018-12-22 23:58:53.905', NULL, '82efd348-0601-11e9-8544-00163e2e65eb', NULL, 'AddUserLink', 'dept_|_assignee', NULL);
INSERT INTO `ACT_HI_COMMENT` VALUES ('8e2c749b-0602-11e9-93df-c85b7643dd9e', 'comment', '2018-12-22 23:59:25.649', NULL, '82efd348-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', 'AddComment', '[同意] 我同意啦啊啊啊啊啊啊啊', 0x5BE5908CE6848F5D20E68891E5908CE6848FE595A6E5958AE5958AE5958AE5958AE5958AE5958AE5958A);
INSERT INTO `ACT_HI_COMMENT` VALUES ('9ef8b003-0602-11e9-93df-c85b7643dd9e', 'event', '2018-12-22 23:59:53.831', NULL, '8e561caf-0602-11e9-93df-c85b7643dd9e', NULL, 'AddUserLink', 'jsitehr_|_assignee', NULL);
INSERT INTO `ACT_HI_COMMENT` VALUES ('a85100f0-05f8-11e9-8951-c85b7643dd9e', 'event', '2018-12-22 22:48:34.541', NULL, '6a286f92-05cd-11e9-8544-00163e2e65eb', NULL, 'AddUserLink', 'dept_|_assignee', NULL);
INSERT INTO `ACT_HI_COMMENT` VALUES ('b6a55e81-05f8-11e9-8951-c85b7643dd9e', 'comment', '2018-12-22 22:48:58.583', NULL, '6a286f92-05cd-11e9-8544-00163e2e65eb', '6a2402bc-05cd-11e9-8544-00163e2e65eb', 'AddComment', '[同意] 同意', 0x5BE5908CE6848F5D20E5908CE6848F);

-- ----------------------------
-- Table structure for ACT_HI_DETAIL
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_DETAIL`;
CREATE TABLE `ACT_HI_DETAIL`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_ACT_INST`(`ACT_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TIME`(`TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_NAME`(`NAME_`) USING BTREE,
  INDEX `ACT_IDX_HI_DETAIL_TASK_ID`(`TASK_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_HI_IDENTITYLINK
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_IDENTITYLINK`;
CREATE TABLE `ACT_HI_IDENTITYLINK`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_IDENT_LNK_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_IDENTITYLINK
-- ----------------------------
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('20015cb0-05f4-11e9-b751-c85b7643dd9e', NULL, 'starter', 'jsite', NULL, '2018-12-22 22:16:07.864', '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('20049105-05f4-11e9-b751-c85b7643dd9e', 'dept', 'candidate', NULL, '20049104-05f4-11e9-b751-c85b7643dd9e', '2018-12-22 22:16:07.884', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('45eabe1c-05fc-11e9-8544-00163e2e65eb', NULL, 'assignee', 'jsitehr', 'b6ce6a55-05f8-11e9-8951-c85b7643dd9e', '2018-12-22 23:14:27.442', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('45ed562d-05fc-11e9-8544-00163e2e65eb', NULL, 'participant', 'jsitehr', NULL, '2018-12-22 23:14:27.459', '6a2402bc-05cd-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('5ef97ed6-05d6-11e9-8544-00163e2e65eb', NULL, 'starter', 'jsite', NULL, '2018-12-22 18:43:08.606', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('5ef9a5eb-05d6-11e9-8544-00163e2e65eb', 'dept', 'candidate', NULL, '5ef9a5ea-05d6-11e9-8544-00163e2e65eb', '2018-12-22 18:43:08.607', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('6a249efe-05cd-11e9-8544-00163e2e65eb', NULL, 'starter', 'jsite', NULL, '2018-12-22 17:39:01.873', '6a2402bc-05cd-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('6a2896a3-05cd-11e9-8544-00163e2e65eb', 'dept', 'candidate', NULL, '6a286f92-05cd-11e9-8544-00163e2e65eb', '2018-12-22 17:39:01.899', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('7b339538-0602-11e9-93df-c85b7643dd9e', NULL, 'assignee', 'dept', '82efd348-0601-11e9-8544-00163e2e65eb', '2018-12-22 23:58:53.819', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('7b406679-0602-11e9-93df-c85b7643dd9e', NULL, 'participant', 'dept', NULL, '2018-12-22 23:58:53.904', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('82efd344-0601-11e9-8544-00163e2e65eb', NULL, 'starter', 'jsite', NULL, '2018-12-22 23:51:57.300', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('82effa59-0601-11e9-8544-00163e2e65eb', 'dept', 'candidate', NULL, '82efd348-0601-11e9-8544-00163e2e65eb', '2018-12-22 23:51:57.301', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('8e561cb0-0602-11e9-93df-c85b7643dd9e', 'hr', 'candidate', NULL, '8e561caf-0602-11e9-93df-c85b7643dd9e', '2018-12-22 23:59:25.922', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('9eecf031-0602-11e9-93df-c85b7643dd9e', NULL, 'assignee', 'jsitehr', '8e561caf-0602-11e9-93df-c85b7643dd9e', '2018-12-22 23:59:53.754', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('9ef8b002-0602-11e9-93df-c85b7643dd9e', NULL, 'participant', 'jsitehr', NULL, '2018-12-22 23:59:53.831', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('a842f72e-05f8-11e9-8951-c85b7643dd9e', NULL, 'assignee', 'dept', '6a286f92-05cd-11e9-8544-00163e2e65eb', '2018-12-22 22:48:34.450', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('a8508bbf-05f8-11e9-8951-c85b7643dd9e', NULL, 'participant', 'dept', NULL, '2018-12-22 22:48:34.540', '6a2402bc-05cd-11e9-8544-00163e2e65eb', NULL, NULL, NULL);
INSERT INTO `ACT_HI_IDENTITYLINK` VALUES ('b6ce6a56-05f8-11e9-8951-c85b7643dd9e', 'hr', 'candidate', NULL, 'b6ce6a55-05f8-11e9-8951-c85b7643dd9e', '2018-12-22 22:48:58.852', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ACT_HI_PROCINST
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_PROCINST`;
CREATE TABLE `ACT_HI_PROCINST`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `END_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `PROC_INST_ID_`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_INST_END`(`END_TIME_`) USING BTREE,
  INDEX `ACT_IDX_HI_PRO_I_BUSKEY`(`BUSINESS_KEY_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_PROCINST
-- ----------------------------
INSERT INTO `ACT_HI_PROCINST` VALUES ('2000c06e-05f4-11e9-b751-c85b7643dd9e', 1, '2000c06e-05f4-11e9-b751-c85b7643dd9e', 'oa_leave:5b0025eaaee2458ba5bbc5678de4ecf5', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2018-12-22 22:16:07.859', NULL, NULL, 'jsite', 'startevent1', NULL, NULL, NULL, '', NULL, NULL, NULL);
INSERT INTO `ACT_HI_PROCINST` VALUES ('5ef97ed4-05d6-11e9-8544-00163e2e65eb', 1, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', 'oa_leave:c4fdeec6a2e148029d798d7b908b11f5', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2018-12-22 18:43:08.606', NULL, NULL, 'jsite', 'startevent1', NULL, NULL, NULL, '', NULL, NULL, NULL);
INSERT INTO `ACT_HI_PROCINST` VALUES ('6a2402bc-05cd-11e9-8544-00163e2e65eb', 2, '6a2402bc-05cd-11e9-8544-00163e2e65eb', 'oa_leave:6623a4f922754f9cae5d210ef8e02ce0', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2018-12-22 17:39:01.869', '2018-12-22 23:14:54.546', 20152677, 'jsite', 'startevent1', 'endevent1', NULL, NULL, '', NULL, NULL, NULL);
INSERT INTO `ACT_HI_PROCINST` VALUES ('82efd342-0601-11e9-8544-00163e2e65eb', 1, '82efd342-0601-11e9-8544-00163e2e65eb', 'oa_leave:825ebaad47eb4286a33d0e63dec47fe9', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', '2018-12-22 23:51:57.300', NULL, NULL, 'jsite', 'startevent1', NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ACT_HI_TASKINST
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_TASKINST`;
CREATE TABLE `ACT_HI_TASKINST`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `END_TIME_` datetime(3) NULL DEFAULT NULL,
  `DURATION_` bigint(20) NULL DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PRIORITY_` int(11) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_TASK_INST_PROCINST`(`PROC_INST_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_TASKINST
-- ----------------------------
INSERT INTO `ACT_HI_TASKINST` VALUES ('20049104-05f4-11e9-b751-c85b7643dd9e', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'deptLeaderAudit', '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2001d1e1-05f4-11e9-b751-c85b7643dd9e', NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, NULL, NULL, '2018-12-22 22:16:07.884', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 22:16:07.884');
INSERT INTO `ACT_HI_TASKINST` VALUES ('5ef9a5ea-05d6-11e9-8544-00163e2e65eb', 1, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'deptLeaderAudit', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '5ef97ed7-05d6-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, NULL, NULL, '2018-12-22 18:43:08.607', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 18:43:08.607');
INSERT INTO `ACT_HI_TASKINST` VALUES ('6a286f92-05cd-11e9-8544-00163e2e65eb', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'deptLeaderAudit', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, NULL, 'dept', '2018-12-22 17:39:01.898', '2018-12-22 22:48:34.426', '2018-12-22 22:48:58.778', 18596880, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 22:48:58.778');
INSERT INTO `ACT_HI_TASKINST` VALUES ('82efd348-0601-11e9-8544-00163e2e65eb', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'deptLeaderAudit', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, NULL, 'dept', '2018-12-22 23:51:57.300', '2018-12-22 23:58:53.798', '2018-12-22 23:59:25.858', 448558, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 23:59:25.858');
INSERT INTO `ACT_HI_TASKINST` VALUES ('8e561caf-0602-11e9-93df-c85b7643dd9e', 2, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'hrAudit', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd345-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, '人事审批', NULL, NULL, NULL, 'jsitehr', '2018-12-22 23:59:25.922', '2018-12-22 23:59:53.737', NULL, NULL, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 23:59:53.754');
INSERT INTO `ACT_HI_TASKINST` VALUES ('b6ce6a55-05f8-11e9-8951-c85b7643dd9e', 3, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, 'hrAudit', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a24c60f-05cd-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, '人事审批', NULL, NULL, NULL, 'jsitehr', '2018-12-22 22:48:58.852', '2018-12-22 23:14:27.438', '2018-12-22 23:14:54.482', 1555630, NULL, 50, NULL, NULL, NULL, '', '2018-12-22 23:14:54.482');

-- ----------------------------
-- Table structure for ACT_HI_VARINST
-- ----------------------------
DROP TABLE IF EXISTS `ACT_HI_VARINST`;
CREATE TABLE `ACT_HI_VARINST`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT 1,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` datetime(3) NULL DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_NAME_TYPE`(`NAME_`, `VAR_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_PROC_INST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_IDX_HI_PROCVAR_EXE`(`EXECUTION_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_HI_VARINST
-- ----------------------------
INSERT INTO `ACT_HI_VARINST` VALUES ('2000e77f-05f4-11e9-b751-c85b7643dd9e', 0, '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, 'applyUserId', 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL, '2018-12-22 22:16:07.862', '2018-12-22 22:16:07.862');
INSERT INTO `ACT_HI_VARINST` VALUES ('5ef97ed5-05d6-11e9-8544-00163e2e65eb', 0, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, 'applyUserId', 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL, '2018-12-22 18:43:08.606', '2018-12-22 18:43:08.606');
INSERT INTO `ACT_HI_VARINST` VALUES ('6a2429cd-05cd-11e9-8544-00163e2e65eb', 0, '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a2402bc-05cd-11e9-8544-00163e2e65eb', NULL, 'applyUserId', 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL, '2018-12-22 17:39:01.872', '2018-12-22 17:39:01.872');
INSERT INTO `ACT_HI_VARINST` VALUES ('82efd343-0601-11e9-8544-00163e2e65eb', 0, '82efd342-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, 'applyUserId', 'string', NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL, '2018-12-22 23:51:57.300', '2018-12-22 23:51:57.300');
INSERT INTO `ACT_HI_VARINST` VALUES ('8e4553cc-0602-11e9-93df-c85b7643dd9e', 0, '82efd342-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, 'auditPass', 'boolean', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-12-22 23:59:25.814', '2018-12-22 23:59:25.814');
INSERT INTO `ACT_HI_VARINST` VALUES ('b6bb7e92-05f8-11e9-8951-c85b7643dd9e', 1, '6a2402bc-05cd-11e9-8544-00163e2e65eb', '6a2402bc-05cd-11e9-8544-00163e2e65eb', NULL, 'auditPass', 'boolean', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2018-12-22 22:48:58.734', '2018-12-22 23:14:54.468');

-- ----------------------------
-- Table structure for ACT_ID_BYTEARRAY
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_BYTEARRAY`;
CREATE TABLE `ACT_ID_BYTEARRAY`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTES_` longblob NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_GROUP
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_GROUP`;
CREATE TABLE `ACT_ID_GROUP`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_INFO
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_INFO`;
CREATE TABLE `ACT_ID_INFO`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PASSWORD_` longblob NULL,
  `PARENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_MEMBERSHIP
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_MEMBERSHIP`;
CREATE TABLE `ACT_ID_MEMBERSHIP`  (
  `USER_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`, `GROUP_ID_`) USING BTREE,
  INDEX `ACT_FK_MEMB_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `ACT_ID_GROUP` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `ACT_ID_USER` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_PRIV
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_PRIV`;
CREATE TABLE `ACT_ID_PRIV`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PRIV_NAME`(`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_PRIV_MAPPING
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_PRIV_MAPPING`;
CREATE TABLE `ACT_ID_PRIV_MAPPING`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PRIV_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_PRIV_MAPPING`(`PRIV_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_PRIV_GROUP`(`GROUP_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_PRIV_MAPPING` FOREIGN KEY (`PRIV_ID_`) REFERENCES `ACT_ID_PRIV` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_PROPERTY
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_PROPERTY`;
CREATE TABLE `ACT_ID_PROPERTY`  (
  `NAME_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`NAME_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_ID_PROPERTY
-- ----------------------------
INSERT INTO `ACT_ID_PROPERTY` VALUES ('schema.version', '6.4.0.0', 1);

-- ----------------------------
-- Table structure for ACT_ID_TOKEN
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_TOKEN`;
CREATE TABLE `ACT_ID_TOKEN`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TOKEN_VALUE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATE_` timestamp(3) NULL DEFAULT NULL,
  `IP_ADDRESS_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_AGENT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TOKEN_DATA_` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_ID_USER
-- ----------------------------
DROP TABLE IF EXISTS `ACT_ID_USER`;
CREATE TABLE `ACT_ID_USER`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `FIRST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LAST_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DISPLAY_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EMAIL_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PWD_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PICTURE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_PROCDEF_INFO
-- ----------------------------
DROP TABLE IF EXISTS `ACT_PROCDEF_INFO`;
CREATE TABLE `ACT_PROCDEF_INFO`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_IDX_INFO_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_INFO_JSON_BA`(`INFO_JSON_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RE_DEPLOYMENT
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RE_DEPLOYMENT`;
CREATE TABLE `ACT_RE_DEPLOYMENT`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_DEPLOYMENT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RE_DEPLOYMENT
-- ----------------------------
INSERT INTO `ACT_RE_DEPLOYMENT` VALUES ('4840e703-f799-11e8-85d0-c85b7643dd9e', '请假流程', NULL, 'leave', '', '2018-12-04 15:50:34.907', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RE_DEPLOYMENT` VALUES ('f6fa5033-ec6d-11e8-bf0c-c85b7643dd9e', '请假流程', NULL, 'leave', '', '2018-11-20 10:42:47.399', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ACT_RE_MODEL
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RE_MODEL`;
CREATE TABLE `ACT_RE_MODEL`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) NULL DEFAULT NULL,
  `META_INFO_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE`(`EDITOR_SOURCE_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_SOURCE_EXTRA`(`EDITOR_SOURCE_EXTRA_VALUE_ID_`) USING BTREE,
  INDEX `ACT_FK_MODEL_DEPLOYMENT`(`DEPLOYMENT_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `ACT_RE_DEPLOYMENT` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RE_PROCDEF
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RE_PROCDEF`;
CREATE TABLE `ACT_RE_PROCDEF`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) NULL DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `ENGINE_VERSION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_FROM_ROOT_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DERIVED_VERSION_` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID_`) USING BTREE,
  UNIQUE INDEX `ACT_UNIQ_PROCDEF`(`KEY_`, `VERSION_`, `DERIVED_VERSION_`, `TENANT_ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RE_PROCDEF
-- ----------------------------
INSERT INTO `ACT_RE_PROCDEF` VALUES ('leave:1:f73bc606-ec6d-11e8-bf0c-c85b7643dd9e', 2, 'leave', '请假流程', 'leave', 1, 'f6fa5033-ec6d-11e8-bf0c-c85b7643dd9e', '请假流程.bpmn20.xml', '请假流程.leave.png', '请假流程演示', 1, 1, 1, '', NULL, NULL, NULL, 0);
INSERT INTO `ACT_RE_PROCDEF` VALUES ('leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', 2, 'leave', '请假流程', 'leave', 2, '4840e703-f799-11e8-85d0-c85b7643dd9e', '请假流程.bpmn20.xml', '请假流程.leave.png', '请假流程演示', 1, 1, 1, '', NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for ACT_RU_DEADLETTER_JOB
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_DEADLETTER_JOB`;
CREATE TABLE `ACT_RU_DEADLETTER_JOB`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_DEADLETTER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_DJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_DEADLETTER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_EVENT_SUBSCR
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_EVENT_SUBSCR`;
CREATE TABLE `ACT_RU_EVENT_SUBSCR`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CONFIGURATION_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EVENT_SUBSCR_CONFIG_`(`CONFIGURATION_`) USING BTREE,
  INDEX `ACT_FK_EVENT_EXEC`(`EXECUTION_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_EXECUTION
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_EXECUTION`;
CREATE TABLE `ACT_RU_EXECUTION`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) NULL DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) NULL DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) NULL DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) NULL DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_ACT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `START_TIME_` datetime(3) NULL DEFAULT NULL,
  `START_USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) NULL DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) NULL DEFAULT NULL,
  `TASK_COUNT_` int(11) NULL DEFAULT NULL,
  `JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) NULL DEFAULT NULL,
  `VAR_COUNT_` int(11) NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) NULL DEFAULT NULL,
  `CALLBACK_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CALLBACK_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_EXEC_BUSKEY`(`BUSINESS_KEY_`) USING BTREE,
  INDEX `ACT_IDC_EXEC_ROOT`(`ROOT_PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_PARENT`(`PARENT_ID_`) USING BTREE,
  INDEX `ACT_FK_EXE_SUPER`(`SUPER_EXEC_`) USING BTREE,
  INDEX `ACT_FK_EXE_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RU_EXECUTION
-- ----------------------------
INSERT INTO `ACT_RU_EXECUTION` VALUES ('2000c06e-05f4-11e9-b751-c85b7643dd9e', 1, '2000c06e-05f4-11e9-b751-c85b7643dd9e', 'oa_leave:5b0025eaaee2458ba5bbc5678de4ecf5', NULL, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, 1, 0, 1, 0, 0, 1, NULL, '', NULL, 'startevent1', '2018-12-22 22:16:07.859', 'jsite', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `ACT_RU_EXECUTION` VALUES ('2001d1e1-05f4-11e9-b751-c85b7643dd9e', 1, '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, '2000c06e-05f4-11e9-b751-c85b7643dd9e', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '2000c06e-05f4-11e9-b751-c85b7643dd9e', 'deptLeaderAudit', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2018-12-22 22:16:07.866', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `ACT_RU_EXECUTION` VALUES ('5ef97ed4-05d6-11e9-8544-00163e2e65eb', 1, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', 'oa_leave:c4fdeec6a2e148029d798d7b908b11f5', NULL, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, 1, 0, 1, 0, 0, 1, NULL, '', NULL, 'startevent1', '2018-12-22 18:43:08.606', 'jsite', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `ACT_RU_EXECUTION` VALUES ('5ef97ed7-05d6-11e9-8544-00163e2e65eb', 1, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', 'deptLeaderAudit', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2018-12-22 18:43:08.606', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `ACT_RU_EXECUTION` VALUES ('82efd342-0601-11e9-8544-00163e2e65eb', 1, '82efd342-0601-11e9-8544-00163e2e65eb', 'oa_leave:825ebaad47eb4286a33d0e63dec47fe9', NULL, 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', NULL, 1, 0, 1, 0, 0, 1, NULL, '', NULL, 'startevent1', '2018-12-22 23:51:57.300', 'jsite', NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);
INSERT INTO `ACT_RU_EXECUTION` VALUES ('82efd345-0601-11e9-8544-00163e2e65eb', 2, '82efd342-0601-11e9-8544-00163e2e65eb', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', 'hrAudit', 1, 0, 0, 0, 0, 1, NULL, '', NULL, NULL, '2018-12-22 23:51:57.300', NULL, NULL, 1, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for ACT_RU_HISTORY_JOB
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_HISTORY_JOB`;
CREATE TABLE `ACT_RU_HISTORY_JOB`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ADV_HANDLER_CFG_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_IDENTITYLINK
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_IDENTITYLINK`;
CREATE TABLE `ACT_RU_IDENTITYLINK`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `GROUP_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `USER_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_USER`(`USER_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_GROUP`(`GROUP_ID_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_IDENT_LNK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_ATHRZ_PROCEDEF`(`PROC_DEF_ID_`) USING BTREE,
  INDEX `ACT_FK_TSKASS_TASK`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_IDL_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `ACT_RU_TASK` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RU_IDENTITYLINK
-- ----------------------------
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('20015cb0-05f4-11e9-b751-c85b7643dd9e', 1, NULL, 'starter', 'jsite', NULL, '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('20049105-05f4-11e9-b751-c85b7643dd9e', 1, 'dept', 'candidate', NULL, '20049104-05f4-11e9-b751-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('5ef97ed6-05d6-11e9-8544-00163e2e65eb', 1, NULL, 'starter', 'jsite', NULL, '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('5ef9a5eb-05d6-11e9-8544-00163e2e65eb', 1, 'dept', 'candidate', NULL, '5ef9a5ea-05d6-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('7b406679-0602-11e9-93df-c85b7643dd9e', 1, NULL, 'participant', 'dept', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('82efd344-0601-11e9-8544-00163e2e65eb', 1, NULL, 'starter', 'jsite', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('8e561cb0-0602-11e9-93df-c85b7643dd9e', 1, 'hr', 'candidate', NULL, '8e561caf-0602-11e9-93df-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ACT_RU_IDENTITYLINK` VALUES ('9ef8b002-0602-11e9-93df-c85b7643dd9e', 1, NULL, 'participant', 'jsitehr', NULL, '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ACT_RU_JOB
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_JOB`;
CREATE TABLE `ACT_RU_JOB`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_JOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_SUSPENDED_JOB
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_SUSPENDED_JOB`;
CREATE TABLE `ACT_RU_SUSPENDED_JOB`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_SUSPENDED_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_SJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_SUSPENDED_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_TASK
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_TASK`;
CREATE TABLE `ACT_RU_TASK`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ASSIGNEE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DELEGATION_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PRIORITY_` int(11) NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) NULL DEFAULT NULL,
  `CATEGORY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  `FORM_KEY_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) NULL DEFAULT NULL,
  `VAR_COUNT_` int(11) NULL DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) NULL DEFAULT NULL,
  `SUB_TASK_COUNT_` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TASK_CREATE`(`CREATE_TIME_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TASK_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TASK_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  INDEX `ACT_FK_TASK_PROCDEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RU_TASK
-- ----------------------------
INSERT INTO `ACT_RU_TASK` VALUES ('20049104-05f4-11e9-b751-c85b7643dd9e', 1, '2001d1e1-05f4-11e9-b751-c85b7643dd9e', '2000c06e-05f4-11e9-b751-c85b7643dd9e', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, 'deptLeaderAudit', NULL, NULL, NULL, 50, '2018-12-22 22:16:07.873', NULL, NULL, 1, '', NULL, NULL, 1, 0, 1, 0);
INSERT INTO `ACT_RU_TASK` VALUES ('5ef9a5ea-05d6-11e9-8544-00163e2e65eb', 1, '5ef97ed7-05d6-11e9-8544-00163e2e65eb', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL, '部门领导审批', NULL, NULL, 'deptLeaderAudit', NULL, NULL, NULL, 50, '2018-12-22 18:43:08.607', NULL, NULL, 1, '', NULL, NULL, 1, 0, 1, 0);
INSERT INTO `ACT_RU_TASK` VALUES ('8e561caf-0602-11e9-93df-c85b7643dd9e', 2, '82efd345-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', 'leave:2:487abbb6-f799-11e8-85d0-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL, '人事审批', NULL, NULL, 'hrAudit', NULL, 'jsitehr', NULL, 50, '2018-12-22 23:59:25.922', NULL, NULL, 1, '', NULL, '2018-12-22 23:59:53.737', 1, 0, 1, 0);

-- ----------------------------
-- Table structure for ACT_RU_TIMER_JOB
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_TIMER_JOB`;
CREATE TABLE `ACT_RU_TIMER_JOB`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) NULL DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_DEFINITION_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `RETRIES_` int(11) NULL DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CUSTOM_VALUES_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `TENANT_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '',
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_EXCEPTION_STACK_ID`(`EXCEPTION_STACK_ID_`) USING BTREE,
  INDEX `ACT_IDX_TIMER_JOB_CUSTOM_VALUES_ID`(`CUSTOM_VALUES_ID_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SUB_SCOPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_TJOB_SCOPE_DEF`(`SCOPE_DEFINITION_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_EXECUTION`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROCESS_INSTANCE`(`PROCESS_INSTANCE_ID_`) USING BTREE,
  INDEX `ACT_FK_TIMER_JOB_PROC_DEF`(`PROC_DEF_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_TIMER_JOB_CUSTOM_VALUES` FOREIGN KEY (`CUSTOM_VALUES_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `ACT_RE_PROCDEF` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ACT_RU_VARIABLE
-- ----------------------------
DROP TABLE IF EXISTS `ACT_RU_VARIABLE`;
CREATE TABLE `ACT_RU_VARIABLE`  (
  `ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `REV_` int(11) NULL DEFAULT NULL,
  `TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TASK_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SUB_SCOPE_ID_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `SCOPE_TYPE_` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `DOUBLE_` double NULL DEFAULT NULL,
  `LONG_` bigint(20) NULL DEFAULT NULL,
  `TEXT_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `TEXT2_` varchar(4000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ID_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SCOPE_ID_TYPE`(`SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_IDX_RU_VAR_SUB_ID_TYPE`(`SUB_SCOPE_ID_`, `SCOPE_TYPE_`) USING BTREE,
  INDEX `ACT_FK_VAR_BYTEARRAY`(`BYTEARRAY_ID_`) USING BTREE,
  INDEX `ACT_IDX_VARIABLE_TASK_ID`(`TASK_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_EXE`(`EXECUTION_ID_`) USING BTREE,
  INDEX `ACT_FK_VAR_PROCINST`(`PROC_INST_ID_`) USING BTREE,
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `ACT_GE_BYTEARRAY` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `ACT_RU_EXECUTION` (`id_`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ACT_RU_VARIABLE
-- ----------------------------
INSERT INTO `ACT_RU_VARIABLE` VALUES ('2000e77f-05f4-11e9-b751-c85b7643dd9e', 1, 'string', 'applyUserId', '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2000c06e-05f4-11e9-b751-c85b7643dd9e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL);
INSERT INTO `ACT_RU_VARIABLE` VALUES ('5ef97ed5-05d6-11e9-8544-00163e2e65eb', 1, 'string', 'applyUserId', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL);
INSERT INTO `ACT_RU_VARIABLE` VALUES ('82efd343-0601-11e9-8544-00163e2e65eb', 1, 'string', 'applyUserId', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jsite', NULL);
INSERT INTO `ACT_RU_VARIABLE` VALUES ('8e4553cc-0602-11e9-93df-c85b7643dd9e', 1, 'boolean', 'auditPass', '82efd342-0601-11e9-8544-00163e2e65eb', '82efd342-0601-11e9-8544-00163e2e65eb', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for gen_scheme
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_scheme_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '生成方案' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.jsite.modules', 'test', '', '树结构生成', '树结构', 'liuruijun', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2018-11-20 11:18:53', '', '0');
INSERT INTO `gen_scheme` VALUES ('9c9c0fa251e2465bac25aaa659119b16', '请假流程', 'flow', 'com.jsite.modules', 'aa', '', '请假流程', '请假流程', 'liuruijun', '67aa839ada674dbe96bc74b317f10f75', '1', '2018-08-29 12:48:36', '1', '2018-08-30 16:43:55', '', '0');
INSERT INTO `gen_scheme` VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.jsite.modules', 'test', 'danbiao', '单表生成', '单表生成', 'liuruijun', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2018-12-22 10:47:39', '', '0');
INSERT INTO `gen_scheme` VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.jsite.modules', 'test', '', '主子表生成', '主子表', 'liuruijun', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2018-11-20 11:18:35', '', '0');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_table_name`(`name`) USING BTREE,
  INDEX `gen_table_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '业务表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');
INSERT INTO `gen_table` VALUES ('67aa839ada674dbe96bc74b317f10f75', 'oa_leave', '请假流程表', 'OaLeave', '', '', '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', '', '0');
INSERT INTO `gen_table` VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table` VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', '', '', '1', '2013-08-12 13:10:05', '1', '2018-08-29 10:42:40', '', '0');
INSERT INTO `gen_table` VALUES ('f6e4dafaa72f4c509636484715f33a96', 'test_tree', '树结构表', 'TestTree', NULL, NULL, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', NULL, '0');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_row` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否独占一行(流程页面布局使用)',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10, 0) NULL DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_table_column_table_id`(`gen_table_id`) USING BTREE,
  INDEX `gen_table_column_name`(`name`) USING BTREE,
  INDEX `gen_table_column_sort`(`sort`) USING BTREE,
  INDEX `gen_table_column_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '业务表字段' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('109e23fedef84b5083f924fbbc46d2b7', '6e05c389f3c6415ea34e55e9dfb28934', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', NULL, NULL, NULL, '1', '1', '1', NULL, '=', 'dateselect', '', NULL, 50, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('137318031851419492867f49cc50d754', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_by', '更新者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'updateBy.id', '0', '0', '0', '1', '1', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('13fc1a1671af468684dc325443e01442', '67aa839ada674dbe96bc74b317f10f75', 'reason', '请假理由', 'varchar(255)', 'String', 'reason', '1', '0', '1', '1', '1', '0', '0', '=', 'textarea', '', NULL, 60, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('185fe2c1ce3e4ca3b2c5278ad4180876', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '0', '1', '1', '1', '0', '0', '=', 'input', '', NULL, 60, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1aebdd243c1f4a4faba4e1b0fe927332', '67aa839ada674dbe96bc74b317f10f75', 'apply_time', '申请时间', 'datetime', 'java.util.Date', 'applyTime', '0', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('1fd4616c314240f490570cf8846b1df2', '67aa839ada674dbe96bc74b317f10f75', 'id', '编号', 'varchar(64)', 'String', 'id', '0', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('216f7b2d0fbb4fd09b81605bde8012e0', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_by', '创建者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'createBy.id', '0', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 80, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2658b3918d6d468f9ad7abb650b90c4c', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 130, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('2f3405a2dd7f4bef974aa1df9bcf571e', 'e1a0555aeab445af98769e5cd3a759b8', 'test_data_main_id', '业务主表ID', 'varchar(64)', 'String', 'testDataMainId', NULL, NULL, '1', '1', '1', NULL, NULL, '=', 'input', '', NULL, 20, '1', '2018-12-21 09:44:10', '1', '2018-12-21 09:44:10', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('36de759b257248429a07556074263a0e', '67aa839ada674dbe96bc74b317f10f75', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '0', '1', '1', '0', '0', '0', '=', 'textarea', '', NULL, 140, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('39f87fec41f340f4a405e617d2e644a6', '6e05c389f3c6415ea34e55e9dfb28934', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', NULL, NULL, '1', '1', '1', '1', NULL, '=', 'dateselect', '', NULL, 70, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('40175428396a42f989015e99b3d7db65', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'area_id', '归属区域', 'varchar(64)', 'com.jsite.modules.sys.entity.Area', 'area.id|name', '0', '0', '1', '1', '1', '0', '0', '=', 'areaselect', '', NULL, 40, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('46ab9bffa1494ca29f3cc6e3ff5d196b', '6e05c389f3c6415ea34e55e9dfb28934', 'name', '名称', 'varchar(100)', 'String', 'name', NULL, NULL, '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('55771d60b73148018612ed169c4ff85d', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 50, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('5d28f1ad944541d2b0507e0ef5090dcb', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 90, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('60840f1bd21949f382ecc76a556da9fb', '6e05c389f3c6415ea34e55e9dfb28934', 'id', '编号', 'varchar(64)', 'String', 'id', NULL, '1', '1', '1', '1', '1', '1', '=', 'input', '', NULL, 10, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('67182329980c4add89492a37ed952aec', 'e1a0555aeab445af98769e5cd3a759b8', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', NULL, NULL, NULL, '1', NULL, NULL, NULL, '=', 'dateselect', '', NULL, 50, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('682fb7315b3e43dea8ec4a3419924357', '67aa839ada674dbe96bc74b317f10f75', 'proc_ins_id', '流程实例编号', 'varchar(64)', 'String', 'procInsId', '0', '0', '1', '1', '0', '0', '0', '=', 'input', '', NULL, 20, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('695b6a1e4ccf41d89c7eab239a8eb4c0', '67aa839ada674dbe96bc74b317f10f75', 'leave_type', '请假类型', 'varchar(20)', 'String', 'leaveType', '0', '0', '1', '1', '1', '0', '0', '=', 'select', 'oa_leave_type', NULL, 50, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('73dfd0676f8a46c8a3206e1e25d7353a', '6e05c389f3c6415ea34e55e9dfb28934', 'update_by', '更新者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'updateBy.id', NULL, NULL, '1', '1', '1', '1', NULL, '=', 'input', '', NULL, 60, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7eff6d1fb5834242980f1ea16f88d0ff', 'e1a0555aeab445af98769e5cd3a759b8', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', NULL, NULL, '1', '1', '1', '1', NULL, '=', 'textarea', '', NULL, 80, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('7f4205a1292e4c689ec8b2550c0ee02b', '6e05c389f3c6415ea34e55e9dfb28934', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', NULL, NULL, NULL, '1', NULL, NULL, NULL, '=', 'radiobox', 'del_flag', NULL, 90, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('8156527a6d334d99b281e4fa3593b4ff', '67aa839ada674dbe96bc74b317f10f75', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 130, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('91cc056f39a1439eb1cf8244239cbab5', '67aa839ada674dbe96bc74b317f10f75', 'dept_lead_text', '部门经理意见', 'varchar(255)', 'String', 'deptLeadText', '1', '0', '1', '1', '0', '0', '0', '=', 'input', '', NULL, 70, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9d189409e4b04cdc9d875fd37e4bb2f4', '6e05c389f3c6415ea34e55e9dfb28934', 'test_data_main_id', '业务主表ID', 'varchar(64)', 'String', 'testDataMainId', NULL, NULL, '1', '1', '1', '1', '1', '=', 'input', '', NULL, 20, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('9eeb04c6e4e04057b006cd99aeafb67f', 'e1a0555aeab445af98769e5cd3a759b8', 'create_by', '创建者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'createBy.id', NULL, NULL, NULL, '1', NULL, NULL, NULL, '=', 'input', '', NULL, 40, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('a139ab434e664fcc82cccdb5db1bf5d4', '67aa839ada674dbe96bc74b317f10f75', 'start_time', '开始时间', 'datetime', 'java.util.Date', 'startTime', '0', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 30, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('a9ba2ee1047d4a6298eee492c1957bd7', 'e1a0555aeab445af98769e5cd3a759b8', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', NULL, NULL, NULL, '1', '1', '1', NULL, '=', 'dateselect', '', NULL, 70, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ac36e2526e01408396cc0fa11827f568', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'office_id', '归属部门', 'varchar(64)', 'com.jsite.modules.sys.entity.Office', 'office.id|name', '0', '0', '1', '1', '1', '0', '0', '=', 'officeselect', '', NULL, 30, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('aff5abcf7b4d456585bca410729f46aa', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'user_id', '归属用户', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'user.id|name', '0', '0', '1', '1', '1', '0', '0', '=', 'userselect', '', NULL, 20, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('b56b0dad527c4dd297a64498593e39a4', 'e1a0555aeab445af98769e5cd3a759b8', 'id', '编号', 'varchar(64)', 'String', 'id', NULL, '1', NULL, '1', NULL, NULL, NULL, '=', 'input', '', NULL, 10, '1', '2018-12-21 09:44:10', '1', '2018-12-21 09:44:10', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('c09c6661bb414c709175f699bf151bdb', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'in_date', '加入日期', 'date', 'java.util.Date', 'inDate', '0', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 70, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('c30f6f46c5af4bd5887758a7bb3bd4cb', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'id', '编号', 'varchar(64)', 'String', 'id', '0', '1', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 10, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('c92aa0e5b2ad40d79c186712cd2a6219', '67aa839ada674dbe96bc74b317f10f75', 'hr_text', '人资意见', 'varchar(255)', 'String', 'hrText', '1', '0', '1', '1', '0', '0', '0', '=', 'input', '', NULL, 80, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d1389a04cf3949e58bb3adae9b144f32', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', NULL, 120, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('d37615fd13db472daa75df6e6bd89b81', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', NULL, 110, '1', '2018-08-29 10:42:40', '1', '2018-08-29 10:42:40', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('da139d71edc14dfa82f1dbd9ea0fe48a', '67aa839ada674dbe96bc74b317f10f75', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', NULL, 150, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e04c6ebd8f4040e4adda96e7a61f4120', 'e1a0555aeab445af98769e5cd3a759b8', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', NULL, NULL, NULL, '1', NULL, NULL, NULL, '=', 'radiobox', 'del_flag', NULL, 90, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e53223608a7641fb845504d74a225eaa', '67aa839ada674dbe96bc74b317f10f75', 'update_by', '更新者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'updateBy.id', '0', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 120, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('e893aae5259e4980be325330d1b68ed4', '67aa839ada674dbe96bc74b317f10f75', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', NULL, 110, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ec9df9ffdf2a4b388e96970766cc9bcd', '6e05c389f3c6415ea34e55e9dfb28934', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', NULL, NULL, '1', '1', '1', '1', NULL, '=', 'textarea', '', NULL, 80, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('ee132c6c8a9f4b719333b31d300a7f0b', '6e05c389f3c6415ea34e55e9dfb28934', 'create_by', '创建者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'createBy.id', NULL, NULL, NULL, '1', '1', NULL, NULL, '=', 'input', '', NULL, 40, '1', '2018-12-21 22:18:47', '1', '2018-12-21 23:11:47', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f1632f6e5664473aaffb9ba40bb6a158', 'e1a0555aeab445af98769e5cd3a759b8', 'name', '名称', 'varchar(100)', 'String', 'name', NULL, NULL, '1', '1', '1', '1', '1', 'like', 'input', '', NULL, 30, '1', '2018-12-21 09:44:10', '1', '2018-12-21 09:44:10', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('f8b9fe2ab4d44cdbb72b4f5c8ef8da93', '67aa839ada674dbe96bc74b317f10f75', 'create_by', '创建者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'createBy.id', '0', '0', '0', '1', '0', '0', '0', '=', 'input', '', NULL, 100, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('faf0bc828b8441be963ea3d25d2f01fd', '67aa839ada674dbe96bc74b317f10f75', 'end_time', '结束时间', 'datetime', 'java.util.Date', 'endTime', '0', '0', '1', '1', '1', '0', '0', '=', 'dateselect', '', NULL, 40, '1', '2018-08-29 12:45:46', '1', '2018-08-29 14:18:57', NULL, '0');
INSERT INTO `gen_table_column` VALUES ('fcb6d387a63c4b7c9dc6c0534143386e', 'e1a0555aeab445af98769e5cd3a759b8', 'update_by', '更新者', 'varchar(64)', 'com.jsite.modules.sys.entity.User', 'updateBy.id', NULL, NULL, NULL, '1', '1', NULL, NULL, '=', 'input', '', NULL, 60, '1', '2018-12-21 09:44:11', '1', '2018-12-21 09:44:11', NULL, '0');

-- ----------------------------
-- Table structure for gen_template
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '生成文件名',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '内容',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新者',
  `update_date` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `gen_template_del_falg`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '代码模板表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_leave
-- ----------------------------
DROP TABLE IF EXISTS `oa_leave`;
CREATE TABLE `oa_leave`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `proc_ins_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '请假理由',
  `dept_lead_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `hr_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `apply_time` datetime(0) NULL DEFAULT NULL COMMENT '申请时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oa_leave_create_by`(`create_by`) USING BTREE,
  INDEX `oa_leave_process_instance_id`(`proc_ins_id`) USING BTREE,
  INDEX `oa_leave_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '请假流程表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oa_leave
-- ----------------------------
INSERT INTO `oa_leave` VALUES ('5b0025eaaee2458ba5bbc5678de4ecf5', '2000c06e-05f4-11e9-b751-c85b7643dd9e', '2018-12-22 22:15:55', '2018-12-24 22:15:58', '1', '测试', NULL, NULL, '2018-12-22 22:16:08', '1', '2018-12-22 22:16:08', '1', '2018-12-22 22:16:08', NULL, '0');
INSERT INTO `oa_leave` VALUES ('6623a4f922754f9cae5d210ef8e02ce0', '6a2402bc-05cd-11e9-8544-00163e2e65eb', '2018-12-22 17:38:56', '2018-12-29 17:39:01', '1', '1', '[同意] 同意', '[同意] 同意', '2018-12-22 17:39:02', '1', '2018-12-22 17:39:02', '1', '2018-12-22 17:39:02', NULL, '0');
INSERT INTO `oa_leave` VALUES ('825ebaad47eb4286a33d0e63dec47fe9', '82efd342-0601-11e9-8544-00163e2e65eb', '2018-10-02 23:51:48', '2018-12-22 23:51:51', '1', '//。', '[同意] 我同意啦啊啊啊啊啊啊啊', NULL, '2018-12-22 23:51:57', '1', '2018-12-22 23:51:57', '1', '2018-12-22 23:51:57', NULL, '0');
INSERT INTO `oa_leave` VALUES ('c4fdeec6a2e148029d798d7b908b11f5', '5ef97ed4-05d6-11e9-8544-00163e2e65eb', '2018-12-06 18:43:01', '2018-12-12 18:43:03', '1', 'dfffff', NULL, NULL, '2018-12-22 18:43:09', '1', '2018-12-22 18:43:09', '1', '2018-12-22 18:43:09', NULL, '0');

-- ----------------------------
-- Table structure for oa_notify
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify`;
CREATE TABLE `oa_notify`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '类型',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '附件',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oa_notify_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知通告' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_notify_record
-- ----------------------------
DROP TABLE IF EXISTS `oa_notify_record`;
CREATE TABLE `oa_notify_record`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '阅读标记',
  `read_date` date NULL DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oa_notify_record_notify_id`(`oa_notify_id`) USING BTREE,
  INDEX `oa_notify_record_user_id`(`user_id`) USING BTREE,
  INDEX `oa_notify_record_read_flag`(`read_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '通知通告发送记录' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oa_test_audit
-- ----------------------------
DROP TABLE IF EXISTS `oa_test_audit`;
CREATE TABLE `oa_test_audit`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `OA_TEST_AUDIT_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '审批流程测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '是否树形叶子节点（0:不是,1:是）',
  `tree_level` decimal(4, 0) NULL DEFAULT NULL COMMENT '树形层级(0:根级)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_area_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_area_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '区域表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('015345144e9e40d6bbe832a9f1cba1f7', 'd36735ce07044a49ad205854fb2ca078', '0,d36735ce07044a49ad205854fb2ca078,', 'California', 10, '01', '2', '1', '2018-06-20 17:32:51', '1', '2018-06-20 17:32:51', '', '0', '1', 1);
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', 10, '1', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', '', '0', '0', 0);
INSERT INTO `sys_area` VALUES ('3fbaf3a3f58a47118f13976cb2e2544d', 'd36735ce07044a49ad205854fb2ca078', '0,d36735ce07044a49ad205854fb2ca078,', '佛罗里达州', 20, '02', '2', '1', '2018-06-20 17:38:08', '1', '2018-06-20 17:38:08', '', '0', '1', 1);
INSERT INTO `sys_area` VALUES ('576f42bae8184b4cbb39aa4640323a5f', '1', '0,1,', 'aaaaaaabb', 30, '', '2', '1', '2018-12-10 14:27:27', '1', '2018-12-10 14:27:27', '', '1', '1', 1);
INSERT INTO `sys_area` VALUES ('623c16905c3b4854b131fb8f034364d4', '1', '0,1,', '上海', 30, '34243', '2', '1', '2018-12-10 13:47:40', '1', '2018-12-10 13:47:40', '', '1', '1', 1);
INSERT INTO `sys_area` VALUES ('95d742f57c1f44af9bccac34ce0dacb4', '1', '0,1,', 'aaaaaaa', 30, '', '2', '1', '2018-12-10 14:01:28', '1', '2018-12-10 14:01:28', '', '1', '1', 1);
INSERT INTO `sys_area` VALUES ('d36735ce07044a49ad205854fb2ca078', '0', '0,', '美国', 30, '2', '1', '1', '2018-06-20 15:36:19', '1', '2018-06-20 15:36:19', '', '0', '0', 0);
INSERT INTO `sys_area` VALUES ('da2da01621b64be5a85b07a8c883228f', '1', '0,1,', '上海', 30, '34243', '2', '1', '2018-12-10 14:01:09', '1', '2018-12-10 14:01:09', '', '0', '1', 1);
INSERT INTO `sys_area` VALUES ('f762fb569d8445f28a226a9b831cfb90', '1', '0,1,', '北京', 30, '150', '2', '1', '2018-02-02 17:37:51', '1', '2018-11-20 10:22:36', '', '0', '1', 1);

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '数据值',
  `label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '标签名',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '类型',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '描述',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_value`(`value`) USING BTREE,
  INDEX `sys_dict_label`(`label`) USING BTREE,
  INDEX `sys_dict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.jsite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.jsite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.jsite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告\0\0', 'oa_notify_type', '通知通告类型', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告\0\0', 'oa_notify_type', '通知通告类型', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告\0\0', 'oa_notify_type', '通知通告类型', 30, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', 10, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', 20, '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份/直辖市', 'sys_area_type', '区域类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2018-06-15 14:46:37', '', '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市/州', 'sys_area_type', '区域类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2018-06-15 14:47:38', '', '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '县/区', 'sys_area_type', '区域类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2018-06-15 14:48:01', '', '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', 70, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', 80, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('26f56c93297146ca869fb1924569d5fc', '0', '停用', 'sys_user_status', '用户状态（0-停用，1-正常）', 10, '0', '1', '2018-06-29 08:40:36', '1', '2018-06-29 08:40:36', '', '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', 90, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', 100, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', 50, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('49fefff665614e80b8c0e91902f2c817', 'images/userinfobig.jpg', '默认头像', 'default_headphoto_big', '默认头像(大图)', 10, '0', '1', '2018-07-30 11:58:29', '1', '2018-07-30 13:41:11', '默认头像(原图)', '0');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', 15, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('631f38d9f5e24dc88fdb472f4855d68d', '1', '正常', 'sys_user_status', '用户状态（0-停用，1-正常）', 20, '0', '1', '2018-06-29 08:41:42', '1', '2018-06-29 08:41:42', '', '0');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('6437d5741af64dca861fe5bec7994891', '1', '显示', 'sys_show_hide', '显示-隐藏', 10, '0', '1', '2018-06-25 18:21:38', '1', '2018-06-25 18:21:38', '显示-隐藏', '0');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', 40, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', 60, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', 30, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', 40, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', 10, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('71', 'leave', '请假流程', 'act_category', '流程分类', 10, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('72', 'metting', '会议室申请流程', 'act_category', '流程分类', 20, '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', 20, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', 50, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', 60, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', 30, '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', 70, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', 80, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', 90, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', 10, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', 20, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', 30, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', 40, '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', NULL, '1');
INSERT INTO `sys_dict` VALUES ('a6aff6268f1f4d77952f3424b5e843d6', '123456', 'default_password', 'default_pass', '系统默认配置密码', 10, '0', '1', '2018-07-03 11:40:03', '1', '2018-07-03 11:40:03', '', '0');
INSERT INTO `sys_dict` VALUES ('a8a0aeb824d84d73ad1cca1bdc35c8dc', '5', '乡/镇', 'sys_area_type', '区域类型', 50, '0', '1', '2018-06-15 14:48:45', '1', '2018-06-15 14:48:45', '', '0');
INSERT INTO `sys_dict` VALUES ('c3f4554124e64c4a9cf96ebe94e55ade', '6', '村/社区', 'sys_area_type', '区域类型', 60, '0', '1', '2018-06-15 14:49:25', '1', '2018-06-15 14:49:25', '', '0');
INSERT INTO `sys_dict` VALUES ('da5b5781a8604398aea411a3949b8486', '0', '隐藏', 'sys_show_hide', '显示-隐藏', 10, '0', '1', '2018-06-25 18:22:06', '1', '2018-06-25 18:22:06', '显示-隐藏', '0');
INSERT INTO `sys_dict` VALUES ('edc2e89282bb4eeba397857a2cfb6b33', 'com.jsite.modules.oa.leave', '请假流程1', 'act_category', '请假流程111', 10, '0', '1', '2018-08-03 10:37:05', '1', '2018-08-03 10:37:05', '', '0');
INSERT INTO `sys_dict` VALUES ('ee843534a2884752bf2ebd2444551771', 'images/userinfo.jpg', '默认头像', 'default_headphoto_small', '默认头像(缩略图)', 10, '0', '1', '2018-07-30 11:52:22', '1', '2018-07-30 11:56:54', '默认小头像(缩略图)图片路径', '0');

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `file_tree_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件分类',
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '文件名称',
  `save_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '服务器文件保存名称',
  `file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文件大小',
  `path` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '文件路径',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_file
-- ----------------------------
INSERT INTO `sys_file` VALUES ('15e0f0655f0949899e6df9353654e41e', 'b7803810cc734b90a3f44643fad06bd7', 'git命令.txt', NULL, '539', 'common/b7803810cc734b90a3f44643fad06bd7\\20180727\\git命令.txt', '1', '2018-07-27 15:40:29', '1', '2018-07-27 15:40:29', NULL, '0');
INSERT INTO `sys_file` VALUES ('354d0ad6df5f4b81a6df003967b8dde3', '018abc93050045dd8f419c14c1a5bfd5', 'picture.jpg', NULL, '157296', 'common/018abc93050045dd8f419c14c1a5bfd5\\20180625\\picture.jpg', '1', '2018-06-25 15:44:40', '1', '2018-06-25 15:44:40', NULL, '1');
INSERT INTO `sys_file` VALUES ('47348b3a5ee94d8e8d0a6d4b0d728b12', 'f1d7c9459a5a44adb38ed662bd5d682f', '新建文本文档.txt', NULL, '4890', 'common/f1d7c9459a5a44adb38ed662bd5d682f\\20180613\\新建文本文档.txt', '1', '2018-06-13 14:40:09', '1', '2018-06-13 14:40:09', NULL, '1');
INSERT INTO `sys_file` VALUES ('48b4b3ab2e064d4a9113318bcf5ddec8', '018abc93050045dd8f419c14c1a5bfd5', 'picture.jpg', NULL, '157296', 'common/7a0440b426f94db1b5b79772210437d2\\20180709\\picture.jpg', '1', '2018-07-09 10:41:49', '1', '2018-07-09 10:46:44', NULL, '0');
INSERT INTO `sys_file` VALUES ('4e9aea81e3234813bae688162b032e88', '8c5b5246330e42f4adb0593b1db498b4', 'BluetoothGet.zip', NULL, '2774021', 'F:\\git\\itamcs\\src\\main\\webapp\\upload\\common/7a0440b426f94db1b5b79772210437d2\\20180611\\BluetoothGet.zip', '1', '2018-06-11 10:20:13', '1', '2018-06-27 09:27:01', NULL, '1');
INSERT INTO `sys_file` VALUES ('5121fa6273e743a7912a58cc5a15ba2f', '8c5b5246330e42f4adb0593b1db498b4', '安装配置教程.docx', NULL, '429193', 'common/8c5b5246330e42f4adb0593b1db498b4/20181214/安装配置教程.docx', '1', '2018-12-14 09:37:00', '1', '2018-12-14 09:37:00', NULL, '0');
INSERT INTO `sys_file` VALUES ('5e3fff31d0724f5d89ab106519e8634a', '8c5b5246330e42f4adb0593b1db498b4', 'XXX旅游APP项目功能模块20180528.xlsx', NULL, '19530', 'common/8c5b5246330e42f4adb0593b1db498b4\\20180803\\XXX旅游APP项目功能模块20180528.xlsx', '1', '2018-08-03 09:37:09', '1', '2018-08-03 09:37:09', NULL, '0');
INSERT INTO `sys_file` VALUES ('6770be70d39d432d802150b41af00370', '8c5b5246330e42f4adb0593b1db498b4', 'PictureUnlock_gf_11393.pictureunlock.jpg', NULL, '103041', 'common/8c5b5246330e42f4adb0593b1db498b4/20181214/PictureUnlock_gf_11393.pictureunlock.jpg', '1', '2018-12-14 21:25:23', '1', '2018-12-14 21:25:23', NULL, '0');
INSERT INTO `sys_file` VALUES ('6f061e5b673c4a35981aba68b5feb771', '8c5b5246330e42f4adb0593b1db498b4', 'git命令.txt', NULL, '871', 'common/8c5b5246330e42f4adb0593b1db498b4\\20181211\\git命令.txt', '1', '2018-12-11 10:42:40', '1', '2018-12-11 10:42:40', NULL, '0');
INSERT INTO `sys_file` VALUES ('802ae641d0d84c488143885487a2d937', '8c5b5246330e42f4adb0593b1db498b4', 'IT资产管控平台初设说明书-20180408001.docx', NULL, '1438387', 'common/8c5b5246330e42f4adb0593b1db498b4\\20180803\\IT资产管控平台初设说明书-20180408001.docx', '1', '2018-08-03 09:44:42', '1', '2018-08-03 09:44:42', NULL, '0');
INSERT INTO `sys_file` VALUES ('a3ececf035d84d9280b1c4b2ae614074', 'f1d7c9459a5a44adb38ed662bd5d682f', 'BeyondAdmin-master.zip', NULL, '2425874', 'F:\\git\\itamcs\\src\\main\\webapp\\upload\\common/f1d7c9459a5a44adb38ed662bd5d682f\\20180611\\BeyondAdmin-master.zip', '1', '2018-06-11 11:06:27', '1', '2018-06-11 11:06:27', NULL, '1');
INSERT INTO `sys_file` VALUES ('bee545f738e941b18c321189fd962f8b', '8c5b5246330e42f4adb0593b1db498b4', '解决问题罗列.txt', NULL, '22351', 'common/8c5b5246330e42f4adb0593b1db498b4\\20180709\\解决问题罗列.txt', '1', '2018-07-09 16:15:38', '1', '2018-07-09 16:15:38', NULL, '0');
INSERT INTO `sys_file` VALUES ('cde9fce0e36e479682f87121bbedb3be', '11da634ddacb4129bb2c4f14854585f5', 'imageclip.html', NULL, '7707', 'common/11da634ddacb4129bb2c4f14854585f5\\20180709\\imageclip.html', '1', '2018-07-09 11:46:48', '1', '2018-07-09 11:46:48', NULL, '0');
INSERT INTO `sys_file` VALUES ('d67606c039784624955e8155032662de', '8c5b5246330e42f4adb0593b1db498b4', '大屏修改反馈-20180416.docx', NULL, '2297953', 'common/8c5b5246330e42f4adb0593b1db498b4\\20180709\\大屏修改反馈-20180416.docx', '1', '2018-07-09 16:15:39', '1', '2018-07-09 16:15:39', NULL, '0');
INSERT INTO `sys_file` VALUES ('da2ac86c3d934295a4d2bfd15518698b', '7a0440b426f94db1b5b79772210437d2', 'note.html', NULL, '1063', 'common/7a0440b426f94db1b5b79772210437d2/20180612/note.html', '1', '2018-06-12 11:56:54', '1', '2018-06-12 11:56:54', NULL, '1');
INSERT INTO `sys_file` VALUES ('fc7cb4ccf7ae42dfa6f81463006bf8eb', '8c5b5246330e42f4adb0593b1db498b4', 'aac.txt', NULL, '3484', 'common/8c5b5246330e42f4adb0593b1db498b4\\20180823\\aac.txt', '1', '2018-08-23 10:57:50', '1', '2018-08-23 10:57:50', NULL, '0');

-- ----------------------------
-- Table structure for sys_file_tree
-- ----------------------------
DROP TABLE IF EXISTS `sys_file_tree`;
CREATE TABLE `sys_file_tree`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '是否树形叶子节点（0:不是,1:是）',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '树形层级(0:根级)',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '文件分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_file_tree
-- ----------------------------
INSERT INTO `sys_file_tree` VALUES ('018abc93050045dd8f419c14c1a5bfd5', '2bacb604df77451d9ef9c60494c4a5b3', '0,c9265b260c1845b6b46462acd36e4304,2bacb604df77451d9ef9c60494c4a5b3', '1', 2, 'ffff', 1, '1', '2018-06-04 14:40:37', '1', '2018-06-04 14:40:37', '', '0');
INSERT INTO `sys_file_tree` VALUES ('11da634ddacb4129bb2c4f14854585f5', '5dbb8533c98b4869901270ae2eb4d0ad', '0,5dbb8533c98b4869901270ae2eb4d0ad', '0', 1, 'aaa', 3, '1', '2018-06-05 09:58:58', '1', '2018-06-06 18:11:33', '', '0');
INSERT INTO `sys_file_tree` VALUES ('12fe7758f865410283b26ee134f8a0bf', '11da634ddacb4129bb2c4f14854585f5', '0,5dbb8533c98b4869901270ae2eb4d0ad,11da634ddacb4129bb2c4f14854585f5', '1', 2, 'bbb', 5, '1', '2018-06-05 09:59:24', '1', '2018-06-06 18:11:33', '', '0');
INSERT INTO `sys_file_tree` VALUES ('2bacb604df77451d9ef9c60494c4a5b3', 'c9265b260c1845b6b46462acd36e4304', '0,c9265b260c1845b6b46462acd36e4304', '0', 1, '2', 2, '1', '2018-03-28 14:41:39', '1', '2018-06-04 17:01:59', '2', '0');
INSERT INTO `sys_file_tree` VALUES ('5dbb8533c98b4869901270ae2eb4d0ad', '0', '0', '0', 0, 'mmm', 4, '1', '2018-06-06 09:58:30', '1', '2018-06-06 18:11:32', '', '0');
INSERT INTO `sys_file_tree` VALUES ('7a0440b426f94db1b5b79772210437d2', 'f1d7c9459a5a44adb38ed662bd5d682f', '0,c9265b260c1845b6b46462acd36e4304,2bacb604df77451d9ef9c60494c4a5b3,f1d7c9459a5a44adb38ed662bd5d682f', '1', 3, 'ccc', 10, '1', '2018-06-05 09:59:11', '1', '2018-06-06 18:11:55', '', '0');
INSERT INTO `sys_file_tree` VALUES ('885944d2b2784fe68a4a33c276eaa229', '9e31a73796a242009c89995c2de86bbb', '0,5dbb8533c98b4869901270ae2eb4d0ad,9e31a73796a242009c89995c2de86bbb', '1', 2, 'ggg', 3, '1', '2018-06-04 13:56:48', '1', '2018-06-06 17:34:56', 'dxxa', '0');
INSERT INTO `sys_file_tree` VALUES ('8c5b5246330e42f4adb0593b1db498b4', 'b7803810cc734b90a3f44643fad06bd7', '0,c9265b260c1845b6b46462acd36e4304,b7803810cc734b90a3f44643fad06bd7', '1', 2, '5', 3, '1', '2018-06-04 13:54:18', '1', '2018-06-04 13:54:18', '', '0');
INSERT INTO `sys_file_tree` VALUES ('9e31a73796a242009c89995c2de86bbb', '5dbb8533c98b4869901270ae2eb4d0ad', '0,5dbb8533c98b4869901270ae2eb4d0ad', '0', 1, 'wowowow', 4, '1', '2018-06-04 16:45:08', '1', '2018-06-06 17:45:28', '', '0');
INSERT INTO `sys_file_tree` VALUES ('b7803810cc734b90a3f44643fad06bd7', 'c9265b260c1845b6b46462acd36e4304', '0,c9265b260c1845b6b46462acd36e4304', '0', 1, '1', 1, '1', '2018-03-28 14:41:23', '1', '2018-03-28 14:41:23', '1', '0');
INSERT INTO `sys_file_tree` VALUES ('c07436d34ed8412ebfd65c7d7139283d', '0', '0', '0', 0, 'testMode', 120, '1', '2018-07-27 15:30:33', '1', '2018-07-27 16:55:25', 'safsf', '0');
INSERT INTO `sys_file_tree` VALUES ('c9265b260c1845b6b46462acd36e4304', '0', '0', '0', 0, '默认', 0, '1', '2018-03-28 14:33:54', '1', '2018-06-05 10:01:53', NULL, '0');
INSERT INTO `sys_file_tree` VALUES ('f1d7c9459a5a44adb38ed662bd5d682f', '2bacb604df77451d9ef9c60494c4a5b3', '0,c9265b260c1845b6b46462acd36e4304,2bacb604df77451d9ef9c60494c4a5b3', '0', 2, 'test', 3, '1', '2018-06-04 14:39:45', '1', '2018-06-06 18:11:55', '1111', '0');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者',
  `create_date` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作方式',
  `params` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '操作提交的数据',
  `exception` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '异常信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_log_create_by`(`create_by`) USING BTREE,
  INDEX `sys_log_request_uri`(`request_uri`) USING BTREE,
  INDEX `sys_log_type`(`type`) USING BTREE,
  INDEX `sys_log_create_date`(`create_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_mdict
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_mdict_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_mdict_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '多级字典表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否树形叶子节点（0:不是,1:是）',
  `tree_level` decimal(4, 0) NOT NULL COMMENT '树形层级(0:根级)',
  `href` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '链接',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图标',
  `is_show` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_menu_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_menu_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('10', '3', '0,2,3,', '字典管理', 60, '0', 2, '/sys/dict/', '', 'fa fa-columns', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-04 17:14:49', '', '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,2,', '机构用户', 970, '0', 1, '', '', 'fa fa-th-large', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-05-11 09:46:02', '', '0');
INSERT INTO `sys_menu` VALUES ('13e52acca1254df283520c9ee3db769b', '4', '0,2,3,4,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:menu:edit', '1', '2018-07-04 16:17:40', '1', '2018-07-04 16:17:40', '', '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,2,13,', '区域管理', 50, '0', 2, '/sys/area/', '', 'fa fa-map', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-05 10:36:49', '', '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,2,13,', '机构管理', 40, '0', 2, '/sys/office/', '', 'fa fa-puzzle-piece', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-05 10:35:25', '', '0');
INSERT INTO `sys_menu` VALUES ('185e17bc1e5b4fa8a997b8c86a828f1d', '9c37ebfd00764ec99f7c65107faca3d1', '0,56,9c37ebfd00764ec99f7c65107faca3d1,', '查看', 30, '1', 2, '', '', 'fa fa-circle-thin', '0', 'filetree:sysFileTree:view', '1', '2018-07-05 09:08:10', '1', '2018-07-27 15:21:28', '', '0');
INSERT INTO `sys_menu` VALUES ('1cbff3f7903c4276902db28ed9e5916e', '7', '0,2,3,7,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:role:view', '1', '2018-07-04 16:45:37', '1', '2018-07-04 16:45:37', '', '0');
INSERT INTO `sys_menu` VALUES ('1cc9a6712a86420d9557bbf52b24680a', '14', '0,2,13,14,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:area:edit', '1', '2018-07-05 10:36:25', '1', '2018-07-05 10:36:25', '', '0');
INSERT INTO `sys_menu` VALUES ('1e43e4e03d724542b1a31f8c0593ca33', 'b06b6eae9f714d028480d6b6c114d498', '0,56,b06b6eae9f714d028480d6b6c114d498,', '查看', 30, '1', 2, '', '', '', '0', 'file:sysFile:view', '1', '2018-03-28 17:05:35', '1', '2018-07-27 15:22:00', '', '0');
INSERT INTO `sys_menu` VALUES ('2', '0', '0,', '系统管理', 80, '0', 0, '', '', 'icon-settings', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-05-18 09:12:14', '', '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,2,13,', '用户管理', 30, '0', 2, '/sys/user/index', '', 'fa fa-users', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-05 10:32:22', '', '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,2,', '关于帮助', 990, '1', 1, '', '', '', '0', '', '1', '2013-05-27 08:00:00', '1', '2018-04-18 14:41:45', '', '0');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,2,23,', '官方首页', 30, '1', 2, 'http://jsite.org.cn', '_blank', '', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-04-18 10:53:18', '', '0');
INSERT INTO `sys_menu` VALUES ('246838c40d334f2f9f929b5292771bc8', '62', '0,62,', '已办任务', 30, '1', 1, '/act/task/historic', '', 'fa fa-circle-thin', '1', '', '1', '2018-08-07 14:58:35', '1', '2018-08-07 14:58:35', '', '0');
INSERT INTO `sys_menu` VALUES ('28', '0', '0,', '个人中心', 50, '0', 0, '', '', 'icon-user', '0', '', '1', '2013-05-27 08:00:00', '1', '2018-06-26 14:13:44', '', '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,28,', '个人信息', 30, '1', 1, '/sys/user/info', '', 'icon-user-following', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-06-26 18:13:35', '', '0');
INSERT INTO `sys_menu` VALUES ('294700ca86cc45eba00fb7e6c6f2b121', 'b06b6eae9f714d028480d6b6c114d498', '0,56,b06b6eae9f714d028480d6b6c114d498,', '编辑', 60, '1', 2, '', '', '', '0', 'file:sysFile:edit', '1', '2018-03-28 17:06:13', '1', '2018-07-27 15:22:13', '', '0');
INSERT INTO `sys_menu` VALUES ('2f436a3b76924563acf09132adfe666e', '2', '0,2,', '在线人员', 1020, '1', 1, '/sys/online/list', '', 'icon-user-following', '0', 'sys:online:view,sys:online:edit', '1', '2018-08-30 16:34:49', '1', '2018-08-30 16:34:49', '', '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,2,', '系统设置', 980, '0', 1, '', '', 'fa fa-gear', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-05-11 11:59:04', '', '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,28,', '修改密码', 40, '1', 1, '/sys/user/modifyPwd', '', 'icon-lock', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-06-26 15:17:38', '', '0');
INSERT INTO `sys_menu` VALUES ('31', '0', '0,', '内容管理', 5000, '0', 0, '', '', 'icon-note', '0', '', '1', '2013-05-27 08:00:00', '1', '2018-06-28 08:48:56', '', '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,31,', '栏目设置', 990, '1', 1, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,31,32', '栏目管理', 30, '1', 2, '/cms/category/', NULL, 'align-justify', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,31,32,33,', '查看', 30, '1', 3, NULL, NULL, NULL, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,31,32,33,', '修改', 40, '1', 3, NULL, NULL, NULL, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,31,32', '站点设置', 40, '1', 2, '/cms/site/', NULL, 'certificate', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,31,32,36,', '查看', 30, '1', 3, NULL, NULL, NULL, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,31,32,36,', '修改', 40, '1', 3, NULL, NULL, NULL, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,31,32', '切换站点', 50, '1', 2, '/cms/site/select', NULL, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,2,3,', '菜单管理', 30, '0', 2, '/sys/menu/', '', 'fa fa-list-alt', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-04 16:17:54', '', '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,31,', '内容管理', 500, '1', 1, NULL, NULL, NULL, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,31,40,', '内容发布', 30, '1', 2, '/cms/', NULL, 'briefcase', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,31,40,41,', '文章模型', 40, '1', 3, '/cms/article/', NULL, 'file', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,31,40,41,42,', '查看', 30, '1', 4, NULL, NULL, NULL, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,31,40,41,42,', '修改', 40, '1', 4, NULL, NULL, NULL, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,31,40,41,42,', '审核', 50, '1', 4, NULL, NULL, NULL, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,31,40,41,', '链接模型', 60, '1', 3, '/cms/link/', NULL, 'random', '0', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,31,40,41,46,', '查看', 30, '1', 4, NULL, NULL, NULL, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,31,40,41,46,', '修改', 40, '1', 4, NULL, NULL, NULL, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,31,40,41,46,', '审核', 50, '1', 4, NULL, NULL, NULL, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('4b2965d0d0f7460e969abc2eb07f1560', '62', '0,62,', '发起流程', 50, '1', 1, '/act/task/process', '', 'fa fa-circle-thin', '1', '', '1', '2018-08-07 15:07:41', '1', '2018-08-20 14:22:31', '', '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,31,40,', '评论管理', 40, '1', 2, '/cms/comment/?status=2', NULL, 'comment', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,31,40,50,', '查看', 30, '1', 3, NULL, NULL, NULL, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,31,40,50,', '审核', 40, '1', 3, NULL, NULL, NULL, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,31,40,', '公共留言', 80, '1', 2, '/cms/guestbook/?status=2', NULL, 'glass', '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('53365d59807c448b926fb3766b783c1f', '10', '0,2,3,10,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:dict:view', '1', '2018-07-04 17:14:31', '1', '2018-07-04 17:14:31', '', '0');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,31,40,53,', '查看', 30, '1', 3, NULL, NULL, NULL, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,31,40,53,', '审核', 40, '1', 3, NULL, NULL, NULL, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('56', '0', '0,', '文件管理', 120, '0', 0, '', '', 'icon-folder', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-06-28 08:47:09', '', '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,31,', '统计分析', 600, '1', 1, NULL, NULL, NULL, '1', NULL, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,31,60,', '信息量统计', 30, '1', 2, '/cms/stats/article', NULL, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', NULL, '0');
INSERT INTO `sys_menu` VALUES ('62', '0', '0,', '在线办公', 20, '0', 0, '', '', 'icon-cloud-upload', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-06-28 08:48:13', '', '0');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,2,', '日志查询', 985, '0', 1, '', '', 'fa fa-calendar', '1', '', '1', '2013-06-03 08:00:00', '1', '2018-05-11 10:12:56', '', '0');
INSERT INTO `sys_menu` VALUES ('67a7d3780a704dff89d5c6467370bea4', 'fbe403d809b0400d9d36df16cb56abf2', '0,fbe403d809b0400d9d36df16cb56abf2,', '单表生成', 30, '1', 1, '/test/danbiao/testData', '', 'fa fa-circle-thin', '1', 'test:danbiao:testData:view,test:danbiao:testData:edit', '1', '2018-12-19 17:00:12', '1', '2018-12-19 17:00:12', '', '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,2,67,', '日志查询', 30, '1', 2, '/sys/log', '', 'fa fa-edit', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2018-05-11 10:16:51', '', '0');
INSERT INTO `sys_menu` VALUES ('69', '0', '0,', '流程管理', 100, '0', 0, '', '', 'icon-equalizer', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-08-02 09:08:56', '', '0');
INSERT INTO `sys_menu` VALUES ('6c7a6cff4a6a45058291bbf09ff3e780', '17', '0,2,13,17,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:office:view', '1', '2018-07-05 10:33:26', '1', '2018-07-05 10:33:26', '', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,2,3,', '角色管理', 50, '0', 2, '/sys/role/', '', 'icon-social-dropbox', '1', '', '1', '2013-05-27 08:00:00', '1', '2018-07-06 14:43:59', '', '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,69,', '流程管理', 30, '1', 1, '/act/process', '', 'fa fa-circle-thin', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2018-08-02 09:09:21', '', '0');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,69,', '模型管理', 40, '1', 1, '/act/model', '', 'fa fa-circle-thin', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2018-08-02 09:10:06', '', '0');
INSERT INTO `sys_menu` VALUES ('7eeda5473bff486895a2df0262bd55f4', '62', '0,62,', '请假流程：发起|办理权限', 70, '1', 2, '', '', '', '0', 'oa:leave:view,oa:leave:edit', '1', '2018-08-15 14:40:25', '1', '2018-08-15 17:22:11', '', '0');
INSERT INTO `sys_menu` VALUES ('81', 'af9b8c36092b40b2864054e75890608e', '0,af9b8c36092b40b2864054e75890608e,', '生成方案配置', 30, '1', 1, '/gen/genScheme', '', 'fa fa-circle-thin', '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2018-05-11 10:03:25', '', '0');
INSERT INTO `sys_menu` VALUES ('82', 'af9b8c36092b40b2864054e75890608e', '0,af9b8c36092b40b2864054e75890608e,', '业务表配置', 20, '1', 1, '/gen/genTable', '', 'fa fa-circle-thin', '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2018-05-11 10:03:11', '', '0');
INSERT INTO `sys_menu` VALUES ('83', 'af9b8c36092b40b2864054e75890608e', '0,af9b8c36092b40b2864054e75890608e,', '代码模板管理', 90, '1', 1, '/gen/genTemplate', '', 'fa fa-circle-thin', '0', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2018-07-05 10:40:27', '', '0');
INSERT INTO `sys_menu` VALUES ('8308c0438092480997f4712ae8308827', '62', '0,62,', '已发任务', 40, '1', 1, '/act/task/hasSent', '', 'fa fa-circle-thin', '1', '', '1', '2018-08-09 20:28:01', '1', '2018-08-13 18:14:55', '', '0');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,2,67,', '连接池监视', 40, '1', 2, '/../druid', '', 'fa fa-link', '1', '', '1', '2013-10-18 08:00:00', '1', '2018-05-11 10:16:02', '', '0');
INSERT INTO `sys_menu` VALUES ('88', '62', '0,62,', '通知通告', 60, '0', 1, '', '', 'icon-volume-2', '1', '', '1', '2013-11-08 08:00:00', '1', '2018-08-02 09:05:01', '', '0');
INSERT INTO `sys_menu` VALUES ('89', '88', '0,62,88,', '我的通告', 30, '1', 2, '/oa/oaNotify/self', '', 'fa fa-circle-thin', '1', '', '1', '2013-11-08 08:00:00', '1', '2018-08-02 09:12:37', '', '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '0,62,88,', '通告管理', 50, '1', 2, '/oa/oaNotify', '', 'fa fa-circle-thin', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2018-08-02 09:12:46', '', '0');
INSERT INTO `sys_menu` VALUES ('95db821b31cd4670ab51b115ce73d271', '62', '0,62,', '待办任务', 20, '1', 1, '/act/task/todo', '', 'fa fa-circle-thin', '1', 'act:process:view,act:process:edit', '1', '2018-08-07 14:57:37', '1', '2018-12-22 22:47:45', '', '0');
INSERT INTO `sys_menu` VALUES ('960d503ac572449bae996bfc928f1bf3', '7', '0,2,3,7,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:role:edit', '1', '2018-07-04 16:46:18', '1', '2018-07-04 16:47:17', '', '0');
INSERT INTO `sys_menu` VALUES ('9c37ebfd00764ec99f7c65107faca3d1', '56', '0,56,', '文件夹管理', 5060, '0', 1, '/filetree/sysFileTree/index', '', 'fa fa-list', '1', '', '1', '2018-03-28 09:21:04', '1', '2018-07-27 15:20:46', '', '0');
INSERT INTO `sys_menu` VALUES ('a4f7a04b94f1495da822915f92c8e481', '17', '0,2,13,17,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:office:edit', '1', '2018-07-05 10:33:43', '1', '2018-07-05 10:33:43', '', '0');
INSERT INTO `sys_menu` VALUES ('af9b8c36092b40b2864054e75890608e', '0', '0,', '代码生成', 1020, '0', 0, '', '', 'fa fa-file-code-o', '1', '', '1', '2018-05-14 16:26:49', '1', '2018-06-14 16:53:20', '', '0');
INSERT INTO `sys_menu` VALUES ('b06b6eae9f714d028480d6b6c114d498', '56', '0,56,', '文件管理', 5090, '0', 1, '/file/sysFile/index', '', 'fa fa-copy', '1', '', '1', '2018-03-28 17:04:29', '1', '2018-07-27 15:21:03', '', '0');
INSERT INTO `sys_menu` VALUES ('b522939e606543b3b4fee4b045c900c7', '4', '0,2,3,4,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:menu:view', '1', '2018-07-04 16:16:09', '1', '2018-07-04 16:16:37', '', '0');
INSERT INTO `sys_menu` VALUES ('c1a03d4ac6e6461f8a3f8bc083ebb83e', '9c37ebfd00764ec99f7c65107faca3d1', '0,56,9c37ebfd00764ec99f7c65107faca3d1,', '编辑', 60, '1', 2, '', '', 'fa fa-circle-thin', '0', 'filetree:sysFileTree:edit', '1', '2018-07-05 09:08:33', '1', '2018-07-27 15:21:44', '', '0');
INSERT INTO `sys_menu` VALUES ('cf195f0c91ff463da5fe8b49509f5774', '69', '0,69,', '部署流程', 20, '1', 1, '/act/process/deploy', '', 'fa fa-circle-thin', '1', 'act:process:edit', '1', '2018-08-02 08:53:30', '1', '2018-08-02 09:02:26', '', '0');
INSERT INTO `sys_menu` VALUES ('deba887e31ed487a980ec6d1357398ee', '14', '0,2,13,14,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:area:view', '1', '2018-07-05 10:36:00', '1', '2018-07-05 10:36:00', '', '0');
INSERT INTO `sys_menu` VALUES ('eb457a022d9841b89da35c93ae0d7f0f', '10', '0,2,3,10,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '1', 'sys:dict:edit', '1', '2018-07-04 17:15:17', '1', '2018-07-04 17:15:17', '', '0');
INSERT INTO `sys_menu` VALUES ('f081fd38850941c98cd80bd6954b712f', '69', '0,69,', '运行中的流程', 10, '1', 1, '/act/process/running', '', 'fa fa-circle-thin', '1', 'act:process:edit', '1', '2018-08-02 08:58:48', '1', '2018-08-02 09:01:36', '', '0');
INSERT INTO `sys_menu` VALUES ('f5e0c5b0d3e24f969588e8ba8cacfc9b', '20', '0,2,13,20,', '编辑', 60, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:user:edit', '1', '2018-07-05 10:33:04', '1', '2018-07-05 10:33:04', '', '0');
INSERT INTO `sys_menu` VALUES ('f6bc0ba744ed4b08b491ec00460d21c2', '20', '0,2,13,20,', '查看', 30, '1', 3, '', '', 'fa fa-circle-thin', '0', 'sys:user:view', '1', '2018-07-05 10:32:42', '1', '2018-07-05 10:32:42', '', '0');
INSERT INTO `sys_menu` VALUES ('fbe403d809b0400d9d36df16cb56abf2', '0', '0,', '代码生成测试', 5030, '0', 0, '', '', 'icon-direction', '1', '', '1', '2018-12-19 16:59:07', '1', '2018-12-19 16:59:07', '', '0');

-- ----------------------------
-- Table structure for sys_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属区域',
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域编码',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构类型',
  `grade` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构等级',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '传真',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '副负责人',
  `tree_leaf` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否树形叶子节点（0:不是,1:是）',
  `tree_level` decimal(4, 0) NULL DEFAULT NULL COMMENT '树形层级(0:根级)',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_office_parent_id`(`parent_id`) USING BTREE,
  INDEX `sys_office_del_flag`(`del_flag`) USING BTREE,
  INDEX `sys_office_type`(`type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '机构表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', 'JSite 测试公司', 10, 'f762fb569d8445f28a226a9b831cfb90', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '0', 0, '1', '2013-05-27 08:00:00', '1', '2018-12-06 14:38:45', '', '0');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '综合部', 20, 'f762fb569d8445f28a226a9b831cfb90', '100002', '2', '1', '', '', '', '', '', '', '1', '', '', '1', 1, '1', '2013-05-27 08:00:00', '1', '2018-02-02 17:40:19', '', '0');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '市场部', 30, 'f762fb569d8445f28a226a9b831cfb90', '100003', '2', '1', '', '', '', '', '', '', '1', '', '', '1', 1, '1', '2013-05-27 08:00:00', '1', '2018-02-02 17:40:28', '', '0');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', 40, 'f762fb569d8445f28a226a9b831cfb90', '100004', '2', '1', '', '', '', '', '', '', '1', '', '', '1', 1, '1', '2013-05-27 08:00:00', '1', '2018-02-02 17:40:37', '', '0');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色类型',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_role_del_flag`(`del_flag`) USING BTREE,
  INDEX `sys_role_enname`(`enname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '5', '系统管理员', 'Manager', 'security-role', '1', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2018-12-19 17:01:31', 'AA', '0');
INSERT INTO `sys_role` VALUES ('1042c40b2d2d496c9af546bba7006623', '3', 'hr', 'hr', 'assignment', '3', '1', '1', '1', '1', '2018-08-20 14:33:33', '1', '2018-08-20 14:35:04', '', '0');
INSERT INTO `sys_role` VALUES ('6', '4', '普通用户', 'Comuser', 'assignment', '3', '8', '1', '1', '1', '2013-05-27 08:00:00', '1', '2018-07-05 11:54:44', '', '0');
INSERT INTO `sys_role` VALUES ('a868b9836f664b43909757005390022f', '5', '部门经理', 'dept', 'security-role', '2', '3', '1', '1', '1', '2018-12-22 22:21:56', '1', '2018-12-22 22:25:33', '', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色-菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '13e52acca1254df283520c9ee3db769b');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '185e17bc1e5b4fa8a997b8c86a828f1d');
INSERT INTO `sys_role_menu` VALUES ('1', '1cbff3f7903c4276902db28ed9e5916e');
INSERT INTO `sys_role_menu` VALUES ('1', '1cc9a6712a86420d9557bbf52b24680a');
INSERT INTO `sys_role_menu` VALUES ('1', '1e43e4e03d724542b1a31f8c0593ca33');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '23');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '246838c40d334f2f9f929b5292771bc8');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '294700ca86cc45eba00fb7e6c6f2b121');
INSERT INTO `sys_role_menu` VALUES ('1', '2f436a3b76924563acf09132adfe666e');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '4b2965d0d0f7460e969abc2eb07f1560');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '53365d59807c448b926fb3766b783c1f');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '67a7d3780a704dff89d5c6467370bea4');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '6c7a6cff4a6a45058291bbf09ff3e780');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '7eeda5473bff486895a2df0262bd55f4');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '8308c0438092480997f4712ae8308827');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '88');
INSERT INTO `sys_role_menu` VALUES ('1', '89');
INSERT INTO `sys_role_menu` VALUES ('1', '90');
INSERT INTO `sys_role_menu` VALUES ('1', '95db821b31cd4670ab51b115ce73d271');
INSERT INTO `sys_role_menu` VALUES ('1', '960d503ac572449bae996bfc928f1bf3');
INSERT INTO `sys_role_menu` VALUES ('1', '9c37ebfd00764ec99f7c65107faca3d1');
INSERT INTO `sys_role_menu` VALUES ('1', 'a4f7a04b94f1495da822915f92c8e481');
INSERT INTO `sys_role_menu` VALUES ('1', 'af9b8c36092b40b2864054e75890608e');
INSERT INTO `sys_role_menu` VALUES ('1', 'b06b6eae9f714d028480d6b6c114d498');
INSERT INTO `sys_role_menu` VALUES ('1', 'b522939e606543b3b4fee4b045c900c7');
INSERT INTO `sys_role_menu` VALUES ('1', 'c1a03d4ac6e6461f8a3f8bc083ebb83e');
INSERT INTO `sys_role_menu` VALUES ('1', 'cf195f0c91ff463da5fe8b49509f5774');
INSERT INTO `sys_role_menu` VALUES ('1', 'deba887e31ed487a980ec6d1357398ee');
INSERT INTO `sys_role_menu` VALUES ('1', 'eb457a022d9841b89da35c93ae0d7f0f');
INSERT INTO `sys_role_menu` VALUES ('1', 'f081fd38850941c98cd80bd6954b712f');
INSERT INTO `sys_role_menu` VALUES ('1', 'f5e0c5b0d3e24f969588e8ba8cacfc9b');
INSERT INTO `sys_role_menu` VALUES ('1', 'f6bc0ba744ed4b08b491ec00460d21c2');
INSERT INTO `sys_role_menu` VALUES ('1', 'fbe403d809b0400d9d36df16cb56abf2');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '246838c40d334f2f9f929b5292771bc8');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '28');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '29');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '30');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '4b2965d0d0f7460e969abc2eb07f1560');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '62');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '7eeda5473bff486895a2df0262bd55f4');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '8308c0438092480997f4712ae8308827');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '88');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '89');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '90');
INSERT INTO `sys_role_menu` VALUES ('1042c40b2d2d496c9af546bba7006623', '95db821b31cd4670ab51b115ce73d271');
INSERT INTO `sys_role_menu` VALUES ('6', '1e43e4e03d724542b1a31f8c0593ca33');
INSERT INTO `sys_role_menu` VALUES ('6', '28');
INSERT INTO `sys_role_menu` VALUES ('6', '29');
INSERT INTO `sys_role_menu` VALUES ('6', '294700ca86cc45eba00fb7e6c6f2b121');
INSERT INTO `sys_role_menu` VALUES ('6', '2e95be57e16f478ba3347549692feb1f');
INSERT INTO `sys_role_menu` VALUES ('6', '30');
INSERT INTO `sys_role_menu` VALUES ('6', '32e3d2df46c34197a8d0bbec797d78ae');
INSERT INTO `sys_role_menu` VALUES ('6', '512b3905583c42429a28ebc114a0f2d2');
INSERT INTO `sys_role_menu` VALUES ('6', '55117c43bed14757b9d92a55faee2dc7');
INSERT INTO `sys_role_menu` VALUES ('6', '56');
INSERT INTO `sys_role_menu` VALUES ('6', '5e54e9e5c1f548a485069f9601010ffd');
INSERT INTO `sys_role_menu` VALUES ('6', '5fa583311c5e42de9d8f5bf35663111f');
INSERT INTO `sys_role_menu` VALUES ('6', '62');
INSERT INTO `sys_role_menu` VALUES ('6', '63');
INSERT INTO `sys_role_menu` VALUES ('6', '64');
INSERT INTO `sys_role_menu` VALUES ('6', '65');
INSERT INTO `sys_role_menu` VALUES ('6', '66');
INSERT INTO `sys_role_menu` VALUES ('6', '69');
INSERT INTO `sys_role_menu` VALUES ('6', '70');
INSERT INTO `sys_role_menu` VALUES ('6', '72');
INSERT INTO `sys_role_menu` VALUES ('6', '73');
INSERT INTO `sys_role_menu` VALUES ('6', '736b4ec8cbe74bf7937fe92668dcc44a');
INSERT INTO `sys_role_menu` VALUES ('6', '74');
INSERT INTO `sys_role_menu` VALUES ('6', '742be3b803174b9b81357843607fd14e');
INSERT INTO `sys_role_menu` VALUES ('6', '74db9eeede4b4146943737ce74af731d');
INSERT INTO `sys_role_menu` VALUES ('6', '88');
INSERT INTO `sys_role_menu` VALUES ('6', '89');
INSERT INTO `sys_role_menu` VALUES ('6', '89f06a97bd9a42c7a3d80908aa1daef3');
INSERT INTO `sys_role_menu` VALUES ('6', '90');
INSERT INTO `sys_role_menu` VALUES ('6', '912fa92c6d014a618846b353cb053125');
INSERT INTO `sys_role_menu` VALUES ('6', '9387017c31a643f6a5acf70f092cb958');
INSERT INTO `sys_role_menu` VALUES ('6', '9c37ebfd00764ec99f7c65107faca3d1');
INSERT INTO `sys_role_menu` VALUES ('6', 'b01fe17249ef4616823da0146d298650');
INSERT INTO `sys_role_menu` VALUES ('6', 'b06b6eae9f714d028480d6b6c114d498');
INSERT INTO `sys_role_menu` VALUES ('6', 'b95b7e2a63c44a2db7011639a369266a');
INSERT INTO `sys_role_menu` VALUES ('6', 'e0dc8f9573bb4617a38cdf65e7270bb1');
INSERT INTO `sys_role_menu` VALUES ('6', 'e0f05bb6657d4742bc130253eab8c5f1');
INSERT INTO `sys_role_menu` VALUES ('6', 'e1242de3f82e4efbab2abdde73ca3d77');
INSERT INTO `sys_role_menu` VALUES ('6', 'fc3d8379172f4a67ac3b5727636aed56');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '185e17bc1e5b4fa8a997b8c86a828f1d');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '1e43e4e03d724542b1a31f8c0593ca33');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '246838c40d334f2f9f929b5292771bc8');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '28');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '29');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '294700ca86cc45eba00fb7e6c6f2b121');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '30');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '4b2965d0d0f7460e969abc2eb07f1560');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '56');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '62');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '7eeda5473bff486895a2df0262bd55f4');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '8308c0438092480997f4712ae8308827');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '88');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '89');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '90');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '95db821b31cd4670ab51b115ce73d271');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', '9c37ebfd00764ec99f7c65107faca3d1');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', 'b06b6eae9f714d028480d6b6c114d498');
INSERT INTO `sys_role_menu` VALUES ('a868b9836f664b43909757005390022f', 'c1a03d4ac6e6461f8a3f8bc083ebb83e');

-- ----------------------------
-- Table structure for sys_role_office
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office`  (
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`, `office_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '角色-机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `company_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '登录名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `no` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '工号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '手机',
  `user_type` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_user_office_id`(`office_id`) USING BTREE,
  INDEX `sys_user_login_name`(`login_name`) USING BTREE,
  INDEX `sys_user_company_id`(`company_id`) USING BTREE,
  INDEX `sys_user_update_date`(`update_date`) USING BTREE,
  INDEX `sys_user_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '5', 'jsite', '57b89d1421898c692ebf98b530c3869b56d32e1e80f2bb703aba8a39', '0001', '系统管理员', 'admin@admin.com', '1111', '1111', '1', '/baseWeb\\userfiles\\headphoto\\userinfo.jpg', '222.131.19.129', '2018-12-23 00:21:22', '1', '1', '2013-05-27 08:00:00', '1', '2018-12-22 23:32:36', '11221', '0');
INSERT INTO `sys_user` VALUES ('43f6a4a84e784e5e98b5b1c530bef73b', '1', '5', 'dept', '56c52163316679d8c83c84f03d44a592246d76a70bacb1da76cdc149', '000002', '部门经理', '', '', '', '2', NULL, '0:0:0:0:0:0:0:1', '2018-12-22 23:58:36', '1', '1', '2018-12-22 22:22:25', '1', '2018-12-22 22:22:25', '', '0');
INSERT INTO `sys_user` VALUES ('56620c5ef567427c8debe68875c0eda2', '1', '3', 'jsitehr', '7e14e4c693492493db3bc12ba2bdd9cec2629613deae9ebd9c42dac1', '000003', '人力资源', '', '', '', '', NULL, '0:0:0:0:0:0:0:1', '2018-12-22 23:59:33', '1', '1', '2018-12-22 22:23:39', '1', '2018-12-22 22:23:39', '', '0');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户-角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('43f6a4a84e784e5e98b5b1c530bef73b', 'a868b9836f664b43909757005390022f');
INSERT INTO `sys_user_role` VALUES ('56620c5ef567427c8debe68875c0eda2', '1042c40b2d2d496c9af546bba7006623');

-- ----------------------------
-- Table structure for test_data
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `in_date` date NULL DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_data_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '业务数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for test_data_child
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_data_child_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '业务数据子表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for test_data_main
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别',
  `in_date` date NULL DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_data_main_del_flag`(`del_flag`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '业务数据表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for test_tree
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '编号',
  `parent_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `sort` decimal(10, 0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建者',
  `create_date` datetime(0) NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新者',
  `update_date` datetime(0) NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `test_tree_del_flag`(`del_flag`) USING BTREE,
  INDEX `test_data_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '树结构表' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
