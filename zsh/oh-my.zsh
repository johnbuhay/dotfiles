#!/usr/bin/env zsh

export UPDATE_ZSH_DAYS=7
export ZSH=$WORKSPACE_GITHUB/robbyrussell/oh-my-zsh
DISABLE_UPDATE_PROMPT=true
HYPHEN_INSENSITIVE="true"
ZSH_THEME="powerlevel9k/powerlevel9k" # ys

bindkey '^ ' autosuggest-accept # Accepts the current suggestion.
# bind '' autosuggest-execute # Accepts and executes the current suggestion.
# bind '' autosuggest-clear # Clears the current suggestion.
# bind '' autosuggest-fetch # Fetches a suggestion (works even when suggestions are disabled).
# bind '' autosuggest-disable # Disables suggestions.
# bind '' autosuggest-enable # Re-enables suggestions.
# bind '' autosuggest-toggle # Toggles between enabled/disabled suggestions.

plugins=(history-substring-search zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

echo "Loaded oh-my-zsh"
