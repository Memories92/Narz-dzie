#!/bin/bash

test "${1}" = "--date" || test "${1}" = "-d" && date
test "${1}" = "--logs" || test "${1}" = "-l" && n=${2:-100} && seq ${n} | while read i; do mkdir log${i}; echo "log${i}/log${i}.txt | ${0} | $(date)" > log${i}/log${i}.txt; done
test "${1}" = "--error" || test "${1}" = "-e" && n=${2:-100} && seq ${n} | while read i; do mkdir error${i}; echo "error${i}/error${i}.txt | ${0} | $(date)" > error${i}/error${i}.txt; done
test "${1}" = "--help" || test "${1}" = "-h" && echo "Dostępne opcje to: $0 --date | --logs <n> (Domyślnie: 100)"
test "${1}" = "--init" && git clone https://github.com/Memories92/Narz-dzie.git && export PATH=$(pwd)/Narz-dzie:${PATH}
