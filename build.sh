#!/bin/sh

# Patch version: v0.1.1

# Set initial variables
ROOT_REPOSITORY=$(pwd)
PATCH="patch"
EXTRACT="extract"
BUILD="build"
MANIFEST="manifest.json"
MODLIST="modlist.html"

# Modpack variables
printf "Downloading modpack...\n" && sleep 1
MURL="https://www.curseforge.com/api/v1/mods/1006904/files/5564809/download"
MNAME="Infinity Nexus: Reborn"
MVERSION="1.8.1 - Light"

# Get the Infinity Nexus: Reborn modpack
curl -L "${MURL}" --output "${MNAME} ${MVERSION}.zip"

# Extract modpack to 'extract' folder
printf "Extracting modpack...\n" && sleep 1
mkdir -p "${ROOT_REPOSITORY}/${EXTRACT}"
unzip "${MNAME} ${MVERSION}.zip" -d "${ROOT_REPOSITORY}/${EXTRACT}"

# Patch existing files
printf "Patching files...\n" && sleep 1
patch "${ROOT_REPOSITORY}/${EXTRACT}/${MANIFEST}" < "${ROOT_REPOSITORY}/${PATCH}/${MANIFEST}.patch"
patch "${ROOT_REPOSITORY}/${EXTRACT}/${MODLIST}" < "${ROOT_REPOSITORY}/${PATCH}/${MODLIST}.patch"

# Zip files
printf "Preparing patched modpack...\n" && sleep 1
MVERSION="1.8.1 [Essentials Lite Patch]"
cd "${ROOT_REPOSITORY}/${EXTRACT}" && zip -rq "${MNAME} ${MVERSION}.zip" ${ROOT_REPOSITORY}/* && cd ..

# Move patched version to 'build'
mkdir -p ${ROOT_REPOSITORY}/${BUILD}
mv "${ROOT_REPOSITORY}/${EXTRACT}/${MNAME} ${MVERSION}.zip" "${ROOT_REPOSITORY}/${BUILD}"

# Generate hash for built file
printf "Patched modpack prepared. Signing...\n" && sleep 1
sha256sum "${ROOT_REPOSITORY}/${BUILD}/${MNAME} ${MVERSION}.zip" | cut -d' ' -f1 > "${ROOT_REPOSITORY}/${BUILD}/${MNAME} ${MVERSION}.sha256"

printf "Modpack signed and ready to be used.\n"
