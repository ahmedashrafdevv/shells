#!/bin/bash
# define varaibles
base_path=$SHELLS_PATH/github
token=$GITHUB_TOKEN
name=$1
org=$2
branches=(locale staging production)
current=$branches
mkdir $name
cd $name

$base_path/helpers/create_repo.sh "$name" "$token" "$org"
$base_path/helpers/init_repo.sh "$name" "$current" "$org"
$base_path/helpers/create_branches.sh "${branches[@]/$current}"