#!/bin/bash

echo "This script will remove users from your IBM Cloud account that are in a PENDING state"
echo "The users that are currently in a PENDING state are: "

echo " "
ibmcloud account users | grep "PENDING"

echo " "

echo "ALL OF THESE USERS WILL BE DELETED!!"

read -p "Are you sure you want to continue? <y/N> " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]

then

rm pending-users.txt

ibmcloud account users | grep "PENDING" | cut -d " " -f1 > pending-users.txt


input="pending-users.txt"
while IFS= read -r line
do
  echo "deleting PENDING USER  $line"

ibmcloud account user-remove -f $line

done < "$input"

echo " "
echo "OK - all done!"

else 
  exit 0
fi
