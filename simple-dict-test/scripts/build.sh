#!/bin/bash

test_app_folder_name="simple-dict-test"
if [ "$(basename $(pwd))" != "$test_app_folder_name" ]; then
    echo "Must be executed from $test_app_folder_name folder"
    exit
fi

pebble clean && cd .. && pebble build || cd $test_app_folder_name && cd $test_app_folder_name &&  pebble build
