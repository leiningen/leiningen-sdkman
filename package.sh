#!/bin/bash

if [ "$1" = "" -o "$2" = "" ]; then
  echo "Usage: $0 VERSION BUILD_DIR"
  exit
fi

VERSION="$1"
BUILD_DIR="$2"
SUB_DIR="leiningen-${VERSION}"
OUT_DIR="out"

test -d "$BUILD_DIR" && {
  echo "The build dir ${BUILD_DIR} exists, choose a different dir."
  exit 1
}

echo "Packaging Leiningen ${VERSION} for SDKMAN in ${BUILD_DIR} ..."

mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

test -d "$SUB_DIR" || mkdir -p "$SUB_DIR"
cd "$SUB_DIR"

mkdir bin
cd bin

wget "https://raw.githubusercontent.com/technomancy/leiningen/${VERSION}/bin/lein-sdkman" -O "lein"
wget "https://raw.githubusercontent.com/technomancy/leiningen/${VERSION}/bin/lein.bat" -O "lein.bat"

cd ..
mkdir lib
cd lib

wget "https://github.com/technomancy/leiningen/releases/download/${VERSION}/leiningen-${VERSION}-standalone.zip" -O "leiningen-${VERSION}-standalone.jar"

cd ../..
test -d "$OUT_DIR" || mkdir -p "$OUT_DIR"

FILE_NAME="${OUT_DIR}/${SUB_DIR}.zip"

zip "FILE_NAME" "$SUB_DIR"

echo "Leiningen ${VERSION} was packaged to ${FILE_NAME}"


