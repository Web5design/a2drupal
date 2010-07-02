CREATE DATABASE IF NOT EXISTS ##DBNAME##;

USE mysql;
DELETE FROM user WHERE User = '##DBUSER##';

INSERT INTO `user` (`Host`,`User`,`Password`) VALUES('##DBHOST##','##DBUSER##',PASSWORD('##DBPASS##'));

FLUSH PRIVILEGES; 

GRANT USAGE ON * . * TO '##DBUSER##'@'##DBHOST##' IDENTIFIED BY '##DBPASS##' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `##DBNAME##` . * TO '##DBUSER##'@'##DBHOST##' WITH GRANT OPTION ;

FLUSH PRIVILEGES; 
