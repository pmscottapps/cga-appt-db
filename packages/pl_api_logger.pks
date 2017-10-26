create or replace package pl_api_logger as
-------------------------------------------------------------------------------
--
-- ps 20140918
--
-- obs³uga logowania  
--
-------------------------------------------------------------------------------

    -- wyjatek podnoszony w przypadku braku treœci komunikatu
    ex_logger exception;
    pragma exception_init(ex_logger, -20901);

    ---------------------------------------------------------------------------

	procedure msg(p_msg in varchar2);
	
    -- log na poziomie info
    procedure info(p_log in t_api_log); 
    
    -- log na poziomie warning
    procedure warning(p_log in t_api_log); 
        
    -- log na poziomie error
    procedure error(p_log in t_api_log);         
                       
end;
/