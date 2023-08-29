# prettier-test.sh

Install latest Prettier and run.

## Usage

```sh
curl -Sf https://raw.githubusercontent.com/sosukesuzuki/prettier-test.sh/main/prettier-test.sh | bash -s VERSION
```

## Overview

This script is used for checking Prettier is released correctly.

This script runs following steps:

- Create new directory named `prettier-VERSION-test`
- Move to `prettier-VERSION-test`
- Run `npm init -y && npm i prettier@latest`
- Check `VERSION` matches to Prettier's latest version
- Run `prettier` CLI for a test file.
