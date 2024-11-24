#!/bin/bash

read -e -p "Enter language: " pageLang
read -e -p "Enter command: " pageCommand
read -e -p "Enter brief explanation: " commandExplained
createDate=$(date +%Y-%m-%d)
authorName="Ryan"

templatePage="""==[ PAGE INFO ]==============
Date Created: ${createDate}
 Last Update: 2024-11-22
      Author: ${authorName}
    Language: ${pageLang}

==[ COMMAND ]================
    Command: ${pageCommand}
Description: ${commandExplained}

==[ SYNTAX ]=================


==[ FLAGS / OPTIONS ]========


==[ EXAMPLES ]===============


==[ ADV. EXAMPLES ]==========

"""
#read -e -p "Enter new file location: " fileLocation

echo -e "${templatePage}" >> $PWD/$pageLang/${pageCommand}_page.txt
