#!/usr/bin/env bash

# Script to download Dav1d's source code

# Exports SOURCES_DIR_libdav1d - path where actual sources are stored

FREI0R_VERSION=1.7.0
echo "Using frei0r $FREI0R_VERSION"
FREI0R_SOURCES=frei0r-${FREI0R_VERSION}

if [[ ! -d "$FREI0R_SOURCES" ]]; then
  TARGET_FILE_NAME=frei0r-${FREI0R_VERSION}.tar.gz

  curl https://codeload.github.com/dyne/frei0r/tar.gz/v${FREI0R_VERSION} --output ${TARGET_FILE_NAME}
  tar xf ${TARGET_FILE_NAME} -C .
  rm ${TARGET_FILE_NAME}
fi

export SOURCES_DIR_frei0r=$(pwd)/${FREI0R_SOURCES}
