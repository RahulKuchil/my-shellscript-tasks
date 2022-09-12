#!/bin/bash
file="/home/dt/rahul/example1"                          # file path

if [ -e "$file" ]
        then
                echo "$file Passwords are enabled"
fi

if [ -x "$file" ]
        then
                echo "You have permission to execute $file"
        else
                echo "You do not have permission to execute $file"
fi
