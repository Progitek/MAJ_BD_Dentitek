delete t_transasscas;

insert into t_transasscas(id_visit, compte, datetrans, montant, prixlab, prixlab2)  
													  select (select vis.id_visit from t_visites as vis where vis.no_visit = t_visites.no_visit and vis.typevisit = 'F'), t_factures.compte, t_visites.visitdate, coalesce(sum(coalesce(t_factures.montant,0) * coalesce(t_factures.qte,0)),0), coalesce(sum(coalesce(t_factures.prixlab,0)),0), coalesce(sum(coalesce(t_factures.prixlab2,0)),0) 
													  from t_visites INNER JOIN t_factures ON t_visites.id_visit = t_factures.id_visit 
													  where t_visites.typevisit = 'C' and 
																 coalesce(t_visites.trasscas,0) = 1  
													  group by t_visites.id_visit, t_visites.visitdate, t_factures.compte, t_visites.no_visit; 

