Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_system_providers' and syscolumn.column_name = 'ordre') Then alter table t_system_providers add ordre as integer end;
update t_system_providers set nom_provider = 'rcsd' where nom_provider = 'RCSD/CDCP - Sun Life';
update t_system_providers set nom_provider = 'generalist' where nom_provider = 'généraliste/generalist';
delete t_system_providers where nom_provider = 'denturo-ar';
update t_system_providers set ordre = 10 where nom_provider = 'generalist';
update t_system_providers set ordre = 20 where nom_provider = 'rcsd';
