SELECT n_name, COUNT(*) FROM
	ORDERS
	INNER JOIN
	(NATION INNER JOIN CUSTOMER ON n_nationkey = c_nationkey)
	ON c_custkey 
GROUP BY n_nationkey
ORDER BY COUNT(*) DESC;
