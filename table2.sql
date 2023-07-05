 Declare
 a number:=&n;
 begin
 for i in 1..20 loop
 dbms_output.put_line(a||' X '||i||' = '|| a*i);
 end loop;
 end;


/
