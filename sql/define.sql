create table tb_model(
	id int auto_increment,
	model varchar(64) not null,
	color varchar(64) not null,
	other varchar(128),
	brand varchar(64) not null,
	modelID int not null,
	brandID int not null,
	colorID int not null,
	primary key(id),
	constraint device unique(model, color, other)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert tb_model(model, color, other) values ('iPhone 7', '金色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7', '玫瑰金色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7', '银色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7', '黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7', '亮黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7 Plus', '金色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7 Plus', '玫瑰金色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7 Plus', '银色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7 Plus', '黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 7 Plus', '亮黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S', '金（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S', '粉（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S Plus', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S Plus', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S Plus', '金（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6S Plus', '粉（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6', '金（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6 Plus', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6 Plus', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 6 Plus', '金（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone SE', '灰色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone SE', '银色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone SE', '金色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone SE', '玫瑰金色', '', 'iPhone', 1);	
insert tb_model(model, color, other) values ('iPhone 5S', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5S', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5S', '金（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5C', '白色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5C', '粉色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5C', '黄色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5C', '蓝色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5C', '绿色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5', '银（白色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 5', '灰（黑色屏幕）', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 4S', '黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 4S', '白色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 4', '黑色', '', 'iPhone', 1);
insert tb_model(model, color, other) values ('iPhone 4', '白色', '', 'iPhone', 1);


insert tb_model(model, color, other) values ('iPad 2', '白色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad 2', '黑色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad 3', '白色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad 3', '黑色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad 4', '白色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad 4', '黑色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Air', '银色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Air', '灰色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Air2', '银色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Air2', '灰色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Air2', '金色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini ', '白色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini ', '黑色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini ',  '银色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini2', '银色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini2',  '灰色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini3', '灰色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini3',  '白色', '', 'iPad', 2);
insert tb_model(model, color, other) values ('iPad Mini3', '金色', '', 'iPad', 2);	

create table tb_malfunction(
	id int auto_increment,
	malfunction varchar(64) not null,
	type int not null,
	maldetail varchar(128) not null,
	descripe varchar(256),
	primary key(id),
	constraint malf unique(malfunction, maldetail, descripe)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert tb_malfunction(malfunction, type, maldetail, descripe) values('屏幕', 1, '外屏碎（图像显示正常）', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('屏幕', 1, '内屏碎（图像显示不正常）', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('屏幕', 1, '图像显示或触摸不正常', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('摄像头', 2, '前置摄像头', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('摄像头', 2, '后置摄像头', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('摄像头', 2, '闪光灯', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('摄像头', 2, '后置镜片碎裂', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('按键', 3, '电源键', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('按键', 3, 'Home 键', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('按键', 3, '音量键', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('按键', 3, '静音键', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('电池', 4, '充电故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('电池', 4, '续航时间短', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('电池', 4, '电池膨胀', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('声音', 5, '耳机插口故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('声音', 5, '听筒', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('声音', 5, '麦克风', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('声音', 5, '外放扬声器', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('外壳边框', 6, '边框损坏', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('外壳边框', 6, '后壳损坏', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('感应', 7, '重力感应失灵', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('感应', 7, '屏幕亮度自动调节失灵', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('感应', 7, '通话屏幕黑屏失效', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, 'Wi-Fi信号故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, '蓝牙信号故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, 'GPS定位故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, '手机信号故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, '无服务', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('信号', 8, '手机移动网络故障', '');

insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '进水不开机检测', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '震动故障', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, 'SIM卡无法识别', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '发热异常', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '电流声', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '启动界面卡死', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '内存升级', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '以旧换新', '');
insert tb_malfunction(malfunction, type, maldetail, descripe) values('其他', 9, '人工沟通确定故障', '');

create table tb_solution(
	id int auto_increment,
	modelID int not null,
	malfID int not null,
	scheme varchar(128),
	price int,
	discount int,
	primary key (id),
	foreign key (modelID) references tb_model (id)
	on update cascade on delete restrict,
	foreign key (malfID) references tb_malfunction (id)
	on update cascade on delete restrict
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tb_user(
	id int auto_increment,
	username varchar(128) not null,
	password varchar(128) not null,
	permission int not null,
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tb_customer(
	id int auto_increment,
	phone_num varchar(64) not null,
	name varchar(64) not null,
	location varchar(64) not null,
	detail varchar(128) not null,
	remark varchar(256),
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tb_deal(
	uuid varchar(32) not null,
	customerID int not null,
	solutionID int not null,
	foreign key (customerID) references tb_customer (id)
	on update cascade on delete restrict,
	foreign key (solutionID) references tb_solution (id)
	on update cascade on delete restrict,
	remark varchar(128),
	primary key (uuid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table tb_operation(
	id int not null auto_increment,
	operation varchar(128) not null,
	remark varchar(128) not null,
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tb_deal_data(
	id int not null auto_increment,
	dealID varchar(32) not null,
	operationID int not null,
	foreign key (dealID) references tb_deal (uuid)
	on update cascade on delete restrict,
	foreign key (operationID) references tb_operation (id)
	on update cascade on delete restrict,
	remark varchar(256),
	primary key (id);
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table tb_deal_manage(
	id int not null auto_increment,
	userID int not null,
	dealID varchar(32) not null,
	foreign key (userID) references tb_user (uuid)
	on update cascade on delete restrict,
	foreign key (dealID) references tb_operation (tb_deal)
	on update cascade on delete restrict,
	primary key (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



