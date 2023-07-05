create or replace function incr(n number) return number as
	s number;
begin
	select salary into s from emp2 where empno=n;
	if s <= 3000 then 
		s:=0.3*s;
	elsif s>3000 and s<=6000 then
		s:=0.2*s;
	else    
		s:=0.1*s;
	end if;
	return s;
end;
