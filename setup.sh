#!/bin/bash

xcode-select --install

# install homebrew and preferred apps (Spectacle, iTerm2, VS-Code) and settings (Git Aware, Fira Codefont).
sh ./scripts/brewit.sh

# Git Aware
sh ./scripts/git_aware.sh

#ASDF - ruby, node, and others in one package manager
sh ./scripts/asdf.sh

# Mac Preferences
sh ./scripts/mac_prefs.sh

# moving bash_profile and iterm preferences to local system
sh ./scripts/prefs_files.sh

# SSH key
sh ./scripts/ssh-setup.sh

