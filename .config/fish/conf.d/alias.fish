#██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
#██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
#██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
#██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║ Author: Max
#██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║ Github: github.com/maxbossing/dotfiles
#╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝ Config: Fish - Aliases

alias vim='nvim'                                                    # map vim to nvim
alias ls='exa -al --group-directories-first --icons --color=always' # map ls to exa
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # map config to the git bare repo managing my dotfiles
