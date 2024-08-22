###############################################################################
# ~/.zsh/zshrc.d/bindkey.zsh
# ---------------------------
# Configure key bindings for zsh
#
###############################################################################

# Enable vi mode
bindkey -v
# Decrease mode change delay
#export KEYTIMEOUT=1

# Bind UP/DOWN arrows to either move up/down a line or search history
(( $+widgets[up-line-or-search] )) && bindkey '^[[A' up-line-or-search
(( $+widgets[down-line-or-search] )) && bindkey '^[[B' down-line-or-search

# Bind `<CTRL>-R` to search history with patterns
(( $+widgets[history-incremental-pattern-search-backward] )) &&	\
    bindkey '^R' history-incremental-pattern-search-backward

# Bind `<ESC>, v` to edit current command in $EDITOR
#autoload -U edit-command-line
#zle -N edit-command-line
#bindkey -M vicmd v edit-command-line
# Bind `<CTRL>-X <CTRL>-E` to eddit current command in $EDITOR
#bindkey "^X^E" edit-command-line

