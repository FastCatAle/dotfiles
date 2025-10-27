#
# ~/.bash_profile
#

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

export SDL_VIDEODRIVER=wayland
export LIBVA_DRIVER_NAME=radeonsi
export VDPAU_DRIVER=radeonsi

export TERMINAL=foot
export EDITOR=vim

export PATH="$PATH:$HOME/.local/bin"
export GOPATH="$HOME/go"

export LIBVIRT_DEFAULT_URI="qemu:///system"

# Force the Wayland graphics driver for Wine 10.x
unset DISPLAY

[[ -f ~/.bashrc ]] && . ~/.bashrc
