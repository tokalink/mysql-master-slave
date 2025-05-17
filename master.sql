-- SHOW VARIABLES LIKE 'log_bin';

-- CREATE USER 'repl'@'192.168.11.%' IDENTIFIED WITH mysql_native_password BY 'replpass';
-- GRANT REPLICATION SLAVE ON *.* TO 'repl'@'192.168.11.%';
-- FLUSH PRIVILEGES;
-- 
-- FLUSH TABLES WITH READ LOCK;
-- SELECT @@GLOBAL.GTID_EXECUTED;

-- SHOW VARIABLES LIKE 'read_only';
-- SHOW VARIABLES LIKE 'super_read_only';

-- SHOW MASTER STATUS;

-- CREATE DATABASE testrep;


-- jalankan di master dan ulangi di slave digunakan untuk proxysql
CREATE USER 'appuser'@'%' IDENTIFIED BY 'apppass';
GRANT ALL PRIVILEGES ON *.* TO 'appuser'@'%';
FLUSH PRIVILEGES;
