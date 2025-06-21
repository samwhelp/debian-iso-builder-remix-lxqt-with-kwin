#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Bash
##

set -e						## exit on error
set -o pipefail				## exit on pipeline error
set -u						## treat unset variable as error

##
### Tail: Bash
################################################################################


################################################################################
### Head: Init
##

REF_CMD_FILE_NAME="$(basename "${0}")"
REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
REF_INIT_DIR_PATH="${REF_BASE_DIR_PATH}/../../../ext"
. "${REF_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / mod_module_firefox_install
##

sys_package_install_software_properties_common () {


	util_error_echo
	util_error_echo apt-get install -y software-properties-common
	util_error_echo
	apt-get install -y software-properties-common


	return 0
}

sys_firefox_ppa_repository_add () {

	##
	## https://launchpad.net/~mozillateam/+archive/ubuntu/ppa
	##

	##
	## ## sample / source.list
	##
	## ```
	## deb https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
	## deb-src https://ppa.launchpadcontent.net/mozillateam/ppa/ubuntu YOUR_UBUNTU_VERSION_HERE main
	## ```
	##


	util_error_echo
	util_error_echo add-apt-repository -y ppa:mozillateam/ppa
	util_error_echo
	add-apt-repository -y ppa:mozillateam/ppa


	return 0
}

sys_apt_preferences_config_firefox () {


cat << __EOF__ | tee /etc/apt/preferences.d/mozilla-firefox.pref
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap*
Pin-Priority: -1
__EOF__




	util_error_echo
	util_error_echo cat /etc/apt/preferences.d/mozilla-firefox.pref
	util_error_echo
	cat /etc/apt/preferences.d/mozilla-firefox.pref


	return 0
}

sys_firefox_package_install () {


	util_error_echo
	util_error_echo apt-get update
	util_error_echo
	apt-get update


	util_error_echo
	util_error_echo apt-get install -y firefox firefox-locale-en firefox-locale-zh-hant firefox-locale-zh-hans firefox-locale-ja firefox-locale-ko
	util_error_echo
	apt-get install -y firefox firefox-locale-en firefox-locale-zh-hant firefox-locale-zh-hans firefox-locale-ja firefox-locale-ko


	return 0
}

mod_module_firefox_install () {


	sys_package_install_software_properties_common

	sys_firefox_ppa_repository_add

	sys_apt_preferences_config_firefox

	sys_firefox_package_install


	return 0
}

##
### Tail: Model / mod_module_firefox_install
################################################################################


################################################################################
### Head: Portal / portal_install
##

portal_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## Run Module"
	util_error_echo "##"
	util_error_echo

	local script_file_path="${REF_BASE_DIR_PATH}/${REF_CMD_FILE_NAME}"

	util_error_echo "[Run Module]: ${script_file_path}"


	mod_module_firefox_install


}

##
### Tail: Portal / portal_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
