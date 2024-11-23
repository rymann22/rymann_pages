#!/bin/bash
#chmod variables for final output
none="0"
x="1"
w="2"
wx="3"
r="4"
rx="5"
rw="6"
rwx="7"

#Chmod help/guide
echo""
echo "Chmod Auto Generation"
echo "This is used to auto generate the permissions for the chmod command."
echo "Please follow the steps below for the User, Group, and Other permissions..."
echo " d   rwx   r-x   r-x"
echo "|-| |---| |---| |---|"
echo " |    |     |     |_ Other"
echo " |    |     |_______ Group"
echo " |    |_____________ User"
echo " |__________________ File Type"
echo ""
echo "=============================================================="
echo ""
read -e -p "Please enter the filename you want to change permissions for: " file_name

echo "=============================================================="
echo ""
echo "If you want to set no permissions, type 'none': "
read -e -p "Please enter r, w, and/or x without dashes for the User: " user_chmod
echo ""
echo "=============================================================="
echo ""
echo "If you want to set no permissions, type 'none': "
read -e -p "Please enter r, w, and/or x without dashes for the Group: " group_chmod
echo ""
echo "=============================================================="
echo ""
echo "If you want to set no permissions, type 'none': "
read -e -p "Please enter r, w, and/or x without dashes for the Other: " other_chmod
echo "=============================================================="
echo ""
echo "Note: you may need to run the following command with sudo"
echo "The command you'll use is: "
#the command below converts the rwx permissions entered by the user into a string, then calls the variable that the string matches. for instance, user_chmod could be rx, and the command below will convert "rx" to a string inside the {brackets}, then call the varialbe that matches it which returns the number 5 
eval "echo chmod \${$user_chmod}\${$group_chmod}\${$other_chmod} $file_name"


