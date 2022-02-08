#!/usr/bin/env sh

echo $GITHUB_REF
TAG=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
echo $TAG
if [ -z "$TAG" ]; then
  TAG=$GITHUB_SHA
fi
if [[ $TAG =~ "refs/heads" ]]; then
  TAG=$GITHUB_SHA
fi
echo "::set-output name=tag::$TAG"
