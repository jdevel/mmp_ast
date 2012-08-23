create database `asterisk_cdr`;
grant select,insert on asterisk_cdr.* to astcdruser@localhost identified by 'temp123**';
flush privileges;

create database `asterisk_rt`;
grant select,insert on asterisk_rt.* to astrtuser@localhost identified by 'temp123**';
flush privileges;
