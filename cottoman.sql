SET NAMES UTF8;
DROP DATABASE IF EXISTS cottoman;
CREATE DATABASE cottoman CHARSET=UTF8;
USE cottoman;
#网站的基本信息
CREATE TABLE cottoman_info(
	site_name VARCHAR(16),
	logo VARCHAR(64),
	copyright varchar(64)
);
INSERT INTO cottoman_info VALUES("纯棉人","image/logo.png","©2017 达内科技有限公司 版权所有 京ICP备08000853号-75");

#导航条目
CREATE TABLE cottoman_navbar_item(
	name  VARCHAR(16),
	url VARCHAR(64),
	title varchar(64)
);
INSERT INTO cottoman_navbar_item VALUES("首页","/index.html","公司首页"),
("公司简介","/index.html","公司简介"),
("商品分类","/index.html","多样的商品"),
("招商加盟","/index.html","加入我们"),
("联系我们","/index.html","联系我们");

#轮播图
CREATE TABLE cottoman_carousel_item(
	cide INT PRIMARY KEY AUTO_INCREMENT,
	pic VARCHAR(128),
	url VARCHAR(128),
	title VARCHAR(32)
);
INSERT INTO cottoman_carousel_item VALUES(null,'image/pic_1.jpg','图片URL链接','图片提示文字1'),
(null,'image/pic_2.jpg','图片URL链接1','图片提示文字2'),
(null,'image/pic_3.jpg','图片URL链接2','图片提示文字3'),
(null,'image/pic_4.jpg','图片URL链接3','图片提示文字4');

#商品列表
CREATE TABLE cottoman_new_product(
	pic INT NOT NULL,
	title VARCHAR(16),
	img VARCHAR(128),
	price DECIMAL(10,2)
);
INSERT INTO cottoman_new_product VALUES("1","商品名称1","image/product/new_product_01.png","3800"),
("2","商品名称2","image/product/new_product_01.png","3800"),
("3","商品名称3","image/product/new_product_01.png","3800"),
("4","商品名称4","image/product/new_product_01.png","3800"),
("5","商品名称5","image/product/new_product_01.png","3800"),
("6","商品名称6","image/product/new_product_01.png","3800"),
("7","商品名称7","image/product/new_product_01.png","3800"),
("8","商品名称8","image/product/new_product_01.png","3800");

#用户表
CREATE TABLE cottoman_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(11),
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT
);
INSERT INTO cottoman_user VALUES("1","dingding","123456","123456@qq.com","18112345678","image/avarar/defult.png","张丁",1);






