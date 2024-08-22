###############################################################################
# ~/.zsh/zshrc.d/completions.zsh
# ------------------------------
# Setup and configure completion system for zsh 
#
###############################################################################

# Case-insensitive path completion
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix

# Coloured/highlighted completion lists
#zstyle ':completion:*' list-colors
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Initialize zsh completion system (call after `zstyle` commands added above)
autoload -Uz compinit && compinit
# To rebuild completions, delete cache file: `rm -f ~/.zcompdump% compinit`

# Initialize `bashcompinit` for old bash completions
#autoload -U +X bashcompinit && bashcompinit
#source /path/to/bash_completion_script
#[[ -r ~/src/autopkg_complete/autopkg ]] && source ~/src/autopkg_complete/autopkg

