#!/bin/bash

test "${1}" = "--date" && date
test "${1}" = "--logs" && seq 100 | while read i; do echo "log${i}.txt | ${0} | $(date)" > log${i}.txt; done
