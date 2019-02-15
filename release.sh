#!/bin/bash

if [ "$1" = "" ]; then
  echo "Usage: $0 VERSION"
  exit
fi

VERSION="$1"
URL="https://github.com/leiningen/leiningen-sdkman/releases/download/${VERSION}/leiningen-${VERSION}.zip"

curl -X POST \
-H "Consumer-Key: ${CONSUMER_KEY}" \
-H "Consumer-Token: ${CONSUMER_TOKEN}" \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d "{\"candidate\": \"leiningen\", \"version\": \"${VERSION}\", \"url\": \"${URL}\"}" \
https://vendors.sdkman.io/release
