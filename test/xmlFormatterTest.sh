#!/bin/bash

cd "$(dirname $0)"

source "../libs/ColorEcho.bash"

arr=$(perl ../xmlFormatter.pl ../examples/dummy.xml | \
  grep -o "=" | awk '{ print length }')
for i in ${arr}; do
  if [[ $i -ge 2 ]]; then
    echo.Red Test failed
    exit 1
  fi
done
echo.Yellow Test passed
