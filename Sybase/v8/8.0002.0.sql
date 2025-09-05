if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                where table_name = 't_optiongen' and column_name = 'use_macroword') THEN 
                        alter table t_optiongen add use_macroword bit null default 0 ;
                END IF;

Case when not exists (	select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
							where table_name = 't_optiongen' and column_name = 'biopunchuser') then  
							ALTER TABLE t_optiongen ADD biopunchuser integer DEFAULT 0 End;

