Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_patients' and column_name = 'surnom') then 
                                                    Alter Table t_patients add surnom VarChar(50) default null end;

Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_patients' and column_name = 'genre') then 
                                                    Alter Table t_patients add genre varchar(1) default null end;

Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_personnes' and column_name = 'surnom') then Alter Table t_personnes add surnom VarChar(50) default null end;

Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_personnes' and column_name = 'genre') then Alter Table t_personnes add genre varchar(1) default null end;

insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'BIN001', '',  '',  1, Null, Null from dummy where not exists (select * from t_system_codes where code = 'BIN001');

insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'BIN002', 'Trans.',  'Trans.',  1, 'T', Null from dummy where not exists (select * from t_system_codes where code = 'BIN002');

insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'BIN003', 'Non binaire',  'Non binary',  1, 'N', Null from dummy where not exists (select * from t_system_codes where code = 'BIN003');

