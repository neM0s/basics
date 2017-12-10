#!/bin/bash
#base for getops

while getopts "abc:d:e" myoptions
do
        case $myoptions in
            a ) echo "The option -a was used." ;;
            b ) echo "The option -b was used." ;;
            c ) option_c="$OPTARG"
                echo "Option c has been set to $option_c." ;;
            d ) option_d="$OPTARG"
                echo "Option d has been set to $option_d." ;;
            e ) echo "The option -e was used." ;;
        esac
done
echo
