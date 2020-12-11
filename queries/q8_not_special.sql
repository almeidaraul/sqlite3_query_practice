clientes que n tem order + clientes que tem order, mas n tem comment specialrequest

pegando os que não tem order:
select count(*) from customer left join orders on customer.c_custkey = orders.o_custkey where orders.o_custkey is null;

pegando os que tem order sem comment special request
select count(*) from customer inner join orders on customer.c_custkey = orders.o_custkey where orders.o_comment like "%special request%"



RESPOSTA ABAIXO?
sqlite> select count(*) from (
   ...>     select * from (customer c left join orders o on c.c_custkey = o.o_custkey and o.o_custkey is null)
   ...>     union
   ...>     select * from (customer c inner join orders o on c.c_custkey = o.o_custkey) where o.o_comment not like "%special request%"
   ...> );
16359

