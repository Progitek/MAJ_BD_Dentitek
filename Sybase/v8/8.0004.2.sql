if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                where table_name = 't_codesprix' and column_name = 'prixlab') THEN 
                        alter table t_codesprix add prixlab numeric(8,2) ;
                END IF;
				
if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                where table_name = 't_codesprix' and column_name = 'prixlab2') THEN 
                        alter table t_codesprix add prixlab2 numeric(8,2) ;
                END IF;