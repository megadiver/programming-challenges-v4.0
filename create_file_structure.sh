#!/bin/bash

CHALLENGE_FOLDER=`git branch --show-current`
if [ "$CHALLENGE_FOLDER" == "main" ]; then
    exit 2
fi
mkdir -p $CHALLENGE_FOLDER
LANGUAGES=(python3)

for language in ${LANGUAGES[@]}; do
    mkdir -p $CHALLENGE_FOLDER/$language
done
exit 0
