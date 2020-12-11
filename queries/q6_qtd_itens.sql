SELECT n_name, SUM(LINEITEM.l_quantity) FROM
	NATION
	INNER JOIN (
		LINEITEM
		INNER JOIN
		(CUSTOMER INNER JOIN ORDERS ON o_custkey = c_custkey)
		ON LINEITEM.l_orderkey = ORDERS.o_orderkey
	) 
	ON CUSTOMER.c_nationkey = NATION.n_nationkey 
GROUP BY c_nationkey
ORDER BY SUM(LINEITEM.l_quantity) DESC
LIMIT 10;
