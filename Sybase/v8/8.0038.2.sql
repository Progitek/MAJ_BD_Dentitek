Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'pere') Then alter table t_quest_medical modify pere VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'mere') Then alter table t_quest_medical modify mere VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'garderie') Then alter table t_quest_medical modify garderie VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'medicationlaquel') Then alter table t_quest_medical modify medicationlaquel VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'vitamineslesquel') Then alter table t_quest_medical modify vitamineslesquel VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'trouble') Then alter table t_quest_medical modify trouble VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'sioui') Then alter table t_quest_medical modify sioui VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'collatio') Then alter table t_quest_medical modify collatio VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'telpere') Then alter table t_quest_medical modify telpere VARCHAR(20) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'telmere') Then alter table t_quest_medical modify telmere VARCHAR(20) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'siouilesquel') Then alter table t_quest_medical modify siouilesquel VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'tel') Then alter table t_quest_medical modify tel VARCHAR(20) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'poste') Then alter table t_quest_medical modify poste VARCHAR(20) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'lesquels') Then alter table t_quest_medical modify lesquels VARCHAR(200) NULL end;

Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'specialite') Then alter table t_quest_medical modify specialite INTEGER NULL end;

