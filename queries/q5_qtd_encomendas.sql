SELECT n_name, COUNT(o_orderkey) FROM
	ORDERS
	INNER JOIN
	(NATION INNER JOIN CUSTOMER ON n_nationkey = c_nationkey)
	ON c_custkey = o_custkey
GROUP BY n_nationkey
ORDER BY COUNT(o_orderkey) DESC;
