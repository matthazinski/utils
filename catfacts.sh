#!/bin/bash
for i in {1..5000}
do
    curl http://facts.cat/getfact >> catfacts.txt
done



