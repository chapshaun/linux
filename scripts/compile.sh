#!/bin/bash

clear
echo "----- CLANG-FORMAT -----"
clang-format-8 -i -style=file *.cpp *.hpp
echo "----- COMPILE -----"
g++ -Wall -Wextra -pedantic *.cpp
echo "----- RUN -----"
./a.out
rm a.out
