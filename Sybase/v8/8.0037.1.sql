Update t_optiongen Set horaffplantraitacte = 1;
Case When exists (Select * From syscolumn inner join systable on syscolumn.table_id = systable.table_id where systable.table_name = 't_optiongen' and syscolumn.column_name = 'horaffplantraitacte') Then alter table t_optiongen modify horaffplantraitacte default 1 end;

