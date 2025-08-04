USE cms;

DROP TABLE IF EXISTS student;

CREATE TABLE student
(
    id          INT         NOT NULL AUTO_INCREMENT COMMENT '主键',
    userName    VARCHAR(20) NOT NULL COMMENT '学生账号',
    password    VARCHAR(32) NOT NULL COMMENT '密码',
    name        VARCHAR(5) COMMENT '学生姓名',
    gender      TINYINT COMMENT '性别',
    studentId   VARCHAR(20) COMMENT '学号',
    grade       TINYINT COMMENT '年级',
    collegeId   INT COMMENT '学院',
    phoneNumber VARCHAR(15) COMMENT '手机',
    email       VARCHAR(20) COMMENT '邮箱',
    avatar      VARCHAR(30) COMMENT '头像',
    PRIMARY KEY (id),
    UNIQUE KEY userName (userName)
) ENGINE = InnoDB
  AUTO_INCREMENT = 27
  DEFAULT CHARSET = utf8 COMMENT ='学生';

DROP TABLE IF EXISTS teacher;

CREATE TABLE teacher
(
    id          INT         NOT NULL AUTO_INCREMENT COMMENT '教师ID',
    userName    VARCHAR(20) NOT NULL COMMENT '账号',
    password    VARCHAR(32) NOT NULL COMMENT '密码',
    name        VARCHAR(5) COMMENT '姓名',
    gender      TINYINT COMMENT '性别',
    phoneNumber VARCHAR(15) COMMENT '手机',
    email       VARCHAR(20) COMMENT '邮箱',
    avatar      VARCHAR(30) COMMENT '头像',
    PRIMARY KEY (id),
    UNIQUE KEY userName (userName)
) ENGINE = InnoDB
  AUTO_INCREMENT = 17
  DEFAULT CHARSET = utf8 COMMENT ='教师';

DROP TABLE IF EXISTS college;

CREATE TABLE college
(
    id           INT NOT NULL AUTO_INCREMENT COMMENT '主键',
    name         VARCHAR(30) COMMENT '学院名称',
    collegeBio   LONGTEXT COMMENT '学院简介',
    introPicture VARCHAR(30) COMMENT '图片',
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 87
  DEFAULT CHARSET = utf8 COMMENT ='学院';

DROP TABLE IF EXISTS profession;

CREATE TABLE profession
(
    id            INT NOT NULL AUTO_INCREMENT COMMENT '主键',
    collegeId     INT COMMENT '所属学院ID',
    name          VARCHAR(30) COMMENT '专业名称',
    professionBio LONGTEXT COMMENT '专业简介',
    introPicture  VARCHAR(30) COMMENT '图片',
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 97
  DEFAULT CHARSET = utf8 COMMENT ='专业';

DROP TABLE IF EXISTS competition;

CREATE TABLE competition
(
    id           INT NOT NULL AUTO_INCREMENT COMMENT '比赛ID',
    name         VARCHAR(50) COMMENT '竞赛名称',
    type         VARCHAR(50) COMMENT '竞赛类型',
    target       LONGTEXT COMMENT '竞赛目的',
    content      LONGTEXT COMMENT '竞赛内容',
    time         DATE COMMENT '竞赛时间',
    place        LONGTEXT COMMENT '地点',
    level        TINYINT COMMENT '级别',
    organizer    VARCHAR(50) COMMENT '举办单位',
    host         VARCHAR(50) COMMENT '承办单位',
    introPicture VARCHAR(30) COMMENT '图片',
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 77
  DEFAULT CHARSET = utf8 COMMENT ='竞赛信息';

DROP TABLE IF EXISTS team;

CREATE TABLE team
(
    id             INT PRIMARY KEY AUTO_INCREMENT,
    name           VARCHAR(30) NOT NULL COMMENT '队名',
    leader_id      INT COMMENT '领队教师ID',
    competition_id INT         NOT NULL COMMENT '所属竞赛',
    members        JSON COMMENT '学生ID列表（JSON数组）',
    status         TINYINT
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='队伍';

DROP TABLE IF EXISTS score;

CREATE TABLE score
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    team_id       INT NOT NULL COMMENT '队伍ID',
    score         INT COMMENT '评分',
    comment       TEXT COMMENT '评语',
    appeal_reason TEXT COMMENT '申诉原因',
    appeal_status TINYINT COMMENT '申诉状态'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='成绩与申诉';

DROP TABLE IF EXISTS expense;

CREATE TABLE expense
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    team_id     INT NOT NULL COMMENT '队伍ID',
    budget      INT COMMENT '预算',
    actual_cost INT COMMENT '实际费用',
    file_url    VARCHAR(255) COMMENT '附件路径',
    status      TINYINT COMMENT '审核状态'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='报销信息';

DROP TABLE IF EXISTS award;

CREATE TABLE award
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    team_id INT NOT NULL COMMENT '队伍ID',
    amount  INT COMMENT '奖金金额',
    detail  TEXT COMMENT '获奖明细',
    note    TEXT COMMENT '备注'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='获奖情况';

DROP TABLE IF EXISTS administrator;

CREATE TABLE administrator
(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(10) NOT NULL COMMENT '管理员用户名',
    password VARCHAR(32) NOT NULL COMMENT '管理员密码'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8 COMMENT ='获奖情况';