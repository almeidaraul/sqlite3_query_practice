SELECT n_name, SUM(l_quantity) FROM
	NATION
	INNER JOIN (
		LINEITEM
		INNER JOIN
		(CUSTOMER INNER JOIN ORDERS ON o_custkey = c_custkey)
		ON l_orderkey = ORDERS.o_orderkey
	)
	ON c_nationkey = n_nationkey
GROUP BY c_nationkey
HAVING SUM(l_quantity) > 62000
ORDER BY SUM(l_quantity) DESC;
