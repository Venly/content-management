#!/bin/bash

touch all.json
echo [ >> all.json
ls *.json | while read f; do
    if [ ${f} != "all.json" ]; then
        cat ${f} >> all.json
        echo , >> all.json
    fi;
done;
echo ] >> all.json
