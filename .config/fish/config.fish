set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias sway "MOZ_ENABLE_WAYLAND=1 BEMENU_BACKEND='wayland' CLUTTER_BACKEND='wayland' ECORE_EVAS_ENGINE='wayland_egl' ELM_ENGINE='wayland_egl' GDK_BACKEND='wayland' QT_AUTO_SCREEN_SCALE_FACTOR=0 QT_QPA_PLATFORM='wayland-egl' QT_WAYLAND_DISABLE_WINDOWDECORATION=1 SAL_USE_VCLPLUGIN='gtk3' SDL_VIDEODRIVER='wayland' _JAVA_AWT_WM_NONREPARENTING=1 QT_QPA_PLATFORMTHEME=qt5ct XDG_CURRENT_DESKTOP=Sway XDG_SESSION_TYPE=wayland /bin/sway"
alias m 'ncmpcpp'
set HISTFILE ~/.fish_history
set HISTSIZE 10000
set SAVEHIST 10000
#alias tmux "tmux attach -t default || tmux new -s default"
#    [ -z "$TMUX" ] && command -v tmux > /dev/null && exec tmux -f ~/.tmux.conf
#    set TERM screen-256color
    #pgrep Xorg &> /dev/null || source ~/nord-tty/nord-tty
#if [ -f /etc/bash.command-not-found ]; then
#	    . /etc/bash.command-not-found
#fi;

alias gc "git -C ~/git clone"
set USE_CCACHE 1
set CCACHE_EXEC /usr/bin/ccache
alias .. 'cd ..'
alias ... 'cd ../..'
#alias startx 'QT_QPA_PLATFORMTHEME=qt5ct startx'
# vim
alias vim 'lvim'

# broot
alias br 'br -dhp'
alias bs 'br --sizes'

# Changing "ls" to "lsd"
alias ls 'lsd -a  --color=always ' # my preferred listing
alias la 'lsd -al --color=always '  # all files and dirs
alias ll 'lsd -l --color=always '  # long format
alias lt 'lsd -aT --color=always ' # tree listing

# adding flags
alias cp "cp -i"                          # confirm before overwriting something
alias df 'df -h'                          # human-readable sizes
alias free 'free -m'                      # show sizes in MB
alias lynx 'lynx -cfg=~/.lynx/lynx.cfg -lss=~/.lynx/lynx.lss -vikeys'
alias ghch 'zathura ~/study/ghalamchi.pdf'
alias stsch 'gimp ~/study/sched.jpg'

# the terminal rickroll
alias rr 'curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
set LESS_TERMCAP_mb '\e[1;32m'
set LESS_TERMCAP_md '\e[1;31m'
set LESS_TERMCAP_me '\e[0m'
set LESS_TERMCAP_se '\e[0m'
set LESS_TERMCAP_so '\e[01;34m'
set LESS_TERMCAP_ue '\e[0m'
set LESS_TERMCAP_us '\e[1;4;31m'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
alias update 'sudo pacman -Sy;paru -Qu && sleep 1 && doas powerpill -Su && paru -Su'
~/.config/fish/bars;pfetch;~/.config/fish/bars
alias xi 'sudo xbps-install'
alias xu 'sudo xbps-install -Su'
alias xq 'sudo xbps-query -Rs'
alias xr 'sudo xbps-remove'
alias proton 'DXVK_HUD=fps STEAM_COMPAT_CLIENT_INSTALL_PATH=.local/share/Steam STEAM_COMPAT_DATA_PATH=$HOME/Games/pfx/proton ~/.steam/steam/steamapps/common/Proton\ 8.0/proton run'
alias proton7 'DXVK_HUD=fps STEAM_COMPAT_CLIENT_INSTALL_PATH=.local/share/Steam STEAM_COMPAT_DATA_PATH=$HOME/Games/pfx/proton7 ~/.steam/steam/steamapps/common/Proton\ 7.0/proton run'
alias protonge 'DXVK_HUD=fps STEAM_COMPAT_CLIENT_INSTALL_PATH=.local/share/Steam STEAM_COMPAT_DATA_PATH=$HOME/Games/pfx/protonge /usr/share/steam/compatibilitytools.d/proton-ge-custom/proton run'
alias protonge32 'DXVK_HUD=fps STEAM_COMPAT_CLIENT_INSTALL_PATH=.local/share/Steam STEAM_COMPAT_DATA_PATH=$HOME/Games/pfx/protonge32 WINEARCH=win32 /usr/share/steam/compatibilitytools.d/proton-ge-custom/proton run'
#wgu() {
#    sudo wg-quick down $1;doas wg-quick up $1
#}
#wgd() {
#    sudo wg-quick down $1
#}
alias a2c 'aria2c -d ~/dl -x 16 -s 16 --auto-file-renaming=false'
alias music 'tmux new-session -s $fish_pid "tmux source-file ~/.config/ncmpcpp/tsession"'
alias datefa "curl https://www.time.ir/fa/today 2> /dev/null | grep 'ShamsiNumeral' | grep -o '>.*<'| sed 's/[<,>]//g'"
source ~/.config/fish/profile > /dev/null
alias mpv 'mpv --screenshot-format=png --screenshot-directory=~/pic/Screenshots/'
#wal -Rneq &
alias zzz 'swaylock -c 000000 & sudo /usr/bin/zzz'
alias ZZZ 'swaylock -c 000000 & sudo /usr/bin/ZZZ'
alias lock 'swaylock -c 000000'
if test (tty) = "/dev/tty3"
  sway
end
