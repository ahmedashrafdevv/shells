#!/bin/bash
# create repo under org and project
name=$1
org=$2
username="$(git config user.username)"
token=$GITHUB_TOKEN
echo "Deleting Repo..."
curl -X DELETE  -H "Content-Type:application/json" -H "Authorization: token "$token -d "" https://api.github.com/repos/$org/$name
echo "Repo deleted successfully with name : $name under orgnaization $org..."
