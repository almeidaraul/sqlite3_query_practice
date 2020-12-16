SELECT COUNT(*) FROM (
	SELECT DISTINCT c_custkey FROM CUSTOMER C 
	EXCEPT
	SELECT DISTINCT c_custkey FROM CUSTOMER C INNER JOIN ORDERS O 
	ON C.c_custkey = O.o_custkey 
	WHERE O.o_comment LIKE "%special request%"
);
