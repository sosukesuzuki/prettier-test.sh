#!/bin/bash

# Check if VERSION argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <VERSION>"
  exit 1
fi

VERSION=$1
DIR_NAME="prettier-$VERSION-test"

# Create a new directory
mkdir "$DIR_NAME"

# Change directory to the newly created directory
cd "$DIR_NAME" || exit

# Initialize npm project
npm init -y

# Install Prettier
npm i prettier@latest

echo "Prettier installed successfully"

# Check Prettier version
INSTALLED_VERSION=$(./node_modules/.bin/prettier --version)
if [ "$INSTALLED_VERSION" = "$VERSION" ]; then
  echo "Prettier version matches $VERSION"
  echo
else
  echo "Prettier version does not match $VERSION"
  exit 1
fi

# Create test.js
echo 'const      foo =      "foo"    ;' > test.js

# Print test.js contents
echo "test.js contents:"
cat test.js

echo

# Run prettier on test.js and print the result
echo "prettier test.js output:"
./node_modules/.bin/prettier test.js
