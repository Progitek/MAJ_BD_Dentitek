if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                where table_name = 't_optiongen' and column_name = 'barrer_chartes_jours') THEN 
                        alter table t_optiongen add barrer_chartes_jours integer default 3 
                END IF;

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0096fr','Avertissement!','Veuillez choisir la modalité de paiement.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0096fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0096an','Warning!','Select a type of payment.','Information!','OK!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0096an');

INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0097fr','Avertissement!','La mis-à-jour se fera pour tout les utilisateurs.','Exclamation!','OKCancel!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0097fr');
INSERT INTO messages (msgid, msgtitle, msgtext, msgicon, msgbutton, msgdefaultbutton, msgseverity, msgprint, msguserinput, msgcourriel, msgpref) select 'DENT0097an','Warning!','The update to be done for all users.','Exclamation!','OKCancel!',1,0,'N','N',NULL,'N'  where not exists (select * from messages where msgid = 'DENT0097an')

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
                                where table_name = 't_optiongen' and column_name = 'utiliserhl7') THEN 
                        alter table t_optiongen add utiliserhl7 bit null 
                END IF;

