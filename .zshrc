autoload -U compinit colors mathfunc

compinit -d $HOME/.zsh/.zcompdump
zle_highlight=(\
	region:standout\
	special:standout\
	isearch:bg=red,fg=white,bold)

setopt autopushd pushdignoredups
setopt extendedglob globdots
setopt sharehistory histignoredups extendedhistory
setopt monitor printexitvalue
setopt zle vi correct

export HISTFILE=~/.zsh/.zsh_history
export HISTSIZE=65536
export SAVEHIST=65536
export DIRSTACKSIZE=32

export BROWSER=firefox
export EDITOR=/usr/bin/vim
export PAGER=vimpager
export PATH=/usr/share/perl5/vendor_perl/auto/share/dist/Cope:$PATH:~/scripts
export PROMPT=%1~$'%{\e[36;1m%}%(1j.%%%j.)%{\e[32;1m%}> %{\e[0m%}'
eval $(dircolors -b $HOME/.dircolors)

zstyle ':completion:*' menu select=1
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' use-cache 'yes'
zstyle ':completion::complete:*' cache-path ~/.zsh/.zshcache
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:processes' command 'ps -fx'
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

source $HOME/.zsh/.zsh_alias
source $HOME/.zsh/.zsh_functions
source $HOME/.zsh/.zsh_binds

if [ "$TERM" = "linux" ]; then
	termcol $HOME/colors/mmso3
fi
