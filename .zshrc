

export PATH="/opt/homebrew/sbin:/opt/homebrew/bin:$PATH"
export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share:$PATH"
export PATH="/opt/homebrew/Cellar/libpq/15.2/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="$(pyenv root)/shims:/usr/local/bin:/usr/bin:/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

export HOMEBREW_NO_AUTO_UPDATE=true
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
export XDG_CONFIG_HOME=/Users/d/.config
export LANG=en_US.UTF-8
export EDITOR=nvim
export PAGER="bat --paging=always --pager=\"less -R\""
LESS="-x4"

#ZSH_THEME="afowler"
#ZSH_THEME="awesomepanda"
#ZSH_THEME="daveverwer"
#ZSH_THEME="edvardm"
#ZSH_THEME="jbergantine"
ZSH_THEME="mgutz" #👍🏼
#ZSH_THEME="sorin"
## stopped discover at https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#gozilla

#PROMPT='%{$fg[magenta]%}%0~ %{$fg_bold[magenta]%}%(!.#.::) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

#RPROMPT='%{$fg_bold[white]%} $(git_current_branch) %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(git sublime docker docker-compose aws brew kubectl golang gcloud poetry pyenv)

source $ZSH/oh-my-zsh.sh

alias src="source ~/.zshrc; echo 'sourced.'"
alias l="exa --long --header --all"
alias tf="terraform"
alias k="kubectl"      # сокращение для чего-то там
alias n="nvim"
alias fzf="fzf --preview=\"bat --color=always {}\""
alias updatedb="sudo /usr/libexec/locate.updatedb; echo 'done.'"
alias rm="trash $0"

# function cd() {
#     if [[ -d ./venv ]] ; then
#         deactivate
#     elif [[ -d ./.venv ]] ; then
#         deactivate
#     fi
#  
#     builtin cd $1
#  
#     if [[ -d ./venv ]] ; then
#         . ./venv/bin/activate
#     elif [[ -d ./.venv ]] ; then
#         . ./.venv/bin/activate
#     fi
# }
#  
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/d/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/d/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/d/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/d/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/d/Downloads/google-cloud-sdk 2/path.zsh.inc' ]; then . '/Users/d/Downloads/google-cloud-sdk 2/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/d/Downloads/google-cloud-sdk 2/completion.zsh.inc' ]; then . '/Users/d/Downloads/google-cloud-sdk 2/completion.zsh.inc'; fi
