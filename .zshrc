# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="/home/m4h4d3v4/.oh-my-zsh"

#profile variables
source ~/.profile

#loading ohmyzsh
source $ZSH/oh-my-zsh.sh

#This will load all the antibody plugins form the static file.
#if plugin are not shown run "antiload"
#"antiload" command is the alias to --> check .misc.zsh file
source ~/.zsh_plugins.sh

#The below file contains alias and keybindings
source ~/.misc.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
	git
	history-substring-search
	safe-paste
)

#Loading powerlevel 10k
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

#export Node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
