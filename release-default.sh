#!/bin/bash

if [ "$1" = "" ]; then
  echo "Usage: $0 VERSION"
  exit
fi

VERSION="$1"

curl -X PUT \
-H "Consumer-Key: ${CONSUMER_KEY}" \
-H "Consumer-Token: ${CONSUMER_TOKEN}" \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d "{\"candidate\": \"leiningen\", \"version\": \"${VERSION}\"}" \
https://vendors.sdkman.io/default

echo
