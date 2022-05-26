#! /usr/bin/bash
read $@
user_password =$@
Check_password = 0 #valid password

Check_numbers()
{
    #This function checks if the password doesn't contain numbers
    if [![$user_password =~ [0-9] ]]; then
        echo "Password has no numbers"
        #invalid password
        return 1
}

Check_capitals()
{
    #This function checks if the password doesn't contain capital case letters
    if [![^[A-Z]+$ ]]; then
        echo "Password has no capital case letters"
        #invalid password
        return 1
}


Check_lowercase()
{
     #This function checks if the password doesn't contain lower case letters
    if [![^[a-z]+$ ]]; then
        echo "Password has no lower case letters"
        #invalid password
        return 1
}

password_length= ${#user_password[@]}

if [$password_length -lt 10]; then
    echo "Password length is under 10"
    return 1
else
    Check_numbers()
    Check_capitals()
    Check_lowercase()



 