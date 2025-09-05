CREATE TRIGGER "tgr_ins_t_assentete" instead of insert on DBA.t_assentete
referencing new as new_t_assentete
for each statement
begin
  declare @ls_id_assentete varchar(255);
  select top 1 id_assentete into @ls_id_assentete from new_t_assentete where id_assentete = new_t_assentete.id_assentete;
  call xp_cmdshell('IF EXIST "C:\\ii4net" (mkdir C:\\ii4net\\Assurance & forfiles /p "C:\\ii4net\\Assurance" /m * /D -1 /C "cmd /c del @path" & type nul > C:\\ii4net\\Assurance\\' || @ls_id_assentete || ')');
  insert into t_assentete select * from new_t_assentete
end;

 	

 insert into t_system_codes ( code, nom_fr, nom_an, ordre, code_assoc_char, code_assoc_num ) select  'ACT001', 'Tous', 'All', 1, Null, null from dummy where not exists (select * from t_system_codes where code = 'ACT001');
 
 insert into t_system_codes ( code, nom_fr, nom_an, ordre, code_assoc_char, code_assoc_num ) select  'ACT002', 'Actif', 'Active', 2, Null, 1 from dummy where not exists (select * from t_system_codes where code = 'ACT002');
 
 insert into t_system_codes ( code, nom_fr, nom_an, ordre, code_assoc_char, code_assoc_num ) select  'ACT003', 'Inactif', 'Inactive', 3, Null, 0 from dummy where not exists (select * from t_system_codes where code = 'ACT003');
 

 delete t_window_loi5;
 

 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_assauto', 'Autorisation', 'Authorization', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_assauto' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_billet_dabsence', 'Billet dabsence', 'Absence voucher', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_billet_dabsence' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_dossfin', 'Dossier Finance', 'Financial file', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_dossfin' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_dossierpat', 'Dossier Patient', 'Patient File', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_dossierpat' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etiqchoix', 'Édition étiquette', 'Edit label', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etiqchoix' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_ententefinanciere', 'Entente financière', 'Financial agreement', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_ententefinanciere' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_fact', 'Facture', 'Invoice', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_fact' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_formasseob', 'Formulaire de détail des prestations', 'Explaination of benefits form', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_formasseob' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_formassrej', 'Formulaire de refus de prestation', 'Reject claim form', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_formassrej' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_formtrans', 'Formulaire de transfert', 'Transfer form', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_formtrans' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_histdent', 'Historique dentaire', 'Dental History', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_histdent' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etiquettes', 'Imprimer des étiquettes', 'Print labels', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etiquettes' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etiquettes2', 'Imprimer des étiquettes (ancienne version)', 'Print labels (old version)', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etiquettes2' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_dentonew', 'Ondotogramme', 'Dental Chart', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_dentonew' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_factpaie', 'Paiement', 'Payment', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_factpaie' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_paro3', 'Parogramme', 'Parogram', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_paro3' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_plantraitement', 'Plan de traitement', 'Treatment plan', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_plantraitement' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rx_2', 'Prescription', 'Prescription', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rx_2' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_questmedic', 'Questionnaire médicale', 'Medical history', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_questmedic' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_complquestmedafaire', 'Questionnaire médicale complémentaire', 'Complementary medical history', NULL, 0, NULL from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_complquestmedafaire' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_recevablecompte', 'Âges des comptes', 'Aging report', 't_paiements_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_recevablecompte' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_r_analyse_efficace_sys_rap', 'Analyse de lefficacité du système de rappel', 'Efficiency analysis recall system', 't_patients_id_patient', 1, 'dw_r_analyse_efficace_sys_rap' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_r_analyse_efficace_sys_rap' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_honorparmod ', 'Analyse des honoraires par période', 'Income analysis by period', 't_patients_id_patient', 1, 'dw_honorparmod' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_honorparmod ' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_balancepayeenc', 'Balancement des paiements', 'Payments rectification', 't_patients_id_patient', 1, 'dw_balancepayeenc' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_balancepayeenc' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_lab', 'Cas de laboratoire', 'Laboratory case', 't_lab_id_patient', 1, 'dw_lab' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_lab' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_comptes_clients', 'Comptes clients', 'Customer account', 't_patients_id_patient', 1, 'dw_comptes_clients' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_comptes_clients' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_compterecevable', 'Comptes recevables', 'Accounts Receivable', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_compterecevable' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_arrangecr', 'Correction des paiements inutilisés', 'Unsued payments correction', 't_paiements_id_patient', 1, 'dw_paieinu2_corr' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_arrangecr' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_procedureparpatfact', 'Détail des patients par procédure', 'Detail of patient by treatment', 't_patients_id_patient', 1, 'dw_procedureparpatfact' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_procedureparpatfact' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_cpdenc', 'Encaissement des postdatés', 'Cash postdated', 't_cpd_id_patient', 1, 'dw_cpddet' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_cpdenc' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_journal_depotold', 'Encaissement par modalité', 'Cash by FOP', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_journal_depotold' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etatcomptelist', 'État de compte', 'Statement', 'id_patient', 1, 'dw_etatcomptelist' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etatcomptelist' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etatnoterap', 'État des notes de rappel', 'Denturist recalls', 't_patients_id_patient', 1, 'dw_rappelbasecode' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etatnoterap' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_etatrdv', 'État des rendez-vous', 'Appointment state list', 't_patients_id_patient', 1, 'dw_etatrdv' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_etatrdv' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappfactdesc', 'Facture note', 'Invoice note', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappfactdesc' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_factimpage', 'Factures impayées', 'Unpaid invoices', 't_patients_id_patient', 1, 'dw_factimpage' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_factimpage' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappfinannee', 'Fin dannée', 'Year end report', 't_paiements_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappfinannee' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_r_gestion_temps_console', 'Gestion du temps', 'Time management', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_r_gestion_temps_console' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_specparprod', 'Honoraires de dentiste par producteur', 'Fees by dentist by producer', 't_patients_id_patient', 1, 'dw_honor' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_specparprod' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_montfactparfact', 'Honoraires par patient par période', 'Fees by patient by period', 't_patients_id_patient', 1, 'dw_patientvujournee' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_montfactparfact' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_recuumpgloblot', 'Impression des reçus pour impôt', 'Print tax receipt', 't_patients_id_patient', 1, 'dw_recuimpgloblot' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_recuumpgloblot' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patientinfo', 'Infomations détaillées par patient', 'Detailed information by patient', 't_patients_id_patient', 1, 'dw_patientinfo' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patientinfo' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listcpd', 'Journal des chèques postdatés', 'Postdated cheques list', 't_cpd_id_patient', 1, 'dw_listcpd' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listcpd' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_journal_depot', 'Journal des dépôts', 'Deposit report', 't_patients_id_patient', 1, 'dw_journal_depot' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_journal_depot' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_depot_compact', 'Journal des dépôts compact', 'Compact deposit log', 't_patients_id_patient', 1, 'dw_depot' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_depot_compact' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_journal_encaissements', 'Journal des encaissements', 'Payment journal', 't_patients_id_patient', 1, 'dw_journal_encaissements' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_journal_encaissements' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_journal_honoraires', 'Journal des honoraires', 'Income journal', 't_patients_patid', 1, 'dw_journal_honoraires' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_journal_honoraires' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappfactdet', 'Journal des honoraires détaillés', 'Detailled income journal', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappfactdet' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappfactdet_encaissement', 'Journal des honoraires détaillés avec encaissements', 'Detailled income journal with payment', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappfactdet_encaissement' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_lier_paiement_facture', 'Lier paiements aux factures', 'Link payments with invoices', 't_paiements_id_patient', 1, 'dw_paieinu2_corr' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_lier_paiement_facture' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_liste_anniversaires', 'Liset de naissance', 'Birthdate list', 't_patients_id_patient', 1, 'dw_anniversaires' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_liste_anniversaires' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listecompdd', 'Liste comparative périodique', 'Comparative period list', 't_patients_id_patient', 1, 'dw_listcompdd' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listecompdd' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patville', 'Liste complète des patients', 'Patients by city', 'id_patient', 1, 'dw_patville' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patville' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_infordv', 'Liste dattente prioritaire', 'Priority appointment list', 't_patients_id_patient', 1, 'dw_infordv' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_infordv' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listpatplan', 'Liste de patient ayant un plan de traitement', 'Patients list who have a treatment plans', 't_patients_id_patient', 1, 'dw_listpatplan' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listpatplan' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappelsrecurrent', 'Liste de rappel', 'Recall list', 't_patients_id_patient', 1, 'dw_rappels' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappelsrecurrent' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_list_mauvaises_creances_v2', 'Liste des ajustements', 'List of adjustments', 't_patients_id_patient', 1, 'dw_mauvaises_creances' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_list_mauvaises_creances_v2' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listcaslab', 'Liste des cas de laboratoire', 'Laboratory case', 't_patients_id_patient', 1, 'dw_listcaslab' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listcaslab' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_ramqenvoinew', 'Liste des envois à lassurance maladie du Québec', 'List of invoices sent to lassurance maladie du Québec', 't_patients_id_patient', 1, 'dw_listenvoiramqnew' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_ramqenvoinew' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_liste_factures', 'Liste des factures', 'Billing list', 't_patients_id_patient', 1, 'dw_listefact' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_liste_factures' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listfraislabo', 'Liste des frais de laboratoire', 'Laboratory fee list', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listfraislabo' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_r_nouveau_patient_groupe_age', 'Liste des nouveaux patients par group dâge', 'List of patients by age group', 'id_patient', 1, 'dw_r_nouveau_patient_groupe_age' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_r_nouveau_patient_groupe_age' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_r_nouveau_patient_mois', 'Liste des nouveaux patients par mois', 'New patient by month list', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_r_nouveau_patient_mois' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_liste_no_dossier', 'Liste des numéro de dossier', 'Patient number list', 't_patients_id_patient', 1, 'dw_anniversaires' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_liste_no_dossier' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rapppaieinu', 'Liste des paiements inutilisés', 'Unsued payment list', 't_patients_id_patient', 1, 'dw_rapppaieinu' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rapppaieinu' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patient_desabonnes', 'Liste des patients désabonné', 'Unsubscribed patients list', 't_patients_id_patient', 1, 'dw_desabonnes' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patient_desabonnes' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_liste_patient_double', 'Liste des patients en double', 'Patient duplicate list', 't_patients_id_patient', 1, 'dw_liste_patient_double' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_liste_patient_double' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patactif', 'Liste des patients par états', 'List of Patients by Status', 't_patients_id_patient', 1, 'dw_patactif' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patactif' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listpatnordv', 'Liste des patients sans rappel', 'Patient without recall', 't_patients_id_patient', 1, 'dw_listpatnordv' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listpatnordv' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listpatvuspec', 'Liste des patients vus par professionnel', 'Patient seen by professional', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listpatvuspec' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listremb', 'Liste des remboursements', 'Refund list', 't_patients_id_patient', 1, 'dw_rappremb' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listremb' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_statpat', 'Liste des services par patient', 'Service list by patient', 't_patients_id_patient', 1, 'dw_statpat' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_statpat' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listtrait', 'Liste des traitements', 'List of treatments', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listtrait' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listtypedocnonbarre', 'Liste des types des documents', 'List of Documents', 't_patients_id_patient', 1, 'dw_listtypedocnonbarre' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listtypedocnonbarre' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_logsdent', 'Logs des finances', 'Financial logs', 'id_patient', 1, 'dw_logfacture/dw_logpaiement' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_logsdent' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_log_tpv', 'Logs des TPV', 'POS logs', 't_tpvconfig_id_patient', 1, 'dw_1' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_log_tpv' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_famille', 'Membres dune famille', 'Family members', 't_personnes.id_personne', 1, 'dw_listpatfam' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_famille' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_moniteurrdv', 'Moniteur de rendez-vous', 'Appointment monitor', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_moniteurrdv' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_casesummarytracker', 'Moniteur valeur cas', 'Case summary tracker', 't_patients_id_patient', 1, 'dw_casesummarytracker' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_casesummarytracker' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_refdossier', 'Nouveaux patients par référent', 'New patients by referral', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_refdossier' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_paiedentnew', 'Paie de dentiste', 'Dentist salary', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_paiedentnew' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_dentpourcprod', 'Paie par producteur', 'Dentist salary by producer', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_dentpourcprod' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_dentpourc', 'Paie sur encaissement', 'Dentist salary by payment', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_dentpourc' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_paiementass', 'Paiement des assurances', 'Insurance payments', 't_patients_id_patient', 1, 'dw_paiementass' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_paiementass' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_encparmodop', 'Paiement par opérateur', 'Payments by operator', 't_patients_id_patient', 1, 'dw_encmodparop' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_encparmodop' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patproc', 'Patients par procédure', 'Patient by treatment', 't_patients_id_patient', 1, 'dw_patproc' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patproc' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patientvujourneeparop', 'Patients vu dans une période donnée par opérateur ', 'Patients seen during selected period by operator', 't_patients_id_patient', 1, 'dw_patientvujournee' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patientvujourneeparop' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patientvujournee', 'Patients vus dans une période donnée', 'Patients seen during selecte period', 't_patients_id_patient', 1, 'dw_patientvujournee' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patientvujournee' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_pourcentagetraitement', 'Pourcentage des traitements', 'Percentage treatment', 't_patients_id_patient', 1, 'dw_pourcentagetraitement' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_pourcentagetraitement' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patient_visite_paie', 'Producteur vs paie', 'Producer vs dentist salary', 't_patients_id_patient', 1, 'dw_patient_visite_paie' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patient_visite_paie' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappelperscode', 'Rappels denturologiste', 'Bounding base recalls', 't_patients_id_patient', 1, 'dw_rappelbasecode' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappelperscode' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_suivimebdenturo', 'Rappels mise en bouche denturologiste', 'Denturist recalls ver. 2', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_suivimebdenturo' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rapport_rx', 'Rapport des prescriptions', 'Prescription report', 't_rx_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rapport_rx' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rdv_par_heure', 'Rdv par heure', 'Appointment by hour', 't_horrdvpat_id_patient', 1, 'dw_rdv' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rdv_par_heure' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rechpat_v2', 'Recherche patient', 'Advance Search', 't_patients_id_patient', 1, 'dw_2' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rechpat_v2' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_fraislabfinjourdetailpat', 'Répartition des frais de laboratoire', 'Laboratory fee breakdown', 'id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_fraislabfinjourdetailpat' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patientinfo_compte', 'Statistique par compte', 'Statistics by account', 't_patients_id_patient', 1, 'dw_patientinfo' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patientinfo_compte' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_patstat', 'Statistiques patient', 'Patient Statistics', 'id_patient', 1, 'dw_patstat' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_patstat' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_suivicourriel', 'Suivi des courriels', 'E-mail follow-up', 'id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_suivicourriel' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_ramq_facture_non_payer', 'Suivi des paiements du RAMQ', 'Tracking RAMQ payments', 't_visites_id_patient', 1, 'dw_1' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_ramq_facture_non_payer' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_factcour', 'Transactions du jour', 'Current invoice', 't_patients_id_patient', 1, 'dw_factcour' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_factcour' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_validation_finances', 'Validation des finances', 'Finance validation', 't_patients_id_patient', 1, 'dw_valide_finance' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_validation_finances' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rapportcomptable', 'Vérification compte', 'Account verification', 't_visites_patid', 1, 'dw_agecomptes' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rapportcomptable' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_veriffacrramq', 'Vérification des factures (RAMQ)', 'Invoice verification (RAMQ)', 't_patients_id_patient', 1, 'dw_veriffactramq' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_veriffacrramq' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_listpatplan_comp', 'Vérification des plans de traitements', 'Treatment plan verification', 'id_patient', 1, 'dw_listpatplan' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_listpatplan_comp' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rappfactdethisto', 'Vérification facturation', 'Invoice validation', 't_patients_id_patient', 1, 'dw_rapport' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rappfactdethisto' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_recevablesassureur', 'Vérification par assureur', 'Receivable account by insurer', 't_visites_patid', 1, 'dw_agecomptes' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_recevablesassureur' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rapport_global_payment', 'Vérification TPV vs paiement', 'POS check vs payment', 't_paiements_id_patient', 1, 'dw_1' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rapport_global_payment' );
 
 Insert into t_window_loi5 ( window_loi5_name, window_loi5_desc_fr, window_loi5_desc_en, window_loi5_variable, window_loi5_isreport, window_loi5_datawindow ) Select 'w_rapport_global_payment_postdate', 'Vérification TPV vs postdaté', 'POS vs postdated verification', 't_patients_id_patient', 1, 'dw_1' from dummy  where not exists (select * from t_window_loi5 where window_loi5_name = 'w_rapport_global_payment_postdate' );
 