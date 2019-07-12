#!/bin/bash

# Get path to install script folder
INSTALL_SCRIPT_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

# Import my custom icons
$INSTALL_SCRIPT_PATH/tools/import_to_work_dir.sh

# Proces icons
$INSTALL_SCRIPT_PATH/tools/work/convert.sh
$INSTALL_SCRIPT_PATH/tools/work/prepare.sh
$INSTALL_SCRIPT_PATH/tools/work/put-into-theme.sh

# Copy icon theme
cp -ru $INSTALL_SCRIPT_PATH/Papirus $HOME/.icons/Papirus

echo -n "Do you want to clean working directory? [y/N]: "; read -r REPLY

case "$REPLY" in
	[Yy]*)
		# Clean up
		$INSTALL_SCRIPT_PATH/tools/work/clean.sh
		;;
	*)
		echo "Skipping cleaning."
		;;
esac

echo "Done."
