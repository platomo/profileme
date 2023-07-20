#!/usr/bin/env bash

set -e
echo "Install profileme."

echo "$DIR"
cd "$DIR" || exit
WORKING_DIR=$(pwd)
VENV="$WORKING_DIR"/venv
PYTHON="$VENV"/bin/python
PIP="$VENV"/bin/pip
PRE_COMMIT="$VENV"/bin/pre-commit

python3.11 -m venv "$VENV"

$PYTHON -m pip install --upgrade pip
$PIP install -r requirements-dev.txt --no-cache-dir
$PRE_COMMIT install --install-hooks
