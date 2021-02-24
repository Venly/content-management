#!/bin/bash
rm all.json
touch all.json
echo [ >> all.json
unset previousFileName
ls *.json | while read fileName; do
    if [ ${fileName} != "all.json" ]; then
        if ! [ -z "$previousFileName" ]; then
            echo , >> all.json
        fi;
        cat ${fileName} >> all.json
    fi;
    previousFileName=$fileName
done;
echo ] >> all.json
