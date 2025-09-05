Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_patients' and syscolumn.column_name = 'allergies') Then alter table t_patients add allergies varchar(32767) end;

