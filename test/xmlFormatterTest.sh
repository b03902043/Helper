#!/bin/bash

cd "$(dirname $0)"

source "../libs/ColorEcho.bash"

Fail=$(perl ../xmlFormatter.pl ../examples/dummy.xml | \
  grep -o "=" | awk '{ if(length >= 2) print "Failed" }')

if [[ $Fail ]]; then
	echo.Red Test failed
else
	echo.Yellow Test passed
fi
