#!/bin/sh

VERSION="8.2p"
DIR="/home/builder/isomorphic"

# Get script path
cd "$(dirname $0)"
INC_DIR="$(pwd)"

cd "$DIR"

rm -rf ./*

ZIP="$(mktemp)"
COMMENT="Push $(VERSION) at $(date -u)."
$INC_DIR/download.sh "${VERSION}" "${ZIP}"
$INC_DIR/build.sh "${DIR}" "${ZIP}"

git add -u 
git commit -m "$COMMENT"
git push


