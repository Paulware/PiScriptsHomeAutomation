#!/bin/bash

mysql -u root -ppi <<QUERY0
CREATE DATABASE Paulware /*\!40100 DEFAULT CHARACTER SET utf8 */;
QUERY0

mysql -u root -ppi <<QUERY1
use mysql;
SET PASSWORD for 'root'@'localhost' = PASSWORD ('pi');
QUERY1

mysql -u root -ppi <<QUERY2
GRANT ALL PRIVILEGES ON Paulware.* TO 'root'@'%' WITH GRANT OPTION;
QUERY2

mysql -u root -ppi <<QUERY3
Update mysql.user set plugin='';
QUERY3

mysql -u root -ppi <<QUERY4
Select User,Host,plugin FROM mysql.user;
QUERY4

mysql -u root -ppi <<QUERY5
FLUSH PRIVILEGES;
QUERY5

