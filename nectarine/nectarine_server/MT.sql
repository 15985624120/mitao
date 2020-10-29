SET NAMES UTF8;
DROP DATABASE IF EXISTS MT;
CREATE DATABASE MT CHARSET=UTF8;
USE MT;
/* 摄影师 */
CREATE TABLE mt_fid(
	/* id */fid INT PRIMARY KEY AUTO_INCREMENT,
	/*姓名*/usname VARCHAR(12),
	/* 介绍 */introduce VARCHAR(128) NOT NULL DEFAULT '这个人很渣，什么也没留下',
	/* 昵称 */nickname VARCHAR(32),
	/*所属分店*/ suoshu VARCHAR(28),
	/*预约价格*/ pathe VARCHAR(6),
	/*工作时间*/ shijian VARCHAR(128),
	/* 头像 */portduce VARCHAR(128),
	/* 性别 */sex INT NOT NULL DEFAULT '1',
	/* 擅长方向 */direction VARCHAR(128) NOT NULL DEFAULT '除了帅啥也不擅长'
);
INSERT INTO `mt_fid` VALUES(1,'任金明','中国摄影师协会会员，知名摄影师','小花花','重庆渝北店','8k-9k','9:00-22:00','timg (1).jpg','0','擅长各种风景摄影。');
INSERT INTO `mt_fid` VALUES(2,'张三','中国高级摄影师','如沐春风','大竹林分店','7k-9k','9:00-21:00','timg (2).jpg','0','擅长人像、风景摄影。');
INSERT INTO `mt_fid` VALUES(3,'李四','新生代创新摄影模式','Q小新','菜园坝总店','8k-10k','9:00-21:00','timg (3).jpg','1','擅长人像摄影、数码后期');
INSERT INTO `mt_fid` VALUES(4,'王五','因为热爱，所以专业','小久','洪崖洞一号分店','8k-12k','9:00-22:00','timg (4).jpg','0','擅长旅拍，动态摄影。');
INSERT INTO `mt_fid` VALUES(5,'宋艺','国内高级摄影师','i龄艺','成都总店','7k-10k','9:00-22:00','timg (5).jpg','1','擅长风光静物摄影。');
INSERT INTO `mt_fid` VALUES(6,'李西西','各大明星特约摄影师','西瓜的西','上海第一分店','8.5k-13k','9:00-21:30','timg (6).jpg','0','擅长商业、静态摄影。');
INSERT INTO `mt_fid` VALUES(7,'唐昕','高级摄影师','一昕','上海虹口分店','8k-12k','9:00-21:30','timg (7).jpg','0','擅长特殊摄影。');
INSERT INTO `mt_fid` VALUES(8,'任金明','中国摄影师协会会员，知名摄影师','小花花','重庆渝北店','8k-9k','9:00-22:00','timg (1).jpg','0','擅长各种风景摄影。');
INSERT INTO `mt_fid` VALUES(9,'李四','新生代创新摄影模式','Q小新','菜园坝总店','8k-10k','9:00-21:00','timg (3).jpg','1','擅长人像摄影、数码后期');
INSERT INTO `mt_fid` VALUES(10,'王二','新生代创新摄影模式','Q小新','菜园坝总店','8k-10k','9:00-21:00','timg (3).jpg','1','擅长人像摄影、数码后期');
INSERT INTO `mt_fid` VALUES(11,'樊浩','中国高级摄影师','如沐春风','大竹林分店','7k-9k','9:00-21:00','timg (2).jpg','0','擅长人像、风景摄影。');
INSERT INTO `mt_fid` VALUES(12,'徐瑞君','中国高级摄影师','如沐春风','大竹林分店','7k-9k','9:00-21:00','timg (2).jpg','0','擅长人像、风景摄影。');

/* 商品类型表 */
CREATE TABLE mt_type_id(
	/* id */type_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 类别名称 */type_name VARCHAR(64)
);
INSERT INTO `mt_type_id` VALUES('1','影棚产品');
INSERT INTO `mt_type_id` VALUES('2','风格服饰');
INSERT INTO `mt_type_id` VALUES('3','约拍地点');
INSERT INTO `mt_type_id` VALUES('4','摄影服务');

/* 订单类型 */
CREATE TABLE mt_orty_id(
	/* id */orty_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 订单类型 */order_type VARCHAR(64) NOT NULL
);
INSERT INTO `mt_orty_id` VALUES('1','摄影预约');
INSERT INTO `mt_orty_id` VALUES('2','产品购买');

/* 广告 */
CREATE TABLE mt_kid(
	/* id */kid INT PRIMARY KEY AUTO_INCREMENT,
	/* 广告图片 */picture VARCHAR(128),
	/* 广告商 */advertisers VARCHAR(128) NOT NULL DEFAULT '特仑苏牛奶',
	/* 广告简介 */introduce VARCHAR(128) NOT NULL DEFAULT '不是所有牛奶都是特仑苏',
	/* 广告地址 */address VARCHAR(128)
);
INSERT INTO `mt_kid` VALUES('1','图片.png','中国移动','中国移动免费送卡，月租19元，200G流量，500分钟语音通话。','各地区运营商');
INSERT INTO `mt_kid` VALUES('2','图片.png','拼多多','邀请好友助力，0元免费领电动车，赶快行动吧！','手机下载拼多多APP');

/* 功能分类 */
CREATE TABLE mt_vid(
	/* id */bid INT PRIMARY KEY AUTO_INCREMENT,
	/* 图片 */path1 VARCHAR(128),
	/* 图片 */path2 VARCHAR(128),
	/* 文字 */text VARCHAR(128),
	/*链接*/href VARCHAR(64)
);
INSERT INTO `mt_vid` VALUES(null,'chanpin-1.svg','chanpin-2.svg','摄影预约','/camerama');
INSERT INTO `mt_vid` VALUES(null,'guanyu-1.svg','guanyu-2.svg','摄影产品','/chanp');
INSERT INTO `mt_vid` VALUES(null,'hunsha-1.svg','hunsha-2.svg','婚纱摄影','/style');
INSERT INTO `mt_vid` VALUES(null,'kepu-1.svg','kepu-2.svg','摄影咨询','/index');
INSERT INTO `mt_vid` VALUES(null,'leixing-1.svg','leixing-2.svg','摄影科普','/kepu');
INSERT INTO `mt_vid` VALUES(null,'tehui-1.svg','tehui-2.svg','摄影类型','/style');
INSERT INTO `mt_vid` VALUES(null,'yuyue-1.svg','yuyue-2.svg','摄影特惠','/index');
INSERT INTO `mt_vid` VALUES(null,'zixun-1.svg','zixun-2.svg','关于我们','/index');
/* 小图标 */
CREATE TABLE mt_xiaoid(
	/* id */sid INT PRIMARY KEY AUTO_INCREMENT,
	/* 图片路径 */path VARCHAR(128),
	/* 颜色分类 */color_classify VARCHAR(16)
);
INSERT INTO `mt_xiaoid` VALUES('1','path','color(1)');
INSERT INTO `mt_xiaoid` VALUES('2','path','color(2)');
INSERT INTO `mt_xiaoid` VALUES('3','path','color(3)');
INSERT INTO `mt_xiaoid` VALUES('4','path','color(4)');
INSERT INTO `mt_xiaoid` VALUES('5','path','color(5)');

/* 轮播图 */
CREATE TABLE mt_lid(
	/* id */lid INT PRIMARY KEY AUTO_INCREMENT,
	/* 图片路径 */path VARCHAR(128),
	/* 大图 */big_tu VARCHAR(128),
	/* 中图 */two_tu VARCHAR(128),
	/* 小图 */small_tu VARCHAR(128)
);
INSERT INTO `mt_lid` VALUES('1','path','timg.jpg','timg (3).jpg','timg.jpg');
INSERT INTO `mt_lid` VALUES('2','path','fewrferg.jpg','timg (2).jpg.jpg','fewrferg.jpg');
INSERT INTO `mt_lid` VALUES('3','path','f807ba1705.jpg','fewrferg.jpg','fewrferg.jpg');
INSERT INTO `mt_lid` VALUES('4','path','6b0e640e65.jpg','timg.jpg','6b0e640e65.jpg');
INSERT INTO `mt_lid` VALUES('5','path','6b0e640e65.jpg','15977738191532885.jpg','6b0e640e65.jpg');
INSERT INTO `mt_lid` VALUES('6','path','6b0e640e65.jpg','15977738511531998.jpg','6b0e640e65.jpg');

/* 摄影科普 */
CREATE TABLE mt_hid(
	/* id */hid INT PRIMARY KEY AUTO_INCREMENT,
	/* 标题 */title VARCHAR(32) NOT NULL,
	/* 介绍 */introduce VARCHAR(128) NOT NULL,
	/* 文案 */copy VARCHAR(256) NOT NULL
);
INSERT INTO `mt_hid` VALUES('1','摄影师等级','摄影师分别分为五个等级','初级（国家职业资格五级）,中级（国家职业资格四级）,高级（国家职业资格三级）,技师 （国家职业资格二级）,高级技师（国家职业资格一级）');
INSERT INTO `mt_hid` VALUES('2','著名摄影师','在中国的风景、婚纱、商业等方面比较杰出的摄影师','陈漫，80后杰出女代表，毕业于中央美术学院，专门为明星艺人拍摄照片，时尚大气，闻名摄影界，个性时尚而突出。李东道，人称中国摄影王子，双料摄影师杰出代表，主要以人像摄影为主，时尚大气，专业技术水平极高，在北京，成都，承德创办自己的摄影工作室，获得了数万计粉丝。范华，男1971年出生于广州，现居广州，个人擅长广告摄影，专门为明星以及一线品牌拍摄产品，广告人像及创意广告的专业拍摄。对化妆品、液体、水下摄影等领域的高速摄影有丰富的拍摄经验。');
INSERT INTO `mt_hid` VALUES('3','摄影基本知识第一个','眼神是焦点','一张人像照片最重要的就是人物的特征与神韵，如果无法将人物的特征与神韵展现出来，那么人像照会显得很暗淡。而人的眼睛是心灵之窗，想要展现出人物的神韵，就要抓人的眼睛。这也是很多摄影师强调拍人像要将对焦点对在人物眼睛上的原因。');
INSERT INTO `mt_hid` VALUES('4','摄影基本知识第二个','光线运用','拍人像可以借助不同的光线和景致来扑捉人物的特点，想要利用不同的光线来扑捉人物的特点，那么你就要懂光线、会利用光线。');
INSERT INTO `mt_hid` VALUES('5','摄影基本知识第三个','活用焦段','不同的焦段的镜头拍人像有着不同的效果，具体看你怎么选。一般来说35mm更适合拍全身人像，同时可以将周围的画面拍进去。但是用焦段越广的镜头拍人像，对背景的要求就更高，背景最好是简洁、明了的，不会对人物形成干扰。');
INSERT INTO `mt_hid` VALUES('6','摄影技巧第一个','相机自拍模式','自拍模式可能大家很少去使用这个功能，但是！当你需要将相机架在三脚架上进行长时间曝光时，如果你没有快门线，即使你打开了反光板预升，你按下快门时还是会有机身震动。将相机调成自拍模式，倒计时调为2s，这样就可以很好地解决因为没有快门线而容易造成机身震动这个问题了。');
INSERT INTO `mt_hid` VALUES('7','摄影技巧第二个','闪光灯压光','一般是新手摄影爱好者在拍摄人像时，如果你是在大太阳下拍摄，很容易会出现背景太亮，被摄者曝光不够的情况。在刚拿到相机时不要认为闪光灯是要在光线不够的情况下使用的。在出现上述情况时，如果你的相机有足够快的闪光灯同步速度，你就可以使用闪光灯进行压光了。在使用闪光灯压光时，如果相机性能和你的构图都足够好，则会得到一个整体上更加平衡的曝光效果。');
INSERT INTO `mt_hid` VALUES('8','摄影技巧第三个','使用时间稍长的快门速度','这个可能大家都知道，这种拍摄方法可以使流水和瀑布拉丝，拍摄动感的车流尾灯。这些操作看似容易，其实也得注意参数的选择。一般风光摄影，特别是在白天时，尽量使用低感光度，光圈选择在F8-16。当然快门时间也不宜过长，如果周围有风，画面里的树叶就会糊掉 ；在近距离拍摄瀑布或者夜晚和黎明时，镜头也会在曝光过程中出现水雾。所以使用长时间曝光时，还是要注意周围环境的。');
INSERT INTO `mt_hid` VALUES('9','摄影五字歌','简单易唱，根据字面意思理解即可','摄影学不难，易学用单反，熟读说明书，功能要记全。光圈配快门，曝光要先练，找准中间灰，白加黑就减。小光圈景深，远近都能看，若想虚背景，大光圈景浅。相机须持稳，摄姿要规范，善用三角架，不怕快门慢，快门凝瞬间，慢门显动感。短焦视角广，长焦压空间，望远景深浅，微距景更短。广角易畸变，中焦保还原，装上遮光罩，避免出耀斑。构图有章法，表现莫小看，布景要均衡，摆平地平线。摄影真不难，全靠学和练。');

/* 科普图片 */
CREATE TABLE mt_universal_id(
	/* id */universal_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 科普id */hid INT NOT NULL,
	/* 大图 */big_tu VARCHAR(128),
	/* 中图 */two_tu VARCHAR(128),
	/* 小图 */small_tu VARCHAR(128),
	FOREIGN KEY(hid) REFERENCES mt_hid(hid)
);
INSERT INTO `mt_universal_id` VALUES('1','1','kplg(1).png','kpmd(1).png','kpsm(1).png');
INSERT INTO `mt_universal_id` VALUES('2','2','kplg(2).png','kpmd(2).png','kpsm(2).png');
INSERT INTO `mt_universal_id` VALUES('3','3','kplg(3).png','kpmd(3).png','kpsm(3).png');
INSERT INTO `mt_universal_id` VALUES('4','4','kplg(4).png','kpmd(4).png','kpsm(4).png');
INSERT INTO `mt_universal_id` VALUES('5','5','kplg(5).png','kpmd(5).png','kpsm(5).png');

/* 摄影师摄影作品 */
CREATE TABLE mt_xid(
	/* id */eid INT PRIMARY KEY AUTO_INCREMENT,
	/* 摄影师id */xid INT ,
	/* 大图 */big_tu VARCHAR(128),
	FOREIGN KEY(xid) REFERENCES mt_fid(fid)
);
INSERT INTO `mt_xid` VALUES(null,1,'c_06.png');
INSERT INTO `mt_xid` VALUES(null,1,'c_09.png');       
INSERT INTO `mt_xid` VALUES(null,1,'r_21.png');       
INSERT INTO `mt_xid` VALUES(null,2,'m_11.png');      
INSERT INTO `mt_xid` VALUES(null,2,'m_12.png');      
INSERT INTO `mt_xid` VALUES(null,2,'r_22.png');     
INSERT INTO `mt_xid` VALUES(null,3,'m_13.png');      
INSERT INTO `mt_xid` VALUES(null,3,'r_24.png');      
INSERT INTO `mt_xid` VALUES(null,3,'m_21.png');      
INSERT INTO `mt_xid` VALUES(null,4,'m_22.png');      
INSERT INTO `mt_xid` VALUES(null,4,'r_25.png');     
INSERT INTO `mt_xid` VALUES(null,4,'m_23.png');      
INSERT INTO `mt_xid` VALUES(null,5,'m_24.png');      
INSERT INTO `mt_xid` VALUES(null,5,'shutu(1).jpg');      
INSERT INTO `mt_xid` VALUES(null,5,'r_01.png');      
INSERT INTO `mt_xid` VALUES(null,6,'r_02.png');
INSERT INTO `mt_xid` VALUES(null,6,'shutu(2).jpg');
INSERT INTO `mt_xid` VALUES(null,6,'r_03.png');
INSERT INTO `mt_xid` VALUES(null,7,'r_04.png');
INSERT INTO `mt_xid` VALUES(null,7,'shutu(3).jpg');
INSERT INTO `mt_xid` VALUES(null,7,'r_05.png');
INSERT INTO `mt_xid` VALUES(null,8,'r_06.png');
INSERT INTO `mt_xid` VALUES(null,8,'shutu(4).jpg');
INSERT INTO `mt_xid` VALUES(null,8,'r_14.png');
INSERT INTO `mt_xid` VALUES(null,9,'r_15.png');
INSERT INTO `mt_xid` VALUES(null,9,'shutu(5).jpg');
INSERT INTO `mt_xid` VALUES(null,9,'r_16.png');
INSERT INTO `mt_xid` VALUES(null,10,'touxiang(2).jpg');
INSERT INTO `mt_xid` VALUES(null,10,'touxiang(1).jpg');
INSERT INTO `mt_xid` VALUES(null,10,'shutu(8).jpg');
INSERT INTO `mt_xid` VALUES(null,11,'touxiang(6).jpg');
INSERT INTO `mt_xid` VALUES(null,11,'touxiang(5).jpg');
INSERT INTO `mt_xid` VALUES(null,11,'touxiang(4).jpg');
INSERT INTO `mt_xid` VALUES(null,12,'touxiang(3).jpg');
INSERT INTO `mt_xid` VALUES(null,12,'touxiang(2).jpg');
INSERT INTO `mt_xid` VALUES(null,12,'r_25.png');
/* 商品图片 */
CREATE TABLE mt_did(
	/* id */did INT PRIMARY KEY AUTO_INCREMENT,
	/* 小图 */small_tu VARCHAR(128)
);
-- 中图
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'0c0313e70055c9fb.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');
INSERT INTO `mt_did` VALUES(null,"{img1:'fe74d65526e0032a.jpg',img2:'cf4ca2ebbec2289e.jpg',img3:'8056ddd42a026e09.jpg'}",'551121b4Nac8e391e.jpg','a307a5f13ec2418f.jpg','fe74d65526e0032a.jpg');


/* 商品 */
CREATE TABLE mt_cid(
	/* id */cid INT PRIMARY KEY AUTO_INCREMENT,
	/* 类型id */ type_id INT NOT NULL,
	/* 商品名 */trade_name VARCHAR(32) NOT NULL DEFAULT '蜜桃相机',
	/* 简介 */introduce VARCHAR(128) NOT NULL DEFAULT '首发数码新品',
	/* 商品详情 */details VARCHAR(256) NOT NULL DEFAULT '首发数码新品',
	/* 商品价格 */price INT NOT NULL DEFAULT '3999',
	/*产品所录图*/img VARCHAR(120),
	/* 商品库存数量 */qty VARCHAR(32),
	/* 商品规格/颜色 */specification VARCHAR(16) NOT NULL DEFAULT '黑色',
	/* 商品详细说明 */goods_details VARCHAR(256) NOT NULL DEFAULT '首发数码新品',
	/* 所属分类 */classification VARCHAR(32) NOT NULL DEFAULT '数码产品',
	/* 上架时间 */shelves_time VARCHAR(64) ,
	/* 已售出数量 */sold_number VARCHAR(64),
	/* 是否促销 */preferential BOOLEAN NOT NULL DEFAULT '0',
	FOREIGN KEY(type_id) REFERENCES mt_type_id(type_id)
	-- FOREIGN KEY(cid) REFERENCES mt_did(did)
);
-- 1号商铺
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'视频直播补光灯','LED常亮太阳灯 人像儿童产品摄影棚拍摄拍照灯',850,'0c0313e70055c9fb.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'EF150LED摄影灯','网络直播视频摄像补光灯人像服装儿童网销产品直播灯拍照灯摄影棚套装',2830,'5a139300N9e202e75.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'JB-60*130小型拍摄台','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',188	,'551121b4Nac8e391e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',680,'716835888db83984.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'神牛DP600IISK400W二代','摄影灯套装影棚人像婚纱摄影补光灯产品拍摄影楼闪光灯套装 DP600W+400WII三灯套装',2880,'ede1708c5ea5d0ea.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'金贝SPARKII400W二代','金贝SPARKII400W二代摄影棚套装摄影灯影棚器材服装静物摄影拍摄补光灯婚纱拍照影室闪光灯 A3引闪器',999	,'5bf79e16N98d97d39.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'视频直播补光灯','神牛SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',1258,'199af3b1e32fb976.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',980	,'10702efa9011e8a6.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'金贝SPARKII400W二代','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',1200,'328258f93fb73d15.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'25cm产品拍摄转盘摄影台电动旋转拍照桌子',	 '25cm产品拍摄转盘摄影台电动旋转拍照桌子摄影台自动电动转盘小型拍摄旋转台展示台360度 25cm产品拍摄转盘',	158	,'06739aa6c4f35061.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'PYNSSEU摄影灯补光灯',	'PYNSSEU摄影灯补光灯长形手持直播室内常亮专业打光灯人像产品柔光拍摄灯美颜美妆视频led小型灯光 60cm长形灯',	328	,'fe74d65526e0032a.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'柔光纸支架硫酸纸摄影牛油纸支架',	'柔光纸支架硫酸纸摄影牛油纸支架背景架证件照拍摄静物背景布架子可调柔光布T型架产品摄影配件拍照道具 支架套装+1.2*1米柔光纸+横杆（送2夹子） 官方标配',	88	,'a3fb0f6bf95c21e2.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'LED小型 摄影棚 78cm柔光',	'LED小型 摄影棚 78cm柔光箱手机产品拍照简易静物摄影灯箱 2根灯条',	318	,'a307a5f13ec2418f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'DPEII400影室闪光灯摄影灯',	'金贝（JINBEI）DPEII400影室闪光灯摄影灯 摄影棚补光灯 服装人像产品拍摄拍照灯',	930	,'00d7ba5b2b82fd8f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'春影CY 摄影棚led小型高清静',	'春影CY 摄影棚led小型高清静物产品拍摄补光拍照柔光箱折叠 60CM',	259	,'0bd0af658717d95e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光',	'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光灯人像服装拍摄补光灯产品静物拍照灯 TR-V6发射器',	150	,'c56dd9766f337ee8.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'nanlite南光Forza 60W柔光箱',	'nanlite南光Forza 60W柔光箱柔光罩摄影灯附件便携 柔光箱+蛋格',	460	,'2e61ae95ed8bd598.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,1,'春影（CY）LED摄影灯',	'春影（CY）LED摄影灯 直播专业补光灯打光 柔光箱 静物产品冷暖可调中小型摄影棚套装 双色调光三灯',	629	,'4cfe825efd23e008.jpg');
-- 2号商品
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'25cm产品拍摄转盘摄影台电动旋转拍照桌子',	 '25cm产品拍摄转盘摄影台电动旋转拍照桌子摄影台自动电动转盘小型拍摄旋转台展示台360度 25cm产品拍摄转盘',	158	,'06739aa6c4f35061.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'PYNSSEU摄影灯补光灯',	'PYNSSEU摄影灯补光灯长形手持直播室内常亮专业打光灯人像产品柔光拍摄灯美颜美妆视频led小型灯光 60cm长形灯',	328	,'fe74d65526e0032a.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'柔光纸支架硫酸纸摄影牛油纸支架',	'柔光纸支架硫酸纸摄影牛油纸支架背景架证件照拍摄静物背景布架子可调柔光布T型架产品摄影配件拍照道具 支架套装+1.2*1米柔光纸+横杆（送2夹子） 官方标配',	88	,'a3fb0f6bf95c21e2.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'LED小型 摄影棚 78cm柔光',	'LED小型 摄影棚 78cm柔光箱手机产品拍照简易静物摄影灯箱 2根灯条',	318	,'a307a5f13ec2418f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'DPEII400影室闪光灯摄影灯',	'金贝（JINBEI）DPEII400影室闪光灯摄影灯 摄影棚补光灯 服装人像产品拍摄拍照灯',	930	,'00d7ba5b2b82fd8f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'春影CY 摄影棚led小型高清静',	'春影CY 摄影棚led小型高清静物产品拍摄补光拍照柔光箱折叠 60CM',	259	,'0bd0af658717d95e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光',	'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光灯人像服装拍摄补光灯产品静物拍照灯 TR-V6发射器',	150	,'c56dd9766f337ee8.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'nanlite南光Forza 60W柔光箱',	'nanlite南光Forza 60W柔光箱柔光罩摄影灯附件便携 柔光箱+蛋格',	460	,'2e61ae95ed8bd598.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'春影（CY）LED摄影灯',	'春影（CY）LED摄影灯 直播专业补光灯打光 柔光箱 静物产品冷暖可调中小型摄影棚套装 双色调光三灯',	629	,'4cfe825efd23e008.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'视频直播补光灯','LED常亮太阳灯 人像儿童产品摄影棚拍摄拍照灯',850,'0c0313e70055c9fb.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'EF150LED摄影灯','网络直播视频摄像补光灯人像服装儿童网销产品直播灯拍照灯摄影棚套装',2830,'5a139300N9e202e75.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'JB-60*130小型拍摄台','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',188	,'551121b4Nac8e391e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',680,'716835888db83984.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'神牛DP600IISK400W二代','摄影灯套装影棚人像婚纱摄影补光灯产品拍摄影楼闪光灯套装 DP600W+400WII三灯套装',2880,'ede1708c5ea5d0ea.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'金贝SPARKII400W二代','金贝SPARKII400W二代摄影棚套装摄影灯影棚器材服装静物摄影拍摄补光灯婚纱拍照影室闪光灯 A3引闪器',999	,'5bf79e16N98d97d39.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'视频直播补光灯','神牛SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',1258,'199af3b1e32fb976.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',980	,'10702efa9011e8a6.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,2,'金贝SPARKII400W二代','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',1200,'328258f93fb73d15.jpg');

-- 3号
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'DPEII400影室闪光灯摄影灯',	'金贝（JINBEI）DPEII400影室闪光灯摄影灯 摄影棚补光灯 服装人像产品拍摄拍照灯',	930	,'00d7ba5b2b82fd8f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'春影CY 摄影棚led小型高清静',	'春影CY 摄影棚led小型高清静物产品拍摄补光拍照柔光箱折叠 60CM',	259	,'0bd0af658717d95e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光',	'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光灯人像服装拍摄补光灯产品静物拍照灯 TR-V6发射器',	150	,'c56dd9766f337ee8.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'nanlite南光Forza 60W柔光箱',	'nanlite南光Forza 60W柔光箱柔光罩摄影灯附件便携 柔光箱+蛋格',	460	,'2e61ae95ed8bd598.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'春影（CY）LED摄影灯',	'春影（CY）LED摄影灯 直播专业补光灯打光 柔光箱 静物产品冷暖可调中小型摄影棚套装 双色调光三灯',	629	,'4cfe825efd23e008.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'金贝SPARKII400W二代','金贝SPARKII400W二代摄影棚套装摄影灯影棚器材服装静物摄影拍摄补光灯婚纱拍照影室闪光灯 A3引闪器',999	,'5bf79e16N98d97d39.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'视频直播补光灯','神牛SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',1258,'199af3b1e32fb976.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',980	,'10702efa9011e8a6.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'金贝SPARKII400W二代','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',1200,'328258f93fb73d15.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'25cm产品拍摄转盘摄影台电动旋转拍照桌子',	 '25cm产品拍摄转盘摄影台电动旋转拍照桌子摄影台自动电动转盘小型拍摄旋转台展示台360度 25cm产品拍摄转盘',	158	,'06739aa6c4f35061.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'PYNSSEU摄影灯补光灯',	'PYNSSEU摄影灯补光灯长形手持直播室内常亮专业打光灯人像产品柔光拍摄灯美颜美妆视频led小型灯光 60cm长形灯',	328	,'fe74d65526e0032a.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'柔光纸支架硫酸纸摄影牛油纸支架',	'柔光纸支架硫酸纸摄影牛油纸支架背景架证件照拍摄静物背景布架子可调柔光布T型架产品摄影配件拍照道具 支架套装+1.2*1米柔光纸+横杆（送2夹子） 官方标配',	88	,'a3fb0f6bf95c21e2.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'LED小型 摄影棚 78cm柔光',	'LED小型 摄影棚 78cm柔光箱手机产品拍照简易静物摄影灯箱 2根灯条',	318	,'a307a5f13ec2418f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'DPEII400影室闪光灯摄影灯',	'金贝（JINBEI）DPEII400影室闪光灯摄影灯 摄影棚补光灯 服装人像产品拍摄拍照灯',	930	,'00d7ba5b2b82fd8f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'春影CY 摄影棚led小型高清静',	'春影CY 摄影棚led小型高清静物产品拍摄补光拍照柔光箱折叠 60CM',	259	,'0bd0af658717d95e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光',	'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光灯人像服装拍摄补光灯产品静物拍照灯 TR-V6发射器',	150	,'c56dd9766f337ee8.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'nanlite南光Forza 60W柔光箱',	'nanlite南光Forza 60W柔光箱柔光罩摄影灯附件便携 柔光箱+蛋格',	460	,'2e61ae95ed8bd598.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,3,'春影（CY）LED摄影灯',	'春影（CY）LED摄影灯 直播专业补光灯打光 柔光箱 静物产品冷暖可调中小型摄影棚套装 双色调光三灯',	629	,'4cfe825efd23e008.jpg');

-- 4号
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'DPEII400影室闪光灯摄影灯',	'金贝（JINBEI）DPEII400影室闪光灯摄影灯 摄影棚补光灯 服装人像产品拍摄拍照灯',	930	,'00d7ba5b2b82fd8f.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'春影CY 摄影棚led小型高清静',	'春影CY 摄影棚led小型高清静物产品拍摄补光拍照柔光箱折叠 60CM',	259	,'0bd0af658717d95e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光',	'金贝（JINBEI）SPARK400D摄影灯摄影棚闪光灯人像服装拍摄补光灯产品静物拍照灯 TR-V6发射器',	150	,'c56dd9766f337ee8.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'nanlite南光Forza 60W柔光箱',	'nanlite南光Forza 60W柔光箱柔光罩摄影灯附件便携 柔光箱+蛋格',	460	,'2e61ae95ed8bd598.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'春影（CY）LED摄影灯',	'春影（CY）LED摄影灯 直播专业补光灯打光 柔光箱 静物产品冷暖可调中小型摄影棚套装 双色调光三灯',	629	,'4cfe825efd23e008.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'视频直播补光灯','LED常亮太阳灯 人像儿童产品摄影棚拍摄拍照灯',850,'0c0313e70055c9fb.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'EF150LED摄影灯','网络直播视频摄像补光灯人像服装儿童网销产品直播灯拍照灯摄影棚套装',2830,'5a139300N9e202e75.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'JB-60*130小型拍摄台','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',188	,'551121b4Nac8e391e.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',680,'716835888db83984.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'神牛DP600IISK400W二代','摄影灯套装影棚人像婚纱摄影补光灯产品拍摄影楼闪光灯套装 DP600W+400WII三灯套装',2880,'ede1708c5ea5d0ea.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'金贝SPARKII400W二代','金贝SPARKII400W二代摄影棚套装摄影灯影棚器材服装静物摄影拍摄补光灯婚纱拍照影室闪光灯 A3引闪器',999	,'5bf79e16N98d97d39.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',680,'716835888db83984.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'神牛DP600IISK400W二代','摄影灯套装影棚人像婚纱摄影补光灯产品拍摄影楼闪光灯套装 DP600W+400WII三灯套装',2880,'ede1708c5ea5d0ea.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'金贝SPARKII400W二代','金贝SPARKII400W二代摄影棚套装摄影灯影棚器材服装静物摄影拍摄补光灯婚纱拍照影室闪光灯 A3引闪器',999	,'5bf79e16N98d97d39.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'视频直播补光灯','神牛SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',1258,'199af3b1e32fb976.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'神牛 SK400WII二代','神牛 SK400WII二代影视摄影灯电商产品广告拍摄闪光灯套装影棚人像产品拍摄补光灯 SK400II 标配',980	,'10702efa9011e8a6.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'金贝SPARKII400W二代','JB-60*130小型拍摄台摄影棚道具产品拍摄静物台',1200,'328258f93fb73d15.jpg');
INSERT INTO mt_cid(cid,type_id,trade_name,introduce,price,img) VALUES(null,4,'25cm产品拍摄转盘摄影台电动旋转拍照桌子',	 '25cm产品拍摄转盘摄影台电动旋转拍照桌子摄影台自动电动转盘小型拍摄旋转台展示台360度 25cm产品拍摄转盘',	158	,'06739aa6c4f35061.jpg');

/* 收藏 */
CREATE TABLE mt_coll_id(
	/* id */coll_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 商品id */cid INT NOT NULL,
	FOREIGN KEY(cid) REFERENCES mt_cid(cid)
);
INSERT INTO `mt_coll_id` VALUES('1','2');
INSERT INTO `mt_coll_id` VALUES('2','3');
INSERT INTO `mt_coll_id` VALUES('3','5');

/* 搜索 */
CREATE TABLE mt_search_id(
	/* id */search_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 摄影师id */fid INT NOT NULL,
	/* 科普id */hid INT NOT NULL,
	/* 商品id */cid INT NOT NULL,
	-- 摄影师
			seyins VARCHAR(128),
	-- 摄影风格 seyinfg VARCHAR(128),
	-- 摄影产品 sheychanp VARCHAR(128),
	FOREIGN KEY(fid) REFERENCES mt_fid(fid),
	FOREIGN KEY(hid) REFERENCES mt_hid(hid),
	FOREIGN KEY(cid) REFERENCES mt_cid(cid)
);
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'摄影产品');
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'摄影相机');
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'摄影道具');
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'婚纱摄影');
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'人像摄影');
INSERT INTO `mt_search_id` VALUES(NULL,1,1,1,'摄影科普');
-- INSERT INTO `mt_search_id` VALUES('2','1','6','2');
-- INSERT INTO `mt_search_id` VALUES('3','4','3','3');
-- INSERT INTO `mt_search_id` VALUES('4','3','5','5');
-- INSERT INTO `mt_search_id` VALUES('5','5','2','1');

/* 门店地址 */
CREATE TABLE mt_stores_id(
	/* id */stores_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 摄影师id */fid INT NOT NULL,
	/* 门店名称 */stores_name VARCHAR(64),
	/* 门店经经度 */stores_dimension VARCHAR(128),
	/* 门店经纬度 */stores_weidu VARCHAR(128),
	FOREIGN KEY(fid) REFERENCES mt_fid(fid)
);
INSERT INTO `mt_stores_id` VALUES(null,'1','蜜桃摄影','106.472296','29.632273');


/* 门店图片 */
CREATE TABLE mt_sop_id(
	/* id */sop_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 门店地址id */stores_id INT NOT NULL,
	/* 大图 */big_tu VARCHAR(128),
	/* 中图 */two_tu VARCHAR(128),
	/* 小图 */small_tu VARCHAR(128),
	FOREIGN KEY(stores_id) REFERENCES mt_stores_id(stores_id)
);
-- INSERT INTO `mt_sop_id` VALUES('1','1','mdlg(1).png','mdmd(1).png','mdsm(1).png');
-- INSERT INTO `mt_sop_id` VALUES('2','2','mdlg(2).png','mdmd(2).png','mdsm(2).png');
-- INSERT INTO `mt_sop_id` VALUES('3','3','mdlg(3).png','mdmd(3).png','mdsm(3).png');
-- INSERT INTO `mt_sop_id` VALUES('4','4','mdlg(4).png','mdmd(4).png','mdsm(4).png');
-- INSERT INTO `mt_sop_id` VALUES('5','5','mdlg(5).png','mdmd(5).png','mdsm(5).png');

/* 用户 */
CREATE TABLE mt_aid(
	/* id */aid INT PRIMARY KEY AUTO_INCREMENT,
	/* 关注用户数量 */focus_number VARCHAR(64) NOT NULL DEFAULT '0',
	/* 粉丝数量 */fans_number VARCHAR(64) NOT NULL DEFAULT '0', 
	/* 收藏数量 */collection_number VARCHAR(64) NOT NULL DEFAULT '0',
	/* 喜欢数量 */like_number VARCHAR(64) NOT NULL DEFAULT '0',
	/* 动态数量 */dynamic_number VARCHAR(64) NOT NULL DEFAULT '0',
	/* 头像 */portrait VARCHAR(128) NOT NULL DEFAULT '用户:',
	/* 账户 */account VARCHAR(32),
	/* 密码 */pwd VARCHAR(64),
	/* 昵称 */nickname VARCHAR(64) NOT NULL DEFAULT '用户:',
	/* 性别 */sex VARCHAR(16) NOT NULL DEFAULT '1',
	/* 手机号码 */phone VARCHAR(16),
	/* 邮箱 */email VARCHAR(64),
	/* 风格 */style VARCHAR(16) NOT NULL DEFAULT '1'
);

INSERT INTO `mt_aid` VALUES('1','0','0','0','0','0','touxinag(1).png','011111111','aaaaaaaaa','叶良神','0','13002349805','567291245@qq.com','0');
INSERT INTO `mt_aid` VALUES('2','0','0','0','0','0','touxinag(1).png','011111111','aaaaaaaaa','叶良神','0','13002349805','567291245@qq.com','0');
INSERT INTO `mt_aid` VALUES('3','0','0','0','0','0','touxiang(2).png','022222222','bbbbbbbbb','小坤坤','0','18306352801','720579492@qq.com','1');

/* 关注 */
CREATE TABLE mt_foc_id(
	/* id */foc_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 摄影师id */fid INT NOT NULL,
	FOREIGN KEY(aid) REFERENCES mt_aid(aid),
	FOREIGN KEY(fid) REFERENCES mt_fid(fid)
);


/* 粉丝 */
CREATE TABLE mt_fa_id(
	/* id */fa_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 摄影师id */fid INT NOT NULL,
	FOREIGN KEY(aid) REFERENCES mt_aid(aid),
	FOREIGN KEY(fid) REFERENCES mt_fid(fid)
);

/* 动态图片 */
CREATE TABLE mt_dymc_id(
	/* id */dymc_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 图片路径 */picture_path VARCHAR(128),
	/* 大图 */big_tu VARCHAR(128),
	/* 中图 */two_tu VARCHAR(128),
	/* 小图 */small_tu VARCHAR(128)
);
INSERT INTO `mt_dymc_id` VALUES('1','path','dtlg(1).png','dtmd(1).png','dtsm(1).png');
INSERT INTO `mt_dymc_id` VALUES('2','path','dtlg(2).png','dtmd(2).png','dtsm(2).png');
INSERT INTO `mt_dymc_id` VALUES('3','path','dtlg(3).png','dtmd(3).png','dtsm(3).png');
INSERT INTO `mt_dymc_id` VALUES('4','path','dtlg(4).png','dtmd(4).png','dtsm(4).png');
INSERT INTO `mt_dymc_id` VALUES('5','path','dtlg(5).png','dtmd(5).png','dtsm(5).png');
INSERT INTO `mt_dymc_id` VALUES('6','path','dtlg(6).png','dtmd(6).png','dtsm(6).png');

/* 动态 */
CREATE TABLE mt_dy_id(
	/* id */dy_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 动态图片id */dyme_id INT NOT NULL,
	/* 动态标题内容 */dynamic_content VARCHAR(32) NOT NULL DEFAULT '温柔少女，温婉可人',
	/* 文案 */copyss VARCHAR(256),
	/* 发布时间 */release_time VARCHAR(128),
	/* 用户实时位置 */location_time VARCHAR(128),
	FOREIGN KEY(aid) REFERENCES mt_aid(aid)
);
-- INSERT INTO mt_dy_id(dy_id,aid,dyme_id,copyss,) VALUES(null,1,1,'哎不败了今天太累了');
-- INSERT INTO mt_dy_id(dy_id,aid,dyme_id,copyss,) VALUES(null,2,2,'哎不败了今天太累了');
-- INSERT INTO mt_dy_id(dy_id,aid,dyme_id,copyss,) VALUES(null,3,3,'哎不败了今天太累了');
-- INSERT INTO mt_dy_id(dy_id,aid,dyme_id,copyss,) VALUES(null,3,3,'哎不败了今天太累了');
/* 喜欢 */
CREATE TABLE mt_wos_id(
	/* id */wos_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 科普id */hid INT NOT NULL,
	/* 动态id */dy_id INT NOT NULL,
	FOREIGN KEY(hid) REFERENCES mt_hid(hid),
	FOREIGN KEY(dy_id) REFERENCES mt_dy_id(dy_id)
);

/* 预约订单 */
CREATE TABLE mt_convention_id(
	/* id */convention_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 摄影师id */fid INT NOT NULL,
	/* 订单类型id */ orty_id INT NOT NULL,
	/* 预约状态 */booking_status VARCHAR(16),
	/* 预约时间 */convention_time VARCHAR(64),
	/* 预约价格 */convention_price INT,
	/* 预约人数 */convention_people INT,
	/* 付款时间 */payment_time VARCHAR(64),
	/* 订单完成时间 */okay_time VARCHAR(64),
	FOREIGN KEY(aid) REFERENCES mt_aid(aid),
	FOREIGN KEY(fid) REFERENCES mt_fid(fid),
	FOREIGN KEY(orty_id) REFERENCES mt_orty_id(orty_id)
);

/* 预约订单详情 */
CREATE TABLE mt_conven_id(
	/* id */conven_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 预约订单id */convention_id INT NOT NULL,
	/* 摄影师id */fid INT NOT NULL,
	FOREIGN KEY(convention_id) REFERENCES mt_convention_id(convention_id)
);

/* 地址 */
CREATE TABLE mt_address_id(
	/* id */address_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 接收人姓名 */recipient_name VARCHAR(12),
	/* 省 */province VARCHAR(12),
	/* 市 */market VARCHAR(12),
	/* 县 */county VARCHAR(12),
	/* 详细地址 */detailed_address VARCHAR(256),
	/* 手机 */mob VARCHAR(16),
	/* 固定电话 */telephone VARCHAR(16),
	/* 邮编 */zip_code INT,
	/* 标签 */the_label VARCHAR(128),
	/* 是否为默认地址 */default_address BOOLEAN NOT NULL DEFAULT '1',
	FOREIGN KEY(aid) REFERENCES mt_aid(aid)
);

/* 购物车 */
CREATE TABLE mt_shop_id(
	/* id */shop_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INt NOT NULL,
	/* 商品id */cid INt NOT NULL,
	/* 购买商品数量 */purchase_quantity INT,
	/* 商品价格 */goods_price INT,
	FOREIGN KEY(aid) REFERENCES mt_aid(aid),
	FOREIGN KEY(cid) REFERENCES mt_cid(cid)
);

/* 商品订单 */
CREATE TABLE mt_order_id(
	/* id */order_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 用户id */aid INT NOT NULL,
	/* 商品id */cid INT NOT NULL,
	/* 订单类型id */orty_id INT NOT NULL,
	/* 订单状态 */ord_status VARCHAR(32),
	/* 下单时间 */dtm_time VARCHAR(64),
	/* 付款时间 */payment_time VARCHAR(64),
	/* 发货时间 */dvr_time VARCHAR(64),
	/* 签收时间 */signed_time VARCHAR(64),
	FOREIGN KEY(aid) REFERENCES mt_aid(aid),
	FOREIGN KEY(cid) REFERENCES mt_cid(cid),
	FOREIGN KEY(orty_id) REFERENCES mt_orty_id(orty_id)
);

/* 商品订单详情表 */
CREATE TABLE mt_goods_id(
	/* id */goods_id INT PRIMARY KEY AUTO_INCREMENT,
	/* 商品订单id */order_id INT NOT NULL,
	/* 商品id */cid INT NOT NULL,
	/* 购买数量 */purchase_quantity INT,
	FOREIGN KEY(order_id) REFERENCES mt_order_id(order_id),
	FOREIGN KEY(cid) REFERENCES mt_cid(cid)
);
