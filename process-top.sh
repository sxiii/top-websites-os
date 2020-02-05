#!/bin/bash
files=$(ls *json)
i=0
for name in ${files[@]}; do
((i++));
echo "The website $name ($i of ${#files[@]}) is using:"
cat $name | grep -B5 "Operating"
done
