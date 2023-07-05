create or replace function fact (n number) return number as

f number :=1;
a number :=n;

begin
	while (a>1) loop
	f:=f*a;
	a:=a-1;
	end loop;
	return f;
end;
/
