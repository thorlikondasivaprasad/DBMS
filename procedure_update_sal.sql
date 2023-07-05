create or replace procedure raisesal(n number) as
	s number;
	a number;
	exc exception;
begin
	s:=incr(n);
	select salary into a from emp2 where empno=n;
	if a is null then raise exc;
	else update emp2 set salary=salary+s where empno=n;
	end if;
exception
	when no_data_found then
		dbms_output.put_line('this employee is not exists');
	when exc then
		dbms_output.put_line('salary is null');
end;

/
