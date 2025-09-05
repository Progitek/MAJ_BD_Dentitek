	Case when not exists (	select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
							where table_name = 't_visites' and column_name = 'reverse_to') then   
	ALTER TABLE t_visites ADD reverse_to integer DEFAULT 0, ADD reverse_from integer DEFAULT 0 End;

	If not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id   
                where table_name = 't_specialists' and column_name = 'dent_monit_api') then  
        ALTER TABLE t_specialists ADD dent_monit_api varchar(100);
	 End If;

   If not exists(select 1 from t_system_codes where code = 'SEA001') then INSERT INTO t_system_codes VALUES('SEA001', 'Accepté', 'Accepted', Null, Null, Null) End If;  
	If not exists(select 1 from t_system_codes where code = 'SEA002') then INSERT INTO t_system_codes VALUES('SEA002', 'Manuel', 'Manual', Null, Null, Null) End If;  
	If not exists(select 1 from t_system_codes where code = 'SEA003') then INSERT INTO t_system_codes VALUES('SEA003', 'En attente', 'On hold', Null, Null, Null) End If;  
	If not exists(select 1 from t_system_codes where code = 'SEA004') then INSERT INTO t_system_codes VALUES('SEA004', 'Refusé', 'Denied', Null, Null, Null) End If;;

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
