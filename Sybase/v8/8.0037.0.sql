Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_service' and syscolumn.column_name = 'CheminBackup' And syscolumn.width = 100) Then ALTER TABLE t_service MODIFY CheminBackup VARCHAR(250) NULL end;
if not exists(select 1 from t_system_codes where code = 'SEC004') then 
												insert into t_system_codes (code, nom_fr, nom_an) values ('SEC004', 'Reçu', 'Received') ;
												end if;


