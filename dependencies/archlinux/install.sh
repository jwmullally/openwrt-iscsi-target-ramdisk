#!/bin/sh
set -ex

# Dracut iSCSI target support
pacman --sync --needed --noconfirm \
	dracut \
	open-iscsi

pacman --remove --noconfirm \
	mkinitcpio \
	|| echo "No package to remove"
