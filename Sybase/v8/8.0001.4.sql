insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'ACC001', 'PAT',  'PAT',  1, 'cas', Null from dummy where not exists (select * from t_system_codes where code = 'ACC001');
insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'ACC002', 'ASS',  'INS',  2, 'ass', Null from dummy where not exists (select * from t_system_codes where code = 'ACC002');
insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'ACC003', 'RAMQ', 'RAMQ', 3, 'amq', Null from dummy where not exists (select * from t_system_codes where code = 'ACC003');
insert into t_system_codes (code, nom_fr, nom_an,ordre,code_assoc_char,code_assoc_num) select  'ACC004', 'BES',  'SSB',  4, 'bes', Null from dummy where not exists (select * from t_system_codes where code = 'ACC004');

