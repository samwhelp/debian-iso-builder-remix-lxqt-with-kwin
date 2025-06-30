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
### Head: Model / mod_module_sublime_text_install
##

sys_sublime_text_install () {


	local deb_version="4200"
	local deb_name="sublime-text_build-${deb_version}_amd64.deb"
	local deb_url="https://download.sublimetext.com/${deb_name}"
	local tmp_dir_path="/tmp/sublime-text"
	local tmp_file_path="${tmp_dir_path}/${deb_name}"


	util_error_echo
	util_error_echo mkdir -p "${tmp_dir_path}"
	util_error_echo
	mkdir -p "${tmp_dir_path}"


	util_error_echo
	util_error_echo wget -c "${deb_url}" -O "${tmp_file_path}"
	util_error_echo
	wget -c "${deb_url}" -O "${tmp_file_path}"


	util_error_echo
	util_error_echo dpkg -i "${tmp_file_path}"
	util_error_echo
	dpkg -i "${tmp_file_path}"


	return 0
}

mod_module_sublime_text_install () {


	sys_sublime_text_install


	return 0
}

##
### Tail: Model / mod_module_sublime_text_install
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


	mod_module_sublime_text_install


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
