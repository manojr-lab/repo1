FUNCTON sample_func(p_int IN VARCHAR2)
return varchar2
IS
l_sample    VARCHAR2(50);
BEGIN
     BEGIN
     SELECT lookup_code 
     INTO  l_sample
     FROM fnd_lookup_values
     WHERE lookup_type='Sample_lookup';
     EXCEPTION
     WHEN OHERS THEN
     dbms_outpur.put_line("Error in the function);
     END;
END;
