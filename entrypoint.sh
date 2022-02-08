#!/usr/bin/env sh

echo $GITHUB_REF
tag=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
echo $tag
if [ -z "$tag" ]; then
  tag = $GITHUB_SHA
fi
if [[ $tag =~ "refs/heads" ]]; then
  tag = $GITHUB_SHA
fi
echo "::set-output name=tag::$tag"
