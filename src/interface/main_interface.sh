#!/bin/bash
source src/interface/main_interface_options.sh

function build_main_interface() {
    clear
    echo -e "############################################\n               NETWORKING TOOL \n############################################"
    
    ctr=0
    for i in ${main_interface_options[@]}; do
        if [ $ctr -ne 3 ]; then
            printf $i"\t\t"
            ctr=$(($ctr+1))
        else
            printf "\n\n$i\t\t"
            ctr=1
        fi
    done
}