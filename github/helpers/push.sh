#!/bin/bash

# echo $(pwd)
git checkout $2
git add $(pwd)
git commit -m "$1"
git push -u origin $2