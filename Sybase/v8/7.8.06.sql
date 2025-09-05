if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_tpvconfig' and column_name = 'reussi') THEN 
        alter table t_tpvconfig add reussi integer default 0 
END IF;

ALTER TABLE t_options MODIFY txnotean varchar(10000) DEFAULT NULL;

delete from t_droitmenuribbon where tagname = 'GestionEmploye';

 
	If not exists(select 1 from t_system_codes where code like 'GEN%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('GEN001','Homme','Men',NULL,'M',NULL); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('GEN002','Femme','Women',NULL,'F',NULL); 
	End If;

	If not exists(select 1 from t_system_codes where code like 'STU%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('STU001','Étudiant plein temps','Patient is a full-time student',NULL,NULL,1); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('STU002','Invalide','Patient is disabled',NULL,NULL,2); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('STU003','Étudiant et invalide','Patient is a disabled student',NULL,NULL,3); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('STU004','Non applicable','Code not applicable',NULL,NULL,4); 
	End If;

	If not exists(select 1 from t_system_codes where code like 'LAN%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('LAN001','Français','French',1,'F',NULL); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('LAN002','Anglais','English',2,'A',NULL);   
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('LAN003','Espagnol','Spanish',3,'E',NULL); 
	End If;

	If not exists(select 1 from t_system_codes where code like 'PEG%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('PEG001','Détenteur de l''assurance','Pay the subscriber',1,NULL,1); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('PEG002','Autre tierce partie','Pay other third party',2,NULL,2); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('PEG003','Dentiste','Pay the dentist',4,NULL,4); 
	End If;

	If not exists(select 1 from t_system_codes where code like 'REL%') then 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('REL001','Elle-même/Lui-même','Herself/Himself',NULL,NULL,1); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('REL002','Conjoint','Spouse',NULL,NULL,2); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('REL003','Enfant','Child',NULL,NULL,3); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('REL004','Conjoint de fait','Common Law Spouse',NULL,NULL,4); 
		INSERT INTO t_system_codes (code,nom_fr,nom_an,ordre,code_assoc_char,code_assoc_num)VALUES('REL005','Autre','Other',NULL,NULL,5); 
	End If;

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0098fr','Avertissement!','Ce patient possède deux assurances. Voulez-vous imprimer le formulaire pour la deuxième assurance?','Information!','YesNo!',2,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0098fr');

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0098an','Warning!','This patient has two insurance policies. Would you like to print the form for the second insurance?','Warning!','YesNo!',2,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0098an');

 
	if not exists (	select * from syscolumn 
					inner join systable on syscolumn.table_id = systable.table_id 
					where table_name = 't_poste' and column_name = 'poste_en') THEN 
		ALTER TABLE t_poste ADD poste_en Varchar(100) 
	END IF;

Update t_poste set poste_en = 'Dentist' where poste = 'Dentiste';

Update t_poste set poste_en = 'Hygienist' where poste = 'Hygiéniste';

Update t_poste set poste_en = 'Secretary' where poste = 'Secrétaire';

Update t_poste set poste_en = 'Manager' where poste = 'Responsable';

Update t_poste set poste_en = 'Accounting' where poste = 'Comptabilité';

Update t_poste set poste_en = 'Administration' where poste = 'Administration';

Update t_poste set poste_en = 'Assistant' where poste = 'Assistante';

Update t_poste set poste_en = 'Nurse' where poste = 'Infirmière';

IF not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_apptpv' and column_name = 'apiToken_profile') THEN 
        alter table t_apptpv add apiToken_profile varchar(100) null 
END IF;

if not exists (	select * from syscolumn 
					inner join systable on syscolumn.table_id = systable.table_id 
					where table_name = 't_messagecourriel' and column_name = 'titrecourrielan') THEN 
		ALTER TABLE t_messagecourriel ADD titrecourrielan Varchar(255) 
	END IF;

update t_messagecourriel set titrecourrielan = titrecourriel || ' (an)' where titrecourrielan is null;