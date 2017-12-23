-- Create table --

create table STATION --	电视台信息表
(
  staid   CHAR(3)       not null  , -- 电视台编号
  staname VARCHAR2(10)            , -- 电视台名称
  staest  DATE                    , -- 电视台成立时间
  constraint STATION  primary key (staid),
  constraint STATIONU unique (staname)
);

create table WORKER -- 节目制作人员表
(
  wid       CHAR(5)      not null , -- 账号ID
  wname     VARCHAR2(20)          , -- 姓名
  wpassword VARCHAR2(12)          , -- 密码
  staid     CHAR(3)               , -- 所属电视台编号
  wtime     DATE                  , -- 入职时间
  constraint WORKERPK primary key (wid),
  constraint WORKERFK foreign key (staid) references STATION (staid)
);

create table USERS -- 普通用户表
(
  usid      CHAR(5)       not null  , -- 账号ID
  uname     VARCHAR2(20)            , -- 姓名
  upassword VARCHAR2(12)            , -- 密码
  constraint USERSPK primary key (usid)
);

create table PROGRAM -- 电视节目信息表
(
  pid      CHAR(12)       not null  , -- 节目编号
  pname    VARCHAR2(15)             , -- 节目名称
  pepisode NUMBER(3)                , -- 集数
  pseason  NUMBER(2)                , -- 季数
  pcontent VARCHAR2(500)            , -- 主要内容
  padv     VARCHAR2(20)             , -- 赞助商
  constraint PROGRAMPK primary key (pid)
);

create table CHANNEL -- 电视频道信息表
(
  chid   CHAR(4)      not null  , -- 电视频道编号
  chname VARCHAR2(20)           , -- 电视频道名称
  chhit  NUMBER(12)             , -- 电视频道点击量
  staid  CHAR(3)                , -- 所属电视台编号
  chtime DATE                   , -- 开播时间
  constraint CHANNELPK primary key (chid),
  constraint CHANNELFK foreign key (staid) references STATION (staid)
);

create table BROADCAST --	播出时刻表
(
  chid CHAR(4)                        not null , -- 电视频道编号
  pid  CHAR(12)                       not null , -- 电视节目编号
  bdtime interval day(0) to second(0) not null , -- 播出时间
  constraint BROADCASTPK  primary key (chid, pid),
  constraint BROADCASTFKC foreign key (chid) references CHANNEL (chid),
  constraint BROADCASTFKP foreign key (pid)  references PROGRAM (pid)
);

create table CHANNELCOLLECT -- 频道收藏表
(
  chid CHAR(4) not null, -- 电视频道编号
  usid CHAR(5) not null, -- 电视频道编号
  constraint CHANNELCOLLECTPK  primary key (chid, usid),
  constraint CHANNELCOLLECTFKC foreign key (chid) references CHANNEL (chid),
  constraint CHANNELCOLLECTFKU foreign key (usid) references USERS (usid)
);

create table PRODUCING --	制作表
(
  wid CHAR(5)  not null, -- 节目制作人员ID
  pid CHAR(12) not null, -- 电视节目编号
  job VARCHAR2(20)     , -- 岗位
  constraint PRODUCINGPK  primary key (wid, pid),
  constraint PRODUCINGFKW foreign key (wid) references WORKER (wid),
  constraint PRODUCINGFKP foreign key (pid) references PROGRAM (pid)
);

create table PROGRAMCOLLECT -- 节目收藏表
(
  usid     CHAR(5)    not null  , -- 用户编号
  pid      CHAR(12)   not null  , -- 电视节目编号
  reminder char(1)              , -- 是否添加系统提醒
  constraint PROGRAMCOLLECTPK   primary key (usid, pid),
  constraint PROGRAMCOLLECTFKU  foreign key (usid) references USERS (usid),
  constraint PROGRAMCOLLECTFKP  foreign key (pid)  references PROGRAM (pid)，
  constraint PROGRAMCOLLECTBOOL check (reminder in ('y','n'))
);

create table SCHEDULER -- 电视台调度人员表
(
  sid       CHAR(5)       not null  , -- 账号ID
  sname     VARCHAR2(20)            , -- 姓名
  spassword VARCHAR2(12)            , -- 密码
  staid     CHAR(3)       not null  , -- 所属电视台编号
  stime     DATE                    , -- 入职时间
  constraint SCHEDULERPK primary key (sid),
  constraint SCHEDULERFK foreign key (staid) references STATION (staid)
);

commit;
