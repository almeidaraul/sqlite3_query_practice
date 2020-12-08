select n_name, count(*) from orders inner join (nation inner join customer on n_nationkey = c_nationkey) on c_custkey group by n_nationkey;
