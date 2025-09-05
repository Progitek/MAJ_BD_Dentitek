	If not exists(select 1 from t_system_codes where code like 'CLA%') then 
		INSERT INTO t_system_codes VALUES ('CLA001', 'Français', 'French', 1, 'F', NULL);			
		INSERT INTO t_system_codes VALUES ('CLA002', 'Anglais', 'English', 2, 'A', NULL);			
		INSERT INTO t_system_codes VALUES ('CLA003', 'Espagnol', 'Spanish', 3, 'E', NULL);			
		INSERT INTO t_system_codes VALUES ('CLA004', 'Italien', 'Italian', 4, 'I', NULL);				
		INSERT INTO t_system_codes VALUES ('CLA005', 'Portugais', 'Portuguese', 5, 'P', NULL);	
		INSERT INTO t_system_codes VALUES ('CLA006', 'Roumain', 'Romanian', 6, 'R', NULL);		
		INSERT INTO t_system_codes VALUES ('CLA007', 'Chinois', 'Chinese', 7, 'C', NULL);			
		INSERT INTO t_system_codes VALUES ('CLA008', 'Autre', 'Other', 8, 'OT', NULL);				
	End If;
