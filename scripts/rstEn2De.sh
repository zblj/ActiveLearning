#!/bin/sh
src = ./activelearning/source 
dest = ./activelearning-de/source
cd ${src}
for file in Activity_*.rst do
    trans :de file://${file} > "${dest}/${file}"
done
