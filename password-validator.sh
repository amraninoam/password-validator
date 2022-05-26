#! /usr/bin/bash

read -r -p "Enter a PW: " user_password

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [![$user_password =~ [0-9] ]]
     then
        #invalid password
        return 1
    fi}

function Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if [![^[A-Z]+$ ]]
     then
        #invalid password
        return 1
    fi
}


function Check_lowercase()
{
     #This function checks if the password doesn't contain lower case letters
    if [![^[a-z]+$ ]]
     then
        #invalid password
        return 1
    fi
}

password_length= ${#user_password[@]}

if [$password_length -lt 10]
then
    echo "Password length is under 10"
    exit
elif [Check_numbers]
then
    echo "Password has no numbers"
    exit
elif [Check_capitals]
then 
    echo "Password has no capital case letters"
    exit
elif [Check_lowercase]
then
    echo "Password has no lower case letters"
    exit
else
    echo "0"
    echo "valid password"
    exit
