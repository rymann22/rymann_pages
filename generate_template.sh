#!/bin/bash

# Replace USERNAME with your username
# Alternatively, and probably a better idea, is to change lines 8 and 9

availableLanguages=("bash" "java" "python" "postgres")
createDate=$(date +%Y-%m-%d)
commandTemplate="/Users/USERNAME/command_pages/template.txt"
commandPages="/Users/USERNAME/command_pages"

echo "---------------------------------"
echo "Getting information about file..."
read -e -p "Enter language [bash/java/python/postgres]: " templateLang
if ! [[ ${availableLanguages[@]} =~ "$templateLang" ]]; then
  echo " "
  echo "[ERROR] Sorry, that's not an available option."
  echo "[ERROR] Please try again..."
  echo " "
  exit
fi
read -e -p "Enter command: " commandPage
echo " " 
echo "---------------------------------"
echo "Confirm choices"
echo -e "You are about to create the following file..."
echo -e "$commandPages/$templateLang/${commandPage}_page.txt"
echo " "
read -e -p "Do you want to create this file? [y/N]" createFile

if [[ $createFile == "y" ]] || [[ $createFile == "Y" ]] || [[ $createFile == "yes" ]] ; then
  echo "creating file..."
  cp $commandTemplate $commandPages/$templateLang/${commandPage}_page.txt
  sed -i '' -e "2s/^//; 2s/$/$(date +%Y-%m-%d)/" $commandPages/$templateLang/${commandPage}_page.txt
  sed -i '' -e "3s/^//; 3s/$/${templateLang}/" $commandPages/$templateLang/${commandPage}_page.txt
  test -f $commandPages/$templateLang/${commandPage}_page.txt && ls -l $commandPages/$templateLang/${commandPage}_page.txt
else
  echo "not creating file"
fi
