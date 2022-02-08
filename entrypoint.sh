#!/usr/bin/env sh

echo $GITHUB_REF
TAG=$(git describe --exact-match --tags $(git log -n1 --pretty='%h'))
if [ -z "$TAG" ]; then
  TAG=$GITHUB_SHA
fi
echo "::set-output name=tag::$TAG"
