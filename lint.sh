#!/bin/sh

echo --------------------------DOCKERFILE-----------------------------

find $1 -name 'Dockerfile' | while read fname; do
        printf "\n $fname \n";
        docker run -i --rm linter hadolint --ignore DL3001 --ignore DL3009 --ignore DL3010 --ignore DL3015 --ignore DL3019 --ignore DL3047 --ignore DL3059 --ignore DL3060 - < "$fname";
done

echo --------------------------YAMLLINT-------------------------------

find $1 -name '*.yml' -o -name '.*yaml' | while read fname; do
        printf "\n $fname \n";
        docker run -i --rm linter yamllint - < "$fname";
done

echo ----------------------------YAPF----------------------------------

find $1 -name '*.py' | while read fname; do
        printf "\n $fname \n";
        docker run -i --rm linter yapf --style google < "$fname";
done
