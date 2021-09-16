#!/bin/bash

if [ "$1" = "" ]; then
  echo "Usage: $0 VERSION"
  exit
fi

VERSION="$1"

curl -X POST \
-H "Consumer-Key: ${CONSUMER_KEY}" \
-H "Consumer-Token: ${CONSUMER_TOKEN}" \
-H "Content-Type: application/json" \
-H "Accept: application/json" \
-d "{\"candidate\": \"leiningen\", \"version\": \"${VERSION}\", \"hashtag\": \"leiningen\"}" \
https://vendors.sdkman.io/announce/struct

echo "Twitter: https://twitter.com/sdkman_"

echo
