# Adds `~/.local/bin` to $PATH
export PATH=$PATH$(find ~/.local/bin -type d -printf ":%p")

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# export language variables
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# ~/ Clean-up:
export ZDOTDIR="$HOME/.config/zsh"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="$XDG_CONFIG_HOME/less/history"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export ANDROID_AVD_HOME="${XDG_CONFIG_HOME:-$HOME/.config}/android"
export DICS="/usr/share/stardict/dic/"
export PYTHONHISTFILE="$HOME/.cache/python_history"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export TASKRC="$XDG_CONFIG_HOME/task/taskrc"
export TASKDATA="$XDG_DATA_HOME/task"
export GOPATH="$XDG_DATA_HOME"/go
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

# Other program settings:
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export XMODIFIERS="@im=ibus"
export MAKEFLAGS="-j4"
export SUDO_ASKPASS=$HOME/.local/bin/rofiPass
export FZF_DEFAULT_OPTS="--layout=reverse --height 40%"
export LESS=-R
export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
export LESS_TERMCAP_me="$(printf '%b' '[0m')"
export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
export LESS_TERMCAP_se="$(printf '%b' '[0m')"
export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"
export QT_QPA_PLATFORMTHEME="gtk2"	# Have QT use gtk2 theme.
export MOZ_USE_XINPUT2="1"		# Mozilla smooth scrolling/touchpads.
export AWT_TOOLKIT="MToolkit wmname LG3D"	#May have to install wmname
export _JAVA_AWT_WM_NONREPARENTING=1	# Fix for Java applications in dwm

xwallpaper --zoom $XDG_CONFIG_HOME/wall.png
xrdb -merge $XDG_CONFIG_HOME/x11/Xresources
setxkbmap -option "caps:swapescape"
xset m 1/1 0
xset r rate 300 50
picom --experimental-backend &
unclutter -b --exclude-root
transmission-daemon
locker
eval "$(ssh-agent -s)"
dunst &
