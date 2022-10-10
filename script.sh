#!/bin/bash

echo "[Interest Score:Soccer World Cup]"
rm -rf interest*
scores_from_csv=$(tail -n +4 ./geoMap.csv | cut -d, -f2| sed 's/^$/0/g')
echo $scores_from_csv | sed 's/\s/\n/g'
echo $scores_from_csv | sed 's/\s/\n/g' > interest-scores.txt
