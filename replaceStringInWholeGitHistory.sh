#!/bin/bash
# $1 - string to find
# $2 - string to replace with
# $3 - repo location

cd "$3"

export replacerRepo = "~/dev/replace-string-in-git-history"

for branch in $(git branch | cut -c 3-); do
  echo ""
  echo ">>> Replacing strings in branch $branch:"
  echo ""
  $replacerRepo/replaceStringInBranch.sh "$branch" "$1" "$2"
done