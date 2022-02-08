# Get the tag or fall back to commit SHA

A very simple action that gets the git tag with a fallback to the current SHA if the tag isn't available.

```
name: Publish
on: push
jobs:
  docker_image:
    name: Build Docker Image
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - uses: ctrl-alt-it/get-tag-or-sha@v1
        id: tag

      - name: Build
        run: docker build . --file Dockerfile --tag mydockerimage:${{ steps.tag.outputs.tag }} --build-arg commit="${{ steps.tag.outputs.tag }}"
```
