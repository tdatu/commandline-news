#!/bin/bash
# File              : getnews-topic.sh
# Author            : Anthony Datu 
# Date              : 02.01.2020
# Last Modified Date: 02.01.2020

if [ "$1" = "topic" ]
then
	topic=$(echo $2 | sed 's/ /%20/g')
	curl -X GET "https://newsapi.org/v2/everything?q=$topic&apiKey=xxxxxxxxxxxxxxxxxxx" | jq '.articles[] | .url'
fi

if [ "$1" = "country" ]
then
	country=$2
	curl -X GET "https://newsapi.org/v2/top-headlines?country=$country&apiKey=xxxxxxxxxxxxxxx" | jq '.articles[] | .url'
fi
