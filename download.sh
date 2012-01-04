#!/bin/bash

DATE="$(date +'%Y-%m-%d')"
VERSION="$1"
PREFIX="$2"
DEST_FILE="$3"
SRC_DIR="http://www.smartclient.com/builds/SmartClient/${VERSION}/LGPL/${DATE}/"

wget "${SRC_DIR}/SmartClient_SC_SNAPSHOT-${DATE}${PREFIX}.zip" -O "${DEST_FILE}"
