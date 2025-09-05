If not exists(select 1 from t_system_codes where code = 'SAL001') then INSERT INTO t_system_codes VALUES('SAL001', 'Dr', 'Dr.', 1, 'Dr', Null) End If;	
If not exists(select 1 from t_system_codes where code = 'SAL002') then INSERT INTO t_system_codes VALUES('SAL002', 'Dre', 'Dr.', 2, 'Dre', Null) End If;	
If not exists(select 1 from t_system_codes where code = 'SAL003') then INSERT INTO t_system_codes VALUES('SAL003', 'Monsieur', 'Mr.', 3, 'Monsieur', Null) End If;	
If not exists(select 1 from t_system_codes where code = 'SAL004') then INSERT INTO t_system_codes VALUES('SAL004', 'Madame', 'Mrs.', 4, 'Madame', Null) End If;	
If not exists(select 1 from t_system_codes where code = 'SAL005') then INSERT INTO t_system_codes VALUES('SAL005', 'Denturologiste', 'Denturist', 5, 'Denturologiste', Null) End If;	
If not exists(select 1 from t_system_codes where code = 'JOB000') then INSERT INTO t_system_codes VALUES('JOB000', 'Dentiste généraliste', 'General dentist', 1, Null, 0)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB001') then INSERT INTO t_system_codes VALUES('JOB001', 'Dentiste de la santé publique', 'Public health dentist', 2, Null, 1)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB002') then INSERT INTO t_system_codes VALUES('JOB002', 'Endodontiste', 'Endodontist', 3, Null, 2)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB003') then INSERT INTO t_system_codes VALUES('JOB003', 'Anatomopathologiste buccal', 'Oral anatomical-pathologist', 4, Null, 3)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB004') then INSERT INTO t_system_codes VALUES('JOB004', 'Chirurgien buccal et maxillo-facial', 'Oral surgeon', 5, Null, 4)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB005') then INSERT INTO t_system_codes VALUES('JOB005', 'Orthodontiste', 'Orthodontist', 6, Null, 5)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB006') then INSERT INTO t_system_codes VALUES('JOB006', 'Pédodontiste', 'Pedodontist', 7, Null, 6)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB007') then INSERT INTO t_system_codes VALUES('JOB007', 'Parodontiste', 'Periodontist', 8, Null, 7)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB008') then INSERT INTO t_system_codes VALUES('JOB008', 'Radiologiste', 'Radiologist', 9, Null, 8)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB009') then INSERT INTO t_system_codes VALUES('JOB009', 'Prosthodontiste', 'Prosthodontist', 10, Null, 9)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB010') then INSERT INTO t_system_codes VALUES('JOB010', 'Denturologiste', 'Denturist', 11, Null, 10)End If;	
If not exists(select 1 from t_system_codes where code = 'JOB011') then INSERT INTO t_system_codes VALUES('JOB011', 'Plasticien', 'Plastic Surgeon', 12, Null, 11)End If;

Insert into t_blocvente (nomblocvente, etatbloc) select 'Analytik', 0 from dummy where not exists (select * from t_blocvente where nomblocvente = 'Analytik');

