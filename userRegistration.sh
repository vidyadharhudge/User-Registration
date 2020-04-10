
#!/bin/bash-x 
echo "Welcome To User Registration Programming"

emailPattern1="^[a-zA-Z0-9]{3,}+[@]{1}$"
emailPattern2="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}$"
emailPattern3="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"

#CONSTANTS
VALIDNAMEPATTERN="^[A-Z][a-z]{3,}$"
EMAILPATTERN="^[a-zA-Z0-9]{3,}+[@][a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"
MOBILEPATTERN="^[0-9]{2}[ ][0-9]{10}$" 
PASSWORD="^[A-Z]{1,}*[a-z]{4,}*[0-9]{2,}*[\!\@\#\%\$\&\*\]{1}*$"

function Pattern_Check()
{

   if [[ $1 =~ $2 ]]
   then
        echo "Valid Pattern"
   else
        echo "Invalid Pattern"
   fi
}

read -p "Enter The firstName:" firstName
Pattern_Check $firstName $VALIDNAMEPATTERN

read -p "Enter The lastName:" lastName
Pattern_Check $lastName $VALIDNAMEPATTERN

read -p "Enter The Email:" email
Pattern_Check $email $EMAILPATTERN

read -p "Enter the mobile number format:" mobileFormat
Pattern_Check $mobileFormat $MOBILEPATTERN

read -p "Enter the valid password:" Password
Pattern_Check $Password $PASSWORD

