#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if  [[ "$(tty)" = "/dev/tty1" ]];   then
    pgrep i3 || startx
fi


alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias ll="ls -l"
alias la="ll -a"
alias ra="ranger"
alias nf="neofetch"
alias v="vim"
alias u="sudo pacman -Syu"
export EDITOR="/usr/bin/vim"
export http_proxy="http://127.0.0.1:8889"
export https_proxy="http://127.0.0.1:8889"
xmodmap ~/.xmodmap
#alias wechat="WINEPREFIX=~/wine/wechat wine start 'C:\Program Files\Tencent\WeChat\WeChat.exe'"
#alias tim="WINEPREFIX=~/.deepinwine/Deepin-TIM/ deepin-wine start 'C:\Program Files\Tencent\TIM\Bin\TIM.exe'"
