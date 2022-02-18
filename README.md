# Leiningen packaging for sdkman.io

## Prerequisites

  * A Leiningen release (released at https://github.com/technomancy/leiningen/)
  * sdkman.io credentials
  * `wget`
  * `zip`

**Don't do this on Windows or WSL, it will mess up permissions!**

## Packaging

```
./package.sh VERSION BUILD_DIR
```

  * `BUILD_DIR` cannot exist yet
  * this yields a `zip` file in `BUILD_DIR/out/`

## Uploading

  * Release this zip file (manually) in the `leiningen/leiningen-sdkman` repo with a new tag (autocreate is fine)
  * attention: the name needs to match the version, e.g. ´.../releases/download/2.9.0-beta1/leiningen-2.9.0-beta1.zip´

## Releasing a candidate

To release a candidate version on sdkman:

```
export CONSUMER_KEY=x
export CONSUMER_TOKEN=y

./release.sh VERSION
```

Now this can be tested via `sdk install leiningen VERSION`.

The next steps are documented here: https://sdkman.io/vendors

## Making the release the default release

```
export CONSUMER_KEY=x
export CONSUMER_TOKEN=y

./release-default.sh VERSION
```

## Announcing the release at sdkman

```
export CONSUMER_KEY=x
export CONSUMER_TOKEN=y

./announce-release.sh VERSION
```
