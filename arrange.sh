#!/bin/bash

for file in files/*
do
    filename="${file##*/}"
    first="${filename:0:1}"
    folder=$(echo "$first" | tr 'A-Z' 'a-z')

    mv "$file" "$folder/"
done