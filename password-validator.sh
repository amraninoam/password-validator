#! /usr/bin/bash
#colors
red='\033[0;31m'   # Red
green='\033[0;32m' # Green

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if ! [[ $@ =~ [0-9] ]]; then
        #invalid password
        echo -e " ${red} Password has only characters"
        exit 1
    fi
}


function Check_characters()
{
    #This function checks if the password doesn't contain numbers
    if [[ $@ =~ ^[0-9]+$ ]]; then
        #invalid password
        echo -e " ${red} Password has only numbers"
        exit 1
        
    fi
}

function Check_specialChars()
{
    #This function checks if the password contains special characters
    if ! [[ $@ =~ ^[[:alnum:]]+$ ]]; then
        #invalid password
        echo -e " ${red} Password contains special characters"
        exit 1

    fi
}

function Check_capitalsAndSmalls()
{
    #This function checks if the password doesn't contain capital case letters
    if [[ $@ =~ ^[aA] ]];
     then
        #invalid password
        echo -e " ${red} Password has no both capital and small case letters"
        exit 1
    fi
}

len=$@
password_length=${#len}
if [ $password_length -lt 10 ]
then
    echo "Password length is under 10"
    exit 1
else
   Check_characters
   Check_numbers
   Check_specialChars 
   Check_capitalsAndSmalls
   echo -e "${green} Valid password"
    
fi
