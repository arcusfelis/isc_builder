#!/bin/bash

DEST_DIR="$1"

ZIP="$2"
TMP_DIR="$(mktemp -d)"


unzip "$ZIP" -d "$TMP_DIR"

TMP_ISO="${TMP_DIR}/*/smartclientRuntime/isomorphic"

SKINS_DIR="${DEST_DIR}/skins"
mkdir -p "${SKINS_DIR}"
mv ${TMP_ISO}/skins/{Enterprise,Mobile} "${SKINS_DIR}"


SYSTEM_DIR="${DEST_DIR}/system"
mkdir -p "${SYSTEM_DIR}"
mv ${TMP_ISO}/system/{modules,license.html} "${SYSTEM_DIR}/"

mv ${TMP_ISO}/../license.html "${DEST_DIR}/"

rm -rf "$TMP_DIR"
