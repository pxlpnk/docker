#!/bin/bash

set -e
# docker pull jonsharratt/rails

for i in $( ls ); do
    (cd "$i" && bash build.sh)
    cd ..
done
