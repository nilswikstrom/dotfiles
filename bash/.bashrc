#
# ~/.bashrc
#

eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias src='source ~/.bashrc'
alias yeet='yay -R'
alias cls='clear && fastfetch'
alias ubisoft='DXVK_ASYNC=1 mangohud gamemoderun umu-run "C:\Program Files (x86)\Ubisoft\Ubisoft Game Launcher\UbisoftConnect.exe"'

# VPN-configs
alias vpn-no='sudo wg-quick down wg-us 2>/dev/null; sudo wg-quick down wg-jp 2>/dev/null; sudo wg-quick up wg-no'
alias vpn-us='sudo wg-quick down wg-no 2>/dev/null; sudo wg-quick down wg-jp 2>/dev/null; sudo wg-quick up wg-us'
alias vpn-jp='sudo wg-quick down wg-no 2>/dev/null; sudo wg-quick down wg-us 2>/dev/null; sudo wg-quick up wg-jp'
alias vpn-off='sudo wg-quick down wg-no 2>/dev/null; sudo wg-quick down wg-us 2>/dev/null; sudo wg-quick down wg-jp 2>/dev/null'

# Obsidian study-vault configs
alias vault-status='cd /home/yuki/vaults/road-to-engineer && git status -sb'
alias vault-sync='systemctl --user start obsidian-sync.service'
alias vault-log='journalctl --user -u obsidian-sync.service -n 20 --no-pager'

PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

fastfetch

# To use cutom image with fastfetch:
# fastfetch --kitty /home/user/Pictures/my_cool_distro.png

. "$HOME/.local/share/../bin/env"

export PATH="$HOME/.local/bin:$PATH"
