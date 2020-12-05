#!/bin/bash
# args: GRR (numbers only)
cd queries
tar -czvf GRR$1.tar.gz *.sql
cd ..
mv queries/GRR* .
