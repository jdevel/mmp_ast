#!/bin/bash

mysql -u root -p -e "CREATE DATABASE asterisk DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci"
mysql -u root -p -e "GRANT SELECT,INSERT,UPDATE,DELETE,LOCK TABLES on asterisk.* TO cron@'%' IDENTIFIED BY '1234'"
mysql -u root -p -e "GRANT SELECT,INSERT,UPDATE,DELETE,LOCK TABLES on asterisk.* TO cron@localhost IDENTIFIED BY '1234'" 
mysql -u root -p -e "GRANT RELOAD ON *.* TO cron@'%'" 
mysql -u root -p -e "GRANT RELOAD ON *.* TO cron@localhost" 
mysql -u root -p -e "flush privileges"

echo "cd astguiclient_x.xrc2/extras and run the followings"
echo "mysql -u root -p asterisk < MySQL_AST_CREATE_tables.sql && mysql -u root -p asterisk < sip-iax_phones.sql && mysql -u root -p asterisk < first_server_install.sql"
echo ""
echo "Have a nice day >:)"
