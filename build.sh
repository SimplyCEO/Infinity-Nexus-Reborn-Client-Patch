#!/bin/sh

# Patch version: v0.1

# Set initial variables
ROOT_REPOSITORY=$(pwd)
PATCH="patch"
EXTRACT="extract"
BUILD="build"
MANIFEST="manifest.json"
MODLIST="modlist.html"

# Get the Infinity Nexus: Reborn modpack
MODPACK_URL="https://www.curseforge.com/api/v1/mods/1006904/files/5548729/download"
MODPACK_NAME="INR_Server-1.8.zip"
PATCHED_MODPACK_NAME="Infinity Nexus: Reborn [Essentials Lite] 1.8 (Client)"
curl -L "${MODPACK_URL}" --output "${MODPACK_NAME}"

# Extract modpack to 'extract' folder
unzip "${MODPACK_NAME}" -d "${ROOT_REPOSITORY}/${EXTRACT}"

# Patch existing files
patch "${ROOT_REPOSITORY}/${EXTRACT}/${MANIFEST}" < "${ROOT_REPOSITORY}/${PATCH}/${MANIFEST}.patch"
patch "${ROOT_REPOSITORY}/${EXTRACT}/${MODLIST}" < "${ROOT_REPOSITORY}/${PATCH}/${MODLIST}.patch"

# Zip files
cd "${ROOT_REPOSITORY}/${EXTRACT}" && zip -rq "${PATCHED_MODPACK_NAME}.zip" ${ROOT_REPOSITORY}/* && cd ..

# Move patched version to 'build'
mkdir -p ${ROOT_REPOSITORY}/${BUILD}
mv "${ROOT_REPOSITORY}/${EXTRACT}/${PATCHED_MODPACK_NAME}.zip" "${ROOT_REPOSITORY}/${BUILD}"

# Generate hash for built file
sha256sum "${ROOT_REPOSITORY}/${BUILD}/${PATCHED_MODPACK_NAME}.zip" | cut -d' ' -f1 > "${ROOT_REPOSITORY}/${BUILD}/${PATCHED_MODPACK_NAME}.sha256"
