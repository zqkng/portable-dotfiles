###############################################################################
# ~/.zsh/zshrc.d/functions.zsh
# ----------------------------
# Define and autoload custom functions for zsh
#
###############################################################################

# Set directory for custom functions
fpath+="${ZDOTDIR:-$HOME}/.zsh/functions"

autoload -Uz background
autoload -Uz mkcd
autoload -Uz ssh

