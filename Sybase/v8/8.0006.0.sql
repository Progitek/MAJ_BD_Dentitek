Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_patients' and column_name = 'is_rcsd') then Alter Table t_patients add is_rcsd Integer default 0 end;
Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_codes' and column_name = 'prixrcsd') then Alter Table t_codes add prixrcsd decimal(8,2) default 0 end;
Case When not exists ( select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id where table_name = 't_system_providers' and column_name = 'is_rcsd') then Alter Table t_system_providers add is_rcsd Integer default 0 end;
insert into t_system_providers (nom_provider, description, is_cas, is_ass, is_ramq, is_indiene, is_lab, is_rcsd)  select 'CDCP - Sun Life', 'CDCP - Sun Life', 0, 0, 0, 0, 1, 1 where not exists (select * from t_system_providers where nom_provider = 'CDCP - Sun Life');


