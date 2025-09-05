Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_majdentitekdetail' and syscolumn.column_name = 'reqsql') Then ALTER TABLE t_majdentitekdetail ALTER reqsql varchar(32767) end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_majdentitekdetail' and syscolumn.column_name = 'reqsqlan') Then ALTER TABLE t_majdentitekdetail ALTER reqsqlan varchar(32767) end; 

