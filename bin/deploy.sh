#!/usr/bin/env bash
GIT_FILES=($(git show --pretty="" --name-only $CIRCLE_SHA1))
for f in ${GIT_FILES[@]};
do
  if [[ $f == *".php" ]]; then
    git config user.name "Giancarlos Salas";
    git config user.email "giansalex@gmail.com";
    git remote add gh-token "https://${GH_TOKEN}@github.com/giansalex/greenter-apidoc.git";
    git fetch gh-token && git fetch gh-token gh-pages:gh-pages;
    
    break
  fi
done