#!/bin/bash
set -x
if [ $TRAVIS_BRANCH == 'master' ] ; then
    # Initialize a new git repo, and push it to our server.
    git init

    git remote add deploy "deploy@104.236.25.166:/var/www/snootiness-app"
    git config user.name "arashcuzi"
    git config user.email "arashcuzi@gmail.com"

    git add .
    git commit -m "Deploy"
    git push --force deploy master
else
    echo "Not deploying, since this branch isn't master."
fi
