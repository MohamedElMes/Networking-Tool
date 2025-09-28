#!/bin/bash

function option_reader() {
    read option
    
    options_number=${#main_interface_options[@]}
    
    option_number_valid=false
    for i in $(seq 1 $options_number); do
        if [ $i -eq $option ]; then
            option_number_valid=true
        fi
    done

    if [ $option_number_valid = "false" ]; then
        exit 1
    fi
}