#!/bin/bash

TOOLS_DIR_PATH="$( cd "$(dirname "$0")" ; pwd -P )"

# List files and confirm action
find "$TOOLS_DIR_PATH/work/Papirus/" -type f -name '*.svg' -print

echo -n "Do you want to save all this files? [y/N]: "; read -r REPLY

case "$REPLY" in
	[Yy]*)
		# Save working directory
		cp -ru $TOOLS_DIR_PATH/work/Papirus/ $TOOLS_DIR_PATH/Customized/

		# Remove template files
		find $TOOLS_DIR_PATH/Customized/ -type f -name '_*' -delete

		# Remove empty directories
		find $TOOLS_DIR_PATH/Customized/ -type d -empty -delete
		;;
	*)
		echo "Abort."
		;;
esac
