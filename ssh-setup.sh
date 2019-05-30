#!/bin/bash

# TODO - encapsulate email into a var the user inputs
# generate key
ssh-keygen -t rsa -b 4096 -C "seaparker@deloitte.com"

# run agent
eval "$(ssh-agent -s)"

vi ~/.ssh/config
#TODO - echo contents into ssh/config file
  # Host *
  #   AddKeysToAgent yes
  #   UseKeychain yes
  #   IdentityFile ~/.ssh/id_rsa

ssh-add -K ~/.ssh/id_rsa

# copy it
pbcopy < ~/.ssh/id_rsa.pub

echo "Now go to your Github Settings >> SSH keys tab and paste the key there!"
