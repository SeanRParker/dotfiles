#!/bin/bash
set -e

# Install ASDF
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.6.0

# If these lines aren't in your bash_profile, uncomment two lines below
# echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
# echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile


# Ruby package install with version and setting system default
asdf plugin-add ruby
asdf install ruby 2.5.0
asdf global ruby 2.5.0

# NodeJS same thing
echo "If you hit errors here, you're likely behind a firewall. VS-code settings won't import either."
brew install coreutils
brew install gpg
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 8.11.0
asdf global nodejs 8.11.0

echo "Congratulations, ASDF with Ruby and NodeJS plugins installed.
