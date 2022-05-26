#! /usr/bin/bash

read -r -p "Enter a PW: " user_password
Check_password = 0 #valid password

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [![$user_password =~ [0-9] ]]
     then
        echo "Password has no numbers"
        #invalid password
        return 1
    fi
        }

function Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if [![^[A-Z]+$ ]]
     then
        echo "Password has no capital case letters"
        #invalid password
        return 1
    fi
}


function Check_lowercase()
{
     #This function checks if the password doesn't contain lower case letters
    if [![^[a-z]+$ ]]
     then
        echo "Password has no lower case letters"
        #invalid password
        return 1
    fi
}

password_length= ${#user_password[@]}

if [$password_length -lt 10]
 then
    echo "Password length is under 10"
    return 1
fi
else
    Check_numbers
    Check_capitals
    Check_lowercase



 