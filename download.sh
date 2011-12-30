#!/bin/bash

DATE="$(date +'%Y-%m-%d')"
VERSION="$1"
DEST_FILE="$2"
SRC_DIR="http://www.smartclient.com/builds/SmartClient/${VERSION}/LGPL/${DATE}/"

wget "${SRC_DIR}/SmartClient_SC_SNAPSHOT-${DATE}_LGPL.zip" -O "${DEST_FILE}"
