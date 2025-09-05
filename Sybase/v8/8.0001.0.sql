	Case when not exists (	select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
							where table_name = 't_visites' and column_name = 'reverse_to') then  
	ALTER TABLE t_visites ADD reverse_to integer DEFAULT 0, ADD reverse_from integer DEFAULT 0 End;

	If not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_specialists' and column_name = 'dent_monit_api') then 
        ALTER TABLE t_specialists ADD dent_monit_api varchar(100) ;
	 End If;


