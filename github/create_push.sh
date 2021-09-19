#!/bin/bash
# define varaibles
base_path=$SHELLS_PATH/github
token=$GITHUB_TOKEN
name=${1##*/}
org=$2
echo $name
branches=(master)
current=$branches


/home/dev/ahmedashrafdevv/side_projects/shells/github/helpers/create_repo.sh "$name" "$token" "$org"
/home/dev/ahmedashrafdevv/side_projects/shells/github/helpers/init_repo.sh "$name" "$current" "$org"
/home/dev/ahmedashrafdevv/side_projects/shells/github/helpers/create_branches.sh "${branches[@]/$current}"



