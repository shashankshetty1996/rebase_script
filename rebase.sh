#!/bin/bash

# Get current branch name
current_branch=$(git branch | grep \* | cut -d ' ' -f2)

# Shifting to master branch
git checkout master

# Updating master branch
git pull

# Switching back to working branch
git checkout $current_branch

# Rebasing with master branch
git rebase -i master

ECHO "Updated $current_branch with master branch"
