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
### Head: Model / mod_module_yt_dlp_install
##

sys_yt_dlp_install () {


	util_error_echo
	util_error_echo mkdir -p "/etc/skel/.local/bin"
	util_error_echo
	mkdir -p "/etc/skel/.local/bin"


	util_error_echo
	util_error_echo wget -c 'https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp' -O "/etc/skel/.local/bin/yt-dlp"
	util_error_echo
	wget -c 'https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp' -O "/etc/skel/.local/bin/yt-dlp"


	util_error_echo
	util_error_echo chmod 755 "/etc/skel/.local/bin/yt-dlp"
	util_error_echo
	chmod 755 "/etc/skel/.local/bin/yt-dlp"


	return 0
}

mod_module_yt_dlp_install () {


	sys_yt_dlp_install


	return 0
}

##
### Tail: Model / mod_module_yt_dlp_install
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


	mod_module_yt_dlp_install


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
