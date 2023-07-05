declare
	n number:=&no;
	s number;
begin
	s:=incr(n);
	dbms_output.put_line('incr salary'||s);
	update emp2 set salary=salary+s where empno=n;
end;
/
