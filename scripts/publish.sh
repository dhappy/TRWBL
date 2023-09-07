#!/bin/bash

OUTDIR=docs
pushd $(dirname "$0") > /dev/null
cd ..
touch "$OUTDIR/.nojekyll"
CACHE_DIR=~/tmp npx gh-pages -d docs -m "¡Publishin'! 🐊" -t
popd > /dev/null