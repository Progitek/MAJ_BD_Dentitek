ALTER PROCEDURE agedescomptes( in adt_date date,in as_compte char(3),in al_spec integer,in ab_phase bit,in spectlist varchar(1000) ) 
														result( patid integer,cour decimal(8,2),trente decimal(8,2),soixante decimal(8,2),quatredix decimal(8,2) ) begin declare dtelimite date;set dtelimite = days(adt_date,-90); 
														  create table #tmpcomptes( 
															 patient integer not null, 
															 dte date not null, 
															 mnt decimal(8,2) not null, 
															 ); 
														  insert into #tmpcomptes(select t_visites.id_patient, 
																if visitdate < dtelimite then dtelimite else visitdate endif as dte, 
																isnull(sum(isnull(montant,0)*isnull(qte,0)+isnull(prixlab,0)+isnull(prixlab2,0)+isnull(monttps,0)+isnull(monttvq,0)-isnull(rabais,0)),0) 
																from t_visites join t_factures on t_visites.id_visit = t_factures.id_visit join t_traitements on t_traitements.id_traitement = t_visites.id_traitement 
																where visitdate <= adt_date and typevisit in( 'F','C' ) 
																and(t_factures.compte = as_compte or as_compte is null) 
																and((spectlist is null and t_visites.id_specialist = al_spec) 
																or(spectlist is not null and t_visites.id_specialist = any(select number from list_to_inttbl(spectlist)))) 
																and(sign(t_traitements.phase) = sign(ab_phase) or ab_phase is null) 
																group by t_visites.id_patient,dte); 
														  insert into #tmpcomptes(select t_paiements.id_patient, 
																if paiedate < dtelimite then dtelimite else paiedate endif as dte,isnull(sum(t_paiements.montant),0)*-1 
																from t_paiements join t_traitements on t_traitements.id_traitement = t_paiements.id_traitement 
																where paiedate <= adt_date 
																and(t_paiements.compte = as_compte or as_compte is null) 
																and((spectlist is null and t_paiements.id_specialist = al_spec) 
																or(spectlist is not null and t_paiements.id_specialist = any(select number from list_to_inttbl(spectlist)))) 
																and(sign(t_traitements.phase) = sign(ab_phase) or ab_phase is null) 
																group by t_paiements.id_patient,dte); 
														  select t_patients.id_patient,isnull(sum(isnull(if #tmpcomptes.dte > days(adt_date,-30) and #tmpcomptes.dte <= adt_date then #tmpcomptes.mnt else 0 endif,0)),0) as courant,isnull(sum(isnull(if #tmpcomptes.dte > days(adt_date,-60) and #tmpcomptes.dte <= days(adt_date,-30) then #tmpcomptes.mnt else 0 endif,0)),0) as trentejour,isnull(sum(isnull(if #tmpcomptes.dte > days(adt_date,-90) and #tmpcomptes.dte <= days(adt_date,-60) then #tmpcomptes.mnt else 0 endif,0)),0) as soixantejour,isnull(sum(isnull(if #tmpcomptes.dte <= days(adt_date,-90) then #tmpcomptes.mnt else 0 endif,0)),0) as quatredixjour from t_patients join #tmpcomptes on #tmpcomptes.patient = t_patients.id_patient group by t_patients.id_patient having courant+trentejour+soixantejour+quatredixjour <> 0 
														end;

update t_fusionpublipostage set requetesql = 'SELECT if(isnull((select refpat from t_referents where id_referent = r.id_referent),0)) = 1 then (select salutation from t_patients inner join t_salutation on t_salutation.id_sal = t_patients.id_sal where id_patient = p.refpat) else s.salutation endif FROM t_referents r INNER JOIN t_patients p ON r.id_referent = @ra_idref LEFT OUTER JOIN t_salutation s ON s.id_sal = r.id_sal' where champfusion = '%salutation_referent%' and identifiant = 'id_patient';
update t_fusionpublipostage set requetesql = 'select if(isnull((select refpat from t_referents where id_referent = r.id_referent),0)) = 1 then (select t_patients.nom from t_patients where id_patient = p.refpat) else ref_nom endif from t_referents r inner join t_patients p on r.id_referent = @ra_idref' where champfusion = '%nom_referent%' and identifiant = 'id_patient';
update t_fusionpublipostage set requetesql = 'select if(isnull((select refpat from t_referents where id_referent = r.id_referent),0)) = 1 then (select t_patients.prenom from t_patients where id_patient = p.refpat) else ref_prenom endif from t_referents r inner join t_patients p on r.id_referent = @ra_idref' where champfusion = '%prenom_referent%' and identifiant = 'id_patient';
delete t_fusionpublipostage where identifiant = 'id_patient' and champfusion in ('%today_date%', '%today_heure%', '%today_jour%', '%today_mois%', '%today_annee%');
INSERT INTO t_fusionpublipostage (itemmenu,champfusion,nomreq,tablereq,identifiant,requetesql,id_parent,masqueformat) VALUES('Date','%today_date%',NULL,NULL,'id_patient','SELECT today() FROM t_patients',(select max(id_fusionpublipostage) from t_fusionpublipostage where itemmenu = 'Date du jour'),'dd-mm-yyyy');
INSERT INTO t_fusionpublipostage (itemmenu,champfusion,nomreq,tablereq,identifiant,requetesql,id_parent,masqueformat) VALUES('Heure','%today_heure%',NULL,NULL,'id_patient','SELECT now() FROM t_patients',(select max(id_fusionpublipostage) from t_fusionpublipostage where itemmenu = 'Date du jour'),'hh:mm');
INSERT INTO t_fusionpublipostage (itemmenu,champfusion,nomreq,tablereq,identifiant,requetesql,id_parent,masqueformat) VALUES('Jour','%today_jour%',NULL,NULL,'id_patient','SELECT day(now()) FROM t_patients',(select max(id_fusionpublipostage) from t_fusionpublipostage where itemmenu = 'Date du jour'),NULL);
INSERT INTO t_fusionpublipostage (itemmenu,champfusion,nomreq,tablereq,identifiant,requetesql,id_parent,masqueformat) VALUES('Mois','%today_mois%',NULL,NULL,'id_patient','SELECT month(now()) FROM t_patients',(select max(id_fusionpublipostage) from t_fusionpublipostage where itemmenu = 'Date du jour'),NULL);
INSERT INTO t_fusionpublipostage (itemmenu,champfusion,nomreq,tablereq,identifiant,requetesql,id_parent,masqueformat) VALUES('Année','%today_annee%',NULL,NULL,'id_patient','SELECT year(now()) FROM t_patients',(select max(id_fusionpublipostage) from t_fusionpublipostage where itemmenu = 'Date du jour'),NULL);

