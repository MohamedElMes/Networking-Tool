#!/bin/bash

function option_reader() {
    # Reading user option
    echo -e "\n\n"
    read -p "Select an option from the menu (enter only the corresponding number): " option
    
    # We count the number of options declared in the variable $main_interface_options
    options_number=${#main_interface_options[@]}
    
    # Variable to know if an option is valid, by default false
    option_number_valid=false

    # loop, we get from 1 to the number of options
    for i in $(seq 1 $options_number); do
        # if the option is valid then the variable $option_number_valid becomes true
        if [ $i -eq $option ]; then
            option_number_valid=true
        fi
    done

    # if after the loop; the variable $option_number_valid is still false then we throw an error and exit
    if [ $option_number_valid = "false" ]; then
        echo ${error_messages[0]}
        exit 1
    fi
}