#!/bin/bash

###############################
#                             #
#  Keyboard Installer Script  #
#      (Current Users)        #
#  Latest Ver: v0.1.0-alpha   #
#                             #
###############################

LATEST="v0.1.0-alpha"

TARGET_DIRECTORY="$(cd ~; pwd)/Library/Keyboard Layouts"
TEMP_STASH=".manjugisun_temp_stash_$RANDOM" # name of temp stash

VERSION="${MANJUgisun_VERSION}"
if [ -z $VERSION ]; then
    VERSION=$LATEST
fi
LINK="https://github.com/purobaburi/manchu-keyboard/releases/download/${VERSION}/ManjuGisun_macos_${VERSION}.zip"
ZIPFILE="$(basename "$LINK")"

rm -rf "$TEMP_STASH" &> /dev/null
# abort if TEMP_STASH cannot be created.
mkdir "$TEMP_STASH" || \
    echo; \
    echo "Failed to create a temporary caching directory. Please run this script in a directory in which you have writing permissions."; \
    echo; \
    echo "Installation Failed/Aborted"; \
    echo; \
    exit

cd "$TEMP_STASH"
echo "Creating/clearing temporary directory $(pwd) ..."

if command -v wget &> /dev/null; then
    echo
    echo "Using WGET ..."
    echo "Downloading $LINK ..."
    echo
    wget "$LINK"
    echo
elif command -v curl &> /dev/null; then
    echo
    echo "Using CURL ..."
    echo "Downloading $LINK ..."
    echo
    curl -L -O "$LINK"
    echo
else
    echo
    echo "FATAL: either WGET or CURL is needed in order to proceed with the installation."
    echo "Aborting..."
    echo
    echo "Deleting temporary directory ..."
    cd ..
    rm -rf "$TEMP_STASH"
    echo
    echo "Installation Failed/Aborted"
    echo
    exit
fi

BUNDLE="$(basename "$(unzip -Z -1 "$ZIPFILE" | awk "{print $1; exit}")")" # or awk "NR==1{print $1; exit}"
if [ -z "${BUNDLE// /}" ]; then
    echo
    echo "Failed to extract information about package from zip file..."
    echo
    echo "Deleting temporary directory ..."
    cd ..
    rm -rf "$TEMP_STASH"
    echo
    echo "Installation Failed/Aborted."
    echo
    exit
fi

echo
echo "Extracting $BUNDLE from $ZIPFILE ..."
unzip -q "$ZIPFILE"

echo
echo "Moving $BUNDLE to target directory $TARGET_DIRECTORY ..."
echo
echo "The script requires (sudo) permission to run the following command:"
echo
echo -e "\trm -rf \"${TARGET_DIRECTORY}/${BUNDLE}\";\n\tmv \"$BUNDLE\" \"$TARGET_DIRECTORY\""
echo
echo "You may need to enter your password to authenticate this action."
echo "You may also verify that the script is legitimate. Exit this script via CTRL-C, then download this script from the GitHub repository and read it to verify."

# get permission, or else don't try other commands
sudo echo &> /dev/null && (sudo rm -rf "${TARGET_DIRECTORY}/${BUNDLE}" 2> /dev/null; (sudo mv "$BUNDLE" "$TARGET_DIRECTORY" || manjugisun_err=2)) || manjugisun_err=1

if [ -n ${manjugisun_err+x} ]; then
    echo
    echo "Failed to get sudo permissions..."
    echo
    echo "Deleting temporary directory..."
    cd ..
    rm -rf "$TEMP_STASH"
    echo
    echo "Installation Failed/Aborted."
    echo
    exit
fi

echo
echo "Deleting temporary directory..."
cd ..
rm -rf "$TEMP_STASH"

echo
echo "Installation Complete!"
echo
