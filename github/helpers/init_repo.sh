
#!/bin/bash
# init repository func
# create folder
# init empty repo
# add remote origin
# commit and push code
# takes (name , branch , orgnaization)
  name=$1
  branch=$2
  org=$3
  
  echo "intitaliazin Repo"
  git init >/dev/null
  echo "Repo intitaliazed susccessfully"
  echo "#v 0.0.1" >> readme.md
  git remote add origin git@github.com:$org/$name.git
  git checkout -b $branch
  git add . >/dev/null
  git commit -m "initial commit" >/dev/null
  echo "Pushing to $branch"
  git push -u origin $branch >/dev/null
  echo "Pushed successully to $branch"