#!/bin/bash -x
echo "Welcome to user registration problem."

#for seprate email validations
emailPattern1="^[a-zA-Z0-9]{3,}+[@]{1}$"
emailPattern2="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}$"
emailPattern3="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"

#constants
VALIDNAMEPATTERN="^[A-Z][a-z]{2,}$"
EMAILPATTERN="^[a-zA-Z0-9]{3,}+[@]{1}[a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"
MOBILEPATTERN="^[0-9]{2}[ ][0-9]{10}$" #[ ]for one space
PASSWORD="^[A-Z]{1,}*[a-z]{4,}[*&^%$#@!+=]{1}*[0-9]{2,}*$"

#function for pattern check
function patternCheck()
{
   if [[ $1 =~ $2 ]]
   then
      echo "Valid Pattern."
   else
      echo "Invalid Pattern."
   fi
}

#for user input and calling the function and passes the parameter
read -p "Enter first name: " firstName
patternCheck $firstName $VALIDNAMEPATTERN

read -p "Enter last name: " lastName
patternCheck $lastName $VALIDNAMEPATTERN

read -p "Enter email address: " emailId
patternCheck $emailId $EMAILPATTERN

read -p "Enter mobile number: " mobileNumber
patternCheck $mobileNumber $MOBILEPATTERN

read -p "Enter your password: " password
patternCheck $password $PASSWORD




