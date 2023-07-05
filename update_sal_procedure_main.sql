declare
	n number:=&no;
	r emp2%rowtype;
begin
	raisesal(n);
	select * into r from emp2 where empno = n;
	dbms_output.put_line(r.empno||' '||r.salary);

end;
