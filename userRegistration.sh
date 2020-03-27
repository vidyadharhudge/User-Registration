#!/bin/bash -x
echo "Welcome To User Registration Programming"

validName="^[A-Z][a-z]{3,}$"
userName=""
read -p "Enter The Name" userName
if [[ $userName =~ $validName ]]
then
      echo "User Name Is Valid"
else
      echo "User Name Is Invalid"    
fi
