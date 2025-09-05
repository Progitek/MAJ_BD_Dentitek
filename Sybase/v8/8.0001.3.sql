if not exists(select 1 from systable where table_name = 't_histlicence') then 
				CREATE TABLE t_histlicence 
									(id_histlicence INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
                                     id_clinique integer NOT NULL, 
                                     id_user integer NOT NULL, 
									 dateaccept datetime NOT NULL, 
									 licversion varchar(20) NOT NULL, 
									 typepass varchar(6) NOT NULL, 
									 PRIMARY KEY ( id_histlicence ASC )  
									) 
				end if;
DROP TABLE t_histlicence;

delete t_system_providers;

insert into t_system_providers (nom_provider, description, is_cas, is_ass, is_ramq, is_indiene, is_lab) 
  select 'ahdq-ssna', 'ahdq-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'ahdq-ssna') union all 
  select 'ahdq', 'ahdq', 1, 1, 0, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'ahdq') union all 
  select 'denturo', 'denturo', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'denturo') union all 
  select 'denturo-ramq', 'denturo-ramq', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'denturo-ramq') union all 
  select 'denturo-ssna', 'denturo-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'denturo-ssna') union all 
  select 'denturo-ar', 'denturo NB-AR', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'denturo-ar') union all 
  select 'endo', 'endo', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'endo') union all 
  select 'endo-ssna', 'endo-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'endo-ssna') union all 
  select 'generalist', 'generalist', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'generalist') union all 
  select 'acdq-ssna', 'acdq-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'acdq-ssna') union all 
  select 'maxillo', 'maxillo', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'maxillo') union all 
  select 'medecine-bucale', 'medecine-bucale', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'medecine-bucale') union all 
  select 'paro', 'paro', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'paro') union all 
  select 'paro-ssna', 'paro-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'paro-ssna') union all 
  select 'pedo', 'pedo', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'pedo') union all 
  select 'pedo-ssna', 'pedo-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'pedo-ssna') union all 
  select 'prosto', 'prosto', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'prosto') union all 
  select 'prosto-ssna', 'prosto-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'prosto-ssna') union all 
  select 'acdq-ramq', 'acdq-ramq', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'acdq-ramq') union all 
  select 'maxilo-ssna', 'maxilo-ssna', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'maxilo-ssna') union all 
  select 'maxilo-ramq', 'maxilo-ramq', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'maxilo-ramq');