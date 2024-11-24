#!/bin/bash

# This whole thing needs cleaned up...

availableLanguages=("bash" "java" "python" "postgres")
createDate=$(date +%Y-%m-%d)
# github
commandTemplate="$HOME/github/rymann_pages/template.txt"
commandPages="$HOME/github/rymann_pages"
# home?
#commandTemplate="~/command_pages/template.txt"
#commandPages="~/command_pages"
# mac
#commandTemplate="/Users/USERNAME/command_pages/template.txt"
#commandPages="/Users/USERNAME/command_pages"

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
read -e -p "Enter author: " pageAuthor
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
  sed -i '' -e "2s/^//; 2s/$/${templateLang}/" $commandPages/$templateLang/${commandPage}_page.txt
  sed -i '' -e "3s/^//; 3s/$/$(date +%Y-%m-%d)/" $commandPages/$templateLang/${commandPage}_page.txt
  sed -i '' -e "4s/^//; 4s/$/${pageAuthor}/" $commandPages/$templateLang/${commandPage}_page.txt
  test -f $commandPages/$templateLang/${commandPage}_page.txt && ls -l $commandPages/$templateLang/${commandPage}_page.txt
else
  echo "not creating file"
fi
