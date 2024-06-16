#!/bin/bash

BUILD_VERSION=$(<setup.py grep '^VERSION' | sed -n 's/VERSION = "\(.*\)"/\1/p')

TAG_LATEST=$2
TAG_LATEST="${TAG_LATEST:=true}"

REPOSITORY_NAME="${REPOSITORY_NAME:=power-edge/coinmarketcap_py_sdk}"

TAGS=(-t "$REPOSITORY_NAME:$BUILD_VERSION")

if [ "$TAG_LATEST" = "true" ]; then
  TAGS+=(
    -t "$REPOSITORY_NAME:latest"
  )
fi

docker build "${TAGS[@]}" .