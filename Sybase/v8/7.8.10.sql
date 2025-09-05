	if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_clinique' and column_name = 'logoclinic') then 
        ALTER TABLE t_clinique ADD logoclinic LONG BINARY DEFAULT NULL;
	End If;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_clinique' and column_name = 'pathlogo') then  
        ALTER TABLE t_clinique ADD pathlogo Varchar(1000) DEFAULT NULL ;
End if;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_clinique' and column_name = 'suite') then  
        ALTER TABLE t_clinique ADD suite Varchar(10) DEFAULT NULL ;
End if;

If exists(select 1 from t_droitmenuribbon where tagname = 'GestionEmploye') then 
    delete from t_droitmenuribbon where tagname = 'GestionEmploye'; 
END IF;