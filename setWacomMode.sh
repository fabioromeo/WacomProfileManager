#!/bin/bash  
wacomMode=$(head -n 1 mode.txt)

if [ $wacomMode -eq 1 ]; then
        #profile 2
        wacomMode=2 && echo $wacomMode > mode.txt
        ./wacomProfile2.sh
    
    elif [ $wacomMode -eq 2 ]; then
        #profile 3
        wacomMode=3 && echo $wacomMode > mode.txt
        ./wacomProfile3.sh
    
    elif [ $wacomMode -eq 3 ]; then
        #profile 4
        wacomMode=4 && echo $wacomMode > mode.txt
        ./wacomProfile4.sh

    elif [ $wacomMode -eq 4 ]; then
        #profile 1
        wacomMode=1 && echo $wacomMode > mode.txt
        ./wacomProfile1.sh
    else
        echo "mode file corrupted, setting default"
        #profile 1
        wacomMode=1 && echo $wacomMode > mode.txt
        ./wacomProfile1.sh
fi
