#!/usr/bin/env bash




set -e




##
## ## Main / Init
##

REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
REF_CMD_FILE_NAME="$(basename "$0")"




##
## ## Path / ISO Profile
##

REF_ISO_PROFILE_REPO_GIT_URL="https://github.com/samwhelp/debian-iso-builder-template.git"

REF_ISO_PROFILE_REPO_BRANCH_NAME="main"

#REF_ISO_PROFILE_REPO_ARCHIVE_URL="https://github.com/samwhelp/debian-iso-builder-template/archive/refs/heads/${REF_ISO_PROFILE_REPO_BRANCH_NAME}.zip"
REF_ISO_PROFILE_REPO_ARCHIVE_URL="https://github.com/samwhelp/debian-iso-builder-template/archive/refs/heads/${REF_ISO_PROFILE_REPO_BRANCH_NAME}.tar.gz"


REF_ISO_PROFILE_REPO_ARCHIVE_FILE_NAME="${REF_ISO_PROFILE_REPO_BRANCH_NAME}.tar.gz"
REF_ISO_PROFILE_REPO_ARCHIVE_EXTRACT_DIR_NAME="debian-iso-builder-template-${REF_ISO_PROFILE_REPO_BRANCH_NAME}"




##
## ## Path / Work Dir
##

REF_WORK_DIR_PATH="${HOME}/work/debian-iso-builder-remix-lxqt-with-kwin"




##
## ## Path / Combine Dir
##

REF_COMBINE_SOURCE_DIR_PATH="${REF_BASE_DIR_PATH}/profile"
REF_COMBINE_TARGET_DIR_PATH="${REF_WORK_DIR_PATH}/iso-profile"




##
## ## Prepare / Install Package
##

#sudo apt-get install git




##
## ## Prepare / Work Dir
##

mkdir -p "${REF_WORK_DIR_PATH}"




##
## ## Model / Change to Work Dir
##

cd "${REF_WORK_DIR_PATH}"




##
## ## Model / Download Source Repository
##


#if [ -a ${REF_COMBINE_TARGET_DIR_PATH} ]; then
#	echo
#	echo "[Dir Exist]: ${REF_COMBINE_TARGET_DIR_PATH}"
#	echo "[Please Remove First]: rm -rf ${REF_COMBINE_TARGET_DIR_PATH}"
#	echo
#	exit
#fi


#git clone -b "${REF_ISO_PROFILE_REPO_BRANCH_NAME}" "${REF_ISO_PROFILE_REPO_GIT_URL}" iso-profile




##
## ## Model / Combine ISO Profile
##

echo cp -rfT "${REF_COMBINE_SOURCE_DIR_PATH}" "${REF_COMBINE_TARGET_DIR_PATH}"
cp -rfT "${REF_COMBINE_SOURCE_DIR_PATH}" "${REF_COMBINE_TARGET_DIR_PATH}"
#cp -rfTv "${REF_COMBINE_SOURCE_DIR_PATH}" "${REF_COMBINE_TARGET_DIR_PATH}"




##
## ## Model / Tips
##

echo
echo "[OK]: Combine OK"
#echo "[Next Step]: cd ${REF_COMBINE_TARGET_DIR_PATH}"
echo "[Next Step]: cd ~/work/debian-iso-builder-remix-lxqt-with-kwin/iso-profile
"
echo




##
## ## Model / Back to Dir
##

cd ${OLDPWD}
