#!/usr/bin/env bash

set -e


################################################################################
### Head: pomelo
##

pomelo_config_run_pre () {

	pomelo_service_stop


	return 0

}

pomelo_config_run_post () {

	pomelo_service_start


	return 0

}

pomelo_service_stop () {

	pomelo_service_stop_xfconfd

	#pomelo_service_stop_xfsettingsd


	return 0

}

pomelo_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

pomelo_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

pomelo_service_start () {


	return 0

}

pomelo_config_install () {

	echo
	echo "##"
	echo "## Config: pomelo"
	echo "##"
	echo


	pomelo_config_install_by_dir


	echo

}

pomelo_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: pomelo
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	pomelo_config_run_pre

	pomelo_config_install

	pomelo_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
