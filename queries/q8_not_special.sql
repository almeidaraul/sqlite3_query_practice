SELECT COUNT(*) FROM (
	SELECT DISTINCT c_custkey FROM CUSTOMER
	EXCEPT
	SELECT DISTINCT c_custkey FROM CUSTOMER INNER JOIN ORDERS
	ON c_custkey = o_custkey 
	WHERE o_comment LIKE "%special request%"
);
