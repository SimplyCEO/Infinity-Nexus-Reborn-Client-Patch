#!/bin/sh

# Set initial variables
MANIFEST="manifest.json"
MODLIST="modlist.html"

# Get the Infinity Nexus: Reborn modpack
MODPACK_URL="https://www.curseforge.com/api/v1/mods/1006904/files/5548729/download"
MODPACK_NAME="INR_Server-1.8.zip"
PATCHED_MODPACK_NAME="Infinity_Nexus_Reborn-Client_Essentials_Lite-1.8-patch.zip"
curl -L ${MODPACK_URL} --output ${MODPACK_NAME}

# Extract modpack to 'extract' folder
unzip ${MODPACK_NAME} -d ./extract

# Patch existing files
patch ./extract/${MANIFEST} < ./patch/${MANIFEST}.patch
patch ./extract/${MODLIST} < ./patch/${MODLIST}.patch

# Zip files
cd ./extract && zip -rq ${PATCHED_MODPACK_NAME} ./* && cd ..

# Move patched version to 'build'
mkdir -p ./build
mv ./extract/${PATCHED_MODPACK_NAME} ./build
