#██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
#██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
#██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
#██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║ Author: Max
#██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║ Github: github.com/maxbossing/dotfiles
#╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝ Config: Fish - Main Config
# This is just here to do the last bit

if status is-interactive
and not set -q TMUX
    exec tmux
    tmux source $HOME/tmux.conf
end

clear  # Just clear

starship init fish | source # start starship
