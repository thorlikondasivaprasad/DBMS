declare
-- declare variable n, m, temp
-- and temp of datatype number
	n number;
	m number;
	temp number:=0;
	rem number;
begin
	n:=5432112345;
	m:=n;
	-- while loop with condition till n>0
	while n>0
	loop
		rem:=mod(n,10);
		temp:=(temp*10)+rem;
		n:=trunc(n/10);
	end loop; -- end of while loop here
	if m = temp
	then
		dbms_output.put_line('true');
	else
		dbms_output.put_line('false');
	end if;
end;
/
