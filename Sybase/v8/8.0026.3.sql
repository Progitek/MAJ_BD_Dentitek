 Begin                                                                                                                    
    DECLARE @constraint_name VARCHAR(128);                                                         
                                                                                                                              
  SELECT c.constraint_name into @constraint_name                                                    
    FROM sysconstraint AS c                                                                                       
    JOIN systable AS t ON c.table_object_id = t.object_id                                               
    JOIN sysindex AS i ON c.ref_object_id = i.object_id                                                  
    JOIN sysidxcol AS ic ON i.index_id = ic.index_id and t.table_id = ic.table_id                
    JOIN syscolumn AS cl ON ic.column_id = cl.column_id and t.table_id = cl.table_id       
    WHERE c.constraint_type = 'U'                                                                                
      and table_name = 'T_VERSEMENTS'                                                                     
      and cl.column_name = 'datepaie';                                                                         
                                                                                                                               
    IF @constraint_name IS NOT NULL THEN                                                                
        EXECUTE IMMEDIATE 'ALTER TABLE T_VERSEMENTS DROP CONSTRAINT ' || @constraint_name; 
    END IF;                                                                                                                 
                                                                                                                               
end;