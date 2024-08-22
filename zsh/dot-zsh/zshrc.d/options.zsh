###############################################################################
# ~/.zsh/zshrc.d/options.zsh
# --------------------------
# Set shell options for zsh
# (To revert shell options to default settings: `emulate -LR zsh`)
#
###############################################################################

# Enable case-insensitive globbing
setopt NO_CASE_GLOB
# Enable extended globbing
setopt EXTENDED_GLOB
# Sort and list matches in numeric order by default
setopt NUMERIC_GLOB_SORT

# Automatic `cd` (no need to type `cd`)
setopt AUTO_CD
# Maintain directories in a stack (view with `dirs`)
setopt AUTO_PUSHD

# Display job notifications in long format (show PID)
setopt LONG_LIST_JOBS

# Enable correction for commands [nyae]
#   n: execute as typed
#   y: accept and execute suggested correction
#   a: abort and do nothing
#   e: return to prompt to edit
setopt CORRECT
CORRECT_IGNORE='(python)'
#CORRECT_IGNORE_FILE='()'

## SHELL HISTORY
# Set location of history file
HISTFILE="${ZDOTDIR:-$HOME}/.zsh_history"
# Set history limit: session (memory)
HISTSIZE=100000
# Set history limit: file
SAVEHIST=$HISTSIZE

# Add more data to history file (timestamp and elapsed time)
setopt EXTENDED_HISTORY
# Share history across multiple zsh sessions
setopt SHARE_HISTORY
# Append to history file (instead of overwriting)
setopt APPEND_HISTORY
# Add commands to history immediately, not just at shell exit
setopt INC_APPEND_HISTORY
# Expire duplicate commands first
setopt HIST_EXPIRE_DUPS_FIRST
# Remove blanks from commands added to history
setopt HIST_REDUCE_BLANKS
# Show substituted command (`!!`, `!#`, etc) in prompt before running
setopt HIST_VERIFY

# Ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# Do not record consecutive duplicate commands
setopt HIST_IGNORE_DUPS
# Delete old event if new event is duplicate
setopt HIST_IGNORE_ALL_DUPS

# Do not record commands prefixed with a space
setopt HIST_IGNORE_SPACE
# Do not record history commands
setopt HIST_NO_STORE

# Do not save specified commands to history file
HISTORY_IGNORE='(ls|ls *|cd|cd *|pwd|clear|exit|bg|fg|ll)'

