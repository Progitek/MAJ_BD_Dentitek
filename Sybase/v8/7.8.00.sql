if not exists (SELECT 1 FROM systab join systabcol on systab.table_id = systabcol.table_id WHERE systab.table_name = 't_apptpv' and systabcol.column_name = 'clover_device_id' ) Begin ALTER TABLE t_apptpv ADD clover_device_id VARCHAR(100) NULL,  ADD clover_device_name VARCHAR(100) NULL End;
if not exists(select 1 from systable where table_name = 't_system_providers') then 
CREATE TABLE t_system_providers 
	(id_provider INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
									 nom_provider varchar(30) NOT NULL, 
									 description varchar (100), 
									is_cas integer default 0, 
									is_ass integer default 0, 
									is_ramq integer default 0, 
									 PRIMARY KEY ( id_provider ASC ) 
									) 
				end if;

if not exists(select 1 from t_system_providers where nom_provider = 'ramq') then 
				insert into t_system_providers (nom_provider, description, is_cas, is_ass, is_ramq) values ('ramq', 'ramq', 0, 0, 1) 
				end if;

Delete from t_blocvente Where nomblocvente = 'Analytiques';

if not exists(select 1 from systable where table_name = 't_system_codes') then 
CREATE TABLE t_system_codes 
				(code varchar(6) NOT NULL, 
				nom_fr varchar(100) NOT NULL, 
				nom_an varchar(100) NULL, 
				ordre numeric(3, 0) NULL, 
				 PRIMARY KEY ( code ASC )  
				) 
end if;

if not exists(select 1 from t_system_codes where code = 'SEC001') then 
				insert into t_system_codes (code, nom_fr, nom_an) values ('SEC001', 'Envoyé', 'Sent') 
				end if;

if not exists(select 1 from t_system_codes where code = 'SEC002') then 
				insert into t_system_codes (code, nom_fr, nom_an) values ('SEC002', 'En attente', 'Pending') 
				end if;

if not exists(select 1 from t_system_codes where code = 'SEC003') then 
				insert into t_system_codes (code, nom_fr, nom_an) values ('SEC003', 'Échoué', 'Failed') 
				end if;

if not exists(select 1 from t_system_codes where code = 'CDS001') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CDS001', 'À', 'To', 1) 
				end if;

if not exists(select 1 from t_system_codes where code = 'CDS002') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CDS002', 'Cc', 'Cc', 2) 
				end if;

if not exists(select 1 from t_system_codes where code = 'CDS003') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CDS003', 'Cci', 'Bcc',3) 
				end if;

 if not exists(select 1 from t_system_codes where code = 'CYN001') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CYN001', 'Oui', 'Yes', 1) 
				end if;


 if not exists(select 1 from t_system_codes where code = 'CYN002') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CYN002', 'Non', 'No', 2) 
				end if;

 if not exists(select 1 from t_system_codes where code = 'CRD001') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CRD001', 'En attente', 'Pending', 1) 
				end if;

 if not exists(select 1 from t_system_codes where code = 'CRD002') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CRD002', 'Non lu', 'Unread', 2) 
				end if;

 if not exists(select 1 from t_system_codes where code = 'CRD003') then 
				insert into t_system_codes (code, nom_fr, nom_an, ordre ) values ('CRD003', 'Lu', 'Read', 3) 
				end if;

 ALTER PROCEDURE DBA.list_to_strtbl( in list varchar(10000) ) 
																result( chaine varchar(1000) ) begin declare pos integer;declare nextpos integer;declare valuelen integer;declare strval varchar(256);create table #tbl( 
																	 chaine varchar(1000) not null,); 
																  set pos = 0; 
																  set nextpos = 1; 
																  while nextpos > 0 loop set nextpos = locate(list,',',pos+1); 
																	 set valuelen = (if nextpos > 0 then nextpos else length(list)+1 endif)-pos-1; 
																	 set strval = trim(substring(list,pos+1,valuelen)); 
																	 insert into #tbl( chaine ) values( cast(strval as varchar(1000)) ) ; 
																	 set pos = nextpos 
																  end loop; 
																  select chaine from #tbl 
																end;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id  
								where table_name = 't_message' and column_name = 'is_rocket') THEN  
					 ALTER TABLE t_message ADD is_rocket integer default 0 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_message' and column_name = 'uuid') THEN 
					 ALTER TABLE t_message ADD uuid varchar(36) null 
				END IF;

 if not exists (select * from systable where table_name = 't_message_det') THEN 
					 CREATE TABLE t_message_det (id_message_det INTEGER NOT NULL DEFAULT AUTOINCREMENT, 
																				id_message integer null, 
																					  dateenvoye timestamp not null, 
																					  message_a varchar(254) not null, 
																					  code_destn varchar(6) not null, 
																					  statut_envoie varchar(6) not null, 
																					  nbtry integer null, 
																					  message_err varchar(2000) not null, 
																					  uuid varchar(36) null, 
																				PRIMARY KEY ( id_message_det ASC )) 
				END IF;

 IF NOT EXISTS (select 1 from sysforeignkey INNER JOIN systable ON sysforeignkey.foreign_table_id = systable.table_id where role = 'fk_message_det_message' and table_name = 't_message_det') THEN 
					 ALTER TABLE t_message_det ADD CONSTRAINT fk_message_det_message NOT NULL FOREIGN KEY (id_message ASC) REFERENCES t_message ( id_message ) ON UPDATE CASCADE ON DELETE CASCADE 
				END IF;

 IF NOT EXISTS (select 1 from sysforeignkey INNER JOIN systable ON sysforeignkey.foreign_table_id = systable.table_id where role = 'fk_message_det_code_destn' and table_name = 't_message_det') THEN 
					 ALTER TABLE t_message_det ADD CONSTRAINT fk_message_det_code_destn NOT NULL FOREIGN KEY (code_destn ASC) REFERENCES t_system_codes ( code ) 
				END IF;

 IF NOT EXISTS (select 1 from sysforeignkey INNER JOIN systable ON sysforeignkey.foreign_table_id = systable.table_id where role = 'fk_message_det_code_envoie' and table_name = 't_message_det') THEN 
					 ALTER TABLE t_message_det ADD CONSTRAINT fk_message_det_code_envoie NOT NULL FOREIGN KEY (statut_envoie ASC) REFERENCES t_system_codes ( code ) 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
			   					where table_name = 't_prescription' and column_name = 'is_rocket') THEN  
					 ALTER TABLE t_prescription ADD is_rocket integer default 0 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
			   					where table_name = 't_prescription' and column_name = 'rocket_uuid') THEN 
					 ALTER TABLE t_prescription ADD rocket_uuid varchar(36) null 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_prescription' and column_name = 'rocket_statut_envoie') THEN 
					 ALTER TABLE t_prescription ADD rocket_statut_envoie varchar(6) null 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_prescription' and column_name = 'rocket_message_err') THEN 
					 ALTER TABLE t_prescription ADD rocket_message_err varchar(2000) null 
				END IF;

 CREATE OR REPLACE TRIGGER trg_ins_prescription 
																	AFTER INSERT ON t_prescription 
																REFERENCING NEW AS new_prescription 
																FOR EACH ROW 
																BEGIN 
																	IF new_prescription.is_rocket = 1 THEN 
																	  INSERT INTO t_prescriptionlogsend (id_prescription, dateAttempt, agentToken, id_response, error, status) values  
																					(new_prescription.id_prescription, new_prescription.datecreation, 'trigger_trg_ins_prescription', '-1', '', '') 
																	END IF; 
																END;;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_optiongen' and column_name = 'utiliserocketsms') THEN 
					 alter table t_optiongen add utiliserocketsms integer default 0 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_optiongen' and column_name = 'utiliserocketemail') THEN 
					 alter table t_optiongen add utiliserocketemail integer default 0 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_optiongen' and column_name = 'utiliserocketfax') THEN 
					 alter table t_optiongen add utiliserocketfax integer default 0 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
					where table_name = 't_apptpv' and column_name = 'clover_device_id') THEN 
					ALTER TABLE t_apptpv ADD clover_device_id VARCHAR(100) NULL 
					END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
					where table_name = 't_apptpv' and column_name = 'clover_device_name') THEN 
					ALTER TABLE t_apptpv ADD clover_device_name VARCHAR(100) NULL 
					END IF;


 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_patients' and column_name = 'dm_external_id') THEN 
					 alter table t_patients add dm_external_id varchar(40) 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_clinique' and column_name = 'dm_practice_id') THEN 
					 alter table t_clinique add dm_practice_id varchar(40) 
				END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
				where table_name = 't_specialists' and column_name = 'dm_doctor_id') THEN 
    alter table t_specialists add dm_doctor_id varchar(40) 
END IF;

 if not exists (select * from syscolumn inner join systable on syscolumn.table_id = systable.table_id 
								where table_name = 't_codes' and column_name = 'actif') THEN 
					 alter table t_codes add actif integer not null default 1 
				END IF;
