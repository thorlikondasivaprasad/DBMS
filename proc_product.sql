create or replace procedure mat(n in number,s out char) as
	aitem.prod_id%type;
begin 
	select prod_id into a from item where prod_id=n;
	s:='match found';
exception
	when no_data_found then
	dbms_output.put_line('match not found');
end;
