create or replace type t_api_log force as object (
    code number,
    type varchar2(1),
    msg varchar2(4000)
);
/