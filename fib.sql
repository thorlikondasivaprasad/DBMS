set serveroutput on
declare
a number :=0;
b number :=1;
temp number;
n number :=5;
i number;
begin
	dbms_output.put_line(a);
	dbms_output.put_line(b);
	for i in 2..n loop
		temp :=a+b;
	a :=b;
	b :=temp;
	dbms_output.put_line(temp);
	end loop;
end;	
