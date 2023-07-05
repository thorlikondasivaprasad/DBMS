CREATE or replace FUNCTION ncr (n number, r number) RETURN number AS ncr  number;
BEGIN
	ncr:=trunc(fact(n)/(fact(r)*fact(n-r)));

	RETURN ncr;
END;
/
