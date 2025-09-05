if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                                  where table_name = 't_typenote' and column_name = 'descrip_en') THEN 
                                      ALTER TABLE t_typenote add descrip_en varchar(200)  
                                  End If;

if exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_typenote' and column_name = 'descrip_en') THEN 
    Update t_typenote set descrip_en = descrip || ' (en)' 
End If;

if exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_typenote' and column_name = 'descrip_en') THEN 
    ALTER TABLE t_typenote MODIFY descrip_en varchar(200) NOT NULL 
End If;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_system_codes' and column_name = 'code_assoc_char') THEN 
    alter table t_system_codes add code_assoc_char varchar(100) 
End If;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                where table_name = 't_system_codes' and column_name = 'code_assoc_num') THEN 
     alter table t_system_codes add code_assoc_num integer 
End If;

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0092fr','Exclamation!','Vous devez entrer un montant supérieur à 0.00$ pour continuer.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0092fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0092an','Exclamation!','You must enter an amount greater than 0.00$ to continue.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0092an');

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0093fr','Avertissement!','Aucun remboursement n''a été exécuté étant donné les montants tous à 0.00$.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0093fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0093an','Warning!','No payment were executed since all amounts are at $ 0.00.','Information!','OK!',1,0,'N','N',NULL,'N' where not exists (select * from messages where msgid = 'DENT0093an');

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0094fr','Avertissement!','Vous ne pouvez pas entrer un montant plus grand que ce qui est disponible.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0094fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0094an','Warning!','You cannot enter an amount greater than what''s available.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0094an');

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0095fr','Avertissement!','Pour effectuer le paiement sur le terminal, vous devez avoir le même professionnel sinon un deuxième remboursement est requis.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0095fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0095an','Warning!','To  make a payment on the terminal, you must  have the same professional or another refund is required.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0095an');

update t_users set password = 'vXy*jgs=xBMl' where id_user = 0;

ALTER TABLE t_options MODIFY txnotean varchar(10000) DEFAULT NULL;
