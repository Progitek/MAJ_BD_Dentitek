	If not exists(select 1 from t_system_codes where code like 'ELG%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('ELG001','Étudiant plein temps','Patient is a full-time student',1,NULL,1); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('ELG002','Invalide','Patient is disabled',2,NULL,2); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('ELG003','Étudiant et invalide','Patient is a disabled student',3,NULL,3); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('ELG004','Non applicable','Code not applicable',4,NULL,4);
	End If;

update t_optiongen set  barrer_chartes_jours = 3 where IsNull(barrer_chartes_jours, 0) = 0;

