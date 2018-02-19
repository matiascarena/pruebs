CREATE OR REPLACE FUNCTION
validar_json
(
 p_json             jsonb
 ) RETURNS boolean AS $$
 BEGIN 
    RAISE NOTICE '%',p_json ;
    
    IF p_json ?'apellido' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
$$ LANGUAGE plpgsql;

select validar-json('{"nombre":"matias","apellido":"carena"}'::jsonb);
