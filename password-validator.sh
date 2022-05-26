#! /usr/bin/bash

#read -r -p "Enter a PW: " user_password

function Check_numbers()
{
    #This function checks if the password doesn't contain characters
    if [$@ =~ [^[:digit:]] ]
     then
        #invalid password
        echo "Password has only numbers"
        return 1
    else 
        echo "Password has not only numbers"
        return 0
        
    fi
}

function Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if [$@ =~ [^[A-Z]+$] ]
     then
        #invalid password
        echo "Password has no capital case letters"
        return 1
    else
        echo "Password has capital case letters"
        return 0

    fi
}

function Check_lowercase()
{
     #This function checks if the password doesn't contain lower case letters
    if [$@ =~ [^[a-z]+$] ]
     then
        #invalid password
         echo "Password has no lower case letters"
        return 1
    else 
        echo "Password has lower case letters"
        return 0
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
    Check_lowercase
    Check_capitals
fi

#elif [ Check_numbers -o Check_capitals -o Check_lowercase ]
#then
#    echo "invalid password"
#else
#    echo "valid password"
#    exit 0
