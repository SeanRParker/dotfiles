export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GITAWAREPROMPT=~/.bash/git-aware-prompt
export PATH="$HOME/.gem/bin:$PATH"
source "${GITAWAREPROMPT}/main.sh"

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'


export GITHUB_TOKEN='19d53d4635592663016cd02e5f5b2c839e47c5dd'

# Aliases
alias ll='ls -laG'
alias ..='cd ..'   
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias slime='sublime'
alias cra='create-react-app'
alias showall="defaults write com.apple.finder AppleShowAllFiles YES"
alias hidedots="defaults write com.apple.finder AppleShowAllFiles NO"
alias wpak="./node_modules/.bin/webpack-dev-server --config config/webpack.config.js"
alias webpack="./node_modules/.bin/webpack"
alias findgit="find ~ -type d -name .git | xargs -n 1 dirname"
alias search="history | grep"
alias copen="node_modules/.bin/cypress open"
alias cleanup="git branch | grep -v "master" | xargs git branch --delete"

# Convenience Functions
function findgrep() {
   find . | xargs grep -ls "$1"
}

# Setting the prompt
# Old Prompt PS1='\n\[\033[00;32m\]\T\[\033[00m\] Shaws@Macbook \[\033[00;36m\](\w)\[\033[00m\] \n \[\033[11;31m\]$git_branch \$ \[\033[00m\]\[\033[11;00m\]'
PS1='\n\[\033[00;32m\]SP_Dloyt\[\033[00m\]  \[\033[00;36m\](\w)\[\033[00m\] \n \[\033[11;31m\]$git_branch \$ \[\033[00m\]\[\033[11;00m\]'


export NVM_DIR="/Users/ShawsRP/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# bash completion for the `wp` command

_wp_complete() {
  local OLD_IFS="$IFS"
  local cur=${COMP_WORDS[COMP_CWORD]}

  IFS=$'\n';  # want to preserve spaces at the end
  local opts="$(wp cli completions --line="$COMP_LINE" --point="$COMP_POINT")"

  if [[ "$opts" =~ \<file\>\s* ]]
  then
    COMPREPLY=( $(compgen -f -- $cur) )
  elif [[ $opts = "" ]]
  then
    COMPREPLY=( $(compgen -f -- $cur) )
  else
    COMPREPLY=( ${opts[*]} )
  fi

  IFS="$OLD_IFS"
  return 0
}
complete -o nospace -F _wp_complete wp

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi




. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash



test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


