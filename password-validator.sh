#! /usr/bin/bash

#read -r -p "Enter a PW: " user_password

function Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [ ![$@ =~ [0-9]] ]
     then
        #invalid password
        echo "Password has only characters"
        return 1
    else
        return 0
        
    fi
}


function Check_characters()
{
    #This function checks if the password doesn't contain numbers
    if [ [$@ =~ ^[0-9]+$ ] ]
     then
        #invalid password
        echo "Password has only numbers"
        return 1
    else 
        return 0
        
    fi
}

function Check_specialChars()
{
    #This function checks if the password contains special characters
    if [ ![$@ =~ ^[[:alnum:]]+$] ]
     then
        #invalid password
        echo "Password contains special characters"
        return 1
    else
        return 0

    fi
}

function Check_capitalsAndSmalls()
{
    #This function checks if the password doesn't contain capital case letters
    if [ [$@ =~ ^[aA]] ]
     then
        #invalid password
        echo "Password has no both capital and small case letters"
        return 1
    else
        return 0

    fi
}

#function Check_lowercase()

 #    #This function checks if the password doesn't contain lower case letters
 #   if [[$@ =~ ^[a-z]+$] ]
 #    then
        #invalid password
 #        echo "Password has no lower case letters"
  #      return 1
  #  else 
   #     echo "Password has lower case letters"
   #     return 0
   # fi


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

#elif [ Check_numbers -o Check_capitals -o Check_lowercase ]
#then
#    echo "invalid password"
#else
#    echo "valid password"
#    exit 0
