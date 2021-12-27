#!/usr/bin/env bash

# -o pipefail Produce a failure return code if any command errors
set -o pipefail

echo    "file                           | exception | error | shutdown | exit code"
echo -n "------------------------------ | --------- | ----- | -------- | ---------"

for f in error-*.php; do
	php -f test.php $f || echo -n $?
done

echo ""

exit 0
