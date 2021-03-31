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

#easy-sleep-mode
alias rot="xrandr -o left"

# Basic
alias mv="mv -iv"
alias cp="cp -riv"
alias mkdir="mkdir -vp"

# tools
alias pdf='mupdf'
alias cheat="curl cht.sh"
alias cal='gcalcli'
alias remind='cal remind 100'
alias music='cmus'
alias burp="cd ~/BurpSuite && ./BurpSuite\ Pro\ v1.7.37.sh & disown &>/dev/null && cd - &>/dev/null"

# missed commands
alias sl="ls"

# SSH FOR KITTY FFS
alias ssh="kitty +kitten ssh"

function dns-porn() {
	echo -n "Are you sure? [y/N] "
	read prompt
	if [[ $prompt == "y" ]]  # Just the small `y` intentionally.
	then
		echo 'nameserver 1.1.1.1' | sudo tee /etc/resolv.conf
		brave --incognito pornhub.com 7> /dev/null
	fi
}

## porn and malware blocking
alias noporn="echo 'nameserver 1.1.1.3' | sudo tee /etc/resolv.conf"

## image
alias icat="kitty +kitten icat"

# Webcam control
alias webcam-on="sudo modprobe uvcvideo"
alias webcam-off="sudo modprobe -r uvcvideo"

# fix brightness
alias fixb="sudo systemctl start systemd-backlight@backlight:amdgpu_bl0.service"
alias clear="echo 'CTRL + L PLEASEEE!!!'"
