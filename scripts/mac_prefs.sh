#!/bin/bash
set -e

# Change screenshots location
mkdir ~/ScreenGrabs

defaults write com.apple.screencapture location ~/ScreenGrabs/

# Dark menubar and dock with light windows
defaults write -g NSRequiresAquaSystemAppearance -bool Yes

# To disable:
#  defaults write -g NSRequiresAquaSystemAppearance -bool No


echo "Select 'Dark' mode in System Preferences >> General"