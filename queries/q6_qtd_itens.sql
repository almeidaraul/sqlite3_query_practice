SELECT n_name, SUM(l_quantity) FROM
	NATION
	INNER JOIN (
		LINEITEM
		INNER JOIN
		(CUSTOMER INNER JOIN ORDERS ON o_custkey = c_custkey)
		ON l_orderkey = o_orderkey
	) 
	ON c_nationkey = n_nationkey 
GROUP BY c_nationkey
ORDER BY SUM(l_quantity) DESC
LIMIT 10;
