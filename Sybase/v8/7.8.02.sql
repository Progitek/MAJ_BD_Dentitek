if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_cardcredit' and column_name = 'cardnote') THEN 
					 alter table t_cardcredit add cardnote varchar(200) 
				END IF;

INSERT INTO t_ramq_rais_trait_denta (type_rais_trait_denta, desc_type_rais_trait_denta, val_rais_trait_denta, desc_val_rais_trait_denta) 
    (Select '1','Raison justifiant un numéro de dent pour un patient de cette âge','5','Éruption prématurée' from dummy 
      where not exists (select * from t_ramq_rais_trait_denta where type_rais_trait_denta = 1 and val_rais_trait_denta = 5)  
    );

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_system_providers' and column_name = 'is_lab') THEN 
					 alter table t_system_providers add is_lab integer default 0 
				END IF;

delete from t_droitmenuribbon where tagname = 'LogTokenClinique';

delete from t_droitmenuribbon where tagname = 'GestionEmploye';

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0090an','Question!','Do you want to save ?','Exclamation!','YesNo',2,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0090an');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0090fr','Question!','Voulez-vous enregistrer les modifications ?','Exclamation!','YesNo',2,0,'N','N',NULL,'N' where not exists (select * from messages where msgid = 'DENT0090fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0091an','Question!','Do you want to save the modifications ?','Exclamation!','YesNoCancel',2,0,'N','N',NULL,'N' where not exists (select * from messages where msgid = 'DENT0091an');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0091fr','Question!','Voulez-vous enregistrer les modifications ?','Exclamation!','YesNoCancel',2,0,'N','N',NULL,'N' where not exists (select * from messages where msgid = 'DENT0091fr');


