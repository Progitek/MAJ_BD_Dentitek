insert into t_system_codes (code, nom_fr, nom_an) select  'SEA005', 'Fichier transmis',  'File sent' from dummy where not exists (select * from t_system_codes where code = 'SEA005');
insert into t_system_codes (code, nom_fr, nom_an) select  'SEA006', 'Erreur d''envoi',  'Sending error' from dummy where not exists (select * from t_system_codes where code = 'SEA006');
insert into t_system_codes (code, nom_fr, nom_an) select  'SEA007', 'À envoyer',  'To be sent' from dummy where not exists (select * from t_system_codes where code = 'SEA007');
Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_assentete' and syscolumn.column_name = 'filepath') Then ALTER TABLE t_assentete Add filepath varchar(200) end;
