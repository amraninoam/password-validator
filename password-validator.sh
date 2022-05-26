#! /usr/bin/bash

#read -r -p "Enter a PW: " user_password

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [![$1 =~ [0-9] ]]
     then
        #invalid password
        return 1
    else 
        return 0
    fi
}

function Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if [![^[A-Z]+$ ]]
     then
        #invalid password
        return 1
    else 
        return 0
    fi
}

function Check_lowercase()
{
     #This function checks if the password doesn't contain lower case letters
    if [![^[a-z]+$ ]]
     then
        #invalid password
        return 1
    else 
        return 0
    fi
}

len=$1
password_length=${#len[@]}
if [ $password_length -lt 10 ]
then
    echo "Password length is under 10"
    exit 1
elif [ Check_numbers()]
then
    echo "Password has no numbers"
    exit 1
elif [ Check_capitals()]
then 
    echo "Password has no capital case letters"
    exit 1
elif [ Check_lowercase()]
then
    echo "Password has no lower case letters"
    exit 1
else
    echo "valid password"
    exit 0
fi