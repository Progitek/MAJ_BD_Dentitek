Update t_window_loi5 Set window_loi5_variable = 'id_patient' where window_loi5_name = 'w_liste_patient_double';
Update t_window_loi5 Set window_loi5_variable = 'id_patient' where window_loi5_name = 'w_listpatplan';
Update t_window_loi5 Set window_loi5_variable = 't_patients_id_patient', window_loi5_datawindow = 'dw_rapport' where window_loi5_name = 'w_etatnoterap';
