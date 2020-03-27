#!/bin/bash -x
echo "Welcome To User Registration Programming"

validName=^[A-Z][a-z]{3,}* #for first name
validName=[A-Z][a-z]{3,}*$ #for last name
validName="^[A-Z][a-z]{3,}[ ]*[A-Z][a-z]{3,}*$"  #merging first name and last name [ ] for space  
userName=""
read -p "Enter The Name:" userName
if [[ $userName =~ $validName ]]
then
      echo "User Name Is Valid"
else
      echo "User Name Is Invalid"    
fi
