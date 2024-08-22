###############################################################################
# ~/.zsh/zshrc.d/aliases.zsh
# --------------------------
# Alias definitions for zsh (cross-platform)
#
###############################################################################

alias ll="ls -AFhl"
# List only directories
alias ld="ls -dl */"
# List only files
alias lf="ls -Ap | grep -v /"

# Prompt before overwriting/removing files
alias cp="cp -vi"
alias mv="mv -vi"
alias rm="rm -vI"

# Exit less mode if entire file can fit in one screen
alias less="less -F"

# Use a unified format for `diff` by default
alias diff="diff -u"

# Enable color support for `grep`
alias grep="grep --color=auto"

# Show disk usage summary of current directory
alias duh="du -hs *"

## SUFFIX ALIASES
# Show last lines of any log file
alias -s log="tail -f"
# List the contents of any zip archive
alias -s zip="unzip -l"

# Mass-rename files (using builtin `zmv` function)
autoload -Uz zmv
alias zcp="zmv -C"
alias zln="zmv -L"

# Re-run previous command with `sudo`
#alias please='sudo $(history -p !!)'
alias please='sudo $(fc -Lln -1)'

# List functions defined in zsh (excludes ALLCAPS and _leading underscore).
alias ls_zsh_functions='print -l ${(ok)functions[(I)[^_A-Z]*]}'

