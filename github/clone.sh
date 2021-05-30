#!/bin/bash

name=$1
org=$2
branch=$3

git clone git@github.com:$org/$name.git
git checkout -b $branch