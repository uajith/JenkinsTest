#!/bin/bash
val=$(python3 rand_number.py)
if [ $val == 9 ]
then
	echo SUCCESS
else
	echo FAIL
fi
