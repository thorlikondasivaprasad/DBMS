set serveroutput on
declare
id inventory.purchese_id%type ;
invalid_qty exception;

begin

	select purchese_id into id from inventory where quantity < 0;
	if sql%found then raise invalid_qty;
	end if;

exception
	when no_data_found then
	dbms_output.put_line('NO DATA FOUND');

	when too_many_rows then 
	dbms_output.put_line('more than one row selected where only 1 is expected');

	when invalid_qty then 
	dbms_output.put_line('INVALID QUANTITY');

	update inventory set quantity = 0 
	where purchese_id = id;
end;
