if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_system_providers' and column_name = 'is_indiene') THEN 
					 alter table t_system_providers add is_indiene integer not null default 0 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_optiongen' and column_name = 'use_2fa') THEN 
					 alter table t_optiongen add use_2fa integer default 0 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'twofa_phone') THEN 
					 alter table t_users add twofa_phone varchar(15) 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'twofa_email') THEN 
					 alter table t_users add twofa_email varchar(100) 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'date_lastlogin') THEN 
					 alter table t_users add date_lastlogin datetime 
				END IF;

CREATE OR REPLACE FUNCTION dba.f_usager_connecte() 				
		returns integer													
	 	on exception resume 											
		begin 																
			declare @id_user integer; 								
			execute immediate 										
				'SELECT @usager_connecte INTO @id_user'; 	
			if sqlstate in( '00000','02000' ) then 					
				return @id_user 										
			else 															
				return-1 													
			end if 														
		end;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'twofa_destination') THEN 
					 alter table t_users add twofa_destination varchar(100) 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'twofa_code_verif') THEN 
					 alter table t_users add twofa_code_verif varchar(6) 
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_users' and column_name = 'twofa_date_verif') THEN 
					 alter table t_users add twofa_date_verif datetime 
				END IF;
