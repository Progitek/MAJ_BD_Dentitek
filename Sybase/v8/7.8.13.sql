If not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
                where table_name = 't_clinique' and column_name = 'defaultclinic') then 
        ALTER TABLE t_clinique ADD defaultclinic integer not null default 0 ;
	 End If;

Insert into t_clinique (nom_clinique, adresse_clinique, id_ville, id_province, code_postal_clinique, telephone_clinique, fax_clinique, email_clinique, dm_practice_id, suite, pathlogo, defaultclinic) 
	 Select tog.nomclinique, ts.dr_adresse, ts.dr_ville, ts.dr_province, ts.dr_zip, ts.dr_telbur, ts.dr_faxbur, ts.email, Null, Null, tog.chemlogo, 1 
			  from t_optiongen tog 
			  Join t_specialists ts on ts.id_specialist = 1 
     where not exists (select top 1 * from t_clinique where defaultclinic = 1);

Delete from t_clinique_specialist  where not exists (select top 1 * from t_clinique where defaultclinic = 1);

Insert into t_clinique_specialist (id_clinique, id_specialist) Select (Select top 1 id_clinique from t_clinique where defaultclinic = 1) id_clinique_def, id_specialist from t_specialists where not exists (select * from t_clinique_specialist where id_clinique = id_clinique_def and id_specialist = t_specialists.id_specialist);

Delete from t_clinique_user where not exists (select top 1 * from t_clinique where defaultclinic = 1);

Insert into t_clinique_user (id_clinique, id_user) Select (Select top 1 id_clinique from t_clinique where defaultclinic = 1) id_clinique_def, id_user from t_users where not exists (select * from t_clinique_specialist where id_clinique = id_clinique_def and id_user = t_users.id_user);