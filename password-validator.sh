#! /usr/bin/bash

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [![$@ =~ [0-9]]]
     then
        #invalid password
        echo "Password has only characters"
        exit 1
    fi
}


function Check_characters()
{
    #This function checks if the password doesn't contain numbers
    if [ $@ =~ ^[0-9]+$ ]
     then
        #invalid password
        echo "Password has only numbers"
        exit 1
        
    fi
}

function Check_specialChars()
{
    #This function checks if the password contains special characters
    if [ ![$@ =~ ^[[:alnum:]]+$] ]
     then
        #invalid password
        echo "Password contains special characters"
        exit 1

    fi
}

function Check_capitalsAndSmalls()
{
    #This function checks if the password doesn't contain capital case letters
    if [ $@ =~ ^[aA] ]
     then
        #invalid password
        echo "Password has no both capital and small case letters"
        exit 1
    fi
}

len=$@
password_length=${#len}
#echo $len
if [ $password_length -lt 10 ]
then
    echo "Password length is under 10"
    exit 1
else
    Check_numbers
    Check_characters
    Check_specialChars
    Check_capitalsAndSmalls
    
fi
