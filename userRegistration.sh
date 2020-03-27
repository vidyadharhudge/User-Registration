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


