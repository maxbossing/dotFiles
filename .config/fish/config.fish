# Remove fish greeting
set fish_greeting

# Set terminal/visual editor to nvim
set EDITOR 'nvim'
set VISUAL 'nvim'

# This is used so the pgp keys on my Yubikey can be used for ssh etc
eval (ssh-agent -c)
gpg-agent --enable-ssh-support
set SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set GPG_TTY (tty)
export GPG_TTY=(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

# Switch gpg to backup keys
# Main key
alias switchto1='gpg-connect-agent "20576321" "learn --force" /bye'
# Backup Key
alias switchto2='gpg-connect-agent "20576243" "learn --force" /bye'

# exa > ls
alias ls='exa -al --group-directories-first --icons --color=always'

# attach to tmux session
alias attach='tmux -f ~/tmux.conf new-session -A -s terminal' 

# hö
alias ed='nvim'

# Colors
set fish_color_normal white
set fish_color_autosuggestion '#555555'
set fish_color_command white
set fish_color_error '#ff6c6b'
set fish_color_param '#777777'


# PATH
set PATH "$PATH:/home/max/.local/bin"

clear 

# Init starship
starship init fish | source  
