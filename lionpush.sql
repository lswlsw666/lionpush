/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : lionpush

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-29 20:55:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fun_admin
-- ----------------------------
DROP TABLE IF EXISTS `fun_admin`;
CREATE TABLE `fun_admin` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(64) NOT NULL,
  `pwd` varchar(64) NOT NULL,
  `power_id` int(10) NOT NULL,
  `add_time` int(10) DEFAULT NULL,
  `mobile` varchar(64) DEFAULT NULL,
  `sec_pwd` varchar(64) DEFAULT NULL,
  `edit_time` int(10) DEFAULT NULL,
  `salt` varchar(10) DEFAULT '',
  `sec_salt` varchar(10) DEFAULT '' COMMENT '二级加密字符',
  `path` varchar(128) DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_admin
-- ----------------------------
INSERT INTO `fun_admin` VALUES ('1', 'admin', '99f070337da0f93b133fe1513e49c19c', '1', '1483598884', null, '2267831727d7fa9d416a1c79c71f3b83', '1532142288', '3y6Vp3fa', 'NZHm3Em0', '/upload/admin/201807/e4be4ae4369b29b074a86a624655f4e4.JPG');
INSERT INTO `fun_admin` VALUES ('2', 'ceshi', '2c8114725c523f640fbb87fa2dfc2ceb', '2', '1529977638', null, 'cdc70c9753c48b79c85d7638c6e968a1', '1532142501', '8A10KIEl', 'm6Duxwbh', '/upload/admin/201807/5ba5d2e59ca4882b1f54dbe94a61ab44.JPG');
INSERT INTO `fun_admin` VALUES ('3', 'test', '0f5b09f6bfa7906dfeee0f04f02e3d26', '3', '1532938170', null, 'b4dc8536a75fc783604303950f70ffd2', '1532938612', 'pqf1mNZE', 'EWoyxzuw', '/upload/admin/201807/07419bb30e2d7bc261fb822034cb2112.JPG');

-- ----------------------------
-- Table structure for fun_adverclass
-- ----------------------------
DROP TABLE IF EXISTS `fun_adverclass`;
CREATE TABLE `fun_adverclass` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `adsort` int(14) DEFAULT '0' COMMENT '分类排序',
  `classname` varchar(64) DEFAULT '' COMMENT '分类名称',
  `classpath` varchar(64) DEFAULT '' COMMENT '图片路径',
  `is_open` tinyint(1) DEFAULT '1' COMMENT '开关 1为开',
  `content` text COMMENT '分类描述',
  `add_time` int(10) DEFAULT NULL COMMENT '添加时间',
  `pid` varchar(25) DEFAULT '' COMMENT '父级ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_adverclass
-- ----------------------------
INSERT INTO `fun_adverclass` VALUES ('1', '111', '手机', '/upload/temp/201805/abc224f20d0aa976b72d7e9217d907aa.JPG', '1', '123333', null, '');
INSERT INTO `fun_adverclass` VALUES ('2', '125', '家居', '/upload/temp/201806/781d4fe650d57a35e5389545217d269d.JPG', '1', '二级', null, '');
INSERT INTO `fun_adverclass` VALUES ('3', '145454', '食品', '/upload/temp/201806/7197abec8f4c0a60d0ce8bb273ca8c5f.JPG', '1', '11112525', '1523288381', '5');

-- ----------------------------
-- Table structure for fun_advergoods
-- ----------------------------
DROP TABLE IF EXISTS `fun_advergoods`;
CREATE TABLE `fun_advergoods` (
  `id` int(14) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `goods_name` varchar(64) DEFAULT '' COMMENT '商品名称',
  `goodspath` varchar(128) DEFAULT '' COMMENT '商品图片路径',
  `shop_time` int(14) DEFAULT '0' COMMENT '商品上市时间',
  `low_price` decimal(12,2) DEFAULT '0.00' COMMENT '最低价格',
  `high_price` decimal(12,2) DEFAULT '0.00' COMMENT '最高价格',
  `add_time` int(14) DEFAULT '0' COMMENT '添加时间',
  `face_com` text COMMENT '外观评分',
  `price_com` text COMMENT '性价比评分',
  `use_com` text COMMENT '体验性评分',
  `recommend_com` text COMMENT '推荐评分',
  `aid` int(14) DEFAULT NULL COMMENT '商品所属系列ID',
  `cid` int(14) DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_advergoods
-- ----------------------------
INSERT INTO `fun_advergoods` VALUES ('1', 'iphone4s', '/upload/goods/201805/1a8ac24a63f2a9b83dde5621bde54570.JPG', '1378742400', '1200.00', '1600.00', '1526111149', null, null, null, null, '1', '1');
INSERT INTO `fun_advergoods` VALUES ('3', 'iphone x', '/upload/goods/201806/63801dce2581a675034276169e28d8ba.PNG', '1536681600', '7388.00', '8388.00', '1526111927', '{\"id\":43,\"code\":\"4\"}', '{\"id\":43,\"code\":\"2\"}', '{\"id\":43,\"code\":\"3\"}', '{\"id\":43,\"code\":\"1\"}', '1', '1');
INSERT INTO `fun_advergoods` VALUES ('4', '小米5s', '/upload/goods/201805/3690d3786a96f4dd8883e2ef55ae92d8.JPG', '1494345600', '1588.00', '2388.00', '1526278988', null, null, null, null, '2', '1');
INSERT INTO `fun_advergoods` VALUES ('5', 'iphone SE', '/upload/goods/201806/a9271245c27d45baa974df5d4b6d95fb.JPG', '1465401600', '2200.00', '2800.00', '1528017223', null, null, null, null, '1', '1');
INSERT INTO `fun_advergoods` VALUES ('6', 'iPhone 6s', '/upload/goods/201806/fafaeca1c97ae4cbeda8cecd229dba40.JPG', '1537027200', '3800.00', '4600.00', '1528018411', null, null, null, null, '1', '1');
INSERT INTO `fun_advergoods` VALUES ('7', 'iPhone 7', '/upload/goods/201806/8eeea664e13fe8edcb02e1d2669ec408.PNG', '1505491200', '4500.00', '5600.00', '1528019483', null, null, null, null, '1', '1');
INSERT INTO `fun_advergoods` VALUES ('8', 'iPhone 8', '/upload/goods/201806/39ddcba34143e70687bd4bb37e898e4d.PNG', '1506700800', '4800.00', '6888.00', '1528020374', null, null, null, null, '1', '1');

-- ----------------------------
-- Table structure for fun_advers
-- ----------------------------
DROP TABLE IF EXISTS `fun_advers`;
CREATE TABLE `fun_advers` (
  `id` int(14) NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `advertitle` varchar(64) DEFAULT '' COMMENT '广告名称',
  `advercontent` varchar(64) DEFAULT '' COMMENT '广告描述',
  `adverid` int(14) DEFAULT NULL COMMENT '所属分类ID',
  `adverpath` varchar(64) DEFAULT '' COMMENT '广告图片路径',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '是否显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_advers
-- ----------------------------
INSERT INTO `fun_advers` VALUES ('1', '苹果', 'iPhone完美到极致', '1', '/upload/adver/201804/c57094ad8312b13e140cbfdd278ed424.JPG', '0', '1');
INSERT INTO `fun_advers` VALUES ('2', '小米', '为发烧而生', '1', '/upload/adver/201806/04a828bca203326eefbae4198d3d7a95.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('3', '华为', '国产手机大哥大', '1', '/upload/adver/201806/0a0b4856fa3295d061d78b0ff44d0028.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('4', '锤子', '够胆你就锤', '1', '/upload/adver/201806/e85e2de92afa598f6b9a5ecdb5c25a03.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('5', '三星', '用心为您服务', '1', '/upload/adver/201806/0835747e2ba289857dea43833038230e.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('6', 'OPPO', '聆听世界', '1', '/upload/adver/201806/4f8e41a6ecd8728ce1a01be5bbe718d2.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('7', 'VIVO', '屏幕指纹黑科技', '1', '/upload/adver/201806/82a0a4397ed907ee4a097dbc0740c4ea.PNG', '0', '1');
INSERT INTO `fun_advers` VALUES ('8', '爱思', '爱思席梦思，呵护你的每个夜晚', '2', '/upload/adver/201806/002ef022a595e3d6e63e7ea5f960c2d0.JPG', '0', '1');
INSERT INTO `fun_advers` VALUES ('9', '全友', '让你亲近自然', '2', '/upload/adver/201806/23b5ccd8fa4a636a96c8a6662ce4dad9.JPG', '0', '1');
INSERT INTO `fun_advers` VALUES ('10', '威猛', '清洁每个角落', '2', '/upload/adver/201806/f97ef5aca8d7cd17a0101a3e7d8d80c8.JPG', '0', '1');
INSERT INTO `fun_advers` VALUES ('11', '九阳', '豆浆机中的战斗机', '2', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('12', '乐事', '没事整点乐事', '3', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('13', '蒙牛优益c', '让你的肠胃做运动', '3', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('14', '安慕希', '和家人一起团聚的滋味', '3', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('15', '银鹭', '八宝粥首选', '3', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('16', '娃哈哈', '小孩子的手中宝', '3', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('17', '漫威漫展', '每个人都是超级英雄', '4', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('18', '梵高画展', '给你一个抽象的印象', '4', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('19', '山水', '泼墨也是一种艺术', '4', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('20', '唐小僧', '为你生活添笔彩', '5', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('21', '悟空理财', '别让你的钱睡大觉', '5', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('22', '八戒理财', '为你省下一大笔', '5', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('23', '平安普惠', '我们不仅仅是保险', '5', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('24', '支付宝理财', '您的信用专家', '5', '', '0', '0');
INSERT INTO `fun_advers` VALUES ('25', '飞猪理财', '和您的梦想一起起飞', '5', '', '0', '0');

-- ----------------------------
-- Table structure for fun_article
-- ----------------------------
DROP TABLE IF EXISTS `fun_article`;
CREATE TABLE `fun_article` (
  `id` int(14) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '文章标题',
  `titlepath` varchar(128) DEFAULT '' COMMENT '标题图片路径',
  `content` text COMMENT '文章内容',
  `url` varchar(128) DEFAULT '' COMMENT '链接',
  `shop_time` int(14) DEFAULT '0' COMMENT '上市时间',
  `add_time` int(14) DEFAULT NULL COMMENT '添加时间',
  `aid` int(14) DEFAULT NULL COMMENT '所属广告ID',
  `read_num` int(14) DEFAULT '0' COMMENT '点赞次数',
  `good_num` int(14) DEFAULT '0' COMMENT '点赞次数',
  `read_id` text COMMENT '阅读过此文章的会员ID',
  `good_id` text COMMENT '赞过此文章的会员ID',
  `low_price` decimal(12,2) DEFAULT '0.00' COMMENT '最低价格',
  `high_price` decimal(12,2) DEFAULT '0.00' COMMENT '最高价格',
  `gid` int(14) DEFAULT NULL COMMENT '商品ID',
  `com_num` int(14) DEFAULT '0' COMMENT '评论次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_article
-- ----------------------------
INSERT INTO `fun_article` VALUES ('5', 'iPhone x', '/upload/adver/201805/a849a4d5eac76281bd86463a6bc53da4.JPG', '<p><b><i><u>iPhone X</u></i></b>是苹果公司于北京时间2017年9月13日凌晨1点，在Apple Park新总部的史蒂夫·乔布斯剧院会上发布的新机型。其中“X”是罗马数字“10”的意思，代表着苹果向iPhone问世十周年致敬。</p><p><img src=\"http://dev.phalapi.com/funDemo/Public/static/upload/layedit/201805/40400cd113f3f03f86b3a2418a4e348b.JPG\" alt=\"文件丢失了\"><br></p><p><span>iPhone X属于高端版机型，采用全新设计，搭载色彩锐利的OLED屏，</span><span>，配备升级后的相机，使用3D面部识别（Face ID）传感器解锁手机，支持AirPower(空中能量)无线充电。分为64GB、256GB两个版本，中国大陆起售价8316人民币，美国</span><span>起售价999美元，2017年10月27日预售，11月3号正式开卖。</span></p><p><span><img src=\"http://dev.phalapi.com/funDemo/Public/static/upload/layedit/201805/c94ba8f53fe8a4a7a95dd92666e418bf.JPG\" alt=\"文件丢失了\"><br></span></p><p><span>2018年2月，苹果官方宣称，所有提交到App Store商店的应用必须支持iPhone X的Super Retina显示屏。</span></p><p><span><img src=\"http://dev.phalapi.com/funDemo/Public/static/upload/layedit/201805/f00a802bfb075c785294a851407de097.JPG\" alt=\"文件丢失了\"><br></span></p>', 'https://www.jd.com', '1525660895', '1525660895', '1', '1', '1', '43', '43', '0.00', '0.00', '3', '0');
INSERT INTO `fun_article` VALUES ('4', 'iPhone x', '/upload/adver/201805/a849a4d5eac76281bd86463a6bc53da4.JPG', '<p><span style=\"text-align: center;\">一直以来，我们都心存一个设想，期待着能够打造出这样一部 iPhone：它有整面的屏幕，能让你在使用时完全沉浸其中，仿佛忘记了它的存在。它是如此智能，你的一触、一碰、一言、一语，哪怕是轻轻一瞥，都会得到它心有灵犀的回应。而这个设想，终于随着 iPhone&nbsp;X 的到来成为了现实。现在，就跟未来见个面吧。</span></p><p><span style=\"text-align: center;\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/d711ce91feaebf97f6da07d9ebbd4a06.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>整部 iPhone X，看起来就是一块几乎整面的屏幕。全新的 5.8 英寸超视网膜显示屏用起来倍感称手，看起来绚丽</span><span class=\"nowrap\">夺目。</span></p><p><span class=\"nowrap\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/20d6056d24ed638b370f80fd68d19992.PNG\" alt=\"文件丢失了\"><br></span></p><p><span class=\"nowrap\"><span>这是首款达到 iPhone 设计标准的 OLED 屏幕，显示的色彩准确而绚丽，能呈现出真实深邃的黑色，并拥有出色的亮度和 1,000,000:1 的对比度。</span></span><span>小小的空间内，遍布着我们潜心研发的各种先进科技，包括可实现面容 ID 功能的各种镜头和感应器。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/c9b6ca3d971855a7656a24f7109d4bd6.PNG\" alt=\"文件丢失了\"><br></span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/716bb2a48e7021c710583a1f153f38ed.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>机身采用的是 iPhone 上有史以来最坚固耐用的前后玻璃面板，以及手术级不锈钢，更有无线充电功能和抗水防尘设计</span><span>。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/2ef19ba3dacd51b9c611a9d63f300a40.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>拥有比以往尺寸更大、速度更快的 1200 万像素感光元件、新的色彩滤镜、更深层的像素，以及新的支持光学图像防抖的长焦镜头。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/ee6fa3b9643b4af3a3ccc2c0d92eb689.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>A11 仿生闪亮登场。这款 iPhone 上有史以来最强大、最智能的芯片，拥有一个每秒运算次数最高可达 6000 亿次的神经网络引擎。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/9ea55fabf9df6640856b644b6f10e8cd.PNG\" alt=\"文件丢失了\"><br></span></p>', 'https://www.jd.com', '1525660895', '1525660895', '1', '2', '1', '43,0', '43', '0.00', '0.00', '3', '0');
INSERT INTO `fun_article` VALUES ('3', '小米5s', '/upload/adver/201805/f8b4ffd534c2a307413a70e3a3cb6df8.JPG', '<p>小米5s一部好手机。你值得拥有，见下图：</p><p><img src=\"http://dev.phalapi.com/funDemo/Public/static/upload/layedit/201805/051078c4b3f5f4d7ff5886b8be517447.JPG\" alt=\"文件丢失了\"><br></p>', 'https://www.xiaomi.com', '1525345167', '1525345167', '2', '2', '0', '43,0', '', '0.00', '0.00', '4', '0');
INSERT INTO `fun_article` VALUES ('6', '小巧的iPhone SE', '/upload/adver/201806/4084bc199b8415c0fbe02b50cb77a6d1.PNG', '<h3 class=\"section-headline\">迄今最高性能的&nbsp;4 英寸 iPhone。</h3><p class=\"intro\">iPhone SE 的核心是 A9 芯片，它与 iPhone 6s 采用了相同的先进芯片。凭借 64 位台式电脑级架构，A9 芯片为你带来惊人的速度和响应能力。游戏主机级的图形处理性能，令你热爱的游戏和 app 画面更丰富，更引人入胜。正是这些，造就出一款性能优异的强大芯片。</p><p class=\"intro\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/b585c26ef3c3d7f92749fd9a09bc54dc.PNG\" alt=\"文件丢失了\"><br></p><p class=\"intro\"><span style=\"text-align: center;\">为创造一款强大的 4 英寸手机，我们采用了深受人们喜爱的设计，同时从里到外重新构想。</span><br style=\"text-align: center;\"><span style=\"text-align: center;\">它的 A9 芯片正是 iPhone 6s 所使用的先进芯片。1200 万像素的摄像头能拍摄精彩绝伦的照片和 4K 视频，</span><br style=\"text-align: center;\"></p><p><span style=\"text-align: center;\">而 Live Photos 让你的影像栩栩如生。</span></p><p><span style=\"text-align: center;\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/2f87fa96acae76cd90aafe2a14e78a11.PNG\" alt=\"文件丢失了\"><br></span></p><p><span style=\"text-align: center;\">iPhone SE 的核心是 A9 芯片，它是与 iPhone 6s 相同的先进芯片。凭借 64 位台式电脑级架构，</span><span style=\"text-align: center;\">它为你带来惊人的速度和响应能力。游戏主机级的图形处理性能，令游戏和 app 画面丰富出色。</span></p><p><span style=\"text-align: center;\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/369302c87f688f653e000fba842bc045.PNG\" alt=\"文件丢失了\"><br></span></p><p></p><p class=\"intro\"><span style=\"text-align: center;\">有了 1200 万像素的摄像头，你就能拍出清晰锐利、细节丰富的静态照片，</span><span style=\"text-align: center;\">和使用 iPhone 6s 拍摄得一样精彩。即使是拍摄，甚至编辑精彩绝伦的 4K 视频，</span><span style=\"text-align: center;\">表现也同样出色，其分辨率最高可达 1080p HD 视频的四倍。</span></p><p class=\"intro\"><span style=\"text-align: center;\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/e07176ec76dc0bf15b002cb79f65d99a.PNG\" alt=\"文件丢失了\"><br></span></p><p class=\"intro\"><span>Touch ID 不仅能用来解锁你的手机，还能让你使用 Apple Pay 在超过 200 万家商店以及 app 内进行支付。它在使用过程中不会泄漏你卡片的详细信息，也不会将这些资料储存在你的设备上。因此使用 Apple Pay 进行支付，非常安全、私密。</span></p><div class=\"dw\" data-spm-anchor-id=\"a1z10.4-b-s.5003-16317952995.i18.77371256eFJnF2\">进一步了解 iPhone SE<span style=\"text-align: center;\">访问 apple.com/cn/iphone-se</span></div>', '', '0', '1528017868', '1', '1', '1', '43', '43', '0.00', '0.00', '5', '0');
INSERT INTO `fun_article` VALUES ('7', '有了3Dtouch的6s就是赞', '/upload/adver/201806/d05ddabbb91f93fa717763f72807cce9.JPG', '<p><span><b><u><i>iPhone 6s</i></u></b></span><span>是苹果公司2015年发布的一款智能手机。</span><span>iPhone 6s有金色</span><span>、银色</span><span>、深空灰色、玫瑰金</span><span>色。屏幕采用高强度的Ion-X玻璃，处理器</span><span>采用苹果</span><span>A9处理器</span><span>，C</span>PU<span>性能比A8提升70%，图形性能提升90%，后置摄像头1200万像素，前置摄像头</span><span>500万像素。摄像头对焦</span><span>更加准确，C</span>MOS<span>&nbsp;为了降噪采用“深槽隔离”技术</span><span>，支持4K</span><span>视频摄录。数据连接方面，支持23个频段</span><span>的LTE</span><span>网络和2倍速度的WI-FI</span><span>连接。于2015年9月25日中国大陆</span><span>与海外</span><span>同步发售</span><span class=\"sup--normal\" data-sup=\"1\">&nbsp;[1]</span><a class=\"sup-anchor\" name=\"ref_[1]_9685898\">&nbsp;</a><span>&nbsp;。北京时间2015年9月10日凌晨1点，2015年苹果秋季新品发布会</span><span>上发布iPhone 6s/</span><span>&nbsp;</span>iPhone 6s Plus 32GB版本。iPhone 6s 4588元起售，iPhone 6s Plus 5388元起售。</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/2dbc4e1eea7c21f4e73d7196bf0378b8.JPG\" alt=\"文件丢失了\"><br></p><p><span>语言支持</span></p><p>英语 (澳大利亚、加拿大、英国、美国)、中文 (简体、繁体、香港繁体)、法语 (加拿大、法国)、德语、意大利语、日语、韩语、西班牙语 (墨西哥、西班牙)、阿拉伯语、加泰罗尼亚语、克罗地亚语、捷克语、丹麦语、荷兰语、芬兰语、希腊语、希伯来语、印地语、匈牙利语、印尼语、马来语、挪威语、波兰语、葡萄牙语 (巴西、葡萄牙)、罗马尼亚语、俄语、斯洛伐克语、瑞典语、泰语、土耳其语、乌克兰语、越南语。</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/0d9336e89b2e53c002e5b27f9765566a.JPG\" alt=\"文件丢失了\"><br></p><div class=\"para\" label-module=\"para\"><span>QuickType 键盘支持</span></div><p>英语 (澳大利亚、加拿大、印度、新加坡、英国、美国)、简体中文 (手写、拼音、笔画)、繁体中文 (仓颉、手写、拼音、笔画、速成、注音)、法语 (比利时、加拿大、法国、瑞士)、德语 (奥地利、德国、瑞士)、意大利语、日语 (假名、罗马字)、韩语、西班牙语 (墨西哥、西班牙)、阿拉伯语、孟加拉语、保加利亚语、加泰罗尼亚语、切罗基语、克罗地亚语、捷克语、丹麦语、荷兰语、表情符号、爱沙尼亚语、菲律宾语、芬兰语、佛兰芒语、希腊语、古吉拉特语、夏威夷语、希伯来语、印地语 (梵语、音译转写)、印度英语、匈牙利语、冰岛语、印尼语、拉脱维亚语、立陶宛语、马其顿语、马来语、马拉地语、挪威语、波兰语、葡萄牙语 (巴西、葡萄牙)、旁遮普语、罗马尼亚语、俄语、塞尔维亚语 (西里尔字母、拉丁字母)、斯洛伐克语、斯洛文尼亚语、瑞典语、泰米尔语、泰卢固语、泰语、土耳其语、乌克兰语、乌尔都语、越南语</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/615f0de9161ade62192b284055422423.JPG\" alt=\"文件丢失了\"><br></p><p><span>苹果iPhone 6s在屏幕上的最大升级是加入了压力感应触控，使触屏手机的操作性进一步扩展。压力感应触控快捷操作，</span>是首次加入到苹果iPhone手机当中，苹果公司为其取名“3D Touch”。</p>', '', '0', '1528019252', '1', '3', '0', '43,0,47', null, '0.00', '0.00', '6', '0');
INSERT INTO `fun_article` VALUES ('8', 'iPhone 7 在此', '/upload/adver/201806/3cf215058739480488d53542524ad3e5.PNG', '<p><p><p><p><p><ol><li>1、iPhone 7 和 iPhone 7 Plus 可防溅、抗水、防尘，在受控实验室条件下经测试，其效果在 IEC 60529 标准下达到 IP67 级别。防溅、抗水、防尘功能并非永久有效，防护性能可能会因日常磨损而下降。请勿为潮湿状态下的 iPhone 充电；请参阅使用手册了解清洁和干燥说明。由于浸入液体而导致的损坏不在保修范围之内。</li><li><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/9a8f8c54d5f645870e1589ac794b12c2.JPG\" alt=\"文件丢失了\"><br></li></ol></p><p><p><ol><li>2、实际可用容量会由于诸多因素而减少并有所差异。依据型号和设置的不同，标准系统配置会占用约 4GB 到 6GB 容量 (其中包括 iOS 和内置 app)。</li><li><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/8db1ca6ef45d1109f6bc649a5a836dc8.JPG\" alt=\"文件丢失了\"><br></li></ol></p><p><ol><li>3、亮黑色 iPhone 7 和 iPhone 7 Plus 高光泽度的外观，采用包含九道精密工序的阳极氧化与抛光工艺打造而成。其表面硬度与其他采用阳极氧化处理的 Apple 产品相同；但是，高光泽度表面可能随着日常使用而出现细微磨损。如果对此有所担心，建议你选择一款合适的保护壳来保护你的 iPhone。</li><li><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/9aeb76eab0ca8eaada0ced36f22595d7.PNG\" alt=\"文件丢失了\"><br></li></ol></p></p></p></p></p></p>', '', '0', '1528019724', '1', '3', '0', '43,0,47', null, '0.00', '0.00', '7', '0');
INSERT INTO `fun_article` VALUES ('9', '红色iPhone 8', '/upload/adver/201806/bceb9ed72088ceeae4857e80df9214aa.PNG', '<p><span style=\"text-align: center;\"><b><i><u>iPhone&nbsp;8 </u></i></b>采用了全新的双面全玻璃设计，还让备受喜爱的相机变得倍加出色，它不仅配备了 iPhone 有史以来最强大、最智能的芯片。还带来了简单便捷的无线充电，并将增强现实体验推进到更深层次。这就是 iPhone&nbsp;8，新一代的 iPhone。</span></p><p><span style=\"text-align: center;\"><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/bc760d445db252033ae7025b789adbc0.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>机身前后皆采用 iPhone 上迄今最坚固耐用的玻璃面板，新款深空灰色、银色和金色外观分别配以同色系的航空级铝金属边框。</span><img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/37.gif\" alt=\"[色]\"></p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/5e6bb21a9b577916cd21daf950d93bd9.PNG\" alt=\"文件丢失了\"><br></p><p><span>iPhone&nbsp;8 的 1200 万像素摄像头进一步提升，采用面积更大、速度更快的感光元件，拥有新的颜色滤镜和更深层的像素，以及用于拍摄照片和视频的光学图像防抖功能。<img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/b64affc798417449fb1cbaee17aadfeb.PNG\" alt=\"文件丢失了\"></span></p><p><span>iPhone&nbsp;8&nbsp;Plus 的广角与长焦双镜头，让你在拍摄时可进行光学变焦；而通过数码变焦，还可以拍摄最高达 10 倍变焦的照片和最高达 6 倍变焦的视频。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/8e37cb9c6329eed6d81d97d963fa1643.PNG\" alt=\"文件丢失了\"><br></span></p><p><span>全新推出的 A11 仿生这款芯片，它的四个能效核心速度比 A10 Fusion 最高提升 70%，两个性能核心也有了最高达 25% 的速度提升。</span></p><p><span><img src=\"https://tuanzi.online//Public/static/upload/layedit/201806/b33cc5b0ab25beb061e0d496812b2024.PNG\" alt=\"文件丢失了\"><br></span></p>', '', '0', '1528020703', '1', '5', '1', '45,43,47', '47', '0.00', '0.00', '8', '0');

-- ----------------------------
-- Table structure for fun_comment
-- ----------------------------
DROP TABLE IF EXISTS `fun_comment`;
CREATE TABLE `fun_comment` (
  `id` int(14) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `content` varchar(255) DEFAULT '' COMMENT '评论内容',
  `article_id` int(14) DEFAULT NULL COMMENT '文章ID',
  `user_id` int(14) DEFAULT NULL COMMENT '会员ID',
  `add_time` int(14) DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_comment
-- ----------------------------
INSERT INTO `fun_comment` VALUES ('8', 'iPhone x真好用呀', '5', '43', '1525836235');
INSERT INTO `fun_comment` VALUES ('9', '这个图片真好看', '4', '43', '1525836300');
INSERT INTO `fun_comment` VALUES ('10', '很小巧，很实用，我很喜欢', '6', '43', '1528017975');
INSERT INTO `fun_comment` VALUES ('11', '我的就是6s哟', '7', '0', '1528030558');

-- ----------------------------
-- Table structure for fun_daysign
-- ----------------------------
DROP TABLE IF EXISTS `fun_daysign`;
CREATE TABLE `fun_daysign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '签到ID',
  `user_id` int(11) DEFAULT NULL COMMENT '会员ID',
  `sign_time` int(11) DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_daysign
-- ----------------------------
INSERT INTO `fun_daysign` VALUES ('4', '42', '1524496844');
INSERT INTO `fun_daysign` VALUES ('5', '42', '1524576837');
INSERT INTO `fun_daysign` VALUES ('6', '42', '1524585828');
INSERT INTO `fun_daysign` VALUES ('7', '42', '1524760576');
INSERT INTO `fun_daysign` VALUES ('8', '43', '1528013165');
INSERT INTO `fun_daysign` VALUES ('9', '43', '1528904386');
INSERT INTO `fun_daysign` VALUES ('10', '43', '1529897895');
INSERT INTO `fun_daysign` VALUES ('11', '43', '1532527616');
INSERT INTO `fun_daysign` VALUES ('12', '43', '1532537173');
INSERT INTO `fun_daysign` VALUES ('13', '43', '1532707110');
INSERT INTO `fun_daysign` VALUES ('14', '43', '1532743051');
INSERT INTO `fun_daysign` VALUES ('15', '43', '1532828416');
INSERT INTO `fun_daysign` VALUES ('16', '43', '1537505028');

-- ----------------------------
-- Table structure for fun_decorate
-- ----------------------------
DROP TABLE IF EXISTS `fun_decorate`;
CREATE TABLE `fun_decorate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模块ID',
  `module` varchar(64) DEFAULT '' COMMENT '模块名称',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `content` text COMMENT '模块内容',
  `module_code` varchar(20) DEFAULT '' COMMENT '模块编码',
  `module_type` tinyint(1) DEFAULT '0' COMMENT '模块类型',
  `sort` int(5) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_decorate
-- ----------------------------
INSERT INTO `fun_decorate` VALUES ('1', '轮播图', '1', '{\"pic\":[\"\\/upload\\/decorate\\/201807\\/44e7d34e9a7b90ac33271a4aa177e2e3.JPG\",\"\\/upload\\/decorate\\/201807\\/09dbd6b51ea08f0c6415e2454ac7554a.JPG\",\"\\/upload\\/decorate\\/201807\\/2aa1cbf54a8be0806915f89db8a5ef01.JPG\",\"\\/upload\\/decorate\\/201807\\/d93ac4995c4d674373b45073e91a2ade.JPG\",\"\\/upload\\/decorate\\/201807\\/50e1a667a9a6e90978b97d7051ccb86f.JPG\",\"\\/upload\\/decorate\\/201807\\/7083336191d11f955d145c1206a910e1.JPG\"],\"link\":[\"6\",\"25\",\"7\",\"26\",\"8\",\"27\"],\"pos\":[\"1\",\"2\",\"1\",\"2\",\"1\",\"2\"]}', 'swiper_banner', '0', '127');
INSERT INTO `fun_decorate` VALUES ('2', '两图', '1', '{\"pic\":[\"\\/upload\\/decorate\\/201807\\/3c0a2a45b8ed26b6b66fa9eb291ac4f5.JPG\",\"\\/upload\\/decorate\\/201807\\/1d5999f0d358c7796fb11c3655416d21.JPG\",\"image\\/default-img.jpg\",\"image\\/default-img.jpg\"],\"link\":[\"9\",\"26\",\"\",\"\"],\"pos\":[\"1\",\"2\",\"\",\"\"]}', 'four_pics', '0', '122');

-- ----------------------------
-- Table structure for fun_log
-- ----------------------------
DROP TABLE IF EXISTS `fun_log`;
CREATE TABLE `fun_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(2) DEFAULT '1' COMMENT '日志产生类型：0，系统；1：管理员；2：用户',
  `operator_id` int(10) DEFAULT '0' COMMENT '操作人id',
  `operator_name` varchar(255) DEFAULT NULL COMMENT '操作人姓名',
  `memo` text COMMENT '备注',
  `add_time` int(11) DEFAULT '0' COMMENT '生成时间',
  `operator_ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `operator_url` varchar(255) DEFAULT NULL COMMENT '操作url地址',
  `type` int(11) DEFAULT '0' COMMENT '1：激活；2：会员登录；3:管理登录',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE COMMENT '主键'
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8 COMMENT='系统日志表';

-- ----------------------------
-- Records of fun_log
-- ----------------------------
INSERT INTO `fun_log` VALUES ('29', '1', '1', 'admin', '管理员admin于2018-07-21 11:02:51时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142171', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('30', '1', '1', 'admin', '管理员admin于2018-07-21 11:04:23时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142263', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('31', '1', '1', 'admin', '管理员admin编辑ID为1的管理员->成功', '1532142288', '14.217.200.232', 'Power.ChangeManagerInfo', '0');
INSERT INTO `fun_log` VALUES ('32', '1', '1', 'admin', '管理员admin编辑ID为2角色的权限->成功', '1532142368', '14.217.200.232', 'Power.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('33', '1', '2', 'ceshi', '管理员ceshi于2018-07-21 11:06:24时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142384', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('34', '1', '1', 'admin', '管理员admin于2018-07-21 11:06:40时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142400', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('35', '1', '1', 'admin', '管理员admin于2018-07-21 11:06:51时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142411', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('36', '1', '1', 'admin', '管理员admin编辑ID为2角色的权限->成功', '1532142438', '14.217.200.232', 'Power.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('37', '1', '2', 'ceshi', '管理员ceshi于2018-07-21 11:07:50时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532142470', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('38', '1', '2', 'ceshi', '管理员ceshi编辑ID为2的管理员->成功', '1532142501', '14.217.200.232', 'Power.ChangeManagerInfo', '0');
INSERT INTO `fun_log` VALUES ('39', '1', '1', 'admin', '管理员admin于2018-07-21 11:18:53时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532143133', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('40', '1', '2', 'ceshi', '管理员ceshi于2018-07-21 13:37:53时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532151473', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('41', '1', '1', 'admin', '管理员admin于2018-07-21 14:25:01时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532154301', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('42', '1', '1', 'admin', '管理员admin编辑ID为1角色的权限->成功', '1532154318', '14.217.200.232', 'Power.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('43', '1', '1', 'admin', '管理员admin编辑ID为2角色的权限->成功', '1532154329', '14.217.200.232', 'Power.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('44', '1', '2', 'ceshi', '管理员ceshi于2018-07-21 14:45:45时间后台登录，登录IP121.29.158.153，登录的AGENT', '1532155545', '121.29.158.153', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('45', '1', '1', 'admin', '管理员admin于2018-07-21 15:28:49时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532158129', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('46', '1', '1', 'admin', '管理员admin于2018-07-21 15:34:47时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532158487', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('47', '2', '0', '', '会员登录->成功', '1532172987', '14.217.200.232', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('48', '2', '0', '', '会员登录->成功', '1532173318', '14.217.200.232', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('49', '1', '1', 'admin', '管理员admin于2018-07-21 23:03:10时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532185390', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('50', '1', '2', 'ceshi', '管理员ceshi于2018-07-21 23:03:38时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532185418', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('51', '1', '1', 'admin', '管理员admin于2018-07-21 23:04:09时间后台登录，登录IP14.217.200.232，登录的AGENT', '1532185449', '14.217.200.232', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('52', '2', '0', '', '会员登录->成功', '1532249220', '14.217.202.255', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('53', '1', '1', 'admin', '管理员admin于2018-07-22 22:04:44时间后台登录，登录IP14.217.202.255，登录的AGENT', '1532268284', '14.217.202.255', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('54', '1', '1', 'admin', '管理员admin编辑ID为25的公告->成功', '1532268859', '14.217.202.255', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('55', '1', '1', 'admin', '管理员admin编辑ID为26的公告->成功', '1532268916', '14.217.202.255', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('56', '1', '1', 'admin', '管理员admin编辑ID为26的公告->成功', '1532268936', '14.217.202.255', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('57', '1', '1', 'admin', '管理员admin编辑ID为27的公告->成功', '1532268996', '14.217.202.255', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('58', '1', '1', 'admin', '管理员admin编辑ID为28的公告->成功', '1532269002', '14.217.202.255', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('59', '1', '1', 'admin', '管理员admin删除ID为28的公告->成功', '1532269010', '14.217.202.255', 'News.NewsDelete', '0');
INSERT INTO `fun_log` VALUES ('60', '1', '1', 'admin', '管理员admin更新首页模板->成功', '1532269148', '14.217.202.255', 'Decorate.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('61', '1', '1', 'admin', '管理员admin更新首页模板->成功', '1532269242', '14.217.202.255', 'Decorate.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('62', '1', '1', 'admin', '管理员admin于2018-07-22 22:56:30时间后台登录，登录IP14.217.202.255，登录的AGENT', '1532271390', '14.217.202.255', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('63', '1', '1', 'admin', '管理员admin更新首页模板->成功', '1532271413', '14.217.202.255', 'Decorate.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('64', '2', '0', '', '会员登录->成功', '1532272494', '123.196.190.162', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('65', '1', '1', 'admin', '管理员admin于2018-07-22 23:21:39时间后台登录，登录IP14.217.202.255，登录的AGENT', '1532272899', '14.217.202.255', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('66', '1', '1', 'admin', '管理员admin于2018-07-24 14:24:42时间后台登录，登录IP223.73.29.129，登录的AGENT', '1532413482', '223.73.29.129', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('67', '1', '1', 'admin', '管理员admin于2018-07-25 16:21:36时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532506896', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('68', '1', '1', 'admin', '管理员admin于2018-07-25 20:13:29时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532520809', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('69', '2', '0', '', '会员签到->成功', '1532527616', '113.78.14.26', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('70', '2', '0', '', '会员登录->成功', '1532534856', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('71', '2', '0', '', '会员登录->成功', '1532534856', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('72', '2', '0', '', '会员登录->成功', '1532534878', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('73', '2', '0', '', '会员登录->成功', '1532534878', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('74', '2', '0', '', '会员登录->成功', '1532534888', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('75', '2', '0', '', '会员登录->成功', '1532534888', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('76', '2', '0', '', '会员登录->成功', '1532535547', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('77', '2', '0', '', '会员登录->成功', '1532535547', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('78', '2', '0', '', '会员登录->成功', '1532535552', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('79', '2', '0', '', '会员登录->成功', '1532535552', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('80', '2', '0', '', '会员登录->成功', '1532535675', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('81', '2', '0', '', '会员登录->成功', '1532535675', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('82', '2', '0', '', '会员登录->成功', '1532535917', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('83', '2', '0', '', '会员登录->成功', '1532535917', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('84', '2', '0', '', '会员登录->成功', '1532536393', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('85', '2', '0', '', '会员登录->成功', '1532536464', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('86', '2', '0', '', '会员登录->成功', '1532536464', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('87', '2', '0', '', '会员登录->成功', '1532536582', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('88', '2', '0', '', '会员登录->成功', '1532536582', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('89', '2', '0', '', '会员登录->成功', '1532536945', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('90', '2', '0', '', '会员登录->成功', '1532536945', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('91', '2', '0', '', '会员签到->成功', '1532537174', '113.78.14.26', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('92', '2', '0', '', '会员登录->成功', '1532537202', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('93', '2', '0', '', '会员登录->成功', '1532537202', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('94', '2', '0', '', '会员登录->成功', '1532578192', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('95', '2', '0', '', '会员登录->成功', '1532578192', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('96', '1', '1', 'admin', '管理员admin于2018-07-26 12:10:05时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532578205', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('97', '2', '0', '', '会员登录->成功', '1532578423', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('98', '2', '0', '', '会员登录->成功', '1532578423', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('99', '2', '0', '', '会员登录->成功', '1532578462', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('100', '2', '0', '', '会员登录->成功', '1532578463', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('101', '2', '0', '', '会员登录->成功', '1532578632', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('102', '2', '0', '', '会员登录->成功', '1532578632', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('103', '2', '0', '', '会员登录->成功', '1532578717', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('104', '2', '0', '', '会员登录->成功', '1532578717', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('105', '2', '0', '', '会员登录->成功', '1532578857', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('106', '2', '0', '', '会员登录->成功', '1532578857', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('107', '2', '0', '', '会员登录->成功', '1532578875', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('108', '2', '0', '', '会员登录->成功', '1532578875', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('109', '2', '0', '', '会员登录->成功', '1532579019', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('110', '2', '0', '', '会员登录->成功', '1532579019', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('111', '2', '0', '', '会员登录->成功', '1532579711', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('112', '2', '0', '', '会员登录->成功', '1532579711', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('113', '2', '0', '', '会员登录->成功', '1532580376', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('114', '2', '0', '', '会员登录->成功', '1532580376', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('115', '2', '0', '', '会员登录->成功', '1532580542', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('116', '2', '0', '', '会员登录->成功', '1532580542', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('117', '1', '1', 'admin', '管理员admin于2018-07-26 12:54:05时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532580845', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('118', '2', '0', '', '会员登录->成功', '1532580970', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('119', '2', '0', '', '会员登录->成功', '1532580971', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('120', '2', '0', '', '会员登录->成功', '1532580997', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('121', '2', '0', '', '会员登录->成功', '1532580997', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('122', '2', '0', '', '会员登录->成功', '1532581047', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('123', '2', '0', '', '会员登录->成功', '1532581047', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('124', '2', '0', '', '会员登录->成功', '1532581175', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('125', '2', '0', '', '会员登录->成功', '1532581175', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('126', '2', '0', '', '会员登录->成功', '1532581207', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('127', '2', '0', '', '会员登录->成功', '1532581207', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('128', '2', '0', '', '会员登录->成功', '1532581283', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('129', '2', '0', '', '会员登录->成功', '1532581284', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('130', '2', '0', '', '会员登录->成功', '1532581364', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('131', '2', '0', '', '会员登录->成功', '1532581364', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('132', '2', '0', '', '会员登录->成功', '1532581492', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('133', '2', '0', '', '会员登录->成功', '1532581493', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('134', '2', '0', '', '会员登录->成功', '1532581568', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('135', '2', '0', '', '会员登录->成功', '1532581568', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('136', '2', '0', '', '会员登录->成功', '1532581614', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('137', '2', '0', '', '会员登录->成功', '1532581614', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('138', '2', '0', '', '会员登录->成功', '1532581660', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('139', '2', '0', '', '会员登录->成功', '1532581661', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('140', '2', '0', '', '会员登录->成功', '1532581731', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('141', '2', '0', '', '会员登录->成功', '1532581731', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('142', '2', '0', '', '会员登录->成功', '1532581991', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('143', '2', '0', '', '会员登录->成功', '1532582164', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('144', '2', '0', '', '会员登录->成功', '1532582222', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('145', '2', '0', '', '会员登录->成功', '1532596444', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('146', '2', '0', '', '会员登录->成功', '1532596444', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('147', '2', '0', '', '会员登录->成功', '1532596832', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('148', '2', '0', '', '会员登录->成功', '1532596832', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('149', '2', '0', '', '会员登录->成功', '1532599122', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('150', '2', '0', '', '会员登录->成功', '1532599123', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('151', '2', '0', '', '会员登录->成功', '1532599295', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('152', '2', '0', '', '会员登录->成功', '1532599296', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('153', '2', '0', '', '会员登录->成功', '1532599365', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('154', '2', '0', '', '会员登录->成功', '1532599366', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('155', '2', '0', '', '会员登录->成功', '1532599425', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('156', '2', '0', '', '会员登录->成功', '1532599425', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('157', '2', '0', '', '会员登录->成功', '1532599750', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('158', '2', '0', '', '会员登录->成功', '1532599751', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('159', '2', '0', '', '会员登录->成功', '1532600241', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('160', '2', '0', '', '会员登录->成功', '1532600241', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('161', '2', '0', '', '会员登录->成功', '1532601624', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('162', '2', '0', '', '会员登录->成功', '1532601624', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('163', '2', '0', '', '会员登录->成功', '1532601827', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('164', '2', '0', '', '会员登录->成功', '1532601827', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('165', '1', '1', 'admin', '管理员admin于2018-07-26 19:05:14时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532603114', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('166', '2', '0', '', '会员登录->成功', '1532603391', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('167', '2', '0', '', '会员登录->成功', '1532603391', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('168', '2', '0', '', '会员登录->成功', '1532603455', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('169', '2', '0', '', '会员登录->成功', '1532603455', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('170', '2', '0', '', '会员登录->成功', '1532603520', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('171', '2', '0', '', '会员登录->成功', '1532603520', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('172', '2', '0', '', '会员登录->成功', '1532603698', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('173', '2', '0', '', '会员登录->成功', '1532603698', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('174', '2', '0', '', '会员登录->成功', '1532603980', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('175', '2', '0', '', '会员登录->成功', '1532603980', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('176', '2', '0', '', '会员登录->成功', '1532604032', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('177', '2', '0', '', '会员登录->成功', '1532604032', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('178', '2', '0', '', '会员登录->成功', '1532604199', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('179', '2', '0', '', '会员登录->成功', '1532604199', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('180', '2', '0', '', '会员登录->成功', '1532604232', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('181', '2', '0', '', '会员登录->成功', '1532604232', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('182', '2', '0', '', '会员登录->成功', '1532604520', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('183', '2', '0', '', '会员登录->成功', '1532604520', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('184', '2', '0', '', '会员登录->成功', '1532604778', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('185', '2', '0', '', '会员登录->成功', '1532604778', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('186', '2', '0', '', '会员登录->成功', '1532604863', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('187', '2', '0', '', '会员登录->成功', '1532604863', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('188', '2', '0', '', '会员登录->成功', '1532605000', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('189', '2', '0', '', '会员登录->成功', '1532605000', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('190', '2', '0', '', '会员登录->成功', '1532605504', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('191', '2', '0', '', '会员登录->成功', '1532605504', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('192', '2', '0', '', '会员登录->成功', '1532605558', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('193', '2', '0', '', '会员登录->成功', '1532605558', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('194', '2', '0', '', '会员登录->成功', '1532605638', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('195', '2', '0', '', '会员登录->成功', '1532605638', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('196', '2', '0', '', '会员登录->成功', '1532605785', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('197', '2', '0', '', '会员登录->成功', '1532605786', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('198', '2', '0', '', '会员登录->成功', '1532605952', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('199', '2', '0', '', '会员登录->成功', '1532605952', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('200', '2', '0', '', '会员登录->成功', '1532605973', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('201', '2', '0', '', '会员登录->成功', '1532605973', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('202', '2', '0', '', '会员登录->成功', '1532606182', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('203', '2', '0', '', '会员登录->成功', '1532606182', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('204', '2', '0', '', '会员登录->成功', '1532608659', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('205', '2', '0', '', '会员登录->成功', '1532608659', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('206', '2', '0', '', '会员登录->成功', '1532608703', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('207', '2', '0', '', '会员登录->成功', '1532608703', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('208', '2', '0', '', '会员登录->成功', '1532608788', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('209', '2', '0', '', '会员登录->成功', '1532608788', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('210', '2', '0', '', '会员登录->成功', '1532610644', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('211', '2', '0', '', '会员登录->成功', '1532610644', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('212', '2', '0', '', '会员登录->成功', '1532617940', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('213', '2', '0', '', '会员登录->成功', '1532617942', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('214', '2', '0', '', '会员登录->成功', '1532618183', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('215', '2', '0', '', '会员登录->成功', '1532618183', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('216', '2', '0', '', '会员登录->成功', '1532618431', '113.78.14.26', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('217', '1', '1', 'admin', '管理员admin于2018-07-26 23:21:55时间后台登录，登录IP113.78.14.26，登录的AGENT', '1532618515', '113.78.14.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('218', '2', '0', '', '会员登录->成功', '1532665642', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('219', '2', '0', '', '会员登录->成功', '1532665643', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('220', '2', '0', '', '会员登录->成功', '1532665909', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('221', '2', '0', '', '会员登录->成功', '1532665909', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('222', '1', '1', 'admin', '管理员admin于2018-07-27 12:55:12时间后台登录，登录IP113.78.12.252，登录的AGENT', '1532667312', '113.78.12.252', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('223', '1', '1', 'admin', '管理员admin编辑ID为29的公告->成功', '1532667932', '113.78.12.252', 'News.NewsInsert', '0');
INSERT INTO `fun_log` VALUES ('224', '2', '0', '', '会员登录->成功', '1532667973', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('225', '2', '0', '', '会员登录->成功', '1532667973', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('226', '2', '0', '', '会员登录->成功', '1532668010', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('227', '2', '0', '', '会员登录->成功', '1532668010', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('228', '2', '0', '', '会员登录->成功', '1532668096', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('229', '2', '0', '', '会员登录->成功', '1532668096', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('230', '2', '0', '', '会员登录->成功', '1532668263', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('231', '2', '0', '', '会员登录->成功', '1532668263', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('232', '2', '0', '', '会员登录->成功', '1532668579', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('233', '2', '0', '', '会员登录->成功', '1532668579', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('234', '2', '0', '', '会员登录->成功', '1532668661', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('235', '2', '0', '', '会员登录->成功', '1532668662', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('236', '2', '0', '', '会员登录->成功', '1532668834', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('237', '2', '0', '', '会员登录->成功', '1532668834', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('238', '2', '0', '', '会员登录->成功', '1532668903', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('239', '2', '0', '', '会员登录->成功', '1532668903', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('240', '2', '0', '', '会员登录->成功', '1532669060', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('241', '2', '0', '', '会员登录->成功', '1532669060', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('242', '2', '0', '', '会员登录->成功', '1532669070', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('243', '2', '0', '', '会员登录->成功', '1532669070', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('244', '2', '0', '', '会员登录->成功', '1532669343', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('245', '2', '0', '', '会员登录->成功', '1532669343', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('246', '2', '0', '', '会员登录->成功', '1532669477', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('247', '2', '0', '', '会员登录->成功', '1532669478', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('248', '2', '0', '', '会员登录->成功', '1532669596', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('249', '2', '0', '', '会员登录->成功', '1532669597', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('250', '2', '0', '', '会员登录->成功', '1532669630', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('251', '2', '0', '', '会员登录->成功', '1532669631', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('252', '2', '0', '', '会员登录->成功', '1532670250', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('253', '2', '0', '', '会员登录->成功', '1532670251', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('254', '1', '1', 'admin', '管理员admin于2018-07-27 14:19:36时间后台登录，登录IP113.78.12.252，登录的AGENT', '1532672376', '113.78.12.252', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('255', '2', '0', '', '会员登录->成功', '1532672490', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('256', '2', '0', '', '会员登录->成功', '1532672490', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('257', '2', '0', '', '会员登录->成功', '1532672603', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('258', '2', '0', '', '会员登录->成功', '1532672603', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('259', '2', '0', '', '会员登录->成功', '1532672689', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('260', '2', '0', '', '会员登录->成功', '1532672689', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('261', '2', '0', '', '会员登录->成功', '1532672969', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('262', '2', '0', '', '会员登录->成功', '1532672969', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('263', '2', '0', '', '会员登录->成功', '1532673064', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('264', '2', '0', '', '会员登录->成功', '1532673064', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('265', '2', '0', '', '会员登录->成功', '1532673157', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('266', '2', '0', '', '会员登录->成功', '1532673157', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('267', '2', '0', '', '会员登录->成功', '1532673176', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('268', '2', '0', '', '会员登录->成功', '1532673176', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('269', '2', '0', '', '会员登录->成功', '1532673202', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('270', '2', '0', '', '会员登录->成功', '1532673203', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('271', '2', '0', '', '会员登录->成功', '1532673313', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('272', '2', '0', '', '会员登录->成功', '1532673314', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('273', '2', '0', '', '会员登录->成功', '1532673550', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('274', '2', '0', '', '会员登录->成功', '1532673550', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('275', '2', '43', null, '会员登录->成功', '1532674776', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('276', '2', '46', null, '会员登录->成功', '1532674776', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('277', '1', '1', 'admin', '管理员admin于2018-07-27 14:59:54时间后台登录，登录IP113.78.12.252，登录的AGENT', '1532674794', '113.78.12.252', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('278', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532675056', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('279', '2', '46', 'a8720571532665642', '会员a8720571532665642登录->成功', '1532675056', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('280', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532675180', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('281', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532675525', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('282', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532676231', '113.78.12.252', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('283', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532706333', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('284', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532706566', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('285', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532707059', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('286', '2', '46', 'a8720571532665642', '会员a8720571532665642登录->成功', '1532707101', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('287', '2', '46', 'a8720571532665642', '会员a8720571532665642登录->成功', '1532707105', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('288', '2', '0', '', '会员签到->成功', '1532707110', '113.78.13.184', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('289', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532743019', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('290', '2', '0', '', '会员签到->成功', '1532743051', '113.78.13.184', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('291', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532751489', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('292', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532753613', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('293', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532754261', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('294', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532754485', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('295', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532754653', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('296', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532754773', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('297', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532754811', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('298', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532755600', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('299', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532755876', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('300', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532756072', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('301', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532756306', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('302', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532756415', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('303', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532757100', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('304', '1', '1', 'admin', '管理员admin于2018-07-28 13:54:23时间后台登录，登录IP27.37.55.34，登录的AGENT', '1532757263', '27.37.55.34', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('305', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532757329', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('306', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532757997', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('307', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758093', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('308', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758405', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('309', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758628', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('310', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758724', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('311', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758772', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('312', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758813', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('313', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532758875', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('314', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759171', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('315', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759339', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('316', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759410', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('317', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759464', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('318', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759530', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('319', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759630', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('320', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532759966', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('321', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532769026', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('322', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770284', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('323', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770456', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('324', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770526', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('325', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770643', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('326', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770677', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('327', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532770798', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('328', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771179', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('329', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771478', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('330', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771509', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('331', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771633', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('332', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771743', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('333', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771803', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('334', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532771902', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('335', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532772161', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('336', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532772236', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('337', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532772285', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('338', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532772627', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('339', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532773430', '117.136.39.228', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('340', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532785408', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('341', '2', '47', 'a9951591532786096', '会员a9951591532786096登录->成功', '1532786096', '223.104.3.244', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('342', '2', '46', 'a8720571532665642', '会员a8720571532665642登录->成功', '1532786125', '223.104.3.244', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('343', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532786571', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('344', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532787014', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('345', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532787477', '113.78.13.184', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('346', '1', '1', 'admin', '管理员admin于2018-07-28 22:37:06时间后台登录，登录IP113.78.13.184，登录的AGENT', '1532788626', '113.78.13.184', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('347', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532828372', '223.104.1.140', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('348', '2', '0', '', '会员签到->成功', '1532828416', '223.104.1.140', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('349', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532842631', '223.104.1.140', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('350', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1532845719', '223.104.1.140', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('351', '1', '1', 'admin', '管理员admin于2018-07-30 16:06:32时间后台登录，登录IP101.247.207.7，登录的AGENT', '1532937992', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('352', '1', '1', 'admin', '管理员admin编辑ID为3角色的权限->成功', '1532938136', '101.247.207.7', 'Power.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('353', '1', null, null, '管理员编辑ID为3的管理员->成功', '1532938170', '101.247.207.7', 'Power.ChangeManagerInfo', '0');
INSERT INTO `fun_log` VALUES ('354', '1', '1', 'admin', '管理员admin于2018-07-30 16:15:41时间后台登录，登录IP101.247.207.7，登录的AGENT', '1532938541', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('355', '1', '3', 'test', '管理员test于2018-07-30 16:16:03时间后台登录，登录IP101.247.207.7，登录的AGENT', '1532938563', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('356', '1', '3', 'test', '管理员test编辑ID为3的管理员->成功', '1532938612', '101.247.207.7', 'Power.ChangeManagerInfo', '0');
INSERT INTO `fun_log` VALUES ('357', '1', '3', 'test', '管理员test于2018-07-30 17:19:57时间后台登录，登录IP101.247.207.7，登录的AGENT', '1532942397', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('358', '1', '3', 'test', '管理员test更新首页模板->成功', '1532942488', '101.247.207.7', 'Decorate.DoInfo', '0');
INSERT INTO `fun_log` VALUES ('359', '1', '3', 'test', '管理员test于2018-07-31 11:44:06时间后台登录，登录IP113.78.12.234，登录的AGENT', '1533008646', '113.78.12.234', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('360', '1', '1', 'admin', '管理员admin于2018-08-01 08:50:04时间后台登录，登录IP101.247.207.7，登录的AGENT', '1533084604', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('361', '1', '1', 'admin', '管理员admin于2018-08-01 08:54:36时间后台登录，登录IP101.247.207.7，登录的AGENT', '1533084876', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('362', '1', '1', 'admin', '管理员admin于2018-08-02 15:12:57时间后台登录，登录IP101.247.207.7，登录的AGENT', '1533193977', '101.247.207.7', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('363', '1', '1', 'admin', '管理员admin于2018-08-06 10:20:21时间后台登录，登录IP180.91.223.176，登录的AGENT', '1533522021', '180.91.223.176', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('364', '1', '1', 'admin', '管理员admin于2018-08-10 08:58:18时间后台登录，登录IP123.196.229.234，登录的AGENT', '1533862698', '123.196.229.234', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('365', '1', '1', 'admin', '管理员admin于2018-08-11 11:04:16时间后台登录，登录IP121.29.81.118，登录的AGENT', '1533956656', '121.29.81.118', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('366', '1', '1', 'admin', '管理员admin于2018-08-11 11:50:47时间后台登录，登录IP121.29.81.118，登录的AGENT', '1533959447', '121.29.81.118', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('367', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1534046888', '101.47.100.58', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('368', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1534073449', '123.196.193.190', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('369', '1', '1', 'admin', '管理员admin于2018-08-12 19:32:20时间后台登录，登录IP123.196.193.190，登录的AGENT', '1534073540', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('370', '2', '46', 'a8720571532665642', '会员a8720571532665642登录->成功', '1534073594', '123.196.193.190', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('371', '1', '1', 'admin', '管理员admin于2018-08-13 12:18:13时间后台登录，登录IP123.196.193.190，登录的AGENT', '1534133893', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('372', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1534144973', '123.196.193.190', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('373', '1', '1', 'admin', '管理员admin于2018-08-14 12:13:45时间后台登录，登录IP123.196.193.190，登录的AGENT', '1534220025', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('374', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1534297786', '112.97.48.90', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('375', '1', '1', 'admin', '管理员admin于2018-08-19 14:25:00时间后台登录，登录IP123.196.193.190，登录的AGENT', '1534659900', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('376', '1', '1', 'admin', '管理员admin于2018-08-22 15:34:06时间后台登录，登录IP183.197.41.16，登录的AGENT', '1534923246', '183.197.41.16', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('377', '1', '1', 'admin', '管理员admin于2018-08-23 11:41:49时间后台登录，登录IP183.197.41.122，登录的AGENT', '1534995709', '183.197.41.122', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('378', '1', '1', 'admin', '管理员admin于2018-08-24 08:41:22时间后台登录，登录IP183.197.41.122，登录的AGENT', '1535071282', '183.197.41.122', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('379', '1', '1', 'admin', '管理员admin于2018-08-27 11:05:26时间后台登录，登录IP123.196.193.190，登录的AGENT', '1535339126', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('380', '1', '3', 'test', '管理员test于2018-08-27 11:27:02时间后台登录，登录IP183.198.3.224，登录的AGENT', '1535340422', '183.198.3.224', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('381', '1', '3', 'test', '管理员test于2018-08-27 12:00:02时间后台登录，登录IP183.198.3.224，登录的AGENT', '1535342402', '183.198.3.224', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('382', '1', '1', 'admin', '管理员admin于2018-08-27 12:30:15时间后台登录，登录IP123.196.193.190，登录的AGENT', '1535344215', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('383', '1', '3', 'test', '管理员test于2018-08-27 12:30:58时间后台登录，登录IP123.196.193.190，登录的AGENT', '1535344258', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('384', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1535353968', '112.97.58.17', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('385', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1535356004', '112.97.58.17', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('386', '1', '1', 'admin', '管理员admin于2018-09-03 15:26:22时间后台登录，登录IP123.196.193.190，登录的AGENT', '1535959582', '123.196.193.190', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('387', '2', '48', 'a3719751536571944', '会员a3719751536571944登录->成功', '1536571945', '121.29.81.55', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('388', '1', '1', 'admin', '管理员admin于2018-09-11 10:54:37时间后台登录，登录IP183.197.18.113，登录的AGENT', '1536634477', '183.197.18.113', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('389', '1', '1', 'admin', '管理员admin于2018-09-11 10:59:14时间后台登录，登录IP183.197.18.113，登录的AGENT', '1536634754', '183.197.18.113', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('390', '2', '48', 'a3719751536571944', '会员a3719751536571944登录->成功', '1536663540', '101.24.182.84', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('391', '1', '1', 'admin', '管理员admin于2018-09-20 16:12:34时间后台登录，登录IP183.197.16.254，登录的AGENT', '1537431154', '183.197.16.254', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('392', '1', '1', 'admin', '管理员admin于2018-09-21 10:31:36时间后台登录，登录IP183.197.16.254，登录的AGENT', '1537497096', '183.197.16.254', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('393', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1537504898', '112.97.216.172', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('394', '2', '0', '', '会员签到->成功', '1537505028', '112.97.216.172', 'DaySign.UserDaySign', '0');
INSERT INTO `fun_log` VALUES ('395', '1', '1', 'admin', '管理员admin于2018-09-29 14:52:14时间后台登录，登录IP183.197.16.211，登录的AGENT', '1538203934', '183.197.16.211', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('396', '1', '1', 'admin', '管理员admin于2018-09-29 15:45:30时间后台登录，登录IP183.197.16.211，登录的AGENT', '1538207130', '183.197.16.211', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('397', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1539733765', '223.104.13.33', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('398', '1', '1', 'admin', '管理员admin于2018-10-23 17:47:49时间后台登录，登录IP183.197.17.236，登录的AGENT', '1540288069', '183.197.17.236', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('399', '1', '1', 'admin', '管理员admin于2018-11-03 15:57:52时间后台登录，登录IP183.197.16.1，登录的AGENT', '1541231872', '183.197.16.1', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('400', '1', '1', 'admin', '管理员admin于2018-11-10 13:54:35时间后台登录，登录IP222.223.243.26，登录的AGENT', '1541829275', '222.223.243.26', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('401', '1', '1', 'admin', '管理员admin于2018-11-22 14:03:56时间后台登录，登录IP183.197.16.181，登录的AGENT', '1542866636', '183.197.16.181', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('402', '1', '1', 'admin', '管理员admin于2018-11-30 17:03:18时间后台登录，登录IP183.197.16.31，登录的AGENT', '1543568598', '183.197.16.31', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('403', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1543794466', '223.104.13.146', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('404', '1', '1', 'admin', '管理员admin于2018-12-21 16:52:25时间后台登录，登录IP183.197.16.98，登录的AGENT', '1545382345', '183.197.16.98', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('405', '1', '1', 'admin', '管理员admin于2018-12-22 11:28:27时间后台登录，登录IP223.104.13.129，登录的AGENT', '1545449307', '223.104.13.129', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('406', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1546421781', '183.197.18.80', 'User.getOpenId', '0');
INSERT INTO `fun_log` VALUES ('407', '1', '1', 'admin', '管理员admin于2019-01-04 09:38:32时间后台登录，登录IP183.197.18.80，登录的AGENT', '1546565912', '183.197.18.80', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('408', '1', '1', 'admin', '管理员admin于2019-01-04 16:41:48时间后台登录，登录IP183.197.18.80，登录的AGENT', '1546591308', '183.197.18.80', 'FPublic.DoLogin', '3');
INSERT INTO `fun_log` VALUES ('409', '2', '43', 'a4231631532617940', '会员a4231631532617940登录->成功', '1547086680', '183.197.17.239', 'User.getOpenId', '0');

-- ----------------------------
-- Table structure for fun_messages
-- ----------------------------
DROP TABLE IF EXISTS `fun_messages`;
CREATE TABLE `fun_messages` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(18) NOT NULL COMMENT '会员ID',
  `m_title` varchar(64) NOT NULL COMMENT '标题',
  `m_service` varchar(10) NOT NULL COMMENT '服务类型',
  `m_kind` varchar(255) DEFAULT NULL COMMENT '服务小类',
  `m_area` text NOT NULL COMMENT '服务范围',
  `m_invest_money` varchar(16) NOT NULL COMMENT '投资金额',
  `m_brand_name` varchar(64) NOT NULL COMMENT '品牌名称',
  `m_company` varchar(64) NOT NULL COMMENT '公司名称',
  `m_description` text COMMENT '描述',
  `m_pics` text COMMENT '图片路径',
  `m_weixin` varchar(64) DEFAULT NULL COMMENT '微信号',
  `m_contactuser` varchar(10) NOT NULL COMMENT '联系人',
  `m_tel` varchar(13) NOT NULL COMMENT '联系电话',
  `cid` int(8) DEFAULT NULL COMMENT '分类ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) DEFAULT NULL COMMENT '修改时间',
  `m_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  `view_times` int(10) DEFAULT '0' COMMENT '浏览次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_messages
-- ----------------------------
INSERT INTO `fun_messages` VALUES ('3', '49', '张掖安利实体店铺在哪条路 张掖安利专卖店地址在哪', '美容保健', '美容院,面膜,化妆品,美容SPA/美发,养生保健,洗护用品', '甘州区,肃南裕固族自治县,民乐县', 'f', '安利', '梦宝日用品商店', '安利专卖店店铺服务\n\n提供安利产品送货上门，开通安利卡，安利店铺地址查询定位服务，欢迎咨询。\n\n所有出售商品均可提供正规发票或专卖店出货小票，正品保证！\n\n张掖安利实体店铺在哪条路 张掖安利专卖店地址在哪 \n\n雅蜜®婴儿润肤霜\n\n 蕴含有机澳洲坚果籽油、有机乳木果油*、香叶天竺葵提取物和西班牙鼠尾草籽油等优质护肤成分，有效补充宝宝肌肤水分，帮助抵御特干燥情况。 触感细腻柔滑，滋润不油腻，涂抹推开后迅速吸收。\n\n全新雅蜜®婴儿护理系列介绍\n\n自然有机原材料**，妈妈更放心\n\n全球精选，蕴含多种自然植物精华及两大有机成分**，滋润宝宝娇嫩肌肤，宝宝舒享安心舒润。\n\n低刺激温和配方，宝宝护肤更舒心\n\n严格筛选配方，经一系列测试，温和低刺激，与宝宝肌肤更具亲和力。\n\n不含人工香精，源于自然的清新，让妈妈与宝宝舒享沁心芬芳。\n\n从肌肤洁净到多重呵护，宝宝成长更安心\n\n全新雅蜜®婴儿按摩油，给宝宝沐浴，护肤多一层保护，促进宝宝健康成长。\n\n*指成分表中的牛油果树果脂提取物\n\n**有机成分指全缘叶澳洲坚果籽油和牛油果树果脂提取物。\n\n 每产品有机成分具体所指以产品成分说明为准\n\n\n安利专卖店店铺服务\n\n提供安利产品送货上门，开通安利卡，安利店铺地址查询定位服务，欢迎咨询。\n\n所有出售商品均可提供正规发票或专卖店出货小票，正品保证！\n\n张掖安利实体店铺在哪条路 张掖安利专卖店地址在哪 \n\n丝婷®润泽保湿护发素\n\n 适用干枯毛燥发质。 由发根润泽至发梢，焕现秀发弹润鲜活。\n\n 帮助秀发减少毛燥，奢享丝丝顺滑。 富含石栗籽油滋养精华、维生素原B5，发丝更显健康活力。\n\n秀发焕活秘钥—ENERJUVETM专利智慧强化修护科技*1\n\n经过多年研究，丝婷全新ENERJUVETM专利强化修护科技*2，集粹三大核心技术，深入发芯内部，修护受损发丝，源源补给营养与水分，让每一缕发丝焕现鲜活生命力！\n\n \n\nENERJUVE*3智慧强化修护三步\n\n第一步：精准定位\n\nENERJUVETM *3精准定位发丝受损部位，以自身携带的正离子与受损处负离子精密结合，重焕发丝健康强韧。\n\n第二步：重建发芯\n\nENERJUVETM *4渗透发芯深处，卓效修护发丝受损、营养不良的内部，由内而外改善秀发弹性与活力。\n\n第三步：表层修护\n\n持续使用后，ENERJUVETM *5会在发丝表层形成自然保护盾，修护外翘毛鳞片，帮助抚顺发丝表层，耀放秀发光彩与亮泽。\n\n*1——*5美国发明专利号8，263，053\n\n修复头发毛鳞片，焕现秀发光彩\n\n日常生活中，染烫造型、空气污染等因素会导致头发毛鳞片受损，从而使头发遭受干枯毛躁，头皮屑，容易掉发等问题困扰。因此，需要每日对秀发进行护理，焕现秀发的柔顺，强韧与光泽。\n\n健康头发：毛鳞片顺滑平整，秀发焕现丝滑强韧。受损头发：毛鳞片打开翘起，干燥干涩，发芯受损，特别易枯易断。\n\n自然能量，卓效呵护\n\n针对不同的发质及头皮烦恼，丝婷将自然营养理念延伸至秀发护理产品，萃取各种植物精华及保湿成分，让每一缕发丝享受大自然的呵护和滋润。\n\n张掖安利实体店铺在哪条路 张掖安利专卖店地址在哪 \n\n安利专卖店店铺服务\n\n提供安利产品送货上门，开通安利卡，安利店铺地址查询定位服务，欢迎咨询。\n\n所有出售商品均可提供正规发票或专卖店出货小票，正品保证！\n\n丝婷®清爽造型啫喱\n\n 适用于头皮局部造型和整体造型，塑造中度定型效果。 无酒精配方，减少秀发干燥，清爽无负担。 湿发时使用使秀发更易打理，干发时使用定型效果更佳。\n\n秀发焕活秘钥—ENERJUVETM专利智慧强化修护科技*1\n\n经过多年研究，丝婷全新ENERJUVETM专利强化修护科技*2，集粹三大核心技术，深入发芯内部，修护受损发丝，源源补给营养与水分，让每一缕发丝焕现鲜活生命力！\n\nENERJUVE*3智慧强化修护三步\n\n第一步：精准定位\n\nENERJUVETM *3精准定位发丝受损部位，以自身携带的正离子与受损处负离子精密结合，重焕发丝健康强韧。\n\n第二步：重建发芯\n\nENERJUVETM *4渗透发芯深处，卓效修护发丝受损、营养不良的内部，由内而外改善秀发弹性与活力。\n\n第三步：表层修护\n\n持续使用后，ENERJUVETM *5会在发丝表层形成自然保护盾，修护外翘毛鳞片，帮助抚顺发丝表层，耀放秀发光彩与亮泽。\n\n*1——*5美国发明专利号8，263，053\n\n修复头发毛鳞片，焕现秀发光彩\n\n日常生活中，染烫造型、空气污染等因素会导致头发毛鳞片受损，从而使头发遭受干枯毛躁，头皮屑，容易掉发等问题困扰。因此，需要每日对秀发进行护理，焕现秀发的柔顺，强韧与光泽。\n\n健康头发：毛鳞片顺滑平整，秀发焕现丝滑强韧。受损头发：毛鳞片打开翘起，干燥干涩，发芯受损，特别易枯易断。\n\n自然能量，卓效呵护\n\n针对不同的发质及头皮烦恼，丝婷将自然营养理念延伸至秀发护理产品，萃取各种植物精华及保湿成分，让每一缕发丝享受大自然的呵护和滋润。\n\n安利专卖店店铺服务\n\n提供安利产品送货上门，开通安利卡，安利店铺地址查询定位服务，欢迎咨询。\n\n所有出售商品均可提供正规发票或专卖店出货小票，正品保证！\n\n张掖安利实体店铺在哪条路 张掖安利专卖店地址在哪 \n\n丽齿健®浓缩漱口水\n\n 比单靠刷牙更能有效减少齿垢。 清新口气，洁净口腔。\n\n 浓缩配方，每瓶可使用90次以上。 体积小巧，方便携带，是家居旅行的好伴侣。\n\n多元化的安利个人护理用品，采用珍贵配方，结合现代高科技，从洗发护发到身体护理，从口腔护理到抗菌清洁，轻柔呵护，全面照顾身体洁净和护理的需要，带来清新爽洁新感受。\n\n雅蜜身体护理系列，蕴含橙花蜂蜜、乳木果油、葡萄籽精华等美肤成分，令肌肤享受温和的丝滑呵护；必速消毒产品，更让人们安心体会欢聚时刻的愉悦感受；丝婷美发系列，以用于肌肤保养的细致成分和珍贵配方，直接运用到发丝的洁净、滋润、修护与造型上，精心呵护秀发；丽齿健口腔护理系列采用独特配方，洁齿健牙，清新口气，让人时刻展现灿烂笑容。\n\n美好生活始于美好形象。安利个人护理系列伴你健康光彩每一天！\n\n \n\n', '20190328/08d9e07c8111e243e6f8b9f7651ab2e5.jpg,20190328/5a03f300b9338f232b5ef4f4673101e1.jpg,20190328/bfceb3ac29a872af2756108c02d1cc28.jpg,20190328/432d3d9c770daf4981f3d566ac37a74e.jpg', '18888888888', '王经理', '18888888888', null, '1553769079', null, '0', '0');
INSERT INTO `fun_messages` VALUES ('4', '49', '1', '餐饮加盟', '火锅,汉堡', '甘州区,肃南裕固族自治县', 'b', '1', '1', '1', '', '1', '12', '18888888888', null, '1553769285', null, '0', '0');
INSERT INTO `fun_messages` VALUES ('5', '49', '问问', '餐饮加盟', '烧烤,中餐,西餐', '甘州区,肃南裕固族自治县', 'b', '安利', '梦宝日用品商店', '212', '', '1', '323', '18888888888', null, '1553776543', null, '0', '0');
INSERT INTO `fun_messages` VALUES ('6', '49', '问问', '餐饮加盟', '烧烤,中餐,西餐', '甘州区,肃南裕固族自治县', 'b', '安利', '梦宝日用品商店', '212', '', '1', '323', '18888888888', null, '1553776602', null, '0', '0');

-- ----------------------------
-- Table structure for fun_news
-- ----------------------------
DROP TABLE IF EXISTS `fun_news`;
CREATE TABLE `fun_news` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(64) NOT NULL COMMENT '新闻标题',
  `content` mediumtext NOT NULL COMMENT '新闻内容',
  `is_top` tinyint(1) NOT NULL COMMENT '是否置顶',
  `category` tinyint(1) NOT NULL COMMENT '新闻分类',
  `add_time` int(10) NOT NULL,
  `admin_name` varchar(64) DEFAULT '' COMMENT '发布人',
  `scan_num` int(11) DEFAULT '0' COMMENT '浏览量',
  `picspath` varchar(64) DEFAULT '' COMMENT '图片路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='新闻公告表';

-- ----------------------------
-- Records of fun_news
-- ----------------------------
INSERT INTO `fun_news` VALUES ('25', '小程序测试', '<p>这是小程序首页公告的测试</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201807/3c17f8ce3eedc3261a0f733b2320b9ed.JPG\" alt=\"文件丢失了\"><br></p>', '1', '2', '1532268859', 'admin', '0', '/upload/news/201807/b1a5a5055878528e3ce283fc7ca9d9c3.JPG');
INSERT INTO `fun_news` VALUES ('26', '666，小程序', '<p>很6的小程序，但是还是测试</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201807/b42e9f1bc6052ad2901b1ac4d595a93f.JPG\" alt=\"文件丢失了\"><br></p>', '1', '2', '1532268936', 'admin', '0', '/upload/news/201807/87b9e2dde0f963a8535e04d5ec82a6f7.JPG');
INSERT INTO `fun_news` VALUES ('27', '强势来袭', '<p>虽然还是一次测试，但是希望不要介意</p><p><img src=\"https://tuanzi.online//Public/static/upload/layedit/201807/53e4f03e4d5fcac43738f0d0789717c1.JPG\" alt=\"文件丢失了\"><br></p>', '1', '2', '1532268996', 'admin', '0', '/upload/news/201807/37ad16bc6489f17b6be12c039e1e489f.JPG');
INSERT INTO `fun_news` VALUES ('29', '关于我们', '<p>这是本人在闲暇时间自己看文档开发的一个浏览性质的小程序，有很多不足欢迎各位看官指正批评<img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/1.gif\" alt=\"[嘻嘻]\"><img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/1.gif\" alt=\"[嘻嘻]\"><img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/1.gif\" alt=\"[嘻嘻]\"></p><p>一个人的想象空间始终是有限的，平时工作内容的业务逻辑跟此浏览性质的小程序还是交集很少，入伙看官们有复杂可抽象的业务逻辑也可以反馈给我<img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/57.gif\" alt=\"[来]\">，因为有了需求，开发才有方向，有兴趣的朋友，我们可以一起学习，共同进步，开发的领域的大神，浏览此小程序的同时，希望多提建议，在此感激不尽<img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/39.gif\" alt=\"[鼓掌]\"><img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/39.gif\" alt=\"[鼓掌]\"><img src=\"https://tuanzi.online//Public/static/js/plugins/layui/images/face/39.gif\" alt=\"[鼓掌]\"></p>', '1', '1', '1532667932', 'admin', '0', '/upload/news/201807/40f9846d966df5019620ddedc67a8774.JPG');

-- ----------------------------
-- Table structure for fun_power
-- ----------------------------
DROP TABLE IF EXISTS `fun_power`;
CREATE TABLE `fun_power` (
  `id` int(14) NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `power` text COMMENT '会员权限',
  `dep_name` varchar(64) DEFAULT '' COMMENT '管理员名称',
  `add_time` int(14) DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_power
-- ----------------------------
INSERT INTO `fun_power` VALUES ('1', 'User.Users,User.UserReg,User.ChangeUserInfo,User.UserList,User.EditMember,User.UserInfo,Advert.AdverClass,AdverTise.Advertisement,AdverGoods.AdverGoods,AdverArticle.ArticleList,Advert.AdverClassAc,Advert.AddAdverClass,Advert.DelAdverClass,Advert.AdverList,AdverGoods.AdverGoodsAc,AdverTise.getAdverTiseName,AdverGoods.AddGoods,AdverGoods.DelAdverGoods,AdverGoods.GetAdverGoodsList,AdverTise.AdverTiseAc,AdverTise.AddAdvertisement,AdverTise.DelAdvertisement,AdverTise.AdverTiseList,AdverArticle.AdverArticleAc,AdverGoods.GetAdverGoodsName,AdverArticle.AddArticle,Advert.DelAdverClass,AdverArticle.GetArticleList,System.ClearData,System.ClearCache,System.BackUpList,System.DbbackupList,System.BackUp,System.Download,System.Restore,System.Del,Power.Manager,Power.Member,Power.Managers,Power.ListData,Power.AddManagers,Power.DelManagers,Power.ChangeManagerInfo,Power.DoInfo,Power.AddManager,Power.DelManager,Power.GetManagerPower,DataCount.Statistics,User.DaySign,DataCount.ArticleCount,DataCount.GoodsCount,Public.UploadImage,Public.UploadEditImage,Decorate.InfoView,Decorate.DoInfo,Decorate.DelInfo,Decorate.ListView,Decorate.ModuleView,News.News,News.NewsList,News.NewsAdd,News.NewsCategory,News.NewsInsert,News.NewsDelete,Log.LogActive,Log.ManageLogin,Log.MemberLogin,Log.Log.LogList', '超管', '1529915260');
INSERT INTO `fun_power` VALUES ('2', 'User.Users,User.UserReg,User.ChangeUserInfo,User.UserList,User.EditMember,User.UserInfo,Advert.AdverClass,AdverTise.Advertisement,AdverGoods.AdverGoods,AdverArticle.ArticleList,Advert.AdverList,AdverTise.getAdverTiseName,AdverGoods.GetAdverGoodsList,AdverTise.AdverTiseList,AdverArticle.AdverArticleAc,AdverGoods.GetAdverGoodsName,AdverArticle.GetArticleList,System.BackUpList,System.DbbackupList,System.BackUp,Power.Manager,Power.Member,Power.Managers,Power.ListData,Power.AddManagers,Power.ChangeManagerInfo,Power.AddManager,User.DaySign', '测试', '1529977600');
INSERT INTO `fun_power` VALUES ('3', 'User.Users,User.UserReg,User.UserList,User.EditMember,User.UserInfo,Advert.AdverClass,AdverTise.Advertisement,AdverGoods.AdverGoods,AdverArticle.ArticleList,Advert.AddAdverClass,Advert.DelAdverClass,Advert.AdverList,AdverTise.getAdverTiseName,AdverGoods.AddGoods,AdverGoods.GetAdverGoodsList,AdverTise.AdverTiseAc,AdverTise.DelAdvertisement,AdverTise.AdverTiseList,AdverGoods.GetAdverGoodsName,AdverArticle.AddArticle,AdverArticle.GetArticleList,System.ClearCache,System.BackUpList,System.DbbackupList,System.BackUp,Power.Manager,Power.Member,Power.Managers,Power.ListData,Power.AddManagers,Power.DelManagers,Power.ChangeManagerInfo,Power.AddManager,Power.GetManagerPower,DataCount.Statistics,User.DaySign,DataCount.ArticleCount,DataCount.GoodsCount,Public.UploadImage,Public.UploadEditImage,Decorate.InfoView,Decorate.DoInfo,Decorate.ListView,Decorate.ModuleView,News.News,News.NewsList,News.NewsAdd,News.NewsCategory,Log.LogActive,Log.ManageLogin,Log.MemberLogin,Log.Log.LogList', '面试测试', '1532938136');

-- ----------------------------
-- Table structure for fun_session
-- ----------------------------
DROP TABLE IF EXISTS `fun_session`;
CREATE TABLE `fun_session` (
  `session_id` varchar(64) NOT NULL,
  `session_expires` int(11) DEFAULT NULL,
  `session_data` text COMMENT 'session数据',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_session
-- ----------------------------
INSERT INTO `fun_session` VALUES ('1usruteehv4qslfjk0ib55r407', '1532774955', '');
INSERT INTO `fun_session` VALUES ('29p0a20c5n7s80od2narlhk120', '1532774951', '');
INSERT INTO `fun_session` VALUES ('r6tk5eavl3s7ft3f0usi66mg41', '1532774951', '');
INSERT INTO `fun_session` VALUES ('aphm1n8i8jp2n1d6d0hv9ockm7', '1532774946', '');
INSERT INTO `fun_session` VALUES ('ki5uscb1e5g5sfhppp523pr2t3', '1532774943', '');
INSERT INTO `fun_session` VALUES ('h18sgnkcr13a7o81kpjfaf5qq1', '1532774940', '');
INSERT INTO `fun_session` VALUES ('j6gigcrp077gdl4v3iolt31mq7', '1532774937', '');
INSERT INTO `fun_session` VALUES ('so8al8sugr6had822k9869fgg0', '1532774935', '');
INSERT INTO `fun_session` VALUES ('toq8f5k3ulkeucms7jh1benvi4', '1532774935', '');
INSERT INTO `fun_session` VALUES ('p6447fs421j53uu66k3tuhgbt5', '1532774932', '');
INSERT INTO `fun_session` VALUES ('vmgebneb1uvlt72e2j4lipi407', '1532774927', '');
INSERT INTO `fun_session` VALUES ('ipc1uev4g47c2qncrlies4c2q0', '1532774907', '');
INSERT INTO `fun_session` VALUES ('f794ajh0equ1soq3t2vqtuq4r4', '1532774899', '');
INSERT INTO `fun_session` VALUES ('pe3slt5vsd47ibir60rosrh4d4', '1532774893', '');
INSERT INTO `fun_session` VALUES ('7i8ho8f09nqjkc02o3q54erol7', '1532774892', '');
INSERT INTO `fun_session` VALUES ('e40ss9dqkamhrbm3cfad291ua2', '1532774885', '');
INSERT INTO `fun_session` VALUES ('nedsul1fv9e3h41nu23ie85te6', '1532774880', '');
INSERT INTO `fun_session` VALUES ('mqnhht2f524t4iklqqcpop4e26', '1532774877', '');
INSERT INTO `fun_session` VALUES ('h9225i6mfsaebmedvh3s8j0jc7', '1532774874', '');
INSERT INTO `fun_session` VALUES ('qg95es8ll84kh2tf07il5vutj7', '1532774870', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('dls04gpb1hs4kglcp8vc2k7f51', '1532774870', '');
INSERT INTO `fun_session` VALUES ('qgf14ngn3feab1me7n3cojtkn0', '1532774092', '');
INSERT INTO `fun_session` VALUES ('iojbact289ej52fpm4nd33u2k5', '1532774073', '');
INSERT INTO `fun_session` VALUES ('7doncgse29sht1bq6uhbuu06s1', '1532774070', '');
INSERT INTO `fun_session` VALUES ('cqphki9go9meg0r9mhb8uh5m82', '1532774067', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('05era43teod58o9trfmfjusu16', '1532774066', '');
INSERT INTO `fun_session` VALUES ('3gf5ou7nmvh73rf7dgksivj1d5', '1532773725', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('cqnsg92ngo9olkh3kle8s79n01', '1532773724', '');
INSERT INTO `fun_session` VALUES ('lpdcl33ehm5gs6k4fckoi78pk2', '1532773676', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('h0nnihh5scp2ob1eklbbdc3te1', '1532773676', '');
INSERT INTO `fun_session` VALUES ('klvsvn0thr852neamhd5539p70', '1532773601', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('jac5cv3gb5vmt66cmufnjhgec6', '1532773600', '');
INSERT INTO `fun_session` VALUES ('593vdlam9kmgvlq1u9tdtf58q0', '1532773342', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('r3jhe1fll5udeemprtp3pmghd1', '1532773342', '');
INSERT INTO `fun_session` VALUES ('sk7eidu320gspl11hdsplfmdk6', '1532773250', '');
INSERT INTO `fun_session` VALUES ('pklfbdgmi97k0slbeaoc13qkh6', '1532773247', '');
INSERT INTO `fun_session` VALUES ('hltdu0n730h2o416kmb5tf4u52', '1532773243', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('6phovet7najufsj5k915ij2hu4', '1532773243', '');
INSERT INTO `fun_session` VALUES ('163ge1n4o2pga0qdh5qhqnf942', '1532773189', '');
INSERT INTO `fun_session` VALUES ('5bshu02vn1oolsf1k9mniivss1', '1532773186', '');
INSERT INTO `fun_session` VALUES ('abk9ho2nj282kubirlns96q632', '1532773183', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('dvfjqhhosta05d8ltiv3ktlm64', '1532773182', '');
INSERT INTO `fun_session` VALUES ('krnqa4c9o391oh5ja4nco71v52', '1532773086', '');
INSERT INTO `fun_session` VALUES ('l2b78784skcq0rt3jl46f6aun5', '1532773080', '');
INSERT INTO `fun_session` VALUES ('q0tqaailtamusfgudk6raakr81', '1532773073', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('0bmugn21rijmhecfk6feai1a40', '1532773072', '');
INSERT INTO `fun_session` VALUES ('8e3hame9f91uqpimq4afpbgct6', '1532772955', '');
INSERT INTO `fun_session` VALUES ('0hd8ha4rjtaknt7gb7ojifquh3', '1532772952', '');
INSERT INTO `fun_session` VALUES ('5ur4lvbi1bqsvcn9be3lquari2', '1532772949', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('4e4odrpb1sl0alsikam4i1fkf1', '1532772948', '');
INSERT INTO `fun_session` VALUES ('fh6eo3rh90t445odsn78pamks7', '1532772928', '');
INSERT INTO `fun_session` VALUES ('9omfs756dk0t1pc9gtaim99367', '1532772923', '');
INSERT INTO `fun_session` VALUES ('o5jt39mktnlab5n9kormelv2b3', '1532772918', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('atfeamt935ek24m0am6o0t40r5', '1532772917', '');
INSERT INTO `fun_session` VALUES ('lb5qf9vgkjfs42d4urdug273m4', '1532772625', '');
INSERT INTO `fun_session` VALUES ('ca20jsn8mhjdobh382dclj3rq3', '1532772623', '');
INSERT INTO `fun_session` VALUES ('4vdvi6f1gibprq2lbtulgg2f87', '1532772238', '');
INSERT INTO `fun_session` VALUES ('gc0eo48ccugk0h88qt9gmedoh4', '1532772243', '');
INSERT INTO `fun_session` VALUES ('d48dcoi2sokdqjctjn6bqdshj0', '1532772247', '');
INSERT INTO `fun_session` VALUES ('7b34620id7rm8td3iecfns8g80', '1532772618', '');
INSERT INTO `fun_session` VALUES ('52j91qc44kv7o8qt8gohst2a71', '1532772619', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('tuh4uhkoco9nike2e99haj5995', '1532772238', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('1v1htg8ui1ni2etn45vvdh2b50', '1532772128', '');
INSERT INTO `fun_session` VALUES ('bd5vh6mj5q2d595qpci552v8e4', '1532772124', '');
INSERT INTO `fun_session` VALUES ('j0bboj6h2curnbafv87umgoms7', '1532772121', '');
INSERT INTO `fun_session` VALUES ('om2j4d8fppstmf6dssabq9g327', '1532772117', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('sg0855bulhbpr9vs7e1eldb1v0', '1532772117', '');
INSERT INTO `fun_session` VALUES ('bu9cubb49oii3h8sg4hmos1610', '1532772088', '');
INSERT INTO `fun_session` VALUES ('9fm56n2fitiiog89ei47pd1496', '1532772086', '');
INSERT INTO `fun_session` VALUES ('q7vnq1plof3bejce1hdc21fu66', '1532772083', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('ba5veevgvin9jqni382ol9sku4', '1532772082', '');
INSERT INTO `fun_session` VALUES ('dn2tjbr6b8fbaqjlv128dks361', '1532771975', '');
INSERT INTO `fun_session` VALUES ('uo6du1vclil5cqkf8ipsrguq32', '1532771973', '');
INSERT INTO `fun_session` VALUES ('kkauedv4i3dbo39iht4h4vh2p4', '1532771732', '');
INSERT INTO `fun_session` VALUES ('782p7ilqanvqq668jqcq610qv1', '1532771736', '');
INSERT INTO `fun_session` VALUES ('5kvt5h1ot4n1jcb6hogiakpar3', '1532771896', '');
INSERT INTO `fun_session` VALUES ('0cnh8v070bdc89i04uo9ffp4c0', '1532771896', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('eosibl0gsoesrjc1ikf744rjh5', '1532771902', '');
INSERT INTO `fun_session` VALUES ('en5s79m6q2joju9e5i3kv3h6m3', '1532771966', '');
INSERT INTO `fun_session` VALUES ('54d1gbrnlsa625252heoq3k5k6', '1532771966', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('7qqnm11o1casvmss0hdt8esva4', '1532771707', '');
INSERT INTO `fun_session` VALUES ('u7k9qljbkv9puo2j1mtn8mvej3', '1532771724', '');
INSERT INTO `fun_session` VALUES ('c4hcsa643rbt2gs97df4komlm2', '1532771724', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('s5ebvca65be75gaq9sausv87e4', '1532761536', '');
INSERT INTO `fun_session` VALUES ('j3012dkekpistpg8mepq3fg097', '1532761527', '');
INSERT INTO `fun_session` VALUES ('g3b9kgj1hb3iohgm871ve50i01', '1532761526', '');
INSERT INTO `fun_session` VALUES ('g2hp46tms4ts6f5u7mk4tq7vr4', '1532761516', '');
INSERT INTO `fun_session` VALUES ('p5l5cgkcvhjjhh5f8beqf9qmj5', '1532761516', '');
INSERT INTO `fun_session` VALUES ('svtg4f7e3k4vejuggkc0krepn1', '1532761499', '');
INSERT INTO `fun_session` VALUES ('52e5adal97j1kg3r24qhcemet7', '1532761495', '');
INSERT INTO `fun_session` VALUES ('lejog6q7geb9le62d6gdo43g55', '1532761487', '');
INSERT INTO `fun_session` VALUES ('e2qt084o2ulrj0t956cbnf45p7', '1532761490', '');
INSERT INTO `fun_session` VALUES ('p7q1scc47fo2ae08apjko69614', '1532761492', '');
INSERT INTO `fun_session` VALUES ('mrlp9pdhhdvio7qtmlt8hv7ko3', '1532761485', '');
INSERT INTO `fun_session` VALUES ('tg8jrmmr4b1ttvh4i7n6n4dpf5', '1532761472', '');
INSERT INTO `fun_session` VALUES ('0kl2b09mjo2b0rpm62a2g8db02', '1532761469', '');
INSERT INTO `fun_session` VALUES ('dihocfas25qsmlncts1ju6hck4', '1532761465', '');
INSERT INTO `fun_session` VALUES ('c44h788sktdu607rdcp37fih63', '1532761464', '');
INSERT INTO `fun_session` VALUES ('ftst9ltqa0qoj730f6479351o4', '1532761409', '');
INSERT INTO `fun_session` VALUES ('j1ar91e7c9iu68csmnmcbqvsk3', '1532761409', '');
INSERT INTO `fun_session` VALUES ('knio20ppebd4p4rrjrtiultrr6', '1532761406', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('e6f20hcg3tgk7t2d51lncstbi0', '1532761406', '');
INSERT INTO `fun_session` VALUES ('62b35pf7huo2blve4sdhvt99o1', '1532761138', '');
INSERT INTO `fun_session` VALUES ('ji1ho3957gmj2omo6ls3uo6l82', '1532761133', '');
INSERT INTO `fun_session` VALUES ('firt1o73g2p43b21dpcn1ih1e1', '1532761130', '');
INSERT INTO `fun_session` VALUES ('haje5ed7fmccgk6tnurjpabit2', '1532761125', '');
INSERT INTO `fun_session` VALUES ('8ap03us89i542i0bq2q1f9e0l2', '1532761085', '');
INSERT INTO `fun_session` VALUES ('s7qp4eih0qr1tc4mbsv4dm6mf5', '1532761085', '');
INSERT INTO `fun_session` VALUES ('rdd3gb9rrpa2v9m4it6t5p6t95', '1532761083', '');
INSERT INTO `fun_session` VALUES ('b8kfpvr05qinh47663vnhju687', '1532761080', '');
INSERT INTO `fun_session` VALUES ('87ovepquk3mkvr7onsttj8pen0', '1532761076', '');
INSERT INTO `fun_session` VALUES ('8ie6lka5cdl856bl6phdu2qpr2', '1532761076', '');
INSERT INTO `fun_session` VALUES ('j5akms0rfi53v6drki2qi1dsp7', '1532761076', '');
INSERT INTO `fun_session` VALUES ('3n6n4h2jtrtkbnl0mn4r6vfbl7', '1532761071', '');
INSERT INTO `fun_session` VALUES ('f5k692ubck8i0c47jbm9ihrkf4', '1532761070', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('8h9443t3cb6laqun8epk54ssp5', '1532760995', '');
INSERT INTO `fun_session` VALUES ('b1a0tra67296kpfdj2m65pllp6', '1532760995', '');
INSERT INTO `fun_session` VALUES ('pn5o7br3vs9igogk74r1ipeqp0', '1532760993', '');
INSERT INTO `fun_session` VALUES ('n6fmgho09hdta0n06kc56n3l66', '1532760990', '');
INSERT INTO `fun_session` VALUES ('hth3qjheflouj43coah0b35p25', '1532760984', '');
INSERT INTO `fun_session` VALUES ('mkmuuh04bt8pdu7hl4vooq2uo6', '1532760982', '');
INSERT INTO `fun_session` VALUES ('4hgokjhrjl5gil7hcvocq8uje3', '1532760972', '');
INSERT INTO `fun_session` VALUES ('pci9dk0k5hupo3mk18ue60aq82', '1532760972', '');
INSERT INTO `fun_session` VALUES ('1fis7ll00d81ubq08r6ivjof56', '1532760970', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('d0j7fatoj5grvp6ht0nl6j4oa0', '1532760969', '');
INSERT INTO `fun_session` VALUES ('49l14ss03060aa5tns1iul9hp5', '1532760942', '');
INSERT INTO `fun_session` VALUES ('l556bakutp519lqtenrl6g47c6', '1532760942', '');
INSERT INTO `fun_session` VALUES ('cljo2ja553p2q974lp9hp60fg3', '1532760939', '');
INSERT INTO `fun_session` VALUES ('13b50menrrci1no9oldevib085', '1532760933', '');
INSERT INTO `fun_session` VALUES ('un6bffvqjo3r2nnjqh4l0rtu27', '1532760933', '');
INSERT INTO `fun_session` VALUES ('1rr7076saph72a7mi0are66qd7', '1532760904', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('u7b3pdkc9bh9tscurac8gdph95', '1532760904', '');
INSERT INTO `fun_session` VALUES ('9tbmohsf8fek32l292r14s4nl1', '1532760853', '');
INSERT INTO `fun_session` VALUES ('cpf02osfl0ni3l7cgp5lchsa40', '1532760853', '');
INSERT INTO `fun_session` VALUES ('eb9qj94ufvu8vhk0g52qhqee85', '1532760850', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('p5fji5dqg0tkjlfoqnkbe9su95', '1532760849', '');
INSERT INTO `fun_session` VALUES ('dmdh8bsoksf9k382g553jt9s16', '1532760779', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('vsnrqhg5472c8bhoj78d9p2fm0', '1532760778', '');
INSERT INTO `fun_session` VALUES ('skociqcfkv4j4utqe040ns1m32', '1532760644', '');
INSERT INTO `fun_session` VALUES ('a534q72pv4k83600pacb6klbc2', '1532760641', '');
INSERT INTO `fun_session` VALUES ('af4jju7u1apdkkm7cskn3petd5', '1532760616', '');
INSERT INTO `fun_session` VALUES ('q2mg8dq87avvmapv5he83isd33', '1532760616', '');
INSERT INTO `fun_session` VALUES ('60kfmnqa9p0u63pt2qgq2kjj11', '1532760611', '');
INSERT INTO `fun_session` VALUES ('gb00b7tnp9qla5r2e5u0ssi8v1', '1532760611', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('af0eulj8anja31tg5httkb8nb0', '1532760342', '');
INSERT INTO `fun_session` VALUES ('l9n2vpvu0i4n7c6oq4neris4d1', '1532760318', '');
INSERT INTO `fun_session` VALUES ('u5ld6qo3kdsdcl1ecbu8eafkj1', '1532760318', '');
INSERT INTO `fun_session` VALUES ('385td5621r595428a1v5q0o3v3', '1532760315', '');
INSERT INTO `fun_session` VALUES ('jb667h1slbd6ro4snfoftuved2', '1532760315', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('sff7stbluimvrdquvtbgh66l93', '1532760262', '');
INSERT INTO `fun_session` VALUES ('q2oaotrc9h753b7geju1pnier5', '1532760262', '');
INSERT INTO `fun_session` VALUES ('ckb5td2p3i81rs1puj7rj8pv10', '1532760258', '');
INSERT INTO `fun_session` VALUES ('0elsrga9t00s2agmpl09efa8d2', '1532760255', '');
INSERT INTO `fun_session` VALUES ('jnat5blaedqa0mb4uhh8e8vod1', '1532760253', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('imom7n3p3mknarfvaqgj68idp3', '1532760253', '');
INSERT INTO `fun_session` VALUES ('d044eomgmqgdqmgjolg8b3al66', '1532760218', '');
INSERT INTO `fun_session` VALUES ('2311ifdfck718ceinguq926m16', '1532760218', '');
INSERT INTO `fun_session` VALUES ('t97lldsiv1bc2nvibl339u7ao5', '1532760216', '');
INSERT INTO `fun_session` VALUES ('1om2sfbdner2pafjgbvetuhc92', '1532760214', '');
INSERT INTO `fun_session` VALUES ('8n4cqovrmuq4t13oqkr3n00hf6', '1532760212', '');
INSERT INTO `fun_session` VALUES ('5eis2oiik2i1f2uaat25hv2ri3', '1532760212', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('re6ehv2uigq26g38dvsrvol525', '1532760168', '');
INSERT INTO `fun_session` VALUES ('3s380sju5670f15557bdngu1h7', '1532760168', '');
INSERT INTO `fun_session` VALUES ('q987he0ml4i3noc6im839617n1', '1532760164', '');
INSERT INTO `fun_session` VALUES ('vplprnbdostgt441mmdcff9397', '1532760164', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('45klk0fucdb6stcf4ga23hpbb6', '1532759847', '');
INSERT INTO `fun_session` VALUES ('jo13qkat2drlbr7e52nm6gclp2', '1532760068', '');
INSERT INTO `fun_session` VALUES ('a8d8bmlhqfa9cqgsh7dkk6mpq7', '1532760068', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('sdheqdpcupn80ihueavujfgek1', '1532760071', '');
INSERT INTO `fun_session` VALUES ('nlhg93qnlj20eog4f357nj68g1', '1532760071', '');
INSERT INTO `fun_session` VALUES ('94bmcfeons90lrnjhrht6acbm4', '1532759847', '');
INSERT INTO `fun_session` VALUES ('rqsmn57ocgatavdeuk2mps9o26', '1532759845', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('q25p0nnp2d380bf9d6h4e3sne2', '1532759532', '');
INSERT INTO `fun_session` VALUES ('p11umt62jifpv18jvifr9svvh0', '1532759533', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('fc7svpnq6s2spjj7rrr54hck24', '1532759536', '');
INSERT INTO `fun_session` VALUES ('hv7psn8lklfdjnn1nquurnr5l4', '1532759536', '');
INSERT INTO `fun_session` VALUES ('vccaouddlpqlc1bl61dl8g39k6', '1532759844', '');
INSERT INTO `fun_session` VALUES ('l9ppj5v3jb0p81pul3o5bl3b34', '1532758774', '');
INSERT INTO `fun_session` VALUES ('0cs1k0eec05vpjrm92jpv38lb6', '1532759437', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('tspp1g2n93au1l8mn0mns9g566', '1532759438', '');
INSERT INTO `fun_session` VALUES ('lbap0pkhmqnj24u0lmu2rn74n2', '1532759442', '');
INSERT INTO `fun_session` VALUES ('6k9s3326co65i6sd29vbp2fll6', '1532759442', '');
INSERT INTO `fun_session` VALUES ('bht4b29o8oapma9bt17sas1a70', '1532758774', '');
INSERT INTO `fun_session` VALUES ('rm1eds6bfdtf9gkn71qq2avnu7', '1532770465', '');
INSERT INTO `fun_session` VALUES ('oprdlla2pu2l3tpeb2k72d8d65', '1532770466', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('iqic51niarqiph44iea5id68o1', '1532771485', '');
INSERT INTO `fun_session` VALUES ('n7naemdql1d195904fufufu9c1', '1532771636', '');
INSERT INTO `fun_session` VALUES ('l0tmng3jppsgt12ktr4ilh7q61', '1532758768', '');
INSERT INTO `fun_session` VALUES ('776e8dq1vnsp90i9d93r7i2is5', '1532758769', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('ssha8vmpgiqt2477ve66dsmev7', '1532771644', '');
INSERT INTO `fun_session` VALUES ('1vgkal9t6glahqv99o57cafcf3', '1532771653', '');
INSERT INTO `fun_session` VALUES ('bql28hr8igou017djn2chb7ir0', '1532758568', '');
INSERT INTO `fun_session` VALUES ('7lm3iq8ghn3o9tia4lueu50ab3', '1532763314', '');
INSERT INTO `fun_session` VALUES ('k9frla7np6ja8iu6uev50b17k1', '1532758211', '');
INSERT INTO `fun_session` VALUES ('71158cvdkg1u5n8em85r5aqc80', '1532758211', '');
INSERT INTO `fun_session` VALUES ('5v2k6rkhpg9lpq011uij0ub9i3', '1532758539', '');
INSERT INTO `fun_session` VALUES ('glj08cfgl2n6hhn42g3at5n913', '1532758540', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('9988ii2q95pg3ibobj807tb4d3', '1532758561', '');
INSERT INTO `fun_session` VALUES ('g36g81pc9661qapcur2usnl0t5', '1532758564', '');
INSERT INTO `fun_session` VALUES ('05efpmfodj401m1vpi0iaic531', '1532758568', '');
INSERT INTO `fun_session` VALUES ('u0apna2vobgfiqtkhpo0ies1o4', '1532758204', '');
INSERT INTO `fun_session` VALUES ('lc1l0ht8olkrlslt8i5fm04jt3', '1532758150', '');
INSERT INTO `fun_session` VALUES ('btr88cj57vq6sh94pjqkqdbbn4', '1532758134', '');
INSERT INTO `fun_session` VALUES ('rlho25moqov2cbgjh9pqp375p2', '1532758134', '');
INSERT INTO `fun_session` VALUES ('qn487lre00pv88sl4i6svgsdk2', '1532758132', '');
INSERT INTO `fun_session` VALUES ('iu89le9ge7qau7sa6gt1a779v1', '1532757888', '');
INSERT INTO `fun_session` VALUES ('kivq01392b8de738c74kfsap10', '1532757866', '');
INSERT INTO `fun_session` VALUES ('14s370t7igjrioefvh1oj8o431', '1532757866', '');
INSERT INTO `fun_session` VALUES ('kd6iijgge2h80dpktqlas7hgl6', '1532757864', '');
INSERT INTO `fun_session` VALUES ('3rriosl38ultht9ta4m6td71n2', '1532757860', '');
INSERT INTO `fun_session` VALUES ('qf8j66p1e67tdo3nhi2cs7p1q6', '1532757860', '');
INSERT INTO `fun_session` VALUES ('bc16qf0o2jaqc25i4u1sbu0bp3', '1532757859', '');
INSERT INTO `fun_session` VALUES ('n1o3gkb5d5ta3aalpg1a7k4mp2', '1532757857', '');
INSERT INTO `fun_session` VALUES ('lomulimh7u5reumpnob3hhhcd0', '1532757855', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('u84vtvmibcdhb6mge8la3n24p3', '1532757854', '');
INSERT INTO `fun_session` VALUES ('dm95r5ab6skdd336kab7tp25v1', '1532757760', '');
INSERT INTO `fun_session` VALUES ('fjf98p303s2klkfdfdingr1854', '1532757760', '');
INSERT INTO `fun_session` VALUES ('7ds7p2d4b1qj655qj1nbcl0ai2', '1532757758', '');
INSERT INTO `fun_session` VALUES ('5i7qjd3un09e1stqc930l3flf0', '1532757753', '');
INSERT INTO `fun_session` VALUES ('slm2j8de797mp83j5dmo6dboa3', '1532757746', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('atniq6agk364rjm8tov3am4f20', '1532757746', '');
INSERT INTO `fun_session` VALUES ('i3eq9sv3llsid7po2q52ege1s0', '1532757558', '');
INSERT INTO `fun_session` VALUES ('c8q8d45l7erpfhajhgf7d8rs55', '1532757558', '');
INSERT INTO `fun_session` VALUES ('13q8rmu1d8gb16um2dqha7mnh3', '1532757557', '');
INSERT INTO `fun_session` VALUES ('q68e6n168670rnvka8vujeqhl4', '1532757555', '');
INSERT INTO `fun_session` VALUES ('qtqhg2l146r3jhum56ds4qqr56', '1532757512', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('0073th6pr9olf09ojvl40fjeh2', '1532757511', '');
INSERT INTO `fun_session` VALUES ('dcmqhr7v7rmf0d3mbv3se0f202', '1532757326', '');
INSERT INTO `fun_session` VALUES ('9eabmhi1etqfte1dbrfb2oim25', '1532757326', '');
INSERT INTO `fun_session` VALUES ('7jahibvrm258s17c4aocvjupg2', '1532757325', '');
INSERT INTO `fun_session` VALUES ('v2elc15us2jqfi013ke8vupet5', '1532757323', '');
INSERT INTO `fun_session` VALUES ('f975klbu7g9gqbvbkmm6q5h8j5', '1532757316', '');
INSERT INTO `fun_session` VALUES ('saqksbqs19p6oeqlenuohlrrh5', '1532757316', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('9cecgmrkb49vtmav1rdnjas3s7', '1532757048', '');
INSERT INTO `fun_session` VALUES ('6a37da70p7qgk4fv9nvtbhub33', '1532757047', '');
INSERT INTO `fun_session` VALUES ('hf7svmsngpqnv20ssf33qdo184', '1532757046', '');
INSERT INTO `fun_session` VALUES ('tldt1pv9o0najb8l14bj2kfvj0', '1532757044', '');
INSERT INTO `fun_session` VALUES ('fof8mm2uqnvheifphjlgi1mhj0', '1532757040', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('qciiqamvsbn1fm2pid6c82hou7', '1532757039', '');
INSERT INTO `fun_session` VALUES ('3fvd6316geut05dagr8re32p81', '1532756411', '');
INSERT INTO `fun_session` VALUES ('44ad11i4uepqr2ihnf327fqjs2', '1532756411', '');
INSERT INTO `fun_session` VALUES ('vhsjno0sa0b8sgarlec3ud8646', '1532756407', '');
INSERT INTO `fun_session` VALUES ('h5vjo63bpqejehjc8k6mvpm6d7', '1532756403', '');
INSERT INTO `fun_session` VALUES ('rq17h41fisdn078qs6r6klmd63', '1532756278', '');
INSERT INTO `fun_session` VALUES ('62nkr1o4l2qff5g2rgdv124jb1', '1532756257', '');
INSERT INTO `fun_session` VALUES ('6442813c1dbbt325bagvvfos56', '1532756257', '');
INSERT INTO `fun_session` VALUES ('20hf1fa135ot0g027ue0t9sla2', '1532756255', '');
INSERT INTO `fun_session` VALUES ('th22qap3no2bq6vi5534mjvp23', '1532756253', '');
INSERT INTO `fun_session` VALUES ('6pipgcvgi65ja4vtghdfcbdi45', '1532756251', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('k0svjjgdb05e2g4hc2fumoi1n4', '1532756250', '');
INSERT INTO `fun_session` VALUES ('9h46rufq1mfpmckj2vtvs8pcu4', '1532756213', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('2ps5iigrnmmps407p1tumn7pd5', '1532756213', '');
INSERT INTO `fun_session` VALUES ('93kpjvp2ibfjdc5bcga54ci0a4', '1532756104', '');
INSERT INTO `fun_session` VALUES ('jor35bi7geoshoneqofti30h54', '1532756104', '');
INSERT INTO `fun_session` VALUES ('clmn89pt7i63m80uii5joks365', '1532756102', '');
INSERT INTO `fun_session` VALUES ('oe35lnfd4pdnja62t6vb0j6o20', '1532756098', '');
INSERT INTO `fun_session` VALUES ('ootnrod1ael2u6r3tr3migdl36', '1532756093', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('4ej4vu8fs0s44io806354v5ma2', '1532756092', '');
INSERT INTO `fun_session` VALUES ('jk7nm19r5r5nn9sfpk466i1nl0', '1532755990', '');
INSERT INTO `fun_session` VALUES ('g8n4p5vb1vd6ci4fb4vf0de051', '1532755990', '');
INSERT INTO `fun_session` VALUES ('ouej1rq2aeardpkcbh2e2hfgr2', '1532755988', '');
INSERT INTO `fun_session` VALUES ('n4av4mprldhhn91gvktca1nfl7', '1532755986', '');
INSERT INTO `fun_session` VALUES ('iv3pja9ho59f6af9fi4nmakur3', '1532755974', '');
INSERT INTO `fun_session` VALUES ('lcn1khot5591ovrig04gfkjtt1', '1532755947', '');
INSERT INTO `fun_session` VALUES ('bv0b2d1ildk6ncldmtihdcpj31', '1532755947', '');
INSERT INTO `fun_session` VALUES ('hrmetmp4md1pnn9qc5qh3d02s6', '1532755945', '');
INSERT INTO `fun_session` VALUES ('lq6v5l4kk2ok5l6ok8jaicldo5', '1532755944', '');
INSERT INTO `fun_session` VALUES ('8eibfrbm1r5vhsbi0ug5b3vp65', '1532755940', '');
INSERT INTO `fun_session` VALUES ('uhq78dg29us6l7bi2g6b6rkd66', '1532755931', '');
INSERT INTO `fun_session` VALUES ('b8uo83chl10k4s5ahlaqu645t1', '1532755926', '');
INSERT INTO `fun_session` VALUES ('4j6f4d2pk70cm8n9blue1ck9q7', '1532755925', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('nhqp5doqloe20lfinf2nluvqq4', '1532755924', '');
INSERT INTO `fun_session` VALUES ('h3qqj801v483315h50a0uud9n0', '1532755917', '');
INSERT INTO `fun_session` VALUES ('1s2v4slap324skj18pp4avtkg0', '1532755916', '');
INSERT INTO `fun_session` VALUES ('i7ubo6i10bq3kqpbf40bk20to4', '1532755701', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('9jthi87l3c21p5kpcd2m3utqv6', '1532755700', '');
INSERT INTO `fun_session` VALUES ('l4j954409rckn6c6kita9d5gc0', '1532755076', '');
INSERT INTO `fun_session` VALUES ('indumhj0unqsi0h6sr7ml0bgo7', '1532755075', '');
INSERT INTO `fun_session` VALUES ('l1fc1t2a9pg70goutlbr535jt5', '1532755074', '');
INSERT INTO `fun_session` VALUES ('c3fdc4pkcbr4pa50gk1j73uji4', '1532755066', '');
INSERT INTO `fun_session` VALUES ('v8hebmnbr6g8i6ts8j9i424jd1', '1532755065', '');
INSERT INTO `fun_session` VALUES ('b9nqd52eia9iv0i0c5dmkglv65', '1532755062', '');
INSERT INTO `fun_session` VALUES ('um4plpftue6j5nd3dpt1ik9tp7', '1532755059', '');
INSERT INTO `fun_session` VALUES ('67v77v6el96gnvro0bmgbvqr31', '1532755053', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('u13cnfpg19bhn3hpq8njg1cal1', '1532755052', '');
INSERT INTO `fun_session` VALUES ('jc63l9h9ak76v225ko7ko4su94', '1532753528', '');
INSERT INTO `fun_session` VALUES ('36r18et5bssh1gm899mhg2ab03', '1532753525', '');
INSERT INTO `fun_session` VALUES ('1ej180dj8ocpnahg197cg3j402', '1532753381', '');
INSERT INTO `fun_session` VALUES ('cgrrt6sdukr4jfa21nfvikaid4', '1532753240', '');
INSERT INTO `fun_session` VALUES ('nuo6m5a38r1o407bhaot5l2ro3', '1532753229', '');
INSERT INTO `fun_session` VALUES ('pvanqe8boqph7qamiaucn6t0t0', '1532752929', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('k6b8vg1095nnbok47g17a4g6g5', '1532752928', '');
INSERT INTO `fun_session` VALUES ('20aucotf3rtl175hgmcf1mslr5', '1532744617', '');
INSERT INTO `fun_session` VALUES ('q4so8p9s2mrtiq4gi7s4e63785', '1532744606', '');
INSERT INTO `fun_session` VALUES ('pogtl34pt8pjarmhs7m0efn214', '1532744590', '');
INSERT INTO `fun_session` VALUES ('5ggak8u6kvraue3a88923e35h2', '1532744586', '');
INSERT INTO `fun_session` VALUES ('9ov9i7aa0ir4rfr6on5ruiogm2', '1532744557', '');
INSERT INTO `fun_session` VALUES ('uv3am9aqca1ekt3pnqonedvnb2', '1532744557', '');
INSERT INTO `fun_session` VALUES ('2s01ju3pv55alk2ttnacfkcn45', '1532744553', '');
INSERT INTO `fun_session` VALUES ('ggo4le9tmm0m6aogj8r3idphk6', '1532744544', '');
INSERT INTO `fun_session` VALUES ('c8k91nothivaek5039spotvd46', '1532744537', '');
INSERT INTO `fun_session` VALUES ('f96ksq5qb6kp50vhu02k1316a6', '1532744522', '');
INSERT INTO `fun_session` VALUES ('aeg9aut2ouskn09nn71u884cd2', '1532744502', '');
INSERT INTO `fun_session` VALUES ('1ufrdntshu9068efeg5fqsgbb0', '1532744500', '');
INSERT INTO `fun_session` VALUES ('a6db6m22dk2fgakdjo6fq10i00', '1532744491', '');
INSERT INTO `fun_session` VALUES ('c2qtl0d63otb37dr6ctg06pie7', '1532744488', '');
INSERT INTO `fun_session` VALUES ('gkk22f4jd43fr2pfhqhs2ljj75', '1532744483', '');
INSERT INTO `fun_session` VALUES ('rru2vmrf5in3emogd66523b4v7', '1532744480', '');
INSERT INTO `fun_session` VALUES ('bqeo74487qu4n5c4q6m1qfipt4', '1532744478', '');
INSERT INTO `fun_session` VALUES ('7pds47515kr131fbm1lb9i3qk7', '1532744474', '');
INSERT INTO `fun_session` VALUES ('8d2gi2a6omiehuvtqe2tqb7567', '1532744472', '');
INSERT INTO `fun_session` VALUES ('3hu7ukr160b0ggu41vk1dprvq2', '1532744470', '');
INSERT INTO `fun_session` VALUES ('ugdbftqabstvsk95ea2vhhmni1', '1532744465', '');
INSERT INTO `fun_session` VALUES ('saegepgtv3ebu46vcipkdug0v5', '1532744462', '');
INSERT INTO `fun_session` VALUES ('h3tjhfqvf7pie17tu48rimoob4', '1532744459', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('3r0m62df7jof2e851qfeisvb43', '1532744459', '');
INSERT INTO `fun_session` VALUES ('ci1gh4na495ogndf9883ds2lq3', '1532708597', '');
INSERT INTO `fun_session` VALUES ('157fd1ii9mlh6o00jhsp9l7tg7', '1532708590', '');
INSERT INTO `fun_session` VALUES ('2afb8tfhdbiqbkv4hg8fscm5e0', '1532708590', '');
INSERT INTO `fun_session` VALUES ('jduuggd7750mrfkqbgb0576gk3', '1532708588', '');
INSERT INTO `fun_session` VALUES ('ff6itt83mckkf9bh2so4q80hf4', '1532708580', '');
INSERT INTO `fun_session` VALUES ('mqa4u6mf2t786lq89b2m8easj6', '1532708578', '');
INSERT INTO `fun_session` VALUES ('mto78jeobuc517fsnviri09pn6', '1532708577', '');
INSERT INTO `fun_session` VALUES ('ccmrcj567mlkd3sp4hgsqdva31', '1532708575', '');
INSERT INTO `fun_session` VALUES ('56idbruv57mv3u9d8l5o1rjmh5', '1532708574', '');
INSERT INTO `fun_session` VALUES ('r17kjhv2hi85s0hdqhk8nf21r6', '1532708573', '');
INSERT INTO `fun_session` VALUES ('rdr0qir6kacfm2c106hqrbh756', '1532708571', '');
INSERT INTO `fun_session` VALUES ('6m6paf94si3nbjbqao8566o6a3', '1532708570', '');
INSERT INTO `fun_session` VALUES ('62si82trmgpcfjru87gq84oqd6', '1532708569', '');
INSERT INTO `fun_session` VALUES ('kgck3lfauhll2cro0q8ck65v66', '1532708569', '');
INSERT INTO `fun_session` VALUES ('3plh8jpfh9vuqf3a3dpb411a46', '1532708568', '');
INSERT INTO `fun_session` VALUES ('3f347uks00km42jrclg5h64ll1', '1532708567', '');
INSERT INTO `fun_session` VALUES ('oe1htv9q9vote591vqp6se7cl0', '1532708566', '');
INSERT INTO `fun_session` VALUES ('rrnarloc3g369p4ivvd6cseae7', '1532620088', 'verify|s:32:\"d757719ed7c2b66dd17dcee2a3cb29f4\";');
INSERT INTO `fun_session` VALUES ('md28iehngj82mq65kojmahgbk2', '1532667067', '');
INSERT INTO `fun_session` VALUES ('5e6807q9taijdd1309i4g5utn7', '1532667082', '');
INSERT INTO `fun_session` VALUES ('8idplb1r2h8g7psipcqcmlu6u2', '1532667082', '');
INSERT INTO `fun_session` VALUES ('d8o2ecop75lvdjsf7gdrq40ah6', '1532667083', '');
INSERT INTO `fun_session` VALUES ('h4iseumfgbr403gahgamc3nqc5', '1532667349', '');
INSERT INTO `fun_session` VALUES ('l6rkdns58mhlo8lpnf4d5c1ht5', '1532667349', '');
INSERT INTO `fun_session` VALUES ('18r5k96m13bc9331gmd1dfatv1', '1532667349', '');
INSERT INTO `fun_session` VALUES ('fob97ol14bgatkv3nviemkh5t7', '1532667351', '');
INSERT INTO `fun_session` VALUES ('6d6jmquaqdt49jveo2ipa6kht7', '1532667355', '');
INSERT INTO `fun_session` VALUES ('05faokcunn162trmc2c3qm8pq2', '1532667432', '');
INSERT INTO `fun_session` VALUES ('34d0gibkifmfgdfhj8pomfj591', '1532667476', '');
INSERT INTO `fun_session` VALUES ('n548vakqsfqivctd4d950aos92', '1532667541', '');
INSERT INTO `fun_session` VALUES ('1bkqc1iipgt2rnc5rd68pcff24', '1532667584', '');
INSERT INTO `fun_session` VALUES ('3rflq4lmj02fmloq84s4pg01n1', '1532667588', '');
INSERT INTO `fun_session` VALUES ('b9rfsg4ik8vlk2hiuvovbt27m0', '1532708565', '');
INSERT INTO `fun_session` VALUES ('eclue19qlg7sbrsabsn139f377', '1532708563', '');
INSERT INTO `fun_session` VALUES ('jmhu9iantgdka7aq6knumdbp55', '1532708560', '');
INSERT INTO `fun_session` VALUES ('0hrs8scnug91mouq2vk6dhonk2', '1532708559', '');
INSERT INTO `fun_session` VALUES ('ifotfgmt9cine48po8oe93kbg3', '1532708558', '');
INSERT INTO `fun_session` VALUES ('cjsbbehf0c3hmnf161vd9rhgg1', '1532708556', '');
INSERT INTO `fun_session` VALUES ('a8rili7i6ahgvouug92to2ag17', '1532708555', '');
INSERT INTO `fun_session` VALUES ('698tmh4ktk8m49b8s8207539i7', '1532708554', '');
INSERT INTO `fun_session` VALUES ('k8kqmou8qm2vnop3p6gj2kbjq6', '1532708550', '');
INSERT INTO `fun_session` VALUES ('g9gf8c9mia3ik8krem13a958i1', '1532708547', '');
INSERT INTO `fun_session` VALUES ('a10to53ceu6ni4bjajdvql7935', '1532708545', '');
INSERT INTO `fun_session` VALUES ('jdth05e311a6s8f2f4rc01io73', '1532708538', '');
INSERT INTO `fun_session` VALUES ('714lepuft0rr4ehm0jlea9jg75', '1532708541', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"XhhXK2IitEesi40mX3/2WQJQzo7G7f7Vqg6dWwn7Gq4mB5EITvs7cP3cbzcpQszu\";');
INSERT INTO `fun_session` VALUES ('kl5mmpvh3p9u0f332ep0m120k3', '1532708541', '');
INSERT INTO `fun_session` VALUES ('tm7egb8n2gt0oee61if1cink93', '1532708545', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"XhhXK2IitEesi40mX3/2WQJQzo7G7f7Vqg6dWwn7Gq4mB5EITvs7cP3cbzcpQszu\";');
INSERT INTO `fun_session` VALUES ('rnl9msg3ordadca64v4mkkafc4', '1532708533', '');
INSERT INTO `fun_session` VALUES ('tipmuc1nuvc6p8mocm6er7qjk6', '1532708531', '');
INSERT INTO `fun_session` VALUES ('pbhu93jbgoeaga3r7t9kohtf02', '1532708518', '');
INSERT INTO `fun_session` VALUES ('fb3ck0mgu6n2ssijb5gnge2s91', '1532708515', '');
INSERT INTO `fun_session` VALUES ('mj9iqlk1t1eisp9a7p5flm9c96', '1532708512', '');
INSERT INTO `fun_session` VALUES ('7ig2hr52aj4jtn8b0ia5rj2iq1', '1532708507', '');
INSERT INTO `fun_session` VALUES ('h87uou3fhgta79r954pe82l5e6', '1532708162', '');
INSERT INTO `fun_session` VALUES ('brpr42ic49d4oel6m8c5vk1ln5', '1532708151', '');
INSERT INTO `fun_session` VALUES ('9f510i5329k279dna8dj0b6591', '1532708145', '');
INSERT INTO `fun_session` VALUES ('j6invealtkhu7lmh22djevb0t2', '1532708145', '');
INSERT INTO `fun_session` VALUES ('bhtt7s0sbe74rl3hm84k8nqdg0', '1532708097', '');
INSERT INTO `fun_session` VALUES ('jm4g67o010vaofuog0v8olo6e1', '1532708090', '');
INSERT INTO `fun_session` VALUES ('r4jcup3r0ast0rqlu0naro5ev0', '1532708090', '');
INSERT INTO `fun_session` VALUES ('e6r218aqe9f7m49nsbqd4rnpj3', '1532708086', '');
INSERT INTO `fun_session` VALUES ('200afco37ob45d7j61lube94d2', '1532708067', '');
INSERT INTO `fun_session` VALUES ('21cc4jp42scr4g0urm9oqntas0', '1532708065', '');
INSERT INTO `fun_session` VALUES ('mttmj05a8smp982umf7s2oj8r2', '1532708060', '');
INSERT INTO `fun_session` VALUES ('71gb374h2f266j37455n0ro6o2', '1532708057', '');
INSERT INTO `fun_session` VALUES ('malalsurtod2c32s5q84gp8f71', '1532708045', '');
INSERT INTO `fun_session` VALUES ('24et72tnto8g24vfb2tgk3pmr7', '1532708044', '');
INSERT INTO `fun_session` VALUES ('hihfstflc07sqs2vl7pf5enn02', '1532708040', '');
INSERT INTO `fun_session` VALUES ('iogn1ke4ikf5q73mskbrk9o1l2', '1532708038', '');
INSERT INTO `fun_session` VALUES ('kuccabc4uji56p1t6vubopeln7', '1532708036', '');
INSERT INTO `fun_session` VALUES ('pjhuq4qs631au34odclu1cf126', '1532708033', '');
INSERT INTO `fun_session` VALUES ('jvt5hmq4rk9dhc23lfk5ptfc80', '1532708027', '');
INSERT INTO `fun_session` VALUES ('u1ltqaibegm4acoh74dtju4dp4', '1532708025', '');
INSERT INTO `fun_session` VALUES ('v8nrsu7uu0lsgts75bu1htftp3', '1532708020', '');
INSERT INTO `fun_session` VALUES ('q1mgnvsmetlf9v49qqv2k0qie3', '1532708019', '');
INSERT INTO `fun_session` VALUES ('slmmvj6ve0593hij12vt5otfh4', '1532708016', '');
INSERT INTO `fun_session` VALUES ('llt54ltpcvp7uicluirq0tm105', '1532708016', '');
INSERT INTO `fun_session` VALUES ('6l8fprb8kltq0ucdn07uh11n10', '1532708012', '');
INSERT INTO `fun_session` VALUES ('lnl7vqqfddpt5i4et9po2ognh2', '1532708009', '');
INSERT INTO `fun_session` VALUES ('vpsbrde4dapatp02e0k6ikgqs0', '1532708006', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('i0jo459l1kfspub9kliq30ltn0', '1532708005', '');
INSERT INTO `fun_session` VALUES ('5oogudiijmf0mrjmsgik2pv4q5', '1532707773', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('ddh5nujlqj4luj14e1k0d0um31', '1532707772', '');
INSERT INTO `fun_session` VALUES ('5fa96pt6crh68aal6vtq83bf32', '1532687890', '');
INSERT INTO `fun_session` VALUES ('6fasvrpdk8dhcl5untj9bh99b6', '1532677683', '');
INSERT INTO `fun_session` VALUES ('kb8bhrtp0ui856a4dgs6osspf5', '1532677681', '');
INSERT INTO `fun_session` VALUES ('upcmqpst5g7gespd1dm9hr7bk4', '1532677678', '');
INSERT INTO `fun_session` VALUES ('n1cj1dvj7h1jomi2keqhdsldr5', '1532677671', '');
INSERT INTO `fun_session` VALUES ('34m9edve6qpa5e77s0hr3t2fs7', '1532677671', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('02sqjiobucff0c0ir4kvuta267', '1532676970', '');
INSERT INTO `fun_session` VALUES ('b87f3loicu5d0lvvt9tenqvnv6', '1532676965', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('088i3eghihqbll68uovoisa1k1', '1532676965', '');
INSERT INTO `fun_session` VALUES ('3aj6qmdclqie8io2ublaeicse5', '1532676654', '');
INSERT INTO `fun_session` VALUES ('1hubvmp64h5h7ipcip722m3ll4', '1532676620', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('um7na1feua57tuuvf5k41f6362', '1532676619', '');
INSERT INTO `fun_session` VALUES ('ihlpuu0aoc2qcsl3ipdg7ddsa5', '1532676496', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"XhhXK2IitEesi40mX3/2WQJQzo7G7f7Vqg6dWwn7Gq4mB5EITvs7cP3cbzcpQszu\";');
INSERT INTO `fun_session` VALUES ('u2a5ef2cf7l7oe915eognhihc7', '1532676496', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('crlf4aag293tshi3e0mnm28m11', '1532676495', '');
INSERT INTO `fun_session` VALUES ('hoshc95qqp6mjrf2b60v2g2go3', '1532676216', '589bc2dc89454934ca92a1d274a6ea7f4d|s:44:\"XhhXK2IitEesi40mX3/2WVXuPUDuUoGq6lqhWeRe3qQ=\";');
INSERT INTO `fun_session` VALUES ('vrc30okgg62dfr2klqb0h6c1h2', '1532676216', '589bc2dc89454934ca92a1d274a6ea7f4d|s:44:\"pqastD4MydE7eTGjA7WE4sJ/QH3/6jcZaAHnslkt+0Y=\";');
INSERT INTO `fun_session` VALUES ('bgmo90qh21i38hn1ft67hgfg91', '1532676216', '');
INSERT INTO `fun_session` VALUES ('v0k22rm548hfavchbp0fojt9l5', '1532674990', '');
INSERT INTO `fun_session` VALUES ('si497700j8clcn93pnjr0tq0l4', '1532674990', '');
INSERT INTO `fun_session` VALUES ('oea0po927268n9gb0lk7qhpi12', '1532674990', '');
INSERT INTO `fun_session` VALUES ('3lssbdi2dllsnth927sl94lfi6', '1532674754', '');
INSERT INTO `fun_session` VALUES ('1vv2rpujpk3g82m18f8vjogf33', '1532674753', '');
INSERT INTO `fun_session` VALUES ('aih91es327r7ji1s0ljjt8ei41', '1532674753', '');
INSERT INTO `fun_session` VALUES ('b5ikasu7e3r58vsmsnf3n5qmg2', '1532674643', '');
INSERT INTO `fun_session` VALUES ('hg5p316ir1qql9ea59bbl441t2', '1532674642', '');
INSERT INTO `fun_session` VALUES ('0e073njpkmrlfmh9kipr4hjkj4', '1532674642', '');
INSERT INTO `fun_session` VALUES ('had55tg96fgsjd3in5484tm7c6', '1532674616', '');
INSERT INTO `fun_session` VALUES ('a3nag7e228n99mceq63hhvnqd2', '1532674616', '');
INSERT INTO `fun_session` VALUES ('a2dbljo4ibgmqmolqo2kgnadl4', '1532674616', '');
INSERT INTO `fun_session` VALUES ('dg31irc14ofcft3ahkud5s9mn4', '1532674597', '');
INSERT INTO `fun_session` VALUES ('o04a6cldlmge6g80k1l0gihlq6', '1532674597', '');
INSERT INTO `fun_session` VALUES ('lvhaf6dgh030nqn5433sm46vi2', '1532674597', '');
INSERT INTO `fun_session` VALUES ('s7fbq49j5sbpa44svur0ebg3g1', '1532674504', '');
INSERT INTO `fun_session` VALUES ('v0bbnfn3g9v3ki7a5r4qgilca0', '1532674504', '');
INSERT INTO `fun_session` VALUES ('egn29clga06ecgnq0f9q534402', '1532674504', '');
INSERT INTO `fun_session` VALUES ('cepsifgudukkk4tibt3eeqnkl6', '1532674409', '');
INSERT INTO `fun_session` VALUES ('imeb2uttt1nq9ugdj83pt4s8d4', '1532674409', '');
INSERT INTO `fun_session` VALUES ('lt67afi8tph073nlgdd276e4p5', '1532674409', '');
INSERT INTO `fun_session` VALUES ('g2csh7qudcn2gfc9lk42liaf57', '1532674242', '');
INSERT INTO `fun_session` VALUES ('07idkbc6td03id7kfejr7bnij7', '1532674145', '');
INSERT INTO `fun_session` VALUES ('m59m25ihqdtdvdetaj0r0k4f41', '1532674142', '');
INSERT INTO `fun_session` VALUES ('7k2c1rkvpc67vauu6f2hfn3671', '1532674132', '');
INSERT INTO `fun_session` VALUES ('nrh6p9ljjh302s6u4bkupvig35', '1532674130', '');
INSERT INTO `fun_session` VALUES ('jem6hluovgl7r6i4fojh6pflc2', '1532674129', '');
INSERT INTO `fun_session` VALUES ('bmrinj901acmj0sf1av6dq43v5', '1532674129', '');
INSERT INTO `fun_session` VALUES ('o0lq1o7nmce6n0aljflkg7im75', '1532674092', '');
INSERT INTO `fun_session` VALUES ('8s24rv1q1hjiofqdd5f0k90ni4', '1532674043', '');
INSERT INTO `fun_session` VALUES ('sre23rguba52kvt6nvvc0gar05', '1532674043', '');
INSERT INTO `fun_session` VALUES ('0m2icr23ull086a7kiehnnmhl5', '1532674043', '');
INSERT INTO `fun_session` VALUES ('8eekfr2sajuu43oue2dium9ut3', '1532673930', '');
INSERT INTO `fun_session` VALUES ('fgkfevh3grfniem2d7akeoidk1', '1532673727', '');
INSERT INTO `fun_session` VALUES ('vmd8uak0auappqa47b4hk80s62', '1532672892', '');
INSERT INTO `fun_session` VALUES ('315lf78t11eu40j6dh785aqur6', '1532671875', '');
INSERT INTO `fun_session` VALUES ('77b5ptfkrjojgrt44frmf6c2j2', '1532671834', '');
INSERT INTO `fun_session` VALUES ('b3biqah16g4skrfl1mdcd3oj17', '1532671830', '');
INSERT INTO `fun_session` VALUES ('tfr9dgtstc4pa3d4h82jhpk154', '1532671822', '');
INSERT INTO `fun_session` VALUES ('p4lcen0l8fbup79el6ut75mjt6', '1532671820', '');
INSERT INTO `fun_session` VALUES ('kqtlch2m7t6ral0li18108pte5', '1532671808', '');
INSERT INTO `fun_session` VALUES ('0c7ip50nh6q1nv5sgo0gfhbqh0', '1532671806', '');
INSERT INTO `fun_session` VALUES ('btnt6qfseohaivaccvoro7g5p4', '1532671804', '');
INSERT INTO `fun_session` VALUES ('45rvlhkv2g4hm9p47vrtbtg435', '1532671794', '');
INSERT INTO `fun_session` VALUES ('c9mreih7tftopnda16h8k0iio6', '1532671791', '');
INSERT INTO `fun_session` VALUES ('don542dde9qor5fhbap58p78n7', '1532671772', '');
INSERT INTO `fun_session` VALUES ('emle7o303q12aqqsql9r20f761', '1532671770', '');
INSERT INTO `fun_session` VALUES ('ak0vc83u36185sjns97538sjm3', '1532671766', '');
INSERT INTO `fun_session` VALUES ('85h2n9lep59tlu8ge63bir76m4', '1532671743', '');
INSERT INTO `fun_session` VALUES ('7ufn0lmdvl0463kuonh4l121g0', '1532671743', '');
INSERT INTO `fun_session` VALUES ('53a1fk9grnt6jqcmgl3567fr54', '1532671742', '');
INSERT INTO `fun_session` VALUES ('sqo3jvpn461fgdplc2fpcnt183', '1532671740', '');
INSERT INTO `fun_session` VALUES ('0f1pcgm0dppa48b39jmr2dnsc0', '1532671740', '');
INSERT INTO `fun_session` VALUES ('6cos4p6hmf1j9o4m6ff5i73512', '1532671736', '');
INSERT INTO `fun_session` VALUES ('dc7iida3ps069htltov9ljm8v4', '1532671725', '');
INSERT INTO `fun_session` VALUES ('58p99e7sjjneu9onh8pe9kplj3', '1532671725', '');
INSERT INTO `fun_session` VALUES ('oqgl1i9st67dq60i6l92tr06n4', '1532671715', '');
INSERT INTO `fun_session` VALUES ('evi9v438tlifv988ode4m3bkt5', '1532671714', '');
INSERT INTO `fun_session` VALUES ('jtkqopbvov7vfb2q3vvt69pb11', '1532671698', '');
INSERT INTO `fun_session` VALUES ('uomp7fs80opkhu2gbpe0rtrc27', '1532671697', '');
INSERT INTO `fun_session` VALUES ('in6q844a24di732jtp6fd14qq4', '1532671695', '');
INSERT INTO `fun_session` VALUES ('r75g22tv5028ps0u6ojqsb5oc6', '1532671691', '');
INSERT INTO `fun_session` VALUES ('g01euk0i1iqnmeqfgjspc6ptr5', '1532671690', '');
INSERT INTO `fun_session` VALUES ('aj6o815lv7b5qfb682bg5m5gh6', '1532671690', '');
INSERT INTO `fun_session` VALUES ('rb21ujr9u7nguqr49m0qfhrti2', '1532671076', '');
INSERT INTO `fun_session` VALUES ('k04t38rm39t299ddjnv96agja0', '1532671076', '');
INSERT INTO `fun_session` VALUES ('ac223uj7eks5h4e2gserle2f41', '1532671075', '');
INSERT INTO `fun_session` VALUES ('abv8av18sccuvgg4o6nu3kmde7', '1532671071', '');
INSERT INTO `fun_session` VALUES ('qdv5rh4rcjkj26av7m6m84asq6', '1532671070', '');
INSERT INTO `fun_session` VALUES ('rc9dp7q86p7f2eh5djupvaciq3', '1532671070', '');
INSERT INTO `fun_session` VALUES ('2t8egr6t0cs8q290i0ep6v3c90', '1532671043', '');
INSERT INTO `fun_session` VALUES ('kqosstej4llltp0q0907ch80b2', '1532671043', '');
INSERT INTO `fun_session` VALUES ('vcn7p1uc4721dfskt78gjelfj2', '1532671039', '');
INSERT INTO `fun_session` VALUES ('n91jufr55ot621122opp5poh64', '1532671037', '');
INSERT INTO `fun_session` VALUES ('to52lde77pjrk1h5cudi6l8q35', '1532671036', '');
INSERT INTO `fun_session` VALUES ('p5npo8rmh10fr494ma11uhkpn1', '1532671036', '');
INSERT INTO `fun_session` VALUES ('paoa67umtfprv0c1ifemb1do85', '1532670925', '');
INSERT INTO `fun_session` VALUES ('etc5h365i8pr6nlitnfpjg5k24', '1532670925', '');
INSERT INTO `fun_session` VALUES ('9lu9hggaqvk4bs1r89oq99q567', '1532670921', '');
INSERT INTO `fun_session` VALUES ('enmt5cmjd5pcqmq8u9f2bj6h26', '1532670918', '');
INSERT INTO `fun_session` VALUES ('rhg2ugi3ervtuvno6icdo98j61', '1532670918', '');
INSERT INTO `fun_session` VALUES ('saf6vkpnvemlhnaihaibids7m4', '1532670917', '');
INSERT INTO `fun_session` VALUES ('arkc0oe6fh0c3sepqv1b3oopv2', '1532670797', '');
INSERT INTO `fun_session` VALUES ('c942pp3bc8j325a1jpdl1u7t61', '1532670797', '');
INSERT INTO `fun_session` VALUES ('7k8m5qou7g8mvfo8qje85g5a40', '1532670790', '');
INSERT INTO `fun_session` VALUES ('g82o09gt9l0g59j7fjh4vsv1n2', '1532670783', '');
INSERT INTO `fun_session` VALUES ('2vfee0kkh9cgau648gh5cq3n60', '1532670783', '');
INSERT INTO `fun_session` VALUES ('gj1avkjdj00tlfda831l7ega25', '1532670783', '');
INSERT INTO `fun_session` VALUES ('5kg959h92v4lnlrh7luu2b7lc1', '1532670518', '');
INSERT INTO `fun_session` VALUES ('t72o24n0h9bhcs84mh8bced5i4', '1532670518', '');
INSERT INTO `fun_session` VALUES ('elos5pnm1049qvp6ir645373i1', '1532670514', '');
INSERT INTO `fun_session` VALUES ('4obst6pu7p51ib0gffd74l0ov0', '1532670510', '');
INSERT INTO `fun_session` VALUES ('8qp1pj8i0qqs8dph7q10enona0', '1532670510', '');
INSERT INTO `fun_session` VALUES ('ksak5dml4hqmajjniv0531ebi6', '1532670509', '');
INSERT INTO `fun_session` VALUES ('f97b31o7riqulsdh4ji7oucet7', '1532670500', '');
INSERT INTO `fun_session` VALUES ('eding8hletr6350juqpv5a9hp3', '1532670500', '');
INSERT INTO `fun_session` VALUES ('9m88l2pl0t27g4a90r8ob2bhr5', '1532670499', '');
INSERT INTO `fun_session` VALUES ('jnjledgt07ek42a9ou9t3jm4b7', '1532670357', '');
INSERT INTO `fun_session` VALUES ('enifo33jlgc1r7jkuk59acn7q1', '1532670357', '');
INSERT INTO `fun_session` VALUES ('nobs564jqjrg5m2q3l7sdh01n0', '1532670351', '');
INSERT INTO `fun_session` VALUES ('ena7tmdkqepka7342vugf5dkp1', '1532670346', '');
INSERT INTO `fun_session` VALUES ('okb8tl1uq71dlo3l29ht1g2bf5', '1532670343', '');
INSERT INTO `fun_session` VALUES ('67lpq6rbnntro836e1cff2ua60', '1532670343', '');
INSERT INTO `fun_session` VALUES ('b052ci51r85u5btr7emmt0bhi4', '1532670280', '');
INSERT INTO `fun_session` VALUES ('3e9eb93i2963t24o5q0v6osmh0', '1532670280', '');
INSERT INTO `fun_session` VALUES ('gtuuvpq9s2gl7pq342tj46s4q2', '1532670278', '');
INSERT INTO `fun_session` VALUES ('vgd55id8nolvscenc9pqj5jn63', '1532670274', '');
INSERT INTO `fun_session` VALUES ('men6ism2t9hdr440b64sbbokr7', '1532670274', '');
INSERT INTO `fun_session` VALUES ('eat01ushjiu3mfl3ua7fu23lk0', '1532670273', '');
INSERT INTO `fun_session` VALUES ('ofaef600hr3cqj518amg3vugq1', '1532670107', '');
INSERT INTO `fun_session` VALUES ('ig6arrgbin3tttve2e950cbeu7', '1532670106', '');
INSERT INTO `fun_session` VALUES ('bpckr2fl4fgel7nc92m28geok2', '1532670105', '');
INSERT INTO `fun_session` VALUES ('d9vnt2tqcet6s0ip4nebp85ti5', '1532670102', '');
INSERT INTO `fun_session` VALUES ('7p9p7t7pjque4mmjfsifdu8pc1', '1532670101', '');
INSERT INTO `fun_session` VALUES ('gc94so4cmh559870cieuflgud7', '1532670101', '');
INSERT INTO `fun_session` VALUES ('6277capanrrgf65uv3se6g3mv2', '1532670024', '');
INSERT INTO `fun_session` VALUES ('gkigki8vm88dr85tjoc2gre617', '1532670024', '');
INSERT INTO `fun_session` VALUES ('roao0gqtm4uscradktdfple6m0', '1532670023', '');
INSERT INTO `fun_session` VALUES ('5cvlo10iqtd5ar37l4olpkrof2', '1532670019', '');
INSERT INTO `fun_session` VALUES ('6fiiipukebq4ckbmh83sf0git0', '1532670019', '');
INSERT INTO `fun_session` VALUES ('1hqb2efmairgllptinj9bhikg3', '1532670019', '');
INSERT INTO `fun_session` VALUES ('0s19roeiio803nf1r0ru28ce11', '1532669928', '');
INSERT INTO `fun_session` VALUES ('178sd76osgocqmnmh45mjm4b07', '1532669709', '');
INSERT INTO `fun_session` VALUES ('laqsmk09jq1rohf59tjat7gdc1', '1532669709', '');
INSERT INTO `fun_session` VALUES ('1ith4ad55muj7duj9bmh7ecq23', '1532669707', '');
INSERT INTO `fun_session` VALUES ('5u8uf3g6u9vkf86p4b9hr9cik4', '1532669703', '');
INSERT INTO `fun_session` VALUES ('j0tbq3obouvq0mvf5e3jsnron5', '1532669703', '');
INSERT INTO `fun_session` VALUES ('chsiku4khpsgjgg9iqiv80bc15', '1532669703', '');
INSERT INTO `fun_session` VALUES ('9da0tpvs257bfem65ei2cpg2j1', '1532669542', '');
INSERT INTO `fun_session` VALUES ('8bfnoluh9k4mdsrpeoqvbqt817', '1532669542', '');
INSERT INTO `fun_session` VALUES ('1ve3bueuregido5cspfp67qpq3', '1532669540', '');
INSERT INTO `fun_session` VALUES ('efkfmjt5hva4s8c66nhhmju9j0', '1532669536', '');
INSERT INTO `fun_session` VALUES ('577lf3f52ufv0edlske3t1poj6', '1532669536', '');
INSERT INTO `fun_session` VALUES ('4sbk5o7husf6kn0fg7e8fbqg94', '1532669535', '');
INSERT INTO `fun_session` VALUES ('fbnk8s99sdtlq1q0n0f20bf691', '1532669453', '');
INSERT INTO `fun_session` VALUES ('9u2kt50la6urn58ogrg9jg76h7', '1532669450', '');
INSERT INTO `fun_session` VALUES ('n1115tn2n0igo7de1j63pgjvr7', '1532669450', '');
INSERT INTO `fun_session` VALUES ('rps6s61cavrse011p86epanit7', '1532669449', '');
INSERT INTO `fun_session` VALUES ('ihb6s8kqebllt57dpi085qaou7', '1532669416', '');
INSERT INTO `fun_session` VALUES ('kaidd3oqk42als7nhej14ntqj7', '1532669413', '');
INSERT INTO `fun_session` VALUES ('7vj54l8934cpnfhpnqpdv0ljl2', '1532669413', '');
INSERT INTO `fun_session` VALUES ('5ldf4jac15q8atrj8psaohonq0', '1532669412', '');
INSERT INTO `fun_session` VALUES ('9hc04gs79sgbafiuco26ndcph0', '1532708499', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('as6mv03b65aue3r1pe2mj08d52', '1532708500', '');
INSERT INTO `fun_session` VALUES ('vtg9pvkedq1nurkjplb32gm4b7', '1532708504', '');
INSERT INTO `fun_session` VALUES ('sc52svc5c472m8nsk7r6pj1eu5', '1532708506', '');
INSERT INTO `fun_session` VALUES ('r1s4jo3ajhaq2cdnbakddugs03', '1532673929', '');
INSERT INTO `fun_session` VALUES ('bo8u71f3daj238k67t1kfcr2l3', '1532673930', '');
INSERT INTO `fun_session` VALUES ('5e715fkufq6hlecd9pgn2llu45', '1532620071', '');
INSERT INTO `fun_session` VALUES ('158ntj3dt0gcmiom175p69luo0', '1532620069', '');
INSERT INTO `fun_session` VALUES ('82p76igshikvi11eh04ftui1s1', '1532620064', '');
INSERT INTO `fun_session` VALUES ('q3q5dbsapbe335id31nmh4kj05', '1532620044', '');
INSERT INTO `fun_session` VALUES ('2b5d82pvlo5qs501ls0b5g1d71', '1532619984', '');
INSERT INTO `fun_session` VALUES ('4e4i5gmkuco8jjogha9jlgjhn6', '1532619975', '');
INSERT INTO `fun_session` VALUES ('s35l54krl1mdtrasksql07bd85', '1532667596', '');
INSERT INTO `fun_session` VALUES ('7u72j3or1irlbhktl2iekibij7', '1532667732', '');
INSERT INTO `fun_session` VALUES ('vtkeklurhlcd6m4hfaefegff14', '1532708421', 'verify|s:32:\"055e31fa43e652cb4ab6c0ee845c8d36\";');
INSERT INTO `fun_session` VALUES ('9kint0pg8uupcso5lvjdqej8k6', '1532708498', '');
INSERT INTO `fun_session` VALUES ('l8n17564nnr30g4ajvmh0otq33', '1532619379', '');
INSERT INTO `fun_session` VALUES ('ulmicbqqischf7sn0i94e84nt2', '1532619380', '');
INSERT INTO `fun_session` VALUES ('jc6lk51ag7n5u361i5led4tgr4', '1532619382', '');
INSERT INTO `fun_session` VALUES ('u54ojelopql8o0et2kpq9sveh1', '1532619622', '');
INSERT INTO `fun_session` VALUES ('6ao73tp1g623947gpv5b0lobk2', '1532619623', '');
INSERT INTO `fun_session` VALUES ('p0kkrunsr91sa5uf8qu0amio61', '1532619623', '');
INSERT INTO `fun_session` VALUES ('e0orefedonljim8gv21lt38342', '1532619633', '');
INSERT INTO `fun_session` VALUES ('glbsn0350k80rce9bq53rgrn14', '1532619636', '');
INSERT INTO `fun_session` VALUES ('uabfpeu1are3q9501eha7rpfh4', '1532619636', '');
INSERT INTO `fun_session` VALUES ('2ou6nep82lup2u4oebe6r7a5q7', '1532619644', '');
INSERT INTO `fun_session` VALUES ('8ktstodpcmu2nm4488ic9ps1i5', '1532619646', '');
INSERT INTO `fun_session` VALUES ('9odbul7q6hb0210e2u01p2dt41', '1532619687', '');
INSERT INTO `fun_session` VALUES ('kh2gcsfit3eu4fbeksgv9q9pj3', '1532619697', '');
INSERT INTO `fun_session` VALUES ('d8ko0eiv5r0kjgvp4u13ie6uc4', '1532619702', '');
INSERT INTO `fun_session` VALUES ('q2nu24rcu4b91r0g1ka70ils67', '1532619718', '');
INSERT INTO `fun_session` VALUES ('693sd8e237k4po46qns66lt3l5', '1532619721', '');
INSERT INTO `fun_session` VALUES ('hh6790fo3h0qa02go4naqutip6', '1532619730', '');
INSERT INTO `fun_session` VALUES ('uljb16tf4pce5fdj4k23905g27', '1532619734', '');
INSERT INTO `fun_session` VALUES ('4i0j8cf6nahh85loindhc9hl24', '1532619738', '');
INSERT INTO `fun_session` VALUES ('u9401r343idrgnip1o2q6jj9a5', '1532619746', '');
INSERT INTO `fun_session` VALUES ('net58l0sn6vcpj0h71kkettop4', '1532619772', '');
INSERT INTO `fun_session` VALUES ('vg25tldf949hqr0rk7uvplj756', '1532619787', '');
INSERT INTO `fun_session` VALUES ('ht4dsfdt3a2ptqlgqg8g22qc81', '1532619807', '');
INSERT INTO `fun_session` VALUES ('rh3rnehlfts9kkrrk627od7o33', '1532619815', '');
INSERT INTO `fun_session` VALUES ('u2mmemja4nd79rfiom03sci637', '1532619824', '');
INSERT INTO `fun_session` VALUES ('mnjiartmci1mio9a7gndqfnrj6', '1532619866', '');
INSERT INTO `fun_session` VALUES ('8n93f53hj08j9fafmiun9ms0v1', '1532619871', '');
INSERT INTO `fun_session` VALUES ('qg56ets6c6fvkqkg5s2crkf0u6', '1532619871', '');
INSERT INTO `fun_session` VALUES ('3t1a2m3dcoqe5m1ba06g64h440', '1532619874', '');
INSERT INTO `fun_session` VALUES ('f5j8cev375lhi5kqikvhvbbrt0', '1532619876', '');
INSERT INTO `fun_session` VALUES ('asit8fbc2hophg9vqsvcl5pk10', '1532619881', '');
INSERT INTO `fun_session` VALUES ('1e7fea04cpgptd3m6s5p8lub34', '1532619884', '');
INSERT INTO `fun_session` VALUES ('29671qh72v9bpnvvq8j3r421j1', '1532619886', '');
INSERT INTO `fun_session` VALUES ('hc05nd9p5mj996907dp4trd911', '1532619894', '');
INSERT INTO `fun_session` VALUES ('sicmjognv3dn4cr7pr7rt9br80', '1532619901', '');
INSERT INTO `fun_session` VALUES ('s16rppn2pv53097g467hoffth4', '1532619919', '');
INSERT INTO `fun_session` VALUES ('t59f3gr034vbchejkcr9ekjlf5', '1532774957', '');
INSERT INTO `fun_session` VALUES ('pkoo13kn0jkqksitkoojiob320', '1532774957', '');
INSERT INTO `fun_session` VALUES ('h330hf36qm8bejnn6ggho36gs2', '1532774959', '');
INSERT INTO `fun_session` VALUES ('00offa5ajr7bhsprbs8e6b9334', '1532774964', '');
INSERT INTO `fun_session` VALUES ('avapv3083q9oou2vgih4pfho65', '1532786847', '');
INSERT INTO `fun_session` VALUES ('5iblco406f20qosictnoufhvt0', '1532786848', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('gh8l4upq6t086ik3shf3p7at91', '1532786855', '');
INSERT INTO `fun_session` VALUES ('kmct041s55p9djus4irn7s8sb4', '1532786860', '');
INSERT INTO `fun_session` VALUES ('ce6jv5ptg547e22fcgr4rjhjf0', '1532786862', '');
INSERT INTO `fun_session` VALUES ('73bnsvmheb5fsris9vdj23v6i0', '1532786863', '');
INSERT INTO `fun_session` VALUES ('141ttb8c68mumqu7fr4m6dfmk2', '1532786864', '');
INSERT INTO `fun_session` VALUES ('sp05h138bdmnmq75lk6eguo0q6', '1532786864', '');
INSERT INTO `fun_session` VALUES ('6fnhrjjh4uasn39h2v5iogg4b5', '1532786866', '');
INSERT INTO `fun_session` VALUES ('9i2gtr2dbkv94kgj2u9ot90hq0', '1532786867', '');
INSERT INTO `fun_session` VALUES ('ocapf6n1re6voben36jlt3b8h7', '1532786867', '');
INSERT INTO `fun_session` VALUES ('8b1fh8696lg92ret91fgm7f7u6', '1532786868', '');
INSERT INTO `fun_session` VALUES ('l15h2rpse0oc3l2qej5m818dc5', '1532786872', '');
INSERT INTO `fun_session` VALUES ('jp8iofp0ggovf6rpd27ph48296', '1532786880', '');
INSERT INTO `fun_session` VALUES ('s43kmu7ka0e0bq424qvblldef7', '1532786915', '');
INSERT INTO `fun_session` VALUES ('1nv4adr6cd9csvv2lj3krkc912', '1532787532', '');
INSERT INTO `fun_session` VALUES ('l0oveh7hq0dj8cm1osp3q1f251', '1532787536', '');
INSERT INTO `fun_session` VALUES ('o60s0v757cngi8rqunfgjukgs3', '1532787536', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"qjWvvP7jg1FXeDp3mHMOdBTUerZ6RTt97FBAwcjRrrQoNVB6cOJzC7B9bopFT6Vy\";');
INSERT INTO `fun_session` VALUES ('rn6krh5ftkckfa2iq3m3dvevc1', '1532787542', '');
INSERT INTO `fun_session` VALUES ('mpsqtgoood3ptvjk0de4kj63p7', '1532787544', '');
INSERT INTO `fun_session` VALUES ('ea85rlta0jqd7m93op3r1ki5r1', '1532787549', '');
INSERT INTO `fun_session` VALUES ('m1fvd8erjf0froop3fnqg76ki6', '1532787549', '');
INSERT INTO `fun_session` VALUES ('4qtaobg3d75evnelatjpljte44', '1532787552', '');
INSERT INTO `fun_session` VALUES ('a8dj7056im9ege07khcjibbmn6', '1532787552', '');
INSERT INTO `fun_session` VALUES ('h5c4j2u4cel49cbd9no6tvjml7', '1532787555', '');
INSERT INTO `fun_session` VALUES ('po3nuhpd30cfjrl5155coaj8c0', '1532787555', '');
INSERT INTO `fun_session` VALUES ('2ercpqb0k3e07frniaf22h9u31', '1532787558', '');
INSERT INTO `fun_session` VALUES ('oboc07l59sues7nklo3pjh5ii4', '1532787559', '');
INSERT INTO `fun_session` VALUES ('mstcpktesaor2rjvacrl42o3h4', '1532787562', '');
INSERT INTO `fun_session` VALUES ('b8g4oadt1p6u85tkcm2vdeppb6', '1532787565', '');
INSERT INTO `fun_session` VALUES ('ide811r9djascom0evfmneig24', '1532787565', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"XhhXK2IitEesi40mX3/2WQJQzo7G7f7Vqg6dWwn7Gq4mB5EITvs7cP3cbzcpQszu\";');
INSERT INTO `fun_session` VALUES ('8t3qcc736860muin47cdicecl0', '1532787573', '');
INSERT INTO `fun_session` VALUES ('85ft8mfel8ejfs5s3l90o5i5r6', '1532787573', '');
INSERT INTO `fun_session` VALUES ('o24a1trffqlpsk7trc1muek3e7', '1532787574', '');
INSERT INTO `fun_session` VALUES ('t0852porlea7nmkvsas3rebl04', '1532787574', '');
INSERT INTO `fun_session` VALUES ('ojv5jft5ab4iq9q0h02n9br9b2', '1532787575', '');
INSERT INTO `fun_session` VALUES ('kchef5fgemkhrmdqa59gc6tg86', '1532787583', '');
INSERT INTO `fun_session` VALUES ('bp5avbfte69v713mfa5j0383r1', '1532787584', '');
INSERT INTO `fun_session` VALUES ('5pu5jka25prsppbsskkrelv7f0', '1532787612', '');
INSERT INTO `fun_session` VALUES ('dsmdqpfrai6j20oh37eh5nndg5', '1532787612', '');
INSERT INTO `fun_session` VALUES ('ha2309h77ueqnfni6f8uh2q495', '1532787614', '');
INSERT INTO `fun_session` VALUES ('5mh18q69oa4f5mmu5pmo6bpin7', '1532787616', '');
INSERT INTO `fun_session` VALUES ('ho3cl4rb1m26brqe9aah4h38j3', '1532787616', '');
INSERT INTO `fun_session` VALUES ('rrgno688fp6hs9c43bmr7m7t80', '1532787616', '');
INSERT INTO `fun_session` VALUES ('c300jjiof6rkm1p98d8p3cktk4', '1532787619', '');
INSERT INTO `fun_session` VALUES ('l809kd6uip64it49o8ji5vbhr6', '1532787619', '');
INSERT INTO `fun_session` VALUES ('tl55q8fk6ili5qjtj3mcntgte0', '1532787624', '');
INSERT INTO `fun_session` VALUES ('ga55jt8teuohso48ggge912el5', '1532787627', '');
INSERT INTO `fun_session` VALUES ('f9kdi8k2l4q59co8g3f7ng3id3', '1532787627', '');
INSERT INTO `fun_session` VALUES ('uscn4iehrpqv2a4ii9mhpu5e26', '1532787629', '');
INSERT INTO `fun_session` VALUES ('bgilshcn4nu7pkmn0bd3l088p6', '1532787631', '');
INSERT INTO `fun_session` VALUES ('tavg0pq694kqhumi321fuu1ie0', '1532787632', '');
INSERT INTO `fun_session` VALUES ('e82k79tliens1h65t5g5i11c35', '1532787634', '');
INSERT INTO `fun_session` VALUES ('up38dv5los5fqffgfdt83c3gn6', '1532787635', '');
INSERT INTO `fun_session` VALUES ('irmo5vge53vkpe8gk7mme5mar6', '1532787635', '');
INSERT INTO `fun_session` VALUES ('45tpqtavl6pmc73v3m01ltni92', '1532787638', '');
INSERT INTO `fun_session` VALUES ('jgf84f60tsrb8sdjuo6kb61973', '1532787639', '');
INSERT INTO `fun_session` VALUES ('ctf099aro4udj891utoaqokvd5', '1532787641', '');
INSERT INTO `fun_session` VALUES ('1o3o7nmmpk9mpvs2pf1aocig24', '1532787642', '');
INSERT INTO `fun_session` VALUES ('dt6rib2ruu8kv8sb7j32mcqrb6', '1532787643', '');
INSERT INTO `fun_session` VALUES ('mtm372agbhk5tvb3b4lkf83u02', '1532787645', '');
INSERT INTO `fun_session` VALUES ('g88kvr483hf1ik2tnreo33m3e1', '1532787665', '');
INSERT INTO `fun_session` VALUES ('uf9ga6k1mtck80kplhaopvama6', '1532787668', '');
INSERT INTO `fun_session` VALUES ('9e53lfvd2brfeeg051pl3murg2', '1532787669', '');
INSERT INTO `fun_session` VALUES ('t1fqfi2v9tvbrgp0nuv0cl6ep1', '1532787673', '');
INSERT INTO `fun_session` VALUES ('nag0ltml9vv4gd1ji0dsr3dem2', '1532787675', '');
INSERT INTO `fun_session` VALUES ('keds5ftvm6bcpm26ubbjompf75', '1532787677', '');
INSERT INTO `fun_session` VALUES ('06rij2t038q8mic9949gffn964', '1532787685', '');
INSERT INTO `fun_session` VALUES ('4nkmqvkibb4ioj7a1qon9jsfk7', '1532787687', '');
INSERT INTO `fun_session` VALUES ('5sd6q4og7lgu6qvsekn5jhld60', '1532788010', '');
INSERT INTO `fun_session` VALUES ('df3t7t3cik716l37jrtbbaasn2', '1532788011', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('gv4me1bjmdgakgudjd4ah90jg1', '1532788024', '');
INSERT INTO `fun_session` VALUES ('r6srd4pjr3qg56asr68661no40', '1532788026', '');
INSERT INTO `fun_session` VALUES ('6hvkjq3dg5j0fp1mbao55t4jf1', '1532788031', '');
INSERT INTO `fun_session` VALUES ('nqsocp07mgms6volldlmodd9m6', '1532788039', '');
INSERT INTO `fun_session` VALUES ('b4l4c8lt7pbndft3j4d6knkhp1', '1532788042', '');
INSERT INTO `fun_session` VALUES ('gd9sa35cn5k1u0bkodmnl9ikm7', '1532788046', '');
INSERT INTO `fun_session` VALUES ('1tk4sae5dg62aso3tt1l4l39l6', '1532788052', '');
INSERT INTO `fun_session` VALUES ('hfsh1itdvu613gkolg154uoso4', '1532788057', '');
INSERT INTO `fun_session` VALUES ('p24lhdna88b94nbgt2ijf4vrg2', '1532788083', '');
INSERT INTO `fun_session` VALUES ('joic9hickh3od4qrbah0ltmo07', '1532788088', '');
INSERT INTO `fun_session` VALUES ('i11v9o4c538daqi1kvi65sifs2', '1532788101', '');
INSERT INTO `fun_session` VALUES ('r03ev2fg9hqd5fd26r02fmlek4', '1532788107', '');
INSERT INTO `fun_session` VALUES ('m3p8n59h9k8df2d5jb5p3uftn7', '1532788453', '');
INSERT INTO `fun_session` VALUES ('fcais3na1psh40qiebd16t8f43', '1532788454', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('fjkhr701ls0aia595atq7c9ue6', '1532788463', '');
INSERT INTO `fun_session` VALUES ('el3jjsmn58335vrp1v06gufbu6', '1532788469', '');
INSERT INTO `fun_session` VALUES ('1t8c19bmr3qc45dopjksci9222', '1532788472', '');
INSERT INTO `fun_session` VALUES ('rgd76h16fj43hu23no7tjcuco0', '1532788476', '');
INSERT INTO `fun_session` VALUES ('8hia1i1b18fid7h9h23d382qe5', '1532788476', '');
INSERT INTO `fun_session` VALUES ('gl7nqt9f3k6kkb8tfjlpbjnfv0', '1532788502', '');
INSERT INTO `fun_session` VALUES ('qgio408kqhc0p8gr1229tj4du3', '1532788510', '');
INSERT INTO `fun_session` VALUES ('1g20fh8attih3m5b4r2sqtj286', '1532788519', '');
INSERT INTO `fun_session` VALUES ('ceve9ddhjlm293n5kb56kpj9u7', '1532788520', '');
INSERT INTO `fun_session` VALUES ('9ni9tvmv8vsrqtjeuh2q62tv12', '1532788522', '');
INSERT INTO `fun_session` VALUES ('c0rjrcrvdhkg0f1dbs4m9u8d60', '1532788525', '');
INSERT INTO `fun_session` VALUES ('sivcf05o9sojsu3f7q6hjv5iu6', '1532788529', '');
INSERT INTO `fun_session` VALUES ('ib6p66ldr4oimri685a57glps5', '1532788531', '');
INSERT INTO `fun_session` VALUES ('p6bku6craluhsdm0a9slufnpl7', '1532788533', '');
INSERT INTO `fun_session` VALUES ('44jjtqt072vpc3m8olbd9c5lq5', '1532788534', '');
INSERT INTO `fun_session` VALUES ('cu0i95uumt07rsibiiat2mi8c7', '1532788539', '');
INSERT INTO `fun_session` VALUES ('fq8cg2stfjfbh2ajipo8ugabg5', '1532788540', '');
INSERT INTO `fun_session` VALUES ('a4muohuh5poml50qukv53c1os6', '1532788540', '');
INSERT INTO `fun_session` VALUES ('311bm1u0n30se1due5tphkol15', '1532788545', '');
INSERT INTO `fun_session` VALUES ('f39a7rtd1q6jmprcqhqqmikn65', '1532788546', '');
INSERT INTO `fun_session` VALUES ('fclqq04ul225mqidojcg3rq440', '1532788546', '');
INSERT INTO `fun_session` VALUES ('nne8usft8ladcmcbfngp864991', '1532788554', '');
INSERT INTO `fun_session` VALUES ('m68ibeg35ecpjm6fsp88d297k2', '1532788556', '');
INSERT INTO `fun_session` VALUES ('g2kt22d35ar88av9uqupdn1rf3', '1532788916', '');
INSERT INTO `fun_session` VALUES ('cqrd5f40kf8lcamuca74094ts3', '1532788917', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('i4001vivn7uevidajkbjkjioh0', '1532788920', '');
INSERT INTO `fun_session` VALUES ('4rbqq95epcdkbg0spq8k4kned7', '1532788924', '');
INSERT INTO `fun_session` VALUES ('ekpgn43f46li30t0t872gmj046', '1532788924', '');
INSERT INTO `fun_session` VALUES ('ucmij96ibvcjr21jdgcb6mplu1', '1532788925', '');
INSERT INTO `fun_session` VALUES ('f70e75mms30ug9barl15bado32', '1532788926', '');
INSERT INTO `fun_session` VALUES ('ug7tviv18mdovqpf8qo1rr6rn5', '1532788926', '');
INSERT INTO `fun_session` VALUES ('h8dbod334e4enelio10b1pu9s7', '1532788927', '');
INSERT INTO `fun_session` VALUES ('bl4rl9qoepdsfnob9lpjkl4p23', '1532788933', '');
INSERT INTO `fun_session` VALUES ('7lfh6na1qmdqjcpr8jvjmjisi0', '1532788934', '');
INSERT INTO `fun_session` VALUES ('lrf98ero4dbiv0jl78ff1ojuu3', '1532788937', '');
INSERT INTO `fun_session` VALUES ('ve88438etu2pskri9adbm36c52', '1532788941', '');
INSERT INTO `fun_session` VALUES ('7vrkvfvjttqcr3hr4b6932dlm5', '1532788945', '');
INSERT INTO `fun_session` VALUES ('il8qrram7lffu6pcvlgru18816', '1532788949', '');
INSERT INTO `fun_session` VALUES ('l4ei41heeqtc9pocs5g1je0di2', '1532788954', '');
INSERT INTO `fun_session` VALUES ('6iempe39ai8kcsovut62rqglb5', '1532788962', '');
INSERT INTO `fun_session` VALUES ('56ueig0atg8ht3bsj0o8k6o4n5', '1532788974', '');
INSERT INTO `fun_session` VALUES ('ejppvk93cvtg4sj2ec87ah9b65', '1532788978', '');
INSERT INTO `fun_session` VALUES ('fp11770svauuf6t3bqihjkd7d1', '1532788978', '');
INSERT INTO `fun_session` VALUES ('l6rln2qrs2rnklrv0bgaga9064', '1532788996', '');
INSERT INTO `fun_session` VALUES ('9ro3e316guq5enlndk2lqfctq4', '1532789000', '');
INSERT INTO `fun_session` VALUES ('s43187qmj7cuv58ola27m1d550', '1532789003', '');
INSERT INTO `fun_session` VALUES ('ttoqc9nmght0m0kufr22h78sb7', '1532789010', '');
INSERT INTO `fun_session` VALUES ('sk1n45qes59cn9nqngj3pkmm74', '1532789018', '');
INSERT INTO `fun_session` VALUES ('kr34k4im1mah8lqrvssovrmso0', '1532790092', 'verify|s:32:\"6b8eba43551742214453411664a0dcc8\";');
INSERT INTO `fun_session` VALUES ('7mcg3fpkhftvbdea8pc1u7s3h6', '1532809802', '');
INSERT INTO `fun_session` VALUES ('2dipefke2tcj1b2s4h3cjvuth4', '1532829812', '');
INSERT INTO `fun_session` VALUES ('6hp2j1ahomksg0av4qqtbpp2u0', '1532829812', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('laercdemr66o66gm633kds64v3', '1532829824', '');
INSERT INTO `fun_session` VALUES ('pnjmvqo5mim86s1lkagdpqlsj5', '1532829832', '');
INSERT INTO `fun_session` VALUES ('teupbi081aag2fsrlgrcie6784', '1532829836', '');
INSERT INTO `fun_session` VALUES ('i4aa0eu8notp4d0077lksl8h92', '1532829839', '');
INSERT INTO `fun_session` VALUES ('hjbine0chumph0vhdvg6pdh8h7', '1532829843', '');
INSERT INTO `fun_session` VALUES ('332fg36jb2feka3krh7297fi86', '1532829853', '');
INSERT INTO `fun_session` VALUES ('j5833rs8lehpmjeqvuo5bi0qn3', '1532829856', '');
INSERT INTO `fun_session` VALUES ('epe3jh1tegu3ct5eip1lh23ug4', '1532829861', '');
INSERT INTO `fun_session` VALUES ('mmhi9scfsrb51n387u90k8iau5', '1532829862', '');
INSERT INTO `fun_session` VALUES ('rsc2pbsa654vdolsd3jc0j9lm6', '1532829868', '');
INSERT INTO `fun_session` VALUES ('en7qtjmvrvd0r3nnk5sg4rs4c6', '1532829869', '');
INSERT INTO `fun_session` VALUES ('e6kku17u3ck6g52l73cm9nlj74', '1532829874', '');
INSERT INTO `fun_session` VALUES ('a49ptaurnp0ak6gjcmag78jjq0', '1532829876', '');
INSERT INTO `fun_session` VALUES ('t2d2la32lje3jcltkpe6r203f3', '1532829882', '');
INSERT INTO `fun_session` VALUES ('s1pqcgof93uc9jtiep95uf6065', '1532829894', '');
INSERT INTO `fun_session` VALUES ('ka15e9o5jum34j2u8s9a8qiev3', '1532829895', '');
INSERT INTO `fun_session` VALUES ('ql9m57dsfqgoste4ln487mpgb4', '1532829899', '');
INSERT INTO `fun_session` VALUES ('8mpud95pef81g5rtbma8lrm8d3', '1532829901', '');
INSERT INTO `fun_session` VALUES ('4vcqvgpmj92okqgksvqbuuq276', '1532844070', '');
INSERT INTO `fun_session` VALUES ('25qng89la4nu1kktq8usid27h4', '1532844071', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('udqosmhfvi7ka1qo9b0gg2ret1', '1532844075', '');
INSERT INTO `fun_session` VALUES ('r5lnk6jclnj5uuqrh16atgmkv4', '1532844079', '');
INSERT INTO `fun_session` VALUES ('2qc6el2uof8j2gmnc1r0blvh24', '1532844082', '');
INSERT INTO `fun_session` VALUES ('24jlj7aa7icf16uvetsu5sohs0', '1532844085', '');
INSERT INTO `fun_session` VALUES ('n208kbcol3mo93och5ss714op0', '1532847158', '');
INSERT INTO `fun_session` VALUES ('olbtab1denne3bdelr8a9gtt06', '1532847159', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('gncf6ntld6v6oovrffu5n7s1i2', '1532847160', '');
INSERT INTO `fun_session` VALUES ('52mv7bags56gm5i14et3fffgk4', '1532847162', '');
INSERT INTO `fun_session` VALUES ('ulhk5ajt8agcudvemhcgnk06o0', '1532847165', '');
INSERT INTO `fun_session` VALUES ('c4t2ar32qi5oo8u5mb1bokf3i4', '1532847165', '');
INSERT INTO `fun_session` VALUES ('gb6dcm9cbdks1cgk5tp017k856', '1532847177', '');
INSERT INTO `fun_session` VALUES ('dauim4ms72brt27f1d61jvunp2', '1532847180', '');
INSERT INTO `fun_session` VALUES ('7bkrqj60e5tti08ieqe7g5s681', '1532847180', '');
INSERT INTO `fun_session` VALUES ('epr3f4hte0okioa63drup73n00', '1532847190', '');
INSERT INTO `fun_session` VALUES ('uul20imfei3le84a4t1orko502', '1532847192', '');
INSERT INTO `fun_session` VALUES ('3ear9r94nnvcl0jvtm7nbhdf77', '1532958493', '');
INSERT INTO `fun_session` VALUES ('93acoeela5sc6n445uc56b4h84', '1532964327', '');
INSERT INTO `fun_session` VALUES ('9635t07q6rsr6g2gtonv7e2s73', '1532939352', '');
INSERT INTO `fun_session` VALUES ('fvassv241breana65n9ubdjak3', '1532939391', '');
INSERT INTO `fun_session` VALUES ('2k9qojgemofs2t1km0lcddo9u0', '1533046162', '');
INSERT INTO `fun_session` VALUES ('jirl3u28009l0p4t7o3feph0j4', '1533043688', '');
INSERT INTO `fun_session` VALUES ('s0qbk7tjkvkbohan9fhnigeq14', '1532939938', '');
INSERT INTO `fun_session` VALUES ('rbkcvimstf92sio3cfeuhd2md4', '1533036515', '');
INSERT INTO `fun_session` VALUES ('ec5llebmn7su18k1d1g72hfj00', '1533036562', '');
INSERT INTO `fun_session` VALUES ('2sif9oq2ee9ga6tv9v3ijh8aq7', '1533043476', '');
INSERT INTO `fun_session` VALUES ('d0adahiimh5obriviqd4h0e4o6', '1532955414', '');
INSERT INTO `fun_session` VALUES ('k2m345ll3c0f90e2ge4stgmm44', '1532958245', '');
INSERT INTO `fun_session` VALUES ('macog3lhf1l20c0cj466mqpvp7', '1532991781', '');
INSERT INTO `fun_session` VALUES ('9o70te5kr10fhc02i3aqo9auh7', '1533000390', '');
INSERT INTO `fun_session` VALUES ('6k8h5pmjhhmrqp7v8gnvdekv62', '1533022375', '');
INSERT INTO `fun_session` VALUES ('qudj717bebk6170ns4a5kvpns2', '1533024402', 'verify|s:32:\"a732804c8566fc8f498947ea59a841f8\";');
INSERT INTO `fun_session` VALUES ('ccvpau8mhike5vq9vm2afvd0i7', '1533048275', '');
INSERT INTO `fun_session` VALUES ('1m22a2pa7r4gahu5plghiucm26', '1533036500', '');
INSERT INTO `fun_session` VALUES ('ha22faa69jvsho0oltrrpk8q16', '1533036505', '');
INSERT INTO `fun_session` VALUES ('h5nfu4l4rls9rmn72pe8tqiff7', '1533036505', '');
INSERT INTO `fun_session` VALUES ('99ipmet2s8cv2rv04p1h6l7t57', '1533036507', '');
INSERT INTO `fun_session` VALUES ('1flu74kjfbpkav71euvo2kmjk4', '1533036509', '');
INSERT INTO `fun_session` VALUES ('8bdipe0hg2nk0b2rvcpgcmf526', '1533043689', '');
INSERT INTO `fun_session` VALUES ('t5l0pk35im65cjmic0hf3j0885', '1533085787', '');
INSERT INTO `fun_session` VALUES ('tf1ctbuom86v2v6ng7fc7o42s3', '1533086325', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"eiulFPH5g8rbsu02P5NYqXW7REa1kvmhG/qkC/ah4xmA6iydFEBJvCgWlmk1T3pNzOBrXa8hE6Zil5P/QzAwQob+BXi5ZCyEz1abVnxYnpEb9xM8DXasSM5RiCdWGa+2Zb4Kdvm+URLH/3m/QArgbwYoDlf4UcKLWgNTVbIPjc8st3PYSUBYJ0BImeztvcAzSOUhl0GZsuinuHdBx2+Jvqq8vYHG/djTGdxb3pqSz8Oq8GxuqEISCSpgmhFVV0xDWTZZNLAU2oiD9ONJmHOyCvyr95wFhjechaYuVVMVFLcA1Ck28GvlPh84p3Rib4Er4skwKyP2Vy1oIDRRtir2Sg==\";');
INSERT INTO `fun_session` VALUES ('8crqkqrcgqrk7odpbdili15bp2', '1533091617', 'verify|s:32:\"d14c2267d848abeb81fd590f371d39bd\";');
INSERT INTO `fun_session` VALUES ('ck2064qs4shgn913f41h74e0d2', '1533104380', '');
INSERT INTO `fun_session` VALUES ('3a6osf4mbo6q9ro9j275e2h454', '1533104408', '');
INSERT INTO `fun_session` VALUES ('pqc3jot91fs6kk3ro22v5552n6', '1533104601', '');
INSERT INTO `fun_session` VALUES ('9qcoaa9lsuhv9iameg0il23rk2', '1533141114', '');
INSERT INTO `fun_session` VALUES ('5q9teuj9a5h2npimrigeur86c0', '1533169310', '');
INSERT INTO `fun_session` VALUES ('4umetr0enrhkhti1fvmcbeq8p0', '1533195448', 'verify|s:32:\"a563b6d5abbf137175059d6bb14672cc\";');
INSERT INTO `fun_session` VALUES ('d1qea9i53a3e1qenhl8m42hhl6', '1533195339', '');
INSERT INTO `fun_session` VALUES ('l27a125tomv91c78dtqknipdt7', '1533194875', '');
INSERT INTO `fun_session` VALUES ('sqir9t21d4id965nlknhrj5233', '1533194905', '');
INSERT INTO `fun_session` VALUES ('odbvjbgh1k04h8m2bgl22gd4t0', '1533260471', '');
INSERT INTO `fun_session` VALUES ('cimhit59jlm3ucksme8t1dhh95', '1533366141', '');
INSERT INTO `fun_session` VALUES ('qr6fuqptgjctniscre8oh67hs0', '1533366142', '');
INSERT INTO `fun_session` VALUES ('iao7rqe0vnt829jedb4jrn3964', '1533366146', '');
INSERT INTO `fun_session` VALUES ('nfbjacmn2f7lrlfg5v4tpctqv4', '1533366150', '');
INSERT INTO `fun_session` VALUES ('952kkf7lfun2opa41du9670r54', '1533366151', '');
INSERT INTO `fun_session` VALUES ('4nins7bp75k8ponp76f1p84g24', '1533366153', '');
INSERT INTO `fun_session` VALUES ('bid5dkqah7bdjdndp9ghl3qd47', '1533451206', '');
INSERT INTO `fun_session` VALUES ('dmvgh2v52i11tbkgrs0dejgr02', '1533451211', '');
INSERT INTO `fun_session` VALUES ('363fqaia14hqfd34v7s5kkp082', '1533451211', '');
INSERT INTO `fun_session` VALUES ('2hmponu3d3ebn7nen4rt9lug52', '1533451220', '');
INSERT INTO `fun_session` VALUES ('rb7t69li1p8m7rmaao0292dao4', '1533451225', '');
INSERT INTO `fun_session` VALUES ('t3r0d2td9s0s30eeleohhhgrh7', '1533451226', '');
INSERT INTO `fun_session` VALUES ('6nbusdaarqvpj92ch6q8nfuhf2', '1533451234', '');
INSERT INTO `fun_session` VALUES ('rt0ggtp1tmb7kg4dgfqfamj166', '1533451237', '');
INSERT INTO `fun_session` VALUES ('vn5hlb1neqatmlvrhnuflvi031', '1533451239', '');
INSERT INTO `fun_session` VALUES ('gleeadgchl4inilb5i973oa4f7', '1533451240', '');
INSERT INTO `fun_session` VALUES ('tna6dmhlt9ugoi2j2t0n4j4kr1', '1533451241', '');
INSERT INTO `fun_session` VALUES ('a59jv4rcovdgujg5ci813qh3u6', '1533451245', '');
INSERT INTO `fun_session` VALUES ('med5i1m8etqlrq5ahfol50mi46', '1533451245', '');
INSERT INTO `fun_session` VALUES ('0kog60tkdri2l1pmpnqh2s9se4', '1533451249', '');
INSERT INTO `fun_session` VALUES ('s0bjrek4tovdo1eo57m7ebp4e0', '1533451251', '');
INSERT INTO `fun_session` VALUES ('lnarr48bu2ggei5er7iv1guo45', '1533451256', '');
INSERT INTO `fun_session` VALUES ('hnpntq2l0tjuu8q3aoqs8ars44', '1533451256', '');
INSERT INTO `fun_session` VALUES ('6ii57t6jgvq9csejci8fchd365', '1533451258', '');
INSERT INTO `fun_session` VALUES ('6snrbul8dp84si52qkn7ki0rh0', '1533451262', '');
INSERT INTO `fun_session` VALUES ('2jg8qrg3qtnod98ote4gb4vlb7', '1533451265', '');
INSERT INTO `fun_session` VALUES ('eq1r9ibunrv8coa4bc8p0k1rv4', '1533465267', '');
INSERT INTO `fun_session` VALUES ('b4peeg8jtef7933os5lnqq6uv6', '1533466663', '');
INSERT INTO `fun_session` VALUES ('fouscqmvv3oiblgdlq3vpfe323', '1533523495', 'verify|s:32:\"5cce25ff8c3ce169488fe6c6f1ad3c97\";');
INSERT INTO `fun_session` VALUES ('k773hfsvpu3vrggdp1r8dgcsr6', '1533526798', '');
INSERT INTO `fun_session` VALUES ('k2sk48v1ig8ddqfhudmot7jci3', '1533612318', '');
INSERT INTO `fun_session` VALUES ('lvsf8hptbugu1p0m4q7n3pruf7', '1533860549', '');
INSERT INTO `fun_session` VALUES ('kn2pqd420makuua8n33ta83s97', '1533860549', '');
INSERT INTO `fun_session` VALUES ('3fbge1cltjh73lf2svu22ddu80', '1533860554', '');
INSERT INTO `fun_session` VALUES ('38uvf8bah5lmshmhdumhg8cbo7', '1533860563', '');
INSERT INTO `fun_session` VALUES ('s8f6m4qvjjdbjarmfjai4p04j4', '1533860565', '');
INSERT INTO `fun_session` VALUES ('sftdclgg0tam86fp78s3j0gcl2', '1533860565', '');
INSERT INTO `fun_session` VALUES ('bu3bbs5lcv652fl0n8mve3ple4', '1533860570', '');
INSERT INTO `fun_session` VALUES ('h8ff39a516e45f6g76v66h5tt1', '1533860576', '');
INSERT INTO `fun_session` VALUES ('ubvsin8ooamqnhokb25jg65734', '1533860583', '');
INSERT INTO `fun_session` VALUES ('ffjdn52lao7sl4pkc6fq6ap9e3', '1533860585', '');
INSERT INTO `fun_session` VALUES ('nnjsub4td06rej0cg4vqd6rmk3', '1533864156', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"aWWGgFJMuZk/b2ky9DXss/qd/TzE1NQ9Rons5NXlTs3SigmBp366eUMfudv3SzWWsGuuJzvdObpkffom97V8BzpG2bfxmGKJgjY+jVJ+CKXyokZqIzqBjNYmoAsqLBXpeTnSelfN7MWiXQagqV/ArSazY8OGO/RrIwGjahDISaT727A2GAM65bf1RcnRWf30JVUtJ2c6Tjp2I+Kakc6V0Dkn3LfqOi0NKAOhdyihBAu5n6zx99QFBUgjtu7oG4LBX70Mdxc7EUjiCghofSEYC2GL4O2fZCARclJ/et8sIiMYWfNli49OZ6mwN9IglVbWOgPYu7aQUoMSkO7eqJOi5w==\";');
INSERT INTO `fun_session` VALUES ('ej0q8b1pbn7ptdlpgtp1mqjhi3', '1533864794', '');
INSERT INTO `fun_session` VALUES ('0ijkstfsor6liqvrunsnldb3u0', '1533961405', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"d3RkxCC3RFFuZmGrrLxgA9z1tThSLjTNGoZrddmtVmMJDymy0GvAA9TgQLNHPPjin3sb0dA2qsRcPiG68UxMPJVb5ExsFITSpYz+karFIXqk98CBzqCs08TUoQd+ULQylEceKpIBmMVAa5/ahtJnUBKY5/9Z3wRIqMNfeobvCkWijoSspWUVjkQHUAt6yniOV1/82bzX2evvfXay35wXW0XQmjRymQK8p5KZSu9jhJvXxpm67BbVKcMi7Rj7RT835qDVsJfE0rgoXric7nx8F9p8MmrwjVHY//nsv4v837AkbebxLGrqYbGTFhxtAIEyAatS+7siRkl5VePJQ8/cXA==\";');
INSERT INTO `fun_session` VALUES ('80l05rre51cc7lmi5f2u25leg5', '1533972115', '');
INSERT INTO `fun_session` VALUES ('rjoecv9n5t76bt63ul6jjkjt11', '1533972116', '');
INSERT INTO `fun_session` VALUES ('44f6jftnscu49ba4c3f98fs723', '1533972650', '');
INSERT INTO `fun_session` VALUES ('qojt1aes96kjvfa4ic35q9brl2', '1533972651', '');
INSERT INTO `fun_session` VALUES ('a4vc6u791n3t9onge35nfiuru2', '1534075040', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"Ig5JjphQx0JeeDyzPaC0wCwIjskyyxEMT0WMnvJkAPVnSOwSMo+T2eEHkEBmhZev0xrdMKkfZ+AVZ+ltJ9Fr3vTe3F830FhFT/KtCGWZdWSsbsNpmfObWwSmaf0/eFQlmMrWMMmGXxtHyPsqUzNeGBfbaBl0UIipuKp73XzFpOUQDBjl020aDKV2zl2/WGfbTmYxSzN+RZuJgaxfaD2K6RLBUYmZYFaUQbSCApqLuEY9Xktr/6/0RvHvuyONPFaol2XGKOrR9p5Uon7k4Cp+hJK+i42+4SOn6hkRB9S1lXa1+iac4a/im6Qv2eQ+magPt+CQ519/gZw6RIUJ7xmr4A==\";');
INSERT INTO `fun_session` VALUES ('0bc9klei1bu6o7etsme2har364', '1534047544', '');
INSERT INTO `fun_session` VALUES ('iulrki1qtrukmaee9qlk46t6v6', '1534047545', '');
INSERT INTO `fun_session` VALUES ('rp9hsspn8bp4h97qc0d81n0q75', '1534047548', '');
INSERT INTO `fun_session` VALUES ('b79cue92kcosltngucsgofgps7', '1534047552', '');
INSERT INTO `fun_session` VALUES ('9m6ss04cvrs29h5jqr89ikha24', '1534047553', '');
INSERT INTO `fun_session` VALUES ('ume5ouegj4nc1o28mcofk4vcu4', '1534047555', '');
INSERT INTO `fun_session` VALUES ('3mna5tnsnat33ftms0kmf16jf0', '1534047557', '');
INSERT INTO `fun_session` VALUES ('b4f3fum3hs0urg1t1hpu92mmm1', '1534047558', '');
INSERT INTO `fun_session` VALUES ('7vmc8t7m7k33ehrrb98ag54h25', '1534047560', '');
INSERT INTO `fun_session` VALUES ('dpne1qa1kb2jaddnnmh1ji2ac7', '1534047562', '');
INSERT INTO `fun_session` VALUES ('tf70kj179hgiv4t5bq0cvan4k2', '1534047631', '');
INSERT INTO `fun_session` VALUES ('8rr86infj5f3hapqs5c9brv0b6', '1534047730', '');
INSERT INTO `fun_session` VALUES ('n0f2k66dipddnc70rijb14jpg4', '1534047731', '');
INSERT INTO `fun_session` VALUES ('eo23o1amofkvqodet3umaeg0i7', '1534047742', '');
INSERT INTO `fun_session` VALUES ('7mrbhdhf63f1bd5tfrf239cre7', '1534048254', '');
INSERT INTO `fun_session` VALUES ('a428kb91kc4q89pcf7cuk48r63', '1534048255', '');
INSERT INTO `fun_session` VALUES ('b3oegoatkjce48435bhmg378i6', '1534048327', '');
INSERT INTO `fun_session` VALUES ('m5on1sn8opota3tkepna8mebl7', '1534048328', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('1or6h6ma1at0v4ditin0ktiou1', '1534073611', '');
INSERT INTO `fun_session` VALUES ('luslug4tsj76ibrm9687thqp12', '1534074204', '');
INSERT INTO `fun_session` VALUES ('bln40pf8sc9tghh5j9meldr5g4', '1534074205', '');
INSERT INTO `fun_session` VALUES ('pa3mqtfbnju4p7j0l98kv4euo2', '1534074212', '');
INSERT INTO `fun_session` VALUES ('7ql3chggb0snba2kudvdvl35s5', '1534074217', '');
INSERT INTO `fun_session` VALUES ('ghl4e4nel1al8a9cl4qbescsm4', '1534074220', '');
INSERT INTO `fun_session` VALUES ('kis1rhousq430oft4j7qa41ll1', '1534074223', '');
INSERT INTO `fun_session` VALUES ('io231m77f51gah4cng6edlksf7', '1534074233', '');
INSERT INTO `fun_session` VALUES ('j60tnveo4u9tqp0p1md7cu73q7', '1534074251', '');
INSERT INTO `fun_session` VALUES ('1qsqt227a234s57q6rmdgr65h5', '1534074252', '');
INSERT INTO `fun_session` VALUES ('qqs8m9mi11oiidh245c7rv5h65', '1534074309', '');
INSERT INTO `fun_session` VALUES ('q0a6519bgq4kkrpp22gj1497t4', '1534074595', '');
INSERT INTO `fun_session` VALUES ('ghib01p89ekjg6beihirmahr06', '1534074596', '');
INSERT INTO `fun_session` VALUES ('kk2rcne4lchss06v2288a062b1', '1534074749', '');
INSERT INTO `fun_session` VALUES ('0ph61eal8fighp217ch1h0edf3', '1534074750', '');
INSERT INTO `fun_session` VALUES ('nhb9ubnomihnj27m8e7mo8gu47', '1534074838', '');
INSERT INTO `fun_session` VALUES ('e4bpfmbjbnrpp46ha9o71cvi91', '1534074842', '');
INSERT INTO `fun_session` VALUES ('np7727p43e3h70jthi22m7sra5', '1534074844', '');
INSERT INTO `fun_session` VALUES ('flthsnle2ph848b05ftmal0ga2', '1534074888', '');
INSERT INTO `fun_session` VALUES ('0c6hbjh7kc03afsjb1mtid4q11', '1534074889', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('vij1n99dujjh1pgsn6psrci8n3', '1534074934', '');
INSERT INTO `fun_session` VALUES ('nvh8m49bi0f21ds448s9e96841', '1534074937', '');
INSERT INTO `fun_session` VALUES ('nag6la5brfou80kfnp4g1nok90', '1534074943', '');
INSERT INTO `fun_session` VALUES ('fe62ch581g9hmtkkmsa02a6ph5', '1534074946', '');
INSERT INTO `fun_session` VALUES ('qn1aah43ua91rv04pi6hsq32e7', '1534074950', '');
INSERT INTO `fun_session` VALUES ('df9hqco3b3nohbj36d6r47q670', '1534074955', '');
INSERT INTO `fun_session` VALUES ('250olaopk5rih2n48meufriku6', '1534074960', '');
INSERT INTO `fun_session` VALUES ('2dm9avjm4q8i7vd9sqlgic60m4', '1534075008', '');
INSERT INTO `fun_session` VALUES ('jbfk9qhar8d7a46fsq45rtqkd3', '1534075013', '');
INSERT INTO `fun_session` VALUES ('o3p11m6gjmgr4f3n5oukmtm7a4', '1534075016', '');
INSERT INTO `fun_session` VALUES ('l1r2p4svjr4ntp911lt3qhg590', '1534075029', '');
INSERT INTO `fun_session` VALUES ('qik1qbffednn2dr2ckll2bo105', '1534075031', '');
INSERT INTO `fun_session` VALUES ('jb4m22fm8iv5056dhirp1qi3b6', '1534075034', '');
INSERT INTO `fun_session` VALUES ('te79s5h1jf3c447cdmsfdgp4f3', '1534075034', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"XhhXK2IitEesi40mX3/2WQJQzo7G7f7Vqg6dWwn7Gq4mB5EITvs7cP3cbzcpQszu\";');
INSERT INTO `fun_session` VALUES ('jmrhkjcrad4lpkbtku6tuq6qs3', '1534075037', '');
INSERT INTO `fun_session` VALUES ('slqurjo52om6te2bajf0q58d44', '1534077599', '');
INSERT INTO `fun_session` VALUES ('hl14sfe0hd5m4eku882t3g3u45', '1534149064', 'verify|s:32:\"50062ddd13358c02dea31c6e82a524c5\";');
INSERT INTO `fun_session` VALUES ('k18cfktv46u0bs2qenh4pvppp3', '1534132367', 'verify|s:32:\"4a46fbfca3f1465a27b210f4bdfe6ab3\";');
INSERT INTO `fun_session` VALUES ('svo10ngbkoliglgji7cenl1ei4', '1534146412', '');
INSERT INTO `fun_session` VALUES ('i4rm18hloh878k2u4q073l0hq7', '1534146413', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('s2knagck40cilid2bhf9mfdl62', '1534146416', '');
INSERT INTO `fun_session` VALUES ('pnu8sjffrh928h2m12rs86j3v6', '1534146420', '');
INSERT INTO `fun_session` VALUES ('0590oo3035leudukhds8erkc21', '1534146422', '');
INSERT INTO `fun_session` VALUES ('ufavvtk7hiuk5ki6qrbqgqk380', '1534136023', '');
INSERT INTO `fun_session` VALUES ('lqs2f55o2tdggs71g4qmucl3v6', '1534145074', '');
INSERT INTO `fun_session` VALUES ('pj1bkhrnqdgjp4ejdfag1vaat1', '1534145875', '');
INSERT INTO `fun_session` VALUES ('bes0oh3piccep57t1ca1hnvjs5', '1534146426', '');
INSERT INTO `fun_session` VALUES ('rjlib8gnnmjv0kbjhkga195lv5', '1534146436', '');
INSERT INTO `fun_session` VALUES ('r6qfhil8qo7da9rt0880mchv55', '1534215930', '');
INSERT INTO `fun_session` VALUES ('1e7vu3498kbbh52qaaknrjpaf7', '1534219608', '');
INSERT INTO `fun_session` VALUES ('ne6g98jd3m14h3lft2p9tk42m4', '1534469921', '');
INSERT INTO `fun_session` VALUES ('02timi37s1hn666opt4hhbdu82', '1534299225', '');
INSERT INTO `fun_session` VALUES ('hh69tk1iakcg39hau7vamfn9n0', '1534221527', 'verify|s:32:\"0d770c496aa3da6d2c3f2bd19e7b9d6b\";');
INSERT INTO `fun_session` VALUES ('vah4b99j21kro9mmal4qleo107', '1534226546', '');
INSERT INTO `fun_session` VALUES ('haj9nmfp71ub0lt9a3d1fa94m3', '1534299226', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('r0cuh8c03lsjb2urgqm461ctv6', '1534299272', '');
INSERT INTO `fun_session` VALUES ('gfb22qd7js1dirfavcqo8sm4b0', '1534299276', '');
INSERT INTO `fun_session` VALUES ('5afe3vcd3nffrbm9q8c00g9f30', '1534299277', '');
INSERT INTO `fun_session` VALUES ('lidsh377rb76a7kia639u5buv3', '1534299281', '');
INSERT INTO `fun_session` VALUES ('t19irvkvon0g6ndanu7side550', '1534299286', '');
INSERT INTO `fun_session` VALUES ('s8q2neq27ukc11mc9gvdisjo35', '1534299290', '');
INSERT INTO `fun_session` VALUES ('9h9l2fjjsemu3fb6r2ra0d1vq7', '1534661354', 'verify|s:32:\"5b9373fc169106c43c99cfae04989986\";');
INSERT INTO `fun_session` VALUES ('u69j8f2php1ll35ka2jk7c7qv7', '1534664478', '');
INSERT INTO `fun_session` VALUES ('tnt6upjdgi1ev9l1ebe935em70', '1534924737', 'verify|s:32:\"6f5e4e86a87220e5d361ad82f1ebc335\";');
INSERT INTO `fun_session` VALUES ('sh2guim9lffo0jdk82l7ol8ae3', '1534997419', 'verify|s:32:\"b3592b0702998592368d3b4d4c45873a\";');
INSERT INTO `fun_session` VALUES ('tjhu6mv54mvd4a96bna08req97', '1535072841', 'verify|s:32:\"132d6c1408f2492456848667346b54b6\";');
INSERT INTO `fun_session` VALUES ('ong3ata1pd3k0n3g67voqc3e22', '1535100720', '');
INSERT INTO `fun_session` VALUES ('94op2kd8gtrp03n8mqpkrkv5p0', '1535338850', '');
INSERT INTO `fun_session` VALUES ('etbq7lqqarbok4g894cjo55eg4', '1535335664', '');
INSERT INTO `fun_session` VALUES ('8udg6vvp3816a7ni92hdm5trs2', '1535345797', 'verify|s:32:\"d1d5923fc822531bbfd9d87d4760914b\";');
INSERT INTO `fun_session` VALUES ('glmkangfqdjljh66uv36k73k54', '1535341421', '');
INSERT INTO `fun_session` VALUES ('s9dqs929l5rrlcj7u545k5b2i1', '1535348224', 'verify|s:32:\"cc3f5463bc4d26bc38eadc8bcffbc654\";');
INSERT INTO `fun_session` VALUES ('aoo69u5dmukpns7tnbbqtvoja5', '1535355407', '');
INSERT INTO `fun_session` VALUES ('7dj5krnj64aff2mug1osb8lg15', '1535355408', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('7a6qhm03qml33jgl1k3bh2hpf6', '1535355415', '');
INSERT INTO `fun_session` VALUES ('irgjpu1a868me13i9t8cne9da1', '1535355421', '');
INSERT INTO `fun_session` VALUES ('2fvo631bgtmsb825glbjo8k2o6', '1535344123', '');
INSERT INTO `fun_session` VALUES ('klidnuqavsmdr5illodjdhin82', '1535347659', '');
INSERT INTO `fun_session` VALUES ('ueqas7a25foi0is7bkl26r9ah4', '1535355425', '');
INSERT INTO `fun_session` VALUES ('sl2lbtk15km7ku419c4h4svan1', '1535355436', '');
INSERT INTO `fun_session` VALUES ('dtp4ai5atqhbamfkckr8hg1rt2', '1535355452', '');
INSERT INTO `fun_session` VALUES ('5bno0l9e22q8sbfb2n14qpkq96', '1535355469', '');
INSERT INTO `fun_session` VALUES ('t5g4o1doasm4jcbi4i547sk9m2', '1535355472', '');
INSERT INTO `fun_session` VALUES ('gigf25oosjdjvuo1nm66t7mic6', '1535355545', '');
INSERT INTO `fun_session` VALUES ('i2ec422k193q78f12v7hkgq1a6', '1535355547', '');
INSERT INTO `fun_session` VALUES ('pmkla04217eghbbo8jgs4hg510', '1535355554', '');
INSERT INTO `fun_session` VALUES ('ir4l4rjerjjvvnjv0ong1p9lq4', '1535355555', '');
INSERT INTO `fun_session` VALUES ('8hi49mhif6ivvshvsp0eldhrn3', '1535355555', '');
INSERT INTO `fun_session` VALUES ('tdecmgbrjiafpb57u9ugi3cob6', '1535355558', '');
INSERT INTO `fun_session` VALUES ('guulrlkgkf1028284k6vmfdlo1', '1535356793', '');
INSERT INTO `fun_session` VALUES ('o73dcsnvmffvqi297lqs1lgng4', '1535357443', '');
INSERT INTO `fun_session` VALUES ('pibh4gi8gr38poctbipgtla2u7', '1535357444', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('ssdfr495fe8e22b5roe7e5ah67', '1535357447', '');
INSERT INTO `fun_session` VALUES ('75osq7h6lmvvdn8bpbi3hflit2', '1535357450', '');
INSERT INTO `fun_session` VALUES ('ofs017b6kqu22tdg8o9ab0jgr3', '1535357454', '');
INSERT INTO `fun_session` VALUES ('53h456tiesehlkmjomvisroe76', '1535435959', 'verify|s:32:\"1e4268fd66e5999df71142c71a4e212f\";');
INSERT INTO `fun_session` VALUES ('r4t6i176hq37p6u3kie35chu40', '1535437264', '');
INSERT INTO `fun_session` VALUES ('0ot2pt1jm9oa9qr0s8qp24ttv0', '1535687477', '');
INSERT INTO `fun_session` VALUES ('tjft8g37g3dela60dd4m7rbth6', '1535937036', '');
INSERT INTO `fun_session` VALUES ('gg5k2vf05unpc5a2e4qh5vtuo3', '1535937044', '');
INSERT INTO `fun_session` VALUES ('t98o5l8qjfbfn2oi5uln24b6h7', '1535938993', '');
INSERT INTO `fun_session` VALUES ('raomves6572oud88nksjtn6uk6', '1535961048', 'verify|s:32:\"b03a75fccca587a511170aa5b7952210\";');
INSERT INTO `fun_session` VALUES ('bh3ue2vbmcs1bt0834slencgk7', '1535958043', '');
INSERT INTO `fun_session` VALUES ('fp6hpfuruf85ki7n13dvm4opk3', '1535961688', '');
INSERT INTO `fun_session` VALUES ('8tk2tdq1j61u1bb3ggesl1qku4', '1535961688', '');
INSERT INTO `fun_session` VALUES ('79rsaqa8tlg3v56btjjkbcuu52', '1535961696', 'verify|s:32:\"629ed941bec4a73720b316dd477c91df\";');
INSERT INTO `fun_session` VALUES ('jftu9vunevuh2gv5pt37ddg4q3', '1535970358', '');
INSERT INTO `fun_session` VALUES ('408csc1abh4km1f9albgljoh64', '1535986393', '');
INSERT INTO `fun_session` VALUES ('ccrcldemjt2g8q6eke6lak4ur1', '1535961034', '');
INSERT INTO `fun_session` VALUES ('tubbsbh3194li0h78ghities56', '1536002182', '');
INSERT INTO `fun_session` VALUES ('0i9honf23n3ss23ul71vam9102', '1536026603', '');
INSERT INTO `fun_session` VALUES ('kge1p1058q5omuj2vbln9a8gc3', '1536418734', '');
INSERT INTO `fun_session` VALUES ('nuqa64p5c44piga25g0a216am7', '1536573384', '');
INSERT INTO `fun_session` VALUES ('3a7hgs99dg2m0oj3d4nal98tg0', '1536573385', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"+4tH0qJVC0L40xkoc3xBLEh7CnbW1M5MqefDdTWf6a86W/BL19C4PrQOoyfHKFft\";');
INSERT INTO `fun_session` VALUES ('gfrsjul5afid1otr1rrddsi800', '1536637153', 'verify|s:32:\"571e0f7e2d992e738adff8b1bd43a521\";');
INSERT INTO `fun_session` VALUES ('hkjnsgc08d26s62uu54lldf6l6', '1536664968', '');
INSERT INTO `fun_session` VALUES ('5qkf9josppl82db1kklmnqv2t4', '1536664975', '');
INSERT INTO `fun_session` VALUES ('9n5kv9820dn9r72ehe0jh2gdo3', '1536664977', '');
INSERT INTO `fun_session` VALUES ('cmgiqh6hctakils4hgro9e1bi0', '1536664978', '');
INSERT INTO `fun_session` VALUES ('sonbua1u8r5ue408c3imn92bf7', '1536664978', '');
INSERT INTO `fun_session` VALUES ('f1o6r80to4ko0tbg9ral07f1b6', '1536664978', '');
INSERT INTO `fun_session` VALUES ('i8ipmrltao0fhpr8qb7roevn56', '1536664978', '');
INSERT INTO `fun_session` VALUES ('92iqhi41e3dfj1f49koff6ak41', '1536664978', '');
INSERT INTO `fun_session` VALUES ('pbg6522hcbnqga5pmq0m0mnsl1', '1536664980', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"+4tH0qJVC0L40xkoc3xBLEh7CnbW1M5MqefDdTWf6a86W/BL19C4PrQOoyfHKFft\";');
INSERT INTO `fun_session` VALUES ('an2ehhq6e3ovcijeg8cma33m84', '1536664986', '');
INSERT INTO `fun_session` VALUES ('egcio323rs8fjecmskcja2fp62', '1536665009', '');
INSERT INTO `fun_session` VALUES ('a4sm928dep5a3qjv107bpre0r3', '1536665010', '');
INSERT INTO `fun_session` VALUES ('4bjci0d0h8sdf5n8kb3fphvj45', '1537432675', 'verify|s:32:\"f621585df244e9596dc70a39b579efb1\";');
INSERT INTO `fun_session` VALUES ('ghagsagv2s9rf0s7ku75dol813', '1537498606', 'verify|s:32:\"1d94108e907bb8311d8802b48fd54b4a\";');
INSERT INTO `fun_session` VALUES ('2n46qfhgck08i21hkd7d6lf160', '1537506336', '');
INSERT INTO `fun_session` VALUES ('8672lj577ae52s95bgqfrndev0', '1537506338', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('n5fhfte41ee9qp9j79puek7j37', '1537506346', '');
INSERT INTO `fun_session` VALUES ('vo1akis54sv9hedb4bkdames37', '1537506359', '');
INSERT INTO `fun_session` VALUES ('kcfc6ilpb56vb1c5s15jgsha33', '1537506364', '');
INSERT INTO `fun_session` VALUES ('48snit5litmmcjss3mveim60m0', '1537506374', '');
INSERT INTO `fun_session` VALUES ('uk5008kjmhoasgqn4anc1fmso6', '1537506380', '');
INSERT INTO `fun_session` VALUES ('dkke1vec3636e5kdbovmgqdrq4', '1537506381', '');
INSERT INTO `fun_session` VALUES ('uij29scii1qb4710nkbmeo4nq5', '1537506420', '');
INSERT INTO `fun_session` VALUES ('vf1rss2ahn0rl9914vi30ots46', '1537506420', '');
INSERT INTO `fun_session` VALUES ('0lfnu57dfddjmr7qjifv45gp07', '1537506431', '');
INSERT INTO `fun_session` VALUES ('19ierrfo3vkndfoi67ussee5n7', '1537506442', '');
INSERT INTO `fun_session` VALUES ('0fjq3qlg6aploo1o14rhala4i3', '1537506446', '');
INSERT INTO `fun_session` VALUES ('9uuru10vh5d81hch0kn4alg3u4', '1537506465', '');
INSERT INTO `fun_session` VALUES ('1jnkh35hlrib4bcke3mn5h9cd3', '1537506466', '');
INSERT INTO `fun_session` VALUES ('ku9fhp4f6mn2o8gu0qv70bpsq3', '1537506468', '');
INSERT INTO `fun_session` VALUES ('u7badqph0aok9s4f9feknqliv1', '1537506476', '');
INSERT INTO `fun_session` VALUES ('dttllr8gbatmu105ffavfrnmh6', '1537506476', '');
INSERT INTO `fun_session` VALUES ('au8nv1n92f2nusov3n9c48h712', '1537506479', '');
INSERT INTO `fun_session` VALUES ('9nhp1e0ka55q7ped8dr7eluc45', '1537506482', '');
INSERT INTO `fun_session` VALUES ('iacvv26kq6qfsvc3o71q8v8fh2', '1537506489', '');
INSERT INTO `fun_session` VALUES ('6ss7ebpqn790naup1cnbauoku6', '1537506493', '');
INSERT INTO `fun_session` VALUES ('u5ius5utl9uvipcgqjp9llsqq7', '1537506498', '');
INSERT INTO `fun_session` VALUES ('o7bvtd2q0a1rjca8m7c97ms6g1', '1537506499', '');
INSERT INTO `fun_session` VALUES ('hlnu42qmi38s7dol6ga2008nj3', '1538208645', 'verify|s:32:\"64a08e5f1e6c39faeb90108c430eb120\";');
INSERT INTO `fun_session` VALUES ('ghgfn278bpos196g4so4lamta0', '1538918103', '');
INSERT INTO `fun_session` VALUES ('rcl90c0umk1jp6j8bllvlob1v1', '1538918265', 'verify|s:32:\"a775361d1fd47a9823a91aabf2a28a35\";');
INSERT INTO `fun_session` VALUES ('mc556k7akoufqrpsnpcu5es4b0', '1538922181', '');
INSERT INTO `fun_session` VALUES ('vo29a4s32la9sg0ug15t1t5m87', '1539280616', '');
INSERT INTO `fun_session` VALUES ('8ikrdmeglg3127s09u9vprmfq6', '1539280617', 'verify|s:32:\"2b1905b5d4641830901acf76c957cfb1\";');
INSERT INTO `fun_session` VALUES ('onm5k2l9ijlnb7ffgh04ndnua0', '1539280677', 'verify|s:32:\"fb4ab556bc42d6f0ee0f9e24ec4d1af0\";');
INSERT INTO `fun_session` VALUES ('mjtue6bb9miqdisjjndnj66ve4', '1539735204', '');
INSERT INTO `fun_session` VALUES ('9rq4lmm1v07dmr8ad0g5jn11h3', '1539735205', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('qm40nlu29uj0p7r66uvmt1ulb2', '1539735223', '');
INSERT INTO `fun_session` VALUES ('mto3o9udhg3c3ueilv8g5ge2c2', '1540291967', 'verify|s:32:\"27b587bbe83aecf9a98c8fe6ab48cacc\";');
INSERT INTO `fun_session` VALUES ('jpq96euidav4cuoufit2v9i1b1', '1541233343', 'verify|s:32:\"ef1f4d925a67ffc924862f69f6bb120b\";');
INSERT INTO `fun_session` VALUES ('rnt1oodtglafk1cd2d3439fme7', '1541830762', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"mZrG1bOmp8zPJqNIdbk7dYybJbqIFk5nzLTojZ1ZqTyIqMNutPzj3avQKApnVFYpYJCCezbOf+KsA1A6KItzX/8Ryl9ISO4Z2Y3Pi3gwgXZLe9hkgP31nnDpCQvJScHGJMrxxWa+XxCcMu8MsZEbIz+J2AtzoM5brKwIlETuwJcoKXY8acmip0159rTXK11tWYCL69M2S4ncL34JbCsBtU4yMofBjSWL7J8P8UTv1Ot7ZT+YOOFiwcqKKIPg24oWaq6d1TzYTpPpANFxq/86rn36tYtBeUw9HwP41smQTkpm3wiWCXB0FDLSP2QZ0Mb/0lHYbq6c0KJvLEQpAIWTiA==\";');
INSERT INTO `fun_session` VALUES ('9lj2qhtshrr83nee3r1pr0ijl7', '1541830754', 'verify|s:32:\"176bf6219855a6eb1f3a30903e34b6fb\";');
INSERT INTO `fun_session` VALUES ('klv28jlffjofdspn38lm2n3cm7', '1541830754', '');
INSERT INTO `fun_session` VALUES ('t2v6t1gvdsi69267ksu8s77904', '1541830758', 'verify|s:32:\"97001231a709c6dc5ff546ab635c5b70\";');
INSERT INTO `fun_session` VALUES ('u6lm69duuutdq1mrgbni8c16i1', '1541830777', '');
INSERT INTO `fun_session` VALUES ('93aei1nsl2a6uc34fimr2to3j7', '1541830789', '');
INSERT INTO `fun_session` VALUES ('hgnuu76ilkgh51vdbi8f892l75', '1541830795', '');
INSERT INTO `fun_session` VALUES ('iui9gbrvos60ub03fq3110i4h0', '1541830814', '');
INSERT INTO `fun_session` VALUES ('18ugfq30vbcrk0q7pba9mjies5', '1542868104', 'verify|s:32:\"f603541ca2e8ff3df7479cfabb4be93b\";');
INSERT INTO `fun_session` VALUES ('tvqagchj2gur0ieos2s853jck3', '1543570176', 'verify|s:32:\"3e9f7c16bd1cdea78f8e2eea72dfdfbe\";');
INSERT INTO `fun_session` VALUES ('73st6pbkc9ps7rlevtlsa5t585', '1543615030', '');
INSERT INTO `fun_session` VALUES ('4vm3vcahqpffpesboc363jhk00', '1543616602', '');
INSERT INTO `fun_session` VALUES ('d8c8oioh0vrdqs9ul0vsiun7t6', '1543617420', '');
INSERT INTO `fun_session` VALUES ('2n7gkm9imf4hj0l47a60pa3712', '1543618328', '');
INSERT INTO `fun_session` VALUES ('svl4aa4sv15vao4k4dd0gemlt1', '1543619407', '');
INSERT INTO `fun_session` VALUES ('49elmug9nk6jteq7leveh4onm6', '1543795905', '');
INSERT INTO `fun_session` VALUES ('dpukvdu7cvaev057jv1r1l9i17', '1543795906', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('uphqsgr3a8ri8m1bi6r684c2m7', '1543795911', '');
INSERT INTO `fun_session` VALUES ('0emucvk1gvuldnlqj7co4bedj6', '1543795921', '');
INSERT INTO `fun_session` VALUES ('kfanhcfojgj0gn3oc17hvs2sp3', '1543795931', '');
INSERT INTO `fun_session` VALUES ('d2pbirp5l4ov58l5ij6m3br947', '1543795931', '');
INSERT INTO `fun_session` VALUES ('rkstmiec4belhrj5hp2tckcpp7', '1543795943', '');
INSERT INTO `fun_session` VALUES ('6p8894351jtjo7hrkrrv29e592', '1545383805', '589bc2dc861125ca92a1d274a6ea7f4d|s:344:\"Ig5JjphQx0JeeDyzPaC0wNnSTgk6P4bG5wZc6AIbagpRU6kq0s70uNnCKapwg5Mw3aZlTLuNzJ9YH/GZMJhGebqSkd+LzEWJ6Bi4CJoWaeaX5ho5rw+xw6riQcwvvgFafzpC+RmLc6heOwDNaZ+gHd1uMkHJSVWQWc4CMH6bTMWJqw4l0txjQLCNd44zzuZzp6y9haVjpyrEQU++xrYrdtIg3GjreMksVt+BayeAW530qhAMYnlgtPiyPAT1jPw/KhRUgGA+gRDtrW2C1DlhHlLXu4QTFhX9c74K+yMX2UxCAgQ9PhYnjnjEulRBzhpud77/pRhiNH1A4fePRpZ2yQ==\";');
INSERT INTO `fun_session` VALUES ('9t1t5pq4omvghmjqss6f7g8ca7', '1545450803', 'verify|s:32:\"2cbca44843a864533ec05b321ae1f9d1\";');
INSERT INTO `fun_session` VALUES ('ug0os26doev6hjg69hmrj5c6o6', '1546423220', '');
INSERT INTO `fun_session` VALUES ('0cql6rccf4kikfc95e2e07o8h0', '1546423221', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('gmufqg5ot28ddt5fhnak6q14t1', '1546423223', '');
INSERT INTO `fun_session` VALUES ('dhifbqigmtji9ut283f77nhin2', '1546423227', '');
INSERT INTO `fun_session` VALUES ('qr920a330t5j1fs365adbe69f5', '1546423230', '');
INSERT INTO `fun_session` VALUES ('ccbd84vu97ak419f3euf9fbdh4', '1546423236', '');
INSERT INTO `fun_session` VALUES ('8045illv8ov25lq16brp82t9a0', '1546592725', 'verify|s:32:\"124461dcd3571e6674ec4e0e140cc298\";');
INSERT INTO `fun_session` VALUES ('ccmqillubjj6e1pmp8cin8ufp4', '1546592797', 'verify|s:32:\"c4f796afbc6267501964b46427b3f6ba\";');
INSERT INTO `fun_session` VALUES ('b7ub59o1mr5blp05q63plt8513', '1546909847', 'verify|s:32:\"da52dbdb51e5c9b3fcacdc228065d5e0\";');
INSERT INTO `fun_session` VALUES ('m0ur13ifmciumk9vk6vfnqgfi0', '1547088119', '');
INSERT INTO `fun_session` VALUES ('336pg4ponlfphlvurb5chm43a6', '1547088120', '589bc2dc89454934ca92a1d274a6ea7f4d|s:64:\"pqastD4MydE7eTGjA7WE4iWRKEo2HiffM91V5alelS5yHvPMBczDvkVBJa1SCFcG\";');
INSERT INTO `fun_session` VALUES ('9hjn0eim8itdj2vo9bi3t3j2s5', '1547088128', '');
INSERT INTO `fun_session` VALUES ('ue3s16iui84eit3p564pnucqc2', '1547088138', '');
INSERT INTO `fun_session` VALUES ('u4le3s79i482l4i4arbp44v053', '1547088144', '');
INSERT INTO `fun_session` VALUES ('fcdmr9ucfa2522m21u5811idl0', '1547088146', '');
INSERT INTO `fun_session` VALUES ('7i0646g83meoeohnjh4s56sob4', '1547169161', 'verify|s:32:\"78daab4f4fce94374d8a53444c77c2c6\";');
INSERT INTO `fun_session` VALUES ('0gsjn8t25bl0nr9pgibv6tkgi2', '1547215018', 'verify|s:32:\"81baadacf39a11c56ee30acd5455fced\";');

-- ----------------------------
-- Table structure for fun_user
-- ----------------------------
DROP TABLE IF EXISTS `fun_user`;
CREATE TABLE `fun_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(64) NOT NULL COMMENT '用户编号',
  `nick_name` varchar(64) DEFAULT '' COMMENT '会员昵称',
  `true_name` varchar(64) DEFAULT NULL COMMENT '用户姓名',
  `state` tinyint(1) DEFAULT '0' COMMENT '会员状态',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `add_time` int(18) DEFAULT NULL COMMENT '注册时间',
  `pwd` varchar(64) DEFAULT NULL COMMENT '初级密码',
  `sec_pwd` varchar(64) DEFAULT NULL COMMENT '二级密码',
  `salt` varchar(12) DEFAULT NULL COMMENT '密码加密标记',
  `sec_salt` varchar(12) DEFAULT NULL COMMENT '二级密码加密标记',
  `openid` varchar(64) DEFAULT '' COMMENT '区别用户的标志',
  `session_key` varchar(64) DEFAULT '' COMMENT '钥匙用于解密',
  `province` varchar(32) DEFAULT '' COMMENT '省份',
  `city` varchar(32) DEFAULT '' COMMENT '城市',
  `sex` tinyint(1) DEFAULT '0' COMMENT '姓名',
  `avatarurl` varchar(128) DEFAULT '' COMMENT '会员头像链接',
  `is_bind` tinyint(1) DEFAULT '0' COMMENT '绑定状态',
  `bind_time` int(18) DEFAULT NULL COMMENT '绑定时间',
  `alipay` varchar(64) DEFAULT '' COMMENT '支付宝',
  `qq` varchar(32) DEFAULT '' COMMENT 'QQ',
  `idcard` varchar(64) DEFAULT '' COMMENT '身份证号码',
  `login_time` int(16) DEFAULT NULL COMMENT '登录时间',
  `reg_ip` int(16) DEFAULT NULL COMMENT '注册IP地址',
  `token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_user
-- ----------------------------
INSERT INTO `fun_user` VALUES ('43', 'a4231631532617940', '差不多先生。', '刘少威', '1', '18333192320', '1532617940', null, null, null, null, 'oxUKo5SBwyayhxaUmNVYJeSUyR1I', 'F1/OE1BGgMTouiDkrcOs6g==', 'Hunan', 'Zhangjiajie', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJx4AybsKFhBKE2W0v0gCPY0uIrkwEhlZn2hQkvvCibhaZr1CKTzfRrtUJDvR36EAwg53vBSbDIbQg/132', '1', '1532618247', '18333102320', '1278573790', '4308221891781899', null, null, null);
INSERT INTO `fun_user` VALUES ('45', 'a6026111532272494', '林夕', '会员9927711532272494', '1', null, '1532272494', null, null, null, null, 'oxUKo5U-wE-28FWcGf6iC9rg3_ec', '1JKS8gT7TF994r9MpZqZSA==', 'Hebei', 'Shijiazhuang', '2', 'https://wx.qlogo.cn/mmopen/vi_32/m0hYeZE7KZSyYGXyZm9ibwaIHicpB96pSDtibrbyN5tJFf4qdtibEU7HC9U5BdRr2zqQ9korZOGyKUrpyzfk8tCnaQ/132', '0', null, '', '', '', null, null, null);
INSERT INTO `fun_user` VALUES ('46', 'a8720571532665642', '差不多先生。', '会员3664661532665642', '1', null, '1532665642', null, null, null, null, null, null, 'Hunan', 'Zhangjiajie', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJx4AybsKFhBKE2W0v0gCPY0uIrkwEhlZn2hQkvvCibhaZr1CKTzfRrtzru6R9QlPsRcmcWQFRf4RA/132', '0', null, '', '', '', null, null, null);
INSERT INTO `fun_user` VALUES ('47', 'a9951591532786096', 'Goku、', '会员1202761532786096', '1', null, '1532786096', null, null, null, null, 'oxUKo5S9QyRM5UEpQTVZcoQp9Zzw', 've37YqEfO0uI933F8sJ0rw==', 'Dubai', '', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTLKZdp1GuQzl0zXuibibnnzON35sGcCiaVUqE5uwLwKY6L9PyB7k7NCXiahuojvzu0Rcdo0TjOuLibPKUA/132', '0', null, '', '', '', null, null, null);
INSERT INTO `fun_user` VALUES ('48', 'a3719751536571944', '好名字可以让你的朋友更容易记住你', '会员8613881536571944', '1', null, '1536571944', null, null, null, null, 'oxUKo5b5n-cuJko7hEYUalLjp0IU', 'hLCYJuESLCUfOOpbg3z12Q==', '', '', '1', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTKuhorb6Nfog4TFLt2zcoNrjhTDgBFZV59gjXLoK6zb4iciaMAqm6x5Iw2uAjSCicjfJRrtA7M5z9b9Q/132', '0', null, '', '', '', null, null, null);
INSERT INTO `fun_user` VALUES ('49', '18333192320', '', null, '0', null, '1536571944', '1ef03106523e5531916fb78914679be0', null, '64692', null, '', '', '', '', '0', '', '0', null, '', '', '', '1536571944', null, null);

-- ----------------------------
-- Table structure for fun_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fun_user_token`;
CREATE TABLE `fun_user_token` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'tokenId',
  `user_name` varchar(64) DEFAULT NULL COMMENT '会员账号',
  `login_time` int(13) DEFAULT NULL COMMENT '登录时间',
  `user_id` int(10) DEFAULT NULL COMMENT '会员ID',
  `token` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fun_user_token
-- ----------------------------
INSERT INTO `fun_user_token` VALUES ('1', '18333192320', '1547276898', '49', '6f55e48954dfc368c8906c78d26970e2');
