#!/bin/bash
# Check file integrity
# -m method, parameter1=testing_sum, parameter2=original_sum

# Default hash calculation method
method=md5sum

# Process options
while getopts :m: opt
do
    case $opt in
        m) method=$OPTARG;;
        *) echo "Unknown option: $opt";;
    esac
done
# Shift to parameters
shift $[ $OPTIND - 1 ]

# Calculate hash and check the result
if [ $# -eq 2 ]
    then
        testing_sum=(`$method $1`)
        if [[ $testing_sum == $2 ]]
            then echo OK - $testing_sum
            else echo ERROR - $testing_sum
        fi
    else
        echo Usage: `basename $0` [-m method] filename hashvalue
        echo Default method md5sum
fi
