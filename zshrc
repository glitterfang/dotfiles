. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
source /etc/profile.d/autojump.zsh

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

# I should export this over te ~/.zsh/functions, but for the time being:

function command_not_found_handler() {
  ~/bin/shell_method_missing $*
}

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

