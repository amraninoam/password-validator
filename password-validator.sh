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
        return 1
    else
        return 0
    fi
}


function Check_lowers()
{
    #This function checks if the password doesn't contain lower case letters
    if ! [[ $@ =~ [a-z] ]];
     then
        #invalid password
        echo -e " ${red} Password has no lower case letters"
        return 1
    else
        return 0
    fi
}

function Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if ! [[ $@ =~ [A-Z] ]];
     then
        #invalid password
        echo -e " ${red} Password has no capital letters"
        return 1
    else
        return 0
    fi
}

len=$@
password_length=${#len}
if [ $password_length -lt 10 ]
then
    echo "Password length is under 10"
    exit 1
#elif [[ Check_numbers && Check_lowers && Check_capitals ]]; then
   #echo -e "${green} Valid password"
else
     num1=Check_numbers
     num2=Check_lowers
     num3=Check_capitals
     if [[ [num1 && num2 && num3 ] == 0 ]]; then
        echo -e "${green} Valid password"
    fi

fi
