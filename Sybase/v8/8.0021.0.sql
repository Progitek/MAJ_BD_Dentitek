insert into t_system_codes (code, nom_fr, nom_an) select  'CEN001', 'Production',  'Production' from dummy where not exists (select * from t_system_codes where code = 'CEN001');
insert into t_system_codes (code, nom_fr, nom_an) select  'CEN002', 'Test',  'Test' from dummy where not exists (select * from t_system_codes where code = 'CEN002');
Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_optiongen' and syscolumn.column_name = 'code_envirnmnt') Then ALTER TABLE t_optiongen Add code_envirnmnt varchar(6) default 'CEN001' end;

