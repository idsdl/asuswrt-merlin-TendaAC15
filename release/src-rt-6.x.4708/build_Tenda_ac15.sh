#!/bin/bash

START_TIME=$(date +%s)

# for "Tenda AC15" use "rt-ac68u" lite profile 
make rt-ac68u SUBID="TENDA-AC15"

END_TIME=$(date +%s)
DIFF=$(( $END_TIME - $START_TIME ))
echo "It took $DIFF seconds"
