-- 该脚本仅进行数据库场景以及用户初始化，之后所有操作转至funnyawm@localhost执行
DROP DATABASE IF EXISTS cms;
CREATE DATABASE cms;
USE cms;
CREATE USER 'funnyawm'@'localhost' IDENTIFIED BY '041128';
GRANT ALL PRIVILEGES ON cms.* TO 'funnyawm'@'localhost';