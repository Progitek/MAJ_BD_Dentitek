Update t_sanspapiers_cegep_montpetit 
Set text102 =	SubString(	Case When text102 is null Then '' Else text102 + Char(13) + CHAR(10) End + 
									Case When text103 is null Then '' Else text103 + Char(13) + CHAR(10) End +
									Case When text104 is null Then '' Else text104 + Char(13) + CHAR(10) End +
									Case When text105 is null Then '' Else text105 + Char(13) + CHAR(10) End +
									Case When text106 is null Then '' Else text106 End, 1, 500), 
	 text111 =	SubString(	Case When text111 is null Then '' Else text111 + Char(13) + CHAR(10) End +
									Case When text112 is null Then '' Else text112 + Char(13) + CHAR(10) End +
									Case When text113 is null Then '' Else text113 + Char(13) + CHAR(10) End +
									Case When text114 is null Then '' Else text114 + Char(13) + CHAR(10) End +
									Case When text115 is null Then '' Else text115 End, 1, 500);
								
