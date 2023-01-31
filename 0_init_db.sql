
DROP DATABASE IF EXISTS springbootv2;
CREATE DATABASE springbootv2;

CREATE USER 'root'@'%' identified by 'root';
GRANT ALL PRIVILEGES ON *.* to 'root'@'%';

FLUSH PRIVILEGES;
