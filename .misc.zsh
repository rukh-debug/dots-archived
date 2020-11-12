#These 2 key binds will show you a sub history of command while you hold CTRL button
bindkey '^[[1;5A' history-substring-search-up
bindkey '^[[1;5B' history-substring-search-down

alias r13="\\tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias ls="lsd"
alias antiload="antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh"

#VPN COMMAND
alias vpnOn="sudo systemctl start windscribe && sudo windscribe connect ch"
alias vpnOff="windscribe disconnect"

#screenshot
alias sc="i3-scrot --select"

#docker start
alias dockerStart="systemctl start docker"

# Basic
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# tools
alias pdf='mupdf'
alias cal='gcalcli'
alias remind='cal remind 100'
alias dns='echo "nameserver 1.1.1.1" | sudo tee /etc/resolv.conf'
alias music='cmus'
