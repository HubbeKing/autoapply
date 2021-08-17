#!/bin/bash
REPO=registry.hubbe.club/autoapply
TAG=$(git describe --tags --abbrev=0)

buildah bud --tag $REPO:$TAG --tag $REPO:latest .
buildah push $REPO:$TAG
buildah push $REPO:latest
