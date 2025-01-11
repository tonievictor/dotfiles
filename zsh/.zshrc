# [PROMPT]
autoload -Uz add-zsh-hook vcs_info

setopt prompt_subst

add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%F{blue}(%f%F{red}%b%f%F{blue})%f'

PROMPT='%F{cyan}%1~%f ${vcs_info_msg_0_} %F{yellow}%(?.✓.×)%f '

# [[ EDITING MODE]]
set -o vi

# [[ KEYBINDING ]]
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

# [FZF]
source <(fzf --zsh)

# [HISTORY]
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

setopt histignorealldups sharehistory
setopt HIST_IGNORE_SPACE

# [ALIASES]
alias tmux="tmux -u"
alias vi="nvim"
alias vim="nvim"
alias python="python3"
alias btop="btop --utf-force"

# [EDITOR]
export VISUAL=nvim
export EDITOR=nvim
export TERM="xterm-256color"
export BROWSER="firefox"

# [PATH]
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/node/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/nvim/bin
export PATH=$PATH:/usr/local/maelstrom
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.bun/bin
export FLYCTL_INSTALL="/home/victor/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

[ -f "/home/victor/.ghcup/env" ] && . "/home/victor/.ghcup/env" # ghcup-env
