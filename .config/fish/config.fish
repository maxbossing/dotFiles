#██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
#██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
#██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
#██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║ Author: Max
#██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║ Github: github.com/maxbossing/dotfiles
#╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝ Config: Fish - Main Config

# === EXPORTS ===
# Variable exports

# Remove fish greeting
set fish_greeting

# Set terminal/visual editor to nvim
set EDITOR 'nvim'
set VISUAL 'nvim'


# === GPG ===
# This is used so the pgp keys on my Yubikey can be used for ssh etc

# Start ssh-agent
eval (ssh-agent -c)

# Start gpg agent
gpg-agent --enable-ssh-support

# Set ssh auth sock to gpg agent
set SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)

# I don't know what this does but we need it
set GPG_TTY (tty)

# connect agents
gpg-connect-agent updatestartuptty /bye >/dev/null

# Switch gpg to backup keys
# Main key
alias switchto1='gpg-connect-agent "20576321" "learn --force" /bye'
# Backup Key
alias switchto2='gpg-connect-agent "20576243" "learn --force" /bye'


# === ALIAS ===
# Aliases

# Map vim to nvim
alias vim='nvim'

# exa > ls
alias ls='exa -al --group-directories-first --icons --color=always'

# My dotfiles are managed through a git bare repo in my $HOME
alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'


#=== COLORS ===
# Fish colors

# Default Color
set fish_color_normal brpurple

# Suggestion Color
set fish_color_autosuggestion '#8114b8'

# Command Color
set fish_color_command brpurple

# Error Color
set fish_color_error '#D11313'

# Parameter Color
set fish_color_param brpurple


#=== TMUX ===
# Attach to tmux session
if status is-interactive
and not set -q TMUX
    exec tmux -f ~/tmux.conf new-session -A -s terminal
end

#=== CLEANUP ===

# clear outputs
clear 

#=== INITIALISATION ===

# Init startship
starship init fish | source  

# Init zoxide
zoxide init --cmd cd fish | source
