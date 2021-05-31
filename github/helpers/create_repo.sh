#!/bin/bash
# create repo under org and project
sudo apt install jo
name=$1
token=$2
org=$3
echo "Creating Repo..."
curl  -H "Content-Type:application/json" -H "Authorization: token "$token -d "$(jo -p name=$name)" https://api.github.com/orgs/$org/repos
echo "Repo created successfully with name : $name under orgnaization $org..."
