#!/bin/bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# spectacle
brew cask install spectacle

# postgres
brew install postgres

# fira code
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# iterm2
brew cask install iterm2

# git bash-completion
brew install git bash-completion

# vscode
brew cask install visual-studio-code

# atom
brew cask install atom

# brave
brew cask install brave-browser

# firefox
brew cask install firefox

# firefoxDE
brew cask install homebrew/cask-versions/firefox-developer-edition

# spotify
brew cask install spotify
