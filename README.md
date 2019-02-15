# Leiningen packaging for sdkman.io

## Prerequisites

  * A Leiningen release (online)
  * wget
  * zip
  * sdkman credentials

## Packaging

```
./package.sh VERSION BUILD_DIR
```

  * `BUILD_DIR needs to be empty`
  * this yields a `zip` file in `BUILD_DIR/out/`

## Uploading

  * Release this zip file in the `leiningen/leiningen-sdkman` repo and jot down the URL

## Releasing

```
export CONSUMER_KEY=x
export CONSUMER_TOKEN=y

./release.sh VERSION
```
