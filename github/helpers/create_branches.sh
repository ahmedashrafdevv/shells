#!/bin/bash

  branches=("$@")
  for branch in "${branches[@]}";
      do
        if [ -z "$branch" ] 
        then
          echo "null"
        else
          git checkout -b $branch
          git add .
          git commit -m "initial commit"
          git push -u origin $branch
        fi
        
        # echo $branch
      done
