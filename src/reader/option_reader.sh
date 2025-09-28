#!/bin/bash

function option_reader() {
    echo -e "\n\n"
    read -p "Select an option from the menu (enter only the corresponding number): " option
    
    options_number=${#main_interface_options[@]}
    
    option_number_valid=false
    for i in $(seq 1 $options_number); do
        if [ $i -eq $option ]; then
            option_number_valid=true
        fi
    done

    if [ $option_number_valid = "false" ]; then
        echo ${error_messages[0]}
        exit 1
    fi
}