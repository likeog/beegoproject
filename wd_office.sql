/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50158
Source Host           : localhost:3306
Source Database       : wd_office

Target Server Type    : MYSQL
Target Server Version : 50158
File Encoding         : 65001

Date: 2015-04-18 17:57:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for wd_news
-- ----------------------------
DROP TABLE IF EXISTS `wd_news`;
CREATE TABLE `wd_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目分组，方便以后用',
  `pic` varchar(500) DEFAULT NULL COMMENT '缩略图',
  `author` varchar(250) NOT NULL COMMENT '作者',
  `title` varchar(255) NOT NULL COMMENT 'utf8',
  `keywords` varchar(500) NOT NULL COMMENT '关键词',
  `description` varchar(500) NOT NULL COMMENT '新闻描述',
  `content` mediumtext NOT NULL COMMENT '新闻内容',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击次数',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `atime` int(14) unsigned NOT NULL COMMENT '创建时间',
  `ctime` int(14) unsigned zerofill NOT NULL COMMENT '修改时间',
  `origin` varchar(500) NOT NULL COMMENT '来源',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_news
-- ----------------------------
INSERT INTO `wd_news` VALUES ('1', '0', '/upload/20150414/552cd8e21e891.jpg', '小编', '周星驰控股公司状告华谊', '周星驰', '本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。', '&lt;p&gt;								&lt;/p&gt;&lt;p&gt;								&lt;/p&gt;&lt;p&gt;								&lt;/p&gt;&lt;p&gt;								&lt;/p&gt;&lt;p&gt;								&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。电影虽然叫座，但周星驰控股的影片制作方和合作拍摄方华谊兄弟传媒公司却在票房分红方面发生争执。周星驰控股公司认为，当初与华谊公司约定一旦票房突破五亿元，便可得到票房分红，至今华谊拖欠其分红8610万元。而华谊公司认为双方并未签署协议，且票房分红基数并非是票房总基数。据悉，此案将于近期在北京市三中院开庭审理。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;原告崴盈公司诉称，该公司是星周星驰的控股公司，2012年制作了电影《西游降魔篇》，并就合作事宜，先后与被告华谊公司签订了《〈除魔传奇〉（暂定名）合作协议书》以及《补充协议一》。由于对影片市场评估较好，周星驰与华谊兄弟公司董事长王忠军口头商定，若电影票房收入超过五亿元，华谊公司可给予崴盈公司票房分红。此后双方就票房分红问题进行商洽，通过邮件往来的形式达成了《补充协议二》。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;崴盈公司表示，截至2013年8月30日，该片实现票房收入12.48亿元。按照约定，崴盈公司不仅应取得收益分成，还应根据《补充协议二》取得票房分红，两者共计人民币1.77亿元。但至今华谊公司尚有8610万元未予支付。崴盈公司多次催款无果后，起诉至北京市三中院，要求判令华谊公司支付收益分配款人民币8610万元。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;被告华谊公司辩称，双方确实签署了《合作协议书》及《补充协议一》。就票房分红问题，双方也曾洽商过《补充协议二》，但由于条件差距较大，该协议最终并未签署，所以《补充协议二》未成立也未生效。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;', '0', '1', '1429177133', '00001429004333', '来自于网络');
INSERT INTO `wd_news` VALUES ('2', '0', '/upload/20150414/552cd8e21e891.jpg', '小编', '周星驰控股公司状告华谊', '周星驰，华谊', '本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。', '&lt;p&gt;								&lt;/p&gt;&lt;p&gt;								&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。电影虽然叫座，但周星驰控股的影片制作方和合作拍摄方华谊兄弟传媒公司却在票房分红方面发生争执。周星驰控股公司认为，当初与华谊公司约定一旦票房突破五亿元，便可得到票房分红，至今华谊拖欠其分红8610万元。而华谊公司认为双方并未签署协议，且票房分红基数并非是票房总基数。据悉，此案将于近期在北京市三中院开庭审理。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;原告崴盈公司诉称，该公司是星周星驰的控股公司，2012年制作了电影《西游降魔篇》，并就合作事宜，先后与被告华谊公司签订了《〈除魔传奇〉（暂定名）合作协议书》以及《补充协议一》。由于对影片市场评估较好，周星驰与华谊兄弟公司董事长王忠军口头商定，若电影票房收入超过五亿元，华谊公司可给予崴盈公司票房分红。此后双方就票房分红问题进行商洽，通过邮件往来的形式达成了《补充协议二》。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;崴盈公司表示，截至2013年8月30日，该片实现票房收入12.48亿元。按照约定，崴盈公司不仅应取得收益分成，还应根据《补充协议二》取得票房分红，两者共计人民币1.77亿元。但至今华谊公司尚有8610万元未予支付。崴盈公司多次催款无果后，起诉至北京市三中院，要求判令华谊公司支付收益分配款人民币8610万元。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;被告华谊公司辩称，双方确实签署了《合作协议书》及《补充协议一》。就票房分红问题，双方也曾洽商过《补充协议二》，但由于条件差距较大，该协议最终并未签署，所以《补充协议二》未成立也未生效。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;', '0', '1', '1428976437', '00001429062837', '国际电梯网');
INSERT INTO `wd_news` VALUES ('3', '0', '/upload/20150414/552cd8e21e891.jpg', '小编11', '周星驰控股公司状告华谊', '周星驰', '本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。', '&lt;p&gt;								&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。电影虽然叫座，但周星驰控股的影片制作方和合作拍摄方华谊兄弟传媒公司却在票房分红方面发生争执。周星驰控股公司认为，当初与华谊公司约定一旦票房突破五亿元，便可得到票房分红，至今华谊拖欠其分红8610万元。而华谊公司认为双方并未签署协议，且票房分红基数并非是票房总基数。据悉，此案将于近期在北京市三中院开庭审理。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;原告崴盈公司诉称，该公司是星周星驰的控股公司，2012年制作了电影《西游降魔篇》，并就合作事宜，先后与被告华谊公司签订了《〈除魔传奇〉（暂定名）合作协议书》以及《补充协议一》。由于对影片市场评估较好，周星驰与华谊兄弟公司董事长王忠军口头商定，若电影票房收入超过五亿元，华谊公司可给予崴盈公司票房分红。此后双方就票房分红问题进行商洽，通过邮件往来的形式达成了《补充协议二》。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;崴盈公司表示，截至2013年8月30日，该片实现票房收入12.48亿元。按照约定，崴盈公司不仅应取得收益分成，还应根据《补充协议二》取得票房分红，两者共计人民币1.77亿元。但至今华谊公司尚有8610万元未予支付。崴盈公司多次催款无果后，起诉至北京市三中院，要求判令华谊公司支付收益分配款人民币8610万元。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;被告华谊公司辩称，双方确实签署了《合作协议书》及《补充协议一》。就票房分红问题，双方也曾洽商过《补充协议二》，但由于条件差距较大，该协议最终并未签署，所以《补充协议二》未成立也未生效。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;', '0', '0', '1429003455', '00001429003455', '');
INSERT INTO `wd_news` VALUES ('4', '0', '/upload/20150414/552cd8e21e891.jpg', '小编', '周星驰控股公司状告华谊', '周星驰', '本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。', '&lt;p&gt;								&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;本报讯 （记者 杨琳）2013年2月，周星驰导演的魔幻喜剧电影《西游降魔篇》在国内上映，创下当时多项票房纪录。电影虽然叫座，但周星驰控股的影片制作方和合作拍摄方华谊兄弟传媒公司却在票房分红方面发生争执。周星驰控股公司认为，当初与华谊公司约定一旦票房突破五亿元，便可得到票房分红，至今华谊拖欠其分红8610万元。而华谊公司认为双方并未签署协议，且票房分红基数并非是票房总基数。据悉，此案将于近期在北京市三中院开庭审理。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;原告崴盈公司诉称，该公司是星周星驰的控股公司，2012年制作了电影《西游降魔篇》，并就合作事宜，先后与被告华谊公司签订了《〈除魔传奇〉（暂定名）合作协议书》以及《补充协议一》。由于对影片市场评估较好，周星驰与华谊兄弟公司董事长王忠军口头商定，若电影票房收入超过五亿元，华谊公司可给予崴盈公司票房分红。此后双方就票房分红问题进行商洽，通过邮件往来的形式达成了《补充协议二》。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;崴盈公司表示，截至2013年8月30日，该片实现票房收入12.48亿元。按照约定，崴盈公司不仅应取得收益分成，还应根据《补充协议二》取得票房分红，两者共计人民币1.77亿元。但至今华谊公司尚有8610万元未予支付。崴盈公司多次催款无果后，起诉至北京市三中院，要求判令华谊公司支付收益分配款人民币8610万元。&lt;/p&gt;&lt;p style=&quot;padding: 0px; margin-top: 26px; margin-bottom: 26px; text-indent: 2em; color: rgb(37, 37, 37); font-family: 宋体, sans-serif; line-height: 28px; text-align: justify; white-space: normal;&quot;&gt;被告华谊公司辩称，双方确实签署了《合作协议书》及《补充协议一》。就票房分红问题，双方也曾洽商过《补充协议二》，但由于条件差距较大，该协议最终并未签署，所以《补充协议二》未成立也未生效。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;							&lt;/p&gt;', '0', '0', '1429003462', '00001429003462', '');

-- ----------------------------
-- Table structure for wd_user
-- ----------------------------
DROP TABLE IF EXISTS `wd_user`;
CREATE TABLE `wd_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(11) unsigned NOT NULL COMMENT '用户id',
  `username` varchar(120) NOT NULL COMMENT '用户名',
  `password` varchar(120) NOT NULL COMMENT '密码',
  `email` varchar(120) NOT NULL COMMENT '邮箱',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `address` varchar(250) DEFAULT NULL COMMENT '地址',
  `birthday` varchar(250) DEFAULT NULL COMMENT '生日',
  `loginip` varchar(20) NOT NULL COMMENT '登录ip',
  `lastip` varchar(20) DEFAULT NULL COMMENT '最后登录ip',
  `logintime` varchar(32) NOT NULL COMMENT '登录时间',
  `lasttime` varchar(32) DEFAULT NULL COMMENT '最后登录时间',
  `is_admin` tinyint(3) unsigned NOT NULL COMMENT '是否是管理员',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wd_user
-- ----------------------------
INSERT INTO `wd_user` VALUES ('1', '1', 'widuu', '61182c177cf1c540997074035e008dd5', 'admin@widuu.com', '河北', '廊坊', '河北微度大厦', '111', '127.0.0.1', '127.0.0.1', '1429320669', '1429320669', '1', '1');
