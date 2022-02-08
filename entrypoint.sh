#!/usr/bin/env bash

tag=$(echo $GITHUB_REF | sed 's/refs\/tags\///g')
echo "::set-output name=tag::$tag"
