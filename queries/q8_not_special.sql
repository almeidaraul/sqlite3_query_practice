--clientes que n tem order + clientes que tem order, mas n tem comment specialrequest

--pegando os que não tem order:
--SELECT c_custkey FROM CUSTOMER C LEFT JOIN ORDERS O ON C.c_custkey = O.o_custkey WHERE O.o_custkey IS NULL;

--pegando os que tem order sem comment special request
--SELECT c_custkey FROM CUSTOMER C INNER JOIN ORDERS O ON C.c_custkey = O.o_custkey WHERE O.o_comment LIKE "%special request%"

--faz união das duas anteriores, conta quantos custkey conseguiu



--RESPOSTA ABAIXO?
SELECT COUNT(DISTINCT c_custkey) FROM (
	SELECT c_custkey FROM CUSTOMER C LEFT JOIN ORDERS O ON C.c_custkey = O.o_custkey WHERE O.o_custkey IS NULL
	UNION
	SELECT c_custkey FROM CUSTOMER C INNER JOIN ORDERS O ON C.c_custkey = O.o_custkey WHERE O.o_comment LIKE "%special request%"
);
