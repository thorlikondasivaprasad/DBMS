declare
	n number := &n;
	r number := &r;
	ncr1 number;
begin
	ncr1 := ncr(n,r);
	dbms_output.put_line(n||' c '||r||' = '||ncr1);
end;

/
