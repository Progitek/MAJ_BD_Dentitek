Update t_optcol Set analytik = (select t1.utilisee from (  SELECT t_optcol.id_optcol, &
																if exists((	select 1 from t_horspeccol where id_optcol = t_optcol.id_optcol and id_specialist = 1)) then 1 else 0 endif as utilisee &
																		    	FROM t_optcol WHERE t_optcol.actif = 1) t1 WHERE t1.id_optcol = t_optcol.id_optcol);