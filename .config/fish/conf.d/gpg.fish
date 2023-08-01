#██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
#██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
#██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
#██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║ Author: Max
#██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║ Github: github.com/maxbossing/dotfiles
#╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝ Config: Fish - GPG Config
# The config in here is so the pgp Keys burnt into my Yubikey can be used for ssh

eval (ssh-agent -c )                                     # start ssh-agent
gpg-agent --enable-ssh-support                           # start gpg agent
set SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket) # set ssh auth sock to gpg agent
set GPG_TTY (tty)                                        # idk but we need it
gpg-connect-agent updatestartuptty /bye >/dev/null       # connect agents

# These are for switching to the backup key 
alias switchto1='gpg-connect-agent "20576321" "learn --force" /bye'
alias switchto2='gpg-connect-agent "20576243" "learn --force" /bye'

