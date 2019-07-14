/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : h51905

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 14/07/2019 11:55:29
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kucun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', '【保心良药】益安宁丸', '790', 'b21.jpg', '87');
INSERT INTO `goodlist` VALUES ('2', '同仁堂 五子衍宗丸 60g/瓶', '25', 'b22.jpg', '228');
INSERT INTO `goodlist` VALUES ('3', 'LF/老方 红金消结胶囊 0.4g*36粒', '33', 'b23.jpg', '2557');
INSERT INTO `goodlist` VALUES ('4', '福牌阿胶 阿胶 250g', '388', 'b24.png', '558');
INSERT INTO `goodlist` VALUES ('5', '【艾丽】奥利司他胶囊 0.12g*21粒', '93', 'b25.jpg', '789');
INSERT INTO `goodlist` VALUES ('6', '盘龙云海 排毒养颜胶囊 0.4g*70粒', '80', 'b31.png', '645');
INSERT INTO `goodlist` VALUES ('7', '【藏药精华】奇正贴膏', '63', 'b32.jpg', '88');
INSERT INTO `goodlist` VALUES ('8', '【脱发专用】米诺地尔酊', '169', 'b33.jpg', '256');
INSERT INTO `goodlist` VALUES ('9', '佐力 乌灵胶囊 0.33g*9粒*3板', '33.8', 'b34.jpg', '2225');
INSERT INTO `goodlist` VALUES ('10', '百世康 白云山 绞股蓝总甙片 20mg*80片', '15', 'b35.jpg', '66336');
INSERT INTO `goodlist` VALUES ('11', '桃花姬 即食阿胶糕 75g', '79', 'b41.jpg', '446');
INSERT INTO `goodlist` VALUES ('12', '同仁堂 西洋参片 4# 90g', '339', 'b42.jpg', '652');
INSERT INTO `goodlist` VALUES ('13', '盘龙云海 三七粉 270g', '179', 'b43.jpg', '344');
INSERT INTO `goodlist` VALUES ('14', '修正 东北长白山人参片 60g', '112', 'b44.jpg', '346');
INSERT INTO `goodlist` VALUES ('15', '汤臣倍健 R蛋白粉 450g', '299', 'b45.jpg', '767');
INSERT INTO `goodlist` VALUES ('16', '朗迪 碳酸钙D3颗粒 3g*30袋', '118', 'b11.jpg', '783');
INSERT INTO `goodlist` VALUES ('17', '来益 维生素E软胶囊 60粒', '41', 'b12.jpg', '22');
INSERT INTO `goodlist` VALUES ('18', '斯利安 叶酸片 0.4mg*93片', '61', 'b13.jpg', '36');
INSERT INTO `goodlist` VALUES ('19', '21金维他 多维元素片 100片', '51.9', 'b14.jpg', '311');
INSERT INTO `goodlist` VALUES ('20', '善存银片 100片 补充多维元素片维生素', '118', 'b15.jpg', '542');
INSERT INTO `goodlist` VALUES ('21', '诺斯清 生理性海水鼻腔护理喷雾器 80ml双瓶', '96', 'b51.jpg', '421');
INSERT INTO `goodlist` VALUES ('22', '小林 退热贴（冰宝贴）儿童装 12贴', '29', 'b52.jpg', '768');
INSERT INTO `goodlist` VALUES ('23', '欧姆龙 臂式电子血压计 HEM-8713', '279', 'b53.jpg', '87');
INSERT INTO `goodlist` VALUES ('24', '强生 稳豪型 倍优倍易 血糖仪试纸50片 含50支采血针 家用进口', '188', 'b54.png', '689');
INSERT INTO `goodlist` VALUES ('25', '鱼跃制氧机 8F-1A 家用吸氧机1L医用老人孕妇便携式氧气机吸氧器', '1280', 'b55.jpg', '23');
INSERT INTO `goodlist` VALUES ('26', '强生 define新美瞳彩色隐形眼镜日抛 30片装', '228', 'b61.jpg', '1434');
INSERT INTO `goodlist` VALUES ('27', '【远离干涩】强生 舒日日抛 30片装 ', '208', 'b62.jpg', '3456');
INSERT INTO `goodlist` VALUES ('28', '【更高透氧】库博 佰视明月抛 3片装', '129', 'b63.jpg', '757');
INSERT INTO `goodlist` VALUES ('29', '【硅水凝胶】美若康 沐氧隐形眼镜日抛 10片装 【100】', '72', 'b64.jpg', '2757');
INSERT INTO `goodlist` VALUES ('30', '【日本SEED】实瞳 可芙蕾彩色隐形眼镜日抛 30片装 丽棕【800】', '168', 'b65.jpg', '878');
INSERT INTO `goodlist` VALUES ('31', '杜蕾斯 避孕套AiR空气快感三合一16只装（AiR至薄8+AiR润薄4+螺纹4）', '89', 'b71.jpg', '244');
INSERT INTO `goodlist` VALUES ('32', '杰士邦 避孕套超凡持久10只', '75', 'b72.jpg', '228');
INSERT INTO `goodlist` VALUES ('33', '金秀儿妇科用小苏打 4.5g*12包', '25.9', 'b73.jpg', '2129');
INSERT INTO `goodlist` VALUES ('34', '大卫人类免疫缺陷病毒艾滋（HIV)1/2型抗体检测试剂（胶体金法）*2', '43.9', 'b74.jpg', '980');
INSERT INTO `goodlist` VALUES ('35', '伊健仕 精子密度检测试剂盒（比色法) 精子试纸 测精子 精子检测试纸', '59', 'b75.jpg', '1815');
INSERT INTO `goodlist` VALUES ('36', '云南白药 薄荷型 210g*4支', '99.8', 'b81.jpg', '165');
INSERT INTO `goodlist` VALUES ('37', 'SK-II护肤精华露 神仙水230ml', '1370', 'b82.jpg', '862');
INSERT INTO `goodlist` VALUES ('38', '美国CARMEX润 小蜜媞修护唇膏 高保湿（盒装）7.5g+管装10g', '49.9', 'b83.jpg', '134');
INSERT INTO `goodlist` VALUES ('39', '完美芦荟胶40g 2支装 祛痘 淡化痘印 痘疤 补水保湿', '62', 'b84.jpg', '1187');
INSERT INTO `goodlist` VALUES ('40', '妇炎洁抑菌洗液 380ml*3件', '29.8', 'b85.jpg', '9764');
INSERT INTO `goodlist` VALUES ('41', '合生元 儿童益生菌1.5g*26袋', '159', 'b91.jpg', '134');
INSERT INTO `goodlist` VALUES ('42', '纽曼思 DHA藻油软胶囊（儿童型） 30粒', '189', 'b92.jpg', '716');
INSERT INTO `goodlist` VALUES ('43', '修正 儿童叶黄素软糖 2g*45粒', '48', 'b93.jpg', '368');
INSERT INTO `goodlist` VALUES ('44', '汤臣倍健 蛋白质粉 水果味 600g', '348', 'b94.jpg', '785');
INSERT INTO `goodlist` VALUES ('45', '汤臣倍健 R牛初乳粉 500mg*60袋', '288', 'b95.jpg', '54');

-- ----------------------------
-- Table structure for gwc
-- ----------------------------
DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc`  (
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gwc
-- ----------------------------
INSERT INTO `gwc` VALUES ('2', NULL, NULL, '惠氏 钙尔奇 碳酸钙D3片', 69.00, '200_2019062611313275.jpg', NULL, NULL, 8);
INSERT INTO `gwc` VALUES ('2', NULL, NULL, '惠氏 钙尔奇 碳酸钙D3片', 69.00, '200_2019062611313275.jpg', NULL, NULL, 7);
INSERT INTO `gwc` VALUES ('2', NULL, NULL, '惠氏 钙尔奇 碳酸钙D3片', 69.00, '200_2019062611313275.jpg', NULL, NULL, 6);
INSERT INTO `gwc` VALUES ('35', '160', '17', '汤臣倍健 液体钙维生素D维生素K软胶囊', 99.00, '200_20181010131220673.jpg', NULL, NULL, 19);
INSERT INTO `gwc` VALUES ('11', '160', '20', '斯利安 叶酸片', 99.00, '200_20190621185338743.jpg', NULL, NULL, 18);

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list`  (
  `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youhui` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(50, 0) UNSIGNED NULL DEFAULT NULL,
  `pinglun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kucun` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES (1, '满199减15 爱乐维 复合维生素片 30片新效期，全孕期适用 叶酸 VAVB等12种维生素 7种矿物质 一盒1个月量，建议服用6个月（6盒）以上', '满99减5  199减15', '200_20190626112624388.jpg', 59, '3526', '227', '爱乐维 复合维生素片');
INSERT INTO `list` VALUES (2, '惠氏 钙尔奇 碳酸钙D3片 100片 孕妇成人中老年钙片新效期，维生素d3促进钙质吸收，每日1-2片，妊娠和哺乳期、更年期妇女、老年人等的钙质补充，防治骨质疏松症', '买3送赠品', '200_2019062611313275.jpg', 69, '6278', '252', '惠氏 钙尔奇 碳酸钙D3片');
INSERT INTO `list` VALUES (3, '力度伸 维生素C泡腾片橙味 1g*10片  预防感冒每天1片，甜橙口感，补充维生素c，机体抵抗力，预防感冒', '企业福利采购请联系客服', '200_20190708112728467.jpg', 79, '2571', '3738', '力度伸 维生素C泡腾片橙味');
INSERT INTO `list` VALUES (4, '三精 葡萄糖酸钙口服液 10ml*12支 小儿钙葡萄糖载体，让宝宝肠胃不受刺激，妈妈安心，离子钙易吸收、味道酸甜宝宝爱喝，1次1-2支，每天3次，1盒约4天量', '&nbsp;', '200_20190708113018669.jpg', 24, '6843', '77', '三精 葡萄糖酸钙口服溶液');
INSERT INTO `list` VALUES (5, '三精 葡萄糖酸锌口服液 10ml*12支  小儿 补锌饭后服用，9岁以下儿童每日一支，酸酸甜甜口感，改善宝宝厌食挑食，爱上吃饭,一盒2周量', '&nbsp;', '200_20190626112041460.jpg', 24, '335', '85', '三精 葡萄糖酸锌口服溶液');
INSERT INTO `list` VALUES (7, '买3减10 迪巧 维D钙咀嚼片 0.3g*120片  中老年钙片补充维生素D 孕妇孕期宝宝骨骼发育，孕期抽筋；中老年 预防骨质疏松症；儿童补钙，成长发育', '买3减10  买5减20', '200_20190624174253811.jpg', 39, '578', '92', '迪巧 维D钙咀嚼片');
INSERT INTO `list` VALUES (11, '199减30]斯利安  叶酸片 0.4mg*93片补充0.4mg叶酸 ，预防孕妇贫血、胎儿神经管畸形，自计划怀孕至孕后3个月末，每日1片，1盒约3个月量，建议3盒起购', '满98减10  199减30', '200_20190621185338743.jpg', 99, '14', '154', '斯利安 叶酸片');
INSERT INTO `list` VALUES (12, '养生堂 天然维生素E 0.25g*100粒去黄褐斑，延缓衰老，1瓶约3个月量，可滴在乳液中滋润肌肤，可DIY面膜，内服美容外敷滋润', '&nbsp;', '200_2017060515554673.jpg', 89, '357', '76', '养生堂 天然维生素E');
INSERT INTO `list` VALUES (14, '龙牡壮骨颗粒 5g*40袋 小儿钙强筋壮骨，和胃健脾。用于治疗和预防小儿佝偻病，软骨病；对小儿多汗、夜惊、食欲不振、消化不良、发育迟缓等症也有治疗作用', '&nbsp;', '200_20190301100003263.jpg', 49, '679', '867', '龙牡壮骨颗粒');
INSERT INTO `list` VALUES (15, '汤臣倍健  液体钙维生素D维生素K软胶囊 1000mg*200粒*2瓶  中老年钙片 补钙 含维生素D K 男女成人中老年补钙片 预防骨质疏松', '&nbsp;', '200_20170331135600105.jpg', 59, '78', '343', '汤臣倍健 液体钙维生素D维生素K软胶囊');
INSERT INTO `list` VALUES (16, '哈药 钙铁锌口服液 10ml*12支不适宜3岁以下服用，每支含钙99mg，钙锌1:1配方，水果口味，妈妈团口碑推荐，助力宝宝健康成长 ，1盒儿童4天量', '&nbsp;', '200_20190621185651978.jpg', 69, '3642', '525', '哈药 钙铁锌口服液');
INSERT INTO `list` VALUES (17, '康恩贝 天然维生素E软胶囊 0.45g*120粒每粒含90mg维生素E，每天一片 ，1瓶约4个月量', '满98减10  199减30', '200_20180515162150633.jpg', 39, '356', '783', '康恩贝 天然维生素E软胶囊');
INSERT INTO `list` VALUES (18, '新昌 维生素E软胶囊 100mg*30粒用于心、脑血管及习惯性流产等,每天2-3片，1盒约半个月量', '&nbsp;', '200_20190626182028620.jpg', 29, '657', '256', '新昌 维生素E软胶囊');
INSERT INTO `list` VALUES (19, '恒健 维生素C片 100片每片含100mg维生素c，每天1片补充vc，预防坏血病', '&nbsp;', '200_20180508155017829.jpg', 19, '3218', '254', '恒健 维生素C片');
INSERT INTO `list` VALUES (20, '惠氏 善存 佳维片（家庭装） 1.33g*120片1瓶20种维生素及矿物质，营养不打折，适用于生活节奏快而缺少补充多种维生素矿物质人群', '买2减30   买3减40', '200_20190624175345124.jpg', 59, '683', '253', '惠氏 善存 佳维片 （家庭装)');
INSERT INTO `list` VALUES (21, '惠氏 善存 小佳维咀嚼片（香甜柠檬味） 1.95g*80片含18种营养元素，香甜柠檬口感，卡通造型，帮助宝宝健康成长，每天2片补充儿童成长关键营养', '满98减10  199减30', '200_20190624175615236.jpg', 49, '438', '576', '惠氏 善存 小佳维咀嚼片');
INSERT INTO `list` VALUES (22, '金施尔康 多维元素片 100片含有25种维生素及矿物质，强化VB、VC及铁，更适合国人体质，助你对抗亚健康，成人每日一片', '&nbsp;', '200_20190708134612493.jpg', 39, '453', '586', '金施尔康 多维元素片');
INSERT INTO `list` VALUES (23, '买2减20 朗迪 碳酸钙D3颗粒 3g*30袋  成人中老年钙片钙补充剂 添加维生素D3 防止骨质疏松 儿童孕妇老年人都适用', '&nbsp;', '200_20190624175946874.jpg', 49, '2786', '1974', '爱乐维 复合维生素片');
INSERT INTO `list` VALUES (24, '康恩贝 B族维生素 0.7g*100片熬夜加班 口腔溃疡常备 长年烟民 新老包装随机发货', '满199减50  399减120', '200_20190626112830221.jpg', 9, '452', '104', '哈药 钙铁锌口服液');
INSERT INTO `list` VALUES (25, '汤臣倍健 多维男士多种维生素矿物质片 1.5g/片*60片每一片补充16种营养素，专为中国男士设计，每天1片，1瓶2个月量，新老包装更替中', '满199减50  399减120', '200_2019070911520259.jpg', 119, '6843', '17020', '三精 葡萄糖酸钙口服溶液');
INSERT INTO `list` VALUES (26, '康恩贝 维生素C片 咀嚼片（香橙味） 1.2g*100片预防感冒香橙咀嚼片 每日1片', '&nbsp;', '200_20170609162643466.jpg', 79, '5658', '1417', '斯利安 叶酸片');
INSERT INTO `list` VALUES (27, '朗迪 碳酸钙D3（II）100片 中老年钙片 补钙每片含500mg钙量，添加维生素d促进吸收，不含糖 清新果味每天1-2片，预防骨质疏松', '&nbsp;', '200_20190708102559945.jpg', 49, '3336', '27', '龙牡壮骨颗粒');
INSERT INTO `list` VALUES (28, '满199减50]惠氏 金钙尔奇D 碳酸钙维D3元素片(4) 100片每片含600mg钙量，添加镁锌锰铜，维生素d促进吸收，适合中老年补钙，帮助预防骨质疏松，每天1-2片', '满199减50  399减120', '200_2019070211484922.jpg', 129, '658', '278', '惠氏 钙尔奇 碳酸钙D3片');
INSERT INTO `list` VALUES (29, '惠氏 钙尔奇 添佳片 1.04g*60片*4瓶 补充钙镁锌铜维生素配礼袋，送长辈健康，补充钙镁锌铜等，补钙更要留住钙，', '买3送赠品', '200_20170522115856592.jpg', 109, '5531', '236', '恒健 维生素C片');
INSERT INTO `list` VALUES (30, '悦而 维生素D滴剂 400IU*60粒治疗儿童及成人预防和治疗的维生素D缺乏症，儿童成人1日1-2粒', '满199减50  399减120', '200_20190306094040401.jpg', 119, '976', '78', '迪巧 维D钙咀嚼片');
INSERT INTO `list` VALUES (31, '汤臣倍健 液体钙钙维生素D维生素K软胶囊 200粒  中老年钙片成人补钙 钙加维生素D 促进钙吸收 预防小腿抽筋 每日2片', '满98减10  199减30', '200_20190708102636105.jpg', 139, '453', '83', '三精 葡萄糖酸锌口服溶液');
INSERT INTO `list` VALUES (32, '体恒健牌硒维康口嚼片 1.3g/片*60片麦芽 硒  维生素E VE β胡萝卜素6瓶送1瓶原品  12瓶送2瓶原品 麦芽硒 补硒口嚼片  VE  β-- 胡萝卜 素  免疫调节', '买六送一', '200_20190708102359123.jpg', 149, '683', '23', '力度伸 维生素C泡腾片橙味');
INSERT INTO `list` VALUES (33, '力生 复合维生素B片 100片　预防及治疗维生素缺乏引起厌食症、营养不良、脚气病等，小瓶装大作用', '&nbsp;', '200_20190702115539376.jpg', 29, '56', '367', '迪巧 维D钙咀嚼片');
INSERT INTO `list` VALUES (34, '养生堂 天然维生素C咀嚼片 850mg*70片买3送好 天然维生素C 增强免疫力 抗氧化', '满199减50  399减120', '200_20190707130013739.jpg', 89, '98', '253', '养生堂 天然维生素E');
INSERT INTO `list` VALUES (35, '恒健 维生素B2 核黄素片 5mg*100片用于预防和治疗维生素B2缺乏症，如口角炎、唇干裂、舌炎、阴囊炎、结膜炎、脂溢性皮炎等', '&nbsp;', '200_20181010131220673.jpg', 99, '443', '686', '汤臣倍健 液体钙维生素D维生素K软胶囊');
INSERT INTO `list` VALUES (36, ' 满199减30]伊可新 维生素AD滴剂 （0-1岁）30粒 小儿钙 吸收预防佝偻病夜盲 手足抽搐等，适合新生儿，1盒约30天量，建议3盒起', '满98减10  199减30', '200_2019062611270435.jpg', 39, '863', '7578', '金施尔康 多维元素片');
INSERT INTO `list` VALUES (37, '满199减50]钙尔奇 千林氨糖软骨素加钙片 92g（64片 28片）氨糖钙片 补氨糖，护软骨，增加骨骼密度，每天2次，每次2片', '满199减50  399减120', '200_20190702115649179.jpg', 39, '56', '28', '金施尔康 多维元素片');
INSERT INTO `list` VALUES (38, '汤臣倍健 维生素B族片100片+维生素C片 100片 美白补充维生素c、维生素E 1片补充8种维生素B，口腔溃疡熬夜加班常备，每天一片', '&nbsp;', '200_20190424174236789.jpg', 129, '328', '888', '康恩贝 天然维生素E软胶囊');
INSERT INTO `list` VALUES (39, '999 葡萄糖酸锌口服溶液 10ml*12支每日4支，改善宝宝不爱吃饭，挑食、厌食毛病', '&nbsp;', '200_20190425171312619.jpg', 29, '4584', '77', '哈药 钙铁锌口服液');
INSERT INTO `list` VALUES (40, '惠氏 善存 多维元素片(29) 60片含30种维生素与矿物质，每天一片，预防和治疗因维生素矿物质缺乏引起的各种疾病，为你拒绝亚健康', '满98减10  199减30', '200_20190708102328599.jpg', 79, '46', '666', '恒健 维生素C片');
INSERT INTO `list` VALUES (6, '惠氏 善存银片 100片 补充多维元素片维生素 中老年钙片1盒约3个月量，预防和治疗钙缺乏症，如骨质疏松、手足抽搐症、骨发育不全、佝偻病以及妊娠和哺乳妇女、老年人钙的补充', '&nbsp;', '200_20190621185157183.jpg', 109, '48', '233', '康恩贝 天然维生素E软胶囊');
INSERT INTO `list` VALUES (9, '21金维他 多维元素片 100片  成人 复合维生素 维B 钙 铁含12种维生素，8种矿物质，1种氨基酸促进维矿物质吸收，强化VA、VB好配方更适合中国人体质', '&nbsp;', '200_20190621185316484.jpg', 59, '88', '248', '恒健 维生素C片');
INSERT INTO `list` VALUES (10, '惠氏 钙尔奇 碳酸钙D3片60片 成人 中老年钙片 骨质疏松3件送好礼 高浓度钙，每片含600mg钙量 ，维生素D促进吸收 预防骨质疏松症 适用人群广，孕妇、哺乳、老人适用，每天1-2片', '满98减10  199减30', '200_2019062118484693.jpg', 109, '234', '824', '哈药 钙铁锌口服液');
INSERT INTO `list` VALUES (13, '哈药牌 钙铁锌口服液（西柚味） 10ml（毫升）*10支不适宜3岁以下服用，每支含钙100mg，钙锌配方，水果口味，妈妈团口碑推荐，助力宝宝健康成长 ，1盒儿童4天量，新老包装随机发货', '&nbsp;', '200_20190621185241199.jpg', 79, '565', '213', '康恩贝 天然维生素E软胶囊');
INSERT INTO `list` VALUES (8, '澳诺锌钙特 葡萄糖酸钙锌口服溶液 10ml*24支 补钙补锌，骨质疏松、手足抽搐症、骨发育不全、妊娠、哺乳期、绝经期妇女钙的补充，食欲缺乏，厌食症，复发性口腔溃疡', '买2减5  买3减10', '200_2017082917142018.jpg', 89, '225', '132', '惠氏 钙尔奇 碳酸钙D3片');

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan`  (
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES ('1', '5', 'eneeneneneneenneneen');
INSERT INTO `liuyan` VALUES ('1', '5', 'ennnnnnnnnnnnn');
INSERT INTO `liuyan` VALUES ('', '1', '');
INSERT INTO `liuyan` VALUES ('2', '3', 'bbbbbbbbbbbbbbbb');
INSERT INTO `liuyan` VALUES ('3', '3', '不错哦');
INSERT INTO `liuyan` VALUES ('4', '3', '一般般吧');
INSERT INTO `liuyan` VALUES ('5', '3', '还行');
INSERT INTO `liuyan` VALUES ('158', '3', 'aaaaaa');
INSERT INTO `liuyan` VALUES ('158', '4', 'wwwwwwww');
INSERT INTO `liuyan` VALUES ('160', '1', '');
INSERT INTO `liuyan` VALUES ('', '1', '');
INSERT INTO `liuyan` VALUES ('160', '1', '');
INSERT INTO `liuyan` VALUES ('', '1', '');
INSERT INTO `liuyan` VALUES ('', '12', '');
INSERT INTO `liuyan` VALUES ('160', '12', '');
INSERT INTO `liuyan` VALUES ('', '12', '');
INSERT INTO `liuyan` VALUES ('', '35', '');
INSERT INTO `liuyan` VALUES ('160', '35', '');

-- ----------------------------
-- Table structure for userinf
-- ----------------------------
DROP TABLE IF EXISTS `userinf`;
CREATE TABLE `userinf`  (
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `psw` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinf
-- ----------------------------
INSERT INTO `userinf` VALUES ('xx', 1, NULL, NULL);
INSERT INTO `userinf` VALUES ('zz', 2, NULL, NULL);
INSERT INTO `userinf` VALUES ('aa', 3, NULL, NULL);
INSERT INTO `userinf` VALUES ('bb', 4, NULL, NULL);
INSERT INTO `userinf` VALUES ('cc', 5, NULL, NULL);
INSERT INTO `userinf` VALUES ('dd', 6, NULL, NULL);
INSERT INTO `userinf` VALUES ('z', 7, 'z', NULL);
INSERT INTO `userinf` VALUES ('q', 8, 'q', NULL);
INSERT INTO `userinf` VALUES ('a', 9, 'a', NULL);
INSERT INTO `userinf` VALUES ('aaa', 10, 'a', NULL);
INSERT INTO `userinf` VALUES ('zzz', 151, 'zzzzzzzz', NULL);
INSERT INTO `userinf` VALUES ('q111', 160, 'q1111111', '13184838851');
INSERT INTO `userinf` VALUES ('qq', 159, 'q1111111', NULL);
INSERT INTO `userinf` VALUES ('q1', 158, 'q1111111', NULL);

SET FOREIGN_KEY_CHECKS = 1;
