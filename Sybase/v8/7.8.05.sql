if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_tpvconfig' and column_name = 'reussi') THEN 
        alter table t_tpvconfig add reussi integer default 0 
END IF;

ALTER TABLE t_options MODIFY txnotean varchar(10000) DEFAULT NULL;

