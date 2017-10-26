create or replace package body pl_api_logger as
-------------------------------------------------------------------------------
--
-- ps 20140918
--
-- obsługa logowania  
--
-------------------------------------------------------------------------------
	
	-- test
	procedure msg(p_msg in varchar2) is
	begin
		dbms_output.put_line('msg + : ' || p_msg);
	end;

    -- log na poziomie info
    procedure info(p_log in t_api_log) is
	begin
		dbms_output.put_line('info: ' || p_log.msg);
	end; 
    
    -- log na poziomie warning
    procedure warning(p_log in t_api_log) is
	begin
		dbms_output.put_line('warning: ' || p_log.msg);
	end; 
        
    -- log na poziomie error
    procedure error(p_log in t_api_log) is
	begin
		dbms_output.put_line('error: ' || p_log.msg);
	end;         
                       
end;
/