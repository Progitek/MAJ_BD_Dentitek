Insert into t_blocvente (nomblocvente, etatbloc) select 'MedHelper', 0 from dummy where not exists (select * from t_blocvente where nomblocvente = 'MedHelper');

If not exists(select 1 from t_system_codes where code = 'CMH003') then 
												INSERT INTO t_system_codes (code, nom_fr, nom_an, ordre) VALUES ('CMH003', 'Voir l''historique', 'View history', 30);
											End If;