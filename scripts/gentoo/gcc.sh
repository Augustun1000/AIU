#/!bin/bash
echo "" | gcc -march=native -v -E - 2>¬1 | grep cc1
