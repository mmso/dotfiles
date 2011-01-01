autoload -U compinit colors mathfunc

compinit -d $HOME/.zsh/.zcompdump
zle_highlight=(special:bold isearch:standout)

setopt AUTO_PUSHD PUSHD_IGNORE_DUPS
setopt SHARE_HISTORY EXTENDED_HISTORY HIST_IGNORE_DUPS
setopt VI EXTENDED_GLOB DOT_GLOB PRINT_EXIT_VALUE

export HISTFILE=~/.zsh/.zsh_history
export HISTSIZE=65536
export SAVEHIST=65536
export DIRSTACKSIZE=32

export BROWSER=google-chrome
export EDITOR=vim
export PAGER=vimpager
export PATH=/usr/share/perl5/vendor_perl/auto/share/dist/Cope:$PATH:~/scripts
export PROMPT="%F{208}%B%T%f %F{241}%d%f%b "
eval $(dircolors -b $HOME/.dircolors)

zstyle ':completion:*' menu select=1
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion::complete:*' use-cache 'yes'
zstyle ':completion::complete:*' cache-path ~/.zsh/.zshcache
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:processes' command 'ps -fx'

source $HOME/.zsh/.zsh_alias
source $HOME/.zsh/.zsh_functions
source $HOME/.zsh/.zsh_binds

if [ "$TERM" = "linux" ]; then
	termcol $HOME/colors/mmso2
fi
