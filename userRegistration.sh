#!/bin/bash -x
echo "Welcome To User Registration Programming"
validName="^[A-Z][a-z]{3,}$" 

firstName=""
read -p "Enter The firstName:" firstName
if [[ $firstName =~ $validName ]]
then
      echo "firstName Is Valid"
else
      echo "firstName Is Invalid"    
fi

lastName=""
read -p "Enter The lastName:" lastName
if [[ $lastName =~ $validName ]]
then
      echo "lastName Is Valid"
else
      echo "lastName Is Invalid"
fi

email=""
validEmail="^[a-zA-Z0-9]{3,}+[@][a-zA-Z0-9]{3,}+[.][a-zA-Z]{3,}$"
read -p "Enter The Email:" email
if [[ $email =~ $validEmail ]]
then
      echo "email is valid"
else
      echo "email is invalid"
fi

mobileFormat=""
validMobileformat="^[0-9]{2,}[ ][0-9]{10,}$"   #[ ] for space 
read -p "Enter the mobile number format:" mobileFormat
if [[ $mobileFormat =~ $validMobileformat ]]
then
      echo "The mobile format is valid"
else
      echo "The mobile format is invalid"
fi

Password=""
validPassword="^[A-Z]{1,}*[a-z]{4,}*[0-9]{3,}*$"
read -p "Enter the valid password:" Password
if [[ ${Password} =~ $validPassword ]]
then
      echo "The password is valid"
else
      echo "The password is not valid"
fi
