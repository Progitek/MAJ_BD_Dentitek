Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'medication') Then alter table t_quest_medical modify medication VARCHAR(200) NULL end;
Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_quest_medical' and syscolumn.column_name = 'siouilesquel') Then alter table t_quest_medical modify siouilesquel VARCHAR(200) NULL end;

