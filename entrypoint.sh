#!/usr/bin/env sh

tag=$(git describe --exact-match --tags $(git log -n1 --pretty='%h'))
ref=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
echo "::set-output name=tag::$tag"
echo "::set-output name=tag::$ref"
