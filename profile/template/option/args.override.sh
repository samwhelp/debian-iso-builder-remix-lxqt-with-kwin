

##
## ## REF_BUILD_SUITE
##
## > for `debootstrap`
##

REF_BUILD_SUITE="trixie"




##
## ## REF_BUILD_PACKAGE_REPO_URL
##
## > for `debootstrap`
##

REF_BUILD_PACKAGE_REPO_URL="http://deb.debian.org/debian/"




##
## ## REF_LIVE_PACKAGE_REPO_URL
##
## > for [Live System]: `/etc/apt/sources.list`
##

REF_LIVE_PACKAGE_REPO_URL="http://deb.debian.org/debian/"






##
## ## REF_BUILD_VERSION
##

REF_BUILD_VERSION="13"




##
## ## REF_BUILD_SUBJECT_NAME
##
## > for iso file name
##

REF_BUILD_SUBJECT_NAME="debian-lxqt-with-kwin"




##
## ## REF_BUILD_SUBJECT_TITLE
##
## > for info
##

REF_BUILD_SUBJECT_TITLE="Debian Lxqt with Kwin"




##
## ## REF_BUILD_ISO_VOLUME_ID
##
## > for xorriso -volid ${REF_BUILD_ISO_VOLUME_ID}
##

REF_BUILD_ISO_VOLUME_ID="DEBIAN"




##
## ## REF_BUILD_LOCALE_NAME
##
## > for /etc/locale.conf
##

REF_BUILD_LOCALE_NAME="en_US.UTF-8"




##
## ## REF_BUILD_LOCALE_GEN
##
## > for /etc/locale.gen
##

REF_BUILD_LOCALE_GEN="en_US.UTF-8 zh_TW.UTF-8 zh_CN.UTF-8 zh_HK.UTF-8 ja_JP.UTF-8 ko_KR.UTF-8"




##
## ## REF_BUILD_TIMEZONE
##
## > for /etc/localtime
##
## > ls -1 /usr/share/zoneinfo/
##
## > tree /usr/share/zoneinfo/
##

## /usr/share/zoneinfo/Etc/UTC
#REF_BUILD_TIMEZONE="Etc/UTC"

## /usr/share/zoneinfo/Asia/Taipei
REF_BUILD_TIMEZONE="Asia/Taipei"
