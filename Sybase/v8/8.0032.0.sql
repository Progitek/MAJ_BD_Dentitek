Case When not exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_specialists' and syscolumn.column_name = 'licence_nr') Then ALTER TABLE t_specialists ADD licence_nr VARCHAR(10) end;

CASE WHEN not exists(select 1 from systable where table_name = 't_genlog') then  
						CREATE TABLE t_genlog (  
							genlog_id INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
							genlog_time  DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,  
							id_user INTEGER NULL,  
							id_patient TEXT NULL,  
							genlog_window_computer VARCHAR(200) NULL,  
							genlog_window_fr VARCHAR(200) NULL,  
							genlog_window_en VARCHAR(200) NULL,  
							genlog_comments VARCHAR(200) NULL,  
							genlog_action VARCHAR(200) NULL,  
							genlog_columnanme VARCHAR(200) NULL,  
							genlog_tablename VARCHAR(200) NULL,      
							genlog_oldvalue TEXT NULL,  
							genlog_newvalue TEXT NULL,                            
							PRIMARY KEY (genlog_id ASC)  
							) END;
							
CASE WHEN not exists(select 1 from systable where table_name = 't_window_loi5') then  
					CREATE TABLE t_window_loi5 (  
						window_loi5_Id INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
						window_loi5_name VARCHAR(200) NULL,  
						window_loi5_desc_fr VARCHAR(200) NULL,  
						window_loi5_desc_en VARCHAR(200) NULL,  
						window_loi5_variable VARCHAR(200) NULL,  
						window_loi5_isreport integer default 0,  
						window_loi5_datawindow VARCHAR(200) NULL,  
						PRIMARY KEY (window_loi5_Id ASC)  
						) END;
