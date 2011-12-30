#!/bin/sh

VERSION="8.2p"
DIR="/home/builder/isomorphic"
cd "$DIR"

rm -rf ./*

ZIP="$(mktemp)"
COMMENT="Push $(VERSION) at $(date -u)."
./download.sh "${VERSION}" "${ZIP}"
./build.sh "${DIR}" "${ZIP}"

git add -u 
git commit -m "$COMMENT"
git push


