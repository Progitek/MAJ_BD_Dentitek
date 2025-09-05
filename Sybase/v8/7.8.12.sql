alter table t_specialists alter password varchar(255);
alter table t_users alter password varchar(255);

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_specialists' and column_name = 'affichetitre') THEN 
					 Alter Table t_specialists add affichetitre bit not null default 1 ;
				END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
															where table_name = 't_cardcredit' and column_name = 'cardtype') THEN 
												alter table t_cardcredit add cardtype as varchar(30) ;
											END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
															where table_name = 't_cardcredit' and column_name = 'cardswipeindicator') THEN 
												alter table t_cardcredit add cardswipeindicator as varchar(100) ;
											END IF;

if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
															where table_name = 't_cardcredit' and column_name = 'cardissuerid') THEN 
												alter table t_cardcredit add cardissuerid as varchar(50) ;
											END IF;

If not exists(select 1 from t_system_codes where code = 'CMH001') then 
												INSERT INTO t_system_codes (code, nom_fr, nom_an, ordre) VALUES ('CMH001', 'Ajouter au plan de soins', 'Add to care plan', 10) ;
											End If;

If not exists(select 1 from t_system_codes where code = 'CMH002') then 
												INSERT INTO t_system_codes (code, nom_fr, nom_an, ordre) VALUES ('CMH002', 'Voir le plan de soins', 'View the care plan', 20);
											End If;

If not exists(select 1 from t_system_codes where code = 'CMH003') then 
												INSERT INTO t_system_codes (code, nom_fr, nom_an, ordre) VALUES ('CMH003', 'Voir l''historique', 'View history', 30);
											End If;


