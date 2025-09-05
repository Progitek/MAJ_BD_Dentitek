Insert Into t_odontogramme (id_facture, id_Code, DateOdonto, Dent, Surf, id_Examen, Sauver, id_OdontoTypeMat, id_User, TypeExam, id_user_hyg, TypeTrans) 
											Select t_factures.id_facture, t_OdontoTypeMat.Description as id_Code, v.visitdate as DateOdonto, t_factures.Dent, Case when Trim(t_factures.surf) = '' Then null else t_factures.surf end as surf, tt_exam.maxExam as id_examen, 1 as sauver, t_OdontoTypeMat.id_OdontoTypeMat, t_specialists.id_user as id_user, 3 as typeexam, t_factures.Id_User as id_user_hyg, 0 as TypeTrans  
											from t_patients  
											Join (  Select distinct t_visites.id_visit, t_visites.no_visit, t_visites.id_patient, t_visites.id_specialist, p_mont.total, t_visites.visitdate  
											from t_visites  
											join t_factures on t_factures.id_visit = t_visites.id_visit  
											join (select id_patient, no_visit, sum(montant) as total  
											      from p_montvisit( null, null, null, null)  
											      where (p_montvisit.typevisit = 'F' or p_montvisit.typevisit = 'C')  
											      group by no_visit, id_patient  
											      order by id_patient, no_visit  
											      ) p_mont on p_mont.id_patient = t_visites.id_patient and p_mont.no_visit = t_visites.no_visit 
											            where (t_visites.typevisit = 'F' or t_visites.typevisit = 'C')  
											            and p_mont.total > 0  
											      ) v on v.id_patient = t_patients.id_patient  
											join t_specialists on t_specialists.id_specialist = v.id_specialist  
											join t_factures on t_factures.id_visit = v.id_visit  
											join t_codes on t_factures.id_code = t_codes.id_code  
											join t_odontotypemat on t_codes.id_odontotypemat = t_odontotypemat.id_odontotypemat  
											left join t_odontogramme on t_factures.id_facture = t_odontogramme.id_facture  
											join (Select id_patient, max(t_examen.id_examen) as maxExam, Max(TypeExam) as maxType From t_examen Where t_examen.typecharte = 0 Group by id_patient) tt_exam on t_factures.id_patient = tt_exam.id_patient  
											where t_odontogramme.id_facture is null  
											  and t_factures.Dent > 0  
											  and t_codes.id_codecle = t_factures.id_codecle;
