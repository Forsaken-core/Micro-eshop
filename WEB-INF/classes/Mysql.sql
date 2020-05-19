CREATE TABLE member(
id int(11) AUTO_INCREMENT PRIMARY KEY,
username varchar(32) not null,
mobile varchar(32) default null,
pwd varchar(32) not null,
real_name varchar(32) not null,
nick_name varchar(32) not null,
email varchar(128) not null,
gender tinyint(1) not null default 0,
register_time datetime not null,
is_enable tinyint(1) not null default 1,
thumbnail varchar(32) not null
);

INSERT INTO member(username,mobile,pwd,real_name,nick_name,email,gender,register_time,is_enable,thumbnail)
values('admin','12345678911','123456','ÕÅÈý','forsaken','5566123@gmail.com',1,now(),1,'Í·Ïñ');