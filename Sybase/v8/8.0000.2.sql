delete FROM t_droitmenuribbon where descrip like 'Analytik%';

delete t_system_providers;

insert into t_system_providers (nom_provider, description, is_cas, is_ass, is_ramq, is_indiene, is_lab) 
  select 'ACDQ', 'ACDQ', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'ACDQ') union all 
  select 'AHDQ-SSNA', 'AHDQ-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'AHDQ-SSNA') union all 
  select 'AHDQ', 'AHDQ', 1, 1, 0, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'AHDQ') union all 
  select 'DENTURO', 'DENTURO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'DENTURO') union all 
  select 'DENTURO-RAMQ', 'DENTURO-RAMQ', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'DENTURO-RAMQ') union all 
  select 'DENTURO-SSNA', 'DENTURO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'DENTURO-SSNA') union all 
  select 'denturo NB', 'denturo NB', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'denturo NB') union all 
  select 'denturo NB-AR', 'denturo NB-AR', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'denturo NB-AR') union all 
  select 'denturo NB-SSNA', 'denturo NB-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'denturo NB-SSNA') union all 
  select 'ENDO', 'ENDO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'ENDO S3') union all 
  select 'ENDO-SSNA', 'ENDO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'ENDO-SSNA') union all 
  select 'ACDQ-SSNA', 'ACDQ-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'ACDQ-SSNA') union all 
  select 'MAXILLO', 'MAXILLO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'MAXILLO S1') union all 
  select 'Medecine buccale', 'Medecine buccale', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'Medecine buccale S4') union all 
  select 'NBDS', 'NBDS', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'NEW BRUNSWICK') union all 
  select 'ODA', 'ODA', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'Ontario') union all 
  select 'PARO', 'PARO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'PARO S5') union all 
  select 'PARO-SSNA', 'PARO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'PARO-SSNA') union all 
  select 'PEDO', 'PEDO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'PEDO S2') union all 
  select 'PEDO-SSNA', 'PEDO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'PEDO-SSNA') union all 
  select 'PROSTO', 'PROSTO', 1, 1, 0, 0, 1 where not exists (select * from t_system_providers where nom_provider = 'PROSTO S6') union all 
  select 'PROSTO-SSNA', 'PROSTO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'PROSTO-SSNA') union all 
  select 'ACDQ-RAMQ', 'ACDQ-RAMQ', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'ACDQ-RAMQ') union all 
  select 'MAXILO-SSNA', 'MAXILO-SSNA', 0, 0, 0, 1, 0 where not exists (select * from t_system_providers where nom_provider = 'MAXILO-SSNA') union all 
  select 'MAXILO-RAMQ', 'MAXILO-RAMQ', 0, 0, 1, 0, 0 where not exists (select * from t_system_providers where nom_provider = 'MAXILO-RAMQ');

update t_message set idforeignkey = replace(idforeignkey, 'Refe', 'F') where idforeignkey like 'Refe%';