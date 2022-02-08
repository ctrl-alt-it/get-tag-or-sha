#!/usr/bin/env sh

tag=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
if [ -z "$tag" ]; then
  tag = $GITHUB_SHA
fi
echo "::set-output name=tag::$tag"
