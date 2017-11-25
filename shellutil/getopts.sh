#!/bin/bash

#./getopts.sh  -a -d aaa
#./getopts.sh   -d aaa

usage_exit() {
        echo "Usage: $0 [-c] [-m dir] item ..." 1>&2
        exit 1
}

while getopts cm:h OPT
do
    case $OPT in
        c)  FLAG_C=1
            ;;
        m)  VALUE_M=$OPTARG
            ;;
        h)  usage_exit
            ;;
        \?) usage_exit
            ;;
    esac
done

shift $((OPTIND - 1))

echo $FLAG_C
echo $VALUE_M


