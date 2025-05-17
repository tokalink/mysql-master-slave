-- login mysql -u admin -padmin -h 127.0.0.1 -P6032

/* Tambah master & slave */
INSERT INTO mysql_servers (hostgroup_id, hostname, port) VALUES
  (1,'192.168.11.151',3306),
  (2,'192.168.11.152',3306);

/* User aplikasi */
INSERT INTO mysql_users (username,password,default_hostgroup) VALUES
  ('appuser','apppass',1);

/* Routing SELECT ke slave */
INSERT INTO mysql_query_rules (rule_id,active,match_pattern,destination_hostgroup,apply)
  VALUES (1,1,'^SELECT',2,1);

/* Commit ke runtime & disk */
LOAD MYSQL SERVERS TO RUNTIME;  SAVE MYSQL SERVERS TO DISK;
LOAD MYSQL USERS   TO RUNTIME;  SAVE MYSQL USERS   TO DISK;
LOAD MYSQL QUERY RULES TO RUNTIME; SAVE MYSQL QUERY RULES TO DISK;
