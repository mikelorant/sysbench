#!/usr/bin/env sh

green=`tput setaf 2`
magenta=`tput setaf 5`
reset=`tput sgr0`

echo "${green}Starting test${reset}: ${magenta}fileio${reset} mode: ${magenta}sequential write${reset}"
echo
sysbench fileio --file-test-mode=seqwr run

echo "${green}Starting test${reset}: ${magenta}fileio${reset} mode: ${magenta}random read write${reset}"
echo
sysbench --verbosity=2 fileio prepare
sysbench fileio --file-test-mode=rndrw run
