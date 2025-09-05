If Not Exists (Select 1 from t_blocvente where nomblocvente = 'Stéritraces') Then 
		 Insert into t_blocvente (nomblocvente,etatbloc) Values ('Stéritraces', 0); 
	End If;


