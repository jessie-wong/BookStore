-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `feedid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `msg` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`feedid`),
  KEY `feedback_user_name_idx` (`name`),
  CONSTRAINT `feedback_user_name` FOREIGN KEY (`name`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (56,'壹个柚子','大家好','欢迎来到BookStores','2018-05-7 09:53:38'),(57,'asd','很好','这个书店不错','2018-05-7 09:58:47'),(58,'壹个柚子','测试','测试','2018-05-8 15:52:53'),(59,'asd','测试','测试','2018-05-8 16:54:29');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods` (
  `goodsid` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `goodsname` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `breifintroduction` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `detailintroduction` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `goodsprice` float DEFAULT NULL,
  `photo` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('1-1','c++prime中文版','久负盛名，无可替代的经典著作，本书销量超过450000次，是一本学习c++的入门书籍。','本书适合于刚入门的新手的教材书籍，对于更高层次的程序员来说，可以作为一本优秀的工具书使用。',37,'01.jpg','编程语言'),('1-2','Struts2权威指南','《Struts2权威指南:基于WebWork核心的MVC开发》介绍的Struts 2已经完全超出了Struts 1框架原有的高度，Struts 2建立在Struts 1和WebWork两个框架整合的基础之上，因此提供了更多优秀的机制。','虽然Struts 1目前还未被完全淘汰，但Struts 1所表现出来的缺陷已经处处制约着开发者的手脚。在2007年上半年，Struts 2终于在众多开发者期盼中，发布了第一个稳定版本：2.0.6。为了让众多Struts学习、工作者快速掌握Struts 2的开发，笔者精心编著了本书。本书按Struts 2的架构体系，细致地介绍了Struts 2各个知识点。在介绍过程中，笔者依照读者的学习规律，首先介绍基本概念和基本操作，然后对内容进行深入讲解。笔者在介绍Struts 2框架时，既照顾到Struts 2初学者的能力，对每个知识点都给出简单的快速上手的示例；同时也考虑到开发者在日后开发中可能遇到的问题，详细讲解了每个知识点的各种用法，本书覆盖到Struts 2近80%的API。因此，本书完全可以作为Struts 2框架的权威手册，以供开发者在实际开发过程中参考。\n本书最后配备了几个常用场景的实例，通过实例演示了Struts 2框架的用法，希望读者可以通过这几个实例，触类旁通，解决日常开发中的问题。',40,'08.jpg','编程语言'),('1-3','Java编程思想','本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。','从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言以及Java语言的绝佳教材和参考书。',37,'03.jpg','编程语言'),('2-1','看见','《看见》是知名记者和主持人柴静讲述央视十年历程的自传性作品，既是柴静个人的成长告白书，某种程度上亦可视作中国社会十年变迁的备忘录。','十年前她被选择成为国家电视台新闻主播，却因毫无经验而遭遇挫败，非典时期成为现场记者后，现实生活犬牙交错的切肤之感，让她一点一滴脱离外在与自我的束缚，对生活与人性有了更为宽广与深厚的理解。十年之间，非典、汶川地震、两会报道、北京奥运……在每个重大事件现场，几乎都能发现柴静的身影，而如华南虎照、征地等刚性的调查报道她也多有制作。在书中，她记录下淹没在宏大叙事中的动人细节，为时代留下私人的注脚。一如既往，柴静看见并记录下新闻中给她留下强烈生命印象的个人，每个人都深嵌在世界之中，没有人可以只是一个旁观者，他人经受的，我必经受。书中记录下的人与事，是他们的生活，也是你和我的生活。',39.8,'18.jpg','文学'),('2-2','世界因你不同：李开复自传','《李开复自传：世界因你不同》是李开复唯一的一本自传，字里行间，是岁月流逝中沉淀下来的宝贵的人生智慧和职场经验。','捣蛋的“小皇帝”，11岁的“留学生”，奥巴马的大学同学，26岁的副教授，33岁的苹果副总裁，谷歌中国的创始人，李开复有着太多传奇的经历，为了他，两家最大的IT公司对簿公堂。而李开复的每一次人生选择，都是一次成功的自我超越。　　透过这本自传，李开复真诚讲述了他鲜为人知的成长史、风雨兼程的成功史和烛照人生的心灵史，也首次全面披露了他亲历的苹果、微软、谷歌等IT巨头风云变幻的内幕。娓娓道来，字字珠玑。',29.8,'16.jpg','名人传'),('3-1','宏观经济学','曼昆的《宏观经济学》英文版自1992年出版以来，已再版四次，是美国最受欢迎的教科书之一，已翻译成17种文字。','本书是一本典型标准的中级宏观经济学教科书。内容全面准确，深入浅出，涵盖了当代宏观经济学的所有主要领域，准确严谨地介绍了宏观经济学的主要概念和论题，公正地介绍了经济学界达成共识的主要观点和存在的分歧。',60,'19.jpg','教育'),('4-1','诗歌总集','1948年2月5日，智利政府下令逮捕聂鲁达。诗人被迫转入地下，同时开始《漫歌集》的秘密写作，于1949年2月完成，历时一年。','在20世纪的世界诗歌史上，很少看到《漫歌集》这样宏大开阔和浑厚有力的杰作。诗人个人的命运和情感，与整个美洲大陆辉煌的历史和悲惨的命运紧紧地连在一起。这就是瑞典文学院在“授奖词”中的高度概括：“由于他那具有自然力般的诗，复苏了一个大陆的梦幻与命运。”',65,'20.jpg','诗歌'),('5-1','明朝那些事儿（壹）：洪武大帝','《明朝那些事儿》销量过五百万册，为三十年来最畅销之史学读本，多次获得“新浪图书风云榜”最佳图书，位列全国十大畅销书之一，2007—2014年度系列畅销书第一名，该系列作品已被译为日、韩、英等多国文字出版发行.','《明朝那些事儿（第1部）：洪武大帝（新版）》第一部从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎，铲除张士诚。徐达、常遇春等不世名将乘胜逐北破北元。更有明朝最大的谜团——永乐夺位、建文失踪的靖难之役。高潮迭起，欲罢不能！',28.8,'12.jpg','历史'),('5-2','明朝那些事儿（第2部）：万国来朝','《明朝那些事儿》销量过五百万册，为三十年来最畅销之史学读本，多次获得“新浪图书风云榜”最佳图书，位列全国十大畅销书之一，2007—2014年度系列畅销书第一名，该系列作品已被译为日、韩、英等多国文字出版发行.','《明朝那些事儿（第2部）：万国来朝（新版）》内容自永乐夺位的“靖难之役”后开始，先叙述了中国历史上赫赫有名的永乐大帝事迹——挥军北上五征蒙古，派郑和七下西洋，南下讨平安南等等，后来永乐于北伐蒙古归来途中病逝。明朝在经历了比较清明的“仁宣之治”后，开始进入动荡时期。大宦官王振把持朝政胡作非为，导致二十万精兵丧于一旦，幸亏著名忠臣于谦在“土木堡之变”中力挽狂澜，挽救了明帝国，但随即又在两位皇帝争夺皇位的“夺门之变”后被害身亡。',28.8,'13.jpg','历史'),('5-3','明朝那些事儿（叁）：妖孽宫廷','《明朝那些事儿》销量过五百万册，为三十年来最畅销之史学读本，多次获得“新浪图书风云榜”最佳图书，位列全国十大畅销书之一，2007—2014年度系列畅销书第一名，该系列作品已被译为日、韩、英等多国文字出版发行.','《明朝那些事儿》第三册接续上篇，从明英宗朱祁镇成功复辟的“夺门之变”后写起，叙述了忠奸不分的朱祁镇听信谗言，杀害曾救其于危难之际的大功臣于谦，而这也成为他继“土木堡之变”后在历史上留下的又一大污点，而在他病逝后，相继继位的两位皇帝宪宗和孝宗，一个懦弱不堪无所作为，一个心有余而力不足，撂下的这副重担落在了明代三百年中最能闹的一个皇帝——朱厚照身上，宠八虎，建豹房，自封威武大将军，朝廷中充斥着一幕幕荒唐的闹剧，局势更是动荡不安，这时便引起了一位亘古罕有的文武奇才——王守仁，他清剿盗寇，平定叛王，勇斗奸宦，给后人留下了许多近乎神话的不朽传奇——同时，《明朝那些事》中仍然不乏大量描写精彩的权谋之术、战争之术、诡诈之术，相信会一如既往地深深吸引你的眼球。',24.8,'14.jpg','历史'),('5-4','中国大历史','《中国大历史 》中国历史典籍浩如烟海，常使初学者不得其门而入。作者倡导“大历史”（macro-history），主张利用归纳法将现有史料高度压缩，先构成一个简明而前后连贯的纳领，然后在与欧美史比较的基础上加以研究。','本书从技术的角度分析中国历史的进程，着眼于现代型的经济体制如何为传统社会所不容，以及是何契机使其在中国土地上落脚。为什么称为“中国大历史”？中国过去150年内经过人类历史上规模最大的一次革命，从一个闭关自守中世纪的国家蜕变而为一个现代国家，影响到10亿人口的思想信仰、婚姻教育与衣食住行，其情形不容许我们用寻常尺度衡量。',16.5,'17.jpg','历史'),('6-1','史蒂夫·乔布斯传','这本《史蒂夫·乔布斯传（Steve Jobs：A Biography）》于2011年10月24日全球出版，简体中文版同步上市！','《史蒂夫·乔布斯传（Steve Jobs：A Biography）》是这位伟大CEO留给了世人一份最后的礼物，也是一本由他本人以及其家人正式授权的传记。《史蒂夫·乔布斯传》由著名作家沃尔特·艾萨克森（Walter Isaacson）在过去两年与乔布斯面对面交流40多次、对乔布斯100多位家庭成员、朋友、竞争对手和同事的采访的基础上撰写而成。艾萨克森是原《时代周刊》主编、CNN董事长兼首席执行官。撰写过爱因斯坦传记、基辛格传记、富兰克林传记等畅销书籍。',68,'15.jpg','名人传');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newgoods`
--

DROP TABLE IF EXISTS `newgoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newgoods` (
  `goodsid` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newgoods`
--

LOCK TABLES `newgoods` WRITE;
/*!40000 ALTER TABLE `newgoods` DISABLE KEYS */;
INSERT INTO `newgoods` VALUES ('2-1');
/*!40000 ALTER TABLE `newgoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `orderinfo` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `goodsid` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
INSERT INTO `orderinfo` VALUES (22,'1111','1-1',2),(23,'1111','1-2',1),(24,'1111','3-1',2);
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotiongoods`
--

DROP TABLE IF EXISTS `promotiongoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotiongoods` (
  `goodsid` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`goodsid`),
  KEY `promotion_goods_id_idx` (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotiongoods`
--

LOCK TABLES `promotiongoods` WRITE;
/*!40000 ALTER TABLE `promotiongoods` DISABLE KEYS */;
INSERT INTO `promotiongoods` VALUES ('1-2');
/*!40000 ALTER TABLE `promotiongoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `truename` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `usertype` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1111','1111','','','','','user'),('a','111','李','','','南京','user'),('admin','admin','','','','','rooter'),('asd','1234567890','111','111','111','湖南','user'),('壹个柚子','1234567890','我','123','12344444','123','rooter');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 20:24:42
