if not exists (SELECT 1 FROM systab join systabcol on systab.table_id = systabcol.table_id WHERE systab.table_name = 't_apptpv' and systabcol.column_name = 'clover_device_id' ) Begin ALTER TABLE t_apptpv ADD clover_device_id VARCHAR(100) NULL,  ADD clover_device_name VARCHAR(100) NULL End;
CREATE TABLE t_droitsusagersbkp (id_user integer NOT NULL DEFAULT NULL, objet varchar(200) NOT NULL DEFAULT NULL, bkpdate date NOT NULL DEFAULT NULL, PRIMARY KEY (id_user, objet, bkpdate));

CREATE TABLE t_system_providers &
													(id_provider INTEGER NOT NULL DEFAULT AUTOINCREMENT,  
													 nom_provider varchar(30) NOT NULL, 
													 description varchar (100), 
													is_cas integer default 0, 
													is_ass integer default 0, 
													is_ramq integer default 0, 
													 PRIMARY KEY ( id_provider ASC ) 
													);

insert into t_system_providers (nom_provider, description, is_cas, is_ass, is_ramq) values ('ramq', 'ramq', 0, 0, 1);
Delete from t_blocvente Where nomblocvente = 'Analytiques';