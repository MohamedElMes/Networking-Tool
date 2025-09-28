#!/bin/bash
source src/interface/main_interface_options.sh

function build_main_interface() {
    # When we execute the script we clear the terminal
    clear
    # Main interface
    echo -e "############################################\n               NETWORKING TOOL \n############################################"
    
    # variable $ctr used as a counter
    ctr=0
    # loop, for each option in the variable $main_interface_options we do:
    for i in ${main_interface_options[@]}; do
        # if the counter is not 3 then we print the option in the index $i, we tabulate and we add 1 to the counter variable
        if [ $ctr -ne 3 ]; then
            printf $i"\t\t"
            ctr=$(($ctr+1))
        # if its 3 then:
        else
            # we line break, print the option in the index $i and we restart the counter to 1
            printf "\n\n$i\t\t"
            ctr=1
        fi
    done
}