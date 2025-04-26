#!/usr/local/bin/bash

set -e

which python3 ||
  brew install python

test -d .venv ||
  /usr/local/bin/python3 -m venv .venv

(echo "$PATH" | grep ".venv/bin") ||
  . .venv/bin/activate

which nb-clean ||
  python3 -m pip install nb-clean
