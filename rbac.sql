--用户表
CREATE TABLE rbac_user
(
    id	smallint(6) unsigned primary key not null comment '用户id',
    username varchar(20) not null  comment '用户名称',
    password varchar(32) not null comment '登录密码',
    logintime	int      comment  '上次登录时间',
    loginip    varchar(30) comment  '上次登录IP',
    status    tinyint(1)  comment  '用户状态'
);

--用户角色表
CREATE TABLE rbac_role
(
    id smallint(6) unsigned primary key not null auto_increment comment '角色ID',
    name varchar(20) not null comment '角色名称',
    status tintint(1) unsigned comment  '状态信息',
    remark varchar(255) comment  '备注信息'
);

--节点表
CREATE TABLE rbac_node
(
    id smallint(6) unsigned primary key not null auto_increment comment  '节点ID',
    name varchar(20) not null comment  '节点英文名称'
    title varchar(50) comment '节点中文名称',
    status tinyint(1)  comment '状态信息',
    remark varchar(255) comment '备注信息',
    sort smallint(6) unsigned comment '排序列表',
    level tinyint(1) unsigned  comment '等级状态' 
);

--(角色-节点)表
CREATE TABLE rbac_access
(
    role_id smallint(6) unsigned not null comment '角色外键',
    node_id smallint(6) unsigned not null comment '节点外键',
    level tinyint(1) not null comment '等级状态',
    module varchar(50) comment  '模块名称'
    
);

--(角色-用户)表
CREATE TABLE rbac_role_user
(
    role_id smallint(6) unsigned comment '角色外键',
    user_id smallint(6) unsigned comment '用户外键'
);
