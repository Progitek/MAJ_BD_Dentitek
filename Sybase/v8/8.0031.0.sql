insert into t_system_codes ( code, nom_fr, nom_an, ordre ) select  'SPR001', 'Début', 'Start', 1 from dummy where not exists (select * from t_system_codes where code = 'SPR001');
insert into t_system_codes ( code, nom_fr, nom_an, ordre ) select  'SPR002', 'Milieu ', 'Middle', 2 from dummy where not exists (select * from t_system_codes where code = 'SPR002');
insert into t_system_codes ( code, nom_fr, nom_an, ordre ) select  'SPR003', 'Arrêt', 'Stop', 3 from dummy where not exists (select * from t_system_codes where code = 'SPR003');

if not exists(select 1 from systable where table_name = 't_profiling') then 
				CREATE TABLE t_profiling ( 
								id_profiling INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
                                    date_operation DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, 
                                    device_name VARCHAR(20) NULL, 
								id_user INTEGER NULL, 
								process_name VARCHAR(30) NOT NULL,
								sec_process INTEGER NULL, 
								state_process VARCHAR(6) NOT NULL, 
								trigger_msg VARCHAR(40) NOT NULL, 
								delay_mls UNSIGNED INTEGER, 
								delay_total UNSIGNED INTEGER, 
								PRIMARY KEY (id_profiling asc)  
									) 
				end if;


