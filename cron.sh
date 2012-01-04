#!/bin/sh

VERSION="8.2p"
PREFIX="_v82p_LGPL"
DIR="/home/builder/isomorphic"

set -e 

# Get script path
cd "$(dirname $0)"
INC_DIR="$(pwd)"

cd "$DIR"


ZIP="$(mktemp)"
COMMENT="Push ${VERSION} at $(date -u)."
$INC_DIR/download.sh "${VERSION}" "${PREFIX}" "${ZIP}"

rm -rf ./*

$INC_DIR/build.sh "${DIR}" "${ZIP}"

git add .
git add -u 
git commit -m "${COMMENT}"
git push

set -e
