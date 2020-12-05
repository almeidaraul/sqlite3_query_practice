#!/bin/bash
if [ ! -e queries ]
then
	sudo apt-get install sqlite3 libsqlite3-dev
	wget http://www.inf.ufpr.br/eduardo/ensino/ci218/SQL/tpch.db
	mkdir queries
	cd queries
	touch q1_test.sql \
		q2_tipo_pecas.sql \
		q3_segmento_cliente.sql \
		q4_tipo_encomendas.sql \
		q5_qtd_encomendas.sql \
		q6_qtd_itens.sql
	cd ..
fi
