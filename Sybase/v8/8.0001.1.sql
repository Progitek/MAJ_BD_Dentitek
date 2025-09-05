   If not exists(select 1 from t_system_codes where code = 'SEA001') then INSERT INTO t_system_codes VALUES('SEA001', 'Accepté', 'Accepted', Null, Null, Null) End If; 
	If not exists(select 1 from t_system_codes where code = 'SEA002') then INSERT INTO t_system_codes VALUES('SEA002', 'Manuel', 'Manual', Null, Null, Null) End If; 
	If not exists(select 1 from t_system_codes where code = 'SEA003') then INSERT INTO t_system_codes VALUES('SEA003', 'En attente', 'On hold', Null, Null, Null) End If; 
	If not exists(select 1 from t_system_codes where code = 'SEA004') then INSERT INTO t_system_codes VALUES('SEA004', 'Refusé', 'Denied', Null, Null, Null) End If;
