#!/bin/bash

###############################
#                             #
# Keyboard Uninstaller Script #
#       (All Locations)       #
#                             #
###############################

ALL_USERS_LOCATION="/Library/Keyboard Layouts"
CUR_USERS_LOCATION="$(cd ~; pwd)/Library/Keyboard Layouts"

echo "Removing from ${ALL_USERS_LOCATION} and ${CUR_USERS_LOCATION}"
echo "This operation may require an administrator password."
echo
# get permission in advance
sudo echo &> /dev/null || (echo "Permission not granted; exiting program..." && exit)
echo "Deleting the following items:"
echo

sudo rm -rv "${ALL_USERS_LOCATION}/ManjuGisun.bundle" # assumes that this bundle will always be named "ManjuGisun"
sudo rm -rv "${CUR_USERS_LOCATION}/ManjuGisun.bundle"
